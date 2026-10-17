#if CAPSTONE_HAS_AARCH64
import Testing
import Capstone

/// Decodes `bytes` at 0x1000 and hands the first instruction to `body`, returning
/// what it reads off the instruction. The instruction itself cannot leave the
/// closure.
func withFirstInstruction<Result>(
    _ bytes: [UInt8],
    mode: AArch64.Mode = .littleEndian,
    _ body: (borrowing InstructionView<AArch64>) throws -> Result
) throws -> Result {
    let disassembler = try Disassembler<AArch64>(mode: mode)
    var result: Result?
    try disassembler.forEachInstruction(in: bytes, address: 0x1000, limit: 1) { instruction in
        result = try body(instruction)
    }
    return try #require(result, "\(bytes) did not decode")
}
#endif
