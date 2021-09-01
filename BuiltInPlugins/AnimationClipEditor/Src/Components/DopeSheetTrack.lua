--[[
	Represents a single track on the Dope Sheet meant to display a track's
	keyframes within a specified time range. Automatically clusters keyframes
	together if they are not far enough apart on the timeline.

	Properties:
		UDim2 Size = size of the container frame
		float Width = width of the keyframe display area frame
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		bool ShowCluster = Whether to show a keyframe cluster rather than individual keyframes.
		table Track = is expected to be a table formatted as such:
		{
			Name = name of the track,
			Instance = name of the instance that this track belongs to,
			Keyframes = array of keyframe indices on this track,
		}
		bool ShowBackground = if this track should have an opaque background.
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing keyframes that are currently being transformed for preview
		table PreviewData = table containing data for preview keyframes by index
		bool ShowLegacyKeyframes = Whether to highlight keyframes off of the framerate with an error color.
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.

		function OnKeyActivated = A callback for when the user clicks on a keyframe.
		function OnKeyRightClick = A callback for when the user right-clicks on a keyframe.
		function OnKeyInputBegan = A callback for when the user starts interacting with a keyframe.
		function OnKeyInputEnded = A callback for when the user stops interacting with a keyframe.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local BaseTrack = require(Plugin.Src.Components.BaseTrack)

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Keyframe = require(Plugin.Src.Components.Timeline.Keyframe)
local KeyframeCluster = require(Plugin.Src.Components.KeyframeCluster)
local Tooltip = require(Plugin.Src.Components.Tooltip)

local DopeSheetTrack = Roact.PureComponent:extend("DopeSheetTrack")

function DopeSheetTrack:renderKeyframe(selected, xOffset, track, tick, override, data)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = selected,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex,
		Width = Constants.KEYFRAME_WIDTH,
		BorderSizePixel = selected and 2 or 1,
		Style = Constants.KEYFRAME_STYLE[override] or nil,

		OnActivated = props.OnKeyActivated,
		OnRightClick = function(_, input)
			props.OnKeyRightClick(track.Instance, track.Name, tick, selected)
		end,

		OnInputBegan = function(_, input)
			props.OnKeyInputBegan(track.Instance, track.Name, tick, selected, input)
		end,

		OnInputEnded = function(_, input)
			props.OnKeyInputEnded(tick, selected, input)
		end,
	}, {
		Tooltip = data and data.EasingStyle and data.EasingStyle ~= Enum.PoseEasingStyle.Linear
			and Roact.createElement(Tooltip, {
			Text = data.EasingStyle.Name .. ", " .. data.EasingDirection.Name,
			ShowDelay = 0,
		}),
	})
end

function DopeSheetTrack:renderKeyframeCluster(clusterStart, clusterEnd, clusterHeight, zIndex)
	return Roact.createElement(KeyframeCluster, {
		Position = UDim2.new(0, clusterStart, 0.5, 0),
		Size = UDim2.new(0, clusterEnd - clusterStart, 0, clusterHeight),
		ZIndex = zIndex,
	})
end

function DopeSheetTrack:renderPreviewKeyframe(xOffset, tick, override)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = true,
		Style = Constants.KEYFRAME_STYLE[override] or nil,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex + 1,
		Width = Constants.KEYFRAME_WIDTH,
	})
end

function DopeSheetTrack:renderKeyframes(keys)
	local props = self.props
	local width = props.Width
	local track = props.Track
	local startTick = props.StartTick
	local endTick = props.EndTick
	local selectedKeyframes = props.SelectedKeyframes
	local previewKeyframes = props.PreviewKeyframes
	local showCluster = props.ShowCluster
	local showLegacyKeyframes = props.ShowLegacyKeyframes

	local keyframes = track.Keyframes
	local trackData = track.Data
	local instance = track.Instance
	local name = track.Name

	local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, startTick, endTick)

	if showCluster then
		local clusterXPos = TrackUtils.getScaledKeyframePosition(keyframes[startIndex], startTick, endTick, width)
		local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(keyframes[endIndex], startTick, endTick, width)
		keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
	elseif startIndex ~= nil and endIndex ~= nil then
		for index = startIndex, endIndex do
			local tick = keyframes[index]

			local override, data
			if showLegacyKeyframes and tick ~= math.floor(tick) then
				override = Constants.KEYFRAME_STYLE.Error
			else
				data = trackData[tick]
				override = data.EasingStyle
			end

			local xPos = TrackUtils.getScaledKeyframePosition(tick, startTick, endTick, width)
			local selected = selectedKeyframes[instance] and selectedKeyframes[instance][name]
				and selectedKeyframes[instance][name][tick]
			-- Don't render selected keyframes when rendering preview keyframes
			if not (previewKeyframes and selected) then
				keys[index] = self:renderKeyframe(selected, xPos, track, tick, override, data)
			end
		end
	end
end

function DopeSheetTrack:renderPreviewKeyframes(keys)
	local props = self.props
	local width = props.Width
	local track = props.Track
	local startTick = props.StartTick
	local endTick = props.EndTick
	local previewKeyframes = props.PreviewKeyframes
	local previewData = props.PreviewData
	local showLegacyKeyframes = props.ShowLegacyKeyframes
	local showCluster = props.ShowCluster

	local instance = track.Instance
	local name = track.Name

	if previewKeyframes and previewKeyframes[instance] then
		local keyframes = previewKeyframes[instance][name]
		if keyframes then
			if showCluster then
				table.sort(keyframes)
				local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, startTick, endTick)
				local clusterXPos = TrackUtils.getScaledKeyframePosition(keyframes[startIndex], startTick, endTick, width)
				local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(keyframes[endIndex], startTick, endTick, width)
				keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
			else
				for index, tick in ipairs(keyframes) do
					if tick >= startTick and tick <= endTick then
						local override
						if showLegacyKeyframes and tick ~= math.floor(tick) then
							override = Constants.KEYFRAME_STYLE.Error
						else
							local data = previewData and previewData[instance][name][index]
							override = data.EasingStyle
						end

						local xPos = TrackUtils.getScaledKeyframePosition(tick, startTick, endTick, width)
						table.insert(keys, self:renderPreviewKeyframe(xPos, tick, override))
					end
				end
			end
		end
	end
end

function DopeSheetTrack:render()
	local props = self.props

	local keys = {}

	local track = props.Track
	if track.Keyframes then
		self:renderKeyframes(keys)
	end

	return Roact.createElement(BaseTrack, props, keys)
end

return DopeSheetTrack
