import Clang
import Foundation

/// Errors that stop generation outright.
///
/// Generation never substitutes a stub or silently drops an output: a wrapper that
/// looks complete but quietly omits what the generator did not understand is worse
/// than one that fails to build. Anything unrecognised is reported here instead.
public enum GenerationError: Error, CustomStringConvertible {
    case missingHeader(String)
    case architectureEnumNotFound
    /// A `cs_arch` member with no matching entry in `ArchitectureConfig.all`.
    /// Not fatal on its own — it only means no wrapper exists yet — but it is
    /// reported so a newly added upstream architecture cannot pass unnoticed.
    case unconfiguredArchitectures([String])
    case structureNotFound(String, String)
    /// The configuration names a struct member that the header does not have —
    /// upstream renamed or removed it.
    case unknownOperandMembers(architecture: String, structure: String, members: [String])
    /// An operand type covered by neither an accessor nor `unexposedTypes`.
    /// Almost always an operand kind added upstream: left alone it would read as
    /// `nil` from every accessor, indistinguishable from "no value".
    case uncoveredOperandTypes(architecture: String, types: [String])

    public var description: String {
        switch self {
        case .missingHeader(let name):
            return "capstone header not found: \(name)"
        case .architectureEnumNotFound:
            return "cs_arch enum not found in capstone.h"
        case .unconfiguredArchitectures(let names):
            return "cs_arch members with no ArchitectureConfig entry: \(names.joined(separator: ", "))"
        case .structureNotFound(let structure, let header):
            return "struct \(structure) not found in \(header)"
        case .unknownOperandMembers(let architecture, let structure, let members):
            return """
            \(architecture): operand configuration names members that \(structure) does not have: \
            \(members.joined(separator: ", ")). Upstream probably renamed or removed them; \
            update the configuration in ArchitectureConfig.all.
            """
        case .uncoveredOperandTypes(let architecture, let types):
            return """
            \(architecture): operand types with no accessor and no entry in unexposedTypes: \
            \(types.joined(separator: ", ")). Add an accessor, or record in unexposedTypes \
            why the type carries no value.
            """
        }
    }
}

public struct CapstoneEnumsGenerator {
    public init() {}

    public func generate(input inputFileURL: URL, output outputFileURL: URL) async throws {
        let includeDirectory = inputFileURL
        let outputDirectory = outputFileURL
        let moduleCache = outputDirectory.appendingPathComponent(".clang-module-cache")

        let architectures = ArchitectureConfig.all
        try FileManager.default.createDirectory(at: outputDirectory, withIntermediateDirectories: true, attributes: nil)
        try FileManager.default.createDirectory(at: moduleCache, withIntermediateDirectories: true, attributes: nil)

        let parsedArchitectures = try parseArchitectures(from: includeDirectory, moduleCache: moduleCache)
        let configuredSuffixes = Set(architectures.map(\.cPrefix))
        let unconfigured = parsedArchitectures
            .map(\.cSuffix)
            .filter { !configuredSuffixes.contains($0) }
        if !unconfigured.isEmpty {
            // Report rather than skip: an architecture added upstream would otherwise
            // be absent from the wrapper with nothing pointing it out.
            print("warning: \(GenerationError.unconfiguredArchitectures(unconfigured))")
        }

        let architectureTable = renderArchitectureTable(
            architectures: parsedArchitectures,
            configurations: architectures
        )
        try architectureTable.write(
            to: outputDirectory.appendingPathComponent("Architecture+Generated.swift"),
            atomically: true,
            encoding: .utf8
        )

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

            guard let operandConfiguration = architecture.operandConfiguration else { continue }
            // The operand-type enum comes from the same parse as everything else,
            // so the coverage check runs against what was actually generated rather
            // than against a second copy of the list.
            let operandTypeCases = unique["\(architecture.swiftPrefix)Op"]?.cases.map(\.name) ?? []
            let operands = try renderOperandAccessors(
                architecture: architecture,
                configuration: operandConfiguration,
                operandTypeCases: operandTypeCases,
                headerURL: headerURL
            )
            try operands.write(
                to: outputDirectory.appendingPathComponent("\(architecture.swiftPrefix)+Operands.swift"),
                atomically: true,
                encoding: .utf8
            )
        }
    }
}

private extension CapstoneEnumsGenerator {
    /// Where an operand accessor reads its value from.
    ///
    /// C says an operand is a union plus a discriminating `type` field, but which
    /// union member goes with which `type` value exists only in the header's
    /// comments. That correspondence is the one thing a parser cannot recover, so
    /// it is declared here and checked against the parsed struct.
    enum OperandValueKind {
        /// A union member holding a generated enum: `op.reg` as `AArch64Reg`.
        case enumeration(member: String, swiftType: String)
        /// A union member holding a scalar: `op.imm` as `Int64`.
        case scalar(member: String, swiftType: String)
        /// A union member holding a C struct wrapped by a hand-written Swift type.
        case structure(member: String, swiftType: String)
        /// The `sysop` field, whose own `sub_type` selects the meaning. Too
        /// irregular to generate; a hand-written accessor covers it.
        case handWritten(member: String, swiftType: String)

        var member: String {
            switch self {
            case .enumeration(let member, _), .scalar(let member, _),
                 .structure(let member, _), .handWritten(let member, _):
                return member
            }
        }
    }

    struct OperandAccessor {
        /// Swift property name, e.g. `register`.
        let name: String
        /// Operand-type enum cases for which this accessor is non-nil, named as the
        /// generated Swift cases (`reg`, `immRange`), not as the C constants.
        let operandTypes: [String]
        let value: OperandValueKind
        let documentation: String
    }

    struct OperandConfiguration {
        /// C struct backing one operand, e.g. `cs_aarch64_op`.
        let cStructure: String
        let accessors: [OperandAccessor]
        /// Operand types that deliberately get no accessor of their own, each with
        /// the reason. Listing one here is a decision on record; an operand type
        /// that is neither covered by an accessor nor listed here stops generation.
        let unexposedTypes: [String: String]
    }

    /// How an architecture surfaces as an `Instruction` subclass.
    ///
    /// Absent for architectures whose enums are generated but which have no wrapper
    /// yet — SH and TriCore are in that state. Such an architecture still appears in
    /// the `Architecture` enum, because that enum mirrors `cs_arch` and leaving a
    /// case out would misreport what the engine supports.
    struct InstructionClassConfig {
        /// Swift class name. Irregular often enough that it cannot be derived:
        /// `CS_ARCH_PPC` is `PowerPCInstruction`, `CS_ARCH_EVM` is `EthereumInstruction`.
        let className: String
        /// Architectures with no register file — EVM, WASM — subclass
        /// `PlatformInstructionBase`, which drops the register type parameter.
        let hasRegisters: Bool
        /// Doc comment above the class declaration.
        let documentation: String
    }

    struct ArchitectureConfig {
        /// Prefix of the generated Swift enum types, e.g. `AArch64` in `AArch64Reg`.
        let swiftPrefix: String
        let header: String
        /// Prefix of the C enum constants, e.g. `AARCH64` in `AARCH64_REG_X0`.
        ///
        /// Doubles as the `cs_arch` member suffix: every architecture's constant is
        /// `CS_ARCH_<cPrefix>`. Verified against capstone v6's `cs_arch` for all
        /// entries below.
        let cPrefix: String
        /// Not derivable from `cPrefix` — `PPC` is guarded by `CAPSTONE_HAS_POWERPC`.
        let swiftDefine: String
        let instructionClass: InstructionClassConfig?
        let macroOptionSets: [MacroOptionSetConfig]
        let macroEnums: [MacroEnumConfig]
        /// Present once the architecture's operand accessors are generated rather
        /// than hand-written. Absent means the hand-written wrapper still applies.
        let operandConfiguration: OperandConfiguration?
        /// C enum constant prefixes that do not begin with `cPrefix`, mapped to the
        /// Swift type to generate for them.
        ///
        /// v6 spells the AArch64 condition codes `AArch64CC_EQ`, matching LLVM
        /// rather than capstone's own `AARCH64_` convention, so a prefix test alone
        /// skips the enum entirely — silently, which is exactly what this generator
        /// is not supposed to do.
        let extraEnumPrefixes: [String: String]

        init(
            swiftPrefix: String,
            header: String,
            cPrefix: String,
            swiftDefine: String,
            instructionClass: InstructionClassConfig?,
            macroOptionSets: [MacroOptionSetConfig],
            macroEnums: [MacroEnumConfig],
            operandConfiguration: OperandConfiguration? = nil,
            extraEnumPrefixes: [String: String] = [:]
        ) {
            self.swiftPrefix = swiftPrefix
            self.header = header
            self.cPrefix = cPrefix
            self.swiftDefine = swiftDefine
            self.instructionClass = instructionClass
            self.macroOptionSets = macroOptionSets
            self.macroEnums = macroEnums
            self.operandConfiguration = operandConfiguration
            self.extraEnumPrefixes = extraEnumPrefixes
        }

        /// Whether a C enum constant prefix belongs to this architecture.
        func accepts(enumPrefix prefix: String) -> Bool {
            prefix.hasPrefix(cPrefix) || extraEnumPrefixes.keys.contains { prefix.hasPrefix($0) }
        }

        static let all: [ArchitectureConfig] = [
            .init(swiftPrefix: "Arm", header: "arm.h", cPrefix: "ARM", swiftDefine: "CAPSTONE_HAS_ARM",
                  instructionClass: .init(className: "ArmInstruction", hasRegisters: true, documentation: "ARM Instruction"),
                  macroOptionSets: [], macroEnums: []),
            // v6 renamed ARM64 to AArch64 throughout. The Swift spelling keeps both
            // capitals; makeSwiftIdentifier would otherwise flatten it to "Aarch64".
            .init(swiftPrefix: "AArch64", header: "aarch64.h", cPrefix: "AARCH64", swiftDefine: "CAPSTONE_HAS_AARCH64",
                  instructionClass: .init(className: "AArch64Instruction", hasRegisters: true, documentation: "AArch64 Instruction, also known as ARM64"),
                  macroOptionSets: [], macroEnums: [],
                  operandConfiguration: .init(
                      cStructure: "cs_aarch64_op",
                      accessors: [
                          .init(name: "register", operandTypes: ["reg"],
                                value: .enumeration(member: "reg", swiftType: "AArch64Reg"),
                                documentation: "Register value for `reg` operands."),
                          .init(name: "immediateValue", operandTypes: ["imm", "cimm", "implicitImm0"],
                                value: .scalar(member: "imm", swiftType: "Int64"),
                                documentation: "Immediate value for `imm`, `cimm` and `implicitImm0` operands."),
                          .init(name: "immediateRange", operandTypes: ["immRange"],
                                value: .structure(member: "imm_range", swiftType: "ImmediateRange"),
                                documentation: "Immediate range for `immRange` operands."),
                          .init(name: "doubleValue", operandTypes: ["fp"],
                                value: .scalar(member: "fp", swiftType: "Double"),
                                documentation: "Floating point value for `fp` operands."),
                          .init(name: "memory", operandTypes: ["mem"],
                                value: .structure(member: "mem", swiftType: "Memory"),
                                documentation: "Base, index and displacement for `mem` operands."),
                          .init(name: "matrixOperand", operandTypes: ["sme"],
                                value: .structure(member: "sme", swiftType: "MatrixOperand"),
                                documentation: "SME matrix operand, for `sme` operands."),
                          .init(name: "predicate", operandTypes: ["pred"],
                                value: .structure(member: "pred", swiftType: "Predicate"),
                                documentation: "Predicate register operand, for `pred` operands."),
                          // The operand type only says which of sysop's three unions
                          // holds the value; sysop.sub_type says what it actually is.
                          // Verified against the AArch64_set_detail_op_sys call sites
                          // in arch/AArch64/AArch64Mapping.c, which pass exactly these
                          // three. Decoding sub_type is hand-written.
                          .init(name: "systemOperand",
                                operandTypes: ["sysreg", "sysimm", "sysalias"],
                                value: .handWritten(member: "sysop", swiftType: "SystemOperand"),
                                documentation: "System operand. Its `subType` says which kind, and `value` decodes it."),
                      ],
                      unexposedTypes: [
                          "invalid": "Not a real operand: marks an uninitialised slot.",
                          // capstone never assigns these to an operand's `type` --
                          // they appear only as sysop.sub_type, reached through
                          // `systemOperand`. Giving each one an accessor would add a
                          // property that is nil for every instruction.
                          "regMrs": "Only ever a sysop sub_type; read via systemOperand.",
                          "regMsr": "Only ever a sysop sub_type; read via systemOperand.",
                          "at": "Only ever a sysop sub_type; read via systemOperand.",
                          "db": "Only ever a sysop sub_type; read via systemOperand.",
                          "dc": "Only ever a sysop sub_type; read via systemOperand.",
                          "isb": "Only ever a sysop sub_type; read via systemOperand.",
                          "tsb": "Only ever a sysop sub_type; read via systemOperand.",
                          "prfm": "Only ever a sysop sub_type; read via systemOperand.",
                          "sveprfm": "Only ever a sysop sub_type; read via systemOperand.",
                          "rprfm": "Only ever a sysop sub_type; read via systemOperand.",
                          "pstateimm015": "Only ever a sysop sub_type; read via systemOperand.",
                          "pstateimm01": "Only ever a sysop sub_type; read via systemOperand.",
                          "psb": "Only ever a sysop sub_type; read via systemOperand.",
                          "bti": "Only ever a sysop sub_type; read via systemOperand.",
                          "svepredpat": "Only ever a sysop sub_type; read via systemOperand.",
                          "sveveclenspecifier": "Only ever a sysop sub_type; read via systemOperand.",
                          "tlbi": "Only ever a sysop sub_type; read via systemOperand.",
                          "ic": "Only ever a sysop sub_type; read via systemOperand.",
                          "dbnxs": "Only ever a sysop sub_type; read via systemOperand.",
                          "exactfpimm": "Only ever a sysop sub_type; read via systemOperand.",
                          "svcr": "Only ever a sysop sub_type; read via systemOperand.",
                          // Declared in cs_operand.h for architectures that split a
                          // memory operand; AArch64 reports memory as `mem` and never
                          // sets these. Confirmed: zero references under arch/AArch64.
                          "memReg": "AArch64 reports memory operands as `mem`; never set.",
                          "memImm": "AArch64 reports memory operands as `mem`; never set.",
                      ]
                  ),
                  extraEnumPrefixes: ["AArch64CC": "AArch64CondCode"]),
            .init(swiftPrefix: "Mips", header: "mips.h", cPrefix: "MIPS", swiftDefine: "CAPSTONE_HAS_MIPS",
                  instructionClass: .init(className: "MipsInstruction", hasRegisters: true, documentation: "MIPS Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "X86", header: "x86.h", cPrefix: "X86", swiftDefine: "CAPSTONE_HAS_X86",
                  instructionClass: .init(className: "X86Instruction", hasRegisters: true, documentation: "X86 Instruction"),
                  macroOptionSets: [
                      .init(swiftName: "X86Eflags", prefixes: ["X86_EFLAGS_"], rawType: "UInt64", allowedNames: nil),
                      .init(swiftName: "X86FpuFlags", prefixes: ["X86_FPU_FLAGS_"], rawType: "UInt64", allowedNames: nil),
                  ], macroEnums: []),
            .init(swiftPrefix: "Ppc", header: "ppc.h", cPrefix: "PPC", swiftDefine: "CAPSTONE_HAS_POWERPC",
                  instructionClass: .init(className: "PowerPCInstruction", hasRegisters: true, documentation: "PowerPC Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Sparc", header: "sparc.h", cPrefix: "SPARC", swiftDefine: "CAPSTONE_HAS_SPARC",
                  instructionClass: .init(className: "SparcInstruction", hasRegisters: true, documentation: "SPARC Instruction"),
                  macroOptionSets: [], macroEnums: []),
            // v6 renamed SYSZ to SYSTEMZ.
            .init(swiftPrefix: "SystemZ", header: "systemz.h", cPrefix: "SYSTEMZ", swiftDefine: "CAPSTONE_HAS_SYSTEMZ",
                  instructionClass: .init(className: "SystemZInstruction", hasRegisters: true, documentation: "SystemZ Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Xcore", header: "xcore.h", cPrefix: "XCORE", swiftDefine: "CAPSTONE_HAS_XCORE",
                  instructionClass: .init(className: "XCoreInstruction", hasRegisters: true, documentation: "XCore Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "M68k", header: "m68k.h", cPrefix: "M68K", swiftDefine: "CAPSTONE_HAS_M68K",
                  instructionClass: .init(className: "M68kInstruction", hasRegisters: true, documentation: "M68K Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Tms320c64x", header: "tms320c64x.h", cPrefix: "TMS320C64X", swiftDefine: "CAPSTONE_HAS_TMS320C64X",
                  instructionClass: .init(className: "TMS320C64xInstruction", hasRegisters: true, documentation: "TMS320C64x Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "M680x", header: "m680x.h", cPrefix: "M680X", swiftDefine: "CAPSTONE_HAS_M680X",
                  instructionClass: .init(className: "M680xInstruction", hasRegisters: true, documentation: "M680x Instruction"),
                  macroOptionSets: [
                      .init(swiftName: "M680xIdx", prefixes: ["M680X_IDX_"], rawType: "UInt8", allowedNames: nil),
                      .init(swiftName: "M680xOpFlags", prefixes: ["M680X_"], rawType: "UInt8", allowedNames: ["M680X_FIRST_OP_IN_MNEM", "M680X_SECOND_OP_IN_MNEM"]),
                  ], macroEnums: [
                      .init(swiftName: "M680xOffset", prefixes: ["M680X_OFFSET_"], rawType: "UInt8"),
                  ]),
            .init(swiftPrefix: "Evm", header: "evm.h", cPrefix: "EVM", swiftDefine: "CAPSTONE_HAS_EVM",
                  instructionClass: .init(className: "EthereumInstruction", hasRegisters: false, documentation: "Ethereum Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Mos65xx", header: "mos65xx.h", cPrefix: "MOS65XX", swiftDefine: "CAPSTONE_HAS_MOS65XX",
                  instructionClass: .init(className: "Mos65xxInstruction", hasRegisters: true, documentation: "MOS65xx Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Wasm", header: "wasm.h", cPrefix: "WASM", swiftDefine: "CAPSTONE_HAS_WASM",
                  instructionClass: .init(className: "WasmInstruction", hasRegisters: false, documentation: "WebAssembly Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Bpf", header: "bpf.h", cPrefix: "BPF", swiftDefine: "CAPSTONE_HAS_BPF",
                  instructionClass: .init(className: "BpfInstruction", hasRegisters: true, documentation: "Berkeley Packet Filter Instruction"),
                  macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Riscv", header: "riscv.h", cPrefix: "RISCV", swiftDefine: "CAPSTONE_HAS_RISCV",
                  instructionClass: .init(className: "RiscvInstruction", hasRegisters: true, documentation: "RISCV Instruction"),
                  macroOptionSets: [], macroEnums: []),
            // Enums only so far: no wrapper has been written for these.
            .init(swiftPrefix: "Sh", header: "sh.h", cPrefix: "SH", swiftDefine: "CAPSTONE_HAS_SH",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Tricore", header: "tricore.h", cPrefix: "TRICORE", swiftDefine: "CAPSTONE_HAS_TRICORE",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
            // Added in v6. Enums only for now; wrappers are out of scope for the
            // v6 adaptation proposal.
            .init(swiftPrefix: "Alpha", header: "alpha.h", cPrefix: "ALPHA", swiftDefine: "CAPSTONE_HAS_ALPHA",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Hppa", header: "hppa.h", cPrefix: "HPPA", swiftDefine: "CAPSTONE_HAS_HPPA",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "LoongArch", header: "loongarch.h", cPrefix: "LOONGARCH", swiftDefine: "CAPSTONE_HAS_LOONGARCH",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Xtensa", header: "xtensa.h", cPrefix: "XTENSA", swiftDefine: "CAPSTONE_HAS_XTENSA",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
            .init(swiftPrefix: "Arc", header: "arc.h", cPrefix: "ARC", swiftDefine: "CAPSTONE_HAS_ARC",
                  instructionClass: nil, macroOptionSets: [], macroEnums: []),
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

        guard let basePrefix = enumPrefix(from: constants[0].description),
              configuration.accepts(enumPrefix: basePrefix)
        else {
            return []
        }

        var groupedCases = [String: ([ParsedEnum.Case], [Int64: String])]()

        for constant in constants {
            let constantName = constant.description
            let chosenPrefix: String
            if constantName.hasPrefix(basePrefix) {
                chosenPrefix = basePrefix
            } else if let altPrefix = enumPrefix(from: constantName), configuration.accepts(enumPrefix: altPrefix) {
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
            var rawType = (try? swiftRawType(from: enumDecl.integerType)) ?? "UInt32"
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
        if let explicit = configuration.extraEnumPrefixes[cPrefix] {
            // Already a full Swift type name; the architecture prefix is added by
            // the caller, so hand back the part after it.
            return explicit.hasPrefix(configuration.swiftPrefix)
                ? String(explicit.dropFirst(configuration.swiftPrefix.count))
                : explicit
        }
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
        let size = (try? type.sizeOf()) ?? 4
        let isUnsigned = type.isUnsignedIntegerType

        switch (size, isUnsigned) {
        case (1, false):
            return "Int8"
        case (1, true):
            return "UInt8"
        case (2, false):
            return "Int16"
        case (2, true):
            return "UInt16"
        case (8, false):
            return "Int64"
        case (8, true):
            return "UInt64"
        default:
            return isUnsigned ? "UInt32" : "Int32"
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

    /// Member names of a C struct, including those of nested anonymous unions,
    /// which Swift flattens into the parent struct on import.
    ///
    /// Only names are collected: the configuration declares the Swift type, and what
    /// this has to catch is a member that was renamed or removed upstream.
    func parseStructureMembers(named structureName: String, in headerURL: URL) throws -> Set<String> {
        let contents = try String(contentsOf: headerURL, encoding: .utf8)
        let pattern = "typedef\\s+struct\\s+\(structureName)\\s*\\{"
        guard let opening = contents.range(of: pattern, options: .regularExpression) else {
            throw GenerationError.structureNotFound(structureName, headerURL.lastPathComponent)
        }

        // Walk to the matching close brace; the struct contains nested braces.
        var depth = 0
        var bodyStart: String.Index?
        var bodyEnd: String.Index?
        var index = contents.index(before: opening.upperBound)
        while index < contents.endIndex {
            let character = contents[index]
            if character == "{" {
                depth += 1
                if depth == 1 { bodyStart = contents.index(after: index) }
            } else if character == "}" {
                depth -= 1
                if depth == 0 { bodyEnd = index; break }
            }
            index = contents.index(after: index)
        }
        guard let bodyStart, let bodyEnd else {
            throw GenerationError.structureNotFound(structureName, headerURL.lastPathComponent)
        }

        // Strip comments, then take the identifier before each ';' or '[' —
        // the declared name of every member, at any nesting depth.
        var body = String(contents[bodyStart ..< bodyEnd])
        body = body.replacingOccurrences(of: "/\\*.*?\\*/", with: " ", options: [.regularExpression])
        body = body.replacingOccurrences(of: "//[^\n]*", with: " ", options: [.regularExpression])

        var members = Set<String>()
        for declaration in body.split(separator: ";") {
            let trimmed = declaration.trimmingCharacters(in: .whitespacesAndNewlines)
            guard !trimmed.isEmpty else { continue }
            // Drop an array suffix, then take the trailing identifier.
            let withoutArray = trimmed.replacingOccurrences(of: "\\[[^\\]]*\\]", with: "", options: [.regularExpression])
            guard let match = withoutArray.range(of: "[A-Za-z_][A-Za-z0-9_]*$", options: .regularExpression) else { continue }
            members.insert(String(withoutArray[match]))
        }
        return members
    }

    struct ParsedArchitecture {
        /// `cs_arch` member suffix, e.g. `AARCH64` from `CS_ARCH_AARCH64`.
        let cSuffix: String
        /// Swift case name, e.g. `aarch64`.
        let caseName: String
        let rawValue: Int64
        let comment: String?
    }

    /// Reads `cs_arch` out of capstone.h.
    ///
    /// The raw values are taken from the header rather than assumed: v6 reorders
    /// nothing today, but a hand-maintained copy of this table is exactly what went
    /// stale before — the previous hand-written `Architecture` enum stopped at
    /// `riscv = 15` and never gained the seven architectures v6 added.
    func parseArchitectures(from includeDirectory: URL, moduleCache: URL) throws -> [ParsedArchitecture] {
        let headerURL = includeDirectory.appendingPathComponent("capstone.h")
        guard FileManager.default.fileExists(atPath: headerURL.path) else {
            throw GenerationError.missingHeader(headerURL.lastPathComponent)
        }

        var args = [
            "-fparse-all-comments",
            "-fmodules-cache-path=\(moduleCache.path)",
            "-I\(includeDirectory.path)",
        ]
        if let sdkRoot = resolvedSDKRoot() {
            args.append(contentsOf: ["-isysroot", sdkRoot])
        }

        let translationUnit = try TranslationUnit(filename: headerURL.path, commandLineArgs: args)

        var architectures = [ParsedArchitecture]()
        translationUnit.visitChildren { cursor in
            guard let enumDecl = cursor as? EnumDecl else { return .continue }
            let constants = enumDecl.constants()
            guard constants.contains(where: { $0.description.hasPrefix("CS_ARCH_") }) else { return .continue }

            for constant in constants {
                let name = constant.description
                guard name.hasPrefix("CS_ARCH_") else { continue }
                // Sentinels, not architectures.
                guard name != "CS_ARCH_MAX", name != "CS_ARCH_ALL" else { continue }
                let suffix = String(name.dropFirst("CS_ARCH_".count))
                architectures.append(
                    .init(
                        cSuffix: suffix,
                        caseName: self.makeSwiftIdentifier(suffix, lowercaseFirst: true),
                        rawValue: Int64(constant.value),
                        comment: constant.briefComment ?? constant.rawComment
                    )
                )
            }
            return .continue
        }

        guard !architectures.isEmpty else {
            throw GenerationError.architectureEnumNotFound
        }
        return architectures.sorted(by: { $0.rawValue < $1.rawValue })
    }

    /// Renders the `Architecture` enum, the `Instruction` subclasses and the
    /// architecture-to-class dispatch.
    ///
    /// An architecture present in `cs_arch` but absent from `ArchitectureConfig.all`
    /// still gets a case — the enum mirrors what the engine supports, not what this
    /// wrapper covers — and falls through to the unsupported branch of the dispatch.
    func renderArchitectureTable(
        architectures: [ParsedArchitecture],
        configurations: [ArchitectureConfig]
    ) -> String {
        let configurationsBySuffix = Dictionary(
            configurations.map { ($0.cPrefix, $0) },
            uniquingKeysWith: { first, _ in first }
        )

        var lines = [String]()
        lines.append("// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT.")
        lines.append("// Regenerate with: swift package plugin generate-enums")
        lines.append("")
        lines.append("import Ccapstone")
        lines.append("")
        lines.append("/// Architecture type.")
        lines.append("///")
        lines.append("/// Mirrors `cs_arch`. A case here says the engine knows the architecture, not")
        lines.append("/// that this package wraps it — see `instructionClass`.")
        lines.append("public enum Architecture: UInt32 {")
        for architecture in architectures {
            if let comment = architecture.comment?.trimmingCharacters(in: .whitespacesAndNewlines), !comment.isEmpty {
                lines.append("    /// \(comment)")
            }
            lines.append("    case \(architecture.caseName) = \(architecture.rawValue)")
        }
        lines.append("}")
        lines.append("")

        for architecture in architectures {
            guard let configuration = configurationsBySuffix[architecture.cSuffix],
                  let instructionClass = configuration.instructionClass
            else { continue }

            let prefix = configuration.swiftPrefix
            let baseClass = instructionClass.hasRegisters
                ? "PlatformInstruction<\(prefix)Ins, \(prefix)Grp, \(prefix)Reg>"
                : "PlatformInstructionBase<\(prefix)Ins, \(prefix)Grp>"

            lines.append("#if \(configuration.swiftDefine)")
            lines.append("/// \(instructionClass.documentation)")
            lines.append("public class \(instructionClass.className): \(baseClass) {}")
            lines.append("#endif")
            lines.append("")
        }

        lines.append("public extension Architecture {")
        lines.append("    /// The class for disassembled instructions used for this architecture.")
        lines.append("    ///")
        lines.append("    /// This is a subclass of `Instruction`, with accessors for operands and")
        lines.append("    /// architecture-specific properties.")
        lines.append("    var instructionClass: Instruction.Type {")
        lines.append("        switch self {")
        for architecture in architectures {
            guard let configuration = configurationsBySuffix[architecture.cSuffix],
                  let instructionClass = configuration.instructionClass
            else { continue }
            lines.append("        #if \(configuration.swiftDefine)")
            lines.append("        case .\(architecture.caseName):")
            lines.append("            return \(instructionClass.className).self")
            lines.append("        #endif")
        }
        lines.append("        default:")
        // Two distinct situations, and conflating them sends the reader down the
        // wrong path: a trait that was never enabled is fixed in Package.swift,
        // an architecture this package does not wrap yet is not.
        lines.append("            if Architecture.wrapped.contains(self) {")
        lines.append("                fatalError(\"Architecture \\(self) is not compiled in. Enable the corresponding package trait.\")")
        lines.append("            } else {")
        lines.append("                fatalError(\"Architecture \\(self) is not wrapped by swift-capstone yet.\")")
        lines.append("            }")
        lines.append("        }")
        lines.append("    }")
        lines.append("")
        lines.append("    /// Architectures this package provides a wrapper for, whether or not the")
        lines.append("    /// corresponding trait is enabled in this build.")
        lines.append("    static var wrapped: Set<Architecture> {")
        let wrappedCases = architectures
            .filter { configurationsBySuffix[$0.cSuffix]?.instructionClass != nil }
            .map { ".\($0.caseName)" }
        lines.append("        [\(wrappedCases.joined(separator: ", "))]")
        lines.append("    }")
        lines.append("}")
        lines.append("")
        return lines.joined(separator: "\n")
    }

    /// Checks the operand configuration against the header, then renders the
    /// operand accessors.
    ///
    /// Both checks exist because the failure they prevent is silent: a stale member
    /// name or an operand type nobody wired up produces an accessor that returns
    /// `nil` forever, which reads exactly like "this operand has no such value".
    func renderOperandAccessors(
        architecture: ArchitectureConfig,
        configuration: OperandConfiguration,
        operandTypeCases: [String],
        headerURL: URL
    ) throws -> String {
        let members = try parseStructureMembers(named: configuration.cStructure, in: headerURL)
        let referenced = Set(configuration.accessors.map(\.value.member))
        let unknown = referenced.subtracting(members).sorted()
        if !unknown.isEmpty {
            throw GenerationError.unknownOperandMembers(
                architecture: architecture.swiftPrefix,
                structure: configuration.cStructure,
                members: unknown
            )
        }

        let covered = Set(configuration.accessors.flatMap(\.operandTypes))
            .union(configuration.unexposedTypes.keys)
        let uncovered = operandTypeCases.filter { !covered.contains($0) }.sorted()
        if !uncovered.isEmpty {
            throw GenerationError.uncoveredOperandTypes(
                architecture: architecture.swiftPrefix,
                types: uncovered
            )
        }

        let prefix = architecture.swiftPrefix
        var lines = [String]()
        lines.append("// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT.")
        lines.append("// Regenerate with: swift package plugin generate-enums")
        lines.append("//")
        lines.append("// Operand-type to union-member mapping comes from the operand configuration")
        lines.append("// in CapstoneEnumsGenerator; the C header only carries it in comments.")
        lines.append("")
        lines.append("#if \(architecture.swiftDefine)")
        lines.append("import Ccapstone")
        lines.append("")
        lines.append("public extension \(prefix)Instruction.Operand {")

        for accessor in configuration.accessors {
            let conditions = accessor.operandTypes.map { "type == .\($0)" }.joined(separator: " || ")
            lines.append("    /// \(accessor.documentation)")
            lines.append("    ///")
            lines.append("    /// `nil` when the operand is not of a matching type.")

            switch accessor.value {
            case .enumeration(let member, let swiftType):
                lines.append("    var \(accessor.name): \(swiftType)? {")
                lines.append("        guard \(conditions) else { return nil }")
                // The member is an imported C enum, not an integer, so it goes
                // through optionalEnumCast rather than a numericCast.
                lines.append("        let value: \(swiftType)? = optionalEnumCast(op.\(member))")
                lines.append("        return value")
                lines.append("    }")
            case .scalar(let member, let swiftType):
                lines.append("    var \(accessor.name): \(swiftType)? {")
                lines.append("        guard \(conditions) else { return nil }")
                lines.append("        return op.\(member)")
                lines.append("    }")
            case .structure(let member, let swiftType):
                lines.append("    var \(accessor.name): \(swiftType)? {")
                lines.append("        guard \(conditions) else { return nil }")
                lines.append("        return \(swiftType)(op.\(member))")
                lines.append("    }")
            case .handWritten(let member, let swiftType):
                // The guard and the nil case are still generated, so the set of
                // operand types selecting it stays in one place; only the value
                // construction is hand-written.
                lines.append("    var \(accessor.name): \(swiftType)? {")
                lines.append("        guard \(conditions) else { return nil }")
                lines.append("        return \(swiftType)(op.\(member))")
                lines.append("    }")
            }
            lines.append("")
        }

        lines.append("    /// Operand types that carry no value of their own.")
        for (type, reason) in configuration.unexposedTypes.sorted(by: { $0.key < $1.key }) {
            lines.append("    /// - `\(type)`: \(reason)")
        }
        lines.append("    internal static var unexposedOperandTypes: Set<\(prefix)Op> {")
        let unexposed = configuration.unexposedTypes.keys.sorted().map { ".\($0)" }
        lines.append("        [\(unexposed.joined(separator: ", "))]")
        lines.append("    }")
        lines.append("}")
        lines.append("#endif")
        lines.append("")
        return lines.joined(separator: "\n")
    }

    func render(architecture: ArchitectureConfig, enums: [ParsedEnum]) -> String {
        var lines = [String]()
        lines.append("#if \(architecture.swiftDefine)")
        lines.append("// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (\(architecture.swiftPrefix))")
        lines.append("")

        for item in enums {
            lines.append(render(enum: item))
            lines.append("")
        }

        lines.append("#endif")
        lines.append("")
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
