local Plugin = script.Parent.Parent.Parent.Parent

local PluginWidget = require(Plugin.Core.Components.PluginWidget.PluginWidget)

return PluginWidget("DockWidget", function(self, id)
	local props = self.props
	local plugin = props.plugin

	if game:GetFastFlag("ImprovePluginSpeed_Toolbox") and props.Widget then
		return props.Widget
	end

	local dwpgi = DockWidgetPluginGuiInfo.new(
		props.InitialDockState,
		props.InitialEnabled,
		props.InitialEnabledShouldOverrideRestore,
		props.FloatingXSize,
		props.FloatingYSize,
		props.MinWidth,
		props.MinHeight)

	return plugin:CreateDockWidgetPluginGui(id, dwpgi)
end)
