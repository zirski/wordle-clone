function love.load()
  word = "audio"
  cellW = 68.75
  windowBuffer = cellW / 2
  cellH = rectW
  cellX = windowBuffer - cellW / 2
  cells = 5
  cellColor = {}
    cellColor.r = 105 / 255
    cellColor.g = 105 / 255
    cellColor.b = 105 / 255

  isPushed = false
end

-- function love.draw()
--   love.graphics.setBackgroundColor(0, 0, 0, 1)
--   for i = 1, cells, 1 do
--     love.graphics.rectangle("fill", cellX, 100, 68.75, 68.75)
--     love.graphics.setColor(cellColor.r, cellColor.g, cellColor.b, 1)
--     cellX = cellX + (cellW + windowBuffer)
--   end
-- end



function generateCells() -- draws cells (pulled straight from Splodey-master)
  num_cells = 20

  cells = {}



  for i = 1, num_cells, 1 do
    local cell = {}
    cell.x = 20
    cell.y = 50

    cell.x = cell.x + 10
    table.insert(cell, cells)
  end

  print(#cells)
end



function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  end

  if key == "a" then
    cellState = true
    generateCells()
  end
end
