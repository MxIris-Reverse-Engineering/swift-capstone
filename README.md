# Capstone

Swift bindings for the [Capstone](https://www.capstone-engine.org) disassembly
engine, built on capstone **v6**.

capstone comes in as a Swift package and is built from source, so there is
nothing to install. Its C API stays behind a Swift one: an engine generic over the
architecture, whose instructions come either streamed, without copies, or as
`Sendable` values.

```swift
import Capstone

let disassembler = try Disassembler<AArch64>()
for instruction in disassembler.decode([0x62, 0x00, 0x04, 0x8B], address: 0x1000) {
    print(instruction) // add x2, x3, x4
}
```

## Status

**AArch64 is the one architecture wrapped.** The other architectures capstone
supports have package traits and generated enums (`X86Reg`, `ArmIns`, …), but no
`DisassemblyArchitecture` type yet, so there is no engine for them. They are
adapted one at a time; see the [evolution proposals](Documentations/Evolutions/README.md).

| swift-capstone | capstone | Swift |
|----------------|----------|-------|
| 7.x | 6.0, from the [MxIris fork](https://github.com/MxIris-Reverse-Engineering/capstone), 6.0.101 or later | 6.2 or later |
| 6.x | 6.0, from the MxIris fork, 6.0.100 or later (6.0.101 from 6.1) | 6.2 or later |

Version 7 replaced the class-based API of version 6. To move code over, see
[Migrating from Version 6](Sources/Capstone/Capstone.docc/MigratingFromVersion6.md).

## Adding the dependency

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/MxIris-Reverse-Engineering/swift-capstone", from: "7.0.0"),
    ],
    targets: [
        .target(name: "YourTarget", dependencies: [
            .product(name: "Capstone", package: "swift-capstone"),
        ]),
    ]
)
```

It supports macOS 10.15, iOS 13, tvOS 13, watchOS 6 and visionOS 1 or later.

### Choosing architectures

Each architecture is a package trait. Only the wrapped ones are enabled by
default; naming traits explicitly replaces that default rather than adding to it:

```swift
.package(
    url: "https://github.com/MxIris-Reverse-Engineering/swift-capstone",
    from: "7.0.0",
    traits: ["AARCH64"]
)
```

Trait names match capstone's `CAPSTONE_HAS_<ARCH>` macros: `ARM`, `AARCH64`,
`MIPS`, `X86`, `POWERPC`, `SPARC`, `SYSTEMZ`, `XCORE`, `M68K`, `TMS320C64X`,
`M680X`, `EVM`, `MOS65XX`, `WASM`, `BPF`, `RISCV`, `SH`, `TRICORE`, `ALPHA`,
`HPPA`, `LOONGARCH`, `XTENSA`, `ARC`. A trait compiles its architecture into
capstone and builds its generated enums; `Architecture.isCompiledIn` tells you
which are in a build.

## Usage

### Creating an engine

An engine's options are fixed when it is created; create another engine for
other options.

```swift
let disassembler = try Disassembler<AArch64>(
    mode: [.littleEndian, .appleProprietary], // AMX and other Apple-only instructions
    syntax: .capstoneRegisterAlias,           // fp and lr rather than x29 and x30
    details: .realInstruction,                // an alias reports its real instruction's operands
    skipData: SkipData()                      // decode past data instead of stopping at it
)
```

Code from Apple platforms can contain Apple's proprietary instructions, such as
AMX. capstone decodes them only with `.appleProprietary`; without it, decoding
stops at the first one.

### Streaming

`forEachInstruction` lends each instruction to a closure without copying it. The
instruction cannot leave the closure — the engine overwrites it with the next one
— so read what you need while you have it:

```swift
var calls: [UInt64] = []
let decodedBytes = disassembler.forEachInstruction(in: machineCode, address: 0x1000) { instruction in
    if instruction.groups.contains(.call) {
        calls.append(instruction.address)
    }
}
```

It returns how many bytes it decoded: decoding stops at the first bytes that are
not an instruction, unless the engine has a `SkipData`.

### Snapshots

`decode` copies each instruction into a value: operands, registers and groups
included. The values outlive the engine and can be sent to other tasks:

```swift
let instructions = disassembler.decode(machineCode, address: 0x1000)
let flagSetters = await Task.detached {
    instructions.filter(\.updatesFlags).map(\.address)
}.value
```

Both take a `RawSpan`, `Data` or `[UInt8]`.

### Concurrency

An engine is not `Sendable`; give each task its own. Creating one is cheap, and
AArch64 instructions are four bytes long, so a region of code can be split at any
four-byte boundary and decoded in parallel.

## Documentation

The API reference and the articles live in a DocC catalog,
`Sources/Capstone/Capstone.docc`, among them
[Streaming and Snapshots](Sources/Capstone/Capstone.docc/StreamingAndSnapshots.md).
Xcode builds it with Product > Build Documentation. From the command line:

```sh
SWIFT_CAPSTONE_DOCUMENTATION=1 swift package --build-system native \
    generate-documentation --target Capstone
```

The environment variable adds swift-docc-plugin, which is otherwise left out so
that packages depending on this one do not fetch it. The native build system
skips extracting symbols from capstone's C target, which fails.

## Generated sources

The `Architecture` enum, the per-architecture enums and the operand accessors are
generated from capstone's headers. Files carrying an `AUTO-GENERATED` header —
`*Enums.swift`, `Architecture+Generated.swift`, `*+Operands.swift` — are not
edited by hand; change the configuration in `Sources/CapstoneEnumsGenerator` and
regenerate:

```sh
swift package plugin generate-enums
```

To verify the checked-in output still matches the headers, without writing
anything, add `--check`:

```sh
swift package plugin generate-enums --check
```

It exits non-zero when a generated file is out of date, which is what a CI job
should run — a stale generated file is indistinguishable from a hand-written one
by inspection. Running the generator directly does the same without the plugin's
permission prompt:

```sh
swift run capstone-enums-generator \
    --include <path-to>/capstone/include/capstone --output Sources/Capstone --check
```

Both stop at an argument they do not know rather than ignore it.

## Examples

`Examples/cstool` is [capstone's cstool](https://github.com/capstone-engine/capstone/tree/next/cstool)
in Swift, for AArch64:

```sh
cd Examples/cstool
swift run cstool -d aarch64 "62 00 04 8b c0 03 5f d6" 1000
```

### Small example

```swift
import Capstone

// add x2, x3, x4 / ldr x0, [x1, #8] / b 0x1018 / ret, starting at 0x1000
let code: [UInt8] = [
    0x62, 0x00, 0x04, 0x8B,
    0x20, 0x04, 0x40, 0xF9,
    0x04, 0x00, 0x00, 0x14,
    0xC0, 0x03, 0x5F, 0xD6,
]

let disassembler = try Disassembler<AArch64>()

var instructionCountByGroup: [AArch64Grp: Int] = [:]
var operandCountByType: [AArch64Op: Int] = [:]
disassembler.forEachInstruction(in: code, address: 0x1000) { instruction in
    print("0x\(String(instruction.address, radix: 16))  \(instruction.mnemonic) \(instruction.operandsText)")
    instructionCountByGroup.merge(instruction.groups.map { ($0, 1) }, uniquingKeysWith: +)
    operandCountByType.merge(instruction.operands.map { ($0.type, 1) }, uniquingKeysWith: +)
}

print("Instructions by group:")
for (group, count) in instructionCountByGroup {
    print("  \(group): \(count)")
}

print("Operands by type:")
for (type, count) in operandCountByType {
    print("  \(type): \(count)")
}
```
