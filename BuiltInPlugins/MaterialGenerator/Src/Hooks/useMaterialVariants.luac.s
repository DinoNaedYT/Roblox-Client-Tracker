PROTO_0:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  MOVE R6 R4
  CALL R5 1 1
  JUMPIFEQKS R5 K0 ["Uploaded"] [+4]
  LOADNIL R6
  SETTABLEKS R6 R4 K1 ["Parent"]
  FORGLOOP R0 2 [-9]
  GETUPVAL R0 2
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R0 2
  NAMECALL R0 R0 K2 ["Destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  LOADNIL R1
  LENGTH R2 R0
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+25]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["MATERIALS_FOLDER_NAME"]
  GETUPVAL R3 3
  MOVE R5 R2
  LOADB R6 1
  NAMECALL R3 R3 K1 ["FindFirstChild"]
  CALL R3 3 1
  MOVE R1 R3
  JUMPIF R1 [+13]
  GETIMPORT R3 K4 [Instance.new]
  LOADK R4 K5 ["Folder"]
  CALL R3 1 1
  MOVE R1 R3
  LOADB R3 0
  SETTABLEKS R3 R1 K6 ["Archivable"]
  GETUPVAL R3 3
  SETTABLEKS R3 R1 K7 ["Parent"]
  SETTABLEKS R2 R1 K8 ["Name"]
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 4
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K9 ["Uploaded"] [+5]
  GETUPVAL R8 3
  SETTABLEKS R8 R6 K7 ["Parent"]
  JUMP [+5]
  MOVE R8 R1
  JUMPIF R8 [+1]
  GETUPVAL R8 3
  SETTABLEKS R8 R6 K7 ["Parent"]
  FORGLOOP R2 2 [-15]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE REF R1
  CLOSEUPVALS R1
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETTABLEKS R1 R0 K1 ["promptGroups"]
  GETTABLEKS R2 R0 K2 ["getMaterialStatus"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  NEWTABLE R5 0 2
  MOVE R6 R1
  MOVE R7 R2
  SETLIST R5 R6 2 [1]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MaterialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["MaterialGenerator"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K12 ["Src"]
  GETTABLEKS R3 R4 K13 ["Util"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R3 K14 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R3 K15 ["GeneratedMaterialsContext"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R3 K16 ["getAllMaterialVariants"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R7 1
