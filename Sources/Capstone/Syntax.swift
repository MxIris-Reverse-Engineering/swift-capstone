import Ccapstone

/// Syntax options
///
/// Raw values are capstone v6's `CS_OPT_SYNTAX_*` flags; `set(option:)` hands them to
/// `cs_option` unchanged. v6 made these bit flags, so the consecutive numbering v5
/// used would select a different syntax rather than fail.
public enum Syntax: Int, Sendable {
    /// Default asm syntax
    case `default` = 2 // CS_OPT_SYNTAX_DEFAULT
    /// X86 Intel asm syntax - default on X86
    case intel = 4 // CS_OPT_SYNTAX_INTEL
    /// X86 ATT asm syntax
    case att = 8 // CS_OPT_SYNTAX_ATT
    /// Prints register name with only number
    case noRegName = 16 // CS_OPT_SYNTAX_NOREGNAME
    /// X86 Intel Masm syntax
    case masm = 32 // CS_OPT_SYNTAX_MASM
    /// MOS65XX use $ as hex prefix
    case motorola = 64 // CS_OPT_SYNTAX_MOTOROLA
}
