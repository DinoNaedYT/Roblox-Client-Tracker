MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R3 R2 K9 ["StyleKey"]
  DUPTABLE R4 K19 [{"FieldNameHeight", "LegendHeight", "BorderColor", "BorderWidth", "BackgroundColor", "GraphColors", "Grid", "Padding", "ScaleWidth"}]
  LOADN R5 32
  SETTABLEKS R5 R4 K10 ["FieldNameHeight"]
  LOADN R5 32
  SETTABLEKS R5 R4 K11 ["LegendHeight"]
  GETTABLEKS R5 R3 K20 ["MainText"]
  SETTABLEKS R5 R4 K12 ["BorderColor"]
  LOADN R5 1
  SETTABLEKS R5 R4 K13 ["BorderWidth"]
  GETTABLEKS R5 R3 K21 ["SubBackground2"]
  SETTABLEKS R5 R4 K14 ["BackgroundColor"]
  DUPTABLE R5 K25 [{"number", "Vector2", "Vector3"}]
  NEWTABLE R6 0 1
  GETTABLEKS R7 R3 K26 ["DialogMainButton"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K22 ["number"]
  NEWTABLE R6 0 2
  GETIMPORT R7 K29 [Color3.new]
  LOADK R8 K30 [0.75]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  GETIMPORT R8 K29 [Color3.new]
  LOADN R9 0
  LOADK R10 K30 [0.75]
  LOADN R11 0
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  SETTABLEKS R6 R5 K23 ["Vector2"]
  NEWTABLE R6 0 3
  GETIMPORT R7 K29 [Color3.new]
  LOADK R8 K30 [0.75]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  GETIMPORT R8 K29 [Color3.new]
  LOADN R9 0
  LOADK R10 K30 [0.75]
  LOADN R11 0
  CALL R8 3 1
  GETIMPORT R9 K29 [Color3.new]
  LOADN R10 0
  LOADN R11 0
  LOADK R12 K30 [0.75]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  SETTABLEKS R6 R5 K24 ["Vector3"]
  SETTABLEKS R5 R4 K15 ["GraphColors"]
  DUPTABLE R5 K36 [{"MaxTicks", "Intervals", "AxisColor", "GridColor", "Margin"}]
  LOADN R6 10
  SETTABLEKS R6 R5 K31 ["MaxTicks"]
  NEWTABLE R6 0 5
  LOADK R7 K37 [0.05]
  LOADK R8 K38 [0.1]
  LOADK R9 K39 [0.25]
  LOADK R10 K40 [0.5]
  LOADN R11 1
  SETLIST R6 R7 5 [1]
  SETTABLEKS R6 R5 K32 ["Intervals"]
  GETTABLEKS R6 R3 K20 ["MainText"]
  SETTABLEKS R6 R5 K33 ["AxisColor"]
  GETTABLEKS R6 R3 K41 ["MainTextDisabled"]
  SETTABLEKS R6 R5 K34 ["GridColor"]
  LOADK R6 K37 [0.05]
  SETTABLEKS R6 R5 K35 ["Margin"]
  SETTABLEKS R5 R4 K16 ["Grid"]
  LOADN R5 15
  SETTABLEKS R5 R4 K17 ["Padding"]
  LOADN R5 50
  SETTABLEKS R5 R4 K18 ["ScaleWidth"]
  RETURN R4 1
