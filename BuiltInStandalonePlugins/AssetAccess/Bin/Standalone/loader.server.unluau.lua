-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
require(var0.Bin.Common.defineLuaFlags)
if not require(var0.Src.SharedFlags.getFFlagAssetAccessErrorMessageImprovements)() then
end
local var1 = require(var0.Packages.TestLoader)
var1.launch("AssetAccess", var0.Src)
if var1.isCli() then
end
plugin.Name = var0.Name
require(script.Parent.main)(plugin)
