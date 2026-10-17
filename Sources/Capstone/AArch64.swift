#if CAPSTONE_HAS_AARCH64
import Ccapstone

/// AArch64, also known as ARM64: the type parameter of `Disassembler<AArch64>` and
/// the namespace of everything specific to the architecture.
public enum AArch64: DisassemblyArchitecture {
    public typealias InstructionIdentifier = AArch64Ins

    public static var architecture: Architecture { .aarch64 }

    /// Modes capstone's AArch64 module accepts.
    public struct Mode: OptionSet, Sendable {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        /// Little-endian, the default. It is the empty set: capstone's
        /// `CS_MODE_LITTLE_ENDIAN` is 0.
        public static let littleEndian: Mode = []

        /// Big-endian.
        public static let bigEndian = Mode(rawValue: CS_MODE_BIG_ENDIAN.rawValue)

        /// Apple's proprietary instructions, such as AMX. Without it they do not
        /// decode, and disassembly stops at the first one.
        public static let appleProprietary = Mode(rawValue: CS_MODE_APPLE_PROPRIETARY.rawValue)
    }
}
#endif
