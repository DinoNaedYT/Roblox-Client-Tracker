PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetEditPlaneMode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["EditPlaneMode"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Theme"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K4 ["EditPlaneMode"]
  GETTABLEKS R5 R1 K5 ["LayoutOrder"]
  LOADK R8 K6 ["BrushSettings"]
  LOADK R9 K7 ["EditPlane"]
  NAMECALL R6 R2 K8 ["getText"]
  CALL R6 3 1
  LOADK R9 K6 ["BrushSettings"]
  LOADK R10 K9 ["EditPlaneTooltip"]
  NAMECALL R7 R2 K8 ["getText"]
  CALL R7 3 1
  LOADNIL R8
  JUMPIFNOT R4 [+7]
  LOADK R11 K6 ["BrushSettings"]
  LOADK R12 K10 ["Apply"]
  NAMECALL R9 R2 K8 ["getText"]
  CALL R9 3 1
  MOVE R8 R9
  JUMP [+6]
  LOADK R11 K6 ["BrushSettings"]
  LOADK R12 K11 ["Edit"]
  NAMECALL R9 R2 K8 ["getText"]
  CALL R9 3 1
  MOVE R8 R9
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K15 [{"Size", "Text", "LayoutOrder"}]
  GETIMPORT R12 K18 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 18
  CALL R12 4 1
  SETTABLEKS R12 R11 K13 ["Size"]
  SETTABLEKS R6 R11 K14 ["Text"]
  SETTABLEKS R5 R11 K5 ["LayoutOrder"]
  DUPTABLE R12 K20 [{"ToggleButton"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K24 [{"Size", "Layout", "HorizontalAlignment", "Spacing"}]
  GETIMPORT R16 K18 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K13 ["Size"]
  GETIMPORT R16 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K21 ["Layout"]
  GETIMPORT R16 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K22 ["HorizontalAlignment"]
  LOADN R16 4
  SETTABLEKS R16 R15 K23 ["Spacing"]
  DUPTABLE R16 K33 [{"Action", "Reset"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K36 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K5 ["LayoutOrder"]
  GETIMPORT R20 K18 [UDim2.new]
  LOADN R21 0
  LOADN R22 114
  LOADN R23 0
  LOADN R24 22
  CALL R20 4 1
  SETTABLEKS R20 R19 K13 ["Size"]
  LOADK R20 K37 ["RoundPrimary"]
  SETTABLEKS R20 R19 K34 ["Style"]
  SETTABLEKS R8 R19 K14 ["Text"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K35 ["OnClick"]
  DUPTABLE R20 K39 [{"Tooltip"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K12 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K40 [{"Text"}]
  SETTABLEKS R7 R23 K14 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K38 ["Tooltip"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["Action"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K43 [{"LayoutOrder", "Size", "IconColor", "LeftIcon", "OnClick"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K5 ["LayoutOrder"]
  GETIMPORT R20 K18 [UDim2.new]
  LOADN R21 0
  LOADN R22 22
  LOADN R23 0
  LOADN R24 22
  CALL R20 4 1
  SETTABLEKS R20 R19 K13 ["Size"]
  GETTABLEKS R21 R3 K44 ["iconButton"]
  GETTABLEKS R20 R21 K45 ["buttonIconColor"]
  SETTABLEKS R20 R19 K41 ["IconColor"]
  GETTABLEKS R21 R3 K44 ["iconButton"]
  GETTABLEKS R20 R21 K46 ["resetIcon"]
  SETTABLEKS R20 R19 K42 ["LeftIcon"]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K32 ["Reset"]
  SETTABLEKS R20 R19 K35 ["OnClick"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Reset"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K19 ["ToggleButton"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["ContextItems"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Button"]
  GETTABLEKS R8 R6 K14 ["IconButton"]
  GETTABLEKS R9 R6 K15 ["Pane"]
  GETTABLEKS R10 R6 K16 ["Tooltip"]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K18 ["Tools"]
  GETTABLEKS R11 R12 K19 ["ToolParts"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R11 K20 ["LabeledElementPair"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K21 ["PureComponent"]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K22 ["Name"]
  NAMECALL R13 R13 K23 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K24 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K25 ["render"]
  MOVE R14 R4
  DUPTABLE R15 K28 [{"Localization", "Theme"}]
  GETTABLEKS R16 R3 K26 ["Localization"]
  SETTABLEKS R16 R15 K26 ["Localization"]
  GETTABLEKS R16 R5 K29 ["DEPRECATED_Theme"]
  SETTABLEKS R16 R15 K27 ["Theme"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
