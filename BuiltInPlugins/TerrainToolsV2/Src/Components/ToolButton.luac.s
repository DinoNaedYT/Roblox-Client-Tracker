PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnClick"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnClick"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["ToolId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"isHovered"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isHovered"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["mouseEnter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["mouseLeave"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onClick"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Theme"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Localization"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["ToolId"]
  LOADK R6 K5 ["ToolName"]
  MOVE R7 R3
  NAMECALL R4 R2 K6 ["getText"]
  CALL R4 3 1
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K7 ["LayoutOrder"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K9 ["IsUnitTest"]
  ORK R6 R7 K8 [False]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K10 ["Stylizer"]
  GETTABLEKS R9 R10 K11 ["ToolButton"]
  GETTABLEKS R8 R9 K12 ["ToolIcons"]
  GETTABLE R7 R8 R3
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K13 ["IsCurrentTool"]
  GETTABLEKS R10 R0 K14 ["state"]
  GETTABLEKS R9 R10 K15 ["isHovered"]
  JUMPIFNOT R8 [+2]
  LOADK R10 K16 [0.5]
  JUMP [+1]
  LOADN R10 1
  JUMPIFNOT R9 [+1]
  LOADK R10 K17 [0.75]
  GETTABLEKS R11 R1 K18 ["textSize"]
  GETUPVAL R12 0
  JUMPIFNOT R12 [+21]
  GETUPVAL R12 1
  MOVE R14 R4
  MOVE R15 R11
  GETTABLEKS R16 R1 K19 ["font"]
  GETIMPORT R17 K22 [Vector2.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 -1
  NAMECALL R12 R12 K23 ["GetTextSize"]
  CALL R12 -1 1
  GETTABLEKS R13 R12 K24 ["X"]
  LOADN R14 75
  JUMPIFNOTLT R14 R13 [+4]
  GETTABLEKS R13 R1 K18 ["textSize"]
  SUBK R11 R13 K25 [2]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["createElement"]
  LOADK R13 K27 ["ImageButton"]
  NEWTABLE R14 8 0
  LOADN R15 1
  SETTABLEKS R15 R14 K28 ["BorderSizePixel"]
  SETTABLEKS R10 R14 K29 ["BackgroundTransparency"]
  SETTABLEKS R5 R14 K7 ["LayoutOrder"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K30 ["Event"]
  GETTABLEKS R15 R16 K31 ["MouseEnter"]
  GETTABLEKS R16 R0 K32 ["mouseEnter"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K30 ["Event"]
  GETTABLEKS R15 R16 K33 ["MouseLeave"]
  GETTABLEKS R16 R0 K34 ["mouseLeave"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K30 ["Event"]
  GETTABLEKS R15 R16 K35 ["Activated"]
  GETTABLEKS R16 R0 K36 ["onClick"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K39 [{"Image", "Text"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K26 ["createElement"]
  LOADK R17 K40 ["ImageLabel"]
  DUPTABLE R18 K45 [{"BackgroundTransparency", "Image", "ScaleType", "Size", "AnchorPoint", "Position"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["BackgroundTransparency"]
  SETTABLEKS R7 R18 K37 ["Image"]
  GETIMPORT R19 K48 [Enum.ScaleType.Fit]
  SETTABLEKS R19 R18 K41 ["ScaleType"]
  GETIMPORT R19 K50 [UDim2.new]
  LOADN R20 0
  LOADN R21 26
  LOADN R22 0
  LOADN R23 27
  CALL R19 4 1
  SETTABLEKS R19 R18 K42 ["Size"]
  GETIMPORT R19 K22 [Vector2.new]
  LOADK R20 K16 [0.5]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K43 ["AnchorPoint"]
  GETIMPORT R19 K50 [UDim2.new]
  LOADK R20 K16 [0.5]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K44 ["Position"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["Image"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K26 ["createElement"]
  LOADK R17 K51 ["TextLabel"]
  DUPTABLE R18 K56 [{"BackgroundTransparency", "Text", "Font", "TextSize", "TextXAlignment", "TextColor3", "Size", "Position"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["BackgroundTransparency"]
  SETTABLEKS R4 R18 K38 ["Text"]
  GETTABLEKS R19 R1 K19 ["font"]
  SETTABLEKS R19 R18 K52 ["Font"]
  GETUPVAL R20 0
  JUMPIFNOT R20 [+2]
  MOVE R19 R11
  JUMP [+2]
  GETTABLEKS R19 R1 K18 ["textSize"]
  SETTABLEKS R19 R18 K53 ["TextSize"]
  GETIMPORT R19 K58 [Enum.TextXAlignment.Center]
  SETTABLEKS R19 R18 K54 ["TextXAlignment"]
  GETTABLEKS R19 R1 K59 ["textColor"]
  SETTABLEKS R19 R18 K55 ["TextColor3"]
  GETIMPORT R19 K50 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 15
  CALL R19 4 1
  SETTABLEKS R19 R18 K42 ["Size"]
  GETIMPORT R19 K50 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 1
  LOADN R23 241
  CALL R19 4 1
  SETTABLEKS R19 R18 K44 ["Position"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["Text"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K15 [game]
  LOADK R9 K16 ["FFlagTerrainEditorFixToolOverlap"]
  LOADB R10 0
  NAMECALL R7 R7 K17 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K15 [game]
  LOADK R10 K18 ["TextService"]
  NAMECALL R8 R8 K19 ["GetService"]
  CALL R8 2 1
  GETTABLEKS R9 R2 K20 ["PureComponent"]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K21 ["Name"]
  NAMECALL R9 R9 K22 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K23 [PROTO_3]
  SETTABLEKS R10 R9 K24 ["init"]
  DUPCLOSURE R10 K25 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K26 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K30 [{"Theme", "Localization", "Stylizer"}]
  GETTABLEKS R12 R5 K31 ["DEPRECATED_Theme"]
  SETTABLEKS R12 R11 K27 ["Theme"]
  GETTABLEKS R12 R3 K28 ["Localization"]
  SETTABLEKS R12 R11 K28 ["Localization"]
  GETTABLEKS R12 R3 K29 ["Stylizer"]
  SETTABLEKS R12 R11 K29 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
