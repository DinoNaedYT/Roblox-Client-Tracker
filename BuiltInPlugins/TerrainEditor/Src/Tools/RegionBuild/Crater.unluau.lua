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
var2.NoiseStrength = 0.3
var2.BlendingEdge = 0
var2.FillBottom = 0.5
var2.NoiseScale = 0.3
local var41 = {}
var41.FallbackMaterial = Enum.Material.Grass
var41.Unit = var1.MaterialUnit.Percentage
var41.Min = 0
var41.Max = 1
var41.MaterialIndex = 1
local var48 = {}
var48.Material = Enum.Material.Grass
var48.MinHeight = 0
var48.MaxHeight = 1
var48.MinSlope = 0
var48.MaxSlope = 90
var48.Priority = 0
var41.MaterialList = {}
var41.FillMaterial = Enum.Material.Sandstone
var2.Material = var41
var2.PlacementMode = true
var2.RimHeight = 0.15
var2.Size = Vector3.new(512, 148, 512)
var2.SnapToVoxels = true
var2.Transform = CFrame.new()
var20.Defaults = {}
var20.Id = var1.Category.BuildSettings
local var73 = {}
var73.Id = var3.Region
local var75 = {}
var75.Type = var3.Region
var75.Wireframe = false
var75.Rotation = false
var73.Schema = var75
local var7 = {}
var7.Id = var3.Placement
local var81 = {}
var81.Type = var3.Placement
var7.Schema = var81
return require(var0.Src.Tools.BaseTool):new(var1.TerrainType.Crater, var1.Tab.None, {}, {})
