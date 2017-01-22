require "src/room0"
require "src/room1"

function love.load()
  -- background
  love.graphics.setBackgroundColor(255, 255, 255)
  -- rooms
  room0.load()
  room1.load()
  -- misc
  font = love.graphics.newFont("res/font/AlexandriaFLF-Bold.ttf", 20)
  game_state = 0
  current_room = 1
end

function love.update(dt)
end

function love.draw()
    if (current_room == 0) then
      room0.play(game_state)
    end
    if (current_room == 1) then
      room1.play(game_state)
    end
end

function love.mousepressed(x, y, button, istouch)
  if (current_room == 0) then
    room0.click(game_state)
  end
  if (current_room == 1) then
    room1.click(game_state)
  end
end
