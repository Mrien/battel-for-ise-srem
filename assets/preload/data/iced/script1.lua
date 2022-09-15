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
    if curStep == 1 then
            
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

    end

    if curStep == 10 then -- any value lower than 10 WON'T WORK

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
    
    if curStep == 127 then

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

        --flash
        makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash', 1280, 720, 'ffffff')
	    addLuaSprite('flash', true);
	    setLuaSpriteScrollFactor('flash', 0, 0)
	    setProperty('flash.scale.x', 2)
	    setProperty('flash.scale.y', 2)
	    setProperty('flash.alpha', 0)
		setProperty('flash.alpha', 1)
		doTweenAlpha('flashalpha', 'flash', 0, 1, 'linear')

    end

end
