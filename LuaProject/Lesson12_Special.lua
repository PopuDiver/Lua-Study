print("*********特殊用法*********")
print("*********多变量赋值*********")
a,b,c = 1,2,"123"
print(a)
print(b)
print(c)
--多变量赋值 如果后面的值不够 会自动补空
a,b,c = 1,2
print(a)
print(b)
print(c)
--如果后面值多了，会自动舍弃
a,b,c = 1,2,3,4,5,6
print(a)
print(b)
print(c)

print("*********多返回值*********")
function Test()
	return 10,20,30,40
end
--多返回值时 你用几个变量接 就有几个值
--如果少了 就少接几个 如果多了 就自动补空
a,b,c = Test()
print(a)
print(b)
print(c)
print(d)
print(e)

print("*********and or*********")
--逻辑与 逻辑或
-- and or他们不仅可以连接 boolean 任何东西都可以用来连接
--在lua中 只有nil 和 false 才认为是假
-- "短路" -- 对于and来说 有假则假 对于or来说 有真则真
-- 所以它们只需要先判断第一个 是否满足 就会停止计算了
print(1 and 2)

--lua不支持三目运算符
x = 1
y = 2
-- ？ ：

local res = (x > y) and x or y
print(res)