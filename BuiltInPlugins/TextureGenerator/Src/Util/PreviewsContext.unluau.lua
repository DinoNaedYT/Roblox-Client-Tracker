-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.createUnimplemented)
local var3 = {}
local var18 = {}
var3.previews = var18
var18 = var2
local var20 = var18("addOrUpdatePreview")
var3.addOrUpdatePreview = var20
var20 = var2
local var22 = var20("updatePreview")
var3.updatePreview = var22
var22 = var2
local var24 = var22("removePreview")
var3.removePreview = var24
var24 = var2
local var26 = var24("addError")
var3.addError = var26
var26 = var2
local var28 = var26("popError")
var3.popError = var28
var28 = var2
local var30 = var28("removeErrorById")
var3.removeErrorById = var30
var30 = var2
var3.getTopError = var30("getTopError")
local var33 = {}
var3.modelToPreview = var33
var33 = var2
var3.addOrUpdateModelToPreview = var33("addOrUpdateModelToPreview")
local var36 = 0
var3.quota = var36
var36 = var2
var3.setQuota = var36("setQuota")
local var39 = 0
var3.total = var39
var39 = var2
var3.setTotal = var39("setTotal")
return require(var0.Packages.React).createContext(var3)
