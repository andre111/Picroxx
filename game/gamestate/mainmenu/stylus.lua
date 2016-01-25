function input.checkbuttonpress(buttonpressed) --Checks if a button in the main menu has been pressed
   
   local mousex, mousey = love.mouse.getPosition()
   
  if mainmenu.buttonsExit == false and mainmenu.buttonsEnter == false then
    if buttonpressed.exists == true then
      if mousex >= buttonpressed.x and mousex <= buttonpressed.x2 and mousey >= buttonpressed.y and mousey <= buttonpressed.y2 then
	    if buttonpressed.hover == true then
			
		  if buttonpressed.effect == "exithbl" then
		  
		    love.event.quit()

		  end
			
		  if buttonpressed.effect == "switchsubmenu" then

		    button1.label = nil
		    button2.label = nil
		    button3.label = nil
		    button4.label = nil
		    button5.label = nil
		    button6.label = nil

			collectgarbage()
			
			menu.emptybutton_e:reset()
			menu.emptybutton_s:reset()

			animation.buttonsexit()
			
			Timer.after(0.35, function() 

                button1.hover = false
		        button2.hover = false
		        button3.hover = false
		        button4.hover = false
		        button5.hover = false
		        button6.hover = false

			    dofile(buttonpressed.submenu) 
			    animation.buttonsenter()

			end)

		  end
			
		  if buttonpressed.effect == "levelselect" then
		    
			mainmenu.buttonsExit = true
			
			menu.emptybutton_e:reset()
			menu.emptybutton_s:reset()
			
			Timer.after(0.35, function() Gamestate.switch(levelselect, buttonpressed.submenu) mainmenu.buttonsExit = false mainmenu.buttonsEnter = true end)
			
		  end
		  
		else
		  
		  button1.hover = false
		  button2.hover = false
		  button3.hover = false
		  button4.hover = false
		  button5.hover = false
		  button6.hover = false
		  
		  buttonpressed.hover = true
 
		end
      end
    end
  end	

end

function input.checkbackbuttonpress()

    local mousex, mousey = love.mouse.getPosition()

    if mousex >= 10 and mousex <= 55 and mousey >= 210 and mousey <= 231 then

		button1.label = nil
		button2.label = nil
	    button3.label = nil
		button4.label = nil
		button5.label = nil
		button6.label = nil

		collectgarbage()
			
		menu.emptybutton_e:reset()
		menu.emptybutton_s:reset()

		animation.buttonsexit()
			
		Timer.after(0.35, function() 

            button1.hover = false
		    button2.hover = false
		    button3.hover = false
		    button4.hover = false
		    button5.hover = false
		    button6.hover = false

			dofile(previoussubmenu) 
			animation.buttonsenter()

		end)

	end

end