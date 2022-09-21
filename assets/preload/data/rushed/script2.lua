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
    if curStep == 257 then

        -- transparency stuff
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 0, 1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 0, 1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 0, 1)
        doTweenAlpha('iconp1alpha', 'iconP1', 0, 1)
        doTweenAlpha('iconp2alpha', 'iconP2', 0, 1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 0, 1)

        --timer stuff
        doTweenAlpha('timebaralpha1', 'timeBar', 0, 1)
        doTweenAlpha('timebaralpha2', 'timeBarBG', 0, 1)
        doTweenAlpha('timetextalpha', 'timeTxt', 0, 1)
        
        --note stuff
        noteTweenAlpha('notealpha1', 0, 0, 1)	
        noteTweenAlpha('notealpha2', 1, 0, 1)
        noteTweenAlpha('notealpha3', 2, 0, 1)
        noteTweenAlpha('notealpha4', 3, 0, 1)
        noteTweenAlpha('notealpha5', 4, 0, 1)
        noteTweenAlpha('notealpha6', 5, 0, 1)
        noteTweenAlpha('notealpha7', 6, 0, 1)
        noteTweenAlpha('notealpha8', 7, 0, 1)

    end

    if curStep == 319 then

        -- transparency stuff again
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 1, 1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 1, 1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 1, 1)
        doTweenAlpha('iconp1alpha', 'iconP1', 1, 1)
        doTweenAlpha('iconp2alpha', 'iconP2', 1, 1)
        doTweenAlpha('timebaralpha1', 'timeBar', 1, 1)
        doTweenAlpha('timebaralpha2', 'timeBarBG', 1, 1)
        doTweenAlpha('timetextalpha', 'timeTxt', 1, 1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 1, 1)
        
        --note stuff
        noteTweenAlpha('notealpha1', 0, 1, 1)	
        noteTweenAlpha('notealpha2', 1, 1, 1)
        noteTweenAlpha('notealpha3', 2, 1, 1)
        noteTweenAlpha('notealpha4', 3, 1, 1)
        noteTweenAlpha('notealpha5', 4, 1, 1)
        noteTweenAlpha('notealpha6', 5, 1, 1)
        noteTweenAlpha('notealpha7', 6, 1, 1)
        noteTweenAlpha('notealpha8', 7, 1, 1)

    end

    if curStep == 383 then

        -- black bars stuff
        doTweenY('blackbarsmoment1', 'upper', 0, 1, 'linear')
        doTweenY('blackbarsmoment2', 'lower', 600, 1, 'linear')

        -- transparency stuff
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 0, 0.1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 0, 0.1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 0, 0.1)
        doTweenAlpha('iconp1alpha', 'iconP1', 0, 0.1)
        doTweenAlpha('iconp2alpha', 'iconP2', 0, 0.1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 0, 0.1)

        --timer stuff
        doTweenAlpha('timebaralpha1', 'timeBar', 0, 0.1)
        doTweenAlpha('timebaralpha2', 'timeBarBG', 0, 0.1)
        doTweenAlpha('timetextalpha', 'timeTxt', 0, 0.1)
        
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

    if curStep == 447 then

        -- black bars stuff again
        doTweenY('blackbarsmoment1', 'upper', -120, 1, 'linear')
        doTweenY('blackbarsmoment2', 'lower', 720, 1, 'linear')

        -- transparency stuff again
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 1, 0.1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 1, 0.1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 1, 0.1)
        doTweenAlpha('iconp1alpha', 'iconP1', 1, 0.1)
        doTweenAlpha('iconp2alpha', 'iconP2', 1, 0.1)
        doTweenAlpha('timebaralpha1', 'timeBar', 1, 0.1)
        doTweenAlpha('timebaralpha2', 'timeBarBG', 1, 0.1)
        doTweenAlpha('timetextalpha', 'timeTxt', 1, 0.1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 1, 0.1)
        
        --note stuff
        noteTweenAlpha('notealpha1', 0, 1, 0.1)	
        noteTweenAlpha('notealpha2', 1, 1, 0.1)
        noteTweenAlpha('notealpha3', 2, 1, 0.1)
        noteTweenAlpha('notealpha4', 3, 1, 0.1)
        noteTweenAlpha('notealpha5', 4, 1, 0.1)
        noteTweenAlpha('notealpha6', 5, 1, 0.1)
        noteTweenAlpha('notealpha7', 6, 1, 0.1)
        noteTweenAlpha('notealpha8', 7, 1, 0.1)

    end

    if curStep == 769 then

        -- transparency stuff
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 0, 1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 0, 1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 0, 1)
        doTweenAlpha('iconp1alpha', 'iconP1', 0, 1)
        doTweenAlpha('iconp2alpha', 'iconP2', 0, 1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 0, 1)

        --timer stuff
        doTweenAlpha('timebaralpha1', 'timeBar', 0, 1)
        doTweenAlpha('timebaralpha2', 'timeBarBG', 0, 1)
        doTweenAlpha('timetextalpha', 'timeTxt', 0, 1)
        
        --note stuff
        noteTweenAlpha('notealpha1', 0, 0, 1)	
        noteTweenAlpha('notealpha2', 1, 0, 1)
        noteTweenAlpha('notealpha3', 2, 0, 1)
        noteTweenAlpha('notealpha4', 3, 0, 1)
        noteTweenAlpha('notealpha5', 4, 0, 1)
        noteTweenAlpha('notealpha6', 5, 0, 1)
        noteTweenAlpha('notealpha7', 6, 0, 1)
        noteTweenAlpha('notealpha8', 7, 0, 1)

    end

    if curStep == 831 then

        -- transparency stuff again
        doTweenAlpha('healthbaralpha1', 'healthBarBG', 1, 1)
        doTweenAlpha('healthbaralpha2', 'healthBar', 1, 1)
        doTweenAlpha('scoretextalpha', 'scoreTxt', 1, 1)
        doTweenAlpha('iconp1alpha', 'iconP1', 1, 1)
        doTweenAlpha('iconp2alpha', 'iconP2', 1, 1)
        doTweenAlpha('timebaralpha1', 'timeBar', 1, 1)
        doTweenAlpha('timebaralpha2', 'timeBarBG', 1, 1)
        doTweenAlpha('timetextalpha', 'timeTxt', 1, 1)
        doTweenAlpha('icecreamiconalpha', 'icecreamIcon', 1, 1)
        
        --note stuff
        noteTweenAlpha('notealpha1', 0, 1, 1)	
        noteTweenAlpha('notealpha2', 1, 1, 1)
        noteTweenAlpha('notealpha3', 2, 1, 1)
        noteTweenAlpha('notealpha4', 3, 1, 1)
        noteTweenAlpha('notealpha5', 4, 1, 1)
        noteTweenAlpha('notealpha6', 5, 1, 1)
        noteTweenAlpha('notealpha7', 6, 1, 1)
        noteTweenAlpha('notealpha8', 7, 1, 1)

    end

end
