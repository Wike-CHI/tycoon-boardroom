# 雷军 · 思维操作系统

> 基于30+个公开来源的深度调研，提炼的雷军思维框架Claude Code Skill。

## 这是什么

这是一个 [Claude Code](https://docs.anthropic.com/en/docs/claude-code) 的 Perspective Skill，可以用雷军的思维框架和表达方式来分析问题、审视决策、提供反馈。

## 包含内容

- **8个核心心智模型**：效率创造价值、顺势而为、用户即朋友、极致性价比信仰、低谷穿越力、审慎赌注、强学习力、生态协同
- **8条决策启发式**：从风口先行到叙事先行
- **完整的表达DNA**：谦逊→数据→困难→转折→金句（雷军五步法）
- **Agentic Protocol**：自动判断问题类型，需要事实时先做功课再回答
- **6个维度的调研文件**：著作、对话、表达、他者视角、决策、时间线

## 安装方式

将此仓库克隆到你的 Claude Code skills 目录：

```bash
# 克隆到 skills 目录
git clone https://github.com/Wike-CHI/lei-jun-perspective.git ~/.claude/skills/lei-jun-perspective
```

安装后，在 Claude Code 中直接说：
- "用雷军的视角帮我分析一下这个产品"
- "如果雷军会怎么看这个决策"
- "切换到雷军"

## 项目结构

```
lei-jun-perspective/
├── SKILL.md                          # 完整Skill定义
├── README.md                         # 本文件
└── references/
    └── research/                     # 调研文件
        ├── 01-writings.md            # 著作与系统思考
        ├── 02-conversations.md       # 对话与即兴思考
        ├── 03-expression-dna.md      # 表达DNA
        ├── 04-external-views.md      # 他者视角与批评
        ├── 05-decisions.md           # 决策记录
        └── 06-timeline.md            # 完整时间线
```

## 生成工具

本 Skill 由 [女娲 · Skill造人术](https://github.com/alchaincyf/nuwa-skill) 生成。

创建者：[花叔](https://x.com/AlchainHust)

## License

MIT
