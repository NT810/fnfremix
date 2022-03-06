-- Lua stuff
function onCreate()
	-- triggered when the lua file is started
	makeAnimatedLuaSprite('sexualintercourse', 'characters/stupid fucks', getProperty('GF_X') - 120, getProperty('GF_Y') + 200);
	luaSpriteAddAnimationByPrefix('sexualintercourse', 'first', 'stereo boom', 24, false);
	luaSpritePlayAnimation('sexualintercourse', 'first');
	addLuaSprite('sexualintercourse', false);
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		luaSpritePlayAnimation('sexualintercourse', 'first');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		luaSpritePlayAnimation('sexualintercourse', 'first');
	end
end