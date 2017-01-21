require "src/player"
require "src/button"
require "src/textBox"

function love.load()
  love.graphics.setBackgroundColor(255, 255, 255)
  player.load()
  button.load(50, 50, 50, 50, "TEST")
  textBox.load()
  cave_background = love.graphics.newImage("res/Decor_grotte.png")
  textBox.draw()
  game_state = 1;
end

function love.update(dt)
    player.update(dt)
end

function love.draw()
  if (game_state == 1) then
    love.graphics.draw(cave_background, 0, 0)
    textBox.draw()
    player.draw()
    textBox.print()
  end
end

function love.mousepressed(x, y, button, istouch)
  textBox.next()
end
