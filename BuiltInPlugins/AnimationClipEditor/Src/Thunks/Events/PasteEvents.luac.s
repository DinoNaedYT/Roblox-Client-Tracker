PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["AnimationData"]
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Status"]
  GETTABLEKS R2 R3 K3 ["Clipboard"]
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEKS R4 R3 K4 ["Events"]
  JUMPIFNOTEQKNIL R4 [+2]
  RETURN R0 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Dictionary"]
  GETTABLEKS R5 R6 K6 ["keys"]
  MOVE R6 R2
  CALL R5 1 1
  GETIMPORT R6 K9 [table.sort]
  MOVE R7 R5
  CALL R6 1 0
  GETTABLEN R6 R5 1
  GETUPVAL R7 2
  MOVE R8 R2
  CALL R7 1 1
  JUMPIF R7 [+37]
  GETIMPORT R7 K11 [pairs]
  MOVE R8 R2
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETUPVAL R13 3
  SUB R14 R10 R6
  ADD R12 R13 R14
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["deleteEvents"]
  MOVE R14 R4
  MOVE R15 R12
  CALL R13 2 0
  GETIMPORT R13 K11 [pairs]
  MOVE R14 R11
  CALL R13 1 3
  FORGPREP_NEXT R13
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K13 ["addEvent"]
  MOVE R19 R4
  MOVE R20 R12
  MOVE R21 R16
  MOVE R22 R17
  CALL R18 4 0
  FORGLOOP R13 2 [-9]
  FORGLOOP R7 2 [-25]
  GETUPVAL R9 5
  MOVE R10 R3
  CALL R9 1 -1
  NAMECALL R7 R0 K14 ["dispatch"]
  CALL R7 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
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
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["isEmpty"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["deepCopy"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["AnimationData"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Thunks"]
  GETTABLEKS R6 R7 K14 ["UpdateAnimationData"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
