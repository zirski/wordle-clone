function love.load()
  word = "audio"
  cellW = 68.75
  windowBuffer = cellW / 2
  cellH = rectW
  cellX = 275 - cellW / 2
  cellColor = {}
    cellColor.r = 105 / 255
    cellColor.g = 105 / 255
    cellColor.b = 105 / 255

  isPushed = false
end

function love.draw()
  love.graphics.setBackgroundColor(0, 0, 0, 1)
  love.graphics.rectangle("fill", cellX, 100, 68.75, 68.75)
  love.graphics.setColor(cellColor.r, cellColor.g, cellColor.b, 1)
end

function love.update(dt)
  if isPushed == true then
    
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  end

  if key == "a" then
    cellState = true
end
