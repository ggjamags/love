require "src/scene1"
textBox = {}

function textBox.load()
  textBox.x = 0
  textBox.y = 400
  textBox.width = 1000
  textBox.height = 200
  textBox.txt = {
    [0] = line1,
    [1] = line2
  }
  textBox.line_nbr = 0
end

function textBox.next()
  love.graphics.setColor(255, 0, 0, 255)
  textBox.line_nbr = textBox.line_nbr + 1
  love.graphics.print(textBox.txt[textBox.line_nbr], textBox.x + 5, textBox.y + 5)
  love.graphics.setColor(255, 255, 255, 255)
end

function textBox.draw()
  love.graphics.setColor(255, 255, 255, 50)
  love.graphics.rectangle("fill", textBox.x, textBox.y, textBox.width, textBox.height)
  love.graphics.setColor(255, 255, 255, 255)
end

function textBox.print()
  love.graphics.setColor(255, 0, 0, 255)
  love.graphics.print(textBox.txt[textBox.line_nbr], textBox.x + 5, textBox.y + 5)
  love.graphics.setColor(255, 255, 255, 255)
end
