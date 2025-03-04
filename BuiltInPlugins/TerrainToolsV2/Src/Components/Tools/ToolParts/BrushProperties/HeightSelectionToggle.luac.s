PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["setHeightPicker"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["setHeightPicker"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["setHeightPicker"]
  JUMPIFNOT R4 [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["setHeightPicker"]
  LOADB R5 0
  CALL R4 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["setPlanePositionY"]
  JUMPIFNOT R3 [+7]
  JUMPIFNOT R4 [+6]
  GETIMPORT R5 K4 [spawn]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  CAPTURE VAL R2
  CALL R5 1 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R2 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["setPlanePositionY"]
  JUMPIFNOT R3 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["setPlanePositionY"]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K0 ["onFocused"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["onFocusLost"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K2 ["onValueChanged"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Label"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["planePositionY"]
  GETTABLEKS R5 R1 K4 ["heightPicker"]
  GETTABLEKS R6 R1 K5 ["setHeightPicker"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K12 [{"LayoutOrder", "Size", "Text", "Padding", "SizeToContent", "ContentDirection"}]
  SETTABLEKS R3 R9 K2 ["LayoutOrder"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 22
  CALL R10 4 1
  SETTABLEKS R10 R9 K7 ["Size"]
  SETTABLEKS R2 R9 K8 ["Text"]
  GETIMPORT R10 K17 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K9 ["Padding"]
  LOADB R10 1
  SETTABLEKS R10 R9 K10 ["SizeToContent"]
  GETIMPORT R10 K21 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K11 ["ContentDirection"]
  DUPTABLE R10 K24 [{"Input", "HeightPickerContainer"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K32 [{"LayoutOrder", "Width", "Key", "Label", "Value", "Precision", "OnFocused", "OnFocusLost", "OnValueChanged"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  GETIMPORT R14 K17 [UDim.new]
  LOADN R15 0
  LOADN R16 116
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["Width"]
  LOADK R14 K33 ["Y"]
  SETTABLEKS R14 R13 K26 ["Key"]
  LOADK R14 K33 ["Y"]
  SETTABLEKS R14 R13 K1 ["Label"]
  SETTABLEKS R4 R13 K27 ["Value"]
  LOADN R14 3
  SETTABLEKS R14 R13 K28 ["Precision"]
  GETTABLEKS R14 R0 K34 ["onFocused"]
  SETTABLEKS R14 R13 K29 ["OnFocused"]
  GETTABLEKS R14 R0 K35 ["onFocusLost"]
  SETTABLEKS R14 R13 K30 ["OnFocusLost"]
  GETTABLEKS R14 R0 K36 ["onValueChanged"]
  SETTABLEKS R14 R13 K31 ["OnValueChanged"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["Input"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K37 ["Frame"]
  DUPTABLE R13 K39 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  LOADN R14 1
  SETTABLEKS R14 R13 K38 ["BackgroundTransparency"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 0
  LOADN R16 18
  LOADN R17 0
  LOADN R18 21
  CALL R14 4 1
  SETTABLEKS R14 R13 K7 ["Size"]
  DUPTABLE R14 K41 [{"HeightPicker"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K45 [{"Position", "IsOn", "SetIsOn"}]
  GETIMPORT R18 K15 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 3
  CALL R18 4 1
  SETTABLEKS R18 R17 K42 ["Position"]
  SETTABLEKS R5 R17 K43 ["IsOn"]
  SETTABLEKS R6 R17 K44 ["SetIsOn"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K40 ["HeightPicker"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["HeightPickerContainer"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K7 ["LabeledElementPair"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K8 ["NumberTextInput"]
  CALL R4 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R2 K9 ["ToggleButtons"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K10 ["PickerButton"]
  GETTABLEKS R6 R1 K11 ["PureComponent"]
  LOADK R8 K12 ["HeightSelectionToggle"]
  NAMECALL R6 R6 K13 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K14 [PROTO_4]
  SETTABLEKS R7 R6 K15 ["init"]
  DUPCLOSURE R7 K16 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K17 ["render"]
  RETURN R6 1
