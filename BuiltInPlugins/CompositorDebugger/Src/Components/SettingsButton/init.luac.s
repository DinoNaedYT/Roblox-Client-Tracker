PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["LayerFilters"]
  GETTABLEKS R4 R2 K4 ["CrossFade"]
  NOT R3 R4
  SETTABLEKS R3 R2 K4 ["CrossFade"]
  GETTABLEKS R3 R0 K5 ["SetLayerFilter"]
  LOADK R4 K4 ["CrossFade"]
  GETTABLEKS R5 R2 K4 ["CrossFade"]
  CALL R3 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["SETTINGS"]
  GETTABLEKS R5 R6 K3 ["LayerFilters"]
  MOVE R6 R2
  NAMECALL R3 R1 K7 ["SetSetting"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K8 ["Analytics"]
  LOADK R5 K9 ["onChangeSetting"]
  LOADK R6 K10 ["crossFadeFilter"]
  GETTABLEKS R7 R2 K4 ["CrossFade"]
  NAMECALL R3 R3 K11 ["report"]
  CALL R3 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["ActiveLayersFilter"]
  NOT R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["SetActiveLayersFilter"]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["SETTINGS"]
  GETTABLEKS R5 R6 K3 ["ActiveLayersFilter"]
  MOVE R6 R2
  NAMECALL R3 R1 K6 ["SetSetting"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K7 ["Analytics"]
  LOADK R5 K8 ["onChangeSetting"]
  LOADK R6 K9 ["activeLayersFilter"]
  MOVE R7 R2
  NAMECALL R3 R3 K10 ["report"]
  CALL R3 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K3 ["Id"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["SetFrameBufferDuration"]
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["SETTINGS"]
  GETTABLEKS R6 R7 K6 ["FrameBufferDuration"]
  MOVE R7 R3
  NAMECALL R4 R2 K7 ["SetSetting"]
  CALL R4 3 0
  GETTABLEKS R4 R1 K8 ["Analytics"]
  LOADK R6 K9 ["onChangeSetting"]
  LOADK R7 K10 ["frameBufferDuration"]
  MOVE R8 R3
  NAMECALL R4 R4 K11 ["report"]
  CALL R4 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETTABLEKS R2 R0 K2 ["Plugin"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  NEWTABLE R3 0 3
  GETUPVAL R4 0
  NAMECALL R4 R4 K4 ["makeReplaySubmenu"]
  CALL R4 1 1
  DUPTABLE R5 K9 [{"Id", "Text", "Checked", "OnItemClicked"}]
  LOADK R6 K10 ["ToggleCrossFade"]
  SETTABLEKS R6 R5 K5 ["Id"]
  LOADK R8 K11 ["Settings"]
  LOADK R9 K10 ["ToggleCrossFade"]
  NAMECALL R6 R1 K12 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K14 ["LayerFilters"]
  GETTABLEKS R7 R8 K13 ["CrossFade"]
  NOT R6 R7
  SETTABLEKS R6 R5 K7 ["Checked"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["toggleCrossFadeFilter"]
  SETTABLEKS R6 R5 K8 ["OnItemClicked"]
  DUPTABLE R6 K9 [{"Id", "Text", "Checked", "OnItemClicked"}]
  LOADK R7 K16 ["ToggleActiveLayers"]
  SETTABLEKS R7 R6 K5 ["Id"]
  LOADK R9 K11 ["Settings"]
  LOADK R10 K16 ["ToggleActiveLayers"]
  NAMECALL R7 R1 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Text"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K17 ["ActiveLayersFilter"]
  SETTABLEKS R7 R6 K7 ["Checked"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K18 ["toggleActiveLayersFilter"]
  SETTABLEKS R7 R6 K8 ["OnItemClicked"]
  SETLIST R3 R4 3 [1]
  GETUPVAL R4 1
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["toggleCrossFadeFilter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["toggleActiveLayersFilter"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K2 ["onReplayDurationChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K3 ["onButtonClicked"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["Id"]
  GETTABLEKS R4 R1 K0 ["Id"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["FrameBuffer"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R4 R1 K2 ["FrameBuffer"]
  NAMECALL R4 R4 K3 ["getSize"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["FRAMERATE"]
  DIV R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  NEWTABLE R4 2 0
  GETUPVAL R8 0
  GETTABLEKS R5 R8 K5 ["TIMECONTROLS_INVERVALS"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  DUPTABLE R12 K10 [{"Id", "Text", "Checked", "OnItemClicked"}]
  SETTABLEKS R8 R12 K6 ["Id"]
  LOADK R15 K11 ["Replay"]
  LOADK R16 K12 ["Seconds"]
  DUPTABLE R17 K14 [{"duration"}]
  SETTABLEKS R8 R17 K13 ["duration"]
  NAMECALL R13 R2 K15 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Text"]
  JUMPIFEQ R8 R3 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K8 ["Checked"]
  GETTABLEKS R13 R0 K16 ["onReplayDurationChanged"]
  SETTABLEKS R13 R12 K9 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K19 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-30]
  GETIMPORT R5 K21 [table.sort]
  MOVE R6 R4
  DUPCLOSURE R7 K22 [PROTO_5]
  CALL R5 2 0
  LOADK R5 K23 ["ReplayLength"]
  SETTABLEKS R5 R4 K6 ["Id"]
  LOADK R7 K24 ["Settings"]
  LOADK R8 K23 ["ReplayLength"]
  NAMECALL R5 R2 K15 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K7 ["Text"]
  RETURN R4 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["ImageButton"]
  NEWTABLE R5 8 0
  GETTABLEKS R6 R1 K4 ["LayoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["Size"]
  SETTABLEKS R6 R5 K5 ["Size"]
  GETIMPORT R6 K8 [UDim2.fromScale]
  LOADN R7 1
  LOADK R8 K9 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Position"]
  GETIMPORT R6 K13 [Vector2.new]
  LOADN R7 1
  LOADK R8 K9 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["AnchorPoint"]
  LOADN R6 1
  SETTABLEKS R6 R5 K15 ["BackgroundTransparency"]
  GETTABLEKS R6 R2 K16 ["Image"]
  SETTABLEKS R6 R5 K16 ["Image"]
  GETTABLEKS R6 R2 K17 ["Color"]
  SETTABLEKS R6 R5 K18 ["ImageColor3"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["Event"]
  GETTABLEKS R6 R7 K20 ["Activated"]
  GETTABLEKS R7 R0 K21 ["onButtonClicked"]
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  DUPTABLE R2 K2 [{"ActiveLayersFilter", "LayerFilters"}]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K0 ["ActiveLayersFilter"]
  SETTABLEKS R3 R2 K0 ["ActiveLayersFilter"]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K1 ["LayerFilters"]
  SETTABLEKS R3 R2 K1 ["LayerFilters"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K3 [{"SetActiveLayersFilter", "SetFrameBufferDuration", "SetLayerFilter"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetActiveLayersFilter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetFrameBufferDuration"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetLayerFilter"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R7 R3 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Actions"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K16 ["SetActiveLayersFilter"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K17 ["SetLayerFilter"]
  CALL R9 1 1
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K18 ["Thunks"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K19 ["SetFrameBufferDuration"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K20 ["Util"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K21 ["Constants"]
  CALL R13 1 1
  GETTABLEKS R14 R3 K22 ["UI"]
  GETTABLEKS R15 R14 K23 ["showContextMenu"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K24 ["Types"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K25 ["PureComponent"]
  LOADK R19 K26 ["SettingsButton"]
  NAMECALL R17 R17 K27 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K28 [PROTO_4]
  CAPTURE VAL R13
  CAPTURE VAL R15
  SETTABLEKS R18 R17 K29 ["init"]
  DUPCLOSURE R18 K30 [PROTO_6]
  CAPTURE VAL R13
  SETTABLEKS R18 R17 K31 ["makeReplaySubmenu"]
  DUPCLOSURE R18 K32 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K33 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K37 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
  GETTABLEKS R20 R4 K34 ["Analytics"]
  SETTABLEKS R20 R19 K34 ["Analytics"]
  GETTABLEKS R20 R4 K35 ["Localization"]
  SETTABLEKS R20 R19 K35 ["Localization"]
  GETTABLEKS R20 R4 K36 ["Plugin"]
  SETTABLEKS R20 R19 K36 ["Plugin"]
  GETTABLEKS R21 R3 K12 ["Style"]
  GETTABLEKS R20 R21 K13 ["Stylizer"]
  SETTABLEKS R20 R19 K13 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  DUPCLOSURE R18 K38 [PROTO_8]
  DUPCLOSURE R19 K39 [PROTO_12]
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R9
  GETTABLEKS R20 R2 K40 ["connect"]
  MOVE R21 R18
  MOVE R22 R19
  CALL R20 2 1
  MOVE R21 R17
  CALL R20 1 1
  MOVE R17 R20
  RETURN R17 1
