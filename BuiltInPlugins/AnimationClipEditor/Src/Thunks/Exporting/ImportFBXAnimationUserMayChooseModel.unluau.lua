-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Actions.SetIsDirty)
local var2 = require(var0.Src.Actions.SetIsLegacyAnimSaves)
local var3 = require(var0.Src.Thunks.LoadAnimationData)
local var4 = require(var0.Src.Util.AnimationData)
local var5 = require(var0.Src.Util.Constants)
local var6 = require(var0.Src.Util.RigUtils)
local var7 = require(var0.Src.Util.RigSerialization)
return function(arg1, arg2, arg3)
   return function()
      arg2:showImportAnimModelChoicePrompt()
   end
end
