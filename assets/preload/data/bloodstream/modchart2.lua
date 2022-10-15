function onSongStart()
    function onUpdate()
        doTweenAngle('turn', 'camHUD', math.cos(curBeat) * 89, 3, 'linear')
        doTweenAngle('turngame', 'camGame', math.cos(curBeat) * 100, 3, 'linear')
        if curBeat >= 280 then
            setPropertyFromClass("openfl.Lib", "application.window.x", defaultWindowPos[1] + WinmovementAmount * math.sin(((getSongPosition() / 1000)*(bpm/60) * Windowspeed) * math.pi))
            setPropertyFromClass("openfl.Lib", "application.window.y", defaultWindowPos[2] + WinmovementAmount * math.cos(((getSongPosition() / 1000)*(bpm/60) * Windowspeed) * math.pi))
            setPropertyFromClass("flixel.FlxG", "fullscreen", false)
            setPropertyFromClass("openfl.Lib", "application.window.title", "BloodStream: I hate you")
        if curBeat >= 547 then
            setPropertyFromClass("openfl.Lib", "application.window.x", math.random( 5, 10))
            setPropertyFromClass("openfl.Lib", "application.window.y", math.random( 5, 10))
            setPropertyFromClass("openfl.Lib", "application.window.title", "The Epic Battle Against Ron For Ice Cream")
            close(true)
        end
        end
end
end

defaultWindowPos = {256,256};
Windowspeed = 0.69;
WinmovementAmount = 40;

function onUpdatePost(elapsed)
    if not inGameOver then 
        windowLoop(elapsed);
        collisionLoop(elapsed);
    end
end

function windowLoop(elapsed)

            setPropertyFromClass("openfl.Lib", "application.window.title", "BloodStream: Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die Die ")

end