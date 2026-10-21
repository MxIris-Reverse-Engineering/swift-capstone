import CapstoneEnumsGenerator
import Foundation
import Testing

/// The smallest capstone.h `generate()` needs: it reads `cs_arch` to emit the
/// architecture table. The architecture it declares must be the one whose header
/// the fixture supplies, since the generator requires a header for every
/// architecture capstone.h has.
private func writeMinimalCapstoneHeader(to includeDirectory: URL, declaring architecture: String = "ARM") throws {
    let header = """
    typedef enum cs_arch {
        CS_ARCH_\(architecture) = 0,
        CS_ARCH_MAX,
        CS_ARCH_ALL = 0xFFFF,
    } cs_arch;
    """
    try header.write(
        to: includeDirectory.appendingPathComponent("capstone.h"),
        atomically: true,
        encoding: .utf8
    )
}

@Suite struct CapstoneEnumsGeneratorTests {
    @Test func generatesSwiftEnumFromHeader() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
        try writeMinimalCapstoneHeader(to: includeDir)
        try fileManager.createDirectory(at: outputDir, withIntermediateDirectories: true)

        let header = """
        typedef enum arm_test {
            ARM_TEST_INVALID = 0,
            ARM_TEST_FOO = 1,
            ARM_TEST_BAR = 3,
            ARM_TEST_FOO_ALIAS = ARM_TEST_FOO
        } arm_test;
        """
        let headerURL = includeDir.appendingPathComponent("arm.h")
        try header.write(to: headerURL, atomically: true, encoding: .utf8)

        let generator = CapstoneEnumsGenerator()
        try await generator.generate(input: includeDir, output: outputDir)

        let generated = outputDir.appendingPathComponent("ArmEnums.swift")
        let contents = try String(contentsOf: generated)

        #expect(contents.contains("public enum ArmTest"))
        #expect(contents.contains("case foo = 1"))
        #expect(contents.contains("case bar = 3"))
        // ARM_TEST_FOO_ALIAS = ARM_TEST_FOO: an alias is a value of the enum, the
        // case it names, not a bare integer that compares with nothing.
        #expect(contents.contains("public static let fooAlias: ArmTest = .foo"))
    }

    @Test func detectsOptionSetStyleBitmasks() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
        try writeMinimalCapstoneHeader(to: includeDir)
        try fileManager.createDirectory(at: outputDir, withIntermediateDirectories: true)

        let header = """
        typedef enum arm_flags {
            ARM_FLAGS_INVALID = 0,
            ARM_FLAGS_READ = 1,
            ARM_FLAGS_WRITE = 2,
            ARM_FLAGS_EXECUTE = 4
        } arm_flags;
        """
        let headerURL = includeDir.appendingPathComponent("arm.h")
        try header.write(to: headerURL, atomically: true, encoding: .utf8)

        let generator = CapstoneEnumsGenerator()
        try await generator.generate(input: includeDir, output: outputDir)

        let generated = outputDir.appendingPathComponent("ArmEnums.swift")
        let contents = try String(contentsOf: generated)

        #expect(contents.contains("public struct ArmFlags: OptionSet"))
        #expect(contents.contains("public static let read = ArmFlags(rawValue: 1)"))
        #expect(contents.contains("public static let execute = ArmFlags(rawValue: 4)"))
    }

    @Test func parsesMacroDefinedOptionSets() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
        try writeMinimalCapstoneHeader(to: includeDir, declaring: "X86")
        try fileManager.createDirectory(at: outputDir, withIntermediateDirectories: true)

        let header = """
        #define X86_EFLAGS_MODIFY_CF (1ULL << 1)
        #define X86_EFLAGS_RESET_OF (1ULL << 21)
        #define X86_FPU_FLAGS_MODIFY_C0 (1ULL << 0)
        #define X86_FPU_FLAGS_TEST_C3 (1ULL << 19)
        """
        let headerURL = includeDir.appendingPathComponent("x86.h")
        try header.write(to: headerURL, atomically: true, encoding: .utf8)

        let generator = CapstoneEnumsGenerator()
        try await generator.generate(input: includeDir, output: outputDir)

        let contents = try String(contentsOf: outputDir.appendingPathComponent("X86Enums.swift"))
        #expect(contents.contains("public struct X86Eflags: OptionSet"))
        #expect(contents.contains("public static let modifyCf = X86Eflags(rawValue: 2)"))
        #expect(contents.contains("public static let resetOf = X86Eflags(rawValue: 2097152)"))
        #expect(contents.contains("public struct X86FpuFlags: OptionSet"))
        #expect(contents.contains("public static let modifyC0 = X86FpuFlags(rawValue: 1)"))
        #expect(contents.contains("public static let testC3 = X86FpuFlags(rawValue: 524288)"))
    }

    /// capstone spells some distinct constants alike but for their underscores:
    /// PowerPC's `PPC_INS_ALIAS_MR` and `PPC_INS_ALIAS_MR_`, the record form, and
    /// Xtensa's `XTENSA_INS_L32I` and `XTENSA_INS__L32I`. Dropping the underscores
    /// gave each pair one Swift name, and the enum stopped compiling as soon as its
    /// trait was enabled.
    @Test func constantsDifferingOnlyInUnderscoresGetDistinctNames() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
        try writeMinimalCapstoneHeader(to: includeDir)
        try fileManager.createDirectory(at: outputDir, withIntermediateDirectories: true)

        let header = """
        typedef enum arm_insn {
            ARM_INS_INVALID = 0,
            ARM_INS_ALIAS_MR,
            ARM_INS_ALIAS_MR_,
            ARM_INS__ALIAS_MR,
            ARM_INS_ALIAS_MR_SAME = ARM_INS_ALIAS_MR_,
        } arm_insn;
        """
        try header.write(to: includeDir.appendingPathComponent("arm.h"), atomically: true, encoding: .utf8)

        try await CapstoneEnumsGenerator().generate(input: includeDir, output: outputDir)

        let contents = try String(contentsOf: outputDir.appendingPathComponent("ArmEnums.swift"), encoding: .utf8)
        #expect(contents.contains("case aliasMr = 1"))
        #expect(contents.contains("case aliasMr_ = 2"))
        #expect(contents.contains("case _aliasMr = 3"))
        #expect(contents.contains("public static let aliasMrSame: ArmIns = .aliasMr_"))
    }

    /// Models an upstream header rename, as v6 did with arm64.h: the files were
    /// generated, then the header they came from disappeared. Skipping the
    /// architecture leaves those files alone, so `--check` would call them current.
    @Test func missingHeaderOfDeclaredArchitectureFailsTheCheck() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
        try writeMinimalCapstoneHeader(to: includeDir)
        try fileManager.createDirectory(at: outputDir, withIntermediateDirectories: true)

        let headerURL = includeDir.appendingPathComponent("arm.h")
        try "typedef enum arm_test { ARM_TEST_INVALID = 0 } arm_test;"
            .write(to: headerURL, atomically: true, encoding: .utf8)
        let generator = CapstoneEnumsGenerator()
        try await generator.generate(input: includeDir, output: outputDir)
        try fileManager.removeItem(at: headerURL)

        let error = try await #require(throws: GenerationError.self) {
            try await generator.generate(input: includeDir, output: outputDir, checkOnly: true)
        }
        guard case .missingHeader("arm.h") = error else {
            Issue.record("expected missingHeader(\"arm.h\"), got \(error)")
            return
        }
    }
}
