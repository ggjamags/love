player = {}

function player.load()
  player.x = -200
  player.y = 300
  player.r = 0
  player.sx = 0.5
  player.sy = 0.5
  player.width = 50
  player.height = 50
  player.spriteNeutre = love.graphics.newImage("res/img/Neutre.png")
  player.spriteTriste = love.graphics.newImage("res/img/Tristesse.png")
  player.spriteJoie = love.graphics.newImage("res/img/Joie.png")
  player.feeling = "tristesse"
end

function player.draw(feeling)
  if (feeling == "neutre") then
    love.graphics.draw(player.spriteNeutre, player.x, player.y, player.r, player.sx, player.sy)
  end
  if (feeling == "triste") then
    love.graphics.draw(player.spriteTriste, player.x, player.y, player.r, player.sx, player.sy)
  end
  if (feeling == "joie") then
    love.graphics.draw(player.spriteJoie, player.x, player.y, player.r, player.sx, player.sy)
  end
end

function player.update(dt)
  player.draw()
end
