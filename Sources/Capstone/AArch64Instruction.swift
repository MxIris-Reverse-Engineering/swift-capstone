#if CAPSTONE_HAS_AARCH64
import Ccapstone

// The AArch64 side of the class-based API, which Disassembler<AArch64> replaces.
// Its operands are AArch64.Operand already.

extension AArch64Instruction: OperandContainer {
    public typealias Operand = AArch64.Operand

    /// Condition code.
    ///
    /// `nil` when detail mode is off, or the instruction has no condition code.
    public var conditionCode: AArch64CondCode? {
        optionalEnumCast(detail?.aarch64.cc, ignoring: AArch64CC_Invalid)
    }

    /// Does this instruction update flags?
    ///
    /// `nil` when detail mode is off.
    public var updatesFlags: Bool? { detail?.aarch64.update_flags }

    /// For a write-back instruction, whether the write-back is post-index.
    ///
    /// Only meaningful when the instruction writes back at all: `false` then means
    /// pre-index rather than "no write-back". `writesBackBaseRegister` says whether
    /// it does.
    ///
    /// `nil` when detail mode is off.
    public var isPostIndex: Bool? { detail?.aarch64.post_index }

    /// Whether the instruction writes the updated address back into the base
    /// register of its memory operand, pre-indexed as in `[x1, #8]!` or post-indexed
    /// as in `[x1], #8`.
    ///
    /// capstone's own `writeback` flag is not this: it is set whenever an operand is
    /// tied to another, which `movk`, `bfi` and `cas` also have. Post-indexing comes
    /// from capstone's detail; pre-indexing has no field of its own and is read off
    /// the printed operands, where `]!` marks it and nothing else.
    ///
    /// `nil` when detail mode is off.
    public var writesBackBaseRegister: Bool? {
        guard let detail else {
            return nil
        }
        guard detail.writeback else {
            return false
        }
        return detail.aarch64.post_index || operandsString.contains("]!")
    }

    /// Is a SME or SVE operand currently being edited?
    ///
    /// `nil` when detail mode is off.
    public var isDoingSME: Bool? { detail?.aarch64.is_doing_sme }

    /// Instruction operands.
    ///
    /// Empty when detail mode is off.
    public var operands: [Operand] {
        let operands: [cs_aarch64_op] = readDetailsArray(
            array: detail?.aarch64.operands,
            size: detail?.aarch64.op_count
        )
        return operands.map(Operand.init(capstoneOperand:))
    }
}

extension AArch64.Operand: InstructionOperand {}

extension AArch64Ins: InstructionType {}

#endif
