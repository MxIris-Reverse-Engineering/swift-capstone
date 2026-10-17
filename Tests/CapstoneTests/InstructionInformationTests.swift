#if CAPSTONE_HAS_AARCH64
import Foundation
import Testing
@testable import Capstone

/// What capstone v6 reports about an instruction beyond v5's fields: aliases,
/// legality, real-instruction details, base-register write-back and Apple's
/// proprietary instructions. Expected values come from the A64 encodings and their
/// alias definitions in the Arm architecture reference, and from capstone's aarch64.h.
@Suite("Instruction information")
struct InstructionInformationTests {
    private func disassemble(
        _ bytes: [UInt8],
        mode: Mode = Mode.endian.little,
        options: [DisassemblyOption] = [.detail(value: true)]
    ) throws -> [AArch64Instruction] {
        let capstone = try Capstone(arch: .aarch64, mode: mode)
        for option in options {
            try capstone.set(option: option)
        }
        return try capstone.disassemble(code: Data(bytes), address: 0x1000)
    }

    @Test("an alias reports both the alias and the real instruction")
    func aliasAndRealInstruction() throws {
        // mov x0, x1 — an alias of orr x0, xzr, x1
        let instruction = try #require(try disassemble([0xE0, 0x03, 0x01, 0xAA]).first)
        #expect(instruction.isAlias)
        #expect(instruction.instruction == .orr)
        #expect(instruction.aliasInstruction == .aliasMov)
    }

    @Test("an instruction printed in its own form has no alias")
    func notAnAlias() throws {
        // ldr x0, [x1, #8]
        let instruction = try #require(try disassemble([0x20, 0x04, 0x40, 0xF9]).first)
        #expect(!instruction.isAlias)
        #expect(instruction.aliasInstruction == nil)
    }

    /// A load that writes back into its own transfer register decodes, but the
    /// architecture leaves its result unpredictable.
    @Test("a load writing back into its own transfer register is illegal", arguments: [
        // ldr x1, [x1, #8]!
        ([0x21, 0x8C, 0x40, 0xF8] as [UInt8], true),
        // ldr x0, [x1, #8]!
        ([0x20, 0x8C, 0x40, 0xF8], false),
    ])
    func illegalWriteBack(bytes: [UInt8], isIllegal: Bool) throws {
        let instruction = try #require(try disassemble(bytes).first)
        #expect(instruction.isIllegal == isIllegal)
    }

    @Test("real-instruction details give an alias the operands of the instruction it stands for")
    func realInstructionDetail() throws {
        // mov x0, x1 — an alias of orr x0, xzr, x1
        let bytes: [UInt8] = [0xE0, 0x03, 0x01, 0xAA]
        let aliasForm = try #require(try disassemble(bytes).first)
        let realForm = try #require(try disassemble(bytes, options: [.realInstructionDetail]).first)

        #expect(aliasForm.usesAliasDetails)
        #expect(aliasForm.operands.compactMap(\.register) == [.x0, .x1])
        #expect(!realForm.usesAliasDetails)
        #expect(realForm.operands.compactMap(\.register) == [.x0, .xzr, .x1])
    }

    /// capstone's own `writeback` flag is set for any tied operand, which `movk`,
    /// `cas` and `bfi` have without touching a base register.
    @Test("write-back means a memory operand's base register is updated", arguments: [
        // ldr x0, [x1, #8]!
        ([0x20, 0x8C, 0x40, 0xF8] as [UInt8], true),
        // ldr x0, [x1], #8
        ([0x20, 0x84, 0x40, 0xF8], true),
        // stp x29, x30, [sp, #-0x10]!
        ([0xFD, 0x7B, 0xBF, 0xA9], true),
        // ldp x29, x30, [sp], #0x10
        ([0xFD, 0x7B, 0xC1, 0xA8], true),
        // ldr x0, [x1, #8]
        ([0x20, 0x04, 0x40, 0xF9], false),
        // movk x0, #1, lsl #16
        ([0x20, 0x00, 0xA0, 0xF2], false),
        // cas x0, x1, [x2]
        ([0x41, 0x7C, 0xA0, 0xC8], false),
        // bfi x0, x1, #8, #4
        ([0x20, 0x0C, 0x78, 0xB3], false),
    ])
    func baseRegisterWriteBack(bytes: [UInt8], writesBack: Bool) throws {
        let instruction = try #require(try disassemble(bytes).first)
        #expect(instruction.writesBackBaseRegister == writesBack)
    }

    @Test("write-back is unknown without detail")
    func baseRegisterWriteBackNeedsDetail() throws {
        // ldr x0, [x1, #8]!
        let instruction = try #require(try disassemble([0x20, 0x8C, 0x40, 0xF8], options: []).first)
        #expect(instruction.writesBackBaseRegister == nil)
    }

    /// Apple's AMX instructions sit in encoding space the architecture leaves
    /// unallocated, laid out as `0x00201000 | operation << 5 | operand`; operation 0
    /// is `ldx`, its operand a general-purpose register.
    @Test("Apple's proprietary instructions decode only in their mode")
    func appleProprietaryInstructions() throws {
        // ldx x0
        let bytes: [UInt8] = [0x00, 0x10, 0x20, 0x00]
        #expect(try disassemble(bytes).isEmpty)

        let appleMode: Mode = [Mode.endian.little, Mode.aarch64.appleProprietary]
        let instruction = try #require(try disassemble(bytes, mode: appleMode).first)
        #expect(instruction.instruction == .ldx)
        #expect(instruction.operandsString == "x0")
    }
}
#endif
