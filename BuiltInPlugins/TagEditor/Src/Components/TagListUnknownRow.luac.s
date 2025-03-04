PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  LOADB R1 0
  GETTABLEKS R2 R0 K1 ["assigningGroup"]
  JUMPIFEQKNIL R2 [+7]
  GETTABLEKS R2 R0 K1 ["assigningGroup"]
  JUMPIFNOTEQKS R2 K2 [""] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Get"]
  CALL R2 0 1
  GETTABLEKS R4 R0 K4 ["TagName"]
  NAMECALL R2 R2 K5 ["AddTag"]
  CALL R2 2 0
  JUMPIFNOT R1 [+11]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Get"]
  CALL R2 0 1
  GETTABLEKS R4 R0 K4 ["TagName"]
  GETTABLEKS R5 R0 K1 ["assigningGroup"]
  NAMECALL R2 R2 K6 ["SetGroup"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onRegister"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["TagListUnknownRow"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing", "Padding"}]
  GETTABLEKS R8 R1 K6 ["LayoutOrder"]
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  GETTABLEKS R8 R3 K7 ["Size"]
  SETTABLEKS R8 R7 K7 ["Size"]
  GETIMPORT R8 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K8 ["Layout"]
  GETIMPORT R8 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K9 ["HorizontalAlignment"]
  GETTABLEKS R8 R3 K10 ["Spacing"]
  SETTABLEKS R8 R7 K10 ["Spacing"]
  GETTABLEKS R8 R3 K19 ["PaddingIndented"]
  SETTABLEKS R8 R7 K11 ["Padding"]
  DUPTABLE R8 K22 [{"CheckboxPane", "NameText"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K23 [{"LayoutOrder", "Size"}]
  NAMECALL R12 R4 K24 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  GETTABLEKS R12 R3 K25 ["CheckboxSize"]
  SETTABLEKS R12 R11 K7 ["Size"]
  DUPTABLE R12 K28 [{"RegisterGroupButton", "HoverArea"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K34 [{"BackgroundStyle", "LeftIcon", "OnClick", "IconColor", "TooltipText"}]
  LOADK R16 K35 ["None"]
  SETTABLEKS R16 R15 K29 ["BackgroundStyle"]
  GETTABLEKS R16 R3 K36 ["AssignIcon"]
  SETTABLEKS R16 R15 K30 ["LeftIcon"]
  GETTABLEKS R16 R0 K37 ["onRegister"]
  SETTABLEKS R16 R15 K31 ["OnClick"]
  GETTABLEKS R16 R3 K38 ["AssignIconColor"]
  SETTABLEKS R16 R15 K32 ["IconColor"]
  LOADK R18 K39 ["Tooltip"]
  LOADK R19 K40 ["RegisterTag"]
  NAMECALL R16 R2 K41 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K33 ["TooltipText"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["RegisterGroupButton"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K43 [{"Cursor"}]
  LOADK R16 K44 ["PointingHand"]
  SETTABLEKS R16 R15 K42 ["Cursor"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["HoverArea"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K20 ["CheckboxPane"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K47 [{"LayoutOrder", "Text", "Size", "TextXAlignment"}]
  NAMECALL R12 R4 K24 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  GETTABLEKS R12 R1 K48 ["TagName"]
  SETTABLEKS R12 R11 K45 ["Text"]
  GETTABLEKS R12 R3 K49 ["TextSize"]
  SETTABLEKS R12 R11 K7 ["Size"]
  GETIMPORT R12 K50 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K46 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["NameText"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_3:
  DUPTABLE R2 K1 [{"assigningGroup"}]
  GETTABLEKS R3 R0 K2 ["AssigningGroup"]
  SETTABLEKS R3 R2 K0 ["assigningGroup"]
  RETURN R2 1

PROTO_4:
  NEWTABLE R1 0 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R4 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Stylizer"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K5 ["Src"]
  GETTABLEKS R11 R12 K17 ["TagManager"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K18 ["UI"]
  GETTABLEKS R12 R11 K19 ["HoverArea"]
  GETTABLEKS R13 R11 K20 ["IconButton"]
  GETTABLEKS R14 R11 K21 ["Pane"]
  GETTABLEKS R15 R11 K22 ["TextLabel"]
  GETTABLEKS R16 R4 K23 ["Util"]
  GETTABLEKS R17 R16 K24 ["LayoutOrderIterator"]
  GETTABLEKS R18 R2 K25 ["PureComponent"]
  LOADK R20 K26 ["TagListUnknownRow"]
  NAMECALL R18 R18 K27 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K28 [PROTO_1]
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K29 ["init"]
  DUPCLOSURE R19 K30 [PROTO_2]
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K31 ["render"]
  MOVE R19 R6
  DUPTABLE R20 K32 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R20 K13 ["Analytics"]
  SETTABLEKS R8 R20 K14 ["Localization"]
  SETTABLEKS R9 R20 K16 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  DUPCLOSURE R19 K33 [PROTO_3]
  DUPCLOSURE R20 K34 [PROTO_4]
  GETTABLEKS R21 R3 K35 ["connect"]
  MOVE R22 R19
  MOVE R23 R20
  CALL R21 2 1
  MOVE R22 R18
  CALL R21 1 -1
  RETURN R21 -1
