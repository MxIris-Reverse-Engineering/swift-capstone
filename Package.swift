// swift-tools-version:6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Capstone",
    products: [
        .library(
            name: "Capstone",
            targets: ["Capstone"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/MxIris-Reverse-Engineering/capstone", branch: "v5"),
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
        )
    ],
    swiftLanguageModes: [.v5]
)
