PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R6 R1 K1 ["robux"]
  FASTCALL1 TONUMBER R6 [+2]
  GETIMPORT R5 K3 [tonumber]
  CALL R5 1 1
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Could not get Robux balance"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["getRobuxBalance"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["getUserId"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K9 ["Actions"]
  GETTABLEKS R4 R5 K10 ["NetworkError"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K9 ["Actions"]
  GETTABLEKS R5 R6 K11 ["SetRobuxBalance"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R5 1
