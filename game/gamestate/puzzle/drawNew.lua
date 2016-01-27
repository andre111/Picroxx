function drawPuzzleBG(_puzzle, _small)
	local cellSize = 13
	--For Using Smaller Gridcells(15x15 and up?)
	if(_small) then 
		cellSize = 7
	end
	
	local w = (_puzzle.columns * cellSize) + (_puzzle.columns - 1)
	local h = (_puzzle.rows * cellSize) + (_puzzle.rows - 1)

	local x = puzzleX
	local y = puzzleY

	--BG Border
	love.graphics.setColor(173, 189, 255)
	love.graphics.rectangle('fill', x+1, y+1, w+3, h+3)
	love.graphics.setColor(0, 0, 0)
	love.graphics.rectangle('line', x, y, w+2, h+2)
	
	--BG 5x5 Dividers
	love.graphics.setColor(255, 165, 0)
	for r=1, _puzzle.rows, 1 do
		if (r%5==0 and r<_puzzle.rows) then
			love.graphics.rectangle('fill', x+1, y + (r*(cellSize+1)), w, 1)
		end
	end
	for c=1, _puzzle.columns, 1 do
		if (c%5==0 and c<_puzzle.columns) then
			love.graphics.rectangle('fill', x + (c*(cellSize+1)), y+1, 1, h)
		end
	end
	
	--BG Cells
	for r=1, _puzzle.rows, 1 do
		for c=1, _puzzle.columns, 1 do
			if((r+c)%2 == 0) then
				if(r%2 == 0 and c%2 == 0) then
					love.graphics.setColor(255, 255, 255)
				else
					love.graphics.setColor(222, 231, 255)
				end
			else
				love.graphics.setColor(239, 247, 255)
			end
			
			love.graphics.rectangle('fill', x+1 + ((cellSize+1)*(c-1)), y+1 + ((cellSize+1)*(r-1)), cellSize, cellSize)
		end
	end
end

function drawPuzzleContent(_puzzle, _small)
	
end

function drawPuzzleNumbers(_puzzle, _small)
	local cellSize = 13
	local font = fontnumbers
	--For Using Smaller Gridcells(15x15 and up?)
	if(_small) then 
		cellSize = 7
		font = fontsnumbers
	end
	
	local x = puzzleX
	local y = puzzleY

	for r=1, _puzzle.rows, 1 do
		local currentNumber = 1
		for i=_puzzle.columns/2+1, 1, -1 do
			if _puzzle.numbersRows[r][i]>0 then
				love.graphics.draw(font[_puzzle.numbersRows[r][i]], x - ((cellSize+1)*currentNumber) - 2, y + (r-1)*(cellSize+1) + 2)
				currentNumber = currentNumber + 1
			end
		end
	end
	for c=1, _puzzle.columns, 1 do
		local currentNumber = 1
		for i=_puzzle.rows/2+1, 1, -1 do
			if _puzzle.numbersColumns[c][i]>0 then
				love.graphics.draw(font[_puzzle.numbersColumns[c][i]], x + (c-1)*(cellSize+1) + 1, y - ((cellSize+1)*currentNumber))
				currentNumber = currentNumber + 1
			end
		end
	end
end

function drawNewPuzzle(_puzzle)
	drawPuzzleBG(_puzzle, false)
	drawPuzzleContent(_puzzle, false)
	drawPuzzleNumbers(_puzzle, false)
end
