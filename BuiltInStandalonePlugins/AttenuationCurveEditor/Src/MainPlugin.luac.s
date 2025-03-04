PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["closeDMConnection"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["closeDMConnection"]
  NAMECALL R0 R0 K2 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["Plugin"]
  LOADK R2 K4 ["OnStopEditing"]
  NAMECALL R0 R0 K5 ["Invoke"]
  CALL R0 2 0
  GETUPVAL R0 0
  DUPTABLE R2 K11 [{"enabled", "initialCurveData", "currentCurveData", "instanceId", "instanceName", "closeDMConnection"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["enabled"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["initialCurveData"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K8 ["currentCurveData"]
  LOADN R3 255
  SETTABLEKS R3 R2 K9 ["instanceId"]
  LOADK R3 K12 [""]
  SETTABLEKS R3 R2 K10 ["instanceName"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["closeDMConnection"]
  NAMECALL R0 R0 K13 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Plugin"]
  LOADK R3 K1 ["OnEdit"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["stringifyCurveTable"]
  MOVE R5 R0
  CALL R4 1 -1
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 -1 0
  GETUPVAL R1 2
  DUPTABLE R3 K5 [{"currentCurveData"}]
  SETTABLEKS R0 R3 K4 ["currentCurveData"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setDisabled"]
  CALL R1 0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"forceRerender"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["state"]
  GETTABLEKS R5 R6 K1 ["forceRerender"]
  NOT R4 R5
  SETTABLEKS R4 R3 K1 ["forceRerender"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setDisabled"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Plugin"]
  GETTABLEKS R4 R5 K1 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R3 R4 K2 ["FocusedDataModelSession"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R3 K3 ["CurrentDataModelTypeAboutToChange"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  NAMECALL R4 R4 K4 ["Connect"]
  CALL R4 2 1
  GETUPVAL R5 1
  DUPTABLE R7 K6 [{"closeDMConnection"}]
  SETTABLEKS R4 R7 K5 ["closeDMConnection"]
  NAMECALL R5 R5 K7 ["setState"]
  CALL R5 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["destringifyCurveTable"]
  MOVE R5 R0
  CALL R4 1 1
  GETUPVAL R5 1
  DUPTABLE R7 K14 [{"enabled", "instanceId", "instanceName", "initialCurveData", "currentCurveData"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["enabled"]
  SETTABLEKS R1 R7 K10 ["instanceId"]
  SETTABLEKS R2 R7 K11 ["instanceName"]
  SETTABLEKS R4 R7 K12 ["initialCurveData"]
  SETTABLEKS R4 R7 K13 ["currentCurveData"]
  NAMECALL R5 R5 K7 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_6:
  DUPTABLE R2 K7 [{"enabled", "instanceId", "instanceName", "initialCurveData", "currentCurveData", "closeDMConnection", "forceRerender"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADN R3 255
  SETTABLEKS R3 R2 K1 ["instanceId"]
  LOADK R3 K8 [""]
  SETTABLEKS R3 R2 K2 ["instanceName"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K3 ["initialCurveData"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["currentCurveData"]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["closeDMConnection"]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["forceRerender"]
  SETTABLEKS R2 R0 K9 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K10 ["setDisabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K11 ["onChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K12 ["onWidgetEnabledChanged"]
  GETTABLEKS R2 R1 K13 ["Plugin"]
  LOADK R4 K14 ["OnOpen"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K15 ["OnInvoke"]
  CALL R2 3 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K16 ["Store"]
  GETTABLEKS R2 R3 K17 ["new"]
  GETUPVAL R3 2
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K18 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K19 ["store"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K20 ["Localization"]
  GETTABLEKS R2 R3 K17 ["new"]
  DUPTABLE R3 K24 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K21 ["stringResourceTable"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K22 ["translationResourceTable"]
  LOADK R4 K25 ["AttenuationCurveEditor"]
  SETTABLEKS R4 R3 K23 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K26 ["localization"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K27 ["Analytics"]
  GETTABLEKS R2 R3 K17 ["new"]
  DUPCLOSURE R3 K28 [PROTO_5]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K29 ["analytics"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K17 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K30 ["DEPRECATED_stylizer"]
  GETUPVAL R2 7
  GETTABLEKS R3 R1 K13 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K31 ["design"]
  RETURN R0 0

PROTO_7:
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  NEWTABLE R5 0 0
  LOADK R7 K4 ["AttenuationCurveEditor_"]
  GETTABLEKS R8 R2 K5 ["instanceId"]
  CONCAT R6 R7 R8
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K11 [{"CurveData", "Enabled", "OnChanged", "OnSave"}]
  GETTABLEKS R10 R2 K12 ["initialCurveData"]
  SETTABLEKS R10 R9 K7 ["CurveData"]
  SETTABLEKS R4 R9 K8 ["Enabled"]
  GETTABLEKS R10 R0 K13 ["onChanged"]
  SETTABLEKS R10 R9 K9 ["OnChanged"]
  GETTABLEKS R10 R0 K14 ["setDisabled"]
  SETTABLEKS R10 R9 K10 ["OnSave"]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["provide"]
  NEWTABLE R7 0 5
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["new"]
  MOVE R9 R3
  CALL R8 1 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K16 ["new"]
  GETTABLEKS R10 R0 K17 ["store"]
  CALL R9 1 1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K16 ["new"]
  NAMECALL R11 R3 K18 ["getMouse"]
  CALL R11 1 -1
  CALL R10 -1 1
  GETTABLEKS R11 R0 K19 ["localization"]
  GETTABLEKS R12 R0 K20 ["analytics"]
  SETLIST R7 R8 5 [1]
  DUPTABLE R8 K22 [{"MainWidget"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 6
  NEWTABLE R11 16 0
  LOADK R12 K23 ["AttenuationCurveEditor"]
  SETTABLEKS R12 R11 K24 ["Id"]
  SETTABLEKS R4 R11 K8 ["Enabled"]
  GETTABLEKS R16 R0 K19 ["localization"]
  LOADK R18 K2 ["Plugin"]
  LOADK R19 K25 ["Name"]
  NAMECALL R16 R16 K26 ["getText"]
  CALL R16 3 1
  MOVE R13 R16
  LOADK R14 K27 [" - "]
  GETTABLEKS R15 R2 K28 ["instanceName"]
  CONCAT R12 R13 R15
  SETTABLEKS R12 R11 K29 ["Title"]
  GETIMPORT R12 K33 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K31 ["ZIndexBehavior"]
  GETIMPORT R12 K36 [Enum.InitialDockState.Float]
  SETTABLEKS R12 R11 K34 ["InitialDockState"]
  GETIMPORT R12 K38 [Vector2.new]
  LOADN R13 128
  LOADN R14 224
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["Size"]
  GETIMPORT R12 K38 [Vector2.new]
  LOADN R13 28
  LOADN R14 44
  CALL R12 2 1
  SETTABLEKS R12 R11 K40 ["MinSize"]
  GETTABLEKS R12 R0 K14 ["setDisabled"]
  SETTABLEKS R12 R11 K41 ["OnClose"]
  GETTABLEKS R13 R1 K42 ["PluginLoaderContext"]
  GETTABLEKS R12 R13 K43 ["mainDockWidget"]
  SETTABLEKS R12 R11 K44 ["Widget"]
  GETTABLEKS R12 R0 K45 ["onDockWidgetCreated"]
  SETTABLEKS R12 R11 K46 ["OnWidgetCreated"]
  LOADB R12 0
  SETTABLEKS R12 R11 K47 ["ShouldRestore"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K48 ["Change"]
  GETTABLEKS R12 R13 K8 ["Enabled"]
  GETTABLEKS R13 R0 K49 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K52 [{"Wrapper", "StyleLink"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R14 7
  NEWTABLE R15 1 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K53 ["Tag"]
  LOADK R17 K54 ["X-Fill X-Column"]
  SETTABLE R17 R15 R16
  MOVE R16 R5
  CALL R13 3 1
  SETTABLEKS R13 R12 K50 ["Wrapper"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  LOADK R14 K51 ["StyleLink"]
  DUPTABLE R15 K56 [{"StyleSheet"}]
  GETTABLEKS R16 R0 K57 ["design"]
  SETTABLEKS R16 R15 K55 ["StyleSheet"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K51 ["StyleLink"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["DockWidget"]
  GETTABLEKS R6 R4 K12 ["Pane"]
  GETTABLEKS R7 R3 K13 ["ContextServices"]
  GETTABLEKS R8 R7 K14 ["Plugin"]
  GETTABLEKS R9 R7 K15 ["Mouse"]
  GETTABLEKS R10 R7 K16 ["Store"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K19 ["Reducers"]
  GETTABLEKS R13 R14 K20 ["MainReducer"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K21 ["Util"]
  GETTABLEKS R14 R15 K22 ["SerializationUtil"]
  CALL R13 1 1
  GETTABLEKS R16 R3 K23 ["Style"]
  GETTABLEKS R15 R16 K24 ["Themes"]
  GETTABLEKS R14 R15 K25 ["StudioTheme"]
  GETTABLEKS R16 R3 K26 ["Styling"]
  GETTABLEKS R15 R16 K27 ["registerPluginStyles"]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K28 ["Resources"]
  GETTABLEKS R17 R18 K29 ["Localization"]
  GETTABLEKS R16 R17 K30 ["SourceStrings"]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K28 ["Resources"]
  GETTABLEKS R18 R19 K29 ["Localization"]
  GETTABLEKS R17 R18 K31 ["LocalizedStrings"]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K32 ["Components"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R18 K33 ["AttenuationCurveRenderer"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K34 ["PureComponent"]
  LOADK R22 K35 ["MainPlugin"]
  NAMECALL R20 R20 K36 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K37 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R21 R20 K38 ["init"]
  DUPCLOSURE R21 K39 [PROTO_7]
  SETTABLEKS R21 R20 K40 ["didUpdate"]
  DUPCLOSURE R21 K41 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R21 R20 K42 ["render"]
  RETURN R20 1
