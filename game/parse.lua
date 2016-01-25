function parse5x5()

  refnumbers = nil
  refnumbers = {0, 0, 0}

  numbersrow1 = nil
  numbersrow2 = nil
  numbersrow3 = nil
  numbersrow4 = nil
  numbersrow5 = nil

  numberscolumn1 = nil
  numberscolumn2 = nil
  numberscolumn3 = nil
  numberscolumn4 = nil
  numberscolumn5 = nil

  parseline5(irow1)
     setnumbers5()
     numbersrow1 = {unpack(refnumbers)}
  
  parseline5(irow2)
     setnumbers5()
     numbersrow2 = {unpack(refnumbers)}
  
  parseline5(irow3)
     setnumbers5()
     numbersrow3 = {unpack(refnumbers)}   
   
  parseline5(irow4)
     setnumbers5()
     numbersrow4 = {unpack(refnumbers)}
  
  parseline5(irow5)
     setnumbers5()
     numbersrow5 = {unpack(refnumbers)}
   
   
  icolumn1 = {irow1[1], irow2[1], irow3[1], irow4[1], irow5[1]}
  icolumn2 = {irow1[2], irow2[2], irow3[2], irow4[2], irow5[2]}
  icolumn3 = {irow1[3], irow2[3], irow3[3], irow4[3], irow5[3]}
  icolumn4 = {irow1[4], irow2[4], irow3[4], irow4[4], irow5[4]}
  icolumn5 = {irow1[5], irow2[5], irow3[5], irow4[5], irow5[5]}
   
   
  parseline5(icolumn1)
     setnumbers5()
     numberscolumn1 = {unpack(refnumbers)}
  
  parseline5(icolumn2)
     setnumbers5()
     numberscolumn2 = {unpack(refnumbers)}
  
  parseline5(icolumn3)
     setnumbers5() 
     numberscolumn3 = {unpack(refnumbers)}
   
  parseline5(icolumn4)
     setnumbers5()
     numberscolumn4 = {unpack(refnumbers)}
  
  parseline5(icolumn5)
     setnumbers5()
     numberscolumn5 = {unpack(refnumbers)}

end

function parseline5(linetable)

    count1 = 0
    count2 = 0
    count3 = 0
  
    local cell

    count1exists = false
    count2exists = false
    count3exists = false

    for a=1, #linetable do                      --Parses the space before the first line                
      if linetable[a] == "O" then
         count1exists = true
           cell = a
           break
      end
  
      cell = #linetable + 1
    end

for a=cell, #linetable do                       --Parses the first line  
    if linetable[a] == "O" then     
     count1 = count1  + 1   
  else
     cell = a
     break
    end
  
  cell = #linetable + 1
end

    for a=cell, #linetable do                   --Parses the space before the second line                    
      if linetable[a] == "O" then
         count2exists = true
           cell = a
         break
      end
  
      cell = #linetable + 1
    end

if count2exists == true then                    --Parses the second line
  for a=cell, #linetable do                
  if linetable[a] == "O" then 
    count2 = count2  + 1    
  else
    cell = a
      break
    end 
  
  cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
         count3exists = true
         cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count3exists == true then                    --Parses the third line                  
  for a=cell, #linetable do
  if linetable[a] == "O" then   
    count3 = count3  + 1  
  else
      break
    end 
  
  cell = #linetable + 1
  end
end

end

function parse10x10()

  refnumbers = nil
  refnumbers = {0, 0, 0, 0, 0}

  numbersrow1 = nil
  numbersrow2 = nil
  numbersrow3 = nil
  numbersrow4 = nil
  numbersrow5 = nil
  numbersrow6 = nil
  numbersrow7 = nil
  numbersrow8 = nil
  numbersrow9 = nil
  numbersrow10 = nil

  numberscolumn1 = nil
  numberscolumn2 = nil
  numberscolumn3 = nil
  numberscolumn4 = nil
  numberscolumn5 = nil
  numberscolumn6 = nil
  numberscolumn7 = nil
  numberscolumn8 = nil
  numberscolumn9 = nil
  numberscolumn10 = nil

  parseline10(irow1)
     setnumbers10()
	   numbersrow1 = {unpack(refnumbers)}
	
  parseline10(irow2)
     setnumbers10()
	   numbersrow2 = {unpack(refnumbers)}
	
  parseline10(irow3)
     setnumbers10()
     numbersrow3 = {unpack(refnumbers)}
	 
  parseline10(irow4)
     setnumbers10()
	   numbersrow4 = {unpack(refnumbers)}
	
  parseline10(irow5)
     setnumbers10()
	   numbersrow5 = {unpack(refnumbers)}
	 
  parseline10(irow6)
     setnumbers10()
	   numbersrow6 = {unpack(refnumbers)}
	
  parseline10(irow7)
     setnumbers10()
	   numbersrow7 = {unpack(refnumbers)}
	
  parseline10(irow8)
     setnumbers10()
     numbersrow8 = {unpack(refnumbers)}
	 
  parseline10(irow9)
     setnumbers10()
	   numbersrow9 = {unpack(refnumbers)}
	
  parseline10(irow10)
     setnumbers10()
	   numbersrow10 = {unpack(refnumbers)}
	 
	 
	 
  icolumn1 = {irow1[1], irow2[1], irow3[1], irow4[1], irow5[1], irow6[1], irow7[1], irow8[1], irow9[1], irow10[1]}
  icolumn2 = {irow1[2], irow2[2], irow3[2], irow4[2], irow5[2], irow6[2], irow7[2], irow8[2], irow9[2], irow10[2]}
  icolumn3 = {irow1[3], irow2[3], irow3[3], irow4[3], irow5[3], irow6[3], irow7[3], irow8[3], irow9[3], irow10[3]}
  icolumn4 = {irow1[4], irow2[4], irow3[4], irow4[4], irow5[4], irow6[4], irow7[4], irow8[4], irow9[4], irow10[4]}
  icolumn5 = {irow1[5], irow2[5], irow3[5], irow4[5], irow5[5], irow6[5], irow7[5], irow8[5], irow9[5], irow10[5]}
  icolumn6 = {irow1[6], irow2[6], irow3[6], irow4[6], irow5[6], irow6[6], irow7[6], irow8[6], irow9[6], irow10[6]}
  icolumn7 = {irow1[7], irow2[7], irow3[7], irow4[7], irow5[7], irow6[7], irow7[7], irow8[7], irow9[7], irow10[7]}
  icolumn8 = {irow1[8], irow2[8], irow3[8], irow4[8], irow5[8], irow6[8], irow7[8], irow8[8], irow9[8], irow10[8]}
  icolumn9 = {irow1[9], irow2[9], irow3[9], irow4[9], irow5[9], irow6[9], irow7[9], irow8[9], irow9[9], irow10[9]}
  icolumn10 = {irow1[10], irow2[10], irow3[10], irow4[10], irow5[10], irow6[10], irow7[10], irow8[10], irow9[10], irow10[10]}
  
  
	 
  parseline10(icolumn1)
     setnumbers10()
	   numberscolumn1 = {unpack(refnumbers)}
	
  parseline10(icolumn2)
     setnumbers10()
	   numberscolumn2 = {unpack(refnumbers)}
	
  parseline10(icolumn3)
     setnumbers10()
     numberscolumn3 = {unpack(refnumbers)}
	 
  parseline10(icolumn4)
     setnumbers10()
	   numberscolumn4 = {unpack(refnumbers)}
	
  parseline10(icolumn5)
     setnumbers10()
	   numberscolumn5 = {unpack(refnumbers)}
	 
  parseline10(icolumn6)
     setnumbers10()
	   numberscolumn6 = {unpack(refnumbers)}
	
  parseline10(icolumn7)
     setnumbers10()
	   numberscolumn7 = {unpack(refnumbers)}
	
  parseline10(icolumn8)
     setnumbers10()
     numberscolumn8 = {unpack(refnumbers)}
	 
  parseline10(icolumn9)
     setnumbers10()
	   numberscolumn9 = {unpack(refnumbers)}
	
  parseline10(icolumn10)
     setnumbers10()
	   numberscolumn10 = {unpack(refnumbers)}

end

function parseline10(linetable)

  count1 = 0
  count2 = 0
  count3 = 0
	count4 = 0
	count5 = 0
	
  local cell

  count1exists = false
  count2exists = false
  count3exists = false
	count4exists = false
	count5exists = false

    for a=1, #linetable do                      --Parses the space before the first line                
      if linetable[a] == "O" then
	       count1exists = true
           cell = a
           break
      end
  
      cell = #linetable + 1
    end

for a=cell, #linetable do                       --Parses the first line  
    if linetable[a] == "O" then     
	   count1 = count1  + 1		
	else
	   cell = a
	   break
    end
	
	cell = #linetable + 1
end

    for a=cell, #linetable do                   --Parses the space before the second line                    
      if linetable[a] == "O" then
	       count2exists = true
           cell = a
	       break
      end
  
      cell = #linetable + 1
    end

if count2exists == true then                    --Parses the second line
  for a=cell, #linetable do                
	if linetable[a] == "O" then	
		count2 = count2  + 1		
	else
		cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count3exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count3exists == true then                    --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count3 = count3  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the fourth line
      if linetable[a] == "O" then
	       count4exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count4exists == true then                    --Parses the fourth line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count4 = count4  + 1	
	else
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the fifth line
      if linetable[a] == "O" then
	       count5exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count5exists == true then                    --Parses the fifth line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count5 = count5  + 1	
	else
	    break
    end	
	
	cell = #linetable + 1
  end
end

end

function parse15x15()

  refnumbers = nil
  refnumbers = {0, 0, 0, 0, 0, 0, 0, 0}

  numbersrow1 = nil
  numbersrow2 = nil
  numbersrow3 = nil
  numbersrow4 = nil
  numbersrow5 = nil
  numbersrow6 = nil
  numbersrow7 = nil
  numbersrow8 = nil
  numbersrow9 = nil
  numbersrow10 = nil
  numbersrow11 = nil
  numbersrow12 = nil
  numbersrow13 = nil
  numbersrow14 = nil
  numbersrow15 = nil

  numberscolumn1 = nil
  numberscolumn2 = nil
  numberscolumn3 = nil
  numberscolumn4 = nil
  numberscolumn5 = nil
  numberscolumn6 = nil
  numberscolumn7 = nil
  numberscolumn8 = nil
  numberscolumn9 = nil
  numberscolumn10 = nil
  numberscolumn11 = nil
  numberscolumn12 = nil
  numberscolumn13 = nil
  numberscolumn14 = nil
  numberscolumn15 = nil

  parseline15(irow1)
     setnumbers15()
	   numbersrow1 = {unpack(refnumbers)}
	
  parseline15(irow2)
     setnumbers15()
	   numbersrow2 = {unpack(refnumbers)}
	
  parseline15(irow3)
     setnumbers15()
     numbersrow3 = {unpack(refnumbers)}
	 
  parseline15(irow4)
     setnumbers15()
	   numbersrow4 = {unpack(refnumbers)}
	
  parseline15(irow5)
     setnumbers15()
	   numbersrow5 = {unpack(refnumbers)}
	 
  parseline15(irow6)
     setnumbers15()
	   numbersrow6 = {unpack(refnumbers)}
	
  parseline15(irow7)
     setnumbers15()
	   numbersrow7 = {unpack(refnumbers)}
	
  parseline15(irow8)
     setnumbers15()
     numbersrow8 = {unpack(refnumbers)}
	 
  parseline15(irow9)
     setnumbers15()
	   numbersrow9 = {unpack(refnumbers)}
	
  parseline15(irow10)
     setnumbers15()
	   numbersrow10 = {unpack(refnumbers)}
	 
  parseline15(irow11)
     setnumbers15()
	   numbersrow11 = {unpack(refnumbers)}
	 
  parseline15(irow12)
     setnumbers15()
	   numbersrow12 = {unpack(refnumbers)}
	 
  parseline15(irow13)
     setnumbers15()
	   numbersrow13 = {unpack(refnumbers)}
	 
  parseline15(irow14)
     setnumbers15()
	   numbersrow14 = {unpack(refnumbers)}
	 
  parseline15(irow15)
     setnumbers15()
	   numbersrow15 = {unpack(refnumbers)}
	 
  icolumn1 = {irow1[1], irow2[1], irow3[1], irow4[1], irow5[1], irow6[1], irow7[1], irow8[1], irow9[1], irow10[1], irow11[1], irow12[1], irow13[1], irow14[1], irow15[1]}
  icolumn2 = {irow1[2], irow2[2], irow3[2], irow4[2], irow5[2], irow6[2], irow7[2], irow8[2], irow9[2], irow10[2], irow11[2], irow12[2], irow13[2], irow14[2], irow15[2]}
  icolumn3 = {irow1[3], irow2[3], irow3[3], irow4[3], irow5[3], irow6[3], irow7[3], irow8[3], irow9[3], irow10[3], irow11[3], irow12[3], irow13[3], irow14[3], irow15[3]}
  icolumn4 = {irow1[4], irow2[4], irow3[4], irow4[4], irow5[4], irow6[4], irow7[4], irow8[4], irow9[4], irow10[4], irow11[4], irow12[4], irow13[4], irow14[4], irow15[4]}
  icolumn5 = {irow1[5], irow2[5], irow3[5], irow4[5], irow5[5], irow6[5], irow7[5], irow8[5], irow9[5], irow10[5], irow11[5], irow12[5], irow13[5], irow14[5], irow15[5]}
  icolumn6 = {irow1[6], irow2[6], irow3[6], irow4[6], irow5[6], irow6[6], irow7[6], irow8[6], irow9[6], irow10[6], irow11[6], irow12[6], irow13[6], irow14[6], irow15[6]}
  icolumn7 = {irow1[7], irow2[7], irow3[7], irow4[7], irow5[7], irow6[7], irow7[7], irow8[7], irow9[7], irow10[7], irow11[7], irow12[7], irow13[7], irow14[7], irow15[7]}
  icolumn8 = {irow1[8], irow2[8], irow3[8], irow4[8], irow5[8], irow6[8], irow7[8], irow8[8], irow9[8], irow10[8], irow11[8], irow12[8], irow13[8], irow14[8], irow15[8]}
  icolumn9 = {irow1[9], irow2[9], irow3[9], irow4[9], irow5[9], irow6[9], irow7[9], irow8[9], irow9[9], irow10[9], irow11[9], irow12[9], irow13[9], irow14[9], irow15[9]}
  icolumn10 = {irow1[10], irow2[10], irow3[10], irow4[10], irow5[10], irow6[10], irow7[10], irow8[10], irow9[10], irow10[10], irow11[10], irow12[10], irow13[10], irow14[10], irow15[10]}
  icolumn11 = {irow1[11], irow2[11], irow3[11], irow4[11], irow5[11], irow6[11], irow7[11], irow8[11], irow9[11], irow10[11], irow11[11], irow12[11], irow13[11], irow14[11], irow15[11]}
  icolumn12 = {irow1[12], irow2[12], irow3[12], irow4[12], irow5[12], irow6[12], irow7[12], irow8[12], irow9[12], irow10[12], irow11[12], irow12[12], irow13[12], irow14[12], irow15[12]}
  icolumn13 = {irow1[13], irow2[13], irow3[13], irow4[13], irow5[13], irow6[13], irow7[13], irow8[13], irow9[13], irow10[13], irow11[13], irow12[13], irow13[13], irow14[13], irow15[13]}
  icolumn14 = {irow1[14], irow2[14], irow3[14], irow4[14], irow5[14], irow6[14], irow7[14], irow8[14], irow9[14], irow10[14], irow11[14], irow12[14], irow13[14], irow14[14], irow15[14]}
  icolumn15 = {irow1[15], irow2[15], irow3[15], irow4[15], irow5[15], irow6[15], irow7[15], irow8[15], irow9[15], irow10[15], irow11[15], irow12[15], irow13[15], irow14[15], irow15[15]}

  parseline15(icolumn1)
     setnumbers15()
	   numberscolumn1 = {unpack(refnumbers)}
	
  parseline15(icolumn2)
     setnumbers15()
	   numberscolumn2 = {unpack(refnumbers)}
	
  parseline15(icolumn3)
     setnumbers15()
     numberscolumn3 = {unpack(refnumbers)}
	 
  parseline15(icolumn4)
     setnumbers15()
	   numberscolumn4 = {unpack(refnumbers)}
	
  parseline15(icolumn5)
     setnumbers15()
	   numberscolumn5 = {unpack(refnumbers)}
	 
  parseline15(icolumn6)
     setnumbers15()
	   numberscolumn6 = {unpack(refnumbers)}
	
  parseline15(icolumn7)
     setnumbers15()
	   numberscolumn7 = {unpack(refnumbers)}
	
  parseline15(icolumn8)
     setnumbers15()
     numberscolumn8 = {unpack(refnumbers)}
	 
  parseline15(icolumn9)
     setnumbers15()
	   numberscolumn9 = {unpack(refnumbers)}
	
  parseline15(icolumn10)
     setnumbers15()
	   numberscolumn10 = {unpack(refnumbers)}
	 
  parseline15(icolumn11)
     setnumbers15()
	   numberscolumn11 = {unpack(refnumbers)}
	 
  parseline15(icolumn12)
     setnumbers15()
	   numberscolumn12 = {unpack(refnumbers)}
	 
  parseline15(icolumn13)
     setnumbers15()
	   numberscolumn13 = {unpack(refnumbers)}
	 
  parseline15(icolumn14)
     setnumbers15()
	   numberscolumn14 = {unpack(refnumbers)}
	 
  parseline15(icolumn15)
     setnumbers15()
	   numberscolumn15 = {unpack(refnumbers)}
  
end

function parseline15(linetable)

  count1 = 0
  count2 = 0
  count3 = 0
	count4 = 0
	count5 = 0
	count6 = 0
	count7 = 0
	count8 = 0
	
  local cell

  count1exists = false
  count2exists = false
  count3exists = false
	count4exists = false
	count5exists = false
	count6exists = false
	count7exists = false
	count8exists = false

    for a=1, #linetable do                      --Parses the space before the first line                
      if linetable[a] == "O" then
	       count1exists = true
           cell = a
           break
      end
  
      cell = #linetable + 1
    end

for a=cell, #linetable do                       --Parses the first line  
    if linetable[a] == "O" then     
	   count1 = count1  + 1		
	else
	   cell = a
	   break
    end
	
	cell = #linetable + 1
end

    for a=cell, #linetable do                   --Parses the space before the second line                    
      if linetable[a] == "O" then
	       count2exists = true
           cell = a
	       break
      end
  
      cell = #linetable + 1
    end

if count2exists == true then                       --Parses the second line
  for a=cell, #linetable do                
	if linetable[a] == "O" then	
		count2 = count2  + 1		
	else
		cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count3exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count3exists == true then                       --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count3 = count3  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count4exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count4exists == true then                       --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count4 = count4  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count5exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count5exists == true then                       --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count5 = count5  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count6exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count6exists == true then                       --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count6 = count6  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count7exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count7exists == true then                       --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count7 = count7  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

    for a=cell, #linetable do                   --Parses the space before the third line
      if linetable[a] == "O" then
	       count8exists = true
	       cell = a
           break
      end
  
      cell = #linetable + 1
    end

if count8exists == true then                       --Parses the third line                  
  for a=cell, #linetable do
	if linetable[a] == "O" then		
		count8 = count8  + 1	
	else
	    cell = a
	    break
    end	
	
	cell = #linetable + 1
  end
end

end

function setnumbers5()

      if count2exists == true then                       --Sets the numbers
         if count3exists == true then
           refnumbers = {count1,count2,count3}
         else
           refnumbers = {count1,count2,-1}
         end
      else
         refnumbers = {count1,-1,-1}
      end
    
end

function setnumbers10()

      if count2exists == true then                       --Sets the numbers
        if count3exists == true then
		      if count4exists == true then
            if count5exists == true then
              refnumbers = {count1,count2,count3,count4,count5}
            else
              refnumbers = {count1,count2,count3,count4,-1}
            end
          else
            refnumbers = {count1,count2,count3,-1,-1}
          end
        else
          refnumbers = {count1,count2,-1,-1,-1}
        end
      else
         refnumbers = {count1,-1,-1,-1,-1}
      end
	  
end

function setnumbers15()

      if count2exists == true then                       --Sets the numbers
        if count3exists == true then
		      if count4exists == true then
            if count5exists == true then
					    if count6exists == true then
						    if count7exists == true then
							    if count8exists == true then
								    refnumbers = {count1,count2,count3,count4,count5,count6,count7,count8}
								  else
								    refnumbers = {count1,count2,count3,count4,count5,count6,count7,-1}
								  end
						    else
							    refnumbers = {count1,count2,count3,count4,count5,count6,-1,-1}
							  end
					    else
                refnumbers = {count1,count2,count3,count4,count5,-1,-1,-1}
					    end
            else
              refnumbers = {count1,count2,count3,count4,-1,-1,-1,-1}
            end
          else
            refnumbers = {count1,count2,count3,-1,-1,-1,-1,-1}
          end
        else
          refnumbers = {count1,count2,-1,-1,-1,-1,-1,-1}
        end
      else
         refnumbers = {count1,-1,-1,-1,-1,-1,-1,-1}
      end
	  
end