-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Src.Actions.Action)(script.Name, function(arg1)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   local var0 = true
   local var1 = string.format("uploadSucceeded arg must be a boolean, received %s", tostring(arg1))
   assert()
   local var2 = {}
   var2.uploadSucceeded = arg1
   return var2
end)
