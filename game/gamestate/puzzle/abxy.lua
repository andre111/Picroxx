function input.changemarkmode(key)

  if key == 'x' then markMode = "O" sfx.boop:play() end
  if key == 'b' then markMode = "X" sfx.boop:play() end
  
end

function input.changezoom(key)

  if key == 'a' or key == "y" then 
    if zoomed == false then
	  zoomed = true
	elseif zoomed == true then
	  zoomed = false
	end
  end

end