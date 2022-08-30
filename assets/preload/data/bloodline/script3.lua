function onCreatePost()
    makeLuaText("message", "OH NO", 500, 30, 70)
    setTextAlignment("message", "left")
    addLuaText("message")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
    end
end