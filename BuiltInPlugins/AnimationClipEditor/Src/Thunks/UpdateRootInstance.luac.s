PROTO_0:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 2
  NEWTABLE R4 0 0
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 3
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 4
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R3 5
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K1 ["canUseIK"]
  GETUPVAL R4 7
  CALL R3 1 2
  MOVE R1 R3
  MOVE R2 R4
  JUMP [+7]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K1 ["canUseIK"]
  GETUPVAL R4 7
  CALL R3 1 2
  MOVE R1 R3
  MOVE R2 R4
  GETUPVAL R5 9
  JUMPIFNOT R2 [+6]
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K2 ["IK_MODE"]
  GETTABLEKS R6 R7 K3 ["BodyPart"]
  JUMPIF R6 [+5]
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K2 ["IK_MODE"]
  GETTABLEKS R6 R7 K4 ["FullBody"]
  CALL R5 1 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R5 11
  GETUPVAL R6 7
  CALL R5 1 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 12
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R5 13
  NEWTABLE R6 0 0
  CALL R5 1 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  JUMP [+7]
  GETUPVAL R5 14
  NEWTABLE R6 0 0
  CALL R5 1 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  JUMPIFNOT R1 [+22]
  JUMPIFNOT R2 [+21]
  GETUPVAL R4 5
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K5 ["getPoseCFrames"]
  GETUPVAL R4 7
  CALL R3 1 1
  JUMP [+5]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K5 ["getPoseCFrames"]
  GETUPVAL R4 7
  CALL R3 1 1
  GETUPVAL R6 15
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  JUMP [+6]
  GETUPVAL R5 15
  LOADNIL R6
  CALL R5 1 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K6 ["getAnimSaves"]
  GETUPVAL R4 7
  CALL R3 1 1
  LENGTH R4 R3
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+38]
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K7 ["isLegacyAnimSaves"]
  JUMPIFNOT R10 [+7]
  FASTCALL2 TABLE_INSERT R4 R9 [+5]
  MOVE R11 R4
  MOVE R12 R9
  GETIMPORT R10 K10 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-11]
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+8]
  GETUPVAL R7 16
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K0 ["dispatch"]
  CALL R5 -1 0
  JUMP [+42]
  GETUPVAL R7 17
  GETUPVAL R8 7
  GETUPVAL R9 1
  CALL R7 2 -1
  NAMECALL R5 R0 K0 ["dispatch"]
  CALL R5 -1 0
  JUMP [+34]
  GETUPVAL R6 18
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 19
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 20
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 21
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 22
  LOADNIL R7
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 23
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 24
  GETUPVAL R7 1
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollectionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K12 ["Src"]
  GETTABLEKS R3 R4 K13 ["Actions"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R3 K14 ["SetAnimationData"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R3 K15 ["SetClipboard"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R3 K16 ["SetFuture"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R3 K17 ["SetIKEnabled"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R3 K18 ["SetIKMode"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R3 K19 ["SetLegacyAnimationInstances"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R11 R3 K20 ["SetPast"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R12 R3 K21 ["SetPinnedParts"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R13 R3 K22 ["SetRootInstance"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R14 R3 K23 ["SetSelectedKeyframes"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R3 K24 ["SetSelectedTrackInstances"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R3 K25 ["SetShowTree"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R3 K26 ["SetStartingPose"]
  CALL R16 1 1
  GETTABLEKS R18 R1 K12 ["Src"]
  GETTABLEKS R17 R18 K27 ["Thunks"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R19 R17 K28 ["AttachEditor"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R21 R17 K29 ["Exporting"]
  GETTABLEKS R20 R21 K30 ["LoadAnimation"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R21 R17 K31 ["LoadLatestAnimation"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R22 R17 K32 ["ReleaseEditor"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R23 R17 K33 ["SortAndSetTracks"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R24 R17 K34 ["SetSelectedTracks"]
  CALL R23 1 1
  GETTABLEKS R25 R1 K12 ["Src"]
  GETTABLEKS R24 R25 K35 ["Util"]
  GETIMPORT R25 K9 [require]
  GETTABLEKS R26 R24 K36 ["Constants"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R27 R24 K37 ["RigIK"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETTABLEKS R28 R24 K38 ["RigUtils"]
  CALL R27 1 1
  GETIMPORT R28 K9 [require]
  GETTABLEKS R30 R1 K39 ["LuaFlags"]
  GETTABLEKS R29 R30 K40 ["GetFFlagSelectFromViewport"]
  CALL R28 1 1
  GETIMPORT R29 K9 [require]
  GETTABLEKS R31 R1 K39 ["LuaFlags"]
  GETTABLEKS R30 R31 K41 ["GetFFlagRigIK"]
  CALL R29 1 1
  DUPCLOSURE R30 K42 [PROTO_1]
  CAPTURE VAL R21
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R29
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R8
  CAPTURE VAL R25
  CAPTURE VAL R12
  CAPTURE VAL R28
  CAPTURE VAL R23
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R20
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R22
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R18
  RETURN R30 1
