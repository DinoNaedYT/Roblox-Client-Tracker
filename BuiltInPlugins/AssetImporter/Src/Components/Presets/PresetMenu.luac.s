PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFocused"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFocused"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isHovered"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["isHovered"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R2 K1 ["ActiveQueueItem"]
  GETTABLEKS R3 R4 K2 ["currentPreset"]
  JUMP [+2]
  GETTABLEKS R3 R2 K3 ["CurrentPreset"]
  GETTABLEKS R4 R2 K4 ["PresetController"]
  GETUPVAL R5 2
  JUMPIFNOTEQ R0 R5 [+16]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+7]
  MOVE R7 R3
  GETTABLEKS R8 R2 K1 ["ActiveQueueItem"]
  NAMECALL R5 R4 K5 ["resolvePreset"]
  CALL R5 3 0
  RETURN R0 0
  MOVE R7 R3
  NAMECALL R5 R4 K6 ["DEPRECATED_resolvePreset"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 3
  JUMPIFNOTEQ R0 R5 [+13]
  GETUPVAL R5 0
  DUPTABLE R7 K9 [{"showNameDialog", "promptIntent"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["showNameDialog"]
  LOADK R8 K10 ["Rename"]
  SETTABLEKS R8 R7 K8 ["promptIntent"]
  NAMECALL R5 R5 K11 ["setState"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 4
  JUMPIFNOTEQ R0 R5 [+8]
  GETTABLEKS R5 R2 K4 ["PresetController"]
  MOVE R7 R3
  NAMECALL R5 R5 K12 ["delete"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 5
  JUMPIFNOTEQ R0 R5 [+6]
  MOVE R7 R3
  NAMECALL R5 R4 K13 ["save"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 6
  JUMPIFNOTEQ R0 R5 [+13]
  GETUPVAL R5 0
  DUPTABLE R7 K9 [{"showNameDialog", "promptIntent"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["showNameDialog"]
  LOADK R8 K14 ["Create"]
  SETTABLEKS R8 R7 K8 ["promptIntent"]
  NAMECALL R5 R5 K11 ["setState"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 7
  JUMPIFNOTEQ R0 R5 [+7]
  GETTABLEKS R5 R2 K4 ["PresetController"]
  MOVE R7 R3
  NAMECALL R5 R5 K15 ["setDefault"]
  CALL R5 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R1 K1 ["ActiveQueueItem"]
  GETTABLEKS R2 R3 K2 ["currentPreset"]
  JUMP [+2]
  GETTABLEKS R2 R1 K3 ["CurrentPreset"]
  GETTABLEKS R3 R1 K4 ["PresetController"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["isStudioDefault"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K4 ["PresetController"]
  MOVE R6 R2
  NAMECALL R4 R4 K6 ["isLastImport"]
  CALL R4 2 1
  GETTABLEKS R5 R1 K4 ["PresetController"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["isDefault"]
  CALL R5 2 1
  NOT R6 R3
  JUMPIFNOT R6 [+1]
  NOT R6 R4
  GETUPVAL R7 2
  JUMPIFNOTEQ R0 R7 [+4]
  GETTABLEKS R7 R1 K8 ["SettingsChanged"]
  RETURN R7 1
  GETUPVAL R7 3
  JUMPIFNOTEQ R0 R7 [+2]
  RETURN R6 1
  GETUPVAL R7 4
  JUMPIFNOTEQ R0 R7 [+2]
  RETURN R6 1
  GETUPVAL R7 5
  JUMPIFNOTEQ R0 R7 [+5]
  GETTABLEKS R8 R1 K8 ["SettingsChanged"]
  AND R7 R8 R6
  RETURN R7 1
  GETUPVAL R7 6
  JUMPIFNOTEQ R0 R7 [+6]
  NOT R7 R3
  JUMPIF R7 [+2]
  GETTABLEKS R7 R1 K8 ["SettingsChanged"]
  RETURN R7 1
  GETUPVAL R7 7
  JUMPIFNOTEQ R0 R7 [+3]
  NOT R7 R5
  RETURN R7 1
  LOADB R7 0
  RETURN R7 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHoveredItemChanged"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Stylizer"]
  GETTABLEKS R4 R5 K2 ["TopBar"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["isItemEnabled"]
  MOVE R7 R0
  CALL R6 1 1
  JUMPIF R6 [+4]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Disabled"]
  JUMP [+6]
  JUMPIFNOT R3 [+4]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Hover"]
  JUMP [+1]
  LOADNIL R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K13 [{"LayoutOrder", "OnClick", "OnMouseEnter", "Size", "StyleModifier", "AutomaticSize"}]
  SETTABLEKS R1 R8 K7 ["LayoutOrder"]
  SETTABLEKS R2 R8 K8 ["OnClick"]
  GETUPVAL R10 4
  CALL R10 0 1
  JUMPIF R10 [+4]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K9 ["OnMouseEnter"]
  GETTABLEKS R9 R4 K14 ["MenuItemSize"]
  SETTABLEKS R9 R8 K10 ["Size"]
  SETTABLEKS R5 R8 K11 ["StyleModifier"]
  GETIMPORT R9 K17 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K12 ["AutomaticSize"]
  DUPTABLE R9 K19 [{"TextLabel"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K22 [{"Text", "TextXAlignment", "Size", "StyleModifier", "AutomaticSize"}]
  SETTABLEKS R0 R12 K20 ["Text"]
  GETIMPORT R13 K24 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K21 ["TextXAlignment"]
  GETIMPORT R13 K27 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K10 ["Size"]
  SETTABLEKS R5 R12 K11 ["StyleModifier"]
  GETIMPORT R13 K17 [Enum.AutomaticSize.X]
  SETTABLEKS R13 R12 K12 ["AutomaticSize"]
  DUPTABLE R13 K29 [{"Padding"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K6 ["createElement"]
  LOADK R15 K30 ["UIPadding"]
  DUPTABLE R16 K33 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R17 K36 [UDim.new]
  LOADN R18 0
  GETTABLEKS R20 R4 K28 ["Padding"]
  GETTABLEKS R19 R20 K23 ["Left"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["PaddingLeft"]
  GETIMPORT R17 K36 [UDim.new]
  LOADN R18 0
  GETTABLEKS R20 R4 K28 ["Padding"]
  GETTABLEKS R19 R20 K37 ["Right"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["PaddingRight"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["Padding"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K18 ["TextLabel"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showNameDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showNameDialog"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PresetController"]
  JUMPIFNOTEQKS R0 K2 ["Save"] [+40]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["promptIntent"]
  JUMPIFNOTEQKS R3 K5 ["Create"] [+6]
  MOVE R5 R1
  NAMECALL R3 R2 K6 ["save"]
  CALL R3 2 0
  JUMP [+27]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["promptIntent"]
  JUMPIFNOTEQKS R3 K7 ["Rename"] [+21]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+13]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K8 ["ActiveQueueItem"]
  GETTABLEKS R3 R4 K9 ["currentPreset"]
  MOVE R6 R1
  MOVE R7 R3
  NAMECALL R4 R2 K10 ["rename"]
  CALL R4 3 0
  JUMP [+4]
  MOVE R5 R1
  NAMECALL R3 R2 K11 ["DEPRECATED_rename"]
  CALL R3 2 0
  GETUPVAL R3 0
  DUPTABLE R5 K13 [{"showNameDialog"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["showNameDialog"]
  NAMECALL R3 R3 K14 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  LOADK R4 K2 ["Templates"]
  LOADK R5 K3 ["Reset"]
  NAMECALL R2 R1 K4 ["getText"]
  CALL R2 3 1
  LOADK R5 K2 ["Templates"]
  LOADK R6 K5 ["Rename"]
  NAMECALL R3 R1 K4 ["getText"]
  CALL R3 3 1
  LOADK R6 K2 ["Templates"]
  LOADK R7 K6 ["Delete"]
  NAMECALL R4 R1 K4 ["getText"]
  CALL R4 3 1
  LOADK R7 K2 ["Templates"]
  LOADK R8 K7 ["SaveChanges"]
  NAMECALL R5 R1 K4 ["getText"]
  CALL R5 3 1
  LOADK R8 K2 ["Templates"]
  LOADK R9 K8 ["SaveNewPreset"]
  NAMECALL R6 R1 K4 ["getText"]
  CALL R6 3 1
  LOADK R9 K2 ["Templates"]
  LOADK R10 K9 ["SetAsDefault"]
  NAMECALL R7 R1 K4 ["getText"]
  CALL R7 3 1
  NEWTABLE R8 0 6
  MOVE R9 R2
  MOVE R10 R5
  MOVE R11 R6
  MOVE R12 R7
  MOVE R13 R3
  MOVE R14 R4
  SETLIST R8 R9 6 [1]
  SETTABLEKS R8 R0 K10 ["dropdownItems"]
  DUPTABLE R8 K15 [{"isFocused", "isHovered", "showNameDialog", "promptIntent"}]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+1]
  LOADB R9 0
  SETTABLEKS R9 R8 K11 ["isFocused"]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+1]
  LOADB R9 0
  SETTABLEKS R9 R8 K12 ["isHovered"]
  LOADB R9 0
  SETTABLEKS R9 R8 K13 ["showNameDialog"]
  LOADN R9 0
  SETTABLEKS R9 R8 K14 ["promptIntent"]
  SETTABLEKS R8 R0 K16 ["state"]
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIF R8 [+12]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  SETTABLEKS R8 R0 K17 ["focused"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  SETTABLEKS R8 R0 K18 ["unfocused"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R0
  SETTABLEKS R8 R0 K19 ["onHoveredItemChanged"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R8 R0 K20 ["onItemActivated"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R8 R0 K21 ["isItemEnabled"]
  NEWCLOSURE R8 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  SETTABLEKS R8 R0 K22 ["onRenderItem"]
  NEWCLOSURE R8 P6
  CAPTURE VAL R0
  SETTABLEKS R8 R0 K23 ["onNameDialogClose"]
  NEWCLOSURE R8 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R8 R0 K24 ["onNameDialogButtonPressed"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["TopBar"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"Size", "LayoutOrder"}]
  GETTABLEKS R7 R3 K8 ["MenuButtonSize"]
  SETTABLEKS R7 R6 K5 ["Size"]
  GETTABLEKS R7 R1 K6 ["LayoutOrder"]
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K11 [{"PresetMenu", "PresetNamePrompt"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K21 [{"Items", "HideText", "OnItemActivated", "OnRenderItem", "OnMouseEnter", "OnMouseLeave", "Size", "ExpandIcon", "ShowSelection", "UseAutoWidth"}]
  GETTABLEKS R11 R0 K22 ["dropdownItems"]
  SETTABLEKS R11 R10 K12 ["Items"]
  LOADB R11 1
  SETTABLEKS R11 R10 K13 ["HideText"]
  GETTABLEKS R11 R0 K23 ["onItemActivated"]
  SETTABLEKS R11 R10 K14 ["OnItemActivated"]
  GETTABLEKS R11 R0 K24 ["onRenderItem"]
  SETTABLEKS R11 R10 K15 ["OnRenderItem"]
  GETTABLEKS R11 R0 K25 ["focused"]
  SETTABLEKS R11 R10 K16 ["OnMouseEnter"]
  GETTABLEKS R11 R0 K26 ["unfocused"]
  SETTABLEKS R11 R10 K17 ["OnMouseLeave"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K5 ["Size"]
  GETTABLEKS R11 R3 K30 ["MenuImage"]
  SETTABLEKS R11 R10 K18 ["ExpandIcon"]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["ShowSelection"]
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["UseAutoWidth"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["PresetMenu"]
  GETTABLEKS R9 R2 K31 ["showNameDialog"]
  JUMPIFNOT R9 [+36]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K37 [{"CurrentPreset", "Intent", "IsHintError", "OnClose", "OnButtonPressed"}]
  GETUPVAL R12 4
  CALL R12 0 1
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R1 K38 ["ActiveQueueItem"]
  GETTABLEKS R11 R12 K39 ["currentPreset"]
  JUMP [+4]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K32 ["CurrentPreset"]
  SETTABLEKS R11 R10 K32 ["CurrentPreset"]
  GETTABLEKS R11 R2 K40 ["promptIntent"]
  SETTABLEKS R11 R10 K33 ["Intent"]
  LOADB R11 0
  SETTABLEKS R11 R10 K34 ["IsHintError"]
  GETTABLEKS R11 R0 K41 ["onNameDialogClose"]
  SETTABLEKS R11 R10 K35 ["OnClose"]
  GETTABLEKS R11 R0 K42 ["onNameDialogButtonPressed"]
  SETTABLEKS R11 R10 K36 ["OnButtonPressed"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K10 ["PresetNamePrompt"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_11:
  DUPTABLE R1 K4 [{"ActiveQueueItem", "AssetImportSession", "CurrentPreset", "SettingsChanged"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K6 ["activeQueueItem"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["ActiveQueueItem"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K7 ["assetImportSession"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+4]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K8 ["currentPreset"]
  SETTABLEKS R2 R1 K2 ["CurrentPreset"]
  GETTABLEKS R3 R0 K5 ["Preview"]
  GETTABLEKS R2 R3 K9 ["settingsChanged"]
  SETTABLEKS R2 R1 K3 ["SettingsChanged"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Stylizer"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R9 R1 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["StyleModifier"]
  GETTABLEKS R9 R1 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["TextLabel"]
  GETTABLEKS R11 R9 K18 ["SelectInput"]
  GETTABLEKS R12 R9 K19 ["Button"]
  GETTABLEKS R13 R9 K20 ["Pane"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K22 ["Components"]
  GETTABLEKS R16 R17 K23 ["Dialogs"]
  GETTABLEKS R15 R16 K24 ["PresetNamePrompt"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K25 ["Controllers"]
  GETTABLEKS R16 R17 K26 ["PresetController"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K21 ["Src"]
  GETTABLEKS R18 R19 K27 ["Flags"]
  GETTABLEKS R17 R18 K28 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K29 ["PureComponent"]
  LOADK R19 K30 ["PresetMenu"]
  NAMECALL R17 R17 K31 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K32 [PROTO_9]
  CAPTURE VAL R16
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R18 R17 K33 ["init"]
  DUPCLOSURE R18 K34 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K35 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K36 [{"Stylizer", "Localization", "PresetController"}]
  SETTABLEKS R6 R19 K12 ["Stylizer"]
  SETTABLEKS R7 R19 K13 ["Localization"]
  SETTABLEKS R15 R19 K26 ["PresetController"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  DUPCLOSURE R18 K37 [PROTO_11]
  CAPTURE VAL R16
  GETTABLEKS R19 R3 K38 ["connect"]
  MOVE R20 R18
  LOADNIL R21
  CALL R19 2 1
  MOVE R20 R17
  CALL R19 1 -1
  RETURN R19 -1
