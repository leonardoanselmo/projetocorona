local texto = display.newText("Texto", display.contentWidth/2, display.contentHeight/2, native.systemFont, 24)
texto:setTextColor(255, 255, 255)
texto.alpha = 1

local function onOrientationChange( event )

	if( event.type == "landscapeRight" or event.type == "landscapeLeft" ) then
		local newAngle = texto.rotation - event.delta
		transition.to( texto, {time=150, rotation=newAngle})
		transition.to( texto, {rotation=newAngle})
		texto.alpha = 0
		texto.alpha = 1
	else 
		local newAngle = texto.rotation - event.delta
		transition.to( texto, {time=150, rotation=newAngle})
		transition.to( texto, {rotation=newAngle})
		texto.alpha = 1
		texto.alpha = 0
	end

end

Runtime:addEventListener( "orientation", onOrientationChange)

