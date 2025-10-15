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
    ],
    targets: [
        .target(
            name: "Capstone",
            dependencies: [
                .product(name: "Ccapstone", package: "capstone"),
            ]
        ),
        .plugin(
            name: "CapstoneEnumGeneratePlugin",
            capability: .command(
                intent: .custom(verb: "generate-enums", description: ""),
                permissions: [
                    .writeToPackageDirectory(reason: "This plugin creates a enum file at the root of the package.")
                ]
            ),
            dependencies: [
                "CapstoneEnumGenerator"
            ]
        ),
        .executableTarget(
            name: "CapstoneEnumGenerator",
            dependencies: [
                .product(name: "Clang", package: "swift-clang"),
            ]
        ),
        
        .testTarget(
            name: "CapstoneTests",
            dependencies: ["Capstone"]
        )
    ],
    swiftLanguageModes: [.v5]
)
