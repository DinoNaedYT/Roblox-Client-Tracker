PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R6 R0 K0 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["AdvancedNoise"]
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K3 ["Children"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Offset"]
  GETTABLE R2 R3 R4
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["AdvancedNoise"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["Children"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Seed"]
  GETTABLE R3 R4 R5
  GETIMPORT R4 K9 [table.create]
  GETTABLEKS R6 R0 K10 ["_sliceX"]
  GETTABLEKS R7 R0 K11 ["_sliceZ"]
  MUL R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R0 K12 ["_noiseMap"]
  LOADN R4 0
  JUMPIFNOTLT R4 R1 [+56]
  LOADN R5 50
  DIV R4 R5 R1
  LOADN R7 1
  GETTABLEKS R5 R0 K10 ["_sliceX"]
  LOADN R6 1
  FORNPREP R5
  LOADN R10 1
  GETTABLEKS R8 R0 K11 ["_sliceZ"]
  LOADN R9 1
  FORNPREP R8
  GETUPVAL R14 2
  MUL R13 R7 R14
  GETUPVAL R15 2
  DIVK R14 R15 K13 [2]
  ADD R12 R13 R14
  GETTABLEKS R13 R2 K14 ["X"]
  ADD R11 R12 R13
  GETUPVAL R15 2
  MUL R14 R10 R15
  GETUPVAL R16 2
  DIVK R15 R16 K13 [2]
  ADD R13 R14 R15
  GETTABLEKS R14 R2 K15 ["Y"]
  ADD R12 R13 R14
  GETIMPORT R13 K18 [Vector2.new]
  MOVE R14 R11
  MOVE R15 R12
  CALL R13 2 1
  MOVE R16 R7
  MOVE R17 R10
  NAMECALL R14 R0 K19 ["getIndex"]
  CALL R14 3 1
  GETTABLEKS R15 R0 K12 ["_noiseMap"]
  JUMPIFNOTEQKN R4 K20 [0] [+3]
  LOADN R16 0
  JUMP [+8]
  GETUPVAL R16 3
  GETTABLEKS R17 R13 K14 ["X"]
  GETTABLEKS R18 R13 K15 ["Y"]
  MOVE R19 R3
  MOVE R20 R4
  CALL R16 4 1
  SETTABLE R16 R15 R14
  FORNLOOP R8
  FORNLOOP R5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["BaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["VoxelResolution"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["BuildSettings"]
  GETTABLEKS R6 R4 K14 ["Category"]
  GETTABLEKS R7 R4 K15 ["TerrainType"]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Generation"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K18 ["FractalNoise"]
  CALL R9 1 1
  MOVE R10 R9
  LOADN R11 3
  LOADN R12 2
  LOADK R13 K19 [0.35]
  CALL R10 3 1
  GETTABLEKS R13 R7 K20 ["Plain"]
  NAMECALL R11 R1 K21 ["new"]
  CALL R11 2 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K23 ["init"]
  DUPCLOSURE R12 K24 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K25 ["generateNoiseMap"]
  RETURN R11 1
