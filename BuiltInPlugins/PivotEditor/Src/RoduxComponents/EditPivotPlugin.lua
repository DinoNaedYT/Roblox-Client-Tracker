local FFlagPivotEditorWithContext = game:GetFastFlag("PivotEditorWithContext")
local Selection = game:GetService("Selection")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local StudioUI = require(Plugin.Packages.Framework).StudioUI
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local withContext = ContextServices.withContext

local Analytics = require(Plugin.Packages.DraggerFramework.Utility.Analytics)

local EditPivotSession = require(Plugin.Src.RoduxComponents.EditPivotSession)

local getFFlagPivotAnalytics = require(Plugin.Src.Flags.getFFlagPivotAnalytics)

local EditPivotPlugin = Roact.PureComponent:extend("EditPivotPlugin")

function EditPivotPlugin:init()
	self:setState({
		active = false,
	})

	self.toggleActive = function()
		self:setState({
			active = not self.state.active,
		})
	end
end

function EditPivotPlugin:didMount()
	self._deactivatedConnection = self.props.Plugin:get().Deactivation:Connect(function()
		self:setState({
			active = false,
		})
	end)
end

function EditPivotPlugin:willUnmount()
	self._deactivatedConnection:Disconnect()
end

function EditPivotPlugin:willUpdate(nextProps, nextState)
	-- Must activate the plugin every time we transition from inactive -> active
	if nextState.active and not self.state.active then
		self.props.Plugin:get():Activate(true)
	end
end

function EditPivotPlugin:_onClearPivot()
	local didResetAnyPivot = false
	local objectCount = 0
	for _, object in ipairs(Selection:Get()) do
		if object:IsA("BasePart") then
			objectCount += 1
			if object.PivotOffset ~= CFrame.new() then
				object.PivotOffset = CFrame.new()
				didResetAnyPivot = true
			end
		elseif object:IsA("Model") then
			objectCount += 1
			if object.PrimaryPart then
				if object.PrimaryPart.PivotOffset ~= CFrame.new() then
					object.PrimaryPart.PivotOffset = CFrame.new()
					-- The pivot value is already up to date, but we still need to
					-- prompt the properties pane to update, which we can do
					-- by setting the WorldPivot.
					object.WorldPivot = object:GetPivot()
					didResetAnyPivot = true
				end
			else
				-- Just re-center the pivot within the bounds
				local cframe = object:GetBoundingBox()
				if object.WorldPivot ~= cframe then
					object.WorldPivot = cframe
					didResetAnyPivot = true
				end
			end
		end
	end
	if didResetAnyPivot then
		ChangeHistoryService:SetWaypoint("Clear Pivot")
	end
	if getFFlagPivotAnalytics() then
		Analytics:sendEvent("clearPivot", {
			objectCount = objectCount,
		})
	end
end

function EditPivotPlugin:render()
	return Roact.createFragment({
		Toolbar = Roact.createElement(StudioUI.PluginToolbar, {
			Title = "Pivot",
			RenderButtons = function(toolbar)
				local buttons = {}

				-- Main toggle button
				buttons.EditPivot = Roact.createElement(StudioUI.PluginButton, {
					Toolbar = toolbar,
					Title = "EditPivot", -- not user visible, no localization
					Tooltip = "",
					Icon = "", -- C++ code is source of truth for Tooltip & Icon
					Active = self.state.active,
					OnClick = self.toggleActive,
				})

				-- Oneshot clear button
				buttons.ClearPivot = Roact.createElement(StudioUI.PluginButton, {
					Toolbar = toolbar,
					Title = "ClearPivot", -- not user visible, no localization
					Tooltip = "",
					Icon = "", -- C++ code is source of truth for Tooltip & Icon
					Active = false,
					Enabled = true,
					OnClick = function()
						self:_onClearPivot()
					end,
				})

				return buttons
			end,
		}),

		-- The session represents one activation of the plugin
		Session = self.state.active and Roact.createElement(EditPivotSession),
	})
end

if FFlagPivotEditorWithContext then
	EditPivotPlugin = withContext({
		Plugin = ContextServices.Plugin,
	})(EditPivotPlugin)
else
	ContextServices.mapToProps(EditPivotPlugin, {
		Plugin = ContextServices.Plugin,
	})
end


return EditPivotPlugin
