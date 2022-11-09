print("*********元表*********")
print("*********元表概念*********")
--任何表变量都可以作为另一个表变量的元表
--任何表变量都可以有自己的元表(父类)
--当我们子表中进行一些特定操作时
--会执行元表中的内容
print("*********设置元表*********")
meta = {}
mytable = {}
--设置元表函数
--第一个参数 子表
--第二个参数 元表
setmetatable(mytable,meta)

print("*********特定操作*********")
print("*********特定操作-_tostring*********")
meta2 = {
	--当子表要被当作字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function(t)
		return t.name
	end
}
mytable2 = {
	name = "HelloWrold!"
}
--设置元表函数
--第一个参数 子表
--第二个参数 元表
setmetatable(mytable2,meta2)

print(mytable2)

print("*********特定操作-_call*********")

meta3 = {
	--当子表要被当作字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function(t)
		return t.name
	end,
	--当子表被当作一个函数来使用时 会默认调用这个__call中的内容
	--当需要传参数时 默认第一个参数 是调用者自己
	__call = function (a,b)
		print(a)
		print(b)
		print("abaabaaba")
	end
}
mytable3 = {
	name = "HelloWrold!"
}
--设置元表函数
--第一个参数 子表
--第二个参数 元表
setmetatable(mytable3,meta3)
--把子表当作函数使用 就会调用元表的__call方法
mytable3(1)

print(mytable3)

print("*********特定操作-运算符重载*********")

meta4 = {
	--相当于运算符重载 当子表使用+运算符时 会调用该方法
	--运算符+
	__add = function(t1,t2)
		return t1.age + t2.age
	end,
	--运算符-
	__sub = function(t1,t2)
		return t1.age - t2.age
	end,
	--运算符*
	__mul = function(t1,t2)
		return t1.age * t2.age
	end,
	--运算符/
	__div = function(t1,t2)
		return t1.age / t2.age
	end,
	--运算符%
	__mod = function(t1,t2)
		return t1.age % t2.age
	end,
	--运算符^
	__pow = function(t1,t2)
		return t1.age ^ t2.age
	end,
	--运算符==
	__eq = function(t1,t2)
		return true
	end,
	--运算符<
	__lt = function(t1,t2)
		return true
	end,
	--运算符<=
	__le = function(t1,t2)
		return false
	end,
	--运算符..
	__concat = function(t1,t2)
		return "t1.age .. t2.age"
	end

}

mytable4 = {age = 1}
mytable5 = {age = 2}
setmetatable(mytable4,meta4)
setmetatable(mytable5,meta4)
print(mytable4 + mytable5)
print(mytable4 - mytable5)
print(mytable4 * mytable5)
print(mytable4 / mytable5)
print(mytable4 % mytable5)
print(mytable4 ^ mytable5)

--如果要用条件运算符 比较两个对象
--这两个对象的元表一定要一致 才能准确调用方法
print(mytable4 == mytable5)
print(mytable4 < mytable5)
print(mytable4 <= mytable5)

print(mytable4..mytable5)



print("*********特定操作-_index和_newIndex*********")

meta6 = {
	age = 1
}
--__index的赋值 写在表外面来初始化
meta6.__index = meta6
--meta6.__index = {age2 = 2}

mytable6 = {}
setmetatable(mytable6,meta6)
--得到元表的方法
print(getmetatable(mytable6))

--__index 当子表中找不到某一个属性时
--会到元表中 __index指定的表去找索引
print(mytable6.age)
--rawget当我们使用它时 会去找自己身上有没有这个变量
print(rawget(mytable6,"age"))
--print(mytable6.age2)

--newIndex 当赋值时 如果赋值一个不存在的索引
--那么会把这个值赋值到newindex所指的表中 不会修改自己

meta7 = {}
meta7.__newindex = {}
mytable7 = {}
setmetatable(mytable7,meta7)

mytable7.age = 1

print(mytable7.age)
print(meta7.__newindex.age)
--该方法会忽略newindex的设置 只会改自己的变量
rawset(mytable7,"age",2)
print(mytable7.age)