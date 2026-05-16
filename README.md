# 大佬闭门董事会 (Tycoon Boardroom)

> 五把椅子。一个问题。一场不留情面的讨论。

[在线预览](https://wike-chi.github.io/tycoon-boardroom)

一个 Claude Code Skill，模拟五位科技商业巨头（马化腾、马云、雷军、马斯克、黄仁勋）的私人董事会闭门会议，对你的困境、难题或决策进行坦诚、激烈但有建设性的讨论。

## 成员阵容

| 成员 | 身份 | 核心思维 |
|------|------|----------|
| 马化腾 | 腾讯创始人 | 万物皆产品，一切可迭代 |
| 马云 | 阿里巴巴创始人 | 格局决定结局 |
| 雷军 | 小米创始人 | 效率说话，数据说话 |
| 马斯克 | Tesla & SpaceX | 回到第一性原理 |
| 黄仁勋 | 英伟达创始人 | 架构决定一切 |

## 讨论流程

1. **问题定性** — 最敏锐的成员复述你的核心问题
2. **多角度剖析** — 五位大佬从各自视角分析，允许反驳和冲突
3. **收敛方案** — 1-3 条明天就能执行的具体行动建议

## 项目结构

```
skills/
├── tycoon-boardroom/              # 主技能
│   ├── SKILL.md
│   └── references/                # 马云/马斯克/黄仁勋详细档案
│       ├── elon-musk-profile.md
│       ├── jack-ma-profile.md
│       └── jensen-huang-profile.md
├── pony-ma-perspective/           # 马化腾完整档案（被 tycoon-boardroom 引用）
│   ├── SKILL.md
│   └── references/research/
├── lei-jun-perspective/           # 雷军完整档案（被 tycoon-boardroom 引用）
│   ├── SKILL.md
│   └── references/research/
└── bill-gates-perspective/        # 比尔·盖茨档案（可替换成员）
    ├── SKILL.md
    └── references/research/
```

## 一键安装

**macOS / Linux:**

```bash
curl -fsSL https://raw.githubusercontent.com/Wike-CHI/tycoon-boardroom/main/install.sh | bash
```

**Windows (PowerShell):**

```powershell
irm https://raw.githubusercontent.com/Wike-CHI/tycoon-boardroom/main/install.ps1 | iex
```

安装完成后，在 Claude Code 中输入 `/tycoon-boardroom` 即可触发。

## 使用

在 Claude Code 中输入：

```
/tycoon-boardroom 我现在不知道该不该全职创业...
```

或者自然语言触发：

- "让大佬们帮我看看这个问题"
- "模拟董事会讨论一下"
- "帮我叫几个大佬开个会"

## 免责声明

此技能为角色扮演，基于公开信息提炼各人物思维风格。发言内容为 AI 模拟，不代表本人真实观点。

## License

MIT
