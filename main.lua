g = love.graphics

function love.load()
  current = 1

  cells = {} -- generates 1 row of cells (for now...)

  for i = 1, 6 do -- added extra key to avoid program crashing when it thinks it's run out
    cells[i] = {}

      cells[i].state = false
      cells[i].isPressed = "false"

      cells[i].x = (70 * i) + 25
      cells[i].y = 100
      cells[i].w = 50
      cells[i].h = cells[i].w


      cells[i].r = 255 / 255
      cells[i].g = 255 / 255
      cells[i].b = 255 / 255
      cells[i].a = 0.7

      cells[i].cellColorState = "line"
  end

  keys = {"a", "b", "c", "d"}

end

function love.update(dt)
  if cells[current].state == true then -- updates the "if pressed" state of the current cell once "space" is pressed

    cells[current].isPressed = "true"
    cells[current].a = 1

    current = current + 1
  end


end

function love.draw()

  g.setBackgroundColor(0, 0, 0, 1)

  for i = 1, 5 do
    g.setColor(cells[i].r, cells[i].g, cells[i].b, cells[i].a)
    g.rectangle(cells[i].cellColorState, cells[i].x, cells[i].y, cells[i].w, cells[i].h)
    g.print(cells[i].isPressed, cells[i].x + 10, cells[i].y + 15)
  end
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  end

  if key == "space" then
    cells[current].state = true
    print(cells[current].state)
    --print(current)
  end
end
