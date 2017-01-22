monsterB = {}

function monsterB.load()
  monsterB.x = -20
  monsterB.y = 340
  monsterB.r = 0
  monsterB.sx = 1.3
  monsterB.sy = 1.3
  monsterB.width = 50
  monsterB.height = 50
  monsterB.spriteFermee = love.graphics.newImage("res/img/monstre_assoupi_yeux_fermes.png")
  monsterB.spriteOuvert = love.graphics.newImage("res/img/monstre_assoupi_yeux_ouverts.png")
end

function monsterB.draw(feeling)
  if (feeling == "ferme") then
    love.graphics.draw(monsterB.spriteFermee, monsterB.x, monsterB.y, monsterB.r, monsterB.sx, monsterB.sy)
  end
  if (feeling == "ouvert") then
    love.graphics.draw(monsterB.spriteOuvert, monsterB.x, monsterB.y, monsterB.r, monsterB.sx, monsterB.sy)
  end
end

function monsterB.update(dt)
  monsterB.draw()
end
