monsterB = {}

function monsterB.load()
  monsterB.x = -20
  monsterB.y = 330
  monsterB.xvel = 0
  monsterB.yvel = 0
  monsterB.speed = 2250
  monsterB.width = 50
  monsterB.height = 50
  monsterB.sprite = love.graphics.newImage("res/img/monstre_assoupi_yeux_ouverts.png")
end

function monsterB.draw()
  love.graphics.draw(monsterB.sprite, monsterB.x, monsterB.y, 0, 1.3, 1.3)
end

function monsterB.update(dt)
  monsterB.draw()
end
