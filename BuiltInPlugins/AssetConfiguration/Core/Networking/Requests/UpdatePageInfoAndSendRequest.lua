local Plugin = script.Parent.Parent.Parent.Parent

local RequestReason = require(Plugin.Core.Types.RequestReason)
local GetAssetsRequest = require(Plugin.Core.Networking.Requests.GetAssetsRequest)
local GetToolboxItems = require(Plugin.Core.Networking.Requests.GetToolboxItems)
local Category = require(Plugin.Core.Types.Category)
local Rollouts = require(Plugin.Core.Rollouts)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

local Constants = require(Plugin.Core.Util.Constants)

local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

return function(networkInterface, settings, newPageInfo)
	return function(store)
		if not RequestReason.IsUpdate(newPageInfo.requestReason) then
			-- For updating current page, we don't refresh the page, everything else, yes, we do.
			store:dispatch(ClearAssets())
		end

		-- Then, in the GetAssetsRequest, we can check if current pageInfo matches pageInfo when started the request.
		store:dispatch(UpdatePageInfo(newPageInfo, settings))

		local pageInfo = store:getState().pageInfo
		local audioSearchInfo = pageInfo.audioSearchInfo -- or store:getState().assets.audioSearchInfo
		local categoryName = pageInfo.categoryName
		
		if showRobloxCreatedAssets() then
			-- For Luobu we limit the length of Audio assets available in the marketplace for moderation reasons
			if audioSearchInfo == nil then
				audioSearchInfo = {
					minDuration = 0,
					maxDuration = Constants.MAX_AUDIO_SEARCH_DURATION,
				}
			end
		end

		if Category.API_NAMES[categoryName] then
			if Rollouts:getToolboxEndpointMigration() then
				store:dispatch(GetToolboxItems(networkInterface, categoryName,
					audioSearchInfo, pageInfo, settings))
			else
				store:dispatch(GetToolboxItems(networkInterface, Category.API_NAMES[categoryName],
					audioSearchInfo, pageInfo, settings))
			end
		else
			store:dispatch(GetAssetsRequest(networkInterface, pageInfo))
		end
	end
end
