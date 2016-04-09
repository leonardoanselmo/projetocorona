local btnVerde = display.newImage("verde.jpg")
btnVerde.x = display.contentWidth - 450
btnVerde.y = display.contentHeight - 75

local btnVermelho = display.newImage("vermelho.png")
btnVermelho.x = display.contentWidth - 200
btnVermelho.y = display.contentHeight - 75

local txtContador = display.newText("Contador", 0, 50, native.systemFont, 24)
txtContador.x = display.contentWidth -75
txtContador.y = display.contentHeight -40

local btnAzul = display.newImage("azul.png")
btnAzul.x = display.contentWidth - 75
btnAzul.y = display.contentHeight -75


contVerde = 0
local txtVerde = display.newText("Verde", -100, -100, native.systemFont, 64)
function btnVerde:tap( event )
	
	txtVerde.x = math.random(85, display.contentWidth -85)
	txtVerde.y = math.random(20, display.contentHeight -110)
	txtVerde:setTextColor(0, 255, 0)
	contVerde = contVerde + 1

end

contVermelho = 0
local txtVermelho = display.newText("Vermelho", -100, -100, native.systemFonte, 64)
function btnVermelho:tap( event )
	
	txtVermelho.x = math.random(85, display.contentWidth - 85)
	txtVermelho.y = math.random(20, display.contentHeight -110)
	txtVermelho:setTextColor(255, 0, 0)
	contVermelho = contVermelho + 1

end

function btnAzul:tap( event )

	local rstVerde    = display.newText("Qtde Verde: "..contVerde, 300, 300, native.systemFonte, 32)
	local rstVermelho = display.newText("Qtde Vermelho: "..contVermelho, 300, 330, native.systemFonte, 32) 

end


btnVerde:addEventListener("tap", btnVerde)
btnVermelho:addEventListener("tap", btnVermelho)
btnAzul:addEventListener("tap", btnAzul)
