PROTO_0:
  LOADB R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["Instance"] [+5]
  LOADK R4 K3 ["VisualizationModeCategory"]
  NAMECALL R2 R0 K4 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["Bad visualizationModeCategory"]
  GETIMPORT R1 K7 [assert]
  CALL R1 2 0
  NEWTABLE R2 8 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K9 [setmetatable]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K11 ["_maid"]
  SETTABLEKS R0 R1 K12 ["_visualizationModeCategory"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K13 ["_visualizationModeTrackers"]
  LOADNIL R2
  SETTABLEKS R2 R1 K14 ["_state"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K15 ["changed"]
  NAMECALL R2 R1 K16 ["_startTracking"]
  CALL R2 1 0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_state"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_state"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K0 ["_state"]
  GETTABLEKS R2 R0 K1 ["changed"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_handleChildAdded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_maid"]
  LOADNIL R2
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_queueUpdateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_queueUpdateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R4 R0 K1 ["_visualizationModeCategory"]
  GETTABLEKS R3 R4 K2 ["ChildAdded"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R4 R0 K1 ["_visualizationModeCategory"]
  GETTABLEKS R3 R4 K5 ["ChildRemoved"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_visualizationModeCategory"]
  LOADK R5 K6 ["Title"]
  NAMECALL R3 R3 K7 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_visualizationModeCategory"]
  LOADK R5 K8 ["Enabled"]
  NAMECALL R3 R3 K7 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K4 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K1 ["_visualizationModeCategory"]
  NAMECALL R1 R1 K9 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  MOVE R8 R5
  NAMECALL R6 R0 K10 ["_handleChildAdded"]
  CALL R6 2 0
  FORGLOOP R1 2 [-5]
  NAMECALL R1 R0 K11 ["_queueUpdateState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_maid"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_stateUpdateQueue"]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["_updateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_maid"]
  GETTABLEKS R1 R2 K1 ["_stateUpdateQueue"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETIMPORT R2 K4 [task.defer]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["_stateUpdateQueue"]
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_visualizationModeTrackers"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K1 ["getState"]
  CALL R7 1 1
  JUMPIFNOT R7 [+7]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K4 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-12]
  GETIMPORT R4 K6 [table.freeze]
  DUPTABLE R5 K12 [{"visualizationModeList", "name", "title", "enabled", "lastUpdateTimeUnixTimeStamp"}]
  SETTABLEKS R1 R5 K7 ["visualizationModeList"]
  GETTABLEKS R7 R0 K13 ["_visualizationModeCategory"]
  GETTABLEKS R6 R7 K14 ["Name"]
  SETTABLEKS R6 R5 K8 ["name"]
  GETTABLEKS R7 R0 K13 ["_visualizationModeCategory"]
  GETTABLEKS R6 R7 K15 ["Title"]
  SETTABLEKS R6 R5 K9 ["title"]
  GETTABLEKS R7 R0 K13 ["_visualizationModeCategory"]
  GETTABLEKS R6 R7 K16 ["Enabled"]
  SETTABLEKS R6 R5 K10 ["enabled"]
  GETIMPORT R7 K19 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K20 ["UnixTimestamp"]
  SETTABLEKS R6 R5 K11 ["lastUpdateTimeUnixTimeStamp"]
  CALL R4 1 -1
  NAMECALL R2 R0 K21 ["_setState"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_visualizationModeTrackers"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  NAMECALL R8 R7 K1 ["getState"]
  CALL R8 1 1
  JUMPIFEQKNIL R8 [+9]
  GETTABLEKS R9 R8 K2 ["name"]
  JUMPIFNOTEQ R9 R1 [+5]
  MOVE R11 R2
  NAMECALL R9 R7 K3 ["updateVisualizationModeIsEnabled"]
  CALL R9 2 0
  FORGLOOP R3 2 [-14]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_visualizationModeCategory"]
  SETTABLEKS R1 R2 K1 ["Enabled"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_queueUpdateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R0 K2 [table.find]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["_visualizationModeTrackers"]
  GETUPVAL R2 1
  CALL R0 2 1
  JUMPIFNOT R0 [+11]
  GETIMPORT R1 K5 [table.remove]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["_visualizationModeTrackers"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K6 ["_queueUpdateState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  LOADK R4 K0 ["VisualizationMode"]
  NAMECALL R2 R1 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["new"]
  MOVE R6 R1
  CALL R5 1 -1
  NAMECALL R3 R2 K3 ["add"]
  CALL R3 -1 1
  GETTABLEKS R5 R0 K4 ["_visualizationModeTrackers"]
  FASTCALL2 TABLE_INSERT R5 R3 [+4]
  MOVE R6 R3
  GETIMPORT R4 K7 [table.insert]
  CALL R4 2 0
  GETTABLEKS R6 R3 K8 ["changed"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  NAMECALL R6 R6 K9 ["Connect"]
  CALL R6 2 -1
  NAMECALL R4 R2 K10 ["giveTask"]
  CALL R4 -1 0
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  NAMECALL R4 R2 K10 ["giveTask"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K11 ["_maid"]
  SETTABLE R2 R4 R1
  NAMECALL R4 R0 K12 ["_queueUpdateState"]
  CALL R4 1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_maid"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Maid"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Signal"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["VisualizationModeTracker"]
  CALL R4 1 1
  NEWTABLE R5 16 0
  SETTABLEKS R5 R5 K13 ["__index"]
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K15 ["new"]
  DUPCLOSURE R6 K16 [PROTO_1]
  SETTABLEKS R6 R5 K17 ["getState"]
  DUPCLOSURE R6 K18 [PROTO_2]
  SETTABLEKS R6 R5 K19 ["_setState"]
  DUPCLOSURE R6 K20 [PROTO_7]
  SETTABLEKS R6 R5 K21 ["_startTracking"]
  DUPCLOSURE R6 K22 [PROTO_9]
  SETTABLEKS R6 R5 K23 ["_queueUpdateState"]
  DUPCLOSURE R6 K24 [PROTO_10]
  SETTABLEKS R6 R5 K25 ["_updateState"]
  DUPCLOSURE R6 K26 [PROTO_11]
  SETTABLEKS R6 R5 K27 ["updateVisualizationModeIsEnabled"]
  DUPCLOSURE R6 K28 [PROTO_12]
  SETTABLEKS R6 R5 K29 ["setIsCategoryEnabled"]
  DUPCLOSURE R6 K30 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K31 ["_handleChildAdded"]
  DUPCLOSURE R6 K32 [PROTO_16]
  SETTABLEKS R6 R5 K33 ["destroy"]
  RETURN R5 1
