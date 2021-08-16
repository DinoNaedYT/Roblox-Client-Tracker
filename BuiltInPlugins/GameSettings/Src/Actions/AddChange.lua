-- Adds a value to the Settings Changed table.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework).Util.Action

return Action(script.Name, function(setting, value)
	return {
		setting = setting,
		value = value,
	}
end)
