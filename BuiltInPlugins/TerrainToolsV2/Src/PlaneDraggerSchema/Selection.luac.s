PROTO_0:
  DUPTABLE R2 K1 [{"_CursorGrid"}]
  SETTABLEKS R0 R2 K0 ["_CursorGrid"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K5 ["SelectionChanged"]
  RETURN R1 1

PROTO_1:
  RETURN R0 0

PROTO_2:
  NEWTABLE R1 0 1
  GETTABLEKS R2 R0 K0 ["_CursorGrid"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Packages"]
  GETTABLEKS R1 R2 K4 ["DraggerFramework"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Utility"]
  GETTABLEKS R3 R4 K8 ["Signal"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  SETTABLEKS R3 R3 K9 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["new"]
  DUPCLOSURE R4 K12 [PROTO_1]
  SETTABLEKS R4 R3 K13 ["Set"]
  DUPCLOSURE R4 K14 [PROTO_2]
  SETTABLEKS R4 R3 K15 ["Get"]
  RETURN R3 1
