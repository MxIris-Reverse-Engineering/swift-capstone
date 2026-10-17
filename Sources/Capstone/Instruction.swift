import Foundation
import Ccapstone

/// Base class for all disassembled instructions.
///
/// Provides access to basic information about an instruction, shared by all architectures.
/// Disassembled instructions will always be of a platform-specific instruction class.
public class Instruction: CustomStringConvertible {
    let mgr: InstructionMemoryManager
    let index: Int
    var insn: cs_insn { mgr.insns[index] }

    /// The type for registers used in this architecture (if any).
    ///
    /// This is an enumeration with values corresponding to the registers.
    public class var registerType: Any.Type? { nil }

    /// The type for instructions used in this architecture.
    ///
    /// This is an enumeration with values corresponding to instruction mnemonics.
    public class var instructionType: InstructionType.Type { fatalError("Not implemented") }

    internal required init(_ mgr: InstructionMemoryManager, index: Int) {
        self.mgr = mgr
        self.index = index
    }

    /// Address (EIP) of this instruction.
    ///
    /// This information is available even when detail option is disabled.
    public var address: UInt64 {
        insn.address
    }

    /// Size of this instruction in bytes.
    ///
    /// This information is available even when detail option is disabled.
    public var size: UInt16 {
        insn.size
    }

    /// Machine bytes of this instruction.
    ///
    /// This information is available even when detail option is disabled.
    public var bytes: Data {
        withUnsafePointer(to: insn.bytes, { Data(bytes: $0, count: Int(insn.size)) })
    }

    /// Textual representation of the instruction's mnemonic.
    ///
    /// This information is available even when detail option is disabled.
    public var mnemonic: String {
        withUnsafePointer(to: insn.mnemonic, { $0.withMemoryRebound(to: Int8.self, capacity: Int(CS_MNEMONIC_SIZE), { String(cString: $0) }) })
    }

    /// Textual representation of the instruction's operands.
    ///
    /// This information is available even when detail option is disabled.
    public var operandsString: String {
        withUnsafePointer(to: insn.op_str, { $0.withMemoryRebound(to: Int8.self, capacity: 160, { String(cString: $0) }) })
    }

    /// Textual representation of the instruction, including its mnemonic and operands.
    ///
    /// This information is available even when detail option is disabled.
    public var description: String {
        "\(mnemonic) \(operandsString)"
    }

    /// Whether the instruction is printed as an alias, such as `mov x0, x1` for
    /// `orr x0, xzr, x1`. `instruction` still names the real instruction; the
    /// architecture's `aliasInstruction` names the alias.
    ///
    /// Only the architectures capstone generates with its auto-sync updater report
    /// aliases, AArch64 among them; the others always say `false`. This information
    /// is available even when detail option is disabled.
    public var isAlias: Bool {
        insn.is_alias
    }

    /// Whether the details describe the alias form of an alias, such as the two
    /// operands of `mov x0, x1`, rather than the real instruction's three of
    /// `orr x0, xzr, x1`.
    ///
    /// `true` unless the engine has `DisassemblyOption.realInstructionDetail` on.
    /// It reflects that option for every instruction, aliases or not.
    public var usesAliasDetails: Bool {
        insn.usesAliasDetails
    }

    /// Whether the bytes decode to an instruction the architecture nonetheless
    /// forbids, for using a register it does not allow or for appearing where it is
    /// not valid. A load that writes back into its own transfer register is one.
    ///
    /// This information is available even when detail option is disabled.
    public var isIllegal: Bool {
        insn.illegal
    }
}

// Instruction Memory Management
// Ensures cs_free is called when there are no more references to instructions
internal class InstructionMemoryManager {
    let insns: UnsafeMutablePointer<cs_insn>
    let count: Int
    let cs: Capstone

    internal init(_ insns: UnsafeMutablePointer<cs_insn>, count: Int, cs: Capstone) {
        self.insns = insns
        self.count = count
        self.cs = cs
    }

    deinit {
        cs_free(insns, count)
    }
}

/// Base class for platform-specific instructions without registers.
/// - parameter InsType: type of enumeration used to represent instructions in this architecture.
/// - parameter GroupType: type of enumeration used to represent instruction groups in this architecture.
public class PlatformInstructionBase<
    InsType: InstructionType,
    GroupType: RawRepresentable
>: Instruction where
    GroupType.RawValue == UInt8 {

    /// The identifier for this instruction.
    ///
    /// This is the instruction mnemonic, represented in an architecture-specific enumeration.
    public var instruction: InsType? {
        InsType(rawValue: insn.id)
    }

    /// The alias the instruction is printed as, such as `.aliasMov` for `mov x0, x1`,
    /// or `nil` when it is not an alias. `instruction` names the real instruction,
    /// `.orr` in that example.
    ///
    /// This information is available even when detail option is disabled.
    public var aliasInstruction: InsType? {
        guard insn.is_alias, let rawValue = UInt32(exactly: insn.alias_id) else {
            return nil
        }
        return InsType(rawValue: rawValue)
    }

    /// The type for instructions used in this architecture.
    ///
    /// This is an enumeration with values corresponding to instruction mnemonics.
    /// The same as the `InsType` generic parameter.
    override public class var instructionType: InstructionType.Type { InsType.self }
}

/// Base class for platform-specific instructions with registers.
///
/// - parameter InsType: type of enumeration used to represent instructions in this architecture.
/// - parameter GroupType: type of enumeration used to represent instruction groups in this architecture.
/// - parameter RegType: type of enumeration used to represent registers in this architecture.
public class PlatformInstruction<
    InsType: InstructionType,
    GroupType: RawRepresentable,
    RegType: RawRepresentable
>: PlatformInstructionBase<InsType, GroupType> where
    GroupType.RawValue == UInt8,
    RegType.RawValue == UInt16 {

    /// The type for instructions used in this architecture.
    ///
    /// This is an enumeration with values corresponding to instruction mnemonics.
    /// The same as the `RegType` generic parameter.
    override public class var registerType: Any.Type? { RegType.self }
}
