function onCreate()
	-- background shit
	makeLuaSprite('w2stage', 'w2stage', 0, 0);
	setScrollFactor('w2stage', 1, 1);
	addLuaSprite('w2stage', false);
	
	makeLuaSprite('overlay', 'w2overlay', 0, 0)
	setScrollFactor('overlay', 1, 1)
	setObjectCamera('overlay', 'hud')
	setBlendMode('overlay', 'overlay')
	addLuaSprite('overlay', true)

	makeLuaSprite('vignette', 'vignette', 0, 0)
	setScrollFactor('vignette', 0, 0)
	setObjectCamera('vignette', 'hud')
	setProperty('vignette.alpha', 0.5)
	addLuaSprite('vignette', true)
	
	makeLuaSprite('flash', 'camFlash', 0, 0)
	setObjectCamera('flash', 'other')
	setProperty('flash.alpha', 0)
	addLuaSprite('flash', true)

	lightningBeat = 0
	lightningOffset = 8
end

function onBeatHit()
	if math.random(10) == 10 and curBeat > lightningBeat + lightningOffset then
		lightningBaybee()
	end
end

function lightningBaybee()
	lightningBeat = curBeat
	lightningOffset = math.random(10, 30)
	playSound("thunder" .. math.floor(math.random(1,2)),0.7);
	if flashingLights then
		setProperty('flash.alpha', 0.4)
		doTweenAlpha('camflashlololol', 'flash', 0, 0.75, 'linear')
	end
	objectPlayAnimation('boyfriend', 'scared', true)
	objectPlayAnimation('gf', 'scared', true)
end