PROTO_0:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["new"]
  CALL R0 0 1
  SETUPVAL R0 1
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["renderSelection"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K2 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K3 ["Studio"]
  GETTABLEKS R0 R1 K0 ["Show Light Guides"]
  JUMPIFNOT R0 [+17]
  GETIMPORT R0 K5 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["Name"]
  SETTABLEKS R1 R0 K6 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K7 ["new"]
  CALL R0 0 1
  SETUPVAL R0 1
  GETUPVAL R0 1
  NAMECALL R0 R0 K8 ["renderSelection"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K9 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K2 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K3 ["Studio"]
  GETTABLEKS R0 R1 K0 ["Show Light Guides"]
  JUMPIFNOT R0 [+17]
  GETIMPORT R0 K5 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["Name"]
  SETTABLEKS R1 R0 K6 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K7 ["new"]
  CALL R0 0 1
  SETUPVAL R0 1
  GETUPVAL R0 1
  NAMECALL R0 R0 K8 ["renderSelection"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K9 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K6 [require]
  GETTABLEKS R3 R0 K7 ["Src"]
  GETTABLEKS R2 R3 K8 ["MainPlugin"]
  CALL R1 1 1
  LOADNIL R2
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE REF R2
  CAPTURE VAL R1
  NEWCLOSURE R5 P1
  CAPTURE REF R2
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  CAPTURE REF R2
  CAPTURE VAL R1
  GETIMPORT R8 K1 [plugin]
  GETTABLEKS R7 R8 K9 ["Unloading"]
  NEWCLOSURE R9 P3
  CAPTURE REF R2
  CAPTURE REF R3
  NAMECALL R7 R7 K10 ["Connect"]
  CALL R7 2 0
  GETIMPORT R8 K12 [settings]
  CALL R8 0 1
  GETTABLEKS R7 R8 K13 ["Studio"]
  LOADK R9 K14 ["Show Light Guides"]
  NAMECALL R7 R7 K15 ["GetPropertyChangedSignal"]
  CALL R7 2 1
  NEWCLOSURE R9 P4
  CAPTURE VAL R0
  CAPTURE REF R2
  CAPTURE VAL R1
  NAMECALL R7 R7 K10 ["Connect"]
  CALL R7 2 1
  MOVE R3 R7
  GETIMPORT R9 K12 [settings]
  CALL R9 0 1
  GETTABLEKS R8 R9 K13 ["Studio"]
  GETTABLEKS R7 R8 K14 ["Show Light Guides"]
  JUMPIFNOT R7 [+14]
  GETIMPORT R7 K1 [plugin]
  GETTABLEKS R8 R0 K16 ["Name"]
  SETTABLEKS R8 R7 K16 ["Name"]
  GETTABLEKS R7 R1 K17 ["new"]
  CALL R7 0 1
  MOVE R2 R7
  NAMECALL R7 R2 K18 ["renderSelection"]
  CALL R7 1 0
  JUMP [+5]
  JUMPIFNOT R2 [+4]
  NAMECALL R7 R2 K19 ["destroy"]
  CALL R7 1 0
  LOADNIL R2
  CLOSEUPVALS R2
  RETURN R0 0
