#if CAPSTONE_HAS_AARCH64
internal import Ccapstone

/// AArch64, also known as ARM64: the type parameter of `Disassembler<AArch64>` and
/// the namespace of everything specific to the architecture.
public enum AArch64: DisassemblyArchitecture, Sendable {
    public typealias InstructionIdentifier = AArch64Ins

    public static var architecture: Architecture { .aarch64 }

    /// Modes capstone's AArch64 module accepts.
    public struct Mode: OptionSet, Sendable {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        /// Little-endian, the default. It is the empty set: capstone's
        /// `CS_MODE_LITTLE_ENDIAN` is 0.
        public static let littleEndian: Mode = []

        /// Big-endian.
        public static let bigEndian = Mode(rawValue: CS_MODE_BIG_ENDIAN.rawValue)

        /// Apple's proprietary instructions, such as AMX. Without it they do not
        /// decode, and disassembly stops at the first one.
        public static let appleProprietary = Mode(rawValue: CS_MODE_APPLE_PROPRIETARY.rawValue)
    }

    /// Printing options capstone's AArch64 module reads. Of capstone's syntax
    /// options these are the only two it acts on.
    public struct Syntax: OptionSet, Sendable {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        /// Prints the register names LLVM leaves out: `fp` for x29 and `lr` for x30.
        public static let capstoneRegisterAlias = Syntax(rawValue: CS_OPT_SYNTAX_CS_REG_ALIAS.rawValue)

        /// Prints `movz` and `movn` with a shifted immediate in their own form,
        /// `movz x0, #0x1, lsl #16`, rather than as the `mov` alias.
        public static let explicitWideImmediate = Syntax(rawValue: CS_OPT_SYNTAX_AARCH64_EXPLICIT_WIDE_IMM.rawValue)
    }

    /// A decoded instruction, copied out of the engine: it outlives the engine and
    /// can cross concurrency domains.
    ///
    /// The properties mean what the `InstructionView<AArch64>` properties of the
    /// same names do, read when the instruction was decoded. Data entries, which
    /// only engines created with `skipData` produce, have no identifier and no
    /// details: their arrays are empty and their flags `false`.
    public struct Instruction: Sendable, CustomStringConvertible {
        /// Address of the instruction.
        public let address: UInt64
        /// The machine code of the instruction.
        public let bytes: [UInt8]
        /// The mnemonic as printed, such as `add`, or `mov` for an alias.
        public let mnemonic: String
        /// The operands as printed; empty when there are none.
        public let operandsText: String
        /// The real instruction, `.orr` for `mov x0, x1`; `nil` for data entries.
        public let identifier: AArch64Ins?
        /// The alias the instruction is printed as, `.aliasMov` for `mov x0, x1`.
        public let alias: AArch64Ins?
        /// Whether the entry is bytes skipped as data rather than an instruction.
        public let isData: Bool
        /// Whether the instruction decodes but the architecture forbids it.
        public let isIllegal: Bool
        /// Whether the details describe an alias in its own form.
        public let usesAliasDetails: Bool
        /// The operands, in printed order.
        public let operands: [Operand]
        /// Every register read, operands and implicit ones alike.
        public let registersRead: [AArch64Reg]
        /// Every register written, operands and implicit ones alike.
        public let registersWritten: [AArch64Reg]
        /// Registers read without being named as operands.
        public let implicitRegistersRead: [AArch64Reg]
        /// Registers written without being named as operands.
        public let implicitRegistersWritten: [AArch64Reg]
        /// The groups the instruction belongs to.
        public let groups: [AArch64Grp]
        /// The condition the instruction executes under; `nil` when unconditional.
        public let conditionCode: AArch64CondCode?
        /// Whether the instruction sets the condition flags.
        public let updatesFlags: Bool
        /// For a write-back instruction, whether it writes back after the access.
        public let isPostIndex: Bool
        /// Whether the instruction writes the updated address back into its base
        /// register.
        public let writesBackBaseRegister: Bool

        /// The instruction as printed, such as `add x2, x3, x4`.
        public var description: String {
            operandsText.isEmpty ? mnemonic : "\(mnemonic) \(operandsText)"
        }
    }

    public static func snapshot(of instruction: borrowing InstructionView<AArch64>) -> Instruction {
        let registersAccessed = instruction.registersAccessed()
        return Instruction(
            address: instruction.address,
            bytes: instruction.bytes,
            mnemonic: instruction.mnemonic,
            operandsText: instruction.operandsText,
            identifier: instruction.identifier,
            alias: instruction.alias,
            isData: instruction.isData,
            isIllegal: instruction.isIllegal,
            usesAliasDetails: instruction.usesAliasDetails,
            operands: instruction.operands,
            registersRead: registersAccessed.read,
            registersWritten: registersAccessed.written,
            implicitRegistersRead: instruction.implicitRegistersRead,
            implicitRegistersWritten: instruction.implicitRegistersWritten,
            groups: instruction.groups,
            conditionCode: instruction.conditionCode,
            updatesFlags: instruction.updatesFlags,
            isPostIndex: instruction.isPostIndex,
            writesBackBaseRegister: instruction.writesBackBaseRegister
        )
    }
}
#endif
