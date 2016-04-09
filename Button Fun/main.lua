local myButton = display.newImage("button.png")
myButton.x = display.contentWidth /2
myButton.y = display.contentHeight - 75

local textobj = display.newText("Leonardo Anselmo", 0, 75, native.systemFont, 32)
textobj.x = display.contentWidth /2
textobj:setTextColor(255, 255, 255)

function myButton:tap( event )

	--[[
	   if (textobj.y > display.contentHeight -200) then
		textobj.y = 75
	   else 
	 	textobj.y = textobj.y + 50
	   end
	--]]

	textobj.x = math.random(85, display.contentWidth -85)
	textobj.y = math.random(20, display.contentHeight -110)

end

myButton:addEventListener( "tap", myButton ) 


