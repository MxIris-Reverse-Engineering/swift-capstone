#if CAPSTONE_HAS_AARCH64
import Testing
import Capstone

/// The options fixed when an engine is created. Printed texts come from capstone's
/// own regression cases in tests/issues/issues.yaml where it has one, otherwise
/// from the A64 encodings.
@Suite("Disassembler options")
struct DisassemblerOptionsTests {
    /// add x2, x3, x4
    private static let addition: [UInt8] = [0x62, 0x00, 0x04, 0x8B]
    /// Bits 28:25 are 0b0001, which the A64 encoding table leaves unallocated.
    private static let unallocated: [UInt8] = [0xFF, 0x00, 0x00, 0x02]
    /// ldr x0, [x1, #8]
    private static let load: [UInt8] = [0x20, 0x04, 0x40, 0xF9]
    /// ret
    private static let returnInstruction: [UInt8] = [0xC0, 0x03, 0x5F, 0xD6]

    private func texts(_ code: [UInt8], with disassembler: borrowing Disassembler<AArch64>) -> [String] {
        disassembler.decode(code, address: 0x1000).map(\.description)
    }

    @Test("the register alias syntax names x29 and x30 fp and lr")
    func registerAliasSyntax() throws {
        // stp x29, x30, [sp, #-0x10]!
        let bytes: [UInt8] = [0xFD, 0x7B, 0xBF, 0xA9]
        #expect(texts(bytes, with: try Disassembler<AArch64>()) == ["stp x29, x30, [sp, #-0x10]!"])
        #expect(texts(bytes, with: try Disassembler<AArch64>(syntax: .capstoneRegisterAlias)) == ["stp fp, lr, [sp, #-0x10]!"])
    }

    /// capstone's cases "issue 2890 AArch64 shifted MOVN retains MOV alias by
    /// default" and "issue 2890 AArch64 shifted MOVN immediate printing".
    @Test("the explicit wide immediate syntax prints a shifted movn in its own form")
    func explicitWideImmediateSyntax() throws {
        let bytes: [UInt8] = [0xE4, 0x02, 0xA0, 0x12]
        #expect(texts(bytes, with: try Disassembler<AArch64>()) == ["mov w4, #-0x170001"])
        #expect(texts(bytes, with: try Disassembler<AArch64>(syntax: .explicitWideImmediate)) == ["movn w4, #0x17, lsl #16"])
    }

    /// capstone's case "#2722 - CS_OPT_UNSIGNED is ignored for most archs" for the
    /// unsigned text. capstone prints values from -9 to 9 in decimal
    /// (`HEX_THRESHOLD` in utils.h), hence `#-1` without the option.
    @Test("unsigned immediates change the text but not the operand")
    func unsignedImmediates() throws {
        // ldur x0, [x1, #-0x1]
        let bytes: [UInt8] = [0x20, 0xF0, 0x5F, 0xF8]
        let signed = try #require(try Disassembler<AArch64>().decode(bytes, address: 0x1000).first)
        let unsigned = try #require(try Disassembler<AArch64>(unsignedImmediates: true).decode(bytes, address: 0x1000).first)

        #expect(signed.description == "ldur x0, [x1, #-1]")
        #expect(unsigned.description == "ldur x0, [x1, #0xffffffffffffffff]")
        #expect(unsigned.operands.last?.memory?.displacement == -1)
    }

    @Test("real-instruction details give an alias the operands of the instruction it stands for")
    func realInstructionDetails() throws {
        // mov x0, x1 — an alias of orr x0, xzr, x1
        let bytes: [UInt8] = [0xE0, 0x03, 0x01, 0xAA]
        let aliasForm = try #require(try Disassembler<AArch64>().decode(bytes, address: 0x1000).first)
        let realForm = try #require(try Disassembler<AArch64>(details: .realInstruction).decode(bytes, address: 0x1000).first)

        #expect(aliasForm.usesAliasDetails)
        #expect(aliasForm.operands.compactMap(\.register) == [.x0, .x1])
        #expect(!realForm.usesAliasDetails)
        #expect(realForm.operands.compactMap(\.register) == [.x0, .xzr, .x1])
        #expect(realForm.description == "mov x0, x1")
    }

    /// The data entry follows an instruction with three operands, decoded into the
    /// same buffer.
    @Test("skipped data becomes an entry without details and decoding goes on")
    func skipDataEntries() throws {
        let disassembler = try Disassembler<AArch64>(skipData: SkipData())
        let instructions = disassembler.decode(Self.addition + Self.unallocated + Self.load, address: 0x1000)
        try #require(instructions.count == 3)

        let data = instructions[1]
        #expect(instructions.map(\.isData) == [false, true, false])
        #expect(data.address == 0x1004)
        #expect(data.bytes == Self.unallocated)
        #expect(data.description == ".byte 0xff, 0x00, 0x00, 0x02")
        #expect(data.identifier == nil)
        #expect(data.alias == nil)
        #expect(data.operands.isEmpty)
        #expect(data.registersRead.isEmpty)
        #expect(data.registersWritten.isEmpty)
        #expect(data.groups.isEmpty)
        #expect(instructions[2].description == "ldr x0, [x1, #8]")
    }

    @Test("data entries take the mnemonic given")
    func skipDataMnemonic() throws {
        let disassembler = try Disassembler<AArch64>(skipData: SkipData(mnemonic: ".word"))
        let instructions = disassembler.decode(Self.unallocated, address: 0x1000)
        #expect(instructions.map(\.mnemonic) == [".word"])
    }

    /// capstone hands its callback the remaining input with an offset of 0; the
    /// closure gets the whole input and an offset from its start.
    @Test("the skip closure sees the whole input and decides how much to skip")
    func skipDataClosure() throws {
        var calls: [(byteCount: Int, offset: Int)] = []
        let disassembler = try Disassembler<AArch64>(skipData: SkipData(bytesToSkip: { code, offset in
            calls.append((code.byteCount, offset))
            return 8
        }))
        let instructions = disassembler.decode(Self.addition + Self.unallocated + Self.load + Self.returnInstruction, address: 0x1000)

        #expect(calls.map(\.byteCount) == [16])
        #expect(calls.map(\.offset) == [4])
        #expect(instructions.map(\.description) == ["add x2, x3, x4", ".byte 0xff, 0x00, 0x00, 0x02, 0x20, 0x04, 0x40, 0xf9", "ret"])
        #expect(instructions[1].bytes == Self.unallocated + Self.load)
    }

    /// capstone's own copy of an entry's bytes holds 24.
    @Test("a data entry longer than 24 bytes keeps all its bytes")
    func longDataEntry() throws {
        let data = Array(repeating: Self.unallocated, count: 7).flatMap { $0 }
        let disassembler = try Disassembler<AArch64>(skipData: SkipData(bytesToSkip: { _, _ in 28 }))
        let instructions = disassembler.decode(data + Self.returnInstruction, address: 0x1000)

        #expect(instructions.map(\.isData) == [true, false])
        #expect(instructions.first?.bytes == data)
        #expect(instructions.last?.address == 0x101C)
    }

    @Test("a skip closure returning 0 stops decoding")
    func skipDataClosureStops() throws {
        let disassembler = try Disassembler<AArch64>(skipData: SkipData(bytesToSkip: { _, _ in 0 }))
        var mnemonics: [String] = []
        let consumed = disassembler.forEachInstruction(in: Self.addition + Self.unallocated + Self.load, address: 0x1000) {
            mnemonics.append($0.mnemonic)
        }

        #expect(mnemonics == ["add"])
        #expect(consumed == 4)
    }

    @Test("a pass started inside another reports offsets into its own input")
    func nestedSkipData() throws {
        var offsets: [Int] = []
        let disassembler = try Disassembler<AArch64>(skipData: SkipData(bytesToSkip: { _, offset in
            offsets.append(offset)
            return 4
        }))
        disassembler.forEachInstruction(in: Self.addition + Self.unallocated, address: 0x1000) { instruction in
            if !instruction.isData {
                disassembler.forEachInstruction(in: Self.unallocated, address: 0x2000) { _ in }
            }
        }

        // The nested pass finds data at its own start; the outer one then finds
        // data four bytes into its input.
        #expect(offsets == [0, 4])
    }

    /// capstone replaces as many leading characters of the printed mnemonic as the
    /// instruction's own name has (`str_replace` in cs.c assumes the mnemonic starts
    /// with that name), so an alias of the instruction gets cut too: `mov` is three
    /// characters, like `orr`, and all three go.
    @Test("a custom mnemonic replaces the start of the printed mnemonic, an alias's too")
    func customMnemonics() throws {
        let disassembler = try Disassembler<AArch64>(mnemonics: [.add: "plus", .orr: "or"])
        // mov x0, x1 is printed as an alias of orr.
        let instructions = disassembler.decode(Self.addition + [0xE0, 0x03, 0x01, 0xAA], address: 0x1000)

        #expect(instructions.map(\.description) == ["plus x2, x3, x4", "or x0, x1"])
        #expect(instructions.first?.identifier == .add)
    }

    /// capstone accepts only the endianness and Apple proprietary bits for AArch64;
    /// bit 4 is Thumb, an ARM mode.
    @Test("a mode the architecture does not have is rejected")
    func invalidMode() throws {
        let error = try #require(throws: CapstoneError.self) {
            _ = try Disassembler<AArch64>(mode: AArch64.Mode(rawValue: 1 << 4))
        }
        #expect(error == .invalidMode)
    }
}
#endif
