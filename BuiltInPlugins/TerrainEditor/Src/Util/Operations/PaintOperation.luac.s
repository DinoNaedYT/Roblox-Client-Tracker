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
  GETTABLEKS R8 R9 K6 ["State"]
  GETTABLE R7 R2 R8
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["Sphere"]
  JUMPIFNOTEQ R6 R10 [+3]
  MOVE R9 R5
  JUMP [+1]
  MOVE R9 R4
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["VoxelResolution"]
  MUL R8 R9 R10
  GETUPVAL R9 4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["PivotPosition"]
  GETTABLE R10 R2 R11
  GETTABLEKS R11 R7 K10 ["Position"]
  MOVE R12 R8
  CALL R9 3 1
  DUPTABLE R10 K11 [{"Position"}]
  SETTABLEKS R9 R10 K10 ["Position"]
  SETTABLEKS R10 R0 K6 ["State"]
  RETURN R0 0

PROTO_1:
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
  GETTABLEKS R9 R10 K0 ["State"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETTABLEKS R11 R0 K4 ["Payload"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["MaterialSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K12 ["MaterialMode"]
  GETTABLE R11 R10 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["SourceMaterial"]
  GETTABLE R12 R10 R13
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K14 ["TargetMaterial"]
  GETTABLE R13 R10 R14
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K15 ["Sphere"]
  JUMPIFNOTEQ R7 R16 [+3]
  MOVE R15 R6
  JUMP [+1]
  MOVE R15 R5
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["VoxelResolution"]
  MUL R14 R15 R16
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["VoxelResolution"]
  MUL R15 R6 R16
  MULK R16 R15 K17 [0.5]
  GETUPVAL R17 5
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K18 ["PivotPosition"]
  GETTABLE R18 R3 R19
  GETTABLEKS R19 R8 K19 ["Position"]
  MOVE R20 R14
  CALL R17 3 1
  GETUPVAL R18 6
  GETTABLEKS R19 R2 K19 ["Position"]
  MOVE R20 R17
  MOVE R21 R16
  CALL R18 3 1
  LENGTH R20 R18
  GETTABLE R19 R18 R20
  SETTABLEKS R19 R2 K19 ["Position"]
  MOVE R19 R18
  LOADNIL R20
  LOADNIL R21
  FORGPREP R19
  GETUPVAL R24 7
  MOVE R25 R23
  MOVE R26 R16
  MOVE R27 R14
  CALL R24 3 2
  GETIMPORT R26 K22 [Region3.new]
  MOVE R27 R24
  MOVE R28 R25
  CALL R26 2 1
  GETTABLEKS R29 R25 K23 ["X"]
  GETTABLEKS R30 R24 K23 ["X"]
  SUB R28 R29 R30
  MULK R27 R28 K17 [0.5]
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K24 ["Terrain"]
  MOVE R30 R26
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K16 ["VoxelResolution"]
  NAMECALL R28 R28 K25 ["ReadVoxels"]
  CALL R28 3 2
  LOADNIL R30
  GETUPVAL R31 9
  CALL R31 0 1
  JUMPIFNOT R31 [+4]
  GETIMPORT R31 K28 [os.clock]
  CALL R31 0 1
  MOVE R30 R31
  LOADNIL R31
  SETTABLEKS R31 R28 K8 ["Size"]
  LOADNIL R31
  SETTABLEKS R31 R29 K8 ["Size"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 0
  NEWTABLE R33 0 0
  NEWTABLE R34 0 0
  MOVE R35 R29
  LOADNIL R36
  LOADNIL R37
  FORGPREP R35
  GETTABLEKS R42 R24 K23 ["X"]
  SUBK R44 R38 K17 [0.5]
  GETUPVAL R46 4
  GETTABLEKS R45 R46 K16 ["VoxelResolution"]
  MUL R43 R44 R45
  ADD R41 R42 R43
  GETTABLEKS R42 R23 K23 ["X"]
  SUB R40 R41 R42
  NEWTABLE R41 0 0
  SETTABLE R41 R31 R38
  NEWTABLE R41 0 0
  SETTABLE R41 R32 R38
  NEWTABLE R41 0 0
  SETTABLE R41 R33 R38
  NEWTABLE R41 0 0
  SETTABLE R41 R34 R38
  MOVE R41 R39
  LOADNIL R42
  LOADNIL R43
  FORGPREP R41
  GETTABLEKS R48 R24 K29 ["Y"]
  SUBK R50 R44 K17 [0.5]
  GETUPVAL R52 4
  GETTABLEKS R51 R52 K16 ["VoxelResolution"]
  MUL R49 R50 R51
  ADD R47 R48 R49
  GETTABLEKS R48 R23 K29 ["Y"]
  SUB R46 R47 R48
  GETTABLE R47 R31 R38
  NEWTABLE R48 0 0
  SETTABLE R48 R47 R44
  GETTABLE R47 R32 R38
  NEWTABLE R48 0 0
  SETTABLE R48 R47 R44
  GETTABLE R47 R33 R38
  NEWTABLE R48 0 0
  SETTABLE R48 R47 R44
  GETTABLE R47 R34 R38
  NEWTABLE R48 0 0
  SETTABLE R48 R47 R44
  MOVE R47 R45
  LOADNIL R48
  LOADNIL R49
  FORGPREP R47
  MOVE R53 R38
  MOVE R54 R44
  MOVE R55 R50
  FASTCALL VECTOR [+2]
  GETIMPORT R52 K31 [Vector3.new]
  CALL R52 3 1
  GETTABLE R55 R28 R38
  GETTABLE R54 R55 R44
  GETTABLE R53 R54 R50
  MOVE R55 R40
  MOVE R56 R46
  GETTABLEKS R59 R24 K32 ["Z"]
  SUBK R61 R50 K17 [0.5]
  GETUPVAL R63 4
  GETTABLEKS R62 R63 K16 ["VoxelResolution"]
  MUL R60 R61 R62
  ADD R58 R59 R60
  GETTABLEKS R59 R23 K32 ["Z"]
  SUB R57 R58 R59
  FASTCALL VECTOR [+2]
  GETIMPORT R54 K31 [Vector3.new]
  CALL R54 3 1
  GETUPVAL R55 10
  MOVE R56 R54
  MOVE R57 R6
  MOVE R58 R7
  MOVE R59 R27
  CALL R55 4 2
  LOADN R57 20
  JUMPIFNOTLT R57 R6 [+4]
  SUBK R58 R6 K34 [20]
  DIVK R57 R58 K33 [5]
  MUL R56 R56 R57
  GETTABLE R58 R33 R38
  GETTABLE R57 R58 R44
  GETIMPORT R58 K38 [Enum.Material.Air]
  SETTABLE R58 R57 R50
  GETTABLE R58 R34 R38
  GETTABLE R57 R58 R44
  LOADN R58 0
  SETTABLE R58 R57 R50
  LOADN R57 0
  JUMPIFNOTLT R57 R55 [+42]
  JUMPIFNOT R9 [+4]
  GETIMPORT R57 K40 [Enum.Material.Water]
  JUMPIFEQ R53 R57 [+37]
  GETUPVAL R58 11
  GETTABLEKS R57 R58 K41 ["Paint"]
  JUMPIFNOTEQ R11 R57 [+8]
  GETTABLE R58 R32 R38
  GETTABLE R57 R58 R44
  SETTABLE R51 R57 R50
  GETTABLE R58 R31 R38
  GETTABLE R57 R58 R44
  SETTABLE R12 R57 R50
  JUMP [+30]
  GETUPVAL R58 11
  GETTABLEKS R57 R58 K42 ["Replace"]
  JUMPIFNOTEQ R11 R57 [+26]
  GETTABLE R58 R32 R38
  GETTABLE R57 R58 R44
  GETIMPORT R59 K38 [Enum.Material.Air]
  JUMPIFNOTEQ R12 R59 [+3]
  LOADN R58 1
  JUMP [+1]
  MOVE R58 R51
  SETTABLE R58 R57 R50
  GETTABLE R58 R31 R38
  GETTABLE R57 R58 R44
  JUMPIFNOTEQ R12 R53 [+3]
  MOVE R58 R13
  JUMP [+1]
  MOVE R58 R53
  SETTABLE R58 R57 R50
  JUMP [+6]
  GETTABLE R58 R32 R38
  GETTABLE R57 R58 R44
  SETTABLE R51 R57 R50
  GETTABLE R58 R31 R38
  GETTABLE R57 R58 R44
  SETTABLE R53 R57 R50
  FORGLOOP R47 2 [-99]
  FORGLOOP R41 2 [-132]
  FORGLOOP R35 2 [-161]
  GETUPVAL R35 9
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETUPVAL R38 12
  GETTABLEKS R37 R38 K43 ["NormalizeBrushTimer"]
  MOVE R38 R30
  MOVE R39 R6
  MOVE R40 R5
  CALL R37 3 -1
  NAMECALL R35 R1 K44 ["addTimeStatistic"]
  CALL R35 -1 0
  GETIMPORT R35 K40 [Enum.Material.Water]
  JUMPIFEQ R12 R35 [+5]
  GETIMPORT R35 K40 [Enum.Material.Water]
  JUMPIFNOTEQ R13 R35 [+13]
  GETUPVAL R36 8
  GETTABLEKS R35 R36 K24 ["Terrain"]
  MOVE R37 R26
  GETUPVAL R39 4
  GETTABLEKS R38 R39 K16 ["VoxelResolution"]
  MOVE R39 R33
  MOVE R40 R34
  NAMECALL R35 R35 K45 ["WriteVoxels"]
  CALL R35 5 0
  GETUPVAL R36 8
  GETTABLEKS R35 R36 K24 ["Terrain"]
  MOVE R37 R26
  GETUPVAL R39 4
  GETTABLEKS R38 R39 K16 ["VoxelResolution"]
  MOVE R39 R31
  MOVE R40 R32
  NAMECALL R35 R35 K45 ["WriteVoxels"]
  CALL R35 5 0
  FORGLOOP R19 2 [-260]
  LOADB R19 1
  LOADN R20 0
  RETURN R19 2

PROTO_2:
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
  LOADK R3 K8 ["Paint Operation"]
  CALL R2 1 0
  GETIMPORT R2 K11 [os.clock]
  CALL R2 0 1
  GETTABLEKS R3 R0 K0 ["State"]
  GETTABLEKS R5 R0 K12 ["Payload"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["BrushSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["BrushSize"]
  GETTABLE R5 R4 R6
  GETTABLEKS R6 R5 K15 ["Height"]
  GETTABLEKS R7 R5 K16 ["Size"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K17 ["BrushShape"]
  GETTABLE R8 R4 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K0 ["State"]
  GETTABLE R9 R4 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["IgnoreWater"]
  GETTABLE R10 R4 R11
  GETTABLEKS R12 R0 K12 ["Payload"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K19 ["MaterialSettings"]
  GETTABLE R11 R12 R13
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K20 ["MaterialMode"]
  GETTABLE R12 R11 R13
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K21 ["SourceMaterial"]
  GETTABLE R13 R11 R14
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K22 ["TargetMaterial"]
  GETTABLE R14 R11 R15
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K23 ["Sphere"]
  JUMPIFNOTEQ R8 R17 [+3]
  MOVE R16 R7
  JUMP [+1]
  MOVE R16 R6
  GETUPVAL R17 5
  MUL R15 R16 R17
  GETUPVAL R17 5
  MUL R16 R7 R17
  MULK R17 R16 K24 [0.5]
  GETUPVAL R18 6
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K25 ["PivotPosition"]
  GETTABLE R19 R4 R20
  GETTABLEKS R20 R9 K26 ["Position"]
  MOVE R21 R15
  CALL R18 3 1
  GETUPVAL R19 7
  GETTABLEKS R20 R3 K26 ["Position"]
  MOVE R21 R18
  MOVE R22 R17
  CALL R19 3 1
  LENGTH R21 R19
  GETTABLE R20 R19 R21
  SETTABLEKS R20 R3 K26 ["Position"]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K27 ["Paint"]
  JUMPIFEQ R12 R21 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K28 ["Replace"]
  JUMPIFEQ R12 R22 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  MOVE R22 R19
  LOADNIL R23
  LOADNIL R24
  FORGPREP R22
  GETTABLEKS R27 R3 K29 ["LastPosition"]
  JUMPIFNOTEQ R26 R27 [+15]
  NAMECALL R27 R1 K30 ["skipBudget"]
  CALL R27 1 0
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K4 ["ProfileTools"]
  CALL R27 0 1
  JUMPIFNOT R27 [+3]
  GETIMPORT R27 K32 [debug.profileend]
  CALL R27 0 0
  LOADB R27 1
  LOADN R28 0
  RETURN R27 2
  SETTABLEKS R26 R3 K29 ["LastPosition"]
  GETUPVAL R27 9
  MOVE R28 R26
  MOVE R29 R17
  MOVE R30 R15
  CALL R27 3 2
  GETIMPORT R29 K35 [Region3.new]
  MOVE R30 R27
  MOVE R31 R28
  CALL R29 2 1
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K36 ["Cube"]
  JUMPIFNOTEQ R8 R30 [+13]
  JUMPIFNOT R21 [+11]
  GETUPVAL R31 10
  GETTABLEKS R30 R31 K37 ["Terrain"]
  MOVE R32 R29
  GETUPVAL R33 5
  MOVE R34 R13
  MOVE R35 R14
  NAMECALL R30 R30 K38 ["ReplaceMaterial"]
  CALL R30 5 0
  JUMP [+207]
  GETTABLEKS R32 R28 K39 ["X"]
  GETTABLEKS R33 R27 K39 ["X"]
  SUB R31 R32 R33
  MULK R30 R31 K24 [0.5]
  GETUPVAL R32 10
  GETTABLEKS R31 R32 K37 ["Terrain"]
  MOVE R33 R29
  GETUPVAL R34 5
  NAMECALL R31 R31 K40 ["ReadVoxels"]
  CALL R31 3 2
  LOADNIL R33
  SETTABLEKS R33 R31 K16 ["Size"]
  LOADNIL R33
  SETTABLEKS R33 R32 K16 ["Size"]
  GETUPVAL R33 5
  GETIMPORT R35 K44 [Enum.Material.Air]
  JUMPIFEQ R13 R35 [+2]
  LOADB R34 0 +1
  LOADB R34 1
  LOADB R35 0
  GETUPVAL R37 4
  GETTABLEKS R36 R37 K23 ["Sphere"]
  JUMPIFNOTEQ R8 R36 [+6]
  LOADN R36 2
  JUMPIFLT R36 R7 [+2]
  LOADB R35 0 +1
  LOADB R35 1
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K45 ["Cylinder"]
  JUMPIFNOTEQ R8 R37 [+5]
  LOADB R36 1
  LOADN R37 2
  JUMPIFLT R37 R7 [+2]
  MOVE R36 R35
  GETTABLEKS R39 R27 K39 ["X"]
  MULK R40 R33 K24 [0.5]
  SUB R38 R39 R40
  GETTABLEKS R39 R26 K39 ["X"]
  SUB R37 R38 R39
  GETTABLEKS R40 R27 K46 ["Y"]
  MULK R41 R33 K24 [0.5]
  SUB R39 R40 R41
  GETTABLEKS R40 R26 K46 ["Y"]
  SUB R38 R39 R40
  GETTABLEKS R41 R27 K47 ["Z"]
  MULK R42 R33 K24 [0.5]
  SUB R40 R41 R42
  GETTABLEKS R41 R26 K47 ["Z"]
  SUB R39 R40 R41
  LOADNIL R40
  LOADNIL R41
  LOADNIL R42
  GETUPVAL R43 11
  CALL R43 0 1
  JUMPIFNOT R43 [+4]
  GETIMPORT R43 K11 [os.clock]
  CALL R43 0 1
  MOVE R42 R43
  MOVE R43 R32
  LOADNIL R44
  LOADNIL R45
  FORGPREP R43
  JUMPIFNOT R36 [+4]
  MUL R49 R46 R33
  ADD R48 R49 R37
  POWK R40 R48 K48 [2]
  JUMP [+1]
  LOADNIL R40
  GETTABLE R48 R31 R46
  MOVE R49 R47
  LOADNIL R50
  LOADNIL R51
  FORGPREP R49
  JUMPIFNOT R35 [+5]
  MUL R56 R52 R33
  ADD R55 R56 R38
  POWK R54 R55 K48 [2]
  ADD R41 R40 R54
  JUMP [+1]
  LOADNIL R41
  GETTABLE R54 R48 R52
  MOVE R55 R53
  LOADNIL R56
  LOADNIL R57
  FORGPREP R55
  GETTABLE R60 R54 R58
  LOADN R61 1
  JUMPIFNOT R36 [+20]
  MUL R64 R58 R33
  ADD R63 R64 R39
  POWK R62 R63 K48 [2]
  JUMPIFNOT R35 [+6]
  ADD R64 R41 R62
  FASTCALL1 MATH_SQRT R64 [+2]
  GETIMPORT R63 K51 [math.sqrt]
  CALL R63 1 1
  JUMP [+5]
  ADD R64 R40 R62
  FASTCALL1 MATH_SQRT R64 [+2]
  GETIMPORT R63 K51 [math.sqrt]
  CALL R63 1 1
  GETUPVAL R64 12
  MOVE R65 R63
  MOVE R66 R30
  CALL R64 2 1
  MOVE R61 R64
  LOADN R62 0
  JUMPIFNOTLT R62 R61 [+23]
  JUMPIFNOT R10 [+4]
  GETIMPORT R62 K53 [Enum.Material.Water]
  JUMPIFEQ R60 R62 [+18]
  JUMPIFNOT R20 [+3]
  SETTABLE R59 R53 R58
  SETTABLE R13 R54 R58
  JUMP [+15]
  JUMPIFNOT R21 [+14]
  JUMPIFNOT R34 [+2]
  LOADN R62 1
  JUMP [+1]
  MOVE R62 R59
  SETTABLE R62 R53 R58
  JUMPIFNOTEQ R13 R60 [+3]
  MOVE R62 R14
  JUMP [+1]
  MOVE R62 R60
  SETTABLE R62 R54 R58
  JUMP [+2]
  SETTABLE R59 R53 R58
  SETTABLE R60 R54 R58
  FORGLOOP R55 2 [-51]
  FORGLOOP R49 2 [-65]
  FORGLOOP R43 2 [-78]
  GETUPVAL R43 11
  CALL R43 0 1
  JUMPIFNOT R43 [+10]
  GETUPVAL R46 13
  GETTABLEKS R45 R46 K54 ["NormalizeBrushTimer"]
  MOVE R46 R42
  MOVE R47 R7
  MOVE R48 R6
  CALL R45 3 -1
  NAMECALL R43 R1 K55 ["addTimeStatistic"]
  CALL R43 -1 0
  GETIMPORT R43 K53 [Enum.Material.Water]
  JUMPIFEQ R13 R43 [+5]
  GETIMPORT R43 K53 [Enum.Material.Water]
  JUMPIFNOTEQ R14 R43 [+13]
  GETUPVAL R44 10
  GETTABLEKS R43 R44 K37 ["Terrain"]
  MOVE R45 R29
  GETUPVAL R47 14
  GETTABLEKS R46 R47 K56 ["VoxelResolution"]
  GETIMPORT R47 K44 [Enum.Material.Air]
  NAMECALL R43 R43 K57 ["FillRegion"]
  CALL R43 4 0
  GETUPVAL R44 10
  GETTABLEKS R43 R44 K37 ["Terrain"]
  MOVE R45 R29
  GETUPVAL R47 14
  GETTABLEKS R46 R47 K56 ["VoxelResolution"]
  MOVE R47 R31
  MOVE R48 R32
  NAMECALL R43 R43 K58 ["WriteVoxels"]
  CALL R43 5 0
  FORGLOOP R22 2 [-255]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K4 ["ProfileTools"]
  CALL R22 0 1
  JUMPIFNOT R22 [+3]
  GETIMPORT R22 K32 [debug.profileend]
  CALL R22 0 0
  LOADB R22 1
  LOADN R23 0
  RETURN R22 2

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChangeHistoryService"]
  LOADK R4 K1 ["Paint"]
  NAMECALL R2 R2 K2 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U12
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U10
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U14
  CAPTURE UPVAL U11
  CAPTURE UPVAL U3
  NEWCLOSURE R5 P3
  CAPTURE VAL R1
  GETUPVAL R7 15
  GETTABLEKS R6 R7 K1 ["new"]
  DUPTABLE R7 K7 [{"Budget", "OnFinish", "OnStart", "OnStep", "Name"}]
  LOADK R8 K8 [0.005]
  SETTABLEKS R8 R7 K2 ["Budget"]
  SETTABLEKS R5 R7 K3 ["OnFinish"]
  SETTABLEKS R2 R7 K4 ["OnStart"]
  GETUPVAL R9 16
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R4
  JUMP [+1]
  MOVE R8 R3
  SETTABLEKS R8 R7 K5 ["OnStep"]
  SETTABLEKS R0 R7 K6 ["Name"]
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
  GETTABLEKS R2 R1 K9 ["VoxelResolution"]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["AnalyticsHelper"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Operations"]
  GETTABLEKS R6 R7 K13 ["BaseOperation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K14 ["CalculateBrushOccupancy"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K15 ["ClampVoxelBoundaries"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R3 K16 ["ConvertForPivot"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R3 K17 ["getDraggedPositions"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R3 K18 ["DEPRECATED_CalculateBrushPower"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["BrushShape"]
  GETTABLEKS R13 R11 K21 ["BrushSettings"]
  GETTABLEKS R14 R11 K22 ["Category"]
  GETTABLEKS R15 R11 K23 ["MaterialMode"]
  GETTABLEKS R16 R11 K24 ["MaterialSettings"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K10 ["Util"]
  GETTABLEKS R18 R19 K25 ["DebugFlags"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K26 ["Flags"]
  GETTABLEKS R19 R20 K27 ["getFFlagTerrainEditorBrushPerformanceEnhancements"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K26 ["Flags"]
  GETTABLEKS R20 R21 K28 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R19 1 1
  DUPCLOSURE R20 K29 [PROTO_4]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R18
  RETURN R20 1
