PROTO_0:
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R1 R0 K1 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["Status"]
  GETTABLEKS R2 R3 K3 ["AnimationFromVideoErroredOut"]
  JUMPIF R2 [+16]
  GETTABLEKS R4 R1 K2 ["Status"]
  GETTABLEKS R3 R4 K4 ["AnimationFromVideoUploadStartTime"]
  MOVE R4 R3
  JUMPIFNOT R4 [+4]
  GETIMPORT R5 K7 [os.clock]
  CALL R5 0 1
  SUB R4 R5 R3
  GETUPVAL R5 1
  LOADK R7 K8 ["onAnimationEditorImportVideoUploadCancel"]
  MOVE R8 R4
  NAMECALL R5 R5 K9 ["report"]
  CALL R5 3 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetCreatingAnimationFromVideo"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1
