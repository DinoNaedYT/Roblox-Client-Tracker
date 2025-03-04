PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  NEWTABLE R4 0 3
  DUPTABLE R5 K6 [{"Text", "TextYAlignment", "Content"}]
  LOADK R8 K7 ["ModeSection"]
  LOADK R9 K8 ["Title"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["Text"]
  GETIMPORT R6 K12 [Enum.TextYAlignment.Center]
  SETTABLEKS R6 R5 K4 ["TextYAlignment"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K16 [{"Value", "OnValueChanged"}]
  GETTABLEKS R9 R1 K17 ["alignmentMode"]
  SETTABLEKS R9 R8 K14 ["Value"]
  GETTABLEKS R9 R1 K18 ["setAlignmentMode"]
  SETTABLEKS R9 R8 K15 ["OnValueChanged"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Content"]
  DUPTABLE R6 K19 [{"Text", "Content"}]
  LOADK R9 K20 ["AxesSection"]
  LOADK R10 K8 ["Title"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Text"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K25 [{"AlignmentSpace", "EnabledAxes", "OnAlignmentSpaceChanged", "OnEnabledAxesChanged"}]
  GETTABLEKS R10 R1 K26 ["alignmentSpace"]
  SETTABLEKS R10 R9 K21 ["AlignmentSpace"]
  GETTABLEKS R10 R1 K27 ["enabledAxes"]
  SETTABLEKS R10 R9 K22 ["EnabledAxes"]
  GETTABLEKS R10 R1 K28 ["setAlignmentSpace"]
  SETTABLEKS R10 R9 K23 ["OnAlignmentSpaceChanged"]
  GETTABLEKS R10 R1 K29 ["setEnabledAxes"]
  SETTABLEKS R10 R9 K24 ["OnEnabledAxesChanged"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["Content"]
  DUPTABLE R7 K19 [{"Text", "Content"}]
  LOADK R10 K30 ["RelativeToSection"]
  LOADK R11 K8 ["Title"]
  NAMECALL R8 R2 K9 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Text"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K16 [{"Value", "OnValueChanged"}]
  GETTABLEKS R11 R1 K31 ["relativeTo"]
  SETTABLEKS R11 R10 K14 ["Value"]
  GETTABLEKS R11 R1 K32 ["setRelativeTo"]
  SETTABLEKS R11 R10 K15 ["OnValueChanged"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["Content"]
  SETLIST R4 R5 3 [1]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K37 [{"Collapsible", "Items", "LayoutOrder", "MaximumLabelWidth"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K33 ["Collapsible"]
  SETTABLEKS R4 R7 K34 ["Items"]
  GETTABLEKS R8 R1 K35 ["LayoutOrder"]
  SETTABLEKS R8 R7 K35 ["LayoutOrder"]
  GETTABLEKS R8 R3 K36 ["MaximumLabelWidth"]
  SETTABLEKS R8 R7 K36 ["MaximumLabelWidth"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  DUPTABLE R2 K4 [{"alignmentMode", "alignmentSpace", "enabledAxes", "relativeTo"}]
  GETTABLEKS R3 R0 K0 ["alignmentMode"]
  SETTABLEKS R3 R2 K0 ["alignmentMode"]
  GETTABLEKS R3 R0 K1 ["alignmentSpace"]
  SETTABLEKS R3 R2 K1 ["alignmentSpace"]
  GETTABLEKS R3 R0 K2 ["enabledAxes"]
  SETTABLEKS R3 R2 K2 ["enabledAxes"]
  GETTABLEKS R3 R0 K3 ["relativeTo"]
  SETTABLEKS R3 R2 K3 ["relativeTo"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 3
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K4 [{"setAlignmentMode", "setAlignmentSpace", "setEnabledAxes", "setRelativeTo"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["setAlignmentMode"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setAlignmentSpace"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K2 ["setEnabledAxes"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K3 ["setRelativeTo"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Actions"]
  GETTABLEKS R7 R8 K13 ["SetAlignmentMode"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K12 ["Actions"]
  GETTABLEKS R8 R9 K14 ["SetAlignmentSpace"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K12 ["Actions"]
  GETTABLEKS R9 R10 K15 ["SetEnabledAxes"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K12 ["Actions"]
  GETTABLEKS R10 R11 K16 ["SetRelativeTo"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["AxesSettingsFragment"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K19 ["ModeSetting"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K20 ["LabeledElementList"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K17 ["Components"]
  GETTABLEKS R14 R15 K21 ["RelativeToSetting"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K11 ["Src"]
  GETTABLEKS R16 R17 K22 ["Thunks"]
  GETTABLEKS R15 R16 K23 ["UpdateActiveInstanceHighlight"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K11 ["Src"]
  GETTABLEKS R17 R18 K22 ["Thunks"]
  GETTABLEKS R16 R17 K24 ["UpdateAlignEnabled"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K25 ["PureComponent"]
  LOADK R18 K26 ["AlignmentSettings"]
  NAMECALL R16 R16 K27 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K28 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K29 ["render"]
  MOVE R17 R5
  DUPTABLE R18 K32 [{"Localization", "Stylizer"}]
  GETTABLEKS R19 R4 K30 ["Localization"]
  SETTABLEKS R19 R18 K30 ["Localization"]
  GETTABLEKS R19 R4 K31 ["Stylizer"]
  SETTABLEKS R19 R18 K31 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  DUPCLOSURE R17 K33 [PROTO_1]
  DUPCLOSURE R18 K34 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R14
  GETTABLEKS R19 R2 K35 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1
