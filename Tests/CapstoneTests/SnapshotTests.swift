#if CAPSTONE_HAS_AARCH64
import Foundation
import Testing
import Capstone

/// `decode` and the values it returns. Expected values come from the A64 encodings,
/// their alias definitions, and capstone's mapping table for implicit registers and
/// groups — never from re-running the wrapper.
@Suite("Snapshots")
struct SnapshotTests {
    private func decodeFirst(_ bytes: [UInt8]) throws -> AArch64.Instruction {
        try #require(try Disassembler<AArch64>().decode(bytes, address: 0x1000).first)
    }

    @Test("an alias keeps its text, its real instruction and its own operands")
    func aliasSnapshot() throws {
        // mov x0, x1 — an alias of orr x0, xzr, x1
        let instruction = try decodeFirst([0xE0, 0x03, 0x01, 0xAA])

        #expect(instruction.address == 0x1000)
        #expect(instruction.bytes == [0xE0, 0x03, 0x01, 0xAA])
        #expect(instruction.description == "mov x0, x1")
        #expect(instruction.identifier == .orr)
        #expect(instruction.alias == .aliasMov)
        #expect(!instruction.isData)
        #expect(!instruction.isIllegal)
        #expect(instruction.usesAliasDetails)
        #expect(instruction.operands.compactMap(\.register) == [.x0, .x1])
        #expect(instruction.registersRead == [.x1])
        #expect(instruction.registersWritten == [.x0])
    }

    @Test("a comparison keeps the flags it writes")
    func comparisonSnapshot() throws {
        // cmp x5, #1 is subs xzr, x5, #1
        let instruction = try decodeFirst([0xBF, 0x04, 0x00, 0xF1])

        #expect(instruction.updatesFlags)
        #expect(instruction.implicitRegistersWritten == [.nzcv])
        #expect(instruction.registersRead == [.x5])
        #expect(instruction.registersWritten == [.nzcv])
    }

    @Test("a conditional branch keeps its condition, groups and implicit reads")
    func conditionalBranchSnapshot() throws {
        // b.eq 0x1000
        let instruction = try decodeFirst([0x00, 0x00, 0x00, 0x54])

        #expect(instruction.conditionCode == .eq)
        #expect(instruction.groups.contains(.jump))
        #expect(instruction.implicitRegistersRead == [.nzcv])
        #expect(instruction.operandsText == "0x1000")
    }

    @Test("a pre-indexed store keeps its write-back")
    func writeBackSnapshot() throws {
        // stp x29, x30, [sp, #-0x10]!
        let instruction = try decodeFirst([0xFD, 0x7B, 0xBF, 0xA9])

        #expect(instruction.writesBackBaseRegister)
        #expect(!instruction.isPostIndex)
        #expect(instruction.operands.last?.memory?.base == .sp)
        #expect(instruction.operands.last?.memory?.displacement == -0x10)
    }

    @Test("decode accepts the same input forms and limit as streaming")
    func inputFormsAndLimit() throws {
        let disassembler = try Disassembler<AArch64>()
        let code: [UInt8] = [
            0x62, 0x00, 0x04, 0x8B, // add x2, x3, x4
            0x20, 0x04, 0x40, 0xF9, // ldr x0, [x1, #8]
            0xC0, 0x03, 0x5F, 0xD6, // ret
        ]
        let data = Data(code)

        #expect(disassembler.decode(code, address: 0x1000).map(\.description) == ["add x2, x3, x4", "ldr x0, [x1, #8]", "ret"])
        #expect(disassembler.decode(data, address: 0x1000).map(\.address) == [0x1000, 0x1004, 0x1008])
        #expect(disassembler.decode(data.bytes, address: 0x1000, limit: 2).map(\.mnemonic) == ["add", "ldr"])
    }

    /// The point of a snapshot: it holds no reference to the engine, so it can be
    /// kept after the engine is gone and handed to another task.
    @Test("snapshots outlive their engine and cross into another task")
    func snapshotsAreIndependent() async throws {
        let instructions = try Disassembler<AArch64>().decode([0x62, 0x00, 0x04, 0x8B] as [UInt8], address: 0x1000)
        let mnemonics = await Task.detached { instructions.map(\.mnemonic) }.value
        #expect(mnemonics == ["add"])
    }
}
#endif
