import Ccapstone

/// Architecture type
public enum Architecture: UInt32 {
    // this enum must match cs_arch
    /// ARM architecture (including Thumb, Thumb-2)
    case arm = 0
    /// ARM-64, also called AArch64
    case arm64 = 1
    /// Mips architecture
    case mips = 2
    /// X86 architecture (including x86 & x86-64)
    case x86 = 3
    /// PowerPC architecture
    case ppc = 4
    /// Sparc architecture
    case sparc = 5
    /// SystemZ architecture
    case sysz = 6
    /// XCore architecture
    case xcore = 7
    /// 68K architecture
    case m68k = 8
    /// TMS320C64x architecture
    case tms320c64x = 9
    /// 680X architecture
    case m680x = 10
    /// Ethereum architecture
    case evm = 11
    /// MOS65XX architecture (including MOS6502)
    case mos65xx = 12
    /// WebAssembly architecture
    case wasm = 13
    /// Berkeley Packet Filter architecture (including eBPF)
    case bpf = 14
    /// RISCV architecture
    case riscv = 15
}

#if CAPSTONE_HAS_ARM
/// ARM Instruction
public class ArmInstruction: PlatformInstruction<ArmIns, ArmGrp, ArmReg> {}
#endif

#if CAPSTONE_HAS_ARM64
/// ARM-64 Instruction
public class Arm64Instruction: PlatformInstruction<Arm64Ins, Arm64Grp, Arm64Reg> {}
#endif

#if CAPSTONE_HAS_MIPS
/// MIPS Instruction
public class MipsInstruction: PlatformInstruction<MipsIns, MipsGrp, MipsReg> {}
#endif

#if CAPSTONE_HAS_X86
/// X86 Instruction
public class X86Instruction: PlatformInstruction<X86Ins, X86Grp, X86Reg> {}
#endif

#if CAPSTONE_HAS_POWERPC
/// PowerPC Instruction
public class PowerPCInstruction: PlatformInstruction<PpcIns, PpcGrp, PpcReg> {}
#endif

#if CAPSTONE_HAS_SPARC
/// SPARC Instruction
public class SparcInstruction: PlatformInstruction<SparcIns, SparcGrp, SparcReg> {}
#endif

#if CAPSTONE_HAS_SYSZ
/// SystemZ Instruction
public class SystemZInstruction: PlatformInstruction<SyszIns, SyszGrp, SyszReg> {}
#endif

#if CAPSTONE_HAS_XCORE
/// XCore Instruction
public class XCoreInstruction: PlatformInstruction<XcoreIns, XcoreGrp, XcoreReg> {}
#endif

#if CAPSTONE_HAS_M68K
/// M68K Instruction
public class M68kInstruction: PlatformInstruction<M68kIns, M68kGrp, M68kReg> {}
#endif

#if CAPSTONE_HAS_TMS320C64X
/// TMS320C64x Instruction
public class TMS320C64xInstruction: PlatformInstruction<Tms320c64xIns, Tms320c64xGrp, Tms320c64xReg> {}
#endif

#if CAPSTONE_HAS_M680X
/// M680x Instruction
public class M680xInstruction: PlatformInstruction<M680xIns, M680xGrp, M680xReg> {}
#endif

#if CAPSTONE_HAS_EVM
/// Ethereum Instruction
public class EthereumInstruction: PlatformInstructionBase<EvmIns, EvmGrp> {}
#endif

#if CAPSTONE_HAS_MOS65XX
/// MOS65xx Instruction
public class Mos65xxInstruction: PlatformInstruction<Mos65xxIns, Mos65xxGrp, Mos65xxReg> {}
#endif

#if CAPSTONE_HAS_WASM
/// WebAssembly Instruction
public class WasmInstruction: PlatformInstructionBase<WasmIns, WasmGrp> {}
#endif

#if CAPSTONE_HAS_BPF
/// Berkeley Packet Filter Instruction
public class BpfInstruction: PlatformInstruction<BpfIns, BpfGrp, BpfReg> {}
#endif

#if CAPSTONE_HAS_RISCV
/// RISCV Instruction
public class RiscvInstruction: PlatformInstruction<RiscvIns, RiscvGrp, RiscvReg> {}
#endif

public extension Architecture {
    /// The class for disassembled instructions used for this architecture.
    ///
    /// This is a subclass of `Instruction`, with accessors for operands and architecture-specific properties.
    var instructionClass: Instruction.Type {
        switch self {
        #if CAPSTONE_HAS_ARM
        case .arm:
            return ArmInstruction.self
        #endif
        #if CAPSTONE_HAS_ARM64
        case .arm64:
            return Arm64Instruction.self
        #endif
        #if CAPSTONE_HAS_MIPS
        case .mips:
            return MipsInstruction.self
        #endif
        #if CAPSTONE_HAS_X86
        case .x86:
            return X86Instruction.self
        #endif
        #if CAPSTONE_HAS_POWERPC
        case .ppc:
            return PowerPCInstruction.self
        #endif
        #if CAPSTONE_HAS_SPARC
        case .sparc:
            return SparcInstruction.self
        #endif
        #if CAPSTONE_HAS_SYSZ
        case .sysz:
            return SystemZInstruction.self
        #endif
        #if CAPSTONE_HAS_XCORE
        case .xcore:
            return XCoreInstruction.self
        #endif
        #if CAPSTONE_HAS_M68K
        case .m68k:
            return M68kInstruction.self
        #endif
        #if CAPSTONE_HAS_TMS320C64X
        case .tms320c64x:
            return TMS320C64xInstruction.self
        #endif
        #if CAPSTONE_HAS_M680X
        case .m680x:
            return M680xInstruction.self
        #endif
        #if CAPSTONE_HAS_EVM
        case .evm:
            return EthereumInstruction.self
        #endif
        #if CAPSTONE_HAS_MOS65XX
        case .mos65xx:
            return Mos65xxInstruction.self
        #endif
        #if CAPSTONE_HAS_WASM
        case .wasm:
            return WasmInstruction.self
        #endif
        #if CAPSTONE_HAS_BPF
        case .bpf:
            return BpfInstruction.self
        #endif
        #if CAPSTONE_HAS_RISCV
        case .riscv:
            return RiscvInstruction.self
        #endif
        default:
            fatalError("Architecture \(self) is not compiled in. Enable the corresponding package trait.")
        }
    }

    /// The type for registers used in this architecture (if any).
    ///
    /// This is an enum with values corresponding to the registers.
    var registerType: Any.Type? {
        instructionClass.registerType
    }

    /// The type for instructions used in this architecture.
    ///
    /// This is an enum with values corresponding to instruction mnemonics.
    var instructionType: InstructionType.Type {
        instructionClass.instructionType
    }
}

/// Protocol conformed to by enumerations representing architecture-specific instructions.
public protocol InstructionType {
    var rawValue: UInt32 { get }
    init?(rawValue: UInt32)
}
