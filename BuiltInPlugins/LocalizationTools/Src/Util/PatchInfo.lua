local function canonicalizeLocaleCode(code, localesToLanguages)
	if localesToLanguages ~= nil and localesToLanguages[code] ~= nil then
		return string.gsub(code, '-', '_')
	end
	return code
end

--[[
	Given tableData, a list in the format the web understands, constructs
	a 3-dimensional table, the three dimensions of which are
	key,source,context and each value of which is an index into tableData.
]]
local function MakeIndexMap(tableData)
	local indexMap = {}
	for index, datum in ipairs(tableData) do
		local key = datum.identifier.key or ""
		local source = datum.identifier.source or ""
		local context = datum.identifier.context or ""

		indexMap[key] = indexMap[key] or {}
		indexMap[key][source] = indexMap[key][source] or {}
		indexMap[key][source][context] = indexMap[key][source][context] or index
	end

	return indexMap
end


--[[
	Takes a translation list (formatted the way the web expects)
	Makes a table that straight-up maps locales to translationTexts
]]
local function MakeTranslationMapForEntry(entry)
	local translationMap = {}
	for _, translation in ipairs(entry.translations) do
		translationMap[translation.locale] = translation.translationText
	end
	return translationMap
end

local function MakePatchEntryToChangeRow(
	originalEntry, newEntry, patchInfo, includeDeletes, gameSourceLanguage, localesToLanguages, localization)
	local patchTranslations = {}
	local translatedLanguagesAndLocales = {}

	local newTranslationMap = MakeTranslationMapForEntry(newEntry)
	local originalTranslationMap = MakeTranslationMapForEntry(originalEntry)

	for _, translation in ipairs(originalEntry.translations) do
		translatedLanguagesAndLocales[translation.locale] = true
		if newTranslationMap[translation.locale] == nil then
			if includeDeletes then
				local code = canonicalizeLocaleCode(translation.locale, localesToLanguages)
				table.insert(patchTranslations, {
					locale = code,
					translationText = translation.translationText,
					delete = true,
				})

				patchInfo.numRemovedTranslations = patchInfo.numRemovedTranslations + 1
				translatedLanguagesAndLocales[translation.locale] = false
			end
		end
	end

	local pendingLocaleTranslations = {}
	for _, translation in ipairs(newEntry.translations) do
		local originalTranslation = originalTranslationMap[translation.locale]
		if originalTranslation == nil and localesToLanguages ~= nil and localesToLanguages[translation.locale] ~= nil and
			localesToLanguages[translation.locale] ~= gameSourceLanguage then
			table.insert(pendingLocaleTranslations, translation)
		elseif originalTranslation ~= translation.translationText then
			table.insert(patchTranslations, {
				locale = canonicalizeLocaleCode(translation.locale, localesToLanguages),
				translationText = translation.translationText,
				delete = false,
			})
			translatedLanguagesAndLocales[translation.locale] = true

			if originalTranslation ~= nil then
				patchInfo.numChangedTranslations = patchInfo.numChangedTranslations + 1
			else
				patchInfo.numAddedTranslations = patchInfo.numAddedTranslations + 1
			end
		end
	end

	for _, translation in ipairs(pendingLocaleTranslations) do
		local parentLanguage = localesToLanguages[translation.locale]
		if translatedLanguagesAndLocales[parentLanguage] then
			table.insert(patchTranslations, {
				locale = canonicalizeLocaleCode(translation.locale, localesToLanguages),
				translationText = translation.translationText,
				delete = false,
			})

			patchInfo.numAddedTranslations = patchInfo.numAddedTranslations + 1
		else
			warn(localization:getText("UploadDialogContent", "ParentLangaugeTranslationMissing", {
				locale = "\"" .. translation.locale .. "\"",
				language = "\"" .. parentLanguage .. "\"",
				key = "\"" .. newEntry.identifier.key  .. "\"",
				source = "\"" .. newEntry.identifier.source  .. "\"",
				context = "\"" .. newEntry.identifier.context  .. "\"",
			}))
		end
	end

	return {
		identifier = {
			key = newEntry.identifier.key,
			source = newEntry.identifier.source,
			context = newEntry.identifier.context,
		},
		metadata = newEntry.metadata,
		translations = patchTranslations,
		delete = false,
	}
end

local function MakePatchEntryToAddRow(entry, patchInfo, gameSourceLanguage, localesToLanguages, localization)
	patchInfo.numAddedEntries = patchInfo.numAddedEntries + 1

	local patchTranslations = {}
	local pendingLocaleTranslations = {}
	local translatedLanguages = {}
	for _, translation in ipairs(entry.translations) do
		if localesToLanguages ~= nil and localesToLanguages[translation.locale] ~= nil and
			localesToLanguages[translation.locale] ~= gameSourceLanguage then
			-- add locale translation to a temp list in first pass
			-- because we need verify the entry has its parent translation first
			table.insert(pendingLocaleTranslations, translation)
		else
			table.insert(patchTranslations, {
				locale = canonicalizeLocaleCode(translation.locale, localesToLanguages),
				translationText = translation.translationText,
				delete = false,
			})

			patchInfo.numAddedTranslations = patchInfo.numAddedTranslations + 1
			translatedLanguages[translation.locale] = true
		end
	end

	for _, translation in ipairs(pendingLocaleTranslations) do
		local parentLanguage = localesToLanguages[translation.locale]
		if translatedLanguages[parentLanguage] then
			table.insert(patchTranslations, {
				locale = canonicalizeLocaleCode(translation.locale, localesToLanguages),
				translationText = translation.translationText,
				delete = false,
			})

			patchInfo.numAddedTranslations = patchInfo.numAddedTranslations + 1
		else
			warn(localization:getText("UploadDialogContent", "ParentLangaugeTranslationMissing", {
				locale = "\"" .. translation.locale .. "\"",
				language = "\"" .. parentLanguage .. "\"",
				key = "\"" .. entry.identifier.key  .. "\"",
				source = "\"" .. entry.identifier.source  .. "\"",
				context = "\"" .. entry.identifier.context  .. "\"",
			}))
		end
	end

	return {
		identifier = {
			key = entry.identifier.key,
			source = entry.identifier.source,
			context = entry.identifier.context,
		},
		metadata = entry.metadata,
		translations = patchTranslations,
		delete = false,
	}
end

local function MakePatchEntryToDeleteRow(entry, patchInfo, localesToLanguages)
	patchInfo.numRemovedEntries = patchInfo.numRemovedEntries + 1

	local patchTranslations = {}

	for _, translation in ipairs(entry.translations) do
		local code = canonicalizeLocaleCode(translation.locale, localesToLanguages)
		table.insert(patchTranslations, {
			locale = code,
			translationText = translation.translationText,
			delete = true,
		})

		patchInfo.numRemovedTranslations = patchInfo.numRemovedTranslations + 1
	end

	return {
		identifier = {
			key = entry.identifier.key,
			source = entry.identifier.source,
			context = entry.identifier.context,
		},
		metadata = entry.metadata,
		translations = patchTranslations,
		delete = true,
	}
end

--[[
	Takes the name of a table and two lists of table data, the original and the new data.
	Computes a PatchInfo object consisting of:

	{
		numAddedTranslations = number of translations added by the patch
		numChangedTranslations = number of translations changed by the patch
		numRemovedTranslations = number of translations removed by the patch

		makePatch():
            Returns an object which json serializes to the format that the web expects.
	}
]]
local function DiffTables(
	tableName, originalTableData, newTableData, includeDeletes, gameSourceLanguage, localesToLanguages, localization)
	local newTableMap = MakeIndexMap(newTableData)
	local originalTableMap = MakeIndexMap(originalTableData)

	local entries = {}

	local patchInfo = {
		numAddedTranslations = 0,
		numChangedTranslations = 0,
		numRemovedTranslations = 0,
		numAddedEntries = 0,
		numRemovedEntries = 0,

		makePatch = function()
			return {
				name = tableName,
				entries = entries
			}
		end,
	}

	--[[
		Returns index of the row in the map if it's there, 0 if it's not there.
	]]
	local function GetRowIndex(map, key, source, context)
		if map[key] ~= nil and map[key][source] ~= nil and map[key][source][context] ~= nil then
			return map[key][source][context]
		end
		return 0
	end

	for _, originalEntry in pairs(originalTableData) do
		local indexInNewTable = GetRowIndex(newTableMap,
			originalEntry.identifier.key,
			originalEntry.identifier.source,
			originalEntry.identifier.context)

		if indexInNewTable == 0 then
			if includeDeletes then
				local patchEntry = MakePatchEntryToDeleteRow(originalEntry, patchInfo, localesToLanguages)
				table.insert(entries, patchEntry)
			end
		else
			local patchEntry
			patchEntry = MakePatchEntryToChangeRow(
				originalEntry,
				newTableData[indexInNewTable],
				patchInfo,
				includeDeletes,
				gameSourceLanguage,
				localesToLanguages,
				localization)

			if next(patchEntry.translations) ~= nil or
				patchEntry.metadata.example ~= originalEntry.metadata.example
			then
				table.insert(entries, patchEntry)
			end
		end
	end

	for _, newEntry in pairs(newTableData) do
		local indexInOriginalTable = GetRowIndex(originalTableMap,
			newEntry.identifier.key,
			newEntry.identifier.source,
			newEntry.identifier.context)

		if indexInOriginalTable == 0 then
			local patchEntry = MakePatchEntryToAddRow(newEntry, patchInfo, gameSourceLanguage, localesToLanguages, localization)
			table.insert(entries, patchEntry)
		end
	end

	return patchInfo
end


--[[
	Takes a row of a patch, and constructs a new row of a patch with the same
	key, source, context, example and delete fields, but an empty translations list.
]]
local function MimicRow(row)
	return {
		identifier = {
			key = row.identifier.key,
			source = row.identifier.source,
			context = row.identifier.context,
		},
		metadata = {
			example = row.metadata and row.metadata.example,
		},
		translations = {
		},
		delete = row.delete,
	}
end


--[[
	Takes a patch and a maximum number of rows and translations.
	Constructs a list of patches which fit in the limits and union up
	to the whole patch.
]]
local function SplitByLimits(patch, maxRows, maxTranslations)
	local patches = {}

	local newPatch
	local newRow
	local translationCount
	local rowCount

	local function finishPatch()
		newPatch = nil
		newRow = nil
	end

	local function finishRow()
		newRow = nil
		rowCount = rowCount + 1
		if rowCount >= maxRows then
			newPatch = nil
		end
	end

	local function updateTargets(row)
		if not newPatch then
			newPatch = {
				name = patch.name,
				entries = {},
			}
			translationCount = 0
			rowCount = 0
			table.insert(patches, newPatch)
		end

		if not newRow then
			newRow = MimicRow(row)
			table.insert(newPatch.entries, newRow)
		end
	end

	for _,row in ipairs(patch.entries) do
		if row.translations then
			updateTargets(row)

			for _,translation in ipairs(row.translations) do
				updateTargets(row)

				table.insert(newRow.translations, translation)
				translationCount = translationCount + 1

				if translationCount >= maxTranslations then
					finishPatch()
				end
			end

			finishRow()
		end
	end

	return patches
end

return {
	MakePatchEntryToChangeRow = MakePatchEntryToChangeRow,
	DiffTables = DiffTables,
	SplitByLimits = SplitByLimits,
}

