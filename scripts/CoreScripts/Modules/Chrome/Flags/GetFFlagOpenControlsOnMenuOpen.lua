local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local GetFStringInGameMenuChromeForcedUserIds =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringInGameMenuChromeForcedUserIds
local GetFIntInGameMenuChromeAllowlistTimeout =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFIntInGameMenuChromeAllowlistTimeout

game:DefineFastFlag("OpenControlsOnMenuOpen2", false)

return function()
	-- Determine localPlayer unless it takes longer than timeout
	local localPlayer = Players.LocalPlayer
	local timeoutTick = tick() + GetFIntInGameMenuChromeAllowlistTimeout()
	while not localPlayer and tick() < timeoutTick do
		localPlayer = Players.LocalPlayer
		task.wait()
	end

	-- Enable new feature for users allowlisted into any chrome variant for dogfooding
	local forcedUserIds = GetFStringInGameMenuChromeForcedUserIds()
	for forcedUserIdString in forcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	return game:GetFastFlag("OpenControlsOnMenuOpen2")
end
