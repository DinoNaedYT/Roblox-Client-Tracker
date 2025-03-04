PROTO_0:
  GETTABLEKS R1 R0 K0 ["Type"]
  JUMPIFNOTEQKS R1 K1 ["Material"] [+19]
  GETTABLEKS R3 R0 K1 ["Material"]
  GETTABLEKS R2 R3 K2 ["Textures"]
  GETTABLEKS R1 R2 K3 ["ColorMap"]
  LOADK R2 K4 ["%s-%s"]
  MOVE R4 R1
  GETTABLEKS R6 R0 K5 ["Selected"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  NAMECALL R2 R2 K8 ["format"]
  CALL R2 3 -1
  RETURN R2 -1
  GETTABLEKS R1 R0 K0 ["Type"]
  JUMPIFNOTEQKS R1 K9 ["Shimmer"] [+9]
  LOADK R2 K10 ["shimmer-%*"]
  GETTABLEKS R4 R0 K11 ["Index"]
  NAMECALL R2 R2 K8 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETIMPORT R1 K13 [error]
  LOADK R3 K14 ["Unknown item type passed to getItemKey: %*"]
  GETTABLEKS R5 R0 K0 ["Type"]
  NAMECALL R3 R3 K8 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnMaterialSelected"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["showContextMenu"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["Material"]
  GETTABLEKS R4 R2 K1 ["Textures"]
  GETTABLEKS R3 R4 K2 ["ColorMap"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"Image", "LayoutOrder", "OnClick", "OnRightClick", "Selected"}]
  SETTABLEKS R3 R6 K4 ["Image"]
  SETTABLEKS R0 R6 K5 ["LayoutOrder"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K6 ["OnClick"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K7 ["OnRightClick"]
  GETTABLEKS R7 R1 K8 ["Selected"]
  SETTABLEKS R7 R6 K8 ["Selected"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["DevFrameworkShimmer is not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 0
  DUPTABLE R3 K5 [{"LayoutOrder"}]
  GETTABLEKS R4 R0 K6 ["Index"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["Type"]
  JUMPIFNOTEQKS R2 K1 ["Material"] [+6]
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1
  GETTABLEKS R2 R1 K0 ["Type"]
  JUMPIFNOTEQKS R2 K2 ["Shimmer"] [+5]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  GETIMPORT R2 K4 [error]
  LOADK R4 K5 ["Unknown item type passed to renderItem: %*"]
  GETTABLEKS R6 R1 K0 ["Type"]
  NAMECALL R4 R4 K6 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnRemove"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnGenerateVariations"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R6 R1 K4 ["Materials"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  NEWTABLE R5 0 2
  DUPTABLE R6 K8 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R9 K9 ["TextureBrowser"]
  LOADK R10 K10 ["Remove"]
  NAMECALL R7 R3 K11 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Text"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["Enabled"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K7 ["OnItemClicked"]
  DUPTABLE R7 K8 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R10 K9 ["TextureBrowser"]
  LOADK R11 K12 ["RemoveAll"]
  NAMECALL R8 R3 K11 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K5 ["Text"]
  SETTABLEKS R4 R7 K6 ["Enabled"]
  GETTABLEKS R8 R1 K13 ["OnRemoveAll"]
  SETTABLEKS R8 R7 K7 ["OnItemClicked"]
  SETLIST R5 R6 2 [1]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+25]
  MOVE R7 R5
  LOADN R8 1
  DUPTABLE R9 K8 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R12 K9 ["TextureBrowser"]
  LOADK R13 K14 ["GenerateVariations"]
  NAMECALL R10 R3 K11 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K5 ["Text"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K6 ["Enabled"]
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K7 ["OnItemClicked"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K17 [table.insert]
  CALL R6 3 0
  GETIMPORT R6 K20 [task.spawn]
  NEWCLOSURE R7 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R5
  CALL R6 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["showContextMenu"]
  CALL R0 0 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be false"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPCLOSURE R1 K3 [PROTO_0]
  SETTABLEKS R1 R0 K4 ["getItemKey"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  DUPCLOSURE R2 K5 [PROTO_4]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R0 K6 ["renderItem"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R3 R0 K7 ["showContextMenu"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K8 ["rightClick"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TextureBrowser"]
  GETTABLEKS R3 R2 K3 ["CellPadding"]
  GETTABLEKS R4 R2 K4 ["CellSize"]
  GETTABLEKS R5 R2 K5 ["Padding"]
  NEWTABLE R6 0 0
  LOADN R9 1
  GETTABLEKS R7 R1 K6 ["GeneratingImages"]
  LOADN R8 1
  FORNPREP R7
  DUPTABLE R12 K9 [{"Type", "Index"}]
  LOADK R13 K10 ["Shimmer"]
  SETTABLEKS R13 R12 K7 ["Type"]
  SETTABLEKS R9 R12 K8 ["Index"]
  FASTCALL2 TABLE_INSERT R6 R12 [+4]
  MOVE R11 R6
  GETIMPORT R10 K13 [table.insert]
  CALL R10 2 0
  FORNLOOP R7
  GETTABLEKS R7 R1 K14 ["Materials"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  DUPTABLE R14 K17 [{"Type", "Material", "Selected"}]
  LOADK R15 K15 ["Material"]
  SETTABLEKS R15 R14 K7 ["Type"]
  SETTABLEKS R11 R14 K15 ["Material"]
  GETTABLEKS R16 R1 K18 ["SelectedMaterial"]
  JUMPIFEQ R16 R11 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  SETTABLEKS R15 R14 K16 ["Selected"]
  FASTCALL2 TABLE_INSERT R6 R14 [+4]
  MOVE R13 R6
  GETIMPORT R12 K13 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-21]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K23 [{"LayoutOrder", "OnRightClick", "Size"}]
  GETTABLEKS R10 R1 K20 ["LayoutOrder"]
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  GETTABLEKS R10 R0 K24 ["rightClick"]
  SETTABLEKS R10 R9 K21 ["OnRightClick"]
  GETTABLEKS R10 R1 K22 ["Size"]
  SETTABLEKS R10 R9 K22 ["Size"]
  NEWTABLE R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K19 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K33 [{"AbsoluteMax", "BackgroundTransparency", "CellPadding", "CellSize", "BufferedRows", "GetItemKey", "Items", "Loading", "Padding", "RenderItem", "Size", "ZIndex"}]
  GETTABLEKS R16 R1 K14 ["Materials"]
  LENGTH R15 R16
  GETTABLEKS R16 R1 K6 ["GeneratingImages"]
  ADD R14 R15 R16
  SETTABLEKS R14 R13 K25 ["AbsoluteMax"]
  LOADN R14 1
  SETTABLEKS R14 R13 K26 ["BackgroundTransparency"]
  SETTABLEKS R3 R13 K3 ["CellPadding"]
  SETTABLEKS R4 R13 K4 ["CellSize"]
  LOADN R14 2
  SETTABLEKS R14 R13 K27 ["BufferedRows"]
  GETTABLEKS R14 R0 K34 ["getItemKey"]
  SETTABLEKS R14 R13 K28 ["GetItemKey"]
  SETTABLEKS R6 R13 K29 ["Items"]
  LOADB R14 0
  SETTABLEKS R14 R13 K30 ["Loading"]
  SETTABLEKS R5 R13 K5 ["Padding"]
  GETTABLEKS R14 R0 K35 ["renderItem"]
  SETTABLEKS R14 R13 K31 ["RenderItem"]
  GETIMPORT R14 K38 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K32 ["ZIndex"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R8 R0 K5 ["Packages"]
  GETTABLEKS R7 R8 K8 ["_Index"]
  GETTABLEKS R6 R7 K9 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K9 ["DeveloperFramework"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["withContext"]
  GETTABLEKS R6 R4 K13 ["Localization"]
  GETTABLEKS R8 R1 K14 ["Style"]
  GETTABLEKS R7 R8 K15 ["Stylizer"]
  GETTABLEKS R8 R1 K16 ["UI"]
  GETTABLEKS R9 R8 K17 ["InfiniteScrollingGrid"]
  GETTABLEKS R10 R8 K18 ["Pane"]
  GETTABLEKS R11 R8 K19 ["Shimmer"]
  GETTABLEKS R12 R8 K20 ["showContextMenu"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K21 ["Src"]
  GETTABLEKS R14 R15 K10 ["Types"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["Components"]
  GETTABLEKS R15 R16 K23 ["TextureItem"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K24 ["Flags"]
  GETTABLEKS R16 R17 K25 ["getFFlagMaterialGeneratorNewUI"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K21 ["Src"]
  GETTABLEKS R18 R19 K24 ["Flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagMaterialGeneratorSupportVariations2"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K27 ["PureComponent"]
  LOADK R19 K28 ["TextureBrowser"]
  NAMECALL R17 R17 K29 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K30 [PROTO_11]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R12
  SETTABLEKS R18 R17 K31 ["init"]
  DUPCLOSURE R18 K32 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R18 R17 K33 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K35 [{"Localization", "Plugin", "Stylizer"}]
  SETTABLEKS R6 R19 K13 ["Localization"]
  GETTABLEKS R20 R4 K34 ["Plugin"]
  SETTABLEKS R20 R19 K34 ["Plugin"]
  SETTABLEKS R7 R19 K15 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 -1
  RETURN R18 -1
