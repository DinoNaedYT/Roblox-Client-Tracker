PROTO_0:
  LOADK R4 K0 [""]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K3 [string.len]
  CALL R5 1 1
  GETUPVAL R6 0
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R2
  GETIMPORT R11 K6 [Vector2.new]
  CALL R11 0 -1
  NAMECALL R6 R6 K7 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R7 R6 K8 ["X"]
  JUMPIFNOTLT R7 R3 [+2]
  RETURN R0 1
  LOADN R9 1
  DIVK R11 R5 K9 [2]
  FASTCALL1 MATH_CEIL R11 [+2]
  GETIMPORT R10 K12 [math.ceil]
  CALL R10 1 1
  MOVE R7 R10
  LOADN R8 1
  FORNPREP R7
  LOADN R12 1
  MOVE R13 R9
  NAMECALL R10 R0 K13 ["sub"]
  CALL R10 3 1
  SUBK R14 R9 K14 [1]
  SUB R13 R5 R14
  MOVE R14 R5
  NAMECALL R11 R0 K13 ["sub"]
  CALL R11 3 1
  MOVE R13 R10
  LOADK R14 K15 ["..."]
  MOVE R15 R11
  CONCAT R12 R13 R15
  GETUPVAL R13 0
  MOVE R15 R12
  MOVE R16 R1
  MOVE R17 R2
  GETIMPORT R18 K6 [Vector2.new]
  CALL R18 0 -1
  NAMECALL R13 R13 K7 ["GetTextSize"]
  CALL R13 -1 1
  GETTABLEKS R15 R13 K8 ["X"]
  ADDK R14 R15 K9 [2]
  JUMPIFNOTLT R14 R3 [+5]
  MOVE R4 R12
  JUMP [+1]
  RETURN R4 1
  FORNLOOP R7
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TextService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
