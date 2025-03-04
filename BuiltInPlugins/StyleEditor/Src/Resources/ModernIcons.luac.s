PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  LOADK R2 K0 ["rbxasset://studio_svg_textures/Lua/%*/%*/%*/%*.png"]
  GETUPVAL R4 1
  MOVE R5 R0
  GETUPVAL R6 2
  GETUPVAL R7 3
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 5 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 1
  LOADK R2 K0 ["rbxasset://studio_svg_textures/Shared/%*/%*/%*/%*.png"]
  GETUPVAL R4 1
  MOVE R5 R0
  GETUPVAL R6 2
  GETUPVAL R7 3
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 5 1
  MOVE R1 R2
  RETURN R1 1

PROTO_3:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

PROTO_4:
  LOADK R1 K0 ["rbxasset://textures/StyleEditor/%*.png"]
  GETUPVAL R3 0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 1
  MOVE R0 R1
  RETURN R0 1

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["getStudioTheme"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R2
  DUPCLOSURE R4 K10 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R5 K11 [PROTO_5]
  DUPTABLE R6 K35 [{"Standard", "Large", "Selectors", "close", "colors", "copy", "delete", "dimensions", "duplicate", "edit", "folder", "fonts", "gridpattern", "palette", "more", "new", "open", "paste", "remove", "sizes", "set", "typography", "onboarding"}]
  DUPTABLE R7 K39 [{"DesignSheet", "TokenSheet", "ThemeSheet"}]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K41 ["StyleSheetDesign"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K36 ["DesignSheet"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K42 ["StyleSheetToken"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K37 ["TokenSheet"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K43 ["StyleSheetTheme"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K38 ["ThemeSheet"]
  SETTABLEKS R7 R6 K12 ["Standard"]
  DUPTABLE R7 K44 [{"StyleEditor"}]
  LOADK R9 K45 ["WidgetIcons"]
  LOADK R10 K13 ["Large"]
  LOADK R11 K40 ["StyleEditor"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K40 ["StyleEditor"]
  SETTABLEKS R7 R6 K13 ["Large"]
  DUPTABLE R7 K54 [{"Class", "Child", "Descendant", "Enumerator", "GuiState", "Name", "PseudoInstance", "Tag"}]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K55 ["UI"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K46 ["Class"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K56 ["StyleSheetChild"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K47 ["Child"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K57 ["StyleSheetDescendant"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K48 ["Descendant"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K58 ["StyleSheetEnumerator"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K49 ["Enumerator"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K59 ["StyleSheetGuiState"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K50 ["GuiState"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K60 ["StyleSheetName"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K51 ["Name"]
  LOADK R9 K40 ["StyleEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K61 ["StyleSheetPseudoInstance"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K52 ["PseudoInstance"]
  LOADK R9 K62 ["TagEditor"]
  LOADK R10 K12 ["Standard"]
  LOADK R11 K53 ["Tag"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R8 R7 K53 ["Tag"]
  SETTABLEKS R7 R6 K14 ["Selectors"]
  LOADK R8 K63 ["Navigation"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K64 ["CloseWidget"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K15 ["close"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K13 ["Large"]
  LOADK R10 K65 ["Color"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K16 ["colors"]
  LOADK R8 K66 ["Clipboard"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K67 ["Copy"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K17 ["copy"]
  LOADK R8 K62 ["TagEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K68 ["Tag_Delete"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K18 ["delete"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K69 ["Size"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K19 ["dimensions"]
  LOADK R8 K66 ["Clipboard"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K70 ["Duplicate"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K20 ["duplicate"]
  LOADK R8 K62 ["TagEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K71 ["Tag_Edit"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K21 ["edit"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K72 ["Folder"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K22 ["folder"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K73 ["Typography"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K23 ["fonts"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K74 ["GridPattern"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K24 ["gridpattern"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K13 ["Large"]
  LOADK R10 K65 ["Color"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K25 ["palette"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K75 ["More"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K26 ["more"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K76 ["InsertS"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K27 ["new"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K77 ["QuickOpen"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K28 ["open"]
  LOADK R8 K66 ["Clipboard"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K78 ["Paste"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K29 ["paste"]
  LOADK R8 K62 ["TagEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K79 ["Tag_Remove"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K30 ["remove"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K69 ["Size"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K31 ["sizes"]
  LOADK R8 K62 ["TagEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K80 ["Tag_Add"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K32 ["set"]
  LOADK R8 K40 ["StyleEditor"]
  LOADK R9 K12 ["Standard"]
  LOADK R10 K73 ["Typography"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R7 R6 K33 ["typography"]
  LOADK R8 K34 ["onboarding"]
  NEWCLOSURE R7 P5
  CAPTURE VAL R8
  SETTABLEKS R7 R6 K34 ["onboarding"]
  RETURN R6 1
