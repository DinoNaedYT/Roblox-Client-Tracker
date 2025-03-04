-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI.StyledDialog
local var6 = var3.Util.GetTextSize
local var7 = require(var0.Core.Util.Images)
local var8 = require(var0.Core.Util.Constants)
local var9 = var8.Dialog
local var10 = var2.PureComponent:extend("PurchaseDialog")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = arg1.props.Stylizer
   local var72 = var9
   local var80 = {}
   var80.Title = var0.Title
   var72 = var9.IMAGE_SIZE.X.Offset + var9.PROMPT_SIZE.X.Offset
   var80.MinContentSize = Vector2.new(var72, var9.PROMPT_SIZE.Y.Offset + var72.BALANCE_SIZE.Y.Offset)
   var80.Buttons = var0.Buttons
   var80.OnButtonPressed = var0.OnButtonClicked
   var80.OnClose = var0.OnClose
   local var84 = {}
   local var88 = {}
   var88.Size = var9.IMAGE_SIZE
   var88.BackgroundTransparency = 1
   var88.Image = var0.Thumbnail
   var84.Thumbnail = var2.createElement("ImageLabel", var88)
   local var96 = {}
   var96.Size = var9.PROMPT_SIZE
   var96.Position = UDim2.fromScale(1, 0)
   var96.AnchorPoint = Vector2.new(1, 0)
   var96.BackgroundTransparency = 1
   var96.Text = var0.Prompt
   var96.TextSize = var8.FONT_SIZE_LARGE
   var96.Font = var8.FONT
   var96.TextXAlignment = Enum.TextXAlignment.Left
   var96.TextYAlignment = Enum.TextYAlignment.Top
   var96.TextColor3 = var1.purchaseDialog.promptText
   var96.TextWrapped = true
   var84.Prompt = var2.createElement("TextLabel", var96)
   local var121 = {}
   var121.Size = var9.BALANCE_SIZE
   var121.Position = var9.BALANCE_POSITION
   var121.AnchorPoint = Vector2.new(1, 0)
   var121.BackgroundTransparency = 1
   local var131 = {}
   local var135 = {}
   var135.SortOrder = Enum.SortOrder.LayoutOrder
   var135.FillDirection = Enum.FillDirection.Horizontal
   var135.VerticalAlignment = Enum.VerticalAlignment.Center
   var135.Padding = var9.BALANCE_PADDING
   var131.Layout = var2.createElement("UIListLayout", var135)
   local var145 = {}
   var145.LayoutOrder = 1
   var145.Size = UDim2.new(0, var6(var0.Localization:getText("Purchase", "RobuxBalance"), var8.FONT_SIZE_MEDIUM, nil, Vector2.new(0, 0)).X, 1, 0)
   var145.BackgroundTransparency = 1
   var145.Text = var0.Localization:getText("Purchase", "RobuxBalance")
   var145.TextSize = var8.FONT_SIZE_MEDIUM
   var145.Font = var8.FONT
   var145.TextColor3 = var1.purchaseDialog.balanceText
   var131.Text = var2.createElement("TextLabel", var145)
   local var169 = {}
   var169.LayoutOrder = 2
   var169.Size = var9.ROBUX_SIZE
   var169.BackgroundTransparency = 1
   var169.Image = var7.ROBUX_SMALL
   var169.ImageColor3 = var1.purchaseDialog.balanceText
   var131.Icon = var2.createElement("ImageLabel", var169)
   local var182 = {}
   var182.LayoutOrder = 3
   var182.Size = UDim2.new(1, 0, 1, 0)
   var182.BackgroundTransparency = 1
   var182.Text = var0.Balance
   var182.TextSize = var8.FONT_SIZE_MEDIUM
   var182.Font = var8.FONT
   var182.TextXAlignment = Enum.TextXAlignment.Left
   var182.TextColor3 = var1.purchaseDialog.balanceText
   var131.Robux = var2.createElement("TextLabel", var182)
   var84.Balance = var2.createElement("Frame", var121, var131)
   return var2.createElement(var5, var80, var84)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.props.Stylizer
   local var72 = var9
   local var80 = {}
   var80.Title = var0.Title
   var72 = var9.IMAGE_SIZE.X.Offset + var9.PROMPT_SIZE.X.Offset
   var80.MinContentSize = Vector2.new(var72, var9.PROMPT_SIZE.Y.Offset + var72.BALANCE_SIZE.Y.Offset)
   var80.Buttons = var0.Buttons
   var80.OnButtonPressed = var0.OnButtonClicked
   var80.OnClose = var0.OnClose
   local var84 = {}
   local var88 = {}
   var88.Size = var9.IMAGE_SIZE
   var88.BackgroundTransparency = 1
   var88.Image = var0.Thumbnail
   var84.Thumbnail = var2.createElement("ImageLabel", var88)
   local var96 = {}
   var96.Size = var9.PROMPT_SIZE
   var96.Position = UDim2.fromScale(1, 0)
   var96.AnchorPoint = Vector2.new(1, 0)
   var96.BackgroundTransparency = 1
   var96.Text = var0.Prompt
   var96.TextSize = var8.FONT_SIZE_LARGE
   var96.Font = var8.FONT
   var96.TextXAlignment = Enum.TextXAlignment.Left
   var96.TextYAlignment = Enum.TextYAlignment.Top
   var96.TextColor3 = var1.purchaseDialog.promptText
   var96.TextWrapped = true
   var84.Prompt = var2.createElement("TextLabel", var96)
   local var121 = {}
   var121.Size = var9.BALANCE_SIZE
   var121.Position = var9.BALANCE_POSITION
   var121.AnchorPoint = Vector2.new(1, 0)
   var121.BackgroundTransparency = 1
   local var131 = {}
   local var135 = {}
   var135.SortOrder = Enum.SortOrder.LayoutOrder
   var135.FillDirection = Enum.FillDirection.Horizontal
   var135.VerticalAlignment = Enum.VerticalAlignment.Center
   var135.Padding = var9.BALANCE_PADDING
   var131.Layout = var2.createElement("UIListLayout", var135)
   local var145 = {}
   var145.LayoutOrder = 1
   var145.Size = UDim2.new(0, var6(var0.Localization:getText("Purchase", "RobuxBalance"), var8.FONT_SIZE_MEDIUM, nil, Vector2.new(0, 0)).X, 1, 0)
   var145.BackgroundTransparency = 1
   var145.Text = var0.Localization:getText("Purchase", "RobuxBalance")
   var145.TextSize = var8.FONT_SIZE_MEDIUM
   var145.Font = var8.FONT
   var145.TextColor3 = var1.purchaseDialog.balanceText
   var131.Text = var2.createElement("TextLabel", var145)
   local var169 = {}
   var169.LayoutOrder = 2
   var169.Size = var9.ROBUX_SIZE
   var169.BackgroundTransparency = 1
   var169.Image = var7.ROBUX_SMALL
   var169.ImageColor3 = var1.purchaseDialog.balanceText
   var131.Icon = var2.createElement("ImageLabel", var169)
   local var182 = {}
   var182.LayoutOrder = 3
   var182.Size = UDim2.new(1, 0, 1, 0)
   var182.BackgroundTransparency = 1
   var182.Text = var0.Balance
   var182.TextSize = var8.FONT_SIZE_MEDIUM
   var182.Font = var8.FONT
   var182.TextXAlignment = Enum.TextXAlignment.Left
   var182.TextColor3 = var1.purchaseDialog.balanceText
   var131.Robux = var2.createElement("TextLabel", var182)
   var84.Balance = var2.createElement("Frame", var121, var131)
   return var2.createElement(var5, var80, var84)
end

fun0 = var4.withContext
local var201 = {}
var201.Localization = var4.Localization
var201.Stylizer = var4.Stylizer
var10 = fun0(var201)(var10)
return var10
