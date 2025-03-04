return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local InfoPanel = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(InfoPanel))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Prompt).to.be.ok()
		Roact.unmount(instance)
	end)
end
