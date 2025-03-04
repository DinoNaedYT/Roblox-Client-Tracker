PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["enabled"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["onClose"]
  CALL R0 0 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["onRestore"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["toolController"]
  JUMPIFNOT R0 [+43]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["toolController"]
  NAMECALL R1 R1 K4 ["getTool"]
  CALL R1 1 1
  GETTABLEKS R0 R1 K5 ["_name"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["Empty"]
  JUMPIFEQ R0 R1 [+31]
  GETUPVAL R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["toolController"]
  NAMECALL R1 R1 K7 ["getToolIndex"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K8 ["toolIndex"]
  GETUPVAL R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["toolController"]
  NAMECALL R1 R1 K9 ["getTabIndex"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K10 ["tabIndex"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["toolController"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["tabIndex"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["toolIndex"]
  NAMECALL R0 R0 K11 ["setTabAndToolIndex"]
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["PluginLoaderContext"]
  JUMPIFNOT R0 [+28]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButton"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["enabled"]
  NAMECALL R0 R0 K5 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K6 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["toggleEnabled"]
  NAMECALL R0 R0 K8 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["toolController"]
  JUMPIFNOT R1 [+28]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["tabIndex"]
  JUMPIFNOT R1 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["toolIndex"]
  JUMPIFNOT R1 [+20]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["toolController"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["tabIndex"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["toolIndex"]
  NAMECALL R1 R1 K6 ["setTabAndToolIndex"]
  CALL R1 3 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["toolIndex"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["tabIndex"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Enabled"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onRestore"]
  GETTABLEKS R2 R0 K0 ["Enabled"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["pluginController"]
  NAMECALL R0 R0 K1 ["resume"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["pluginController"]
  NAMECALL R0 R0 K1 ["pause"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+20]
  LOADB R3 0
  GETTABLEKS R4 R1 K1 ["PluginLoaderContext"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R5 R1 K1 ["PluginLoaderContext"]
  GETTABLEKS R4 R5 K2 ["mainDockWidget"]
  LOADB R5 0
  JUMPIFEQKNIL R4 [+3]
  GETTABLEKS R5 R4 K3 ["Enabled"]
  MOVE R3 R5
  DUPTABLE R6 K5 [{"enabled"}]
  SETTABLEKS R3 R6 K4 ["enabled"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K7 ["toggleEnabled"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R3 R0 K8 ["onClose"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K9 ["onCreated"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K10 ["onRestore"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K11 ["onWidgetEnabledChanged"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+115]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETTABLEKS R3 R4 K13 ["new"]
  DUPTABLE R4 K18 [{"libraries", "stringResourceTable", "translationResourceTable", "pluginName"}]
  NEWTABLE R5 2 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K19 ["Resources"]
  GETTABLEKS R6 R7 K20 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R7 K21 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K19 ["Resources"]
  GETTABLEKS R8 R9 K22 ["SourceStrings"]
  SETTABLEKS R8 R7 K15 ["stringResourceTable"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K19 ["Resources"]
  GETTABLEKS R8 R9 K23 ["LocalizedStrings"]
  SETTABLEKS R8 R7 K16 ["translationResourceTable"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K19 ["Resources"]
  GETTABLEKS R6 R7 K20 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R7 K21 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K19 ["Resources"]
  GETTABLEKS R8 R9 K22 ["SourceStrings"]
  SETTABLEKS R8 R7 K15 ["stringResourceTable"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K19 ["Resources"]
  GETTABLEKS R8 R9 K23 ["LocalizedStrings"]
  SETTABLEKS R8 R7 K16 ["translationResourceTable"]
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R4 K14 ["libraries"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K15 ["stringResourceTable"]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K16 ["translationResourceTable"]
  LOADK R5 K24 ["TerrainEditor"]
  SETTABLEKS R5 R4 K17 ["pluginName"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K25 ["localization"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K26 ["Analytics"]
  GETTABLEKS R3 R4 K13 ["new"]
  GETUPVAL R4 7
  CALL R3 1 1
  SETTABLEKS R3 R0 K27 ["analytics"]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K13 ["new"]
  MOVE R4 R2
  GETTABLEKS R5 R0 K25 ["localization"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K28 ["shortcutController"]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K13 ["new"]
  MOVE R4 R2
  CALL R3 1 1
  SETTABLEKS R3 R0 K29 ["pluginController"]
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K13 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K30 ["studioServices"]
  GETUPVAL R3 11
  CALL R3 0 1
  SETTABLEKS R3 R0 K31 ["stylizer"]
  GETUPVAL R4 12
  GETTABLEKS R3 R4 K13 ["new"]
  GETTABLEKS R4 R0 K29 ["pluginController"]
  GETTABLEKS R5 R0 K28 ["shortcutController"]
  GETTABLEKS R6 R0 K27 ["analytics"]
  GETTABLEKS R7 R0 K25 ["localization"]
  GETTABLEKS R8 R0 K31 ["stylizer"]
  CALL R3 5 1
  SETTABLEKS R3 R0 K32 ["toolController"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K33 ["onFocused"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K34 ["onUnfocused"]
  GETTABLEKS R5 R0 K35 ["props"]
  GETTABLEKS R4 R5 K1 ["PluginLoaderContext"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R5 R0 K35 ["props"]
  GETTABLEKS R4 R5 K1 ["PluginLoaderContext"]
  GETTABLEKS R3 R4 K36 ["mainButton"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R0 K37 ["button"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  DUPTABLE R3 K5 [{"enabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["enabled"]
  SETTABLEKS R3 R0 K38 ["state"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  GETTABLEKS R2 R0 K2 ["localization"]
  JUMPIF R2 [+64]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Localization"]
  GETTABLEKS R2 R3 K4 ["new"]
  DUPTABLE R3 K9 [{"libraries", "stringResourceTable", "translationResourceTable", "pluginName"}]
  NEWTABLE R4 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K12 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Resources"]
  GETTABLEKS R7 R8 K13 ["SourceStrings"]
  SETTABLEKS R7 R6 K6 ["stringResourceTable"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Resources"]
  GETTABLEKS R7 R8 K14 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K7 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K12 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["Resources"]
  GETTABLEKS R7 R8 K13 ["SourceStrings"]
  SETTABLEKS R7 R6 K6 ["stringResourceTable"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["Resources"]
  GETTABLEKS R7 R8 K14 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K7 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K5 ["libraries"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K6 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K7 ["translationResourceTable"]
  LOADK R4 K15 ["TerrainEditor"]
  SETTABLEKS R4 R3 K8 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K2 ["localization"]
  GETTABLEKS R2 R0 K16 ["analytics"]
  JUMPIF R2 [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["Analytics"]
  GETTABLEKS R2 R3 K4 ["new"]
  GETUPVAL R3 5
  CALL R2 1 1
  SETTABLEKS R2 R0 K16 ["analytics"]
  GETTABLEKS R2 R0 K18 ["shortcutController"]
  JUMPIF R2 [+9]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K4 ["new"]
  MOVE R3 R1
  GETTABLEKS R4 R0 K2 ["localization"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K18 ["shortcutController"]
  GETTABLEKS R2 R0 K19 ["pluginController"]
  JUMPIF R2 [+7]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K4 ["new"]
  MOVE R3 R1
  CALL R2 1 1
  SETTABLEKS R2 R0 K19 ["pluginController"]
  GETTABLEKS R2 R0 K20 ["studioServices"]
  JUMPIF R2 [+6]
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K4 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K20 ["studioServices"]
  GETTABLEKS R2 R0 K21 ["stylizer"]
  JUMPIF R2 [+4]
  GETUPVAL R2 9
  CALL R2 0 1
  SETTABLEKS R2 R0 K21 ["stylizer"]
  GETTABLEKS R2 R0 K22 ["toolController"]
  JUMPIF R2 [+16]
  GETUPVAL R3 10
  GETTABLEKS R2 R3 K4 ["new"]
  GETTABLEKS R3 R0 K19 ["pluginController"]
  GETTABLEKS R4 R0 K18 ["shortcutController"]
  GETTABLEKS R5 R0 K16 ["analytics"]
  GETTABLEKS R6 R0 K2 ["localization"]
  GETTABLEKS R7 R0 K21 ["stylizer"]
  CALL R2 5 1
  SETTABLEKS R2 R0 K22 ["toolController"]
  GETTABLEKS R2 R0 K23 ["_initialized"]
  JUMPIF R2 [+27]
  LOADB R2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K24 ["PluginLoaderContext"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K24 ["PluginLoaderContext"]
  GETTABLEKS R3 R4 K25 ["mainDockWidget"]
  LOADB R4 0
  JUMPIFEQKNIL R3 [+3]
  GETTABLEKS R4 R3 K26 ["Enabled"]
  MOVE R2 R4
  DUPTABLE R5 K28 [{"enabled"}]
  SETTABLEKS R2 R5 K27 ["enabled"]
  NAMECALL R3 R0 K29 ["setState"]
  CALL R3 2 0
  LOADB R3 1
  SETTABLEKS R3 R0 K23 ["_initialized"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["button"]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K2 ["enabled"]
  NAMECALL R1 R1 K3 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["pluginController"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["toolController"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+4]
  GETTABLEKS R5 R0 K4 ["localization"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["provide"]
  NEWTABLE R6 0 9
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K6 ["new"]
  NAMECALL R9 R3 K7 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETTABLEKS R9 R0 K8 ["stylizer"]
  GETTABLEKS R10 R0 K4 ["localization"]
  GETTABLEKS R11 R0 K9 ["analytics"]
  GETTABLEKS R12 R0 K10 ["shortcutController"]
  GETTABLEKS R13 R0 K11 ["pluginController"]
  GETTABLEKS R14 R0 K12 ["studioServices"]
  GETTABLEKS R15 R0 K13 ["toolController"]
  SETLIST R6 R7 9 [1]
  DUPTABLE R7 K15 [{"MainWidget"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 5
  NEWTABLE R10 16 0
  GETUPVAL R12 6
  JUMPIFNOT R12 [+2]
  LOADK R11 K17 ["TerrainEditor"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["Id"]
  SETTABLEKS R4 R10 K19 ["Enabled"]
  GETTABLEKS R11 R0 K4 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K20 ["Name"]
  NAMECALL R11 R11 K21 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Title"]
  GETIMPORT R11 K26 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K24 ["ZIndexBehavior"]
  GETIMPORT R11 K29 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K27 ["InitialDockState"]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Size"]
  GETUPVAL R12 7
  CALL R12 0 1
  JUMPIFNOT R12 [+6]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 94
  LOADN R13 200
  CALL R11 2 1
  JUMP [+5]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 64
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["MinSize"]
  GETTABLEKS R11 R0 K34 ["onClose"]
  SETTABLEKS R11 R10 K35 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K36 ["ShouldRestore"]
  GETTABLEKS R11 R0 K37 ["onCreated"]
  SETTABLEKS R11 R10 K38 ["OnWidgetCreated"]
  GETTABLEKS R11 R0 K39 ["onFocused"]
  SETTABLEKS R11 R10 K40 ["OnWidgetFocused"]
  GETTABLEKS R11 R0 K41 ["onUnfocused"]
  SETTABLEKS R11 R10 K42 ["OnWidgetFocusReleased"]
  GETTABLEKS R11 R0 K43 ["onRestore"]
  SETTABLEKS R11 R10 K44 ["OnWidgetRestored"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K45 ["PluginLoaderContext"]
  JUMPIFNOT R12 [+7]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K45 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K46 ["mainDockWidget"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K47 ["Widget"]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K48 ["Change"]
  GETTABLEKS R11 R12 K19 ["Enabled"]
  GETTABLEKS R12 R0 K49 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K51 [{"App"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 9
  CALL R12 1 1
  SETTABLEKS R12 R11 K50 ["App"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["MainWidget"]
  LOADB R8 1
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K13 ["MaterialFramework"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["DockWidget"]
  GETTABLEKS R8 R4 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["Plugin"]
  GETTABLEKS R10 R8 K18 ["Mouse"]
  GETTABLEKS R12 R5 K19 ["Context"]
  GETTABLEKS R11 R12 K20 ["StudioServices"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K21 ["Src"]
  GETTABLEKS R14 R15 K22 ["Resources"]
  GETTABLEKS R13 R14 K23 ["MakeTheme"]
  CALL R12 1 1
  GETTABLEKS R16 R1 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Resources"]
  GETTABLEKS R14 R15 K24 ["Localization"]
  GETTABLEKS R13 R14 K25 ["SourceStrings"]
  GETTABLEKS R17 R1 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["Resources"]
  GETTABLEKS R15 R16 K24 ["Localization"]
  GETTABLEKS R14 R15 K26 ["LocalizedStrings"]
  GETTABLEKS R16 R1 K21 ["Src"]
  GETTABLEKS R15 R16 K27 ["Components"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R15 K28 ["App"]
  CALL R16 1 1
  GETTABLEKS R18 R1 K21 ["Src"]
  GETTABLEKS R17 R18 K29 ["Controllers"]
  GETIMPORT R18 K8 [require]
  GETTABLEKS R19 R17 K30 ["ShortcutController"]
  CALL R18 1 1
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R17 K31 ["PluginController"]
  CALL R19 1 1
  GETIMPORT R20 K8 [require]
  GETTABLEKS R21 R17 K32 ["ToolController"]
  CALL R20 1 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R1 K21 ["Src"]
  GETTABLEKS R23 R24 K22 ["Resources"]
  GETTABLEKS R22 R23 K33 ["AnalyticsHandlers"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R25 R1 K21 ["Src"]
  GETTABLEKS R24 R25 K34 ["Flags"]
  GETTABLEKS R23 R24 K35 ["getFFlagTerrainEditorFixInitialization"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R26 R1 K21 ["Src"]
  GETTABLEKS R25 R26 K34 ["Flags"]
  GETTABLEKS R24 R25 K36 ["getFFlagFixTerrainEditorDETruncations"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R26 R1 K21 ["Src"]
  GETTABLEKS R25 R26 K37 ["Types"]
  CALL R24 1 1
  GETTABLEKS R25 R24 K38 ["Tool"]
  GETTABLEKS R26 R2 K39 ["PureComponent"]
  LOADK R28 K40 ["MainPlugin"]
  NAMECALL R26 R26 K41 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K42 [PROTO_7]
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R20
  SETTABLEKS R27 R26 K43 ["init"]
  MOVE R27 R22
  CALL R27 0 1
  JUMPIFNOT R27 [+14]
  DUPCLOSURE R27 K44 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R20
  SETTABLEKS R27 R26 K45 ["didMount"]
  DUPCLOSURE R27 K46 [PROTO_9]
  SETTABLEKS R27 R26 K47 ["didUpdate"]
  DUPCLOSURE R27 K48 [PROTO_10]
  SETTABLEKS R27 R26 K49 ["willUnmount"]
  DUPCLOSURE R27 K50 [PROTO_11]
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R23
  CAPTURE VAL R3
  CAPTURE VAL R16
  SETTABLEKS R27 R26 K51 ["render"]
  RETURN R26 1
