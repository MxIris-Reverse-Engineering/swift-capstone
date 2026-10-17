/// Which operands an alias's details describe.
public enum DetailForm: Sendable {
    /// An alias reports its own operands: `mov x0, x1` has two. The default.
    case alias

    /// An alias reports the operands of the instruction it stands for: `mov x0, x1`
    /// gets the three of `orr x0, xzr, x1`. The printed text stays the alias's.
    case realInstruction
}

/// Decoding past bytes that are not instructions, such as data in a code section.
///
/// Without it, decoding stops at the first bytes that do not decode. With it, those
/// bytes become a data entry — `isData` is `true`, the mnemonic is `.byte`
/// unless `mnemonic` says otherwise, and there are no details — and decoding goes
/// on after them.
public struct SkipData {
    /// The mnemonic data entries are printed with; capstone's default is `.byte`.
    public var mnemonic: String?

    /// How many bytes to skip when the bytes at `offset` do not decode. `code` is
    /// the whole input and `offset` counts from its start. Returning 0, or more
    /// bytes than are left, stops decoding.
    ///
    /// Without it, capstone skips one instruction unit, four bytes on AArch64. In
    /// either case capstone stops instead when less than one unit is left.
    public var bytesToSkip: ((_ code: RawSpan, _ offset: Int) -> Int)?

    public init(mnemonic: String? = nil, bytesToSkip: ((_ code: RawSpan, _ offset: Int) -> Int)? = nil) {
        self.mnemonic = mnemonic
        self.bytesToSkip = bytesToSkip
    }
}
