PROTO_0:
  DUPTABLE R2 K2 [{"debuggerConnectionId", "metaBreakpoint"}]
  SETTABLEKS R0 R2 K0 ["debuggerConnectionId"]
  SETTABLEKS R1 R2 K1 ["metaBreakpoint"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Models"]
  GETTABLEKS R5 R6 K11 ["MetaBreakpoint"]
  CALL R4 1 1
  MOVE R5 R3
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["Name"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CALL R5 2 -1
  RETURN R5 -1
