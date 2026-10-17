import Foundation
import PackagePlugin

@main
struct CapstoneEnumGenerateCommandPlugin: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let tool = try context.tool(named: "capstone-enums-generator")

        var includeOverride: String?
        var outputOverride: String?
        var iterator = arguments.makeIterator()
        while let argument = iterator.next() {
            switch argument {
            case "--include", "--input":
                includeOverride = iterator.next()
            case "--output":
                outputOverride = iterator.next()
            default:
                continue
            }
        }

        let packageDirectory = context.package.directoryURL
        let includeURL = try includeOverride.map { URL(fileURLWithPath: $0) }
            ?? capstoneIncludeDirectory(of: context.package)
        let outputURL = outputOverride.map { URL(fileURLWithPath: $0) }
            ?? packageDirectory.appendingPathComponent("Sources/Capstone")

        let process = Process()
        process.executableURL = tool.url
        process.arguments = ["--include", includeURL.path, "--output", outputURL.path]
        process.currentDirectoryURL = packageDirectory

        let stdOut = Pipe()
        let stdErr = Pipe()
        process.standardOutput = stdOut
        process.standardError = stdErr

        try process.run()
        process.waitUntilExit()

        if let output = String(data: stdOut.fileHandleForReading.readDataToEndOfFile(), encoding: .utf8),
           !output.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            Diagnostics.remark(output)
        }

        if process.terminationStatus != 0 {
            let errorOutput = String(data: stdErr.fileHandleForReading.readDataToEndOfFile(), encoding: .utf8) ?? ""
            Diagnostics.error("capstone-enums-generator failed (\(process.terminationStatus)): \(errorOutput)")
        }
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

    var description: String {
        switch self {
        case .capstoneDependencyNotFound:
            return "no dependency named capstone in this package; pass --include <capstone>/include/capstone"
        }
    }
}
