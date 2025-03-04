PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnVisualizationModeToggle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["name"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["name"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["enabled"]
  NOT R3 R4
  LOADB R4 1
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Localization"]
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["VisualizationModeCategories"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K3 ["visualizationModeList"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  LOADK R14 K4 ["ToggleVisualizationMode_User_%*_%*"]
  GETTABLEKS R16 R7 K5 ["name"]
  GETTABLEKS R17 R12 K5 ["name"]
  NAMECALL R14 R14 K6 ["format"]
  CALL R14 3 1
  MOVE R13 R14
  LOADK R16 K7 ["ToggleVisualizationMode"]
  LOADK R17 K8 ["Title"]
  DUPTABLE R18 K10 [{"visualizationModeName"}]
  GETTABLEKS R19 R12 K11 ["title"]
  SETTABLEKS R19 R18 K9 ["visualizationModeName"]
  NAMECALL R14 R2 K12 ["getText"]
  CALL R14 4 1
  LOADK R17 K7 ["ToggleVisualizationMode"]
  LOADK R18 K13 ["Description"]
  DUPTABLE R19 K10 [{"visualizationModeName"}]
  GETTABLEKS R20 R12 K11 ["title"]
  SETTABLEKS R20 R19 K9 ["visualizationModeName"]
  NAMECALL R15 R2 K12 ["getText"]
  CALL R15 4 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K22 [{"ActionId", "Text", "StatusTip", "IconName", "Checked", "Enabled", "OnTrigger"}]
  SETTABLEKS R13 R18 K15 ["ActionId"]
  SETTABLEKS R14 R18 K16 ["Text"]
  SETTABLEKS R15 R18 K17 ["StatusTip"]
  LOADK R19 K23 [""]
  SETTABLEKS R19 R18 K18 ["IconName"]
  GETTABLEKS R19 R12 K24 ["enabled"]
  SETTABLEKS R19 R18 K19 ["Checked"]
  LOADB R19 1
  SETTABLEKS R19 R18 K20 ["Enabled"]
  NEWCLOSURE R19 P0
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K21 ["OnTrigger"]
  CALL R16 2 1
  SETTABLE R16 R1 R13
  FORGLOOP R8 2 [-59]
  FORGLOOP R3 2 [-66]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K14 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K25 ["Fragment"]
  NEWTABLE R5 0 0
  MOVE R6 R1
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETTABLEKS R3 R4 K11 ["PluginAction"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["ContextServices"]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R6 1
