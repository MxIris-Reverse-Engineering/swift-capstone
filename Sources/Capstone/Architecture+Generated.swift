// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT.
// Regenerate with: swift package plugin generate-enums

/// Architecture type.
///
/// Mirrors `cs_arch`. A case here says capstone knows the architecture, not
/// that this build has it compiled in — see `isCompiledIn` — or that this
/// package wraps it: only the `DisassemblyArchitecture` types, such as
/// `AArch64`, can be decoded from Swift.
public enum Architecture: UInt32, Sendable {
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
