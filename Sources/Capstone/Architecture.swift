import Ccapstone

// The `Architecture` enum itself, the `Instruction` subclass per architecture and
// the architecture-to-class dispatch are generated into Architecture+Generated.swift
// from `cs_arch` and the generator's architecture configuration. Only what cannot be
// derived from the headers lives here.
//
// Generating the enum rather than hand-maintaining it is not cosmetic: capstone v6
// reordered `cs_arch`, moving SystemZ from 6 to 2 and shifting Mips, X86, PowerPC and
// Sparc up by one. A hand-edited rename would have kept the v5 raw values and passed
// the wrong architecture to `cs_open` — producing wrong disassembly rather than an
// error.

public extension Architecture {
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
