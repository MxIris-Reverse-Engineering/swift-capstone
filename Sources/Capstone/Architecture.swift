internal import Ccapstone

// The `Architecture` enum itself is generated into Architecture+Generated.swift from
// `cs_arch`. Generating it rather than hand-maintaining it is not cosmetic: capstone
// v6 reordered `cs_arch`, moving SystemZ from 6 to 2 and shifting Mips, X86, PowerPC
// and Sparc up by one. A hand-edited rename would have kept the v5 raw values and
// passed the wrong architecture to `cs_open` — producing wrong disassembly rather
// than an error.

public extension Architecture {
    /// Whether the capstone engine in this build has the architecture compiled in.
    ///
    /// Each architecture's package trait decides that, and another package in the
    /// build can enable traits too. Being compiled in is not the same as being
    /// wrapped: only architectures with a `DisassemblyArchitecture` type, such as
    /// `AArch64`, can be decoded from Swift.
    var isCompiledIn: Bool {
        cs_support(Int32(rawValue))
    }
}
