# Draft - 用新 Swift 特性重写封装层：按架构泛型的不可复制引擎

- **状态**: In Progress
- **作者**: JH
- **创建日期**: 2026-10-17
- **最后更新**: 2026-10-17
- **所属愿景**: 无
- **关联提案**: [0001 - 适配 capstone v6](0001-adapt-capstone-v6.md)、[0002 - 在现有 API 上补齐 v6 新增的指令信息](0002-expose-v6-instruction-information.md)
- **实现分支 / PR**: `feat/rewrite-modern-swift`
- **配套文档**: 待定 —— 落地时登记实现说明 / 使用指南的链接

## 摘要

把公开 API 换成一个按架构泛型、不可复制（`~Copyable`）的引擎 `Disassembler<AArch64>`：选项在创建时定死，
结果有两种取法——流式遍历时把指令以不可复制的视图借给闭包，不拷贝、也带不出闭包；或者一次解完，得到一组
`Sendable` 的值类型快照，可以跨任务传递。输入改收 `RawSpan`，另给 `Data` 和 `[UInt8]` 的重载。旧的
`Capstone` 类、`Instruction` 类层级和其他架构 v5 时代的封装一并删除，发 7.0.0，同一批把 MachOSwiftSection
和 swift-decompiler 迁过去。最低编译器仍是 Swift 6.2，最低系统与下游一致。

## 动机

**内存随指令数线性增长，而且要等全部指令对象释放才归还。** 现有的 `disassemble` 调用 `cs_disasm`，为每条指令
分配一个 `cs_insn`（256 字节）和一个 `cs_detail`（2216 字节），再为每条指令建一个类实例，整批内存由
`InstructionMemoryManager` 持有到最后一个实例释放。实测（release，10 万条混合 AArch64 指令）：解出的结果常驻
273 MiB，约每条 2.8 KB；同样的指令换成 `cs_disasm_iter` 复用一块缓冲，占用不随条数增长。一个 100 万条指令的
`__text` 段按此比例要 2.7 GB。耗时方面，解码再读一遍操作数是直接调 C 的 1.6–2.4 倍（两轮测量，机器负载有波动）。

**读一个字段就拷贝一次整个详情结构。** `Instruction.detail`（`Sources/Capstone/InstructionDetails.swift:6`）每次
访问都返回 `cs_detail` 的一份拷贝；`AArch64Instruction.operands`（`Sources/Capstone/AArch64.swift:59`）为取操作数
数组和个数访问了两次，再用 `Mirror` 反射去数 C 定长数组的长度（`InstructionDetails.swift:79`）。

**几类错误只能在运行时发现，或者根本发现不了：**

- 请求的指令类型和引擎架构不一致时，`disassemble` 静默返回空数组：它对每条结果做 `as? InsType`，转换失败就丢弃
  （`Sources/Capstone/Capstone.swift:104`）。
- 指令不是快照：`hasDetail` 读的是引擎**当前**的 detail 开关（`InstructionDetails.swift:22`），解码之后改了选项，
  旧指令给出的答案也跟着变。
- 选项可以随时改，而 capstone v6 的 AArch64 模块对模式和语法只叠加、不清除，切到大端就切不回来
  （见[已裁决清单](../Internal/ReviewVerdicts.md)）。
- `Architecture.instructionClass`、`registerType`、`instructionType` 遇到本构建没有封装的架构直接 trap，这三个属性
  在 2026-10-17 的审查里推迟到本提案处理。

**结果不能跨并发域。** `Capstone` 与指令对象不是 `Sendable`，而且不能是：连只读的访问器都会写引擎句柄上的错误码。
两个下游因此都在拿到指令后立刻转成自己的值类型（MachOSwiftSection 的 `ThunkInstruction`、swift-decompiler 的
`StandardLIRInstruction`）。

**输入多拷一次。** 两个下游手里都是 `[UInt8]` 或裸指针，每次调用前先转成 `Data`：MachOSwiftSection 有 5 处，
swift-decompiler 每个调用点都是。

## 前期调研

### 下游怎么用

2026-10-17 对两个下游仓库的只读调查：

- **MachOSwiftSection**：只有 `Sources/Analysis/SwiftThunkAnalysis/Instructions/CapstoneThunkDecoder.swift` 一个文件
  导入 Capstone，创建、设选项、反汇编各 1 处（`:115-121`）。每次调用新建引擎、用完即弃，从不存储或共享；
  输入是 `Data`，由 `[UInt8]` 或裸指针转换而来；架构写死 `.aarch64`；每次最多解 4–160 条；结果立即映射成自己的
  `Sendable` 值类型。绕行代码：别名靠 `(instruction, mnemonic)` 配对（`:303-308`），写回靠
  `isPostIndex == true || operandsString.contains("]!")`（`:313-318`）。tools 6.3，Swift 6 模式；CI 用
  `macos-26` 与 Xcode 26.6 / 26.4；平台 macOS 10.15、iOS 13、tvOS 13、watchOS 6、visionOS 1。
- **swift-decompiler**：5 个源文件、16 个测试文件导入 Capstone，其中 13 个测试重复同一段「创建、设选项、反汇编」
  三行；`ReferenceDecompiler.lowLevelIR(from:)` 与 `decompile(_:)` 的公开签名里直接出现 `[AArch64Instruction]`。
  每次调用新建引擎；输入由 `[UInt8]` 转成 `Data`；架构写死 `.aarch64`；按整个函数解码；结果同步交给提升器
  （lifter），立即映射成自己的类型。绕行代码：21 对别名表（`ARM64CapstoneLifter.swift:88-119`），以及因
  `AArch64Reg` 不是 `Sendable` 而标的 `@unchecked Sendable`（`ARM64Register.swift:30`）。tools 6.2，Swift 6 模式，
  没有 CI；平台 macOS 10.15。

### 工具链与系统

- GitHub 的 `macos-26` 镜像（2026-09-07 版）提供 Xcode 26.0.1–26.6，Xcode 27 还是预览。
- Xcode 27.2 SDK 能设的最低部署目标是 macOS 12 / iOS 15（`SDKSettings.plist`）。
- 本机有 Xcode 26.6（Swift 6.3.3）与 Xcode 27.2（Swift 6.4）。Swift 6.2 编译器本机没有，未实测。

### 语言特性的可用性（Swift 6.4.2 / Xcode 27.2 SDK 查证）

- `Span` / `RawSpan` 类型本身回部署到 macOS 10.14.4；`Data.span` / `Data.bytes`、`ArraySlice.span` 任何系统可用；
  `Array.span` 要 macOS 26。经 `ArraySlice` 取 span 时，切片必须先存进局部变量：链式写
  `bytes[...].span.bytes` 会因临时值先结束生命周期而编译失败（探针实测）。
- `InlineArray` 要 macOS 26；C 的定长数组在 6.4 里仍导入成元组，`InlineArray` 替代不了读 C 内存。
- 自定义 `~Escapable` 类型、或从函数返回 `~Escapable` 值，在 6.4 里都要开实验特性 `Lifetimes`。
- `~Sendable`（SE-0518）要 Swift 6.4 编译器，6.2、6.3 报错。
- 协议关联类型写 `~Copyable`（SE-0503）要 Swift 6.4，所以视图做成泛型结构体 `InstructionView<Architecture>`，
  而不是各架构协议里的关联类型。
- typed throws（SE-0413）：提案本身的建议是库的公开 API 多数情况用无类型 `throws`，typed throws 留给模块内部、
  错误集合天然封闭的场合，以及只透传调用方错误的泛型代码。

### 探针验证

`/tmp` 下的一次性探针，只编译到 SIL、不运行，Swift 6 模式，部署目标 macOS 10.15，Xcode 26.6（Swift 6.3.3）与
Xcode 27.2（Swift 6.4）各编一遍，均通过：

- 泛型、不可复制的引擎带 `deinit`，用 `@available(*, unavailable) extension Disassembler: Sendable {}` 标明不可跨
  并发域；流式遍历把 `borrowing InstructionView<Architecture>` 交给闭包；闭包不抛错时推断为 `Never`，调用处不用写
  `try`；`decode` 返回的值类型数组能交给 `Task.detached`；引擎可以存进类的属性；`Data` 与 `[UInt8]` 两种重载。
- 应当被拒绝的写法都在编译期报错：把视图赋给闭包外的变量（「implicit conversion … is consuming」）；复制引擎
  （「is borrowed and cannot be consumed」）；把引擎放进 `Sendable` 的类（两个版本都报错）。用 `~Sendable` 写法
  时还验证过：遍历途中改引擎会报独占访问冲突——本提案选项定死、引擎没有可变方法，这种情况不会再出现。
- Swift 6.3.3 在 `withUnsafeBytes` 上多报一条严格内存安全警告（6.4 不报），实现时加上 `unsafe` 标记即可。

### capstone 的行为（探针实测，capstone fork `next`）

- 详情的代价：release 下用 `cs_disasm_iter` 复用缓冲解 100 万条，关详情约 0.70 µs/条，开详情约 0.85 µs/条，
  开详情多约 22%。
- skipdata：跳过的数据作为 `id == 0`、助记符 `.byte` 的条目出现。`cs_disasm` 给它的 `detail` 为 `NULL`；
  `cs_disasm_iter` 复用的缓冲里 `detail` 指针不为空，但内容是空的——判断数据条目只能看 `id`。真实指令在
  skipdata 打开时照常带详情。
- `cs_detail.writeback` 在任何操作数被绑定时都为真（`movk`、`bfi`、`cas` 也是），不等于基址写回；详见
  [0002 - 补齐指令信息](0002-expose-v6-instruction-information.md)的决策日志。
- `CS_OPT_SYNTAX_*` 里 AArch64 模块真正起作用的只有 `CS_OPT_SYNTAX_CS_REG_ALIAS` 与
  `CS_OPT_SYNTAX_AARCH64_EXPLICIT_WIDE_IMM`；`CS_OPT_SYNTAX_NOREGNAME` 被读取，但两个分支的代码相同。
- `CS_OPT_ONLY_OFFSET_BRANCH` 只改打印文本，操作数里的立即数不变。

## 提议方案

1. **引擎** `Disassembler<Architecture>`：不可复制的结构体，持有 capstone 句柄和一块复用的 `cs_insn` 缓冲，
   `deinit` 里释放。不是 `Sendable`。没有可变方法。
2. **架构是类型参数。** 每个已适配的架构是一个命名空间枚举（目前只有 `AArch64`），遵循
   `DisassemblyArchitecture`，带自己的 `Mode`、`Syntax`、指令标识、操作数与快照类型。没有封装的架构写不出类型，
   「运行时才发现不支持」从结构上消失。
3. **选项在创建时定死**：模式、语法、详情形式（别名形式 / 真实指令）、无符号立即数、skipdata、自定义助记符，
   都是初始化参数。要换选项就新建一个引擎。
4. **详情始终打开。** 所有详情字段都不是可选值。skipdata 跳过的数据作为 `isData == true` 的条目出现，详情字段为空。
5. **两种取结果的方式**：`forEachInstruction` 流式遍历，把 `borrowing InstructionView<Architecture>` 借给闭包；
   `decode` 一次解完，返回 `[Architecture.Instruction]`（`Sendable` 的值类型快照，读写寄存器在构造时就算好）。
   快照由流式遍历构造，读 C 内存的代码只有视图这一处。
6. **输入**：`RawSpan`，另给 `Data` 与 `[UInt8]` 的重载。
7. **错误**：初始化器抛 `CapstoneError`（普通 `throws`）。遍历与解码不会失败——缓冲在初始化时就分配好——
   `forEachInstruction` 只透传闭包的错误类型（`throws(Failure)`）。`CapstoneError` 去掉永远不会抛出的 `.ok`
   与随「详情始终打开」失去意义的 `.detailNotAvailable`，并补全新 API 可能遇到的错误码映射。
8. **生成器**：枚举的名字不变（`AArch64Reg`、`AArch64Ins`……，减少下游改动）；操作数访问器改为生成到
   `AArch64.Operand`；架构表只保留 `Architecture` 枚举，不再生成 `Instruction` 子类与分发。
9. **删除**：`Capstone` 类、`Instruction` 类层级、`DisassemblyOption`、全局的 `Mode` / `Syntax` /
   `SkipDataResult`、其他 15 个架构 v5 时代的封装、`Tests/CapstoneTests/Legacy/`、`docs/`。
10. **工程**：整个包切到 Swift 6 语言模式；Capstone 模块开严格内存安全检查（`unsafe` 收拢在与 C 交互的一层）；
    声明与下游一致的最低平台（`Span` 需要 macOS 10.14.4 以上，不声明就要逐处标 `@available`）。
11. **文档**：README 重写；加 DocC 文档目录，用 swift-docc-plugin 生成，生成物不入库；`Examples/cstool` 改用新
    API 并依赖本仓库。
12. **版本**：7.0.0；不再让主版本号对齐 capstone，对应的 capstone 版本写在 README 里。

### 非目标

- 不适配 AArch64 以外的架构；它们以后按「生成器 + 手写」的流程逐个加，每个一份提案或一步。
- 不提供只出文本、关掉详情的引擎；真有需要时可以纯新增一个类型。
- 不做 actor、不做 `async` 版本、不做 `AsyncSequence`。
- 不使用 `~Escapable`、`~Sendable`、`InlineArray`、`Iterable`、`UniqueArray`，理由见「替代方案考量」。
- 不为旧 API 留过渡期，也不提供 `@available(*, deprecated, renamed:)` 垫片。
- 不加常驻的基准测试 target；性能对比做一次测量，写进本提案。
- 不修 capstone 上游的语义问题（`mode` / `syntax` 只能叠加、`writeback` 的含义）；见已裁决清单。

## 详细设计

签名以探针验证过的形状为准；实现时以真实的 capstone 调用替换探针里的占位。

### 架构协议与 AArch64 命名空间

```swift
/// An architecture this package wraps, used as the type parameter of `Disassembler`.
/// Conforming types are namespaces and are never instantiated.
public protocol DisassemblyArchitecture {
    /// Modes capstone accepts for this architecture, such as endianness.
    associatedtype Mode: OptionSet, Sendable where Mode.RawValue == UInt32
    /// Printing options capstone's module for this architecture reads.
    associatedtype Syntax: OptionSet, Sendable where Syntax.RawValue == UInt32
    /// The generated instruction identifiers, aliases included.
    associatedtype InstructionIdentifier: RawRepresentable, Hashable, Sendable
        where InstructionIdentifier.RawValue == UInt32
    /// A self-contained copy of one decoded instruction.
    associatedtype Instruction: Sendable

    /// The `cs_arch` member capstone knows this architecture by.
    static var architecture: Architecture { get }

    /// Copies what the view exposes into a value that no longer needs the engine.
    static func snapshot(of view: borrowing InstructionView<Self>) -> Instruction
}

public enum AArch64: DisassemblyArchitecture {
    public typealias InstructionIdentifier = AArch64Ins

    public struct Mode: OptionSet, Sendable {
        public let rawValue: UInt32
        public init(rawValue: UInt32)
        public static let littleEndian: Mode       // CS_MODE_LITTLE_ENDIAN, the empty set
        public static let bigEndian: Mode          // CS_MODE_BIG_ENDIAN
        public static let appleProprietary: Mode   // CS_MODE_APPLE_PROPRIETARY: AMX and other Apple-only instructions
    }

    public struct Syntax: OptionSet, Sendable {
        public let rawValue: UInt32
        public init(rawValue: UInt32)
        public static let capstoneRegisterAlias: Syntax   // CS_OPT_SYNTAX_CS_REG_ALIAS
        public static let explicitWideImmediate: Syntax   // CS_OPT_SYNTAX_AARCH64_EXPLICIT_WIDE_IMM
    }

    /// One operand. Moved from `AArch64Instruction.Operand`; its accessors stay generated.
    public struct Operand: Sendable { /* type, access, register, immediateValue, memory, systemOperand, … */ }

    /// A decoded instruction, copied out of capstone. `isData` entries come from skipdata
    /// and carry no details: `identifier` is nil and the arrays are empty.
    public struct Instruction: Sendable {
        public let address: UInt64
        public let bytes: [UInt8]
        public let mnemonic: String
        public let operandsText: String
        public let identifier: AArch64Ins?
        public let alias: AArch64Ins?
        public let isData: Bool
        public let isIllegal: Bool
        public let usesAliasDetails: Bool
        public let operands: [Operand]
        public let registersRead: [AArch64Reg]           // explicit and implicit, from cs_regs_access
        public let registersWritten: [AArch64Reg]
        public let implicitRegistersRead: [AArch64Reg]
        public let implicitRegistersWritten: [AArch64Reg]
        public let groups: [AArch64Grp]
        public let conditionCode: AArch64CondCode?
        public let updatesFlags: Bool
        public let isPostIndex: Bool
        public let writesBackBaseRegister: Bool
    }
}
```

### 视图

```swift
/// One instruction as capstone left it in the engine's buffer, lent to the closure of
/// `forEachInstruction`. It cannot be copied or kept: the next instruction overwrites
/// the buffer it reads from.
public struct InstructionView<Architecture: DisassemblyArchitecture>: ~Copyable {
    public var address: UInt64 { get }
    public var bytes: [UInt8] { get }
    public var mnemonic: String { get }
    public var operandsText: String { get }
    public var identifier: Architecture.InstructionIdentifier? { get }
    public var alias: Architecture.InstructionIdentifier? { get }
    public var isData: Bool { get }
    public var isIllegal: Bool { get }
    public var usesAliasDetails: Bool { get }
}

extension InstructionView where Architecture == AArch64 {
    public var operandCount: Int { get }
    public func operand(at index: Int) -> AArch64.Operand
    public var operands: [AArch64.Operand] { get }
    public var groups: [AArch64Grp] { get }
    public var conditionCode: AArch64CondCode? { get }
    public var updatesFlags: Bool { get }
    public var isPostIndex: Bool { get }
    public var writesBackBaseRegister: Bool { get }
    public var implicitRegistersRead: [AArch64Reg] { get }
    public var implicitRegistersWritten: [AArch64Reg] { get }
    /// Calls cs_regs_access, which needs the engine; that is why it is a method.
    public func registersAccessed() -> (read: [AArch64Reg], written: [AArch64Reg])
}
```

### 引擎与选项

```swift
public enum DetailForm: Sendable {
    /// An alias reports its own operands: `mov x0, x1` has two. The default.
    case alias
    /// An alias reports the operands of the instruction it stands for: `mov x0, x1`
    /// gets the three of `orr x0, xzr, x1` (CS_OPT_DETAIL_REAL).
    case realInstruction
}

public struct SkipData {
    /// Mnemonic printed for skipped bytes; capstone's default is `.byte`.
    public var mnemonic: String?
    /// Bytes to skip at `offset`, counted from the start of `code`; 0 stops disassembly.
    /// Without it capstone skips one instruction unit, four bytes on AArch64.
    public var bytesToSkip: ((_ code: RawSpan, _ offset: Int) -> Int)?
    public init(mnemonic: String? = nil, bytesToSkip: ((_ code: RawSpan, _ offset: Int) -> Int)? = nil)
}

public struct Disassembler<Architecture: DisassemblyArchitecture>: ~Copyable {
    /// - throws: `CapstoneError.unsupportedArchitecture` when capstone was built without
    ///   the architecture, `.invalidMode`, `.invalidOption`, `.outOfMemory`.
    public init(
        mode: Architecture.Mode = [],
        syntax: Architecture.Syntax = [],
        details: DetailForm = .alias,
        unsignedImmediates: Bool = false,
        skipData: SkipData? = nil,
        mnemonics: [Architecture.InstructionIdentifier: String] = [:]
    ) throws

    /// Lends each decoded instruction to `body`, in order. Stops at the first bytes that
    /// do not decode (unless skipData is set), at the end of `code`, or after `limit`
    /// instructions. Returns the number of bytes consumed.
    @discardableResult
    public func forEachInstruction<Failure: Error>(
        in code: RawSpan,
        address: UInt64,
        limit: Int? = nil,
        _ body: (borrowing InstructionView<Architecture>) throws(Failure) -> Void
    ) throws(Failure) -> Int

    /// Decodes into values that no longer need the engine.
    public func decode(_ code: RawSpan, address: UInt64, limit: Int? = nil) -> [Architecture.Instruction]

    // The same two entry points for `Data` and `[UInt8]`: `Data.bytes` reaches a RawSpan on
    // every system, `Array.span` only on macOS 26.
}

@available(*, unavailable)
extension Disassembler: Sendable {}
```

`Architecture` 枚举保留，作为「capstone 支持哪些架构」的查询（加 `isCompiledIn`，对应 `cs_support`）；
`instructionClass`、`registerType`、`instructionType`、`wrapped` 删除。

### 并发与内存

- 引擎：非 `Sendable`；一个任务一个引擎。并行时每个子任务各建一个；AArch64 指令定长，任意 4 字节对齐处都能切分。
- 视图：不可复制，只以借用形式存在于闭包内，复制、带出闭包、塞进 `Sendable` 类型都是编译错误。
- 快照：`Sendable` 值类型，不引用句柄。
- 一个引擎只持有一块 `cs_insn` 缓冲（`cs_malloc`），遍历时复用；skipdata 回调的上下文放在引擎持有的一个类实例里，
  因为 C 回调需要稳定的地址，而结构体会被移动。

### 下游迁移后的样子

```swift
// MachOSwiftSection, CapstoneThunkDecoder: stream straight into its own values
let disassembler = try Disassembler<AArch64>()
var thunkInstructions: [ThunkInstruction] = []
disassembler.forEachInstruction(in: machineCode.bytes, address: startAddress, limit: maximumInstructionCount) { instruction in
    thunkInstructions.append(thunkInstruction(from: instruction))
}

// swift-decompiler, ReferenceDecompiler: whole functions as values
let instructions = try Disassembler<AArch64>().decode(machineCode, address: address)
```

## 替代方案考量

- **引擎做成 actor，或提供 `async` 版本** —— 反汇编是同步、纯 CPU 的 C 调用；actor 只会把调用排成串行并多出
  切换开销。否。
- **指令做成 `AsyncSequence`** —— 同上，而且元素是借用的视图，异步边界上存不住。否。
- **视图用 `~Escapable`** —— 在 6.4 里自定义 `~Escapable` 类型要开实验特性 `Lifetimes`，源码可能随编译器版本失效。
  不可复制加借用传参达到同样的「带不出去」，探针已验证。否。
- **公开 API 用 typed throws** —— 错误类型写进签名后，日后改动就是破坏性变更；按 SE-0413 的建议只用于透传。否。
- **用 `~Sendable` 表达非 Sendable** —— 要 Swift 6.4，而 MachOSwiftSection 的 CI 还在 Xcode 26.6。用
  `@available(*, unavailable) extension …: Sendable {}`，等下限提到 6.4 再换。推迟。
- **快照里用 `InlineArray`** —— 要 macOS 26，下游最低 macOS 10.15。否。
- **新旧 API 并存一个版本，或新 API 放进单独模块** —— 生成器要为两套 API 各产出访问器，长期维护两套。用户否决。
- **一个引擎类型、运行时传架构** —— 读架构专属字段要做类型转换，「架构不支持」只能运行时报。用户否决。
- **选项运行时可改** —— 继承 v6 模式和语法只能叠加的问题，引擎也得是 `var`。用户否决。
- **详情可关（字段变可选），或分两个引擎类型** —— 两个下游始终开详情；关详情只省约 18% 的解码时间。用户否决，
  需要时再纯新增只出文本的引擎。
- **skipdata 数据用单独的元素类型，或不出现在结果里** —— 前者让不用 skipdata 的调用方也得多写一层 `switch`，后者
  让列表工具打印不出数据行。用户否决。
- **保留其他架构 v5 时代的封装** —— 与新 API 差距太大，留着只会误导。用户否决。
- **保留 `docs/`，或不提供静态文档** —— swift-doc 已于 2023 年归档，生成物停在 v5。用户选 DocC。
- **发 6.1.0、继续对齐 capstone 主版本** —— 写着 `from: "6.0.1"` 的依赖方一跑 `swift package update` 就会拉到
  编译不过的新版。用户否决。
- **引擎类型继续叫 `Capstone`** —— 与模块同名时，`Capstone.X` 会被当成类型的成员去查找，模块里的其他名字无法用
  模块名限定。用户否决。
- **用宏生成访问器** —— 理由同提案 0001：宏读不到 C 头文件，展开结果也无法 `--check`。否。

## 影响

### 源码兼容性（source compatibility）

**有破坏**，旧 API 整体删除。主要的改法：

```swift
// Before
let capstone = try Capstone(arch: .aarch64, mode: [Mode.endian.little])
try capstone.set(option: .detail(value: true))
let instructions: [AArch64Instruction] = try capstone.disassemble(code: Data(bytes), address: address)

// After
let instructions = try Disassembler<AArch64>().decode(bytes, address: address)
```

| 旧 | 新 |
|----|----|
| `Capstone(arch:mode:)` + `set(option:)` | `Disassembler<AArch64>(mode:syntax:details:…)` |
| `disassemble(code:address:count:)` | `decode(_:address:limit:)` 或 `forEachInstruction(in:address:limit:_:)` |
| `AArch64Instruction` | `AArch64.Instruction`（快照）/ `InstructionView<AArch64>`（流式） |
| `AArch64Instruction.Operand` | `AArch64.Operand` |
| `instruction.instruction` | `identifier` |
| `operandsString` | `operandsText` |
| `registersAccessed` / `registersAccessedImplicitly` | `registersRead` / `registersWritten`、`implicitRegistersRead` / `implicitRegistersWritten` |
| `Mode.endian.little`、`Mode.aarch64.appleProprietary` | `AArch64.Mode.littleEndian`、`.appleProprietary` |
| `DisassemblyOption.realInstructionDetail` | `details: .realInstruction` |

形状变了（类变结构体、属性变参数），`@available(*, deprecated, renamed:)` 表达不了，不提供过渡垫片。

### ABI 兼容性

不适用 —— 本库以 SPM 源码分发，使用方每次重新编译。

### 下游影响

- 本仓库：`Tests/CapstoneTests` 全部改用新 API；`Examples/cstool` 改写。
- **MachOSwiftSection**：只改 `CapstoneThunkDecoder.swift`；别名表与 `"]!"` 匹配换成 `alias` 与
  `writesBackBaseRegister`。依赖改为 `from: "7.0.0"`。
- **swift-decompiler**：`ReferenceDecompiler.lowLevelIR(from:)`、`decompile(_:)` 的参数从 `[AArch64Instruction]`
  改为 `[AArch64.Instruction]`，属于它自己的公开 API 变化；`ARM64CapstoneLifter` 改读快照字段；13 个测试的三行
  调用合成一行；`ARM64Register` 去掉 `@unchecked Sendable`。依赖改为 `from: "7.0.0"`。

### 文档与示例

README 重写（用法、版本与 capstone 的对应、Apple 专有指令模式）；新增 DocC 文档目录；删除 `docs/`；
`Examples/cstool` 改写；AGENTS.md 与[实现说明：代码生成](../Internal/CodeGeneration.md)随生成器的变化更新。

## API 演进与废弃策略

- 旧 API 在 7.0.0 直接删除，不留废弃期：形状变化无法用废弃标注过渡；两个已知下游在同一批迁移；还不能迁移的
  使用方继续用 6.x。
- 需要 semver major：7.0.0。主版本号不再对齐 capstone，README 写明对应的 capstone 版本。
- 6.x 的修复在单独的 `v6` 分支上进行（仓库已有 `v4`、`v5` 分支的先例）。

## 落地步骤

每一步都能单独构建并通过测试。

1. **新引擎骨架**：`DisassemblyArchitecture`、`AArch64` 命名空间与 `Mode`、`Disassembler` 的初始化、`deinit`、
   `forEachInstruction`，与旧 API 在模块内暂时并存（不发布）。测试：生命周期、按编码核对的流式结果。
2. **AArch64 视图与操作数**：`InstructionView<AArch64>` 的全部访问器（含补齐指令信息那批属性）；生成器把操作数
   访问器改生成到 `AArch64.Operand`；现有 AArch64 与指令信息测试改到新 API。
3. **快照与输入重载**：`AArch64.Instruction`、`decode`、`Data` / `[UInt8]` 重载；`SendableTests` 覆盖新类型。
4. **创建时选项**：语法、详情形式、无符号立即数、skipdata（含数据条目）、自定义助记符。
5. **删除旧 API**：`Capstone` 类、`Instruction` 类层级、`DisassemblyOption`、全局 `Mode` / `Syntax`、其他架构 v5
   封装与 `Legacy/` 测试；生成器不再产出 `Instruction` 子类与分发；`CapstoneError` 清理。
6. **工程设置**：全包切 Swift 6 语言模式、Capstone 模块开严格内存安全、声明最低平台。
7. **文档与示例**：README、DocC 目录、删除 `docs/`、AGENTS.md、实现说明、`Examples/cstool`。
8. **性能对比**：同一组 10 万条指令，旧 API、新 API 的流式与快照各测时间与常驻内存，结果写进本提案的决策日志。
9. **下游迁移**：MachOSwiftSection 与 swift-decompiler 在本地依赖下改完并通过各自的测试；7.0.0 发布后再把依赖
   改成远程版本。

**收尾时必须判断两件事**（判断结果写进决策日志，不允许沉默跳过）：

- **要不要配套专题文章** —— 视图不能留存、流式与快照怎么选、skipdata 数据条目，属于从签名看不出来的调用方契约，
  倾向于写成 DocC 文章（面向公众，英文）。生成器的变化更新进现有的实现说明。
- **有没有引入新术语** —— 「视图」「快照」若在文档中沿用，登记进[术语表](../Glossary.md)。

## 决策日志

| 日期 | 变更 | 说明 |
|------|------|------|
| 2026-10-17 | Created as Draft | 用户原始描述：「扫描一下库有什么问题，另外如何用最新Swift特性重写，例如Swift Concurrency, Typed throws, ~Copyable, Span, InlineArray等等」；随后补充「必须保持非 Sendable可以用~Sendable」。按完整档提问三轮。 |
| 2026-10-17 | 先修审查出的问题，再写本提案 | 用户同意「先修问题」。修复与裁决见[已裁决清单](../Internal/ReviewVerdicts.md)与提案 0001 的决策日志。 |
| 2026-10-17 | 第一轮：直接替换并发大版本 | 否决「新旧并存一个版本」与「新 API 放进单独模块」：生成器要为两套 API 各产出访问器。两个下游在同一批迁移。 |
| 2026-10-17 | 第一轮：缺口先在现有 API 上补 | 别名、写回、真实指令详情、Apple 专有指令、Sendable 走单独的精简提案，见[0002 - 补齐指令信息](0002-expose-v6-instruction-information.md)；那批测试成为本提案必须通过的回归测试。 |
| 2026-10-17 | 第一轮：最低编译器保持 Swift 6.2 | 否决「提到 6.4 并用 `~Sendable`」：MachOSwiftSection 的 CI 用 Xcode 26.6，GitHub 上 Xcode 27 仍是预览。改用 unavailable 的 `Sendable` 扩展。 |
| 2026-10-17 | 第一轮：引擎按架构做泛型 | 否决「一个引擎类型、运行时传架构」。两个下游都写死 AArch64。 |
| 2026-10-17 | 第二轮：流式与快照都提供 | 否决「只要快照」（只读一两个字段也要整份拷贝）与「只要流式」（要存结果的调用方得自己定义值类型）。 |
| 2026-10-17 | 第二轮：选项在创建时定死 | 否决「运行时可改」：会继承 v6 模式和语法只能叠加的问题。 |
| 2026-10-17 | 第二轮：发 7.0.0 | 否决 6.1.0：`from: "6.0.1"` 的依赖方会被自动升到编译不过的版本。放弃主版本号对齐 capstone。 |
| 2026-10-17 | 第二轮：引擎叫 `Disassembler` | 否决沿用 `Capstone`：类型与模块同名导致无法用模块名限定。 |
| 2026-10-17 | 第三轮：详情始终打开 | 否决「可关、字段变可选」与「两个引擎类型」。实测关详情只省约 18% 的解码时间。 |
| 2026-10-17 | 第三轮：skipdata 数据作为带标记的条目 | 否决「单独的元素类型」与「不出现在结果里」。 |
| 2026-10-17 | 第三轮：删除其他架构 v5 时代的封装与 Legacy 测试 | 否决「保留到各自适配」。 |
| 2026-10-17 | 第三轮：删除 `docs/`，改用 DocC | 否决「删除且不提供静态文档」与「保留现状」。swift-doc 已于 2023 年归档。 |
| 2026-10-17 | 更正：流式视图不用 `~Escapable` | 最初设想用 `~Escapable` 视图；查证后 6.4 里自定义此类类型要开实验特性 `Lifetimes`，改用不可复制加借用传参，探针验证可行。 |
| 2026-10-17 | 更正：公开 API 不用 typed throws | 最初设想公开 API 写 `throws(CapstoneError)`；按 SE-0413 的建议与项目的 modernize-swift 规则，只在透传处使用。 |
| 2026-10-17 | 用户确认共识 | 第三轮后列出全部决定与自定的假设，用户确认，开始写本提案。 |
| 2026-10-17 | Draft → Accepted | 用户批准：「可以，按你说的开工」。 |
| 2026-10-17 | Accepted → In Progress | 在本地分支 `feat/rewrite-modern-swift` 上按落地步骤逐步提交；`next` 停在提案提交处，合并与推送等用户确认。 |
| 2026-10-17 | 步骤 1：最低平台提前到这一步声明 | 入口一收 `RawSpan` 就要求 macOS 10.14.4 以上，不声明就得逐处标 `@available`。按两个下游的最低版本声明 macOS 10.15、iOS 13、tvOS 13、watchOS 6、visionOS 1；步骤 6 只剩语言模式与严格内存安全。 |
| 2026-10-17 | 步骤 1：闭包里再次用同一引擎解码时，另用一块缓冲 | 提案没有考虑这种用法：闭包借用着引擎，可以在里面再调 `forEachInstruction` 或 `decode`，内层解码会覆盖外层视图读的那块缓冲。改为由引擎记录是否正在解码，嵌套的一轮临时 `cs_malloc` 一块、用完释放。测试先在去掉这层保护时确认失败。 |
| 2026-10-17 | 步骤 1：视图的 `bytes` 取自输入，不取 capstone 的副本 | `cs_insn.bytes` 只有 24 字节，skipdata 回调要求跳过更多时，数据条目的副本是截断的，`size` 也被截到 24。引擎按每次调用前后剩余字节数之差，从输入里切出这一条覆盖的字节。 |
| 2026-10-17 | 步骤 2：每条指令解码前清掉 `illegal`、`is_alias`、`alias_id` | capstone 只在指令非法时置 `illegal`、从不清零，`cs_disasm_iter` 复用缓冲时它会沿用到后面每一条：`ldr x1, [x1, #8]!` 之后的合法指令也报非法。`cs_disasm` 每批用 `calloc` 的新内存，所以旧 API 没暴露这个问题。引擎在每次调用前清零这三个字段；测试在去掉清零时确认失败。上游的修法应在 `cs_disasm_iter` 里，未在 fork 中改动。 |
| 2026-10-17 | 步骤 2：`AArch64OperandValue` 改为继承 `Sendable` | 提案 0002 为保持纯新增没加；7.0.0 本就是破坏性版本，遵循者都已是 `Sendable`，加上后 `value` 取到的存在类型可以直接跨并发域。操作数里保存 C 结构体的属性从 `op` 改名为 `capstoneOperand`，生成器同步。 |
| 2026-10-17 | 步骤 3：快照加 `description` | 旧的 `Instruction` 类有 `description`（助记符加操作数文本），调试与日志常用；快照沿用，操作数为空时不留尾随空格。快照的初始化器不公开：操作数包着 C 结构体，调用方本来也造不出来。 |
| 2026-10-17 | 步骤 4：skipdata 回调的偏移由引擎换算 | `cs_disasm_iter` 调回调时传的是剩余输入和偏移 0，不是整段输入和从头算的偏移。引擎在每一轮记下输入的起点（嵌套的一轮另记、结束时还原），换算成提案约定的「整段输入 + 从头算的偏移」。回调要求跳过超过 24 字节时，数据条目的 `bytes` 仍是完整的，见步骤 1 的决定。 |
| 2026-10-17 | 步骤 4：数据条目的详情 | 探针与变异测试表明，AArch64 模块每次尝试解码前先清零详情，数据条目的详情本来就是空的；视图仍对数据条目一律不读详情，因为这取决于各架构模块，别的模块未必清零。 |
| 2026-10-17 | 步骤 4：自定义助记符照 capstone 的实际行为写进文档，不在 fork 里改 | capstone 的 `str_replace` 假定打印出的助记符以指令名开头，直接替换掉与指令名等长的前缀，所以给 `orr` 定制助记符也会把它的别名 `mov x0, x1` 印成 `or x0, x1`。这是上游缺陷；两个下游都不用这个选项。文档与测试按实际行为写，fork 是否修由用户决定。 |
| 2026-10-17 | 步骤 4：`CapstoneError` 加 `Hashable` | 让测试和调用方能直接比较错误，例如 `#expect(error == .invalidMode)`。其余清理留到步骤 5。 |
| 2026-10-17 | 步骤 5：`Capstone.version` 换成 `CapstoneVersion.current`，`BuildMode` 不再提供 | 提案只交代了 `supports(arch:)` 的去向（`Architecture.isCompiledIn`）。版本号仍有用处（`Examples/cstool` 的 `--version`、报问题时），做成一个可比较的小值类型，不叫 `Capstone`，理由同引擎的命名。`supports(buildMode:)` 查的是 diet 与 X86 精简两种编译方式，capstone fork 的 SwiftPM 构建两者都不提供，结果恒为假，删除。 |
| 2026-10-17 | 步骤 5：随类层级删除的还有 `InstructionGroup`、`OperandContainer`、`InstructionOperand`、`InstructionType` 与按名字查寄存器 | 前四个只为类层级服务：`AArch64Grp` 已含 jump、call、ret 等通用分组。`name(ofRegister:)` 与 `registerNames*` 依赖引擎句柄，两个下游都不用；寄存器的 Swift 枚举本身就带名字。 |
| 2026-10-17 | 步骤 5：`CapstoneError` 只留创建引擎可能遇到的错误 | `outOfMemory`、`unsupportedArchitecture`、`invalidMode`、`invalidOption`，其余归 `unknown(code:)`。删掉的除提案点名的 `.ok`、`.detailNotAvailable`，还有 `.unsupportedVersion`、`.notInDiet`、`.skipData`、`.unsupportedSyntax`：新 API 碰不到这些错误码，`.unsupportedSyntax` 还引用了被删的全局 `Syntax`。 |
| 2026-10-17 | 步骤 5：工具函数改用完整的泛型参数名 | `Utils.swift` 的类型转换函数沿用 v5 时代的 `T`、`U`、`x`，按项目规则改为 `Source`、`Target`、`value`；删掉不再使用的 `optionalNumericCast` 与 `nonZero`。 |
| 2026-10-17 | 步骤 6：整包切到 Swift 6，Capstone 模块开严格内存安全 | 生成器、插件与测试 target 在 Swift 6 下无需改动即可编过。`Disassembler`、`InstructionView` 与内部的 `DecodingState` 标 `@safe`（指针都不出引擎、视图出不了闭包），与 C 交互的表达式逐处标 `unsafe`，集中在引擎、视图、操作数类型与读 C 定长数组的两个工具函数里。读具名 C union 的成员（`slice_offset`、`sysop` 的三个 union）也算不安全，匿名 union 成员不算，所以生成的操作数访问器无需标记。 |
| 2026-10-17 | 步骤 6：以 Swift 6.4 零警告为准，6.3.3 留 9 条 | 两个编译器对「调用带不安全参数类型的闭包的函数」判定不同：6.3.3 认为 `withUnsafeBytes`、`withUnsafeMutablePointer`、`withCString`、`ArraySlice.span` 的调用本身不安全，6.4 认为安全，标上 `unsafe` 反而报「没有不安全操作」。没有一种写法能让两者都零警告；用 `#if compiler` 分两份代码不值得。以当前工具链为准，6.3.3 下编译通过、测试通过（59 个），只多 9 条警告；作为依赖被编译时 SwiftPM 不显示依赖的警告。 |
| 2026-10-17 | 步骤 7：swift-docc-plugin 只在设了环境变量时加入，文档用旧构建系统生成 | 无条件依赖它，会让每个依赖本包的项目解析时都去拉 swift-docc-plugin 与 symbolkit。改为 `SWIFT_CAPSTONE_DOCUMENTATION=1` 时才加入，沿用本仓库 `USING_LOCAL_DEPENDENCIES` 的做法。默认的 Swift Build 后端生成文档时会给 capstone 的 C 目标 `Ccapstone` 抽取符号，capstone 的私有头文件一起展开就互相冲突，所以命令要加 `--build-system native`（6.4 里已标为废弃，以后若被移除需另找办法）。 |
| 2026-10-17 | 步骤 7：修生成器的撞名，让所有架构的生成枚举都能编过 | 文档插件不论传什么 trait 都打开全部 trait 编译，于是暴露出 PowerPC 的 `PPC_INS_ALIAS_MR` 与 `PPC_INS_ALIAS_MR_`、Xtensa 的 `XTENSA_INS_L32I` 与 `XTENSA_INS__L32I` 这类只差下划线的常量，去掉下划线后同名，枚举编不过。这是提案 0001 起就有的生成器缺陷，违背它「看不懂就报错」的原则。改为撞名时保留两端下划线（`aliasMr_`、`_l32i`），仍撞名就报错；先出现的常量保持原名，AArch64 的生成结果不变。测试先红后绿；`swift build --enable-all-traits --build-tests` 与全 trait 测试通过。 |
| 2026-10-17 | 步骤 7：`CapstoneVersion` 改名 `EngineVersion` | Swift 的符号图生成器会把名字以「模块名 + Version」开头的符号当作 C 伞头文件的版本号常量隐藏（`lib/SymbolGraphGen/SymbolGraph.cpp`），`CapstoneVersion` 因此不出现在文档里。 |
| 2026-10-17 | 步骤 7：`Architecture` 加 `CaseIterable` | `Examples/cstool` 的 `--version` 要列出编入的架构；旧版靠试探原始值。生成器给枚举加上这个遵循。 |
| 2026-10-17 | 步骤 7：文档、示例与 `docs/` | README 重写；DocC 目录含首页与两篇文章：「Streaming and Snapshots」写视图不能留存、两种取法怎么选、数据条目、一任务一引擎，「Migrating from Version 6」给出新旧对照与行为变化。所有代码片段在临时探针测试里编译运行过。`docs/`（swift-doc 生成、停在 v5 命名）删除。`Examples/cstool` 改为依赖本仓库、只做 AArch64，参数与 capstone 的 cstool 一致（`-d`、`-r`、`-a`、`-s`、`-u`、`+apple`），测试改用 swift-testing、直接测格式化函数。 |
