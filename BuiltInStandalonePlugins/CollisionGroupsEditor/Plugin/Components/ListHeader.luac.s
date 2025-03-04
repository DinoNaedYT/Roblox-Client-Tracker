PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["ListHeader"]
  LOADNIL R4
  GETTABLEKS R5 R1 K4 ["SelectedGroupName"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["CursorGroupName"]
  JUMPIFEQ R5 R6 [+3]
  JUMPIFNOTEQKS R5 K6 [""] [+3]
  LOADK R4 K6 [""]
  JUMP [+11]
  LOADK R8 K7 ["Info"]
  LOADK R9 K8 ["CanCollideWith"]
  NEWTABLE R10 0 1
  MOVE R11 R5
  SETLIST R10 R11 1 [1]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 4 1
  MOVE R4 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K15 [{"Size", "LayoutOrder", "Layout", "Padding"}]
  GETIMPORT R9 K18 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K19 ["GroupRowHeight"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  GETTABLEKS R9 R1 K12 ["LayoutOrder"]
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETIMPORT R9 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K13 ["Layout"]
  GETTABLEKS R9 R3 K14 ["Padding"]
  SETTABLEKS R9 R8 K14 ["Padding"]
  DUPTABLE R9 K26 [{"GroupCountDisplay", "LabelPane"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K28 [{"GroupCount", "LayoutOrder"}]
  GETTABLEKS R13 R1 K27 ["GroupCount"]
  SETTABLEKS R13 R12 K27 ["GroupCount"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["GroupCountDisplay"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K30 [{"Style", "Size", "LayoutOrder", "Layout", "Padding"}]
  LOADK R13 K31 ["GroupLabel"]
  SETTABLEKS R13 R12 K29 ["Style"]
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K32 ["GroupRowWidth"]
  MINUS R15 R16
  LOADN R16 0
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K19 ["GroupRowHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K12 ["LayoutOrder"]
  GETIMPORT R13 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K13 ["Layout"]
  GETTABLEKS R13 R3 K33 ["LabelPanePadding"]
  SETTABLEKS R13 R12 K14 ["Padding"]
  DUPTABLE R13 K35 [{"TextLabel"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K39 [{"Size", "Text", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R17 K18 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  SETTABLEKS R4 R16 K36 ["Text"]
  GETIMPORT R17 K41 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K37 ["TextXAlignment"]
  GETIMPORT R17 K43 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K38 ["TextYAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["TextLabel"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K25 ["LabelPane"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R3 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["Pane"]
  GETTABLEKS R7 R5 K15 ["TextLabel"]
  GETIMPORT R8 K8 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K6 ["Parent"]
  GETTABLEKS R9 R10 K16 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K17 ["GroupCountDisplay"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K18 ["Component"]
  LOADK R12 K19 ["ListHeader"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K22 ["render"]
  GETTABLEKS R11 R4 K23 ["withContext"]
  DUPTABLE R12 K26 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R4 K24 ["Stylizer"]
  SETTABLEKS R13 R12 K24 ["Stylizer"]
  GETTABLEKS R13 R4 K25 ["Localization"]
  SETTABLEKS R13 R12 K25 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
