PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnToggle"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnToggle"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnToggleAdornment"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnToggleAdornment"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Item"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onToggle"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onToggleAdornment"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["toggleRef"]
  GETIMPORT R1 K6 [TweenInfo.new]
  LOADK R2 K7 [0.1]
  GETIMPORT R3 K11 [Enum.EasingStyle.Linear]
  CALL R1 2 1
  SETTABLEKS R1 R0 K12 ["tweenInfo"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETUPVAL R4 0
  MOVE R5 R1
  CALL R4 1 1
  GETTABLEKS R6 R1 K1 ["weight"]
  JUMPIFNOT R6 [+13]
  GETIMPORT R5 K4 [string.format]
  LOADK R6 K5 ["%d%%"]
  GETTABLEKS R10 R1 K1 ["weight"]
  MULK R9 R10 K7 [100]
  ADDK R8 R9 K6 [0.5]
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K10 [math.floor]
  CALL R7 1 1
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  GETTABLEKS R7 R3 K11 ["Adornments"]
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R3 K11 ["Adornments"]
  GETTABLEKS R8 R3 K12 ["GetItemId"]
  MOVE R9 R1
  CALL R8 1 1
  GETTABLE R6 R7 R8
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETTABLEKS R8 R1 K13 ["className"]
  GETTABLE R7 R2 R8
  JUMPIF R7 [+2]
  GETTABLEKS R7 R2 K14 ["Default"]
  MOVE R8 R4
  MOVE R9 R5
  MOVE R10 R6
  RETURN R7 4

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Index"]
  GETTABLEKS R4 R1 K3 ["Item"]
  GETTABLEKS R6 R1 K5 ["Depth"]
  ORK R5 R6 K4 [0]
  GETTABLEKS R6 R1 K6 ["Children"]
  JUMPIFNOT R6 [+8]
  GETTABLEKS R8 R1 K6 ["Children"]
  LENGTH R7 R8
  LOADN R8 0
  JUMPIFLT R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R7 R1 K7 ["Expanded"]
  GETTABLEKS R9 R2 K8 ["Arrow"]
  GETTABLEKS R8 R9 K9 ["Size"]
  GETTABLEKS R9 R1 K10 ["TailItem"]
  GETTABLEKS R10 R1 K11 ["BeforeIndentItem"]
  GETTABLEKS R11 R1 K12 ["ExpandableRoot"]
  GETTABLEKS R12 R1 K9 ["Size"]
  JUMPIF R12 [+8]
  GETIMPORT R12 K15 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K16 ["RowHeight"]
  CALL R12 4 1
  GETTABLEKS R13 R1 K17 ["Position"]
  MOVE R16 R4
  GETTABLEKS R17 R2 K18 ["Icons"]
  NAMECALL R14 R0 K19 ["getContents"]
  CALL R14 3 4
  GETTABLEKS R18 R17 K20 ["enabled"]
  GETTABLEKS R19 R17 K21 ["color"]
  LOADB R20 1
  JUMPIFNOTEQKN R5 K4 [0] [+2]
  MOVE R20 R11
  JUMPIF R11 [+2]
  LOADN R22 1
  JUMP [+1]
  LOADN R22 0
  SUB R21 R5 R22
  GETTABLEKS R23 R2 K22 ["Indent"]
  MUL R22 R21 R23
  GETTABLEKS R23 R2 K23 ["Padding"]
  GETTABLEKS R24 R2 K24 ["Filter"]
  GETTABLEKS R25 R2 K25 ["Detach"]
  GETIMPORT R26 K15 [UDim2.new]
  LOADN R27 0
  GETTABLEKS R29 R2 K26 ["ColumnWidths"]
  GETTABLEKS R28 R29 K27 ["Weight"]
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  GETIMPORT R27 K15 [UDim2.new]
  LOADN R28 0
  GETTABLEKS R30 R2 K26 ["ColumnWidths"]
  GETTABLEKS R29 R30 K28 ["Timestamp"]
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  GETTABLEKS R28 R4 K29 ["state"]
  JUMPIFNOT R28 [+9]
  GETTABLEKS R29 R4 K29 ["state"]
  GETTABLEKS R28 R29 K30 ["timePositionNormalized"]
  JUMPIFNOT R28 [+4]
  GETTABLEKS R29 R4 K29 ["state"]
  GETTABLEKS R28 R29 K31 ["length"]
  LOADNIL R29
  JUMPIFNOTEQKN R5 K4 [0] [+16]
  GETUPVAL R30 0
  NAMECALL R30 R30 K32 ["IsServer"]
  CALL R30 1 1
  JUMPIFNOT R30 [+5]
  GETTABLEKS R30 R2 K33 ["Colors"]
  GETTABLEKS R29 R30 K34 ["Server"]
  JUMP [+22]
  GETTABLEKS R30 R2 K33 ["Colors"]
  GETTABLEKS R29 R30 K35 ["Client"]
  JUMP [+17]
  GETTABLEKS R30 R1 K36 ["Selected"]
  JUMPIFNOT R30 [+3]
  GETTABLEKS R29 R2 K37 ["ActiveLayer"]
  JUMP [+11]
  GETTABLEKS R30 R2 K38 ["InactiveLayer"]
  GETTABLEKS R32 R2 K37 ["ActiveLayer"]
  GETTABLEKS R34 R4 K40 ["weight"]
  ORK R33 R34 K39 [1]
  NAMECALL R30 R30 K41 ["Lerp"]
  CALL R30 3 1
  MOVE R29 R30
  GETTABLEKS R31 R2 K42 ["TimeBar"]
  GETTABLEKS R30 R31 K43 ["Inactive"]
  GETTABLEKS R33 R2 K42 ["TimeBar"]
  GETTABLEKS R32 R33 K44 ["Active"]
  GETTABLEKS R34 R4 K40 ["weight"]
  ORK R33 R34 K39 [1]
  NAMECALL R30 R30 K41 ["Lerp"]
  CALL R30 3 1
  JUMPIFNOTEQKN R5 K4 [0] [+6]
  GETTABLEKS R32 R2 K45 ["Font"]
  GETTABLEKS R31 R32 K46 ["TopLayer"]
  JUMP [+4]
  GETTABLEKS R32 R2 K45 ["Font"]
  GETTABLEKS R31 R32 K47 ["RegularLayer"]
  GETIMPORT R32 K15 [UDim2.new]
  LOADN R33 0
  MOVE R34 R8
  LOADN R35 0
  GETTABLEKS R37 R12 K48 ["Y"]
  GETTABLEKS R36 R37 K49 ["Offset"]
  CALL R32 4 1
  DUPTABLE R33 K55 [{"Spacer", "Toggle", "LeftIcon", "Name", "Weight", "Timestamp", "Adornment"}]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 2
  DUPTABLE R36 K58 [{"LayoutOrder", "Size"}]
  LOADN R37 2
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  GETIMPORT R37 K15 [UDim2.new]
  LOADN R38 0
  MOVE R39 R22
  LOADN R40 0
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K9 ["Size"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K50 ["Spacer"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 2
  DUPTABLE R36 K60 [{"LayoutOrder", "Size", "OnPress"}]
  LOADN R37 4
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  SETTABLEKS R32 R36 K9 ["Size"]
  JUMPIFNOT R20 [+4]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R37 R0 K61 ["onToggle"]
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K59 ["OnPress"]
  DUPTABLE R37 K63 [{"Button"}]
  JUMPIFNOT R20 [+75]
  JUMPIFNOT R6 [+74]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K56 ["createElement"]
  LOADK R39 K64 ["ImageButton"]
  NEWTABLE R40 16 0
  LOADN R41 4
  SETTABLEKS R41 R40 K57 ["LayoutOrder"]
  GETIMPORT R41 K66 [UDim2.fromOffset]
  MOVE R42 R8
  MOVE R43 R8
  CALL R41 2 1
  SETTABLEKS R41 R40 K9 ["Size"]
  GETIMPORT R41 K68 [UDim2.fromScale]
  LOADK R42 K69 [0.5]
  LOADK R43 K69 [0.5]
  CALL R41 2 1
  SETTABLEKS R41 R40 K17 ["Position"]
  GETIMPORT R41 K71 [Vector2.new]
  LOADK R42 K69 [0.5]
  LOADK R43 K69 [0.5]
  CALL R41 2 1
  SETTABLEKS R41 R40 K72 ["AnchorPoint"]
  LOADN R41 1
  SETTABLEKS R41 R40 K73 ["BackgroundTransparency"]
  GETTABLEKS R42 R2 K8 ["Arrow"]
  GETTABLEKS R41 R42 K74 ["Image"]
  SETTABLEKS R41 R40 K74 ["Image"]
  GETTABLEKS R42 R2 K8 ["Arrow"]
  GETTABLEKS R41 R42 K75 ["Color"]
  SETTABLEKS R41 R40 K76 ["ImageColor3"]
  GETIMPORT R41 K71 [Vector2.new]
  MOVE R42 R8
  MOVE R43 R8
  CALL R41 2 1
  SETTABLEKS R41 R40 K77 ["ImageRectSize"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R42 R2 K8 ["Arrow"]
  GETTABLEKS R41 R42 K78 ["ExpandedOffset"]
  JUMP [+4]
  GETTABLEKS R42 R2 K8 ["Arrow"]
  GETTABLEKS R41 R42 K79 ["CollapsedOffset"]
  SETTABLEKS R41 R40 K80 ["ImageRectOffset"]
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K81 ["Event"]
  GETTABLEKS R41 R42 K82 ["Activated"]
  GETTABLEKS R42 R0 K61 ["onToggle"]
  SETTABLE R42 R40 R41
  CALL R38 2 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K62 ["Button"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K51 ["Toggle"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 3
  GETUPVAL R36 4
  DUPTABLE R37 K83 [{"ImageColor3", "LayoutOrder"}]
  SETTABLEKS R29 R37 K76 ["ImageColor3"]
  LOADN R38 6
  SETTABLEKS R38 R37 K57 ["LayoutOrder"]
  MOVE R38 R14
  CALL R36 2 -1
  CALL R34 -1 1
  SETTABLEKS R34 R33 K52 ["LeftIcon"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 5
  DUPTABLE R36 K88 [{"Font", "TextColor", "LayoutOrder", "Text", "Size", "TextXAlignment", "TextTruncate"}]
  SETTABLEKS R31 R36 K45 ["Font"]
  SETTABLEKS R29 R36 K84 ["TextColor"]
  LOADN R37 7
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  SETTABLEKS R15 R36 K85 ["Text"]
  GETIMPORT R37 K15 [UDim2.new]
  LOADN R38 1
  JUMPIFNOTEQKN R5 K4 [0] [+37]
  GETTABLEKS R48 R32 K89 ["X"]
  GETTABLEKS R47 R48 K49 ["Offset"]
  ADD R46 R22 R47
  JUMPIFNOT R14 [+7]
  GETTABLEKS R49 R14 K9 ["Size"]
  GETTABLEKS R48 R49 K89 ["X"]
  GETTABLEKS R47 R48 K49 ["Offset"]
  JUMP [+1]
  LOADN R47 0
  ADD R45 R46 R47
  GETTABLEKS R47 R32 K89 ["X"]
  GETTABLEKS R46 R47 K49 ["Offset"]
  ADD R44 R45 R46
  GETTABLEKS R45 R23 K90 ["Left"]
  ADD R43 R44 R45
  GETTABLEKS R44 R23 K91 ["Right"]
  ADD R42 R43 R44
  GETTABLEKS R44 R2 K93 ["Spacing"]
  MULK R43 R44 K92 [3]
  ADD R41 R42 R43
  GETTABLEKS R43 R2 K93 ["Spacing"]
  MULK R42 R43 K92 [3]
  ADD R40 R41 R42
  MINUS R39 R40
  JUMP [+45]
  GETTABLEKS R50 R32 K89 ["X"]
  GETTABLEKS R49 R50 K49 ["Offset"]
  ADD R48 R22 R49
  JUMPIFNOT R14 [+7]
  GETTABLEKS R51 R14 K9 ["Size"]
  GETTABLEKS R50 R51 K89 ["X"]
  GETTABLEKS R49 R50 K49 ["Offset"]
  JUMP [+1]
  LOADN R49 0
  ADD R47 R48 R49
  GETTABLEKS R49 R2 K26 ["ColumnWidths"]
  GETTABLEKS R48 R49 K27 ["Weight"]
  ADD R46 R47 R48
  GETTABLEKS R48 R2 K26 ["ColumnWidths"]
  GETTABLEKS R47 R48 K28 ["Timestamp"]
  ADD R45 R46 R47
  GETTABLEKS R47 R32 K89 ["X"]
  GETTABLEKS R46 R47 K49 ["Offset"]
  ADD R44 R45 R46
  GETTABLEKS R45 R23 K90 ["Left"]
  ADD R43 R44 R45
  GETTABLEKS R44 R23 K91 ["Right"]
  ADD R42 R43 R44
  GETTABLEKS R44 R2 K93 ["Spacing"]
  MULK R43 R44 K94 [5]
  ADD R41 R42 R43
  GETTABLEKS R43 R2 K93 ["Spacing"]
  MULK R42 R43 K92 [3]
  ADD R40 R41 R42
  MINUS R39 R40
  LOADN R40 1
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K9 ["Size"]
  GETIMPORT R37 K96 [Enum.TextXAlignment.Left]
  SETTABLEKS R37 R36 K86 ["TextXAlignment"]
  GETIMPORT R37 K98 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R37 R36 K87 ["TextTruncate"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K53 ["Name"]
  JUMPIFEQKN R5 K4 [0] [+36]
  JUMPIFNOT R16 [+22]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 5
  DUPTABLE R36 K99 [{"Font", "TextColor", "LayoutOrder", "Text", "Size", "TextXAlignment"}]
  SETTABLEKS R31 R36 K45 ["Font"]
  SETTABLEKS R29 R36 K84 ["TextColor"]
  LOADN R37 8
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  SETTABLEKS R16 R36 K85 ["Text"]
  SETTABLEKS R26 R36 K9 ["Size"]
  GETIMPORT R37 K100 [Enum.TextXAlignment.Right]
  SETTABLEKS R37 R36 K86 ["TextXAlignment"]
  CALL R34 2 1
  JUMP [+13]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 2
  DUPTABLE R36 K101 [{"Size", "LayoutOrder"}]
  SETTABLEKS R26 R36 K9 ["Size"]
  LOADN R37 8
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K27 ["Weight"]
  JUMPIFEQKN R5 K4 [0] [+56]
  JUMPIFNOT R28 [+42]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 6
  DUPTABLE R36 K107 [{"Size", "LayoutOrder", "TimePercentage", "Length", "Font", "TextColor", "BarColor", "BarBorder", "BarBackground"}]
  SETTABLEKS R27 R36 K9 ["Size"]
  LOADN R37 9
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  GETTABLEKS R38 R4 K29 ["state"]
  GETTABLEKS R37 R38 K30 ["timePositionNormalized"]
  SETTABLEKS R37 R36 K102 ["TimePercentage"]
  GETTABLEKS R38 R4 K29 ["state"]
  GETTABLEKS R37 R38 K31 ["length"]
  SETTABLEKS R37 R36 K103 ["Length"]
  SETTABLEKS R31 R36 K45 ["Font"]
  SETTABLEKS R29 R36 K84 ["TextColor"]
  SETTABLEKS R30 R36 K104 ["BarColor"]
  GETTABLEKS R38 R2 K42 ["TimeBar"]
  GETTABLEKS R37 R38 K108 ["Border"]
  SETTABLEKS R37 R36 K105 ["BarBorder"]
  GETTABLEKS R38 R2 K42 ["TimeBar"]
  GETTABLEKS R37 R38 K109 ["Background"]
  SETTABLEKS R37 R36 K106 ["BarBackground"]
  CALL R34 2 1
  JUMP [+13]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 2
  DUPTABLE R36 K101 [{"Size", "LayoutOrder"}]
  SETTABLEKS R27 R36 K9 ["Size"]
  LOADN R37 9
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K28 ["Timestamp"]
  JUMPIFEQKN R5 K4 [0] [+75]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 2
  DUPTABLE R36 K60 [{"LayoutOrder", "Size", "OnPress"}]
  LOADN R37 10
  SETTABLEKS R37 R36 K57 ["LayoutOrder"]
  SETTABLEKS R32 R36 K9 ["Size"]
  GETTABLEKS R37 R0 K110 ["onToggleAdornment"]
  SETTABLEKS R37 R36 K59 ["OnPress"]
  DUPTABLE R37 K63 [{"Button"}]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K56 ["createElement"]
  LOADK R39 K64 ["ImageButton"]
  NEWTABLE R40 8 0
  GETTABLEKS R41 R24 K9 ["Size"]
  SETTABLEKS R41 R40 K9 ["Size"]
  GETIMPORT R41 K68 [UDim2.fromScale]
  LOADK R42 K69 [0.5]
  LOADK R43 K69 [0.5]
  CALL R41 2 1
  SETTABLEKS R41 R40 K17 ["Position"]
  GETIMPORT R41 K71 [Vector2.new]
  LOADK R42 K69 [0.5]
  LOADK R43 K69 [0.5]
  CALL R41 2 1
  SETTABLEKS R41 R40 K72 ["AnchorPoint"]
  LOADN R41 1
  SETTABLEKS R41 R40 K73 ["BackgroundTransparency"]
  GETTABLEKS R41 R24 K74 ["Image"]
  SETTABLEKS R41 R40 K74 ["Image"]
  JUMPIFNOT R18 [+2]
  MOVE R41 R19
  JUMP [+2]
  GETTABLEKS R41 R24 K111 ["InactiveColor"]
  SETTABLEKS R41 R40 K76 ["ImageColor3"]
  JUMPIFNOT R18 [+3]
  GETTABLEKS R41 R24 K112 ["ActiveTransparency"]
  JUMP [+2]
  GETTABLEKS R41 R24 K113 ["InactiveTransparency"]
  SETTABLEKS R41 R40 K114 ["ImageTransparency"]
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K81 ["Event"]
  GETTABLEKS R41 R42 K82 ["Activated"]
  GETTABLEKS R42 R0 K110 ["onToggleAdornment"]
  SETTABLE R42 R40 R41
  CALL R38 2 1
  SETTABLEKS R38 R37 K62 ["Button"]
  CALL R34 3 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K54 ["Adornment"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K56 ["createElement"]
  GETUPVAL R35 2
  GETUPVAL R36 7
  DUPTABLE R37 K119 [{"LayoutOrder", "Size", "Position", "Style", "Layout", "HorizontalAlignment", "BackgroundColor3", "Padding", "Spacing"}]
  JUMPIFNOT R10 [+2]
  LOADN R38 2
  JUMP [+1]
  MOVE R38 R3
  SETTABLEKS R38 R37 K57 ["LayoutOrder"]
  SETTABLEKS R12 R37 K9 ["Size"]
  SETTABLEKS R13 R37 K17 ["Position"]
  LOADK R38 K120 ["Box"]
  SETTABLEKS R38 R37 K115 ["Style"]
  JUMPIFNOT R9 [+2]
  LOADNIL R38
  JUMP [+2]
  GETIMPORT R38 K123 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K116 ["Layout"]
  JUMPIFNOT R9 [+2]
  LOADNIL R38
  JUMP [+2]
  GETIMPORT R38 K124 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R38 R37 K117 ["HorizontalAlignment"]
  GETTABLEKS R38 R2 K109 ["Background"]
  SETTABLEKS R38 R37 K118 ["BackgroundColor3"]
  SETTABLEKS R23 R37 K23 ["Padding"]
  GETTABLEKS R38 R2 K93 ["Spacing"]
  SETTABLEKS R38 R37 K93 ["Spacing"]
  GETTABLEKS R38 R1 K125 ["WrapperProps"]
  CALL R36 2 1
  MOVE R37 R33
  CALL R34 3 -1
  RETURN R34 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["CompositorDebugger"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["ContextServices"]
  GETTABLEKS R5 R4 K14 ["withContext"]
  GETTABLEKS R6 R4 K15 ["Analytics"]
  GETTABLEKS R7 R4 K16 ["Localization"]
  GETTABLEKS R9 R3 K17 ["Style"]
  GETTABLEKS R8 R9 K18 ["Stylizer"]
  GETTABLEKS R9 R3 K19 ["Wrappers"]
  GETTABLEKS R10 R9 K20 ["withControl"]
  GETTABLEKS R11 R3 K21 ["Dash"]
  GETTABLEKS R12 R11 K22 ["join"]
  GETTABLEKS R13 R11 K23 ["assign"]
  GETTABLEKS R14 R3 K24 ["UI"]
  GETTABLEKS R15 R14 K25 ["Image"]
  GETTABLEKS R16 R14 K26 ["Pane"]
  GETTABLEKS R17 R14 K27 ["TextLabel"]
  GETTABLEKS R19 R1 K28 ["Src"]
  GETTABLEKS R18 R19 K29 ["Util"]
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R18 K30 ["getSafeName"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETIMPORT R22 K5 [script]
  GETTABLEKS R21 R22 K31 ["Timestamp"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R23 R1 K28 ["Src"]
  GETTABLEKS R22 R23 K32 ["Types"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K33 ["PureComponent"]
  LOADK R24 K34 ["LayerTreeRow"]
  NAMECALL R22 R22 K35 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K36 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K37 ["init"]
  DUPCLOSURE R23 K38 [PROTO_3]
  CAPTURE VAL R19
  SETTABLEKS R23 R22 K39 ["getContents"]
  DUPCLOSURE R23 K40 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R13
  SETTABLEKS R23 R22 K41 ["render"]
  DUPTABLE R23 K43 [{"ExpandableRoot"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K42 ["ExpandableRoot"]
  SETTABLEKS R23 R22 K44 ["defaultProps"]
  MOVE R23 R5
  DUPTABLE R24 K45 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R6 R24 K15 ["Analytics"]
  SETTABLEKS R7 R24 K16 ["Localization"]
  SETTABLEKS R8 R24 K18 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  MOVE R23 R10
  MOVE R24 R22
  CALL R23 1 -1
  RETURN R23 -1
