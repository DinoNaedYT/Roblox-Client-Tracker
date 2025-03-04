PROTO_0:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["PickFileWithPrompt"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["PickFileWithPrompt"]
  CALL R2 1 1
  MOVE R1 R2
  NAMECALL R2 R0 K1 ["getState"]
  CALL R2 1 1
  JUMPIFNOT R1 [+39]
  JUMPIFEQKS R1 K2 [""] [+38]
  GETUPVAL R3 3
  GETUPVAL R4 4
  SETTABLE R1 R3 R4
  GETTABLEKS R4 R2 K3 ["Preview"]
  GETTABLEKS R3 R4 K4 ["importTree"]
  GETUPVAL R4 5
  MOVE R5 R3
  CALL R4 1 1
  GETUPVAL R7 6
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 7
  NEWTABLE R8 1 0
  GETUPVAL R9 3
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K6 ["ShouldImport"]
  SETTABLE R10 R8 R9
  CALL R7 1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 8
  GETUPVAL R8 3
  NAMECALL R8 R8 K7 ["GetPreview"]
  CALL R8 1 -1
  CALL R7 -1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utility"]
  GETTABLEKS R2 R3 K8 ["GetErrorChecked"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["SetErrorNodeChecked"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Actions"]
  GETTABLEKS R4 R5 K11 ["SetTreeChecked"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Thunks"]
  GETTABLEKS R5 R6 K13 ["UpdatePreviewInstance"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K14 ["Testing"]
  GETTABLEKS R6 R7 K15 ["UseServiceInterfaces"]
  CALL R5 1 1
  LOADNIL R6
  LOADNIL R7
  MOVE R8 R5
  CALL R8 0 1
  JUMPIFNOT R8 [+11]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K14 ["Testing"]
  GETTABLEKS R9 R10 K16 ["ServiceInterfaces"]
  CALL R8 1 1
  MOVE R6 R8
  JUMP [+7]
  GETIMPORT R8 K18 [game]
  LOADK R10 K19 ["AssetImportService"]
  NAMECALL R8 R8 K20 ["GetService"]
  CALL R8 2 1
  MOVE R7 R8
  NEWCLOSURE R8 P0
  CAPTURE VAL R5
  CAPTURE REF R6
  CAPTURE REF R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CLOSEUPVALS R6
  RETURN R8 1
