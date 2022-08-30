function onCreatePost() --script made by impostor, credit me now or i will do an unfunny
    if difficulty == 6 then
        makeLuaText("message2", "Cool guy mode", 500, 30, 90)
        setTextAlignment("message2", "left")
        addLuaText("message2")

        makeLuaText("message", "This isn't a certified hood classic", 500, 30, 70)
        setTextAlignment("message", "left")
        addLuaText("message")
     
        makeLuaText("engineText", "Ice Cream Engine (PE "..version..")", 500, 30, 50)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")

        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            setProperty('message2.y', 680)
            setProperty('message.y', 620)
            setProperty('engineText.y', 600)
        end
    else 
        makeLuaText("message", "This is a certified hood classic", 500, 30, 70)
        setTextAlignment("message", "left")
        addLuaText("message")
     
        makeLuaText("engineText", "Ice Cream Engine (PE "..version..")", 500, 30, 50)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")

        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            setProperty('message.y', 680)
            setProperty('engineText.y', 660)
        end
    end
end
