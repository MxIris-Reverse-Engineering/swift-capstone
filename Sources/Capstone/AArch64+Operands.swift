// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT.
// Regenerate with: swift package plugin generate-enums
//
// Operand-type to union-member mapping comes from the operand configuration
// in CapstoneEnumsGenerator; the C header only carries it in comments.

#if CAPSTONE_HAS_AARCH64
import Ccapstone

public extension AArch64Instruction.Operand {
    /// Register value for `reg` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var register: AArch64Reg? {
        guard type == .reg else { return nil }
        let value: AArch64Reg? = optionalEnumCast(op.reg)
        return value
    }

    /// Immediate value for `imm`, `cimm` and `implicitImm0` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var immediateValue: Int64? {
        guard type == .imm || type == .cimm || type == .implicitImm0 else { return nil }
        return op.imm
    }

    /// Immediate range for `immRange` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var immediateRange: ImmediateRange? {
        guard type == .immRange else { return nil }
        return ImmediateRange(op.imm_range)
    }

    /// Floating point value for `fp` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var doubleValue: Double? {
        guard type == .fp else { return nil }
        return op.fp
    }

    /// Base, index and displacement for `mem` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var memory: Memory? {
        guard type == .mem else { return nil }
        return Memory(op.mem)
    }

    /// SME matrix operand, for `sme` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var matrixOperand: MatrixOperand? {
        guard type == .sme else { return nil }
        return MatrixOperand(op.sme)
    }

    /// Predicate register operand, for `pred` operands.
    ///
    /// `nil` when the operand is not of a matching type.
    var predicate: Predicate? {
        guard type == .pred else { return nil }
        return Predicate(op.pred)
    }

    /// System operand. Its `subType` says which kind, and `value` decodes it.
    ///
    /// `nil` when the operand is not of a matching type.
    var systemOperand: SystemOperand? {
        guard type == .sysreg || type == .sysimm || type == .sysalias else { return nil }
        return SystemOperand(op.sysop)
    }

    /// Operand types that carry no value of their own.
    /// - `at`: Only ever a sysop sub_type; read via systemOperand.
    /// - `bti`: Only ever a sysop sub_type; read via systemOperand.
    /// - `db`: Only ever a sysop sub_type; read via systemOperand.
    /// - `dbnxs`: Only ever a sysop sub_type; read via systemOperand.
    /// - `dc`: Only ever a sysop sub_type; read via systemOperand.
    /// - `exactfpimm`: Only ever a sysop sub_type; read via systemOperand.
    /// - `ic`: Only ever a sysop sub_type; read via systemOperand.
    /// - `invalid`: Not a real operand: marks an uninitialised slot.
    /// - `isb`: Only ever a sysop sub_type; read via systemOperand.
    /// - `memImm`: AArch64 reports memory operands as `mem`; never set.
    /// - `memReg`: AArch64 reports memory operands as `mem`; never set.
    /// - `prfm`: Only ever a sysop sub_type; read via systemOperand.
    /// - `psb`: Only ever a sysop sub_type; read via systemOperand.
    /// - `pstateimm01`: Only ever a sysop sub_type; read via systemOperand.
    /// - `pstateimm015`: Only ever a sysop sub_type; read via systemOperand.
    /// - `regMrs`: Only ever a sysop sub_type; read via systemOperand.
    /// - `regMsr`: Only ever a sysop sub_type; read via systemOperand.
    /// - `rprfm`: Only ever a sysop sub_type; read via systemOperand.
    /// - `svcr`: Only ever a sysop sub_type; read via systemOperand.
    /// - `svepredpat`: Only ever a sysop sub_type; read via systemOperand.
    /// - `sveprfm`: Only ever a sysop sub_type; read via systemOperand.
    /// - `sveveclenspecifier`: Only ever a sysop sub_type; read via systemOperand.
    /// - `tlbi`: Only ever a sysop sub_type; read via systemOperand.
    /// - `tsb`: Only ever a sysop sub_type; read via systemOperand.
    internal static var unexposedOperandTypes: Set<AArch64Op> {
        [.at, .bti, .db, .dbnxs, .dc, .exactfpimm, .ic, .invalid, .isb, .memImm, .memReg, .prfm, .psb, .pstateimm01, .pstateimm015, .regMrs, .regMsr, .rprfm, .svcr, .svepredpat, .sveprfm, .sveveclenspecifier, .tlbi, .tsb]
    }
}
#endif
