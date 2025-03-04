PROTO_0:
  GETTABLEKS R1 R0 K0 ["PlotAbsoluteSize"]
  GETIMPORT R3 K3 [Vector2.new]
  GETTABLEKS R5 R0 K4 ["StartKeypoint"]
  GETTABLEKS R4 R5 K5 ["Time"]
  LOADN R6 1
  GETTABLEKS R8 R0 K4 ["StartKeypoint"]
  GETTABLEKS R7 R8 K6 ["Value"]
  SUB R5 R6 R7
  CALL R3 2 1
  MUL R2 R1 R3
  GETIMPORT R4 K3 [Vector2.new]
  GETTABLEKS R6 R0 K7 ["EndKeypoint"]
  GETTABLEKS R5 R6 K5 ["Time"]
  LOADN R7 1
  GETTABLEKS R9 R0 K7 ["EndKeypoint"]
  GETTABLEKS R8 R9 K6 ["Value"]
  SUB R6 R7 R8
  CALL R4 2 1
  MUL R3 R1 R4
  ADD R5 R2 R3
  DIVK R4 R5 K8 [2]
  SUB R5 R3 R2
  GETTABLEKS R7 R5 K9 ["Y"]
  GETTABLEKS R8 R5 K10 ["X"]
  FASTCALL2 MATH_ATAN2 R7 R8 [+3]
  GETIMPORT R6 K13 [math.atan2]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["createElement"]
  LOADK R8 K15 ["Frame"]
  NEWTABLE R9 8 0
  GETIMPORT R10 K3 [Vector2.new]
  LOADK R11 K16 [0.5]
  LOADK R12 K16 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["AnchorPoint"]
  GETIMPORT R10 K20 [UDim2.fromOffset]
  GETTABLEKS R11 R4 K10 ["X"]
  GETTABLEKS R12 R4 K9 ["Y"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["Position"]
  FASTCALL1 MATH_DEG R6 [+3]
  MOVE R11 R6
  GETIMPORT R10 K23 [math.deg]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["Rotation"]
  GETIMPORT R10 K20 [UDim2.fromOffset]
  GETTABLEKS R11 R5 K25 ["Magnitude"]
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["Size"]
  GETTABLEKS R10 R0 K27 ["LayoutOrder"]
  SETTABLEKS R10 R9 K27 ["LayoutOrder"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K28 ["Tag"]
  GETUPVAL R11 1
  LOADK R12 K29 ["NumberSequenceLine"]
  GETTABLEKS R14 R0 K30 ["StartKeypointSelected"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K31 ["SelectedStart"]
  JUMP [+1]
  LOADNIL R13
  GETTABLEKS R15 R0 K32 ["EndKeypointSelected"]
  JUMPIFNOT R15 [+2]
  LOADK R14 K33 ["SelectedEnd"]
  JUMP [+1]
  LOADNIL R14
  CALL R11 3 1
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1

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
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Styling"]
  GETTABLEKS R3 R4 K9 ["joinTags"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Renderers"]
  GETTABLEKS R6 R7 K12 ["SequenceRenderers"]
  GETTABLEKS R5 R6 K13 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R5 1
