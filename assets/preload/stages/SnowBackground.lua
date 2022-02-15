function onCreate()
	-- background shit
	makeLuaSprite('BG', 'black', -800, -800);
	scaleObject('BG', 5, 5);

	addLuaSprite('BG', false);

end

    function onCreate ()
                   --background cuz yeah why not?
                   makeLuaSprite('BG2', 'sansbackgroundomfg', -800, -800);
                   
		           scaleObject('BG2', 5, 5);
		
		           setProperty('BG2.antialiasing', true);
		
		           setProperty('BG2.visible', false);
		
		           makeLuaSprite('BG3', 'hdsansbackgroundnfw', -375, -325);
		
		           scaleObject('BG3', 0.9, 0.9);
		
		            setProperty('BG3.visible', false);

                   addCharacterToList('bf-pixel', 'boyfriend')
        
                   addCharacterToList('sans-pixel', 'dad')
                   
                   addCharacterToList('bf', 'boyfriend')
                   
                   addCharacterToList('sans', 'dad')
                   
                   setCharacterX('dad', -100);
                   
                   precacheImage('hdsansbackgroundnfw');
                   
                   addLuaSprite('BG2', false);
                   
                   addLuaSprite('BG3', false);
        
end
	
	function onStepHit()
	if curStep == 4 then
	   triggerEvent('Change Character', 'bf', 'bf');
	
	   triggerEvent('Change Character', 'dad', 'sans');
	
	   triggerEvent('noteskinchange', 'NOTE_assets_normal', '');
	
	   setProperty('BG.visible', false);
	
	   setProperty('BG3.visible', true);

	end
	
	if curStep == 8 then
	   triggerEvent('Change Character', 'bf', 'nobody');
	
	   triggerEvent('Change Character', 'dad', 'nobody');
	
	   setProperty('BG.visible', true);
	
	   setProperty('BG3.visible', false);
	
	end
	if curStep == 12 then
	    triggerEvent('Change Character', 'bf', 'bf-pixel');
	
	    triggerEvent('Change Character', 'dad', 'sans-pixel');
	
		setProperty('BG.visible', false);
		
		setProperty('BG2.visible', true);
	
	end
	if curStep == 272 then
	   triggerEvent('Change Character', 'bf', 'bf');
	
	   triggerEvent('Change Character', 'dad', 'sans');
	
	   setProperty('BG2.visible', false);
	
	   setProperty('BG3.visible', true);
	end
	if curStep == 527 then
	   triggerEvent('Change Character', 'bf', 'bf-pixel');
	
	   triggerEvent('Change Character', 'dad', 'sans-pixel');
	
	   setProperty('BG2.visible', true);
	
	   setProperty('BG3.visible', false);
	
	end
	if curStep == 655 then
	    triggerEvent('Change Character', 'bf', 'bf');
	
	    triggerEvent('Change Character', 'dad', 'sans');
	
		setProperty('BG2.visible', false);
		
		setProperty('BG3.visible', true);
		
	end
	if curStep == 784 then
	    triggerEvent('Change Character', 'bf', 'bf-pixel');
	
	    triggerEvent('Change Character', 'dad', 'sans-pixel');
	
		setProperty('BG2.visible', true);
		
		setProperty('BG3.visible', false);
		
	end
	if curStep == 912 then
	    triggerEvent('Change Character', 'bf', 'bf');
	
	    triggerEvent('Change Character', 'dad', 'sans');
	
		setProperty('BG2.visible', false);
		
		setProperty('BG3.visible', true);
		
	end
end