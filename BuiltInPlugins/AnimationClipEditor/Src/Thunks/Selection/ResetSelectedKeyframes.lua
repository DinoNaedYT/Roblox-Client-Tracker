--[[
	Resets the selected keyframes to the base pose.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function()
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData
		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)

		for instanceName, instance in pairs(selectedKeyframes) do
			newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
			newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)

			local dataInstance = newData.Instances[instanceName]

			for trackName, _ in pairs(instance) do
				dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])

				local keyframes = Cryo.Dictionary.keys(instance[trackName])
				local track = dataInstance.Tracks[trackName]

				for _, keyframe in ipairs(keyframes) do
					if track.Data[keyframe] then
						local newValue = TrackUtils.getDefaultValue(track)
						AnimationData.setKeyframeData(track, keyframe, {
							Value = newValue,
						})
					end
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
	end
end