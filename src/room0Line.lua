room0Line = {}

function room0Line.load()
  room0Line.x = 0
  room0Line.y = 400
  room0Line.width = 1000
  room0Line.height = 200
  room0Line.line_nbr = 0
  room0Line.max_line = 0
  room0Line.txt = {
    [0] = {
      [0] = "player",
      [1] = "Quelle porte devrais-je ouvrir ?"
    }
  }
end

function room0Line.next()
  if (room0Line.line_nbr < room0Line.max_line) then
    love.graphics.setColor(255, 0, 0, 255)
    room0Line.line_nbr = room0Line.line_nbr + 1
    love.graphics.print(room0Line.txt[room0Line.line_nbr][1], room0Line.x + 5, room0Line.y + 5)
    love.graphics.setColor(255, 255, 255, 255)
  end
end

function room0Line.draw()
  love.graphics.setColor(255, 255, 255, 50)
  love.graphics.rectangle("fill", room0Line.x, room0Line.y, room0Line.width, room0Line.height)
  love.graphics.setColor(255, 255, 255, 255)
end

function room0Line.print()
  love.graphics.setColor(255, 0, 0, 255)
  love.graphics.setFont(font)
  love.graphics.print(room0Line.txt[room0Line.line_nbr][1], room0Line.x + 400, room0Line.y + 5)
  love.graphics.setColor(255, 255, 255, 255)
end

function room0Line.get_line_speaker()
  return room0Line.txt[room0Line.line_nbr][0]
end

function room0Line.reset()
  room0Line.line_nbr = 0
end
