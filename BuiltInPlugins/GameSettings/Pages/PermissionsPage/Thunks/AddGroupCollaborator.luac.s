PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K1 ["groupMetadataController"]
  GETUPVAL R7 0
  NAMECALL R5 R3 K2 ["getGroupMetadata"]
  CALL R5 2 1
  GETTABLEKS R4 R5 K3 ["name"]
  GETTABLEKS R7 R2 K4 ["Settings"]
  GETTABLEKS R6 R7 K5 ["Changed"]
  GETTABLEKS R5 R6 K6 ["groupMetadata"]
  JUMPIF R5 [+6]
  GETTABLEKS R7 R2 K4 ["Settings"]
  GETTABLEKS R6 R7 K7 ["Current"]
  GETTABLEKS R5 R6 K6 ["groupMetadata"]
  GETUPVAL R6 1
  MOVE R7 R5
  NEWTABLE R8 1 0
  GETUPVAL R9 0
  DUPTABLE R10 K9 [{"Name"}]
  SETTABLEKS R4 R10 K8 ["Name"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  GETTABLEKS R9 R2 K4 ["Settings"]
  GETTABLEKS R8 R9 K5 ["Changed"]
  GETTABLEKS R7 R8 K10 ["permissions"]
  JUMPIF R7 [+6]
  GETTABLEKS R9 R2 K4 ["Settings"]
  GETTABLEKS R8 R9 K7 ["Current"]
  GETTABLEKS R7 R8 K10 ["permissions"]
  GETUPVAL R10 0
  NAMECALL R8 R3 K11 ["getRolesets"]
  CALL R8 2 1
  GETIMPORT R9 K13 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETUPVAL R14 1
  MOVE R15 R7
  NEWTABLE R16 1 0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K14 ["RoleSubjectKey"]
  NEWTABLE R18 1 0
  NEWTABLE R19 4 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K15 ["GroupIdKey"]
  GETUPVAL R21 0
  SETTABLE R21 R19 R20
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K16 ["SubjectNameKey"]
  GETTABLEKS R21 R13 K3 ["name"]
  SETTABLE R21 R19 R20
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K17 ["SubjectRankKey"]
  GETTABLEKS R21 R13 K18 ["rank"]
  SETTABLE R21 R19 R20
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K19 ["ActionKey"]
  GETUPVAL R21 3
  SETTABLE R21 R19 R20
  SETTABLE R19 R18 R12
  SETTABLE R18 R16 R17
  CALL R14 2 1
  MOVE R7 R14
  FORGLOOP R9 2 [-38]
  GETUPVAL R11 4
  LOADK R12 K10 ["permissions"]
  MOVE R13 R7
  CALL R11 2 -1
  NAMECALL R9 R0 K20 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 4
  LOADK R12 K6 ["groupMetadata"]
  MOVE R13 R6
  CALL R11 2 -1
  NAMECALL R9 R0 K20 ["dispatch"]
  CALL R9 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R1 K5 ["Packages"]
  GETTABLEKS R5 R6 K6 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["deepJoin"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Actions"]
  GETTABLEKS R4 R5 K11 ["AddChange"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Util"]
  GETTABLEKS R5 R6 K12 ["PermissionsConstants"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
