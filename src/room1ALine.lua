room1ALine = {}

function room1ALine.load()
  room1ALine.x = 0
  room1ALine.y = 400
  room1ALine.width = 1000
  room1ALine.height = 200
  room1ALine.line_nbr = 0
  room1ALine.max_line = {
    ['peur'] = 1,
    ['colere'] = 1,
    ['joie'] = 0,
    ['tristesse'] = 0
  }
  room1ALine.txt = {
    ['peur'] = {
      [0] = {
        [0] = "monsterA",
        [1] = "Grrr...",
        [2] = "ouvert"
      },
      [1] = {
        [0] = "player",
        [1] = "Ho non! Encore un monstre ! *s'enfuit* ",
        [2] = "peur"
      }
    },
    ['colere'] = {
      [0] = {
        [0] = "monsterA",
        [1] = "Grrr...",
        [2] = "ouvert"
      },
      [1] = {
        [0] = "player",
        [1] = "Meurt, meurt !",
        [2] = "colere"
      }
    },
    ['joie'] = {
      [0] = {
        [0] = "monsterA",
        [1] = "Grrr... Je vais te manger !",
        [2] = "ouvert"
      },
      [1] = {
        [0] = "player",
        [1] = "Attends, pourquoi ? Je suis super cool pourtant !",
        [2] = "neutre"
      },
      [2] = {
        [0] = "monsterA",
        [1] = "Ah ouais ? Prouve-le !",
        [2] = "neutre"
      },
      [3] = {
        [0] = "player",
        [1] = "Ok, je peux te raconter une blague:",
        [2] = "joie"
      },
      [4] = {
        [0] = "player",
        [1] = "Quel poisson est totalement fou ?",
        [2] = "joie"
      },
      [5] = {
        [0] = "monsterA",
        [1] = "Heuu...",
        [2] = "neutre"
      },
      [6] = {
        [0] = "player",
        [1] = "Le requin marteau !",
        [2] = "joie"
      }
    },
    ['tristesse'] = {
      [0] = {
        [0] = "monsterA",
        [1] = "Grrr...",
        [2] = "ouvert"
      }
    }
  }
end

function room1ALine.next(feeling)
  if (room1ALine.line_nbr < room1ALine.max_line[feeling]) then
    love.graphics.setColor(255, 0, 0, 255)
    room1ALine.line_nbr = room1ALine.line_nbr + 1
    love.graphics.print(room1ALine.txt[feeling][room1ALine.line_nbr][1], room1ALine.x + 5, room1ALine.y + 5)
    love.graphics.setColor(255, 255, 255, 255)
  end
end

function room1ALine.draw()
  love.graphics.setColor(255, 255, 255, 50)
  love.graphics.rectangle("fill", room1ALine.x, room1ALine.y, room1ALine.width, room1ALine.height)
  love.graphics.setColor(255, 255, 255, 255)
end

function room1ALine.print(feeling)
  love.graphics.setColor(255, 0, 0, 255)
  love.graphics.setFont(font)
  love.graphics.print(room1ALine.txt[feeling][room1ALine.line_nbr][1], room1ALine.x + 400, room1ALine.y + 5)
  love.graphics.setColor(255, 255, 255, 255)
end

function room1ALine.get_line_speaker(feeling)
  return {
    [0] = room1ALine.txt[feeling][room1ALine.line_nbr][0],
    [1] = room1ALine.txt[feeling][room1ALine.line_nbr][2]
  }
end

function room1ALine.reset()
  room1ALine.line_nbr = 0
end
