PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ClearTerrainSelectionHack"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Transform"]
  GETTABLEKS R2 R3 K1 ["Position"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Size"]
  NAMECALL R0 R0 K3 ["SetTerrainSelectionHack"]
  CALL R0 3 0
  DUPCLOSURE R0 K4 [PROTO_0]
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Tool"]
  GETTABLEKS R3 R0 K1 ["Value"]
  GETTABLEKS R4 R0 K2 ["Save"]
  GETTABLEKS R6 R0 K3 ["Schema"]
  GETTABLEKS R5 R6 K4 ["Rotation"]
  CALL R1 4 3
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K0 ["Tool"]
  GETTABLEKS R6 R0 K1 ["Value"]
  MOVE R7 R2
  GETTABLEKS R9 R0 K3 ["Schema"]
  GETTABLEKS R8 R9 K5 ["Wireframe"]
  CALL R4 4 1
  GETUPVAL R5 2
  CALL R5 0 1
  GETUPVAL R6 3
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  NEWTABLE R8 0 3
  GETTABLEKS R9 R0 K0 ["Tool"]
  GETTABLEKS R10 R2 K6 ["Size"]
  GETTABLEKS R12 R2 K7 ["Transform"]
  GETTABLEKS R11 R12 K8 ["Position"]
  SETLIST R8 R9 3 [1]
  CALL R6 2 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R7 6
  NEWTABLE R8 0 0
  DUPTABLE R9 K12 [{"Dragger", "Region"}]
  GETTABLEKS R12 R1 K13 ["DraggerContext"]
  GETTABLEKS R11 R12 K14 ["Mock"]
  JUMPIF R11 [+7]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 7
  MOVE R12 R1
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K10 ["Dragger"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K22 [{"Adornee", "AlwaysOnTop", "Color", "LineThickness", "Lines", "Scale", "Size", "Transform", "Transparency", "Wireframe"}]
  SETTABLEKS R5 R12 K15 ["Adornee"]
  LOADB R13 1
  SETTABLEKS R13 R12 K16 ["AlwaysOnTop"]
  GETTABLEKS R14 R0 K3 ["Schema"]
  GETTABLEKS R13 R14 K17 ["Color"]
  JUMPIF R13 [+6]
  GETIMPORT R13 K25 [Color3.new]
  LOADN R14 1
  LOADN R15 1
  LOADN R16 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K17 ["Color"]
  LOADK R13 K26 [0.1]
  SETTABLEKS R13 R12 K18 ["LineThickness"]
  SETTABLEKS R4 R12 K19 ["Lines"]
  SETTABLEKS R3 R12 K20 ["Scale"]
  GETTABLEKS R13 R2 K6 ["Size"]
  SETTABLEKS R13 R12 K6 ["Size"]
  GETTABLEKS R13 R2 K7 ["Transform"]
  SETTABLEKS R13 R12 K7 ["Transform"]
  LOADK R13 K27 [0.9]
  SETTABLEKS R13 R12 K21 ["Transparency"]
  GETTABLEKS R14 R0 K3 ["Schema"]
  GETTABLEKS R13 R14 K5 ["Wireframe"]
  SETTABLEKS R13 R12 K5 ["Wireframe"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Region"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K4 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["useEffect"]
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R5 R6 K12 ["Pane"]
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K13 ["DraggerTools"]
  GETTABLEKS R7 R8 K14 ["DraggerToolComponent"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Components"]
  GETTABLEKS R9 R10 K17 ["Gizmos"]
  GETTABLEKS R8 R9 K18 ["Box"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K19 ["Hooks"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R8 K20 ["useLines"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R11 R8 K21 ["useRegion"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R12 R8 K22 ["useTerrain"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K23 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K25 [game]
  LOADK R15 K26 ["Selection"]
  NAMECALL R13 R13 K27 ["GetService"]
  CALL R13 2 1
  DUPCLOSURE R14 K28 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R14 1
