print("*********复杂数据类型 table*********")
--所有复杂类型都是table
print("*********数组*********")
a = {1,2,3,4,"1234",true,nil}
--lua中索引从1开始
--#是通用的获取长度的关键字
--打印长度时候 空被忽略,直接到空短路
for i = 1,#a do
	print(a[i])
end


print("*********数组的遍历*********")
for i = 1,#a do
	print(a[i])
end

print("*********二维数组*********")
a = {{1,2,3},{4,5,6}}
print(a[1][1])
print(a[1][2])
print(a[1][3])


print("*********二维数组的遍历*********")
for i=1,#a do
	b = a[i]
	for j=1,#b do
		print(b[j])
	end
end


print("*********自定义索引*********")
aa = {[0] = 1,2,3,[-1] = 4,5}
print(aa[0],aa[-1])
print(#aa)