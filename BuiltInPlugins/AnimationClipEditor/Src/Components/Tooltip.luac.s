PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Text"]
  GETTABLEKS R3 R1 K2 ["TextKey"]
  GETTABLEKS R4 R1 K3 ["ShowDelay"]
  GETTABLEKS R5 R1 K4 ["Priority"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K5 ["Localization"]
  OR R8 R2 R3
  FASTCALL2K ASSERT R8 K6 [+4]
  LOADK R9 K6 ["Expected either a Text or TextKey prop."]
  GETIMPORT R7 K8 [assert]
  CALL R7 2 0
  LOADNIL R7
  JUMPIFNOT R2 [+2]
  MOVE R7 R2
  JUMP [+7]
  JUMPIFNOT R3 [+6]
  LOADK R10 K9 ["Tooltip"]
  MOVE R11 R3
  NAMECALL R8 R6 K10 ["getText"]
  CALL R8 3 1
  MOVE R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K13 [{"Text", "ShowDelay", "Enabled", "Priority"}]
  SETTABLEKS R7 R10 K1 ["Text"]
  SETTABLEKS R4 R10 K3 ["ShowDelay"]
  LOADB R11 1
  SETTABLEKS R11 R10 K12 ["Enabled"]
  ORK R11 R5 K14 [-100]
  SETTABLEKS R11 R10 K4 ["Priority"]
  CALL R8 2 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R3 K11 ["Localization"]
  GETTABLEKS R7 R2 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Tooltip"]
  GETTABLEKS R7 R1 K14 ["PureComponent"]
  LOADK R9 K13 ["Tooltip"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K17 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K18 [{"Localization"}]
  GETTABLEKS R10 R3 K11 ["Localization"]
  SETTABLEKS R10 R9 K11 ["Localization"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
