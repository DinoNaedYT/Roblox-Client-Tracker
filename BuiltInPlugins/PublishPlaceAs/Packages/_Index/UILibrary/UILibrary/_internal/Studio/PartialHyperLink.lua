local Library = script.Parent.Parent
local Roact = require(Library.Parent.Parent.Roact)
local FFlagCheckPublishedPlaceExistsForDevPublish = game:GetFastFlag("CheckPublishedPlaceExistsForDevPublish")

local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local StudioWidgetHyperlink = require(script.Parent.Hyperlink)

local PartialHyperlink = Roact.PureComponent:extend("PartialHyperlink")

local function calculateTextSize(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end


function PartialHyperlink:render()
	return withTheme(function(theme)
		local style = self.props.Style
		local linkTheme = style and theme.partialHyperlink[style] or theme.partialHyperlink
		local textSize = linkTheme.textSize
		local textTransparency = FFlagCheckPublishedPlaceExistsForDevPublish and linkTheme.transparency or 0

		local hyperLinkTextSize = calculateTextSize(self.props.HyperLinkText, textSize, linkTheme.font)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, hyperLinkTextSize.Y),
			BackgroundTransparency = 1,
		}, {
			HyperLink = Roact.createElement(StudioWidgetHyperlink, {
				Text = self.props.HyperLinkText,
				Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
				Mouse = self.props.Mouse,
				OnClick = self.props.OnClick,
				TextSize = textSize,
			}),
			TextLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
				Size = UDim2.new(1, -hyperLinkTextSize.X, 1, 0),
				TextColor3 = linkTheme.textColor,
				Font = linkTheme.font,
				TextTransparency = textTransparency,
				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = self.props.NonHyperLinkText,
			}),
		})
	end)
end

return PartialHyperlink