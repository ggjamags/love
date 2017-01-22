require "src/doors"
require "src/room0Line"
require "src/player"
require "src/monsterA"
require "src/monsterB"

room0 = {}

function room0.load()
  -- misc
  doors.load()
  -- perso
  player.load()
  monsterA.load()
  monsterB.load()
  -- room0
  room0Line.load()
  room0.background = love.graphics.newImage("res/img/Decor_grotte.png")
end
