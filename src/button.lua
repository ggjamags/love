--
-- button
--

button = {

   -- attributes
   enabled = true
   , x = 0
   , y = 0
   , width = 0
   , height = 0
   , txt = ""
   , sprite = nil 

   -- methods
   , onClick = nil
}

function button.load(xx, yy, wwidth, hheight, ttxt, callback)       
   
   if xx      == nil or yy      == nil or
      wwidth  == nil or hheight == nil then
         print("missing parameters to button.load()")
         return nil
   end

   local ret = {}
   self = setmetatable(ret, { __index = button })
   
   -- attributes
   ret.x = xx
   ret.y = yy
   ret.width = wwidth
   ret.height = hheight
   ret.txt = ttxt
      
   -- methods
   ret.onClick = callback or defaultCallback
   
   return ret
end

function button:draw()

   if not self:isEnabled() then return false end

   love.graphics.setColor(0, 80, 80)
   love.graphics.rectangle('fill'
                           , self.x, self.y
                           , self.width, self.height)

   love.graphics.setColor(255, 255, 255)
   love.graphics.printf(self.txt
                       , self.x
                       , self.y --+ (self.height / 3 + 8)
                       , self.width
                       , "center"
   )
   
end

-- Boolean conditions
function button:isClicked(x, y)
   if not self.enabled then return false end
   
   return 
      x >= self.x and x <= (self.x + self.width ) and
      y >= self.y and y <= (self.y + self.height)    

end

function button:isEnabled() return self.enabled end

-- Getters
function button:getX() return self.x end
function button:getY() return self.y end
function button:getSprite() return self.sprite end

-- Setters
function button:enable()
   self.enabled = true;
end

function button:disable()
   self.enabled = false;
end

-- Misc
function button:defaultCallback() print("button:defaultCallback called !") end
