function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'rtbf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'heartbreak'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'heartbreakend'); --put in mods/music/
end