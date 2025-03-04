PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Frame"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K6 [{"AutomaticSize", "BackgroundColor3", "Size"}]
  GETIMPORT R7 K9 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K3 ["AutomaticSize"]
  GETIMPORT R7 K12 [Color3.new]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["BackgroundColor3"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K17 [{"List", "Padding"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K19 [{"AssetInfo"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K18 ["AssetInfo"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["List"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K20 ["UIPadding"]
  DUPTABLE R10 K25 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K27 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["PaddingTop"]
  GETIMPORT R11 K27 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["PaddingBottom"]
  GETIMPORT R11 K27 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["PaddingLeft"]
  GETIMPORT R11 K27 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["Padding"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Frame"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["Font"]
  GETTABLEKS R2 R3 K8 ["FontTile"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K9 ["TestUtils"]
  GETTABLEKS R3 R4 K10 ["MockItems"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K13 ["Stories"]
  GETTABLEKS R5 R6 K14 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K15 ["getSimpleAsset"]
  LOADK R6 K16 [11322590111]
  LOADK R7 K17 ["Roboto"]
  CALL R5 2 1
  DUPTABLE R6 K21 [{"name", "summary", "story"}]
  LOADK R7 K8 ["FontTile"]
  SETTABLEKS R7 R6 K18 ["name"]
  LOADK R7 K22 ["A FontTile component used in the grid view"]
  SETTABLEKS R7 R6 K19 ["summary"]
  DUPCLOSURE R7 K23 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K20 ["story"]
  RETURN R6 1
