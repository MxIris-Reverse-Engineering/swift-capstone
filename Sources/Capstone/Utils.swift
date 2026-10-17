// Conversions between capstone's C values and the generated Swift types.

/// The generated enum case with `value` as its raw value. Traps when there is
/// none, which means the generated enums no longer match capstone's headers.
internal func enumCast<Source: BinaryInteger, Target: RawRepresentable>(_ value: Source) -> Target
    where Target.RawValue: BinaryInteger {
    optionalEnumCast(value)!
}

/// The generated enum case with `value` as its raw value, or `nil` when there is none.
internal func optionalEnumCast<Source: BinaryInteger, Target: RawRepresentable>(_ value: Source) -> Target?
    where Target.RawValue: BinaryInteger {
    Target(rawValue: numericCast(value))
}

/// Converts an imported C enum to the generated Swift enum with the same raw value.
internal func enumCast<Source: RawRepresentable, Target: RawRepresentable>(_ value: Source) -> Target
    where Source.RawValue: BinaryInteger, Target.RawValue: BinaryInteger {
    enumCast(value.rawValue)
}

/// The generated enum case for `value`, or `nil` when `value` is one of the values
/// capstone uses to mean "none", or has no case.
internal func optionalEnumCast<Source: BinaryInteger, Target: RawRepresentable>(
    _ value: Source?,
    ignoring absentValues: [Source] = []
) -> Target? where Target.RawValue: BinaryInteger {
    guard let value, !absentValues.contains(value) else {
        return nil
    }
    return Target(rawValue: numericCast(value))
}

internal func optionalEnumCast<Source: BinaryInteger, Target: RawRepresentable>(
    _ value: Source?,
    ignoring absentValues: Source...
) -> Target? where Target.RawValue: BinaryInteger {
    optionalEnumCast(value, ignoring: absentValues)
}

/// Converts an imported C enum to the generated Swift enum, treating the values
/// capstone uses to mean "none" as `nil`.
internal func optionalEnumCast<Source: RawRepresentable, Target: RawRepresentable>(
    _ value: Source?,
    ignoring absentValues: Source...
) -> Target? where Source.RawValue: BinaryInteger, Target.RawValue: BinaryInteger {
    optionalEnumCast(value?.rawValue, ignoring: absentValues.map(\.rawValue))
}

/// Reads a NUL-terminated string out of a fixed-size C character array, which Swift
/// imports as a tuple, never reading past the array's end.
internal func string<Characters>(fromCharacters characters: Characters) -> String {
    withUnsafeBytes(of: characters) { bytes in
        let length = bytes.firstIndex(of: 0) ?? bytes.count
        return String(decoding: bytes[..<length], as: UTF8.self)
    }
}

/// Reads the first `count` elements of a fixed-size C array, which Swift imports as
/// a tuple, never reading past the array's end.
internal func elements<Element, Elements>(of array: Elements, count: Int, as _: Element.Type) -> [Element] {
    withUnsafeBytes(of: array) { bytes in
        let capacity = bytes.count / MemoryLayout<Element>.stride
        return (0 ..< min(max(count, 0), capacity)).map { index in
            bytes.load(fromByteOffset: index * MemoryLayout<Element>.stride, as: Element.self)
        }
    }
}
