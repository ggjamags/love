require "src/player"

function love.load()
  love.graphics.setBackgroundColor(255, 2555, 255)
  --Loading player--
  player.load()
end

function love.update(dt)
  player.update(dt)
end

function love.draw()
  player.draw()
end
