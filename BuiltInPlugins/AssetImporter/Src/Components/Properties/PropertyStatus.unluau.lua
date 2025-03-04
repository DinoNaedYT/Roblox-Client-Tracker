-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Tooltip
local var6 = var4.Image
local var7 = require(var0.Src.Resources.StatusLevel)
local var8 = var1.PureComponent:extend("PropertyStatus")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.StatusLevel
   local var3 = var1.PropertyView.IconSize
   local var4 = true
   if var2 == "Error" then
      if var2 ~= var7.Error then
         local var0 = false
      end
      local var0 = true
   end
   if var4 then
      local var0 = var1.ErrorIcon or var1.WarningIcon
   end
   local var467 = {}
   var467.Size = UDim2.fromOffset(var3, var3)
   var467.Style = var1.WarningIcon
   var467.LayoutOrder = var0.LayoutOrder
   local var472 = {}
   local var476 = {}
   var476.Text = var0.Localization:getText("Statuses", var0.StatusMessage, var0.StatusContext)
   var472.Tooltip = var1.createElement(var5, var476)
   return var1.createElement(var6, var467, var472)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.StatusLevel
   local var3 = var1.PropertyView.IconSize
   local var4 = true
   if var2 == "Error" then
      if var2 ~= var7.Error then
         local var0 = false
      end
      local var0 = true
   end
   if var4 then
      local var0 = var1.ErrorIcon or var1.WarningIcon
   end
   local var467 = {}
   var467.Size = UDim2.fromOffset(var3, var3)
   var467.Style = var1.WarningIcon
   var467.LayoutOrder = var0.LayoutOrder
   local var472 = {}
   local var476 = {}
   var476.Text = var0.Localization:getText("Statuses", var0.StatusMessage, var0.StatusContext)
   var472.Tooltip = var1.createElement(var5, var476)
   return var1.createElement(var6, var467, var472)
end

fun10 = var3.withContext
local var484 = {}
var484.Localization = var3.Localization
var484.Stylizer = var3.Stylizer
var8 = fun10(var484)(var8)
return var8
