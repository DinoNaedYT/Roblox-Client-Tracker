return function()
	local Plugin = script.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ImageWithDefault)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
