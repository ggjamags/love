monsterA = {}

function monsterA.load()
  monsterA.x = 5
  monsterA.y = 300
  monsterA.xvel = 0
  monsterA.yvel = 0
  monsterA.speed = 2250
  monsterA.width = 50
  monsterA.height = 50
  monsterA.sprite = love.graphics.newImage("res/img/Monstre_mechant.png")
end

function monsterA.draw()
  love.graphics.draw(monsterA.sprite, monsterA.x, monsterA.y, 0, 1.2, 1.2)
end

function monsterA.update(dt)
  monsterA.draw()
end
