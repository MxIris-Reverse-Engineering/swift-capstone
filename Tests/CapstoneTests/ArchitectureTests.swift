import Testing
import Capstone

@Suite("Architecture")
struct ArchitectureTests {
    /// Raw values are read off `cs_arch` in capstone v6's include/capstone/capstone.h,
    /// not computed from the enum, so this disagrees with the code when the code is
    /// wrong.
    ///
    /// Worth pinning because getting these wrong is silent: v6 moved SystemZ from 6
    /// to 2 and pushed Mips, X86, PowerPC and Sparc up by one, so a table still
    /// carrying v5's numbers hands `cs_open` a different architecture and returns
    /// plausible-looking wrong disassembly rather than an error.
    @Test("architecture raw values match capstone v6", arguments: [
        (Architecture.arm, UInt32(0)),
        (.aarch64, 1),
        (.systemz, 2),
        (.mips, 3),
        (.x86, 4),
        (.ppc, 5),
        (.sparc, 6),
        (.xcore, 7),
        (.m68k, 8),
        (.tms320c64x, 9),
        (.m680x, 10),
        (.evm, 11),
        (.mos65xx, 12),
        (.wasm, 13),
        (.bpf, 14),
        (.riscv, 15),
        (.sh, 16),
        (.tricore, 17),
        (.alpha, 18),
        (.hppa, 19),
        (.loongarch, 20),
        (.xtensa, 21),
        (.arc, 22),
    ])
    func rawValue(architecture: Architecture, expected: UInt32) {
        #expect(architecture.rawValue == expected)
    }

    /// `CS_API_MAJOR` and `CS_API_MINOR` in capstone.h.
    @Test("the version is the one capstone.h declares")
    func capstoneVersion() {
        #expect(EngineVersion.current == EngineVersion(major: 6, minor: 0))
        #expect(EngineVersion.current.description == "6.0")
        #expect(EngineVersion(major: 5, minor: 9) < EngineVersion(major: 6, minor: 0))
    }

    @Test("every architecture capstone v6 supports has a case")
    func coversEveryArchitecture() {
        let cases = (0 ... 22).compactMap { Architecture(rawValue: UInt32($0)) }
        #expect(cases.count == 23)
    }

    /// The default build compiles in only the adapted architectures; run
    /// `swift test --traits AARCH64,SH` for one compiled in without a wrapper.
    @Test("an architecture is compiled in exactly when its trait is enabled")
    func compiledInFollowsTraits() {
        #expect(Architecture.aarch64.isCompiledIn)
        #if CAPSTONE_HAS_SH
        #expect(Architecture.sh.isCompiledIn)
        #else
        #expect(!Architecture.sh.isCompiledIn)
        #endif
        #if !CAPSTONE_HAS_X86
        #expect(!Architecture.x86.isCompiledIn)
        #endif
    }
}
