PROTO_0:
  GETIMPORT R0 K2 [Vector2.new]
  LOADN R1 255
  LOADN R2 255
  CALL R0 2 1
  GETIMPORT R1 K2 [Vector2.new]
  LOADN R2 255
  LOADN R3 255
  CALL R1 2 1
  GETIMPORT R2 K5 [UDim2.fromOffset]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Orientation"]
  JUMPIFNOTEQKS R3 K7 ["Vertical"] [+53]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["Position"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["PlotRect"]
  GETTABLEKS R7 R8 K10 ["Min"]
  GETTABLEKS R6 R7 K11 ["X"]
  SUB R4 R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["PlotRect"]
  GETTABLEKS R5 R6 K12 ["Width"]
  DIV R3 R4 R5
  LOADN R4 0
  JUMPIFLT R3 R4 [+4]
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+3]
  LOADNIL R4
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["PlotAbsoluteSize"]
  GETIMPORT R5 K2 [Vector2.new]
  MOVE R6 R3
  LOADN R7 0
  CALL R5 2 1
  MUL R0 R4 R5
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["PlotAbsoluteSize"]
  GETIMPORT R5 K2 [Vector2.new]
  MOVE R6 R3
  LOADN R7 1
  CALL R5 2 1
  MUL R1 R4 R5
  GETIMPORT R4 K5 [UDim2.fromOffset]
  LOADN R5 2
  SUB R7 R1 R0
  GETTABLEKS R6 R7 K14 ["Magnitude"]
  CALL R4 2 1
  MOVE R2 R4
  JUMP [+58]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Orientation"]
  JUMPIFNOTEQKS R3 K15 ["Horizontal"] [+54]
  LOADN R4 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Position"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["PlotRect"]
  GETTABLEKS R9 R10 K10 ["Min"]
  GETTABLEKS R8 R9 K16 ["Y"]
  SUB R6 R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["PlotRect"]
  GETTABLEKS R7 R8 K17 ["Height"]
  DIV R5 R6 R7
  SUB R3 R4 R5
  LOADN R4 0
  JUMPIFLT R3 R4 [+4]
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+3]
  LOADNIL R4
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["PlotAbsoluteSize"]
  GETIMPORT R5 K2 [Vector2.new]
  LOADN R6 0
  MOVE R7 R3
  CALL R5 2 1
  MUL R0 R4 R5
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["PlotAbsoluteSize"]
  GETIMPORT R5 K2 [Vector2.new]
  LOADN R6 1
  MOVE R7 R3
  CALL R5 2 1
  MUL R1 R4 R5
  GETIMPORT R4 K5 [UDim2.fromOffset]
  SUB R6 R1 R0
  GETTABLEKS R5 R6 K14 ["Magnitude"]
  LOADN R6 2
  CALL R4 2 1
  MOVE R2 R4
  ADD R4 R0 R1
  DIVK R3 R4 K18 [2]
  GETIMPORT R4 K5 [UDim2.fromOffset]
  GETTABLEKS R6 R3 K11 ["X"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["PlotFramePadding"]
  ADD R5 R6 R7
  GETTABLEKS R7 R3 K16 ["Y"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K19 ["PlotFramePadding"]
  ADD R6 R7 R8
  CALL R4 2 1
  DUPTABLE R5 K21 [{"Position", "Size"}]
  SETTABLEKS R4 R5 K8 ["Position"]
  SETTABLEKS R2 R5 K20 ["Size"]
  RETURN R5 1

PROTO_1:
  GETIMPORT R0 K2 [UDim2.fromOffset]
  LOADN R1 0
  LOADN R2 0
  CALL R0 2 1
  GETIMPORT R1 K6 [Enum.TextXAlignment.Center]
  GETIMPORT R2 K8 [Enum.TextYAlignment.Center]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["Orientation"]
  JUMPIFNOTEQKS R3 K10 ["Vertical"] [+12]
  GETIMPORT R3 K12 [UDim2.new]
  LOADK R4 K13 [0.5]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 5
  CALL R3 4 1
  MOVE R0 R3
  GETIMPORT R2 K15 [Enum.TextYAlignment.Top]
  JUMP [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["Orientation"]
  JUMPIFNOTEQKS R3 K16 ["Horizontal"] [+11]
  GETIMPORT R3 K12 [UDim2.new]
  LOADN R4 0
  LOADN R5 251
  LOADK R6 K13 [0.5]
  LOADN R7 0
  CALL R3 4 1
  MOVE R0 R3
  GETIMPORT R1 K18 [Enum.TextXAlignment.Right]
  DUPTABLE R3 K22 [{"Position", "XAlignment", "YAlignment"}]
  SETTABLEKS R0 R3 K19 ["Position"]
  SETTABLEKS R1 R3 K20 ["XAlignment"]
  SETTABLEKS R2 R3 K21 ["YAlignment"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["InnerAlpha"]
  JUMPIF R0 [+2]
  LOADK R0 K1 [0.6]
  RETURN R0 1
  LOADN R1 1
  LOADK R3 K2 [0.4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["InnerAlpha"]
  MUL R2 R3 R4
  SUB R0 R1 R2
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R2 0
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K0 ["Orientation"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R3 0
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K1 ["InnerAlpha"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  JUMPIF R1 [+2]
  LOADNIL R4
  RETURN R4 1
  NEWTABLE R4 0 0
  GETTABLEKS R5 R0 K1 ["InnerAlpha"]
  JUMPIF R5 [+41]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K3 ["TextLabel"]
  NEWTABLE R7 8 0
  GETTABLEKS R8 R2 K4 ["Position"]
  SETTABLEKS R8 R7 K4 ["Position"]
  GETIMPORT R8 K7 [UDim2.fromOffset]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["Size"]
  GETIMPORT R8 K11 [string.format]
  LOADK R9 K12 ["%.1f"]
  GETTABLEKS R10 R0 K4 ["Position"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Text"]
  GETTABLEKS R8 R2 K14 ["XAlignment"]
  SETTABLEKS R8 R7 K15 ["TextXAlignment"]
  GETTABLEKS R8 R2 K16 ["YAlignment"]
  SETTABLEKS R8 R7 K17 ["TextYAlignment"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["Tag"]
  LOADK R9 K19 ["GridLabel"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K20 ["Label"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K21 ["Frame"]
  NEWTABLE R7 8 0
  GETIMPORT R8 K24 [Vector2.new]
  LOADK R9 K25 [0.5]
  LOADK R10 K25 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["AnchorPoint"]
  GETTABLEKS R8 R1 K4 ["Position"]
  SETTABLEKS R8 R7 K4 ["Position"]
  GETTABLEKS R8 R1 K8 ["Size"]
  SETTABLEKS R8 R7 K8 ["Size"]
  SETTABLEKS R3 R7 K27 ["BackgroundTransparency"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["Tag"]
  LOADK R9 K28 ["GridLine"]
  SETTABLE R9 R7 R8
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AttenuationCurveEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useMemo"]
  DUPCLOSURE R4 K10 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
