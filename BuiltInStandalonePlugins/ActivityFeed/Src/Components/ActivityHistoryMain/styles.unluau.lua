-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var2 = require(var0.Src.Resources.StyleTips)
local var16 = var2.filterHeaderHeight
local var4 = var16 - 4
var16 = var1
local var19 = {}
var19.Size = UDim2.new(1, 0, 1, 0)
var19.BackgroundColor3 = "$BackgroundPaper"
local var30 = {}
var30.Size = UDim2.new(1, 0, 1, 0)
local var40 = {}
var40.PaddingTop = UDim.new(0, 4)
var40.PaddingBottom = UDim.new(0, 4)
var40.PaddingLeft = UDim.new(0, 4)
var40.PaddingRight = UDim.new(0, 4)
local var57 = var1("::UIPadding", var40)
local var60 = {}
var60.Size = UDim2.new(1, 0, 0, var2.filterHeaderHeight)
local var74 = {}
var74.CornerRadius = UDim.new(0, var2.bubbleCornerRadius)
local var79 = var1("::UICorner", var74)
local var82 = {}
var82.Color = "$Divider"
var82.Thickness = 1
local var85 = var1("::UIStroke", var82)
local var88 = {}
var88.BackgroundColor3 = "$BackgroundPaper"
var88.TextColor3 = "$TextPrimary"
var88.TextSize = var2.headerFontSize
local var95 = {}
var95.CornerRadius = UDim.new(0, var2.bubbleCornerRadius)
local var100 = var1("::UICorner", var95)
local var103 = {}
local var104 = "$ActionHover"
var103.BackgroundColor3 = var104
local var105 = var1(":hover", var103)
local var13 = var1("> #ToggleFilterMenuButton", var88, {})
local var109 = {}
var104 = var4
var109.Size = UDim2.new(0, var4, 0, var104)
var109.Position = UDim2.new(1, var4, 0, 0)
local var124 = {}
var124.Size = UDim2.new(0, 16, 0, 16)
var124.AnchorPoint = Vector2.new(0.5, 0.5)
var124.Position = UDim2.new(0.5, 0, 0.5, 0)
var124.Image = "$toggleicon"
var124.BackgroundTransparency = 1
local var14 = var1("> #FilterMenuToggleIcon", var124)
local var15 = var1("> #FilterMenuToggleIconContainer", var109, {})
local var145 = var1(">> #Header", {}, {})
local var146 = var1("> #HeaderContainer", var60, {})
local var149 = {}
var149.Size = UDim2.new(1, 0, 1, var2.filterHeaderHeight)
local var157 = var1("> #ActivityHistoryBubbleListContainer", var149)
local var17 = var1("> #EventList", var30, {})
local var161 = {}
var161.Size = UDim2.new(1, 0, 1, 0)
local var18 = var1("> #FilterMenu", var161)
local var171 = {}
var171.Size = UDim2.new(1, 0, 0, 0)
var171.BackgroundColor3 = "$ForegroundMain"
local var182 = {}
var182.Size = UDim2.new(1, 0, 1, 0)
var182.TextColor3 = "$TextPrimary"
var182.TextXAlignment = Enum.TextXAlignment.Center
var182.TextYAlignment = Enum.TextYAlignment.Center
var182.BackgroundTransparency = 1
local var19 = var1(">> .Component-TextLabel", var182)
local var196 = {}
var196.CornerRadius = UDim.new(0, 20)
local var20 = var1("::UICorner", var196)
local var21 = var1("> #Footer", var171, {})
return var16(".Component-ActivityHistoryMain", var19, {})
