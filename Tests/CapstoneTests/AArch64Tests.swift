#if CAPSTONE_HAS_AARCH64
import Foundation
import Testing
@testable import Capstone

/// Expected values come from the AArch64 instruction encodings themselves, which
/// are fixed by the architecture — never from re-running the wrapper.
@Suite("AArch64")
struct AArch64Tests {
    private func disassemble(_ bytes: [UInt8], address: UInt64 = 0x1000) throws -> [AArch64Instruction] {
        let capstone = try Capstone(arch: .aarch64, mode: Mode.endian.little)
        try capstone.set(option: DisassemblyOption.detail(value: true))
        return try capstone.disassemble(code: Data(bytes), address: address)
    }

    @Test("register operands carry their register and access mode")
    func registerOperands() throws {
        // add x2, x3, x4
        let instruction = try #require(try disassemble([0x62, 0x00, 0x04, 0x8B]).first)
        #expect(instruction.mnemonic == "add")

        let operands = instruction.operands
        try #require(operands.count == 3)
        #expect(operands[0].register == .x2)
        #expect(operands[0].access == .write)
        #expect(operands[1].register == .x3)
        #expect(operands[1].access == .read)
        #expect(operands[2].register == .x4)
    }

    @Test("a memory operand reports base and displacement")
    func memoryOperand() throws {
        // ldr x0, [x1, #8]
        let instruction = try #require(try disassemble([0x20, 0x04, 0x40, 0xF9]).first)
        let memory = try #require(instruction.operands.last?.memory)

        #expect(memory.base == .x1)
        #expect(memory.index == nil)
        // Widened to 64 bits in v6; the value is the encoded offset, not a scaled index.
        #expect(memory.displacement == 8)
    }

    @Test("an immediate operand reports its value")
    func immediateOperand() throws {
        // cmp x5, #1
        let instruction = try #require(try disassemble([0xBF, 0x04, 0x00, 0xF1]).first)
        #expect(instruction.operands.last?.immediateValue == 1)
    }

    /// v6 replaced v5's four separate system-operand fields with one `sysop`
    /// discriminated by its own `sub_type`, and the operand's own `type` says only
    /// which union holds the value. Getting that wrong yields accessors that are
    /// nil for every instruction, which is indistinguishable from "no such value" —
    /// so each kind is pinned to a named value here.
    @Test("system operands decode to a named value", arguments: [
        // mrs x0, nzcv
        ([0x00, 0x42, 0x3B, 0xD5] as [UInt8], AArch64Op.sysreg, "systemRegister"),
        // prfm pldl1keep, [x0]
        ([0x00, 0x00, 0x80, 0xF9], .sysalias, "prefetch"),
        // dmb ish
        ([0xBF, 0x3B, 0x03, 0xD5], .sysalias, "dataBarrier"),
        // at s1e2r, x0
        ([0x00, 0x78, 0x0C, 0xD5], .sysalias, "at"),
    ])
    func systemOperands(bytes: [UInt8], operandType: AArch64Op, expectedCase: String) throws {
        let instruction = try #require(try disassemble(bytes).first)
        let operand = try #require(instruction.operands.first { $0.type == operandType })
        let systemOperand = try #require(operand.systemOperand)

        let described = String(describing: systemOperand.value)
        #expect(
            described.hasPrefix(expectedCase),
            "expected a \(expectedCase) value, got \(described)"
        )
    }

    @Test("mrs exposes its system register through the convenience accessor")
    func systemRegisterAccessor() throws {
        // mrs x0, nzcv
        let instruction = try #require(try disassemble([0x00, 0x42, 0x3B, 0xD5]).first)
        let operand = try #require(instruction.operands.first { $0.type == .sysreg })
        // The kind lives in sysop.sub_type, not in the operand type.
        #expect(operand.systemOperand?.subType == .regMrs)
        #expect(operand.systemRegister == .nzcv)
    }

    @Test("every operand of a decoded instruction produces a value")
    func operandsAlwaysProduceValues() throws {
        let instructions = try disassemble([
            0x20, 0x04, 0x40, 0xF9, // ldr x0, [x1, #8]
            0x62, 0x00, 0x04, 0x8B, // add x2, x3, x4
            0xBF, 0x04, 0x00, 0xF1, // cmp x5, #1
            0x00, 0x42, 0x3B, 0xD5, // mrs x0, nzcv
            0x00, 0x00, 0x80, 0xF9, // prfm pldl1keep, [x0]
        ])
        try #require(instructions.count == 5)

        for instruction in instructions {
            for operand in instruction.operands where operand.type != .invalid {
                #expect(
                    operand.value != nil,
                    "\(instruction.mnemonic): operand of type \(operand.type) produced no value"
                )
            }
        }
    }

    @Test("cmp reads both operands rather than writing the first")
    func comparisonOperandsAreReads() throws {
        // cmp is an alias of subs with xzr as destination. v5 leaked the underlying
        // subs write onto the first visible operand; v6 looks this up per operand.
        let instruction = try #require(try disassemble([0xBF, 0x04, 0x00, 0xF1]).first)
        #expect(instruction.mnemonic == "cmp")
        for operand in instruction.operands {
            #expect(operand.access == .read)
        }
    }
}
#endif
