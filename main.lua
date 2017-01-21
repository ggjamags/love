--[[
   Doing some science around here   
--]]

function love.draw()
    love.graphics.print("Hello World", 400, 300)
end

function love.update()
   print(love.mouse.getPosition())
end

function love.mousepressed(x, y, button, istouch)
   print("x:", x, " y:", y, " button:", button, " istouch:", istouch)
end
