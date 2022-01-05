local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsFlagConvertToolRemoval = game:GetFastFlag("TerrainToolsFlagConvertToolRemoval")
local convertToolRemoval = FFlagTerrainToolsFlagConvertToolRemoval and not FFlagTerrainToolsConvertPartTool

assert(not convertToolRemoval)

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode

local ConvertPartToMaterial = Rodux.createReducer({
	convertMode = ConvertMode.Material,
	material = Enum.Material.Grass,
}, {
	SetConvertMode = function(state, action)
		local convertMode = action.convertMode
		return Cryo.Dictionary.join(state, {
			convertMode = convertMode,
		})
	end,
	SetMaterial = function(state, action)
		local material = action.material
		return Cryo.Dictionary.join(state, {
			material = material,
		})
	end,
})

return ConvertPartToMaterial
