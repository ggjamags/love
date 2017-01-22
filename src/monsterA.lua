monsterA = {}

function monsterA.load()
  monsterA.x = 5
  monsterA.y = 300
  monsterA.r = 0
  monsterA.sx = 1.3
  monsterA.sy = 1.3
  monsterA.width = 50
  monsterA.height = 50
  monsterA.spriteNeutre = love.graphics.newImage("res/img/Monstre_mechant.png")
  monsterA.spriteFermee = love.graphics.newImage("res/img/Monstre_mechant_bouche_fermee.png")
  monsterA.spriteOuvert = love.graphics.newImage("res/img/Monstre_mechant_bouche_grande_ouverte.png")
end

function monsterA.draw(feeling)
  if (feeling == "neutre") then
    love.graphics.draw(monsterA.spriteNeutre, monsterA.x, monsterA.y, monsterA.r, monsterA.sx, monsterA.sy)
  end
  if (feeling == "ferme") then
    love.graphics.draw(monsterA.spriteFermee, monsterA.x, monsterA.y, monsterA.r, monsterA.sx, monsterA.sy)
  end
  if (feeling == "ouvert") then
    love.graphics.draw(monsterA.spriteOuvert, monsterA.x, monsterA.y, monsterA.r, monsterA.sx, monsterA.sy)
  end
end

function monsterA.update(dt)
  monsterA.draw()
end
