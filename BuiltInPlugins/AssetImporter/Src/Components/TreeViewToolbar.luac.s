PROTO_0:
  JUMPIFEQKB R0 TRUE [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  NOT R0 R1
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnExpansionChange"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnExpansionChange"]
  GETUPVAL R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Expansion"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TreeViewToolbar"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K4 ["Expansion"]
  DUPCLOSURE R6 K5 [PROTO_0]
  CALL R4 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  JUMPIFNOT R4 [+2]
  LOADK R6 K6 ["Collapse"]
  JUMP [+1]
  LOADK R6 K7 ["Expand"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K16 [{"HorizontalAlignment", "VerticalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
  GETIMPORT R10 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K21 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETIMPORT R10 K24 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K11 ["Layout"]
  GETTABLEKS R10 R1 K12 ["LayoutOrder"]
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  GETTABLEKS R10 R2 K13 ["Padding"]
  SETTABLEKS R10 R9 K13 ["Padding"]
  GETTABLEKS R10 R1 K14 ["Size"]
  SETTABLEKS R10 R9 K14 ["Size"]
  GETTABLEKS R10 R2 K15 ["Spacing"]
  SETTABLEKS R10 R9 K15 ["Spacing"]
  DUPTABLE R10 K26 [{"ExpandCollapseAll"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K30 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K12 ["LayoutOrder"]
  SETTABLEKS R5 R13 K27 ["OnClick"]
  GETIMPORT R14 K33 [UDim2.new]
  LOADN R15 0
  LOADN R16 70
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K14 ["Size"]
  LOADK R14 K34 ["Round"]
  SETTABLEKS R14 R13 K28 ["Style"]
  LOADK R16 K2 ["TreeViewToolbar"]
  MOVE R17 R6
  NAMECALL R14 R3 K35 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K29 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["ExpandCollapseAll"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Button"]
  GETTABLEKS R7 R5 K13 ["Pane"]
  GETTABLEKS R8 R1 K14 ["Dash"]
  GETTABLEKS R9 R8 K15 ["map"]
  GETTABLEKS R10 R8 K16 ["some"]
  GETTABLEKS R11 R2 K17 ["PureComponent"]
  LOADK R13 K18 ["TreeViewToolbar"]
  NAMECALL R11 R11 K19 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K20 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K21 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K24 [{"Localization", "Stylizer"}]
  GETTABLEKS R14 R3 K22 ["Localization"]
  SETTABLEKS R14 R13 K22 ["Localization"]
  GETTABLEKS R14 R3 K23 ["Stylizer"]
  SETTABLEKS R14 R13 K23 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
