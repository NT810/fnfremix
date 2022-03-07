function onCreate()
	makeLuaText('creds', songName .. " by METR0GARD3N", 0, 2, 695);
	setTextBorder('creds', 2, '000000');
	setTextAlignment('creds', 'left');
	setTextSize('creds', 20);
	addLuaText('creds');
	setObjectCamera('creds','other');

	makeLuaText('creds2', "Sprites by ninphobia & JOHT0S", 0, 2, 695);
	setTextBorder('creds2', 2, '000000');
	setTextAlignment('creds2', 'left');
	setTextSize('creds2', 20);
	addLuaText('creds2');
	setObjectCamera('creds2','other');
	setProperty('creds2.alpha',0)

	
	makeLuaText('creds3', "Chart by Senshi_Z", 0, 2, 695);
	setTextBorder('creds3', 2, '000000');
	setTextAlignment('creds3', 'left');
	setTextSize('creds3', 20);
	addLuaText('creds3');
	setObjectCamera('creds3','other');
	setProperty('creds3.alpha',0)

	runTimer('songcreds',10)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'songcreds' then
		doTweenAlpha('songOut', 'creds', 0, 1, 'linear')
		doTweenAlpha('artIn', 'creds2', 1, 1, 'linear')
		runTimer('artcreds',10)
	elseif tag == 'artcreds' then
		doTweenAlpha('artOut', 'creds2', 0, 1, 'linear')
		doTweenAlpha('chartIn', 'creds3', 1, 1, 'linear')
		runTimer('chartcreds',10)
	elseif tag == 'chartcreds' then
		doTweenAlpha('chartOut', 'creds3', 0, 1, 'linear')
		doTweenAlpha('songIn', 'creds', 1, 1, 'linear')
		runTimer('songcreds',10)
	end
end