PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["openDevForum"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["AVATAR_IMPORTER_DEVHUB"]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  LOADN R1 0
  LOADNIL R2
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+82]
  LOADN R1 28
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K1 ["TextButton"]
  NEWTABLE R5 16 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["WARNING_COLOR"]
  SETTABLEKS R6 R5 K3 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K4 ["BorderSizePixel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["FONT"]
  SETTABLEKS R6 R5 K6 ["Font"]
  LOADK R6 K7 ["DeprecationBanner"]
  SETTABLEKS R6 R5 K8 ["Name"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K12 ["Position"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 28
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  LOADK R7 K14 ["%* %*"]
  GETUPVAL R9 3
  CALL R9 0 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["CLICK_HERE"]
  NAMECALL R7 R7 K16 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K17 ["Text"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["FONT_SIZE_LARGE"]
  SETTABLEKS R6 R5 K19 ["TextSize"]
  GETIMPORT R6 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R6 R5 K21 ["TextXAlignment"]
  GETIMPORT R6 K25 [Enum.TextYAlignment.Center]
  SETTABLEKS R6 R5 K24 ["TextYAlignment"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K26 ["WARNING_TEXT_COLOR"]
  SETTABLEKS R6 R5 K27 ["TextColor3"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K28 ["Event"]
  GETTABLEKS R6 R7 K29 ["Activated"]
  GETTABLEKS R7 R0 K30 ["openDevForum"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  MOVE R2 R3
  JUMP [+67]
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+64]
  LOADN R1 28
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K31 ["TextLabel"]
  DUPTABLE R5 K32 [{"BackgroundColor3", "BorderSizePixel", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["WARNING_COLOR"]
  SETTABLEKS R6 R5 K3 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K4 ["BorderSizePixel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["FONT"]
  SETTABLEKS R6 R5 K6 ["Font"]
  LOADK R6 K7 ["DeprecationBanner"]
  SETTABLEKS R6 R5 K8 ["Name"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K12 ["Position"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 28
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K17 ["Text"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["FONT_SIZE_LARGE"]
  SETTABLEKS R6 R5 K19 ["TextSize"]
  GETIMPORT R6 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R6 R5 K21 ["TextXAlignment"]
  GETIMPORT R6 K25 [Enum.TextYAlignment.Center]
  SETTABLEKS R6 R5 K24 ["TextYAlignment"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K26 ["WARNING_TEXT_COLOR"]
  SETTABLEKS R6 R5 K27 ["TextColor3"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K33 ["Frame"]
  DUPTABLE R5 K34 [{"Name", "Size", "BackgroundColor3"}]
  LOADK R6 K35 ["AvatarPrompt"]
  SETTABLEKS R6 R5 K8 ["Name"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K36 ["Theme"]
  GETIMPORT R8 K39 [Enum.StudioStyleGuideColor.MainBackground]
  GETIMPORT R9 K42 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R6 R6 K43 ["GetColor"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["BackgroundColor3"]
  DUPTABLE R6 K45 [{"content"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K33 ["Frame"]
  DUPTABLE R9 K47 [{"BackgroundTransparency", "Name", "Position", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K46 ["BackgroundTransparency"]
  LOADK R10 K48 ["Content"]
  SETTABLEKS R10 R9 K8 ["Name"]
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Position"]
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K13 ["Size"]
  DUPTABLE R10 K53 [{"deprecationBanner", "topDescription", "buttons", "bottomDescription"}]
  SETTABLEKS R2 R10 K49 ["deprecationBanner"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K31 ["TextLabel"]
  DUPTABLE R13 K54 [{"BackgroundTransparency", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K46 ["BackgroundTransparency"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K5 ["FONT"]
  SETTABLEKS R14 R13 K6 ["Font"]
  LOADK R14 K55 ["TopDescription"]
  SETTABLEKS R14 R13 K8 ["Name"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R19 20
  ADD R18 R19 R1
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Position"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 18
  CALL R14 4 1
  SETTABLEKS R14 R13 K13 ["Size"]
  LOADK R14 K56 ["Choose the Avatar type you are going to import:"]
  SETTABLEKS R14 R13 K17 ["Text"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K18 ["FONT_SIZE_LARGE"]
  SETTABLEKS R14 R13 K19 ["TextSize"]
  GETIMPORT R14 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K21 ["TextXAlignment"]
  GETIMPORT R14 K58 [Enum.TextYAlignment.Top]
  SETTABLEKS R14 R13 K24 ["TextYAlignment"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K36 ["Theme"]
  GETIMPORT R16 K60 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R17 K42 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R14 R14 K43 ["GetColor"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K27 ["TextColor3"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K50 ["topDescription"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K33 ["Frame"]
  DUPTABLE R13 K47 [{"BackgroundTransparency", "Name", "Position", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K46 ["BackgroundTransparency"]
  LOADK R14 K61 ["Buttons"]
  SETTABLEKS R14 R13 K8 ["Name"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K62 ["BUTTON_SIDE_PADDING"]
  LOADN R17 0
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K63 ["BUTTON_TOP_PADDING"]
  ADD R18 R19 R1
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Position"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K62 ["BUTTON_SIDE_PADDING"]
  MINUS R17 R18
  MULK R16 R17 K64 [2]
  LOADN R17 0
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K65 ["BUTTON_HEIGHT"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K13 ["Size"]
  DUPTABLE R14 K71 [{"buttonsListLayout", "rthroButton", "rthroNarrowButton", "r15Button", "customButton"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  LOADK R16 K72 ["UIListLayout"]
  DUPTABLE R17 K76 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K78 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K73 ["FillDirection"]
  GETIMPORT R18 K80 [UDim.new]
  LOADN R19 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K81 ["BUTTON_CENTER_PADDING"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K74 ["Padding"]
  GETIMPORT R18 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K75 ["SortOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K66 ["buttonsListLayout"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K89 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K90 ["Rthro"]
  SETTABLEKS R18 R17 K84 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K91 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K92 ["RTHRO"]
  SETTABLEKS R18 R17 K85 ["avatarType"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K92 ["RTHRO"]
  SETTABLEKS R18 R17 K86 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K93 ["RTHRO_INFO"]
  SETTABLEKS R18 R17 K87 ["contextInfo"]
  LOADN R18 0
  SETTABLEKS R18 R17 K88 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K67 ["rthroButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K89 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K94 ["Rthro Narrow"]
  SETTABLEKS R18 R17 K84 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K91 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K95 ["RTHRO_SLENDER"]
  SETTABLEKS R18 R17 K85 ["avatarType"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K96 ["RTHRO_NARROW"]
  SETTABLEKS R18 R17 K86 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K97 ["RTHRO_SLENDER_INFO"]
  SETTABLEKS R18 R17 K87 ["contextInfo"]
  LOADN R18 1
  SETTABLEKS R18 R17 K88 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K68 ["rthroNarrowButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K89 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K98 ["R15"]
  SETTABLEKS R18 R17 K84 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K91 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K98 ["R15"]
  SETTABLEKS R18 R17 K85 ["avatarType"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K98 ["R15"]
  SETTABLEKS R18 R17 K86 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K99 ["R15_INFO"]
  SETTABLEKS R18 R17 K87 ["contextInfo"]
  LOADN R18 2
  SETTABLEKS R18 R17 K88 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K69 ["r15Button"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K89 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K100 ["Custom"]
  SETTABLEKS R18 R17 K84 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K91 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K101 ["CUSTOM"]
  SETTABLEKS R18 R17 K85 ["avatarType"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K101 ["CUSTOM"]
  SETTABLEKS R18 R17 K86 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K102 ["CUSTOM_INFO"]
  SETTABLEKS R18 R17 K87 ["contextInfo"]
  LOADN R18 3
  SETTABLEKS R18 R17 K88 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K70 ["customButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K51 ["buttons"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K33 ["Frame"]
  DUPTABLE R13 K103 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K46 ["BackgroundTransparency"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R19 51
  ADD R18 R19 R1
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Position"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R20 51
  ADD R19 R20 R1
  MINUS R18 R19
  CALL R14 4 1
  SETTABLEKS R14 R13 K13 ["Size"]
  DUPTABLE R14 K107 [{"bottomDescriptionListLayout", "requirementsText", "infoLink"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  LOADK R16 K72 ["UIListLayout"]
  DUPTABLE R17 K109 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R18 K111 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K73 ["FillDirection"]
  GETIMPORT R18 K112 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R18 R17 K108 ["HorizontalAlignment"]
  GETIMPORT R18 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K75 ["SortOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K104 ["bottomDescriptionListLayout"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  LOADK R16 K31 ["TextLabel"]
  DUPTABLE R17 K113 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K46 ["BackgroundTransparency"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K5 ["FONT"]
  SETTABLEKS R18 R17 K6 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K82 ["LayoutOrder"]
  GETIMPORT R18 K11 [UDim2.new]
  LOADN R19 0
  GETUPVAL R20 8
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K114 ["REQUIREMENTS_DESCRIPTION"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K115 ["FONT_SIZE_SMALL"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K5 ["FONT"]
  CALL R20 3 1
  LOADN R21 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K115 ["FONT_SIZE_SMALL"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K114 ["REQUIREMENTS_DESCRIPTION"]
  SETTABLEKS R18 R17 K17 ["Text"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K115 ["FONT_SIZE_SMALL"]
  SETTABLEKS R18 R17 K19 ["TextSize"]
  GETIMPORT R18 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K21 ["TextXAlignment"]
  GETIMPORT R18 K25 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K24 ["TextYAlignment"]
  GETUPVAL R18 9
  DUPTABLE R19 K118 [{"Light", "Dark"}]
  GETIMPORT R20 K121 [Color3.fromRGB]
  LOADN R21 98
  LOADN R22 98
  LOADN R23 98
  CALL R20 3 1
  SETTABLEKS R20 R19 K116 ["Light"]
  GETIMPORT R20 K121 [Color3.fromRGB]
  LOADN R21 204
  LOADN R22 204
  LOADN R23 204
  CALL R20 3 1
  SETTABLEKS R20 R19 K117 ["Dark"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K27 ["TextColor3"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K105 ["requirementsText"]
  LOADB R15 0
  SETTABLEKS R15 R14 K106 ["infoLink"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K52 ["bottomDescription"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K44 ["content"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GuiService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["HttpRbxApiService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K12 ["src"]
  GETTABLEKS R5 R6 K13 ["Assets"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K12 ["src"]
  GETTABLEKS R7 R8 K14 ["components"]
  GETTABLEKS R6 R7 K15 ["AvatarButton"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K12 ["src"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K12 ["src"]
  GETTABLEKS R9 R10 K17 ["utils"]
  GETTABLEKS R8 R9 K18 ["themeConfig"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K12 ["src"]
  GETTABLEKS R10 R11 K17 ["utils"]
  GETTABLEKS R9 R10 K19 ["getTextWidth"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R0 K12 ["src"]
  GETTABLEKS R11 R12 K20 ["flags"]
  GETTABLEKS R10 R11 K21 ["getFFlagShowAvatarImportDeprecation"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R0 K12 ["src"]
  GETTABLEKS R12 R13 K20 ["flags"]
  GETTABLEKS R11 R12 K22 ["getFFlagShowAvatarImportDeprecationWithRedirect"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R0 K12 ["src"]
  GETTABLEKS R13 R14 K20 ["flags"]
  GETTABLEKS R12 R13 K23 ["getFStringAvatarImportDeprecationMessage"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R0 K12 ["src"]
  GETTABLEKS R14 R15 K20 ["flags"]
  GETTABLEKS R13 R14 K24 ["getFStringAvatarImportDevForumLink"]
  CALL R12 1 1
  GETIMPORT R14 K26 [settings]
  CALL R14 0 1
  GETTABLEKS R13 R14 K27 ["Studio"]
  GETTABLEKS R14 R3 K28 ["Component"]
  LOADK R16 K29 ["AvatarPrompt"]
  NAMECALL R14 R14 K30 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K31 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R15 R14 K32 ["init"]
  DUPCLOSURE R15 K33 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K34 ["render"]
  RETURN R14 1
