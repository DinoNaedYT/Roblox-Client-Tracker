PROTO_0:
  JUMPIF R0 [+11]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Highlight"]
  CALL R2 1 1
  MOVE R0 R2
  GETUPVAL R2 0
  SETTABLEKS R2 R0 K4 ["Parent"]
  LOADN R2 1
  SETTABLEKS R2 R0 K5 ["FillTransparency"]
  JUMPIFNOT R1 [+8]
  LOADK R4 K6 ["BasePart"]
  NAMECALL R2 R1 K7 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  SETTABLEKS R1 R0 K8 ["Adornee"]
  RETURN R0 1
  LOADNIL R2
  SETTABLEKS R2 R0 K8 ["Adornee"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
