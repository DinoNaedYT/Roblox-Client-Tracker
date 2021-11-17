local TextService = game:GetService("TextService")
local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local MathUtils = Framework.Util.Math

local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

local StringUtils = {}

local NO_WRAP = Vector2.new(1000000, 50)

function StringUtils.getTextWidth(text, textSize, font)
	return TextService:GetTextSize(text, textSize, font, NO_WRAP).X
end

function StringUtils.split(text, sep)
   local _, fields = sep or ":", {}
   local pattern = string.format("([^%s]+)", sep)
   text:gsub(pattern, function(c) fields[#fields+1] = c end)
   return fields
end


function StringUtils.parseTime(text, frameRate)
	local fields = StringUtils.split(text, ":")
	if #fields == 0 then
		fields = StringUtils.split(text, ";")
	end

	local nums = {}
	for _, v in ipairs(fields) do
		local status, result = pcall(function()
			return tonumber(v)
		end)
		if status then
			table.insert(nums, result)
		else
			return 0
		end
	end
	if #nums == 1 then
		return nums[1] * Constants.TICK_FREQUENCY / frameRate
	elseif #nums > 1 then
		return (nums[1] + nums[2] / frameRate) * Constants.TICK_FREQUENCY
	else
		return nil
	end
end

function StringUtils.formatTime(tick, frameRate, asSeconds)
	if not asSeconds then
		return math.floor(tostring(tick * frameRate / Constants.TICK_FREQUENCY))
	end

	-- Convert ticks to frames
	local frame = KeyframeUtils.getNearestTick(tick * frameRate / Constants.TICK_FREQUENCY)

	if frameRate == 0 then
		return tostring("0:" ..string.format("%02d", 0))
	end

	local seconds = math.floor(frame / frameRate)
	local remainingFrames = frame - (seconds * frameRate)
	return tostring(seconds ..":" ..string.format("%02d", remainingFrames))
end

function StringUtils.formatTimeInSeconds(frame, frameRate)
	if frameRate == 0 then
		return tostring("0s")
	end
	local seconds = MathUtils.round(frame / frameRate, 2)
	return tostring(seconds .."s")
end

function StringUtils.getMaxTextWidth(items, textSize, font)
	local maxWidth = 0
	for _, item in ipairs(items) do
		local width = StringUtils.getTextWidth(item.Name, textSize, font)
		maxWidth = math.max(maxWidth, width)
	end
	return maxWidth
end

return StringUtils