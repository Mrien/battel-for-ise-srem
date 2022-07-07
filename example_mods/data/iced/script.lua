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
     
        makeLuaText("message", "Ron Engine (Modified PE "..version..")", 500, 30, 50)
        setTextAlignment("message", "left")
        addLuaText("message")

        makeLuaText("engineText", "Iced Cool - VS Ron: TBFTIC", 500, 30, 30)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")

        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            setProperty('message3.y', 680)
            setProperty('message2.y', 660)
            setProperty('songComposer.y', 640)
            setProperty('message.y', 620)
            setProperty('engineText.y', 600)
        end
    else 
        makeLuaText("songComposer", "Composed by morry", 500, 30, 70)
        setTextAlignment("songComposer", "left")
        addLuaText("songComposer")
     
        makeLuaText("message", "Ron Engine (Modified PE "..version..")", 500, 30, 50)
        setTextAlignment("message", "left")
        addLuaText("message")

        makeLuaText("engineText", "Iced - VS Ron: TBFTIC", 500, 30, 30)
        setTextAlignment("engineText", "left")
        addLuaText("engineText")

        if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
            setProperty('songComposer.y', 680)
            setProperty('message.y', 660)
            setProperty('engineText.y', 640)
        end
    end
end

function onUpdate(elapsed) --thanks gumbalino for helping me with this
    if dadName == 'ron' then --replace the name for your character name
        for i=0,4,1 do
            setPropertyFromGroup('opponentStrums', i, 'texture', 'ronsip')
        end
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'ronsip'); --Change texture
            end
        end
    end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.01 then
        setProperty('health', health- 0.01);
    end
end
