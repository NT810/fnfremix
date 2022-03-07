function onCreate()
	makeLuaSprite('overlay', 'w1overlay', 0, 0)
	setScrollFactor('overlay', 1, 1)
	scaleObject('overlay', 100, 100)
	setObjectCamera('overlay', 'hud')
	setBlendMode('overlay','overlay')
	setProperty('overlay.alpha', 0)
	addLuaSprite('overlay', true)

	makeLuaSprite('vignette', 'vignette', 0, 0)
	setScrollFactor('vignette', 0, 0)
	setObjectCamera('vignette', 'hud')
	setProperty('vignette.alpha', 0)
	addLuaSprite('vignette', true)
end

function onBeatHit()
	if curBeat == 96 then
		doTweenAlpha('overlayin', 'overlay', 0.5, 1, circIn)
		doTweenAlpha('vignettein', 'vignette', 0.5, 1, circIn)
		setProperty('defaultCamZoom', 0.7);
	end
	if curBeat == 128 then
		setProperty('defaultCamZoom', 0.8);
	end
	if curBeat == 160 then
		doTweenAlpha('overlayout', 'overlay', 0, 1, circIn)
		doTweenAlpha('vignetteout', 'vignette', 0, 1, circIn)
		setProperty('defaultCamZoom', 0.5);
	end
	if curBeat == 224 then
		doTweenAlpha('overlayin', 'overlay', 0.5, 1, circIn)
		doTweenAlpha('vignettein', 'vignette', 0.5, 1, circIn)
		setProperty('defaultCamZoom', 0.7);
	end
	if curBeat == 256 then
		doTweenAlpha('overlayout', 'overlay', 0, 1, circIn)
		doTweenAlpha('vignetteout', 'vignette', 0, 1, circIn)
		setProperty('defaultCamZoom', 0.6);
	end
end