local btn_num7 = display.newImage("num7.png")
btn_num7.x = 300
btn_num7.y = 200

local btn_num8 = display.newImage("num8.png")
btn_num8.x = 360
btn_num8.y = 200

local btn_num9 = display.newImage("num9.png")
btn_num9.x = 415
btn_num9.y = 200

local btn_num4 = display.newImage("num4.png")
btn_num4.x = 300
btn_num4.y = 260

local btn_num5 = display.newImage("num5.png")
btn_num5.x = 360
btn_num5.y = 260

local btn_num6 = display.newImage("num6.png")
btn_num6.x = 415
btn_num6.y = 260

local btn_num1 = display.newImage("num1.png")
btn_num1.x = 300
btn_num1.y = 315

local btn_num2 = display.newImage("num2.png")
btn_num2.x = 360
btn_num2.y = 315

local btn_num3 = display.newImage("num3.png")
btn_num3.x = 415
btn_num3.y = 315

local btn_num0 = display.newImage("num0.png")
btn_num0.x = 300
btn_num0.y = 370


function mostrar_resultado()

	local options = { 

		text = "0",
		x = display.contentWidth - 75,
		y = 100,
		font = native.systemFont,
		fontSize = 128,
	
	}
 	
 	result = display.newText( options )
	
end

mostrar_resultado()

function btn_num7:tap( event )
	
	result.text = "7"

end

function btn_num8:tap( event )
	
	result.text = "8"

end

function btn_num9:tap( event )
	
	result.text = "9"

end

function btn_num4:tap( event )
	
	result.text = "4"

end

function btn_num5:tap( event )
	
	result.text = "5"

end

function btn_num6:tap( event )
	
	result.text = "6"

end

function btn_num1:tap( event )
	
	result.text = "1"

end

function btn_num2:tap( event )
	
	result.text = "2"

end

function btn_num3:tap( event )
	
	result.text = "3"

end

function btn_num0:tap( event )
	
	result.text = "0"

end

btn_num7:addEventListener("tap", btn_num7)
btn_num8:addEventListener("tap", btn_num8)
btn_num9:addEventListener("tap", btn_num9)
btn_num4:addEventListener("tap", btn_num4)
btn_num5:addEventListener("tap", btn_num5)
btn_num6:addEventListener("tap", btn_num6)
btn_num1:addEventListener("tap", btn_num1)
btn_num2:addEventListener("tap", btn_num2)
btn_num3:addEventListener("tap", btn_num3)
btn_num0:addEventListener("tap", btn_num0)


