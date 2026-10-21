internal import Ccapstone

/// Errors creating a `Disassembler` can throw. Decoding itself never fails.
public enum CapstoneError: Error, Hashable {
    /// capstone ran out of memory.
    case outOfMemory
    /// capstone was built without the architecture; see `Architecture.isCompiledIn`.
    case unsupportedArchitecture
    /// capstone rejected the mode for the architecture.
    case invalidMode
    /// capstone rejected an option.
    case invalidOption
    /// Any other `cs_err`, by its raw value.
    case unknown(code: UInt32)
}

extension CapstoneError {
    init(_ error: cs_err) {
        switch error {
        case CS_ERR_MEM: self = .outOfMemory
        case CS_ERR_ARCH: self = .unsupportedArchitecture
        case CS_ERR_MODE: self = .invalidMode
        case CS_ERR_OPTION: self = .invalidOption
        default: self = .unknown(code: error.rawValue)
        }
    }
}
