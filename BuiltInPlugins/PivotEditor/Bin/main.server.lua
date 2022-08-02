require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Utility.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local ContextServices = require(Plugin.Packages.Framework).ContextServices

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local EditPivotPlugin = require(Plugin.Src.RoduxComponents.EditPivotPlugin)

local SourceStrings = Plugin.Src.Resources.Localization.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.Localization.LocalizedStrings

local ToastNotification = require(Plugin.Src.Utility.ToastNotification)

local localizationProps = {
	pluginName = "PivotEditor",
	stringResourceTable = SourceStrings,
	translationResourceTable = LocalizedStrings,
}

local function main()
	local roactHandle = Roact.mount(ContextServices.provide({
		ContextServices.Plugin.new(plugin),
		ContextServices.Mouse.new(plugin:GetMouse()),
		ContextServices.Store.new(Rodux.Store.new(MainReducer, nil, {Rodux.thunkMiddleware})),
		ContextServices.Localization.new(localizationProps),
		ToastNotification.new(),
	}, {
		Plugin = Roact.createElement(EditPivotPlugin),
	}))

	plugin.Unloading:Connect(function()
		Roact.unmount(roactHandle)
	end)
end

main()
