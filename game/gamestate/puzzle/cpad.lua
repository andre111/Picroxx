function input.movegrid(image)
   
   if love.keyboard.isDown("KEY_CPAD_LEFT") then
    if gridx <= 0 then
     gridx = gridx + 2
	end
   end
   
   if love.keyboard.isDown("KEY_CPAD_RIGHT") then
    if gridx >= -120 then
     gridx = gridx - 2
	end
   end
   
   if love.keyboard.isDown("KEY_CPAD_UP") then
    if gridy <= 0 then
     gridy = gridy + 2
	end
   end
   
   if love.keyboard.isDown("KEY_CPAD_DOWN") then
    if gridy >= -78 then
     gridy = gridy - 2
	end
   end
   
end