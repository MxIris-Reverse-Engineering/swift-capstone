import CapstoneEnumsGenerator
import Foundation
import Testing

@Suite struct CapstoneEnumsGeneratorTests {
    @Test func generatesSwiftEnumFromHeader() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
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
        #expect(contents.contains("public static let fooAlias = 1"))
    }

    @Test func detectsOptionSetStyleBitmasks() async throws {
        let fileManager = FileManager.default
        let tempDir = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        let includeDir = tempDir.appendingPathComponent("include", isDirectory: true)
        let outputDir = tempDir.appendingPathComponent("output", isDirectory: true)
        try fileManager.createDirectory(at: includeDir, withIntermediateDirectories: true)
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
    
    @Test func test() async throws {
        try await CapstoneEnumsGenerator().generate(input: .init(filePath: "/Volumes/Repositories/Private/Fork/Library/capstone/include/capstone"), output: .documentsDirectory.appending(component: "CapstoneEnums"))
    }
}
