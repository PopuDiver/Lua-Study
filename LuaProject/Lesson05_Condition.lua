print("*********条件分支语句*********")
a = 9
--if 条件 then......end

--单分支
if a > 5 then
	print("123")
end

--双分支
if a < 5 then
	print("456")
else
	print("321")
end

--多分支
if a < 5 then
	print("222")
elseif a == 9 then
	print("6")
end

--lua中没有switch语句 需要自己实现