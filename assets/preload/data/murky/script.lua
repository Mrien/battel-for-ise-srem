function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.005 then
        setProperty('health', health- 0.005);
    end
end
