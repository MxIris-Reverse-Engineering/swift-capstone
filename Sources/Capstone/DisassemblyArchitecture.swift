/// An architecture this package wraps, used as the type parameter of `Disassembler`.
///
/// Conforming types are namespaces and are never instantiated. Only architectures
/// this package has adapted conform, so an engine for one it has not adapted cannot
/// be written down, let alone fail at run time.
public protocol DisassemblyArchitecture {
    /// Modes capstone accepts for this architecture, such as endianness.
    associatedtype Mode: OptionSet, Sendable where Mode.RawValue == UInt32

    /// Printing options capstone's module for this architecture reads.
    associatedtype Syntax: OptionSet, Sendable where Syntax.RawValue == UInt32

    /// The generated instruction identifiers, aliases included.
    associatedtype InstructionIdentifier: RawRepresentable, Hashable, Sendable
        where InstructionIdentifier.RawValue == UInt32

    /// A self-contained copy of one decoded instruction, what `Disassembler.decode`
    /// returns.
    associatedtype Instruction: Sendable

    /// The `cs_arch` member capstone knows this architecture by.
    static var architecture: Architecture { get }

    /// Copies what the view exposes into a value that no longer needs the engine.
    static func snapshot(of instruction: borrowing InstructionView<Self>) -> Instruction
}
