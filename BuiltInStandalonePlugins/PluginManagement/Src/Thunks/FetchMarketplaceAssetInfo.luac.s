PROTO_0:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["GetProductInfo"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["assetId"]
  CALL R0 3 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 3
  CALL R2 0 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Creator"]
  SETTABLEKS R2 R1 K1 ["creator"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 0
  SETTABLE R3 R1 R2
  GETUPVAL R2 3
  ADDK R1 R2 K2 [1]
  SETUPVAL R1 3
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  SETTABLE R2 R0 R1
  GETUPVAL R1 3
  ADDK R0 R1 K0 [1]
  SETUPVAL R0 3
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  SUBK R1 R2 K1 [1]
  MULK R0 R1 K0 [8]
  GETIMPORT R1 K3 [wait]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  GETUPVAL R6 0
  CALL R3 3 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  JUMPIF R1 [+3]
  LOADN R1 1
  SETUPVAL R1 0
  JUMP [+8]
  GETUPVAL R2 0
  ADDK R1 R2 K0 [1]
  SETUPVAL R1 0
  GETUPVAL R1 0
  LOADN R2 4
  JUMPIFNOTLT R2 R1 [+2]
  RETURN R0 0
  LOADN R1 0
  LOADN R2 0
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETIMPORT R6 K2 [pairs]
  GETUPVAL R7 1
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["new"]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R10
  CALL R11 1 1
  NEWCLOSURE R13 P1
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE REF R1
  NEWCLOSURE R14 P2
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE REF R2
  NAMECALL R11 R11 K4 ["andThen"]
  CALL R11 3 1
  FASTCALL2 TABLE_INSERT R5 R11 [+5]
  MOVE R13 R5
  MOVE R14 R11
  GETIMPORT R12 K7 [table.insert]
  CALL R12 2 0
  FORGLOOP R6 2 [-28]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["all"]
  MOVE R7 R5
  CALL R6 1 1
  NAMECALL R6 R6 K9 ["await"]
  CALL R6 1 0
  LOADN R6 0
  JUMPIFNOTLT R6 R1 [+7]
  GETUPVAL R8 4
  MOVE R9 R3
  CALL R8 1 -1
  NAMECALL R6 R0 K10 ["dispatch"]
  CALL R6 -1 0
  LOADN R6 0
  JUMPIFNOTLT R6 R2 [+10]
  GETIMPORT R6 K12 [spawn]
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CALL R6 1 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R3 P0
  CAPTURE REF R2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CLOSEUPVALS R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Promise"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetLoadedPluginData"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R3 1
