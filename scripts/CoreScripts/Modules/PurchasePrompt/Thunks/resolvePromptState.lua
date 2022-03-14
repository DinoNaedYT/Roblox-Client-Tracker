local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)
local selectRobuxProductFromProvider = require(Root.NativeUpsell.selectRobuxProductFromProvider)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local meetsPrerequisites = require(Root.Utils.meetsPrerequisites)
local getPlayerProductInfoPrice = require(Root.Utils.getPlayerProductInfoPrice)
local getPaymentFromPlatform = require(Root.Utils.getPaymentFromPlatform)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local Thunk = require(Root.Thunk)

local GetFFlagEnablePPUpsellProductListRefactor = require(Root.Flags.GetFFlagEnablePPUpsellProductListRefactor)
local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)

local requiredServices = {
	Analytics,
	ExternalSettings,
}

local function resolvePromptState(productInfo, accountInfo, alreadyOwned, isRobloxPurchase)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]

		store:dispatch(ProductInfoReceived(productInfo))
		store:dispatch(AccountInfoReceived(accountInfo))

		local restrictThirdParty =
			(not externalSettings.getFlagBypassThirdPartySettingForRobloxPurchase() or not isRobloxPurchase)
			and (externalSettings.getLuaUseThirdPartyPermissions() or externalSettings.getFlagRestrictSales2())

		local canPurchase, failureReason = meetsPrerequisites(productInfo, alreadyOwned, restrictThirdParty, externalSettings)
		if not canPurchase then
			if externalSettings.getFlagHideThirdPartyPurchaseFailure() then
				if not externalSettings.isStudio() and failureReason == PurchaseError.ThirdPartyDisabled then
					-- Do not annoy player with 3rd party failure notifications.
					return store:dispatch(CompleteRequest())
				end
				return store:dispatch(ErrorOccurred(failureReason))
			else
				return store:dispatch(ErrorOccurred(failureReason))
			end
		end

		local isPlayerPremium = accountInfo.MembershipType == 4
		local price = getPlayerProductInfoPrice(productInfo, isPlayerPremium)
		local platform = UserInputService:GetPlatform()

		if price > accountInfo.RobuxBalance then

			if externalSettings.getFFlagDisableRobuxUpsell() then
				return store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
			end

			local neededRobux = price - accountInfo.RobuxBalance
			local hasMembership = accountInfo.MembershipType > 0

			if GetFFlagEnablePPUpsellProductListRefactor() then
				local isAmazon = getHasAmazonUserAgent()
				local isLuobu = GetFFlagEnableLuobuInGameUpsell()
				local paymentPlatform = getPaymentFromPlatform(platform, isLuobu, isAmazon)
				return selectRobuxProductFromProvider(paymentPlatform, neededRobux, hasMembership, nil):andThen(function(product)
					analytics.signalProductPurchaseUpsellShown(productInfo.productId, state.requestType, product.productId)
					store:dispatch(PromptNativeUpsell(product.productId, product.robuxValue))
				end, function()
					-- No upsell item will provide sufficient funds to make this purchase
					if platform == Enum.Platform.XBoxOne then
						store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
					else
						store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobux))
					end
				end)
			else
				return selectRobuxProduct(platform, neededRobux, hasMembership)
					:andThen(function(product)
						analytics.signalProductPurchaseUpsellShown(productInfo.productId, state.requestType, product.productId)
						store:dispatch(PromptNativeUpsell(product.productId, product.robuxValue))
					end, function()
						-- No upsell item will provide sufficient funds to make this purchase
						if platform == Enum.Platform.XBoxOne then
							store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
						else
							store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobux))
						end
					end)
			end
		end

		analytics.signalProductPurchaseShown(productInfo.productId, state.requestType)

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolvePromptState
