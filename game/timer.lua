--This file contains the timer logic.
--Because love.graphics.newImageFont is not supported by LÖVEPotion yet, a variable for each digit is used
--and an invisible variable is used to calculate the real seconds, minutes and hours.

toptimer = {}

toptimer.frame = 0

toptimer.realseconds = 0
toptimer.seconds1 = 0
toptimer.seconds2 = 0

toptimer.realminutes = 0
toptimer.minutes1 = 0
toptimer.minutes2 = 0

toptimer.realhours = 0
toptimer.hours1 = 0
toptimer.hours2 = 0

function toptimer.clear()

  toptimer.frame = 0

  toptimer.realseconds = 0
  toptimer.seconds1 = 0
  toptimer.seconds2 = 0

  toptimer.realminutes = 0
  toptimer.minutes1 = 0
  toptimer.minutes2 = 0

  toptimer.realhours = 0
  toptimer.hours1 = 0
  toptimer.hours2 = 0

end

function toptimer.update(dttoptimer)

toptimer.frame = toptimer.frame + dttoptimer

if toptimer.frame >= 1 then
  toptimer.seconds1 = toptimer.seconds1 + 1
  toptimer.realseconds = toptimer.realseconds + 1
  toptimer.frame = 0
end

if toptimer.seconds1 >= 10 then
  toptimer.seconds1 = 0
  toptimer.seconds2 = toptimer.seconds2 + 1
end




if toptimer.seconds2 >= 6 and toptimer.realseconds >= 60 then
  toptimer.seconds1 = 0
  toptimer.seconds2 = 0
  toptimer.realseconds = 0
  
  toptimer.realminutes = toptimer.realminutes + 1
  toptimer.minutes1 = toptimer.minutes1 + 1
end

if toptimer.minutes1 >= 10 then
  toptimer.minutes1 = 0
  toptimer.minutes2 = toptimer.minutes2 + 1
end




if toptimer.minutes2 >= 6 and toptimer.realminutes >= 60 then
  toptimer.minutes1 = 0
  toptimer.minutes2 = 0
  toptimer.realminutes = 0
  
  toptimer.realhours = toptimer.realhours + 1
  toptimer.hours1 = toptimer.hours1 + 1
end

if toptimer.hours1 >= 10 then
  toptimer.hours1 = 0
  toptimer.hours2 = toptimer.hours2 + 1
end

end

mistake = {}

mistake.happening = false
mistake.timeLoss = 0
mistake.speed = 0
mistake.x = 0
mistake.y = 0
mistake.alpha = 255

function mistake.pop()

  mistake.speed = 0
  mistake.alpha = 255

  if mistake.timeLoss == 0 then
    mistake.timeLoss = 2 
  elseif mistake.timeLoss == 2 then
    mistake.timeLoss = 4
  elseif mistake.timeLoss == 4 then
    mistake.timeLoss = 8
  end
  
  mistake.happening = true
  
  toptimer.realminutes = toptimer.realminutes + mistake.timeLoss
  toptimer.minutes1 = toptimer.minutes1 + mistake.timeLoss
  
  if toptimer.minutes1 >=10 then
    toptimer.minutes1 = toptimer.minutes1 - 10
	toptimer.minutes2 = toptimer.minutes2 + 1
  end

end

function mistake.update(dtfix)

  if mistake.speed >= 15 then
    mistake.happening = false
  end

  mistake.speed = mistake.speed + dtfix * 10
  mistake.alpha = mistake.alpha - mistake.speed * 0.35
  
end