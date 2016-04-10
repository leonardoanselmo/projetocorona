local w = display.contentWidth /2
local h = display.contentHeight /2

local star = display.newLine(0, -110, 27, -35)
star:append(105, -35, 43, 16, 65, 90, 0, 45, -65, 90, -43, 15, -105, -35, -27, -35, 0, -110)
star:setColor(255, 255, 255, 255)
star.stroke = 3
star.yReference = 110

-- local linha = display.newLine( 100, 100, 200, 200)

local rectangle = display.newRect(100, 100, 50, 50)
rectangle.strokeWidth = 5
rectangle:setFillColor(255, 0, 0)
rectangle:setStrokeColor(0, 0, 255)

local circle = display.newCircle(display.contentWidth/2, display.contentHeight/2, 15)
circle.strokeWidth = 2
circle:setFillColor(0, 255, 0)
circle:setStrokeColor(255, 255, 255)

transition.to(star, {x=w, y=h, time=1500, rotation=360})
transition.to(rectangle, {x=w, y=h, time=1500, rotation=360})
