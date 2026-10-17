import Foundation
import Testing
@testable import Capstone

@Suite("Options")
struct OptionsTests {
    /// Values are read off `cs_opt_value` in capstone v6's include/capstone/capstone.h,
    /// not computed from the enum.
    ///
    /// The raw value is what `set(option: .syntax(...))` hands to `cs_option`. v6 turned
    /// the syntax options from consecutive numbers into bit flags, so v5's numbering
    /// selects a different syntax instead of failing: 2 is `CS_OPT_SYNTAX_DEFAULT` in v6,
    /// which X86 prints as Intel when AT&T was asked for.
    @Test("syntax raw values match capstone v6", arguments: [
        (Syntax.default, 1 << 1),
        (.intel, 1 << 2),
        (.att, 1 << 3),
        (.noRegName, 1 << 4),
        (.masm, 1 << 5),
        (.motorola, 1 << 6),
    ])
    func syntaxRawValue(syntax: Syntax, expected: Int) {
        #expect(syntax.rawValue == expected)
    }

    #if CAPSTONE_HAS_AARCH64
    /// capstone v6 merges each `CS_OPT_DETAIL` value into the flags already set, which
    /// made `CS_OPT_OFF` a no-op: the engine kept computing details the wrapper reported
    /// as off.
    @Test("detail can be turned off after being turned on")
    func detailCanBeTurnedOff() throws {
        let capstone = try Capstone(arch: .aarch64, mode: Mode.endian.little)
        try capstone.set(option: .detail(value: true))
        try capstone.set(option: .detail(value: false))

        // b #0x1010 — a branch is in the jump group whenever the engine computes details.
        let instructions: [AArch64Instruction] = try capstone.disassemble(code: Data([0x04, 0x00, 0x00, 0x14]), address: 0x1000)
        let instruction = try #require(instructions.first)
        #expect(!instruction.isIn(group: .jump))
    }

    /// capstone reports its position as a distance from the start of the buffer, while
    /// the callback is handed a `Data.Index` into `code` — and a slice's indices do not
    /// start at zero.
    @Test("a skip-data callback can index a sliced buffer at the offset it is given")
    func skipDataOffsetIndexesSlices() throws {
        let buffer = Data([
            0xAA, 0xBB, 0xCC, 0xDD, // outside the slice
            0xFF, 0x00, 0x00, 0x02, // bits 28:25 = 0b0001: unallocated in the A64 encoding table
            0x62, 0x00, 0x04, 0x8B, // add x2, x3, x4
        ])
        let code = buffer[4...]
        var byteAtOffset: UInt8?
        let capstone = try Capstone(arch: .aarch64, mode: Mode.endian.little)
        try capstone.set(option: .skipData(callback: { _, examinedCode, offset in
            byteAtOffset = examinedCode.indices.contains(offset) ? examinedCode[offset] : nil
            return .skip(bytes: 4)
        }))

        let _: [AArch64Instruction] = try capstone.disassemble(code: code, address: 0x1000)
        #expect(byteAtOffset == 0xFF)
    }
    #endif
}
