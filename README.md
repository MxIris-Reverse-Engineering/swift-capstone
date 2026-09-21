# Capstone

Swift bindings for the [Capstone Engine](https://www.capstone-engine.org), built
on capstone **v6**.

Provides a Swift-native wrapper over capstone without exposing the C API. No
system installation is needed: capstone is pulled in as a Swift package and
built from source.

## Status

The v6 adaptation is in progress and lands one architecture at a time. **AArch64
is adapted; the other architectures are not yet.** Their traits are still
declared, but enabling one gets you a wrapper still written against capstone v5,
which will not compile. See
[the adaptation proposal](Documentations/Evolutions/draft-adapt-capstone-v6.md).

capstone v6 renames things this wrapper follows: `Arm64*` is now `AArch64*`,
`Sysz*` is now `SystemZ*`, and `Architecture.arm64` is `Architecture.aarch64`.
No compatibility aliases are provided — v6 reordered `cs_arch` and reshaped the
AArch64 operand model, so an alias would be misleading rather than helpful.

## Adding the dependency

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/MxIris-Reverse-Engineering/swift-capstone", from: "6.0.0"),
    ],
    targets: [
        .target(name: "YourTarget", dependencies: [
            .product(name: "Capstone", package: "swift-capstone"),
        ]),
    ]
)
```

Requires Swift 6.2 or later.

### Choosing architectures

Each architecture is a package trait. Only the adapted ones are enabled by
default; naming traits explicitly replaces that default rather than adding to
it:

```swift
.package(
    url: "https://github.com/MxIris-Reverse-Engineering/swift-capstone",
    from: "6.0.0",
    traits: ["AARCH64"]
)
```

Trait names match capstone's `CAPSTONE_HAS_<ARCH>` macros: `ARM`, `AARCH64`,
`MIPS`, `X86`, `POWERPC`, `SPARC`, `SYSTEMZ`, `XCORE`, `M68K`, `TMS320C64X`,
`M680X`, `EVM`, `MOS65XX`, `WASM`, `BPF`, `RISCV`, `SH`, `TRICORE`, `ALPHA`,
`HPPA`, `LOONGARCH`, `XTENSA`, `ARC`.

## Generated sources

The architecture table, the architecture enums and the operand accessors are
generated from capstone's headers. Files carrying an `AUTO-GENERATED` header —
`*Enums.swift`, `Architecture+Generated.swift`, `*+Operands.swift` — are not
edited by hand; change the configuration in `Sources/CapstoneEnumsGenerator`
and regenerate:

```sh
swift package plugin generate-enums
```

To verify the checked-in output still matches the headers, without writing
anything:

```sh
swift run capstone-enums-generator \
    --include <path-to>/capstone/include/capstone --output Sources/Capstone --check
```

It exits non-zero when a generated file is out of date, which is what a CI job
should run — a stale generated file is indistinguishable from a hand-written one
by inspection.

## API Usage
1. Create an instance of `Capstone`, with the desired `Architecture` and `Mode`:
```swift
let capstone = try Capstone(arch: .arm, mode: [Mode.arm.thumb, Mode.arm.mClass])
```
2. Set `Options`s if needed:
```swift
try capstone.set(option: .detail(value: true))
```
3. Disassemble code:
    > Instructions are returned as an architecture-specific instruction class, which descends from `Instruction`
```swift
let code = Data([0xef, 0xf3, 0x02, 0x80])
let instructions: [ArmInstruction] = try capstone.disassemble(code: code, address: 0x1000)
```
4. Examine code:
```swift
for ins in instructions: {
    print("  \(ins.mnemonic) \(ins.operandsString)")
}
```

## Documentation

* [Documentation](https://namedfork.net/capstone-swift) is generated with [swift-doc](https://github.com/SwiftDocOrg/swift-doc).

## Examples

* See `Examples/cstool` for an implementation of [`cstool`](https://github.com/aquynh/capstone/tree/master/cstool) in Swift.

### Small example

```swift
import Capstone
import Foundation

// Code to disassemble
let code = Data([0x8d, 0x4c, 0x32, 0x08, 0x01, 0xd8, 0x81, 0xc6, 0x34, 0x12, 0x00, 0x00, 0x05, 0x23, 0x01, 0x00, 0x00, 0x36, 0x8b, 0x84, 0x91, 0x23, 0x01, 0x00, 0x00, 0x41, 0x8d, 0x84, 0x39, 0x89, 0x67, 0x00, 0x00, 0x8d, 0x87, 0x89, 0x67, 0x00, 0x00, 0xb4, 0xc6, 0xe9, 0xea, 0xbe, 0xad, 0xde, 0xff, 0xa0, 0x23, 0x01, 0x00, 0x00, 0xe8, 0xdf, 0xbe, 0xad, 0xde, 0x74, 0xff])

// Create instance of capstone
let capstone = try Capstone(arch: .x86, mode: Mode.bits.b32)

// Enable detail mode to get instruction groups and operands
try capstone.set(option: .detail(value: true))

// Disassemble instructions
let instructions: [X86Instruction] = try capstone.disassemble(code: code, address: 0x1000)

// Iterate through instructions
var insCountByGroup: [X86Grp: Int] = [:]
var opCountByType: [X86Op: Int] = [:]
print("Disassembly:")
for ins in instructions {
    print("  \(ins.mnemonic) \(ins.operandsString)")

    // Count by instruction groups
    insCountByGroup.merge(ins.groups.map({ ($0, 1) }), uniquingKeysWith: +)

    // Count operands by type
    opCountByType.merge(ins.operands.map({ ($0.type, 1) }), uniquingKeysWith: +)
}

// Print results
print("Instructions by group:")
for (group, count) in insCountByGroup {
    print("  \(group): \(count)")
}

print("Operands by type:")
for (type, count) in opCountByType {
    print("  \(type): \(count)")
}
```
