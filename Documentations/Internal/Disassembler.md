# 解码引擎：实现说明

> 配套提案见[0003 - 用新 Swift 特性重写封装层](../Evolutions/0003-rewrite-with-modern-swift.md)。
> 本文记录 `Disassembler` 实际怎么建成、哪些决定在代码里看不出原因、已知的降级。面向维护者；调用方要遵守的
> 契约写在 DocC 文章 [Streaming and Snapshots](../../Sources/Capstone/Capstone.docc/StreamingAndSnapshots.md) 里。

## 背景与目标

`Disassembler<Architecture>` 是一个不可复制的结构体：持有一个 capstone 句柄和一块用 `cs_malloc` 分配、每条
指令反复覆盖的 `cs_insn` 缓冲，`deinit` 里释放。解码只走 `cs_disasm_iter`。读 C 内存的代码只有
`InstructionView` 一处，`decode` 返回的快照（[术语](../Glossary.md#instruction-view-and-snapshot)）由视图构造。

目标有三：解码时不按指令数分配内存；把「运行时才发现」的错误（架构不匹配、选项中途变化、带走已失效的
指令）变成编译错误；`unsafe` 只出现在与 C 交互的一层。

## 关键设计决策

### 选项在创建时一次设好，缓冲最后分配

`cs_malloc` 只在 detail 选项**已经**打开时才给缓冲分配 `cs_detail`。所以初始化器先设完全部选项，最后才
分配缓冲；顺序反过来，每条指令的详情指针都是空的。

### 嵌套解码另用一块缓冲

闭包借用着引擎，可以在里面再调 `forEachInstruction` 或 `decode`。如果内层也用共享缓冲，外层视图读到的就是
内层最后一条指令。引擎用 `DecodingState.isDecoding` 记录是否有一轮正在进行，嵌套的一轮临时 `cs_malloc`
一块、结束时释放；out of memory 时 `fatalError`，因为解码入口不抛自己的错误。`DisassemblerTests` 的嵌套
用例在去掉这层保护时会失败。

### 复用缓冲依赖 capstone 6.0.101

capstone 只在指令非法时置 `cs_insn.illegal`、从不清零，`is_alias` / `alias_id` 也只在部分路径上写。
`cs_disasm` 每批用清零的新内存，所以旧 API 碰不到；`cs_disasm_iter` 复用缓冲，一条非法指令之后的每条都会
报非法。开发时引擎曾在每次调用前自己清零这几个字段；fork 6.0.101 在 `cs_disasm_iter` 里修好了，本包要求
这个版本，引擎就不再自己清。`InstructionInformationTests` 里「非法指令之后的指令不是非法」的用例守着它：
换回更早的 capstone 会失败。

### 视图的 `bytes` 取自输入

`cs_insn.bytes` 只有 24 字节；skipdata 回调要求跳过更多字节时，数据条目的副本被截断，`size` 也被截到 24。
引擎记下每次调用前后剩余字节数之差，从输入里切出这一条实际覆盖的字节。

### skipdata 回调的偏移由引擎换算

`cs_disasm_iter` 调回调时传的是**剩余**输入和偏移 0，不是整段输入。公开的 `SkipData.bytesToSkip` 约定的是
「整段输入 + 从开头算的偏移」，所以 `DecodingState` 记着这一轮输入的起点（嵌套的一轮另记、结束时还原），
C 回调里换算。回调需要一个不会被移动的地址作 `user_data`，结构体会被移动，所以状态放在类里。skipdata 的
助记符也存在这个类里：capstone 只保存指针、不拷贝字符串。

### 数据条目不读详情

capstone 的 skipdata 路径不碰详情缓冲，数据条目的缓冲里是什么取决于架构模块解码失败前走了多远：AArch64 模块
每次尝试解码前先清零，所以是空的；别的模块未必。视图对数据条目一律返回空：`details` 为 `nil`，标志为假，
`identifier` / `alias` 为 `nil`。判断数据条目只能看 `id == 0`。

### 严格内存安全：`@safe` 的三个类型与 `unsafe` 的边界

`Disassembler`、`InstructionView` 与内部的 `DecodingState` 存着指针，标 `@safe`：句柄与缓冲不出引擎，视图
只以借用形式存在于闭包里、带不出去。与 C 交互的表达式逐处标 `unsafe`，集中在引擎、视图、操作数类型和
`Utils.swift` 里读 C 定长数组的两个函数。读**具名** C union 的成员（`slice_offset`、`sysop` 的三个 union）
算不安全，匿名 union 的成员不算，所以生成的操作数访问器无需标记。

Swift 6.3 与 6.4 对「调用带不安全参数闭包的函数」判定不同：6.3 认为 `withUnsafeBytes`、
`withUnsafeMutablePointer`、`withCString`、`ArraySlice.span` 的调用本身不安全，6.4 认为安全、标了反而报
「没有不安全操作」。代码以 6.4 零警告为准，6.3 下多 9 条警告，编译与测试都通过。

### `[UInt8]` 输入经 `ArraySlice` 取 span

`Array.span` 要 macOS 26，`ArraySlice.span` 任何系统可用；切片必须先存进局部变量，链式写
`bytes[...].span.bytes` 会因临时值先结束生命周期而编译失败。

## 模块结构

```
Sources/Capstone/Disassembler.swift            # 引擎：创建、选项、forEachInstruction / decode、skipdata 回调、DecodingState
Sources/Capstone/DisassemblerOptions.swift     # DetailForm、SkipData
Sources/Capstone/DisassemblyArchitecture.swift # 架构协议
Sources/Capstone/InstructionView.swift         # 视图：所有架构共有的字段，数据条目的处理
Sources/Capstone/AArch64.swift                 # AArch64 命名空间：Mode、Syntax、快照、snapshot(of:)
Sources/Capstone/AArch64+InstructionView.swift # 视图上 AArch64 的详情访问器
Sources/Capstone/AArch64Operand.swift          # AArch64.Operand 与它包装的 C 结构体
Sources/Capstone/Utils.swift                   # 枚举转换，读 C 定长数组
```

## 核心流程

1. 初始化：`cs_open` → 设语法、详情形式、无符号立即数、skipdata、自定义助记符 → `cs_malloc`。任何一步失败都
   `cs_close` 后抛 `CapstoneError`。
2. `forEachInstruction`：选缓冲（嵌套时临时分配）→ 取输入的不安全字节视图、记下输入起点 → 循环：
   `cs_disasm_iter`、按剩余字节数之差切出本条字节、把视图借给闭包。返回解掉的字节数。
3. `decode`：在 `forEachInstruction` 的闭包里对每个视图调 `Architecture.snapshot(of:)`。

## 与提案的差异

- 最低平台在步骤 1 就声明，不等步骤 6：入口一收 `RawSpan` 就需要。
- 提案没有考虑嵌套解码、capstone 残留的标志、超过 24 字节的数据条目，以上三处都是实现时加的。
- `CapstoneVersion` 改名 `EngineVersion`：编译器的符号图会隐藏「模块名 + Version」开头的符号。
- 生成器修了只差下划线的常量撞名（PowerPC、Xtensa），否则打开全部 trait 编不过，DocC 插件就是这样编译的。
- 完整经过见提案的决策日志。

## 验证

- `Tests/CapstoneTests`：`DisassemblerTests`（流式、limit、空输入、闭包抛错、多引擎、嵌套、存进类属性）、
  `DisassemblerOptionsTests`（各选项与 skipdata）、`AArch64Tests`、`InstructionInformationTests`、
  `SnapshotTests`、`SendableTests`（编译期）、`ArchitectureTests`。嵌套缓冲的用例在去掉保护时确认过会失败；
  非法标记的用例在 capstone 6.0.100 上失败、6.0.101 上通过。
- 默认 trait 与 `--traits AARCH64,SH` 两种配置，Swift 6.4 与 6.3 两个编译器；`swift build --enable-all-traits`。
- 性能：同一组 10 万条指令，流式 0.93 µs/条（直接调 C 0.78 µs），快照 1.55 µs/条、常驻 61 MiB；6.x 是
  1.57 µs/条、301 MiB。方法见提案决策日志。

## 已知降级

- **`cas` 一族多报一个写寄存器。** 见[已裁决清单](ReviewVerdicts.md)。
- **生成文档要用旧构建系统。** 默认后端会给 `Ccapstone` 抽取符号而失败；`--build-system native` 在 Swift 6.4
  里已标为废弃。
- **只有 AArch64。** 其他架构只有生成的枚举。

## 后续工作

- 适配下一个架构：步骤见[实现说明：代码生成](CodeGeneration.md#适配下一个架构要做什么)。
- 等最低编译器提到 Swift 6.4，用 `~Sendable` 取代 unavailable 的 `Sendable` 扩展。

## 延伸阅读

- [0003 - 用新 Swift 特性重写封装层](../Evolutions/0003-rewrite-with-modern-swift.md)
- [实现说明：代码生成](CodeGeneration.md)
- [代码审查已裁决清单](ReviewVerdicts.md)
- [术语表](../Glossary.md)
