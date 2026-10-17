# 代码审查已裁决清单

代码审查中判定为**误报**、**不修**或**推迟**的发现，连同理由记在这里。之后每次审查先对照本清单：
理由仍成立的直接跳过；有新证据推翻理由时，更新条目并重新裁决。

## 空输入会抛出上一次残留的错误

- **裁决**：误报（2026-10-17）
- **怀疑的路径**：`Capstone.disassemble` 在 `withUnsafeBytes` 拿不到基址时不调用 `cs_disasm`，却照样读
  `cs_errno`，于是可能抛出更早一次调用（例如 detail 关闭时的 `isIn(group:)`）留在句柄上的错误码。
- **为什么触发不了**：`Data.withUnsafeBytes` 对空数据也给出非空基址，`cs_disasm` 每次都会被调用，并在开头
  把错误码清零。探针（macOS 27.2、Swift 6.4.2）先确认句柄上确实留着 `CS_ERR_DETAIL`，再用五种空 `Data`
  调用——`Data()`、`Data(count: 0)`、空切片、`Data(referencing: NSData())`、`Data(bytesNoCopy:count:deallocator:)`
  传 0 长度——全部返回空数组。
- **何时重新审视**：`disassemble` 改为接收 `RawSpan` / `Span` 这类空时可能没有基址的输入，或对空输入跳过
  `cs_disasm` 时。

## AArch64 的 `mode` / `syntax` 选项只能叠加、不能清除

- **裁决**：不修，属于上游设计问题（2026-10-17）
- **现象**：capstone v6 的 `AArch64_option` 对 `CS_OPT_MODE`、`CS_OPT_SYNTAX` 都按位或，设过的位清不掉——
  例如切到大端之后切不回小端。
- **理由**：这不是一处抄错的代码，而是 v6 各架构模块之间的语义分歧。`CS_OPT_MODE` 有 7 个模块叠加
  （AArch64、ARM、PowerPC、Sparc、SystemZ、TMS320C64x、Xtensa），其余赋值；`CS_OPT_SYNTAX` 有 8 个模块
  叠加（AArch64、ARC、ARM、LoongArch、Mips、RISCV、TMS320C64x、Xtensa），其余赋值。统一成哪一种是上游的
  设计决定，在 fork 里单方面改会和上游语义分叉。封装层在 `DisassemblyOption.syntax` / `.mode` 的文档里写明了
  这一点：需要清除时新建一个 `Capstone`。
- **对照**：`CS_OPT_DETAIL` 同样是叠加，但 capstone 头文件把 `CS_OPT_OFF` 写作 "Turn OFF an option"，叠加
  实现与文档矛盾，因此判为 bug，已在 capstone fork 里修复（传 `CS_OPT_OFF` 时清零）。
- **何时重新审视**：上游统一了这两个选项的语义，或提供了复位用的取值时。

## `Architecture.instructionClass` / `registerType` / `instructionType` 在架构不可用时 trap

- **裁决**：推迟到用新特性重写的提案（2026-10-17）
- **现状**：`Capstone(arch:)` 已改为抛出 `CapstoneError.unsupportedArchitecture`；这三个公开属性仍会
  `fatalError`，文档已注明。
- **理由**：它们不抛错，返回值也不是可选类型，要不 trap 就只能改签名，属于破坏性 API 改动。重写时引擎按架构
  类型参数化，没有封装的架构根本没有类型可写，这个问题随之消失。
- **何时重新审视**：重写提案落地时。
