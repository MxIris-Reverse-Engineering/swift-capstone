import Foundation
import Testing
import Capstone

@Suite
struct CapstoneTests {
    @Test
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let version = Capstone.version
        print("Capstone version \(version)")
    }

    @Test
    func testBasic() throws {
        try Tests.allTests.run(address: 0x1000, options: .default) { (_, ins) in
            print("0x\(hex(ins.address)):\t\(ins.mnemonic)\t\t\(ins.operandsString)")
        }
    }

    @Test
    func testDetail() throws {
        try Tests.allTests.run(address: 0x1000) { (_, ins) in
            print("0x\(hex(ins.address)):\t\(ins.mnemonic)\t\t\(ins.operandsString)")
            let regs = ins.registerNamesAccessedImplicitly
            if !regs.read.isEmpty {
                print("\tImplicit registers read: \(regs.read.joined(separator: " ")) ")
            }
            if !regs.written.isEmpty {
                print("\tImplicit registers modified: \(regs.written.joined(separator: " ")) ")
            }
            let groups = ins.groupNames
            if !groups.isEmpty {
                print("\tThis instruction belongs to groups: \(groups.joined(separator: " ")) ")
            }
        }
    }

    @Test
    func testCustomMnemonic() throws {
        let code = Data([0x75, 0x01])
        let capstone = try Capstone(arch: .x86, mode: Mode.bits.b32)

        // 1. Print out the instruction in default setup.
        print("Disassemble X86 code with default instruction mnemonic")
        let ins1 = try capstone.disassemble(code: code, address: 0x1000).first
        #expect(ins1 != nil)
        if let ins1 {
            print("\t\(ins1.mnemonic)\t\(ins1.operandsString)")
            #expect(ins1.mnemonic == "jne")
        }

        // 2. Customized mnemonic JNE to JNZ using CS_OPT_MNEMONIC option
        print("\nNow customize engine to change mnemonic from 'JNE' to 'JNZ'")
        try capstone.set(option: .mnemonic("jnz", instruction: X86Ins.jne))
        let ins2 = try capstone.disassemble(code: code, address: 0x1000).first
        #expect(ins2 != nil)
        if let ins2 {
            print("\t\(ins2.mnemonic)\t\(ins2.operandsString)")
            #expect(ins2.mnemonic == "jnz")
        }
        
        // 3. Reset engine to use the default mnemonic of JNE
        print("\nReset engine to use the default mnemonic")
        try capstone.set(option: .mnemonic(nil, instruction: X86Ins.jne))
        let ins3 = try capstone.disassemble(code: code, address: 0x1000).first
        #expect(ins3 != nil)
        if let ins3 {
            print("\t\(ins3.mnemonic)\t\(ins3.operandsString)")
            #expect(ins3.mnemonic == "jne")
        }
    }

    func testSkipData() throws {
        try Tests.skipDataTests.run(address: 0x1000, options: .basic) { (_, ins) in
            print("0x\(hex(ins.address)):\t\(ins.mnemonic)\t\t\(ins.operandsString)")
        }
    }

    @Test
    func testArm() throws {
        try Tests.armTests.run(address: 0x80001000)
    }
    
    @Test
    func testArm64() throws {
        try Tests.arm64Tests.run(address: 0x2c)
    }

    @Test
    func testPpc() throws {
        try Tests.ppcTests.run(address: 0x1000)
    }

    @Test
    func testX86() throws {
        try Tests.x86Tests.run(address: 0x1000)
    }

    @Test
    func testM68k() throws {
        try Tests.m68kTests.run(address: 0x1000)
    }

    @Test
    func testSparc() throws {
        try Tests.sparcTests.run(address: 0x1000)
    }

    @Test
    func testEvm() throws {
        try Tests.evmTests.run(address: 0x80001000)
    }

    @Test
    func testMips() throws {
        try Tests.mipsTests.run(address: 0x1000)
    }

    @Test
    func testM680x() throws {
        let options = PlatformTest.Options(
            separator: "********************",
            uppercaseHex: true,
            printEndAddress: false,
            capstoneOptions: [.detail(value: true)])
        try Tests.m680xTests.forEach({ try $0.run(address: 0x1000, options: options)})
    }

    @Test
    func testSysz() throws {
        try Tests.syszTests.run(address: 0x1000)
    }

    @Test
    func testXcore() throws {
        try Tests.xcoreTests.run(address: 0x1000)
    }

    @Test
    func testTms320c64x() throws {
        try Tests.tms320c64xTests.run(address: 0x1000)
    }

    @Test
    func testMos65xx() throws {
        try Tests.mos65xxTests.run(address: 0x1000)
    }

    @Test
    func testWasm() throws {
        try Tests.wasmTests.run(address: 0xffff)
    }

    @Test
    func testBpf() throws {
        try Tests.bpfTests.run(address: 0)
    }

    @Test
    func testRiscv() throws {
        try Tests.riscvTests.run(address: 0x1000)
    }

    static var allTests = [
        ("testBasic", testBasic),
        ("testDetail", testDetail),
        ("testCustomMnemonic", testCustomMnemonic),
        ("testSkipData", testSkipData),
        ("testArm", testArm),
        ("testArm64", testArm64),
        ("testPpc", testPpc),
        ("testX86", testX86),
        ("testM68k", testM68k),
        ("testSparc", testSparc),
        ("testEvm", testEvm),
        ("testMips", testMips),
        ("testM680x", testM680x),
        ("testSysz", testSysz),
        ("testXcore", testXcore),
        ("testTms320c64x", testTms320c64x),
        ("testMos65xx", testMos65xx),
        ("testWasm", testWasm),
        ("testBpf", testBpf),
        ("testRiscv", testRiscv)
    ]
}

extension Array where Element == PlatformTest {
    func run(address: UInt64) throws {
        try forEach({ try $0.run(address: address )})
    }

    func run(address: UInt64, options: PlatformTest.Options = PlatformTest.Options.default, iterator: (Capstone, Instruction) -> Void) throws {
        try forEach({ try $0.run(address: address, iterator: iterator)})
    }
}
