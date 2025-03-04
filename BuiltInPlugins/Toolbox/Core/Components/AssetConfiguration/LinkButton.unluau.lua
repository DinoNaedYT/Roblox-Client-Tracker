-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Constants)
local var5 = var3.ContextServices
local var6 = var3.Util.GetTextSize
local var7 = var2.PureComponent:extend("LinkButton")
function var7.init(arg1, arg2)
   local var27 = {}
   var27.hovered = false
   arg1.state = var27
   function arg1.onMouseEnter(arg1, arg2, arg3)
      local var33 = {}
      var33.hovered = true
      arg1:setState(var33)
   end
   
   function arg1.onMouseLeave(arg1, arg2, arg3)
      local var40 = {}
      var40.hovered = false
      arg1:setState(var40)
   end
   
   function arg1.onActivated(arg1)
      if arg2.onActivated then
         arg2.onActivated()
      end
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.linkButton
   local var2 = var6(var0.Text, nil, nil, Vector2.new(9999, 9999))
   local var65 = {}
   var65.Size = var0.Size
   var65.BackgroundTransparency = 1
   var65.BorderSizePixel = 0
   var65.LayoutOrder = var0.LayoutOrder
   local var70 = {}
   local var74 = {}
   var74.Size = UDim2.new(0, var2.X, 0, var2.Y)
   var74.BackgroundTransparency = 1
   var74.BorderSizePixel = 0
   var74.Text = var0.Text
   var74.TextSize = var0.TextSize
   var74.Font = var4.FONT
   var74.TextScaled = true
   var74.TextColor3 = var1.textColor
   var74.TextXAlignment = Enum.TextXAlignment.Left
   var74.TextYAlignment = Enum.TextYAlignment.Center
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.Activated = arg1.onActivated
   local var103 = {}
   local var3 = arg1.state.hovered
   if var3 then
      local var108 = {}
      var108.AnchorPoint = Vector2.new(0, 1)
      var108.Position = UDim2.new(0, 0, 1, 0)
      var108.Size = UDim2.new(0, var2.X, 0, 1)
      var108.BackgroundColor3 = var1.textColor
      var108.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var108)
   end
   var103.UnderLine = var3
   var70.Link = var2.createElement("TextButton", var74, var103)
   return var2.createElement("Frame", var65, var70)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.linkButton
   local var2 = var6(var0.Text, nil, nil, Vector2.new(9999, 9999))
   local var65 = {}
   var65.Size = var0.Size
   var65.BackgroundTransparency = 1
   var65.BorderSizePixel = 0
   var65.LayoutOrder = var0.LayoutOrder
   local var70 = {}
   local var74 = {}
   var74.Size = UDim2.new(0, var2.X, 0, var2.Y)
   var74.BackgroundTransparency = 1
   var74.BorderSizePixel = 0
   var74.Text = var0.Text
   var74.TextSize = var0.TextSize
   var74.Font = var4.FONT
   var74.TextScaled = true
   var74.TextColor3 = var1.textColor
   var74.TextXAlignment = Enum.TextXAlignment.Left
   var74.TextYAlignment = Enum.TextYAlignment.Center
   var2.Event.MouseEnter = arg1.onMouseEnter
   var2.Event.MouseLeave = arg1.onMouseLeave
   var2.Event.Activated = arg1.onActivated
   local var103 = {}
   local var3 = arg1.state.hovered
   if var3 then
      local var108 = {}
      var108.AnchorPoint = Vector2.new(0, 1)
      var108.Position = UDim2.new(0, 0, 1, 0)
      var108.Size = UDim2.new(0, var2.X, 0, 1)
      var108.BackgroundColor3 = var1.textColor
      var108.BorderSizePixel = 0
      local var0 = var2.createElement("Frame", var108)
   end
   var103.UnderLine = var3
   var70.Link = var2.createElement("TextButton", var74, var103)
   return var2.createElement("Frame", var65, var70)
end

fun4 = var5.withContext
local var130 = {}
var130.Stylizer = var5.Stylizer
var7 = fun4(var130)(var7)
return var7
