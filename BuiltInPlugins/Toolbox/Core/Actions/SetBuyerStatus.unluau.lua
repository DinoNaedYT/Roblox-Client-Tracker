-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Types.BuyerStatus)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   local var0 = {}
   var0.status = arg1
   return var0
end)
