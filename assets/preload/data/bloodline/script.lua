function onCreatePost()
    if difficulty == 3 then
        makeLuaText("message3", "YOU WILL PERISH", 500, 30, 110)
        setTextAlignment("message3", "left")
        addLuaText("message3")

        makeLuaText("message2", "Cool guy mode", 500, 30, 90)
        setTextAlignment("message2", "left")
        addLuaText("message2")

        makeLuaText("songComposer", "Composed by morry", 500, 30, 70)
        setTextAlignment("songComposer", "left")
        addLuaText("songComposer")
     
        makeLuaText("engineText", "Ron Engine (Modified PE "..version..")", 500, 30, 50)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")

        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            setProperty('message3.y', 680)
            setProperty('message2.y', 660)
            setProperty('songComposer.y', 640)
            setProperty('engineText.y', 620)
        end
    else 
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
end