MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["wrapStrictTable"]
  CALL R1 1 1
  NEWTABLE R2 32 0
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 0
  LOADN R5 162
  LOADN R6 255
  CALL R3 3 1
  SETTABLEKS R3 R2 K11 ["BLUE_PRIMARY"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 153
  LOADN R5 218
  LOADN R6 255
  CALL R3 3 1
  SETTABLEKS R3 R2 K12 ["BLUE_DISABLED"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 25
  LOADN R5 25
  LOADN R6 25
  CALL R3 3 1
  SETTABLEKS R3 R2 K13 ["GRAY_1"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 117
  LOADN R5 117
  LOADN R6 117
  CALL R3 3 1
  SETTABLEKS R3 R2 K14 ["GRAY_2"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 184
  LOADN R5 184
  LOADN R6 184
  CALL R3 3 1
  SETTABLEKS R3 R2 K15 ["GRAY_3"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 242
  LOADN R5 242
  LOADN R6 242
  CALL R3 3 1
  SETTABLEKS R3 R2 K16 ["GRAY_5"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 245
  LOADN R5 245
  LOADN R6 245
  CALL R3 3 1
  SETTABLEKS R3 R2 K17 ["GRAY_6"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 255
  LOADN R5 255
  LOADN R6 255
  CALL R3 3 1
  SETTABLEKS R3 R2 K18 ["WHITE"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R3 3 1
  SETTABLEKS R3 R2 K19 ["BLACK"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 242
  LOADN R5 242
  LOADN R6 242
  CALL R3 3 1
  SETTABLEKS R3 R2 K20 ["HEADER_BACKGROUND_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 184
  LOADN R5 184
  LOADN R6 184
  CALL R3 3 1
  SETTABLEKS R3 R2 K21 ["HEADER_BORDER_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 227
  LOADN R5 227
  LOADN R6 227
  CALL R3 3 1
  SETTABLEKS R3 R2 K22 ["FOOTER_BACKGROUND_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 184
  LOADN R5 184
  LOADN R6 184
  CALL R3 3 1
  SETTABLEKS R3 R2 K23 ["FOOTER_BORDER_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 65
  LOADN R5 105
  LOADN R6 225
  CALL R3 3 1
  SETTABLEKS R3 R2 K24 ["LIGHT_ASSETNAME_TEXT_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 34
  LOADN R5 34
  LOADN R6 34
  CALL R3 3 1
  SETTABLEKS R3 R2 K25 ["DARK_BORDER_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 41
  LOADN R5 41
  LOADN R6 41
  CALL R3 3 1
  SETTABLEKS R3 R2 K26 ["DARK_SCROLL_BAR_BACKGROUND_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 53
  LOADN R5 53
  LOADN R6 53
  CALL R3 3 1
  SETTABLEKS R3 R2 K27 ["DARK_BACKGROUND_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 46
  LOADN R5 46
  LOADN R6 46
  CALL R3 3 1
  SETTABLEKS R3 R2 K28 ["DARK_MAIN_SECTION_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 56
  LOADN R5 56
  LOADN R6 56
  CALL R3 3 1
  SETTABLEKS R3 R2 K29 ["DARK_SCROLL_BAR_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 85
  LOADN R5 85
  LOADN R6 85
  CALL R3 3 1
  SETTABLEKS R3 R2 K30 ["DARK_DISABLED_TEXT_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 102
  LOADN R5 102
  LOADN R6 102
  CALL R3 3 1
  SETTABLEKS R3 R2 K31 ["DARK_DIMMER_TEXT_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 170
  LOADN R5 170
  LOADN R6 170
  CALL R3 3 1
  SETTABLEKS R3 R2 K32 ["DARK_TITLE_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 204
  LOADN R5 204
  LOADN R6 204
  CALL R3 3 1
  SETTABLEKS R3 R2 K33 ["DARK_MAIN_TEXT_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 37
  LOADN R5 37
  LOADN R6 37
  CALL R3 3 1
  SETTABLEKS R3 R2 K34 ["DARK_RIBBON_BAR_ICON_HOVER_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 11
  LOADN R5 90
  LOADN R6 175
  CALL R3 3 1
  SETTABLEKS R3 R2 K35 ["DARK_WIDGET_SELECTED_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 66
  LOADN R5 66
  LOADN R6 66
  CALL R3 3 1
  SETTABLEKS R3 R2 K36 ["DARK_WIDGET_HOVER_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 58
  LOADN R5 58
  LOADN R6 58
  CALL R3 3 1
  SETTABLEKS R3 R2 K37 ["DARK_GREY_BUTTON_DEFAULT_COLOR"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 82
  LOADN R5 168
  LOADN R6 70
  CALL R3 3 1
  SETTABLEKS R3 R2 K38 ["VOTING_GREEN"]
  GETIMPORT R3 K10 [Color3.fromRGB]
  LOADN R4 206
  LOADN R5 100
  LOADN R6 91
  CALL R3 3 1
  SETTABLEKS R3 R2 K39 ["VOTING_RED"]
  MOVE R3 R1
  MOVE R4 R2
  LOADK R5 K40 ["Colors"]
  CALL R3 2 -1
  RETURN R3 -1
