PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIFNOT R1 [+40]
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+37]
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K1 ["assetId"]
  GETUPVAL R3 0
  JUMPIFNOTEQ R2 R3 [+31]
  NEWTABLE R2 0 0
  GETIMPORT R3 K3 [pairs]
  GETTABLEN R4 R1 1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R8 1
  MOVE R9 R6
  CALL R8 1 1
  SETTABLE R7 R2 R8
  FORGLOOP R3 2 [-5]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+8]
  GETUPVAL R3 3
  GETUPVAL R5 4
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K4 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 3
  GETUPVAL R5 5
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K4 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  GETUPVAL R3 6
  NEWTABLE R5 0 1
  GETUPVAL R6 1
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K0 ["getAssetCreationDetails"]
  CALL R3 2 1
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R3 K1 ["andThen"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Actions"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["SetAssetConfigData"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K3 ["Core"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["firstToUpper"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K3 ["Core"]
  GETTABLEKS R6 R7 K4 ["Actions"]
  GETTABLEKS R5 R6 K10 ["NetworkError"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K11 ["UpdateAssetConfigData"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R6 1
