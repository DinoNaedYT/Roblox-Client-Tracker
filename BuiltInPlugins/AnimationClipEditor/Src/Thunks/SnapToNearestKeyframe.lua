--[[
	Given a frame, attempts to find the nearest keyframe within a determined amount of
	pixels on the Dope Sheet. If there are multiple keyframes that satisfy this, then
	the closet keyframe out of them is chosen. If there are no keyframes that satisfy
	this, then scrubbing behaves as normal.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtil = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SnapToNearestFrame = require(Plugin.Src.Thunks.SnapToNearestFrame)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(frame, trackWidth)
	return function(store)
		local state = store:getState()

		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local instances = animationData.Instances
		if not instances then
			return
		end

		local root = instances.Root
		if not root then
			return
		end

		local tracks = root.Tracks

		local snapped = false
		local snapFrame = frame
		if tracks then
			local scroll = state.Status.Scroll
			local zoom = state.Status.Zoom
			local editingLength = state.Status.EditingLength
			local range = TrackUtils.getZoomRange(animationData, scroll, zoom, editingLength)

			local framePosition = TrackUtils.getScaledKeyframePosition(frame, range.Start, range.End, trackWidth)

			local closestKey = range.End + 1
			for _, track in pairs(tracks) do
				if #track.Keyframes > 0 then
					local first, second = KeyframeUtil.findNearestKeyframes(track.Keyframes, frame)
					if math.abs(track.Keyframes[first] - frame) < math.abs(frame - closestKey) then
						closestKey = track.Keyframes[first]
					end
					if second and math.abs(track.Keyframes[second] - frame) < math.abs(frame - closestKey) then
						closestKey = track.Keyframes[second]
					end
				end
			end

			if closestKey >= range.Start and closestKey <= range.End then
				local closestKeyPosition = TrackUtils.getScaledKeyframePosition(closestKey, range.Start, range.End, trackWidth)
				if math.abs(closestKeyPosition - framePosition) < Constants.SNAP_TO_KEYFRAME_THRESHOLD then
					snapFrame = closestKey
					snapped = true
				end
			end
		end

		if snapped or not GetFFlagUseTicks() then
			store:dispatch(StepAnimation(snapFrame))
		else
			-- We didn't snap to a keyframe, but we still need to snap to the frames
			store:dispatch(SnapToNearestFrame(frame))
		end
	end
end