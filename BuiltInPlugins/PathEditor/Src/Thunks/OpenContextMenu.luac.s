PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["Left"]
  CALL R2 2 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K2 ["Right"]
  CALL R2 2 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Mirrored"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R2 1 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 1
  GETUPVAL R2 4
  GETUPVAL R3 3
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K2 ["SelectedTangentSide"]
  CALL R2 2 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_6:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETTABLEKS R2 R1 K2 ["SelectedObject"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R1 1
  GETTABLEKS R2 R1 K3 ["SelectedControlPointIndex"]
  JUMPIFNOTEQKN R2 K4 [0] [+2]
  RETURN R1 1
  NEWTABLE R3 0 0
  GETTABLEKS R5 R1 K5 ["ControlPointStates"]
  GETTABLE R4 R5 R2
  GETTABLEKS R5 R1 K6 ["SelectedTangentSide"]
  JUMPIFNOTEQKNIL R5 [+130]
  GETTABLEKS R5 R4 K7 ["Mirrored"]
  JUMPIFNOT R5 [+25]
  DUPTABLE R7 K11 [{"Icon", "OnClick", "Text"}]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Icon"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K9 ["OnClick"]
  GETUPVAL R8 1
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K14 ["BreakTangents"]
  NAMECALL R8 R8 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Text"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K18 [table.insert]
  CALL R5 2 0
  JUMP [+24]
  DUPTABLE R7 K11 [{"Icon", "OnClick", "Text"}]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Icon"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K9 ["OnClick"]
  GETUPVAL R8 1
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K19 ["MirrorTangents"]
  NAMECALL R8 R8 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Text"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K18 [table.insert]
  CALL R5 2 0
  GETTABLEKS R5 R4 K20 ["Sharp"]
  JUMPIFNOT R5 [+25]
  DUPTABLE R7 K11 [{"Icon", "OnClick", "Text"}]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Icon"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K9 ["OnClick"]
  GETUPVAL R8 1
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K21 ["AddTangents"]
  NAMECALL R8 R8 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Text"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K18 [table.insert]
  CALL R5 2 0
  JUMP [+24]
  DUPTABLE R7 K11 [{"Icon", "OnClick", "Text"}]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Icon"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K9 ["OnClick"]
  GETUPVAL R8 1
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K22 ["ClearTangents"]
  NAMECALL R8 R8 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Text"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K18 [table.insert]
  CALL R5 2 0
  DUPTABLE R7 K11 [{"Icon", "OnClick", "Text"}]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Icon"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K9 ["OnClick"]
  GETUPVAL R8 1
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K23 ["DeletePoint"]
  NAMECALL R8 R8 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Text"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K18 [table.insert]
  CALL R5 2 0
  JUMP [+27]
  DUPTABLE R7 K11 [{"Icon", "OnClick", "Text"}]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Icon"]
  NEWCLOSURE R8 P5
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K9 ["OnClick"]
  GETUPVAL R8 1
  LOADK R10 K13 ["ContextMenu"]
  LOADK R11 K24 ["DeleteTangent"]
  NAMECALL R8 R8 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Text"]
  FASTCALL2 TABLE_INSERT R3 R7 [+4]
  MOVE R6 R3
  GETIMPORT R5 K18 [table.insert]
  CALL R5 2 0
  GETUPVAL R5 5
  GETUPVAL R6 6
  NAMECALL R6 R6 K25 ["get"]
  CALL R6 1 1
  MOVE R7 R3
  LOADK R8 K26 ["BaseMenu"]
  CALL R5 3 0
  RETURN R1 1

PROTO_7:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  RETURN R2 1

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
  GETTABLEKS R2 R1 K7 ["ContextServices"]
  GETTABLEKS R3 R2 K8 ["Localization"]
  GETTABLEKS R4 R2 K9 ["Plugin"]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["ToggleAddPointTool"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K13 ["ToggleAddTangentTool"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K14 ["ToggleDone"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R5 K15 ["ToggleMirrored"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R5 K16 ["ToggleMoveTool"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R5 K17 ["ToolbarHovered"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K18 ["Thunks"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K19 ["AddControlPointTangent"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K20 ["ClearControlPointTangent"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R12 K21 ["RemoveControlPoint"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K22 ["Util"]
  GETTABLEKS R17 R18 K23 ["createContextMenu"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K10 ["Src"]
  GETTABLEKS R19 R20 K22 ["Util"]
  GETTABLEKS R18 R19 K24 ["getShortcuts"]
  CALL R17 1 1
  CALL R17 0 1
  DUPCLOSURE R18 K25 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  RETURN R18 1
