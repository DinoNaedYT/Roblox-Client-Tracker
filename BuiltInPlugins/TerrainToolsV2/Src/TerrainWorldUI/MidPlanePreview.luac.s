PROTO_0:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R5 R0
  LOADK R6 K0 ["MidPlanePreview needs reference to plugin"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  ADD R5 R2 R3
  MULK R4 R5 K3 [0.5]
  GETIMPORT R5 K6 [Instance.new]
  LOADK R6 K7 ["Part"]
  CALL R5 1 1
  LOADK R6 K8 ["MidPlanePreview"]
  SETTABLEKS R6 R5 K9 ["Name"]
  LOADN R7 1
  LOADN R8 1
  LOADN R9 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K11 [Vector3.new]
  CALL R6 3 1
  SETTABLEKS R6 R5 K12 ["Size"]
  SETTABLEKS R4 R5 K13 ["Position"]
  LOADK R6 K14 ["Smooth"]
  SETTABLEKS R6 R5 K15 ["TopSurface"]
  LOADK R6 K14 ["Smooth"]
  SETTABLEKS R6 R5 K16 ["BottomSurface"]
  LOADB R6 0
  SETTABLEKS R6 R5 K17 ["CastShadow"]
  LOADB R6 1
  SETTABLEKS R6 R5 K18 ["Locked"]
  LOADB R6 1
  SETTABLEKS R6 R5 K19 ["Anchored"]
  LOADB R6 0
  SETTABLEKS R6 R5 K20 ["CanCollide"]
  GETIMPORT R6 K22 [BrickColor.new]
  LOADK R7 K23 ["Toothpaste"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["BrickColor"]
  GETIMPORT R6 K27 [Enum.Material.Neon]
  SETTABLEKS R6 R5 K25 ["Material"]
  LOADB R6 0
  SETTABLEKS R6 R5 K28 ["Archivable"]
  LOADN R6 1
  SETTABLEKS R6 R5 K29 ["Transparency"]
  GETIMPORT R6 K6 [Instance.new]
  LOADK R7 K30 ["BlockMesh"]
  CALL R6 1 1
  SUB R7 R3 R2
  GETTABLEKS R9 R7 K31 ["x"]
  LOADN R10 1
  GETTABLEKS R11 R7 K32 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K11 [Vector3.new]
  CALL R8 3 1
  SETTABLEKS R8 R6 K33 ["Scale"]
  SETTABLEKS R5 R6 K34 ["Parent"]
  SETTABLEKS R1 R5 K34 ["Parent"]
  DUPTABLE R9 K42 [{"_plugin", "_mouse", "_selectingHeight", "_target", "_rootPart", "_blockMesh", "_targetRegion"}]
  SETTABLEKS R0 R9 K35 ["_plugin"]
  NAMECALL R10 R0 K43 ["GetMouse"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K36 ["_mouse"]
  LOADB R10 0
  SETTABLEKS R10 R9 K37 ["_selectingHeight"]
  SETTABLEKS R1 R9 K38 ["_target"]
  SETTABLEKS R5 R9 K39 ["_rootPart"]
  SETTABLEKS R6 R9 K40 ["_blockMesh"]
  GETIMPORT R10 K45 [Region3.new]
  MOVE R11 R2
  MOVE R12 R3
  CALL R10 2 1
  SETTABLEKS R10 R9 K41 ["_targetRegion"]
  GETUPVAL R10 0
  FASTCALL2 SETMETATABLE R9 R10 [+3]
  GETIMPORT R8 K47 [setmetatable]
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["new"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K48 ["_heightSelectedSignal"]
  RETURN R8 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_blockMesh"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_blockMesh"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_blockMesh"]
  GETTABLEKS R1 R0 K2 ["_rootPart"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_rootPart"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_rootPart"]
  GETTABLEKS R1 R0 K3 ["_connection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["_connection"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_rootPart"]
  GETTABLEKS R1 R2 K1 ["Position"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["CurrentCamera"]
  GETTABLEKS R3 R4 K3 ["CoordinateFrame"]
  GETTABLEKS R2 R3 K4 ["p"]
  GETUPVAL R3 1
  SUB R4 R2 R1
  MOVE R7 R4
  NAMECALL R5 R3 K5 ["Dot"]
  CALL R5 2 1
  JUMPIFNOTEQKN R5 K6 [0] [+5]
  LOADNIL R5
  SETTABLEKS R5 R0 K7 ["_planeNormal"]
  RETURN R0 0
  MOVE R7 R4
  NAMECALL R5 R3 K8 ["Cross"]
  CALL R5 2 1
  MOVE R9 R3
  NAMECALL R7 R5 K8 ["Cross"]
  CALL R7 2 1
  GETTABLEKS R6 R7 K9 ["Unit"]
  SETTABLEKS R6 R0 K7 ["_planeNormal"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["CurrentCamera"]
  GETTABLEKS R2 R3 K1 ["CoordinateFrame"]
  GETTABLEKS R1 R2 K2 ["p"]
  GETTABLEKS R4 R0 K3 ["_mouse"]
  GETTABLEKS R3 R4 K4 ["UnitRay"]
  GETTABLEKS R2 R3 K5 ["Direction"]
  GETTABLEKS R5 R0 K6 ["_planeNormal"]
  NAMECALL R3 R2 K7 ["Dot"]
  CALL R3 2 1
  LOADN R4 0
  JUMPIFNOTLT R3 R4 [+15]
  GETTABLEKS R7 R0 K8 ["_rootPart"]
  GETTABLEKS R6 R7 K9 ["Position"]
  SUB R5 R6 R1
  GETTABLEKS R7 R0 K6 ["_planeNormal"]
  NAMECALL R5 R5 K7 ["Dot"]
  CALL R5 2 1
  DIV R4 R5 R3
  MUL R6 R4 R2
  ADD R5 R1 R6
  RETURN R5 1
  LOADNIL R4
  RETURN R4 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_planeNormal"]
  JUMPIF R1 [+1]
  RETURN R0 0
  NAMECALL R1 R0 K1 ["calcPlaneHit"]
  CALL R1 1 1
  JUMPIFNOT R1 [+19]
  GETTABLEKS R3 R0 K2 ["_prevPosition"]
  SUB R2 R1 R3
  GETUPVAL R7 0
  NAMECALL R5 R2 K3 ["Dot"]
  CALL R5 2 1
  GETUPVAL R6 0
  GETUPVAL R8 0
  NAMECALL R6 R6 K3 ["Dot"]
  CALL R6 2 1
  DIV R4 R5 R6
  GETUPVAL R5 0
  MUL R3 R4 R5
  GETTABLEKS R5 R0 K2 ["_prevPosition"]
  ADD R4 R3 R5
  RETURN R4 1
  GETTABLEKS R2 R0 K4 ["_position"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_planeNormal"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_planeNormal"]
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["_plugin"]
  NAMECALL R0 R0 K2 ["Deactivate"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["_connection"]
  NAMECALL R0 R0 K4 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_connection"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_connection"]
  JUMPIFEQKNIL R0 [+24]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["calcAxisPosMouseClick"]
  CALL R0 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["_rootPart"]
  GETTABLEKS R1 R2 K3 ["Position"]
  JUMPIFEQ R1 R0 [+10]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_rootPart"]
  SETTABLEKS R0 R1 K3 ["Position"]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K4 ["Y"]
  CALL R1 1 0
  GETUPVAL R1 2
  CALL R1 0 0
  JUMPBACK [-28]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_connection"]
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K1 ["_plugin"]
  LOADB R5 1
  NAMECALL R3 R3 K2 ["Activate"]
  CALL R3 2 0
  NAMECALL R3 R0 K3 ["updateCollisionPlaneNormal"]
  CALL R3 1 0
  GETTABLEKS R4 R0 K4 ["_rootPart"]
  GETTABLEKS R3 R4 K5 ["Position"]
  SETTABLEKS R3 R0 K6 ["_prevPosition"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["InputEnded"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K0 ["_connection"]
  GETIMPORT R3 K10 [spawn]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CALL R3 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_rootPart"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K0 ["_rootPart"]
  JUMPIFNOT R1 [+2]
  LOADK R3 K1 [0.9]
  JUMP [+1]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Transparency"]
  RETURN R0 0

PROTO_9:
  SUB R3 R2 R1
  ADD R5 R1 R2
  MULK R4 R5 K0 [0.5]
  GETTABLEKS R7 R0 K1 ["_rootPart"]
  GETTABLEKS R6 R7 K2 ["Position"]
  GETTABLEKS R5 R6 K3 ["Y"]
  GETTABLEKS R6 R0 K4 ["_blockMesh"]
  GETTABLEKS R9 R3 K6 ["x"]
  MULK R8 R9 K5 [1.2]
  LOADN R9 1
  GETTABLEKS R11 R3 K7 ["z"]
  MULK R10 R11 K5 [1.2]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K10 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Scale"]
  GETTABLEKS R6 R0 K1 ["_rootPart"]
  GETTABLEKS R8 R4 K12 ["X"]
  MOVE R9 R5
  GETTABLEKS R10 R4 K13 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K10 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["Position"]
  RETURN R0 0

PROTO_10:
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["number"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 [""]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K6 ["_rootPart"]
  GETTABLEKS R2 R3 K7 ["Position"]
  GETTABLEKS R3 R0 K6 ["_rootPart"]
  GETTABLEKS R5 R2 K8 ["X"]
  MOVE R6 R1
  GETTABLEKS R7 R2 K9 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K12 [Vector3.new]
  CALL R4 3 1
  SETTABLEKS R4 R3 K7 ["Position"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["_rootPart"]
  SETTABLEKS R1 R2 K1 ["Position"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_rootPart"]
  GETTABLEKS R1 R2 K1 ["Position"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Signal"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K10 ["quickWait"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["Workspace"]
  NAMECALL R5 R5 K14 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K12 [game]
  LOADK R8 K15 ["UserInputService"]
  NAMECALL R6 R6 K14 ["GetService"]
  CALL R6 2 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K18 [Vector3.new]
  CALL R7 3 1
  NEWTABLE R8 16 0
  SETTABLEKS R8 R8 K19 ["__index"]
  DUPCLOSURE R9 K20 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K17 ["new"]
  DUPCLOSURE R9 K21 [PROTO_1]
  SETTABLEKS R9 R8 K22 ["destroy"]
  DUPCLOSURE R9 K23 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K24 ["updateCollisionPlaneNormal"]
  DUPCLOSURE R9 K25 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K26 ["calcPlaneHit"]
  DUPCLOSURE R9 K27 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K28 ["calcAxisPosMouseClick"]
  DUPCLOSURE R9 K29 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K30 ["startSelectHeight"]
  DUPCLOSURE R9 K31 [PROTO_8]
  SETTABLEKS R9 R8 K32 ["updateVisibility"]
  DUPCLOSURE R9 K33 [PROTO_9]
  SETTABLEKS R9 R8 K34 ["updatePlaneScaling"]
  DUPCLOSURE R9 K35 [PROTO_10]
  SETTABLEKS R9 R8 K36 ["setY"]
  DUPCLOSURE R9 K37 [PROTO_11]
  SETTABLEKS R9 R8 K38 ["setPosition"]
  DUPCLOSURE R9 K39 [PROTO_12]
  SETTABLEKS R9 R8 K40 ["getPosition"]
  RETURN R8 1
