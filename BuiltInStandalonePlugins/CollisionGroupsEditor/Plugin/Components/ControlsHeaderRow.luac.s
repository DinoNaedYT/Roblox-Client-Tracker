PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"editing"}]
  SETTABLEKS R0 R3 K0 ["editing"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["textButtonPaneRef"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K3 ["X"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ControlsHeaderButtonWidth"]
  MULK R3 R4 K4 [2]
  JUMPIFNOTLT R2 R3 [+9]
  DUPTABLE R3 K7 [{"buttonSize"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["ControlsHeaderButtonWidth"]
  SUB R4 R2 R5
  SETTABLEKS R4 R3 K6 ["buttonSize"]
  RETURN R3 1
  DUPTABLE R3 K7 [{"buttonSize"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ControlsHeaderButtonWidth"]
  SETTABLEKS R4 R3 K6 ["buttonSize"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textButtonPaneRef"]
  DUPTABLE R1 K4 [{"editing", "buttonSize"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["editing"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["ControlsHeaderButtonWidth"]
  SETTABLEKS R2 R1 K3 ["buttonSize"]
  SETTABLEKS R1 R0 K6 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onEditingChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K8 ["updateButtonFlexSize"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["ControlsHeaderRow"]
  LOADB R4 1
  LOADB R5 1
  GETTABLEKS R6 R1 K4 ["Groups"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K5 ["UISelected"]
  JUMPIFNOT R11 [+16]
  GETTABLEKS R11 R10 K6 ["Name"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["CursorGroupName"]
  JUMPIFNOTEQ R11 R12 [+3]
  LOADB R5 0
  JUMP [+9]
  GETTABLEKS R11 R10 K6 ["Name"]
  JUMPIFNOTEQKS R11 K8 ["Default"] [+6]
  LOADB R4 0
  LOADB R5 0
  JUMP [+2]
  FORGLOOP R6 2 [-20]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K15 [{"Size", "Padding", "Spacing", "LayoutOrder", "Layout"}]
  GETTABLEKS R9 R3 K10 ["Size"]
  SETTABLEKS R9 R8 K10 ["Size"]
  GETTABLEKS R9 R3 K11 ["Padding"]
  SETTABLEKS R9 R8 K11 ["Padding"]
  GETTABLEKS R9 R3 K12 ["Spacing"]
  SETTABLEKS R9 R8 K12 ["Spacing"]
  GETTABLEKS R9 R1 K13 ["LayoutOrder"]
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETIMPORT R9 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K14 ["Layout"]
  DUPTABLE R9 K22 [{"TextButtonPane", "GroupButtonsPane"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["createElement"]
  LOADK R11 K23 ["Frame"]
  NEWTABLE R12 8 0
  GETTABLEKS R14 R3 K20 ["TextButtonPane"]
  GETTABLEKS R13 R14 K10 ["Size"]
  SETTABLEKS R13 R12 K10 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K24 ["BackgroundTransparency"]
  LOADN R13 1
  SETTABLEKS R13 R12 K13 ["LayoutOrder"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K25 ["Change"]
  GETTABLEKS R13 R14 K26 ["AbsoluteSize"]
  GETTABLEKS R14 R0 K27 ["updateButtonFlexSize"]
  SETTABLE R14 R12 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K28 ["Ref"]
  GETTABLEKS R14 R0 K29 ["textButtonPaneRef"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K32 [{"Layout", "ToggleViewButton", "AddGroupButton"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K33 ["UIListLayout"]
  DUPTABLE R16 K35 [{"SortOrder", "FillDirection"}]
  GETIMPORT R17 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K34 ["SortOrder"]
  GETIMPORT R17 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K17 ["FillDirection"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Layout"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K38 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R17 K41 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R20 R0 K42 ["state"]
  GETTABLEKS R19 R20 K43 ["buttonSize"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K10 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  GETIMPORT R17 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K14 ["Layout"]
  GETIMPORT R17 K45 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K37 ["HorizontalAlignment"]
  DUPTABLE R17 K47 [{"Button"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K51 [{"Style", "Text", "Size", "OnClick"}]
  LOADK R21 K52 ["Round"]
  SETTABLEKS R21 R20 K48 ["Style"]
  GETTABLEKS R22 R1 K53 ["ToggleListView"]
  JUMPIFNOT R22 [+6]
  LOADK R23 K54 ["Actions"]
  LOADK R24 K55 ["TableView"]
  NAMECALL R21 R2 K56 ["getText"]
  CALL R21 3 1
  JUMP [+5]
  LOADK R23 K54 ["Actions"]
  LOADK R24 K57 ["ListView"]
  NAMECALL R21 R2 K56 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K49 ["Text"]
  GETIMPORT R21 K59 [UDim2.fromOffset]
  GETTABLEKS R23 R0 K42 ["state"]
  GETTABLEKS R22 R23 K43 ["buttonSize"]
  GETTABLEKS R23 R3 K60 ["ButtonHeight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K10 ["Size"]
  GETTABLEKS R21 R1 K61 ["OnViewModeToggled"]
  SETTABLEKS R21 R20 K50 ["OnClick"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["Button"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["ToggleViewButton"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K38 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R17 K41 [UDim2.new]
  LOADN R18 1
  GETTABLEKS R21 R0 K42 ["state"]
  GETTABLEKS R20 R21 K43 ["buttonSize"]
  MINUS R19 R20
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K10 ["Size"]
  LOADN R17 2
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  GETIMPORT R17 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K14 ["Layout"]
  GETIMPORT R17 K45 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K37 ["HorizontalAlignment"]
  DUPTABLE R17 K47 [{"Button"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K64 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
  GETTABLEKS R21 R1 K4 ["Groups"]
  SETTABLEKS R21 R20 K4 ["Groups"]
  GETTABLEKS R21 R1 K62 ["OnGroupAdded"]
  SETTABLEKS R21 R20 K62 ["OnGroupAdded"]
  GETTABLEKS R21 R0 K65 ["onEditingChanged"]
  SETTABLEKS R21 R20 K63 ["OnEditingChanged"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["Button"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K31 ["AddGroupButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["TextButtonPane"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K38 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETTABLEKS R13 R3 K66 ["GroupButtonsPaneSize"]
  SETTABLEKS R13 R12 K10 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K13 ["LayoutOrder"]
  GETIMPORT R13 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K14 ["Layout"]
  GETIMPORT R13 K68 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R13 R12 K37 ["HorizontalAlignment"]
  DUPTABLE R13 K71 [{"RenameButton", "DeleteButton"}]
  JUMPIFNOT R4 [+26]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K73 [{"Style", "OnClick", "TooltipMessage", "LayoutOrder"}]
  LOADK R17 K74 ["Rename"]
  SETTABLEKS R17 R16 K48 ["Style"]
  GETTABLEKS R17 R1 K75 ["OnGroupRenamed"]
  SETTABLEKS R17 R16 K50 ["OnClick"]
  GETTABLEKS R17 R1 K1 ["Localization"]
  LOADK R19 K76 ["Tooltip"]
  LOADK R20 K74 ["Rename"]
  NAMECALL R17 R17 K56 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K72 ["TooltipMessage"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K69 ["RenameButton"]
  JUMPIFNOT R5 [+26]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K73 [{"Style", "OnClick", "TooltipMessage", "LayoutOrder"}]
  LOADK R17 K77 ["Delete"]
  SETTABLEKS R17 R16 K48 ["Style"]
  GETTABLEKS R17 R1 K78 ["OnGroupDeleted"]
  SETTABLEKS R17 R16 K50 ["OnClick"]
  GETTABLEKS R17 R1 K1 ["Localization"]
  LOADK R19 K76 ["Tooltip"]
  LOADK R20 K77 ["Delete"]
  NAMECALL R17 R17 K56 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K72 ["TooltipMessage"]
  LOADN R17 2
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K70 ["DeleteButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["GroupButtonsPane"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K13 ["AddGroup"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K14 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K15 ["GroupButton"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K16 ["Component"]
  LOADK R13 K17 ["ControlsHeaderRow"]
  NAMECALL R11 R11 K18 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K19 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K20 ["init"]
  DUPCLOSURE R12 K21 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K22 ["render"]
  GETTABLEKS R12 R3 K23 ["withContext"]
  DUPTABLE R13 K25 [{"Stylizer", "Localization"}]
  GETTABLEKS R14 R3 K24 ["Stylizer"]
  SETTABLEKS R14 R13 K24 ["Stylizer"]
  SETTABLEKS R4 R13 K9 ["Localization"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
