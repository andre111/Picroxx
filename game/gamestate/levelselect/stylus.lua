function input.checklevelgridpress()

    if gridformat == "8x4" and gridhalf == 1 then

        input.checklevelpress(26, 58, 53, 74, level1a, "level1a")
	    input.checklevelpress(62, 94, 53, 74, level1b, "level1b")
	    input.checklevelpress(98, 130, 53, 74, level1c, "level1c")
	    input.checklevelpress(134, 166, 53, 74, level1d, "level1d")
	    input.checklevelpress(170, 202, 53, 74, level1e, "level1e")
	    input.checklevelpress(206, 238, 53, 74, level1f, "level1f")
	    input.checklevelpress(242, 274, 53, 74, level1g, "level1g")
	    input.checklevelpress(278, 310, 53, 74, level1h, "level1h")

        input.checklevelpress(26, 58, 86, 107, level2a, "level2a")
	    input.checklevelpress(62, 94, 86, 107, level2b, "level2b")
	    input.checklevelpress(98, 130, 86, 107, level2c, "level2c")
	    input.checklevelpress(134, 166, 86, 107, level2d, "level2d")
	    input.checklevelpress(170, 202, 86, 107, level2e, "level2e")
	    input.checklevelpress(206, 238, 86, 107, level2f, "level2f")
	    input.checklevelpress(242, 274, 86, 107, level2g, "level2g")
	    input.checklevelpress(278, 310, 86, 107, level2h, "level2h")

	    input.checklevelpress(26, 58, 119, 140, level3a, "level3a")
	    input.checklevelpress(62, 94, 119, 140, level3b, "level3b")
	    input.checklevelpress(98, 130, 119, 140, level3c, "level3c")
	    input.checklevelpress(134, 166, 119, 140, level3d, "level3d")
	    input.checklevelpress(170, 202, 119, 140, level3e, "level3e")
	    input.checklevelpress(206, 238, 119, 140, level3f, "level3f")
	    input.checklevelpress(242, 274, 119, 140, level3g, "level3g")
	    input.checklevelpress(278, 310, 119, 140, level3h, "level3h")

	    input.checklevelpress(26, 58, 152, 173, level4a, "level4a")
	    input.checklevelpress(62, 94, 152, 173, level4b, "level4b")
	    input.checklevelpress(98, 130, 152, 173, level4c, "level4c")
	    input.checklevelpress(134, 166, 152, 173, level4d, "level4d")
	    input.checklevelpress(170, 202, 152, 173, level4e, "level4e")
	    input.checklevelpress(206, 238, 152, 173, level4f, "level4f")
	    input.checklevelpress(242, 274, 152, 173, level4g, "level4g")
	    input.checklevelpress(278, 310, 152, 173, level4h, "level4h")
	
    elseif gridformat == "8x4" and gridhalf == 2 then

        input.checklevelpress(26, 58, 53, 74, level5a, "level5a")
	    input.checklevelpress(62, 94, 53, 74, level5b, "level5b")
	    input.checklevelpress(98, 130, 53, 74, level5c, "level5c")
	    input.checklevelpress(134, 166, 53, 74, level5d, "level5d")
	    input.checklevelpress(170, 202, 53, 74, level5e, "level5e")
	    input.checklevelpress(206, 238, 53, 74, level5f, "level5f")
	    input.checklevelpress(242, 274, 53, 74, level5g, "level5g")
	    input.checklevelpress(278, 310, 53, 74, level5h, "level5h")

        input.checklevelpress(26, 58, 86, 107, level6a, "level6a")
	    input.checklevelpress(62, 94, 86, 107, level6b, "level6b")
	    input.checklevelpress(98, 130, 86, 107, level6c, "level6c")
	    input.checklevelpress(134, 166, 86, 107, level6d, "level6d")
	    input.checklevelpress(170, 202, 86, 107, level6e, "level6e")
	    input.checklevelpress(206, 238, 86, 107, level6f, "level6f")
	    input.checklevelpress(242, 274, 86, 107, level6g, "level6g")
	    input.checklevelpress(278, 310, 86, 107, level6h, "level6h")

	    input.checklevelpress(26, 58, 119, 140, level7a, "level7a")
	    input.checklevelpress(62, 94, 119, 140, level7b, "level7b")
	    input.checklevelpress(98, 130, 119, 140, level7c, "level7c")
	    input.checklevelpress(134, 166, 119, 140, level7d, "level7d")
	    input.checklevelpress(170, 202, 119, 140, level7e, "level7e")
	    input.checklevelpress(206, 238, 119, 140, level7f, "level7f")
	    input.checklevelpress(242, 274, 119, 140, level7g, "level7g")
	    input.checklevelpress(278, 310, 119, 140, level7h, "level7h")

	    input.checklevelpress(26, 58, 152, 173, level8a, "level8a")
	    input.checklevelpress(62, 94, 152, 173, level8b, "level8b")
	    input.checklevelpress(98, 130, 152, 173, level8c, "level8c")
	    input.checklevelpress(134, 166, 152, 173, level8d, "level8d")
	    input.checklevelpress(170, 202, 152, 173, level8e, "level8e")
	    input.checklevelpress(206, 238, 152, 173, level8f, "level8f")
	    input.checklevelpress(242, 274, 152, 173, level8g, "level8g")
	    input.checklevelpress(278, 310, 152, 173, level8h, "level8h")

	end

	local mousex, mousey = love.mouse.getPosition()

	if mousex >= 10 and mousex <= 55 and mousey >= 210 and mousey <= 231 then
       
       Gamestate.switch(mainmenu)

    end

end

function input.checklevelpress(x1, x2, y1, y2, level, levelstring)
  if level.disabled == true then
    return false
  end


  local mousex, mousey = love.mouse.getPosition()

  if mousex >= x1 and mousex <= x2 and mousey >= y1 and mousey <= y2 then
    if level.hover == true then
	   Gamestate.switch(puzzle, levelhovered.file, levelhovered.size, levelstring)
	else
	   if gridformat == "8x4" then input.clearhover8x4() end
	   
	   level.hover = true
	   
	   levelhovered.splash = level.splash
       levelhovered.name = level.name
       levelhovered.size = level.size
	   levelhovered.letter = level.letter
       levelhovered.number = level.number
	   levelhovered.file = level.file
       levelhovered.gamemode = level.gamemode
	   levelhovered.completed = level.completed
	   
	end
  end

end

function input.checkhalfselectorpress()

    local mousex, mousey = love.mouse.getPosition()

    if mousex >= 268 and mousex <= 307 and mousey >= 211 and mousey <= 227 then
       
        if gridhalf == 1 then

            gridhalf = 2 
            
            input.clearhover8x4()
	        level5a.hover = true

            levelhovered.splash = level5a.splash
            levelhovered.name = level5a.name
            levelhovered.size = level5a.size
            levelhovered.letter = level5a.letter
            levelhovered.number = level5a.number
            levelhovered.file = level5a.file
            levelhovered.gamemode = level5a.gamemode
            levelhovered.completed = level5a.completed

        else

            gridhalf = 1

            input.clearhover8x4()
	        level1a.hover = true
          
            levelhovered.splash = level1a.splash
            levelhovered.name = level1a.name
            levelhovered.size = level1a.size
            levelhovered.letter = level1a.letter
            levelhovered.number = level1a.number
            levelhovered.file = level1a.file
            levelhovered.gamemode = level1a.gamemode
            levelhovered.completed = level1a.completed

        end

    end

end

function input.clearhover8x4()

	level1a.hover = false
	level1b.hover = false
	level1c.hover = false
	level1d.hover = false
	level1e.hover = false
	level1f.hover = false
	level1g.hover = false
	level1h.hover = false 
	
    level2a.hover = false
	level2b.hover = false
	level2c.hover = false
	level2d.hover = false
	level2e.hover = false
	level2f.hover = false
	level2g.hover = false
	level2h.hover = false 

	level3a.hover = false
    level3b.hover = false
	level3c.hover = false
	level3d.hover = false
	level3e.hover = false
	level3f.hover = false
	level3g.hover = false
	level3h.hover = false 
	
	level4a.hover = false
	level4b.hover = false
	level4c.hover = false
	level4d.hover = false
	level4e.hover = false
	level4f.hover = false
	level4g.hover = false
	level4h.hover = false 
	
	level5a.hover = false
	level5b.hover = false
	level5c.hover = false
	level5d.hover = false
	level5e.hover = false
	level5f.hover = false
	level5g.hover = false
	level5h.hover = false 
	
    level6a.hover = false
	level6b.hover = false
	level6c.hover = false
	level6d.hover = false
	level6e.hover = false
	level6f.hover = false
	level6g.hover = false
	level6h.hover = false 

	level7a.hover = false
	level7b.hover = false
	level7c.hover = false
	level7d.hover = false
	level7e.hover = false
	level7f.hover = false
	level7g.hover = false
	level7h.hover = false 
	
	level8a.hover = false
	level8b.hover = false
	level8c.hover = false
	level8d.hover = false
	level8e.hover = false
	level8f.hover = false
	level8g.hover = false
	level8h.hover = false 

end