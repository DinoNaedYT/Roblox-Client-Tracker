-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Src.Util.createUnimplemented)
local var2 = {}
var2.promptText = ""
var2.randomizeSeed = true
var2.seed = 0
var2.rotation = CFrame.new()
var2.smartUVUnwrap = false
var2.promptMasking = false
var2.validRotation = true
local var22 = true
var2.validSeed = var22
var22 = var1
local var24 = var22("setPromptText")
var2.setPromptText = var24
var24 = var1
local var26 = var24("setRandomizeSeed")
var2.setRandomizeSeed = var26
var26 = var1
local var28 = var26("setSeed")
var2.setSeed = var28
var28 = var1
local var30 = var28("setRotation")
var2.setRotation = var30
var30 = var1
local var32 = var30("setSmartUVUnwrap")
var2.setSmartUVUnwrap = var32
var32 = var1
local var34 = var32("setPromptMasking")
var2.setPromptMasking = var34
var34 = var1
local var36 = var34("setValidRotation")
var2.setValidRotation = var36
var36 = var1
var2.setValidSeed = var36("setValidSeed")
return require(var0.Packages.React).createContext(var2)
