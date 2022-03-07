function onBeatHit()
	if curBeat == 32 then
		setProperty('defaultCamZoom', 0.7);
		doTweenAlpha('lightTween', 'vignette2', 0, 1, 'circOut')
	end
end

function onStartCountdown()
	makeLuaSprite('vignette2', 'vignette', 0, 0)
	setScrollFactor('vignette2', 0, 0)
	setObjectCamera('vignette2', 'hud')
	addLuaSprite('vignette2', true)
	return Function_Continue;
end