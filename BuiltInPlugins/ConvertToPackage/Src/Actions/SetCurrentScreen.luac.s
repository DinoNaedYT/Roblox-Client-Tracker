PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETIMPORT R3 K4 [string.format]
  LOADK R4 K5 ["screen arg must be a string, received %s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K9 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K11 [{"currentScreen"}]
  SETTABLEKS R0 R1 K10 ["currentScreen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["Action"]
  CALL R1 1 1
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K8 ["Name"]
  DUPCLOSURE R4 K9 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
