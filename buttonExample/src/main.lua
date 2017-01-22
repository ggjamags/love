--
-- main.lua
--

require "button"

function pouet1()
   print("pouët1")
end

function pouet2()
   print("pouët2")
end

function love.load()
   button1 = button.load(10, 10, 64, 32, "lol2", pouet1)
   button2 = button.load(200, 200, 64, 32, "lol2", pouet2) 
   button1:enable()
   button2:enable()
   button2:enable()
   print(button1:isEnabled())
   print(button2:isEnabled())
   print("getX()", button2:getX())
   print("getSprite()", button2:getSprite())

   print("isClicked()", button2:isClicked(12, 12))
   print("isClicked()", button2:isClicked(201, 232))
   
   button.defaultCallback()
end

function love.update(dt)

end

function love.draw()
   button1:draw()
   button2:draw()
end

function love.mousepressed(x, y, button)
   if button1:isClicked(x, y) then
      button1:onClick()
   end
   if button2:isClicked(x, y) then
      button2:onClick()
   end
end
