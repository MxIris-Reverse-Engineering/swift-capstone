#if CAPSTONE_HAS_AARCH64
import Ccapstone

// The type-safe operand accessors live in AArch64+Operands.swift, generated from
// the operand configuration in CapstoneEnumsGenerator. What is here is what the
// generator cannot derive: the operand's own shape, the Swift values wrapping
// capstone's operand structs, and the system-operand dispatch.

extension AArch64Instruction: OperandContainer {
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
    /// capstone v6 replaced v5's `writeback` flag with `post_index`. They are not
    /// the same question: `post_index` is only meaningful when the instruction
    /// writes back at all, and `false` then means pre-index rather than "no
    /// write-back". Which instructions write back is visible in the mnemonic.
    ///
    /// `nil` when detail mode is off.
    public var isPostIndex: Bool? { detail?.aarch64.post_index }

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
        return operands.map(Operand.init(op:))
    }

    /// Operand for AArch64 instructions.
    ///
    /// Read the value through the property matching the operand's `type` — see
    /// AArch64+Operands.swift for the full set. `value` returns whichever of them
    /// applies, type-erased.
    public struct Operand: InstructionOperand {
        internal var op: cs_aarch64_op

        /// Operand type.
        public var type: AArch64Op { enumCast(op.type) }

        /// Operand access mode.
        public var access: Access { enumCast(op.access) }

        /// Vector index for some vector operands.
        ///
        /// `nil` if not applicable.
        public var vectorIndex: Int? {
            guard op.vector_index != -1 else { return nil }
            return numericCast(op.vector_index)
        }

        /// Vector arrangement specifier.
        ///
        /// `nil` if not applicable.
        public var vectorArrangementSpecifier: AArch64Layout? {
            optionalEnumCast(op.vas, ignoring: AARCH64LAYOUT_INVALID)
        }

        /// Shift applied to this operand.
        ///
        /// `nil` if not applicable. When `type` indicates a register shift, `value`
        /// is an `AArch64Reg` raw value rather than a shift amount — capstone
        /// documents this on the field and does not model it as a separate case.
        public var shift: (type: AArch64Sft, value: UInt)? {
            guard op.shift.type != AARCH64_SFT_INVALID else { return nil }
            return (type: enumCast(op.shift.type), value: numericCast(op.shift.value))
        }

        /// Extender applied to this operand.
        ///
        /// `nil` if not applicable.
        public var extender: AArch64Ext? {
            optionalEnumCast(op.ext, ignoring: AARCH64_EXT_INVALID)
        }

        /// Q and V registers share identifiers because they are the same registers.
        /// When this is set, `register` is to be read as a V-register.
        public var isVectorRegister: Bool { op.is_vreg }

        /// Is this operand part of a register or vector list?
        public var isListMember: Bool { op.is_list_member }

        /// Operand value, whichever of the typed accessors applies.
        public var value: AArch64OperandValue? {
            switch type {
            case .reg: return register
            case .imm, .cimm, .implicitImm0: return immediateValue
            case .immRange: return immediateRange
            case .fp: return doubleValue
            case .mem: return memory
            case .sme: return matrixOperand
            case .pred: return predicate
            default:
                // Every remaining type is a system operand; the unexposed ones
                // carry no value at all.
                guard !Operand.unexposedOperandTypes.contains(type) else { return nil }
                return systemOperand
            }
        }

        /// Operand value referring to memory.
        public struct Memory {
            /// Base register.
            public let base: AArch64Reg
            /// Index register, if any.
            public let index: AArch64Reg?
            /// Displacement. Widened from 32 to 64 bits in capstone v6.
            public let displacement: Int64

            internal init(_ mem: aarch64_op_mem) {
                base = enumCast(mem.base)
                index = optionalEnumCast(mem.index, ignoring: AARCH64_REG_INVALID)
                displacement = mem.disp
            }
        }

        /// An inclusive range of immediates, as used by SVE index operands.
        public struct ImmediateRange {
            public let first: UInt8
            public let offset: UInt8

            /// The range as Swift models it, `first ... first + offset`.
            public var bounds: ClosedRange<Int> {
                Int(first) ... Int(first) + Int(offset)
            }

            internal init(_ range: aarch64_imm_range) {
                first = range.first
                offset = range.offset
            }
        }

        /// SME matrix operand.
        public struct MatrixOperand {
            public let type: AArch64SmeOp
            /// Matrix tile register.
            public let tile: AArch64Reg
            /// Slice index register.
            public let sliceRegister: AArch64Reg
            /// Slice index offset — a single immediate, or a range.
            public let sliceOffset: SliceOffset
            /// Is the slice vertical rather than horizontal?
            public let isVertical: Bool

            public enum SliceOffset {
                case immediate(UInt16)
                case range(first: UInt8, offset: UInt8)
                /// capstone marks an absent offset with a sentinel rather than a flag.
                case none
            }

            internal init(_ sme: aarch64_op_sme) {
                type = enumCast(sme.type)
                tile = enumCast(sme.tile)
                sliceRegister = enumCast(sme.slice_reg)
                isVertical = sme.is_vertical
                if sme.has_range_offset {
                    let range = sme.slice_offset.imm_range
                    sliceOffset = range.first == AARCH64_SLICE_IMM_RANGE_INVALID
                        ? .none
                        : .range(first: range.first, offset: range.offset)
                } else {
                    let immediate = sme.slice_offset.imm
                    sliceOffset = immediate == AARCH64_SLICE_IMM_INVALID
                        ? .none
                        : .immediate(immediate)
                }
            }
        }

        /// Predicate register operand.
        public struct Predicate {
            /// Vector predicate register.
            public let register: AArch64Reg
            /// Vector select register.
            public let vectorSelectRegister: AArch64Reg
            /// Index, in range 0 to one less than the element count of a 128-bit register.
            public let index: Int32

            internal init(_ predicate: aarch64_op_pred) {
                register = enumCast(predicate.reg)
                vectorSelectRegister = enumCast(predicate.vec_select)
                index = predicate.imm_index
            }
        }

        /// A system operand.
        ///
        /// v6 replaced v5's separate `sys`, `pstate`, `prefetch` and `barrier`
        /// fields with one struct carrying three unions and a `sub_type` saying
        /// which applies. `subType` is that discriminator; `value` decodes it.
        public struct SystemOperand {
            /// Which kind of system operand this is.
            public let subType: AArch64Op

            public enum Value {
                case systemRegister(AArch64Sysreg)
                case tlbi(AArch64Tlbi)
                case ic(AArch64Ic)
                case dbnxs(AArch64Dbnxs)
                case exactFloatingPointImmediate(AArch64Exactfpimm)
                case svcr(AArch64Svcr)
                case at(AArch64At)
                case dataBarrier(AArch64Db)
                case dc(AArch64Dc)
                case isb(AArch64Isb)
                case tsb(AArch64Tsb)
                case prefetch(AArch64Prfm)
                case svePrefetch(AArch64Sveprfm)
                case rangePrefetch(AArch64Rprfm)
                case processorState15(AArch64Pstateimm015)
                case processorState1(AArch64Pstateimm01)
                case psb(AArch64Psb)
                case branchTargetIdentification(AArch64Bti)
                case svePredicatePattern(AArch64Svepredpat)
                case sveVectorLengthSpecifier(AArch64Sveveclenspecifier)
                /// capstone writes the undecoded encoding into the union's
                /// `raw_val` when its own lookup fails, so this is a real value
                /// the engine produces, not a defensive fallback.
                case raw(Int32)
            }

            /// The decoded value.
            public var value: Value {
                // Which union holds the value follows sub_type. Cross-checked
                // against the assignments in arch/AArch64/AArch64Mapping.c: the
                // `reg` union carries sysreg/tlbi/ic, `imm` carries
                // dbnxs/exactfpimm, and `alias` carries the rest.
                switch subType {
                // MRS/MSR name a system register and arrive as a sub_type, with the
                // value in the same union as a plain sysreg.
                case .sysreg, .regMrs, .regMsr:
                    return decode(sysop.reg.sysreg, AArch64Sysreg.self, Value.systemRegister)
                case .tlbi: return decode(sysop.reg.tlbi, AArch64Tlbi.self, Value.tlbi)
                case .ic: return decode(sysop.reg.ic, AArch64Ic.self, Value.ic)

                case .dbnxs: return decode(sysop.imm.dbnxs, AArch64Dbnxs.self, Value.dbnxs)
                case .exactfpimm:
                    return decode(sysop.imm.exactfpimm, AArch64Exactfpimm.self, Value.exactFloatingPointImmediate)

                case .svcr: return decode(sysop.alias.svcr, AArch64Svcr.self, Value.svcr)
                case .at: return decode(sysop.alias.at, AArch64At.self, Value.at)
                case .db: return decode(sysop.alias.db, AArch64Db.self, Value.dataBarrier)
                case .dc: return decode(sysop.alias.dc, AArch64Dc.self, Value.dc)
                case .isb: return decode(sysop.alias.isb, AArch64Isb.self, Value.isb)
                case .tsb: return decode(sysop.alias.tsb, AArch64Tsb.self, Value.tsb)
                case .prfm: return decode(sysop.alias.prfm, AArch64Prfm.self, Value.prefetch)
                case .sveprfm: return decode(sysop.alias.sveprfm, AArch64Sveprfm.self, Value.svePrefetch)
                case .rprfm: return decode(sysop.alias.rprfm, AArch64Rprfm.self, Value.rangePrefetch)
                case .pstateimm015:
                    return decode(sysop.alias.pstateimm0_15, AArch64Pstateimm015.self, Value.processorState15)
                case .pstateimm01:
                    return decode(sysop.alias.pstateimm0_1, AArch64Pstateimm01.self, Value.processorState1)
                case .psb: return decode(sysop.alias.psb, AArch64Psb.self, Value.psb)
                case .bti: return decode(sysop.alias.bti, AArch64Bti.self, Value.branchTargetIdentification)
                case .svepredpat:
                    return decode(sysop.alias.svepredpat, AArch64Svepredpat.self, Value.svePredicatePattern)
                case .sveveclenspecifier:
                    return decode(sysop.alias.sveveclenspecifier, AArch64Sveveclenspecifier.self, Value.sveVectorLengthSpecifier)

                // SYSREG/SYSIMM/SYSALIAS say "a system operand the engine did not
                // resolve further"; the encoding is in the matching raw_val.
                case .sysimm: return .raw(sysop.imm.raw_val)
                case .sysalias: return .raw(sysop.alias.raw_val)
                default: return .raw(sysop.reg.raw_val)
                }
            }

            internal let sysop: aarch64_sysop

            internal init(_ sysop: aarch64_sysop) {
                self.sysop = sysop
                subType = enumCast(sysop.sub_type)
            }

            /// Maps a raw union field onto a generated enum, falling back to `raw`
            /// when the value is outside it — which happens whenever capstone
            /// stored an unresolved encoding.
            private func decode<Raw: RawRepresentable, Decoded: RawRepresentable>(
                _ rawValue: Raw,
                _ decodedType: Decoded.Type,
                _ wrap: (Decoded) -> Value
            ) -> Value where Raw.RawValue: BinaryInteger, Decoded.RawValue: BinaryInteger {
                guard let decoded: Decoded = optionalEnumCast(rawValue.rawValue) else {
                    return .raw(numericCast(rawValue.rawValue))
                }
                return wrap(decoded)
            }
        }
    }
}

public extension AArch64Instruction.Operand {
    /// System register, for `mrs`/`msr` operands and plain system registers.
    ///
    /// A shorthand for the `systemRegister` case of `systemOperand`'s value. It is
    /// keyed on the system operand's `subType`, not on the operand type: capstone
    /// reports all three as an operand of type `sysreg`.
    var systemRegister: AArch64Sysreg? {
        guard let systemOperand, case .systemRegister(let register) = systemOperand.value else {
            return nil
        }
        return register
    }
}

/// Values an AArch64 operand can carry.
public protocol AArch64OperandValue {}

extension AArch64Reg: AArch64OperandValue {}
extension AArch64Sysreg: AArch64OperandValue {}
extension Int64: AArch64OperandValue {}
extension Double: AArch64OperandValue {}
extension AArch64Instruction.Operand.Memory: AArch64OperandValue {}
extension AArch64Instruction.Operand.ImmediateRange: AArch64OperandValue {}
extension AArch64Instruction.Operand.MatrixOperand: AArch64OperandValue {}
extension AArch64Instruction.Operand.Predicate: AArch64OperandValue {}
extension AArch64Instruction.Operand.SystemOperand: AArch64OperandValue {}

extension AArch64Ins: InstructionType {}

#endif
