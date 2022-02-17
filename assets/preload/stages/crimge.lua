function onCreate()
	makeLuaSprite('sky','sky', -850,-400)
		addLuaSprite('sky', false)
	
	makeLuaSprite('mountain','mountain', -900, 50)
		addLuaSprite('mountain', false)
	
	makeLuaSprite('grass', 'grass', -1150,600)
		addLuaSprite('grass', false)
	
	makeAnimatedLuaSprite('killer2', 'tree2', 700,-550)
		addAnimationByPrefix('killer2', 'boopp', 'trebacckk', 24, false)
			addLuaSprite('killer2', false)

	makeAnimatedLuaSprite('killer', 'tree2', 1100,-550)
		addAnimationByPrefix('killer', 'boop', 'trebacckk', 24, false)
			addLuaSprite('killer', false)

	makeAnimatedLuaSprite('trees','trees1', 500, -650)
		addAnimationByPrefix('trees','trees', 'trees', 24, false)
			addLuaSprite('trees', false)
	
	makeAnimatedLuaSprite('kill', 'kill', 1000,-600)
		addAnimationByPrefix('kill', 'bop', 'kill', 24, false)
			addLuaSprite('kill', false)

	makeAnimatedLuaSprite('knux', 'knux', -700, -500);
		addAnimationByPrefix('knux', 'first', 'knuckles', 24, true);
		objectPlayAnimation('knux', 'first');
		addLuaSprite('knux', false);
	
	makeLuaSprite ('flowey', 'flowey', 100, 500)
		addLuaSprite('flowey')
		setScrollFactor('mountain', 0.8,0.8)
		setScrollFactor('sky', 0.4,0.4)

end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('kill', 'bop');
		objectPlayAnimation('trees', 'trees');
		objectPlayAnimation('killer', 'boop');
		objectPlayAnimation('killer2', 'boopp');
    end

end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if dadName == 'x' and boyfriendName == 'majin' then
			characterPlayAnim('x', animationList[direction+1]..'-alt', false);
	end
end



function onCreatePost()
	setProperty('gf.visible',false)
end