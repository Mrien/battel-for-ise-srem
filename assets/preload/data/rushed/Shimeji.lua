local Run = false

function onCreate()
     makeAnimatedLuaSprite('Shimeji', 'Shimeji/Shimeji_Rin', getRandomInt(100, 900), 480)
     addAnimationByPrefix('Shimeji', 'Stand', 'Shimeji_Idle', 6, true)
     addAnimationByPrefix('Shimeji', 'Walk', 'Shimeji_Walk', 6, true)
     addAnimationByPrefix('Shimeji', 'Fall', 'Shimeji_Fall', 12, true)
     addAnimationByPrefix('Shimeji', 'Jump', 'Shimeji_Jump', 12, true)
     addAnimationByPrefix('Shimeji', 'Sit', 'Shimeji_Sit', 12, true)
     addAnimationByPrefix('Shimeji', 'Lay', 'Shimeji_Sit', 12, true)
     addLuaSprite('Shimeji', true)
     scaleObject('Shimeji', 0.4, 0.4)
     setObjectCamera('Shimeji', 'other')
     objectPlayAnimation('Shimeji', 'Stand', false)
end

function onSongStart()
     runTimer('Anims', 0.1, 1)
end

function onUpdate()
   if Run == false then
       direction = math.random(1, 2);
    elseif Run == true then
     if direction == 1 then
         setProperty('Shimeji.x', getProperty('Shimeji.x')- 0.5)
          setProperty('Shimeji.flipX', true)
     end
     if direction == 2 then
         setProperty('Shimeji.x', getProperty('Shimeji.x')+ 0.5)
          setProperty('Shimeji.flipX', false)
     end
  end
    if Jump == false then
        jumpPower = getRandomInt(220, 340);
     else if Jump == true then
      doTweenY('ShimJump', 'Shimeji', jumpPower, 0.5, 'cubeOut')
           objectPlayAnimation('Shimeji', 'Jump', false)
             runTimer('ShimejiFall', 0.5, 1)
              Jump = false
    end
  end
    if getProperty('Shimeji.x') > 0 and getProperty('Shimeji.x') < 5 then
        direction = 2
    elseif getProperty('Shimeji.x') > 1060 and getProperty('Shimeji.x') < 1200 then
	    direction = 1
    end		
end

function onTimerCompleted(tag, loops, loopsLeft)
   --character random animations--
       if tag == 'Anims' then
          animationPlay = math.random(1,5)
         if animationPlay == 1 then
           runTimer('ShimejiStanding', 0.01, 1)
         elseif animationPlay == 2 then
           runTimer('ShimejiWalking', 0.01, 1)
         elseif animationPlay == 3 then
           runTimer('ShimejiSitdown', 0.01, 1)
         elseif animationPlay == 4 then
           runTimer('ShimejiJumped', 0.01, 1)
         elseif animationPlay == 5 then
           runTimer('ShimejiLayDown', 0.01, 1)
       end
    end

   --character animations--

       if tag == 'ShimejiStanding' then
           objectPlayAnimation('Shimeji', 'Stand', false)
           runTimer('Anims', math.random(2.5,8), 1)
           Run = false
       end
       if tag == 'ShimejiWalking' then
           objectPlayAnimation('Shimeji', 'Walk', true)
           Run = true
           runTimer('Anims', math.random(1,8), 1)
       end
       if tag == 'ShimejiSitdown' then
           objectPlayAnimation('Shimeji', 'Sit', false)
           Run = false
           runTimer('Anims', math.random(1,8), 1)
       end
       if tag == 'ShimejiJumped' then
           Jump = true
           Run = false
           runTimer('Anims', 1.2, 1)
       end
       if tag == 'ShimejiLayDown' then
           objectPlayAnimation('Shimeji', 'Lay', false)
           Run = false
           runTimer('Anims', math.random(1,8), 1)
       end

   --character extra animations--

       if tag == 'ShimejiFall' then
         Jump = false
          doTweenY('ShimJump', 'Shimeji', 480, 0.7, 'cubeIn')
            objectPlayAnimation('Shimeji', 'Fall', false)
       end
end

--made by misha21220[gd]