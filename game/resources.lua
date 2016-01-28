menu = {}
levelgrid = {}
leveldata = {}

menu.topbg = love.graphics.newImage('gfx/misc/topbg.png')
menu.botbg = love.graphics.newImage('gfx/misc/botbg.png')

menu.emptybutton = love.graphics.newImage('gfx/misc/emptybutton.png')

local emptybuttonA = love.graphics.newImage('gfx/misc/emptybutton_a.png')
menu.emptybutton_a = newAnimation(emptybuttonA, 114, 26, 0.05, 6)
menu.emptybutton_a:setMode("loop")

local emptybuttonE = love.graphics.newImage("gfx/misc/emptybutton_e.png")
menu.emptybutton_e = newAnimation(emptybuttonE, 114, 26, 0.05, 7)
menu.emptybutton_e:setMode("once")
	
local emptybuttonS = love.graphics.newImage("gfx/misc/emptybutton_s.png")
menu.emptybutton_s = newAnimation(emptybuttonS, 114, 26, 0.05, 7)
menu.emptybutton_s:setMode("once")

menu.backbutton = love.graphics.newImage('gfx/misc/back.png')


function init.sound()
	bgmjazz = love.audio.newSource("bgm/jazz.wav")
	bgmtitle = love.audio.newSource("bgm/title.wav")

	init.sfx()
end

function unload.sound()
	bgmjazz = nil
	bgmtitle = nil

	unload.sfx() 
	collectgarbage()
end

function init.graphics()
	init.menugraphics()
	init.levelselectgraphics()
	init.puzzlegraphics()
	init.fonts()
	
end

function unload.graphics()
	unload.menugraphics()
	unload.levelselectgraphics()
	unload.puzzlegraphics()
	--TODO: unload fonts?
end






function init.menugraphics()    
	
    menu.titlescreen = love.graphics.newImage('gfx/mainmenu/title.png')

    overlay = {}

    overlay.mariopicross = love.graphics.newImage('gfx/mainmenu/overlays/mariopicross.png')
	
end

function init.levelselectgraphics()
    
	levelgrid.bg = love.graphics.newImage('gfx/levelselect/bg.png')
	
    levelgrid.levels1 = love.graphics.newImage('gfx/levelselect/levels1.png')
    levelgrid.levels2 = love.graphics.newImage('gfx/levelselect/levels2.png')

    levelgrid.halfselector1 = love.graphics.newImage('gfx/levelselect/buttons/halfselector1.png')
    levelgrid.halfselector2 = love.graphics.newImage('gfx/levelselect/buttons/halfselector2.png')

	levelgrid.smallwhiteqm = love.graphics.newImage('gfx/levelselect/buttons/small/whiteqm.png')
	levelgrid.smallyellowqm = love.graphics.newImage('gfx/levelselect/buttons/small/yellowqm.png')
	
   	levelgrid.smallA = love.graphics.newImage('gfx/levelselect/buttons/small/a.png')
	levelgrid.smallB = love.graphics.newImage('gfx/levelselect/buttons/small/b.png')
	levelgrid.smallC = love.graphics.newImage('gfx/levelselect/buttons/small/c.png')
	levelgrid.smallD = love.graphics.newImage('gfx/levelselect/buttons/small/d.png')
	levelgrid.smallE = love.graphics.newImage('gfx/levelselect/buttons/small/e.png')
	levelgrid.smallF = love.graphics.newImage('gfx/levelselect/buttons/small/f.png')
	levelgrid.smallG = love.graphics.newImage('gfx/levelselect/buttons/small/g.png')
	levelgrid.smallH = love.graphics.newImage('gfx/levelselect/buttons/small/h.png')
	
	smallA_a = love.graphics.newImage("gfx/levelselect/buttons/small/a_a.png")
	levelgrid.smallA_a = newAnimation(smallA_a, 34, 23, 0.05, 6)
    levelgrid.smallA_a:setMode("loop")
	
	smallB_a = love.graphics.newImage("gfx/levelselect/buttons/small/b_a.png")
	levelgrid.smallB_a = newAnimation(smallB_a, 34, 23, 0.05, 6)
    levelgrid.smallB_a:setMode("loop")
	
	smallC_a = love.graphics.newImage("gfx/levelselect/buttons/small/c_a.png")
	levelgrid.smallC_a = newAnimation(smallC_a, 34, 23, 0.05, 6)
    levelgrid.smallC_a:setMode("loop")
	
	smallD_a = love.graphics.newImage("gfx/levelselect/buttons/small/d_a.png")
	levelgrid.smallD_a = newAnimation(smallD_a, 34, 23, 0.05, 6)
    levelgrid.smallD_a:setMode("loop")
	
	smallE_a = love.graphics.newImage("gfx/levelselect/buttons/small/e_a.png")
	levelgrid.smallE_a = newAnimation(smallE_a, 34, 23, 0.05, 6)
    levelgrid.smallE_a:setMode("loop")
	
	smallF_a = love.graphics.newImage("gfx/levelselect/buttons/small/f_a.png")
	levelgrid.smallF_a = newAnimation(smallF_a, 34, 23, 0.05, 6)
    levelgrid.smallF_a:setMode("loop")
	
	smallG_a = love.graphics.newImage("gfx/levelselect/buttons/small/g_a.png")
	levelgrid.smallG_a = newAnimation(smallG_a, 34, 23, 0.05, 6)
    levelgrid.smallG_a:setMode("loop")
	
	smallH_a = love.graphics.newImage("gfx/levelselect/buttons/small/h_a.png")
	levelgrid.smallH_a = newAnimation(smallH_a, 34, 23, 0.05, 6)
    levelgrid.smallH_a:setMode("loop")
	
    i5x5label = love.graphics.newImage("gfx/levelselect/5x5label.png")
	i10x10label = love.graphics.newImage("gfx/levelselect/10x10label.png")
	i15x15label = love.graphics.newImage("gfx/levelselect/15x15label.png")

	uncompleted = love.graphics.newImage("gfx/levelselect/uncompleted.png")
	
	icon = {}
	
	icon.normal = love.graphics.newImage('gfx/puzzle/gui/icon_normal.png')
	icon.free = love.graphics.newImage('gfx/puzzle/gui/icon_free.png')
	
end

function init.puzzlegraphics()    
	
	background = love.graphics.newImage('gfx/puzzle/boards/normal/bg.png')
	whiteoverlay = love.graphics.newImage('gfx/puzzle/boards/normal/whiteoverlay.png')
	
	mark_indicator = love.graphics.newImage('gfx/puzzle/gui/mark_indicator.png')
	mark_Xindicator = love.graphics.newImage('gfx/puzzle/gui/mark_Xindicator.png')
	zoomin_indicator = love.graphics.newImage('gfx/puzzle/gui/zoomin_indicator.png')
	zoomout_indicator = love.graphics.newImage('gfx/puzzle/gui/zoomout_indicator.png')
	
	numberStripLeft = love.graphics.newImage('gfx/puzzle/boards/normal/numberStripLeft.png')
	numberStripTop = love.graphics.newImage('gfx/puzzle/boards/normal/numberStripTop.png')
	
	mark = love.graphics.newImage('gfx/puzzle/boards/normal/mark.png')
	Xmark = love.graphics.newImage('gfx/puzzle/boards/normal/Xmark.png')
	smallmark = love.graphics.newImage('gfx/puzzle/boards/normal/smallmark.png')
	smallXmark = love.graphics.newImage('gfx/puzzle/boards/normal/smallXmark.png')
	
	twoMin = love.graphics.newImage('gfx/puzzle/gui/2min.png')
	fourMin = love.graphics.newImage('gfx/puzzle/gui/4min.png')
	eightMin = love.graphics.newImage('gfx/puzzle/gui/8min.png')
	
	pausetext = love.graphics.newImage('gfx/puzzle/gui/pause.png')
	pauseexit = love.graphics.newImage('gfx/puzzle/gui/exitbutton.png')
	
	cleartext = love.graphics.newImage('gfx/puzzle/gui/clear.png')
	congratulations = love.graphics.newImage('gfx/puzzle/gui/congratulations.png')

	quittext = love.graphics.newImage('gfx/puzzle/gui/quit.png')
	
	gmlabel = {}
	
	gmlabel.easy = love.graphics.newImage('gfx/puzzle/gui/gamemode_easy.png')
	gmlabel.normal = love.graphics.newImage('gfx/puzzle/gui/gamemode_normal.png')
	gmlabel.free = love.graphics.newImage('gfx/puzzle/gui/gamemode_free.png')
	
end

function init.fonts()

--Due to the lack of imagefont support in LÖVEPotion we have to improvise. Only two actual fonts are used, the rest are .png files.

    squarefont = love.graphics.newFont("gfx/misc/font/square.ttf", 20) --Visitor TT1 BRK
	regularfont = love.graphics.newFont("gfx/misc/font/regular.ttf", 16) --Pixel Operator Bold

	--These characters are used for the reference numbers in the bottom screen.
	
    local number0 = love.graphics.newImage('gfx/misc/font/numbers/0.png')
	local number1 = love.graphics.newImage('gfx/misc/font/numbers/1.png')
	local number2 = love.graphics.newImage('gfx/misc/font/numbers/2.png')
	local number3 = love.graphics.newImage('gfx/misc/font/numbers/3.png')
	local number4 = love.graphics.newImage('gfx/misc/font/numbers/4.png')
	local number5 = love.graphics.newImage('gfx/misc/font/numbers/5.png')
	local number6 = love.graphics.newImage('gfx/misc/font/numbers/6.png')
	local number7 = love.graphics.newImage('gfx/misc/font/numbers/7.png')
	local number8 = love.graphics.newImage('gfx/misc/font/numbers/8.png')
	local number9 = love.graphics.newImage('gfx/misc/font/numbers/9.png')
	local number10 = love.graphics.newImage('gfx/misc/font/numbers/10.png')
	local number11 = love.graphics.newImage('gfx/misc/font/numbers/11.png')
	local number12 = love.graphics.newImage('gfx/misc/font/numbers/12.png')
	local number13 = love.graphics.newImage('gfx/misc/font/numbers/13.png')
	local number14 = love.graphics.newImage('gfx/misc/font/numbers/14.png')
	local number15 = love.graphics.newImage('gfx/misc/font/numbers/15.png')
	
	--These characters are used for the reference numbers on puzzles of size 15x15 and up.
	
	local snumber0 = love.graphics.newImage('gfx/misc/font/numbers/small/0.png')
	local snumber1 = love.graphics.newImage('gfx/misc/font/numbers/small/1.png')
	local snumber2 = love.graphics.newImage('gfx/misc/font/numbers/small/2.png')
	local snumber3 = love.graphics.newImage('gfx/misc/font/numbers/small/3.png')
	local snumber4 = love.graphics.newImage('gfx/misc/font/numbers/small/4.png')
	local snumber5 = love.graphics.newImage('gfx/misc/font/numbers/small/5.png')
	local snumber6 = love.graphics.newImage('gfx/misc/font/numbers/small/6.png')
	local snumber7 = love.graphics.newImage('gfx/misc/font/numbers/small/7.png')
	local snumber8 = love.graphics.newImage('gfx/misc/font/numbers/small/8.png')
	local snumber9 = love.graphics.newImage('gfx/misc/font/numbers/small/9.png')
	local snumber10 = love.graphics.newImage('gfx/misc/font/numbers/small/10.png')
	local snumber11 = love.graphics.newImage('gfx/misc/font/numbers/small/11.png')
	local snumber12 = love.graphics.newImage('gfx/misc/font/numbers/small/12.png')
	local snumber13 = love.graphics.newImage('gfx/misc/font/numbers/small/13.png')
	local snumber14 = love.graphics.newImage('gfx/misc/font/numbers/small/14.png')
	local snumber15 = love.graphics.newImage('gfx/misc/font/numbers/small/15.png')
	
	--These characters are used for the numbers in the timer located in the top screen.
	
	local timer0 = love.graphics.newImage('gfx/misc/font/timer/0.png')
	local timer1 = love.graphics.newImage('gfx/misc/font/timer/1.png')
	local timer2 = love.graphics.newImage('gfx/misc/font/timer/2.png')
	local timer3 = love.graphics.newImage('gfx/misc/font/timer/3.png')
	local timer4 = love.graphics.newImage('gfx/misc/font/timer/4.png')
	local timer5 = love.graphics.newImage('gfx/misc/font/timer/5.png')
	local timer6 = love.graphics.newImage('gfx/misc/font/timer/6.png')
	local timer7 = love.graphics.newImage('gfx/misc/font/timer/7.png')
	local timer8 = love.graphics.newImage('gfx/misc/font/timer/8.png')
	local timer9 = love.graphics.newImage('gfx/misc/font/timer/9.png')
	
	fontnumbers = {number1, number2, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number0}
	fontsnumbers = {snumber1, snumber2, snumber3, snumber4, snumber5, snumber6, snumber7, snumber8, snumber9, snumber10, snumber11, snumber12, snumber13, snumber14, snumber15, snumber0}
	timerdigits = {timer0, timer1, timer2, timer3, timer4, timer5, timer6, timer7, timer8, timer9}
	
end

function init.sfx()
	
	sfx = {}
	
	sfx.mark = love.audio.newSource("sfx/puzzle/mark.wav")
	sfx.Xmark = love.audio.newSource("sfx/puzzle/Xmark.wav")
	sfx.boop = love.audio.newSource("sfx/puzzle/boop.wav")
	sfx.mistake = love.audio.newSource("sfx/puzzle/mistake.wav")
	sfx.erase = love.audio.newSource("sfx/puzzle/erase.wav")
	sfx.clearmelody = love.audio.newSource("sfx/puzzle/clear.wav")

end

function unload.sfx() 
	sfx.mark = nil
	sfx.Xmark = nil
	sfx.boop = nil
	sfx.mistake = nil
	sfx.erase = nil
	sfx.clearmelody = nil
end

function init.menu()
	
	button1 = {}
    button2 = {}
    button3 = {}
    button4 = {}
    button5 = {}
    button6 = {}
	
	dofile("menu/mainmenu.lua")
	
end

function unload.menugraphics()
    
    menu.titlescreen = nil

    overlay.mariopicross = nil

    button1.label = nil
    button2.label = nil
	button3.label = nil
	button4.label = nil
	button5.label = nil
	button6.label = nil

end

function unload.puzzlegraphics()  
	
	background = nil
	whiteoverlay = nil
	
	mark_indicator = nil
	mark_Xindicator = nil
	zoomin_indicator = nil
	zoomout_indicator = nil
	
	numberStripLeft = nil
	numberStripTop = nil
	
	mark = nil
	Xmark = nil
	smallmark = nil
	smallXmark = nil
	
	twoMin = nil
	fourMin = nil
	eightMin = nil
	
	pausetext = nil
	pauseexit = nil
	
	cleartext = nil
	congratulations = nil

	quittext = nil
	
	gmlabel.easy = nil
	gmlabel.normal = nil
	gmlabel.free = nil

end

function unload.levelselectgraphics()

    levelgrid.bg = nil
	
    levelgrid.levels1 = nil
    levelgrid.levels2 = nil

    levelgrid.halfselector1 = nil
    levelgrid.halfselector2 = nil

	levelgrid.smallwhiteqm = nil
	levelgrid.smallyellowqm = nil
	
   	levelgrid.smallA = nil
	levelgrid.smallB = nil
	levelgrid.smallC = nil
	levelgrid.smallD = nil
	levelgrid.smallE = nil
	levelgrid.smallF = nil
	levelgrid.smallG = nil
	levelgrid.smallH = nil
	
	smallA_a = nil
	levelgrid.smallA_a = nil
	
	smallB_a = nil
	levelgrid.smallB_a = nil
	
	smallC_a = nil
	levelgrid.smallC_a = nil
	
	smallD_a = nil
	levelgrid.smallD_a = nil
	
	smallE_a = nil
	levelgrid.smallE_a = nil
	
	smallF_a = nil
	levelgrid.smallF_a = nil
	
	smallG_a = nil
	levelgrid.smallG_a = nil
	
	smallH_a = nil
	levelgrid.smallH_a = nil

	uncompleted = nil
	
    i5x5label = nil
	i10x10label = nil
	i15x15label = nil

end