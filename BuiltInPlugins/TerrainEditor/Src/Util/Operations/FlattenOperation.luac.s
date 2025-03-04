PROTO_0:
  GETTABLEKS R3 R0 K0 ["Payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["BrushSize"]
  GETTABLE R3 R2 R4
  GETTABLEKS R4 R3 K3 ["Height"]
  GETTABLEKS R5 R3 K4 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["BrushShape"]
  GETTABLE R6 R2 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["FixedYPlane"]
  GETTABLE R7 R2 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["FlattenPlane"]
  GETTABLE R8 R2 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["State"]
  GETTABLE R9 R2 R10
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K9 ["Sphere"]
  JUMPIFNOTEQ R6 R12 [+3]
  MOVE R11 R5
  JUMP [+1]
  MOVE R11 R4
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K10 ["VoxelResolution"]
  MUL R10 R11 R12
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["Auto"]
  JUMPIFNOTEQ R8 R12 [+11]
  GETUPVAL R11 5
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["PivotPosition"]
  GETTABLE R12 R2 R13
  GETTABLEKS R13 R9 K13 ["Position"]
  MOVE R14 R10
  CALL R11 3 1
  JUMP [+7]
  LOADN R12 0
  MOVE R13 R7
  LOADN R14 0
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K16 [Vector3.new]
  CALL R11 3 1
  DUPTABLE R12 K19 [{"Plane", "PlanePosition", "Position"}]
  GETIMPORT R13 K21 [Vector3.yAxis]
  SETTABLEKS R13 R12 K17 ["Plane"]
  SETTABLEKS R11 R12 K18 ["PlanePosition"]
  SETTABLEKS R11 R12 K13 ["Position"]
  SETTABLEKS R12 R0 K8 ["State"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  MOVE R6 R1
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETUPVAL R9 3
  CALL R5 4 2
  GETUPVAL R10 4
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  GETTABLE R7 R8 R9
  GETUPVAL R11 5
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLE R8 R9 R10
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+6]
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+3]
  LOADB R4 1
  JUMP [0]
  JUMPIF R4 [+3]
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+134]
  GETUPVAL R9 6
  JUMPIFNOTLT R9 R3 [+55]
  LOADN R9 1
  JUMPIFNOTLT R8 R9 [+52]
  ADD R9 R8 R2
  GETUPVAL R11 7
  GETUPVAL R12 4
  MOVE R13 R0
  GETUPVAL R14 8
  GETUPVAL R15 9
  CALL R11 4 1
  OR R10 R11 R7
  GETUPVAL R13 10
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETIMPORT R14 K6 [Enum.Material.Air]
  JUMPIFNOTEQ R10 R14 [+3]
  LOADN R13 0
  JUMP [+6]
  LOADN R14 1
  JUMPIFNOTLE R9 R14 [+3]
  MOVE R13 R9
  JUMP [+1]
  LOADN R13 1
  SETTABLE R13 R11 R12
  GETUPVAL R13 11
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  OR R13 R10 R7
  SETTABLE R13 R11 R12
  SUBK R2 R9 K7 [1]
  LOADN R11 0
  JUMPIFNOTLT R11 R2 [+4]
  MOVE R11 R2
  MOVE R12 R4
  RETURN R11 2
  LOADN R11 0
  MOVE R12 R4
  RETURN R11 2
  GETUPVAL R9 6
  JUMPIFNOTLE R3 R9 [+74]
  GETUPVAL R10 6
  MINUS R9 R10
  JUMPIFNOTLT R9 R3 [+70]
  GETUPVAL R11 6
  ADD R10 R3 R11
  GETUPVAL R12 12
  GETTABLEKS R11 R12 K8 ["VoxelResolution"]
  DIV R9 R10 R11
  ADD R10 R8 R2
  GETIMPORT R12 K6 [Enum.Material.Air]
  JUMPIFNOTEQ R7 R12 [+9]
  GETUPVAL R12 7
  GETUPVAL R13 4
  MOVE R14 R0
  GETUPVAL R15 8
  GETUPVAL R16 9
  CALL R12 4 1
  OR R11 R12 R7
  JUMP [+1]
  MOVE R11 R7
  GETUPVAL R14 10
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  GETIMPORT R15 K6 [Enum.Material.Air]
  JUMPIFNOTEQ R11 R15 [+3]
  LOADN R14 0
  JUMP [+5]
  JUMPIFNOTLE R10 R9 [+3]
  MOVE R14 R10
  JUMP [+1]
  MOVE R14 R9
  SETTABLE R14 R12 R13
  GETUPVAL R14 11
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  OR R14 R11 R7
  SETTABLE R14 R12 R13
  LOADN R12 0
  MOVE R13 R4
  GETUPVAL R18 10
  GETTABLEKS R19 R0 K0 ["X"]
  GETTABLE R17 R18 R19
  GETTABLEKS R18 R0 K1 ["Y"]
  GETTABLE R16 R17 R18
  GETTABLEKS R17 R0 K2 ["Z"]
  GETTABLE R15 R16 R17
  JUMPIFLT R8 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  RETURN R12 3
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2

PROTO_2:
  GETUPVAL R5 0
  MOVE R6 R1
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETUPVAL R9 3
  CALL R5 4 2
  GETUPVAL R10 4
  GETTABLEKS R11 R0 K0 ["X"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K1 ["Y"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K2 ["Z"]
  GETTABLE R7 R8 R9
  GETUPVAL R11 5
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLE R8 R9 R10
  GETUPVAL R9 6
  JUMPIFNOT R9 [+7]
  GETIMPORT R9 K6 [Enum.Material.Water]
  JUMPIFNOTEQ R8 R9 [+4]
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2
  LOADN R10 0
  JUMPIFNOTLT R10 R5 [+12]
  LOADB R9 1
  LOADN R10 1
  JUMPIFLT R7 R10 [+9]
  GETUPVAL R10 7
  JUMPIFNOT R10 [+5]
  LOADB R9 1
  GETIMPORT R10 K6 [Enum.Material.Water]
  JUMPIFEQ R8 R10 [+2]
  MOVE R9 R4
  MOVE R4 R9
  JUMPIF R4 [+3]
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+339]
  GETUPVAL R9 7
  JUMPIFNOT R9 [+41]
  GETTABLEKS R9 R0 K1 ["Y"]
  GETUPVAL R10 8
  JUMPIFNOTLE R9 R10 [+37]
  JUMPIFNOTEQKN R7 K7 [0] [+35]
  GETUPVAL R9 9
  JUMPIFNOTLT R9 R3 [+32]
  GETUPVAL R11 10
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETTABLEKS R12 R0 K1 ["Y"]
  GETUPVAL R13 8
  JUMPIFNOTEQ R12 R13 [+3]
  GETUPVAL R11 11
  JUMP [+1]
  LOADN R11 1
  SETTABLE R11 R9 R10
  GETUPVAL R11 12
  GETTABLEKS R12 R0 K0 ["X"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K1 ["Y"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R0 K2 ["Z"]
  GETIMPORT R11 K6 [Enum.Material.Water]
  SETTABLE R11 R9 R10
  JUMP [+295]
  GETUPVAL R9 9
  JUMPIFNOTLT R9 R3 [+125]
  LOADN R9 0
  JUMPIFNOTLT R9 R7 [+122]
  GETUPVAL R9 7
  JUMPIFNOT R9 [+4]
  GETIMPORT R9 K6 [Enum.Material.Water]
  JUMPIFEQ R8 R9 [+116]
  SUB R9 R7 R2
  GETUPVAL R10 7
  JUMPIFNOT R10 [+69]
  GETTABLEKS R10 R0 K1 ["Y"]
  GETUPVAL R11 8
  JUMPIFNOTLE R10 R11 [+65]
  GETUPVAL R12 13
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R13 R9 [+3]
  MOVE R12 R9
  JUMP [+1]
  LOADN R12 0
  SETTABLE R12 R10 R11
  GETUPVAL R12 14
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R9 R13 [+4]
  GETIMPORT R12 K9 [Enum.Material.Air]
  JUMP [+1]
  MOVE R12 R8
  SETTABLE R12 R10 R11
  GETUPVAL R12 10
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  GETTABLEKS R13 R0 K1 ["Y"]
  GETUPVAL R14 8
  JUMPIFNOTEQ R13 R14 [+3]
  GETUPVAL R12 11
  JUMP [+1]
  LOADN R12 1
  SETTABLE R12 R10 R11
  GETUPVAL R12 12
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  GETIMPORT R12 K6 [Enum.Material.Water]
  SETTABLE R12 R10 R11
  JUMP [+33]
  GETUPVAL R12 10
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R13 R9 [+3]
  MOVE R12 R9
  JUMP [+1]
  LOADN R12 0
  SETTABLE R12 R10 R11
  GETUPVAL R12 12
  GETTABLEKS R13 R0 K0 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K1 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K2 ["Z"]
  LOADN R13 0
  JUMPIFNOTLE R9 R13 [+4]
  GETIMPORT R12 K9 [Enum.Material.Air]
  JUMP [+1]
  MOVE R12 R8
  SETTABLE R12 R10 R11
  SUB R2 R2 R7
  LOADN R10 0
  JUMPIFNOTLT R10 R2 [+4]
  MOVE R10 R2
  MOVE R11 R4
  RETURN R10 2
  LOADN R10 0
  MOVE R11 R4
  RETURN R10 2
  GETUPVAL R9 9
  JUMPIFNOTLE R3 R9 [+166]
  GETUPVAL R10 9
  MINUS R9 R10
  JUMPIFNOTLT R9 R3 [+162]
  GETUPVAL R9 7
  JUMPIFNOT R9 [+4]
  GETIMPORT R9 K6 [Enum.Material.Water]
  JUMPIFEQ R8 R9 [+156]
  LOADN R10 1
  GETUPVAL R13 9
  ADD R12 R3 R13
  GETUPVAL R14 15
  GETTABLEKS R13 R14 K10 ["VoxelResolution"]
  DIV R11 R12 R13
  SUB R9 R10 R11
  SUB R10 R7 R2
  GETUPVAL R11 7
  JUMPIFNOT R11 [+109]
  GETTABLEKS R11 R0 K1 ["Y"]
  GETUPVAL R12 8
  JUMPIFNOTLE R11 R12 [+105]
  JUMPIFNOTLE R9 R10 [+52]
  GETUPVAL R13 10
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETTABLEKS R14 R0 K1 ["Y"]
  GETUPVAL R15 8
  JUMPIFNOTEQ R14 R15 [+3]
  GETUPVAL R13 11
  JUMP [+1]
  LOADN R13 1
  SETTABLE R13 R11 R12
  GETUPVAL R13 12
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETIMPORT R13 K6 [Enum.Material.Water]
  SETTABLE R13 R11 R12
  GETUPVAL R13 13
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R10 R11 R12
  GETUPVAL R13 14
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R8 R11 R12
  JUMP [+83]
  GETUPVAL R13 10
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETTABLEKS R14 R0 K1 ["Y"]
  GETUPVAL R15 8
  JUMPIFNOTEQ R14 R15 [+3]
  GETUPVAL R13 11
  JUMP [+1]
  LOADN R13 1
  SETTABLE R13 R11 R12
  GETUPVAL R13 12
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  GETIMPORT R13 K6 [Enum.Material.Water]
  SETTABLE R13 R11 R12
  GETUPVAL R13 13
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R9 R11 R12
  GETUPVAL R13 14
  GETTABLEKS R14 R0 K0 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K1 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K2 ["Z"]
  SETTABLE R8 R11 R12
  JUMP [+32]
  JUMPIFNOTLE R9 R10 [+3]
  MOVE R11 R10
  JUMP [+1]
  MOVE R11 R9
  GETUPVAL R14 10
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  SETTABLE R11 R12 R13
  GETUPVAL R14 12
  GETTABLEKS R15 R0 K0 ["X"]
  GETTABLE R13 R14 R15
  GETTABLEKS R14 R0 K1 ["Y"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K2 ["Z"]
  LOADN R15 0
  JUMPIFNOTLE R11 R15 [+4]
  GETIMPORT R14 K9 [Enum.Material.Air]
  JUMP [+1]
  MOVE R14 R8
  SETTABLE R14 R12 R13
  LOADN R11 0
  MOVE R12 R4
  RETURN R11 2
  MOVE R9 R2
  MOVE R10 R4
  RETURN R9 2

PROTO_3:
  GETUPVAL R4 0
  MUL R3 R0 R4
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["VoxelResolution"]
  MUL R5 R1 R6
  MUL R4 R0 R5
  ADD R2 R3 R4
  RETURN R2 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Direction"]
  GETTABLEKS R5 R0 K2 ["Increment"]
  ORK R4 R5 K1 [1]
  GETTABLEKS R5 R0 K3 ["Size"]
  GETTABLEKS R6 R1 K0 ["Direction"]
  GETTABLEKS R7 R1 K3 ["Size"]
  GETTABLEKS R8 R2 K0 ["Direction"]
  GETTABLEKS R9 R2 K3 ["Size"]
  LOADN R11 0
  JUMPIFNOTLT R4 R11 [+3]
  MOVE R10 R5
  JUMP [+1]
  LOADN R10 1
  LOADN R12 0
  JUMPIFNOTLT R4 R12 [+3]
  LOADN R11 1
  JUMP [+1]
  MOVE R11 R5
  GETUPVAL R14 0
  MUL R13 R3 R14
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K4 ["VoxelResolution"]
  MUL R15 R10 R16
  MUL R14 R3 R15
  ADD R12 R13 R14
  GETUPVAL R15 0
  MUL R14 R3 R15
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K4 ["VoxelResolution"]
  MUL R16 R11 R17
  MUL R15 R3 R16
  ADD R13 R14 R15
  GETUPVAL R15 2
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K7 [Vector3.new]
  CALL R16 3 1
  MUL R14 R15 R16
  MUL R15 R3 R4
  LOADN R18 255
  LOADN R19 255
  LOADN R20 255
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K7 [Vector3.new]
  CALL R17 3 1
  MUL R16 R15 R17
  LOADN R19 1
  MOVE R17 R7
  LOADN R18 1
  FORNPREP R17
  GETUPVAL R22 0
  MUL R21 R6 R22
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K4 ["VoxelResolution"]
  MUL R23 R19 R24
  MUL R22 R6 R23
  ADD R20 R21 R22
  MUL R21 R19 R6
  LOADN R24 1
  MOVE R22 R9
  LOADN R23 1
  FORNPREP R22
  GETUPVAL R28 0
  MUL R27 R8 R28
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K4 ["VoxelResolution"]
  MUL R29 R24 R30
  MUL R28 R8 R29
  ADD R26 R27 R28
  ADD R25 R26 R20
  MUL R26 R24 R8
  GETUPVAL R27 3
  GETUPVAL R28 3
  GETUPVAL R30 4
  NOT R29 R30
  GETUPVAL R31 4
  NOT R30 R31
  GETUPVAL R31 5
  ADD R32 R12 R25
  MOVE R33 R15
  GETUPVAL R34 6
  MOVE R35 R14
  CALL R31 4 2
  GETUPVAL R33 5
  ADD R34 R13 R25
  MOVE R35 R16
  GETUPVAL R36 6
  GETUPVAL R37 2
  CALL R33 4 2
  MULK R36 R32 K8 [256]
  FASTCALL1 MATH_ROUND R36 [+2]
  GETIMPORT R35 K11 [math.round]
  CALL R35 1 1
  DIVK R32 R35 K8 [256]
  MULK R36 R34 K8 [256]
  FASTCALL1 MATH_ROUND R36 [+2]
  GETIMPORT R35 K11 [math.round]
  CALL R35 1 1
  DIVK R34 R35 K8 [256]
  LOADB R35 0
  MOVE R38 R10
  MOVE R36 R11
  MOVE R37 R4
  FORNPREP R36
  GETUPVAL R39 7
  JUMPIFNOT R39 [+36]
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  MINUS R40 R41
  DIVK R39 R40 K12 [2]
  JUMPIFNOTLT R39 R32 [+30]
  JUMPIFEQKN R27 K13 [0] [+28]
  GETUPVAL R42 0
  MUL R41 R3 R42
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K4 ["VoxelResolution"]
  MUL R43 R38 R44
  MUL R42 R3 R43
  ADD R40 R41 R42
  ADD R39 R40 R25
  MUL R42 R3 R38
  ADD R41 R42 R21
  ADD R40 R41 R26
  GETUPVAL R41 8
  MOVE R42 R40
  GETUPVAL R44 9
  SUB R43 R39 R44
  MOVE R44 R27
  MOVE R45 R32
  MOVE R46 R29
  CALL R41 5 3
  MOVE R27 R41
  MOVE R29 R42
  MOVE R35 R43
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  SUB R32 R32 R41
  FORNLOOP R36
  JUMPIF R35 [+42]
  MOVE R38 R11
  MOVE R36 R10
  MINUS R37 R4
  FORNPREP R36
  GETUPVAL R39 10
  JUMPIFNOT R39 [+35]
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  MINUS R40 R41
  DIVK R39 R40 K12 [2]
  JUMPIFNOTLT R39 R34 [+29]
  JUMPIFEQKN R28 K13 [0] [+27]
  GETUPVAL R42 0
  MUL R41 R3 R42
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K4 ["VoxelResolution"]
  MUL R43 R38 R44
  MUL R42 R3 R43
  ADD R40 R41 R42
  ADD R39 R40 R25
  MUL R42 R3 R38
  ADD R41 R42 R21
  ADD R40 R41 R26
  GETUPVAL R41 11
  MOVE R42 R40
  GETUPVAL R44 9
  SUB R43 R39 R44
  MOVE R44 R28
  MOVE R45 R34
  MOVE R46 R30
  CALL R41 5 2
  MOVE R28 R41
  MOVE R30 R42
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K4 ["VoxelResolution"]
  SUB R34 R34 R41
  FORNLOOP R36
  FORNLOOP R22
  FORNLOOP R17
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K4 ["Payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K7 ["Height"]
  GETTABLEKS R6 R4 K8 ["Size"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["FlattenMode"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["PullTerrain"]
  GETTABLE R10 R3 R11
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K13 ["Strength"]
  GETTABLE R11 R3 R12
  GETUPVAL R13 2
  JUMPIFNOT R13 [+5]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K14 ["WaterAutofill"]
  GETTABLE R12 R3 R13
  JUMP [+1]
  LOADNIL R12
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K0 ["State"]
  GETTABLE R13 R3 R14
  LOADB R14 1
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K15 ["Grow"]
  JUMPIFEQ R8 R15 [+8]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K16 ["Both"]
  JUMPIFEQ R8 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADB R15 1
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["Erode"]
  JUMPIFEQ R8 R16 [+8]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K16 ["Both"]
  JUMPIFEQ R8 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K18 ["Sphere"]
  JUMPIFNOTEQ R7 R18 [+3]
  MOVE R17 R6
  JUMP [+1]
  MOVE R17 R5
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K19 ["VoxelResolution"]
  MUL R16 R17 R18
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K19 ["VoxelResolution"]
  MUL R17 R6 R18
  MULK R18 R17 K20 [0.5]
  GETTABLEKS R19 R2 K21 ["Plane"]
  GETTABLEKS R20 R2 K22 ["PlanePosition"]
  GETTABLEKS R22 R19 K23 ["X"]
  FASTCALL1 MATH_ABS R22 [+2]
  GETIMPORT R21 K26 [math.abs]
  CALL R21 1 1
  GETTABLEKS R23 R19 K27 ["Y"]
  FASTCALL1 MATH_ABS R23 [+2]
  GETIMPORT R22 K26 [math.abs]
  CALL R22 1 1
  GETTABLEKS R24 R19 K28 ["Z"]
  FASTCALL1 MATH_ABS R24 [+2]
  GETIMPORT R23 K26 [math.abs]
  CALL R23 1 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K18 ["Sphere"]
  JUMPIFEQ R7 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K29 ["Cube"]
  JUMPIFEQ R7 R26 [+2]
  LOADB R25 0 +1
  LOADB R25 1
  JUMPIFNOTLE R23 R22 [+18]
  JUMPIFNOTLE R21 R22 [+16]
  LOADN R27 0
  GETTABLEKS R29 R19 K27 ["Y"]
  LOADN R30 0
  JUMPIFNOTLT R30 R29 [+3]
  LOADN R28 1
  JUMP [+1]
  LOADN R28 255
  LOADN R29 0
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K32 [Vector3.new]
  CALL R26 3 1
  JUMP [+33]
  JUMPIFNOTLE R22 R23 [+18]
  JUMPIFNOTLE R21 R23 [+16]
  LOADN R27 0
  LOADN R28 0
  GETTABLEKS R30 R19 K28 ["Z"]
  LOADN R31 0
  JUMPIFNOTLT R31 R30 [+3]
  LOADN R29 1
  JUMP [+1]
  LOADN R29 255
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K32 [Vector3.new]
  CALL R26 3 1
  JUMP [+14]
  GETTABLEKS R28 R19 K23 ["X"]
  LOADN R29 0
  JUMPIFNOTLT R29 R28 [+3]
  LOADN R27 1
  JUMP [+1]
  LOADN R27 255
  LOADN R28 0
  LOADN R29 0
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K32 [Vector3.new]
  CALL R26 3 1
  GETUPVAL R27 6
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K33 ["PivotPosition"]
  GETTABLE R28 R3 R29
  GETTABLEKS R29 R13 K34 ["Position"]
  MOVE R30 R16
  CALL R27 3 1
  GETUPVAL R28 7
  GETTABLEKS R29 R2 K34 ["Position"]
  MOVE R30 R27
  MOVE R31 R18
  CALL R28 3 1
  LENGTH R30 R28
  GETTABLE R29 R28 R30
  SETTABLEKS R29 R2 K34 ["Position"]
  GETUPVAL R29 8
  MOVE R30 R27
  MOVE R31 R18
  MOVE R32 R16
  CALL R29 3 2
  MOVE R31 R28
  LOADNIL R32
  LOADNIL R33
  FORGPREP R31
  GETIMPORT R36 K36 [Region3.new]
  MOVE R37 R29
  MOVE R38 R30
  CALL R36 2 1
  GETTABLEKS R39 R30 K23 ["X"]
  GETTABLEKS R40 R29 K23 ["X"]
  SUB R38 R39 R40
  MULK R37 R38 K20 [0.5]
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K37 ["Terrain"]
  MOVE R40 R36
  GETUPVAL R42 5
  GETTABLEKS R41 R42 K19 ["VoxelResolution"]
  NAMECALL R38 R38 K38 ["ReadVoxels"]
  CALL R38 3 2
  LOADNIL R40
  SETTABLEKS R40 R39 K8 ["Size"]
  LOADNIL R40
  SETTABLEKS R40 R38 K8 ["Size"]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K37 ["Terrain"]
  MOVE R42 R36
  GETUPVAL R44 5
  GETTABLEKS R43 R44 K19 ["VoxelResolution"]
  NAMECALL R40 R40 K38 ["ReadVoxels"]
  CALL R40 3 2
  LOADNIL R42
  GETUPVAL R43 10
  CALL R43 0 1
  JUMPIFNOT R43 [+4]
  GETIMPORT R43 K41 [os.clock]
  CALL R43 0 1
  MOVE R42 R43
  LENGTH R43 R38
  GETTABLEN R45 R38 1
  LENGTH R44 R45
  GETTABLEN R47 R38 1
  GETTABLEN R46 R47 1
  LENGTH R45 R46
  MOVE R47 R43
  MOVE R48 R44
  MOVE R49 R45
  FASTCALL VECTOR [+2]
  GETIMPORT R46 K32 [Vector3.new]
  CALL R46 3 1
  LOADNIL R47
  LOADNIL R48
  NEWTABLE R49 0 0
  NEWTABLE R50 0 0
  JUMPIFNOT R12 [+18]
  GETUPVAL R51 11
  MOVE R52 R38
  MOVE R53 R39
  CALL R51 2 2
  MOVE R47 R51
  MOVE R48 R52
  GETUPVAL R52 9
  GETTABLEKS R51 R52 K37 ["Terrain"]
  MOVE R53 R36
  GETUPVAL R55 5
  GETTABLEKS R54 R55 K19 ["VoxelResolution"]
  NAMECALL R51 R51 K38 ["ReadVoxels"]
  CALL R51 3 2
  MOVE R49 R51
  MOVE R50 R52
  NEWCLOSURE R51 P0
  CAPTURE UPVAL U12
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R37
  CAPTURE VAL R38
  CAPTURE VAL R39
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE VAL R46
  CAPTURE VAL R12
  CAPTURE VAL R41
  CAPTURE VAL R40
  CAPTURE UPVAL U5
  NEWCLOSURE R52 P1
  CAPTURE UPVAL U12
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R37
  CAPTURE VAL R39
  CAPTURE VAL R38
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE REF R47
  CAPTURE UPVAL U13
  CAPTURE VAL R41
  CAPTURE REF R48
  CAPTURE VAL R40
  CAPTURE REF R50
  CAPTURE REF R49
  CAPTURE UPVAL U5
  NEWCLOSURE R53 P2
  CAPTURE VAL R29
  CAPTURE UPVAL U5
  NEWCLOSURE R54 P3
  CAPTURE VAL R29
  CAPTURE UPVAL U5
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE UPVAL U15
  CAPTURE VAL R20
  CAPTURE VAL R14
  CAPTURE VAL R51
  CAPTURE VAL R35
  CAPTURE VAL R15
  CAPTURE VAL R52
  GETTABLEKS R55 R26 K23 ["X"]
  JUMPIFEQKN R55 K42 [0] [+32]
  DUPTABLE R55 K45 [{"Direction", "Increment", "Size"}]
  GETIMPORT R56 K47 [Vector3.xAxis]
  SETTABLEKS R56 R55 K43 ["Direction"]
  GETTABLEKS R56 R26 K23 ["X"]
  SETTABLEKS R56 R55 K44 ["Increment"]
  SETTABLEKS R43 R55 K8 ["Size"]
  DUPTABLE R56 K48 [{"Direction", "Size"}]
  GETIMPORT R57 K50 [Vector3.yAxis]
  SETTABLEKS R57 R56 K43 ["Direction"]
  SETTABLEKS R44 R56 K8 ["Size"]
  DUPTABLE R57 K48 [{"Direction", "Size"}]
  GETIMPORT R58 K52 [Vector3.zAxis]
  SETTABLEKS R58 R57 K43 ["Direction"]
  SETTABLEKS R45 R57 K8 ["Size"]
  MOVE R58 R54
  MOVE R59 R55
  MOVE R60 R56
  MOVE R61 R57
  CALL R58 3 0
  JUMP [+69]
  GETTABLEKS R55 R26 K27 ["Y"]
  JUMPIFEQKN R55 K42 [0] [+32]
  DUPTABLE R55 K45 [{"Direction", "Increment", "Size"}]
  GETIMPORT R56 K50 [Vector3.yAxis]
  SETTABLEKS R56 R55 K43 ["Direction"]
  GETTABLEKS R56 R26 K27 ["Y"]
  SETTABLEKS R56 R55 K44 ["Increment"]
  SETTABLEKS R44 R55 K8 ["Size"]
  DUPTABLE R56 K48 [{"Direction", "Size"}]
  GETIMPORT R57 K47 [Vector3.xAxis]
  SETTABLEKS R57 R56 K43 ["Direction"]
  SETTABLEKS R43 R56 K8 ["Size"]
  DUPTABLE R57 K48 [{"Direction", "Size"}]
  GETIMPORT R58 K52 [Vector3.zAxis]
  SETTABLEKS R58 R57 K43 ["Direction"]
  SETTABLEKS R45 R57 K8 ["Size"]
  MOVE R58 R54
  MOVE R59 R55
  MOVE R60 R56
  MOVE R61 R57
  CALL R58 3 0
  JUMP [+34]
  GETTABLEKS R55 R26 K28 ["Z"]
  JUMPIFEQKN R55 K42 [0] [+31]
  DUPTABLE R55 K45 [{"Direction", "Increment", "Size"}]
  GETIMPORT R56 K52 [Vector3.zAxis]
  SETTABLEKS R56 R55 K43 ["Direction"]
  GETTABLEKS R56 R26 K28 ["Z"]
  SETTABLEKS R56 R55 K44 ["Increment"]
  SETTABLEKS R45 R55 K8 ["Size"]
  DUPTABLE R56 K48 [{"Direction", "Size"}]
  GETIMPORT R57 K47 [Vector3.xAxis]
  SETTABLEKS R57 R56 K43 ["Direction"]
  SETTABLEKS R43 R56 K8 ["Size"]
  DUPTABLE R57 K48 [{"Direction", "Size"}]
  GETIMPORT R58 K50 [Vector3.yAxis]
  SETTABLEKS R58 R57 K43 ["Direction"]
  SETTABLEKS R44 R57 K8 ["Size"]
  MOVE R58 R54
  MOVE R59 R55
  MOVE R60 R56
  MOVE R61 R57
  CALL R58 3 0
  GETUPVAL R55 10
  CALL R55 0 1
  JUMPIFNOT R55 [+10]
  GETUPVAL R58 16
  GETTABLEKS R57 R58 K53 ["NormalizeBrushTimer"]
  MOVE R58 R42
  MOVE R59 R6
  MOVE R60 R5
  CALL R57 3 -1
  NAMECALL R55 R1 K54 ["addTimeStatistic"]
  CALL R55 -1 0
  JUMPIFNOT R12 [+12]
  GETUPVAL R56 9
  GETTABLEKS R55 R56 K37 ["Terrain"]
  MOVE R57 R36
  GETUPVAL R59 5
  GETTABLEKS R58 R59 K19 ["VoxelResolution"]
  MOVE R59 R49
  MOVE R60 R50
  NAMECALL R55 R55 K55 ["WriteVoxels"]
  CALL R55 5 0
  GETUPVAL R56 9
  GETTABLEKS R55 R56 K37 ["Terrain"]
  MOVE R57 R36
  GETUPVAL R59 5
  GETTABLEKS R58 R59 K19 ["VoxelResolution"]
  MOVE R59 R40
  MOVE R60 R41
  NAMECALL R55 R55 K55 ["WriteVoxels"]
  CALL R55 5 0
  CLOSEUPVALS R47
  FORGLOOP R31 2 [-274]
  LOADB R31 1
  LOADN R32 0
  RETURN R31 2

PROTO_6:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["ProfileTools"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K7 [debug.profilebegin]
  LOADK R3 K8 ["Flatten"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K9 ["Payload"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K12 ["Height"]
  GETTABLEKS R6 R4 K13 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["FlattenMode"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K17 ["PullTerrain"]
  GETTABLE R10 R3 R11
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K18 ["Strength"]
  GETTABLE R11 R3 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K0 ["State"]
  GETTABLE R12 R3 R13
  LOADB R13 1
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K19 ["Grow"]
  JUMPIFEQ R8 R14 [+8]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K20 ["Both"]
  JUMPIFEQ R8 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  LOADB R14 1
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K21 ["Erode"]
  JUMPIFEQ R8 R15 [+8]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K20 ["Both"]
  JUMPIFEQ R8 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K22 ["Sphere"]
  JUMPIFNOTEQ R7 R17 [+3]
  MOVE R16 R6
  JUMP [+1]
  MOVE R16 R5
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K23 ["VoxelResolution"]
  MUL R15 R16 R17
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K23 ["VoxelResolution"]
  MUL R16 R6 R17
  MULK R17 R16 K24 [0.5]
  GETTABLEKS R18 R2 K25 ["Plane"]
  GETTABLEKS R19 R2 K26 ["PlanePosition"]
  GETTABLEKS R21 R18 K27 ["X"]
  FASTCALL1 MATH_ABS R21 [+2]
  GETIMPORT R20 K30 [math.abs]
  CALL R20 1 1
  GETTABLEKS R22 R18 K31 ["Y"]
  FASTCALL1 MATH_ABS R22 [+2]
  GETIMPORT R21 K30 [math.abs]
  CALL R21 1 1
  GETTABLEKS R23 R18 K32 ["Z"]
  FASTCALL1 MATH_ABS R23 [+2]
  GETIMPORT R22 K30 [math.abs]
  CALL R22 1 1
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K22 ["Sphere"]
  JUMPIFEQ R7 R24 [+2]
  LOADB R23 0 +1
  LOADB R23 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K33 ["Cube"]
  JUMPIFEQ R7 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  JUMPIFNOTLE R22 R21 [+18]
  JUMPIFNOTLE R20 R21 [+16]
  LOADN R26 0
  GETTABLEKS R28 R18 K31 ["Y"]
  LOADN R29 0
  JUMPIFNOTLT R29 R28 [+3]
  LOADN R27 1
  JUMP [+1]
  LOADN R27 255
  LOADN R28 0
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K36 [Vector3.new]
  CALL R25 3 1
  JUMP [+33]
  JUMPIFNOTLE R21 R22 [+18]
  JUMPIFNOTLE R20 R22 [+16]
  LOADN R26 0
  LOADN R27 0
  GETTABLEKS R29 R18 K32 ["Z"]
  LOADN R30 0
  JUMPIFNOTLT R30 R29 [+3]
  LOADN R28 1
  JUMP [+1]
  LOADN R28 255
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K36 [Vector3.new]
  CALL R25 3 1
  JUMP [+14]
  GETTABLEKS R27 R18 K27 ["X"]
  LOADN R28 0
  JUMPIFNOTLT R28 R27 [+3]
  LOADN R26 1
  JUMP [+1]
  LOADN R26 255
  LOADN R27 0
  LOADN R28 0
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K36 [Vector3.new]
  CALL R25 3 1
  GETUPVAL R26 6
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K37 ["PivotPosition"]
  GETTABLE R27 R3 R28
  GETTABLEKS R28 R12 K38 ["Position"]
  MOVE R29 R15
  CALL R26 3 1
  GETUPVAL R27 7
  GETTABLEKS R28 R2 K38 ["Position"]
  MOVE R29 R26
  MOVE R30 R17
  CALL R27 3 1
  LENGTH R29 R27
  GETTABLE R28 R27 R29
  SETTABLEKS R28 R2 K38 ["Position"]
  GETUPVAL R28 8
  MOVE R29 R26
  MOVE R30 R17
  MOVE R31 R15
  CALL R28 3 2
  MOVE R30 R27
  LOADNIL R31
  LOADNIL R32
  FORGPREP R30
  GETIMPORT R35 K40 [Region3.new]
  MOVE R36 R28
  MOVE R37 R29
  CALL R35 2 1
  GETTABLEKS R38 R29 K27 ["X"]
  GETTABLEKS R39 R28 K27 ["X"]
  SUB R37 R38 R39
  MULK R36 R37 K24 [0.5]
  GETUPVAL R38 9
  GETTABLEKS R37 R38 K41 ["Terrain"]
  MOVE R39 R35
  GETUPVAL R41 5
  GETTABLEKS R40 R41 K23 ["VoxelResolution"]
  NAMECALL R37 R37 K42 ["ReadVoxels"]
  CALL R37 3 2
  LOADNIL R39
  SETTABLEKS R39 R38 K13 ["Size"]
  LOADNIL R39
  SETTABLEKS R39 R37 K13 ["Size"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K41 ["Terrain"]
  MOVE R41 R35
  GETUPVAL R43 5
  GETTABLEKS R42 R43 K23 ["VoxelResolution"]
  NAMECALL R39 R39 K42 ["ReadVoxels"]
  CALL R39 3 2
  LENGTH R41 R37
  GETTABLEN R43 R37 1
  LENGTH R42 R43
  GETTABLEN R45 R37 1
  GETTABLEN R44 R45 1
  LENGTH R43 R44
  MOVE R45 R41
  MOVE R46 R42
  MOVE R47 R43
  FASTCALL VECTOR [+2]
  GETIMPORT R44 K36 [Vector3.new]
  CALL R44 3 1
  GETTABLEKS R47 R19 K31 ["Y"]
  GETTABLEKS R48 R34 K31 ["Y"]
  SUB R46 R47 R48
  GETUPVAL R48 5
  GETTABLEKS R47 R48 K23 ["VoxelResolution"]
  DIV R45 R46 R47
  GETTABLEKS R47 R34 K31 ["Y"]
  GETUPVAL R49 5
  GETTABLEKS R48 R49 K23 ["VoxelResolution"]
  DIV R46 R47 R48
  FASTCALL1 MATH_FLOOR R46 [+3]
  MOVE R49 R46
  GETIMPORT R48 K44 [math.floor]
  CALL R48 1 1
  SUB R47 R46 R48
  DIVK R52 R42 K45 [2]
  ADD R51 R45 R52
  ADD R50 R51 R47
  FASTCALL1 MATH_FLOOR R50 [+2]
  GETIMPORT R49 K44 [math.floor]
  CALL R49 1 1
  LOADN R50 1
  MOVE R51 R42
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R48 K47 [math.clamp]
  CALL R48 3 1
  GETTABLEKS R52 R19 K31 ["Y"]
  ADDK R51 R52 K45 [2]
  GETUPVAL R53 5
  GETTABLEKS R52 R53 K23 ["VoxelResolution"]
  MOD R50 R51 R52
  GETUPVAL R52 5
  GETTABLEKS R51 R52 K23 ["VoxelResolution"]
  DIV R49 R50 R51
  MULK R51 R49 K48 [256]
  FASTCALL1 MATH_FLOOR R51 [+2]
  GETIMPORT R50 K44 [math.floor]
  CALL R50 1 1
  DIVK R49 R50 K48 [256]
  LOADB R50 0
  GETUPVAL R52 4
  GETTABLEKS R51 R52 K22 ["Sphere"]
  JUMPIFNOTEQ R7 R51 [+6]
  LOADN R51 2
  JUMPIFLT R51 R6 [+2]
  LOADB R50 0 +1
  LOADB R50 1
  GETUPVAL R53 4
  GETTABLEKS R52 R53 K49 ["Cylinder"]
  JUMPIFNOTEQ R7 R52 [+5]
  LOADB R51 1
  LOADN R52 2
  JUMPIFLT R52 R6 [+2]
  MOVE R51 R50
  GETTABLEKS R54 R28 K27 ["X"]
  GETUPVAL R56 10
  MULK R55 R56 K24 [0.5]
  SUB R53 R54 R55
  GETTABLEKS R54 R34 K27 ["X"]
  SUB R52 R53 R54
  GETTABLEKS R55 R28 K31 ["Y"]
  GETUPVAL R57 10
  MULK R56 R57 K24 [0.5]
  SUB R54 R55 R56
  GETTABLEKS R55 R34 K31 ["Y"]
  SUB R53 R54 R55
  GETTABLEKS R56 R28 K32 ["Z"]
  GETUPVAL R58 10
  MULK R57 R58 K24 [0.5]
  SUB R55 R56 R57
  GETTABLEKS R56 R34 K32 ["Z"]
  SUB R54 R55 R56
  LOADNIL R55
  LOADNIL R56
  LOADNIL R57
  LOADNIL R58
  GETUPVAL R59 11
  CALL R59 0 1
  JUMPIFNOT R59 [+4]
  GETIMPORT R59 K52 [os.clock]
  CALL R59 0 1
  MOVE R58 R59
  LOADN R61 1
  MOVE R59 R41
  LOADN R60 1
  FORNPREP R59
  JUMPIFNOT R51 [+6]
  GETUPVAL R65 5
  GETTABLEKS R64 R65 K23 ["VoxelResolution"]
  MUL R63 R61 R64
  ADD R62 R63 R52
  POWK R55 R62 K45 [2]
  GETTABLE R62 R38 R61
  GETTABLE R63 R37 R61
  GETTABLE R64 R40 R61
  GETTABLE R65 R39 R61
  LOADN R68 1
  MOVE R66 R43
  LOADN R67 1
  FORNPREP R66
  LOADN R69 1
  JUMPIFNOT R51 [+17]
  GETUPVAL R73 5
  GETTABLEKS R72 R73 K23 ["VoxelResolution"]
  MUL R71 R68 R72
  ADD R70 R71 R54
  POWK R56 R70 K45 [2]
  ADD R71 R55 R56
  FASTCALL1 MATH_SQRT R71 [+2]
  GETIMPORT R70 K54 [math.sqrt]
  CALL R70 1 1
  MOVE R57 R70
  GETUPVAL R70 12
  MOVE R71 R57
  MOVE R72 R36
  CALL R70 2 1
  MOVE R69 R70
  MUL R71 R69 R11
  MULK R70 R71 K55 [0.1]
  MUL R72 R69 R11
  MULK R71 R72 K55 [0.1]
  LOADB R72 0
  LOADB R73 0
  JUMPIFNOT R13 [+79]
  LOADN R76 1
  MOVE R74 R48
  LOADN R75 1
  FORNPREP R74
  GETTABLE R78 R62 R76
  GETTABLE R77 R78 R68
  GETTABLE R79 R63 R76
  GETTABLE R78 R79 R68
  LOADN R79 1
  JUMPIFNOT R51 [+20]
  JUMPIFNOT R50 [+13]
  ADD R82 R55 R56
  GETUPVAL R87 5
  GETTABLEKS R86 R87 K23 ["VoxelResolution"]
  MUL R85 R76 R86
  ADD R84 R85 R53
  POWK R83 R84 K45 [2]
  ADD R81 R82 R83
  FASTCALL1 MATH_SQRT R81 [+2]
  GETIMPORT R80 K54 [math.sqrt]
  CALL R80 1 1
  JUMP [+1]
  MOVE R80 R57
  GETUPVAL R81 13
  MOVE R82 R80
  MOVE R83 R36
  CALL R81 2 1
  MOVE R79 R81
  LOADN R80 0
  JUMPIFLE R79 R80 [+46]
  JUMPIFNOTEQKN R77 K56 [0] [+3]
  JUMPIF R73 [+1]
  JUMP [+41]
  LOADB R73 1
  JUMPIFEQKN R77 K57 [1] [+39]
  ADD R80 R77 R70
  LOADN R81 1
  JUMPIFNOTLT R81 R80 [+4]
  SUBK R70 R80 K57 [1]
  LOADN R80 1
  JUMP [+1]
  LOADN R70 0
  JUMPIFNOTEQ R76 R48 [+4]
  JUMPIFNOTLT R49 R80 [+2]
  MOVE R80 R49
  JUMPIFNOTEQKN R77 K56 [0] [+9]
  LOADN R81 1
  JUMPIFNOTLT R81 R76 [+6]
  GETTABLE R82 R37 R61
  SUBK R83 R76 K57 [1]
  GETTABLE R81 R82 R83
  GETTABLE R78 R81 R68
  JUMP [0]
  JUMPIFNOT R9 [+4]
  GETIMPORT R81 K61 [Enum.Material.Water]
  JUMPIFEQ R78 R81 [+12]
  JUMPIFNOT R78 [+10]
  JUMPIFEQ R77 R80 [+9]
  GETTABLE R81 R64 R76
  SETTABLE R80 R81 R68
  GETTABLE R81 R65 R76
  SETTABLE R78 R81 R68
  LOADB R72 1
  JUMPIFEQKN R70 K56 [0] [+2]
  FORNLOOP R74
  LOADB R74 0
  SETGLOBAL R74 K62 ["exitedTerrain"]
  JUMPIFNOT R14 [+73]
  MOVE R76 R42
  MOVE R74 R48
  LOADN R75 255
  FORNPREP R74
  GETTABLE R78 R62 R76
  GETTABLE R77 R78 R68
  GETTABLE R79 R63 R76
  GETTABLE R78 R79 R68
  LOADN R79 1
  JUMPIFNOT R51 [+20]
  JUMPIFNOT R50 [+13]
  ADD R82 R55 R56
  GETUPVAL R87 5
  GETTABLEKS R86 R87 K23 ["VoxelResolution"]
  MUL R85 R76 R86
  ADD R84 R85 R53
  POWK R83 R84 K45 [2]
  ADD R81 R82 R83
  FASTCALL1 MATH_SQRT R81 [+2]
  GETIMPORT R80 K54 [math.sqrt]
  CALL R80 1 1
  JUMP [+1]
  MOVE R80 R57
  GETUPVAL R81 13
  MOVE R82 R80
  MOVE R83 R36
  CALL R81 2 1
  MOVE R79 R81
  LOADN R80 0
  JUMPIFLE R79 R80 [+40]
  JUMPIFNOTEQKN R77 K57 [1] [+5]
  GETGLOBAL R80 K62 ["exitedTerrain"]
  JUMPIF R80 [+1]
  JUMP [+33]
  LOADB R80 1
  SETGLOBAL R80 K62 ["exitedTerrain"]
  JUMPIFEQKN R77 K56 [0] [+29]
  SUB R80 R77 R71
  LOADN R81 0
  JUMPIFNOTLT R80 R81 [+4]
  MINUS R71 R80
  LOADN R80 0
  JUMP [+1]
  LOADN R71 0
  JUMPIFNOTEQ R76 R48 [+4]
  JUMPIFNOTLT R80 R49 [+2]
  MOVE R80 R49
  JUMPIFNOTEQKN R80 K56 [0] [+3]
  GETIMPORT R78 K64 [Enum.Material.Air]
  JUMPIFNOT R9 [+4]
  GETIMPORT R81 K61 [Enum.Material.Water]
  JUMPIFEQ R78 R81 [+8]
  GETTABLE R81 R64 R76
  SETTABLE R80 R81 R68
  GETTABLE R81 R65 R76
  SETTABLE R78 R81 R68
  JUMPIFEQKN R71 K56 [0] [+2]
  FORNLOOP R74
  FORNLOOP R66
  FORNLOOP R59
  GETUPVAL R59 11
  CALL R59 0 1
  JUMPIFNOT R59 [+10]
  GETUPVAL R62 14
  GETTABLEKS R61 R62 K65 ["NormalizeBrushTimer"]
  MOVE R62 R58
  MOVE R63 R6
  MOVE R64 R5
  CALL R61 3 -1
  NAMECALL R59 R1 K66 ["addTimeStatistic"]
  CALL R59 -1 0
  GETUPVAL R60 9
  GETTABLEKS R59 R60 K41 ["Terrain"]
  MOVE R61 R35
  GETUPVAL R63 5
  GETTABLEKS R62 R63 K23 ["VoxelResolution"]
  MOVE R63 R39
  MOVE R64 R40
  NAMECALL R59 R59 K67 ["WriteVoxels"]
  CALL R59 5 0
  FORGLOOP R30 2 [-386]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K4 ["ProfileTools"]
  CALL R30 0 1
  JUMPIFNOT R30 [+3]
  GETIMPORT R30 K69 [debug.profileend]
  CALL R30 0 0
  LOADB R30 1
  LOADN R31 0
  RETURN R30 2

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ChangeHistoryService"]
  LOADK R2 K1 ["Flatten"]
  NAMECALL R0 R0 K2 ["SetWaypoint"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U17
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U18
  CAPTURE UPVAL U10
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U16
  NEWCLOSURE R5 P3
  CAPTURE VAL R1
  GETUPVAL R7 21
  GETTABLEKS R6 R7 K1 ["new"]
  DUPTABLE R7 K7 [{"Budget", "Name", "OnFinish", "OnStart", "OnStep"}]
  LOADK R8 K8 [0.005]
  SETTABLEKS R8 R7 K2 ["Budget"]
  SETTABLEKS R0 R7 K3 ["Name"]
  SETTABLEKS R5 R7 K4 ["OnFinish"]
  SETTABLEKS R2 R7 K5 ["OnStart"]
  GETUPVAL R9 22
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R4
  JUMP [+1]
  MOVE R8 R3
  SETTABLEKS R8 R7 K6 ["OnStep"]
  CALL R6 1 -1
  RETURN R6 -1

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
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K9 ["Util"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["AnalyticsHelper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K11 ["Operations"]
  GETTABLEKS R5 R6 K12 ["BaseOperation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K13 ["CalculateAutoMaterial"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["CalculateBrushOccupancy"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["CalculateMagnitudePercent"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K16 ["CalculateWaterLevel"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K17 ["ClampVoxelBoundaries"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R2 K18 ["ConvertForPivot"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R2 K19 ["DebugFlags"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R2 K20 ["getDraggedPositions"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R2 K21 ["getPlaneIntersection"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R2 K22 ["DEPRECATED_CalculateAutoMaterial"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R2 K23 ["DEPRECATED_CalculateBrushPower"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K24 ["Types"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K25 ["BrushShape"]
  GETTABLEKS R18 R16 K26 ["BrushSettings"]
  GETTABLEKS R19 R16 K27 ["Category"]
  GETTABLEKS R20 R16 K28 ["FlattenMode"]
  GETTABLEKS R21 R16 K29 ["FlattenPlane"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K6 ["Src"]
  GETTABLEKS R24 R25 K30 ["Flags"]
  GETTABLEKS R23 R24 K31 ["getFFlagTerrainEditorWaterAutofill"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K6 ["Src"]
  GETTABLEKS R25 R26 K30 ["Flags"]
  GETTABLEKS R24 R25 K32 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K6 ["Src"]
  GETTABLEKS R26 R27 K30 ["Flags"]
  GETTABLEKS R25 R26 K33 ["getFFlagTerrainEditorBrushPerformanceEnhancements"]
  CALL R24 1 1
  MOVE R25 R24
  CALL R25 0 1
  GETTABLEKS R27 R1 K35 ["VoxelResolution"]
  MULK R26 R27 K34 [0.5]
  GETTABLEKS R27 R1 K35 ["VoxelResolution"]
  DUPCLOSURE R28 K36 [PROTO_8]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R23
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R26
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R27
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R24
  RETURN R28 1
