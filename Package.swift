// swift-tools-version:6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Capstone",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Capstone",
            targets: ["Capstone"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/MxIris-Reverse-Engineering/capstone", branch: "v5"),
    ],
    targets: [
        .target(
            name: "Capstone",
            dependencies: [
                .product(name: "Ccapstone", package: "capstone"),
            ]
        ),
        .testTarget(
            name: "CapstoneTests",
            dependencies: ["Capstone"]
        )
    ],
    swiftLanguageModes: [.v5]
)
