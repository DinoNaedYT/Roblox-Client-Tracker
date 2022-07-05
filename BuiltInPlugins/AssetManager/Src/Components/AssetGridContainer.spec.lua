local Plugin = script.Parent.Parent.Parent
local AssetGridContainer = require(Plugin.Src.Components.AssetGridContainer)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
	it("should construct and destroy without any errors", function()
		local container = Instance.new("Folder")

		local element = Roact.createElement(MockServiceWrapper, {}, {
			AssetGridContainer = Roact.createElement(AssetGridContainer, {
				Size = UDim2.new(1, 0, 0, 38),
				LayoutOrder = 1,
			})
		})

		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end