# 文档索引

swift-capstone 的项目文档。每新增或重命名一份文档，都要在同一批次更新本索引 ——
没有登记在这里的文档等同于不存在。

面向调用方的公开文档（`README.md`、`docs/`）不在此列：`docs/` 是 swift-doc 的生成物，
随代码重新生成，不手工编辑。

[术语表](Glossary.md)收录本项目特有的说法，例如「已适配 / 已封装 / 已编入」的区别。

## Evolutions

提案，一次实质性改动一份。索引与状态表见 [Evolutions/README.md](Evolutions/README.md)。

| 提案 | 状态 | 一句话 |
|------|------|--------|
| [0001 - 适配 capstone v6](Evolutions/0001-adapt-capstone-v6.md) | Implemented | 迁到 capstone v6，公开 API 改用 v6 命名，把架构表与操作数访问器交给生成器，AArch64 优先落地 |

## Internal

面向维护者的记录。

| 文档 | 一句话 |
|------|--------|
| [实现说明：代码生成](Internal/CodeGeneration.md) | 生成器生成什么、语义配置怎么写、各类报错的含义、适配下一个架构的步骤，以及与提案 0001 的差异 |
| [代码审查已裁决清单](Internal/ReviewVerdicts.md) | 审查中判为误报、不修或推迟的发现及理由；每次审查先对照它 |
