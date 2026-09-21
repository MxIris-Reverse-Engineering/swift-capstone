# Draft - 适配 capstone v6：AArch64 优先，扩大代码生成覆盖面

- **状态**: Accepted
- **作者**: JH
- **创建日期**: 2026-09-21
- **最后更新**: 2026-09-21
- **所属愿景**: 无
- **关联提案**: 无
- **实现分支 / PR**: `feat/capstone-v6-aarch64`
- **配套文档**: 待定 —— 落地时登记实现说明 / 使用指南的链接

## 摘要

把 swift-capstone 从 capstone v5 迁到 v6。v6 不是一次改名，而是 AArch64 操作数模型的结构性重设计，
现有封装层对着 v6 编译有 41 个错误点。本提案同时做三件事：公开 API 全面改用 v6 命名
（`Arm64*` → `AArch64*`、`Sysz*` → `SystemZ*`）；把 `Architecture.swift` 和各架构的操作数访问器从手写
改为由 `CapstoneEnumsGenerator` 生成，生成器读 C 头文件拿结构、读一份 Swift 语义配置拿头文件表达不出来的
对应关系；按 AArch64 + 引擎核心先跑通、其余架构暂时关闭的节奏落地。

## 动机

### v6 对着现有封装层编译不过，且兼容头救不了

把 swift-capstone 复制到临时目录、依赖指向 capstone v6 实测（全架构宏无条件打开，避免 `#if` 把代码
屏蔽掉而测不出真实错误）：

| 条件 | 编译错误条数 |
|------|------------|
| 不开兼容宏 | 433 |
| 开全部兼容宏（`CAPSTONE_AARCH64_COMPAT_HEADER` 等四个） | 377 |

兼容宏只消掉 13%。原因是它解决的是**改名**，而 v6 的破坏性变化主要是**结构**：

- `cs_aarch64_op` 不再有 `sys` / `pstate` / `prefetch` / `barrier` 四个独立字段，统一并进
  `aarch64_sysop sysop`，靠 `sysop.sub_type` 分辨当前是哪一种
- `cs_aarch64` / `cs_arm` 的 `writeback` 被 `post_index` 取代
- `arm_op_mem.lshift` 被删除（v6 认定它从未被正确设置且与 `shift` 重复）
- `mem.disp` 由 `int32_t` 变 `int64_t`，且恒为正、由 `subtracted` 标志表示方向
- `cs_ppc_op.crx`、`cs_ppc.bh`、类型 `ppc_op_crx` 均已移除

去重到唯一错误点后共 **41 处**，集中在 8 个文件：`Arm64.swift`(15)、`Options.swift`(7)、`Arm.swift`(7)、
`Ppc.swift`(5)、`Sysz.swift`/`Sparc.swift`/`M68k.swift`(各 2)、`Mode.swift`(1)。

需要说明：41 是**第一层**错误 —— Swift 编译器在 emit-module 阶段即中止，修完会暴露下一批；且该探针
**未重新生成枚举**，一旦按 v6 头文件重新生成，v6 移除的那批 alias 指令枚举会让依赖它们的手写代码再暴露
一批错误。真实工作量大于 41 处，但影响面集中，不构成重写。

### 手写层里有一部分本就该是生成的

`Sources/Capstone/Architecture.swift:1-214` 是纯机械内容：架构枚举、`PlatformInstruction` 子类声明、
`instructionClass` 分发表，全部可从 `cs_arch` 与各架构头文件推导。它现在硬编码着 v5 的 16 个架构，
v6 新增的 SH、TriCore、Alpha、HPPA、LoongArch、Xtensa、ARC 一个都没有 —— 手写表跟不上上游是必然的。

各架构封装文件中，操作数的类型安全访问器同样高度重复（清一色
`guard type == .X else { return nil }`），22534 行代码中已有 18072 行（`*Enums.swift`）是生成的，
手写仅 3902 行，扩大生成覆盖面的边际成本很低。

### 现有默认 trait 缺失导致模块实际不可用（既存缺陷，与 v6 无关）

`Package.swift` 声明了 18 个架构 trait，但未声明默认 trait 集合。SwiftPM 对未声明默认 trait 的包按
空集处理，而 `Sources/Capstone/` 下 36 个文件被 `#if CAPSTONE_HAS_*` 包裹。对着 v5 实测确认：默认
`swift build` 产出的 `Capstone` 模块中 `X86Instruction`、`Arm64Instruction`、`MipsInstruction` 均不存在，
对应 `.o` 全是 6376 字节的空壳（对照 `Capstone.swift.o` 为 66960 字节）。README 未记载需要手动指定
traits，故属缺陷而非设计意图。capstone 仓库侧的同一缺陷已在 `feat/v6-spm-arch-traits` 分支修复。

## 前期调研

- **v6 的 AArch64 系统操作数模型**（`include/capstone/aarch64.h`，capstone 分支
  `feat/v6-spm-arch-traits`）：

  ```c
  typedef union { aarch64_sysreg sysreg; aarch64_tlbi tlbi; aarch64_ic ic; int raw_val; } aarch64_sysop_reg;
  typedef union { aarch64_dbnxs dbnxs; aarch64_exactfpimm exactfpimm; int raw_val; } aarch64_sysop_imm;
  typedef union { aarch64_db db; aarch64_dc dc; aarch64_isb isb; aarch64_tsb tsb;
                  aarch64_prfm prfm; /* …13 个成员… */ int raw_val; } aarch64_sysop_alias;
  typedef struct { aarch64_sysop_reg reg; aarch64_sysop_imm imm;
                   aarch64_sysop_alias alias; aarch64_op_type sub_type; } aarch64_sysop;
  ```

  三个 union 各带一个 `raw_val` 兜底，`sub_type` 是唯一的判别依据。

- **v6 新增的操作数种类**：`aarch64_op_type` 扩展到 29 个（v5 为 11 个），新增 `AARCH64_OP_SME`、
  `AARCH64_OP_PRED`、`AARCH64_OP_IMM_RANGE`、`AARCH64_OP_SYSREG`、`AARCH64_OP_SYSIMM`、
  `AARCH64_OP_SYSALIAS` 等，对应新结构 `aarch64_op_sme`、`aarch64_op_pred`、`aarch64_imm_range`。

- **兼容层的确切边界**（`docs/cs_v6_release_guide.md:520-532`）：`arm64.h` 与
  `systemz_compatibility.h` 会长期维护；`CAPSTONE_ARM_COMPAT_HEADER` 仅定义 `ARM_CC → ARMCC` 的改名宏，
  `CAPSTONE_RISCV_COMPAT_HEADER` 仅定义 `CS_MODE_RISCVC`。`cs_detail` 的 union 中 `arm64`/`aarch64`、
  `sysz`/`systemz` 成员**无条件并存**，但 `cs_arch` 的 `CS_ARCH_ARM64` / `CS_ARCH_SYSZ` 需要兼容宏才存在。

- **核心文件的改动量比预期轻**：`Options.swift` 的 7 处错误全部是同一成因 —— `cs_option()` 的 value 参数
  在上游 #2845 改为 `uintptr_t`（Swift 导入为 `UInt`，而 `size_t` 导入为 `Int`）。`Mode.swift` 仅 1 处，
  `CS_MODE_RISCVC` 在 v6 更名为 `CS_MODE_RISCV_C`。capstone 仓库的 `CcapstoneTests` 已因同一原因修复过
  23 处（commit `829483b2`）。

- **idax 的生成器模式**（`/Volumes/Repositories/Private/Org/MxIris-Reverse-Engineering/idax`，同为
  Swift binding 封装，用户指定参考）：`bindings/swift/scripts/generate_values.py`（299 行）用正则解析 C
  头文件取结构，配合人工维护的 `bindings/swift/value_schema.json`（33 KB）补上头文件表达不出的语义
  （`field_types` 标注哪个 int 实为 Bool、`arrays` 标注哪对指针+count 实为数组、`manual_functions`
  标注哪些不生成）。产出 26 个 `*+Values.swift` 共 4262 行，其余约 10000 行手写。三条可借鉴的约束：

  1. 生成器 docstring 明确 *"Unsupported operations are reported for hand-written adapters; generation
     never substitutes a stub or drops an output field."* —— 搞不定的报告出来，绝不塞 stub 或丢字段。
  2. 生成器带 `--check` 模式，可用于 CI 校验生成物是否过期。
  3. 文件名区分来源：`+Values.swift`（生成）对 `+Conveniences.swift`（手写）。

  另有 `scripts/check_api_surface_loss.py`，用于捕捉「上游同步静默删除 API」，其注释记载了一次真实事故
  （上游删除了一个重载、auto-merge 无冲突接受、直到 Swift 绑定编译失败才发现）。

- **宏路线不可行的根据**：Swift 宏在编译期只能访问 Swift 语法树，无法读取 C 头文件，而本项目的主要信息源
  正是 C 头文件。宏仅能承担「人工声明 + 展开样板」这一角色，与 schema 生成器是竞争而非互补关系；且宏
  展开结果不可读、不可 diff、无法用 `--check` 校验，会同时失去上述三条约束。工具链
  （Xcode 26 / Swift 6.3.3）`usr/lib/swift/host/` 下已预装 swift-syntax，构建成本不是主要否决理由。

## 提议方案

### 一、公开 API 全面改用 v6 命名

`Arm64*` → `AArch64*`，`Sysz*` → `SystemZ*`，`Architecture.arm64` → `Architecture.aarch64`。
不提供 typealias 兼容层：v6 新增的操作数种类在 v5 命名体系下无处安放，半套兼容层比没有更易误导。

生成器的 `makeSwiftIdentifier` 需要特例处理，否则 `AARCH64_*` 会被压成 `Aarch64`；目标拼写为
`AArch64`（保留两个大写 A）。

### 二、系统操作数按 v6 结构暴露

不再提供 v5 那套扁平访问器（`prefetch` / `barrier` / `ic` / `dc` / `at` / `tlbi` / `pState`）。改为暴露
`systemOperand` 及其 `subType`，由调用方按 `subType` 分派。理由：v6 的 `sub_type` 取值有 20 余种且会随
上游增长，扁平访问器每新增一种就要手工补一个属性，必然落后。

### 三、生成器接管三层

| 层 | 现状 | 变更后 |
|----|------|--------|
| 枚举 `*Enums.swift` | 已生成（18072 行） | 继续生成，按 v6 命名 |
| 架构表 `Architecture.swift` | 手写 214 行，缺 7 个架构 | 生成 |
| 操作数访问器（如 `Arm64.swift`） | 手写 | 生成，靠语义配置补 union 对应关系 |

语义配置写成 Swift 代码（扩展现有 `CapstoneEnumsGenerator.ArchitectureConfig`），而非独立 JSON：配置
写错时立刻是编译错误，且不引入新的文件格式。

生成器采纳 idax 的三条约束：无法生成的条目**报告并中止**而非塞 stub；提供 `--check` 模式；生成文件
统一带 `AUTO-GENERATED` 头注释且与手写文件在命名上可区分。

### 四、阶段性落地

先让 AArch64 与引擎核心（`Capstone` / `Instruction` / `InstructionDetails` / `Options` / `Mode` /
`Error` / `Utils`）跑通并测试转绿，其余架构暂时关闭。关闭方式不删文件、不挪目录 —— 各架构封装文件
本就被 `#if CAPSTONE_HAS_*` 包裹，只需 `Package.swift` 的默认 trait 暂时只含 `AARCH64`，其余文件
自然不参与编译。每适配一个架构，就把它加进默认 trait。

### 五、顺带修复默认 trait 缺失

声明默认 trait 集合。与 capstone 仓库「默认全开」不同，本仓库默认集合**只含已适配的架构**，随适配推进
增长 —— 声明一个尚未适配的架构为默认会直接导致编译失败。

`Architecture` 枚举列全 v6 的 23 个架构（它对应 `cs_arch`，是客观事实），未适配者在 `instructionClass`
中明确报错，而非从枚举中隐去。

### 非目标

- **不适配 v6 新增架构的封装**（Alpha、HPPA、LoongArch、Xtensa、ARC）。本次只到「`Architecture` 枚举
  列出它们」为止，封装层留待后续提案。
- **不为 v5 提供兼容分支**。v5 用户继续使用现有 tag。
- **不改动 `Examples/cstool`** 之外的示例行为，仅做必要的编译修复。
- **不引入 Swift 宏**。
- **不修改 capstone 仓库**。本提案只消费 capstone 的 `feat/v6-spm-arch-traits`。
- **不做 `check_api_surface_loss.py` 的等价物**。值得做，但属独立提案。

## 详细设计

### 语义配置的形状

```swift
extension CapstoneEnumsGenerator {
    /// 一个操作数 union 成员如何被解释为 Swift 值。
    enum OperandMemberKind {
        /// union 成员直接对应一个生成的枚举，如 `op.reg` -> `AArch64Reg`
        case enumeration(member: String, swiftType: String)
        /// union 成员是标量，如 `op.imm` -> `Int64`
        case scalar(member: String, swiftType: String)
        /// union 成员是需要展开为 Swift 结构体的 C 结构，如 `op.mem` -> `Memory`
        case structure(member: String, swiftType: String, fields: [StructureField])
        /// 该操作数类型没有对应的 union 成员（值由别处取得）
        case none
    }

    struct OperandConfiguration {
        /// C 侧操作数结构名，如 "cs_aarch64_op"
        let operandStructure: String
        /// 操作数类型枚举 case（Swift 名）到 union 成员的映射。
        /// 这层对应关系在 C 头文件中只存在于注释里，机器无法推导，必须在此声明。
        let membersByOperandType: [String: OperandMemberKind]
        /// 生成器不处理、交由手写 extension 补充的访问器名。
        /// 列在这里是为了让生成器在遇到未覆盖的操作数类型时能区分
        /// 「遗漏」与「有意手写」，前者必须报错。
        let handWrittenAccessors: Set<String>
    }
}
```

`membersByOperandType` 未覆盖且未列入 `handWrittenAccessors` 的操作数类型，生成器**报错中止**，
打印缺失清单。上游新增操作数类型时这会立即暴露，而不是静默生成一个不完整的封装。

### AArch64 操作数的目标 API

```swift
extension AArch64Instruction: OperandContainer {
    public var conditionCode: AArch64CC? { … }
    public var updatesFlags: Bool? { … }
    /// v6 以 post_index 取代 writeback；writeback 为真时 post_index 区分前后变址。
    public var isPostIndex: Bool? { … }
    public var operands: [Operand] { … }

    public struct Operand: InstructionOperand {
        public var type: AArch64Op { … }
        public var access: Access { … }
        public var isVectorRegister: Bool { … }      // v6 新增 is_vreg
        public var isListMember: Bool { … }          // v6 新增 is_list_member

        public var register: AArch64Reg? { … }
        public var immediateValue: Int64? { … }
        public var immediateRange: ClosedRange<UInt8>? { … }   // v6 新增
        public var doubleValue: Double? { … }
        public var memory: Memory? { … }
        public var matrixOperand: MatrixOperand? { … }         // v6 新增 SME
        public var predicate: Predicate? { … }                 // v6 新增 PRED
        public var systemOperand: SystemOperand? { … }         // 取代 v5 的扁平访问器

        public struct Memory {
            public let base: AArch64Reg
            public let index: AArch64Reg?
            /// v6 由 int32_t 扩为 int64_t
            public let displacement: Int64
        }
    }
}
```

系统操作数按 `sub_type` 分派，三个 union 各自的取值用关联值表达，`raw_val` 作为未知取值的兜底：

```swift
public struct SystemOperand {
    /// 判别依据，直接来自 `aarch64_sysop.sub_type`
    public let subType: AArch64Op

    public enum Value {
        case systemRegister(AArch64Sysreg)
        case tlbi(AArch64Tlbi)
        case ic(AArch64Ic)
        case prefetch(AArch64Prfm)
        case dataBarrier(AArch64Db)
        // …其余 sub_type 对应项…
        /// sub_type 已知但取值不在生成的枚举内时的兜底，对应各 union 的 raw_val
        case raw(Int32)
    }

    public var value: Value { … }
}
```

`Value` 的 case 集合由生成器从 `aarch64_sysop` 的三个 union 成员推导，`sub_type` 到 case 的对应关系
在语义配置中声明。

### 架构表的生成

从 `cs_arch` 枚举生成 `Architecture`，从语义配置的架构清单生成 `PlatformInstruction` 子类与
`instructionClass` 分发。未适配架构在分发表中落到明确报错分支：

```swift
default:
    fatalError("Architecture \(self) is not supported by this version of swift-capstone yet.")
```

与现有措辞（"is not compiled in. Enable the corresponding package trait."）区分开：未适配与未开启
trait 是两种不同的状况，报错文本必须能区分，否则会把使用者引向错误的排查方向。

## 替代方案考量

- **用兼容宏停在 v5 命名** —— 实测只消掉 13% 的错误（433 → 377），且 v6 新增的 SME、PRED、IMM_RANGE
  等操作数类型在 v5 命名体系下无处安放。否。
- **改名并保留 `typealias` 兼容层** —— typealias 只能覆盖类型名，覆盖不了枚举成员。`AArch64Op.sysreg`
  在 v5 没有对应物，`Arm64Op.pstate` 在 v6 已并入 sysop，兼容层必然是半套的。否。
- **用 Swift 宏生成访问器** —— 宏读不到 C 头文件；与 schema 生成器是竞争关系；展开结果不可 diff、
  无法 `--check`。见「前期调研」。否。
- **语义配置用独立 JSON（idax 的做法）** —— 数据与代码分离、diff 更干净，但配置写错要等运行生成器才
  发现。本项目配置规模远小于 idax（按架构而非按函数），Swift 配置的类型安全更划算。否。
- **保留 v5 扁平的系统操作数访问器，内部从 sysop 拆包** —— 拆包逻辑难以生成，且 `sub_type` 取值会随
  上游增长，每新增一种都要手工补属性。否。
- **一次性适配全部架构** —— 中间没有可编译状态，出问题难以定位是哪个架构引入的。否。

## 影响

### 源码兼容性（source compatibility）

**有破坏**，且破坏面广。主要类别：

| 改前 | 改后 |
|------|------|
| `Arm64Reg` / `Arm64Ins` / `Arm64Op` … | `AArch64Reg` / `AArch64Ins` / `AArch64Op` … |
| `SyszReg` / `SyszIns` … | `SystemZReg` / `SystemZIns` … |
| `Architecture.arm64` | `Architecture.aarch64` |
| `Architecture.sysz` | `Architecture.systemz` |
| `operand.prefetch` / `.barrier` / `.ic` / `.dc` / `.at` / `.tlbi` / `.pState` | `operand.systemOperand`，按 `subType` 分派 |
| `instruction.writeBack` | `instruction.isPostIndex`（语义不同，非改名） |
| `memory.displacement: Int32` | `memory.displacement: Int64` |
| `operand.memory?.lshift` | 已删除，v6 认定该字段从未被正确设置 |

不提供 `@available(*, deprecated, renamed:)` 过渡：`renamed:` 只对纯改名有效，而上表后四行是语义变化，
标注 `renamed:` 会把调用方导向行为不同的 API。能从 v6 结构推导出等价语义的旧 API 保留并标注
`@available(*, deprecated, message:)` 说明替代方式；彻底失去对应物的直接删除。逐项判断在实现期
补入本节。

### ABI 兼容性

不适用 —— 本库以 SPM 源码分发，使用方每次重新编译。

### 下游影响

- 本仓库内：`Sources/Capstone`（全部）、`Tests/CapstoneTests`（全部）、`Examples/cstool`。
- 跨仓库：暂未确认有其它仓库依赖 swift-capstone。落地前用 `gh search code` 核实一次。

### 文档与示例

- `README.md` 需更新：分支与 capstone 版本的对应关系、trait 用法、当前仅 AArch64 可用的说明。
- `docs/` 是 swift-doc 的生成物，随代码重新生成，不手工编辑。
- `AGENTS.md` 需更新：测试框架由 XCTest 改为 Swift Testing、生成器的运行时机与 `--check`。

## API 演进与废弃策略

- **能从 v6 结构推导出等价语义的旧 API**：保留，标 `@available(*, deprecated, message:)`，在下一个
  minor 版本移除。
- **失去对应物的旧 API**（`mem.lshift`、v5 扁平系统操作数访问器）：直接删除。保留一个永远返回 `nil`
  或返回错误值的属性比删除更有害。
- **版本号**：破坏性改动需要 semver major 跃迁。建议本仓库版本号与 capstone 主版本对齐，发 `6.0.0`。

## 落地步骤

1. **修复默认 trait 缺失，并把 capstone 依赖切到本地 path**。此时其余架构 trait 仍全开，包应与现在
   同样地「能构建」。可独立验证：`swift build` 成功，且模块中能查到 `X86Instruction`。
2. **默认 trait 收窄至仅 `AARCH64`，其余架构封装随 `#if` 退出编译**。可独立验证：`swift build` 成功，
   错误面收敛到 AArch64 与核心文件。
3. **修复引擎核心**：`Options.swift` 的 7 处 `uintptr_t`、`Mode.swift` 的 `CS_MODE_RISCV_C`、
   `Utils.swift` 的 `optionalEnumCast` 重载。可独立验证：核心文件编译通过。
4. **扩展生成器：架构表**。生成 `Architecture.swift`，覆盖 v6 全部 23 个架构。可独立验证：生成物与
   手写版在已适配架构上行为一致。
5. **扩展生成器：语义配置与操作数访问器**，先只配置 AArch64。可独立验证：生成器对未覆盖的操作数类型
   报错而非静默跳过（构造一个缺失项验证它确实会失败）。
6. **按 v6 重新生成 AArch64 枚举与封装**，手写补上 sysop 分派等无法生成的部分。可独立验证：
   `swift build` 全绿。
7. **测试迁到 Swift Testing 并覆盖 AArch64**。可独立验证：`swift test` 原始退出码为 0。
8. **加 `--check` 模式并接入 CI**。可独立验证：故意改一处生成物，`--check` 应失败。
9. **更新 README 与 AGENTS.md**。

后续架构逐个恢复，每个架构一步，不在本提案范围内。

**收尾时必须判断两件事**（判断结果写进决策日志，不允许沉默跳过）：

- 要不要配套专题文章 —— 语义配置怎么写、生成器报错了怎么办，属于「从 API 签名看不出来的维护契约」，
  倾向于写一份实现说明。
- 有没有引入新术语 —— 「语义配置 (semantic configuration)」「生成边界」等，若沿用则登记进术语表。

## 决策日志

| 日期 | 变更 | 说明 |
|------|------|------|
| 2026-09-21 | Created as Draft | 用户要求「修 swift-capstone，尽可能把代码弄到 plugin 生成去，只手动重写关键的内容，优先适配 aarch64」 |
| 2026-09-21 | 否决：停在 v5 命名 | 实测兼容宏只消掉 13% 的编译错误（433 → 377），v6 新增操作数类型无处安放 |
| 2026-09-21 | 否决：改名 + typealias 兼容层 | typealias 覆盖不了枚举成员，兼容层必然是半套的 |
| 2026-09-21 | 否决：用 Swift 宏生成访问器 | 宏读不到 C 头文件；与 schema 生成器竞争而非互补；展开结果不可 diff、无法 `--check` |
| 2026-09-21 | 否决：语义配置用独立 JSON | 本项目配置规模远小于 idax，Swift 配置的类型安全更划算 |
| 2026-09-21 | 否决：保留 v5 扁平系统操作数访问器 | 拆包逻辑难以生成，且 `sub_type` 取值随上游增长，必然落后 |
| 2026-09-21 | 否决：一次性适配全部架构 | 中间没有可编译状态，难以定位问题来源 |
| 2026-09-21 | 采纳 idax 的三条约束 | 生成器报告而非塞 stub、`--check` 模式、生成物与手写文件命名可区分 |
| 2026-09-21 | Draft → Accepted | 用户批准，开始实施；实现分支 `feat/capstone-v6-aarch64`，基线取 `v5` 而非 `next`（`next` 是上游时代的陈旧分支，完全落后于 `v5`，缺少枚举生成器与 SPM traits 等全部基建） |
