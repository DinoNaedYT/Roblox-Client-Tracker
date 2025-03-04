-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = var1.UI
local var4 = var3.Button
local var5 = var3.TextLabel
local var6 = var2.PureComponent:extend("ErrorBox")
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ErrorBox
   local var2 = var0.Padding or var1.Padding
   local var3 = var0.MaxWidth or var1.MaxWidth
   local var369 = {}
   var369.AutomaticSize = Enum.AutomaticSize.XY
   var369.BackgroundTransparency = 1
   var369.LayoutOrder = var0.LayoutOrder
   local var373 = {}
   local var377 = {}
   var377.PaddingTop = UDim.new(0, var2)
   var377.PaddingLeft = UDim.new(0, var2)
   var377.PaddingRight = UDim.new(0, (var2) + var1.RightPadding)
   var377.PaddingBottom = UDim.new(0, var2)
   var373.UIPadding = var2.createElement("UIPadding", var377)
   local var399 = {}
   var399.MaxSize = Vector2.new(var3, ∞)
   var373.UISizeConstraint = var2.createElement("UISizeConstraint", var399)
   local var408 = {}
   var408.Color = var1.PrimaryColor
   var408.Thickness = 1
   var408.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
   var373.UIStroke = var2.createElement("UIStroke", var408)
   local var416 = {}
   var416.CornerRadius = UDim.new(0, var1.CornerRadius)
   var373.UICorner = var2.createElement("UICorner", var416)
   local var425 = {}
   var425.AnchorPoint = Vector2.new(1, 0.5)
   var425.Position = var1.CloseButtonPosition
   var425.Size = var1.CloseButtonSize
   var425.Style = "ErrorClose"
   var425.OnClick = arg1.props.Close
   var425.ZIndex = 1000
   var373.CloseButton = var2.createElement(var4, var425)
   local var440 = {}
   var440.AutomaticSize = Enum.AutomaticSize.XY
   var440.TextXAlignment = Enum.TextXAlignment.Left
   var440.TextSize = 20
   var440.TextWrapped = true
   var440.TextColor = var1.PrimaryColor
   var440.Text = var0.Text
   var440.LayoutOrder = 1
   local var448 = {}
   local var452 = {}
   var452.MaxSize = Vector2.new((var3) - 2 * (var2), ∞)
   var448.UISizeConstraint = var2.createElement("UISizeConstraint", var452)
   var373.MainWarningLabel = var2.createElement(var5, var440, var448)
   return var2.createElement("Frame", var369, var373)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ErrorBox
   local var2 = var0.Padding or var1.Padding
   local var3 = var0.MaxWidth or var1.MaxWidth
   local var369 = {}
   var369.AutomaticSize = Enum.AutomaticSize.XY
   var369.BackgroundTransparency = 1
   var369.LayoutOrder = var0.LayoutOrder
   local var373 = {}
   local var377 = {}
   var377.PaddingTop = UDim.new(0, var2)
   var377.PaddingLeft = UDim.new(0, var2)
   var377.PaddingRight = UDim.new(0, (var2) + var1.RightPadding)
   var377.PaddingBottom = UDim.new(0, var2)
   var373.UIPadding = var2.createElement("UIPadding", var377)
   local var399 = {}
   var399.MaxSize = Vector2.new(var3, ∞)
   var373.UISizeConstraint = var2.createElement("UISizeConstraint", var399)
   local var408 = {}
   var408.Color = var1.PrimaryColor
   var408.Thickness = 1
   var408.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
   var373.UIStroke = var2.createElement("UIStroke", var408)
   local var416 = {}
   var416.CornerRadius = UDim.new(0, var1.CornerRadius)
   var373.UICorner = var2.createElement("UICorner", var416)
   local var425 = {}
   var425.AnchorPoint = Vector2.new(1, 0.5)
   var425.Position = var1.CloseButtonPosition
   var425.Size = var1.CloseButtonSize
   var425.Style = "ErrorClose"
   var425.OnClick = arg1.props.Close
   var425.ZIndex = 1000
   var373.CloseButton = var2.createElement(var4, var425)
   local var440 = {}
   var440.AutomaticSize = Enum.AutomaticSize.XY
   var440.TextXAlignment = Enum.TextXAlignment.Left
   var440.TextSize = 20
   var440.TextWrapped = true
   var440.TextColor = var1.PrimaryColor
   var440.Text = var0.Text
   var440.LayoutOrder = 1
   local var448 = {}
   local var452 = {}
   var452.MaxSize = Vector2.new((var3) - 2 * (var2), ∞)
   var448.UISizeConstraint = var2.createElement("UISizeConstraint", var452)
   var373.MainWarningLabel = var2.createElement(var5, var440, var448)
   return var2.createElement("Frame", var369, var373)
end

fun2 = var1.ContextServices.withContext
local var462 = {}
var462.Stylizer = var1.Style.Stylizer
var6 = fun2(var462)(var6)
return var6
