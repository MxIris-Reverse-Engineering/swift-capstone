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
- **现状**（2026-10-17）：怀疑的代码随 7.0.0 的旧 API 一起删除。`Disassembler` 的解码入口不读 `cs_errno`，空输入在
  调用 capstone 之前就返回 0，见 `DisassemblerTests` 的空输入用例。
- **何时重新审视**：不再需要，留作记录。

## AArch64 的 `mode` / `syntax` 选项只能叠加、不能清除

- **裁决**：不修，属于上游设计问题（2026-10-17）
- **现象**：capstone v6 的 `AArch64_option` 对 `CS_OPT_MODE`、`CS_OPT_SYNTAX` 都按位或，设过的位清不掉——
  例如切到大端之后切不回小端。
- **理由**：这不是一处抄错的代码，而是 v6 各架构模块之间的语义分歧。`CS_OPT_MODE` 有 7 个模块叠加
  （AArch64、ARM、PowerPC、Sparc、SystemZ、TMS320C64x、Xtensa），其余赋值；`CS_OPT_SYNTAX` 有 8 个模块
  叠加（AArch64、ARC、ARM、LoongArch、Mips、RISCV、TMS320C64x、Xtensa），其余赋值。统一成哪一种是上游的
  设计决定，在 fork 里单方面改会和上游语义分叉。封装层在 `DisassemblyOption.syntax` / `.mode` 的文档里写明了
  这一点：需要清除时新建一个 `Capstone`。
- **现状**（2026-10-17）：7.0.0 起选项在创建 `Disassembler` 时一次设好，引擎没有改选项的方法，碰不到叠加的问题；
  它仍是上游语义。
- **对照**：`CS_OPT_DETAIL` 同样是叠加，但 capstone 头文件把 `CS_OPT_OFF` 写作 "Turn OFF an option"，叠加
  实现与文档矛盾，因此判为 bug，已在 capstone fork 里修复（传 `CS_OPT_OFF` 时清零）。
- **何时重新审视**：引擎重新提供运行时改选项的方法时。

## capstone 把 `cas` 一族的基址寄存器报成被写

- **裁决**：不修，属于上游语义问题（2026-10-17）
- **现象**：`cas x0, x1, [x2]` 的写寄存器列表（7.0.0 起是视图的 `registersAccessed().written` 与快照的
  `registersWritten`）含有 x2，而 `cas` 并不写回基址。
- **根源**：capstone 的 `MCInst.c` 只要有操作数被绑定（tied）就置 `cs_detail.writeback`，`cas` 的 Rs 正是被绑定的；
  `AArch64Mapping.c` 又在 `writeback` 为真时把访存操作数的基址加进写寄存器列表。同一个标志在 `movk`、`bfi` 上
  也为真，只是它们没有访存操作数，不会多报寄存器。
- **理由**：影响面小，只涉及 `cas` 这一族原子指令的读写寄存器列表，两个下游都不靠它判断基址写回。要修对，就得让
  capstone 区分「基址写回」和「一般的绑定操作数」，这是上游该定的语义；在 fork 里单方面改会与上游分叉，理由与
  上面 `mode` / `syntax` 那条相同。封装层自己的 `writesBackBaseRegister` 不依赖这份列表，已经给出正确结果。
- **何时重新审视**：有调用方依赖 `cas` 一族的写寄存器列表，或上游改了 `writeback` 的语义时。

## `Architecture.instructionClass` / `registerType` / `instructionType` 在架构不可用时 trap

- **裁决**：推迟到用新特性重写的提案（2026-10-17）；已随 7.0.0 解决
- **现状**：`Capstone(arch:)` 已改为抛出 `CapstoneError.unsupportedArchitecture`；这三个公开属性仍会
  `fatalError`，文档已注明。
- **理由**：它们不抛错，返回值也不是可选类型，要不 trap 就只能改签名，属于破坏性 API 改动。重写时引擎按架构
  类型参数化，没有封装的架构根本没有类型可写，这个问题随之消失。
- **现状**（2026-10-17）：[重写提案 0003](../Evolutions/0003-rewrite-with-modern-swift.md)删除了这三个属性与
  `Architecture.wrapped`。引擎按架构类型参数化，没有封装的架构写不出类型参数，查询编入与否用不会 trap 的
  `Architecture.isCompiledIn`。
- **何时重新审视**：不再需要，留作记录。
