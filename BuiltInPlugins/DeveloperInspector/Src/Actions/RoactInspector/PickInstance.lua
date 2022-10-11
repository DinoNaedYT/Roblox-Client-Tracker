--[[
	Select an instance in the element view, expanding any ancestors.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(path)
	return {
		path = path,
	}
end)
