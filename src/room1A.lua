require "src/room1ALine"
require "src/player"
require "src/monsterA"

room1A = {}

function room1A.load()
  -- misc
  -- perso
  player.load()
  monsterA.load()
  -- room1A
  room1ALine.load()
  room1A.background = love.graphics.newImage("res/img/Decor_grotte.png")
end

function room1A.play(game_state, feeling)
  if (game_state == 0) then
    -- draw all image
    love.graphics.draw(room0.background, 0, 0)
    room1ALine.draw()
    -- display right character
    local speaker = room1ALine.get_line_speaker(feeling)
    if (speaker[0] == "player") then
      player.draw(speaker[1])
    end
    if (speaker[0] == "monsterA") then
      monsterA.draw(speaker[1])
    end
    -- display line
    room1ALine.print(feeling)
  end
end


function room1A.click(game_state, feeling)
  if (game_state == 0) then
    -- display next txt line
    -- add a way to skip to next room when finish
    room1ALine.next(feeling)
  end
  if (game_state == 1) then
    -- used to click on element
  end
end
