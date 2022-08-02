local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

local TextService = game:GetService("TextService")

return function(props)
	local font = Enum.Font.Legacy
	local fontSize = 10
	local textSize = TextService:GetTextSize(props.Message, fontSize, font, Vector2.new())
	local padding = 4

	return Roact.createElement(Roact.Portal, {
		target = props.Window,
	}, {
		Frame = Roact.createElement("Frame", {
			ZIndex = 4,
			Size = UDim2.new(0, textSize.X + padding, 0, textSize.Y + padding),
			Position = props.Position,

			BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
			BorderSizePixel = 0,

			AnchorPoint = Vector2.new(0, 1),
		}, {
			Shadow = Roact.createElement("Frame", {
				ZIndex = 3,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 2, 0, 2),
				BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Shadow),
				BorderSizePixel = 0
			}),

			Text = if FFlagDevFrameworkMigrateTextLabels then (
				Roact.createElement(TextLabel, {
					ZIndex = 4,
					Text = props.Message,
					TextWrapped = true,
					Style = "Body",
				})
			) else (
				Roact.createElement("TextLabel", {
					ZIndex = 4,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Text = props.Message,
					TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),
					TextWrapped = true,
					Font = font,
					TextSize = fontSize,
				})
			),
		}),
	})
end