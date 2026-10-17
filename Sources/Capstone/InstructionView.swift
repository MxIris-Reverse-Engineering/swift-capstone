import Ccapstone

/// One decoded instruction as capstone left it in the engine's buffer, lent to the
/// closure of `Disassembler.forEachInstruction`.
///
/// It cannot be copied or kept: the engine overwrites the buffer it reads from with
/// the next instruction. Copy out what you need inside the closure, or use
/// `Disassembler.decode` for values that outlive the engine.
public struct InstructionView<Architecture: DisassemblyArchitecture>: ~Copyable {
    let instruction: UnsafePointer<cs_insn>
    let handle: csh
    /// The input bytes this entry covers. capstone's own copy holds at most 24.
    let entryBytes: UnsafeRawBufferPointer

    init(instruction: UnsafePointer<cs_insn>, handle: csh, entryBytes: UnsafeRawBufferPointer) {
        self.instruction = instruction
        self.handle = handle
        self.entryBytes = entryBytes
    }

    /// Address of the instruction, counted from the address passed for the start of
    /// the code.
    public var address: UInt64 {
        instruction.pointee.address
    }

    /// The machine code of the instruction.
    public var bytes: [UInt8] {
        Array(entryBytes)
    }

    /// The mnemonic as printed, such as `add`, or `mov` for an alias.
    public var mnemonic: String {
        string(fromCharacters: instruction.pointee.mnemonic)
    }

    /// The operands as printed, such as `x2, x3, x4`; empty when there are none.
    public var operandsText: String {
        string(fromCharacters: instruction.pointee.op_str)
    }

    /// The instruction capstone decoded. For an alias this is the real instruction,
    /// `.orr` for `mov x0, x1`.
    public var identifier: Architecture.InstructionIdentifier? {
        Architecture.InstructionIdentifier(rawValue: instruction.pointee.id)
    }
}

/// Reads a NUL-terminated string out of a fixed-size C character array, which Swift
/// imports as a tuple, never reading past the array's end.
func string<Characters>(fromCharacters characters: Characters) -> String {
    withUnsafeBytes(of: characters) { bytes in
        let length = bytes.firstIndex(of: 0) ?? bytes.count
        return String(decoding: bytes[..<length], as: UTF8.self)
    }
}
