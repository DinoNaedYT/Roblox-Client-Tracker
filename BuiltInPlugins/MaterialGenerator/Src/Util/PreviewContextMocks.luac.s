PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R2 R0 K1 ["selectedMaterial"]
  CALL R1 1 2
  DUPTABLE R3 K4 [{"selectedMaterial", "setSelectedMaterial", "applySelectedMaterial"}]
  SETTABLEKS R1 R3 K1 ["selectedMaterial"]
  SETTABLEKS R2 R3 K2 ["setSelectedMaterial"]
  DUPCLOSURE R4 K5 [PROTO_0]
  SETTABLEKS R4 R3 K3 ["applySelectedMaterial"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["Provider"]
  DUPTABLE R6 K9 [{"value"}]
  SETTABLEKS R3 R6 K8 ["value"]
  GETTABLEKS R7 R0 K10 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"selectedMaterial"}]
  GETTABLEKS R4 R0 K1 ["selectedMaterial"]
  SETTABLEKS R4 R3 K1 ["selectedMaterial"]
  GETTABLEKS R4 R0 K3 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useToggleState"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["PreviewContext"]
  CALL R4 1 1
  NEWTABLE R5 1 0
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R7 R5 K15 ["BasicProvider"]
  RETURN R5 1
