--[[
	Saves the current animation as a KeyframeSequence under the current name,
	into the AnimSaves folder under the currently selected rig.
]]
-- TODO: Remove when GetFFlagChannelAnimations() is ON

local CollectionService = game:GetService("CollectionService")

local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local deepCopy = require(Plugin.Src.Util.deepCopy)

local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetNotification = require(Plugin.Src.Actions.SetNotification)

return function(name, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local rootInstance = state.Status.RootInstance
		if not (animationData and rootInstance) then
			return
		end

		local newData = deepCopy(animationData)
		newData.Metadata.Name = name
		store:dispatch(SetAnimationData(newData))

		local animSaves = RigUtils.getAnimSavesFolder(rootInstance, true)

		local keyframeSequence, numKeyframes, numPoses, numEvents
			= RigUtils.toRigAnimation(newData, rootInstance)

		keyframeSequence.Name = newData.Metadata.Name

		if animSaves:FindFirstChild(name) then
			animSaves[name]:Destroy()
		end
		keyframeSequence.Parent = animSaves

		-- Tag the KeyframeSequence with the time so that loading can
		-- bring up the animation with the most recent timestamp
		local tags = CollectionService:GetTags(keyframeSequence)
		for _, tag in ipairs(tags) do
			CollectionService:RemoveTag(keyframeSequence, tag)
		end
		CollectionService:AddTag(keyframeSequence, tostring(os.time()))

		store:dispatch(SetIsDirty(false))
		store:dispatch(SetNotification("Saved", name))

		analytics:report("onSaveAnimation", name, numKeyframes, numPoses, numEvents)
	end
end