dofile("hotfix.lua")

Gamestate = require("libraries.hump_gamestate") 
Timer = require ("libraries.hump_timer")

require("libraries.AnAL")

drawtop = {}
drawbot = {}

require("gamestate.puzzle.draw")
require("gamestate.puzzle.draw5x5")
require("gamestate.puzzle.draw10x10")
require("gamestate.puzzle.draw15x15")
require("gamestate.puzzle.drawsmall15x15")

require("gamestate.mainmenu.draw")
require("gamestate.levelselect.draw")

init = {}
unload = {}

require("resources")

require("parse")
require("timer")

input = {}

require("gamestate.puzzle.stylus")
require("gamestate.puzzle.abxy")
require("gamestate.puzzle.cpad")

require("gamestate.mainmenu.stylus")

require("gamestate.levelselect.stylus")

require("save")
require("animations")
require("gamestate.levelselect.cleanup")
require("gamestate.levelselect.preview")

mainmenu = {}
levelselect = {}
puzzle = {}
pause = {}

function love.update(dt)

    Timer.update(dt) --vrld you are loved

end

function love.load()
	
	love.graphics.set3D(true) --THREE DEE
	
    init.fonts()
    init.menu()
	
	Gamestate.registerEvents()
    Gamestate.switch(mainmenu)
	
	love.graphics.setDefaultFilter("nearest", "nearest")
 
	love.graphics.setScreen('top')
	love.graphics.setBackgroundColor(255, 255, 255)

end

function mainmenu:init()

    menusubmenu = "mainmenu"

end

function mainmenu:enter()
    
    init.menugraphics()

    bgmtitle = love.audio.newSource("bgm/title.wav")
    bgmtitle:setLooping(true)
    bgmtitle:setVolume(0.75)
    bgmtitle:play()

    animation.buttonsenter()

end

function mainmenu:draw()

    love.graphics.setScreen('top')

	    drawtop.menu()
	
    love.graphics.setScreen('bottom')

        drawbot.menu()

end

function mainmenu:update(dt)
    
	menu.emptybutton_a:update(dt)
	menu.emptybutton_e:update(dt)
	menu.emptybutton_s:update(dt)
	
end

function mainmenu:mousepressed(key)

    input.checkbuttonpress(button1)
	input.checkbuttonpress(button2)
	input.checkbuttonpress(button3)
	input.checkbuttonpress(button4)
	input.checkbuttonpress(button5)
	input.checkbuttonpress(button6)

	input.checkbackbuttonpress()
	
end

function mainmenu:leave()
    
    unload.menugraphics()

    bgmtitle:stop()

    bgmtitle = nil
    collectgarbage()

end

function levelselect:enter(from, course)
   
    init.levelselectgraphics()

    dofile(course)
	 
    savedata.read()
    savedata.write()

    loadlevelpreviews()

    gridhalf = nil

    if gridformat == "8x4" then gridhalf = 1 end
   
    levelhovered = {}
   
    levelhovered.splash = level1a.splash
    levelhovered.name = level1a.name
    levelhovered.size = level1a.size
    levelhovered.letter = level1a.letter
    levelhovered.number = level1a.number
    levelhovered.file = level1a.file
    levelhovered.gamemode = level1a.gamemode
    levelhovered.completed = level1a.completed
   
    level1a.hover = true

end

function levelselect:draw()

    love.graphics.setScreen('top')

	    drawtop.levelselect()
	
    love.graphics.setScreen('bottom')

        drawbot.levelselect()

end

function levelselect:update(dt)

    levelgrid.smallA_a:update(dt)
	levelgrid.smallB_a:update(dt)
	levelgrid.smallC_a:update(dt)
	levelgrid.smallD_a:update(dt)
	levelgrid.smallE_a:update(dt)
	levelgrid.smallF_a:update(dt)
	levelgrid.smallG_a:update(dt)
	levelgrid.smallH_a:update(dt)

end

function levelselect:mousepressed(key)

    input.checklevelgridpress()
    input.checkhalfselectorpress()


end

function levelselect:leave()

    unload.levelselectgraphics()
    levelselectcleanup8x4()
    collectgarbage()

end

function puzzle:enter(from, level, gs, button)
    
    gridx = 0
    gridy = 0

    markMode = "O"
    zoomed = false
    clear = false
    quitting = false
    
    init.puzzlegraphics() 
    init.sfx()

    leveltosave = button
 
    if gs == "5x5" then
 
        dofile("courses/blank5x5.lua")
	    dofile(level)
	
	    parse5x5()
	
    end
 
    if gs == "10x10" then
 
        dofile("courses/blank10x10.lua")
	    dofile(level)
	
	    parse10x10()
	
    end
 
    if gs == "15x15" then
 
        dofile("courses/blank15x15.lua")
	    dofile(level)
	
	    parse15x15()
	
    end

    bgmjazz = love.audio.newSource("bgm/jazz.wav")
    bgmjazz:setLooping(true)
    bgmjazz:setVolume(0.75)
    bgmjazz:play()

    toptimer.clear()

end

function puzzle:draw()

    love.graphics.setScreen('top')
	
	    if zoomed == false then
	        drawtop.ingame()
	    elseif zoomed == true then
	        drawtop.ingamezoomed()
	    end
	
    love.graphics.setScreen('bottom')

        if leveldata.gridsize == 5 then
	        drawbot.grid5(true)
	    end
	
        if leveldata.gridsize == 10 then
	        drawbot.grid10(true)
	    end
	
	    if leveldata.gridsize == 15 then
	        if zoomed == false then
	            drawbot.smallgrid15(true)
	        elseif zoomed == true then
	            drawbot.grid15(true)
	        end
	    end
	
	if clear == true then

	    love.graphics.setScreen('top')
        love.graphics.setDepth(-1)
	    love.graphics.draw(congratulations, 77, levelcleared[3])

        love.graphics.setDepth(-2)
        love.graphics.setScreen('bottom')

	    if levelcleared[1] >= -22 then
	        love.graphics.setScreen('bottom')
	        love.graphics.draw(cleartext, 104, levelcleared[1])
	    else
	    	love.graphics.setScreen('top')
	        love.graphics.draw(cleartext, 144, levelcleared[2])
	    end

	    love.graphics.setDepth(0)
	  
	end

	if quitting == true then 
		love.graphics.setScreen('bottom')
		love.graphics.draw(quittext, quitanim[1], 110)
	end

end

function puzzle:update(dt)
  
    if clear == false and quitting == false then
  
	    if leveldata.gridsize == 15 and zoomed == true then
	        input.movegrid(board15x15)
	    end
	
        toptimer.update(dt)
	
	    if mistake.happening == true then mistake.update(dt) end

    end
	
end

function puzzle:keypressed(key)
	
    if clear == false and quitting == false then
  
	    input.changemarkmode(key)
	
        if leveldata.gridsize == 15 then
            input.changezoom(key)
	    end
	  
	    if key == 'start' or key == "select" then
	        Gamestate.push(pause)
	    end
	
    end

end

function puzzle:mousepressed(key)
  
    if clear == false and quitting == false then
  
        if leveldata.gridsize == 5 then
	        input.check5x5()
	    end
	
        if leveldata.gridsize == 10 then
	        input.check10x10()
	    end
	
        if leveldata.gridsize == 15 and zoomed == true then
	        input.check15x15()
	    end
	
    end

end

function puzzle:leave()

    bgmjazz = nil

    sfx.mark = nil
    sfx.Xmark = nil
	sfx.boop = nil
	sfx.mistake = nil
	sfx.erase = nil
	sfx.clearmelody = nil

    unload.puzzlegraphics()
    collectgarbage()

end

function pause:enter()

    animation.pausein()

    pausebuttonhover1 = false
    pausebuttonhover2 = false
    canclick = false

end

function pause:draw()

    love.graphics.setScreen('top')
	
	if zoomed == false then
	    drawtop.ingame()
	   
	    love.graphics.setDepth(-2)
	    love.graphics.draw(pausetext, pauseanims[1], 110)
	    love.graphics.setDepth(0)
	   
	elseif zoomed == true then
	    drawtop.ingamezoomed()
	   
	    love.graphics.setDepth(-2)
	    love.graphics.draw(pausetext, pauseanims[1], 110)
	    love.graphics.setDepth(0)
	end
	
    love.graphics.setScreen('bottom')

    if leveldata.gridsize == 5 then
	    drawbot.grid5(false)
	end
	
    if leveldata.gridsize == 10 then
	    drawbot.grid10(false)
	end
	
	if leveldata.gridsize == 15 then
	    if zoomed == false then
	        drawbot.smallgrid15(false)
	    elseif zoomed == true then
	        drawbot.grid15(false)
	    end
	end

end

function pause:update(dt)

    menu.emptybutton_a:update(dt)

end

function pause:keypressed(key)
	  
	if key == 'start' or key == "select" then
	    animation.pauseout()

		Timer.after(0.5, function()
		    Gamestate.pop() 
		    pausebuttonhover1 = nil
            pausebuttonhover2 = nil
            canclick = nil
        end)
	end

end

function pause:mousepressed(key)

    local mousex, mousey = love.mouse.getPosition()
    
    if canclick == true then

        if mousex >= 103 and mousex <= 215 and mousey >= 80 and mousey <= 104 then

    	    if pausebuttonhover1 == false then 
    		    pausebuttonhover1 = true
    		    pausebuttonhover2 = false
            else
                
                animation.pauseout()

		        Timer.after(0.5, function()
		            Gamestate.pop() 
		            quitting = true
		            pausebuttonhover1 = nil
                    pausebuttonhover2 = nil
                    canclick = nil
                end)

                Timer.after(0.75, function()
                	bgmjazz:stop()
		            animation.quit()
                end)

                
                Timer.after(4, function()
		            Gamestate.switch(mainmenu) 
		            init.menu() 
		            mainmenu.buttonsEnter = true
                end)

            end

        end

        if mousex >= 103 and mousex <= 215 and mousey >= 112 and mousey <= 136 then

    	    if pausebuttonhover2 == false then 
    		    pausebuttonhover1 = false
    		    pausebuttonhover2 = true
            else
                love.event.quit()
            end

        end

        if mousex >= 233 and mousex <= 255 and mousey >= 154 and mousey <= 176 then
            
            animation.pauseout()

		    Timer.after(0.5, function()
		        Gamestate.pop() 
		        pausebuttonhover1 = nil
                pausebuttonhover2 = nil
                canclick = nil
            end)

        end
    
    end

end