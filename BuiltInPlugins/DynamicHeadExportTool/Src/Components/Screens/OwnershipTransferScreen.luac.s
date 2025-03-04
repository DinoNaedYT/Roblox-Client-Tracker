PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["close"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K6 [{"BackgroundColor3", "Size"}]
  GETTABLEKS R7 R1 K7 ["Stylizer"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["MainBackground"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K4 ["BackgroundColor3"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K5 ["Size"]
  DUPTABLE R6 K15 [{"UIPadding", "Content", "Button"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K12 ["UIPadding"]
  DUPTABLE R9 K20 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R10 K22 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K23 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["PaddingBottom"]
  GETIMPORT R10 K22 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K23 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["PaddingLeft"]
  GETIMPORT R10 K22 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K23 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["PaddingRight"]
  GETIMPORT R10 K22 [UDim.new]
  LOADN R11 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K23 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["PaddingTop"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["UIPadding"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K3 ["Frame"]
  DUPTABLE R9 K25 [{"BackgroundTransparency", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K24 ["BackgroundTransparency"]
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R16 30
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K23 ["Padding"]
  ADD R15 R16 R17
  MINUS R14 R15
  CALL R10 4 1
  SETTABLEKS R10 R9 K5 ["Size"]
  DUPTABLE R10 K29 [{"UIListLayout", "TextLabel", "MultiLineTextInput"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K26 ["UIListLayout"]
  DUPTABLE R13 K32 [{"SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K30 ["SortOrder"]
  GETIMPORT R14 K37 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K31 ["VerticalAlignment"]
  GETIMPORT R14 K22 [UDim.new]
  LOADN R15 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K23 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["UIListLayout"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K42 [{"LayoutOrder", "Text", "Style", "Size", "Position", "BackgroundTransparency", "TextXAlignment"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K34 ["LayoutOrder"]
  LOADK R16 K43 ["Plugin"]
  LOADK R17 K44 ["OwnershipTransferAssetIds"]
  NAMECALL R14 R2 K45 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["Text"]
  LOADK R14 K46 ["Title"]
  SETTABLEKS R14 R13 K39 ["Style"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 20
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Size"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K40 ["Position"]
  LOADN R14 1
  SETTABLEKS R14 R13 K24 ["BackgroundTransparency"]
  GETIMPORT R14 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K41 ["TextXAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["TextLabel"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K50 [{"LayoutOrder", "TextInputProps", "Style", "Size", "Position"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K34 ["LayoutOrder"]
  DUPTABLE R14 K52 [{"Text", "Enabled"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K53 ["ownershipTransferText"]
  SETTABLEKS R15 R14 K38 ["Text"]
  LOADB R15 0
  SETTABLEKS R15 R14 K51 ["Enabled"]
  SETTABLEKS R14 R13 K49 ["TextInputProps"]
  LOADK R14 K54 ["FilledRoundedBorder"]
  SETTABLEKS R14 R13 K39 ["Style"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R20 20
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K23 ["Padding"]
  ADD R19 R20 R21
  MINUS R18 R19
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Size"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K40 ["Position"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["MultiLineTextInput"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K13 ["Content"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K57 [{"Text", "Style", "TextSize", "Size", "Position", "OnClick"}]
  LOADK R12 K43 ["Plugin"]
  LOADK R13 K58 ["CloseButton"]
  NAMECALL R10 R2 K45 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K38 ["Text"]
  LOADK R10 K59 ["Round"]
  SETTABLEKS R10 R9 K39 ["Style"]
  LOADN R10 24
  SETTABLEKS R10 R9 K55 ["TextSize"]
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 30
  CALL R10 4 1
  SETTABLEKS R10 R9 K5 ["Size"]
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  LOADN R14 226
  CALL R10 4 1
  SETTABLEKS R10 R9 K40 ["Position"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K56 ["OnClick"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Button"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  DUPTABLE R2 K1 [{"ownershipTransferText"}]
  GETTABLEKS R4 R0 K2 ["PluginReducer"]
  GETTABLEKS R3 R4 K0 ["ownershipTransferText"]
  SETTABLEKS R3 R2 K0 ["ownershipTransferText"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"close"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["close"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DynamicHeadExportTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R3 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Button"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETTABLEKS R9 R3 K11 ["UI"]
  GETTABLEKS R8 R9 K14 ["MultiLineTextInput"]
  GETTABLEKS R10 R3 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["StyleKey"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Actions"]
  GETTABLEKS R11 R12 K19 ["SetEnabled"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K20 ["Constants"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K21 ["PureComponent"]
  LOADK R14 K22 ["OwnershipTransferScreen"]
  NAMECALL R12 R12 K23 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K25 ["render"]
  GETTABLEKS R13 R4 K26 ["withContext"]
  DUPTABLE R14 K30 [{"Localization", "Stylizer", "Plugin"}]
  GETTABLEKS R15 R4 K27 ["Localization"]
  SETTABLEKS R15 R14 K27 ["Localization"]
  GETTABLEKS R15 R4 K28 ["Stylizer"]
  SETTABLEKS R15 R14 K28 ["Stylizer"]
  GETTABLEKS R15 R4 K29 ["Plugin"]
  SETTABLEKS R15 R14 K29 ["Plugin"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  DUPCLOSURE R13 K31 [PROTO_2]
  DUPCLOSURE R14 K32 [PROTO_4]
  CAPTURE VAL R10
  GETTABLEKS R15 R2 K33 ["connect"]
  MOVE R16 R13
  MOVE R17 R14
  CALL R15 2 1
  MOVE R16 R12
  CALL R15 1 -1
  RETURN R15 -1
