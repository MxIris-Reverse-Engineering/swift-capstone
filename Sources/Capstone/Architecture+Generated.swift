// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT.
// Regenerate with: swift package plugin generate-enums

import Ccapstone

/// Architecture type.
///
/// Mirrors `cs_arch`. A case here says the engine knows the architecture, not
/// that this package wraps it — see `instructionClass`.
public enum Architecture: UInt32 {
    /// ARM architecture (including Thumb, Thumb-2)
    case arm = 0
    /// AArch64
    case aarch64 = 1
    /// SystemZ architecture
    case systemz = 2
    /// Mips architecture
    case mips = 3
    /// X86 architecture (including x86 & x86-64)
    case x86 = 4
    /// PowerPC architecture
    case ppc = 5
    /// Sparc architecture
    case sparc = 6
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
    /// SH architecture
    case sh = 16
    /// TriCore architecture
    case tricore = 17
    /// Alpha architecture
    case alpha = 18
    /// HPPA architecture
    case hppa = 19
    /// LoongArch architecture
    case loongarch = 20
    /// Xtensa architecture
    case xtensa = 21
    /// ARC architecture
    case arc = 22
}

#if CAPSTONE_HAS_ARM
/// ARM Instruction
public class ArmInstruction: PlatformInstruction<ArmIns, ArmGrp, ArmReg> {}
#endif

#if CAPSTONE_HAS_AARCH64
/// AArch64 Instruction, also known as ARM64
public class AArch64Instruction: PlatformInstruction<AArch64Ins, AArch64Grp, AArch64Reg> {}
#endif

#if CAPSTONE_HAS_SYSTEMZ
/// SystemZ Instruction
public class SystemZInstruction: PlatformInstruction<SystemZIns, SystemZGrp, SystemZReg> {}
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
    /// This is a subclass of `Instruction`, with accessors for operands and
    /// architecture-specific properties.
    var instructionClass: Instruction.Type {
        switch self {
        #if CAPSTONE_HAS_ARM
        case .arm:
            return ArmInstruction.self
        #endif
        #if CAPSTONE_HAS_AARCH64
        case .aarch64:
            return AArch64Instruction.self
        #endif
        #if CAPSTONE_HAS_SYSTEMZ
        case .systemz:
            return SystemZInstruction.self
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
            if Architecture.wrapped.contains(self) {
                fatalError("Architecture \(self) is not compiled in. Enable the corresponding package trait.")
            } else {
                fatalError("Architecture \(self) is not wrapped by swift-capstone yet.")
            }
        }
    }

    /// Architectures this package provides a wrapper for, whether or not the
    /// corresponding trait is enabled in this build.
    static var wrapped: Set<Architecture> {
        [.arm, .aarch64, .systemz, .mips, .x86, .ppc, .sparc, .xcore, .m68k, .tms320c64x, .m680x, .evm, .mos65xx, .wasm, .bpf, .riscv]
    }
}
