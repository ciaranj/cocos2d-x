FarmLayer = {}
FarmLayer.__index = FarmLayer

function FarmLayer:onEnter()
	
	cocos2d.CCLuaLog("FarmLayer:onEnter()")
end

function FarmLayer:new()

   -- create a table and make it an 'instance' of DogSprite
   local t = {}
   setmetatable(t, FarmLayer)

   -- create a cocos2d.Lua__CCLayer object, and make the table inherit from it
   local w = cocos2d.Lua__CCLayer:node()
   tolua.setpeer(w, t)

   -- 'w' will be the lua object where the virtual methods will be looked up
   w:tolua__set_instance(w)

   return w
end
