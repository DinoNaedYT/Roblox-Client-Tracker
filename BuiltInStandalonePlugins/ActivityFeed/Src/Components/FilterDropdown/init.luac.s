PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["X"]
  RETURN R0 1

PROTO_1:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["items"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  SETTABLE R4 R0 R5
  FORGLOOP R1 2 [-2]
  RETURN R0 1

PROTO_2:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["items"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  FASTCALL2 TABLE_INSERT R0 R5 [+5]
  MOVE R7 R0
  MOVE R8 R5
  GETIMPORT R6 K5 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-8]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  GETUPVAL R4 3
  GETTABLE R3 R4 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  GETIMPORT R4 K3 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 -1
  CALL R3 -1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  NEWTABLE R7 0 1
  MOVE R8 R3
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["useState"]
  LOADK R7 K5 ["All Events"]
  CALL R6 1 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["useMemo"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K6 ["items"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["useMemo"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K6 ["items"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  NEWCLOSURE R10 P3
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R8
  NEWCLOSURE R11 P4
  CAPTURE VAL R2
  NEWCLOSURE R12 P5
  CAPTURE VAL R2
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K8 ["Frame"]
  NEWTABLE R15 4 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["Tag"]
  GETUPVAL R17 1
  LOADK R18 K10 ["Component-FilterDropdown"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R0 K11 ["LayoutOrder"]
  SETTABLEKS R16 R15 K11 ["LayoutOrder"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["Change"]
  GETTABLEKS R16 R17 K13 ["AbsoluteSize"]
  NEWCLOSURE R17 P6
  CAPTURE VAL R4
  SETTABLE R17 R15 R16
  DUPTABLE R16 K17 [{"Selected", "ButtonContainer", "Menu"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  LOADK R18 K18 ["TextButton"]
  NEWTABLE R19 4 0
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["Tag"]
  GETUPVAL R21 1
  LOADK R22 K19 ["X-Fill"]
  LOADK R23 K20 ["CX-Invisible"]
  CALL R21 2 1
  SETTABLE R21 R19 R20
  SETTABLEKS R6 R19 K21 ["Text"]
  LOADN R20 100
  SETTABLEKS R20 R19 K22 ["ZIndex"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K23 ["Event"]
  GETTABLEKS R20 R21 K24 ["Activated"]
  SETTABLE R12 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Selected"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  LOADK R18 K8 ["Frame"]
  NEWTABLE R19 2 0
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["Tag"]
  GETUPVAL R21 1
  LOADK R22 K20 ["CX-Invisible"]
  CALL R21 1 1
  SETTABLE R21 R19 R20
  LOADN R20 101
  SETTABLEKS R20 R19 K22 ["ZIndex"]
  DUPTABLE R20 K26 [{"Button"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K7 ["createElement"]
  LOADK R22 K27 ["ImageButton"]
  NEWTABLE R23 1 0
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K23 ["Event"]
  GETTABLEKS R24 R25 K24 ["Activated"]
  SETTABLE R12 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K25 ["Button"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K15 ["ButtonContainer"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K33 [{"Items", "Width", "Hide", "OnItemActivated", "OnFocusLost"}]
  SETTABLEKS R9 R19 K28 ["Items"]
  SETTABLEKS R5 R19 K29 ["Width"]
  NOT R20 R1
  SETTABLEKS R20 R19 K30 ["Hide"]
  SETTABLEKS R10 R19 K31 ["OnItemActivated"]
  SETTABLEKS R11 R19 K32 ["OnFocusLost"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K16 ["Menu"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Styling"]
  GETTABLEKS R3 R4 K9 ["joinTags"]
  GETTABLEKS R4 R2 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["DropdownMenu"]
  DUPCLOSURE R6 K12 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
