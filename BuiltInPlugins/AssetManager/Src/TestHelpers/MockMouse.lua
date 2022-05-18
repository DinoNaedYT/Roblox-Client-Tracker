local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Signal = Framework.Util.Signal

local MockMouse = {}
MockMouse.__index = MockMouse

function MockMouse.new()
	return setmetatable({
		Origin = CFrame.new(),
		UnitRay = Ray.new(Vector3.new(), Vector3.new()),
		Target = nil,

		WheelForward = Signal.new(),
		WheelBackward = Signal.new(),
	}, MockMouse)
end

return MockMouse
