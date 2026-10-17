# Evolution 提案

- **项目类型**: library

记录 swift-capstone 每一次实质性演进。一次改动一份提案文件，从调研到落地在同一份里原地更新。
编号在提案合入长期分支时分配，在此之前文件名为 `draft-<slug>.md`，正文标题为 `# Draft - 标题`。

| # | 标题 | 状态 |
|---|------|------|
| 0001 | [适配 capstone v6：AArch64 优先，扩大代码生成覆盖面](0001-adapt-capstone-v6.md) | Implemented |
| 0002 | [在现有 API 上补齐 v6 新增的指令信息](0002-expose-v6-instruction-information.md) | Implemented |
| 0003 | [用新 Swift 特性重写封装层：按架构泛型的不可复制引擎](0003-rewrite-with-modern-swift.md) | Implemented |
