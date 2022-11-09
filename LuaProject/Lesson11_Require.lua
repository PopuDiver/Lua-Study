print("*********多脚本执行*********")
print("*********全局变量和本地变量*********")
--全局变量 
a = 1
b = "123"

--本地变量 的关键字 local
for i = 1,2 do
	local c = 123
	print(c)
end
print(c)

fun = function()
	local tt = "112313"
end
fun()
print(tt)


print("*********多脚本执行*********")
--关键字 require("脚本名") require('脚本名')
require("Lesson03_String")
print(s1)

print("*********脚本卸载*********")
--如果是require加载执行的脚本 加载一次过后不会再被执行
--package.loaded["脚本名"]
--返回值是Boolean 意思是 该脚本是否被执行
print(package.loaded["Lesson03_String"])
--卸载已经执行过的脚本
package.loaded["Lesson03_String"] = nil

--require返回一个脚本时 可以在脚本最后返回一个外部希望获取的内容
require("Lesson03_String")
print(package.loaded["Lesson03_String"])


print("*********大G表*********")
--—_G表是一个总表(table) 他将我们声明的所有全局变量都存储在其中
for k,v in pairs(_G) do
	print(k,v)
end
--本地变量 加了local的变量是不会加入到大_G表中