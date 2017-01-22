doors = {}

function doors.load()
  doors.x = 70
  doors.y = - 60
  doors.r = 0
  doors.sx = 0.7
  doors.sy = 0.7
  doors.width = 50
  doors.height = 50
  doors.sprite = love.graphics.newImage("res/img/porte.png")
end

function doors.draw()
  love.graphics.draw(doors.sprite, doors.x, doors.y, doors.r, doors.sx, doors.sy)
end

function doors.update(dt)
  doors.draw()
end
