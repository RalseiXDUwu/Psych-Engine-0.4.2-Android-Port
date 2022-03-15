function onCreate()
    makeLuaSprite('bg','ski/ski_bg',-200,-50)
    addLuaSprite('bg')
    setScrollFactor('bg',1,1)
end

function onCreatePost()
	if difficulty == 0 or difficulty == 1 then
		for i = 0, getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums',i,'visible',false)
			setPropertyFromGroup('opponentStrums',i,'y',130)
			setPropertyFromGroup('opponentStrums',i,'x',-9999)
		end
	end
end