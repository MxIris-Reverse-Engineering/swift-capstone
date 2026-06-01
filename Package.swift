// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let localEnvironment: [String: String] = {
    let localEnvironmentFilePath = URL(fileURLWithPath: #filePath)
        .deletingLastPathComponent()
        .appendingPathComponent(".package.env")
        .path
    guard FileManager.default.fileExists(atPath: localEnvironmentFilePath),
          let contents = try? String(contentsOfFile: localEnvironmentFilePath, encoding: .utf8)
    else {
        return [:]
    }
    var environment: [String: String] = [:]
    for line in contents.components(separatedBy: .newlines) {
        let trimmedLine = line.trimmingCharacters(in: .whitespaces)
        if trimmedLine.isEmpty || trimmedLine.hasPrefix("#") {
            continue
        }
        let parts = trimmedLine.split(separator: "=", maxSplits: 1)
        guard parts.count == 2 else { continue }
        let key = parts[0].trimmingCharacters(in: .whitespaces)
        let value = parts[1].trimmingCharacters(in: .whitespaces)
        environment[key] = value
    }
    return environment
}()

func envEnable(_ key: String, default defaultValue: Bool = false) -> Bool {
    let value = localEnvironment[key] ?? Context.environment[key]
    guard let value else {
        return defaultValue
    }
    if value == "1" {
        return true
    } else if value == "0" {
        return false
    } else {
        return defaultValue
    }
}

let usingLocalDependencies = envEnable("USING_LOCAL_DEPENDENCIES")

extension Package.Dependency {
    enum LocalSearchPath {
        case package(path: String, isRelative: Bool, isEnabled: Bool = usingLocalDependencies, traits: Set<PackageDescription.Package.Dependency.Trait> = [.defaults])
    }

    static func package(local localSearchPaths: LocalSearchPath..., remote: Package.Dependency) -> Package.Dependency {
        let currentFilePath = #filePath
        let isClonedDependency = currentFilePath.contains("/checkouts/") ||
            currentFilePath.contains("/SourcePackages/") ||
            currentFilePath.contains("/.build/")

        if isClonedDependency {
            return remote
        }
        for local in localSearchPaths {
            switch local {
            case .package(let path, let isRelative, let isEnabled, let traits):
                guard isEnabled else { continue }
                let url = if isRelative {
                    URL(fileURLWithPath: path, relativeTo: URL(fileURLWithPath: #filePath))
                } else {
                    URL(fileURLWithPath: path)
                }

                if FileManager.default.fileExists(atPath: url.path) {
                    return .package(path: url.path, traits: traits)
                }
            }
        }
        return remote
    }
}

let architectures: [(trait: String, define: String)] = [
    ("ARM", "CAPSTONE_HAS_ARM"),
    ("ARM64", "CAPSTONE_HAS_ARM64"),
    ("MIPS", "CAPSTONE_HAS_MIPS"),
    ("X86", "CAPSTONE_HAS_X86"),
    ("POWERPC", "CAPSTONE_HAS_POWERPC"),
    ("SPARC", "CAPSTONE_HAS_SPARC"),
    ("SYSZ", "CAPSTONE_HAS_SYSZ"),
    ("XCORE", "CAPSTONE_HAS_XCORE"),
    ("M68K", "CAPSTONE_HAS_M68K"),
    ("TMS320C64X", "CAPSTONE_HAS_TMS320C64X"),
    ("M680X", "CAPSTONE_HAS_M680X"),
    ("EVM", "CAPSTONE_HAS_EVM"),
    ("MOS65XX", "CAPSTONE_HAS_MOS65XX"),
    ("WASM", "CAPSTONE_HAS_WASM"),
    ("BPF", "CAPSTONE_HAS_BPF"),
    ("RISCV", "CAPSTONE_HAS_RISCV"),
    ("SH", "CAPSTONE_HAS_SH"),
    ("TRICORE", "CAPSTONE_HAS_TRICORE"),
]

// Conditionally forward each trait to capstone C dependency
let capstoneTraits: Set<Package.Dependency.Trait> = Set(
    architectures.map { .trait(name: $0.trait, condition: .when(traits: [$0.trait])) },
)

let package = Package(
    name: "Capstone",
    products: [
        .library(
            name: "Capstone",
            targets: ["Capstone"],
        ),
    ],
    traits: Set(architectures.map { Trait(name: $0.trait) }),
    dependencies: [
        .package(
            local: .package(
                path: "../capstone",
                isRelative: true,
                traits: capstoneTraits,
            ),
            remote: .package(
                url: "https://github.com/MxIris-Reverse-Engineering/capstone",
                branch: "v5",
                traits: capstoneTraits,
            ),
        ),
        .package(
            local: .package(
                path: "/Volumes/Repositories/Private/Personal/Library/macOS/swift-clang",
                isRelative: false,
                isEnabled: false,
            ),
            remote: .package(
                url: "https://github.com/MxIris-DeveloperTool/swift-clang",
                from: "0.2.0",
            ),
        ),

    ],
    targets: [
        .target(
            name: "Capstone",
            dependencies: [
                .product(name: "Ccapstone", package: "capstone"),
            ],
            cSettings: architectures.map {
                .define($0.define, .when(traits: [$0.trait]))
            },
            swiftSettings: architectures.map {
                .define($0.define, .when(traits: [$0.trait]))
            },
        ),
        .plugin(
            name: "CapstoneEnumsGeneratePlugin",
            capability: .command(
                intent: .custom(verb: "generate-enums", description: ""),
                permissions: [
                    .writeToPackageDirectory(reason: "This plugin creates a enum file at the root of the package."),
                ],
            ),
            dependencies: [
                "capstone-enums-generator",
            ],
        ),
        .target(
            name: "CapstoneEnumsGenerator",
            dependencies: [
                .product(name: "Clang", package: "swift-clang"),
            ],
        ),
        .executableTarget(
            name: "capstone-enums-generator",
            dependencies: [
                "CapstoneEnumsGenerator",
            ],
        ),

        .testTarget(
            name: "CapstoneTests",
            dependencies: ["Capstone"],
        ),
        .testTarget(
            name: "CapstoneEnumsGeneratorTests",
            dependencies: ["CapstoneEnumsGenerator"],
            swiftSettings: [
                .enableExperimentalFeature("SwiftTesting"),
            ],
        ),
    ],
    swiftLanguageModes: [.v5],
)
