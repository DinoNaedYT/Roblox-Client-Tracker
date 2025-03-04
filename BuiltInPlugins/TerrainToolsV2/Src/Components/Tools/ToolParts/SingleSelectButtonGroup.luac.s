PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["IsSelected"]
  JUMPIF R0 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["Select"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Data"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"isHovered"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isHovered"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onMouseEnter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onMouseLeave"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onActivated"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LayoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Width"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["IsLeftmost"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["IsRightmost"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["IsSelected"]
  GETTABLEKS R7 R0 K6 ["state"]
  GETTABLEKS R6 R7 K7 ["isHovered"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["Theme"]
  NAMECALL R7 R7 K9 ["get"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K10 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R8 R9 K11 ["buttonSelectedColor"]
  GETTABLEKS R10 R7 K10 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R9 R10 K12 ["buttonHoveredColor"]
  OR R10 R5 R6
  JUMPIFNOT R5 [+2]
  MOVE R11 R8
  JUMPIF R11 [+1]
  MOVE R11 R9
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K13 ["Text"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K14 ["createElement"]
  LOADK R14 K15 ["ImageButton"]
  NEWTABLE R15 8 0
  GETIMPORT R16 K18 [UDim2.new]
  SUBK R18 R1 K19 [1]
  MUL R17 R18 R2
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K20 ["Position"]
  GETIMPORT R16 K18 [UDim2.new]
  MOVE R17 R2
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Size"]
  LOADB R16 0
  SETTABLEKS R16 R15 K22 ["AutoButtonColor"]
  LOADN R16 1
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K24 ["BorderSizePixel"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K25 ["Event"]
  GETTABLEKS R16 R17 K26 ["Activated"]
  GETTABLEKS R17 R0 K27 ["onActivated"]
  SETTABLE R17 R15 R16
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K25 ["Event"]
  GETTABLEKS R16 R17 K28 ["MouseEnter"]
  GETTABLEKS R17 R0 K29 ["onMouseEnter"]
  SETTABLE R17 R15 R16
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K25 ["Event"]
  GETTABLEKS R16 R17 K30 ["MouseLeave"]
  GETTABLEKS R17 R0 K31 ["onMouseLeave"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K34 [{"BackgroundContents", "Label"}]
  MOVE R17 R10
  JUMPIFNOT R17 [+182]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K35 ["createFragment"]
  DUPTABLE R18 K39 [{"LeftBackground", "RightBackground", "Background"}]
  MOVE R19 R3
  JUMPIFNOT R19 [+51]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K40 ["ImageLabel"]
  DUPTABLE R21 K46 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ImageTransparency", "Image", "ImageColor3", "ScaleType", "SliceCenter"}]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K20 ["Position"]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 0
  LOADN R24 8
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K21 ["Size"]
  LOADN R22 1
  SETTABLEKS R22 R21 K23 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K24 ["BorderSizePixel"]
  LOADN R22 0
  SETTABLEKS R22 R21 K41 ["ImageTransparency"]
  GETTABLEKS R23 R7 K10 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R22 R23 K47 ["roundedBackgroundImage"]
  SETTABLEKS R22 R21 K42 ["Image"]
  SETTABLEKS R11 R21 K43 ["ImageColor3"]
  GETIMPORT R22 K50 [Enum.ScaleType.Slice]
  SETTABLEKS R22 R21 K44 ["ScaleType"]
  GETTABLEKS R23 R7 K10 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R22 R23 K51 ["roundedElementSlice"]
  SETTABLEKS R22 R21 K45 ["SliceCenter"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K36 ["LeftBackground"]
  MOVE R19 R4
  JUMPIFNOT R19 [+58]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K40 ["ImageLabel"]
  DUPTABLE R21 K53 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ImageTransparency", "Image", "ImageColor3", "ScaleType", "SliceCenter"}]
  GETIMPORT R22 K55 [Vector2.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K52 ["AnchorPoint"]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K20 ["Position"]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 0
  LOADN R24 8
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K21 ["Size"]
  LOADN R22 1
  SETTABLEKS R22 R21 K23 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K24 ["BorderSizePixel"]
  LOADN R22 0
  SETTABLEKS R22 R21 K41 ["ImageTransparency"]
  GETTABLEKS R23 R7 K10 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R22 R23 K47 ["roundedBackgroundImage"]
  SETTABLEKS R22 R21 K42 ["Image"]
  SETTABLEKS R11 R21 K43 ["ImageColor3"]
  GETIMPORT R22 K50 [Enum.ScaleType.Slice]
  SETTABLEKS R22 R21 K44 ["ScaleType"]
  GETTABLEKS R23 R7 K10 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R22 R23 K51 ["roundedElementSlice"]
  SETTABLEKS R22 R21 K45 ["SliceCenter"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K37 ["RightBackground"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K56 ["Frame"]
  DUPTABLE R21 K58 [{"Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
  JUMPIFNOT R3 [+8]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 0
  LOADN R24 4
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  JUMPIF R22 [+7]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K20 ["Position"]
  JUMPIFNOT R3 [+9]
  JUMPIFNOT R4 [+8]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 1
  LOADN R24 248
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  JUMPIF R22 [+17]
  JUMPIF R3 [+1]
  JUMPIFNOT R4 [+8]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 1
  LOADN R24 252
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  JUMPIF R22 [+7]
  GETIMPORT R22 K18 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K21 ["Size"]
  SETTABLEKS R11 R21 K57 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K24 ["BorderSizePixel"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K38 ["Background"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K32 ["BackgroundContents"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K14 ["createElement"]
  LOADK R18 K59 ["TextLabel"]
  DUPTABLE R19 K64 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextSize", "Font", "TextColor3", "ZIndex"}]
  GETIMPORT R20 K18 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K21 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K24 ["BorderSizePixel"]
  SETTABLEKS R12 R19 K13 ["Text"]
  GETTABLEKS R20 R7 K65 ["textSize"]
  SETTABLEKS R20 R19 K60 ["TextSize"]
  GETTABLEKS R20 R7 K66 ["font"]
  SETTABLEKS R20 R19 K61 ["Font"]
  GETTABLEKS R20 R7 K67 ["textColor"]
  SETTABLEKS R20 R19 K62 ["TextColor3"]
  LOADN R20 3
  SETTABLEKS R20 R19 K63 ["ZIndex"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Label"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Theme"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["Size"]
  GETTABLEKS R4 R1 K4 ["Options"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  LENGTH R5 R4
  LOADN R7 1
  DIV R6 R7 R5
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K5 ["Selected"]
  GETTABLEKS R9 R2 K6 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R8 R9 K7 ["buttonSelectedColor"]
  NEWTABLE R9 1 0
  GETIMPORT R10 K9 [ipairs]
  MOVE R11 R4
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETTABLEKS R16 R14 K10 ["Data"]
  JUMPIFEQ R16 R7 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMPIFEQKN R13 K11 [1] [+2]
  LOADB R16 0 +1
  LOADB R16 1
  JUMPIFEQ R13 R5 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  GETTABLEKS R19 R14 K10 ["Data"]
  FASTCALL1 TOSTRING R19 [+2]
  GETIMPORT R18 K13 [tostring]
  CALL R18 1 1
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K14 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K22 [{"LayoutOrder", "Width", "IsSelected", "IsLeftmost", "IsRightmost", "Data", "Text", "Select"}]
  SETTABLEKS R13 R21 K15 ["LayoutOrder"]
  SETTABLEKS R6 R21 K16 ["Width"]
  SETTABLEKS R15 R21 K17 ["IsSelected"]
  SETTABLEKS R16 R21 K18 ["IsLeftmost"]
  SETTABLEKS R17 R21 K19 ["IsRightmost"]
  GETTABLEKS R22 R14 K10 ["Data"]
  SETTABLEKS R22 R21 K10 ["Data"]
  GETTABLEKS R22 R14 K20 ["Text"]
  SETTABLEKS R22 R21 K20 ["Text"]
  GETTABLEKS R23 R0 K0 ["props"]
  GETTABLEKS R22 R23 K21 ["Select"]
  SETTABLEKS R22 R21 K21 ["Select"]
  CALL R19 2 1
  SETTABLE R19 R9 R18
  FORGLOOP R10 2 [inext] [-52]
  LOADN R12 1
  SUBK R10 R5 K11 [1]
  LOADN R11 1
  FORNPREP R10
  LOADK R14 K23 ["Divider"]
  MOVE R15 R12
  CONCAT R13 R14 R15
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K14 ["createElement"]
  LOADK R15 K24 ["Frame"]
  DUPTABLE R16 K30 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "ZIndex"}]
  GETIMPORT R17 K33 [Vector2.new]
  LOADK R18 K34 [0.5]
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["AnchorPoint"]
  GETIMPORT R17 K36 [UDim2.new]
  MUL R18 R12 R6
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K26 ["Position"]
  GETIMPORT R17 K36 [UDim2.new]
  LOADN R18 0
  LOADN R19 1
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K3 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K27 ["BorderSizePixel"]
  GETTABLEKS R17 R2 K37 ["borderColor"]
  SETTABLEKS R17 R16 K28 ["BackgroundColor3"]
  LOADN R17 2
  SETTABLEKS R17 R16 K29 ["ZIndex"]
  CALL R14 2 1
  SETTABLE R14 R9 R13
  FORNLOOP R10
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  LOADK R11 K38 ["ImageLabel"]
  DUPTABLE R12 K45 [{"Size", "BackgroundTransparency", "Image", "ImageTransparency", "ImageColor3", "ScaleType", "SliceCenter", "ZIndex"}]
  GETIMPORT R13 K36 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K3 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K6 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R13 R14 K46 ["roundedBorderImage"]
  SETTABLEKS R13 R12 K40 ["Image"]
  LOADN R13 0
  SETTABLEKS R13 R12 K41 ["ImageTransparency"]
  GETTABLEKS R13 R2 K37 ["borderColor"]
  SETTABLEKS R13 R12 K42 ["ImageColor3"]
  GETIMPORT R13 K49 [Enum.ScaleType.Slice]
  SETTABLEKS R13 R12 K43 ["ScaleType"]
  GETTABLEKS R14 R2 K6 ["singleSelectButtonGroupTheme"]
  GETTABLEKS R13 R14 K50 ["roundedElementSlice"]
  SETTABLEKS R13 R12 K44 ["SliceCenter"]
  LOADN R13 3
  SETTABLEKS R13 R12 K29 ["ZIndex"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K51 ["Border"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  LOADK R11 K24 ["Frame"]
  DUPTABLE R12 K52 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency"}]
  GETTABLEKS R13 R1 K25 ["AnchorPoint"]
  SETTABLEKS R13 R12 K25 ["AnchorPoint"]
  GETTABLEKS R13 R1 K26 ["Position"]
  SETTABLEKS R13 R12 K26 ["Position"]
  SETTABLEKS R3 R12 K3 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["ContextItems"]
  CALL R5 1 1
  LOADNIL R6
  GETTABLEKS R7 R2 K12 ["PureComponent"]
  LOADK R9 K13 ["SingleSelectButton"]
  NAMECALL R7 R7 K14 ["extend"]
  CALL R7 2 1
  MOVE R6 R7
  DUPCLOSURE R7 K15 [PROTO_3]
  SETTABLEKS R7 R6 K16 ["init"]
  DUPCLOSURE R7 K17 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K18 ["render"]
  MOVE R7 R4
  DUPTABLE R8 K20 [{"Theme"}]
  GETTABLEKS R9 R5 K21 ["DEPRECATED_Theme"]
  SETTABLEKS R9 R8 K19 ["Theme"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  GETTABLEKS R7 R2 K12 ["PureComponent"]
  LOADK R9 K22 ["SingleSelectButtonGroup"]
  NAMECALL R7 R7 K14 ["extend"]
  CALL R7 2 1
  NEWCLOSURE R8 P2
  CAPTURE VAL R2
  CAPTURE REF R6
  SETTABLEKS R8 R7 K18 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K20 [{"Theme"}]
  GETTABLEKS R10 R5 K21 ["DEPRECATED_Theme"]
  SETTABLEKS R10 R9 K19 ["Theme"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  CLOSEUPVALS R6
  RETURN R7 1
