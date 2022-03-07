function onCreate()
	-- background shit
	makeLuaSprite('w1stagebg', 'w1stagebg', 0, 0);
	setScrollFactor('w1stagebg', 0.9, 0.9);

	makeLuaSprite('w1stagewall', 'w1stagewall', 0, 0);
	setScrollFactor('w1stagewall', 0.9, 0.9);

	makeLuaSprite('w1stagebase', 'w1stagebase', 0, 0);
	setScrollFactor('w1stagebase', 1, 1);

	makeLuaSprite('w1stagecurtains', 'w1stagecurtains', 0, 0);
	setScrollFactor('w1stagecurtains', 1, 1);

	addLuaSprite('w1stagebg', false);
	addLuaSprite('w1stagewall', false);
	addLuaSprite('w1stagebase', false);
	addLuaSprite('w1stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end