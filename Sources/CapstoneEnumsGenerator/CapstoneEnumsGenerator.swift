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

            var enums = try parseEnums(from: headerURL, configuration: architecture, moduleCache: moduleCache)
            let macroOptionSets = try parseMacroOptionSets(from: headerURL, configuration: architecture)
            let macroEnums = try parseMacroEnums(from: headerURL, configuration: architecture)
            enums.append(contentsOf: macroOptionSets)
            enums.append(contentsOf: macroEnums)

            var unique = [String: ParsedEnum]()
            for item in enums {
                if unique[item.swiftName] == nil {
                    unique[item.swiftName] = item
                }
            }

            let rendered = render(architecture: architecture, enums: unique.values.sorted(by: { $0.swiftName < $1.swiftName }))
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
        let macroOptionSets: [MacroOptionSetConfig]
        let macroEnums: [MacroEnumConfig]

        static let all: [ArchitectureConfig] = [
            .init(swiftPrefix: "Arm", header: "arm.h", cPrefix: "ARM", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Arm64", header: "arm64.h", cPrefix: "ARM64", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Mips", header: "mips.h", cPrefix: "MIPS", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "X86", header: "x86.h", cPrefix: "X86", macroOptionSets: [
                .init(swiftName: "X86Eflags", prefixes: ["X86_EFLAGS_"], rawType: "UInt64", allowedNames: nil),
                .init(swiftName: "X86FpuFlags", prefixes: ["X86_FPU_FLAGS_"], rawType: "UInt64", allowedNames: nil)
            ], macroEnums: []),
            .init(swiftPrefix: "Ppc", header: "ppc.h", cPrefix: "PPC", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Sparc", header: "sparc.h", cPrefix: "SPARC", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Sysz", header: "systemz.h", cPrefix: "SYSZ", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Xcore", header: "xcore.h", cPrefix: "XCORE", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "M68k", header: "m68k.h", cPrefix: "M68K", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Tms320c64x", header: "tms320c64x.h", cPrefix: "TMS320C64X", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "M680x", header: "m680x.h", cPrefix: "M680X", macroOptionSets: [
                .init(swiftName: "M680xIdx", prefixes: ["M680X_IDX_"], rawType: "UInt8", allowedNames: nil),
                .init(swiftName: "M680xOpFlags", prefixes: ["M680X_"], rawType: "UInt8", allowedNames: ["M680X_FIRST_OP_IN_MNEM", "M680X_SECOND_OP_IN_MNEM"])
            ], macroEnums: [
                .init(swiftName: "M680xOffset", prefixes: ["M680X_OFFSET_"], rawType: "UInt8")
            ]),
            .init(swiftPrefix: "Evm", header: "evm.h", cPrefix: "EVM", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Mos65xx", header: "mos65xx.h", cPrefix: "MOS65XX", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Wasm", header: "wasm.h", cPrefix: "WASM", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Bpf", header: "bpf.h", cPrefix: "BPF", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Riscv", header: "riscv.h", cPrefix: "RISCV", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Sh", header: "sh.h", cPrefix: "SH", macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Tricore", header: "tricore.h", cPrefix: "TRICORE", macroOptionSets: [], macroEnums: [])
        ]
    }

    struct MacroOptionSetConfig {
        let swiftName: String
        let prefixes: [String]
        let rawType: String
        let allowedNames: Set<String>?
    }

    struct MacroEnumConfig {
        let swiftName: String
        let prefixes: [String]
        let rawType: String
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
        var args = [
            "-fparse-all-comments",
            "-fmodules-cache-path=\(moduleCache.path)",
            "-I\(headerURL.deletingLastPathComponent().path)"
        ]
        let capstoneHeader = headerURL.deletingLastPathComponent().appendingPathComponent("capstone.h")
        if FileManager.default.fileExists(atPath: capstoneHeader.path) {
            args.append(contentsOf: ["-include", capstoneHeader.path])
        }
        if let sdkRoot = resolvedSDKRoot() {
            args.append(contentsOf: ["-isysroot", sdkRoot])
        }

        let translationUnit = try TranslationUnit(
            filename: headerURL.path,
            commandLineArgs: args
        )

        var enums = [ParsedEnum]()
        translationUnit.visitChildren { cursor in
            guard let enumDecl = cursor as? EnumDecl else { return .continue }
            guard cursorIsInHeader(enumDecl, headerURL: headerURL) else { return .continue }
            let parsed = parseEnum(enumDecl, configuration: configuration)
            enums.append(contentsOf: parsed)
            return .continue
        }

        return enums.sorted(by: { $0.swiftName < $1.swiftName })
    }

    func parseMacroOptionSets(from headerURL: URL, configuration: ArchitectureConfig) throws -> [ParsedEnum] {
        guard !configuration.macroOptionSets.isEmpty else { return [] }
        let contents = try String(contentsOf: headerURL)
        var parsed = [ParsedEnum]()

        for macroConfig in configuration.macroOptionSets {
            var cases = [ParsedEnum.Case]()
            var seenValues = [Int64: String]()

            for line in contents.split(separator: "\n") {
                let trimmed = line.trimmingCharacters(in: .whitespaces)
                guard trimmed.hasPrefix("#define") else { continue }
                let components = trimmed.split(separator: " ", maxSplits: 2, omittingEmptySubsequences: true)
                guard components.count >= 3 else { continue }
                let macroName = String(components[1])

                if let allowed = macroConfig.allowedNames, !allowed.contains(macroName) {
                    continue
                }

                guard let matchedPrefix = macroConfig.prefixes.first(where: { macroName.hasPrefix($0) }) else { continue }
                let valueString = String(components[2])
                guard let value = parseMacroNumericValue(valueString) else { continue }
                guard let fragment = nameFragment(from: macroName, prefix: matchedPrefix) else { continue }
                let swiftCaseName = makeSwiftIdentifier(fragment, lowercaseFirst: true)

                if let existing = seenValues[value] {
                    cases.append(.init(name: swiftCaseName, rawValue: value, comment: nil, kind: .alias(target: existing)))
                } else {
                    seenValues[value] = swiftCaseName
                    cases.append(.init(name: swiftCaseName, rawValue: value, comment: nil, kind: .standard))
                }
            }

            guard !cases.isEmpty else { continue }
            cases.sort(by: { $0.rawValue < $1.rawValue })

            parsed.append(
                ParsedEnum(
                    swiftName: macroConfig.swiftName,
                    rawType: macroConfig.rawType,
                    comment: nil,
                    cases: cases,
                    isOptionSet: true
                )
            )
        }

        return parsed
    }

    func parseMacroEnums(from headerURL: URL, configuration: ArchitectureConfig) throws -> [ParsedEnum] {
        guard !configuration.macroEnums.isEmpty else { return [] }
        let contents = try String(contentsOf: headerURL)
        var parsed = [ParsedEnum]()

        for macroConfig in configuration.macroEnums {
            var cases = [ParsedEnum.Case]()
            var seenValues = [Int64: String]()

            for line in contents.split(separator: "\n") {
                let trimmed = line.trimmingCharacters(in: .whitespaces)
                guard trimmed.hasPrefix("#define") else { continue }
                let components = trimmed.split(separator: " ", maxSplits: 2, omittingEmptySubsequences: true)
                guard components.count >= 3 else { continue }
                let macroName = String(components[1])
                guard let matchedPrefix = macroConfig.prefixes.first(where: { macroName.hasPrefix($0) }) else { continue }
                let valueString = String(components[2])
                guard let value = parseMacroNumericValue(valueString) else { continue }
                guard let fragment = nameFragment(from: macroName, prefix: matchedPrefix) else { continue }
                let swiftCaseName = makeSwiftIdentifier(fragment, lowercaseFirst: true)

                if let existing = seenValues[value] {
                    cases.append(.init(name: swiftCaseName, rawValue: value, comment: nil, kind: .alias(target: existing)))
                } else {
                    seenValues[value] = swiftCaseName
                    cases.append(.init(name: swiftCaseName, rawValue: value, comment: nil, kind: .standard))
                }
            }

            guard !cases.isEmpty else { continue }
            cases.sort(by: { $0.rawValue < $1.rawValue })

            parsed.append(
                ParsedEnum(
                    swiftName: macroConfig.swiftName,
                    rawType: macroConfig.rawType,
                    comment: nil,
                    cases: cases,
                    isOptionSet: false
                )
            )
        }

        return parsed
    }

    func cursorIsInHeader(_ cursor: Cursor, headerURL: URL) -> Bool {
        let cursorFile = cursor.range.start.file.name
        return URL(fileURLWithPath: cursorFile).lastPathComponent == headerURL.lastPathComponent
    }

    func parseEnum(_ enumDecl: EnumDecl, configuration: ArchitectureConfig) -> [ParsedEnum] {
        let constants = enumDecl.constants()
        guard !constants.isEmpty else { return [] }

        guard let basePrefix = enumPrefix(from: constants[0].description), basePrefix.hasPrefix(configuration.cPrefix) else {
            return []
        }

        var groupedCases = [String: ([ParsedEnum.Case], [Int64: String])]()

        for constant in constants {
            let constantName = constant.description
            let chosenPrefix: String
            if constantName.hasPrefix(basePrefix) {
                chosenPrefix = basePrefix
            } else if let altPrefix = enumPrefix(from: constantName), altPrefix.hasPrefix(configuration.cPrefix) {
                chosenPrefix = altPrefix
            } else {
                continue
            }

            guard let fragment = nameFragment(from: constantName, prefix: chosenPrefix) else { continue }

            let swiftCaseName = makeSwiftIdentifier(fragment, lowercaseFirst: true)
            let value = Int64(constant.value)
            let brief = constant.briefComment ?? constant.rawComment

            var entry = groupedCases[chosenPrefix] ?? ([], [:])
            if let existing = entry.1[value] {
                entry.0.append(.init(name: swiftCaseName, rawValue: value, comment: brief, kind: .alias(target: existing)))
            } else {
                entry.1[value] = swiftCaseName
                entry.0.append(.init(name: swiftCaseName, rawValue: value, comment: brief, kind: .standard))
            }
            groupedCases[chosenPrefix] = entry
        }

        var parsedEnums = [ParsedEnum]()
        for prefix in groupedCases.keys.sorted() {
            let cases = groupedCases[prefix]!.0.sorted(by: { $0.rawValue < $1.rawValue })
            let typeBase = swiftTypeName(from: prefix, configuration: configuration)
            let fullSwiftName = configuration.swiftPrefix + typeBase
            var rawType = swiftRawType(from: enumDecl.integerType)
            if fullSwiftName.hasSuffix("Grp") {
                rawType = "UInt8"
            } else if fullSwiftName.hasSuffix("Reg") {
                rawType = "UInt16"
            }

            let optionSet = isBitmaskEnum(cases)
            parsedEnums.append(
                ParsedEnum(
                    swiftName: fullSwiftName,
                    rawType: rawType,
                    comment: enumDecl.briefComment ?? enumDecl.rawComment,
                    cases: cases,
                    isOptionSet: optionSet
                )
            )
        }

        return parsedEnums
    }

    func enumPrefix(from constant: String) -> String? {
        guard let lastSeparator = constant.lastIndex(of: "_") else { return nil }
        return String(constant[..<lastSeparator])
    }

    func nameFragment(from constant: String, prefix: String) -> String? {
        guard constant.hasPrefix(prefix) else { return nil }
        var start = constant.index(constant.startIndex, offsetBy: prefix.count)
        guard start < constant.endIndex else { return nil }
        if constant[start] == "_" {
            start = constant.index(after: start)
        }
        let fragment = constant[start...]
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
        guard values.count >= 3 else { return false }
        return values.allSatisfy { value in
            value > 0 && (value & (value - 1) == 0)
        }
    }

    func parseMacroNumericValue(_ expression: String) -> Int64? {
        let cleaned = expression
            .replacingOccurrences(of: "\\s+", with: "", options: .regularExpression)
            .trimmingCharacters(in: CharacterSet(charactersIn: "()"))

        if let shiftRange = cleaned.range(of: "<<") {
            let lhsString = String(cleaned[..<shiftRange.lowerBound])
            let rhsString = String(cleaned[shiftRange.upperBound...])
            let lhsNumericString = lhsString.replacingOccurrences(of: "(?i)ull|ul|u|l", with: "", options: .regularExpression)
            let base = parseInteger(lhsNumericString) ?? 1
            guard let shift = Int64(rhsString) else { return nil }
            return base << shift
        }

        let numeric = cleaned.replacingOccurrences(of: "(?i)ull|ul|u|l", with: "", options: .regularExpression)
        return parseInteger(numeric)
    }

    func parseInteger(_ text: String) -> Int64? {
        if text.hasPrefix("0x") || text.hasPrefix("0X") {
            return Int64(text.dropFirst(2), radix: 16)
        }
        return Int64(text, radix: 10)
    }

    func resolvedSDKRoot() -> String? {
        if let env = ProcessInfo.processInfo.environment["SDKROOT"], !env.isEmpty {
            return env
        }

        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/usr/bin/xcrun")
        process.arguments = ["--show-sdk-path"]

        let pipe = Pipe()
        process.standardOutput = pipe
        process.standardError = Pipe()

        do {
            try process.run()
            process.waitUntilExit()
            guard process.terminationStatus == 0 else { return nil }
            let data = pipe.fileHandleForReading.readDataToEndOfFile()
            let path = String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
            return path.isEmpty ? nil : path
        } catch {
            return nil
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
                if constant.rawValue == 0 {
                    lines.append("    public static let \(identifier): \(item.swiftName) = []")
                } else {
                    lines.append("    public static let \(identifier) = \(item.swiftName)(rawValue: \(constant.rawValue))")
                }
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
