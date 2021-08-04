local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local StyleModifier = Util.StyleModifier
local StyleValue = Util.StyleValue
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

if THEME_REFACTOR then
	return {
		Background = Decoration.Image,
		BackgroundStyle = {
			Image = StyleKey.ToggleOffImage,
		},
		[StyleModifier.Selected] = {
			BackgroundStyle = {
				Image = StyleKey.ToggleOnImage,
			},
		},
		[StyleModifier.Disabled] = {
			BackgroundStyle = {
				Image = StyleKey.ToggleDisabledImage,
			},
		},
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		local themeName = theme.Name

		local onImage = StyleValue.new("onImage", {
			Light = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
			Dark = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
		})

		local offImage = StyleValue.new("offImage", {
			Light = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
			Dark = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
		})

		local disabledImage = StyleValue.new("disabledImage", {
			Light = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
			Dark = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png",
		})

		local Default = Style.extend(common.MainText, {
			Background = Decoration.Image,
			BackgroundStyle = {
				Image = offImage:get(themeName),
			},
			[StyleModifier.Selected] = {
				BackgroundStyle = {
					Image = onImage:get(themeName),
				},
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = {
					Image = disabledImage:get(themeName),
				},
			},
		})

		return {
			Default = Default,
		}
	end
end
