PROTO_0:
  JUMPIFEQKS R3 K0 [""] [+2]
  JUMP [+1]
  LOADNIL R3
  DUPTABLE R4 K5 [{"id", "text", "defaultShortcut", "allowBinding"}]
  SETTABLEKS R2 R4 K1 ["id"]
  LOADK R7 K6 ["Actions"]
  MOVE R8 R2
  NAMECALL R5 R1 K7 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["text"]
  SETTABLEKS R3 R4 K3 ["defaultShortcut"]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["allowBinding"]
  RETURN R4 1

PROTO_1:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  GETUPVAL R4 0
  CALL R3 1 3
  FORGPREP_NEXT R3
  MOVE R9 R7
  JUMPIFEQKS R9 K2 [""] [+2]
  JUMP [+1]
  LOADNIL R9
  DUPTABLE R8 K7 [{"id", "text", "defaultShortcut", "allowBinding"}]
  SETTABLEKS R6 R8 K3 ["id"]
  LOADK R12 K8 ["Actions"]
  MOVE R13 R6
  NAMECALL R10 R1 K9 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R8 K4 ["text"]
  SETTABLEKS R9 R8 K5 ["defaultShortcut"]
  LOADB R10 0
  SETTABLEKS R10 R8 K6 ["allowBinding"]
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-22]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Undo", "Redo"}]
  LOADK R1 K3 ["Ctrl+Z"]
  SETTABLEKS R1 R0 K0 ["Undo"]
  LOADK R1 K4 ["Ctrl+Y"]
  SETTABLEKS R1 R0 K1 ["Redo"]
  DUPCLOSURE R1 K5 [PROTO_0]
  DUPCLOSURE R2 K6 [PROTO_1]
  CAPTURE VAL R0
  RETURN R2 1
