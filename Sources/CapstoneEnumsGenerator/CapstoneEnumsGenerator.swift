import CclangWrapper
import Clang
import Foundation

public struct CapstoneEnumsGenerator {
    public init() {}

    public func generate(input inputFileURL: URL, output outputFileURL: URL) async throws {
        let includeDirectory = inputFileURL
        let outputDirectory = outputFileURL
        let moduleCache = outputDirectory.appendingPathComponent(".clang-module-cache")

        let architectures = ArchitectureConfig.all
        try FileManager.default.createDirectory(at: outputDirectory, withIntermediateDirectories: true, attributes: nil)
        try FileManager.default.createDirectory(at: moduleCache, withIntermediateDirectories: true, attributes: nil)

        for architecture in architectures {
            let headerURL = includeDirectory.appendingPathComponent(architecture.header)
            guard FileManager.default.fileExists(atPath: headerURL.path) else { continue }

            let enums = try parseEnums(from: headerURL, configuration: architecture, moduleCache: moduleCache)
            let rendered = render(architecture: architecture, enums: enums)
            let outputFile = outputDirectory.appendingPathComponent("\(architecture.swiftPrefix)Enums.swift")
            try rendered.write(to: outputFile, atomically: true, encoding: .utf8)
        }
    }
}

private extension CapstoneEnumsGenerator {
    struct ArchitectureConfig {
        let swiftPrefix: String
        let header: String
        let cPrefix: String

        static let all: [ArchitectureConfig] = [
            .init(swiftPrefix: "Arm", header: "arm.h", cPrefix: "ARM"),
            .init(swiftPrefix: "Arm64", header: "arm64.h", cPrefix: "ARM64"),
            .init(swiftPrefix: "Mips", header: "mips.h", cPrefix: "MIPS"),
            .init(swiftPrefix: "X86", header: "x86.h", cPrefix: "X86"),
            .init(swiftPrefix: "Ppc", header: "ppc.h", cPrefix: "PPC"),
            .init(swiftPrefix: "Sparc", header: "sparc.h", cPrefix: "SPARC"),
            .init(swiftPrefix: "Sysz", header: "systemz.h", cPrefix: "SYSZ"),
            .init(swiftPrefix: "Xcore", header: "xcore.h", cPrefix: "XCORE"),
            .init(swiftPrefix: "M68k", header: "m68k.h", cPrefix: "M68K"),
            .init(swiftPrefix: "Tms320c64x", header: "tms320c64x.h", cPrefix: "TMS320C64X"),
            .init(swiftPrefix: "M680x", header: "m680x.h", cPrefix: "M680X"),
            .init(swiftPrefix: "Evm", header: "evm.h", cPrefix: "EVM"),
            .init(swiftPrefix: "Mos65xx", header: "mos65xx.h", cPrefix: "MOS65XX"),
            .init(swiftPrefix: "Wasm", header: "wasm.h", cPrefix: "WASM"),
            .init(swiftPrefix: "Bpf", header: "bpf.h", cPrefix: "BPF"),
            .init(swiftPrefix: "Riscv", header: "riscv.h", cPrefix: "RISCV"),
            .init(swiftPrefix: "Sh", header: "sh.h", cPrefix: "SH"),
            .init(swiftPrefix: "Tricore", header: "tricore.h", cPrefix: "TRICORE")
        ]
    }

    struct ParsedEnum {
        struct Case {
            enum Kind {
                case standard
                case alias(target: String)
            }

            let name: String
            let rawValue: Int64
            let comment: String?
            let kind: Kind
        }

        let swiftName: String
        let rawType: String
        let comment: String?
        let cases: [Case]
        let isOptionSet: Bool
    }

    func parseEnums(from headerURL: URL, configuration: ArchitectureConfig, moduleCache: URL) throws -> [ParsedEnum] {
        let translationUnit = try TranslationUnit(
            filename: headerURL.path,
            commandLineArgs: [
                "-fparse-all-comments",
                "-fmodules-cache-path=\(moduleCache.path)",
                "-I\(headerURL.deletingLastPathComponent().path)"
            ]
        )

        var enums = [ParsedEnum]()
        translationUnit.visitChildren { cursor in
            guard let enumDecl = cursor as? EnumDecl else { return .continue }
            guard cursorIsInHeader(enumDecl, headerURL: headerURL) else { return .continue }
            guard let parsed = parseEnum(enumDecl, configuration: configuration) else { return .continue }
            enums.append(parsed)
            return .continue
        }

        return enums.sorted(by: { $0.swiftName < $1.swiftName })
    }

    func cursorIsInHeader(_ cursor: Cursor, headerURL: URL) -> Bool {
        let cursorFile = cursor.range.start.file.name
        return URL(fileURLWithPath: cursorFile).lastPathComponent == headerURL.lastPathComponent
    }

    func parseEnum(_ enumDecl: EnumDecl, configuration: ArchitectureConfig) -> ParsedEnum? {
        let constants = enumDecl.constants()
        guard let firstConstant = constants.first else { return nil }

        let firstName = firstConstant.description
        guard let cPrefix = enumPrefix(from: firstName) else { return nil }
        guard cPrefix.hasPrefix(configuration.cPrefix) else { return nil }

        let typeBase = swiftTypeName(from: cPrefix, configuration: configuration)
        let rawType = swiftRawType(from: enumDecl.integerType)
        let comment = enumDecl.briefComment ?? enumDecl.rawComment

        var parsedCases = [ParsedEnum.Case]()
        var seenValues = [Int64: String]()

        for constant in constants {
            let constantName = constant.description
            guard let fragment = nameFragment(from: constantName, prefix: cPrefix) else { continue }

            let swiftCaseName = makeSwiftIdentifier(fragment, lowercaseFirst: true)
            let value = Int64(constant.value)
            let brief = constant.briefComment ?? constant.rawComment

            if let existing = seenValues[value] {
                parsedCases.append(.init(name: swiftCaseName, rawValue: value, comment: brief, kind: .alias(target: existing)))
            } else {
                seenValues[value] = swiftCaseName
                parsedCases.append(.init(name: swiftCaseName, rawValue: value, comment: brief, kind: .standard))
            }
        }

        let optionSet = isBitmaskEnum(parsedCases)

        return ParsedEnum(
            swiftName: configuration.swiftPrefix + typeBase,
            rawType: rawType,
            comment: comment,
            cases: parsedCases,
            isOptionSet: optionSet
        )
    }

    func enumPrefix(from constant: String) -> String? {
        guard let lastSeparator = constant.lastIndex(of: "_") else { return nil }
        return String(constant[..<lastSeparator])
    }

    func nameFragment(from constant: String, prefix: String) -> String? {
        guard constant.hasPrefix(prefix) else { return nil }
        let start = constant.index(constant.startIndex, offsetBy: prefix.count)
        guard start < constant.endIndex else { return nil }
        let fragment = constant[constant.index(after: start)...]
        return String(fragment)
    }

    func swiftTypeName(from cPrefix: String, configuration: ArchitectureConfig) -> String {
        let prefixWithoutArch: String
        if cPrefix.hasPrefix(configuration.cPrefix + "_") {
            prefixWithoutArch = String(cPrefix.dropFirst(configuration.cPrefix.count + 1))
        } else if cPrefix.hasPrefix(configuration.cPrefix) {
            prefixWithoutArch = String(cPrefix.dropFirst(configuration.cPrefix.count))
        } else {
            prefixWithoutArch = cPrefix
        }

        return makeSwiftIdentifier(prefixWithoutArch, lowercaseFirst: false)
    }

    func swiftRawType(from type: CType) -> String {
        let clangType = type.asClang()
        let size = (try? type.sizeOf()) ?? 4
        let isSigned = isSignedInteger(kind: clangType.kind)

        switch (size, isSigned) {
        case (1, true):
            return "Int8"
        case (1, false):
            return "UInt8"
        case (2, true):
            return "Int16"
        case (2, false):
            return "UInt16"
        case (8, true):
            return "Int64"
        case (8, false):
            return "UInt64"
        default:
            return isSigned ? "Int32" : "UInt32"
        }
    }

    func isSignedInteger(kind: CXTypeKind) -> Bool {
        switch kind {
        case CXType_Char_U, CXType_UChar, CXType_UShort, CXType_UInt, CXType_ULong, CXType_ULongLong, CXType_UInt128:
            return false
        default:
            return true
        }
    }

    func makeSwiftIdentifier(_ name: String, lowercaseFirst: Bool) -> String {
        let trimmed = name.trimmingCharacters(in: .init(charactersIn: "_"))
        let parts = trimmed.split(separator: "_").map { $0.lowercased() }
        guard let first = parts.first else { return trimmed }

        let head = lowercaseFirst ? String(first) : first.capitalized
        let tail = parts.dropFirst().map { $0.capitalized }
        let candidate = ([String(head)] + tail).joined()

        if swiftKeywords.contains(candidate) {
            return "`\(candidate)`"
        }

        if candidate.first?.isNumber == true {
            return "_\(candidate)"
        }

        return candidate
    }

    func isBitmaskEnum(_ cases: [ParsedEnum.Case]) -> Bool {
        let values = cases.map(\.rawValue).filter { $0 != 0 }
        guard !values.isEmpty else { return false }
        return values.allSatisfy { value in
            value > 0 && (value & (value - 1) == 0)
        }
    }

    func render(architecture: ArchitectureConfig, enums: [ParsedEnum]) -> String {
        var lines = [String]()
        lines.append("// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (\(architecture.swiftPrefix))")
        lines.append("")

        for item in enums {
            lines.append(render(enum: item))
            lines.append("")
        }

        return lines.joined(separator: "\n")
    }

    func render(enum item: ParsedEnum) -> String {
        var lines = [String]()

        if let comment = item.comment?.trimmingCharacters(in: .whitespacesAndNewlines), !comment.isEmpty {
            lines.append("/// \(comment)")
        }

        if item.isOptionSet {
            lines.append("public struct \(item.swiftName): OptionSet {")
            lines.append("    public let rawValue: \(item.rawType)")
            lines.append("    public init(rawValue: \(item.rawType)) { self.rawValue = rawValue }")
            for constant in item.cases {
                let comment = constant.comment?.trimmingCharacters(in: .whitespacesAndNewlines)
                if let comment, !comment.isEmpty {
                    lines.append("    /// \(comment)")
                }
                let identifier = constant.name
                lines.append("    public static let \(identifier) = \(item.swiftName)(rawValue: \(constant.rawValue))")
            }
        } else {
            lines.append("public enum \(item.swiftName): \(item.rawType) {")
            for constant in item.cases {
                let comment = constant.comment?.trimmingCharacters(in: .whitespacesAndNewlines)
                if let comment, !comment.isEmpty {
                    lines.append("    /// \(comment)")
                }

                switch constant.kind {
                case .standard:
                    lines.append("    case \(constant.name) = \(constant.rawValue)")
                case .alias:
                    lines.append("    public static let \(constant.name) = \(constant.rawValue)")
                }
            }
        }

        lines.append("}")
        return lines.joined(separator: "\n")
    }
}

private let swiftKeywords: Set<String> = [
    "associatedtype", "class", "deinit", "enum", "extension", "fileprivate", "func", "import",
    "init", "inout", "internal", "let", "open", "operator", "private", "protocol", "public",
    "rethrows", "static", "struct", "subscript", "typealias", "var", "break", "case", "continue",
    "default", "defer", "do", "else", "fallthrough", "for", "guard", "if", "in", "repeat", "return",
    "switch", "where", "while", "as", "Any", "catch", "false", "is", "nil", "super", "self",
    "Self", "throw", "throws", "true", "try", "__COLUMN__", "__FILE__", "__FUNCTION__", "__LINE__"
]
