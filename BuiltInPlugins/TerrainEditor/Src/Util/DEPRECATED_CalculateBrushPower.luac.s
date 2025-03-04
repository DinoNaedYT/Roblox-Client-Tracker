PROTO_0:
  LOADN R4 1
  LOADN R5 1
  LOADN R6 2
  JUMPIFNOTLT R6 R1 [+112]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Sphere"]
  JUMPIFNOTEQ R2 R6 [+55]
  GETTABLEKS R10 R0 K1 ["X"]
  GETTABLEKS R11 R0 K1 ["X"]
  MUL R9 R10 R11
  GETTABLEKS R11 R0 K2 ["Y"]
  GETTABLEKS R12 R0 K2 ["Y"]
  MUL R10 R11 R12
  ADD R8 R9 R10
  GETTABLEKS R10 R0 K3 ["Z"]
  GETTABLEKS R11 R0 K3 ["Z"]
  MUL R9 R10 R11
  ADD R7 R8 R9
  FASTCALL1 MATH_SQRT R7 [+2]
  GETIMPORT R6 K6 [math.sqrt]
  CALL R6 1 1
  LOADN R11 1
  DIV R12 R6 R3
  FASTCALL2 MATH_MIN R11 R12 [+3]
  GETIMPORT R10 K10 [math.min]
  CALL R10 2 1
  MULK R9 R10 K8 [3.14159265358979]
  MULK R8 R9 K7 [0.5]
  FASTCALL1 MATH_COS R8 [+2]
  GETIMPORT R7 K12 [math.cos]
  CALL R7 1 1
  MOVE R5 R7
  LOADN R8 0
  LOADN R10 1
  SUB R12 R3 R6
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K13 ["VoxelResolution"]
  DIV R11 R12 R13
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K10 [math.min]
  CALL R9 2 1
  FASTCALL2 MATH_MAX R8 R9 [+3]
  GETIMPORT R7 K15 [math.max]
  CALL R7 2 1
  MOVE R4 R7
  RETURN R4 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["Cylinder"]
  JUMPIFNOTEQ R2 R6 [+48]
  GETTABLEKS R9 R0 K1 ["X"]
  GETTABLEKS R10 R0 K1 ["X"]
  MUL R8 R9 R10
  GETTABLEKS R10 R0 K3 ["Z"]
  GETTABLEKS R11 R0 K3 ["Z"]
  MUL R9 R10 R11
  ADD R7 R8 R9
  FASTCALL1 MATH_SQRT R7 [+2]
  GETIMPORT R6 K6 [math.sqrt]
  CALL R6 1 1
  LOADN R11 1
  DIV R12 R6 R3
  FASTCALL2 MATH_MIN R11 R12 [+3]
  GETIMPORT R10 K10 [math.min]
  CALL R10 2 1
  MULK R9 R10 K8 [3.14159265358979]
  MULK R8 R9 K7 [0.5]
  FASTCALL1 MATH_COS R8 [+2]
  GETIMPORT R7 K12 [math.cos]
  CALL R7 1 1
  MOVE R5 R7
  LOADN R8 0
  LOADN R10 1
  SUB R12 R3 R6
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K13 ["VoxelResolution"]
  DIV R11 R12 R13
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K10 [math.min]
  CALL R9 2 1
  FASTCALL2 MATH_MAX R8 R9 [+3]
  GETIMPORT R7 K15 [math.max]
  CALL R7 2 1
  MOVE R4 R7
  RETURN R4 2

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BrushShape"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
