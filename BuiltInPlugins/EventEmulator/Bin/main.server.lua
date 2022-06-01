--[[
	Event Emulator main script.
	Mounts and unmounts the Roact tree.
]]

if not (game:GetService("StudioService"):HasInternalPermission()) then
	return
end

require(script.Parent.defineLuaFlags)

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)

local MainPlugin = require(main.Src.MainPlugin)
local handle

local function init()
	plugin.Name = main.Name

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
		ClickableWhenViewportHidden = true,
	})

	handle = Roact.mount(mainPlugin)
end

plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
