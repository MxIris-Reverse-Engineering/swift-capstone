// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

func envEnable(_ key: String, default defaultValue: Bool = false) -> Bool {
    let value = Context.environment[key]
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
    // v6 renamed ARM64 to AArch64 and SYSZ to SYSTEMZ. The capstone package still
    // accepts the old ARM64 trait as an alias, but new code should use these.
    ("AARCH64", "CAPSTONE_HAS_AARCH64"),
    ("MIPS", "CAPSTONE_HAS_MIPS"),
    ("X86", "CAPSTONE_HAS_X86"),
    ("POWERPC", "CAPSTONE_HAS_POWERPC"),
    ("SPARC", "CAPSTONE_HAS_SPARC"),
    ("SYSTEMZ", "CAPSTONE_HAS_SYSTEMZ"),
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
    // Added in v6. Generated enums only so far, no wrapper.
    ("ALPHA", "CAPSTONE_HAS_ALPHA"),
    ("HPPA", "CAPSTONE_HAS_HPPA"),
    ("LOONGARCH", "CAPSTONE_HAS_LOONGARCH"),
    ("XTENSA", "CAPSTONE_HAS_XTENSA"),
    ("ARC", "CAPSTONE_HAS_ARC"),
]

// Conditionally forward each trait to capstone C dependency
let capstoneTraits: Set<Package.Dependency.Trait> = Set(
    architectures.map { .trait(name: $0.trait, condition: .when(traits: [$0.trait])) },
)

/// Architectures whose wrapper has been adapted to capstone v6.
///
/// Grows one entry at a time as each architecture is migrated. An architecture
/// left out here keeps its trait declared — callers can still enable it explicitly —
/// but stays out of the default build, so its still-v5 wrapper is excluded by the
/// `#if CAPSTONE_HAS_*` it already sits behind.
///
/// AArch64 is adapted; the rest still carry v5 wrappers.
///
/// See Documentations/Evolutions/draft-adapt-capstone-v6.md.
let adaptedArchitectures: Set<String> = [
    "AARCH64",
]

/// SwiftPM treats a package that declares no default traits as having none enabled.
/// Every architecture wrapper under Sources/Capstone sits behind `#if CAPSTONE_HAS_*`,
/// and the conditional forwarding above only fires for traits this package has enabled,
/// so without a default set the build produced a Capstone module containing no
/// architecture types at all and a capstone dependency with no architecture compiled in.
let defaultTrait = Trait.default(enabledTraits: adaptedArchitectures)

let package = Package(
    name: "swift-capstone",
    products: [
        .library(
            name: "Capstone",
            targets: ["Capstone"],
        ),
    ],
    traits: Set(architectures.map { Trait(name: $0.trait) } + [defaultTrait]),
    dependencies: [
        .package(
            local: .package(
                path: "../capstone",
                isRelative: true,
                traits: capstoneTraits,
            ),
            remote: .package(
                url: "https://github.com/MxIris-Reverse-Engineering/capstone",
                from: "6.0.100",
                traits: capstoneTraits,
            ),
        ),
        .package(
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
            // The v5 suite covers twelve architectures at once, so it cannot compile
            // until their wrappers are adapted. Files move back out of Legacy/ as
            // each architecture lands. See the v6 adaptation proposal.
            exclude: ["Legacy"],
            swiftSettings: architectures.map {
                .define($0.define, .when(traits: [$0.trait]))
            },
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
