--
-- 2d vector
--

local Vector2 = {}
Vector2.__index = Vector2 

Vector2.new = function(posX, posY)
   local self =  setmetatable({}, Vector)
   return self
end

return Vector2
