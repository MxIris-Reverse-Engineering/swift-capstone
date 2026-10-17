import Testing
import Capstone

/// Checked by the compiler rather than at run time: each `requireSendable` call
/// stops the test target from building if its type is not `Sendable`. Values that
/// hold no engine handle can cross concurrency domains; `Disassembler` and
/// `InstructionView` stay out, since they read the engine's buffer.
@Suite("Sendable")
struct SendableTests {
    private func requireSendable<Value: Sendable>(_: Value.Type) {}

    @Test("value types can cross concurrency domains")
    func valueTypesAreSendable() {
        requireSendable(Architecture.self)
        requireSendable(Access.self)
        requireSendable(DetailForm.self)
        requireSendable(CapstoneError.self)
        requireSendable(CapstoneVersion.self)
    }

    #if CAPSTONE_HAS_AARCH64
    @Test("AArch64 values can cross concurrency domains")
    func aarch64ValuesAreSendable() {
        requireSendable(AArch64Ins.self)
        requireSendable(AArch64Reg.self)
        requireSendable(AArch64Grp.self)
        requireSendable(AArch64Op.self)
        requireSendable(AArch64CondCode.self)
        requireSendable(AArch64Sysreg.self)
        requireSendable(AArch64.Mode.self)
        requireSendable(AArch64.Syntax.self)
        requireSendable(AArch64.Instruction.self)
        requireSendable(AArch64.Operand.self)
        requireSendable(AArch64.Operand.Memory.self)
        requireSendable(AArch64.Operand.ImmediateRange.self)
        requireSendable(AArch64.Operand.MatrixOperand.self)
        requireSendable(AArch64.Operand.MatrixOperand.SliceOffset.self)
        requireSendable(AArch64.Operand.Predicate.self)
        requireSendable(AArch64.Operand.SystemOperand.self)
        requireSendable(AArch64.Operand.SystemOperand.Value.self)
        requireSendable((any AArch64OperandValue).self)
    }
    #endif
}
