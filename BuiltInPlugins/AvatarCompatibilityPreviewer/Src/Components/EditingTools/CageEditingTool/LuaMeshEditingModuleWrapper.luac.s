PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getOuterCageContext"]
  CALL R0 1 1
  JUMPIFNOT R0 [+25]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+23]
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K2 ["WrapTarget"]
  NAMECALL R6 R5 K3 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+11]
  GETTABLEKS R6 R5 K4 ["Name"]
  GETIMPORT R9 K8 [Enum.CageType.Outer]
  NAMECALL R11 R0 K9 ["getVertexData"]
  CALL R11 1 1
  GETTABLE R10 R11 R6
  NAMECALL R7 R5 K10 ["ModifyVertices"]
  CALL R7 3 0
  FORGLOOP R1 2 [-17]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["getCurrentTool"]
  CALL R0 1 1
  NAMECALL R1 R0 K2 ["cleanup"]
  CALL R1 1 0
  GETUPVAL R1 2
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  GETUPVAL R1 1
  SETTABLEKS R0 R1 K1 ["current"]
  GETIMPORT R3 K5 [Enum.CageType.Outer]
  GETUPVAL R4 2
  NAMECALL R1 R0 K6 ["initFromCageMesh"]
  CALL R1 3 0
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K7 ["setOuterCageContext"]
  CALL R1 2 0
  GETUPVAL R1 3
  LOADK R3 K8 ["BrushTool"]
  NAMECALL R1 R1 K9 ["setCurrentTool"]
  CALL R1 2 0
  GETUPVAL R1 3
  GETIMPORT R3 K5 [Enum.CageType.Outer]
  NAMECALL R1 R1 K10 ["changeEditingCage"]
  CALL R1 2 0
  GETUPVAL R1 4
  GETUPVAL R2 3
  NAMECALL R2 R2 K11 ["getCurrentTool"]
  CALL R2 1 -1
  CALL R1 -1 0
  NAMECALL R1 R0 K12 ["getMeshDataChangedSignal"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K13 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["setSymmetryMap"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K3 ["setSymmetryMap"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Symmetrical"]
  JUMPIF R0 [+2]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["No outerCageContext"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETIMPORT R1 K7 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 1
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getCurrentTool"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K1 ["undo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getCurrentTool"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K1 ["redo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["Mannequin"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 1 1
  GETUPVAL R4 2
  NAMECALL R4 R4 K0 ["use"]
  CALL R4 1 1
  NAMECALL R4 R4 K2 ["get"]
  CALL R4 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["useRef"]
  LOADNIL R8
  CALL R7 1 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["useEffect"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R6
  NEWTABLE R10 0 1
  MOVE R11 R2
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["useEffect"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K6 ["Symmetrical"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["useCallback"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R1
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K7 ["useCallback"]
  NEWCLOSURE R10 P3
  CAPTURE VAL R1
  NEWTABLE R11 0 0
  CALL R9 2 1
  GETUPVAL R10 6
  MOVE R11 R8
  MOVE R12 R9
  CALL R10 2 0
  MOVE R10 R5
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K14 [{"Mouse", "Plugin", "VertexToolBase", "Radius", "Falloff"}]
  SETTABLEKS R3 R12 K9 ["Mouse"]
  SETTABLEKS R4 R12 K10 ["Plugin"]
  SETTABLEKS R5 R12 K11 ["VertexToolBase"]
  GETTABLEKS R13 R0 K12 ["Radius"]
  SETTABLEKS R13 R12 K12 ["Radius"]
  GETTABLEKS R13 R0 K13 ["Falloff"]
  SETTABLEKS R13 R12 K13 ["Falloff"]
  CALL R10 2 1
  RETURN R10 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["LuaMeshEditingModule"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["AvatarToolsShared"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K4 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K4 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K14 ["EditingTools"]
  GETTABLEKS R7 R8 K15 ["createSymmetryMapAsync"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K16 ["Hooks"]
  GETTABLEKS R8 R9 K17 ["useUndoRedoActions"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R10 R1 K18 ["MeshEditingContexts"]
  GETTABLEKS R9 R10 K19 ["CageEditingContext"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R1 K13 ["Components"]
  GETTABLEKS R10 R11 K20 ["FreeformMeshEditingComponent"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K21 ["ContextServices"]
  GETTABLEKS R11 R10 K22 ["Mouse"]
  GETTABLEKS R12 R10 K23 ["Plugin"]
  GETTABLEKS R14 R2 K24 ["Contexts"]
  GETTABLEKS R13 R14 K25 ["LuaMeshEditingModuleContext"]
  DUPCLOSURE R14 K26 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R14 1
