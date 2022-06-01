--[[
	A progress spinner widget shown when busy
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ProgressSpinner = Roact.PureComponent:extend("ProgressSpinner")

local function createSpinnerTask(spinner)
	local bailFlag = false
	local spinnerTask = {
		bail = function()
			bailFlag = true
		end
	}

	spawn(function()
		while not bailFlag do
			wait(0.01)
			spinner.Rotation = spinner.Rotation + 7
		end
	end)

	return spinnerTask
end

function ProgressSpinner:init()
	self.progressSpinnerRef = Roact.createRef()
end

function ProgressSpinner:didUpdate()
	local spinner = self.progressSpinnerRef.current

	if self._currentSpinnerTask then
		self._currentSpinnerTask.bail()
	end

	if spinner then
		self._currentSpinnerTask = createSpinnerTask(spinner)
	end
end

function ProgressSpinner:willUnmount()
	if self._currentSpinnerTask then
		self._currentSpinnerTask.bail()
	end
end

function ProgressSpinner:render()
	local props = self.props
	local enabled = props.IsBusy
	local theme = props.Stylizer

	return enabled and Roact.createElement("ImageLabel", {
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, theme.Size, 0, theme.Size),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ZIndex = 10,
		Image = theme.ProgressSpinnerImageUrl,
		ImageRectSize = Vector2.new(theme.ImageRectSize, theme.ImageRectSize),
		ImageRectOffset = Vector2.new(0.5, 0.5),

		[Roact.Ref] = self.progressSpinnerRef,
	})
end

ProgressSpinner = withContext({
	Stylizer = ContextServices.Stylizer,
})(ProgressSpinner)

local function mapStateToProps(state, _)
	return {
		IsBusy = state.CloudTable.IsBusy,
	}
end

return RoactRodux.connect(mapStateToProps)(ProgressSpinner)
