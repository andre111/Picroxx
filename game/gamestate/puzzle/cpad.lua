function input.movegrid()
	--TODO: Needs new limiting range checks
	if love.keyboard.isDown("KEY_CPAD_LEFT") then
		puzzleX = puzzleX - 2
	end
   
	if love.keyboard.isDown("KEY_CPAD_RIGHT") then
		puzzleX = puzzleX + 2
	end
   
	if love.keyboard.isDown("KEY_CPAD_UP") then
		puzzleY = puzzleY - 2
	end
   
	if love.keyboard.isDown("KEY_CPAD_DOWN") then
		puzzleY = puzzleY + 2
	end
   
end