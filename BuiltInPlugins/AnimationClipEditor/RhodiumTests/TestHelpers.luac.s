PROTO_0:
  GETUPVAL R2 0
  LOADK R4 K0 ["Dummy"]
  NAMECALL R2 R2 K1 ["FindFirstChild"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["Rhodium Testing requires a 'Dummy' rig in Workspace."]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  SETTABLEKS R0 R1 K5 ["plugin"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["delay"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["clearCache"]
  CALL R3 0 0
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K2 ["Dummy"]
  MOVE R7 R2
  CALL R5 2 -1
  NAMECALL R3 R0 K3 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R5 4
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 -1
  NAMECALL R3 R0 K3 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [wait]
  ORK R2 R0 K2 [0.1]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  CALL R1 1 1
  NAMECALL R2 R1 K1 ["click"]
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["delay"]
  CALL R2 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["plugin"]
  CALL R1 1 1
  MOVE R4 R0
  NAMECALL R2 R1 K2 ["run"]
  CALL R2 2 2
  NAMECALL R4 R1 K3 ["destroy"]
  CALL R4 1 0
  JUMPIF R2 [+4]
  GETIMPORT R4 K5 [error]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["ContextServices"]
  GETTABLEKS R3 R4 K13 ["Analytics"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K10 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Dev"]
  GETTABLEKS R6 R7 K15 ["Rhodium"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K16 ["Element"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K17 ["RhodiumTests"]
  GETTABLEKS R6 R7 K18 ["Test"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K19 ["Src"]
  GETTABLEKS R8 R9 K20 ["Util"]
  GETTABLEKS R7 R8 K21 ["RigInfo"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K19 ["Src"]
  GETTABLEKS R9 R10 K22 ["Thunks"]
  GETTABLEKS R8 R9 K23 ["LoadAnimationData"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K19 ["Src"]
  GETTABLEKS R10 R11 K22 ["Thunks"]
  GETTABLEKS R9 R10 K24 ["UpdateRootInstance"]
  CALL R8 1 1
  DUPTABLE R9 K26 [{"plugin"}]
  LOADNIL R10
  SETTABLEKS R10 R9 K25 ["plugin"]
  DUPCLOSURE R10 K27 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K28 ["init"]
  DUPCLOSURE R10 K29 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K30 ["loadAnimation"]
  DUPCLOSURE R10 K31 [PROTO_2]
  SETTABLEKS R10 R9 K32 ["delay"]
  DUPCLOSURE R10 K33 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K34 ["clickInstance"]
  DUPCLOSURE R10 K35 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K36 ["runTest"]
  RETURN R9 1
