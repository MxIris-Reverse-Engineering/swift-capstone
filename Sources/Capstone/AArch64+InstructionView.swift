#if CAPSTONE_HAS_AARCH64
import Ccapstone

extension InstructionView where Architecture == AArch64 {
    /// The number of operands; 0 for data entries.
    public var operandCount: Int {
        guard let aarch64 = unsafe details?.pointee.aarch64 else {
            return 0
        }
        let capacity = MemoryLayout.size(ofValue: aarch64.operands) / MemoryLayout<cs_aarch64_op>.stride
        return min(Int(aarch64.op_count), capacity)
    }

    /// The operand at `index`, counted in printed order. `index` must be less than
    /// `operandCount`.
    public func operand(at index: Int) -> AArch64.Operand {
        let operandCount = operandCount
        precondition(index >= 0 && index < operandCount, "operand index \(index) is outside 0 ..< \(operandCount)")
        let operands = unsafe details!.pointee.aarch64.operands
        return withUnsafeBytes(of: operands) { bytes in
            AArch64.Operand(capstoneOperand: unsafe bytes.load(
                fromByteOffset: index * MemoryLayout<cs_aarch64_op>.stride,
                as: cs_aarch64_op.self
            ))
        }
    }

    /// The operands, in printed order; empty for data entries.
    ///
    /// An alias has its own operands, `mov x0, x1` two of them, unless the engine
    /// was created with `details: .realInstruction`.
    public var operands: [AArch64.Operand] {
        guard let aarch64 = unsafe details?.pointee.aarch64 else {
            return []
        }
        return elements(of: aarch64.operands, count: Int(aarch64.op_count), as: cs_aarch64_op.self)
            .map(AArch64.Operand.init(capstoneOperand:))
    }

    /// The groups the instruction belongs to, such as `.jump` for branches.
    public var groups: [AArch64Grp] {
        guard let details = unsafe details else {
            return []
        }
        return unsafe elements(of: details.pointee.groups, count: Int(details.pointee.groups_count), as: UInt8.self)
            .compactMap(AArch64Grp.init(rawValue:))
    }

    /// The condition the instruction executes under, such as `.eq` for `b.eq`, or
    /// `nil` when it is unconditional.
    public var conditionCode: AArch64CondCode? {
        guard let details = unsafe details else {
            return nil
        }
        return unsafe optionalEnumCast(details.pointee.aarch64.cc, ignoring: AArch64CC_Invalid)
    }

    /// Whether the instruction sets the condition flags, as `cmp` and `adds` do.
    public var updatesFlags: Bool {
        unsafe details?.pointee.aarch64.update_flags ?? false
    }

    /// For an instruction that writes back its base register, whether it does so
    /// after the access (`[x1], #8`) rather than before it (`[x1, #8]!`).
    ///
    /// Only meaningful when `writesBackBaseRegister` is `true`.
    public var isPostIndex: Bool {
        unsafe details?.pointee.aarch64.post_index ?? false
    }

    /// Whether the instruction writes the updated address back into the base
    /// register of its memory operand, pre-indexed as in `[x1, #8]!` or post-indexed
    /// as in `[x1], #8`.
    ///
    /// capstone's own `writeback` flag is not this: it is set whenever an operand is
    /// tied to another, which `movk`, `bfi` and `cas` also have. Post-indexing comes
    /// from capstone's details; pre-indexing has no field of its own and is read off
    /// the printed operands, where `]!` marks it and nothing else.
    public var writesBackBaseRegister: Bool {
        guard let details = unsafe details, unsafe details.pointee.writeback else {
            return false
        }
        return unsafe details.pointee.aarch64.post_index || operandsText.contains("]!")
    }

    /// Registers the instruction reads without naming them as operands, such as
    /// `nzcv` for `b.eq`.
    public var implicitRegistersRead: [AArch64Reg] {
        guard let details = unsafe details else {
            return []
        }
        return unsafe elements(of: details.pointee.regs_read, count: Int(details.pointee.regs_read_count), as: UInt16.self)
            .compactMap(AArch64Reg.init(rawValue:))
    }

    /// Registers the instruction writes without naming them as operands, such as
    /// `lr` for `bl` and `nzcv` for `cmp`.
    public var implicitRegistersWritten: [AArch64Reg] {
        guard let details = unsafe details else {
            return []
        }
        return unsafe elements(of: details.pointee.regs_write, count: Int(details.pointee.regs_write_count), as: UInt16.self)
            .compactMap(AArch64Reg.init(rawValue:))
    }

    /// Every register the instruction reads and writes, operands and implicit ones
    /// alike, as capstone's `cs_regs_access` works them out.
    ///
    /// A method rather than a property because capstone computes the lists on each
    /// call, through the engine.
    public func registersAccessed() -> (read: [AArch64Reg], written: [AArch64Reg]) {
        guard unsafe details != nil else {
            return ([], [])
        }
        let capacity = MemoryLayout<cs_regs>.size / MemoryLayout<UInt16>.stride
        var read = [UInt16](repeating: 0, count: capacity)
        var written = [UInt16](repeating: 0, count: capacity)
        var readCount: UInt8 = 0
        var writtenCount: UInt8 = 0
        let error = unsafe cs_regs_access(handle, instruction, &read, &readCount, &written, &writtenCount)
        guard error == CS_ERR_OK else {
            return ([], [])
        }
        return (
            read.prefix(Int(readCount)).compactMap(AArch64Reg.init(rawValue:)),
            written.prefix(Int(writtenCount)).compactMap(AArch64Reg.init(rawValue:))
        )
    }
}
#endif
