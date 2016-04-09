local center = display.newImage("Ch3Center.png")
local square = display.newImage("Ch3Square.png")

center.x = display.contentWidth /2
center.y = display.contentHeight /2

square.x = math.random(square.width/2, display.contentWidth - square.width/2)
square.y = math.random(square.height/2, display.contentHeight - square.height/2)

transition.to(square, { time=2000, x = center.x, y = center.y } )