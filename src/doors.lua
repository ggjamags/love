doors = {}

function doors.load()
  doors.x = -20
  doors.y = 330
  doors.xvel = 0
  doors.yvel = 0
  doors.speed = 2250
  doors.width = 50
  doors.height = 50
  doors.sprite = love.graphics.newImage("res/img/porte.png")
end

function doors.draw()
  love.graphics.draw(doors.sprite, doors.x, doors.y, 0, 1.3, 1.3)
end

function doors.update(dt)
  doors.draw()
end
