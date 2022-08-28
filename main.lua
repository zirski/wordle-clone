g = love.graphics

function love.load()
  current = 1

  Cells = {} -- generates 1 row of Cells (for now...)

  for i = 1, 6 do -- added extra key to avoid program crashing when it thinks it's run out of cells
    Cells[i] = {}

      Cells[i].state = false
      Cells[i].letter = "test" -- starts each cell with blank spot

      Cells[i].x = (70 * i) + 25
      Cells[i].y = 100
      Cells[i].w = 50
      Cells[i].h = Cells[i].w
      Cells[i].r = 255 / 255
      Cells[i].g = 255 / 255
      Cells[i].b = 255 / 255
      Cells[i].a = 0.7

      Cells[i].cellColorState = "line"
  end
end

function love.update(dt)
  -- if Cells[current].state == true and current <= 5 then
  --
  --   -- function love.textinput(text)
  --   --   print(text)
  --   --   Cells[current].letter = text
  --   -- end
  --
  -- end
end


function love.draw()

  g.setBackgroundColor(0, 0, 0, 1)
  -- g.printf(text, Cells[current].x + 10, Cells[current].y + 15, love.graphics.getWidth())

  for i = 1, 5 do
    g.setColor(Cells[i].r, Cells[i].g, Cells[i].b, Cells[i].a)
    g.rectangle(Cells[i].cellColorState, Cells[i].x, Cells[i].y, Cells[i].w, Cells[i].h)
    g.print(Cells[i].letter, Cells[i].x + 10, Cells[i].y + 15, 0, 1, 1)
  end
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  else
    Cells[current].state = true
    Cells[current].letter = key
    Cells[current].a = 1
    current = current + 1

    print(Cells[current].state)
  end
end
