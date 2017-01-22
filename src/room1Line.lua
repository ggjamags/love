room1Line = {}

function room1Line.load()
  room1Line.x = 0
  room1Line.y = 400
  room1Line.width = 1000
  room1Line.height = 200
  room1Line.line_nbr = 0
  room1Line.max_line = {
    ['peur'] = 0,
    ['colere'] = 0,
    ['joie'] = 0,
    ['tristesse'] = 3
  }
  room1Line.txt = {
    ['peur'] = {
      [0] = {}
    },
    ['colere'] = {
      [0] = {}
    },
    ['joie'] = {
      [0] = {}
    },
    ['tristesse'] = {
      [0] = {
        [0] = "monsterB",
        [1] = "...",
        [2] = "ferme"
      },
      [1] = {
        [0] = "player",
        [1] = "Hooo mais qu'est-ce qui se passe ? Tu n'as pas l'air bien !",
        [2] = "neutre"
      },
      [2] = {
        [0] = "monsterB",
        [1] = "Je vais très bien casse toi !",
        [2] = "ouvert"
      },
      [3] = {
        [0] = "player",
        [1] = "Bon ok, t'es pas très sympa",
        [2] = "triste"
      }
    }
  }
end

function room1Line.next(feeling)
  if (room1Line.line_nbr < room1Line.max_line[feeling]) then
    love.graphics.setColor(255, 0, 0, 255)
    room1Line.line_nbr = room1Line.line_nbr + 1
    love.graphics.print(room1Line.txt[feeling][room1Line.line_nbr][1], room1Line.x + 5, room1Line.y + 5)
    love.graphics.setColor(255, 255, 255, 255)
  end
end

function room1Line.draw()
  love.graphics.setColor(255, 255, 255, 50)
  love.graphics.rectangle("fill", room1Line.x, room1Line.y, room1Line.width, room1Line.height)
  love.graphics.setColor(255, 255, 255, 255)
end

function room1Line.print(feeling)
  love.graphics.setColor(255, 0, 0, 255)
  love.graphics.setFont(font)
  love.graphics.print(room1Line.txt[feeling][room1Line.line_nbr][1], room1Line.x + 400, room1Line.y + 5)
  love.graphics.setColor(255, 255, 255, 255)
end

function room1Line.get_line_speaker(feeling)
  return {
    [0] = room1Line.txt[feeling][room1Line.line_nbr][0],
    [1] = room1Line.txt[feeling][room1Line.line_nbr][2]
  }
end

function room1Line.reset()
  room1Line.line_nbr = 0
end
