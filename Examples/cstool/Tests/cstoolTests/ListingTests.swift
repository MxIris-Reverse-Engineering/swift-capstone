import Capstone
import Testing
@testable import cstool

/// Expected listings come from the A64 encodings and from capstone's cstool, whose
/// output this one follows.
@Suite("cstool")
struct ListingTests {
    @Test("hex bytes are read in the spellings capstone's cstool accepts", arguments: [
        "62 00 04 8b",
        "0x62 0x00 0x04 0x8b",
        "\\x62\\x00\\x04\\x8b",
        "62,00,04,8b",
        "6200048b",
    ])
    func hexSpellings(hex: String) throws {
        #expect(try parseHexBytes(hex) == [0x62, 0x00, 0x04, 0x8B])
    }

    @Test("modes are read in capstone cstool's spelling")
    func modes() throws {
        #expect(try parseMode("aarch64") == .littleEndian)
        #expect(try parseMode("aarch64be") == .bigEndian)
        #expect(try parseMode("aarch64+apple") == [.littleEndian, .appleProprietary])
        #expect(throws: (any Error).self) { try parseMode("x86") }
    }

    @Test("each instruction is listed with its address, bytes and text")
    func listing() throws {
        let instructions = try Disassembler<AArch64>().decode([
            0x62, 0x00, 0x04, 0x8B, // add x2, x3, x4
            0xC0, 0x03, 0x5F, 0xD6, // ret
        ] as [UInt8], address: 0x1000)

        #expect(cstool.listing(of: instructions, detailed: false) == [
            "1000  62 00 04 8b  add\tx2, x3, x4",
            "1004  c0 03 5f d6  ret\t",
        ])
    }

    @Test("details list the operands, registers and groups")
    func detailedListing() throws {
        // cmp x5, #1
        let instructions = try Disassembler<AArch64>().decode([0xBF, 0x04, 0x00, 0xF1] as [UInt8], address: 0)

        #expect(cstool.listing(of: instructions, detailed: true) == [
            " 0  bf 04 00 f1  cmp\tx5, #1",
            "\tID: subs",
            "\tAlias: aliasCmp",
            "\tOperands: 2",
            "\t\t[0] register x5 (r)",
            "\t\t[1] immediate 0x1 (r)",
            "\tUpdates flags",
            "\tRegisters read: x5",
            "\tRegisters written: nzcv",
        ])
    }
}
