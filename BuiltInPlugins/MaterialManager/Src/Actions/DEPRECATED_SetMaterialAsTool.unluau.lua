-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Framework).Util.Action(script.Name, function(arg1)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected active to be boolean, received {type(arg1)}`
   assert()
   local var2 = {}
   var2.DEPRECATED_ActiveAsTool = arg1
   return var2
end)
