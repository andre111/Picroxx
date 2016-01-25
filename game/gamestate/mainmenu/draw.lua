--Functions used to draw the top screen

function drawtop.menu() --Used to draw everything on the top screen while in the main menu
   
    if menusubmenu == "mainmenu" then
        love.graphics.draw(menu.titlescreen, 0, 0)
    else
        love.graphics.draw(menu.topbg, 0, 0)
    end

    if menusubmenu == "gameselect" then
        
        if button1.hover == true then
            
            love.graphics.draw(overlay.mariopicross, 0, 0)

        end

    end

    if menusubmenu == "mariopicross" then
        
        love.graphics.draw(overlay.mariopicross, 0, 0)

    end

end

--Functions used to draw the bottom screen

function drawbot.menu() --Used to draw everything on the bottom screen while in the main menu
   
   love.graphics.draw(menu.botbg, 0, 0)
   
   if mainmenu.buttonsExit == true then
     menu.emptybutton_e:play()
   end
   
   if mainmenu.buttonsEnter == true then
     menu.emptybutton_s:play()
   end
   
   drawbot.menubutton(button1)
   drawbot.menubutton(button2)
   drawbot.menubutton(button3)
   drawbot.menubutton(button4)
   drawbot.menubutton(button5)
   drawbot.menubutton(button6)

   if menusubmenu ~= "mainmenu" then love.graphics.draw(menu.backbutton, 9, 210) end

end

function drawbot.menubutton(buttontodraw)

   if buttontodraw.exists == true then
    if mainmenu.buttonsExit == true then
	   menu.emptybutton_e:draw(buttontodraw.x, buttontodraw.y)
	   
	elseif mainmenu.buttonsEnter == true then
	   menu.emptybutton_s:draw(buttontodraw.x, buttontodraw.y)
	   
	elseif mainmenu.buttonsExit == false and mainmenu.buttonsEnter == false then
     if buttontodraw.hover == true then
	   menu.emptybutton_a:play()
	   menu.emptybutton_a:draw(buttontodraw.x, buttontodraw.y)
	   
	   love.graphics.setFont(regularfont)
	   love.graphics.setColor(33, 33, 33)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 58 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 58 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 2)
       love.graphics.print(buttontodraw.text, buttontodraw.x + 58 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 3)

       love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 3)
       love.graphics.print(buttontodraw.text, buttontodraw.x + 56 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 3)

       love.graphics.setColor(0, 0, 0)
       love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 55 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y)

	   love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 55 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)

	   love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 2)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 55 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 2)


	   love.graphics.setColor(255, 206, 0)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 56 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)
	   love.graphics.setColor(255, 255, 255)

	   if buttontodraw.label ~= nil then love.graphics.draw(buttontodraw.label, buttontodraw.x, buttontodraw.y) end

	 else
	   love.graphics.draw(menu.emptybutton, buttontodraw.x, buttontodraw.y)
	   
	   love.graphics.setFont(regularfont)

	   love.graphics.setColor(33, 33, 33)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 58 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 58 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 2)
       love.graphics.print(buttontodraw.text, buttontodraw.x + 58 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 3)

       love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 3)
       love.graphics.print(buttontodraw.text, buttontodraw.x + 56 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 3)

       love.graphics.setColor(0, 0, 0)
       love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 55 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y)

	   love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 55 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)

	   love.graphics.print(buttontodraw.text, buttontodraw.x + 57 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 2)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 55 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 2)


	   love.graphics.setColor(255, 255, 255)
	   love.graphics.print(buttontodraw.text, buttontodraw.x + 56 - regularfont:getWidth(buttontodraw.text) / 2, buttontodraw.y + 1)

       if buttontodraw.label ~= nil then love.graphics.draw(buttontodraw.label, buttontodraw.x, buttontodraw.y) end

	 end
	end
   end

end