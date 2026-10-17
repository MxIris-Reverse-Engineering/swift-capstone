/// Whether an instruction reads an operand, writes it, or both. Mirrors
/// capstone's `cs_ac_type`, which every architecture shares.
public struct Access: OptionSet, CustomStringConvertible, Sendable {
    public var rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    /// Operand reads from memory or register.
    public static let read = Access(rawValue: 1)
    /// Operand writes to memory or register.
    public static let write = Access(rawValue: 2)

    public var description: String {
        var description = ""
        if self.contains(Access.read) {
            description += "r"
        }
        if self.contains(Access.write) {
            description += "w"
        }
        return description
    }
}
