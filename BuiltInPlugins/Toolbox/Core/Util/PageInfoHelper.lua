local Plugin = script.Parent.Parent.Parent

local deepEqual = require(Plugin.Libs.Framework).Util.deepEqual

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)
local Category = require(Plugin.Core.Types.Category)
local Constants = require(Plugin.Core.Util.Constants)

local PageInfoHelper = {}

function PageInfoHelper.getCurrentTab(pageInfo)
	local currentTab = Category.getTabKeyForCategoryName(pageInfo.categoryName)
	return currentTab
end
function PageInfoHelper.getCategory(categoryName)
	local category = Category.getCategoryByName(categoryName)

	if not category or not category.category then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No category for category name %s"):format(tostring(categoryName)))
		end
		return ""
	end

	return category.category
end

function PageInfoHelper.getCategoryForPageInfo(pageInfo)
	return PageInfoHelper.getCategory(pageInfo.categoryName)
end

function PageInfoHelper.getSortType(sorts, index)
	if not (sorts and index) then return nil end
	local sort = sorts[index]

	if not sort or not sort.sort then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua Toolbox: no sort for sort index %s"):format(tostring(index)))
		end
		return ""
	end

	return sort.sort
end

function PageInfoHelper.getSortTypeForPageInfo(pageInfo)
	return PageInfoHelper.getSortType(pageInfo.sorts, pageInfo.sortIndex)
end

function PageInfoHelper.getGroupId(groups, index)
	if index == 0 then
		return 0
	end

	if index < 1 or index > #groups or not groups[index].id then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua Toolbox: no group for group index %s"):format(tostring(index)))
		end
		return 0
	end

	return groups[index].id
end

function PageInfoHelper.getGroupIdForPageInfo(pageInfo)
	return PageInfoHelper.getGroupId(pageInfo.groups, pageInfo.groupIndex)
end

function PageInfoHelper.getEngineAssetTypeForPageInfoCategory(pageInfo)
	local category = Category.getCategoryByName(pageInfo.categoryName)

	if not category or not category.assetType then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No assetType for category name %s"):format(tostring(pageInfo.categoryName)))
		end
		return nil
	end

	return Category.getEngineAssetType(category.assetType)
end

function PageInfoHelper.getBackendNameForPageInfoCategory(pageInfo)
	local engineAssetType = PageInfoHelper.getEngineAssetTypeForPageInfoCategory(pageInfo)
	return engineAssetType and engineAssetType.Name or nil
end

function PageInfoHelper.isDeveloperCategory(pageInfo)
	local currentCategory = PageInfoHelper.getCategoryForPageInfo(pageInfo)
	return AssetConfigConstants.developCategoryType[currentCategory]
end

function PageInfoHelper.isPackagesCategory(pageInfo)
	local currentCategory = PageInfoHelper.getCategoryForPageInfo(pageInfo)
	return AssetConfigConstants.packagesCategoryType[currentCategory]
end

function PageInfoHelper.getRequestInfo(pageInfo)
	local category = PageInfoHelper.getCategoryForPageInfo(pageInfo) or ""
	local searchTerm = pageInfo.searchTerm or ""
	local targetPage = pageInfo.targetPage or 1
	local sortType = PageInfoHelper.getSortTypeForPageInfo(pageInfo) or ""

	local categoryIsGroup = Category.categoryIsGroupAsset(pageInfo.categoryName)
	local groupId = categoryIsGroup
		and PageInfoHelper.getGroupIdForPageInfo(pageInfo)
		or 0

	local creatorId = pageInfo.creator and pageInfo.creator.Id or ""
	local creatorType = pageInfo.creator and pageInfo.creator.Type or 1

	return {
		category = category,
		creatorId = creatorId,
		creatorType = creatorType,
		groupId = groupId,
		searchTerm = searchTerm,
		sortType = sortType,
		targetPage = targetPage,
	}
end

--[[
	This is useful for checking whether pageInfo has been changed while a request was in flight.
]]
function PageInfoHelper.isPageInfoStale(pageInfo, store)
	local pageRequestInfo = PageInfoHelper.getRequestInfo(pageInfo)
	local newPageRequestInfo = PageInfoHelper.getRequestInfo(store:getState().pageInfo)

	return not deepEqual(pageRequestInfo, newPageRequestInfo)
end

return PageInfoHelper
