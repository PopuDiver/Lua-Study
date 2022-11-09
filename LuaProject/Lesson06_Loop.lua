print("*********循环语句*********")

print("********while语句*********")
num = 0
--while条件 do ...... end
while num < 5 do
	print(num)
	num = num + 1
end

print("*******do while语句*******")
num = 0
--repeat ...... until 条件 (注意：条件是结束条件)
repeat
	print(num)
	num = num + 1
until num > 5 -- 满足条件跳出 结束条件
	
print("********for语句***********")

--i默认每次加1
for i = 1,5 do
	print(i)
end

--可以在后面加一个语句让它自定义增量
for i = 1,5,2 do
	print(i)
end

--可以在后面加一个语句让它自定义变化
for i = 1,5,-1 do
	print(i)
end