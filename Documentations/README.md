# 文档索引

swift-capstone 的项目文档。每新增或重命名一份文档，都要在同一批次更新本索引 ——
没有登记在这里的文档等同于不存在。

面向调用方的公开文档（`README.md`、`docs/`）不在此列：`docs/` 是 swift-doc 的生成物，
随代码重新生成，不手工编辑。

## Evolutions

提案，一次实质性改动一份。索引与状态表见 [Evolutions/README.md](Evolutions/README.md)。

| 提案 | 状态 | 一句话 |
|------|------|--------|
| [适配 capstone v6](Evolutions/draft-adapt-capstone-v6.md) | Accepted | 迁到 capstone v6，公开 API 改用 v6 命名，把架构表与操作数访问器交给生成器，AArch64 优先落地 |
