function drawtop.levelselect()

   love.graphics.draw(levelgrid.bg, 0, 0)
   
   love.graphics.setColor(148, 148, 173)
   love.graphics.setFont(squarefont)
   love.graphics.print(levelhovered.number, 347, 52)
   love.graphics.print(levelhovered.letter, 369, 52)
   love.graphics.setColor(255, 255, 255)
   
   love.graphics.setFont(regularfont)
   
   if levelhovered.completed == true then 

     love.graphics.setFont(regularfont)

     love.graphics.setColor(33, 33, 33)
     love.graphics.print(levelhovered.name, 201 - regularfont:getWidth(levelhovered.name) / 2, 201)
     love.graphics.print(levelhovered.name, 201 - regularfont:getWidth(levelhovered.name) / 2, 202)
     love.graphics.print(levelhovered.name, 201 - regularfont:getWidth(levelhovered.name) / 2, 203)

     love.graphics.print(levelhovered.name, 200 - regularfont:getWidth(levelhovered.name) / 2, 203)
     love.graphics.print(levelhovered.name, 199 - regularfont:getWidth(levelhovered.name) / 2, 203)

     love.graphics.setColor(0, 0, 0)
     love.graphics.print(levelhovered.name, 200 - regularfont:getWidth(levelhovered.name) / 2, 200)
     love.graphics.print(levelhovered.name, 198 - regularfont:getWidth(levelhovered.name) / 2, 200)

     love.graphics.print(levelhovered.name, 200 - regularfont:getWidth(levelhovered.name) / 2, 201)
     love.graphics.print(levelhovered.name, 198 - regularfont:getWidth(levelhovered.name) / 2, 201)

     love.graphics.print(levelhovered.name, 200 - regularfont:getWidth(levelhovered.name) / 2, 202)
     love.graphics.print(levelhovered.name, 198 - regularfont:getWidth(levelhovered.name) / 2, 202)


     love.graphics.setColor(255, 255, 255)
     love.graphics.print(levelhovered.name, 199 - regularfont:getWidth(levelhovered.name) / 2, 201)

   else
     love.graphics.setColor(33, 33, 33)
     love.graphics.print("?", 201 - regularfont:getWidth("?") / 2, 201)
     love.graphics.print("?", 201 - regularfont:getWidth("?") / 2, 202)
     love.graphics.print("?", 201 - regularfont:getWidth("?") / 2, 203)

     love.graphics.print("?", 200 - regularfont:getWidth("?") / 2, 203)
     love.graphics.print("?", 199 - regularfont:getWidth("?") / 2, 203)

     love.graphics.setColor(0, 0, 0)
     love.graphics.print("?", 200 - regularfont:getWidth("?") / 2, 200)
     love.graphics.print("?", 198 - regularfont:getWidth("?") / 2, 200)

     love.graphics.print("?", 200 - regularfont:getWidth("?") / 2, 201)
     love.graphics.print("?", 198 - regularfont:getWidth("?") / 2, 201)

     love.graphics.print("?", 200 - regularfont:getWidth("?") / 2, 202)
     love.graphics.print("?", 198 - regularfont:getWidth("?") / 2, 202)


     love.graphics.setColor(255, 255, 255)
     love.graphics.print("?", 199 - regularfont:getWidth("?") / 2, 201)
   end     
   
   if levelhovered.size == "5x5" then love.graphics.draw(i5x5label, 313, 98) end
   if levelhovered.size == "10x10" then love.graphics.draw(i10x10label, 313, 98) end
   if levelhovered.size == "15x15" then love.graphics.draw(i15x15label, 313, 98) end
   
   if levelhovered.gamemode == "easy" then love.graphics.draw(icon.normal, 292, 98) end
   if levelhovered.gamemode == "normal" then love.graphics.draw(icon.normal, 292, 98) end
   if levelhovered.gamemode == "free" then love.graphics.draw(icon.free, 292, 98) end
   
   if levelhovered.completed == true and levelhovered.size == "5x5" then love.graphics.draw(levelhovered.splash, 133, 102, 0, 3, 3) end 
   if levelhovered.completed == true and levelhovered.size == "10x10" then love.graphics.draw(levelhovered.splash, 118, 87, 0, 6, 6) end
   if levelhovered.completed == true and levelhovered.size == "15x15" then love.graphics.draw(levelhovered.splash, 103, 72, 0, 6, 6) end
   
   if levelhovered.completed == false then love.graphics.draw(uncompleted, 118, 87) end
   
end

function drawbot.levelselect()

 if gridformat == "8x4" and gridhalf == 1 then
   
   love.graphics.draw(menu.botbg, 0, 0)

   love.graphics.draw(levelgrid.levels1, 6, 57)
   love.graphics.draw(levelgrid.halfselector1, 268, 211)
   
   drawbot.levelbutton(level1a, levelgrid.smallA, levelgrid.smallA_a, 26, 53)
   drawbot.levelbutton(level1b, levelgrid.smallB, levelgrid.smallB_a, 62, 53)
   drawbot.levelbutton(level1c, levelgrid.smallC, levelgrid.smallC_a, 98, 53)
   drawbot.levelbutton(level1d, levelgrid.smallD, levelgrid.smallD_a, 134, 53)
   drawbot.levelbutton(level1e, levelgrid.smallE, levelgrid.smallE_a, 170, 53)
   drawbot.levelbutton(level1f, levelgrid.smallF, levelgrid.smallF_a, 206, 53)
   drawbot.levelbutton(level1g, levelgrid.smallG, levelgrid.smallG_a, 242, 53)
   drawbot.levelbutton(level1h, levelgrid.smallH, levelgrid.smallH_a, 278, 53)

   drawbot.levelbutton(level2a, levelgrid.smallA, levelgrid.smallA_a, 26, 86)
   drawbot.levelbutton(level2b, levelgrid.smallB, levelgrid.smallB_a, 62, 86)
   drawbot.levelbutton(level2c, levelgrid.smallC, levelgrid.smallC_a, 98, 86)
   drawbot.levelbutton(level2d, levelgrid.smallD, levelgrid.smallD_a, 134, 86)
   drawbot.levelbutton(level2e, levelgrid.smallE, levelgrid.smallE_a, 170, 86)
   drawbot.levelbutton(level2f, levelgrid.smallF, levelgrid.smallF_a, 206, 86)
   drawbot.levelbutton(level2g, levelgrid.smallG, levelgrid.smallG_a, 242, 86)
   drawbot.levelbutton(level2h, levelgrid.smallH, levelgrid.smallH_a, 278, 86)
   
   drawbot.levelbutton(level3a, levelgrid.smallA, levelgrid.smallA_a, 26, 119)
   drawbot.levelbutton(level3b, levelgrid.smallB, levelgrid.smallB_a, 62, 119)
   drawbot.levelbutton(level3c, levelgrid.smallC, levelgrid.smallC_a, 98, 119)
   drawbot.levelbutton(level3d, levelgrid.smallD, levelgrid.smallD_a, 134, 119)
   drawbot.levelbutton(level3e, levelgrid.smallE, levelgrid.smallE_a, 170, 119)
   drawbot.levelbutton(level3f, levelgrid.smallF, levelgrid.smallF_a, 206, 119)
   drawbot.levelbutton(level3g, levelgrid.smallG, levelgrid.smallG_a, 242, 119)
   drawbot.levelbutton(level3h, levelgrid.smallH, levelgrid.smallH_a, 278, 119)

   drawbot.levelbutton(level4a, levelgrid.smallA, levelgrid.smallA_a, 26, 152)
   drawbot.levelbutton(level4b, levelgrid.smallB, levelgrid.smallB_a, 62, 152)
   drawbot.levelbutton(level4c, levelgrid.smallC, levelgrid.smallC_a, 98, 152)
   drawbot.levelbutton(level4d, levelgrid.smallD, levelgrid.smallD_a, 134, 152)
   drawbot.levelbutton(level4e, levelgrid.smallE, levelgrid.smallE_a, 170, 152)
   drawbot.levelbutton(level4f, levelgrid.smallF, levelgrid.smallF_a, 206, 152)
   drawbot.levelbutton(level4g, levelgrid.smallG, levelgrid.smallG_a, 242, 152)
   drawbot.levelbutton(level4h, levelgrid.smallH, levelgrid.smallH_a, 278, 152)
   
 elseif gridformat == "8x4" and gridhalf == 2 then

   love.graphics.draw(menu.botbg, 0, 0)
   
   love.graphics.draw(levelgrid.levels2, 6, 57)
   love.graphics.draw(levelgrid.halfselector2, 268, 211)

   drawbot.levelbutton(level5a, levelgrid.smallA, levelgrid.smallA_a, 26, 53)
   drawbot.levelbutton(level5b, levelgrid.smallB, levelgrid.smallB_a, 62, 53)
   drawbot.levelbutton(level5c, levelgrid.smallC, levelgrid.smallC_a, 98, 53)
   drawbot.levelbutton(level5d, levelgrid.smallD, levelgrid.smallD_a, 134, 53)
   drawbot.levelbutton(level5e, levelgrid.smallE, levelgrid.smallE_a, 170, 53)
   drawbot.levelbutton(level5f, levelgrid.smallF, levelgrid.smallF_a, 206, 53)
   drawbot.levelbutton(level5g, levelgrid.smallG, levelgrid.smallG_a, 242, 53)
   drawbot.levelbutton(level5h, levelgrid.smallH, levelgrid.smallH_a, 278, 53)

   drawbot.levelbutton(level6a, levelgrid.smallA, levelgrid.smallA_a, 26, 86)
   drawbot.levelbutton(level6b, levelgrid.smallB, levelgrid.smallB_a, 62, 86)
   drawbot.levelbutton(level6c, levelgrid.smallC, levelgrid.smallC_a, 98, 86)
   drawbot.levelbutton(level6d, levelgrid.smallD, levelgrid.smallD_a, 134, 86)
   drawbot.levelbutton(level6e, levelgrid.smallE, levelgrid.smallE_a, 170, 86)
   drawbot.levelbutton(level6f, levelgrid.smallF, levelgrid.smallF_a, 206, 86)
   drawbot.levelbutton(level6g, levelgrid.smallG, levelgrid.smallG_a, 242, 86)
   drawbot.levelbutton(level6h, levelgrid.smallH, levelgrid.smallH_a, 278, 86)
   
   drawbot.levelbutton(level7a, levelgrid.smallA, levelgrid.smallA_a, 26, 119)
   drawbot.levelbutton(level7b, levelgrid.smallB, levelgrid.smallB_a, 62, 119)
   drawbot.levelbutton(level7c, levelgrid.smallC, levelgrid.smallC_a, 98, 119)
   drawbot.levelbutton(level7d, levelgrid.smallD, levelgrid.smallD_a, 134, 119)
   drawbot.levelbutton(level7e, levelgrid.smallE, levelgrid.smallE_a, 170, 119)
   drawbot.levelbutton(level7f, levelgrid.smallF, levelgrid.smallF_a, 206, 119)
   drawbot.levelbutton(level7g, levelgrid.smallG, levelgrid.smallG_a, 242, 119)
   drawbot.levelbutton(level7h, levelgrid.smallH, levelgrid.smallH_a, 278, 119)

   drawbot.levelbutton(level8a, levelgrid.smallA, levelgrid.smallA_a, 26, 152)
   drawbot.levelbutton(level8b, levelgrid.smallB, levelgrid.smallB_a, 62, 152)
   drawbot.levelbutton(level8c, levelgrid.smallC, levelgrid.smallC_a, 98, 152)
   drawbot.levelbutton(level8d, levelgrid.smallD, levelgrid.smallD_a, 134, 152)
   drawbot.levelbutton(level8e, levelgrid.smallE, levelgrid.smallE_a, 170, 152)
   drawbot.levelbutton(level8f, levelgrid.smallF, levelgrid.smallF_a, 206, 152)
   drawbot.levelbutton(level8g, levelgrid.smallG, levelgrid.smallG_a, 242, 152)
   drawbot.levelbutton(level8h, levelgrid.smallH, levelgrid.smallH_a, 278, 152)

 end

 love.graphics.draw(menu.backbutton, 9, 210)
 
end

function drawbot.levelbutton(level, button, hover, lx, ly)
  if level.disabled == true then 
    return false
  end

  if level.hover == false then
    love.graphics.draw(button, lx, ly)
	if level.completed == false then love.graphics.draw(levelgrid.smallwhiteqm, lx, ly) end
  else
    hover:play()
    hover:draw(lx, ly)
	if level.completed == false then love.graphics.draw(levelgrid.smallyellowqm, lx, ly) end
  end
  
  if level.completed == true then
    if level.size == "5x5" or level.size == "10x10" then
       love.graphics.draw(level.splash, lx + 16, ly + 5)
    elseif level.size == "15x15" then
       love.graphics.draw(level.splash, lx + 14, ly + 3)
    end
  end

end