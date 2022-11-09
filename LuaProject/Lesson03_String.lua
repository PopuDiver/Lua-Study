print("************字符串***********")
str = "双引号字符串"
str1 = '单引号字符串'

--获取字符串的长度
print("*********字符串的长度********")
s = "aBcdEfG字符串"
--一个中文字占三个长度
--英文字符占一个长度
print(#s)


print("*********字符串多行打印********")
--lua中支持转义字符
print("123\n123")

s = [[
Hello
World
!
]]
print(s)


print("*********字符串的拼接********")
--字符串的拼接 通过..
print("123" .. "456")
s1 = "123456"
s2 = 111
print(s1..s2)

print(string.format("HelloWrold!%dabaaba",1))
--%d:与数字拼接
--%a:与任何字符拼接
--%s:与字符配对


print("*********别的类型字符串********")
a = true
print(tostring(a))


print("******字符串提供的公共方法*****")
str = "abCdefG"
--小写转大写的方法
print(string.upper(str))
--大写转小写的方法
print(string.lower(str))
--反转字符串
print(string.reverse(str))
--字符串索引查找 返回两个值，就是起始找到的到结束
print(string.find(str,"Cde"))
--截取字符串
--如果传入一个参就是默认从这个位置开始截，如果传两个参，就是截取两个之间的字符
print(string.sub(str,3,4))
--字符串重复,后面的参数就是重复的次数
print(string.rep(str,2))
--字符串修改 返回两个值，第二个值是告诉你重复了多少次
print(string.gsub(str,"Cd","**"))

--字符转ACSII码 1的意思是第一个字符也就是L
a = string.byte("Lua",1)
print(a)
--ASCII转字符
print(string.char(  ))
