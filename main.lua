---@diagnostic disable-next-line: lowercase-global
g = love.graphics

function love.load()
  Word = "hello"

  Font = love.graphics.newFont("coolvetica_rg.ttf", 40)
  current = 1

  Cells = {} -- generates 1 row of Cells (for now...)
  Letters = {}  -- array for entered letters
  SplitWord = {} -- array for correct letters

  for i = 1, #Word do -- splits Word variable (string) into an array of individual characters
    SplitWord[i] = string.sub(Word, i, i)
  end


  for i = 1, 6 do -- added extra key to avoid program crashing when it thinks it's run out of cells
    Cells[i] = {}

    Cells[i].state = false
    Cells[i].letter = " " -- starts each cell with blank spot

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

  

end


function love.draw()
  
  g.setBackgroundColor(0, 0, 0, 1)
  -- g.printf(text, Cells[current].x + 10, Cells[current].y + 15, love.graphics.getWidth())
  
  for i = 1, 5 do
    g.setColor(Cells[i].r, Cells[i].g, Cells[i].b, Cells[i].a)
    g.rectangle(Cells[i].cellColorState, Cells[i].x, Cells[i].y, Cells[i].w, Cells[i].h)
    g.print(Cells[i].letter, Font, Cells[i].x + 12.5, Cells[i].y + 2.5, 0)
  end
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  elseif current <= 5 then
    
    Cells[current].letter = key
    -- stores all letter entries into an array
    table.insert(Letters, Cells[current].letter)
    
    Cells[current].a = 1
    current = current + 1

    for i = 1, 5 do
      print(SplitWord[i])
    end
  end
end

-- function Split(text)
--   local t = {}

--   for i = 1, #text do
--     t[i] = string.sub(text, i, i)
--   end
--   return t
-- end