# ``Capstone``

Disassemble machine code with the capstone engine.

## Overview

A ``Disassembler`` is a capstone engine for one architecture, named by its type
parameter: `Disassembler<AArch64>`. Its options are fixed when it is created. It
hands out instructions in two ways: streamed, each one lent to a closure without
being copied, or decoded into `Sendable` values that outlive the engine.

```swift
import Capstone

let disassembler = try Disassembler<AArch64>()

// Streamed: read what you need; the instruction cannot leave the closure.
disassembler.forEachInstruction(in: machineCode, address: 0x1000) { instruction in
    print(instruction.mnemonic, instruction.operandsText)
}

// Decoded: values that can be kept and sent to other tasks.
let instructions = disassembler.decode(machineCode, address: 0x1000)
```

AArch64 is the one architecture wrapped so far. capstone knows more; see
``Architecture``.

## Topics

### Essentials

- <doc:StreamingAndSnapshots>
- ``Disassembler``
- ``InstructionView``

### AArch64

- ``AArch64``
- ``AArch64OperandValue``

### Options

- ``DetailForm``
- ``SkipData``

### The Engine

- ``Architecture``
- ``DisassemblyArchitecture``
- ``EngineVersion``
- ``CapstoneError``

### Operands

- ``Access``

### Migration

- <doc:MigratingFromVersion6>
