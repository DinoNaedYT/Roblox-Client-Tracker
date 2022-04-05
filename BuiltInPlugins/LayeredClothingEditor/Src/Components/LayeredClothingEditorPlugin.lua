-- libraries
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Components = AvatarToolsShared.Components
local ConfirmDialog = Components.ConfirmDialog

local RunService = game:GetService("RunService")

-- dock widget
local DockWidget = Framework.StudioUI.DockWidget

-- context services
local ContextServices = Framework.ContextServices
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- middleware
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

-- analytics
local AnalyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local LayeredClothingEditor = require(Plugin.Src.Components.LayeredClothingEditor)

local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)

local makePluginActions = require(Plugin.Src.Util.makePluginActions)
local Constants = require(Plugin.Src.Util.Constants)
local Signals = require(Plugin.Src.Context.Signals)
local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)
local delayToNextFrame = require(Plugin.Src.Util.delayToNextFrame)
local ShowDialog = require(Plugin.Src.Util.ShowDialog)

local SetDraggerType = require(Plugin.Src.Actions.SetDraggerType)
local FinishSelectingFromExplorer = require(Plugin.Src.Thunks.FinishSelectingFromExplorer)

local LayeredClothingEditorPlugin = Roact.PureComponent:extend("LayeredClothingEditorPlugin")

local PLUGIN_NAME = "AccessoryFittingTool"
local TOOLBAR_NAME = "LayeredClothing"
local TOOLBAR_BUTTON_NAME = "LayeredClothingEditorButton"

local WINDOW_MIN_SIZE = Vector2.new(380, 550)

function LayeredClothingEditorPlugin:init()
	local plugin = self.props.plugin
	plugin.Name = PLUGIN_NAME

	self.plugin = ContextServices.Plugin.new(plugin)

	self.state = {
		enabled = false,
	}

	-- Plugin Specific Globals
	self.store = Rodux.Store.new(MainReducer, {}, MainMiddleware)
	self.theme = PluginTheme.makePluginTheme()
	self.analytics = ContextServices.Analytics.new(AnalyticsHandlers)
	self.localization = ContextServices.Localization.new({
		pluginName = PLUGIN_NAME,
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		libraries = {
			[AvatarToolsShared.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = AvatarToolsShared.Resources.TranslationDevelopmentTable,
				translationResourceTable = AvatarToolsShared.Resources.TranslationReferenceTable,
			},
		},
	})

	local toolbar = plugin:CreateToolbar(self.localization:getText("Meta", "ToolbarName"))
	self.toolbarButton = toolbar:CreateButton(
		TOOLBAR_BUTTON_NAME,
		self.localization:getText("Main", "Tooltip"),
		"rbxasset://textures/LayeredClothingEditor/LayeredClothingEditorIcon.png",
		self.localization:getText("Main", "ToolbarButton")
	)

	self.onClose = function()
		self:setState({
			enabled = false
		})
		plugin:Deactivate()
		self.store:dispatch(ReleaseEditor())
	end

	self.onToggleWidget = function()
		if RunService:IsRunning() then
			ShowDialog(self.plugin, self.localization, ConfirmDialog,{
				Text = self.localization:getText("EditorErrors", "OpenedWhileRunning"),
			})
		else
			if not self.state.enabled then
				plugin:Activate(true)
			end
			self:setState(function(state)
				return {
					enabled = not state.enabled
				}
			end)
			if not self.state.enabled then
				plugin:Deactivate()
				self.store:dispatch(ReleaseEditor())
			end
		end
	end

	self.pluginActions = ContextServices.PluginActions.new(plugin, makePluginActions(plugin, self.localization))

	self.signals = Signals.new(Constants.SIGNAL_KEYS)

	self.editingItemContext = EditingItemContext.new()

	self.toolbarButton.Click:connect(self.onToggleWidget)

	self.onFocus = function()
		local Selection = game:GetService("Selection")
		Selection:Set({})
		if not plugin:IsActivatedWithExclusiveMouse() then
			plugin:Activate(true)
		end
		delayToNextFrame(function()
			self.toolbarButton:SetActive(true)
			self.signals:get(Constants.SIGNAL_KEYS.PluginWindowFocused):Fire()
		end)
	end
end

function LayeredClothingEditorPlugin:render()
	self.toolbarButton:SetActive(self.state.enabled)

	-- finish selecting when this plugin is disabled.
	if not self.state.enabled then
		self.store:dispatch(FinishSelectingFromExplorer())
	end
	return Roact.createElement(ServiceWrapper, {
		plugin = self.plugin,
		analytics = self.analytics,
		localization = self.localization,
		theme = self.theme,
		store = self.store,
		pluginActions = self.pluginActions,
		mouse = self.props.plugin:getMouse(),
		signals = self.signals,
		editingItemContext = self.editingItemContext,
	}, {
		Widget = Roact.createElement(DockWidget, {
			Title = self.localization:getText("Main", "Title"),
			Enabled = self.state.enabled,
			Size = WINDOW_MIN_SIZE,
			InitialDockState = Enum.InitialDockState.Left,
			MinSize = WINDOW_MIN_SIZE,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			ShouldRestore = true,
			Plugin = self.plugin,
			OnClose = self.onClose,
			OnWidgetRestored = function() end,
			OnWidgetFocused = self.onFocus,
		}, {
			LayeredClothingEditor = self.state.enabled and Roact.createElement(LayeredClothingEditor),
		})
	})
end

return LayeredClothingEditorPlugin
