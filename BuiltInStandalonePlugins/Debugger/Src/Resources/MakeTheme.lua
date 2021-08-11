--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local StyleKey = Style.StyleKey



local PluginTheme = {
	-- New Plugin Setup: Add theme values, i.e.
	-- [StyleKey.Something] = Color3.new()
	MainBackground = StyleKey.MainBackground,
	Separator = {
		['Weight'] = 1,
		['StretchMargin'] = 15,
		['Color'] = Color3.fromRGB(150, 150, 150),
	},
	BorderColor = Color3.fromRGB(229, 229, 229),
}

if THEME_REFACTOR then
	return function(createMock)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(PluginTheme)
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	warn("Stylizer is required for this template")
	return
end
