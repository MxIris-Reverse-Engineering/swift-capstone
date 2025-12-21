// swift-tools-version:6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

extension Package.Dependency {
    enum LocalSearchPath {
        case package(path: String, isRelative: Bool, isEnabled: Bool)
    }

    static func package(local localSearchPaths: LocalSearchPath..., remote: Package.Dependency) -> Package.Dependency {
        for local in localSearchPaths {
            switch local {
            case .package(let path, let isRelative, let isEnabled):
                guard isEnabled else { continue }
                let url = if isRelative, let resolvedURL = URL(string: path, relativeTo: URL(fileURLWithPath: #filePath)) {
                    resolvedURL
                } else {
                    URL(fileURLWithPath: path)
                }

                if FileManager.default.fileExists(atPath: url.path) {
                    return .package(path: url.path)
                }
            }
        }
        return remote
    }
}

let package = Package(
    name: "Capstone",
    products: [
        .library(
            name: "Capstone",
            targets: ["Capstone"]
        )
    ],
    dependencies: [
        .package(
            local: .package(
                path: "../capstone",
                isRelative: true,
                isEnabled: true
            ),
            remote: .package(
                url: "https://github.com/MxIris-Reverse-Engineering/capstone",
                branch: "v5"
            )
        ),
        .package(url: "https://github.com/MxIris-DeveloperTool/swift-clang", branch: "main"),
        .package(url: "https://github.com/brightdigit/SyntaxKit", branch: "main"),
    ],
    targets: [
        .target(
            name: "Capstone",
            dependencies: [
                .product(name: "Ccapstone", package: "capstone"),
            ]
        ),
        .plugin(
            name: "CapstoneEnumsGeneratePlugin",
            capability: .command(
                intent: .custom(verb: "generate-enums", description: ""),
                permissions: [
                    .writeToPackageDirectory(reason: "This plugin creates a enum file at the root of the package.")
                ]
            ),
            dependencies: [
                "capstone-enums-generator"
            ]
        ),
        .target(
            name: "CapstoneEnumsGenerator",
            dependencies: [
                .product(name: "Clang", package: "swift-clang"),
            ]
        ),
        .executableTarget(
            name: "capstone-enums-generator",
            dependencies: [
                "CapstoneEnumsGenerator"
            ]
        ),
        
        .testTarget(
            name: "CapstoneTests",
            dependencies: ["Capstone"]
        ),
        .testTarget(
            name: "CapstoneEnumsGeneratorTests",
            dependencies: ["CapstoneEnumsGenerator"],
            swiftSettings: [
                .enableExperimentalFeature("SwiftTesting")
            ]
        )
    ],
    swiftLanguageModes: [.v5]
)
