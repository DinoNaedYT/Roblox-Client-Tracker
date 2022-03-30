--[[
	Formatted text entry containing a title and three text boxes for each
	component (X/Y/Z) of a vector.

	Required Props:
		string Title: label text to the left of the input boxes
		UDim2 Size: size of the frame
		boolean Enabled: whether or not the input boxes are interactable
		number LayoutOrder: sort order of frame in a layout
		callback OnVectorValueChanged: function to be called when input box values have changed
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Vector3 VectorValue: vector data to be displayed in text boxes by default
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TextInput = UI.TextInput
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck

local Vector3Entry = Roact.PureComponent:extend("Vector3Entry")
Typecheck.wrap(Vector3Entry, script)

local function verifyNumberFromText(text)
	local result = tonumber(text)

	if result ~= nil then
		return math.floor(result)
	else
		return nil
	end
end

function Vector3Entry:init()
	self.onValueChanged = function()
		if self.xValue ~= nil and self.yValue ~= nil and self.zValue ~= nil then
			self.props.OnVectorValueChanged(Vector3.new(self.xValue, self.yValue, self.zValue))
		else
			self.props.OnVectorValueChanged(nil)
		end
	end

	self.onXChanged = function(text)
		self.xValue = verifyNumberFromText(text)
		self.onValueChanged()
	end

	self.onYChanged = function(text)
		self.yValue = verifyNumberFromText(text)
		self.onValueChanged()
	end

	self.onZChanged = function(text)
		self.zValue = verifyNumberFromText(text)
		self.onValueChanged()
	end
end

function Vector3Entry:willUpdate(nextProps)
	if self.props.VectorValue ~= nextProps.VectorValue then
		if nextProps.VectorValue ~= Roact.None then
			self.xValue = nextProps.VectorValue.X
			self.yValue = nextProps.VectorValue.Y
			self.zValue = nextProps.VectorValue.Z
		end
	end
end

local function useStateOrPropValue(valueFromState, valueFromProp, enabled)
	if not enabled then
		return ""
	end

	if not valueFromState then
		if valueFromProp then
			return tostring(valueFromProp)
		else
			return ""
		end
	end
	return tostring(valueFromState)
end

function Vector3Entry:render()
	local props = self.props

	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local title = props.Title
	local enabled = props.Enabled
	local vectorValue = props.VectorValue
	local theme = props.Stylizer

	local orderIterator = LayoutOrderIterator.new()

	local hasVectorValue = vectorValue ~= nil
	local xValue = useStateOrPropValue(self.xValue, hasVectorValue and vectorValue.X, enabled)
	local yValue = useStateOrPropValue(self.yValue, hasVectorValue and vectorValue.Y, enabled)
	local zValue = useStateOrPropValue(self.zValue, hasVectorValue and vectorValue.Z, enabled)

	return Roact.createElement(Pane, {
		Size = size,
		LayoutOrder = layoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = theme.FramePadding,
	}, {
		Label = Roact.createElement(TextLabel, {
			Text = title,
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = orderIterator:getNextOrder(),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		InputBoxes = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			Spacing = theme.ValueTextBoxPadding,
			Padding = {Right = theme.FramePadding},
		}, {
			XInput = Roact.createElement(TextInput, {
				Enabled = enabled,
				Style = "FilledRoundedBorder",
				PlaceholderText = "X",
				Text = xValue,
				Size = UDim2.new(0, theme.ValueTextBoxWidth, 1, 0),
				OnTextChanged = self.onXChanged,
				LayoutOrder = orderIterator:getNextOrder(),
			}),

			YInput = Roact.createElement(TextInput, {
				Enabled = enabled,
				Style = "FilledRoundedBorder",
				PlaceholderText = "Y",
				Text = yValue,
				Size = UDim2.new(0, theme.ValueTextBoxWidth, 1, 0),
				OnTextChanged = self.onYChanged,
				LayoutOrder = orderIterator:getNextOrder(),
			}),

			ZInput = Roact.createElement(TextInput, {
				Enabled = enabled,
				Style = "FilledRoundedBorder",
				PlaceholderText = "Z",
				Text = zValue,
				Size = UDim2.new(0, theme.ValueTextBoxWidth, 1, 0),
				OnTextChanged = self.onZChanged,
				LayoutOrder = orderIterator:getNextOrder(),
			}),
		})
	})
end

Vector3Entry = withContext({
	Stylizer = ContextServices.Stylizer,
})(Vector3Entry)

return Vector3Entry