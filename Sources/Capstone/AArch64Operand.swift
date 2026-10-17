#if CAPSTONE_HAS_AARCH64
import Ccapstone

// The type-safe operand accessors live in AArch64+Operands.swift, generated from
// the operand configuration in CapstoneEnumsGenerator. What is here is what the
// generator cannot derive: the operand's own shape, the Swift values wrapping
// capstone's operand structs, and the system-operand dispatch.

extension AArch64 {
    /// One operand of an AArch64 instruction, copied out of capstone.
    ///
    /// Read the value through the property matching the operand's `type` — see
    /// AArch64+Operands.swift for the full set. `value` returns whichever of them
    /// applies, type-erased.
    public struct Operand: Sendable {
        internal let capstoneOperand: cs_aarch64_op

        internal init(capstoneOperand: cs_aarch64_op) {
            self.capstoneOperand = capstoneOperand
        }

        /// Operand type.
        public var type: AArch64Op { enumCast(capstoneOperand.type) }

        /// Whether the instruction reads the operand, writes it, or both.
        public var access: Access { enumCast(capstoneOperand.access) }

        /// Vector index for some vector operands.
        ///
        /// `nil` if not applicable.
        public var vectorIndex: Int? {
            guard capstoneOperand.vector_index != -1 else { return nil }
            return numericCast(capstoneOperand.vector_index)
        }

        /// Vector arrangement specifier.
        ///
        /// `nil` if not applicable.
        public var vectorArrangementSpecifier: AArch64Layout? {
            optionalEnumCast(capstoneOperand.vas, ignoring: AARCH64LAYOUT_INVALID)
        }

        /// Shift applied to this operand.
        ///
        /// `nil` if not applicable. When `type` indicates a register shift, `value`
        /// is an `AArch64Reg` raw value rather than a shift amount — capstone
        /// documents this on the field and does not model it as a separate case.
        public var shift: (type: AArch64Sft, value: UInt)? {
            guard capstoneOperand.shift.type != AARCH64_SFT_INVALID else { return nil }
            return (type: enumCast(capstoneOperand.shift.type), value: numericCast(capstoneOperand.shift.value))
        }

        /// Extender applied to this operand.
        ///
        /// `nil` if not applicable.
        public var extender: AArch64Ext? {
            optionalEnumCast(capstoneOperand.ext, ignoring: AARCH64_EXT_INVALID)
        }

        /// Q and V registers share identifiers because they are the same registers.
        /// When this is set, `register` is to be read as a V-register.
        public var isVectorRegister: Bool { capstoneOperand.is_vreg }

        /// Is this operand part of a register or vector list?
        public var isListMember: Bool { capstoneOperand.is_list_member }

        /// Operand value, whichever of the typed accessors applies.
        public var value: (any AArch64OperandValue)? {
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
        public struct Memory: Sendable {
            /// Base register.
            public let base: AArch64Reg
            /// Index register, if any.
            public let index: AArch64Reg?
            /// Displacement. Widened from 32 to 64 bits in capstone v6.
            public let displacement: Int64

            internal init(_ memory: aarch64_op_mem) {
                base = enumCast(memory.base)
                index = optionalEnumCast(memory.index, ignoring: AARCH64_REG_INVALID)
                displacement = memory.disp
            }
        }

        /// An inclusive range of immediates, as used by SVE index operands.
        public struct ImmediateRange: Sendable {
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
        public struct MatrixOperand: Sendable {
            public let type: AArch64SmeOp
            /// Matrix tile register.
            public let tile: AArch64Reg
            /// Slice index register.
            public let sliceRegister: AArch64Reg
            /// Slice index offset — a single immediate, or a range.
            public let sliceOffset: SliceOffset
            /// Is the slice vertical rather than horizontal?
            public let isVertical: Bool

            public enum SliceOffset: Sendable {
                case immediate(UInt16)
                case range(first: UInt8, offset: UInt8)
                /// capstone marks an absent offset with a sentinel rather than a flag.
                case none
            }

            internal init(_ matrix: aarch64_op_sme) {
                type = enumCast(matrix.type)
                tile = enumCast(matrix.tile)
                sliceRegister = enumCast(matrix.slice_reg)
                isVertical = matrix.is_vertical
                if matrix.has_range_offset {
                    let range = matrix.slice_offset.imm_range
                    sliceOffset = range.first == AARCH64_SLICE_IMM_RANGE_INVALID
                        ? .none
                        : .range(first: range.first, offset: range.offset)
                } else {
                    let immediate = matrix.slice_offset.imm
                    sliceOffset = immediate == AARCH64_SLICE_IMM_INVALID
                        ? .none
                        : .immediate(immediate)
                }
            }
        }

        /// Predicate register operand.
        public struct Predicate: Sendable {
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
        public struct SystemOperand: Sendable {
            /// Which kind of system operand this is.
            public let subType: AArch64Op

            public enum Value: Sendable {
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
                    return decode(systemOperand.reg.sysreg, AArch64Sysreg.self, Value.systemRegister)
                case .tlbi: return decode(systemOperand.reg.tlbi, AArch64Tlbi.self, Value.tlbi)
                case .ic: return decode(systemOperand.reg.ic, AArch64Ic.self, Value.ic)

                case .dbnxs: return decode(systemOperand.imm.dbnxs, AArch64Dbnxs.self, Value.dbnxs)
                case .exactfpimm:
                    return decode(systemOperand.imm.exactfpimm, AArch64Exactfpimm.self, Value.exactFloatingPointImmediate)

                case .svcr: return decode(systemOperand.alias.svcr, AArch64Svcr.self, Value.svcr)
                case .at: return decode(systemOperand.alias.at, AArch64At.self, Value.at)
                case .db: return decode(systemOperand.alias.db, AArch64Db.self, Value.dataBarrier)
                case .dc: return decode(systemOperand.alias.dc, AArch64Dc.self, Value.dc)
                case .isb: return decode(systemOperand.alias.isb, AArch64Isb.self, Value.isb)
                case .tsb: return decode(systemOperand.alias.tsb, AArch64Tsb.self, Value.tsb)
                case .prfm: return decode(systemOperand.alias.prfm, AArch64Prfm.self, Value.prefetch)
                case .sveprfm: return decode(systemOperand.alias.sveprfm, AArch64Sveprfm.self, Value.svePrefetch)
                case .rprfm: return decode(systemOperand.alias.rprfm, AArch64Rprfm.self, Value.rangePrefetch)
                case .pstateimm015:
                    return decode(systemOperand.alias.pstateimm0_15, AArch64Pstateimm015.self, Value.processorState15)
                case .pstateimm01:
                    return decode(systemOperand.alias.pstateimm0_1, AArch64Pstateimm01.self, Value.processorState1)
                case .psb: return decode(systemOperand.alias.psb, AArch64Psb.self, Value.psb)
                case .bti: return decode(systemOperand.alias.bti, AArch64Bti.self, Value.branchTargetIdentification)
                case .svepredpat:
                    return decode(systemOperand.alias.svepredpat, AArch64Svepredpat.self, Value.svePredicatePattern)
                case .sveveclenspecifier:
                    return decode(systemOperand.alias.sveveclenspecifier, AArch64Sveveclenspecifier.self, Value.sveVectorLengthSpecifier)

                // SYSREG/SYSIMM/SYSALIAS say "a system operand the engine did not
                // resolve further"; the encoding is in the matching raw_val.
                case .sysimm: return .raw(systemOperand.imm.raw_val)
                case .sysalias: return .raw(systemOperand.alias.raw_val)
                default: return .raw(systemOperand.reg.raw_val)
                }
            }

            internal let systemOperand: aarch64_sysop

            internal init(_ systemOperand: aarch64_sysop) {
                self.systemOperand = systemOperand
                subType = enumCast(systemOperand.sub_type)
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

public extension AArch64.Operand {
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
public protocol AArch64OperandValue: Sendable {}

extension AArch64Reg: AArch64OperandValue {}
extension AArch64Sysreg: AArch64OperandValue {}
extension Int64: AArch64OperandValue {}
extension Double: AArch64OperandValue {}
extension AArch64.Operand.Memory: AArch64OperandValue {}
extension AArch64.Operand.ImmediateRange: AArch64OperandValue {}
extension AArch64.Operand.MatrixOperand: AArch64OperandValue {}
extension AArch64.Operand.Predicate: AArch64OperandValue {}
extension AArch64.Operand.SystemOperand: AArch64OperandValue {}
#endif
