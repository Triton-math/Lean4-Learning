- 以下常用策略还未了解：
constructor: 处理 $\land$、$\leftrightarrow$ 或递归类型的构造，将目标拆分为多个组成部分
left / right: 处理目标中的析取符号 $\lor$，选择证明左侧或右侧命题
specialize: 将一个泛型假设（带 $\forall$）作用于特定对象，使假设具体化
dsimp: 定义性简化，仅根据定义展开（Definitional Equality）而不使用公理
change: 将目标手动改写为另一个定义上等价的表达式
cases: 对假设进行分类讨论或拆解，例如拆解 $\lor$ 或提取 $\exists$ 中的元素
induction: 对归纳类型（如 $\mathbb{N}$ 或列表）执行数学归纳法
rcases: Mathlib 提供的加强版 cases，支持通过模式匹配（Pattern Matching）一步拆解深层结构
obtain: 类似于 rcases，通常用于从存在性证明 $\exists$ 中提取元素及其性质
split: 将一个复合目标（如 $P \land Q$）拆分为多个子目标，类似于 constructor
simp: 调用化简集（Simp Set）对目标进行自动化简，是最常用的自动化策略
ring: 专门处理交换环（Commutative Rings）中的代数恒等式
linarith: 处理线性算术（Linear Arithmetic）中的等式与不等式推导
aesop: 自动搜索逻辑证明，能处理复杂的命题逻辑和基础集合论问题
tauto: 自动完成纯逻辑（Tautology）层面的推演
norm_num: 专门用于处理具体的数值运算（如证明 $2 + 2 = 4$）
let: 在证明过程中定义一个局部变量
by_contra: 开启反证法，将目标的否定作为新的假设
focus: 将注意力集中在当前的第一个子目标上，隔离其他干扰

- 读完前五个Chap就可以开始找兼职