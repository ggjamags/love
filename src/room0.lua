require "src/doors"
require "src/room0Line"
require "src/player"

room0 = {}

function room0.load()
  -- misc
  doors.load()
  -- perso
  player.load()
  -- room0
  room0Line.load()
  room0.background = love.graphics.newImage("res/img/Decor_grotte.png")
end

function room0.play(game_state)
  if (game_state == 0) then
    -- draw all image
    love.graphics.draw(room0.background, 0, 0)
    doors.draw()
    room0Line.draw()
    -- display right character
    local speaker = room0Line.get_line_speaker()
    if (speaker[0] == "player") then
      player.draw(speaker[1])
    end
    -- display line
    room0Line.print()
  end
end

function room0.click(game_state)
  if (game_state == 0) then
    -- display next txt line
    -- add a way to skip to next room when finish
    room0Line.next()
  end
  if (game_state == 1) then
    -- used to click on element
  end
end
