-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Models.Callstack.CallstackRow)
local var2 = require(var0.Src.Models.DebuggerStateToken)
local var3 = require(var0.Src.Types)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2, arg3)
   local var0 = {}
   var0.threadId = arg1
   var0.frameList = arg2
   var0.debuggerStateToken = arg3
   return var0
end)
