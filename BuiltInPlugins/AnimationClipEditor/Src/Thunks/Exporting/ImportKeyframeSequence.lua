--[[
	Prompts the user to select an Animation asset to upload, then
	imports the KeyframeSequence from the Roblox asset id.
]]

local KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider")

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetDisplayFrameRate = require(Plugin.Src.Actions.SetDisplayFrameRate)
local SetNotification = require(Plugin.Src.Actions.SetNotification)

local GetFFlagAddImportFailureToast = require(Plugin.LuaFlags.GetFFlagAddImportFailureToast)
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(plugin, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local id = plugin:get():PromptForExistingAssetId("Animation")
		if id and tonumber(id) > 0 then
			local anim
			if GetFFlagAddImportFailureToast() then
				local status = pcall(function()
					anim = KeyframeSequenceProvider:GetKeyframeSequenceById(id, false)
				end)

				if not status then
					store:dispatch(SetNotification("InvalidAnimation", true))
				end

				if not anim then
					return
				end
			else
				anim = KeyframeSequenceProvider:GetKeyframeSequenceById(id, false)
			end

			local newData, frameRate
			if GetFFlagUseTicks() then
				newData, frameRate = RigUtils.fromRigAnimation(anim)
			else
				frameRate = RigUtils.calculateFrameRate(anim)
				newData = RigUtils.fromRigAnimation_deprecated(anim, frameRate)
			end

			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
			store:dispatch(LoadAnimationData(newData, analytics))
			store:dispatch(SetIsDirty(false))
			if GetFFlagUseTicks() then
				store:dispatch(SetDisplayFrameRate(frameRate))
			end

			if not GetFFlagUseTicks() or analytics then
				analytics:report("onImportAnimation", id)
			end
		end
	end
end