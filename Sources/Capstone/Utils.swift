// Various utility functions that didn't fit anywhere else

@inlinable internal func optionalNumericCast<T, U>(_ x: T?) -> U? where T: BinaryInteger, U: BinaryInteger {
    guard let x = x else {
        return nil
    }
    return numericCast(x)
}

@inlinable internal func enumCast<T, U: RawRepresentable>(_ x: T) -> U where T: BinaryInteger, U.RawValue: BinaryInteger {
    return optionalEnumCast(x)!
}

@inlinable internal func optionalEnumCast<T, U: RawRepresentable>(_ x: T) -> U? where T: BinaryInteger, U.RawValue: BinaryInteger {
    return U(rawValue: numericCast(x))
}

@inlinable internal func enumCast<T: RawRepresentable, U: RawRepresentable>(_ x: T) -> U where T.RawValue: BinaryInteger, U.RawValue: BinaryInteger {
    return enumCast(x.rawValue)
}

@inlinable internal func optionalEnumCast<T: BinaryInteger, U: RawRepresentable>(_ x: T?, ignoring invalidValues: [T] = []) -> U? where U.RawValue: BinaryInteger {
    guard let x = x, !invalidValues.contains(x) else {
        return nil
    }
    return U(rawValue: numericCast(x))
}

@inlinable internal func optionalEnumCast<T: BinaryInteger, U: RawRepresentable>(_ x: T?, ignoring invalidValues: T...) -> U? where U.RawValue: BinaryInteger {
    return optionalEnumCast(x, ignoring: invalidValues)
}

@inlinable internal func optionalEnumCast<T: RawRepresentable, U: RawRepresentable>(_ x: T?, ignoring invalidValues: T...) -> U? where T.RawValue: BinaryInteger, U.RawValue: BinaryInteger {
    return optionalEnumCast(x?.rawValue, ignoring: invalidValues.map({ $0.rawValue }))
}

@inlinable internal func nonZero<T: BinaryInteger>(_ x: T?) -> T? {
    guard let value = x, value != 0 else {
        return nil
    }
    return value
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
