PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R4 K1 [{"enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["enabled"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Store"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K10 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K12 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K13 ["translationResourceTable"]
  LOADK R4 K16 ["CompositorDebugger"]
  SETTABLEKS R4 R3 K14 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K17 ["localization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K18 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 5
  CALL R2 1 1
  SETTABLEKS R2 R0 K19 ["analytics"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  GETUPVAL R8 2
  JUMPIFNOT R8 [+2]
  LOADK R7 K14 ["CompositorDebuggerButton"]
  JUMP [+1]
  LOADK R7 K15 ["template_button"]
  SETTABLEKS R7 R6 K7 ["Id"]
  GETTABLEKS R7 R0 K16 ["localization"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K18 ["Button"]
  NAMECALL R7 R7 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Title"]
  GETTABLEKS R7 R0 K16 ["localization"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K20 ["Description"]
  NAMECALL R7 R7 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["Tooltip"]
  GETUPVAL R8 2
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+1]
  LOADK R7 K21 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  SETTABLEKS R7 R6 K10 ["Icon"]
  GETTABLEKS R7 R0 K22 ["toggleEnabled"]
  SETTABLEKS R7 R6 K11 ["OnClick"]
  LOADB R7 1
  SETTABLEKS R7 R6 K12 ["ClickableWhenViewportHidden"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  GETTABLEKS R9 R0 K6 ["store"]
  CALL R8 1 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETUPVAL R10 4
  CALL R10 0 1
  GETTABLEKS R11 R0 K8 ["localization"]
  GETTABLEKS R12 R0 K9 ["analytics"]
  SETLIST R6 R7 6 [1]
  DUPTABLE R7 K12 [{"Toolbar", "MainWidget"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K16 [{"Title", "RenderButtons"}]
  GETUPVAL R12 7
  JUMPIFNOT R12 [+2]
  LOADK R11 K17 ["CompositorToolbar"]
  JUMP [+7]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K10 ["Toolbar"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K15 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Toolbar"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 8
  NEWTABLE R10 16 0
  GETUPVAL R12 9
  JUMPIFNOT R12 [+2]
  LOADK R11 K19 ["CompositorDebugger"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K20 ["Id"]
  SETTABLEKS R4 R10 K21 ["Enabled"]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K22 ["Name"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  GETIMPORT R11 K26 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K24 ["ZIndexBehavior"]
  GETIMPORT R11 K29 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K27 ["InitialDockState"]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Size"]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 94
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["MinSize"]
  GETTABLEKS R11 R0 K34 ["onClose"]
  SETTABLEKS R11 R10 K35 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K36 ["ShouldRestore"]
  GETTABLEKS R11 R0 K37 ["onRestore"]
  SETTABLEKS R11 R10 K38 ["OnWidgetRestored"]
  GETUPVAL R13 10
  GETTABLEKS R12 R13 K39 ["Change"]
  GETTABLEKS R11 R12 K21 ["Enabled"]
  GETTABLEKS R12 R0 K40 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K42 [{"MainComponent"}]
  MOVE R12 R4
  JUMPIFNOT R12 [+5]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 11
  CALL R12 1 1
  SETTABLEKS R12 R11 K41 ["MainComponent"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["MainWidget"]
  CALL R5 2 -1
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
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Rodux"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["UI"]
  GETTABLEKS R8 R7 K17 ["DockWidget"]
  GETTABLEKS R9 R7 K18 ["PluginButton"]
  GETTABLEKS R10 R7 K19 ["PluginToolbar"]
  GETIMPORT R11 K1 [game]
  LOADK R13 K20 ["CDCompositorDebuggerIcon"]
  LOADB R14 0
  NAMECALL R11 R11 K21 ["DefineFastFlag"]
  CALL R11 3 1
  GETTABLEKS R12 R6 K22 ["ContextServices"]
  GETTABLEKS R13 R12 K23 ["Plugin"]
  GETTABLEKS R14 R12 K24 ["Mouse"]
  GETTABLEKS R15 R12 K25 ["Store"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R1 K9 ["Src"]
  GETTABLEKS R18 R19 K26 ["Reducers"]
  GETTABLEKS R17 R18 K27 ["MainReducer"]
  CALL R16 1 1
  GETTABLEKS R18 R1 K9 ["Src"]
  GETTABLEKS R17 R18 K28 ["Resources"]
  GETIMPORT R18 K8 [require]
  GETTABLEKS R19 R17 K29 ["AnalyticsHandlers"]
  CALL R18 1 1
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R17 K30 ["MakeTheme"]
  CALL R19 1 1
  GETTABLEKS R20 R17 K31 ["SourceStrings"]
  GETTABLEKS R21 R17 K32 ["LocalizedStrings"]
  GETTABLEKS R23 R1 K9 ["Src"]
  GETTABLEKS R22 R23 K33 ["Components"]
  GETIMPORT R23 K8 [require]
  GETTABLEKS R24 R22 K34 ["MainComponent"]
  CALL R23 1 1
  GETTABLEKS R24 R3 K35 ["PureComponent"]
  LOADK R26 K36 ["MainPlugin"]
  NAMECALL R24 R24 K37 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K38 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R18
  SETTABLEKS R25 R24 K39 ["init"]
  DUPCLOSURE R25 K40 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R25 R24 K41 ["renderButtons"]
  DUPCLOSURE R25 K42 [PROTO_8]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R23
  SETTABLEKS R25 R24 K43 ["render"]
  RETURN R24 1
