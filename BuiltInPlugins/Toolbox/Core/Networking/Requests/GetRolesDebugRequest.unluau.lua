-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Flags.getFFlagToolboxAddNewUGCAssetTypes)
local var2 = require(var0.Packages.Framework).Util.Promise
local var3 = require(var0.Core.Actions.NetworkError)
local var4 = require(var0.Core.Actions.SetAllowedAssetTypes)
local var5 = require(var0.Core.Actions.SetAllowedBundleTypes)
local var6 = require(var0.Core.Actions.SetTagsMetadata)
local var7 = require(var0.Core.Util.DebugFlags)
local var8 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddAvatarTagDataIntoMock)
local var9 = {}
local var48 = {}
var48.minRobux = 50
var48.maxRobux = 5000
var9.allowedPriceRange = var48
var9.marketplaceFeesPercentage = 70
local var52 = {}
local var54 = 25
local var13 = 50
local var14 = 75
var52.allowedDiscountPercentages = {}
local var15 = {}
var15.minRobux = 50
var15.maxRobux = 5000
var52.allowedPriceRange = var15
var9.premiumPricing = var52
function getDebugUgcBundleMetadata()
   local var0 = {}
   local var61 = {}
   local var62 = {}
   local var63 = {}
   var63.minimumQuantity = 1
   var63.maximumQuantity = 1
   var63.isEligibleForUpload = true
   local var68 = ".rbxm"
   var63.allowedFileExtensions = {}
   var62.DynamicHead = var63
   local var69 = {}
   var69.minimumQuantity = 1
   var69.maximumQuantity = 1
   var69.isEligibleForUpload = true
   local var74 = ".rbxm"
   var69.allowedFileExtensions = {}
   var62.LeftArm = var69
   local var75 = {}
   var75.minimumQuantity = 1
   var75.maximumQuantity = 1
   var75.isEligibleForUpload = true
   local var80 = ".rbxm"
   var75.allowedFileExtensions = {}
   var62.LeftLeg = var75
   local var81 = {}
   var81.minimumQuantity = 1
   var81.maximumQuantity = 1
   var81.isEligibleForUpload = true
   local var86 = ".rbxm"
   var81.allowedFileExtensions = {}
   var62.RightArm = var81
   local var87 = {}
   var87.minimumQuantity = 1
   var87.maximumQuantity = 1
   var87.isEligibleForUpload = true
   local var92 = ".rbxm"
   var87.allowedFileExtensions = {}
   var62.RightLeg = var87
   local var93 = {}
   var93.minimumQuantity = 1
   var93.maximumQuantity = 1
   var93.isEligibleForUpload = true
   local var98 = ".rbxm"
   var93.allowedFileExtensions = {}
   var62.Torso = var93
   local var99 = {}
   var99.minimumQuantity = 0
   var99.maximumQuantity = 1
   var99.isEligibleForUpload = true
   local var104 = ".rbxm"
   var99.allowedFileExtensions = {}
   var62.EyebrowAccessory = var99
   local var105 = {}
   var105.minimumQuantity = 0
   var105.maximumQuantity = 1
   var105.isEligibleForUpload = true
   local var110 = ".rbxm"
   var105.allowedFileExtensions = {}
   var62.EyelashAccessory = var105
   local var111 = {}
   var111.minimumQuantity = 0
   var111.maximumQuantity = 1
   var111.isEligibleForUpload = true
   local var116 = ".rbxm"
   var111.allowedFileExtensions = {}
   var62.HairAccessory = var111
   local var117 = {}
   var117.minimumQuantity = 0
   var117.maximumQuantity = 1
   var117.isEligibleForUpload = false
   var117.allowedFileExtensions = nil
   var62.MoodAnimation = var117
   var61.allowedAssetTypeSettings = var62
   var61.marketplaceFeePercentage = 30
   local var123 = {}
   var123.minimumPrice = 0
   var123.maximumPrice = 5000
   var61.allowedPriceRange = var123
   var0.Body = var61
   local var23 = {}
   local var127 = {}
   local var128 = {}
   var128.minimumQuantity = 1
   var128.maximumQuantity = 1
   var128.isEligibleForUpload = true
   local var133 = ".rbxm"
   var128.allowedFileExtensions = {}
   var127.DynamicHead = var128
   local var134 = {}
   var134.minimumQuantity = 0
   var134.maximumQuantity = 1
   var134.isEligibleForUpload = true
   local var139 = ".rbxm"
   var134.allowedFileExtensions = {}
   var127.EyebrowAccessory = var134
   local var140 = {}
   var140.minimumQuantity = 0
   var140.maximumQuantity = 1
   var140.isEligibleForUpload = true
   local var30 = ".rbxm"
   var140.allowedFileExtensions = {}
   var127.EyelashAccessory = var140
   var23.allowedAssetTypeSettings = var127
   var23.marketplaceFeePercentage = 30
   local var31 = {}
   var31.minimumPrice = 0
   var31.maximumPrice = 10000
   var23.allowedPriceRange = var31
   var0.DynamicHead = var23
   return var0
end

return function(arg1)
   return function(arg1)
      local var0 = {}
      local var153 = {}
      local var156 = ".png"
      local var157 = ".bmp"
      var153.allowedFileExtensions = { ".jpg" }
      var0.Image = var153
      local var158 = {}
      local var160 = ".mesh"
      var158.allowedFileExtensions = {}
      var0.Mesh = var158
      local var161 = {}
      local var163 = ".rbxm"
      var161.allowedFileExtensions = {}
      var0.Hat = var161
      local var164 = {}
      local var166 = ".rbxm"
      var164.allowedFileExtensions = {}
      var0.HairAccessory = var164
      local var167 = {}
      local var169 = ".rbxm"
      var167.allowedFileExtensions = {}
      var0.FaceAccessory = var167
      local var170 = {}
      local var172 = ".rbxm"
      var170.allowedFileExtensions = {}
      var0.NeckAccessory = var170
      local var173 = {}
      local var175 = ".rbxm"
      var173.allowedFileExtensions = {}
      var0.ShoulderAccessory = var173
      local var176 = {}
      local var178 = ".rbxm"
      var176.allowedFileExtensions = {}
      var0.FrontAccessory = var176
      local var179 = {}
      local var181 = ".rbxm"
      var179.allowedFileExtensions = {}
      var0.BackAccessory = var179
      local var182 = {}
      local var184 = ".rbxm"
      var182.allowedFileExtensions = {}
      var0.WaistAccessory = var182
      local var185 = {}
      local var187 = ".rbxm"
      var185.allowedFileExtensions = {}
      var0.TShirtAccessory = var185
      local var188 = {}
      local var190 = ".rbxm"
      var188.allowedFileExtensions = {}
      var0.ShirtAccessory = var188
      local var191 = {}
      local var193 = ".rbxm"
      var191.allowedFileExtensions = {}
      var0.PantsAccessory = var191
      local var194 = {}
      local var196 = ".rbxm"
      var194.allowedFileExtensions = {}
      var0.JacketAccessory = var194
      local var197 = {}
      local var199 = ".rbxm"
      var197.allowedFileExtensions = {}
      var0.SweaterAccessory = var197
      local var200 = {}
      local var202 = ".rbxm"
      var200.allowedFileExtensions = {}
      var0.ShortsAccessory = var200
      local var203 = {}
      local var205 = ".rbxm"
      var203.allowedFileExtensions = {}
      var0.LeftShoeAccessory = var203
      local var206 = {}
      local var208 = ".rbxm"
      var206.allowedFileExtensions = {}
      var0.RightShoeAccessory = var206
      local var209 = {}
      local var211 = ".rbxm"
      var209.allowedFileExtensions = {}
      var0.DressSkirtAccessory = var209
      local var212 = {}
      local var214 = ".rbxm"
      var212.allowedFileExtensions = {}
      var0.Plugin = var212
      if var1() then
         local var217 = {}
         local var219 = ".rbxm"
         var217.allowedFileExtensions = {}
         var0.Torso = var217
         local var220 = {}
         local var222 = ".rbxm"
         var220.allowedFileExtensions = {}
         var0.RightArm = var220
         local var223 = {}
         local var225 = ".rbxm"
         var223.allowedFileExtensions = {}
         var0.LeftArm = var223
         local var226 = {}
         local var228 = ".rbxm"
         var226.allowedFileExtensions = {}
         var0.LeftLeg = var226
         local var229 = {}
         local var231 = ".rbxm"
         var229.allowedFileExtensions = {}
         var0.RightLeg = var229
         local var232 = {}
         local var234 = ".rbxm"
         var232.allowedFileExtensions = {}
         var0.DynamicHead = var232
         local var235 = {}
         local var237 = ".rbxm"
         var235.allowedFileExtensions = {}
         var0.EyebrowAccessory = var235
         local var14 = {}
         local var15 = ".rbxm"
         var14.allowedFileExtensions = {}
         var0.EyelashAccessory = var14
      end
      local var41 = {}
      local var242 = {}
      local var243 = {}
      var243.minRobux = 50
      var243.maxRobux = 5000
      var242.allowedPriceRange = var243
      var242.marketplaceFeesPercentage = 70
      local var247 = {}
      local var249 = 25
      local var250 = 50
      local var251 = 75
      var247.allowedDiscountPercentages = {}
      local var252 = {}
      var252.minRobux = 50
      var252.maxRobux = 5000
      var247.allowedPriceRange = var252
      var242.premiumPricing = var247
      var41.Hat = var242
      local var255 = {}
      local var256 = {}
      var256.minRobux = 50
      var256.maxRobux = 5000
      var255.allowedPriceRange = var256
      var255.marketplaceFeesPercentage = 70
      local var260 = {}
      local var262 = 25
      local var263 = 50
      local var264 = 75
      var260.allowedDiscountPercentages = {}
      local var265 = {}
      var265.minRobux = 50
      var265.maxRobux = 5000
      var260.allowedPriceRange = var265
      var255.premiumPricing = var260
      var41.HairAccessory = var255
      local var268 = {}
      local var269 = {}
      var269.minRobux = 15
      var269.maxRobux = 5000
      var268.allowedPriceRange = var269
      var268.marketplaceFeesPercentage = 70
      local var273 = {}
      local var275 = 25
      local var276 = 50
      local var277 = 75
      var273.allowedDiscountPercentages = {}
      local var278 = {}
      var278.minRobux = 15
      var278.maxRobux = 5000
      var273.allowedPriceRange = var278
      var268.premiumPricing = var273
      var41.FaceAccessory = var268
      local var281 = {}
      local var282 = {}
      var282.minRobux = 20
      var282.maxRobux = 5000
      var281.allowedPriceRange = var282
      var281.marketplaceFeesPercentage = 70
      local var286 = {}
      local var288 = 25
      local var289 = 50
      local var290 = 75
      var286.allowedDiscountPercentages = {}
      local var291 = {}
      var291.minRobux = 20
      var291.maxRobux = 5000
      var286.allowedPriceRange = var291
      var281.premiumPricing = var286
      var41.NeckAccessory = var281
      local var294 = {}
      local var295 = {}
      var295.minRobux = 15
      var295.maxRobux = 5000
      var294.allowedPriceRange = var295
      var294.marketplaceFeesPercentage = 70
      local var299 = {}
      local var301 = 25
      local var302 = 50
      local var303 = 75
      var299.allowedDiscountPercentages = {}
      local var304 = {}
      var304.minRobux = 15
      var304.maxRobux = 5000
      var299.allowedPriceRange = var304
      var294.premiumPricing = var299
      var41.ShoulderAccessory = var294
      local var307 = {}
      local var308 = {}
      var308.minRobux = 20
      var308.maxRobux = 5000
      var307.allowedPriceRange = var308
      var307.marketplaceFeesPercentage = 70
      local var312 = {}
      local var314 = 25
      local var315 = 50
      local var316 = 75
      var312.allowedDiscountPercentages = {}
      local var317 = {}
      var317.minRobux = 20
      var317.maxRobux = 5000
      var312.allowedPriceRange = var317
      var307.premiumPricing = var312
      var41.FrontAccessory = var307
      local var320 = {}
      local var321 = {}
      var321.minRobux = 100
      var321.maxRobux = 10000
      var320.allowedPriceRange = var321
      var320.marketplaceFeesPercentage = 70
      local var325 = {}
      local var327 = 25
      local var328 = 50
      local var329 = 75
      var325.allowedDiscountPercentages = {}
      local var330 = {}
      var330.minRobux = 100
      var330.maxRobux = 10000
      var325.allowedPriceRange = var330
      var320.premiumPricing = var325
      var41.BackAccessory = var320
      local var333 = {}
      local var334 = {}
      var334.minRobux = 50
      var334.maxRobux = 5000
      var333.allowedPriceRange = var334
      var333.marketplaceFeesPercentage = 70
      local var338 = {}
      local var340 = 25
      local var341 = 50
      local var342 = 75
      var338.allowedDiscountPercentages = {}
      local var343 = {}
      var343.minRobux = 50
      var343.maxRobux = 5000
      var338.allowedPriceRange = var343
      var333.premiumPricing = var338
      var41.WaistAccessory = var333
      local var346 = {}
      local var347 = {}
      var347.minRobux = 5
      var347.maxRobux = 999999999
      var346.allowedPriceRange = var347
      var346.marketplaceFeesPercentage = 30
      var41.Shirt = var346
      local var351 = {}
      local var352 = {}
      var352.minRobux = 5
      var352.maxRobux = 999999999
      var351.allowedPriceRange = var352
      var351.marketplaceFeesPercentage = 30
      var41.Pants = var351
      local var356 = {}
      local var357 = {}
      var357.minRobux = 2
      var357.maxRobux = 999999999
      var356.allowedPriceRange = var357
      var356.marketplaceFeesPercentage = 30
      var41.TShirt = var356
      local var361 = {}
      local var362 = {}
      var362.minRobux = 50
      var362.maxRobux = 5000
      var361.allowedPriceRange = var362
      var361.marketplaceFeesPercentage = 70
      local var366 = {}
      local var368 = 25
      local var369 = 50
      local var370 = 75
      var366.allowedDiscountPercentages = {}
      local var371 = {}
      var371.minRobux = 50
      var371.maxRobux = 5000
      var366.allowedPriceRange = var371
      var361.premiumPricing = var366
      var41.TShirtAccessory = var361
      local var374 = {}
      local var375 = {}
      var375.minRobux = 50
      var375.maxRobux = 5000
      var374.allowedPriceRange = var375
      var374.marketplaceFeesPercentage = 70
      local var379 = {}
      local var381 = 25
      local var382 = 50
      local var383 = 75
      var379.allowedDiscountPercentages = {}
      local var384 = {}
      var384.minRobux = 50
      var384.maxRobux = 5000
      var379.allowedPriceRange = var384
      var374.premiumPricing = var379
      var41.ShirtAccessory = var374
      local var387 = {}
      local var388 = {}
      var388.minRobux = 50
      var388.maxRobux = 5000
      var387.allowedPriceRange = var388
      var387.marketplaceFeesPercentage = 70
      local var392 = {}
      local var394 = 25
      local var395 = 50
      local var396 = 75
      var392.allowedDiscountPercentages = {}
      local var397 = {}
      var397.minRobux = 50
      var397.maxRobux = 5000
      var392.allowedPriceRange = var397
      var387.premiumPricing = var392
      var41.PantsAccessory = var387
      local var400 = {}
      local var401 = {}
      var401.minRobux = 50
      var401.maxRobux = 5000
      var400.allowedPriceRange = var401
      var400.marketplaceFeesPercentage = 70
      local var405 = {}
      local var407 = 25
      local var408 = 50
      local var409 = 75
      var405.allowedDiscountPercentages = {}
      local var410 = {}
      var410.minRobux = 50
      var410.maxRobux = 5000
      var405.allowedPriceRange = var410
      var400.premiumPricing = var405
      var41.JacketAccessory = var400
      local var413 = {}
      local var414 = {}
      var414.minRobux = 50
      var414.maxRobux = 5000
      var413.allowedPriceRange = var414
      var413.marketplaceFeesPercentage = 70
      local var418 = {}
      local var420 = 25
      local var421 = 50
      local var422 = 75
      var418.allowedDiscountPercentages = {}
      local var423 = {}
      var423.minRobux = 50
      var423.maxRobux = 5000
      var418.allowedPriceRange = var423
      var413.premiumPricing = var418
      var41.SweaterAccessory = var413
      local var426 = {}
      local var427 = {}
      var427.minRobux = 50
      var427.maxRobux = 5000
      var426.allowedPriceRange = var427
      var426.marketplaceFeesPercentage = 70
      local var431 = {}
      local var433 = 25
      local var434 = 50
      local var435 = 75
      var431.allowedDiscountPercentages = {}
      local var436 = {}
      var436.minRobux = 50
      var436.maxRobux = 5000
      var431.allowedPriceRange = var436
      var426.premiumPricing = var431
      var41.ShortsAccessory = var426
      local var439 = {}
      local var440 = {}
      var440.minRobux = 50
      var440.maxRobux = 5000
      var439.allowedPriceRange = var440
      var439.marketplaceFeesPercentage = 70
      local var444 = {}
      local var446 = 25
      local var447 = 50
      local var448 = 75
      var444.allowedDiscountPercentages = {}
      local var449 = {}
      var449.minRobux = 50
      var449.maxRobux = 5000
      var444.allowedPriceRange = var449
      var439.premiumPricing = var444
      var41.LeftShoeAccessory = var439
      local var452 = {}
      local var453 = {}
      var453.minRobux = 50
      var453.maxRobux = 5000
      var452.allowedPriceRange = var453
      var452.marketplaceFeesPercentage = 70
      local var457 = {}
      local var459 = 25
      local var460 = 50
      local var461 = 75
      var457.allowedDiscountPercentages = {}
      local var462 = {}
      var462.minRobux = 50
      var462.maxRobux = 5000
      var457.allowedPriceRange = var462
      var452.premiumPricing = var457
      var41.RightShoeAccessory = var452
      local var465 = {}
      local var466 = {}
      var466.minRobux = 50
      var466.maxRobux = 5000
      var465.allowedPriceRange = var466
      var465.marketplaceFeesPercentage = 70
      local var470 = {}
      local var472 = 25
      local var473 = 50
      local var474 = 75
      var470.allowedDiscountPercentages = {}
      local var475 = {}
      var475.minRobux = 50
      var475.maxRobux = 5000
      var470.allowedPriceRange = var475
      var465.premiumPricing = var470
      var41.DressSkirtAccessory = var465
      if var1() then
         var41.Torso = var9
         var41.RightArm = var9
         var41.LeftArm = var9
         var41.LeftLeg = var9
         var41.RightLeg = var9
         var41.DynamicHead = var9
         var41.EyebrowAccessory = var9
         var41.EyelashAccessory = var9
      end
      var473 = var41
      var474 = var0
      local var491 = var4(var473, var474, {})
      arg1:dispatch()
      if var8() then
         local var0 = {}
         var0.isItemTagsFeatureEnabled = true
         local var1 = "SweaterAccessory"
         local var2 = "ShortsAccessory"
         local var3 = "LeftShoeAccessory"
         local var4 = "RightShoeAccessory"
         local var5 = "DressSkirtAccessory"
         local var515 = "Shirt"
         local var516 = "TShirt"
         local var517 = "Pants"
         var0.enabledAssetTypes = { 
            "Hat", 
            "HairAccessory", 
            "FaceAccessory", 
            "NeckAccessory", 
            "ShoulderAccessory", 
            "BackAccessory", 
            "FrontAccessory", 
            "WaistAccessory", 
            "TShirtAccessory", 
            "ShirtAccessory", 
            "PantsAccessory", 
            "JacketAccessory"
         }
         var0.maximumItemTagsPerItem = 5
         local var7 = var6(var0.isItemTagsFeatureEnabled, var0.enabledAssetTypes, var0.maximumItemTagsPerItem)
         arg1:dispatch()
      end
      local var117 = var5(getDebugUgcBundleMetadata())
      arg1:dispatch()
      return var2.resolve({})
   end
end
