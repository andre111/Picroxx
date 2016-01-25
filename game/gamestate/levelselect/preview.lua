function loadlevelpreviews()

    loadlevelsplash(level1a)
    loadlevelsplash(level1b)
    loadlevelsplash(level1c)
    loadlevelsplash(level1d)
    loadlevelsplash(level1e)
    loadlevelsplash(level1f)
    loadlevelsplash(level1g)
    loadlevelsplash(level1h)

    loadlevelsplash(level2a)
    loadlevelsplash(level2b)
    loadlevelsplash(level2c)
    loadlevelsplash(level2d)
    loadlevelsplash(level2e)
    loadlevelsplash(level2f)
    loadlevelsplash(level2g)
    loadlevelsplash(level2h)

    loadlevelsplash(level3a)
    loadlevelsplash(level3b)
    loadlevelsplash(level3c)
    loadlevelsplash(level3d)
    loadlevelsplash(level3e)
    loadlevelsplash(level3f)
    loadlevelsplash(level3g)
    loadlevelsplash(level3h)

    loadlevelsplash(level4a)
    loadlevelsplash(level4b)
    loadlevelsplash(level4c)
    loadlevelsplash(level4d)
    loadlevelsplash(level4e)
    loadlevelsplash(level4f)
    loadlevelsplash(level4g)
    loadlevelsplash(level4h)

    loadlevelsplash(level5a)
    loadlevelsplash(level5b)
    loadlevelsplash(level5c)
    loadlevelsplash(level5d)
    loadlevelsplash(level5e)
    loadlevelsplash(level5f)
    loadlevelsplash(level5g)
    loadlevelsplash(level5h)

    loadlevelsplash(level6a)
    loadlevelsplash(level6b)
    loadlevelsplash(level6c)
    loadlevelsplash(level6d)
    loadlevelsplash(level6e)
    loadlevelsplash(level6f)
    loadlevelsplash(level6g)
    loadlevelsplash(level6h)

    loadlevelsplash(level7a)
    loadlevelsplash(level7b)
    loadlevelsplash(level7c)
    loadlevelsplash(level7d)
    loadlevelsplash(level7e)
    loadlevelsplash(level7f)
    loadlevelsplash(level7g)
    loadlevelsplash(level7h)

    loadlevelsplash(level8a)
    loadlevelsplash(level8b)
    loadlevelsplash(level8c)
    loadlevelsplash(level8d)
    loadlevelsplash(level8e)
    loadlevelsplash(level8f)
    loadlevelsplash(level8g)
    loadlevelsplash(level8h)

end

function loadlevelsplash(leveltoload)

    if leveltoload.completed == true then
        leveltoload.splash = love.graphics.newImage(leveltoload.preview)
    end

end