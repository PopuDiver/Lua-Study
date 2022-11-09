print("*********函数*********")
--function 函数名()
--end

--a = function()
	-- body
--end

print("*********无参数无返回值*********")

function F1()
	print("F1函数")
end
F1()

--有点类似C#中的 委托和事件
F2 = function()
	print("F2函数")
end
F2()

print("*********有参数*********")

function F3(a)
	print(a)
	-- body
end
F3(1)
F3("123")
F3(true)
--如果传入的参数和函数参数个数不匹配
--不会报错 只会补空或者丢弃
F3()
F3(1,23,3)

print("*********有返回值*********")

function F4(a)
	return a,"123",true
end
--多返回值时 在前面声明多个变量来接取即可
--如果变量不够 不影响 值接取对应位置的返回值
--如果变量多了 不影响 直接补空
temp , temp2 , temp3 = F4("123")
print(temp,temp2,temp3)

print("*********函数的类型*********")

--函数类型 就是function
F5 = function ( ... )
	print("123")
	-- body
end
print(type(F5))

print("*********函数的重载*********")

--函数名相同 参数类型不同 或者参数个数不同
--Lua中函数不支持重载，默认调用的是最后声明的函数

print("*********变长参数*********")

function F6( ... )
	--变长参数使用 用一个表存起来 再用
	arg = {...}
	for i = 1,#arg do
		print(arg[i])
	end
	-- body
end
F6(1,2,3,4,5,6,7)

print("*********函数嵌套*********")
function F7()
	return function()
		print(123);
		-- body
	end
	-- body
end

F9 = F7()
F9()

--闭包
function F9(x)
	--改变传入参数的生命周期
	return function(y)
		return x + y
	end
end

f10 = F9(10)
print(f10(5))