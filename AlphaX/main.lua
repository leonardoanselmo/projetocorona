local square = display.newImage("Ch3Square.png")
square.x = math.random(square.width/2, display.contentWidth - square.width/2)
square.y = math.random(square.height/2, display.contentHeight - square.height/2)

transition.to(square, {time=2000, x=display.contentWidth/2, y=display.contentHeight/2})

local hideButton = display.newImage("Ch3HideButton.png")
hideButton.x = display.contentWidth /2
hideButton.y = display.contentHeight - 300

local showButton = display.newImage("Ch3ShowButton.png")
showButton.x = display.contentWidth /2
showButton.y = display.contentHeight - 200

local fadebutton = display.newImage("Ch3FadeButton.png")
fadebutton.x = display.contentWidth /2
fadebutton.y = display.contentHeight - 100

function hideButton:tap( event )
	square.alpha = 0
end

function showButton:tap( event )
	square.alpha = 1
end

-- verifica se o estado de alpha (visualização) está ativo ou não.
function fadebutton:tap( event )
	if (square.alpha == 1) then
		transition.to(square, {time=3000, alpha = 0})
	else 
		transition.to(square, {time=3000, alpha = 1})
	end
end

hideButton:addEventListener("tap", hideButton)
showButton:addEventListener("tap", showButton)
fadebutton:addEventListener("tap", fadebutton)