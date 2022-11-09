--面向对象实现
--万物之父 所有对象的基类 Object
Object = {}
--实例化方法
function Object:new()
	local obj = {}
	self.__index = self
	--给空对象设置元表 以及 __index
	setmetatable(obj,self)
	return obj
end

--继承
function Object:subClass( className )
	--根据名字生成一张表 就是一个类
	_G[className] = {}
	local obj = _G[className]
	--设置自己的父类
	obj.base = self
	--给子类设置元表 以及__index
	self.__index = self
	setmetatable(obj,self)
end

Object:subClass("GameObject")
GameObject.posX = 0
GameObject.posY = 0
function GameObject:Move(  )
	self.posX = self.posX + 1
	self.posY = self.posY + 1
end

--实例化对象使用
local obj = GameObject:new()
print(obj.posX)
obj:Move()
print(obj.posX)

local obj2 = GameObject:new()
print(obj2.posX)
obj2:Move()
print(obj2.posX)

--声明一个新的类 继承GameObject
GameObject:subClass("Player")
--多态 重写了GameObject的Move方法
function Player:Move( )
	--base调用父类方法 用.方法自己传入第一个参数
	self.base.Move(self)
end

--实例化Player对象
local p1 = Player:new()
print(p1.posX)
p1:Move()
print(p1.posX)

local p2 = Player:new()
print(p2.posX)
p2:Move()
print(p2.posX)