PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["constructCreatorDashboardAssetConfigUrl"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["assetId"]
  CALL R0 1 1
  JUMPIFNOT R0 [+7]
  JUMPIFEQKS R0 K3 [""] [+6]
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K4 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["frameRef"]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+6]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K2 ["openCreatorDashboardConfigureLink"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isPriceValid"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["setFieldError"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["FIELD_NAMES"]
  GETTABLEKS R3 R4 K4 ["Price"]
  NOT R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["isPriceValid"]
  GETTABLEKS R4 R1 K1 ["isPriceValid"]
  JUMPIFEQ R3 R4 [+12]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["setFieldError"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["FIELD_NAMES"]
  GETTABLEKS R5 R6 K4 ["Price"]
  NOT R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["layoutOrder"]
  GETTABLEKS R4 R2 K3 ["size"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 8 0
  SETTABLEKS R4 R7 K5 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K7 ["BorderSizePixel"]
  SETTABLEKS R3 R7 K8 ["LayoutOrder"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["Ref"]
  GETTABLEKS R9 R0 K10 ["frameRef"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K13 [{"Padding", "Body"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K14 ["UIPadding"]
  DUPTABLE R11 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K22 [UDim.new]
  LOADN R13 0
  LOADN R14 30
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["PaddingTop"]
  GETIMPORT R12 K22 [UDim.new]
  LOADN R13 0
  LOADN R14 30
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["PaddingBottom"]
  GETIMPORT R12 K22 [UDim.new]
  LOADN R13 0
  GETUPVAL R14 2
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["PaddingLeft"]
  GETIMPORT R12 K22 [UDim.new]
  LOADN R13 0
  GETUPVAL R14 2
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["PaddingRight"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["Padding"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K32 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps"}]
  GETTABLEKS R12 R0 K33 ["openCreatorDashboardConfigureLink"]
  SETTABLEKS R12 R11 K23 ["OnLinkClicked"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K34 ["Localization"]
  LOADK R14 K35 ["General"]
  LOADK R15 K36 ["CreatorDashboardLinkMessage"]
  DUPTABLE R16 K38 [{"creatorDashboardLink"}]
  LOADK R17 K39 ["{creatorDashboardLink}"]
  SETTABLEKS R17 R16 K37 ["creatorDashboardLink"]
  NAMECALL R12 R12 K40 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["Text"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K34 ["Localization"]
  LOADK R14 K35 ["General"]
  LOADK R15 K41 ["CreatorDashboard"]
  DUPTABLE R16 K38 [{"creatorDashboardLink"}]
  LOADK R17 K39 ["{creatorDashboardLink}"]
  SETTABLEKS R17 R16 K37 ["creatorDashboardLink"]
  NAMECALL R12 R12 K40 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["LinkText"]
  LOADK R12 K39 ["{creatorDashboardLink}"]
  SETTABLEKS R12 R11 K26 ["LinkPlaceholder"]
  GETIMPORT R12 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K27 ["AutomaticSize"]
  GETIMPORT R12 K46 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K28 ["TextXAlignment"]
  GETIMPORT R12 K47 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K29 ["HorizontalAlignment"]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K30 ["MaxWidth"]
  DUPTABLE R12 K51 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K6 ["BackgroundTransparency"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K52 ["FONT"]
  SETTABLEKS R13 R12 K48 ["Font"]
  GETTABLEKS R13 R1 K53 ["TextColor"]
  SETTABLEKS R13 R12 K49 ["TextColor3"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K54 ["FONT_SIZE_TITLE"]
  SETTABLEKS R13 R12 K50 ["TextSize"]
  GETIMPORT R13 K46 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K28 ["TextXAlignment"]
  SETTABLEKS R12 R11 K31 ["TextProps"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Body"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["frameRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+26]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["frameRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETIMPORT R2 K4 [UDim2.new]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["X"]
  GETTABLEKS R3 R4 K6 ["Scale"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["X"]
  GETTABLEKS R4 R5 K7 ["Offset"]
  LOADN R5 0
  GETTABLEKS R8 R0 K9 ["AbsoluteContentSize"]
  GETTABLEKS R7 R8 K10 ["y"]
  ADDK R6 R7 K8 [60]
  CALL R2 4 1
  SETTABLEKS R2 R1 K11 ["CanvasSize"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["isCatalogAsset"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["assetTypeEnum"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K3 ["renderCreatorDashboardLinkContent"]
  CALL R1 1 -1
  RETURN R1 -1
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K4 ["Stylizer"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K5 ["size"]
  GETTABLEKS R4 R2 K6 ["newAssetStatus"]
  GETTABLEKS R5 R2 K7 ["currentAssetStatus"]
  GETTABLEKS R6 R2 K8 ["onStatusChange"]
  GETTABLEKS R7 R2 K2 ["assetTypeEnum"]
  GETTABLEKS R8 R2 K9 ["allowedAssetTypesForRelease"]
  GETTABLEKS R9 R2 K10 ["price"]
  GETTABLEKS R10 R2 K11 ["minPrice"]
  GETTABLEKS R11 R2 K12 ["maxPrice"]
  GETTABLEKS R12 R2 K13 ["feeRate"]
  GETTABLEKS R13 R2 K14 ["onPriceChange"]
  GETTABLEKS R14 R2 K15 ["isPriceValid"]
  GETTABLEKS R15 R2 K16 ["layoutOrder"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K17 ["isReadyForSale"]
  MOVE R17 R4
  CALL R16 1 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["isBuyableMarketplaceAsset"]
  MOVE R18 R7
  CALL R17 1 1
  JUMPIFNOT R17 [+1]
  LOADB R16 1
  GETTABLEKS R18 R7 K19 ["Name"]
  GETTABLE R17 R8 R18
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K0 ["isCatalogAsset"]
  GETTABLEKS R19 R2 K2 ["assetTypeEnum"]
  CALL R18 1 1
  GETUPVAL R19 0
  JUMPIFNOT R19 [+1]
  LOADB R18 0
  LOADNIL R19
  LOADNIL R20
  JUMPIFNOT R18 [+28]
  GETIMPORT R21 K22 [string.format]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K23 ["BaseUrl"]
  LOADK R24 K24 ["catalog/configure?id=%d#!/sales"]
  CONCAT R22 R23 R24
  GETTABLEKS R23 R2 K25 ["assetId"]
  CALL R21 2 1
  MOVE R19 R21
  GETUPVAL R21 3
  GETTABLEKS R22 R2 K26 ["Localization"]
  LOADK R24 K27 ["General"]
  LOADK R25 K28 ["PremiumBenefits"]
  NAMECALL R22 R22 K29 ["getText"]
  CALL R22 3 1
  LOADNIL R23
  LOADNIL R24
  GETIMPORT R25 K32 [Vector2.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 -1
  CALL R21 -1 1
  MOVE R20 R21
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K31 ["new"]
  CALL R21 0 1
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K33 ["createElement"]
  LOADK R23 K34 ["ScrollingFrame"]
  NEWTABLE R24 8 0
  SETTABLEKS R3 R24 K35 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K36 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K37 ["BorderSizePixel"]
  SETTABLEKS R15 R24 K38 ["LayoutOrder"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K39 ["Ref"]
  GETTABLEKS R26 R0 K40 ["frameRef"]
  SETTABLE R26 R24 R25
  DUPTABLE R25 K48 [{"Padding", "UIListLayout", "SalesStatus", "Separator1", "PriceComponent", "Separator2", "PremiumBenefitsLink"}]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  LOADK R27 K49 ["UIPadding"]
  DUPTABLE R28 K54 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R29 K56 [UDim.new]
  LOADN R30 0
  LOADN R31 30
  CALL R29 2 1
  SETTABLEKS R29 R28 K50 ["PaddingTop"]
  GETIMPORT R29 K56 [UDim.new]
  LOADN R30 0
  LOADN R31 30
  CALL R29 2 1
  SETTABLEKS R29 R28 K51 ["PaddingBottom"]
  GETIMPORT R29 K56 [UDim.new]
  LOADN R30 0
  LOADN R31 30
  CALL R29 2 1
  SETTABLEKS R29 R28 K52 ["PaddingLeft"]
  GETIMPORT R29 K56 [UDim.new]
  LOADN R30 0
  LOADN R31 30
  CALL R29 2 1
  SETTABLEKS R29 R28 K53 ["PaddingRight"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K41 ["Padding"]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  LOADK R27 K42 ["UIListLayout"]
  NEWTABLE R28 8 0
  GETIMPORT R29 K60 [Enum.FillDirection.Vertical]
  SETTABLEKS R29 R28 K58 ["FillDirection"]
  GETIMPORT R29 K63 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R29 R28 K61 ["HorizontalAlignment"]
  GETIMPORT R29 K66 [Enum.VerticalAlignment.Top]
  SETTABLEKS R29 R28 K64 ["VerticalAlignment"]
  GETIMPORT R29 K68 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K67 ["SortOrder"]
  GETIMPORT R29 K56 [UDim.new]
  LOADN R30 0
  LOADN R31 32
  CALL R29 2 1
  SETTABLEKS R29 R28 K41 ["Padding"]
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K69 ["Change"]
  GETTABLEKS R29 R30 K70 ["AbsoluteContentSize"]
  NEWCLOSURE R30 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLE R30 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K42 ["UIListLayout"]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  GETUPVAL R27 6
  DUPTABLE R28 K77 [{"Title", "AssetTypeEnum", "NewAssetStatus", "CurrentAssetStatus", "OnStatusChange", "CanChangeSalesStatus", "LayoutOrder"}]
  GETTABLEKS R29 R2 K26 ["Localization"]
  LOADK R31 K27 ["General"]
  LOADK R32 K78 ["SalesSale"]
  NAMECALL R29 R29 K29 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K71 ["Title"]
  SETTABLEKS R7 R28 K72 ["AssetTypeEnum"]
  SETTABLEKS R4 R28 K73 ["NewAssetStatus"]
  SETTABLEKS R5 R28 K74 ["CurrentAssetStatus"]
  SETTABLEKS R6 R28 K75 ["OnStatusChange"]
  SETTABLEKS R16 R28 K76 ["CanChangeSalesStatus"]
  NAMECALL R29 R21 K79 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K38 ["LayoutOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K43 ["SalesStatus"]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  GETUPVAL R27 7
  DUPTABLE R28 K80 [{"LayoutOrder"}]
  NAMECALL R29 R21 K79 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K38 ["LayoutOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K44 ["Separator1"]
  MOVE R26 R17
  JUMPIFNOT R26 [+29]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  GETUPVAL R27 8
  DUPTABLE R28 K88 [{"AssetTypeEnum", "AllowedAssetTypesForRelease", "NewAssetStatus", "Price", "MinPrice", "MaxPrice", "FeeRate", "IsPriceValid", "OnPriceChange", "LayoutOrder"}]
  SETTABLEKS R7 R28 K72 ["AssetTypeEnum"]
  SETTABLEKS R8 R28 K81 ["AllowedAssetTypesForRelease"]
  SETTABLEKS R4 R28 K73 ["NewAssetStatus"]
  SETTABLEKS R9 R28 K82 ["Price"]
  SETTABLEKS R10 R28 K83 ["MinPrice"]
  SETTABLEKS R11 R28 K84 ["MaxPrice"]
  SETTABLEKS R12 R28 K85 ["FeeRate"]
  SETTABLEKS R14 R28 K86 ["IsPriceValid"]
  SETTABLEKS R13 R28 K87 ["OnPriceChange"]
  NAMECALL R29 R21 K79 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K38 ["LayoutOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K45 ["PriceComponent"]
  JUMPIFNOT R18 [+12]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  GETUPVAL R27 7
  DUPTABLE R28 K80 [{"LayoutOrder"}]
  NAMECALL R29 R21 K79 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K38 ["LayoutOrder"]
  CALL R26 2 1
  JUMPIF R26 [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K46 ["Separator2"]
  JUMPIFNOT R18 [+63]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K33 ["createElement"]
  LOADK R27 K89 ["TextButton"]
  NEWTABLE R28 16 0
  NAMECALL R29 R21 K79 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K38 ["LayoutOrder"]
  LOADN R29 1
  SETTABLEKS R29 R28 K36 ["BackgroundTransparency"]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K90 ["FONT"]
  SETTABLEKS R29 R28 K91 ["Font"]
  GETTABLEKS R30 R0 K1 ["props"]
  GETTABLEKS R29 R30 K26 ["Localization"]
  LOADK R31 K27 ["General"]
  LOADK R32 K28 ["PremiumBenefits"]
  NAMECALL R29 R29 K29 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K92 ["Text"]
  GETIMPORT R29 K95 [UDim2.fromOffset]
  GETTABLEKS R30 R20 K96 ["X"]
  GETTABLEKS R31 R20 K97 ["Y"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K35 ["Size"]
  GETTABLEKS R29 R1 K98 ["link"]
  SETTABLEKS R29 R28 K99 ["TextColor3"]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K100 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R29 R28 K101 ["TextSize"]
  GETIMPORT R29 K104 [Enum.TextYAlignment.Center]
  SETTABLEKS R29 R28 K102 ["TextYAlignment"]
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K105 ["Event"]
  GETTABLEKS R29 R30 K106 ["Activated"]
  NEWCLOSURE R30 P1
  CAPTURE UPVAL U10
  CAPTURE REF R19
  SETTABLE R30 R28 R29
  CALL R26 2 1
  JUMPIF R26 [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K47 ["PremiumBenefitsLink"]
  CALL R22 3 -1
  CLOSEUPVALS R19
  RETURN R22 -1

PROTO_8:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K2 [{"assetId", "assetTypeEnum"}]
  GETTABLEKS R3 R0 K0 ["assetId"]
  SETTABLEKS R3 R2 K0 ["assetId"]
  GETTABLEKS R3 R0 K1 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K1 ["assetTypeEnum"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["SIDE_TABS"]
  GETTABLEKS R4 R5 K1 ["Sales"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R3 3 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"setFieldError"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["setFieldError"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["ContentProvider"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["GuiService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K8 ["DisableSalesPageForAvatarCreations2"]
  NAMECALL R3 R3 K9 ["GetFastFlag"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETIMPORT R5 K12 [require]
  GETTABLEKS R6 R4 K13 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R7 R4 K14 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R4 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["withContext"]
  GETTABLEKS R12 R0 K18 ["Core"]
  GETTABLEKS R11 R12 K19 ["Components"]
  GETTABLEKS R10 R11 K20 ["AssetConfiguration"]
  GETIMPORT R11 K12 [require]
  GETTABLEKS R12 R10 K21 ["SalesComponent"]
  CALL R11 1 1
  GETIMPORT R12 K12 [require]
  GETTABLEKS R13 R10 K22 ["PriceComponent"]
  CALL R12 1 1
  GETIMPORT R13 K12 [require]
  GETTABLEKS R16 R0 K18 ["Core"]
  GETTABLEKS R15 R16 K23 ["Actions"]
  GETTABLEKS R14 R15 K24 ["SetFieldError"]
  CALL R13 1 1
  JUMPIFNOT R3 [+10]
  GETIMPORT R14 K12 [require]
  GETTABLEKS R17 R0 K18 ["Core"]
  GETTABLEKS R16 R17 K25 ["Util"]
  GETTABLEKS R15 R16 K26 ["Urls"]
  CALL R14 1 1
  JUMP [+1]
  LOADNIL R14
  JUMPIFNOT R3 [+5]
  GETTABLEKS R16 R7 K27 ["UI"]
  GETTABLEKS R15 R16 K28 ["ScrollingFrame"]
  JUMP [+1]
  LOADNIL R15
  GETTABLEKS R17 R7 K27 ["UI"]
  GETTABLEKS R16 R17 K29 ["Separator"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R18 R7 K27 ["UI"]
  GETTABLEKS R17 R18 K30 ["TextWithInlineLink"]
  JUMP [+1]
  LOADNIL R17
  GETTABLEKS R19 R7 K25 ["Util"]
  GETTABLEKS R18 R19 K31 ["GetTextSize"]
  GETTABLEKS R20 R0 K18 ["Core"]
  GETTABLEKS R19 R20 K25 ["Util"]
  GETIMPORT R20 K12 [require]
  GETTABLEKS R21 R19 K32 ["Constants"]
  CALL R20 1 1
  GETIMPORT R21 K12 [require]
  GETTABLEKS R22 R19 K33 ["LayoutOrderIterator"]
  CALL R21 1 1
  GETIMPORT R22 K12 [require]
  GETTABLEKS R23 R19 K34 ["AssetConfigUtil"]
  CALL R22 1 1
  GETIMPORT R23 K12 [require]
  GETTABLEKS R24 R19 K35 ["AssetConfigConstants"]
  CALL R23 1 1
  JUMPIFNOT R3 [+2]
  LOADN R24 30
  JUMP [+1]
  LOADNIL R24
  JUMPIFNOT R3 [+2]
  LOADN R25 244
  JUMP [+1]
  LOADNIL R25
  GETTABLEKS R26 R5 K36 ["PureComponent"]
  LOADK R28 K37 ["SalesPage"]
  NAMECALL R26 R26 K38 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K39 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K40 ["init"]
  DUPCLOSURE R27 K41 [PROTO_2]
  CAPTURE VAL R23
  SETTABLEKS R27 R26 K42 ["didMount"]
  DUPCLOSURE R27 K43 [PROTO_3]
  CAPTURE VAL R23
  SETTABLEKS R27 R26 K44 ["willUpdate"]
  JUMPIFNOT R3 [+9]
  DUPCLOSURE R27 K45 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R24
  CAPTURE VAL R17
  CAPTURE VAL R25
  CAPTURE VAL R20
  SETTABLEKS R27 R26 K46 ["renderCreatorDashboardLinkContent"]
  DUPCLOSURE R27 K47 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R20
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K48 ["render"]
  DUPCLOSURE R27 K49 [PROTO_8]
  DUPCLOSURE R28 K50 [PROTO_10]
  CAPTURE VAL R13
  CAPTURE VAL R23
  MOVE R29 R9
  DUPTABLE R30 K53 [{"Stylizer", "Localization"}]
  GETTABLEKS R31 R8 K51 ["Stylizer"]
  SETTABLEKS R31 R30 K51 ["Stylizer"]
  GETTABLEKS R31 R8 K52 ["Localization"]
  SETTABLEKS R31 R30 K52 ["Localization"]
  CALL R29 1 1
  MOVE R30 R26
  CALL R29 1 1
  MOVE R26 R29
  GETTABLEKS R29 R6 K54 ["connect"]
  MOVE R30 R27
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1
