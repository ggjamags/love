require "src/scene1"
textBox = {}

function textBox.load()
  textBox.x = 0
  textBox.y = 400
  textBox.width = 1000
  textBox.height = 200
  textBox.txt = {
    [0] = {
      [0] = "player",
      [1] = line1
    },
    [1] = {
      [0] = "monsterB",
      [1] = line2
    }
  }
  textBox.line_nbr = 0
  textBox.max_line = 1
end

function textBox.next()
  if (textBox.line_nbr < textBox.max_line) then
    love.graphics.setColor(255, 0, 0, 255)
    textBox.line_nbr = textBox.line_nbr + 1
    love.graphics.print(textBox.txt[textBox.line_nbr][1], textBox.x + 5, textBox.y + 5)
    love.graphics.setColor(255, 255, 255, 255)
  end
end

function textBox.draw()
  love.graphics.setColor(255, 255, 255, 50)
  love.graphics.rectangle("fill", textBox.x, textBox.y, textBox.width, textBox.height)
  love.graphics.setColor(255, 255, 255, 255)
end

function textBox.print()
  love.graphics.setColor(255, 0, 0, 255)
  love.graphics.setFont(font)
  love.graphics.print(textBox.txt[textBox.line_nbr][1], textBox.x + 400, textBox.y + 5)
  love.graphics.setColor(255, 255, 255, 255)
end

function textBox.get_line_speaker()
  return textBox.txt[textBox.line_nbr][0]
end
