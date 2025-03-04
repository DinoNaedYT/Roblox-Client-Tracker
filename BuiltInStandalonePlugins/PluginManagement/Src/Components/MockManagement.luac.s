PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["ScreenGui"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_2:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["ScreenGui"]
  CALL R0 1 1
  LOADK R1 K4 ["MockPluginGui"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K6 ["Parent"]
  RETURN R0 1

PROTO_3:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["ScreenGui"]
  CALL R2 1 1
  LOADK R3 K4 ["MockPluginGui"]
  SETTABLEKS R3 R2 K5 ["Name"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K6 ["Parent"]
  MOVE R1 R2
  RETURN R1 1

PROTO_4:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["ScreenGui"]
  CALL R2 1 1
  LOADK R3 K4 ["MockPluginGui"]
  SETTABLEKS R3 R2 K5 ["Name"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K6 ["Parent"]
  MOVE R1 R2
  RETURN R1 1

PROTO_5:
  NEWTABLE R1 4 0
  DUPCLOSURE R2 K0 [PROTO_1]
  SETTABLEKS R2 R1 K1 ["GetMouse"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K2 ["CreateQWidgetPluginGui"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K3 ["CreateDockWidgetPluginGui"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Store"]
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["initialStoreState"]
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  CALL R2 3 1
  SETTABLEKS R2 R0 K5 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["API"]
  GETTABLEKS R2 R3 K7 ["mock"]
  NEWTABLE R3 0 0
  CALL R2 1 1
  SETTABLEKS R2 R0 K8 ["api"]
  GETUPVAL R2 3
  GETTABLEKS R3 R1 K9 ["Container"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K10 ["plugin"]
  GETTABLEKS R2 R1 K11 ["FocusTarget"]
  JUMPIF R2 [+4]
  GETIMPORT R2 K13 [Instance.new]
  LOADK R3 K14 ["ScreenGui"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K15 ["target"]
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 0 7
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Plugin"]
  GETTABLEKS R2 R3 K1 ["new"]
  GETTABLEKS R3 R0 K2 ["plugin"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["new"]
  GETTABLEKS R4 R0 K3 ["api"]
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Localization"]
  GETTABLEKS R4 R5 K5 ["mock"]
  CALL R4 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Mouse"]
  GETTABLEKS R5 R6 K1 ["new"]
  GETTABLEKS R6 R0 K2 ["plugin"]
  NAMECALL R6 R6 K7 ["GetMouse"]
  CALL R6 1 -1
  CALL R5 -1 1
  GETUPVAL R6 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["Focus"]
  GETTABLEKS R7 R8 K1 ["new"]
  GETTABLEKS R8 R0 K9 ["target"]
  CALL R7 1 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["Store"]
  GETTABLEKS R8 R9 K1 ["new"]
  GETTABLEKS R9 R0 K11 ["store"]
  CALL R8 1 -1
  SETLIST R1 R2 -1 [1]
  MOVE R3 R1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["new"]
  CALL R4 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K14 [table.insert]
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["provide"]
  MOVE R3 R1
  GETTABLEKS R5 R0 K16 ["props"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K17 ["Children"]
  GETTABLE R4 R5 R6
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Http"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["MainReducer"]
  CALL R4 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K5 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["ContextServices"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["ContextServices"]
  GETTABLEKS R7 R8 K14 ["PluginAPI2"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K13 ["ContextServices"]
  GETTABLEKS R8 R9 K15 ["Navigation"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["makeTheme"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K18 ["PureComponent"]
  LOADK R11 K19 ["MockManagement"]
  NAMECALL R9 R9 K20 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K21 [PROTO_0]
  DUPCLOSURE R11 K22 [PROTO_5]
  DUPCLOSURE R12 K23 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R11
  SETTABLEKS R12 R9 K24 ["init"]
  DUPCLOSURE R12 K25 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R12 R9 K26 ["render"]
  RETURN R9 1
