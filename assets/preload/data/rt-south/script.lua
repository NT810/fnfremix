function onBeatHit()
	if curBeat == 32 then
		setProperty('defaultCamZoom', 0.7);
		doTweenAlpha('lightTween', 'vignette2', 0, 1, 'circOut')
	end
	if curBeat == 160 then
		setProperty('defaultCamZoom', 0.9);
		doTweenAlpha('lightTween', 'vignette2', 0.7, 1, 'circOut')
	end
	if curBeat == 192 then
		setProperty('defaultCamZoom', 0.8);
		doTweenAlpha('lightTween', 'vignette2', 0.4, 1, 'circOut')
	end
	if curBeat == 224 then
		setProperty('defaultCamZoom', 1);
		doTweenAlpha('lightTween', 'vignette2', 4, 1, 'circOut')
	end

	if curBeat == 256 then
		noteTweenAlpha('leftrowfade0', 0, 0, 2, circOut)
		noteTweenAlpha('leftrowfade1', 1, 0, 2, circOut)
		noteTweenAlpha('leftrowfade2', 2, 0, 2, circOut)
		noteTweenAlpha('leftrowfade3', 3, 0, 2, circOut)
	end
	
	if curBeat == 268 then
		cameraFade('hud', '000000', 1, true)
	end
end

function onStartCountdown()
	makeLuaSprite('vignette2', 'vignette', 0, 0)
	setScrollFactor('vignette2', 0, 0)
	setObjectCamera('vignette2', 'hud')
	addLuaSprite('vignette2', true)
	return Function_Continue;
end