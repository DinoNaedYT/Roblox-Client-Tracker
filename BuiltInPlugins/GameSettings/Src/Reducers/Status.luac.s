PROTO_0:
  GETUPVAL R2 0
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["currentStatus"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["CurrentStatus"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Closed"]
  GETTABLEKS R4 R1 K11 ["createReducer"]
  MOVE R5 R3
  DUPTABLE R6 K14 [{"ResetStore", "SetCurrentStatus"}]
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K12 ["ResetStore"]
  DUPCLOSURE R7 K16 [PROTO_1]
  SETTABLEKS R7 R6 K13 ["SetCurrentStatus"]
  CALL R4 2 -1
  RETURN R4 -1
