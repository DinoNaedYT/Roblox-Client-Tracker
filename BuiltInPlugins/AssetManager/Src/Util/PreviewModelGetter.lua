-- This is a help object for modelPreview.
-- This script is responsible for fetching the assetInstance using an assetID.
-- this script will return a model for preview with all scripts disabled.

local FFlagStudioAssetManagerRefactorAssetPreview = game:GetFastFlag("StudioAssetManagerRefactorAssetPreview")

local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Framework).Util.Promise

local ASSET_ID_STRING = "rbxassetid://%d"

local function disableScripts(previewModel)
	for _, item in pairs(previewModel:GetDescendants()) do
		if item:IsA("Script") then
			item.Disabled = true
		end
	end
end

-- This method would always return a instance to root.
-- For audio asset, we will to handle that ourselve.
local function getPreviewModel(assetId)
	local assetInstances = nil
	local success, errorMessage = pcall(function()
		local url = ASSET_ID_STRING:format(assetId)
        assetInstances = game:GetObjectsAsync(url)
	end)

	if not success then
        return errorMessage
	end

	local model
	if #assetInstances == 1 then
		model = assetInstances[1]
	else
		model = Instance.new("Model")
		model.Name = "Preview"
		for _, o in ipairs(assetInstances) do
			o.Parent = model
			if not o.Parent then
				o:Destroy()
			end
		end
	end

	disableScripts(model)

	return model
end

-- This function returns models containing the assetInstances with all scripts disabled.
return function(assetId, assetTypeId)
	local getObjectPromise = Promise.new(function(resolve, reject)
		spawn(function()
			local results
			if assetTypeId == Enum.AssetType.Audio.Value then
				local soundInstance = Instance.new("Sound")
				local soundId = ASSET_ID_STRING:format(assetId)
				soundInstance.SoundId = soundId
				results = soundInstance
			elseif FFlagStudioAssetManagerRefactorAssetPreview and assetTypeId == Enum.AssetType.Image.Value then
				local decalInstance = Instance.new("Decal")
				local textureId = ASSET_ID_STRING:format(assetId)
				decalInstance.Texture = textureId
				results = decalInstance
			else
				results = getPreviewModel(assetId)
			end

			if type(results) == "string" then
				reject(results)
			else
				resolve(results)
			end
		end)
	end)
	return getObjectPromise
end
