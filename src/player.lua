player = {}

function player.load()
  player.x = -200
  player.y = 300
  player.xvel = 0
  player.yvel = 0
  player.speed = 2250
  player.width = 50
  player.height = 50
  player.sprite = love.graphics.newImage("res/img/Neutre.png")
end

function player.draw()
  love.graphics.draw(player.sprite, player.x, player.y, 0, 0.5, 0.5)
end

function player.update(dt)
  player.draw()
end
