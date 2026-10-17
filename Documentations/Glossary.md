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

### Adapted, wrapped, compiled in

说一个架构「能用」时容易混用的三种状态，彼此独立：

- **已适配（adapted）**：它的 Swift 封装已经按 capstone v6 改写、能编译。目前只有 AArch64。
  `Package.swift` 的默认 trait 只含已适配的架构。
- **已封装（wrapped）**：本包为它写过 Swift 封装，即 `Architecture.wrapped` 里的架构，不管能否编译。
  ARM、X86 等属于已封装、未适配：封装还是 v5 时代的代码。SH、TriCore 与 v6 新增的五个架构连封装都没有。
- **已编入（compiled in）**：这次构建开启了它的 trait，capstone 引擎带着它的 C 代码。依赖图里别的包
  也可能替 capstone 开 trait，所以引擎编入了、本包却没有对应封装的情况是存在的。

- **主要出现在**：`Package.swift`、`Sources/Capstone/Architecture+Generated.swift`
- **延伸阅读**：[实现说明：代码生成](Internal/CodeGeneration.md)

### Semantic configuration

语义配置：写在 `ArchitectureConfig.all` 里、生成器从头文件读不出来的那部分知识，主要是「操作数的哪个
`type` 取值对应 union 的哪个成员」——这层对应关系在 C 头文件里只出现在注释中。它不是生成器的运行参数，
而是一份按架构维护的声明，并且两个方向都会对照头文件检查。

- **主要出现在**：`Sources/CapstoneEnumsGenerator/CapstoneEnumsGenerator.swift`
- **延伸阅读**：[实现说明：代码生成](Internal/CodeGeneration.md)、[0001 - 适配 capstone v6](Evolutions/0001-adapt-capstone-v6.md)
