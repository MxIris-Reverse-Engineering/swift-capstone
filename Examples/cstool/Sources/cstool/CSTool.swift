import ArgumentParser
import Capstone

@main
struct CSTool: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "cstool",
        abstract: "Disassemble AArch64 machine code given in hex.",
        version: version
    )

    static var version: String {
        let compiledIn = Architecture.allCases
            .filter(\.isCompiledIn)
            .map { String(describing: $0) }
        return """
        cstool for capstone \(EngineVersion.current)
        Architectures compiled in: \(compiledIn.joined(separator: " "))
        """
    }

    @Flag(name: .customShort("d"), help: "Show the details of each instruction.")
    var detailed = false

    @Flag(name: .customShort("r"), help: "Show the details of the real instruction behind an alias. Implies -d.")
    var realDetails = false

    @Flag(name: .customShort("a"), help: "Print capstone's register aliases, fp and lr for x29 and x30.")
    var registerAliases = false

    @Flag(name: .customShort("s"), help: "Decode past bytes that are not instructions.")
    var skipData = false

    @Flag(name: .customShort("u"), help: "Print immediates as unsigned numbers.")
    var unsignedImmediates = false

    @Argument(
        help: ArgumentHelp(
            "The architecture mode.",
            discussion: "aarch64 or aarch64be, optionally followed by +apple for Apple's proprietary instructions."
        ),
        transform: parseMode
    )
    var mode: AArch64.Mode

    @Argument(help: "The code to disassemble, in hex.", transform: parseHexBytes)
    var code: [UInt8]

    @Argument(help: "The address of the first byte, in hex.", transform: parseAddress)
    var startAddress: UInt64 = 0

    func run() throws {
        let disassembler = try Disassembler<AArch64>(
            mode: mode,
            syntax: registerAliases ? .capstoneRegisterAlias : [],
            details: realDetails ? .realInstruction : .alias,
            unsignedImmediates: unsignedImmediates,
            skipData: skipData ? SkipData() : nil
        )
        let instructions = disassembler.decode(code, address: startAddress)
        guard !instructions.isEmpty else {
            print("ERROR: invalid code")
            throw ExitCode(-4)
        }
        for line in listing(of: instructions, detailed: detailed || realDetails) {
            print(line)
        }
    }
}
