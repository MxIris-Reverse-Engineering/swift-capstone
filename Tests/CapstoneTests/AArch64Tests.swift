#if CAPSTONE_HAS_AARCH64
import Testing
import Capstone

/// Expected values come from the AArch64 instruction encodings themselves, which
/// are fixed by the architecture — never from re-running the wrapper.
@Suite("AArch64")
struct AArch64Tests {
    @Test("register operands carry their register and access mode")
    func registerOperands() throws {
        // add x2, x3, x4
        let (mnemonic, operands) = try withFirstInstruction([0x62, 0x00, 0x04, 0x8B]) {
            ($0.mnemonic, $0.operands)
        }
        #expect(mnemonic == "add")

        try #require(operands.count == 3)
        #expect(operands[0].register == .x2)
        #expect(operands[0].access == .write)
        #expect(operands[1].register == .x3)
        #expect(operands[1].access == .read)
        #expect(operands[2].register == .x4)
    }

    @Test("operands can be read one at a time")
    func operandAtIndex() throws {
        // add x2, x3, x4
        let registers = try withFirstInstruction([0x62, 0x00, 0x04, 0x8B]) { instruction in
            (0 ..< instruction.operandCount).map { instruction.operand(at: $0).register }
        }
        #expect(registers == [.x2, .x3, .x4])
    }

    #if os(macOS) || os(Linux) || os(Windows)
    /// `operand(at:)` requires an index below `operandCount`.
    @Test("reading past the last operand traps")
    func operandIndexOutOfRangeTraps() async {
        await #expect(processExitsWith: .failure) {
            // add x2, x3, x4 has three operands.
            _ = try withFirstInstruction([0x62, 0x00, 0x04, 0x8B]) { $0.operand(at: 3) }
        }
    }
    #endif

    @Test("a memory operand reports base and displacement")
    func memoryOperand() throws {
        // ldr x0, [x1, #8]
        let memory = try #require(try withFirstInstruction([0x20, 0x04, 0x40, 0xF9]) { $0.operands.last?.memory })

        #expect(memory.base == .x1)
        #expect(memory.index == nil)
        // Widened to 64 bits in v6; the value is the encoded offset, not a scaled index.
        #expect(memory.displacement == 8)
    }

    @Test("an immediate operand reports its value")
    func immediateOperand() throws {
        // cmp x5, #1
        let immediate = try withFirstInstruction([0xBF, 0x04, 0x00, 0xF1]) { $0.operands.last?.immediateValue }
        #expect(immediate == 1)
    }

    /// v6 replaced v5's four separate system-operand fields with one `sysop`
    /// discriminated by its own `sub_type`, and the operand's own `type` says only
    /// which union holds the value. Getting that wrong yields accessors that are
    /// nil for every instruction, which is indistinguishable from "no such value" —
    /// so each kind is pinned to a named value here.
    @Test("system operands decode to a named value", arguments: [
        // mrs x0, nzcv
        ([0x00, 0x42, 0x3B, 0xD5] as [UInt8], AArch64Op.sysreg, "systemRegister"),
        // prfm pldl1keep, [x0]
        ([0x00, 0x00, 0x80, 0xF9], .sysalias, "prefetch"),
        // dmb ish
        ([0xBF, 0x3B, 0x03, 0xD5], .sysalias, "dataBarrier"),
        // at s1e2r, x0
        ([0x00, 0x78, 0x0C, 0xD5], .sysalias, "at"),
    ])
    func systemOperands(bytes: [UInt8], operandType: AArch64Op, expectedCase: String) throws {
        let operands = try withFirstInstruction(bytes) { $0.operands }
        let operand = try #require(operands.first { $0.type == operandType })
        let systemOperand = try #require(operand.systemOperand)

        let described = String(describing: systemOperand.value)
        #expect(
            described.hasPrefix(expectedCase),
            "expected a \(expectedCase) value, got \(described)"
        )
    }

    @Test("mrs exposes its system register through the convenience accessor")
    func systemRegisterAccessor() throws {
        // mrs x0, nzcv
        let operands = try withFirstInstruction([0x00, 0x42, 0x3B, 0xD5]) { $0.operands }
        let operand = try #require(operands.first { $0.type == .sysreg })
        // The kind lives in sysop.sub_type, not in the operand type.
        #expect(operand.systemOperand?.subType == .regMrs)
        #expect(operand.systemRegister == .nzcv)
    }

    @Test("every operand of a decoded instruction produces a value")
    func operandsAlwaysProduceValues() throws {
        let disassembler = try Disassembler<AArch64>()
        var decoded: [(mnemonic: String, operands: [AArch64.Operand])] = []
        disassembler.forEachInstruction(in: [
            0x20, 0x04, 0x40, 0xF9, // ldr x0, [x1, #8]
            0x62, 0x00, 0x04, 0x8B, // add x2, x3, x4
            0xBF, 0x04, 0x00, 0xF1, // cmp x5, #1
            0x00, 0x42, 0x3B, 0xD5, // mrs x0, nzcv
            0x00, 0x00, 0x80, 0xF9, // prfm pldl1keep, [x0]
        ] as [UInt8], address: 0x1000) { instruction in
            decoded.append((instruction.mnemonic, instruction.operands))
        }
        try #require(decoded.count == 5)

        for instruction in decoded {
            for operand in instruction.operands where operand.type != .invalid {
                #expect(
                    operand.value != nil,
                    "\(instruction.mnemonic): operand of type \(operand.type) produced no value"
                )
            }
        }
    }

    @Test("cmp reads both operands rather than writing the first")
    func comparisonOperandsAreReads() throws {
        // cmp is an alias of subs with xzr as destination. v5 leaked the underlying
        // subs write onto the first visible operand; v6 looks this up per operand.
        let (mnemonic, accesses) = try withFirstInstruction([0xBF, 0x04, 0x00, 0xF1]) {
            ($0.mnemonic, $0.operands.map(\.access))
        }
        #expect(mnemonic == "cmp")
        #expect(accesses == [.read, .read])
    }

    @Test("a conditional branch reports its condition and an unconditional one none")
    func conditionCode() throws {
        // b.eq 0x1000: the condition field, bits 3:0, is 0b0000, EQ.
        #expect(try withFirstInstruction([0x00, 0x00, 0x00, 0x54]) { $0.conditionCode } == .eq)
        // b 0x1010
        #expect(try withFirstInstruction([0x04, 0x00, 0x00, 0x14]) { $0.conditionCode } == nil)
    }

    /// aarch64.h names the SVE conditions as aliases of the base ones:
    /// `AArch64CC_NONE_ACTIVE = AArch64CC_EQ`, `ANY_ACTIVE = NE`, `LAST_ACTIVE = LO`
    /// and `FIRST_ACTIVE = MI`.
    @Test("SVE condition names are the conditions aarch64.h equates them with", arguments: [
        (AArch64CondCode.noneActive, AArch64CondCode.eq),
        (.anyActive, .ne),
        (.lastActive, .lo),
        (.firstActive, .mi),
    ])
    func conditionCodeAliases(alias: AArch64CondCode, condition: AArch64CondCode) {
        #expect(alias == condition)
    }

    @Test("comparisons set the flags and plain arithmetic does not")
    func flagUpdates() throws {
        // cmp x5, #1 is subs xzr, x5, #1
        #expect(try withFirstInstruction([0xBF, 0x04, 0x00, 0xF1]) { $0.updatesFlags })
        // add x2, x3, x4
        #expect(try !withFirstInstruction([0x62, 0x00, 0x04, 0x8B]) { $0.updatesFlags })
    }

    @Test("branches and returns are in their groups")
    func groups() throws {
        // b 0x1010
        let branchGroups = try withFirstInstruction([0x04, 0x00, 0x00, 0x14]) { $0.groups }
        #expect(branchGroups.contains(.jump))
        #expect(branchGroups.contains(.branchRelative))
        // ret
        #expect(try withFirstInstruction([0xC0, 0x03, 0x5F, 0xD6]) { $0.groups }.contains(.ret))
    }

    /// Implicit registers come from capstone's mapping table,
    /// arch/AArch64/AArch64GenCSMappingInsn.inc: `bl` writes the link register,
    /// `b.cond` reads the flags, and neither names them among its operands.
    @Test("instructions report the registers they use without naming them")
    func implicitRegisters() throws {
        // bl 0x1000
        let call = try withFirstInstruction([0x00, 0x00, 0x00, 0x94]) {
            ($0.implicitRegistersRead, $0.implicitRegistersWritten)
        }
        #expect(call.0 == [])
        #expect(call.1 == [.lr])

        // b.eq 0x1000
        let conditionalBranch = try withFirstInstruction([0x00, 0x00, 0x00, 0x54]) {
            ($0.implicitRegistersRead, $0.implicitRegistersWritten)
        }
        #expect(conditionalBranch.0 == [.nzcv])
        #expect(conditionalBranch.1 == [])
    }

    @Test("registers accessed combine operands and implicit registers")
    func registersAccessed() throws {
        // add x2, x3, x4
        let addition = try withFirstInstruction([0x62, 0x00, 0x04, 0x8B]) { $0.registersAccessed() }
        #expect(addition.read == [.x3, .x4])
        #expect(addition.written == [.x2])

        // cmp x5, #1 writes only the flags.
        let comparison = try withFirstInstruction([0xBF, 0x04, 0x00, 0xF1]) { $0.registersAccessed() }
        #expect(comparison.read == [.x5])
        #expect(comparison.written == [.nzcv])
    }
}
#endif
