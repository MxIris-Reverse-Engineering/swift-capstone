import Foundation
import Testing
@testable import Capstone

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

    @Test("every architecture capstone v6 supports has a case")
    func coversEveryArchitecture() {
        let cases = (0 ... 22).compactMap { Architecture(rawValue: UInt32($0)) }
        #expect(cases.count == 23)
    }

    @Test("an architecture without a wrapper is reported as unwrapped, not missing")
    func unwrappedArchitecturesAreKnown() {
        // These exist in cs_arch and so have a case, but no Instruction subclass yet.
        for architecture in [Architecture.alpha, .hppa, .loongarch, .xtensa, .arc, .sh, .tricore] {
            #expect(!Architecture.wrapped.contains(architecture))
        }
    }
}
