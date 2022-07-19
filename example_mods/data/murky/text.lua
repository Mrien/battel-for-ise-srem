function onCreatePost()
    makeLuaText("songComposer", "Composed by morry", 500, 30, 70)
    setTextAlignment("songComposer", "left")
    addLuaText("songComposer")

    makeLuaText("engineText", "Ron Engine (Modified PE "..version..")", 500, 30, 50)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('songComposer.y', 680)
        setProperty('engineText.y', 660)
    end
end