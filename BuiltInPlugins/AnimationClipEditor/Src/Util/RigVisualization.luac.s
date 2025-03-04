PROTO_0:
  GETTABLEKS R2 R0 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R1 R2 K1 ["Position"]
  RETURN R1 1

PROTO_1:
  LOADN R1 0
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFNOT R2 [+16]
  LOADK R5 K1 ["Bone"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R5 R2 K3 ["TransformedWorldCFrame"]
  GETTABLEKS R4 R5 K4 ["Position"]
  GETTABLEKS R6 R0 K3 ["TransformedWorldCFrame"]
  GETTABLEKS R5 R6 K4 ["Position"]
  SUB R3 R4 R5
  GETTABLEKS R1 R3 K5 ["Magnitude"]
  RETURN R1 1

PROTO_2:
  SUB R2 R1 R0
  GETTABLEKS R3 R2 K0 ["Magnitude"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["fuzzyEq"]
  MOVE R5 R3
  LOADN R6 0
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 1
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K4 [Vector3.new]
  CALL R4 3 1
  MOVE R2 R4
  JUMP [+1]
  DIV R2 R2 R3
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K4 [Vector3.new]
  CALL R4 3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["fuzzyEq"]
  MOVE R9 R4
  NAMECALL R7 R2 K5 ["Dot"]
  CALL R7 2 1
  FASTCALL1 MATH_ABS R7 [+2]
  GETIMPORT R6 K8 [math.abs]
  CALL R6 1 1
  LOADN R7 1
  CALL R5 2 1
  JUMPIFNOT R5 [+8]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K4 [Vector3.new]
  CALL R5 3 1
  MOVE R4 R5
  MOVE R7 R4
  NAMECALL R5 R2 K9 ["Cross"]
  CALL R5 2 1
  MOVE R8 R2
  NAMECALL R6 R5 K9 ["Cross"]
  CALL R6 2 1
  GETIMPORT R7 K12 [CFrame.fromMatrix]
  MOVE R8 R0
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  LOADK R5 K1 ["Part"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+25]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K1 ["Part"]
  CALL R3 1 1
  LOADN R4 1
  SETTABLEKS R4 R3 K6 ["Transparency"]
  SETTABLEKS R0 R3 K7 ["Name"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["Archivable"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K9 ["Parent"]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K11 [Vector3.new]
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["Size"]
  MOVE R2 R3
  LOADK R5 K13 ["BoneRef"]
  NAMECALL R3 R2 K0 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  LOADK R6 K14 ["ObjectValue"]
  NAMECALL R4 R3 K2 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+10]
  GETIMPORT R4 K5 [Instance.new]
  LOADK R5 K14 ["ObjectValue"]
  CALL R4 1 1
  LOADK R5 K13 ["BoneRef"]
  SETTABLEKS R5 R4 K7 ["Name"]
  SETTABLEKS R2 R4 K9 ["Parent"]
  MOVE R3 R4
  LOADK R7 K1 ["Part"]
  NAMECALL R5 R2 K2 ["IsA"]
  CALL R5 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R4 K16 [assert]
  CALL R4 -1 0
  LOADK R7 K14 ["ObjectValue"]
  NAMECALL R5 R3 K2 ["IsA"]
  CALL R5 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R4 K16 [assert]
  CALL R4 -1 0
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K17 ["Value"]
  LOADK R6 K18 ["Cone"]
  NAMECALL R4 R2 K0 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+5]
  LOADK R7 K19 ["ConeHandleAdornment"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+14]
  GETUPVAL R5 2
  LOADK R7 K18 ["Cone"]
  MOVE R8 R2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K20 ["BONE_LINK_TRANSPARENCY"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K21 ["BONE_CONE_COLOR"]
  LOADN R11 0
  NAMECALL R5 R5 K18 ["Cone"]
  CALL R5 6 1
  MOVE R4 R5
  LOADK R7 K22 ["Line"]
  NAMECALL R5 R2 K0 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+5]
  LOADK R8 K23 ["LineHandleAdornment"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+13]
  GETUPVAL R6 2
  LOADK R8 K22 ["Line"]
  MOVE R9 R2
  LOADN R10 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K24 ["BONE_LINK_COLOR"]
  LOADN R12 0
  LOADN R13 0
  NAMECALL R6 R6 K22 ["Line"]
  CALL R6 7 1
  MOVE R5 R6
  LOADK R9 K19 ["ConeHandleAdornment"]
  NAMECALL R7 R4 K2 ["IsA"]
  CALL R7 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R6 K16 [assert]
  CALL R6 -1 0
  LOADK R9 K23 ["LineHandleAdornment"]
  NAMECALL R7 R5 K2 ["IsA"]
  CALL R7 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R6 K16 [assert]
  CALL R6 -1 0
  GETUPVAL R7 4
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K25 ["BONE_TRANSPARENCY_DEFAULT"]
  JUMP [+1]
  LOADN R6 1
  SETTABLEKS R6 R4 K6 ["Transparency"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K26 ["LENGTH_TO_RADIUS_RATIO"]
  DIV R7 R1 R8
  SETTABLEKS R7 R4 K27 ["Radius"]
  SETTABLEKS R1 R4 K28 ["Height"]
  SETTABLEKS R6 R5 K6 ["Transparency"]
  SETTABLEKS R1 R5 K29 ["Length"]
  RETURN R2 1

PROTO_4:
  LOADB R3 0
  GETTABLEKS R5 R0 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R4 R5 K1 ["Position"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  GETIMPORT R6 K3 [ipairs]
  NAMECALL R7 R0 K4 ["GetChildren"]
  CALL R7 1 -1
  CALL R6 -1 3
  FORGPREP_INEXT R6
  LOADK R13 K5 ["Bone"]
  NAMECALL R11 R10 K6 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+167]
  GETTABLEKS R12 R10 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R11 R12 K1 ["Position"]
  SUB R13 R11 R4
  GETTABLEKS R12 R13 K7 ["Magnitude"]
  GETTABLEKS R14 R0 K8 ["Name"]
  LOADK R15 K9 ["To"]
  GETTABLEKS R16 R10 K8 ["Name"]
  CONCAT R13 R14 R16
  GETUPVAL R14 2
  JUMPIFNOT R14 [+11]
  MOVE R14 R5
  MOVE R15 R13
  MOVE R16 R12
  CALL R14 2 1
  GETUPVAL R15 3
  MOVE R16 R4
  MOVE R17 R11
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["CFrame"]
  JUMP [+140]
  MOVE R16 R13
  NAMECALL R14 R1 K11 ["FindFirstChild"]
  CALL R14 2 1
  JUMPIFNOT R14 [+5]
  LOADK R17 K12 ["Part"]
  NAMECALL R15 R14 K6 ["IsA"]
  CALL R15 2 1
  JUMPIF R15 [+40]
  GETIMPORT R15 K15 [Instance.new]
  LOADK R16 K12 ["Part"]
  CALL R15 1 1
  LOADN R16 1
  SETTABLEKS R16 R15 K16 ["Transparency"]
  SETTABLEKS R13 R15 K8 ["Name"]
  LOADB R16 0
  SETTABLEKS R16 R15 K17 ["Archivable"]
  SETTABLEKS R1 R15 K18 ["Parent"]
  GETUPVAL R16 0
  LOADK R18 K19 ["Cone"]
  MOVE R19 R15
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K20 ["BONE_LINK_TRANSPARENCY"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K21 ["BONE_CONE_COLOR"]
  LOADN R22 0
  NAMECALL R16 R16 K19 ["Cone"]
  CALL R16 6 0
  GETUPVAL R16 0
  LOADK R18 K22 ["Line"]
  MOVE R19 R15
  LOADN R20 1
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K23 ["BONE_LINK_COLOR"]
  LOADN R22 0
  LOADN R23 0
  NAMECALL R16 R16 K22 ["Line"]
  CALL R16 7 0
  MOVE R14 R15
  LOADK R17 K24 ["BoneRef"]
  NAMECALL R15 R14 K11 ["FindFirstChild"]
  CALL R15 2 1
  JUMPIFNOT R15 [+5]
  LOADK R18 K25 ["ObjectValue"]
  NAMECALL R16 R15 K6 ["IsA"]
  CALL R16 2 1
  JUMPIF R16 [+10]
  GETIMPORT R16 K15 [Instance.new]
  LOADK R17 K25 ["ObjectValue"]
  CALL R16 1 1
  LOADK R17 K24 ["BoneRef"]
  SETTABLEKS R17 R16 K8 ["Name"]
  SETTABLEKS R14 R16 K18 ["Parent"]
  MOVE R15 R16
  LOADK R19 K12 ["Part"]
  NAMECALL R17 R14 K6 ["IsA"]
  CALL R17 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R16 K27 [assert]
  CALL R16 -1 0
  LOADK R19 K25 ["ObjectValue"]
  NAMECALL R17 R15 K6 ["IsA"]
  CALL R17 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R16 K27 [assert]
  CALL R16 -1 0
  SETTABLEKS R0 R15 K28 ["Value"]
  LOADK R18 K19 ["Cone"]
  NAMECALL R16 R14 K11 ["FindFirstChild"]
  CALL R16 2 1
  LOADK R19 K22 ["Line"]
  NAMECALL R17 R14 K11 ["FindFirstChild"]
  CALL R17 2 1
  JUMPIFNOT R16 [+21]
  LOADK R20 K29 ["ConeHandleAdornment"]
  NAMECALL R18 R16 K6 ["IsA"]
  CALL R18 2 1
  JUMPIFNOT R18 [+16]
  JUMPIFNOT R2 [+4]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K30 ["BONE_TRANSPARENCY_DEFAULT"]
  JUMP [+1]
  LOADN R18 1
  SETTABLEKS R18 R16 K16 ["Transparency"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K31 ["LENGTH_TO_RADIUS_RATIO"]
  DIV R18 R12 R19
  SETTABLEKS R18 R16 K32 ["Radius"]
  SETTABLEKS R12 R16 K33 ["Height"]
  JUMPIFNOT R17 [+15]
  LOADK R20 K34 ["LineHandleAdornment"]
  NAMECALL R18 R17 K6 ["IsA"]
  CALL R18 2 1
  JUMPIFNOT R18 [+10]
  JUMPIFNOT R2 [+4]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K30 ["BONE_TRANSPARENCY_DEFAULT"]
  JUMP [+1]
  LOADN R18 1
  SETTABLEKS R18 R17 K16 ["Transparency"]
  SETTABLEKS R12 R17 K35 ["Length"]
  GETUPVAL R18 3
  MOVE R19 R4
  MOVE R20 R11
  CALL R18 2 1
  SETTABLEKS R18 R14 K10 ["CFrame"]
  LOADB R3 1
  FORGLOOP R6 2 [inext] [-173]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+42]
  JUMPIF R3 [+41]
  GETTABLEKS R6 R0 K18 ["Parent"]
  LOADNIL R7
  GETTABLEKS R9 R0 K8 ["Name"]
  LOADK R10 K36 ["End"]
  CONCAT R8 R9 R10
  JUMPIFNOT R6 [+17]
  LOADK R11 K5 ["Bone"]
  NAMECALL R9 R6 K6 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+12]
  GETTABLEKS R10 R6 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R9 R10 K1 ["Position"]
  SUB R11 R9 R4
  GETTABLEKS R10 R11 K7 ["Magnitude"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K37 ["LEAF_BONE_LENGTH_RATIO"]
  MUL R7 R10 R11
  JUMP [+1]
  LOADN R7 1
  MOVE R9 R5
  MOVE R10 R8
  MOVE R11 R7
  CALL R9 2 1
  GETTABLEKS R11 R0 K0 ["TransformedWorldCFrame"]
  GETIMPORT R12 K39 [CFrame.fromEulerAngles]
  LOADK R13 K40 [1.5707963267949]
  LOADN R14 0
  LOADN R15 0
  CALL R12 3 1
  MUL R10 R11 R12
  SETTABLEKS R10 R9 K10 ["CFrame"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R4 R0 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R3 R4 K1 ["Position"]
  GETTABLEKS R5 R0 K2 ["Name"]
  LOADK R6 K3 ["Node"]
  CONCAT R4 R5 R6
  MOVE R7 R4
  NAMECALL R5 R1 K4 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+5]
  LOADK R8 K5 ["Part"]
  NAMECALL R6 R5 K6 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+28]
  GETIMPORT R6 K9 [Instance.new]
  LOADK R7 K5 ["Part"]
  CALL R6 1 1
  LOADN R7 1
  SETTABLEKS R7 R6 K10 ["Transparency"]
  SETTABLEKS R4 R6 K2 ["Name"]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["Archivable"]
  SETTABLEKS R1 R6 K12 ["Parent"]
  GETUPVAL R7 0
  LOADK R9 K13 ["Sphere"]
  MOVE R10 R6
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K14 ["BONE_NODE_TRANSPARENCY"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["BONE_NODE_COLOR"]
  LOADN R13 0
  NAMECALL R7 R7 K13 ["Sphere"]
  CALL R7 6 0
  MOVE R5 R6
  LOADK R8 K16 ["BoneRef"]
  NAMECALL R6 R5 K4 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  LOADK R9 K17 ["ObjectValue"]
  NAMECALL R7 R6 K6 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+10]
  GETIMPORT R7 K9 [Instance.new]
  LOADK R8 K17 ["ObjectValue"]
  CALL R7 1 1
  LOADK R8 K16 ["BoneRef"]
  SETTABLEKS R8 R7 K2 ["Name"]
  SETTABLEKS R5 R7 K12 ["Parent"]
  MOVE R6 R7
  LOADK R10 K5 ["Part"]
  NAMECALL R8 R5 K6 ["IsA"]
  CALL R8 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R7 K19 [assert]
  CALL R7 -1 0
  LOADK R10 K17 ["ObjectValue"]
  NAMECALL R8 R6 K6 ["IsA"]
  CALL R8 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R7 K19 [assert]
  CALL R7 -1 0
  SETTABLEKS R0 R6 K20 ["Value"]
  LOADK R9 K13 ["Sphere"]
  NAMECALL R7 R5 K4 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+40]
  LOADK R10 K21 ["SphereHandleAdornment"]
  NAMECALL R8 R7 K6 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+35]
  LOADN R10 0
  GETTABLEKS R11 R0 K12 ["Parent"]
  JUMPIFNOT R11 [+16]
  LOADK R14 K22 ["Bone"]
  NAMECALL R12 R11 K6 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+11]
  GETTABLEKS R14 R11 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R13 R14 K1 ["Position"]
  GETTABLEKS R15 R0 K0 ["TransformedWorldCFrame"]
  GETTABLEKS R14 R15 K1 ["Position"]
  SUB R12 R13 R14
  GETTABLEKS R10 R12 K23 ["Magnitude"]
  MOVE R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["LENGTH_TO_RADIUS_RATIO"]
  DIV R8 R9 R10
  SETTABLEKS R8 R7 K25 ["Radius"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K26 ["BONE_TRANSPARENCY_DEFAULT"]
  JUMP [+1]
  LOADN R8 1
  SETTABLEKS R8 R7 K10 ["Transparency"]
  GETIMPORT R8 K28 [CFrame.new]
  MOVE R9 R3
  CALL R8 1 1
  SETTABLEKS R8 R5 K27 ["CFrame"]
  GETUPVAL R8 2
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  CALL R8 3 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [Workspace]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["FOLDERS"]
  GETTABLEKS R2 R3 K3 ["Microbones"]
  NAMECALL R0 R0 K4 ["FindFirstChild"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETIMPORT R0 K1 [Workspace]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["FOLDERS"]
  GETTABLEKS R2 R3 K3 ["Microbones"]
  NAMECALL R0 R0 K4 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIF R0 [+19]
  GETIMPORT R1 K7 [Instance.new]
  LOADK R2 K8 ["Folder"]
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["FOLDERS"]
  GETTABLEKS R2 R3 K3 ["Microbones"]
  SETTABLEKS R2 R1 K9 ["Name"]
  LOADB R2 0
  SETTABLEKS R2 R1 K10 ["Archivable"]
  GETIMPORT R2 K1 [Workspace]
  SETTABLEKS R2 R1 K11 ["Parent"]
  MOVE R0 R1
  FASTCALL1 ASSERT R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K13 [assert]
  CALL R1 1 0
  RETURN R0 1

PROTO_8:
  LOADK R4 K0 ["Cone"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  LOADK R5 K2 ["Sphere"]
  NAMECALL R3 R0 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R2 [+79]
  LOADK R6 K3 ["ConeHandleAdornment"]
  NAMECALL R4 R2 K4 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+74]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["intersectRayRay"]
  GETTABLEKS R6 R0 K6 ["CFrame"]
  GETTABLEKS R5 R6 K7 ["Position"]
  GETTABLEKS R7 R0 K6 ["CFrame"]
  GETTABLEKS R6 R7 K8 ["LookVector"]
  GETTABLEKS R7 R1 K9 ["Origin"]
  GETTABLEKS R9 R1 K10 ["Direction"]
  GETTABLEKS R8 R9 K11 ["Unit"]
  CALL R4 4 2
  JUMPIF R4 [+2]
  LOADNIL R6
  RETURN R6 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["intersectRayRay"]
  GETTABLEKS R7 R1 K9 ["Origin"]
  GETTABLEKS R9 R1 K10 ["Direction"]
  GETTABLEKS R8 R9 K11 ["Unit"]
  GETTABLEKS R10 R0 K6 ["CFrame"]
  GETTABLEKS R9 R10 K7 ["Position"]
  GETTABLEKS R11 R0 K6 ["CFrame"]
  GETTABLEKS R10 R11 K8 ["LookVector"]
  CALL R6 4 2
  GETTABLEKS R12 R0 K6 ["CFrame"]
  GETTABLEKS R11 R12 K7 ["Position"]
  GETTABLEKS R14 R0 K6 ["CFrame"]
  GETTABLEKS R13 R14 K8 ["LookVector"]
  MUL R12 R13 R5
  ADD R10 R11 R12
  GETTABLEKS R12 R1 K9 ["Origin"]
  GETTABLEKS R15 R1 K10 ["Direction"]
  GETTABLEKS R14 R15 K11 ["Unit"]
  MUL R13 R14 R7
  ADD R11 R12 R13
  SUB R9 R10 R11
  GETTABLEKS R8 R9 K12 ["Magnitude"]
  GETTABLEKS R9 R2 K13 ["Radius"]
  JUMPIFNOTLT R8 R9 [+9]
  LOADN R9 0
  JUMPIFNOTLT R9 R5 [+6]
  GETTABLEKS R9 R2 K14 ["Height"]
  JUMPIFNOTLT R5 R9 [+2]
  RETURN R7 1
  LOADNIL R9
  RETURN R9 1
  JUMPIFNOT R3 [+25]
  LOADK R6 K15 ["SphereHandleAdornment"]
  NAMECALL R4 R3 K4 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+20]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["intersectRaySphere"]
  GETTABLEKS R5 R1 K9 ["Origin"]
  GETTABLEKS R7 R1 K10 ["Direction"]
  GETTABLEKS R6 R7 K11 ["Unit"]
  GETTABLEKS R8 R0 K6 ["CFrame"]
  GETTABLEKS R7 R8 K7 ["Position"]
  GETTABLEKS R8 R3 K13 ["Radius"]
  CALL R4 4 2
  JUMPIFNOT R4 [+1]
  RETURN R5 1
  LOADNIL R6
  RETURN R6 1
  LOADNIL R4
  RETURN R4 1

PROTO_9:
  LOADNIL R1
  LOADK R2 K0 [∞]
  GETIMPORT R3 K2 [Workspace]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["FOLDERS"]
  GETTABLEKS R5 R6 K4 ["Microbones"]
  NAMECALL R3 R3 K5 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+78]
  NAMECALL R4 R3 K6 ["GetChildren"]
  CALL R4 1 1
  GETIMPORT R5 K8 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  LOADK R12 K9 ["Cone"]
  NAMECALL R10 R9 K5 ["FindFirstChild"]
  CALL R10 2 1
  LOADK R13 K10 ["Sphere"]
  NAMECALL R11 R9 K5 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R10 [+22]
  LOADK R14 K11 ["ConeHandleAdornment"]
  NAMECALL R12 R10 K12 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+17]
  GETTABLEKS R12 R10 K13 ["Color3"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K14 ["BONE_COLOR_SELECTED"]
  JUMPIFEQ R12 R13 [+11]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R12 R10 K13 ["Color3"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R12 R10 K17 ["Transparency"]
  JUMPIFNOT R11 [+22]
  LOADK R14 K18 ["SphereHandleAdornment"]
  NAMECALL R12 R11 K12 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+17]
  GETTABLEKS R12 R11 K13 ["Color3"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K14 ["BONE_COLOR_SELECTED"]
  JUMPIFEQ R12 R13 [+11]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R12 R11 K13 ["Color3"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R12 R11 K17 ["Transparency"]
  LOADK R14 K19 ["Part"]
  NAMECALL R12 R9 K12 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+9]
  GETUPVAL R12 1
  MOVE R13 R9
  MOVE R14 R0
  CALL R12 2 1
  JUMPIFNOT R12 [+4]
  JUMPIFNOTLT R12 R2 [+3]
  MOVE R2 R12
  MOVE R1 R9
  FORGLOOP R5 2 [-69]
  RETURN R1 2

PROTO_10:
  GETIMPORT R0 K1 [Workspace]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["FOLDERS"]
  GETTABLEKS R2 R3 K3 ["Microbones"]
  NAMECALL R0 R0 K4 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K5 ["Destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  JUMPIFNOT R0 [+7]
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+2]
  RETURN R0 0
  GETIMPORT R3 K4 [Workspace]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["FOLDERS"]
  GETTABLEKS R5 R6 K6 ["Microbones"]
  NAMECALL R3 R3 K7 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+19]
  GETIMPORT R4 K10 [Instance.new]
  LOADK R5 K11 ["Folder"]
  CALL R4 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["FOLDERS"]
  GETTABLEKS R5 R6 K6 ["Microbones"]
  SETTABLEKS R5 R4 K12 ["Name"]
  LOADB R5 0
  SETTABLEKS R5 R4 K13 ["Archivable"]
  GETIMPORT R5 K4 [Workspace]
  SETTABLEKS R5 R4 K14 ["Parent"]
  MOVE R3 R4
  FASTCALL1 ASSERT R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K16 [assert]
  CALL R4 1 0
  MOVE R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K17 ["getRigInfo"]
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R4 R3 K18 ["BoneNameToBone"]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 2
  MOVE R11 R9
  MOVE R12 R2
  MOVE R13 R1
  CALL R10 3 0
  FORGLOOP R5 2 [-6]
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getRigInfo"]
  MOVE R3 R1
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["BoneNameToBone"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 -1
  RETURN R4 -1

PROTO_13:
  JUMPIF R0 [+1]
  RETURN R0 0
  FASTCALL1 ASSERT R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  LOADK R3 K2 ["Cone"]
  NAMECALL R1 R0 K3 ["FindFirstChild"]
  CALL R1 2 1
  LOADK R4 K4 ["Sphere"]
  NAMECALL R2 R0 K3 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R1 [+10]
  LOADK R5 K5 ["ConeHandleAdornment"]
  NAMECALL R3 R1 K6 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["BONE_COLOR_SELECTED"]
  SETTABLEKS R3 R1 K8 ["Color3"]
  JUMPIFNOT R2 [+10]
  LOADK R5 K9 ["SphereHandleAdornment"]
  NAMECALL R3 R2 K6 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["BONE_COLOR_SELECTED"]
  SETTABLEKS R3 R2 K8 ["Color3"]
  RETURN R0 0

PROTO_14:
  GETIMPORT R0 K1 [Workspace]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["FOLDERS"]
  GETTABLEKS R2 R3 K3 ["Microbones"]
  NAMECALL R0 R0 K4 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  FASTCALL1 ASSERT R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K6 [assert]
  CALL R1 1 0
  NAMECALL R1 R0 K7 ["GetChildren"]
  CALL R1 1 1
  GETIMPORT R2 K9 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADK R9 K10 ["Cone"]
  NAMECALL R7 R6 K4 ["FindFirstChild"]
  CALL R7 2 1
  LOADK R10 K11 ["Sphere"]
  NAMECALL R8 R6 K4 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFNOT R7 [+22]
  LOADK R11 K12 ["ConeHandleAdornment"]
  NAMECALL R9 R7 K13 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+17]
  GETTABLEKS R9 R7 K14 ["Color3"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K15 ["BONE_COLOR_SELECTED"]
  JUMPIFNOTEQ R9 R10 [+11]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K16 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R9 R7 K14 ["Color3"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R9 R7 K18 ["Transparency"]
  JUMPIFNOT R8 [+22]
  LOADK R11 K19 ["SphereHandleAdornment"]
  NAMECALL R9 R8 K13 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+17]
  GETTABLEKS R9 R8 K14 ["Color3"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K15 ["BONE_COLOR_SELECTED"]
  JUMPIFNOTEQ R9 R10 [+11]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K16 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R9 R8 K14 ["Color3"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R9 R8 K18 ["Transparency"]
  FORGLOOP R2 2 [-55]
  RETURN R0 0

PROTO_15:
  LOADB R1 0
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFEQKNIL R2 [+14]
  GETTABLEKS R3 R0 K0 ["Parent"]
  GETTABLEKS R2 R3 K1 ["Name"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["FOLDERS"]
  GETTABLEKS R3 R4 K3 ["Microbones"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Math"]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K10 ["DraggerFramework"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K11 ["Utility"]
  GETTABLEKS R5 R6 K9 ["Math"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K12 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["Adorn"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K14 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K15 ["RigInfo"]
  CALL R8 1 1
  GETIMPORT R9 K17 [game]
  LOADK R11 K18 ["ACEShowBoneLeaves"]
  LOADB R12 0
  NAMECALL R9 R9 K19 ["DefineFastFlag"]
  CALL R9 3 1
  NEWTABLE R10 8 0
  DUPCLOSURE R11 K20 [PROTO_0]
  DUPCLOSURE R12 K21 [PROTO_1]
  DUPCLOSURE R13 K22 [PROTO_2]
  CAPTURE VAL R2
  DUPCLOSURE R14 K23 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R13
  DUPCLOSURE R15 K24 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R14
  DUPCLOSURE R16 K25 [PROTO_6]
  CAPTURE VAL R7
  DUPCLOSURE R17 K26 [PROTO_7]
  CAPTURE VAL R7
  DUPCLOSURE R18 K27 [PROTO_8]
  CAPTURE VAL R4
  DUPCLOSURE R19 K28 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R18
  DUPCLOSURE R20 K29 [PROTO_10]
  CAPTURE VAL R7
  SETTABLEKS R20 R10 K30 ["clearMicrobones"]
  DUPCLOSURE R20 K31 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R20 R10 K32 ["updateMicrobones"]
  DUPCLOSURE R20 K33 [PROTO_12]
  CAPTURE VAL R8
  CAPTURE VAL R19
  SETTABLEKS R20 R10 K34 ["getBoneHit"]
  DUPCLOSURE R20 K35 [PROTO_13]
  CAPTURE VAL R7
  SETTABLEKS R20 R10 K36 ["selectBone"]
  DUPCLOSURE R20 K37 [PROTO_14]
  CAPTURE VAL R7
  SETTABLEKS R20 R10 K38 ["deselectBones"]
  DUPCLOSURE R20 K39 [PROTO_15]
  CAPTURE VAL R7
  SETTABLEKS R20 R10 K40 ["isBone"]
  RETURN R10 1
