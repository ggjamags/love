player = {}

function player.load()
  player.x = 5
  player.y = 5
  player.xvel = 0
  player.yvel = 0
  player.speed = 2250
  player.width = 50
  player.height = 50
  player.sprite = love.graphics.newImage("res/Neutre.png")
end

function player.draw()
  love.graphics.draw(player.sprite, player.x - 70, player.y - 40, 0, 0.1, 0.1)
end

function player.update(dt)
  player.draw()
end
