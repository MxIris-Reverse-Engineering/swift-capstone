import Ccapstone

/// A capstone version, as capstone reports it: a major and a minor number.
public struct CapstoneVersion: Hashable, Comparable, Sendable, CustomStringConvertible {
    public let major: Int
    public let minor: Int

    public init(major: Int, minor: Int) {
        self.major = major
        self.minor = minor
    }

    /// The capstone this package was built with.
    public static var current: CapstoneVersion {
        var major: Int32 = 0
        var minor: Int32 = 0
        unsafe cs_version(&major, &minor)
        return CapstoneVersion(major: Int(major), minor: Int(minor))
    }

    public static func < (lhs: CapstoneVersion, rhs: CapstoneVersion) -> Bool {
        (lhs.major, lhs.minor) < (rhs.major, rhs.minor)
    }

    /// The version as capstone writes it, such as `6.0`.
    public var description: String {
        "\(major).\(minor)"
    }
}
