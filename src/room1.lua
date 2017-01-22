require "src/room1Line"
require "src/player"
require "src/monsterB"

room1 = {}

function room1.load()
  -- misc
  -- perso
  player.load()
  monsterB.load()
  -- room1
  room1Line.load()
  room1.background = love.graphics.newImage("res/img/Decor_grotte.png")
end

function room1.play(game_state, feeling)
  if (game_state == 0) then
    -- draw all image
    love.graphics.draw(room0.background, 0, 0)
    room1Line.draw()
    -- display right character
    local speaker = room1Line.get_line_speaker(feeling)
    if (speaker[0] == "player") then
      player.draw(speaker[1])
    end
    if (speaker[0] == "monsterB") then
      monsterB.draw(speaker[1])
    end
    -- display line
    room1Line.print(feeling)
  end
end


function room1.click(game_state, feeling)
  if (game_state == 0) then
    -- display next txt line
    -- add a way to skip to next room when finish
    room1Line.next(feeling)
  end
  if (game_state == 1) then
    -- used to click on element
  end
end
