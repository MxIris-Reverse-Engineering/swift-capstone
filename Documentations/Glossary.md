# 术语表

本项目专有名词与约定用法。

跨项目通用的术语（ABI 与源码兼容性之别、`SPI` 的两个含义、Mach-O、metadata、demangle 等）
收录在全局术语表中，本表只收本项目特有的，不重复登记。全局表不在本仓库内，
位于 iCloud Global 镜像的 `Documentations/Glossary.md`。

## 收录范围

**收**：

- 项目自造词与内部代号
- 本项目内反复出现的缩写
- 通用术语在本项目里的**特定含义**
- 容易混淆的近义词对，说明如何区分

**不收**：语言与框架的通用术语（Swift 的 `optional`、AppKit 的 `NSView`）。

## 维护约定

提案或专题文章引入新术语时，**同批次**登记进本表。文档里首次出现该术语时展开一次并链到这里，
之后不必每篇重复解释。

## 术语

按英文名字母序排列。

### Adapted, compiled in

说一个架构「能用」时容易混用的两种状态，彼此独立：

- **已适配（adapted）**：本包为它写了遵循 `DisassemblyArchitecture` 的类型，能用 `Disassembler` 解码。
  目前只有 `AArch64`。`Package.swift` 的默认 trait 只含已适配的架构。
- **已编入（compiled in）**：这次构建开启了它的 trait，capstone 引擎带着它的 C 代码，
  `Architecture.isCompiledIn` 为真。依赖图里别的包也可能替 capstone 开 trait，所以引擎编入了、本包却没有
  对应类型的情况是存在的。

`Architecture` 有某个 case，只说明 capstone 认识这个架构，两种状态都不蕴含。

7.0.0 之前还有第三种说法「已封装（wrapped）」：ARM、X86 等留着 v5 时代的封装、编不过，算已封装、未适配。
这些封装随 7.0.0 删除，「已封装」与「已适配」从此是一回事，不再单独使用。

- **主要出现在**：`Package.swift`、`Sources/Capstone/Architecture.swift`、`Sources/Capstone/DisassemblyArchitecture.swift`
- **延伸阅读**：[实现说明：代码生成](Internal/CodeGeneration.md)

### Data entry

数据条目：引擎带 `SkipData` 创建时，解不出指令的那段字节作为一个条目出现：`isData` 为真，助记符默认是
`.byte`，没有指令标识、别名与任何详情。只有 skipdata 会产生它；判断它在 capstone 里只能看 `id == 0`。

- **主要出现在**：`Sources/Capstone/InstructionView.swift`、`Sources/Capstone/DisassemblerOptions.swift`
- **延伸阅读**：[实现说明：解码引擎](Internal/Disassembler.md)

### Instruction view and snapshot

取指令结果的两种形态，彼此对应：

- **视图（instruction view）**：`InstructionView`，`forEachInstruction` 借给闭包的一条指令。直接读引擎的
  缓冲，不拷贝；不可复制，带不出闭包，下一条指令会覆盖它读的内存。
- **快照（snapshot）**：架构的 `Instruction` 类型，例如 `AArch64.Instruction`，由视图拷出全部字段而成。
  `Sendable` 的值，不引用引擎，可以保存、跨任务传递；`decode` 返回它。

- **主要出现在**：`Sources/Capstone/InstructionView.swift`、`Sources/Capstone/AArch64.swift`
- **延伸阅读**：[实现说明：解码引擎](Internal/Disassembler.md)、DocC 文章 Streaming and Snapshots

### Semantic configuration

语义配置：写在 `ArchitectureConfig.all` 里、生成器从头文件读不出来的那部分知识，主要是「操作数的哪个
`type` 取值对应 union 的哪个成员」——这层对应关系在 C 头文件里只出现在注释中。它不是生成器的运行参数，
而是一份按架构维护的声明，并且两个方向都会对照头文件检查。

- **主要出现在**：`Sources/CapstoneEnumsGenerator/CapstoneEnumsGenerator.swift`
- **延伸阅读**：[实现说明：代码生成](Internal/CodeGeneration.md)、[0001 - 适配 capstone v6](Evolutions/0001-adapt-capstone-v6.md)
