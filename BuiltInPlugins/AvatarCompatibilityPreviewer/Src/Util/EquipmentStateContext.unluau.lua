-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.createUnimplemented)
local var3 = {}
local var74 = {}
var3.equippedItems = var74
var74 = var2
local var76 = var74("addEquippedItem")
var3.addEquippedItem = var76
var76 = var2
local var78 = var76("removeEquippedItem")
var3.removeEquippedItem = var78
var78 = var2
local var80 = var78("removeAllEquippedItems")
var3.removeAllEquippedItems = var80
var80 = var2
local var82 = var80("moveEquippedItemsToIndex")
var3.moveEquippedItemsToIndex = var82
var82 = var2
local var84 = var82("hideEquippedItem")
var3.hideEquippedItem = var84
var84 = var2
local var86 = var84("showEquippedItem")
var3.showEquippedItem = var86
var86 = var2
var3.setHideAllEquippedItems = var86("setHideAllEquippedItems")
function var3.startIgnoringChildren()
   return function()
   end
end

var3.isIgnoringChildren = false
local var90 = {}
var90.accessories = {}
var90.animation = nil
var90.clothing = {}
var90.emotion = nil
local var95 = {}
var90.patches = var95
var3.avatarAssets = var90
var95 = var3
return require(var0.Packages.React).createContext(var95)
