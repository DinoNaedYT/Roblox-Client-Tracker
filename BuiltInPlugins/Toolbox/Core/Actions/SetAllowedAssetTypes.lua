--[[
	forRelease is a table like the following:
	{
		Shirt = {
		    marketplaceFeesPercentage = 70
		    allowedPriceRange = {
		         minRobux = 100
		         maxRobux = 5000
		    }
		}
		Hat = {
		    marketplaceFeesPercentage = 70
		    allowedPriceRange = {
		         minRobux = 120
		         maxRobux = 5000
		    }
		}
	}

	forUpload is a table like the following:
	{
		Hat = {
		    allowedFileExtensions = {
		         1 = .rbxm
		    }
		}
		Mesh = {
		    allowedFileExtensions = {
		         1 = .mesh
		    }
		}
		Image = {
		    allowedFileExtensions = {
		         1 = .jpg
		         2 = .png
		         3 = .bmp
		    }
		}
	}
]]

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
local Action = Util.Action

return Action(script.Name, function(forRelease, forUpload)
	return {
		allowedAssetTypesForRelease = forRelease,
		allowedAssetTypesForUpload = forUpload,
	}
end)
