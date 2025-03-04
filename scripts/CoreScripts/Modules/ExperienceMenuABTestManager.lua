--!nonstrict
--[[
	Handles A/B testing of experience menu with IXP service
	on the Experience.Menu and Experience.Menu.Console layers
	eg. v1 = old menu, v2 = VR menu
]]

local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenu = script.Parent.InGameMenu

local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local IsExperienceMenuABTestEnabled = require(script.Parent.IsExperienceMenuABTestEnabled)

local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)
local GetFStringLuaAppConsoleExperienceMenuLayer = require(script.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)

local GetFFlagDisableChromeUnibar = require(script.Parent.Flags.GetFFlagDisableChromeUnibar)()
local GetFFlagDisableChromePinnedChat = require(script.Parent.Flags.GetFFlagDisableChromePinnedChat)()
local GetFFlagDisableChromeDefaultOpen = require(script.Parent.Flags.GetFFlagDisableChromeDefaultOpen)()

local GetFFlagDisableChromeFollowupUnibar = require(script.Parent.Flags.GetFFlagDisableChromeFollowupUnibar)()
local GetFFlagDisableChromeFollowupFTUX = require(script.Parent.Flags.GetFFlagDisableChromeFollowupFTUX)()
local GetFFlagDisableChromeFollowupOcclusion = require(script.Parent.Flags.GetFFlagDisableChromeFollowupOcclusion)()

local GetFFlagDisableChromeV3Baseline = require(script.Parent.Flags.GetFFlagDisableChromeV3Baseline)()
local GetFFlagDisableChromeV3Captures = require(script.Parent.Flags.GetFFlagDisableChromeV3Captures)()
local GetFFlagDisableChromeV3StaticSelfView = require(script.Parent.Flags.GetFFlagDisableChromeV3StaticSelfView)()
local GetFFlagDisableChromeV3Icon = require(script.Parent.Flags.GetFFlagDisableChromeV3Icon)()
local GetFFlagDisableChromeV3DockedMic = require(script.Parent.Flags.GetFFlagDisableChromeV3DockedMic)()

local GetFFlagEnableNewExperienceMenuLayer =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableNewExperienceMenuLayer

local LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION = "ExperienceMenuVersion"
local ACTION_TRIGGER_THRESHOLD = game:DefineFastInt("CSATV3MenuActionThreshold", 7)
local ACTION_TRIGGER_LATCHED = 10000

local TEST_VERSION = "t10" -- bump on new A/B campaigns
local REPORT_ABUSE_MENU_TEST_VERSION = "art2"
local CONSOLE_MODERNIZATION_TEST_VERSION = "m2"

local DEFAULT_MENU_VERSION = "v1"..TEST_VERSION
local MENU_VERSION_V2 = "v2"..TEST_VERSION
local MENU_VERSION_V3 = "v3"..TEST_VERSION
local REPORT_ABUSE_MENU_VERSION_V2 = "ARv2"..REPORT_ABUSE_MENU_TEST_VERSION

local MENU_VERSION_CONTROLS_ENUM = {
	BASELINE = "v4.1"..TEST_VERSION,
	OLD_LAYOUT = "v4.2"..TEST_VERSION,
	HOME_BUTTON = "v4.3"..TEST_VERSION,
}

local MENU_VERSION_MODERNIZATION_ENUM = {
	MODERNIZED = "v5.1"..TEST_VERSION,
	BIG_TEXT = "v5.2"..TEST_VERSION,
	STICKY_BAR = "v5.3"..TEST_VERSION,
	CONSOLE = "v5.4"..CONSOLE_MODERNIZATION_TEST_VERSION
}

local MENU_VERSION_CHROME_ENUM = {
	UNIBAR = "v6.1"..TEST_VERSION,
	PINNED_CHAT = "v6.2"..TEST_VERSION,
	DEFAULT_OPEN = "v6.3"..TEST_VERSION,
}

local MENU_VERSION_CHROME_FOLLOWUP_ENUM = {
	UNIBAR = "v7.1.1"..TEST_VERSION,
	FTUX = "v7.2.1"..TEST_VERSION,
	OCCLUSION = "v7.3"..TEST_VERSION,
}

local MENU_VERSION_CHROME_V3_ENUM = {
	BASELINE = "v8.1"..TEST_VERSION,
	CAPTURES = "v8.2"..TEST_VERSION,
	STATIC_SELF_VIEW = "v8.3"..TEST_VERSION,
	ICON = "v8.4"..TEST_VERSION,
	DOCKED_MIC = "v8.5"..TEST_VERSION,
}

local validVersion = {
	[DEFAULT_MENU_VERSION] = true,
	[MENU_VERSION_V2] = false,
	[MENU_VERSION_V3] = false,
	[MENU_VERSION_CONTROLS_ENUM.BASELINE] = false,
	[MENU_VERSION_CONTROLS_ENUM.OLD_LAYOUT] = false,
	[MENU_VERSION_CONTROLS_ENUM.HOME_BUTTON] = false,
	[MENU_VERSION_MODERNIZATION_ENUM.MODERNIZED] = true,
	[MENU_VERSION_MODERNIZATION_ENUM.BIG_TEXT] = false,
	[MENU_VERSION_MODERNIZATION_ENUM.STICKY_BAR] = false,
	[MENU_VERSION_MODERNIZATION_ENUM.CONSOLE] = true,
	[MENU_VERSION_CHROME_ENUM.UNIBAR] = not GetFFlagDisableChromeUnibar,
	[MENU_VERSION_CHROME_ENUM.PINNED_CHAT] = not GetFFlagDisableChromePinnedChat,
	[MENU_VERSION_CHROME_ENUM.DEFAULT_OPEN] = not GetFFlagDisableChromeDefaultOpen,
	[REPORT_ABUSE_MENU_VERSION_V2] = false,
	[MENU_VERSION_CHROME_FOLLOWUP_ENUM.UNIBAR] = not GetFFlagDisableChromeFollowupUnibar,
	[MENU_VERSION_CHROME_FOLLOWUP_ENUM.FTUX] = not GetFFlagDisableChromeFollowupFTUX,
	[MENU_VERSION_CHROME_FOLLOWUP_ENUM.OCCLUSION] = not GetFFlagDisableChromeFollowupOcclusion,
	
	-- Invalidate Unibar test variants if the respective disable flag is turned on
	[MENU_VERSION_CHROME_V3_ENUM.BASELINE] = not GetFFlagDisableChromeV3Baseline,
	[MENU_VERSION_CHROME_V3_ENUM.CAPTURES] = not GetFFlagDisableChromeV3Captures,
	[MENU_VERSION_CHROME_V3_ENUM.STATIC_SELF_VIEW] = not GetFFlagDisableChromeV3StaticSelfView,
	[MENU_VERSION_CHROME_V3_ENUM.ICON] = not GetFFlagDisableChromeV3Icon,
	[MENU_VERSION_CHROME_V3_ENUM.DOCKED_MIC] = not GetFFlagDisableChromeV3DockedMic,
}

local ExperienceMenuABTestManager = {}
ExperienceMenuABTestManager.__index = ExperienceMenuABTestManager

function ExperienceMenuABTestManager.getCachedVersion()
	-- check cache first for menu version otherwise, use default
	local cacheFetchSuccess, cachedVersion = pcall(function()
		return AppStorageService:GetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION)
	end)


	-- fallback to default if there was an issue with local storage
	if cacheFetchSuccess and cachedVersion ~= "" and validVersion[cachedVersion] then
		return cachedVersion
	end

	return nil
end

function ExperienceMenuABTestManager.getCSATQualificationThreshold()
	return ACTION_TRIGGER_THRESHOLD
end

function ExperienceMenuABTestManager.v1VersionId()
	return DEFAULT_MENU_VERSION
end

function ExperienceMenuABTestManager.v2VersionId()
	return MENU_VERSION_V2
end

function ExperienceMenuABTestManager.v3VersionId()
	return MENU_VERSION_V3
end

function ExperienceMenuABTestManager.reportAbuseMenuV2VersionId()
	return REPORT_ABUSE_MENU_VERSION_V2
end

function ExperienceMenuABTestManager.controlsBaselineVersionId()
	return MENU_VERSION_CONTROLS_ENUM.BASELINE
end

function ExperienceMenuABTestManager.controlsOldLayoutVersionId()
	return MENU_VERSION_CONTROLS_ENUM.OLD_LAYOUT
end

function ExperienceMenuABTestManager.controlsHomeButtonVersionId()
	return MENU_VERSION_CONTROLS_ENUM.HOME_BUTTON
end

function ExperienceMenuABTestManager.modernizationModernizedVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.MODERNIZED
end

function ExperienceMenuABTestManager.modernizationBigTextVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.BIG_TEXT
end

function ExperienceMenuABTestManager.modernizationStickyBarVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.STICKY_BAR
end

function ExperienceMenuABTestManager.consoleModernizationVersionId()
	return MENU_VERSION_MODERNIZATION_ENUM.CONSOLE
end

function ExperienceMenuABTestManager.chromeVersionId()
	return MENU_VERSION_CHROME_ENUM.UNIBAR
end

function ExperienceMenuABTestManager.chromePinnedChatVersionId()
	return MENU_VERSION_CHROME_ENUM.PINNED_CHAT
end

function ExperienceMenuABTestManager.chromeDefaultOpenVersionId()
	return MENU_VERSION_CHROME_ENUM.DEFAULT_OPEN
end

function ExperienceMenuABTestManager.chromeFollowupVersionId()
	return MENU_VERSION_CHROME_FOLLOWUP_ENUM.UNIBAR
end

function ExperienceMenuABTestManager.chromeFTUXVersionId()
	return MENU_VERSION_CHROME_FOLLOWUP_ENUM.FTUX
end

function ExperienceMenuABTestManager.chromeOcclusionVersionId()
	return MENU_VERSION_CHROME_FOLLOWUP_ENUM.OCCLUSION
end

function ExperienceMenuABTestManager.chromeV3BaselineVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.BASELINE
end

function ExperienceMenuABTestManager.chromeCapturesVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.CAPTURES
end

function ExperienceMenuABTestManager.chromeStaticSelfViewVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.STATIC_SELF_VIEW
end

function ExperienceMenuABTestManager.chromeIconVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.ICON
end

function ExperienceMenuABTestManager.chromeDockedMicVersionId()
	return MENU_VERSION_CHROME_V3_ENUM.DOCKED_MIC
end

function parseCountData(data)
	if not data or typeof(data) ~= "string" then
		return nil, nil
	end
	local splitStr = data:split(":")
	return splitStr[1], splitStr[2]
end

function ExperienceMenuABTestManager.new(ixpServiceWrapper)
	local instance = {
		_currentMenuVersion = nil,
		_currentMenuVersionIsDefault = false,
		_isCSATQualified = nil,
		_ixpServiceWrapper = ixpServiceWrapper or IXPServiceWrapper,
	}
	setmetatable(instance, ExperienceMenuABTestManager)
	return instance
end

function ExperienceMenuABTestManager:getVersion()
	if not IsExperienceMenuABTestEnabled() then
		return DEFAULT_MENU_VERSION
	end

	-- if menu version isn't set, we'll fetch it from local storage
	if not self._currentMenuVersion then
		local cachedVersion = self.getCachedVersion()
		if cachedVersion ~= nil and cachedVersion ~= "" then
			self._currentMenuVersion = cachedVersion
		else
			self._currentMenuVersionIsDefault = true
			self._currentMenuVersion = DEFAULT_MENU_VERSION
		end
	end

	return self._currentMenuVersion
end

function ExperienceMenuABTestManager:isV2MenuEnabled()
	return self:getVersion() == MENU_VERSION_V2
end

function ExperienceMenuABTestManager:isV3MenuEnabled()
	return self:getVersion() == MENU_VERSION_V3
end

function ExperienceMenuABTestManager:isReportAbuseMenuV2Enabled()
	return self:getVersion() == REPORT_ABUSE_MENU_VERSION_V2
end

function ExperienceMenuABTestManager:areMenuControlsEnabled()
	for _, version in pairs(MENU_VERSION_CONTROLS_ENUM) do 
		if(self:getVersion() == version) then
			return true
		end
	end

	return false
end

function ExperienceMenuABTestManager:shouldShowNewNavigationLayout()
	return self:getVersion() == MENU_VERSION_CONTROLS_ENUM.BASELINE or self:getVersion() == MENU_VERSION_CONTROLS_ENUM.HOME_BUTTON
end

function ExperienceMenuABTestManager:shouldShowHomeButton()
	return self:getVersion() == MENU_VERSION_CONTROLS_ENUM.HOME_BUTTON
end

function ExperienceMenuABTestManager:isMenuModernizationEnabled()
	for _, version in pairs(MENU_VERSION_MODERNIZATION_ENUM) do 
		if(self:getVersion() == version) then
			return true
		end
	end

	return false
end

function ExperienceMenuABTestManager:shouldShowBiggerText()
	return self:getVersion() == MENU_VERSION_MODERNIZATION_ENUM.BIG_TEXT
end

function ExperienceMenuABTestManager:shouldShowStickyBar()
	return self:getVersion() == MENU_VERSION_MODERNIZATION_ENUM.STICKY_BAR
end

function ExperienceMenuABTestManager:isChromeEnabled()
	for _, version in MENU_VERSION_CHROME_V3_ENUM do 
		if self:getVersion() == version then
			return true
		end
	end

	for _, version in MENU_VERSION_CHROME_ENUM do 
		if self:getVersion() == version then
			return true
		end
	end

	for _, version in MENU_VERSION_CHROME_FOLLOWUP_ENUM do 
		if self:getVersion() == version then
			return true
		end
	end

	return false
end

function ExperienceMenuABTestManager:shouldPinChat()
	-- All variants in Unibar v3 have pinned chat
	for _, version in MENU_VERSION_CHROME_V3_ENUM do 
		if self:getVersion() == version then
			return true
		end
	end

	-- All variants in follow up Unibar test have pinned chat
	for _, version in MENU_VERSION_CHROME_FOLLOWUP_ENUM do 
		if self:getVersion() == version then
			return true
		end
	end 

	return self:getVersion() == MENU_VERSION_CHROME_ENUM.PINNED_CHAT
end

function ExperienceMenuABTestManager:shouldDefaultOpen()
	-- All variants in Unibar v3 default open
	for _, version in MENU_VERSION_CHROME_V3_ENUM do 
		if self:getVersion() == version then
			return true
		end
	end

	-- All non-FTUX variants in follow up Unibar test have "Default Open"
	return self:getVersion() == MENU_VERSION_CHROME_ENUM.DEFAULT_OPEN or self:getVersion() == MENU_VERSION_CHROME_FOLLOWUP_ENUM.UNIBAR or self:getVersion() == MENU_VERSION_CHROME_FOLLOWUP_ENUM.OCCLUSION
end

function ExperienceMenuABTestManager:shouldShowFTUX()
	return self:getVersion() == MENU_VERSION_CHROME_FOLLOWUP_ENUM.FTUX
end

function ExperienceMenuABTestManager:shouldShowCaptures()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.CAPTURES
end

function ExperienceMenuABTestManager:shouldShowStaticSelfView()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.STATIC_SELF_VIEW
end

function ExperienceMenuABTestManager:shouldShowNewIcon()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.ICON
end

function ExperienceMenuABTestManager:shouldDockMic()
	return self:getVersion() == MENU_VERSION_CHROME_V3_ENUM.DOCKED_MIC
end

-- this is called on the assumption that IXP layers are initialized
function ExperienceMenuABTestManager:initialize()
	if not IsExperienceMenuABTestEnabled() then
		return
	end

	-- fetch variant from IXP
	local layerFetchSuccess, layerData = pcall(function()
		return self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer())
	end)
	local consoleLayerFetchSuccess, consoleLayerData 
	if GetFFlagEnableNewExperienceMenuLayer() then
		consoleLayerFetchSuccess, consoleLayerData =  pcall(function()
			return self._ixpServiceWrapper:GetLayerData(GetFStringLuaAppConsoleExperienceMenuLayer())
		end)
	end

	-- bail if we aren't able to communicate with IXP service
	if not layerFetchSuccess and (not consoleLayerFetchSuccess or not GetFFlagEnableNewExperienceMenuLayer()) then
		return
	end

	-- get the cached menu version and store menu version for next session, we don't want to change for this session
	if not self._currentMenuVersion then
		self._currentMenuVersion = self.getCachedVersion()
	end

	if GetFFlagEnableNewExperienceMenuLayer() then
		if layerData and consoleLayerData then
		-- if console layer data is provided, use that to set menu version (provided normal layer data not provided)
			if consoleLayerData.menuVersion and not layerData.menuVersion then
				if consoleLayerData.menuVersion ~= self._currentMenuVersion or self._currentMenuVersionIsDefault then
					pcall(function()
						AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, consoleLayerData.menuVersion)
						AppStorageService:Flush()
					end)
				end
			elseif layerData.menuVersion ~= self._currentMenuVersion or self._currentMenuVersionIsDefault then
				pcall(function()
					AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, layerData.menuVersion or "")
					AppStorageService:Flush()
				end)
			end
		end
	else
		if layerData and (layerData.menuVersion ~= self._currentMenuVersion or self._currentMenuVersionIsDefault) then
			pcall(function()
				AppStorageService:SetItem(LOCAL_STORAGE_KEY_EXPERIENCE_MENU_VERSION, layerData.menuVersion or "")
				AppStorageService:Flush()
			end)
		end
	end
end

ExperienceMenuABTestManager.default = ExperienceMenuABTestManager.new()
return ExperienceMenuABTestManager
