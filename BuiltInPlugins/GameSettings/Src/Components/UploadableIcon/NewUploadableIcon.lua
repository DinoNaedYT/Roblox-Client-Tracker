--[[
	Represents a widget for an icon that can be uploaded.
	It displays only when there is not an existing icon,
	in which case UploadableIconWidget was passed a nil Icon prop.

	Props:
		bool Visible = Whether this widget is currently visible.
		function OnClick = A callback invoked when this widget is clicked.
			This will mean that the user wants to add a new icon.
]]
local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)
local withContext = ContextServices.withContext


local BORDER = "rbxasset://textures/GameSettings/DottedBorder_Square.png"
local PLUS = "rbxasset://textures/GameSettings/CenterPlus.png"

local NewUploadableIcon = Roact.PureComponent:extend("NewUploadableIcon")

function NewUploadableIcon:init()
	self.mouseEnter = function()
		self:mouseHoverChanged(true)
	end

	self.mouseLeave = function()
		self:mouseHoverChanged(false)
	end
end

function NewUploadableIcon:mouseHoverChanged(hovering)
	local props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("PointingHand")
	else
		props.Mouse:__resetCursor()
	end
end

function NewUploadableIcon:render()
	local props = self.props
	local visible = props.Visible
	local theme = props.Theme:get("Plugin")

	return Roact.createElement("ImageButton", {
		Visible = visible,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.newThumbnail.background,
		ImageColor3 = theme.newThumbnail.border,
		Image = BORDER,
		Size = UDim2.new(0, 150, 0, 150),

		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,

		[Roact.Event.Activated] = self.props.OnClick,
	}, {
		Plus = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			ImageColor3 = theme.newThumbnail.plus,
			ImageTransparency = 0.4,
			Size = UDim2.new(0, 267, 0, 150),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Image = PLUS,
			ZIndex = 2,
		})
	})
end

if FFlagGameSettingsWithContext then
	NewUploadableIcon = withContext({
		Theme = ContextServices.Theme,
		Mouse = ContextServices.Mouse,
	})(NewUploadableIcon)
else
	ContextServices.mapToProps(NewUploadableIcon, {
		Theme = ContextServices.Theme,
		Mouse = ContextServices.Mouse,
	})
end


return NewUploadableIcon