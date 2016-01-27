function drawtop.ingame()

    love.graphics.setColor(255, 255, 255)
	love.graphics.draw(background, 0, 0)
	
	drawtop.timer(381, 370, 354, 343, 327, 316, 215)
	
	if leveldata.gamemode == "easy" then
	  love.graphics.draw(icon.normal, 5, 218)
	  love.graphics.draw(gmlabel.easy, 24, 216)
	end
	
	if leveldata.gamemode == "normal" then
	  love.graphics.draw(icon.normal, 5, 218)
	  love.graphics.draw(gmlabel.normal, 24, 216)
	end
	
	if leveldata.gamemode == "free" then
	  love.graphics.draw(icon.free, 5, 218)
	  love.graphics.draw(gmlabel.free, 24, 216)
	end
	
	love.graphics.setDepth(-2)
	
	love.graphics.draw(whiteoverlay, 0, 0)
	
	--TODO: Reimplement
	--[[if leveldata.gridsize == 5 then drawtop.blackgrid5() end
	if leveldata.gridsize == 10 then drawtop.blackgrid10() end
	if leveldata.gridsize == 15 then drawtop.blackgrid15() end]]
	drawPuzzleContentTop(currentNewPuzzle)
	
	love.graphics.setColor(255, 255, 255)
	
	love.graphics.setDepth(0)
	
	love.graphics.setColor(148, 148, 173)
	love.graphics.setFont(squarefont)
	love.graphics.print(leveldata.number, 89, 214)
	love.graphics.print(leveldata.letter, 112, 214)
	love.graphics.setColor(255, 255, 255)
	
end

function drawtop.ingamezoomed()

    love.graphics.setColor(255, 255, 255)
	
	--TODO: Reimplement
	--[[if leveldata.gridsize == 15 then drawtop.smallgrid15(true) end]]
	
	drawtop.timer(381, 370, 354, 343, 327, 316, 3)
	
	if leveldata.gamemode == "easy" then
	  love.graphics.draw(icon.normal, 5, 6)
	  love.graphics.draw(gmlabel.easy, 24, 4)
	end
	
	if leveldata.gamemode == "normal" then
	  love.graphics.draw(icon.normal, 5, 6)
	  love.graphics.draw(gmlabel.normal, 24, 4)
	end
	
	if leveldata.gamemode == "free" then
	  love.graphics.draw(icon.free, 5, 6)
	  love.graphics.draw(gmlabel.free, 24, 4)
	end
	
	love.graphics.setColor(148, 148, 173)
	love.graphics.setFont(squarefont)
	love.graphics.print(leveldata.number, 89, 2)
	love.graphics.print(leveldata.letter, 112, 2)
	love.graphics.setColor(255, 255, 255)
	
end

function drawtop.timer(x1, x2, x3, x4, x5, x6, y)

  local s1digit = toptimer.seconds1 + 1
  local s2digit = toptimer.seconds2 + 1
  
  local m1digit = toptimer.minutes1 + 1
  local m2digit = toptimer.minutes2 + 1
  
  local h1digit = toptimer.hours1 + 1
  local h2digit = toptimer.hours2 + 1

  love.graphics.draw(timerdigits[s1digit], x1, y)
  love.graphics.draw(timerdigits[s2digit], x2, y)

  love.graphics.draw(timerdigits[m1digit], x3, y)
  love.graphics.draw(timerdigits[m2digit], x4, y)

  love.graphics.draw(timerdigits[h1digit], x5, y)
  love.graphics.draw(timerdigits[h2digit], x6, y)
 
end

function drawbot.pauseoverlay()
    
    if pausebuttonhover1 == false then

        love.graphics.draw(menu.emptybutton, pausebuttonsanims[1], 80)

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 82)
        love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 83)
        love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 80)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 80)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 81)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 82)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 82)


	    love.graphics.setColor(255, 255, 255)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 81)

	else

        menu.emptybutton_a:play()
	    menu.emptybutton_a:draw(pausebuttonsanims[1], 80)

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 82)
        love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 83)
        love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 80)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 80)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 81)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 82)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 82)


	    love.graphics.setColor(255, 206, 0)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.setColor(255, 255, 255)

    end

    if pausebuttonhover2 == false then

	    love.graphics.draw(menu.emptybutton, pausebuttonsanims[1], 112)

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 114)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 115)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 112)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 112)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 113)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 114)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 114)


	    love.graphics.setColor(255, 255, 255)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 113)

	else

        menu.emptybutton_a:play()
	    menu.emptybutton_a:draw(pausebuttonsanims[1], 112)        

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 114)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 115)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 112)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 112)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 113)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 114)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 114)


	    love.graphics.setColor(255, 206, 0)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.setColor(255, 255, 255)

	end

	love.graphics.draw(pauseexit, 233, pauseanims[2])

end