import ArgumentParser
import Capstone
import Foundation

/// Reads an architecture mode in capstone cstool's spelling: `aarch64` or
/// `aarch64be`, optionally followed by `+apple`.
func parseMode(_ argument: String) throws -> AArch64.Mode {
    var parts = argument.split(separator: "+").map(String.init)
    let base = parts.isEmpty ? "" : parts.removeFirst()
    var mode: AArch64.Mode
    switch base {
    case "aarch64", "arm64": mode = .littleEndian
    case "aarch64be", "arm64be": mode = .bigEndian
    default: throw ValidationError("Unknown mode \(base); use aarch64 or aarch64be.")
    }
    for option in parts {
        guard option == "apple" else {
            throw ValidationError("Unknown option +\(option); the only one is +apple.")
        }
        mode.insert(.appleProprietary)
    }
    return mode
}

/// Reads each pair of adjacent hex digits as a byte and skips everything else, so
/// `"62 00 04 8b"`, `"0x62,0x00"` and `"\x62\x00"` all work, as they do for
/// capstone's cstool: the 0 of a 0x prefix has no digit next to it.
func parseHexBytes(_ hex: String) throws -> [UInt8] {
    let digits = hex.map(\.hexDigitValue)
    var bytes: [UInt8] = []
    var index = 0
    while index + 1 < digits.count {
        if let high = digits[index], let low = digits[index + 1] {
            bytes.append(UInt8(high << 4 | low))
            index += 2
        } else {
            index += 1
        }
    }
    guard !bytes.isEmpty else {
        throw ValidationError("No hex bytes in \(hex).")
    }
    return bytes
}

func parseAddress(_ hex: String) throws -> UInt64 {
    let digits = hex.hasPrefix("0x") || hex.hasPrefix("0X") ? String(hex.dropFirst(2)) : hex
    guard let address = UInt64(digits, radix: 16) else {
        throw ValidationError("\(hex) is not a hex address.")
    }
    return address
}

/// The lines cstool prints: address, bytes, mnemonic and operands, then the
/// details when asked for.
func listing(of instructions: [AArch64.Instruction], detailed: Bool) -> [String] {
    let byteColumnWidth = 3 * max(4, instructions.map(\.bytes.count).max() ?? 0)
    var lines: [String] = []
    for instruction in instructions {
        let address = String(instruction.address, radix: 16)
        let bytes = instruction.bytes.map { String(format: "%02x ", $0) }.joined()
        let paddedAddress = String(repeating: " ", count: max(0, 2 - address.count)) + address
        let paddedBytes = bytes.padding(toLength: byteColumnWidth, withPad: " ", startingAt: 0)
        lines.append("\(paddedAddress)  \(paddedBytes) \(instruction.mnemonic)\t\(instruction.operandsText)")
        if detailed, !instruction.isData {
            lines.append(contentsOf: details(of: instruction).map { "\t\($0)" })
        }
    }
    return lines
}

func details(of instruction: AArch64.Instruction) -> [String] {
    var lines: [String] = []
    if let identifier = instruction.identifier {
        lines.append("ID: \(identifier)")
    }
    if let alias = instruction.alias {
        lines.append("Alias: \(alias)")
    }
    if instruction.isIllegal {
        lines.append("Illegal")
    }
    lines.append("Operands: \(instruction.operands.count)")
    for (index, operand) in instruction.operands.enumerated() {
        lines.append("\t[\(index)] \(describe(operand))")
    }
    if let conditionCode = instruction.conditionCode {
        lines.append("Condition: \(conditionCode)")
    }
    if instruction.updatesFlags {
        lines.append("Updates flags")
    }
    if instruction.writesBackBaseRegister {
        lines.append(instruction.isPostIndex ? "Writes back, post-indexed" : "Writes back, pre-indexed")
    }
    if !instruction.registersRead.isEmpty {
        lines.append("Registers read: \(instruction.registersRead.map { "\($0)" }.joined(separator: " "))")
    }
    if !instruction.registersWritten.isEmpty {
        lines.append("Registers written: \(instruction.registersWritten.map { "\($0)" }.joined(separator: " "))")
    }
    if !instruction.groups.isEmpty {
        lines.append("Groups: \(instruction.groups.map { "\($0)" }.joined(separator: " "))")
    }
    return lines
}

private func describe(_ operand: AArch64.Operand) -> String {
    var description: String
    if let register = operand.register {
        description = "register \(register)"
    } else if let immediate = operand.immediateValue {
        description = "immediate \(immediate < 0 ? "-" : "")0x\(String(immediate.magnitude, radix: 16))"
    } else if let memory = operand.memory {
        description = "memory base \(memory.base)"
        if let index = memory.index {
            description += " index \(index)"
        }
        if memory.displacement != 0 {
            description += " displacement \(memory.displacement)"
        }
    } else if let value = operand.doubleValue {
        description = "floating point \(value)"
    } else if let systemOperand = operand.systemOperand {
        description = "system \(systemOperand.value)"
    } else {
        description = "\(operand.type)"
    }
    if !operand.access.isEmpty {
        description += " (\(operand.access))"
    }
    return description
}
