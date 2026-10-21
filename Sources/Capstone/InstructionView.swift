internal import Ccapstone

/// One decoded instruction as capstone left it in the engine's buffer, lent to the
/// closure of `Disassembler.forEachInstruction`.
///
/// It cannot be copied or kept: the engine overwrites the buffer it reads from with
/// the next instruction. Copy out what you need inside the closure, or use
/// `Disassembler.decode` for values that outlive the engine.
@safe
public struct InstructionView<Architecture: DisassemblyArchitecture>: ~Copyable {
    // Safe to use despite the pointers: they stay valid as long as the view exists,
    // since it only ever exists as a borrow inside the closure the engine lends it to.
    let instruction: UnsafePointer<cs_insn>
    let handle: csh
    /// The input bytes this entry covers. capstone's own copy holds at most 24.
    let entryBytes: UnsafeRawBufferPointer

    init(instruction: UnsafePointer<cs_insn>, handle: csh, entryBytes: UnsafeRawBufferPointer) {
        unsafe self.instruction = instruction
        self.handle = handle
        unsafe self.entryBytes = entryBytes
    }

    /// Address of the instruction, counted from the address passed for the start of
    /// the code.
    public var address: UInt64 {
        unsafe instruction.pointee.address
    }

    /// The machine code of the instruction.
    public var bytes: [UInt8] {
        unsafe Array(entryBytes)
    }

    /// The mnemonic as printed, such as `add`, or `mov` for an alias.
    public var mnemonic: String {
        string(fromCharacters: unsafe instruction.pointee.mnemonic)
    }

    /// The operands as printed, such as `x2, x3, x4`; empty when there are none.
    public var operandsText: String {
        string(fromCharacters: unsafe instruction.pointee.op_str)
    }

    /// The instruction capstone decoded. For an alias this is the real instruction,
    /// `.orr` for `mov x0, x1`; `alias` names the alias.
    ///
    /// `nil` for data entries.
    public var identifier: Architecture.InstructionIdentifier? {
        guard !isData else {
            return nil
        }
        return Architecture.InstructionIdentifier(rawValue: unsafe instruction.pointee.id)
    }

    /// The alias the instruction is printed as, such as `.aliasMov` for `mov x0, x1`,
    /// or `nil` when it is printed in its own form.
    public var alias: Architecture.InstructionIdentifier? {
        guard !isData, unsafe instruction.pointee.is_alias,
              let rawValue = UInt32(exactly: unsafe instruction.pointee.alias_id)
        else {
            return nil
        }
        return Architecture.InstructionIdentifier(rawValue: rawValue)
    }

    /// Whether this entry is bytes skipped as data rather than an instruction.
    /// Only engines created with `skipData` produce such entries; they have no
    /// details.
    public var isData: Bool {
        unsafe instruction.pointee.id == 0
    }

    /// Whether the bytes decode to an instruction the architecture nonetheless
    /// forbids, for using a register it does not allow or for appearing where it is
    /// not valid. A load that writes back into its own transfer register is one.
    public var isIllegal: Bool {
        unsafe !isData && instruction.pointee.illegal
    }

    /// Whether the details describe an alias in its own form, such as the two
    /// operands of `mov x0, x1`, rather than the three of the real instruction
    /// `orr x0, xzr, x1`.
    ///
    /// `true` for every instruction unless the engine was created with
    /// `details: .realInstruction`; `false` for data entries.
    public var usesAliasDetails: Bool {
        unsafe !isData && instruction.pointee.usesAliasDetails
    }

    /// capstone's details of the instruction, or `nil` for a data entry. capstone's
    /// skipdata path does not touch the details, so what a data entry's buffer holds
    /// depends on how far the architecture module got before the bytes failed to
    /// decode. AArch64's clears them first; others may not.
    var details: UnsafePointer<cs_detail>? {
        guard !isData, let details = unsafe instruction.pointee.detail else {
            return nil
        }
        return unsafe UnsafePointer(details)
    }
}

@available(*, unavailable, message: "A view reads the engine's buffer and exists only in the closure it is lent to.")
extension InstructionView: Sendable {}
