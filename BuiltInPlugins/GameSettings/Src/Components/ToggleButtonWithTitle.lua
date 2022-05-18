--[[
	ToggleButtonWithTitle Displays a TitledFrame with ToggleButton

	Props:
		string Description: An optional secondary title to place above this section.
		string Title: The title to place to the left of this section.
		callback OnClick: The function that will be called when this button is clicked to turn on and off.

	Optional Props:
		boolean Disabled: Whether or not this button can be clicked.
		number LayoutOrder: The layout order of this component.
		boolean Selected: whether the button should be on or off.
		boolean ShowWarning: whether the description text is shown as warning text
]]

local FFlagGameSettingsEnableVoiceChat = game:GetFastFlag("GameSettingsEnableVoiceChat")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local TitledFrame = Framework.StudioUI.TitledFrame
local ToggleButton = Framework.UI.ToggleButton
local TextWithInlineLink = Framework.UI.TextWithInlineLink

local FrameworkUtil = require(Plugin.Packages.Framework).Util
local FitTextLabel = FrameworkUtil.FitFrame.FitTextLabel

local LayoutOrderIterator = FFlagGameSettingsEnableVoiceChat and require(Plugin.Packages.Framework).Util.LayoutOrderIterator or nil

local ToggleButtonWithTitle = Roact.PureComponent:extend("ToggleButtonWithTitle")

function ToggleButtonWithTitle:init()
	self.state = {
		descriptionWidth = 0,
	}

	self.descriptionRef = Roact.createRef()

	self.onResize = function()
		local descriptionWidthContainer = self.descriptionRef.current
		if not descriptionWidthContainer then
			return
		end

		self:setState({
			descriptionWidth = descriptionWidthContainer.AbsoluteSize.X
		})
	end
end

function ToggleButtonWithTitle:render()
	local props = self.props
	local theme = props.Stylizer

	local descriptionWidth = self.state.descriptionWidth

	local description = props.Description
	local disabled = props.Disabled
	local layoutOrder = props.LayoutOrder
	local selected = props.Selected
	local title = props.Title
	local onClick = props.OnClick
	local showWarning = props.ShowWarning
	local linkProps = FFlagGameSettingsEnableVoiceChat and props.LinkProps or nil

	local layoutIndex
	if FFlagGameSettingsEnableVoiceChat then
		layoutIndex = LayoutOrderIterator.new()
	end

	return Roact.createElement(TitledFrame, {
		Title = title,
		LayoutOrder = layoutOrder,
	}, {
		ToggleButton = Roact.createElement(ToggleButton, {
			Disabled = disabled,
			Selected = selected,
			LayoutOrder = FFlagGameSettingsEnableVoiceChat and layoutIndex:getNextOrder() or 1,
			OnClick = onClick,
			Size = theme.settingsPage.toggleButtonSize,
		}),

		Description = props.Description and
			Roact.createElement(FitTextLabel, Cryo.Dictionary.join(showWarning and theme.fontStyle.SmallError or theme.fontStyle.Subtext, {
				BackgroundTransparency = 1,
				LayoutOrder = FFlagGameSettingsEnableVoiceChat and layoutIndex:getNextOrder() or 2,
				TextTransparency = props.Disabled and 0.5 or 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = description,
				TextWrapped = true,
				width = UDim.new(0, descriptionWidth),
			})),

		LinkText = props.LinkProps and Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join(linkProps, {
			LinkPlaceholder = "[link]",
			MaxWidth = descriptionWidth,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextProps = Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		})),

		DescriptionWidth = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = FFlagGameSettingsEnableVoiceChat and layoutIndex:getNextOrder() or 3,
			Size = UDim2.new(1,0,0,0),
			[Roact.Ref] = self.descriptionRef,
			[Roact.Change.AbsoluteSize] = self.onResize,
		}),
	})
end


ToggleButtonWithTitle = withContext({
	Stylizer = ContextServices.Stylizer,
})(ToggleButtonWithTitle)



return ToggleButtonWithTitle
