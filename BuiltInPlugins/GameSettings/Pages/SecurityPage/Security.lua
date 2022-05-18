local FFlagGameSettingsShowScaryWarnings = game:GetFastFlag("GameSettingsShowScaryWarnings")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local TextLabel = Framework.UI.Decoration.TextLabel
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local ToggleButtonWithTitle = require(Plugin.Src.Components.ToggleButtonWithTitle)

local AddChange = require(Plugin.Src.Actions.AddChange)

local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local Analytics = require(Plugin.Src.Util.Analytics)

local LOCALIZATION_ID = script.Name

local function loadSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local gameId = state.Metadata.gameId
	local universePermissionsController = contextItems.universePermissionsController

	return {
		function(loadedSettings)
			local enabled = universePermissionsController:GetHttpEnabled(game)
			loadedSettings["HttpEnabled"] = enabled
		end,
		function(loadedSettings)
			local enabled = universePermissionsController:GetStudioAccessToApisAllowed(gameId)
			loadedSettings["StudioAccessToApisAllowed"] = enabled
		end,
		function(loadedSettings)
			local enabled = universePermissionsController:GetThirdPartyPurchasesAllowed(gameId)
			loadedSettings["ThirdPartyPurchaseAllowed"] = enabled
		end,
		function(loadedSettings)
			local enabled = universePermissionsController:GetThirdPartyTeleportsAllowed(gameId)
			loadedSettings["ThirdPartyTeleportAllowed"] = enabled
		end,
	}
end

local function createSaveSettingIfChangedHandler(state, settingName, changeImpl)
	return function()
		local changedValue = state.Settings.Changed[settingName]
		if changedValue ~= nil then
			Analytics.onSecuritySettingChange(settingName, changedValue)
			changeImpl(changedValue)
		end
	end
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local universePermissionsController = contextItems.universePermissionsController
	
	return {
		createSaveSettingIfChangedHandler(state, "HttpEnabled", function(changedValue)
			universePermissionsController:SetHttpEnabled(game, changedValue)
		end),
		createSaveSettingIfChangedHandler(state, "StudioAccessToApisAllowed", function(changedValue)
			universePermissionsController:SetStudioAccessToApisAllowed(gameId, changedValue)
		end),
		createSaveSettingIfChangedHandler(state, "ThirdPartyPurchaseAllowed", function(changedValue)
			universePermissionsController:SetThirdPartyPurchasesAllowed(gameId, changedValue)
		end),
		createSaveSettingIfChangedHandler(state, "ThirdPartyTeleportAllowed", function(changedValue)
			universePermissionsController:SetThirdPartyTeleportsAllowed(gameId, changedValue)
		end),
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, isChanged)
	local loadedProps = {
		HttpEnabled = getValue("HttpEnabled"),
		StudioAccessToApisAllowed = getValue("StudioAccessToApisAllowed"),
		ThirdPartyPurchaseAllowed = getValue("ThirdPartyPurchaseAllowed"),
		ThirdPartyTeleportAllowed = getValue("ThirdPartyTeleportAllowed"),
		HttpEnabledValueChanged = if not FFlagGameSettingsShowScaryWarnings then nil else isChanged("HttpEnabled"),
		ThirdPartyPurchaseAllowedValueChanged = if not FFlagGameSettingsShowScaryWarnings then nil else isChanged("ThirdPartyPurchaseAllowed"),
		ThirdPartyTeleportAllowedValueChanged = if not FFlagGameSettingsShowScaryWarnings then nil else isChanged("ThirdPartyTeleportAllowed"),
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		HttpEnabledChanged = setValue("HttpEnabled"),
		StudioApiServicesChanged = setValue("StudioAccessToApisAllowed"),
		ThirdPartyPurchaseChanged = setValue("ThirdPartyPurchaseAllowed"),
		ThirdPartyTeleportAllowedChanged = setValue("ThirdPartyTeleportAllowed"),
	}
	return dispatchFuncs
end

local Security = Roact.PureComponent:extend(script.Name)

function Security:render()
	local localization = self.props.Localization

	local function createChildren()
		local props = self.props
		local localization = props.Localization
		local insecureSettings = if not FFlagGameSettingsShowScaryWarnings
			then nil
			else
				(props.HttpEnabledValueChanged and props.HttpEnabled)
				or (props.ThirdPartyPurchaseAllowedValueChanged and props.ThirdPartyPurchaseAllowed)
				or (props.ThirdPartyTeleportAllowedValueChanged and props.ThirdPartyTeleportAllowed)

		local theme = props.Stylizer

		local layoutOrder = LayoutOrderIterator.new(1)

		return {
			InsecureWarning = insecureSettings and Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = layoutOrder:getNextOrder(),
			}, {
				UILayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, theme.dialog.spacing),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
	
				Warning = Roact.createElement("ImageLabel", {
					Image = theme.warningIcon,
					LayoutOrder = layoutOrder:getNextOrder(),
					BackgroundTransparency = 1,
					Size = UDim2.new(0, theme.warningDialog.icon.size, 0, theme.warningDialog.icon.size),
				}),
	
				Description = Roact.createElement(TextLabel, {
					BackgroundTransparency = 1,
					LayoutOrder = layoutOrder:getNextOrder(),
					Style = "SubText",
					Text = localization:getText("Security", "InsecureWarning"),
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor = theme.warningColor,
					TextSize = theme.fontStyle.Subtitle.TextSize,
				}),
			}),			

			HttpEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("General", "HttpDesc"),
				Disabled = (props.HttpEnabled == nil),
				LayoutOrder = layoutOrder:getNextOrder(),
				OnClick = function()
					props.HttpEnabledChanged(not props.HttpEnabled)
				end,
				Selected = props.HttpEnabled,
				Title = localization:getText("General", "TitleHttp"),
			}),

			StudioApiServicesEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("General", "StudioApiServicesDesc"),
				Disabled = (props.StudioAccessToApisAllowed == nil),
				LayoutOrder = layoutOrder:getNextOrder(),
				OnClick = function()
					props.StudioApiServicesChanged(not props.StudioAccessToApisAllowed)
				end,
				Selected = props.StudioAccessToApisAllowed,
				Title = localization:getText("General", "TitleStudioApiServices"),
			}),

			ThirdPartyPurchasesEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("Security", "EnableThirdPartyPurchasesDescription"),
				Disabled = (props.ThirdPartyPurchaseAllowed == nil),
				LayoutOrder = layoutOrder:getNextOrder(),
				OnClick = function()
					props.ThirdPartyPurchaseChanged(not props.ThirdPartyPurchaseAllowed)
				end,
				Selected = props.ThirdPartyPurchaseAllowed,
				Title = localization:getText("Security", "EnableThirdPartyPurchases"),
			}),

			ThirdPartyTeleportsEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("Security", "EnableThirdPartyTeleportsDescription"),
				Disabled = (props.ThirdPartyTeleportAllowed == nil),
				LayoutOrder = layoutOrder:getNextOrder(),
				OnClick = function()
					props.ThirdPartyTeleportAllowedChanged(not props.ThirdPartyTeleportAllowed)
				end,
				Selected = props.ThirdPartyTeleportAllowed,
				Title = localization:getText("Security", "EnableThirdPartyTeleports"),
			}),
		}
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = LOCALIZATION_ID,
		CreateChildren = createChildren,
	})
end

Security = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(Security)

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Security = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		local isChanged = function(propName)
			return state.Settings.Changed[propName] ~= nil
		end

		return loadValuesToProps(getValue, if not FFlagGameSettingsShowScaryWarnings then nil else isChanged)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(Security)

Security.LocalizationId = LOCALIZATION_ID

return Security
