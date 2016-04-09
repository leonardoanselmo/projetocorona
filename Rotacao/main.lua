local portrait = display.newText("Portrait", display.contentWidth/2, display.contentHeight/2, native.systemFont, 24)
portrait:setTextColor(255, 255, 255)
portrait.alpha = 1

local landscape = display.newText("landscape", display.contentWidth/2, display.contentHeight/2, native.systemFont, 24)
landscape:setTextColor(255, 255, 255)
landscape.alpha = 0

local function onOrientationChange( event )

	if( event.type == "landscapeRight" or event.type == "landscapeLeft" ) then
		local newAngle = landscape.rotation - event.delta
		transition.to( landscape, {time=150, rotation=newAngle})
		transition.to( portrait, {rotation=newAngle})
		portrait.alpha = 0
		landscape.alpha = 1
	else 
		local newAngle = portrait.rotation - event.delta
		transition.to( portrait, {time=150, rotation=newAngle})
		transition.to( landscape, {rotation=newAngle})
		portrait.alpha = 1
		landscape.alpha = 0
	end

end

Runtime:addEventListener( "orientation", onOrientationChange)

