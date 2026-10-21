#if CAPSTONE_HAS_AARCH64
import Foundation
import Testing
import Capstone

/// The engine's life cycle and the streaming entry point. Expected values come from
/// the A64 encodings and from the instruction identifiers in capstone's aarch64.h.
@Suite("Disassembler")
struct DisassemblerTests {
    /// add x2, x3, x4 / ldr x0, [x1, #8] / b 0x1018 / ret, meant to start at 0x1000.
    private static let program: [UInt8] = [
        0x62, 0x00, 0x04, 0x8B,
        0x20, 0x04, 0x40, 0xF9,
        0x04, 0x00, 0x00, 0x14,
        0xC0, 0x03, 0x5F, 0xD6,
    ]

    /// Bits 28:25 are 0b0001, which the A64 encoding table leaves unallocated.
    private static let unallocated: [UInt8] = [0xFF, 0x00, 0x00, 0x02]

    private struct Entry: Equatable {
        let address: UInt64
        let bytes: [UInt8]
        let mnemonic: String
        let operandsText: String
        let identifier: AArch64Ins?
    }

    private struct StopDecoding: Error {}

    private func stream(
        _ code: [UInt8],
        with disassembler: borrowing Disassembler<AArch64>,
        address: UInt64 = 0x1000,
        limit: Int? = nil
    ) -> (entries: [Entry], consumed: Int) {
        var entries: [Entry] = []
        let consumed = disassembler.forEachInstruction(in: code, address: address, limit: limit) { instruction in
            entries.append(Entry(
                address: instruction.address,
                bytes: instruction.bytes,
                mnemonic: instruction.mnemonic,
                operandsText: instruction.operandsText,
                identifier: instruction.identifier
            ))
        }
        return (entries, consumed)
    }

    @Test("each instruction is lent in order with its address, bytes and text")
    func streamsInstructions() throws {
        let disassembler = try Disassembler<AArch64>()
        let result = stream(Self.program, with: disassembler)

        #expect(result.entries == [
            Entry(address: 0x1000, bytes: [0x62, 0x00, 0x04, 0x8B], mnemonic: "add", operandsText: "x2, x3, x4", identifier: .add),
            Entry(address: 0x1004, bytes: [0x20, 0x04, 0x40, 0xF9], mnemonic: "ldr", operandsText: "x0, [x1, #8]", identifier: .ldr),
            Entry(address: 0x1008, bytes: [0x04, 0x00, 0x00, 0x14], mnemonic: "b", operandsText: "0x1018", identifier: .b),
            Entry(address: 0x100C, bytes: [0xC0, 0x03, 0x5F, 0xD6], mnemonic: "ret", operandsText: "", identifier: .ret),
        ])
        #expect(result.consumed == 16)
    }

    @Test("decoding stops at the first bytes that do not decode and reports what it consumed")
    func stopsAtUndecodableBytes() throws {
        let disassembler = try Disassembler<AArch64>()
        let code = Array(Self.program[0 ..< 4]) + Self.unallocated + Array(Self.program[4 ..< 8])
        let result = stream(code, with: disassembler)

        #expect(result.entries.map(\.mnemonic) == ["add"])
        #expect(result.consumed == 4)
    }

    @Test("a limit stops decoding after that many instructions")
    func limitStopsEarly() throws {
        let disassembler = try Disassembler<AArch64>()
        let result = stream(Self.program, with: disassembler, limit: 2)

        #expect(result.entries.map(\.mnemonic) == ["add", "ldr"])
        #expect(result.consumed == 8)
    }

    #if os(macOS) || os(Linux) || os(Windows)
    /// A negative limit is a programming error, documented as such, not a request
    /// to decode nothing.
    @Test("a negative limit traps")
    func negativeLimitTraps() async {
        await #expect(processExitsWith: .failure) {
            let disassembler = try Disassembler<AArch64>()
            disassembler.forEachInstruction(in: [0x62, 0x00, 0x04, 0x8B] as [UInt8], address: 0x1000, limit: -1) { _ in }
        }
    }
    #endif

    @Test("empty input lends nothing and consumes nothing")
    func emptyInput() throws {
        let disassembler = try Disassembler<AArch64>()
        let result = stream([], with: disassembler)

        #expect(result.entries.isEmpty)
        #expect(result.consumed == 0)
    }

    @Test("an error thrown by the closure stops decoding and reaches the caller")
    func closureErrorsPropagate() throws {
        let disassembler = try Disassembler<AArch64>()
        var seen: [String] = []
        #expect(throws: StopDecoding.self) {
            try disassembler.forEachInstruction(in: Self.program, address: 0x1000) { instruction in
                seen.append(instruction.mnemonic)
                throw StopDecoding()
            }
        }
        #expect(seen == ["add"])
    }

    @Test("Data and RawSpan input decode the same as an array")
    func inputForms() throws {
        let disassembler = try Disassembler<AArch64>()
        let data = Data(Self.program)
        var fromData: [String] = []
        disassembler.forEachInstruction(in: data, address: 0x1000) { fromData.append($0.mnemonic) }
        var fromSpan: [String] = []
        disassembler.forEachInstruction(in: data.bytes, address: 0x1000) { fromSpan.append($0.mnemonic) }

        #expect(fromData == ["add", "ldr", "b", "ret"])
        #expect(fromSpan == fromData)
    }

    /// A sliced `Data` starts at a non-zero index; the engine must read the slice,
    /// not the buffer it was cut from.
    @Test("a Data slice decodes from its own start")
    func dataSlice() throws {
        let disassembler = try Disassembler<AArch64>()
        let buffer = Data(Self.unallocated + Self.program)
        var mnemonics: [String] = []
        disassembler.forEachInstruction(in: buffer[4...], address: 0x1000) { mnemonics.append($0.mnemonic) }

        #expect(mnemonics == ["add", "ldr", "b", "ret"])
    }

    @Test("engines keep their own modes")
    func enginesAreIndependent() throws {
        let littleEndian = try Disassembler<AArch64>(mode: .littleEndian)
        let bigEndian = try Disassembler<AArch64>(mode: .bigEndian)

        // add x2, x3, x4 in each byte order.
        let littleEndianResult = stream([0x62, 0x00, 0x04, 0x8B], with: littleEndian)
        let bigEndianResult = stream([0x8B, 0x04, 0x00, 0x62], with: bigEndian)
        let littleEndianAgain = stream([0x62, 0x00, 0x04, 0x8B], with: littleEndian)

        #expect(littleEndianResult.entries.map(\.operandsText) == ["x2, x3, x4"])
        #expect(bigEndianResult.entries.map(\.operandsText) == ["x2, x3, x4"])
        #expect(littleEndianAgain.entries == littleEndianResult.entries)
    }

    /// The closure may use the engine it is being called from. The instruction it
    /// was lent must still read as itself afterwards, although the engine has
    /// decoded other code in between.
    @Test("decoding again from inside the closure leaves the lent instruction intact")
    func nestedIteration() throws {
        let disassembler = try Disassembler<AArch64>()
        var outer: [String] = []
        var inner: [String] = []
        disassembler.forEachInstruction(in: Array(Self.program[0 ..< 8]), address: 0x1000) { instruction in
            disassembler.forEachInstruction(in: Array(Self.program[8 ..< 16]), address: 0x2000) { nested in
                inner.append(nested.mnemonic)
            }
            outer.append("\(instruction.mnemonic) \(instruction.operandsText)")
        }

        #expect(outer == ["add x2, x3, x4", "ldr x0, [x1, #8]"])
        #expect(inner == ["b", "ret", "b", "ret"])
    }

    private final class EngineHolder {
        let disassembler: Disassembler<AArch64>

        init(disassembler: consuming Disassembler<AArch64>) {
            self.disassembler = disassembler
        }
    }

    @Test("an engine can be moved into a stored property and used from there")
    func storedEngine() throws {
        let holder = EngineHolder(disassembler: try Disassembler<AArch64>())
        let result = stream(Self.program, with: holder.disassembler)

        #expect(result.entries.count == 4)
    }
}
#endif
