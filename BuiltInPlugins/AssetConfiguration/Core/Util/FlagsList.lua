local Plugin = script.Parent.Parent.Parent
local Libs = Plugin.Libs
local Util = require(Libs.Framework).Util

local FlagsList = Util.Flags.new({
	FFlagToolboxUseDevFrameworkAssetPreview = {"ToolboxUseDevFrameworkAssetPreview"},
})

return FlagsList
