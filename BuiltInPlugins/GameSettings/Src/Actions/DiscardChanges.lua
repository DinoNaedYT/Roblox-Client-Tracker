-- Discards all user-made changes to settings.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function()
	return {}
end)
