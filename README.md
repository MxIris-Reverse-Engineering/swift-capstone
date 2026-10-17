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
let capstone = try Capstone(arch: .aarch64, mode: Mode.endian.little)
```
2. Set `Options`s if needed:
```swift
try capstone.set(option: .detail(value: true))
```
3. Disassemble code:
    > Instructions are returned as an architecture-specific instruction class, which descends from `Instruction`
```swift
let code = Data([0x62, 0x00, 0x04, 0x8b]) // add x2, x3, x4
let instructions: [AArch64Instruction] = try capstone.disassemble(code: code, address: 0x1000)
```
4. Examine code:
```swift
for instruction in instructions {
    print("\(instruction.mnemonic) \(instruction.operandsString)")
}
```

## Documentation

* The API documentation under `docs/` was generated with [swift-doc](https://github.com/SwiftDocOrg/swift-doc) before the v6 adaptation and still uses the v5 names.

## Examples

* `Examples/cstool` is an implementation of [`cstool`](https://github.com/capstone-engine/capstone/tree/next/cstool) in Swift. It still builds against the original capstone-swift package rather than this one.

### Small example

```swift
import Capstone
import Foundation

// add x2, x3, x4 / ldr x0, [x1, #8] / b 0x1018 / ret, starting at 0x1000
let code = Data([
    0x62, 0x00, 0x04, 0x8b,
    0x20, 0x04, 0x40, 0xf9,
    0x04, 0x00, 0x00, 0x14,
    0xc0, 0x03, 0x5f, 0xd6,
])

let capstone = try Capstone(arch: .aarch64, mode: Mode.endian.little)

// Groups and operands are only filled in with detail on
try capstone.set(option: .detail(value: true))

let instructions: [AArch64Instruction] = try capstone.disassemble(code: code, address: 0x1000)

var instructionCountByGroup: [AArch64Grp: Int] = [:]
var operandCountByType: [AArch64Op: Int] = [:]
for instruction in instructions {
    print("0x\(String(instruction.address, radix: 16))  \(instruction.mnemonic) \(instruction.operandsString)")
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
