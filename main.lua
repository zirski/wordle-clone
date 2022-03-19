function love.load()
  currentCell = 1

  cells = {}

  for i = 1, 5 do
    cells[i] = {}

      cells[i].state = false
      cells[i].isPressed = "false"

      cells[i].x = (70 * i) + 25
      cells[i].y = 100
      cells[i].w = 50
      cells[i].h = cells[i].w
  end

  for i, v in ipairs(cells) do
    print(cells[i].x)
  end

end

function love.update(dt)
  if cells[currentCell].state then
    cells[currentCell].isPressed = "true"
    currentCell = currentCell + 1
  end
end

function love.draw()

  love.graphics.setBackgroundColor(0, 0, 0, 1)

  for i = 1, 5 do
    love.graphics.rectangle("line", cells[i].x, cells[i].y, cells[i].w, cells[i].h)
    love.graphics.print(cells[i].isPressed, cells[i].x + 10, cells[i].y + 15)
  end
end



function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  end

  if key == "space" then
    cells[currentCell].state = true
    print(cells[currentCell].state)
    --print(currentCell)
  end
end
