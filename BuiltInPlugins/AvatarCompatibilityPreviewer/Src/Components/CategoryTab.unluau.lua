-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = var2.UI.SimpleTab
return var2.Wrappers.withForwardRef(function(arg1)
   local var62 = var1.Dictionary
   var62 = arg1
   local var64 = {}
   var64.Style = "CategoryTab"
   return var3.createElement(var4, var62.join(var62, var64))
end)
