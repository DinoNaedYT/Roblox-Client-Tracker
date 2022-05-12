local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")
return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)
	local Rodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Rodux) else require(root.Packages._Old.lib.Rodux)

	local Assets = require(root.src.Assets)
	local Constants = require(root.src.Constants)

	local MockWrapper = require(root.src.utils.MockWrapper)

	local AvatarButton = require(components.AvatarButton)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(function(state) return state end, {})

		local element = Roact.createElement(AvatarButton, {
			name = "Rthro",
			avatarType = Constants.AVATAR_TYPE.RTHRO,
			iconOptions = Assets.RTHRO,
			contextInfo = Constants.RTHRO_INFO,
			layoutOrder = 0,
		})

		local instance = Roact.mount(Roact.createElement(MockWrapper, { store = store }, { element = element }))
		Roact.unmount(instance)
	end)
end