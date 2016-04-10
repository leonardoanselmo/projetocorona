local bkgd = display.newImage("bkgd.png", 0, 0)
local width = display.contentWidth /2
local height = display.contentHeight/2 -100

local addButton = display.newImage("add.png", width - 145, height)
local subtractButton = display.newImage("subtract.png", width - 60, height)
local multiplyButton = display.newImage("multiply.png", width + 15, height)
local divideButton = display.newImage("divide.png", width + 85, height)
local equalButton = display.newImage("equals.png", width, height + 150)

--local firstNumber = "10"
--local firstNumberText = display.newText(firstNumber, width + 100, height - 75, native.systemFont, 36)
local firstNumber = native.newTextField(width/2, height - 75, 220, 55)
firstNumber.inputType="number"

--local secondNumber ="5"
--local secondNumberText = display.newText(secondNumber, width + 100, height + 75, native.systemFont, 36)
local secondNumber = native.newTextField(width/2, height + 75, 220, 55)
secondNumber.inputType="number"
secondNumber.textSize = 12

local operator
local result
local operandSelected = "false"
local resultText

local function addButtonTap( event )
	operator = "+"
	operandSelected = "True"
end

local function subtractButtonTap( event )
	operator = "-"
	operandSelected = "True"
end

local function multiplyButtonTap( event )
	operator = "*"
	operandSelected = "True"
end

local function divideButtonTap( event )
	operator = "/"
	operandSelected = "True"
end

local function equalButtonTap( event )

	local clearRect = display.newRect(width, height+200, 150, 50)
		clearRect:setFillColor(0,0,0)

	if(operandSelected == "True") then 
		if(operator == "+") then 			
			result = tonumber(firstNumber.text) + tonumber(secondNumber.text)
		elseif (operator == "-") then
			result = tonumber(firstNumber.text) - tonumber(secondNumber.text)
		elseif (operator == "*") then
			result = tonumber(firstNumber.text) * tonumber(secondNumber.text)
		elseif (operator == "/") then
			result = tonumber(firstNumber.text) / tonumber(secondNumber.text)
		end
		
		local resultText = display.newText(result, width, height+200, native.systemFont, 36)
		resultText:setTextColor(255, 255, 255)
		operandSelected = "False"

	else 

		local warningText = display.newText("Selecione um operador primeiro", width-50, 100, native.systemFont, 36)
		warningText:setTextColor(255, 255, 255)

	end
end

local listener = function( event )
	native.setKeyboardFocus(nil)
end

addButton:addEventListener("tap", addButtonTap)
subtractButton:addEventListener("tap", subtractButtonTap)
multiplyButton:addEventListener("tap", multiplyButtonTap)
divideButton:addEventListener("tap", divideButtonTap)
equalButton:addEventListener("tap", equalButtonTap)
bkgd:addEventListener("tap", listener)
	







