function convertOld()
	local puzzle = {}
	puzzle.grid = {}
	puzzle.usergrid = {}
	puzzle.rows = 0;
	puzzle.columns = 0;
	puzzle.numbersRows = {}
	puzzle.numbersColumns = {}
	
	if leveldata.gridsize == 5 then
		puzzle.rows = 5;
		puzzle.columns = 5;
		
		for i=1, 5, 1 do
			puzzle.grid[i] = _G["irow"..i]
		end
	elseif leveldata.gridsize == 10 then
		puzzle.rows = 10;
		puzzle.columns = 10;
		
		for i=1, 10, 1 do
			puzzle.grid[i] = _G["irow"..i]
		end
	elseif leveldata.gridsize == 15 then
		puzzle.rows = 15;
		puzzle.columns = 15;
		
		for i=1, 15, 1 do
			puzzle.grid[i] = _G["irow"..i]
		end
	end
	
	parseDynamic(puzzle)
	
	return puzzle
end

function parseDynamic(_puzzle)
	for r=1, _puzzle.rows, 1 do
		_puzzle.numbersRows[r] = parseDynamicRow(r, _puzzle);
	end
	
	for c=1, _puzzle.columns, 1 do
		_puzzle.numbersColumns[c] = parseDynamicColumn(c, _puzzle);
	end
	
	for r=1, _puzzle.rows, 1 do
		_puzzle.usergrid[r] = {}
		for c=1, _puzzle.columns, 1 do
			_puzzle.usergrid[r][c] = "."
		end
	end
end

function parseDynamicRow(_row, _puzzle)
	local numbersRow = {}
	
	--Fill with clear Data
	for i=1, _puzzle.columns, 1 do
		numbersRow[i] = -1
	end
	
	--Parse from Puzzle
	local currentCount = 0;
	local currentNumber = 1;
	for i=1, _puzzle.columns, 1 do
		if _puzzle.grid[_row][i]=="O" then
			currentCount = currentCount + 1
		else
			if currentCount>0 then
				numbersRow[currentNumber] = currentCount
				currentNumber = currentNumber + 1
			end
			currentCount = 0
		end
	end
	if currentNumber==1 or currentCount>0 then
		numbersRow[currentNumber] = currentCount
		currentNumber = currentNumber + 1
	end
	
	return numbersRow
end

function parseDynamicColumn(_column, _puzzle)
	local numbersColumn = {}
	
	--Fill with clear Data
	for i=1, _puzzle.rows, 1 do
		numbersColumn[i] = -1
	end
	
	--Parse from Puzzle
	local currentCount = 0;
	local currentNumber = 1;
	for i=1, _puzzle.rows, 1 do
		if _puzzle.grid[i][_column]=="O" then
			currentCount = currentCount + 1
		else
			if currentCount>0 then
				numbersColumn[currentNumber] = currentCount
				currentNumber = currentNumber + 1
			end
			currentCount = 0
		end
	end
	if currentNumber==1 or currentCount>0 then
		numbersColumn[currentNumber] = currentCount
		currentNumber = currentNumber + 1
	end
	
	return numbersColumn
end
