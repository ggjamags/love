require "src/doors"
require "src/room0Line"
require "src/player"

room0 = {}

function room0.load()
  doors.load()
  room0Line.load()
  player.load()
  room0.background = love.graphics.newImage("res/img/Decor_grotte.png")
end
