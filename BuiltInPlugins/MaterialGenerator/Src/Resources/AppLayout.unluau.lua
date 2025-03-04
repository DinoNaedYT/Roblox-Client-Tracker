-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.Constants)
local var1 = var0.EDITOR_WIDTH
local var2 = var0.EDITOR_HEIGHT
local var3 = var0.PROMPT_HEIGHT
local var111 = {}
var111.name = "Prompt, Browser, Editor (horizontal)"
var111.fillDirection = Enum.FillDirection.Horizontal
var111.mainContentSize = UDim2.new(1, var1, 1, 0)
var111.editorSize = UDim2.new(0, var1, 1, 0)
{}.value = var111
local var5 = {}
var5.maxWidth = 576
local var128 = {}
var128.name = "Prompt, Browser, Editor (vertical)"
var128.fillDirection = Enum.FillDirection.Vertical
var128.mainContentSize = UDim2.new(1, 0, 1, var2)
var128.editorSize = UDim2.new(1, 0, 0, var2)
var5.value = var128
local var7 = {}
var7.maxWidth = 576
var7.maxHeight = var3 + var2 + 50
local var147 = {}
var147.name = "Prompt, Editor (vertical)"
var147.fillDirection = Enum.FillDirection.Vertical
var147.mainContentSize = UDim2.new(1, 0, 0, var3)
var147.editorSize = UDim2.new(1, 0, 1, var3)
var147.browserVisible = false
var7.value = var147
local var9 = {}
var9.maxWidth = 576
var9.maxHeight = var2 + 50
local var10 = {}
var10.name = "Editor only"
var10.mainContentVisible = false
var10.editorSize = UDim2.fromScale(1, 1)
var9.value = var10
return {}
