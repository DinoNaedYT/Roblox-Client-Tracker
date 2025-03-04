PROTO_0:
  DUPTABLE R0 K3 [{"studioSid", "placeId", "machineTimeStamp"}]
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["GetSessionId"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["studioSid"]
  GETIMPORT R2 K6 [game]
  GETTABLEKS R1 R2 K7 ["PlaceId"]
  SETTABLEKS R1 R0 K1 ["placeId"]
  GETIMPORT R1 K10 [os.time]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["machineTimeStamp"]
  RETURN R0 1

PROTO_1:
  GETGLOBAL R0 K0 ["getCommonArgs"]
  CALL R0 0 1
  GETUPVAL R1 0
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["isTeamCreate"]
  GETUPVAL R1 1
  LOADK R3 K2 ["studio"]
  LOADK R4 K3 ["ManageCollaborators"]
  LOADK R5 K4 ["CollaborateButtonPressed"]
  MOVE R6 R0
  NAMECALL R1 R1 K5 ["SendEventDeferred"]
  CALL R1 5 0
  RETURN R0 0

PROTO_2:
  GETGLOBAL R0 K0 ["getCommonArgs"]
  CALL R0 0 1
  GETUPVAL R1 0
  LOADK R3 K1 ["studio"]
  LOADK R4 K2 ["ManageCollaborators"]
  LOADK R5 K3 ["SaveToRobloxPressed"]
  MOVE R6 R0
  NAMECALL R1 R1 K4 ["SendEventDeferred"]
  CALL R1 5 0
  RETURN R0 0

PROTO_3:
  GETGLOBAL R1 K0 ["getCommonArgs"]
  CALL R1 0 1
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K1 ["isTeamCreate"]
  JUMPIFNOT R0 [+2]
  LOADK R2 K2 ["group"]
  JUMP [+1]
  LOADK R2 K3 ["user"]
  SETTABLEKS R2 R1 K4 ["gameType"]
  GETUPVAL R2 1
  LOADK R4 K5 ["studio"]
  LOADK R5 K6 ["ManageCollaborators"]
  LOADK R6 K7 ["CancelButtonPressed"]
  MOVE R7 R1
  NAMECALL R2 R2 K8 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_4:
  LOADK R3 K0 [""]
  LOADK R4 K0 [""]
  LOADK R5 K0 [""]
  LOADK R6 K0 [""]
  MOVE R7 R1
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL1 STRING_LEN R3 [+3]
  MOVE R13 R3
  GETIMPORT R12 K3 [string.len]
  CALL R12 1 1
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+13]
  MOVE R12 R3
  LOADK R13 K4 [","]
  CONCAT R3 R12 R13
  MOVE R12 R4
  LOADK R13 K4 [","]
  CONCAT R4 R12 R13
  MOVE R12 R5
  LOADK R13 K4 [","]
  CONCAT R5 R12 R13
  MOVE R12 R6
  LOADK R13 K4 [","]
  CONCAT R6 R12 R13
  MOVE R12 R3
  LOADK R13 K5 ["add"]
  CONCAT R3 R12 R13
  MOVE R12 R4
  GETTABLEKS R13 R11 K6 ["subjectId"]
  CONCAT R4 R12 R13
  MOVE R12 R5
  GETTABLEKS R13 R11 K7 ["action"]
  CONCAT R5 R12 R13
  MOVE R12 R6
  GETTABLEKS R13 R11 K8 ["subjectType"]
  CONCAT R6 R12 R13
  FORGLOOP R7 2 [-36]
  MOVE R7 R2
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL1 STRING_LEN R3 [+3]
  MOVE R13 R3
  GETIMPORT R12 K3 [string.len]
  CALL R12 1 1
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+13]
  MOVE R12 R3
  LOADK R13 K4 [","]
  CONCAT R3 R12 R13
  MOVE R12 R4
  LOADK R13 K4 [","]
  CONCAT R4 R12 R13
  MOVE R12 R5
  LOADK R13 K4 [","]
  CONCAT R5 R12 R13
  MOVE R12 R6
  LOADK R13 K4 [","]
  CONCAT R6 R12 R13
  MOVE R12 R3
  LOADK R13 K9 ["delete"]
  CONCAT R3 R12 R13
  MOVE R12 R4
  GETTABLEKS R13 R11 K6 ["subjectId"]
  CONCAT R4 R12 R13
  MOVE R12 R5
  GETTABLEKS R13 R11 K7 ["action"]
  CONCAT R5 R12 R13
  MOVE R12 R6
  GETTABLEKS R13 R11 K8 ["subjectType"]
  CONCAT R6 R12 R13
  FORGLOOP R7 2 [-36]
  GETGLOBAL R7 K10 ["getCommonArgs"]
  CALL R7 0 1
  GETUPVAL R8 0
  CALL R8 0 1
  SETTABLEKS R8 R7 K11 ["isTeamCreate"]
  JUMPIFNOT R0 [+2]
  LOADK R8 K12 ["group"]
  JUMP [+1]
  LOADK R8 K13 ["user"]
  SETTABLEKS R8 R7 K14 ["gameType"]
  SETTABLEKS R3 R7 K15 ["actions"]
  SETTABLEKS R4 R7 K16 ["ids"]
  SETTABLEKS R5 R7 K17 ["permissionLevels"]
  SETTABLEKS R6 R7 K18 ["types"]
  GETUPVAL R8 1
  LOADK R10 K19 ["studio"]
  LOADK R11 K20 ["ManageCollaborators"]
  LOADK R12 K21 ["SaveCollaboratorsButtonPressed"]
  MOVE R13 R7
  NAMECALL R8 R8 K22 ["SendEventDeferred"]
  CALL R8 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["IsTeamCreateEnabled"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  SETGLOBAL R3 K13 ["getCommonArgs"]
  NEWTABLE R3 4 0
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K15 ["reportCollaborateButtonPressed"]
  DUPCLOSURE R4 K16 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K17 ["reportSaveToRobloxPressed"]
  DUPCLOSURE R4 K18 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K19 ["reportCancelPressed"]
  DUPCLOSURE R4 K20 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K21 ["reportSaveCollaboratorsPressed"]
  RETURN R3 1
