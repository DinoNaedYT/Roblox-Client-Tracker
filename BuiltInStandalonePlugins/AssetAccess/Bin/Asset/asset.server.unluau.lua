-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script:FindFirstAncestor("AssetAccess")
require(var0.Bin.Common.defineLuaFlags)
local var1 = require(var0.Packages.TestLoader)
var1.launch("AssetAccess", var0.Src)
local var22 = var1.isCli()
if var22 then
end
var22 = require(var0.Src.SharedFlags.getFFlagAssetAccessErrorMessageImprovements)
if not var22() then
end
if plugin.HostDataModelType ~= Enum.StudioDataModelType.Edit then
end
local var3 = require(var0.Src.Util.ShareDialogController).new(plugin)
plugin.Unloading:Once(function()
   var3:Destroy()
end)
