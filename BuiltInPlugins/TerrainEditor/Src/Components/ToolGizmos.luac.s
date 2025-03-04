PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+4]
  GETUPVAL R1 1
  LENGTH R0 R1
  JUMPIFEQKN R0 K0 [0] [+11]
  GETUPVAL R0 2
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 3
  NAMECALL R0 R0 K1 ["enable"]
  CALL R0 1 0
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K2 ["disable"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [table.clone]
  MOVE R9 R7
  CALL R8 1 1
  SETTABLE R8 R1 R6
  MOVE R8 R0
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  NEWTABLE R13 0 0
  SETTABLE R13 R2 R11
  MOVE R13 R12
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  GETTABLEKS R20 R7 K3 ["Value"]
  GETTABLE R19 R20 R11
  GETTABLE R18 R19 R16
  JUMPIFEQ R18 R17 [+3]
  GETTABLE R18 R2 R11
  SETTABLE R17 R18 R16
  GETTABLE R20 R1 R6
  GETTABLEKS R19 R20 K3 ["Value"]
  GETTABLE R18 R19 R11
  SETTABLE R17 R18 R16
  FORGLOOP R13 2 [-14]
  FORGLOOP R8 2 [-23]
  FORGLOOP R3 2 [-34]
  GETUPVAL R3 1
  MOVE R4 R1
  MOVE R5 R0
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  LOADB R4 1
  CALL R3 1 2
  GETUPVAL R5 3
  MOVE R6 R1
  MOVE R7 R3
  CALL R5 2 4
  GETUPVAL R9 4
  MOVE R10 R1
  MOVE R11 R3
  CALL R9 2 1
  GETUPVAL R10 5
  GETTABLEKS R11 R2 K1 ["Activation"]
  MOVE R12 R4
  NEWTABLE R13 0 0
  CALL R10 3 0
  GETUPVAL R10 6
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  NEWTABLE R12 0 3
  MOVE R13 R7
  MOVE R14 R3
  MOVE R15 R5
  SETLIST R12 R13 3 [1]
  CALL R10 2 0
  JUMPIF R3 [+9]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 9
  MOVE R12 R0
  NEWTABLE R13 0 0
  CALL R10 3 -1
  RETURN R10 -1
  NEWTABLE R10 0 0
  MOVE R11 R5
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETUPVAL R17 10
  GETTABLEKS R19 R15 K3 ["Schema"]
  GETTABLEKS R18 R19 K4 ["Type"]
  GETTABLE R16 R17 R18
  JUMPIF R16 [+12]
  GETIMPORT R17 K6 [error]
  LOADK R19 K7 ["No renderer found for gizmo schema %*"]
  GETTABLEKS R22 R15 K3 ["Schema"]
  GETTABLEKS R21 R22 K4 ["Type"]
  NAMECALL R19 R19 K8 ["format"]
  CALL R19 2 1
  MOVE R18 R19
  CALL R17 1 0
  GETTABLEKS R17 R15 K9 ["Id"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K2 ["createElement"]
  MOVE R19 R16
  GETUPVAL R21 11
  GETTABLEKS R20 R21 K10 ["join"]
  MOVE R21 R15
  DUPTABLE R22 K14 [{"Tool", "FromSelf", "Save"}]
  GETTABLEKS R23 R7 K15 ["_name"]
  SETTABLEKS R23 R22 K11 ["Tool"]
  SETTABLEKS R8 R22 K12 ["FromSelf"]
  NEWCLOSURE R23 P1
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R23 R22 K13 ["Save"]
  CALL R20 2 -1
  CALL R18 -1 1
  SETTABLE R18 R10 R17
  FORGLOOP R11 2 [-45]
  JUMPIFNOT R9 [+12]
  GETUPVAL R12 12
  GETTABLEKS R11 R12 K16 ["Note"]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 13
  DUPTABLE R14 K18 [{"Key"}]
  SETTABLEKS R9 R14 K17 ["Key"]
  CALL R12 2 1
  SETTABLE R12 R10 R11
  GETUPVAL R12 8
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 9
  MOVE R13 R0
  MOVE R14 R10
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useState"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Hooks"]
  GETTABLEKS R7 R8 K14 ["useEventConnection"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Hooks"]
  GETTABLEKS R8 R9 K15 ["useGizmos"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Hooks"]
  GETTABLEKS R9 R10 K16 ["useNote"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["Gizmos"]
  GETTABLEKS R10 R11 K19 ["Brush"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K18 ["Gizmos"]
  GETTABLEKS R11 R12 K20 ["Placement"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K18 ["Gizmos"]
  GETTABLEKS R12 R13 K21 ["Plane"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K12 ["Src"]
  GETTABLEKS R15 R16 K17 ["Components"]
  GETTABLEKS R14 R15 K18 ["Gizmos"]
  GETTABLEKS R13 R14 K22 ["Region"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K17 ["Components"]
  GETTABLEKS R15 R16 K18 ["Gizmos"]
  GETTABLEKS R14 R15 K23 ["Note"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K24 ["Controllers"]
  GETTABLEKS R15 R16 K25 ["PluginController"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K24 ["Controllers"]
  GETTABLEKS R16 R17 K26 ["ToolController"]
  CALL R15 1 1
  GETTABLEKS R16 R3 K27 ["UI"]
  GETTABLEKS R17 R16 K28 ["Pane"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R0 K12 ["Src"]
  GETTABLEKS R19 R20 K29 ["Types"]
  CALL R18 1 1
  GETTABLEKS R19 R18 K30 ["Gizmo"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K12 ["Src"]
  GETTABLEKS R22 R23 K31 ["Flags"]
  GETTABLEKS R21 R22 K32 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K12 ["Src"]
  GETTABLEKS R23 R24 K31 ["Flags"]
  GETTABLEKS R22 R23 K33 ["getFFlagTerrainEditorErrorHandling"]
  CALL R21 1 1
  NEWTABLE R22 4 0
  GETTABLEKS R23 R19 K19 ["Brush"]
  SETTABLE R9 R22 R23
  GETTABLEKS R23 R19 K20 ["Placement"]
  MOVE R25 R20
  CALL R25 0 1
  JUMPIFNOT R25 [+2]
  MOVE R24 R10
  JUMP [+1]
  LOADNIL R24
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R19 K21 ["Plane"]
  SETTABLE R11 R22 R23
  GETTABLEKS R23 R19 K22 ["Region"]
  SETTABLE R12 R22 R23
  DUPCLOSURE R23 K34 [PROTO_2]
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R21
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R13
  RETURN R23 1
