print("·········变量··········")
--lua中的简单变量类型
-- nil number string boolean
--lua中所有的变量声明 都不需要声明变量类型 会自动判断类型
--类似c# 中的 var
--lua 中的一个变量可以随便赋值 可以自动识别类型
--通过 type 函数 返回值是string 可以得到变量类型

--lua中使用没有声明过的变量 不会报错 默认值是nil
print(b)

--nil 有点类似C#中的null
print("**********nil**********")
a = nil
print(a)
print(type(a))
print(type(type(a)))

--number 所有的数值都是number
print("*********number********")
a = 1
print(a)
a = 1.2
print(a)

--string 的声明 使用单引号或者双引号包裹
--lua里 没有char
print("*********string********")
a = "123321"
print(a)
a = '123'
print(a)

--
print("*********boolean********")
a = true
print(a)
a = false
print(a)


--复杂数据类型
--函数 function
--表 table
--数据结构 userdata
--协同程序 thread(线程)