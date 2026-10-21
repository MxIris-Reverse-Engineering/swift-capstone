# 0004 - 重写之后的现代化收尾

- **状态**: Implemented
- **创建日期**: 2026-10-21
- **最后更新**: 2026-10-21
- **配套文档**: [实现说明：解码引擎](../Internal/Disassembler.md)、[实现说明：代码生成](../Internal/CodeGeneration.md)（均为更新）

## 摘要

7.0.0 用新 Swift 特性重写之后，又对全包做了一次现代化审查（只加警告开关的诊断编译，加按模式搜索源码），
剩下的都是小件。本提案把值得做的一次做完：快照路径去掉两次堆分配；C 模块改为 `internal import`；补齐一处
隐性的 import 依赖；给几个公开类型显式标明是否 `Sendable`；生成器与插件里会抛 ObjC 异常的读管道方法换掉；
以及审查顺带发现的三个生成器问题——别名常量被生成成 `Int`、命令行静默忽略不认识的参数、每次调用都现建一个
`Set`。公开 API 的形状不变，唯一的类型变化是别名常量从 `Int` 改为所属的枚举类型；原来的写法本来就不能当
枚举值用。

## 方案

库（`Sources/Capstone`）：

- `registersAccessed()` 的两个 64 项临时缓冲用 `withUnsafeTemporaryAllocation` 放到栈上。`decode` 为每条指令
  做快照都会调用它。
- 所有文件改为 `internal import Ccapstone`（SE-0409），由编译器保证公开签名里不出现 C 类型。
- `AArch64+InstructionView.swift` 补 `import Foundation`：其中的 `String.contains` 来自 Foundation，此前靠
  `Disassembler.swift` 的 import 间接可见。Capstone target 打开 `MemberImportVisibility`，以后这类间接依赖在
  编译期就会报出来。
- `AArch64` 声明 `Sendable`；`SkipData` 与 `InstructionView` 用带说明的 unavailable 扩展标明不是 `Sendable`。
- 两处文档写明会 trap 的检查（`limit` 为负、`operand(at:)` 越界）补上退出测试。

生成器与插件：

- 别名常量生成为所属的枚举类型，指向第一个同值的 case（`public static let noneActive: AArch64CondCode = .eq`），
  并重新生成全部架构的枚举。
- 命令行遇到不认识的参数、或选项缺少取值时报错退出，不再静默忽略。插件同样拒绝不认识的参数，并把 `--check`
  转交给生成器。
- `unexposedOperandTypes` 从每次现建 `Set` 的计算属性改为 `static let`；生成的操作数文件同样用 `internal import`。
- `readDataToEndOfFile()` 换成 `readToEnd()`；`String(contentsOf:)` 写明 UTF-8；补两处 `any`；`generate(...)`
  去掉没有任何 `await` 的 `async`。
- 删除 `CapstoneEnumsGeneratorTests` 上编译器不认识、一直被静默忽略的实验开关 `SwiftTesting`。

未经询问采用的假设：

- 最低工具链是 Swift 6.3（还要能用 Xcode 26.6 编译），不用 6.4 才有的语法与 API。`swift-tools-version` 保持
  6.2，这批改动用不到 6.3 的特性。
- 最低系统保持与两个下游一致（macOS 10.15 / iOS 13）。只在新系统上才有、又确实更好的 API，用 `@available`
  另加入口；这批改动里没有遇到这样的 API，见决策日志。
- 别名常量的类型变化按缺陷修复处理，不升主版本。

## 决策日志

| 日期 | 决定 | 理由 |
|------|------|------|
| 2026-10-21 | Created as Draft | 7.0.0 重写之后的现代化审查只剩小件，集中在一份提案里落地 |
| 2026-10-21 | Draft → In Progress | 用户批准审查里建议改的全部条目，并确认最低工具链按 Swift 6.3 计 |
| 2026-10-21 | 不把 `Disassembler` 的 unavailable `Sendable` 扩展换成 `~Sendable`，删掉实现说明里的这条后续工作 | SE-0518 说明两种写法只在子类上有区别，对结构体完全等价；`~Sendable` 带不了提示语，换了反而丢掉「每个任务各建一个引擎」的报错说明。`SkipData`、`InstructionView` 同理 |
| 2026-10-21 | 不为高版本系统另加入口 | 逐个看过：`Array.span`（26）与现在经 `ArraySlice` 取 span 一样不拷贝；`InlineArray`（26）不是 `Collection`，存储属性又不能用 `@available` 限定；返回 `Span` / `UTF8Span` 的访问器要实验特性 `Lifetimes`；`Mutex`（15）调用方自己就能包一个引擎。这些都给不了高版本客户端额外的东西 |
| 2026-10-21 | 不做：公开 API 用 typed throws、视图做成 `~Escapable`、快照用 `InlineArray`、actor 或 async 版本 | 重写时已裁决，理由不变 |
| 2026-10-21 | 不做：生成器改用 swift-subprocess、swift-argument-parser，或 macOS 13 的 `URL(filePath:)` 与正则字面量 | 前两者会让每个依赖本包的项目多解析一个包；`platforms` 是整个包共享的，由下游决定 |
| 2026-10-21 | 不做：用 package trait 取代 `Package.swift` 里的 `Context.environment` | trait 管不了只提供插件的依赖，也换不了依赖的来源 |
| 2026-10-21 | 不做：用 `@diagnose(UnnecessaryUnsafe, as: ignored)` 让 Swift 6.3 与 6.4 同时零警告 | 会一并藏掉这些函数里真正多余的 `unsafe`；依赖方编译时本来就看不到这些警告 |
| 2026-10-21 | 不做：给 `cs_regs_access` 加 `__counted_by` 换取 `Span` 重载；生成器与测试 target 也开严格内存安全；`SkipData` 的闭包改为 `@Sendable` | 第一项 `insn` 仍是裸指针，只省一处 `unsafe`；第二项只命中 3 处，输入是可信的头文件；第三项会让闭包无法捕获可变状态，并行解码时每个子任务各建一份 `SkipData` 即可 |
| 2026-10-21 | 不改诊断构建里其余的性能提示 | `Operand.value` 返回存在类型是已发布的公开 API，且不在解码热路径；`DecodingState` 必须是类（C 回调要一个不会移动的地址）；「返回数组会隐式复制」是噪声；库里的 untyped throws 都在只跑一次的初始化里 |
| 2026-10-21 | 不做：测试名改用 raw identifier | 纯写法，没有收益 |
| 2026-10-21 | 实现：别名常量的修复覆盖 9 个架构的 87 个常量 | 其中有 `AArch64Reg.x29` / `.x30` 这类寄存器别名，此前它们是 `Int`，`operand.register == .x29` 写不出来；生成器测试与按 aarch64.h 写的 SVE 条件码用例都先确认失败再修 |
| 2026-10-21 | 实现：`readToEnd()` 用 `#available(macOS 10.15.4, *)` 判断，更老的系统退回旧方法 | 包的最低版本是 10.15，Xcode 26.6 为 x86_64 编译时按它编，直接调用编不过（探针验证）；部署目标已满足时这个判断不产生警告 |
| 2026-10-21 | 实现：插件放过 `--target` / `--product` | 这是 SwiftPM 约定的限定插件范围的参数，宿主用它传用户选中的目标；拒绝它们会让从 Xcode 运行插件失败 |
| 2026-10-21 | 实现：生成器的命令行测试把构建出的可执行文件当子进程运行，测试 target 依赖可执行 target | 命令行本身就是生成器的接口，不为测试另开一个公开类型 |
| 2026-10-21 | 实现：退出测试用 `#if os(macOS) \|\| os(Linux) \|\| os(Windows)` 包住 | iOS 等平台的 Testing 把退出测试标为不可用，测试 target 为这些平台编译时会失败 |
| 2026-10-21 | 实现：Swift 6.3 下的严格内存安全警告由 9 条变为 11 条 | 新增的两条是两处 `withUnsafeTemporaryAllocation` 调用，属于 6.3 与 6.4 判定不一致的那一类，没有一种写法能让两者都零警告；以 6.4 零警告为准 |
| 2026-10-21 | 验证通过，等合入 `next` 时分配编号、改为 Implemented | Swift 6.4：默认 trait 58 + 6 个测试、`--traits AARCH64,SH`、全部 trait 编译、生成器 `--check` 与插件参数处理；Swift 6.3（Xcode 26.6）：64 个测试；`Examples/cstool` 4 个测试。退出码均为 0，6.4 下项目源码零警告 |
| 2026-10-21 | 按四个 commit 合入 `next`：别名常量、参数检查、C 类型边界、退出测试 | 前三个 commit 各自导出后单独编译、测试并跑 `--check`，都通过；第四个与已验证的工作区一致 |
| 2026-10-21 | In Progress → Implemented，编号 0004 | 各共享分支上的最大编号是 `next` 的 0003，加一。收尾判断：不另写使用指南，改动更新进两份实现说明、`AGENTS.md` 与 README；没有引入新术语 |
