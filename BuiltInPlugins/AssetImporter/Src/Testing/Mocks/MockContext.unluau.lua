-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = {}
local var187 = var3.Analytics.mock()
local var6 = var3.Localization.mock()
local var193 = require(var0.Packages.Rodux).Store
var193 = require(var0.Src.Reducers.MainReducer)
local var7 = var3.Store.new(var193.new(var193))
local var8 = require(var0.Src.Resources.MakeTheme)(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var4, arg1)
end
