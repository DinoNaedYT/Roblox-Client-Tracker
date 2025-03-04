PROTO_0:
  JUMPIFNOT R0 [+3]
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K4 [warn]
  LOADK R3 K5 ["No seller status data was given in the response body"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Unable to fetch seller status data"]
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
  NAMECALL R1 R1 K0 ["getSellerStatus"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Promise"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["DebugFlags"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K12 ["Actions"]
  GETTABLEKS R6 R7 K13 ["NetworkError"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K10 ["Core"]
  GETTABLEKS R8 R9 K12 ["Actions"]
  GETTABLEKS R7 R8 K14 ["SetSellerStatus"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R7 1
