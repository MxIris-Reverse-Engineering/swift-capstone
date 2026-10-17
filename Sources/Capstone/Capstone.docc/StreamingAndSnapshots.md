# Streaming and Snapshots

Choose between reading instructions in place and copying them out, and know what
each one promises.

## Overview

``Disassembler`` decodes every instruction into one buffer it owns, overwriting
the previous instruction each time. The two entry points differ in what they do
with that buffer.

``Disassembler/forEachInstruction(in:address:limit:_:)-(RawSpan,_,_,_)`` lends
each instruction to your closure as an ``InstructionView``, which reads straight
from the buffer. Nothing is copied that you do not ask for, and decoding stops as
soon as your closure throws. Use it to scan large amounts of code, to read a field
or two of each instruction, or to convert instructions into types of your own.

``Disassembler/decode(_:address:limit:)-(RawSpan,_,_)`` copies every
instruction in full — operands, registers, groups — into a value such as
``AArch64/Instruction``. The values are `Sendable`, hold no reference to the
engine, and can be stored, compared over time, or handed to another task. Use it
when you need the instructions after decoding.

`decode` is built on `forEachInstruction`, so both see the same instructions.

### An instruction view cannot be kept

An ``InstructionView`` is valid only while the closure it was lent to runs: the
next instruction overwrites what it reads. The compiler enforces this. The view
cannot be copied, assigned to a variable outside the closure, captured by an
escaping closure, or sent to another task. Copy out what you need while you have
it:

```swift
var branchTargets: [Int64] = []
disassembler.forEachInstruction(in: machineCode, address: start) { instruction in
    if instruction.groups.contains(.jump), let target = instruction.operands.first?.immediateValue {
        branchTargets.append(target)
    }
}
```

The closure may decode again with the same engine; the outer instruction stays
intact.

### Decoding stops at the first bytes that are not an instruction

Both entry points stop at the end of the input, after `limit` instructions, or at
the first bytes that do not decode — data in a code section, for instance.
`forEachInstruction` returns how many bytes it decoded, which tells you where it
stopped.

To decode past such bytes instead, create the engine with a ``SkipData``. The
skipped bytes then appear as entries of their own, with
``InstructionView/isData`` set, the mnemonic `.byte`, and no identifier and no
details: no operands, registers or groups. Code that only expects instructions
should check `isData` first.

### One engine per task

An engine is not `Sendable`, and creating one is cheap. Give each task its own.
To decode one region in parallel, split it and give each child task an engine and
a part; AArch64 instructions are four bytes long, so any four-byte boundary will
do:

```swift
let instructions = try await withThrowingTaskGroup(of: (Int, [AArch64.Instruction]).self) { group in
    for (index, part) in parts.enumerated() {
        group.addTask {
            (index, try Disassembler<AArch64>().decode(part.code, address: part.address))
        }
    }
    var decoded: [(Int, [AArch64.Instruction])] = []
    for try await result in group {
        decoded.append(result)
    }
    return decoded.sorted { $0.0 < $1.0 }.flatMap(\.1)
}
```
