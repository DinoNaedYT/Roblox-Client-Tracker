PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Left"]
  GETTABLEKS R2 R3 K1 ["rawValue"]
  CALL R2 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Right"]
  GETTABLEKS R3 R4 K1 ["rawValue"]
  CALL R3 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Top"]
  GETTABLEKS R4 R5 K1 ["rawValue"]
  CALL R4 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Bottom"]
  GETTABLEKS R5 R6 K1 ["rawValue"]
  CALL R5 0 1
  GETTABLE R6 R0 R2
  GETTABLEKS R8 R1 K5 ["X"]
  GETTABLE R9 R0 R3
  SUB R7 R8 R9
  GETTABLE R8 R0 R4
  GETTABLEKS R10 R1 K6 ["Y"]
  GETTABLE R11 R0 R5
  SUB R9 R10 R11
  NEWTABLE R10 0 4
  MOVE R11 R6
  MOVE R12 R7
  MOVE R13 R8
  MOVE R14 R9
  SETLIST R10 R11 4 [1]
  RETURN R10 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["sliceRect"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["setSliceRect"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["pixelDimensions"]
  GETUPVAL R5 1
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLE R6 R5 R7
  GETTABLEKS R8 R1 K4 ["Text"]
  FASTCALL1 TONUMBER R8 [+2]
  GETIMPORT R7 K6 [tonumber]
  CALL R7 1 1
  JUMPIFNOT R7 [+37]
  MOVE R9 R7
  LOADN R10 0
  GETUPVAL R12 3
  GETTABLE R11 R2 R12
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K9 [math.clamp]
  CALL R8 3 1
  FASTCALL1 MATH_ROUND R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K11 [math.round]
  CALL R9 1 1
  MOVE R8 R9
  NEWTABLE R9 0 4
  MOVE R10 R8
  GETUPVAL R12 3
  GETTABLE R11 R2 R12
  GETUPVAL R13 4
  GETTABLE R12 R2 R13
  GETUPVAL R14 5
  GETTABLE R13 R2 R14
  SETLIST R9 R10 4 [1]
  MOVE R10 R3
  MOVE R11 R9
  LOADB R12 1
  CALL R10 2 0
  LOADK R10 K12 ["%d"]
  MOVE R12 R8
  NAMECALL R10 R10 K13 ["format"]
  CALL R10 2 1
  SETTABLEKS R10 R1 K4 ["Text"]
  RETURN R0 0
  LOADK R8 K12 ["%d"]
  MOVE R10 R6
  NAMECALL R8 R8 K13 ["format"]
  CALL R8 2 1
  SETTABLEKS R8 R1 K4 ["Text"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["sliceRect"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["setSliceRect"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["pixelDimensions"]
  GETUPVAL R5 1
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLE R6 R5 R7
  GETTABLEKS R8 R1 K4 ["Text"]
  FASTCALL1 TONUMBER R8 [+2]
  GETIMPORT R7 K6 [tonumber]
  CALL R7 1 1
  JUMPIFNOT R7 [+43]
  MOVE R9 R7
  LOADN R10 0
  GETTABLEKS R12 R4 K7 ["X"]
  GETUPVAL R14 3
  GETTABLE R13 R2 R14
  SUB R11 R12 R13
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K10 [math.clamp]
  CALL R8 3 1
  FASTCALL1 MATH_ROUND R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K12 [math.round]
  CALL R9 1 1
  MOVE R8 R9
  GETTABLEKS R10 R4 K7 ["X"]
  SUB R9 R10 R8
  NEWTABLE R10 0 4
  GETUPVAL R12 3
  GETTABLE R11 R2 R12
  MOVE R12 R9
  GETUPVAL R14 4
  GETTABLE R13 R2 R14
  GETUPVAL R15 5
  GETTABLE R14 R2 R15
  SETLIST R10 R11 4 [1]
  MOVE R11 R3
  MOVE R12 R10
  LOADB R13 1
  CALL R11 2 0
  LOADK R11 K13 ["%d"]
  MOVE R13 R8
  NAMECALL R11 R11 K14 ["format"]
  CALL R11 2 1
  SETTABLEKS R11 R1 K4 ["Text"]
  RETURN R0 0
  LOADK R8 K13 ["%d"]
  MOVE R10 R6
  NAMECALL R8 R8 K14 ["format"]
  CALL R8 2 1
  SETTABLEKS R8 R1 K4 ["Text"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["sliceRect"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["setSliceRect"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["pixelDimensions"]
  GETUPVAL R5 1
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLE R6 R5 R7
  GETTABLEKS R8 R1 K4 ["Text"]
  FASTCALL1 TONUMBER R8 [+2]
  GETIMPORT R7 K6 [tonumber]
  CALL R7 1 1
  JUMPIFNOT R7 [+37]
  MOVE R9 R7
  LOADN R10 0
  GETUPVAL R12 3
  GETTABLE R11 R2 R12
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K9 [math.clamp]
  CALL R8 3 1
  FASTCALL1 MATH_ROUND R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K11 [math.round]
  CALL R9 1 1
  MOVE R8 R9
  NEWTABLE R9 0 4
  GETUPVAL R11 4
  GETTABLE R10 R2 R11
  GETUPVAL R12 5
  GETTABLE R11 R2 R12
  MOVE R12 R8
  GETUPVAL R14 3
  GETTABLE R13 R2 R14
  SETLIST R9 R10 4 [1]
  MOVE R10 R3
  MOVE R11 R9
  LOADB R12 1
  CALL R10 2 0
  LOADK R10 K12 ["%d"]
  MOVE R12 R8
  NAMECALL R10 R10 K13 ["format"]
  CALL R10 2 1
  SETTABLEKS R10 R1 K4 ["Text"]
  RETURN R0 0
  LOADK R8 K12 ["%d"]
  MOVE R10 R6
  NAMECALL R8 R8 K13 ["format"]
  CALL R8 2 1
  SETTABLEKS R8 R1 K4 ["Text"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["sliceRect"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["setSliceRect"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["pixelDimensions"]
  GETUPVAL R5 1
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLE R6 R5 R7
  GETTABLEKS R8 R1 K4 ["Text"]
  FASTCALL1 TONUMBER R8 [+2]
  GETIMPORT R7 K6 [tonumber]
  CALL R7 1 1
  JUMPIFNOT R7 [+43]
  MOVE R9 R7
  LOADN R10 0
  GETTABLEKS R12 R4 K7 ["Y"]
  GETUPVAL R14 3
  GETTABLE R13 R2 R14
  SUB R11 R12 R13
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K10 [math.clamp]
  CALL R8 3 1
  FASTCALL1 MATH_ROUND R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K12 [math.round]
  CALL R9 1 1
  MOVE R8 R9
  GETTABLEKS R10 R4 K7 ["Y"]
  SUB R9 R10 R8
  NEWTABLE R10 0 4
  GETUPVAL R12 4
  GETTABLE R11 R2 R12
  GETUPVAL R13 5
  GETTABLE R12 R2 R13
  GETUPVAL R14 3
  GETTABLE R13 R2 R14
  MOVE R14 R9
  SETLIST R10 R11 4 [1]
  MOVE R11 R3
  MOVE R12 R10
  LOADB R13 1
  CALL R11 2 0
  LOADK R11 K13 ["%d"]
  MOVE R13 R8
  NAMECALL R11 R11 K14 ["format"]
  CALL R11 2 1
  SETTABLEKS R11 R1 K4 ["Text"]
  RETURN R0 0
  LOADK R8 K13 ["%d"]
  MOVE R10 R6
  NAMECALL R8 R8 K14 ["format"]
  CALL R8 2 1
  SETTABLEKS R8 R1 K4 ["Text"]
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K0 ["onLeftFocusLost"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K1 ["onRightFocusLost"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K2 ["onTopFocusLost"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K3 ["onBottomFocusLost"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["pixelDimensions"]
  GETTABLEKS R4 R1 K3 ["sliceRect"]
  GETTABLEKS R5 R1 K4 ["orientation"]
  GETTABLEKS R6 R2 K5 ["TextOffsetItem"]
  LOADNIL R7
  GETUPVAL R8 0
  MOVE R9 R4
  MOVE R10 R3
  CALL R8 2 1
  GETTABLE R9 R8 R5
  GETUPVAL R10 1
  JUMPIFNOTEQ R5 R10 [+4]
  GETTABLEKS R7 R0 K6 ["onLeftFocusLost"]
  JUMP [+17]
  GETUPVAL R10 2
  JUMPIFNOTEQ R5 R10 [+4]
  GETTABLEKS R7 R0 K7 ["onRightFocusLost"]
  JUMP [+11]
  GETUPVAL R10 3
  JUMPIFNOTEQ R5 R10 [+4]
  GETTABLEKS R7 R0 K8 ["onTopFocusLost"]
  JUMP [+5]
  GETUPVAL R10 4
  JUMPIFNOTEQ R5 R10 [+3]
  GETTABLEKS R7 R0 K9 ["onBottomFocusLost"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K13 [{"Size", "LayoutOrder"}]
  GETTABLEKS R13 R6 K14 ["PaneSize"]
  SETTABLEKS R13 R12 K11 ["Size"]
  GETTABLEKS R14 R1 K16 ["layoutOrder"]
  ORK R13 R14 K15 [0]
  SETTABLEKS R13 R12 K12 ["LayoutOrder"]
  DUPTABLE R13 K19 [{"Label", "TextInput"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K25 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R17 K28 [UDim2.fromOffset]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K20 ["Position"]
  GETIMPORT R17 K30 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R6 K31 ["LabelXWidth"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  GETTABLEKS R18 R1 K33 ["labelText"]
  ORK R17 R18 K32 [""]
  SETTABLEKS R17 R16 K21 ["Text"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K34 ["TEXTSIZE"]
  SETTABLEKS R17 R16 K22 ["TextSize"]
  GETIMPORT R17 K37 [Enum.TextXAlignment.Right]
  SETTABLEKS R17 R16 K23 ["TextXAlignment"]
  GETIMPORT R17 K39 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K24 ["TextYAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["Label"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K43 [{"Enabled", "Size", "Position", "Style", "Text", "TextXAlignment", "OnFocusLost"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K40 ["Enabled"]
  GETTABLEKS R17 R6 K44 ["TextBoxSize"]
  SETTABLEKS R17 R16 K11 ["Size"]
  GETIMPORT R17 K28 [UDim2.fromOffset]
  GETTABLEKS R19 R6 K31 ["LabelXWidth"]
  GETTABLEKS R20 R6 K45 ["LabelTextBoxSpacing"]
  ADD R18 R19 R20
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K20 ["Position"]
  GETTABLEKS R17 R6 K41 ["Style"]
  SETTABLEKS R17 R16 K41 ["Style"]
  LOADK R17 K46 ["%d"]
  MOVE R19 R9
  NAMECALL R17 R17 K47 ["format"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K21 ["Text"]
  GETIMPORT R17 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K23 ["TextXAlignment"]
  SETTABLEKS R7 R16 K42 ["OnFocusLost"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["TextInput"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K11 ["Orientation"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETTABLEKS R7 R5 K14 ["Analytics"]
  GETTABLEKS R8 R5 K15 ["Localization"]
  GETTABLEKS R9 R2 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["DEPRECATED_TextInput"]
  GETTABLEKS R11 R9 K18 ["TextLabel"]
  GETTABLEKS R12 R9 K19 ["Pane"]
  GETTABLEKS R13 R1 K20 ["PureComponent"]
  LOADK R15 K21 ["TextOffset"]
  NAMECALL R13 R13 K22 ["extend"]
  CALL R13 2 1
  GETTABLEKS R15 R4 K23 ["Left"]
  GETTABLEKS R14 R15 K24 ["rawValue"]
  CALL R14 0 1
  GETTABLEKS R16 R4 K25 ["Right"]
  GETTABLEKS R15 R16 K24 ["rawValue"]
  CALL R15 0 1
  GETTABLEKS R17 R4 K26 ["Top"]
  GETTABLEKS R16 R17 K24 ["rawValue"]
  CALL R16 0 1
  GETTABLEKS R18 R4 K27 ["Bottom"]
  GETTABLEKS R17 R18 K24 ["rawValue"]
  CALL R17 0 1
  DUPCLOSURE R18 K28 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R19 K29 [PROTO_5]
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R19 R13 K30 ["init"]
  DUPCLOSURE R19 K31 [PROTO_6]
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R19 R13 K32 ["render"]
  MOVE R19 R6
  DUPTABLE R20 K34 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R20 K14 ["Analytics"]
  SETTABLEKS R8 R20 K15 ["Localization"]
  GETTABLEKS R21 R5 K33 ["Stylizer"]
  SETTABLEKS R21 R20 K33 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R13
  CALL R19 1 1
  MOVE R13 R19
  RETURN R13 1
