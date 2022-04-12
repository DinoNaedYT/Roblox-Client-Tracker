--[[
	Performs common initialisation for DeveloperStorybook at most once.
]]
local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true

	local Main = script.Parent.Parent.Parent

	local RefactorFlags = require(Main.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = true
end
