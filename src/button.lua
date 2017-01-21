button = {}

function button.load(pos_x, pos_y, size_x, size_y, content)
  button.x = pos_x
  button.y = pos_y
  button.width = size_x
  button.height = size_y
  button.txt = content
--  button.sprite = love.graphics.newImage("res/Monstre_mechant_bouche_fermee.png")
end
