PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["AnimationData"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K2 ["Metadata"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Dictionary"]
  GETTABLEKS R2 R3 K4 ["join"]
  MOVE R3 R1
  DUPTABLE R4 K5 [{"Metadata"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Dictionary"]
  GETTABLEKS R5 R6 K4 ["join"]
  GETTABLEKS R6 R1 K2 ["Metadata"]
  GETUPVAL R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["Metadata"]
  CALL R2 2 1
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K6 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["SetAnimationData"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
