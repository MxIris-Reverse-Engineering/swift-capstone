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
    private let state = DecodingState()

    /// Creates an engine.
    ///
    /// - Parameter mode: Modes for the architecture, such as `.bigEndian`.
    /// - Throws: `CapstoneError.unsupportedArchitecture` when capstone was built
    ///   without the architecture, `.invalidMode` when capstone rejects the mode, and
    ///   `.outOfMemory`.
    public init(mode: Architecture.Mode = []) throws {
        var handle: csh = 0
        let openError = cs_open(cs_arch(Architecture.architecture.rawValue), cs_mode(mode.rawValue), &handle)
        guard openError == CS_ERR_OK else {
            throw CapstoneError(openError)
        }
        do {
            try Self.check(cs_option(handle, CS_OPT_DETAIL, UInt(CS_OPT_ON.rawValue)))
            // Allocated after the options are set: cs_malloc gives the buffer room
            // for details only when they are on by then.
            self.sharedInstruction = try Self.allocateInstruction(handle: handle)
            self.handle = handle
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

/// What the borrowing methods of `Disassembler` have to change.
final class DecodingState {
    /// Whether a pass over code is in progress.
    var isDecoding = false
}
