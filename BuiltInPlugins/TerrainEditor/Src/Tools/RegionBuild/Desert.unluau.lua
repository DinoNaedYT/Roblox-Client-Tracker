-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Types)
local var2 = var1.BuildSettings
local var3 = var1.Gizmo
local var20 = {}
local var23 = {}
var2.Offset = Vector2.new(0, 0)
var2.Seed = 0.123
var23.Children = {}
var2.AdvancedNoise = var23
var2.NoiseStrength = 0.5
var2.BlendingEdge = 0
var2.NoiseScale = 0.7
local var39 = {}
var39.FallbackMaterial = Enum.Material.Sand
var39.Unit = var1.MaterialUnit.Percentage
var39.Min = 0
var39.Max = 1
var39.MaterialIndex = 1
local var46 = {}
var46.Material = Enum.Material.Sand
var46.MinHeight = 0
var46.MaxHeight = 1
var46.MinSlope = 0
var46.MaxSlope = 90
var46.Priority = 0
var39.MaterialList = {}
var2.Material = var39
var2.PlacementMode = true
var2.Size = Vector3.new(512, 64, 512)
var2.SnapToVoxels = true
var2.Transform = CFrame.new()
var20.Defaults = {}
var20.Id = var1.Category.BuildSettings
local var68 = {}
var68.Id = var3.Region
local var70 = {}
var70.Type = var3.Region
var70.Wireframe = false
var70.Rotation = false
var68.Schema = var70
local var7 = {}
var7.Id = var3.Placement
local var76 = {}
var76.Type = var3.Placement
var7.Schema = var76
return require(var0.Src.Tools.BaseTool):new(var1.TerrainType.Desert, var1.Tab.None, {}, {})
