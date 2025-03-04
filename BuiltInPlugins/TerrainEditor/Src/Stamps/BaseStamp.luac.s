PROTO_0:
  DUPTABLE R2 K1 [{"_terrainType"}]
  SETTABLEKS R1 R2 K0 ["_terrainType"]
  FASTCALL2 SETMETATABLE R2 R0 [+5]
  MOVE R4 R2
  MOVE R5 R0
  GETIMPORT R3 K3 [setmetatable]
  CALL R3 2 0
  SETTABLEKS R0 R0 K4 ["__index"]
  RETURN R2 1

PROTO_1:
  SETTABLEKS R2 R0 K0 ["_services"]
  SETTABLEKS R1 R0 K1 ["_payload"]
  NAMECALL R3 R0 K2 ["setupRegion"]
  CALL R3 1 0
  RETURN R0 1

PROTO_2:
  JUMPIFNOT R2 [+51]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["OperationSource"]
  GETTABLE R3 R4 R5
  JUMPIFNOTEQKS R3 K2 ["Gizmo"] [+42]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Transform"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K4 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Transform"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+22]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K4 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Size"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K4 ["_payload"]
  JUMPIFNOT R2 [+39]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Transform"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K6 ["_region"]
  NAMECALL R3 R0 K7 ["revertRegion"]
  CALL R3 2 0
  NAMECALL R3 R0 K8 ["setupRegion"]
  CALL R3 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["BlendingEdge"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+4]
  MOVE R6 R3
  NAMECALL R4 R0 K10 ["updateBlendingFactorMap"]
  CALL R4 2 0
  NAMECALL R3 R0 K11 ["generateStamp"]
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_terrainType"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Transform"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K3 ["Position"]
  GETTABLEKS R5 R0 K0 ["_payload"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["BuildSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  DIVK R2 R3 K4 [2]
  GETIMPORT R3 K8 [Region3.new]
  SUB R4 R1 R2
  ADD R5 R1 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_region"]
  GETTABLEKS R3 R0 K9 ["_region"]
  GETUPVAL R5 2
  NAMECALL R3 R3 K10 ["ExpandToGrid"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_region"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K11 ["X"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K12 ["_sliceX"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K13 ["Y"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K14 ["_sliceY"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K15 ["Z"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K16 ["_sliceZ"]
  GETTABLEKS R5 R0 K9 ["_region"]
  NAMECALL R3 R0 K17 ["cacheRegion"]
  CALL R3 2 0
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["BlendingEdge"]
  GETTABLE R5 R6 R7
  NAMECALL R3 R0 K19 ["updateBlendingFactorMap"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R5 R0 K0 ["_sliceZ"]
  SUBK R6 R1 K1 [1]
  MUL R4 R5 R6
  ADD R3 R4 R2
  RETURN R3 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_region"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R2 R0 K0 ["_region"]
  GETTABLEKS R1 R2 K1 ["Size"]
  GETIMPORT R2 K4 [Vector3.zero]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  GETTABLEKS R4 R0 K5 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["BlendingEdge"]
  GETTABLE R2 R3 R4
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  SETTABLEKS R1 R0 K8 ["_addBlending"]
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K12 ["TG_GenerateNoise"]
  CALL R1 1 0
  NAMECALL R1 R0 K13 ["generateNoiseMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K16 ["TG_GenerateHeight"]
  CALL R1 1 0
  NAMECALL R1 R0 K17 ["generateHeightMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K18 ["TG_BlendHeight"]
  CALL R1 1 0
  NAMECALL R1 R0 K19 ["blendHeightMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K20 ["TG_GenerateOccupancyMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K21 ["generateOccupancyMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K22 ["TG_GenerateSlopeMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K23 ["generateSlopeMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K24 ["TG_GenerateMaterial"]
  CALL R1 1 0
  NAMECALL R1 R0 K25 ["generateMaterialMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K26 ["TG_BlendMaterialMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K27 ["blendMaterialMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K28 ["TG_PostProcessing"]
  CALL R1 1 0
  NAMECALL R1 R0 K29 ["postProcessing"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K30 ["debugDraw"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K31 ["_services"]
  GETTABLEKS R1 R2 K32 ["Terrain"]
  GETTABLEKS R3 R0 K0 ["_region"]
  GETUPVAL R4 3
  GETTABLEKS R5 R0 K33 ["_materialMap"]
  GETTABLEKS R6 R0 K34 ["_occupancyMap"]
  NAMECALL R1 R1 K35 ["WriteVoxels"]
  CALL R1 5 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_noiseMap"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseStrength"]
  GETTABLE R1 R2 R3
  DIVK R2 R1 K3 [2]
  GETTABLEKS R4 R0 K4 ["_sliceY"]
  LOADN R6 1
  SUB R5 R6 R2
  MUL R3 R4 R5
  GETIMPORT R4 K7 [table.create]
  GETTABLEKS R6 R0 K8 ["_sliceX"]
  GETTABLEKS R7 R0 K9 ["_sliceZ"]
  MUL R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R0 K10 ["_heightMap"]
  LOADN R6 1
  GETTABLEKS R4 R0 K8 ["_sliceX"]
  LOADN R5 1
  FORNPREP R4
  LOADN R9 1
  GETTABLEKS R7 R0 K9 ["_sliceZ"]
  LOADN R8 1
  FORNPREP R7
  MOVE R12 R6
  MOVE R13 R9
  NAMECALL R10 R0 K11 ["getIndex"]
  CALL R10 3 1
  GETTABLEKS R12 R0 K12 ["_noiseMap"]
  GETTABLE R11 R12 R10
  GETTABLEKS R14 R0 K4 ["_sliceY"]
  MUL R13 R14 R2
  MUL R12 R13 R11
  ADD R13 R3 R12
  GETTABLEKS R14 R0 K10 ["_heightMap"]
  SETTABLE R13 R14 R10
  FORNLOOP R7
  FORNLOOP R4
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_slopeMap"]
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["_minNeighborHeight"]
  NEWTABLE R1 0 8
  NEWTABLE R2 0 2
  LOADN R3 255
  LOADN R4 0
  SETLIST R2 R3 2 [1]
  NEWTABLE R3 0 2
  LOADN R4 1
  LOADN R5 0
  SETLIST R3 R4 2 [1]
  NEWTABLE R4 0 2
  LOADN R5 0
  LOADN R6 255
  SETLIST R4 R5 2 [1]
  NEWTABLE R5 0 2
  LOADN R6 0
  LOADN R7 1
  SETLIST R5 R6 2 [1]
  NEWTABLE R6 0 2
  LOADN R7 255
  LOADN R8 255
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADN R8 255
  LOADN R9 1
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADN R9 1
  LOADN R10 255
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADN R10 1
  LOADN R11 1
  SETLIST R9 R10 2 [1]
  SETLIST R1 R2 8 [1]
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K7 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K8 ["_heightMap"]
  GETTABLE R9 R10 R8
  FASTCALL1 MATH_FLOOR R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K11 [math.floor]
  CALL R10 1 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R0 K6 ["_minNeighborHeight"]
  SETTABLE R10 R17 R8
  MOVE R17 R1
  LOADNIL R18
  LOADNIL R19
  FORGPREP R17
  GETTABLEN R23 R21 1
  ADD R22 R4 R23
  GETTABLEN R24 R21 2
  ADD R23 R7 R24
  LOADB R24 0
  LOADN R25 0
  JUMPIFNOTLT R25 R22 [+16]
  LOADB R24 0
  GETTABLEKS R25 R0 K3 ["_sliceX"]
  JUMPIFNOTLE R22 R25 [+11]
  LOADB R24 0
  LOADN R25 0
  JUMPIFNOTLT R25 R23 [+7]
  GETTABLEKS R25 R0 K4 ["_sliceZ"]
  JUMPIFLE R23 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  JUMPIFNOT R24 [+9]
  GETTABLEKS R26 R0 K8 ["_heightMap"]
  MOVE R29 R22
  MOVE R30 R23
  NAMECALL R27 R0 K7 ["getIndex"]
  CALL R27 3 1
  GETTABLE R25 R26 R27
  JUMP [+1]
  LOADN R25 0
  FASTCALL1 MATH_FLOOR R25 [+3]
  MOVE R27 R25
  GETIMPORT R26 K11 [math.floor]
  CALL R26 1 1
  GETTABLEKS R27 R0 K6 ["_minNeighborHeight"]
  GETTABLEKS R30 R0 K6 ["_minNeighborHeight"]
  GETTABLE R29 R30 R8
  FASTCALL2 MATH_MIN R29 R26 [+4]
  MOVE R30 R26
  GETIMPORT R28 K13 [math.min]
  CALL R28 2 1
  SETTABLE R28 R27 R8
  JUMPIFNOT R24 [+29]
  GETTABLEN R27 R21 1
  JUMPIFNOTEQKN R27 K14 [0] [+9]
  SUB R28 R25 R9
  FASTCALL1 MATH_ABS R28 [+2]
  GETIMPORT R27 K16 [math.abs]
  CALL R27 1 1
  ADD R11 R11 R27
  ADDK R12 R12 K17 [1]
  JUMP [+18]
  GETTABLEN R27 R21 2
  JUMPIFNOTEQKN R27 K14 [0] [+9]
  SUB R28 R25 R9
  FASTCALL1 MATH_ABS R28 [+2]
  GETIMPORT R27 K16 [math.abs]
  CALL R27 1 1
  ADD R13 R13 R27
  ADDK R14 R14 K17 [1]
  JUMP [+7]
  SUB R28 R25 R9
  FASTCALL1 MATH_ABS R28 [+2]
  GETIMPORT R27 K16 [math.abs]
  CALL R27 1 1
  ADD R15 R15 R27
  ADDK R16 R16 K17 [1]
  FORGLOOP R17 2 [-82]
  JUMPIFNOTEQKN R12 K14 [0] [+3]
  LOADN R11 0
  JUMP [+1]
  DIV R11 R11 R12
  JUMPIFNOTEQKN R14 K14 [0] [+3]
  LOADN R13 0
  JUMP [+1]
  DIV R13 R13 R14
  JUMPIFNOTEQKN R16 K14 [0] [+3]
  LOADN R15 0
  JUMP [+1]
  DIV R15 R15 R16
  GETTABLEKS R17 R0 K5 ["_slopeMap"]
  MUL R23 R11 R11
  MUL R24 R13 R13
  ADD R22 R23 R24
  MUL R23 R15 R15
  ADD R21 R22 R23
  DIVK R20 R21 K18 [4]
  FASTCALL1 MATH_SQRT R20 [+2]
  GETIMPORT R19 K20 [math.sqrt]
  CALL R19 1 1
  FASTCALL1 MATH_ATAN R19 [+2]
  GETIMPORT R18 K22 [math.atan]
  CALL R18 1 1
  SETTABLE R18 R17 R8
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["_occupancyMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R4 R0 K4 ["_occupancyMap"]
  GETIMPORT R5 K2 [table.create]
  GETTABLEKS R6 R0 K5 ["_sliceY"]
  CALL R5 1 1
  SETTABLE R5 R4 R3
  LOADN R6 1
  GETTABLEKS R4 R0 K5 ["_sliceY"]
  LOADN R5 1
  FORNPREP R4
  GETTABLEKS R8 R0 K4 ["_occupancyMap"]
  GETTABLE R7 R8 R3
  GETIMPORT R8 K2 [table.create]
  GETTABLEKS R9 R0 K6 ["_sliceZ"]
  LOADN R10 0
  CALL R8 2 1
  SETTABLE R8 R7 R6
  FORNLOOP R4
  FORNLOOP R1
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K4 ["_occupancyMap"]
  GETTABLE R4 R5 R3
  LOADN R7 1
  GETTABLEKS R5 R0 K6 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R3
  MOVE R11 R7
  NAMECALL R8 R0 K7 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K8 ["_heightMap"]
  GETTABLE R9 R10 R8
  FASTCALL1 MATH_FLOOR R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K11 [math.floor]
  CALL R10 1 1
  LOADN R13 1
  MOVE R11 R10
  LOADN R12 1
  FORNPREP R11
  GETTABLE R14 R4 R13
  LOADN R15 1
  SETTABLE R15 R14 R7
  FORNLOOP R11
  ADDK R13 R10 K12 [1]
  GETTABLEKS R14 R0 K5 ["_sliceY"]
  FASTCALL2 MATH_MIN R13 R14 [+3]
  GETIMPORT R12 K14 [math.min]
  CALL R12 2 1
  GETTABLE R11 R4 R12
  SUB R12 R9 R10
  SETTABLE R12 R11 R7
  FORNLOOP R5
  FORNLOOP R1
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["MaterialLUT"]
  GETTABLE R1 R2 R3
  GETIMPORT R2 K5 [table.create]
  GETTABLEKS R3 R0 K6 ["_sliceX"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["_materialMap"]
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R5 R0 K7 ["_materialMap"]
  GETIMPORT R6 K5 [table.create]
  GETTABLEKS R7 R0 K8 ["_sliceY"]
  CALL R6 1 1
  SETTABLE R6 R5 R4
  LOADN R7 1
  GETTABLEKS R5 R0 K8 ["_sliceY"]
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R9 R0 K7 ["_materialMap"]
  GETTABLE R8 R9 R4
  GETIMPORT R9 K5 [table.create]
  GETTABLEKS R10 R0 K9 ["_sliceZ"]
  GETTABLEKS R11 R1 K10 ["fallbackMaterial"]
  CALL R9 2 1
  SETTABLE R9 R8 R7
  FORNLOOP R5
  FORNLOOP R2
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K7 ["_materialMap"]
  GETTABLE R5 R6 R4
  LOADN R8 1
  GETTABLEKS R6 R0 K9 ["_sliceZ"]
  LOADN R7 1
  FORNPREP R6
  MOVE R11 R4
  MOVE R12 R8
  NAMECALL R9 R0 K11 ["getIndex"]
  CALL R9 3 1
  LOADN R11 1
  GETTABLEKS R14 R0 K13 ["_minNeighborHeight"]
  GETTABLE R13 R14 R9
  SUBK R12 R13 K12 [1]
  FASTCALL2 MATH_MAX R11 R12 [+3]
  GETIMPORT R10 K16 [math.max]
  CALL R10 2 1
  GETTABLEKS R14 R0 K17 ["_heightMap"]
  GETTABLE R13 R14 R9
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K19 [math.ceil]
  CALL R12 1 1
  GETTABLEKS R13 R0 K8 ["_sliceY"]
  FASTCALL2 MATH_MIN R12 R13 [+3]
  GETIMPORT R11 K21 [math.min]
  CALL R11 2 1
  GETTABLEKS R15 R0 K22 ["_slopeMap"]
  GETTABLE R14 R15 R9
  NAMECALL R12 R1 K23 ["GetSlopeIndex"]
  CALL R12 2 1
  GETTABLEKS R13 R0 K24 ["_fillBottomPositions"]
  JUMPIFNOT R13 [+15]
  GETTABLEKS R14 R0 K24 ["_fillBottomPositions"]
  GETTABLE R13 R14 R9
  JUMPIFNOT R13 [+11]
  LOADN R15 1
  GETTABLEKS R13 R0 K8 ["_sliceY"]
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  GETTABLEKS R17 R1 K25 ["fillMaterial"]
  SETTABLE R17 R16 R8
  FORNLOOP R13
  JUMP [+14]
  MOVE R15 R10
  MOVE R13 R11
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  MOVE R19 R15
  GETTABLEKS R20 R0 K8 ["_sliceY"]
  MOVE R21 R12
  NAMECALL R17 R1 K26 ["GetValueByIndex"]
  CALL R17 4 1
  SETTABLE R17 R16 R8
  FORNLOOP R13
  FORNLOOP R6
  FORNLOOP R2
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["MaterialLUT"]
  GETTABLE R1 R2 R3
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K4 ["_materialMap"]
  GETTABLE R5 R6 R4
  LOADN R8 1
  GETTABLEKS R6 R0 K5 ["_sliceZ"]
  LOADN R7 1
  FORNPREP R6
  MOVE R11 R4
  MOVE R12 R8
  NAMECALL R9 R0 K6 ["getIndex"]
  CALL R9 3 1
  GETTABLEKS R12 R0 K8 ["_minNeighborHeight"]
  GETTABLE R11 R12 R9
  SUBK R10 R11 K7 [2]
  LOADN R11 1
  JUMPIFLT R10 R11 [+28]
  GETTABLEKS R14 R0 K9 ["_slopeMap"]
  GETTABLE R13 R14 R9
  NAMECALL R11 R1 K10 ["GetSlopeIndex"]
  CALL R11 2 1
  GETTABLEKS R12 R0 K11 ["_fillBottomPositions"]
  JUMPIFNOT R12 [+4]
  GETTABLEKS R13 R0 K11 ["_fillBottomPositions"]
  GETTABLE R12 R13 R9
  JUMPIF R12 [+14]
  LOADN R14 1
  MOVE R12 R10
  LOADN R13 1
  FORNPREP R12
  GETTABLE R15 R5 R14
  MOVE R18 R14
  GETTABLEKS R19 R0 K12 ["_sliceY"]
  MOVE R20 R11
  NAMECALL R16 R1 K13 ["GetValueByIndex"]
  CALL R16 4 1
  SETTABLE R16 R15 R8
  FORNLOOP R12
  FORNLOOP R6
  FORNLOOP R2
  GETTABLEKS R3 R0 K14 ["_services"]
  GETTABLEKS R2 R3 K15 ["Terrain"]
  GETTABLEKS R4 R0 K16 ["_region"]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K4 ["_materialMap"]
  GETTABLEKS R7 R0 K17 ["_occupancyMap"]
  NAMECALL R2 R2 K18 ["WriteVoxels"]
  CALL R2 5 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R4 R0 K3 ["_sliceX"]
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+33]
  DUPTABLE R2 K11 [{"CurveWidth", "Distance", "PreserveDistance", "PreserveRatio", "RoundCorner"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["CurveWidth"]
  LOADN R5 1
  SUB R4 R5 R1
  MULK R3 R4 K12 [0.9]
  SETTABLEKS R3 R2 K7 ["Distance"]
  LOADK R4 K13 [0.7]
  DIVK R5 R1 K14 [5]
  SUB R3 R4 R5
  SETTABLEKS R3 R2 K8 ["PreserveDistance"]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["PreserveRatio"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["RoundCorner"]
  GETUPVAL R3 0
  GETIMPORT R4 K17 [Vector2.new]
  GETTABLEKS R5 R0 K3 ["_sliceX"]
  GETTABLEKS R6 R0 K4 ["_sliceZ"]
  CALL R4 2 1
  MOVE R5 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_blendingFactorMap"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_heightMap"]
  LENGTH R1 R2
  LOADN R4 1
  MOVE R2 R1
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K0 ["_heightMap"]
  GETTABLE R5 R6 R4
  GETTABLEKS R7 R0 K1 ["_heightmapCache"]
  GETTABLE R6 R7 R4
  JUMPIFNOTLT R5 R6 [+10]
  MOVE R5 R6
  GETTABLEKS R7 R0 K0 ["_heightMap"]
  SETTABLE R6 R7 R4
  GETTABLEKS R7 R0 K2 ["_blendingFactorMap"]
  LOADN R8 1
  SETTABLE R8 R7 R4
  JUMP [+14]
  GETTABLEKS R7 R0 K3 ["_addBlending"]
  JUMPIFNOT R7 [+11]
  GETTABLEKS R8 R0 K2 ["_blendingFactorMap"]
  GETTABLE R7 R8 R4
  GETTABLEKS R8 R0 K0 ["_heightMap"]
  LOADN R12 1
  SUB R11 R12 R7
  MUL R10 R11 R5
  MUL R11 R7 R6
  ADD R9 R10 R11
  SETTABLE R9 R8 R4
  GETTABLEKS R7 R0 K0 ["_heightMap"]
  GETTABLEKS R10 R0 K0 ["_heightMap"]
  GETTABLE R9 R10 R4
  LOADN R10 0
  GETTABLEKS R11 R0 K4 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K7 [math.clamp]
  CALL R8 3 1
  SETTABLE R8 R7 R4
  FORNLOOP R2
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K3 [{"BlendingFactor", "EdgePosition", "Width"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["BlendingFactor"]
  LOADK R2 K4 [0.8]
  SETTABLEKS R2 R1 K1 ["EdgePosition"]
  LOADK R2 K5 [0.2]
  SETTABLEKS R2 R1 K2 ["Width"]
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K7 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K8 ["getIndex"]
  CALL R8 3 1
  LOADN R10 1
  GETTABLEKS R13 R0 K10 ["_minNeighborHeight"]
  GETTABLE R12 R13 R8
  SUBK R11 R12 K9 [1]
  FASTCALL2 MATH_MAX R10 R11 [+3]
  GETIMPORT R9 K13 [math.max]
  CALL R9 2 1
  GETTABLEKS R13 R0 K14 ["_heightMap"]
  GETTABLE R12 R13 R8
  FASTCALL1 MATH_CEIL R12 [+2]
  GETIMPORT R11 K16 [math.ceil]
  CALL R11 1 1
  GETTABLEKS R12 R0 K17 ["_sliceY"]
  FASTCALL2 MATH_MIN R11 R12 [+3]
  GETIMPORT R10 K19 [math.min]
  CALL R10 2 1
  GETTABLEKS R12 R0 K20 ["_blendingFactorMap"]
  GETTABLE R11 R12 R8
  SETTABLEKS R11 R1 K0 ["BlendingFactor"]
  MOVE R13 R9
  MOVE R11 R10
  LOADN R12 1
  FORNPREP R11
  GETTABLEKS R17 R0 K21 ["_materialMap"]
  GETTABLE R16 R17 R4
  GETTABLE R15 R16 R13
  GETTABLE R14 R15 R7
  GETTABLEKS R18 R0 K22 ["_materialCache"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R13
  GETTABLE R15 R16 R7
  GETIMPORT R16 K26 [Enum.Material.Air]
  JUMPIFEQ R15 R16 [+13]
  GETTABLEKS R18 R0 K21 ["_materialMap"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R13
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K27 ["Blend"]
  MOVE R18 R14
  MOVE R19 R15
  MOVE R20 R1
  CALL R17 3 1
  SETTABLE R17 R16 R7
  FORNLOOP R11
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_16:
  RETURN R0 0

PROTO_17:
  NAMECALL R1 R0 K0 ["fillInternalMaterial"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R0 K0 ["_region"]
  NAMECALL R1 R0 K1 ["revertRegion"]
  CALL R1 2 0
  NAMECALL R1 R0 K2 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLEKS R2 R3 K1 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  NAMECALL R2 R2 K2 ["ReadVoxels"]
  CALL R2 3 2
  SETTABLEKS R2 R0 K3 ["_materialCache"]
  SETTABLEKS R3 R0 K4 ["_occupancyCache"]
  GETIMPORT R2 K7 [table.create]
  GETTABLEKS R4 R0 K8 ["_sliceX"]
  GETTABLEKS R5 R0 K9 ["_sliceZ"]
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["_heightmapCache"]
  LOADN R4 1
  GETTABLEKS R2 R0 K8 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K9 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K11 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R11 R0 K12 ["_sliceY"]
  LOADN R9 1
  LOADN R10 255
  FORNPREP R9
  GETTABLEKS R15 R0 K4 ["_occupancyCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  JUMPIFEQKN R12 K13 [0] [+21]
  GETTABLEKS R15 R0 K3 ["_materialCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  GETIMPORT R13 K17 [Enum.Material.Air]
  JUMPIFEQ R12 R13 [+12]
  GETTABLEKS R12 R0 K10 ["_heightmapCache"]
  SUBK R14 R11 K18 [1]
  GETTABLEKS R18 R0 K4 ["_occupancyCache"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R11
  GETTABLE R15 R16 R7
  ADD R13 R14 R15
  SETTABLE R13 R12 R8
  JUMP [+1]
  FORNLOOP R9
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_20:
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R0 K0 ["_materialCache"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R2 R0 K1 ["_occupancyCache"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R3 R0 K2 ["_services"]
  GETTABLEKS R2 R3 K3 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["_materialCache"]
  GETTABLEKS R7 R0 K1 ["_occupancyCache"]
  NAMECALL R2 R2 K4 ["WriteVoxels"]
  CALL R2 5 0
  RETURN R0 0

PROTO_21:
  LOADNIL R1
  LOADNIL R2
  SETTABLEKS R1 R0 K0 ["_materialCache"]
  SETTABLEKS R2 R0 K1 ["_occupancyCache"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_heightmapCache"]
  RETURN R0 0

PROTO_22:
  GETUPVAL R4 0
  LOADK R6 K0 ["TG_DEBUG_DRAW_UI"]
  NAMECALL R4 R4 K1 ["FindFirstChild"]
  CALL R4 2 1
  MOVE R8 R1
  LOADK R9 K2 ["Frame"]
  CONCAT R7 R8 R9
  NAMECALL R5 R4 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIF R5 [+26]
  GETIMPORT R6 K5 [Instance.new]
  LOADK R7 K2 ["Frame"]
  CALL R6 1 1
  MOVE R5 R6
  MOVE R7 R1
  LOADK R8 K2 ["Frame"]
  CONCAT R6 R7 R8
  SETTABLEKS R6 R5 K6 ["Name"]
  SETTABLEKS R4 R5 K7 ["Parent"]
  GETIMPORT R6 K11 [Enum.AutomaticSize.XY]
  SETTABLEKS R6 R5 K9 ["AutomaticSize"]
  GETIMPORT R6 K5 [Instance.new]
  LOADK R7 K12 ["UIListLayout"]
  CALL R6 1 1
  SETTABLEKS R5 R6 K7 ["Parent"]
  GETIMPORT R7 K15 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K13 ["FillDirection"]
  MOVE R9 R1
  LOADK R10 K16 ["Text"]
  CONCAT R8 R9 R10
  NAMECALL R6 R5 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIF R6 [+23]
  GETIMPORT R7 K5 [Instance.new]
  LOADK R8 K17 ["TextLabel"]
  CALL R7 1 1
  MOVE R6 R7
  MOVE R8 R1
  LOADK R9 K16 ["Text"]
  CONCAT R7 R8 R9
  SETTABLEKS R7 R6 K6 ["Name"]
  SETTABLEKS R5 R6 K7 ["Parent"]
  SETTABLEKS R1 R6 K16 ["Text"]
  GETIMPORT R7 K19 [UDim2.new]
  LOADN R8 0
  LOADN R9 150
  LOADN R10 0
  LOADN R11 20
  CALL R7 4 1
  SETTABLEKS R7 R6 K20 ["Size"]
  MOVE R8 R1
  LOADK R9 K21 ["Label"]
  CONCAT R7 R8 R9
  MOVE R10 R7
  NAMECALL R8 R5 K1 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIF R8 [+21]
  GETIMPORT R9 K5 [Instance.new]
  LOADK R10 K22 ["ImageLabel"]
  CALL R9 1 1
  MOVE R8 R9
  SETTABLEKS R7 R8 K6 ["Name"]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  LOADN R9 1
  SETTABLEKS R9 R8 K24 ["BackgroundTransparency"]
  SETTABLEKS R5 R8 K7 ["Parent"]
  MOVE R11 R1
  NAMECALL R9 R8 K1 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIF R9 [+7]
  GETIMPORT R10 K5 [Instance.new]
  LOADK R11 K25 ["EditableImage"]
  CALL R10 1 1
  MOVE R9 R10
  SETTABLEKS R1 R9 K6 ["Name"]
  GETIMPORT R12 K27 [Vector2.new]
  GETTABLEKS R13 R0 K28 ["_sliceX"]
  GETTABLEKS R14 R0 K29 ["_sliceZ"]
  CALL R12 2 -1
  NAMECALL R10 R9 K30 ["Resize"]
  CALL R10 -1 0
  GETIMPORT R10 K19 [UDim2.new]
  LOADN R11 0
  GETTABLEKS R12 R0 K28 ["_sliceX"]
  LOADN R13 0
  GETTABLEKS R14 R0 K29 ["_sliceZ"]
  CALL R10 4 1
  SETTABLEKS R10 R8 K20 ["Size"]
  GETIMPORT R10 K33 [table.create]
  GETTABLEKS R13 R0 K28 ["_sliceX"]
  GETTABLEKS R14 R0 K29 ["_sliceZ"]
  MUL R12 R13 R14
  MULK R11 R12 K34 [4]
  LOADN R12 1
  CALL R10 2 1
  LOADN R13 1
  GETTABLEKS R14 R9 K20 ["Size"]
  GETTABLEKS R11 R14 K35 ["X"]
  LOADN R12 1
  FORNPREP R11
  LOADN R16 1
  GETTABLEKS R17 R9 K20 ["Size"]
  GETTABLEKS R14 R17 K36 ["Y"]
  LOADN R15 1
  FORNPREP R14
  MOVE R19 R13
  MOVE R20 R16
  NAMECALL R17 R0 K37 ["getIndex"]
  CALL R17 3 1
  SUBK R20 R16 K38 [1]
  GETTABLEKS R22 R9 K20 ["Size"]
  GETTABLEKS R21 R22 K35 ["X"]
  MUL R19 R20 R21
  ADD R18 R19 R13
  LOADN R20 1
  SUBK R22 R18 K38 [1]
  MULK R21 R22 K34 [4]
  ADD R19 R20 R21
  GETTABLE R21 R2 R17
  DIV R20 R21 R3
  SETTABLE R20 R10 R19
  ADDK R21 R19 K38 [1]
  SETTABLE R20 R10 R21
  ADDK R21 R19 K39 [2]
  SETTABLE R20 R10 R21
  FORNLOOP R14
  FORNLOOP R11
  GETIMPORT R13 K41 [Vector2.zero]
  GETTABLEKS R14 R9 K20 ["Size"]
  MOVE R15 R10
  NAMECALL R11 R9 K42 ["WritePixels"]
  CALL R11 4 0
  SETTABLEKS R8 R9 K7 ["Parent"]
  GETIMPORT R11 K19 [UDim2.new]
  LOADN R12 0
  LOADN R13 200
  LOADN R14 0
  LOADN R15 200
  CALL R11 4 1
  SETTABLEKS R11 R8 K20 ["Size"]
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  LOADK R3 K0 ["TG_DEBUG_DRAW_UI"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+17]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["ScreenGui"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K0 ["TG_DEBUG_DRAW_UI"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K7 ["Parent"]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K8 ["UIListLayout"]
  CALL R2 1 1
  SETTABLEKS R1 R2 K7 ["Parent"]
  LOADK R4 K9 ["Noisemap"]
  GETTABLEKS R5 R0 K10 ["_noiseMap"]
  LOADN R6 1
  LOADN R7 0
  NAMECALL R2 R0 K11 ["debugDrawArray"]
  CALL R2 5 0
  LOADK R4 K12 ["Heightmap"]
  GETTABLEKS R5 R0 K13 ["_heightMap"]
  GETTABLEKS R6 R0 K14 ["_sliceY"]
  NAMECALL R2 R0 K11 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K15 ["NeighborHeightMap"]
  GETTABLEKS R5 R0 K16 ["_minNeighborHeight"]
  GETTABLEKS R6 R0 K14 ["_sliceY"]
  NAMECALL R2 R0 K11 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K17 ["SlopeMap"]
  GETTABLEKS R5 R0 K18 ["_slopeMap"]
  LOADK R6 K19 [1.5707963267949]
  NAMECALL R2 R0 K11 ["debugDrawArray"]
  CALL R2 4 0
  LOADK R4 K20 ["Blending"]
  GETTABLEKS R5 R0 K21 ["_blendingFactorMap"]
  LOADN R6 1
  NAMECALL R2 R0 K11 ["debugDrawArray"]
  CALL R2 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["VoxelResolution"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["BuildSettings"]
  GETTABLEKS R5 R3 K12 ["Category"]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Generation"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["GetBlendingFactorMap"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K16 ["GetMaterial"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K17 ["Flags"]
  GETTABLEKS R10 R11 K18 ["getFFlagTerrainEditorDebugMode"]
  CALL R9 1 1
  GETIMPORT R10 K22 [Enum.Material.Ground]
  NEWTABLE R11 32 0
  GETIMPORT R12 K24 [game]
  LOADK R14 K25 ["StarterGui"]
  NAMECALL R12 R12 K26 ["GetService"]
  CALL R12 2 1
  SETTABLEKS R11 R11 K27 ["__index"]
  DUPCLOSURE R13 K28 [PROTO_0]
  SETTABLEKS R13 R11 K29 ["new"]
  DUPCLOSURE R13 K30 [PROTO_1]
  SETTABLEKS R13 R11 K31 ["init"]
  DUPCLOSURE R13 K32 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R13 R11 K33 ["update"]
  DUPCLOSURE R13 K34 [PROTO_3]
  SETTABLEKS R13 R11 K35 ["getTerrainType"]
  DUPCLOSURE R13 K36 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R13 R11 K37 ["setupRegion"]
  DUPCLOSURE R13 K38 [PROTO_5]
  SETTABLEKS R13 R11 K39 ["getIndex"]
  DUPCLOSURE R13 K40 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R2
  SETTABLEKS R13 R11 K41 ["generateStamp"]
  DUPCLOSURE R13 K42 [PROTO_7]
  SETTABLEKS R13 R11 K43 ["generateNoiseMap"]
  DUPCLOSURE R13 K44 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R13 R11 K45 ["generateHeightMap"]
  DUPCLOSURE R13 K46 [PROTO_9]
  SETTABLEKS R13 R11 K47 ["generateSlopeMap"]
  DUPCLOSURE R13 K48 [PROTO_10]
  SETTABLEKS R13 R11 K49 ["generateOccupancyMap"]
  DUPCLOSURE R13 K50 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R13 R11 K51 ["generateMaterialMap"]
  DUPCLOSURE R13 K52 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R13 R11 K53 ["fillInternalMaterial"]
  DUPCLOSURE R13 K54 [PROTO_13]
  CAPTURE VAL R7
  SETTABLEKS R13 R11 K55 ["updateBlendingFactorMap"]
  DUPCLOSURE R13 K56 [PROTO_14]
  SETTABLEKS R13 R11 K57 ["blendHeightMap"]
  DUPCLOSURE R13 K58 [PROTO_15]
  CAPTURE VAL R8
  SETTABLEKS R13 R11 K59 ["blendMaterialMap"]
  DUPCLOSURE R13 K60 [PROTO_16]
  SETTABLEKS R13 R11 K61 ["postProcessing"]
  DUPCLOSURE R13 K62 [PROTO_17]
  SETTABLEKS R13 R11 K63 ["commit"]
  DUPCLOSURE R13 K64 [PROTO_18]
  SETTABLEKS R13 R11 K65 ["destroy"]
  DUPCLOSURE R13 K66 [PROTO_19]
  CAPTURE VAL R2
  SETTABLEKS R13 R11 K67 ["cacheRegion"]
  DUPCLOSURE R13 K68 [PROTO_20]
  CAPTURE VAL R2
  SETTABLEKS R13 R11 K69 ["revertRegion"]
  DUPCLOSURE R13 K70 [PROTO_21]
  SETTABLEKS R13 R11 K71 ["clearRegionCache"]
  DUPCLOSURE R13 K72 [PROTO_22]
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K73 ["debugDrawArray"]
  DUPCLOSURE R13 K74 [PROTO_23]
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K75 ["debugDraw"]
  RETURN R11 1
