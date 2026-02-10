import Mathlib.Data.Nat.Basic -- 引入 Mathlib，测试库是否安装成功

-- 定义主函数
def main : IO Unit := do
  -- 打印一行字
  IO.println "Hello, Lean!"

  -- 测试一下 Mathlib 的功能
  let result := 2 + 2
  IO.println s!"Mathlib check: 2 + 2 = {result}"
-- 以上仅仅是定义，若想要运行，必须执行eval
#eval main
