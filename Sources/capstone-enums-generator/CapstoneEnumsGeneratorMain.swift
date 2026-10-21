import CapstoneEnumsGenerator
import Foundation

@main
enum CapstoneEnumsGeneratorMain {
    static func main() {
        var includePath: String?
        var outputPath: String?
        var checkOnly = false

        var arguments = CommandLine.arguments.dropFirst()
        while let argument = arguments.popFirst() {
            switch argument {
            case "--include", "--input":
                includePath = value(of: argument, from: &arguments)
            case "--output":
                outputPath = value(of: argument, from: &arguments)
            case "--check":
                checkOnly = true
            case "--help", "-h":
                print(usage)
                return
            default:
                // Ignoring it would turn a mistyped --check into a run that
                // rewrites the generated files.
                fail("unknown argument \(argument)")
            }
        }

        guard let includePath, let outputPath else {
            fail("--include and --output are both required")
        }

        let generator = CapstoneEnumsGenerator()
        do {
            try generator.generate(
                input: URL(fileURLWithPath: includePath),
                output: URL(fileURLWithPath: outputPath),
                checkOnly: checkOnly
            )
        } catch {
            fputs("capstone-enums-generator failed: \(error)\n", stderr)
            exit(1)
        }
    }

    private static func value(of option: String, from arguments: inout ArraySlice<String>) -> String {
        guard let value = arguments.popFirst() else {
            fail("\(option) needs a value")
        }
        return value
    }

    private static func fail(_ message: String) -> Never {
        fputs("capstone-enums-generator: \(message)\n\n\(usage)\n", stderr)
        exit(1)
    }

    private static var usage: String {
        let toolName = (CommandLine.arguments.first as NSString?)?.lastPathComponent ?? "capstone-enums-generator"
        return """
        Usage: \(toolName) --include <capstone-include-dir> --output <output-dir> [--check]

        --include   Path to the capstone include directory (the folder containing arm.h, x86.h, ...).
        --output    Destination directory for the generated Swift enum files.
        --check     Report whether the generated files are up to date, without
                    writing anything. Exits non-zero if any differ.
        """
    }
}
