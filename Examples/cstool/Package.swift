// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "cstool",
    platforms: [
        .macOS(.v10_15),
    ],
    dependencies: [
        .package(path: "../.."),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.5.0"),
    ],
    targets: [
        .executableTarget(
            name: "cstool",
            dependencies: [
                .product(name: "Capstone", package: "swift-capstone"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
        ),
        .testTarget(
            name: "cstoolTests",
            dependencies: ["cstool"],
        ),
    ],
)
