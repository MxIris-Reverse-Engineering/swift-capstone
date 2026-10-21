import Foundation
import PackagePlugin

@main
struct CapstoneEnumGenerateCommandPlugin: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let tool = try context.tool(named: "capstone-enums-generator")

        var includeOverride: String?
        var outputOverride: String?
        var checkOnly = false
        var iterator = arguments.makeIterator()
        while let argument = iterator.next() {
            switch argument {
            case "--include", "--input":
                includeOverride = try value(of: argument, from: &iterator)
            case "--output":
                outputOverride = try value(of: argument, from: &iterator)
            case "--check":
                checkOnly = true
            case "--target", "--product":
                // SwiftPM's convention for narrowing a command plugin, which is how
                // a host passes what the user selected; the generator covers every
                // architecture regardless.
                _ = try value(of: argument, from: &iterator)
            default:
                // Ignoring it would turn a mistyped --check into a run that
                // rewrites the generated files.
                throw PluginError.unknownArgument(argument)
            }
        }

        let packageDirectory = context.package.directoryURL
        let includeURL = try includeOverride.map { URL(fileURLWithPath: $0) }
            ?? capstoneIncludeDirectory(of: context.package)
        let outputURL = outputOverride.map { URL(fileURLWithPath: $0) }
            ?? packageDirectory.appendingPathComponent("Sources/Capstone")

        let process = Process()
        process.executableURL = tool.url
        process.arguments = ["--include", includeURL.path, "--output", outputURL.path] + (checkOnly ? ["--check"] : [])
        process.currentDirectoryURL = packageDirectory

        let stdOut = Pipe()
        let stdErr = Pipe()
        process.standardOutput = stdOut
        process.standardError = stdErr

        try process.run()
        // Read before waiting: a child blocked on a full pipe never exits.
        let outputData = try stdOut.fileHandleForReading.remainingData()
        let errorData = try stdErr.fileHandleForReading.remainingData()
        process.waitUntilExit()

        if let output = String(data: outputData, encoding: .utf8),
           !output.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            Diagnostics.remark(output)
        }

        if process.terminationStatus != 0 {
            let errorOutput = String(data: errorData, encoding: .utf8) ?? ""
            Diagnostics.error("capstone-enums-generator failed (\(process.terminationStatus)): \(errorOutput)")
        }
    }

    private func value(of option: String, from arguments: inout IndexingIterator<[String]>) throws -> String {
        guard let value = arguments.next() else {
            throw PluginError.missingValue(option)
        }
        return value
    }

    /// capstone's public headers, wherever SwiftPM resolved the dependency: a sibling
    /// checkout with USING_LOCAL_DEPENDENCIES, otherwise a checkout under whatever
    /// scratch path the build uses. Neither is a fixed place in the package.
    private func capstoneIncludeDirectory(of package: Package) throws -> URL {
        guard let capstone = package.dependencies.first(where: { $0.package.id == "capstone" }) else {
            throw PluginError.capstoneDependencyNotFound
        }
        return capstone.package.directoryURL.appendingPathComponent("include/capstone")
    }
}

enum PluginError: Error, CustomStringConvertible {
    case capstoneDependencyNotFound
    case unknownArgument(String)
    case missingValue(String)

    var description: String {
        switch self {
        case .capstoneDependencyNotFound:
            return "no dependency named capstone in this package; pass --include <capstone>/include/capstone"
        case .unknownArgument(let argument):
            return "unknown argument \(argument); the options are --include <directory>, --output <directory> and --check"
        case .missingValue(let option):
            return "\(option) needs a value"
        }
    }
}

private extension FileHandle {
    /// Everything left to read. `readToEnd()` reports a failed read as a Swift error;
    /// `readDataToEndOfFile()` raises an Objective-C exception, which Swift cannot
    /// catch, and stands in only before macOS 10.15.4, which lacks the other.
    func remainingData() throws -> Data {
        if #available(macOS 10.15.4, *) {
            return try readToEnd() ?? Data()
        }
        return readDataToEndOfFile()
    }
}
