--Tables used by the Timer.tween functions. Fancy animations galore!

animation = {}

pauseanims = {-144, 284}
pausebuttonsanims = {-114, -114}
quitanim = {-84}

levelcleared = {280, 372, -22}

function animation.pausein()

  Timer.tween(1, pauseanims, {144, pauseanims[2]}, 'out-elastic')
  Timer.tween(0.5, pauseanims, {pauseanims[1], 154}, 'out-cubic')
  
  Timer.tween(0.5, pausebuttonsanims, {103, pausebuttonsanims[2]}, 'out-cubic')

  Timer.after(0.5, function() canclick = true end)

end

function animation.pauseout()
  
  pausebuttonhover1 = false
  pausebuttonhover2 = false
  canclick = false

  Timer.tween(0.5, pauseanims, {400, pauseanims[2]}, 'in-back')
  Timer.tween(0.5, pauseanims, {pauseanims[1], 284}, 'out-cubic')

  Timer.tween(0.5, pausebuttonsanims, {321, pausebuttonsanims[2]}, 'out-cubic')
  
  Timer.after(0.5, function() pauseanims[1] = -144 pausebuttonsanims[1] = -114 end)

end

function animation.quit()
  
  Timer.tween(1, quitanim, {119}, 'out-elastic')

  Timer.after(1, function()

  Timer.tween(1, quitanim, {321}, 'in-back')

  end)

end

function animation.levelcleared()
    
    Timer.tween(1, levelcleared, {110, levelcleared[2], levelcleared[3]}, 'out-elastic')

    Timer.after(2.35, function() 
  
    Timer.tween(1.5, levelcleared, {-262, -22, levelcleared[3]}, 'in-back')
  
    end)
	
	  Timer.after(4, function() 
  
    Timer.tween(0.35, levelcleared, {levelcleared[1], levelcleared[2], 4}, 'in-linear')
  
    end)

end

function animation.buttonsenter()

    mainmenu.buttonsEnter = true
    Timer.after(0.35, function() mainmenu.buttonsEnter = false mainmenu.buttonsExit = false end)

end

function animation.buttonsexit()

    mainmenu.buttonsExit = true
    Timer.after(0.35, function() mainmenu.buttonsExit = false mainmenu.buttonsEnter = false end)

end