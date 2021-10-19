local Permissions = require(script.Parent.PermissionsPage.Permissions)
local Avatar = require(script.Parent.AvatarPage.Avatar)
local BasicInfo = require(script.Parent.BasicInfoPage.BasicInfo)
local Monetization = require(script.Parent.MonetizationPage.Monetization)
local Options = require(script.Parent.OptionsPage.Options)
local Places = require(script.Parent.PlacesPage.Places)
local Security = require(script.Parent.SecurityPage.Security)
local World = require(script.Parent.WorldPage.World)
local Localization = require(script.Parent.LocalizationPage.Localization)

local pages = {
	BasicInfo,
	Permissions,
	Monetization,
	Security,
	Places,
	Localization,
	Avatar,
	World,
	Options,
}

return pages
