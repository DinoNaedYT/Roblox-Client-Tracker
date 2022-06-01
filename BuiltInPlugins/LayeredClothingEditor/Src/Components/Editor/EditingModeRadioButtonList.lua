--[[
	list of radio buttons of Inner cage and Outer cage

	Props:
		number LayoutOrder: render order of component in layout
		UDim2 Size: size of the frame
		table Localization: A Localization ContextItem, which is provided via withContext.
		callback SelectEditingCage: function to call when select a cage, provided via dispatch.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		EnumItem EditingCage: cage that is currently editing, provided via store
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		table Signals: A Signals ContextItem, which is provided via withContext.
		table PointData: Rbf point data for the cages being edited, provided via mapStateToProps.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local RadioButton = UI.RadioButton
local Pane = UI.Pane

local SignalsContext = require(Plugin.Src.Context.Signals)
local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)

local SelectEditingCage = require(Plugin.Src.Thunks.SelectEditingCage)

local Constants = require(Plugin.Src.Util.Constants)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)

local EditingModeRadioButtonList = Roact.PureComponent:extend("EditingModeRadioButtonList")

function EditingModeRadioButtonList:init()
	local props = self.props

	self.state = {
		selectedKey = self.props.EditingCage,
	}

	self.onClickMeshPartMode = function()
		self.onClick(Constants.EDIT_MODE.Mesh, false)
	end

	self.onClick = function(key, isDisabled)
		if isDisabled then
			return
		end
		if (self.state.selectedKey ~= key) then
			props.SelectEditingCage(key)
			self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged):Fire()
			self:setState({
				selectedKey = key,
			})
		end
	end
end

-- when editing item updated, will update what should be the default cage to select
-- then select it in state
function EditingModeRadioButtonList:didUpdate()
	local previousItem = self.editingItem
	local currentItem = self.props.EditingCage
	if previousItem ~= currentItem then
		self:setState({
			selectedKey = self.props.EditingCage,
		})
	end
	self.editingItem = currentItem
end

function EditingModeRadioButtonList:render()
	local props = self.props
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Stylizer

	local editingItem = props.EditingItemContext:getItem()
	local isCaged = ItemCharacteristics.hasAnyCage(editingItem)
	local isInnerButtonDisabled = not ItemCharacteristics.hasInnerCage(editingItem)
	local isOuterButtonDisabled = not ItemCharacteristics.hasOuterCage(editingItem)

	return Roact.createElement(Pane, {
		Size = size,
		LayoutOrder = layoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Spacing = theme.Padding,
	}, {
		Outer = Roact.createElement(RadioButton, {
			Disabled = isOuterButtonDisabled,
			Key = Constants.EDIT_MODE_KEY_TO_STRING[Enum.CageType.Outer],
			LayoutOrder = 1,
			OnClick = function() self.onClick(Enum.CageType.Outer, isOuterButtonDisabled) end,
			Selected = (self.state.selectedKey == Enum.CageType.Outer),
			Text = localization:getText("EditingMode", "OuterCage"),
		}),
		Inner = Roact.createElement(RadioButton, {
			Disabled = isInnerButtonDisabled,
			Key = Constants.EDIT_MODE_KEY_TO_STRING[Enum.CageType.Inner],
			LayoutOrder = 2,
			OnClick = function() self.onClick(Enum.CageType.Inner, isInnerButtonDisabled) end,
			Selected = (self.state.selectedKey == Enum.CageType.Inner),
			Text = localization:getText("EditingMode", "InnerCage"),
		}),
		Mesh = Roact.createElement(RadioButton, {
			Disabled = not editingItem or isCaged,
			Key = Constants.EDIT_MODE_KEY_TO_STRING[Constants.EDIT_MODE.Mesh],
			LayoutOrder = 3,
			OnClick = self.onClickMeshPartMode,
			Selected = (self.state.selectedKey == Constants.EDIT_MODE.Mesh),
			Text = localization:getText("EditingMode", "MeshPart"),
		})
	})
end


EditingModeRadioButtonList = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Signals = SignalsContext,
	EditingItemContext = EditingItemContext,
})(EditingModeRadioButtonList)



local function mapStateToProps(state, props)
	local selectItem = state.selectItem
	local cageData = state.cageData
	return {
		EditingCage = selectItem.editingCage,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SelectEditingCage = function(cage)
			dispatch(SelectEditingCage(cage))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditingModeRadioButtonList)
