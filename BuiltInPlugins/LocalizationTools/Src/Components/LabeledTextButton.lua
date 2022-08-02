--[[
	A widget containing a text label on the left and a text button on the right
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local TextLabel = UI.Decoration.TextLabel

local StyleModifier = Framework.Util.StyleModifier

local LabeledTextButton = Roact.PureComponent:extend("LabeledTextButton")

function LabeledTextButton:render()
	local props = self.props
	local theme = props.Stylizer
	local layoutOrder = props.LayoutOrder
	local labelText = props.LabelText
	local buttonText = props.ButtonText
	local active = props.Active
	local onClick = active and props.OnButtonClick
		or function() end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, theme.Height),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),
		Label = if FFlagDevFrameworkMigrateTextLabels then (
			Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Size = UDim2.new(0, theme.LabelWidth, 1, 0),
				Text = labelText,
				StyleModifier = if active then nil else StyleModifier.Disabled,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		) else (
			Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Size = UDim2.new(0, theme.LabelWidth, 1, 0),
				Text = labelText,
				TextColor3 = active and theme.TextColor
					or theme.DisabledTextColor,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		),
		ButtonContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(0, theme.ButtonWidth, 1, 0),
		}, {
			Button = Roact.createElement(Button, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				OnClick = onClick,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, theme.ButtonHeight),
				Style = active and "TextButton"
					or "DisabledTextButton",
				Text = buttonText,
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),
		})
	})
end

LabeledTextButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(LabeledTextButton)

return LabeledTextButton
