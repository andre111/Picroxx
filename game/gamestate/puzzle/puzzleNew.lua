puzzleX = 0
puzzleY = 0
puzzleSmall = false

function resetPuzzlePosition(_puzzle)
	puzzleX = 84
	puzzleY = 84
	puzzleSmall = false
end

function checkPuzzleCompleted(_puzzle)
	local complete = true
	for r=1, _puzzle.rows, 1 do
		for c=1, _puzzle.columns, 1 do
			if (_puzzle.grid[r][c] == "O" and _puzzle.usergrid[r][c] ~= "O")
			or (_puzzle.grid[r][c] ~= "O" and _puzzle.usergrid[r][c] == "O") then
				complete = false
			end
		end
	end
	
	if complete then
		zoomed = false
        clear = true
        levelcleared = {280, 372, -22}
	    bgmjazz:stop()
	    
        Timer.after(2, function()
	        savedata.levelcleared()
		    savedata.write()
		    animation.levelcleared()
		end)

		Timer.after(10, function() Gamestate.switch(levelselect, lastCourse) end)
	end
end

function checkPuzzleInput(_puzzle)
	local cellSize = 13
	--For Using Smaller Gridcells(15x15 and up?)
	if(puzzleSmall) then 
		cellSize = 7
	end
	
	local x = puzzleX
	local y = puzzleY
	
	local mousex, mousey = love.mouse.getPosition()
	local mouseDown = love.mouse.isDown();
	if not mouseDown then
		Xmode = nil
		Omode = nil
	end

	for r=1, _puzzle.rows, 1 do
		for c=1, _puzzle.columns, 1 do
			--Area for this cell
			local x1 = x+1 + ((cellSize+1)*(c-1))
			local y1 = y+1 + ((cellSize+1)*(r-1))
			local x2 = x1 + cellSize
			local y2 = y1 + cellSize
			
			if mousex >= x1 and mousex <= x2 and mousey >= y1 and mousey <= y2 then
			
				if canMark == true then
					if markMode == "O" then
						if _puzzle.usergrid[r][c] == "." then
							if Omode == nil then
								Omode = "mark"
							end
						
							if Omode == "mark" then
								if _puzzle.grid[r][c] == "O" then
									_puzzle.usergrid[r][c] = "O"
									sfx.mark:play()
									checkPuzzleCompleted(_puzzle)
								else
									canMark = false
									mistake.pop()
									mistake.x = x1 - 9
									mistake.y = y1 - 7
								  
									_puzzle.usergrid[r][c] = "X"
									sfx.mistake:play()
								end
							end
						elseif _puzzle.usergrid[r][c] == "X" then
							if Omode == nil then
								Omode = "erase"
							end
							
							if Omode == "erase" then
								_puzzle.usergrid[r][c] = "."
								sfx.erase:play()
							end
						end
					elseif markMode == "X" then
						if _puzzle.usergrid[r][c] == "." then
							if Xmode == nil then
								Xmode = "mark"
							end
							
							if Xmode == "mark" then
								_puzzle.usergrid[r][c] = "X"
								sfx.Xmark:play()
							end
						elseif _puzzle.usergrid[r][c] == "X" then
							if Xmode == nil then
								Xmode = "erase"
							end
							
							if Xmode == "erase" then
								_puzzle.usergrid[r][c] = "."
								sfx.erase:play()
							end
						end
					end
				end
			end
		end
	end
end
