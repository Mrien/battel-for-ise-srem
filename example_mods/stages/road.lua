function onCreate()
	-- background shit
	makeLuaSprite('roadandbuildings', 'road', -650, -327);
	setScrollFactor('roadandbuildings', 1, 1);
	
	makeLuaSprite('truck', 'truck', -745, 465);
	setScrollFactor('truck', 1, 1);
	scaleObject('truck', 2, 2);

	addLuaSprite('roadandbuildings', false);
	addLuaSprite('truck', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end