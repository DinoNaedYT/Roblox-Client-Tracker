PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["HeadColor"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K1 ["LeftArmColor"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K2 ["LeftLegColor"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K3 ["RightArmColor"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K4 ["RightLegColor"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K5 ["TorsoColor"]
  RETURN R0 0

PROTO_1:
  LOADNIL R1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+21]
  JUMPIFNOTEQKN R0 K0 [0] [+13]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["HumanoidDescription"]
  CALL R2 1 1
  MOVE R1 R2
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["BodyTypeScale"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["ProportionScale"]
  JUMP [+21]
  GETUPVAL R2 1
  MOVE R4 R0
  NAMECALL R2 R2 K7 ["GetHumanoidDescriptionFromOutfitId"]
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+14]
  JUMPIFNOTEQKN R0 K0 [0] [+7]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["HumanoidDescription"]
  CALL R2 1 1
  MOVE R1 R2
  JUMP [+6]
  GETUPVAL R2 1
  MOVE R4 R0
  NAMECALL R2 R2 K7 ["GetHumanoidDescriptionFromOutfitId"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  MOVE R2 R1
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K8 ["HeadColor"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K9 ["LeftArmColor"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K10 ["LeftLegColor"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K11 ["RightArmColor"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K12 ["RightLegColor"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K13 ["TorsoColor"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K7 [script]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K9 ["clearPrebakedDescriptionAnimations"]
  CALL R1 1 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K10 ["RigBuilderBlockyScalesFix"]
  LOADB R5 0
  NAMECALL R2 R2 K11 ["DefineFastFlag"]
  CALL R2 3 1
  GETIMPORT R3 K14 [Color3.new]
  LOADK R4 K15 [0.5]
  LOADK R5 K15 [0.5]
  LOADK R6 K15 [0.5]
  CALL R3 3 1
  DUPCLOSURE R4 K16 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R5 K17 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R5 1
