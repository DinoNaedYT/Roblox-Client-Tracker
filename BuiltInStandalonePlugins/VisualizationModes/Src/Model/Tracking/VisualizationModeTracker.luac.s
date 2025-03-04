PROTO_0:
  LOADB R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["Instance"] [+5]
  LOADK R4 K3 ["VisualizationMode"]
  NAMECALL R2 R0 K4 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["Bad visualizationMode"]
  GETIMPORT R1 K7 [assert]
  CALL R1 2 0
  NEWTABLE R2 4 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K9 [setmetatable]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K11 ["_maid"]
  SETTABLEKS R0 R1 K12 ["_visualizationMode"]
  LOADNIL R2
  SETTABLEKS R2 R1 K13 ["_state"]
  GETTABLEKS R2 R1 K11 ["_maid"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["new"]
  CALL R4 0 -1
  NAMECALL R2 R2 K14 ["add"]
  CALL R2 -1 1
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
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_updateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_updateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_updateState"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_visualizationMode"]
  LOADK R5 K2 ["Name"]
  NAMECALL R3 R3 K3 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K5 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_visualizationMode"]
  LOADK R5 K6 ["Title"]
  NAMECALL R3 R3 K3 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K5 ["giveTask"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_maid"]
  GETTABLEKS R3 R0 K1 ["_visualizationMode"]
  LOADK R5 K7 ["Enabled"]
  NAMECALL R3 R3 K3 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 -1
  NAMECALL R1 R1 K5 ["giveTask"]
  CALL R1 -1 0
  NAMECALL R1 R0 K8 ["_updateState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_visualizationMode"]
  SETTABLEKS R1 R2 K1 ["Enabled"]
  RETURN R0 0

PROTO_8:
  GETIMPORT R3 K2 [table.freeze]
  DUPTABLE R4 K6 [{"name", "title", "enabled"}]
  GETTABLEKS R6 R0 K7 ["_visualizationMode"]
  GETTABLEKS R5 R6 K8 ["Name"]
  SETTABLEKS R5 R4 K3 ["name"]
  GETTABLEKS R6 R0 K7 ["_visualizationMode"]
  GETTABLEKS R5 R6 K9 ["Title"]
  SETTABLEKS R5 R4 K4 ["title"]
  GETTABLEKS R6 R0 K7 ["_visualizationMode"]
  GETTABLEKS R5 R6 K10 ["Enabled"]
  SETTABLEKS R5 R4 K5 ["enabled"]
  CALL R3 1 -1
  NAMECALL R1 R0 K11 ["_setState"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
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
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Maid"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["Signal"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K11 ["__index"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K13 ["new"]
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["getState"]
  DUPCLOSURE R5 K16 [PROTO_2]
  SETTABLEKS R5 R4 K17 ["_setState"]
  DUPCLOSURE R5 K18 [PROTO_6]
  SETTABLEKS R5 R4 K19 ["_startTracking"]
  DUPCLOSURE R5 K20 [PROTO_7]
  SETTABLEKS R5 R4 K21 ["updateVisualizationModeIsEnabled"]
  DUPCLOSURE R5 K22 [PROTO_8]
  SETTABLEKS R5 R4 K23 ["_updateState"]
  DUPCLOSURE R5 K24 [PROTO_9]
  SETTABLEKS R5 R4 K25 ["destroy"]
  RETURN R4 1
