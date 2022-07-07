function onCreatePost()
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
