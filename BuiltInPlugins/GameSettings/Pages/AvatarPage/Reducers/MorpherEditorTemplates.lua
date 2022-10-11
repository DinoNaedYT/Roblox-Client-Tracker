local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local UtilityFunctionsTable = require(Page.Util.UtilityFunctionsTable)

local DEFAULT_STATE = { templates = {} }

return Rodux.createReducer(DEFAULT_STATE, {
	ResetStore = function(state, action)
		return DEFAULT_STATE
	end,

	TemplatesAdd = function(state, action)
		return Cryo.Dictionary.join(state, {
			templates = action.templatesArrayToAdd,
		})
	end,

	TemplatesClobberTemplate = function(state, action)
		return Cryo.Dictionary.join(state, {
			templates = UtilityFunctionsTable.immutableSetExistingDictionaryEntry(
				state.templates,
				action.templateToClobber,
				action.newTemplateModel
			),
		})
	end,
})
