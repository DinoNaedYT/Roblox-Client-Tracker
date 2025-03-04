-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Src.Components.HighlightTextLabel)
local var3 = require(var0.Packages.React)
local var4 = var1.UI.Pane
local var5 = {}
var5.name = "HighlightTextLabel"
var5.summary = "This text label allows for highlighting specific parts of the text based upon a fuzzy search match."
local var6 = {}
var6.name = "HighlightTextLabel"
function var6.story(arg1)
   local var192 = {}
   var3.Tag = "X-Fill X-Column X-Top"
   var192.Size = UDim2.fromOffset(325, 300)
   local var200 = {}
   local var204 = {}
   var204.StyleSheet = var1.Styling.registerPluginStyles(arg1.plugin, var0)
   var200.StyleLink = var3.createElement("StyleLink", var204)
   local var209 = {}
   var209.Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus laoreet"
   local var0 = 1
   local var1 = 3
   local var2 = 4
   var209.MatchIndexes = {}
   var200.HighlightTextLabel = var3.createElement(var2, var209)
   return var3.createElement(var4, var192, var200)
end

var5.stories = {}
return var5
