PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"currentContent"}]
  SETTABLEKS R0 R3 K0 ["currentContent"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["TextChangeCallBack"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K0 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["onTextChanged"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Title"]
  GETTABLEKS R5 R1 K4 ["TotalHeight"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["MaxCount"]
  GETTABLEKS R9 R1 K8 ["TextContent"]
  ORK R8 R9 K7 [""]
  GETTABLEKS R10 R2 K9 ["currentContent"]
  OR R9 R10 R8
  GETTABLEKS R10 R3 K10 ["publishAsset"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["createElement"]
  LOADK R12 K12 ["Frame"]
  DUPTABLE R13 K16 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  MOVE R18 R5
  CALL R14 4 1
  SETTABLEKS R14 R13 K13 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K14 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K15 ["BorderSizePixel"]
  SETTABLEKS R6 R13 K5 ["LayoutOrder"]
  DUPTABLE R14 K22 [{"UIListLayout", "Title", "TextField"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K20 ["UIListLayout"]
  DUPTABLE R17 K28 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R18 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K23 ["FillDirection"]
  GETIMPORT R18 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K24 ["HorizontalAlignment"]
  GETIMPORT R18 K35 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K25 ["VerticalAlignment"]
  GETIMPORT R18 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K26 ["SortOrder"]
  GETIMPORT R18 K38 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["UIListLayout"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K39 ["TextLabel"]
  DUPTABLE R17 K46 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
  GETIMPORT R18 K19 [UDim2.new]
  LOADN R19 0
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K47 ["TITLE_GUTTER_WIDTH"]
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K14 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K15 ["BorderSizePixel"]
  SETTABLEKS R4 R17 K40 ["Text"]
  GETIMPORT R18 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K41 ["TextXAlignment"]
  GETIMPORT R18 K49 [Enum.TextYAlignment.Top]
  SETTABLEKS R18 R17 K42 ["TextYAlignment"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K50 ["FONT_SIZE_TITLE"]
  SETTABLEKS R18 R17 K43 ["TextSize"]
  GETTABLEKS R18 R10 K51 ["titleTextColor"]
  SETTABLEKS R18 R17 K44 ["TextColor3"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K52 ["FONT"]
  SETTABLEKS R18 R17 K45 ["Font"]
  LOADN R18 1
  SETTABLEKS R18 R17 K5 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K3 ["Title"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K56 [{"LayoutOrder", "MaxLength", "MultiLine", "OnTextChanged", "Text", "Size"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K5 ["LayoutOrder"]
  SETTABLEKS R7 R17 K53 ["MaxLength"]
  LOADN R19 50
  JUMPIFLT R19 R7 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  SETTABLEKS R18 R17 K54 ["MultiLine"]
  GETTABLEKS R18 R0 K57 ["onTextChanged"]
  SETTABLEKS R18 R17 K55 ["OnTextChanged"]
  SETTABLEKS R9 R17 K40 ["Text"]
  GETIMPORT R18 K19 [UDim2.new]
  LOADN R19 1
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K47 ["TITLE_GUTTER_WIDTH"]
  MINUS R20 R21
  LOADN R21 0
  SUBK R23 R5 K59 [40]
  SUBK R22 R23 K58 [20]
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["TextField"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETTABLEKS R6 R3 K10 ["UI"]
  GETTABLEKS R7 R6 K11 ["TextInput"]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K14 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K15 ["PureComponent"]
  LOADK R12 K16 ["ConfigTextField"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_1]
  SETTABLEKS R11 R10 K19 ["init"]
  DUPCLOSURE R11 K20 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K21 ["render"]
  MOVE R11 R5
  DUPTABLE R12 K23 [{"Stylizer"}]
  GETTABLEKS R13 R4 K22 ["Stylizer"]
  SETTABLEKS R13 R12 K22 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
