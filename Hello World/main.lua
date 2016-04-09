local textobj = display.newText("Hello World", 200, 100, native.systemFont, 32)
--local textobj1 = display.newText("Leonardo", 400, 200, native.systemFont, 32)
--local textobj2 = display.newText("Anselmo", 500, 50, native.systemFont, 32)
--local textobj3 = display.newText("Teste1", 500, 300, native.systemFont, 64)

local options = 
{
    --parent = textGroup,
    text = "Leonardo Anselmo",     
    x = 100,
    y = 200,
    width = 300,     --required for multi-line and alignment
    font = native.systemFontBold,   
    fontSize = 24,
    align = "right"  --new alignment parameter
}

local myText = display.newText( options )
myText:setFillColor( 0, 1, 0 )

textobj:setTextColor(0, 255, 0)