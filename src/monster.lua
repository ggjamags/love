monster = {}

function monster.load()
  monster.x = 5
  monster.y = 300
  monster.xvel = 0
  monster.yvel = 0
  monster.speed = 2250
  monster.width = 50
  monster.height = 50
  monster.sprite = love.graphics.newImage("res/img/Monstre_mechant.png")
end

function monster.draw()
  love.graphics.draw(monster.sprite, monster.x, monster.y, 0, 1.2, 1.2)
end

function monster.update(dt)
  monster.draw()
end
