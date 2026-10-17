# Migrating from Version 6

Move code written against the class-based API of swift-capstone 6 to version 7.

## Overview

Version 7 replaces the `Capstone` class, the `Instruction` class hierarchy and
`DisassemblyOption` with ``Disassembler``, an engine generic over the
architecture. The capstone it builds is the same, 6.0. There are no deprecated
aliases: the shapes changed too much for a rename to describe them. Code that
cannot move yet can stay on version 6.

The usual change is three lines into one:

```swift
// Version 6
let capstone = try Capstone(arch: .aarch64, mode: [Mode.endian.little])
try capstone.set(option: .detail(value: true))
let instructions: [AArch64Instruction] = try capstone.disassemble(code: Data(bytes), address: address)

// Version 7
let instructions = try Disassembler<AArch64>().decode(bytes, address: address)
```

### Where things went

| Version 6 | Version 7 |
|-----------|-----------|
| `Capstone(arch:mode:)` and `set(option:)` | ``Disassembler/init(mode:syntax:details:unsignedImmediates:skipData:mnemonics:)`` |
| `disassemble(code:address:count:)` | ``Disassembler/decode(_:address:limit:)-(RawSpan,_,_)``, or ``Disassembler/forEachInstruction(in:address:limit:_:)-(RawSpan,_,_,_)`` to avoid copies |
| `AArch64Instruction` | ``AArch64/Instruction``, or ``InstructionView`` while streaming |
| `AArch64Instruction.Operand` | ``AArch64/Operand`` |
| `instruction.instruction` | `identifier` |
| `aliasInstruction` | `alias` |
| `operandsString` | `operandsText` |
| `registersAccessed` | `registersRead` and `registersWritten`; `registersAccessed()` on a view |
| `registersAccessedImplicitly` | `implicitRegistersRead` and `implicitRegistersWritten` |
| `isIn(group:)` | `groups.contains(_:)` |
| `Mode.endian.little`, `Mode.endian.big` | ``AArch64/Mode/littleEndian``, ``AArch64/Mode/bigEndian`` |
| `Mode.aarch64.appleProprietary` | ``AArch64/Mode/appleProprietary`` |
| `DisassemblyOption.syntax` | the `syntax` parameter, ``AArch64/Syntax`` |
| `DisassemblyOption.realInstructionDetail` | `details: .realInstruction` |
| `DisassemblyOption.unsigned` | `unsignedImmediates: true` |
| `DisassemblyOption.skipData` and `.skipDataEnabled` | the `skipData` parameter, ``SkipData`` |
| `DisassemblyOption.mnemonic` | the `mnemonics` parameter |
| `Capstone.supports(arch:)` | ``Architecture/isCompiledIn`` |
| `Capstone.version` | ``EngineVersion/current`` |

### Behavior that changed

- **Options cannot change.** Create another engine for other options. This also
  retires capstone's habit of adding new mode and syntax flags to the ones set
  before instead of replacing them.
- **Details are always on.** Properties that were optional because details could
  be off — `updatesFlags`, `isPostIndex`, `writesBackBaseRegister` — are plain
  values now, and nothing throws for missing details.
- **Skipped data is an entry.** With ``SkipData``, the skipped bytes come back as
  an entry with `isData` set and no details, where version 6 returned an
  instruction object without them. The skip closure receives the whole input and
  an offset from its start.
- **Mismatched types do not compile.** Version 6 returned an empty array when the
  requested instruction type did not match the engine's architecture; there is no
  such type to request now.
- **Instructions are values.** An ``AArch64/Instruction`` reads the same after
  the engine is gone and can be sent to another task. An ``InstructionView``
  cannot be kept at all; see <doc:StreamingAndSnapshots>.
- **Fewer errors.** ``CapstoneError`` keeps the errors creating an engine can
  meet; decoding itself does not throw.
- **Other architectures are not wrapped.** Version 6 still carried wrappers
  written for capstone 5 for ARM, X86 and the rest, which did not compile against
  capstone 6. They are gone; the generated enums, such as `X86Reg`, remain.
