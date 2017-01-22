--[[
   Doing some science around here   
--]]

require "Math/Vector2"

function love.load()
   print("Starting love ...")
   
   x = Vector2.new(42, 84)
   print(x.x, x.y)
   
end

function love.draw()

end

function keyPressed()
   
end

function love.update(dt)
   
end

function love.mousepressed(x, y, button, istouch)
   print("x:", x, " y:", y, " button:", button, " istouch:", istouch)
end

