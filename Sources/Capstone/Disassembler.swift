import Foundation
import Ccapstone

/// A capstone engine for one architecture, its options fixed when it is created.
///
/// ```swift
/// let disassembler = try Disassembler<AArch64>()
/// disassembler.forEachInstruction(in: machineCode, address: 0x1000) { instruction in
///     print(instruction.mnemonic, instruction.operandsText)
/// }
/// ```
///
/// The engine owns a capstone handle and one instruction buffer that every
/// instruction is decoded into, and releases both when it goes away. It cannot be
/// copied, and it is not `Sendable`: use it from one task at a time. To decode in
/// parallel, give each child task its own engine; AArch64 instructions are all four
/// bytes long, so code can be split at any four-byte boundary.
public struct Disassembler<Architecture: DisassemblyArchitecture>: ~Copyable {
    private let handle: csh
    /// The buffer capstone decodes into, reused for every instruction.
    private let sharedInstruction: UnsafeMutablePointer<cs_insn>
    private let state: DecodingState

    /// Creates an engine. Its options cannot change afterwards; create another
    /// engine for other options.
    ///
    /// - Parameters:
    ///   - mode: Modes for the architecture, such as `.bigEndian`.
    ///   - syntax: Printing options for the architecture.
    ///   - details: Whether an alias's details describe the alias or the real
    ///     instruction.
    ///   - unsignedImmediates: Print immediates as unsigned numbers, `#0xfff…f`
    ///     rather than `#-0x1`. Only the printed text changes, not the operands.
    ///   - skipData: Decode past bytes that are not instructions instead of
    ///     stopping at them.
    ///   - mnemonics: Mnemonics to print instead of capstone's, keyed by
    ///     instruction; capstone keeps at most 31 bytes of each. capstone replaces
    ///     as many leading characters of the printed mnemonic as the instruction's
    ///     name has, which also cuts into the instruction's aliases: with
    ///     `[.orr: "or"]`, `mov x0, x1`, an alias of `orr`, prints as `or x0, x1`.
    /// - Throws: `CapstoneError.unsupportedArchitecture` when capstone was built
    ///   without the architecture, `.invalidMode` when capstone rejects the mode,
    ///   `.invalidOption` when it rejects an option, and `.outOfMemory`.
    public init(
        mode: Architecture.Mode = [],
        syntax: Architecture.Syntax = [],
        details: DetailForm = .alias,
        unsignedImmediates: Bool = false,
        skipData: SkipData? = nil,
        mnemonics: [Architecture.InstructionIdentifier: String] = [:]
    ) throws {
        var handle: csh = 0
        let openError = cs_open(cs_arch(Architecture.architecture.rawValue), cs_mode(mode.rawValue), &handle)
        guard openError == CS_ERR_OK else {
            throw CapstoneError(openError)
        }
        let state = DecodingState(skipData: skipData)
        do {
            try Self.configure(
                handle,
                syntax: syntax,
                details: details,
                unsignedImmediates: unsignedImmediates,
                state: state,
                mnemonics: mnemonics
            )
            // Allocated after the options are set: cs_malloc gives the buffer room
            // for details only when they are on by then.
            self.sharedInstruction = try Self.allocateInstruction(handle: handle)
            self.handle = handle
            self.state = state
        } catch {
            cs_close(&handle)
            throw error
        }
    }

    deinit {
        cs_free(sharedInstruction, 1)
        var handle = handle
        cs_close(&handle)
    }

    /// Lends each decoded instruction to `body`, in order.
    ///
    /// Decoding stops at the end of `code`, at the first bytes that do not decode,
    /// or after `limit` instructions.
    ///
    /// The closure may decode again with this engine; the instruction it was lent
    /// stays intact.
    ///
    /// - Parameters:
    ///   - code: The machine code.
    ///   - address: The address of the first byte of `code`.
    ///   - limit: The most instructions to decode; `nil` for no limit.
    ///   - body: Called with each instruction. It cannot keep the instruction; see
    ///     `InstructionView`.
    /// - Returns: The number of bytes decoded, which is where decoding stopped.
    /// - Throws: Whatever `body` throws, which also stops decoding.
    @discardableResult
    public func forEachInstruction<Failure: Error>(
        in code: RawSpan,
        address: UInt64,
        limit: Int? = nil,
        _ body: (borrowing InstructionView<Architecture>) throws(Failure) -> Void
    ) throws(Failure) -> Int {
        if let limit {
            precondition(limit >= 0, "limit must not be negative")
        }
        // A pass started from inside the closure of another would overwrite the
        // instruction that closure was lent, so it decodes into a buffer of its own.
        let isNested = state.isDecoding
        let instruction = isNested ? Self.allocateNestedInstruction(handle: handle) : sharedInstruction
        state.isDecoding = true
        defer {
            if isNested {
                cs_free(instruction, 1)
            } else {
                state.isDecoding = false
            }
        }

        return try code.withUnsafeBytes { (buffer: UnsafeRawBufferPointer) throws(Failure) -> Int in
            guard let start = buffer.baseAddress, !buffer.isEmpty else {
                return 0
            }
            // The skipdata callback reports offsets into this pass's input; a nested
            // pass has its own and hands the outer one back when it ends.
            let outerInput = state.input
            state.input = buffer
            defer { state.input = outerInput }
            var position: UnsafePointer<UInt8>? = start.assumingMemoryBound(to: UInt8.self)
            var remaining = buffer.count
            var nextAddress = address
            var decodedCount = 0
            while limit.map({ decodedCount < $0 }) ?? true {
                let entryStart = position
                let remainingBefore = remaining
                // capstone sets these when an instruction has them and never clears
                // them, so in a reused buffer they would carry over from an earlier one.
                instruction.pointee.illegal = false
                instruction.pointee.is_alias = false
                instruction.pointee.alias_id = 0
                guard cs_disasm_iter(handle, &position, &remaining, &nextAddress, instruction) else {
                    break
                }
                decodedCount += 1
                let entryBytes = UnsafeRawBufferPointer(start: entryStart, count: remainingBefore - remaining)
                try body(InstructionView(instruction: instruction, handle: handle, entryBytes: entryBytes))
            }
            return buffer.count - remaining
        }
    }

    /// Lends each instruction decoded from `code` to `body`; see
    /// `forEachInstruction(in:address:limit:_:)` taking a `RawSpan`.
    @discardableResult
    public func forEachInstruction<Failure: Error>(
        in code: Data,
        address: UInt64,
        limit: Int? = nil,
        _ body: (borrowing InstructionView<Architecture>) throws(Failure) -> Void
    ) throws(Failure) -> Int {
        try forEachInstruction(in: code.bytes, address: address, limit: limit, body)
    }

    /// Lends each instruction decoded from `code` to `body`; see
    /// `forEachInstruction(in:address:limit:_:)` taking a `RawSpan`.
    @discardableResult
    public func forEachInstruction<Failure: Error>(
        in code: [UInt8],
        address: UInt64,
        limit: Int? = nil,
        _ body: (borrowing InstructionView<Architecture>) throws(Failure) -> Void
    ) throws(Failure) -> Int {
        // Array.span needs macOS 26; a slice's span is available everywhere.
        let slice = code[...]
        return try forEachInstruction(in: slice.span.bytes, address: address, limit: limit, body)
    }

    /// Decodes `code` into values that no longer need the engine.
    ///
    /// Decoding stops at the end of `code`, at the first bytes that do not decode,
    /// or after `limit` instructions. Each instruction is copied in full, its
    /// operands and registers included; to read only a field or two, or to stop
    /// partway, `forEachInstruction(in:address:limit:_:)` avoids the copies.
    ///
    /// - Parameters:
    ///   - code: The machine code.
    ///   - address: The address of the first byte of `code`.
    ///   - limit: The most instructions to decode; `nil` for no limit.
    public func decode(_ code: RawSpan, address: UInt64, limit: Int? = nil) -> [Architecture.Instruction] {
        var instructions: [Architecture.Instruction] = []
        forEachInstruction(in: code, address: address, limit: limit) { instruction in
            instructions.append(Architecture.snapshot(of: instruction))
        }
        return instructions
    }

    /// Decodes `code` into values that no longer need the engine; see
    /// `decode(_:address:limit:)` taking a `RawSpan`.
    public func decode(_ code: Data, address: UInt64, limit: Int? = nil) -> [Architecture.Instruction] {
        decode(code.bytes, address: address, limit: limit)
    }

    /// Decodes `code` into values that no longer need the engine; see
    /// `decode(_:address:limit:)` taking a `RawSpan`.
    public func decode(_ code: [UInt8], address: UInt64, limit: Int? = nil) -> [Architecture.Instruction] {
        let slice = code[...]
        return decode(slice.span.bytes, address: address, limit: limit)
    }
}

@available(*, unavailable, message: "A Disassembler decodes into a buffer it reuses; give each task its own.")
extension Disassembler: Sendable {}

extension Disassembler {
    private static func check(_ error: cs_err) throws {
        guard error == CS_ERR_OK else {
            throw CapstoneError(error)
        }
    }

    private static func allocateInstruction(handle: csh) throws -> UnsafeMutablePointer<cs_insn> {
        guard let instruction = cs_malloc(handle) else {
            throw CapstoneError.outOfMemory
        }
        return instruction
    }

    /// Out of memory is fatal here as it is for any other allocation in Swift: the
    /// decoding entry points do not throw errors of their own.
    private static func allocateNestedInstruction(handle: csh) -> UnsafeMutablePointer<cs_insn> {
        guard let instruction = cs_malloc(handle) else {
            fatalError("capstone could not allocate an instruction buffer")
        }
        return instruction
    }
}

extension Disassembler {
    /// Applies the creation-time options. Everything here has to happen before the
    /// instruction buffer is allocated.
    private static func configure(
        _ handle: csh,
        syntax: Architecture.Syntax,
        details: DetailForm,
        unsignedImmediates: Bool,
        state: DecodingState,
        mnemonics: [Architecture.InstructionIdentifier: String]
    ) throws {
        if !syntax.isEmpty {
            try check(cs_option(handle, CS_OPT_SYNTAX, UInt(syntax.rawValue)))
        }

        let detailValue = switch details {
        case .alias: CS_OPT_ON.rawValue
        case .realInstruction: CS_OPT_DETAIL_REAL.rawValue | CS_OPT_ON.rawValue
        }
        try check(cs_option(handle, CS_OPT_DETAIL, UInt(detailValue)))

        if unsignedImmediates {
            try check(cs_option(handle, CS_OPT_UNSIGNED, UInt(CS_OPT_ON.rawValue)))
        }

        if state.skipsData {
            // capstone keeps the struct's mnemonic pointer, not a copy of the
            // string; the state owns it for the life of the engine.
            var setup = cs_opt_skipdata(
                mnemonic: state.skipDataMnemonic.map { UnsafePointer($0) },
                callback: state.hasSkipDataCallback ? skipDataCallback : nil,
                user_data: Unmanaged.passUnretained(state).toOpaque()
            )
            let setupError = withUnsafeMutablePointer(to: &setup) { pointer in
                cs_option(handle, CS_OPT_SKIPDATA_SETUP, UInt(bitPattern: pointer))
            }
            try check(setupError)
            try check(cs_option(handle, CS_OPT_SKIPDATA, UInt(CS_OPT_ON.rawValue)))
        }

        for (identifier, mnemonic) in mnemonics {
            // capstone copies the string into its own list.
            let error = mnemonic.withCString { mnemonicPointer in
                var customization = cs_opt_mnem(id: identifier.rawValue, mnemonic: mnemonicPointer)
                return withUnsafeMutablePointer(to: &customization) { pointer in
                    cs_option(handle, CS_OPT_MNEMONIC, UInt(bitPattern: pointer))
                }
            }
            try check(error)
        }
    }
}

/// Called by capstone at bytes that do not decode, when the engine's `SkipData`
/// has a `bytesToSkip`. capstone passes the remaining input, not the whole of it,
/// with an offset of 0; the state knows where the pass's input starts.
private let skipDataCallback: cs_skipdata_cb_t = { code, _, _, userData in
    guard let code, let userData else {
        return 0
    }
    let state = Unmanaged<DecodingState>.fromOpaque(userData).takeUnretainedValue()
    return state.bytesToSkip(at: code)
}

/// What the borrowing methods of `Disassembler`, and capstone's skipdata callback,
/// have to change or read. A class because the callback needs an address that
/// stays put while the engine, a struct, can be moved.
final class DecodingState {
    /// Whether a pass over code is in progress.
    var isDecoding = false

    /// The input of the pass in progress.
    var input: UnsafeRawBufferPointer?

    let skipsData: Bool

    /// The skipdata mnemonic as a C string, which capstone points at.
    let skipDataMnemonic: UnsafeMutablePointer<CChar>?

    private let skipDataBytesToSkip: ((_ code: RawSpan, _ offset: Int) -> Int)?

    var hasSkipDataCallback: Bool {
        skipDataBytesToSkip != nil
    }

    init(skipData: SkipData?) {
        skipsData = skipData != nil
        skipDataMnemonic = skipData?.mnemonic.flatMap { strdup($0) }
        skipDataBytesToSkip = skipData?.bytesToSkip
    }

    deinit {
        free(skipDataMnemonic)
    }

    /// Asks the caller's closure how many bytes to skip at `code`, which points into
    /// the pass's input. Negative answers stop decoding, as 0 does.
    func bytesToSkip(at code: UnsafePointer<UInt8>) -> Int {
        guard let skipDataBytesToSkip, let input, let start = input.baseAddress else {
            return 0
        }
        let offset = UnsafeRawPointer(code) - start
        return max(skipDataBytesToSkip(input.bytes, offset), 0)
    }
}
