require "src/player"
require "src/button"
require "src/textBox"
require "src/monsterA"
require "src/monsterB"

function love.load()
  -- background
  love.graphics.setBackgroundColor(255, 255, 255)
  -- perso
  monsterA.load()
  monsterB.load()
  player.load()
  -- misc
  textBox.load()
  font = love.graphics.newFont("res/font/AlexandriaFLF-Bold.ttf", 20)
  cave_background = love.graphics.newImage("res/img/Decor_grotte.png")
  textBox.draw()
  game_state = 1
end

function love.update(dt)
    player.update(dt)
end

function love.draw()
  if (game_state == 1) then
    love.graphics.draw(cave_background, 0, 0)
    textBox.draw()
    if (textBox.get_line_speaker() == "player") then
      player.draw()
    end
    if (textBox.get_line_speaker() == "monsterA") then
      monsterA.draw()
    end
    if (textBox.get_line_speaker() == "monsterB") then
      monsterB.draw()
    end
    textBox.print()
  end
end

function love.mousepressed(x, y, button, istouch)
  if (game_state == 1) then
    textBox.next()
  end
end
