PROTO_0:
  LOADK R1 K0 [0.0001]
  JUMPIFNOTLT R0 R1 [+3]
  LOADN R1 176
  RETURN R1 1
  LOADN R3 20
  FASTCALL1 MATH_LOG R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K4 [math.log]
  CALL R4 1 1
  MUL R2 R3 R4
  MULK R1 R2 K1 [0.4342944819]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["plotToAbs"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["makeControlPoint"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["stopAnalyzing"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["startAnalyzing"]
  GETUPVAL R1 2
  CALL R0 1 0
  DUPCLOSURE R0 K2 [PROTO_2]
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_4:
  NEWTABLE R0 0 2
  GETIMPORT R2 K2 [Vector2.new]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["X_MIN"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Y_MIN"]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["PlotAbsoluteSize"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["plotToAbs"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["makeControlPoint"]
  MOVE R6 R4
  CALL R5 1 1
  MOVE R1 R5
  GETUPVAL R2 3
  GETIMPORT R3 K2 [Vector2.new]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["X_MAX"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Y_MIN"]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["PlotAbsoluteSize"]
  CALL R2 2 -1
  SETLIST R0 R1 -1 [1]
  RETURN R0 1

PROTO_5:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  LENGTH R1 R2
  LOADN R4 0
  GETUPVAL R2 1
  LOADN R3 1
  FORNPREP R2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["viewToPlot"]
  GETIMPORT R7 K3 [Vector2.new]
  GETUPVAL R9 1
  DIV R8 R4 R9
  LOADN R9 0
  CALL R7 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K4 ["X"]
  MUL R7 R1 R5
  DIVK R6 R7 K5 [24000]
  LOADN R7 0
  LOADN R8 0
  JUMPIFNOTLT R8 R1 [+29]
  GETUPVAL R8 0
  GETTABLE R7 R8 R1
  JUMPIFNOTLT R6 R1 [+24]
  GETUPVAL R10 0
  FASTCALL1 MATH_FLOOR R6 [+3]
  MOVE R13 R6
  GETIMPORT R12 K9 [math.floor]
  CALL R12 1 1
  ADDK R11 R12 K6 [1]
  GETTABLE R9 R10 R11
  LOADN R11 1
  MODK R12 R6 K6 [1]
  SUB R10 R11 R12
  MUL R8 R9 R10
  GETUPVAL R11 0
  FASTCALL1 MATH_FLOOR R6 [+3]
  MOVE R14 R6
  GETIMPORT R13 K9 [math.floor]
  CALL R13 1 1
  ADDK R12 R13 K10 [2]
  GETTABLE R10 R11 R12
  MODK R11 R6 K6 [1]
  MUL R9 R10 R11
  ADD R7 R8 R9
  MULK R7 R7 K11 [3]
  MOVE R8 R7
  LOADK R9 K12 [0.0001]
  JUMPIFNOTLT R8 R9 [+3]
  LOADN R7 176
  JUMP [+8]
  LOADN R10 20
  FASTCALL1 MATH_LOG R8 [+3]
  MOVE R12 R8
  GETIMPORT R11 K15 [math.log]
  CALL R11 1 1
  MUL R9 R10 R11
  MULK R7 R9 K13 [0.4342944819]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K16 ["X_MIN"]
  JUMPIFNOTLE R8 R5 [+21]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K17 ["X_MAX"]
  JUMPIFNOTLE R5 R8 [+16]
  MOVE R9 R0
  GETUPVAL R10 3
  GETIMPORT R11 K3 [Vector2.new]
  MOVE R12 R5
  MOVE R13 R7
  CALL R11 2 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K18 ["PlotAbsoluteSize"]
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K21 [table.insert]
  CALL R8 -1 0
  FORNLOOP R2
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K0 ["Enabled"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETUPVAL R3 3
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETTABLEKS R5 R0 K0 ["Enabled"]
  JUMPIFNOT R5 [+47]
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 9
  DUPTABLE R7 K5 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  LOADN R10 50
  LOADN R11 0
  LOADN R12 50
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Position"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 156
  LOADN R11 1
  LOADN R12 156
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["BackgroundTransparency"]
  DUPTABLE R8 K10 [{"Curve"}]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 10
  DUPTABLE R11 K13 [{"ControlPoints", "Tag"}]
  GETTABLEKS R13 R0 K0 ["Enabled"]
  JUMPIFNOT R13 [+2]
  MOVE R12 R4
  JUMPIF R12 [+1]
  MOVE R12 R3
  SETTABLEKS R12 R11 K11 ["ControlPoints"]
  LOADK R12 K14 ["AnalyzerCurve"]
  SETTABLEKS R12 R11 K12 ["Tag"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["Curve"]
  CALL R5 3 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AudioEqualizerEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useEffect"]
  GETTABLEKS R4 R2 K10 ["useMemo"]
  GETTABLEKS R5 R2 K11 ["useState"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R1 K7 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K13 ["UI"]
  GETTABLEKS R7 R8 K14 ["Pane"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R0 K15 ["Path2DWrapper"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R1 K16 ["Src"]
  GETTABLEKS R11 R12 K17 ["Util"]
  GETTABLEKS R10 R11 K18 ["AnalyzerUtil"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R1 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K19 ["Path2DUtil"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R1 K16 ["Src"]
  GETTABLEKS R13 R14 K17 ["Util"]
  GETTABLEKS R12 R13 K20 ["PlotUtil"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R1 K21 ["Bin"]
  GETTABLEKS R14 R15 K22 ["Common"]
  GETTABLEKS R13 R14 K23 ["defineLuaFlags"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K24 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
  CALL R13 0 1
  DUPCLOSURE R14 K25 [PROTO_0]
  DUPCLOSURE R15 K26 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R10
  DUPCLOSURE R16 K27 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R16 1
