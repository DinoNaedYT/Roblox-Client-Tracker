-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AudioEqualizerEditor")
if not require(var0.Bin.Common.defineLuaFlags).getFFlagEnableAudioEqualizerEditor() then
end
if require(var0.Packages.TestLoader).isCli() then
   error("roblox-cli should not be loading standalone plugins")
end
local var1 = require(var0.Bin.Common.pluginType)
require(var0.Src.Util.AnalyzerUtil).setPlugin(plugin)
if var1.get() ~= var1.Standalone then
end
local var75 = var0.Bin
var75 = require(var75.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var75)
