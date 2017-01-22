require "src/textBox"
require "src/monsterA"
require "src/monsterB"
require "src/room0"

function love.load()
  -- background
  love.graphics.setBackgroundColor(255, 255, 255)
  -- rooms
  room0.load()
  -- perso
  monsterA.load()
  monsterB.load()
  -- misc
  textBox.load(room0Line.max_line)
  font = love.graphics.newFont("res/font/AlexandriaFLF-Bold.ttf", 20)
  textBox.draw()
  game_state = 0
end

function love.update(dt)
    player.update(dt)
end

function love.draw()
    if (game_state == 0) then
      love.graphics.draw(room0.background, 0, 0)
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
--  if (game_state == 1) then
--    love.graphics.draw(cave_background, 0, 0)
--    textBox.draw()
--    if (textBox.get_line_speaker() == "player") then
--      player.draw()
--    end
--    if (textBox.get_line_speaker() == "monsterA") then
--      monsterA.draw()
--    end
--    if (textBox.get_line_speaker() == "monsterB") then
--      monsterB.draw()
--    end
--    textBox.print()
--  end
end

function love.mousepressed(x, y, button, istouch)
  if (game_state == 0) then
    room0Line.next()
  end
  if (game_state == 1) then
    textBox.next()
  end
end
