-- Script made by Alex Director, Inspired by Rozebud & Blantados!

-- SCRIPT CONFIGS
local skipCountdown = false -- Idk what to say about this config, but you can set it true or false if you wanna make it more cinematic
local disableCountdownImages = true -- This was made to make it sorta like a cinematic
local disableTimeBar = true -- Hiding the Time Bar is a good idea
local hideSongName = false -- Showing the Song Name is a good idea

-- My Spaghetti Code lol
function onCreatePost() -- I made my own Cinematic UI unlike Rozebud or Blantados
	if botPlay then
	setProperty('scoreTxt.visible', false)
	if hideSongName == true then
	setTextString('botplayTxt', 'Enjoy the Showcase!')
	elseif hideSongName == false then
	setTextString('botplayTxt', 'Now Playing: ' .. songName .. '\nEnjoy the Showcase!')
	end
	if disableTimeBar == true then
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.visible', false)
	end
	end
end

function onCountdownTick(counter) -- For disableCountdownImages
	if disableCountdownImages == true then
	if botPlay and counter == 1 then
		setProperty('countdownReady.visible', false)
	elseif botPlay and counter == 2 then
		setProperty('countdownSet.visible', false)
	elseif botPlay and counter == 3 then
		setProperty('countdownGo.visible', false)
	end
	end
end

function onStartCountdown() -- For skipCountdown, GF's being a bit buggy at the start and idk how to fix it.
	if skipCountdown == true then
	if botPlay then
	setProperty('skipCountdown', true)
	end
	end
	return Function_Continue;
end

function onUpdatePost() -- Arrows are now invisible
	if botPlay and not inGameOver then
	noteTweenX('note0', 0, 999999, 0.00001, "linear")
	noteTweenX('note1', 1, 999999, 0.00001, "linear")
	noteTweenX('note2', 2, 999999, 0.00001, "linear")
	noteTweenX('note3', 3, 999999, 0.00001, "linear")
	noteTweenX('note4', 4, 999999, 0.00001, "linear")
	noteTweenX('note5', 5, 999999, 0.00001, "linear")
	noteTweenX('note6', 6, 999999, 0.00001, "linear")
	noteTweenX('note7', 7, 999999, 0.00001, "linear")
	end
end
