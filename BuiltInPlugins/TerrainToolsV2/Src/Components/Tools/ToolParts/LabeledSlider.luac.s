PROTO_0:
  GETTABLEKS R1 R0 K0 ["LayoutOrder"]
  GETTABLEKS R2 R0 K1 ["Text"]
  GETTABLEKS R3 R0 K2 ["Tooltip"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  MOVE R5 R0
  NEWTABLE R6 4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["Children"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["None"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K0 ["LayoutOrder"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K1 ["Text"]
  CALL R4 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Dictionary"]
  GETTABLEKS R5 R6 K4 ["join"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["Children"]
  GETTABLE R6 R0 R7
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  DUPTABLE R7 K8 [{"Slider"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 2
  MOVE R10 R4
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Slider"]
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K11 [{"Size", "Text", "LayoutOrder", "Tooltip"}]
  GETIMPORT R9 K14 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 15
  CALL R9 4 1
  SETTABLEKS R9 R8 K10 ["Size"]
  SETTABLEKS R2 R8 K1 ["Text"]
  SETTABLEKS R1 R8 K0 ["LayoutOrder"]
  SETTABLEKS R3 R8 K2 ["Tooltip"]
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K8 ["LabeledElementPair"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K9 ["Slider"]
  CALL R5 1 1
  DUPCLOSURE R6 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
