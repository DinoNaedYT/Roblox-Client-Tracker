-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.getPlaneIntersection)
local var2 = require(var0.Src.Types)
local var3 = var2.BrushSettings
local var4 = var2.Category
local var5 = var2.PlaneLock
return function(arg1, arg2, arg3)
   local var0 = arg3.Origin.Position
   local var1 = arg1[var4.BrushSettings][var3.PlaneTransform]
   local var2 = arg3.UnitRay.Direction
   local var111 = var3
   local var114 = var5
   if arg1[var4.BrushSettings][var111.PlaneLock] == "Auto" then
      local var0 = arg2.LookVector
      var114 = var0
      var111 = var2
      local var1 = var1(var114, var111, arg2.Position, var0)
      local var2 = {}
      var2.Distance = var1 - var0.Magnitude
      var2.Normal = var0
      var2.Position = var1
      return var2
   end
   local var5 = var5
   local var6 = var5.Manual
   if arg1[var4.BrushSettings][var3.PlaneLock] == "Auto" then
      var6 = var0
      var5 = var2
      local var0 = var1(var6, var5, var1.Position, var1.LookVector)
      local var1 = {}
      var1.Distance = var0 - var0.Magnitude
      var1.Normal = var1.LookVector
      var1.Position = var0
      return var1
   end
   return nil
end
