-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Action
local var1 = {}
local var15 = var0("LoadWebResults", function(arg1)
   local var0 = {}
   var0.searchTerm = arg1
   return var0
end)
var1.LoadWebResults = var15
var15 = var0
local var21 = var15("LoadedWebResults", function(arg1, arg2, arg3)
   local var0 = {}
   var0.success = arg1
   var0.key = arg2
   var0.results = arg3
   return var0
end)
var1.LoadedWebResults = var21
var21 = var0
var1.SearchTextChanged = var21("SearchTextChanged", function(arg1)
   local var0 = {}
   var0.text = arg1
   return var0
end)
return var1
