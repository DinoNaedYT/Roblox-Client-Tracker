PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R2 K2 ["Layout"]
  GETTABLEKS R3 R4 K3 ["Vertical"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"Size", "Background"}]
  GETIMPORT R7 K10 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K6 ["Background"]
  DUPTABLE R7 K13 [{"Layout", "InputPane", "History"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K14 ["UIListLayout"]
  MOVE R10 R3
  CALL R8 2 1
  SETTABLEKS R8 R7 K2 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  CALL R8 1 1
  SETTABLEKS R8 R7 K11 ["InputPane"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 4
  CALL R8 1 1
  SETTABLEKS R8 R7 K12 ["History"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R2 K1 [{"ActiveView"}]
  GETTABLEKS R4 R0 K2 ["Status"]
  GETTABLEKS R3 R4 K0 ["ActiveView"]
  SETTABLEKS R3 R2 K0 ["ActiveView"]
  RETURN R2 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Container"]
  GETTABLEKS R8 R6 K13 ["Box"]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K16 ["InputPane"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K17 ["RepopulatableHistory"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K18 ["PureComponent"]
  LOADK R14 K19 ["EventEmulator"]
  NAMECALL R12 R12 K20 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K21 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K22 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K24 [{"Stylizer"}]
  GETTABLEKS R15 R4 K23 ["Stylizer"]
  SETTABLEKS R15 R14 K23 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  GETTABLEKS R13 R2 K25 ["connect"]
  DUPCLOSURE R14 K26 [PROTO_1]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
