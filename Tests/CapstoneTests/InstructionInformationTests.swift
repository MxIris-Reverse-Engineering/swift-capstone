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
    @Test("an alias reports both the alias and the real instruction")
    func aliasAndRealInstruction() throws {
        // mov x0, x1 — an alias of orr x0, xzr, x1
        let (identifier, alias) = try withFirstInstruction([0xE0, 0x03, 0x01, 0xAA]) {
            ($0.identifier, $0.alias)
        }
        #expect(identifier == .orr)
        #expect(alias == .aliasMov)
    }

    @Test("an instruction printed in its own form has no alias")
    func notAnAlias() throws {
        // ldr x0, [x1, #8]
        let (identifier, alias) = try withFirstInstruction([0x20, 0x04, 0x40, 0xF9]) {
            ($0.identifier, $0.alias)
        }
        #expect(identifier == .ldr)
        #expect(alias == nil)
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
        #expect(try withFirstInstruction(bytes) { $0.isIllegal } == isIllegal)
    }

    /// capstone sets the flag on an illegal instruction and never clears it, and the
    /// engine decodes every instruction into the same buffer.
    @Test("an instruction after an illegal one is not illegal")
    func illegalDoesNotCarryOver() throws {
        let disassembler = try Disassembler<AArch64>()
        var flags: [Bool] = []
        disassembler.forEachInstruction(in: [
            0x21, 0x8C, 0x40, 0xF8, // ldr x1, [x1, #8]!
            0x20, 0x8C, 0x40, 0xF8, // ldr x0, [x1, #8]!
        ] as [UInt8], address: 0x1000) { instruction in
            flags.append(instruction.isIllegal)
        }
        #expect(flags == [true, false])
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
        #expect(try withFirstInstruction(bytes) { $0.writesBackBaseRegister } == writesBack)
    }

    @Test("post-indexing is told apart from pre-indexing", arguments: [
        // ldr x0, [x1], #8
        ([0x20, 0x84, 0x40, 0xF8] as [UInt8], true),
        // ldr x0, [x1, #8]!
        ([0x20, 0x8C, 0x40, 0xF8], false),
    ])
    func postIndex(bytes: [UInt8], isPostIndex: Bool) throws {
        #expect(try withFirstInstruction(bytes) { $0.isPostIndex } == isPostIndex)
    }

    @Test("write-back is unknown without detail")
    func baseRegisterWriteBackNeedsDetail() throws {
        // ldr x0, [x1, #8]!
        let capstone = try Capstone(arch: .aarch64, mode: Mode.endian.little)
        let instructions: [AArch64Instruction] = try capstone.disassemble(code: Data([0x20, 0x8C, 0x40, 0xF8]), address: 0x1000)
        let instruction = try #require(instructions.first)
        #expect(instruction.writesBackBaseRegister == nil)
    }

    /// Apple's AMX instructions sit in encoding space the architecture leaves
    /// unallocated, laid out as `0x00201000 | operation << 5 | operand`; operation 0
    /// is `ldx`, its operand a general-purpose register.
    @Test("Apple's proprietary instructions decode only in their mode")
    func appleProprietaryInstructions() throws {
        // ldx x0
        let bytes: [UInt8] = [0x00, 0x10, 0x20, 0x00]
        var decodedWithoutMode = 0
        try Disassembler<AArch64>().forEachInstruction(in: bytes, address: 0x1000) { _ in
            decodedWithoutMode += 1
        }
        #expect(decodedWithoutMode == 0)

        let (identifier, operandsText) = try withFirstInstruction(bytes, mode: [.littleEndian, .appleProprietary]) {
            ($0.identifier, $0.operandsText)
        }
        #expect(identifier == .ldx)
        #expect(operandsText == "x0")
    }
}
#endif
