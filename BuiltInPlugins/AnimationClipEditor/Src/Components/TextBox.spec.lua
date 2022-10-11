return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local TextBox = require(script.Parent.TextBox)

	local GetFFlagRetireUILibraryCompat = require(Plugin.LuaFlags.GetFFlagRetireUILibraryCompat)

	local function createTestTextBox()
		return Roact.createElement(MockWrapper, {}, {
			TextBox = Roact.createElement(TextBox, {
				Size = UDim2.new(0, 50, 0, 20),
				LayoutOrder = 1,
				Text = "Test",
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTextBox()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTextBox(), container)
		local label = container:FindFirstChildOfClass("ImageLabel")

		expect(label).to.be.ok()
		if GetFFlagRetireUILibraryCompat() then
			expect(label.Contents).to.be.ok()
			expect(label.Contents.Padding).to.be.ok()
			expect(label.Contents.Text).to.be.ok()
		else
			expect(label.Border).to.be.ok()
			expect(label.Border.Padding).to.be.ok()
			expect(label.Border.Text).to.be.ok()
		end

		Roact.unmount(instance)
	end)
end
