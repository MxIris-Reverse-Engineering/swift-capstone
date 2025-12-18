import CapstoneEnumsGenerator
import Foundation

@main
enum CapstoneEnumsGeneratorMain {
    static func main() async {
        var includePath: String?
        var outputPath: String?

        var arguments = Array(CommandLine.arguments.dropFirst())
        while !arguments.isEmpty {
            let argument = arguments.removeFirst()
            switch argument {
            case "--include", "--input":
                guard !arguments.isEmpty else { break }
                includePath = arguments.removeFirst()
            case "--output":
                guard !arguments.isEmpty else { break }
                outputPath = arguments.removeFirst()
            case "--help", "-h":
                printUsage()
                return
            default:
                continue
            }
        }

        guard let includePath, let outputPath else {
            printUsage()
            exit(1)
        }

        let generator = CapstoneEnumsGenerator()
        do {
            try await generator.generate(
                input: URL(fileURLWithPath: includePath),
                output: URL(fileURLWithPath: outputPath)
            )
        } catch {
            fputs("capstone-enums-generator failed: \(error)\n", stderr)
            exit(1)
        }
    }

    private static func printUsage() {
        let toolName = (CommandLine.arguments.first as NSString?)?.lastPathComponent ?? "capstone-enums-generator"
        print("""
        Usage: \(toolName) --include <capstone-include-dir> --output <output-dir>

        --include   Path to the capstone include directory (the folder containing arm.h, x86.h, ...).
        --output    Destination directory for the generated Swift enum files.
        """)
    }
}
