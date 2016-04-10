local options =
{       
    frames =
    {
        --frame 1
        {
            x = 0,
            y = 0,
            width = 203,
            height = 256,
            sourceX = 60,
            sourceY = 11,
            sourceWidth = 277,
            sourceHeight = 276
        },
        --frame 2
        {
            x = 203,
            y = 0,
            width = 247,
            height = 262,
            sourceX = 16,
            sourceY = 5,
            sourceWidth = 277,
            sourceHeight = 276
        },
    },
    sheetContentWidth = 450,
    sheetContentHeight = 262
}
local sheet = graphics.newImageSheet( "mySheet.png", options )