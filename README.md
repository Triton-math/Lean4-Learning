# Lean 4 学习日志

**目标**：掌握形式化验证。
**开始时间**：2026-02-01
###### （AI制定的计划，仅供简单参考。）

## 第一阶段：理论补齐与思维重构 (Month 1-3)
Step 1(ETA 1-3 Month)
- 掌握 Lean 4 基本语法。
    - **《Natural Number Game》**
    - **《Mathematics in Lean》**，可以从“群与环的形式化”章节开始。
        - 关注点：了解命名规范，学会查找定理
        - 关注 calc 模式和 have 语句
    - **《Type Theory and Formal Proof: An Introduction》 (Rob Nederpelt)**
        - Lambda Calculus（Lambda 演算）：这是所有函数式编程和证明助手的基石。你需要极其熟练地进行 $\beta$-reduction（归约）。
        - Dependent Types（依赖类型）：这是 Lean 区别于 Haskell/Java 的核心。重点： 理解 $\Pi$ 类型（Pi-types）。为什么说全称量词 $\forall x, P(x)$ 本质上是一个依赖函数类型？
        - The Lambda Cube（Lambda 立方）：理解从简单类型到 System F 再到 Calculus of Constructions (CoC) 的演进。Lean 的内核就是 CoC 的扩展。

    我建议采用 “以 MIL 为主线，遇到困惑查阅 TTFP” 的策略：

        第一阶段：感性认识（前 2 周）

            动作：也就是你现在正在做的事。配置好 Lean 4，强行推进 MIL 的前 3-4 章（Logic, Numbers, Sets）。

            心态： 不求甚解。遇到不懂的语法（比如 variable {G : Type*} [Group G]），先当成固定咒语背下来。

            目标： 跑通几个证明，获得多巴胺反馈。

        第二阶段：理论补完（当遇到瓶颈时）
            触发点： 当你开始对 Type, Type u, Prop 感到混乱，或者不知道为什么 a = b 既是一个命题又是一个类型的时候。

            动作： 暂停 MIL，打开 TTFP。阅读 Untyped Lambda Calculus (解决计算问题)。阅读 Simple Type Theory (解决基础类型问题)。阅读 Dependent Types (这是重中之重，对应 MIL 后期的内容)。
            注意： TTFP 里的符号可能和 Lean 不完全一样（它偏向 Coq/理论笔算），着重理解思想，不要纠结语法。
        第三阶段：深度融合（针对面试）
            动作： 回到 MIL，去攻克复杂的章节（如拓扑、代数结构）。
            挑战： 尝试不用 Tactic 模式（即不写 begin ... end 或 by ...），而是用 Term mode（项模式） 写一个简单的证明。比如： 证明 $A \to B \to A$。Tactic: intro h1, intro h2, exact h1Term: fun h1 h2 => h1

            悟道时刻： 当你发现上面两行代码完全等价时，你就打通了任督二脉（Curry-Howard 同构）。

        给你的具体行动建议（Action Plan）
        
            本周任务（MIL）：继续按照之前的计划，先在本地跑通 MIL 的 Hello World 级别证明。不要管理论，先让光标下的 Goal 变成 No goals。

            仓库规划：在你的 Lean4-Learning 仓库里，建立两个文件夹：/Practice：存放 MIL 的习题代码。/Theory：存放你对 TTFP 概念的笔记（比如：什么是 $\alpha$-conversion）。
            
            避坑指南：TTFP 是一本理论书，不要试图把 TTFP 里的每一个练习题都用 Lean 实现一遍（有些很难实现，或者 Lean 处理方式不同），把它当做一本参考书和心法秘籍，而不是操作手册。

### 2. GitHub 任务

- **仓库：`My-Lean-Journey`**
    
    - 记录你在学习《Natural Number Game》过程中的所有证明。
        
    - 将你研一学过的某个简单的代数定理（如：Lagrange's Theorem）尝试用 Lean 4 写出来。
        

## 第二阶段：工程化尝试与 Rust 入门 (Month 4-7)

**目标**：掌握西欧工业界最主流的系统级编程语言 Rust，并尝试将逻辑与代码结合。

### 1. 核心学习路径

- **《The Rust Programming Language》 (The Book)**：官方教材。
    
- **《Rustlings》**：一系列小练习，非常适合 ADHD 的短时间高频反馈。
    
- **重点关注**：所有权系统 (Ownership)、类型系统、以及函数式编程特性。
    

### 2. GitHub 任务

- **项目：`Lean4-Logic-Logic-Exercises`**
    
    - 实现一个简单的命题逻辑化简器（用 Rust 写逻辑，用 Lean 验证）。
        
- **项目：`Formal-Masters-Thesis-Mini`**
    
    - **核心动作**：尝试将你硕士论文中的 1-2 个核心引理进行形式化。这是你简历上最强的背书——证明你不仅懂高深的数学，还能将其转化为机器可读的资产。
        

## 第三阶段：社区贡献与职业化包装 (Month 8-12)

**目标**：融入开源社区，准备面试。

### 1. 核心动作

- **参与 `mathlib4` 贡献**：这是 Lean 4 的核心数学库。去 GitHub 找标注为 `easy` 或 `help wanted` 的 issue。
    
    - _注_：在西欧，如果你在 `mathlib4` 有 Merged PR，其效力等同于一封大牛推荐信。
        
- **研究目标公司技术栈**：关注西欧的 **Dafny**、**TLA+** 或 **Coq** 相关的岗位，这些工具的底层逻辑与 Lean 通用。
    

### 2. GitHub 任务

- **建立 `Portfolio` 页面**：展示你形式化的代数定理和参与的开源贡献。
    
- **Resume Optimization**：将目前的“AI 训练师”经历包装为：“基于大型语言模型的数学逻辑一致性评估与对齐”。



To Do List
1. 安装好lean4插件（网络环境太差了...）
2. Natural Number Game通关+代码上传
3. 学习Mathematics in Lean
4. 学习Type Theory and Formal Proof