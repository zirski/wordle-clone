g = love.graphics

function love.load()
  current = 1

  cells = {} -- generates 1 row of cells (for now...)

  for i = 1, 6 do -- added extra key to avoid program crashing when it thinks it's run out
    cells[i] = {}

      cells[i].state = false
      cells[i].letter = "test" -- starts each cell with blank spot

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
end

function love.update(dt)
  -- if cells[current].state == true and current <= 5 then
  --
  --   -- function love.textinput(text)
  --   --   print(text)
  --   --   cells[current].letter = text
  --   -- end
  --
  -- end
end


function love.draw()

  g.setBackgroundColor(0, 0, 0, 1)
  -- g.printf(text, cells[current].x + 10, cells[current].y + 15, love.graphics.getWidth())

  for i = 1, 5 do
    g.setColor(cells[i].r, cells[i].g, cells[i].b, cells[i].a)
    g.rectangle(cells[i].cellColorState, cells[i].x, cells[i].y, cells[i].w, cells[i].h)
    g.print(cells[i].letter, cells[i].x + 10, cells[i].y + 15, 0, 1, 1)
  end
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  else
    cells[current].state = true
    cells[current].letter = key
    cells[current].a = 1
    current = current + 1
  end
end
