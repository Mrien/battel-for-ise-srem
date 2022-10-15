function onCreate()
	
	makeLuaSprite('upper', 'epicupperbar', 0, -120)
	makeGraphic('upper', 1280, 120, '000000')
	setObjectCamera('upper', 'hud')
	addLuaSprite('upper', false)


	makeLuaSprite('lower', 'epiclowerbar', 0, 720)
	makeGraphic('lower', 1280, 120, '000000')
	setObjectCamera('lower', 'hud')
	addLuaSprite('lower', false)

end

function onStepHit()
    if curStep == 836 then
            
        -- black bars stuff
        doTweenY('blackbarsmoment1', 'upper', 0, 1, 'linear')
        doTweenY('blackbarsmoment2', 'lower', 600, 1, 'linear')

        -- transparency stuff
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 0, 0.1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 0, 0.1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 0, 0.1)
        doTweenAlpha('enginetextalpha', 'engineTxt', 0, 0.1)
        doTweenAlpha('composertextalpha', 'composerTxt', 0, 0.1)
        doTweenAlpha('messagetextalpha', 'messageTxt', 0, 0.1)
        doTweenAlpha('iconp1alpha', 'iconP1', 0, 0.1)
        doTweenAlpha('iconp2alpha', 'iconP2', 0, 0.1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 0, 0.1)

        --note stuff
        noteTweenAlpha('notealpha1', 0, 0, 0.1)	
        noteTweenAlpha('notealpha2', 1, 0, 0.1)
        noteTweenAlpha('notealpha3', 2, 0, 0.1)
        noteTweenAlpha('notealpha4', 3, 0, 0.1)
        noteTweenAlpha('notealpha5', 4, 0, 0.1)
        noteTweenAlpha('notealpha6', 5, 0, 0.1)
        noteTweenAlpha('notealpha7', 6, 0, 0.1)
        noteTweenAlpha('notealpha8', 7, 0, 0.1)

    end

end
