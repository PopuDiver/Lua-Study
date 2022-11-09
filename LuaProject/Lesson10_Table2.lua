print("*********复杂数据类型-表2*********")

print("*********字典*********")

print("*********字典的声明*********")
a = {["name"] = "HelloWrold!" , ["age"] = 14 , ["1"] = 5}
--访问单个变量 用中括号填键 来访问
print(a["name"])
print(a["age"])
print(a["1"])
--还可以类似.成员变量的形式得到值
print(a.name)
print(a.age)
--虽然可以通过.成员变量的形式得到值 但是不能是数字
print(a["1"])

--修改
a["name"] = "HW"
print(a["name"])

--新增
a["sex"] = false
print(a["sex"])

--删除
a["sex"] = nil
print(a.sex)

print("*********字典的遍历*********")

--如果要模拟字典 遍历一定用pairs
for k,v in pairs(a) do
	--可以传多个参数 一样可以打印
	print(k,v)
end

for k in pairs(a) do
	print(k)
	print(a[k])
end

for _,v in pairs(a) do
	print(_,v)
end

print("*********类和结构体*********")

--Lua中默认没有面向对象 需要自己来实现
--成员变量 成员函数 
Student = {
	--年龄
	age = 1,
	--性别
	sex = true,
	--成长函数
	Up = function()
		--这样写 这个age 和表中的age没有任何关系 是一个全局变量
		--print(age)
		--想要在表内部函数中 调用表本身的属性或者方法
		--一定要指定是谁的 所以要使用 表名.属性 或 表名.方法
		print(Student.age)
		print("成长函数")
	end,
	--学习函数
	Learn = function(t)
		--第二种 能够在函数内部调用自己属性或者方法的 方法
		--把自己作为一个参数传进来 在内部访问
		print(t.sex)
		print("学习函数")
	end
}
--声明表过后 在表外去声明表有的变量和方法
Student.name = "Hello Wrold!"
Student.Learn(Student)
--Lua中点和:的区别
--:调用方法 会默认把调用者 作为第一个参数传入方法中
Student:Learn()

Student.Speak = function (  )
	print("讲英语")
end

--函数的第三种声明方法
function Student:Speak2(  )
	--lua中 有一个关键字 self 表示 默认传入的第一个参数
	print(self.name)
	print("讲国语")
	-- body
end

--C#要是使用类 实例化对象new 静态直接点方法
--Lua中类的表现 更像是一个类中有很多 静态变量和函数
print(Student.age)
Student.Up()
print(Student.name)
Student.Speak()
Student:Speak2()
Student.Speak2(Student)

print("*********表的公共操作*********")
--表中 table提供的一些公共方法的讲解

t1 = {{age = 1,name = "123"},{age = 2,name = "345"}}

t2 = {name = "Hello World!", sex = true}

--插入
print("*********插入*********")
print(#t1)
table.insert(t1,t2)
print(#t1)
print(t1[1])
print(t1[2])
print(t1[3])
print(t1[3].sex)

--删除指定元素
--remove方法 传表进去 会移除最后一个索引的内容
print("*********删除*********")
table.remove(t1)
print(#t1)
print(t1[1].name)
print(t1[2].name)
print(t1[3])

--remove方法 传两个参数 第一个参数 是要移除内容的表
--第二个参数 是要移除内容的索引
table.remove(t1,1)
print(t1[1].name)
print(#t1)


print("*********排序*********")
t2 = {5,2,7,9,5}
--传入要排序的表 默认升序
table.sort(t2)
for _,v in pairs(t2) do
	print(v)
end

print("*********降序*********")
--传入两个参数 第一个是用于排序的表
--第二个是 排序规则函数
table.sort(t2,function(a,b)
	if a > b then
		return true
	end
end)

for _,v in pairs(t2) do
	print(v)
end

print("*********拼接*********")
tb = {"123","456","789","1010"}
--连接函数 用于拼接表中元素 返回值 是一个字符串
str = table.concat(tb,";")
print(str)