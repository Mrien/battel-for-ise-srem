function onCreatePost()
    makeLuaText("composer", ""..songName.." "..difficultyName.." - By Hipix", 500, 30, 70)
    setTextAlignment("composer", "left")
    addLuaText("composer")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('composer.y', 680)
    end
end
