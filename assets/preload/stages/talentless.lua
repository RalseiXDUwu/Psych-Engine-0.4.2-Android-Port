function onCreate()
    makeLuaSprite('skylol', 'talent/sky', -400, -200)
    makeLuaSprite('ground', 'talent/ground',-300, 680)
    makeLuaSprite('trees', 'talent/trees', -620, -100)
    addLuaSprite('skylol', false)
    addLuaSprite('ground', false)
    addLuaSprite('trees', true)
    setScrollFactor('skylol', 0.2,0.2)
    setScrollFactor('ground', 1,1)
    setScrollFactor('trees', 2.2,1.1)
end

function onCreatePost()
    setProperty('gf.scrollFactor.x', 0.9);
end