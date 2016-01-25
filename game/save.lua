--The code for this is pretty weird so i'll explain it.
--Each course.lua file contains the location of a save.lua file in the same directory.
--A different one is used for each course, to make support for custom courses (in the future) a bit easier.
--When a course is loaded, the save.lua is read, and the variables are saved for when a puzzle is completed.
--It's done this way because the file gets wiped when a puzzle is completed and rewritten, but changing one
--of the variables (corresponding of the level you're playing) to true.

savedata = {}

function savedata.read()
 
 local savegame = io.open(savefile, "r")
 
 if savegame == nil then
	savedata.create()
 end
 
 dofile(savefile)

end

function savedata.write()

 local savegame = io.open(savefile, "w")
 
 --Booleans are not strings.
 
 local level1aS if level1a.completed == true then level1aS = "true" else level1aS = "false" end
 local level1bS if level1b.completed == true then level1bS = "true" else level1bS = "false" end
 local level1cS if level1c.completed == true then level1cS = "true" else level1cS = "false" end
 local level1dS if level1d.completed == true then level1dS = "true" else level1dS = "false" end
 local level1eS if level1e.completed == true then level1eS = "true" else level1eS = "false" end
 local level1fS if level1f.completed == true then level1fS = "true" else level1fS = "false" end
 local level1gS if level1g.completed == true then level1gS = "true" else level1gS = "false" end
 local level1hS if level1h.completed == true then level1hS = "true" else level1hS = "false" end

 local level2aS if level2a.completed == true then level2aS = "true" else level2aS = "false" end
 local level2bS if level2b.completed == true then level2bS = "true" else level2bS = "false" end
 local level2cS if level2c.completed == true then level2cS = "true" else level2cS = "false" end
 local level2dS if level2d.completed == true then level2dS = "true" else level2dS = "false" end
 local level2eS if level2e.completed == true then level2eS = "true" else level2eS = "false" end
 local level2fS if level2f.completed == true then level2fS = "true" else level2fS = "false" end
 local level2gS if level2g.completed == true then level2gS = "true" else level2gS = "false" end
 local level2hS if level2h.completed == true then level2hS = "true" else level2hS = "false" end

 local level3aS if level3a.completed == true then level3aS = "true" else level3aS = "false" end
 local level3bS if level3b.completed == true then level3bS = "true" else level3bS = "false" end
 local level3cS if level3c.completed == true then level3cS = "true" else level3cS = "false" end
 local level3dS if level3d.completed == true then level3dS = "true" else level3dS = "false" end
 local level3eS if level3e.completed == true then level3eS = "true" else level3eS = "false" end
 local level3fS if level3f.completed == true then level3fS = "true" else level3fS = "false" end
 local level3gS if level3g.completed == true then level3gS = "true" else level3gS = "false" end
 local level3hS if level3h.completed == true then level3hS = "true" else level3hS = "false" end

 local level4aS if level4a.completed == true then level4aS = "true" else level4aS = "false" end
 local level4bS if level4b.completed == true then level4bS = "true" else level4bS = "false" end
 local level4cS if level4c.completed == true then level4cS = "true" else level4cS = "false" end
 local level4dS if level4d.completed == true then level4dS = "true" else level4dS = "false" end
 local level4eS if level4e.completed == true then level4eS = "true" else level4eS = "false" end
 local level4fS if level4f.completed == true then level4fS = "true" else level4fS = "false" end
 local level4gS if level4g.completed == true then level4gS = "true" else level4gS = "false" end
 local level4hS if level4h.completed == true then level4hS = "true" else level4hS = "false" end

 local level5aS if level5a.completed == true then level5aS = "true" else level5aS = "false" end
 local level5bS if level5b.completed == true then level5bS = "true" else level5bS = "false" end
 local level5cS if level5c.completed == true then level5cS = "true" else level5cS = "false" end
 local level5dS if level5d.completed == true then level5dS = "true" else level5dS = "false" end
 local level5eS if level5e.completed == true then level5eS = "true" else level5eS = "false" end
 local level5fS if level5f.completed == true then level5fS = "true" else level5fS = "false" end
 local level5gS if level5g.completed == true then level5gS = "true" else level5gS = "false" end
 local level5hS if level5h.completed == true then level5hS = "true" else level5hS = "false" end

 local level6aS if level6a.completed == true then level6aS = "true" else level6aS = "false" end
 local level6bS if level6b.completed == true then level6bS = "true" else level6bS = "false" end
 local level6cS if level6c.completed == true then level6cS = "true" else level6cS = "false" end
 local level6dS if level6d.completed == true then level6dS = "true" else level6dS = "false" end
 local level6eS if level6e.completed == true then level6eS = "true" else level6eS = "false" end
 local level6fS if level6f.completed == true then level6fS = "true" else level6fS = "false" end
 local level6gS if level6g.completed == true then level6gS = "true" else level6gS = "false" end
 local level6hS if level6h.completed == true then level6hS = "true" else level6hS = "false" end

 local level7aS if level7a.completed == true then level7aS = "true" else level7aS = "false" end
 local level7bS if level7b.completed == true then level7bS = "true" else level7bS = "false" end
 local level7cS if level7c.completed == true then level7cS = "true" else level7cS = "false" end
 local level7dS if level7d.completed == true then level7dS = "true" else level7dS = "false" end
 local level7eS if level7e.completed == true then level7eS = "true" else level7eS = "false" end
 local level7fS if level7f.completed == true then level7fS = "true" else level7fS = "false" end
 local level7gS if level7g.completed == true then level7gS = "true" else level7gS = "false" end
 local level7hS if level7h.completed == true then level7hS = "true" else level7hS = "false" end

 local level8aS if level8a.completed == true then level8aS = "true" else level8aS = "false" end
 local level8bS if level8b.completed == true then level8bS = "true" else level8bS = "false" end
 local level8cS if level8c.completed == true then level8cS = "true" else level8cS = "false" end
 local level8dS if level8d.completed == true then level8dS = "true" else level8dS = "false" end
 local level8eS if level8e.completed == true then level8eS = "true" else level8eS = "false" end
 local level8fS if level8f.completed == true then level8fS = "true" else level8fS = "false" end
 local level8gS if level8g.completed == true then level8gS = "true" else level8gS = "false" end
 local level8hS if level8h.completed == true then level8hS = "true" else level8hS = "false" end
 
 savegame:write("level1a.completed = "..level1aS, "\n")
 savegame:write("level1b.completed = "..level1bS, "\n")
 savegame:write("level1c.completed = "..level1cS, "\n")
 savegame:write("level1d.completed = "..level1dS, "\n")
 savegame:write("level1e.completed = "..level1eS, "\n")
 savegame:write("level1f.completed = "..level1fS, "\n")
 savegame:write("level1g.completed = "..level1gS, "\n")
 savegame:write("level1h.completed = "..level1hS, "\n")

 savegame:write("", "\n")

 savegame:write("level2a.completed = "..level2aS, "\n")
 savegame:write("level2b.completed = "..level2bS, "\n")
 savegame:write("level2c.completed = "..level2cS, "\n")
 savegame:write("level2d.completed = "..level2dS, "\n")
 savegame:write("level2e.completed = "..level2eS, "\n")
 savegame:write("level2f.completed = "..level2fS, "\n")
 savegame:write("level2g.completed = "..level2gS, "\n")
 savegame:write("level2h.completed = "..level2hS, "\n")

 savegame:write("", "\n")

 savegame:write("level3a.completed = "..level3aS, "\n")
 savegame:write("level3b.completed = "..level3bS, "\n")
 savegame:write("level3c.completed = "..level3cS, "\n")
 savegame:write("level3d.completed = "..level3dS, "\n")
 savegame:write("level3e.completed = "..level3eS, "\n")
 savegame:write("level3f.completed = "..level3fS, "\n")
 savegame:write("level3g.completed = "..level3gS, "\n")
 savegame:write("level3h.completed = "..level3hS, "\n")

 savegame:write("", "\n")

 savegame:write("level4a.completed = "..level4aS, "\n")
 savegame:write("level4b.completed = "..level4bS, "\n")
 savegame:write("level4c.completed = "..level4cS, "\n")
 savegame:write("level4d.completed = "..level4dS, "\n")
 savegame:write("level4e.completed = "..level4eS, "\n")
 savegame:write("level4f.completed = "..level4fS, "\n")
 savegame:write("level4g.completed = "..level4gS, "\n")
 savegame:write("level4h.completed = "..level4hS, "\n")
 
 savegame:write("", "\n")

 savegame:write("level5a.completed = "..level5aS, "\n")
 savegame:write("level5b.completed = "..level5bS, "\n")
 savegame:write("level5c.completed = "..level5cS, "\n")
 savegame:write("level5d.completed = "..level5dS, "\n")
 savegame:write("level5e.completed = "..level5eS, "\n")
 savegame:write("level5f.completed = "..level5fS, "\n")
 savegame:write("level5g.completed = "..level5gS, "\n")
 savegame:write("level5h.completed = "..level5hS, "\n")

 savegame:write("", "\n")

 savegame:write("level6a.completed = "..level6aS, "\n")
 savegame:write("level6b.completed = "..level6bS, "\n")
 savegame:write("level6c.completed = "..level6cS, "\n")
 savegame:write("level6d.completed = "..level6dS, "\n")
 savegame:write("level6e.completed = "..level6eS, "\n")
 savegame:write("level6f.completed = "..level6fS, "\n")
 savegame:write("level6g.completed = "..level6gS, "\n")
 savegame:write("level6h.completed = "..level6hS, "\n")

 savegame:write("", "\n")

 savegame:write("level7a.completed = "..level7aS, "\n")
 savegame:write("level7b.completed = "..level7bS, "\n")
 savegame:write("level7c.completed = "..level7cS, "\n")
 savegame:write("level7d.completed = "..level7dS, "\n")
 savegame:write("level7e.completed = "..level7eS, "\n")
 savegame:write("level7f.completed = "..level7fS, "\n")
 savegame:write("level7g.completed = "..level7gS, "\n")
 savegame:write("level7h.completed = "..level7hS, "\n")

 savegame:write("", "\n")

 savegame:write("level8a.completed = "..level8aS, "\n")
 savegame:write("level8b.completed = "..level8bS, "\n")
 savegame:write("level8c.completed = "..level8cS, "\n")
 savegame:write("level8d.completed = "..level8dS, "\n")
 savegame:write("level8e.completed = "..level8eS, "\n")
 savegame:write("level8f.completed = "..level8fS, "\n")
 savegame:write("level8g.completed = "..level8gS, "\n")
 savegame:write("level8h.completed = "..level8hS, "\n")

 io.close(savegame)

end

function savedata.levelcleared()
  
  if leveltosave == "level1a" then level1a.completed = true end
  if leveltosave == "level1b" then level1b.completed = true end
  if leveltosave == "level1c" then level1c.completed = true end
  if leveltosave == "level1d" then level1d.completed = true end
  if leveltosave == "level1e" then level1e.completed = true end
  if leveltosave == "level1f" then level1f.completed = true end
  if leveltosave == "level1g" then level1g.completed = true end
  if leveltosave == "level1h" then level1h.completed = true end
  
  if leveltosave == "level2a" then level2a.completed = true end
  if leveltosave == "level2b" then level2b.completed = true end
  if leveltosave == "level2c" then level2c.completed = true end
  if leveltosave == "level2d" then level2d.completed = true end
  if leveltosave == "level2e" then level2e.completed = true end
  if leveltosave == "level2f" then level2f.completed = true end
  if leveltosave == "level2g" then level2g.completed = true end
  if leveltosave == "level2h" then level2h.completed = true end
  
  if leveltosave == "level3a" then level3a.completed = true end
  if leveltosave == "level3b" then level3b.completed = true end
  if leveltosave == "level3c" then level3c.completed = true end
  if leveltosave == "level3d" then level3d.completed = true end
  if leveltosave == "level3e" then level3e.completed = true end
  if leveltosave == "level3f" then level3f.completed = true end
  if leveltosave == "level3g" then level3g.completed = true end
  if leveltosave == "level3h" then level3h.completed = true end
  
  if leveltosave == "level4a" then level4a.completed = true end
  if leveltosave == "level4b" then level4b.completed = true end
  if leveltosave == "level4c" then level4c.completed = true end
  if leveltosave == "level4d" then level4d.completed = true end
  if leveltosave == "level4e" then level4e.completed = true end
  if leveltosave == "level4f" then level4f.completed = true end
  if leveltosave == "level4g" then level4g.completed = true end
  if leveltosave == "level4h" then level4h.completed = true end
  
  if leveltosave == "level5a" then level5a.completed = true end
  if leveltosave == "level5b" then level5b.completed = true end
  if leveltosave == "level5c" then level5c.completed = true end
  if leveltosave == "level5d" then level5d.completed = true end
  if leveltosave == "level5e" then level5e.completed = true end
  if leveltosave == "level5f" then level5f.completed = true end
  if leveltosave == "level5g" then level5g.completed = true end
  if leveltosave == "level5h" then level5h.completed = true end
  
  if leveltosave == "level6a" then level6a.completed = true end
  if leveltosave == "level6b" then level6b.completed = true end
  if leveltosave == "level6c" then level6c.completed = true end
  if leveltosave == "level6d" then level6d.completed = true end
  if leveltosave == "level6e" then level6e.completed = true end
  if leveltosave == "level6f" then level6f.completed = true end
  if leveltosave == "level6g" then level6g.completed = true end
  if leveltosave == "level6h" then level6h.completed = true end
  
  if leveltosave == "level7a" then level7a.completed = true end
  if leveltosave == "level7b" then level7b.completed = true end
  if leveltosave == "level7c" then level7c.completed = true end
  if leveltosave == "level7d" then level7d.completed = true end
  if leveltosave == "level7e" then level7e.completed = true end
  if leveltosave == "level7f" then level7f.completed = true end
  if leveltosave == "level7g" then level7g.completed = true end
  if leveltosave == "level7h" then level7h.completed = true end
  
  if leveltosave == "level8a" then level8a.completed = true end
  if leveltosave == "level8b" then level8b.completed = true end
  if leveltosave == "level8c" then level8c.completed = true end
  if leveltosave == "level8d" then level8d.completed = true end
  if leveltosave == "level8e" then level8e.completed = true end
  if leveltosave == "level8f" then level8f.completed = true end
  if leveltosave == "level8g" then level8g.completed = true end
  if leveltosave == "level8h" then level8h.completed = true end
  
end

function savedata.create()

  local savegame = io.open(savefile, "w")
  
  savegame:write("level1a.completed = ".."false", "\n")
  savegame:write("level1b.completed = ".."false", "\n")
  savegame:write("level1c.completed = ".."false", "\n")
  savegame:write("level1d.completed = ".."false", "\n")
  savegame:write("level1e.completed = ".."false", "\n")
  savegame:write("level1f.completed = ".."false", "\n")
  savegame:write("level1g.completed = ".."false", "\n")
  savegame:write("level1h.completed = ".."false", "\n")
  
  savegame:write("", "\n")

  savegame:write("level2a.completed = ".."false", "\n")
  savegame:write("level2b.completed = ".."false", "\n")
  savegame:write("level2c.completed = ".."false", "\n")
  savegame:write("level2d.completed = ".."false", "\n")
  savegame:write("level2e.completed = ".."false", "\n")
  savegame:write("level2f.completed = ".."false", "\n")
  savegame:write("level2g.completed = ".."false", "\n")
  savegame:write("level2h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level3a.completed = ".."false", "\n")
  savegame:write("level3b.completed = ".."false", "\n")
  savegame:write("level3c.completed = ".."false", "\n")
  savegame:write("level3d.completed = ".."false", "\n")
  savegame:write("level3e.completed = ".."false", "\n")
  savegame:write("level3f.completed = ".."false", "\n")
  savegame:write("level3g.completed = ".."false", "\n")
  savegame:write("level3h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level4a.completed = ".."false", "\n")
  savegame:write("level4b.completed = ".."false", "\n")
  savegame:write("level4c.completed = ".."false", "\n")
  savegame:write("level4d.completed = ".."false", "\n")
  savegame:write("level4e.completed = ".."false", "\n")
  savegame:write("level4f.completed = ".."false", "\n")
  savegame:write("level4g.completed = ".."false", "\n")
  savegame:write("level4h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level5a.completed = ".."false", "\n")
  savegame:write("level5b.completed = ".."false", "\n")
  savegame:write("level5c.completed = ".."false", "\n")
  savegame:write("level5d.completed = ".."false", "\n")
  savegame:write("level5e.completed = ".."false", "\n")
  savegame:write("level5f.completed = ".."false", "\n")
  savegame:write("level5g.completed = ".."false", "\n")
  savegame:write("level5h.completed = ".."false", "\n")
  
  savegame:write("", "\n")

  savegame:write("level6a.completed = ".."false", "\n")
  savegame:write("level6b.completed = ".."false", "\n")
  savegame:write("level6c.completed = ".."false", "\n")
  savegame:write("level6d.completed = ".."false", "\n")
  savegame:write("level6e.completed = ".."false", "\n")
  savegame:write("level6f.completed = ".."false", "\n")
  savegame:write("level6g.completed = ".."false", "\n")
  savegame:write("level6h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level7a.completed = ".."false", "\n")
  savegame:write("level7b.completed = ".."false", "\n")
  savegame:write("level7c.completed = ".."false", "\n")
  savegame:write("level7d.completed = ".."false", "\n")
  savegame:write("level7e.completed = ".."false", "\n")
  savegame:write("level7f.completed = ".."false", "\n")
  savegame:write("level7g.completed = ".."false", "\n")
  savegame:write("level7h.completed = ".."false", "\n")

  savegame:write("", "\n")

  savegame:write("level8a.completed = ".."false", "\n")
  savegame:write("level8b.completed = ".."false", "\n")
  savegame:write("level8c.completed = ".."false", "\n")
  savegame:write("level8d.completed = ".."false", "\n")
  savegame:write("level8e.completed = ".."false", "\n")
  savegame:write("level8f.completed = ".."false", "\n")
  savegame:write("level8g.completed = ".."false", "\n")
  savegame:write("level8h.completed = ".."false", "\n")
  
  io.close(savegame)

end