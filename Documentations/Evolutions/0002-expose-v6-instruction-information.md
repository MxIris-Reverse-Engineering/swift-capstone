# 0002 - 在现有 API 上补齐 v6 新增的指令信息

- **状态**: Implemented
- **创建日期**: 2026-10-17
- **最后更新**: 2026-10-17

## 摘要

capstone v6 给每条指令新增了别名、非法标记、按真实指令填详情、Apple 专有指令等信息，现有封装都没有暴露，
下游只好绕开：MachOSwiftSection 靠「指令 + 助记符」配对识别别名、靠匹配 `"]!"` 判断写回；swift-decompiler
列了 21 对别名，还因为生成的枚举不是 `Sendable`（不能安全跨并发域传递）而标了 `@unchecked Sendable`。
本提案在现有 API 上以纯新增的方式补上这些信息，可以作为 6.1.0 发布；7.0.0 的重写再把它们带到新 API 里。

## 方案

- **别名**：`Instruction.isAlias`、`Instruction.usesAliasDetails`，以及各架构指令上的 `aliasInstruction`
  （来自 `cs_insn.alias_id`，类型与 `instruction` 相同，不是别名时为 `nil`）。别名 ID 本来就在生成的指令枚举里，
  例如 AArch64 的 `.aliasMov`。
- **非法指令**：`Instruction.isIllegal`，对应 `cs_insn.illegal`：字节能解码，但按指令集规定不合法，比如用了不允许
  的寄存器。
- **按真实指令填详情**：新增选项 `DisassemblyOption.realInstructionDetail`，打开详情，并让别名指令的操作数按它所
  代表的真实指令填写（`CS_OPT_DETAIL_REAL`），例如 `mov x0, x1` 给出 `orr x0, xzr, x1` 的三个操作数。v6 的
  detail 选项只能叠加，要回到别名形式的详情，需要先 `.detail(value: false)` 再打开，这依赖 capstone fork 里
  「`CS_OPT_OFF` 能关掉 detail」的修复。
- **写回**：不暴露 capstone 的 `cs_detail.writeback`，改为提供 `AArch64Instruction.writesBackBaseRegister`。
  实测 `writeback` 在任何操作数被绑定（tied）时都为真：前变址、后变址的访存是真，`movk`、`bfi`、`cas` 也是真，
  直接暴露会被误读成「基址寄存器被改写」。新属性对后变址看 `post_index`，对前变址看打印形式里的 `]!`：
  LLVM 的 AArch64 打印器只在前变址形式里输出 `]!`。详情关闭时为 `nil`，与 `isPostIndex` 一致。
- **Apple 专有指令**：`Mode.aarch64.appleProprietary`（`CS_MODE_APPLE_PROPRIETARY`）。不开时 AMX 等指令解不出来，
  反汇编会停在第一条这样的指令上。
- **Sendable**：生成的枚举与 `OptionSet`、`Architecture`，以及不引用引擎句柄的值类型（`Mode`、`Syntax`、`Access`、
  AArch64 的操作数及其附属类型等）显式声明 `Sendable`。`Capstone` 与指令对象不变，仍然不是 `Sendable`：它们读详情时
  会写引擎句柄上的错误码。

没有询问就采用的假设：

- 只补 AArch64 用得到的部分；架构无关的属性放在 `Instruction` 上，其他架构适配时自然可用。
- 不暴露 `CS_OPT_ONLY_OFFSET_BRANCH`：实测它只改变打印文本（`b 0x1010` 变成 `b #0x10`），操作数里的立即数仍是
  绝对地址，暴露出来容易误解，也没有下游需要。
- 不在本提案里改下游：两个下游要等这批改动发布后才能用上，迁移放到发布之后，或随 7.0.0 一起做。
- 版本号与发布由用户决定。发布前要先让 capstone fork 打出包含 detail 修复的版本，并提高本仓库的依赖下限。

## 决策日志

| 日期 | 决定 | 理由 |
|------|------|------|
| 2026-10-17 | Created，直接进入实现 | 重写提案第一轮澄清时，用户选择「先在现有 API 上补缺口，走一份精简提案」：都是纯新增，下游能马上去掉绕行代码，补的同时写下的测试也将成为重写必须通过的回归测试。 |
| 2026-10-17 | 写回改为派生属性，不暴露 `writeback` | 探针实测：`ldr x0, [x1, #8]!`、`ldr x0, [x1], #8`、`stp x29, x30, [sp, #-0x10]!` 的 `writeback` 为真，`movk x0, #1, lsl #16`、`bfi x0, x1, #8, #4`、`cas x0, x1, [x2]` 也为真。capstone 的 `MCInst.c` 在任何操作数被绑定时都置这个标志。 |
| 2026-10-17 | 记录上游问题，本提案不修 | 同一次探针中，capstone 把 `cas x0, x1, [x2]` 的基址 x2 报为被写寄存器：`AArch64Mapping.c` 在 `writeback` 为真时把访存操作数的基址加进写寄存器列表，`cas` 一族因此多报一个。影响 `registersAccessed`。用户决定不在 fork 里修，记入[已裁决清单](../Internal/ReviewVerdicts.md)。 |
| 2026-10-17 | 不暴露 `CS_OPT_ONLY_OFFSET_BRANCH` | 探针实测只改打印文本，`b` 的立即数操作数在开关前后都是 0x1010。 |
| 2026-10-17 | 测试 target 切到 Swift 6 语言模式 | Swift 5 模式下，非 Sendable 的类型满足 `Sendable` 约束时编译器一声不吭，`SendableTests` 在加注解前照样能编过，抓不住问题。切到 Swift 6 后加注解前编译失败，和两个下游的处境一致：已有的 `@Test(arguments:)` 也因参数不是 Sendable 而编不过。库本身仍是 Swift 5 模式，留给重写处理。 |
| 2026-10-17 | `AArch64OperandValue` 协议不加 `Sendable` | 给公开协议加要求，对外部的遵循者是源码破坏，与「纯新增」不符。具体的值类型都已是 `Sendable`，经 `value` 取到的存在类型可以先转成具体类型再跨并发域。 |
| 2026-10-17 | 实现完成，测试先红后绿 | 别名与非法标记、按真实指令填详情、基址写回、Apple 专有指令模式、Sendable 五组，每组先写测试并确认失败，再实现到通过。生成器改为给枚举、`OptionSet` 与 `Architecture` 加 `Sendable` 后重新生成，24 个生成文件各类型声明多了 `Sendable`。默认 trait 与 `AARCH64,SH` 两种配置下全部通过；以 `-strict-concurrency=complete` 重编库，第一次扫描时的 8 个并发警告全部消失。 |
| 2026-10-17 | In Progress → Implemented，编号 0002 | 随实现一起提交到 `next`；编号取各共享分支上的最大编号（0001）加一。收尾判断：不写使用指南，新属性的契约（`writesBackBaseRegister` 不等于 capstone 的 `writeback`、回到别名形式的详情要先关再开）都写在 API 文档里；不写实现说明，唯一不显然的决定（前变址靠 `]!` 判断）已写在属性文档与本日志里；没有引入新术语。是否发布 6.1.0 仍由用户决定，发布前要先给 capstone fork 打出含 detail 修复的版本。 |
