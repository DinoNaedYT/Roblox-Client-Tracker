PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["EqData"]
  JUMPIFEQ R0 R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OnChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reset"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["EqData"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setBypass"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["bypass"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SetAnalysisEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["AnalysisEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Context"]
  GETTABLEKS R2 R3 K1 ["Consumer"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Localization"]
  GETTABLEKS R3 R4 K3 ["Key"]
  GETTABLE R2 R1 R3
  GETUPVAL R3 2
  GETIMPORT R4 K6 [Vector2.one]
  CALL R3 1 2
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R8 R0 K7 ["OnChanged"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R6 4
  GETTABLEKS R7 R0 K8 ["EqData"]
  MOVE R8 R5
  CALL R6 2 1
  GETUPVAL R7 5
  NEWCLOSURE R8 P1
  CAPTURE VAL R6
  CAPTURE VAL R0
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K8 ["EqData"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 0
  GETUPVAL R7 3
  NEWCLOSURE R8 P2
  CAPTURE VAL R4
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R8 3
  NEWCLOSURE R9 P3
  CAPTURE VAL R6
  NEWTABLE R10 0 1
  MOVE R11 R6
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R9 3
  NEWCLOSURE R10 P4
  CAPTURE VAL R0
  NEWTABLE R11 0 2
  GETTABLEKS R12 R0 K9 ["AnalysisEnabled"]
  GETTABLEKS R13 R0 K10 ["SetAnalysisEnabled"]
  SETLIST R11 R12 2 [1]
  CALL R9 2 1
  GETTABLEKS R10 R0 K11 ["Enabled"]
  JUMPIFNOT R10 [+152]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 7
  NEWTABLE R12 2 0
  GETIMPORT R13 K15 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["Size"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K17 ["Tag"]
  LOADK R14 K18 ["X-Pad X-ColumnM X-FitY"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K22 [{"UISizeConstraint", "Controls", "Canvas"}]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K12 ["createElement"]
  LOADK R15 K19 ["UISizeConstraint"]
  DUPTABLE R16 K25 [{"MinSize", "MaxSize"}]
  GETUPVAL R17 8
  SETTABLEKS R17 R16 K23 ["MinSize"]
  GETUPVAL R17 9
  SETTABLEKS R17 R16 K24 ["MaxSize"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["UISizeConstraint"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 7
  NEWTABLE R16 4 0
  GETIMPORT R17 K27 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 50
  CALL R17 4 1
  SETTABLEKS R17 R16 K16 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K28 ["LayoutOrder"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K17 ["Tag"]
  LOADK R18 K29 ["X-RowM"]
  SETTABLE R18 R16 R17
  DUPTABLE R17 K31 [{"Bypass", "AnalysisEnabled"}]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K35 [{"Text", "Checked", "OnClick"}]
  LOADK R23 K36 ["Label"]
  LOADK R24 K30 ["Bypass"]
  NAMECALL R21 R2 K37 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K32 ["Text"]
  GETTABLEKS R21 R6 K38 ["bypass"]
  SETTABLEKS R21 R20 K33 ["Checked"]
  SETTABLEKS R8 R20 K34 ["OnClick"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K30 ["Bypass"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K35 [{"Text", "Checked", "OnClick"}]
  LOADK R23 K36 ["Label"]
  LOADK R24 K39 ["EnableAnalyzer"]
  NAMECALL R21 R2 K37 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K32 ["Text"]
  GETTABLEKS R21 R0 K9 ["AnalysisEnabled"]
  SETTABLEKS R21 R20 K33 ["Checked"]
  SETTABLEKS R9 R20 K34 ["OnClick"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K9 ["AnalysisEnabled"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K20 ["Controls"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K40 [{"Size", "LayoutOrder"}]
  GETIMPORT R17 K27 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 196
  CALL R17 4 1
  SETTABLEKS R17 R16 K16 ["Size"]
  LOADN R17 2
  SETTABLEKS R17 R16 K28 ["LayoutOrder"]
  DUPTABLE R17 K43 [{"Plot", "Analyzer"}]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K47 [{"EqHook", "PlotAbsoluteSize", "OnSizeChanged"}]
  SETTABLEKS R6 R20 K44 ["EqHook"]
  SETTABLEKS R3 R20 K45 ["PlotAbsoluteSize"]
  SETTABLEKS R7 R20 K46 ["OnSizeChanged"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["Plot"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 12
  DUPTABLE R20 K48 [{"Enabled", "PlotAbsoluteSize"}]
  GETTABLEKS R21 R0 K9 ["AnalysisEnabled"]
  SETTABLEKS R21 R20 K11 ["Enabled"]
  SETTABLEKS R3 R20 K45 ["PlotAbsoluteSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K42 ["Analyzer"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K21 ["Canvas"]
  CALL R10 3 1
  RETURN R10 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R3 K3 ["AudioEqualizerEditor"]
  NAMECALL R1 R0 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useContext"]
  GETTABLEKS R5 R2 K11 ["useEffect"]
  GETTABLEKS R6 R2 K12 ["useRef"]
  GETTABLEKS R7 R2 K13 ["useState"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R1 K7 ["Packages"]
  GETTABLEKS R9 R10 K14 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K15 ["ContextServices"]
  GETTABLEKS R11 R8 K16 ["UI"]
  GETTABLEKS R10 R11 K17 ["Pane"]
  GETTABLEKS R12 R8 K16 ["UI"]
  GETTABLEKS R11 R12 K18 ["Checkbox"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R1 K19 ["Src"]
  GETTABLEKS R13 R14 K20 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R14 R0 K21 ["EqAnalyzerCurve"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R15 R0 K22 ["EqPlot"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R0 K23 ["useEq"]
  CALL R15 1 1
  GETIMPORT R16 K26 [Vector2.new]
  LOADN R17 28
  LOADN R18 44
  CALL R16 2 1
  GETIMPORT R17 K26 [Vector2.new]
  LOADN R18 208
  LOADN R19 208
  CALL R17 2 1
  DUPCLOSURE R18 K27 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R13
  RETURN R18 1
