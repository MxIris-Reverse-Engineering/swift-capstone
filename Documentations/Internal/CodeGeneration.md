# 代码生成：实现说明

> 配套提案见 [0001 - 适配 capstone v6](../Evolutions/0001-adapt-capstone-v6.md)；别名常量的类型、参数检查等
> 后来的修正见[0004 - 重写之后的现代化收尾](../Evolutions/0004-modernization-follow-up.md)。
> 本文记录生成器实际怎么落地、维护时必须遵守的约定、与提案的差异以及已知降级。面向维护者。

## 背景与目标

封装层里能从 capstone 头文件推导出来的部分，都交给 `CapstoneEnumsGenerator` 生成，手写的只剩推导不出来的
东西。生成物有三层：

- 架构表 `Architecture+Generated.swift`：`Architecture` 枚举。7.0.0 之前它还生成各架构的 `Instruction` 子类与
  按架构取类的分发，随旧 API 一起删除（见[0003 - 用新 Swift 特性重写封装层](../Evolutions/0003-rewrite-with-modern-swift.md)）。
- 各架构的枚举 `*Enums.swift`。
- 操作数访问器 `*+Operands.swift`，目前只有 AArch64 有。

贯穿始终的原则：**看不懂的输入就报错中止**，不塞占位实现，也不静默跳过。一个看起来完整、实际悄悄漏掉
一部分的封装，比编译不过更糟。

## 关键设计决策

### 语义配置写在 Swift 里

C 头文件只说明「操作数是一个 union 加一个 `type` 字段」，至于哪个 `type` 取值对应 union 的哪个成员，只写在
注释里，解析器拿不到。这部分对应关系就是[语义配置](../Glossary.md#semantic-configuration)，写在
`ArchitectureConfig.all` 的 `operandConfiguration` 里。写成 Swift 而不是独立的 JSON，是为了让配置写错时
直接编译失败。

### 语义配置做双向检查

两个方向都可能静默出错，所以两个方向都查：

- **配置里点名的 union 成员，结构体里必须有。** 上游改名或删掉某个成员时报 `unknownOperandMembers`。
- **每个操作数类型，要么被某个访问器覆盖，要么列进 `unexposedTypes` 并写明理由。** 上游新增操作数类型时报
  `uncoveredOperandTypes`。不这样做，新类型的访问器会永远返回 `nil`，读起来和「这个操作数没有这个值」一模一样。

落地时故意改坏配置，确认过这两类报错都会触发；否则它们可能一直在空转。

### 系统操作数的种类不在 `op.type` 里

AArch64 的 `op.type` 对系统操作数只取 `sysreg`、`sysimm`、`sysalias` 三个值，只说明值存在 `sysop` 的哪个
union 里；真正的种类（`at`、`db`、`prfm`……）在 `sysop.sub_type`。这一点是对照 `arch/AArch64/AArch64Mapping.c`
里 `AArch64_set_detail_op_sys` 的全部调用点确认的。所以 `regMrs`、`at`、`db` 这类取值都列进了 `unexposedTypes`，
理由是「只会作为 `sub_type` 出现」；给它们各配一个访问器，得到的属性对任何指令都是 `nil`。

这类错误编译期和静态检查都发现不了，只有端到端反汇编能暴露。新增一个架构的操作数配置时，同样要拿真实
指令验证，不能只看生成结果能不能编译。

### 前缀不合规矩的枚举要显式登记

生成器按 C 常量的前缀（例如 `AARCH64_`）认领枚举。v6 把 AArch64 的条件码写成 `AArch64CC_*`（跟随 LLVM），
前缀对不上，整个枚举会被静默跳过。这类前缀登记在 `extraEnumPrefixes` 里，并指定生成的 Swift 类型名
（`AArch64CC` → `AArch64CondCode`）。上游出现新的不规则前缀时，表现是「某个枚举在生成物里消失了」，
要回到这里补登记。

### 只差下划线的常量不能撞名

capstone 有些常量只差两端的下划线：PowerPC 的 `PPC_INS_ALIAS_MR` 与 `PPC_INS_ALIAS_MR_`（后者是置 CR0 的记录形式），
Xtensa 的 `XTENSA_INS_L32I` 与 `XTENSA_INS__L32I`。`makeSwiftIdentifier` 去掉两端下划线后它们同名，生成的枚举
一开对应的 trait 就编不过。默认 trait 只有 AArch64，所以这个问题一直没人发现，直到 DocC 插件（它会打开全部
trait 编译）编不过才暴露。

现在每个枚举记着已用的名字：名字被占用时保留两端的下划线（`aliasMr_`、`_l32i`），还撞就报
`conflictingCaseName`，需要在生成器里显式处理。先出现的常量保持原名，所以没撞名的枚举，包括已适配的 AArch64，
生成结果不变。

### 别名常量是所属枚举类型的静态常量

Swift 枚举不能有两个原始值相同的 case，所以和前面某个常量同值的 C 常量生成为一个静态常量，指向第一个同值的
case：`public static let x29: AArch64Reg = .fp`、`public static let noneActive: AArch64CondCode = .eq`。
它和 case 一样能比较、能用在 `switch` 里。

2026-10 之前这类常量生成的是裸整数（`public static let x29 = 2`），类型是 `Int`，拿去和枚举值比较编译不过，
`operand.register == .x29` 这种写法根本写不出来。当时 9 个架构共有 87 个这样的常量；生成器测试和
`AArch64Tests` 里按 aarch64.h 写的 SVE 条件码别名用例守着现在的行为。

### 生成的类型一律声明 `Sendable`

生成的枚举、`OptionSet` 和 `Architecture` 只装原始值，不引用引擎句柄，所以都显式声明 `Sendable`。
公开类型不会被自动推断成 `Sendable`，不写的话，Swift 6 模式的调用方把寄存器之类的值存进自己的
`Sendable` 类型时会编译失败，只能退回 `@unchecked Sendable`。

### `Reg` 与 `Grp` 枚举的原始值类型不跟 C 枚举走

以 `Reg` 结尾的枚举固定用 `UInt16`，以 `Grp` 结尾的固定用 `UInt8`，其余才按 C 枚举的实际宽度推。原因是这两类
枚举的值是从 `cs_detail` 的数组里读出来的，`regs_read` / `regs_write` 是 `uint16_t`，`groups` 是 `uint8_t`；
让原始值类型和存储类型一致，读出来就能直接转换。

### 架构表从 `cs_arch` 生成，不手写

v6 重排了 `cs_arch`：SystemZ 从 6 挪到 2，Mips、X86、PowerPC、Sparc 各后移一位。手写的表如果只改名不改值，
`Architecture.mips` 会把 2 传给 `cs_open`，也就是 v6 的 SystemZ，结果是解错而不是报错。所以 `Architecture`
的取值一律从头文件读。

`Architecture` 枚举列出 `cs_arch` 的全部成员，因为它描述的是 capstone 认识什么；这次构建编入了哪些由手写的
`isCompiledIn` 回答，哪些有 Swift 封装则看谁遵循 `DisassemblyArchitecture`，生成器不管。几种状态的区别见术语表的
[已适配、已编入](../Glossary.md#adapted-compiled-in)。

### `--check` 不能对缺失的输入放水

`--check` 只比较、不写入，生成物与头文件推出的结果有差异就以非零退出。为了不让它空转：

- capstone.h 声明了的架构，头文件缺失时报 `missingHeader`。上游给头文件改名（v6 就把 `arm64.h` 改成了
  `aarch64.h`）时，原先的行为是静默跳过，`--check` 会把这个架构过时的生成文件当成最新。
- capstone.h 没有声明的架构，头文件有就处理，没有就跳过。生成器的测试夹具依赖这一点：它们只提供一个最小的
  capstone.h 和一个架构头文件。

### 插件从依赖里找头文件

`swift package plugin generate-enums` 不传 `--include` 时，从插件上下文里找名为 `capstone` 的依赖，用它的
`include/capstone`。capstone 的位置不固定：设了 `USING_LOCAL_DEPENDENCIES` 时是同级目录，否则是构建目录
（scratch path）下的 checkout，两者都不在包目录的 `.build/checkouts` 里。

### 命令行与插件不放过不认识的参数

生成器的命令行和插件遇到不认识的参数、或选项缺少取值时都报错退出，不写任何文件。原先两者都静默跳过：把
`--check` 打成 `--chek`，结果是重新生成、覆盖文件，而不是检查；插件更是根本不认 `--check`，传了也照样重新
生成。现在插件把 `--check` 转交给生成器；`--target` / `--product` 照样放过：这是 SwiftPM 约定的「限定插件作用
范围」的参数，宿主（例如 Xcode 的命令对话框）用它传用户选中的目标，而生成器总是处理全部架构，用不上它们。

两者读子进程输出都用 `readToEnd()`：旧的 `readDataToEndOfFile()` 读失败时抛 ObjC 异常，Swift 接不住。这个
方法要 macOS 10.15.4，而包的最低版本是 10.15：Xcode 26.6 在 Apple 芯片上按 11.0 编译（arm64 的 macOS 从 11
开始），为 x86_64 编译时就按 10.15，直接调用会编不过。所以用 `#available` 判断，更老的系统才退回旧方法。
部署目标已经满足时这个判断恒为真，编译器不会提示它多余（Xcode 27 的 SDK 把最低版本抬到 12）。

## 模块结构

```
Sources/CapstoneEnumsGenerator/CapstoneEnumsGenerator.swift  # 解析（libclang）、语义配置、渲染、检查
Sources/capstone-enums-generator/CapstoneEnumsGeneratorMain.swift  # 命令行入口：--include / --output / --check
Plugins/CapstoneEnumsGeneratePlugin/Plugin.swift             # swift package plugin generate-enums
Sources/Capstone/Architecture+Generated.swift                # 生成：架构表
Sources/Capstone/*Enums.swift                                # 生成：各架构枚举
Sources/Capstone/AArch64+Operands.swift                      # 生成：AArch64 操作数访问器
Sources/Capstone/Architecture.swift                          # 手写：isCompiledIn
Sources/Capstone/AArch64Operand.swift                        # 手写：AArch64.Operand 的形状、包装 C 结构体的值类型、sysop 分派
```

## 核心流程

1. 解析 capstone.h 的 `cs_arch`，得到架构清单。清单里有、`ArchitectureConfig.all` 没有的架构只打印警告，
   不中止：它只说明还没有封装。
2. 渲染架构表。
3. 逐个处理 `ArchitectureConfig.all`：头文件存在就解析其中的 C 枚举，以及配置里声明的宏常量组
   （`macroOptionSets`、`macroEnums`），同名去重后渲染成 `*Enums.swift`；头文件缺失时按上一节的规则报错或跳过。
4. 有 `operandConfiguration` 的架构，解析操作数结构体的成员，做双向检查，再渲染访问器。访问器文件和手写
   文件一样写 `internal import Ccapstone`（理由见[实现说明：解码引擎](Disassembler.md)的严格内存安全一节）；
   不暴露的操作数类型集合生成为 `static let`，只建一次，`Operand.value` 每次查它都不再现建 `Set`。
5. 加了 `--check` 时，所有输出都只和磁盘上的文件比对，有差异就报 `staleGeneratedFiles`。

## 适配下一个架构要做什么

1. 在该架构的 `ArchitectureConfig` 里加 `operandConfiguration`：操作数结构体名、访问器扩展到的 Swift 类型
   （`swiftOperandType`，例如 `AArch64.Operand`，它把 C 结构体存在 `capstoneOperand` 属性里）、访问器列表
   （名字、覆盖哪些操作数类型、值从哪个 union 成员取）、`unexposedTypes`（每项写明为什么不暴露）。
2. 运行生成器，按报错补配置，直到双向检查都通过。
3. 手写生成器推不出来的部分：`Operand` 的形状、包装 C 结构体的 Swift 值类型、sysop 这种不规则的分派，以及
   遵循 `DisassemblyArchitecture` 的命名空间（`Mode`、`Syntax`、快照类型与 `snapshot(of:)`）和
   `InstructionView` 上这个架构的访问器。
4. 用真实指令编码写断言式测试，覆盖每一种操作数类型。v5 时代的旧测试已随 7.0.0 删除，需要参考时从 git
   历史里取（例如 `v6.0.1` 标签下的 `Tests/CapstoneTests/Legacy/`）。
5. 把该架构加进 `Package.swift` 的默认 trait，确认 `--check` 退出码为 0。

## 与提案的差异

- **语义配置的形状。** 提案写的是「操作数类型 → union 成员」的映射，外加一份 `handWrittenAccessors` 名单。
  实际改成访问器列表：每个访问器声明自己覆盖哪几个操作数类型（`immediateValue` 覆盖 `imm`、`cimm`、
  `implicitImm0`，`systemOperand` 覆盖三种系统操作数），不暴露的类型连同理由记在 `unexposedTypes` 里。
  原因：一个访问器对应多个操作数类型是常态，按类型逐个映射会重复；名单也记不下「为什么不暴露」。
- **结构体成员不在配置里展开字段。** 提案的 `.structure` 带字段列表；实际由手写的 Swift 值类型包装 C 结构体
  （`Memory`、`ImmediateRange`、`MatrixOperand`、`Predicate`）。
- **系统操作数的 `Value` 枚举是手写的。** 提案打算从 `aarch64_sysop` 的三个 union 推导；实际 `sub_type` 到
  union 成员的对应不规则，推导规则会比手写更难维护。
- **架构表只生成一部分。** 提案写的是生成整个 `Architecture.swift`；实际生成到 `Architecture+Generated.swift`，
  推导不出来的部分留在手写的 `Architecture.swift`。
- **分发不再只靠 `fatalError`。** 按提案落地后，2026-10-17 的代码审查发现 `Capstone(arch:)` 会因此崩溃，改为
  初始化器抛错。7.0.0 起分发整个删除：没有封装的架构写不出 `Disassembler` 的类型参数。
- **`--check` 没有接入 CI。** 仓库没有 CI，用法写在 README 与 AGENTS.md 里。

## 验证

- `Tests/CapstoneEnumsGeneratorTests/CapstoneEnumsGeneratorTests.swift`：枚举解析、按位标志识别成 `OptionSet`、
  宏常量组、只差下划线的常量得到不同的名字、别名常量是枚举类型，以及「头文件消失后 `--check` 必须失败」。
  命令行用例把构建出的 `capstone-enums-generator` 当子进程运行，断言拼错的参数让它非零退出且一个文件都不写；
  测试 target 因此依赖这个可执行 target。别名与命令行两条用例都在修复前确认过会失败。
- 全部 trait：`swift build --enable-all-traits --build-tests` 要能编过，即所有架构的生成枚举都合法；2026-10-17
  修好撞名后验证过。DocC 插件就是这样编译的。
- 双向检查：落地时故意改坏配置，确认两类报错都会触发（人工验证）。
- `--check`：落地时验证过两个方向，干净的树退出 0，篡改一个生成文件后退出 1（人工验证）；对当前头文件退出 0。
- 插件：2026-10-17 在 `USING_LOCAL_DEPENDENCIES=1` 下验证，修复前报找不到 capstone.h，修复后成功，重新生成
  无差异。2026-10-21 验证参数处理：`--chek` 与缺少取值的 `--output` 报错退出；`--check` 对干净的树退出 0，
  对篡改过的 `Architecture+Generated.swift` 报过时并退出 1，文件保持篡改后的样子，说明确实只做了检查。插件
  没法从测试 target 里调用，所以没有自动化回归测试。
- 端到端：`Tests/CapstoneTests/AArch64Tests.swift` 用真实指令编码验证访问器，包括寄存器、立即数、内存
  操作数，以及 `mrs`、`prfm`、`dmb`、`at` 的系统操作数都解码成具名值。

## 已知降级

- **原始值类型推不出来时按 4 字节处理。** `swiftRawType(from:)` 在 libclang 给不出类型大小时按 4 字节、
  再按有无符号取 `UInt32` 或 `Int32`，不报错。C 枚举实际更宽时，超出范围的常量会让生成物编译失败；
  实际更窄时不会有任何提示。
- **只有 AArch64 有操作数配置。** 其他架构只有生成的枚举，没有操作数访问器；v5 时代的手写封装随 7.0.0 删除，
  所以打开它们的 trait 能编过，只是没有可用来解码的 Swift 类型。
- **上游新增的架构只有警告。** `cs_arch` 里有、配置里没有的架构，生成器打印警告后继续，不中止。

## 后续工作

- 其余架构逐个补操作数配置。

## 延伸阅读

- [0001 - 适配 capstone v6](../Evolutions/0001-adapt-capstone-v6.md)
- [0003 - 用新 Swift 特性重写封装层](../Evolutions/0003-rewrite-with-modern-swift.md)
- [术语表](../Glossary.md)
- [代码审查已裁决清单](ReviewVerdicts.md)
