PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Settings"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Network"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  GETTABLEKS R1 R2 K3 ["networkInterface"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Settings"]
  LOADK R4 K4 ["Plugin"]
  NAMECALL R2 R2 K5 ["get"]
  CALL R2 2 1
  NAMECALL R3 R2 K6 ["loadInitialSettings"]
  CALL R3 1 1
  LOADNIL R4
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  NAMECALL R5 R2 K7 ["getLayoutMode"]
  CALL R5 1 1
  MOVE R4 R5
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["setLayoutMode"]
  MOVE R6 R4
  CALL R5 1 0
  LOADNIL R5
  LOADNIL R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["getBackgroundForStudioTheme"]
  CALL R7 0 1
  LOADN R5 1
  LOADK R6 K10 [""]
  GETTABLEKS R8 R3 K11 ["categoryName"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["getTabForCategoryName"]
  MOVE R10 R8
  CALL R9 1 1
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["CREATIONS"]
  JUMPIFNOTEQ R9 R10 [+16]
  GETUPVAL R10 4
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K14 ["DEFAULT_TAB"]
  JUMP [+3]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["INVENTORY"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["DEFAULT"]
  GETTABLEKS R8 R10 K17 ["name"]
  DUPTABLE R10 K25 [{"categories", "categoryName", "creator", "searchTerm", "sortIndex", "targetPage", "selectedBackgroundIndex", "requestReason"}]
  SETTABLEKS R9 R10 K18 ["categories"]
  SETTABLEKS R8 R10 K11 ["categoryName"]
  GETTABLEKS R11 R3 K19 ["creator"]
  SETTABLEKS R11 R10 K19 ["creator"]
  SETTABLEKS R6 R10 K20 ["searchTerm"]
  SETTABLEKS R5 R10 K21 ["sortIndex"]
  LOADN R11 1
  SETTABLEKS R11 R10 K22 ["targetPage"]
  SETTABLEKS R7 R10 K23 ["selectedBackgroundIndex"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K26 ["InitLoad"]
  SETTABLEKS R11 R10 K24 ["requestReason"]
  LOADB R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K15 ["INVENTORY"]
  JUMPIFEQ R9 R12 [+8]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["CREATIONS"]
  JUMPIFEQ R9 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  JUMPIFNOT R11 [+8]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K27 ["getToolboxManageableGroups"]
  MOVE R13 R1
  MOVE R14 R2
  MOVE R15 R10
  CALL R12 3 0
  GETUPVAL R12 6
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K28 ["IXP"]
  CALL R12 1 1
  JUMPIFNOT R12 [+18]
  LOADB R12 0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K29 ["ListView"]
  JUMPIFNOTEQ R4 R13 [+13]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["getTabForCategoryName"]
  MOVE R14 R8
  CALL R13 1 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K15 ["INVENTORY"]
  JUMPIFEQ R13 R14 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  JUMPIF R12 [+8]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K30 ["updatePageInfo"]
  MOVE R14 R1
  MOVE R15 R2
  MOVE R16 R10
  CALL R13 3 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["X"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["TOOLBOX_MIN_WIDTH"]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K5 [math.max]
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["state"]
  GETTABLEKS R2 R3 K7 ["toolboxWidth"]
  JUMPIFEQ R2 R1 [+8]
  GETUPVAL R2 1
  DUPTABLE R4 K8 [{"toolboxWidth"}]
  SETTABLEKS R1 R4 K7 ["toolboxWidth"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["showSearchOptions"]
  JUMPIF R0 [+30]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["categoryName"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["getCategoryByName"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["getTabKeyForCategoryName"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["ToolboxAssetTypeToEngine"]
  GETTABLEKS R6 R2 K7 ["assetType"]
  GETTABLE R4 R5 R6
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["MarketplaceSearchFilterOpened"]
  MOVE R6 R4
  MOVE R7 R3
  CALL R5 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K9 ["Modal"]
  GETTABLEKS R2 R1 K10 ["onSearchOptionsToggled"]
  NOT R3 R0
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K11 [{"showSearchOptions"}]
  NOT R5 R0
  SETTABLEKS R5 R4 K1 ["showSearchOptions"]
  NAMECALL R2 R2 K12 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CREATIONS_KEY"]
  JUMPIFNOTEQ R2 R0 [+21]
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  MOVE R7 R6
  JUMPIFNOT R7 [+7]
  LOADB R7 1
  GETTABLEKS R8 R6 K3 ["selectable"]
  JUMPIFEQKNIL R8 [+3]
  GETTABLEKS R7 R6 K3 ["selectable"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R6 K4 ["name"]
  RETURN R8 1
  FORGLOOP R2 2 [inext] [-14]
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K4 ["name"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["CREATOR_ROBLOX"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getCategories"]
  MOVE R3 R0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["roles"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["props"]
  GETTABLEKS R5 R6 K3 ["IXP"]
  JUMP [+1]
  LOADNIL R5
  CALL R2 3 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["Dictionary"]
  GETTABLEKS R3 R4 K5 ["join"]
  DUPTABLE R4 K11 [{"categoryName", "creator", "searchTerm", "sortIndex", "groupIndex"}]
  GETUPVAL R5 4
  MOVE R6 R0
  MOVE R7 R2
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["categoryName"]
  GETUPVAL R6 5
  CALL R6 0 1
  JUMPIFNOT R6 [+9]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R0 R6 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["CREATOR_ROBLOX"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["creator"]
  LOADK R5 K14 [""]
  SETTABLEKS R5 R4 K8 ["searchTerm"]
  LOADN R5 1
  SETTABLEKS R5 R4 K9 ["sortIndex"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["groupIndex"]
  MOVE R5 R1
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K15 ["Settings"]
  LOADK R6 K16 ["Plugin"]
  NAMECALL R4 R4 K17 ["get"]
  CALL R4 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["props"]
  GETTABLEKS R6 R7 K18 ["Network"]
  GETTABLEKS R5 R6 K19 ["networkInterface"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["props"]
  GETTABLEKS R6 R7 K20 ["changeMarketplaceTab"]
  MOVE R7 R5
  MOVE R8 R0
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R3
  GETUPVAL R13 2
  CALL R13 0 1
  JUMPIFNOT R13 [+6]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K1 ["props"]
  GETTABLEKS R12 R13 K3 ["IXP"]
  JUMP [+1]
  LOADNIL R12
  CALL R6 6 0
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K21 ["getCategory"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K6 ["categoryName"]
  CALL R6 1 1
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K21 ["getCategory"]
  GETTABLEKS R8 R3 K6 ["categoryName"]
  CALL R7 1 1
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K22 ["onCategorySelected"]
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["categoryName"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["getTabKeyForCategoryName"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["changeMarketplaceTab"]
  MOVE R3 R1
  DUPTABLE R4 K4 [{"categoryName"}]
  SETTABLEKS R0 R4 K1 ["categoryName"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Settings"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Network"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  GETTABLEKS R1 R2 K3 ["networkInterface"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Settings"]
  LOADK R4 K4 ["Plugin"]
  NAMECALL R2 R2 K5 ["get"]
  CALL R2 2 1
  DUPTABLE R3 K7 [{"searchTerm"}]
  SETTABLEKS R0 R3 K6 ["searchTerm"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K8 ["updatePageInfo"]
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R2 K2 [{"toolboxWidth", "showSearchOptions"}]
  GETTABLEKS R5 R1 K4 ["initialWidth"]
  ORK R4 R5 K3 [0]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["TOOLBOX_MIN_WIDTH"]
  FASTCALL2 MATH_MAX R4 R5 [+3]
  GETIMPORT R3 K8 [math.max]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["toolboxWidth"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["showSearchOptions"]
  SETTABLEKS R2 R0 K9 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onAbsoluteSizeChange"]
  NAMECALL R2 R0 K11 ["handleInitialSettings"]
  CALL R2 1 0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K12 ["toggleSearchOptions"]
  DUPCLOSURE R2 K13 [PROTO_3]
  CAPTURE UPVAL U1
  DUPCLOSURE R3 K14 [PROTO_4]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  NEWCLOSURE R4 P4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  SETTABLEKS R4 R0 K15 ["changeMarketplaceTab"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R4 R0 K16 ["onBackToHome"]
  GETUPVAL R4 7
  JUMPIFNOT R4 [+4]
  NEWCLOSURE R4 P6
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K17 ["updatePageInfoWithSearchTerm"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["searchId"]
  GETTABLEKS R5 R3 K1 ["searchId"]
  JUMPIFEQ R4 R5 [+8]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["logSearchAnalytics"]
  GETTABLEKS R5 R3 K3 ["searchTerm"]
  CALL R4 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WHITELISTED_PLUGINS"]
  GETTABLEKS R0 R1 K1 ["name"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["changeMarketplaceTab"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["MARKETPLACE_KEY"]
  DUPTABLE R3 K5 [{"categoryName"}]
  SETTABLEKS R0 R3 K4 ["categoryName"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["openedFromPluginManagement"]
  CALL R1 0 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["changeMarketplaceTab"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["MARKETPLACE_KEY"]
  DUPTABLE R3 K4 [{"categoryName", "searchTerm"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["FREE_MODELS"]
  GETTABLEKS R4 R5 K6 ["name"]
  SETTABLEKS R4 R3 K2 ["categoryName"]
  SETTABLEKS R0 R3 K3 ["searchTerm"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["changeMarketplaceTab"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["MARKETPLACE_KEY"]
  DUPTABLE R3 K7 [{"categoryName"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["FREE_MODELS"]
  GETTABLEKS R4 R5 K6 ["name"]
  SETTABLEKS R4 R3 K2 ["categoryName"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["updatePageInfoWithSearchTerm"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K2 [Enum.AssetType]
  GETTABLE R1 R2 R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["getMarketplaceCategoryByAssetType"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["changeMarketplaceTab"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["MARKETPLACE_KEY"]
  DUPTABLE R5 K7 [{"categoryName"}]
  GETTABLEKS R6 R2 K8 ["name"]
  SETTABLEKS R6 R5 K6 ["categoryName"]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["openedExternallyByAssetType"]
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  NAMECALL R1 R0 K0 ["handleInitialSettings"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["setRoles"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["Network"]
  GETTABLEKS R2 R3 K4 ["networkInterface"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K5 ["getRobuxBalance"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["Network"]
  GETTABLEKS R2 R3 K4 ["networkInterface"]
  CALL R1 1 0
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K6 ["pluginLoaderContext"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["pluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["signals"]
  LOADK R4 K8 ["MemStorageService."]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
  CONCAT R3 R4 R5
  GETTABLE R1 R2 R3
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["_showPluginsConnection"]
  GETUPVAL R1 3
  JUMPIFNOT R1 [+28]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K6 ["pluginLoaderContext"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["pluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["signals"]
  LOADK R4 K8 ["MemStorageService."]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  CONCAT R3 R4 R5
  GETTABLE R1 R2 R3
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["_showPluginsConnection"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K6 ["pluginLoaderContext"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["pluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["signals"]
  LOADK R4 K8 ["MemStorageService."]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K13 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
  CONCAT R3 R4 R5
  GETTABLE R1 R2 R3
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["_changeMarketplaceTabConnection"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_showPluginsConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_showPluginsConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_showPluginsConnection"]
  GETTABLEKS R1 R0 K2 ["_changeMarketplaceTabConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_changeMarketplaceTabConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_changeMarketplaceTabConnection"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["toolboxWidth"]
  GETTABLEKS R4 R2 K3 ["showSearchOptions"]
  GETTABLEKS R5 R1 K4 ["backgrounds"]
  GETTABLEKS R6 R1 K5 ["creator"]
  GETTABLEKS R7 R1 K6 ["searchTerm"]
  GETTABLEKS R8 R1 K7 ["suggestions"]
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  GETTABLEKS R9 R1 K8 ["categoryName"]
  GETTABLEKS R10 R1 K9 ["audioSearchInfo"]
  GETTABLEKS R11 R1 K10 ["additionalAudioSearchInfo"]
  GETTABLEKS R12 R1 K11 ["uiSortIntent"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["getTabKeyForCategoryName"]
  MOVE R14 R9
  CALL R13 1 1
  GETTABLEKS R14 R1 K13 ["tryOpenAssetConfig"]
  GETTABLEKS R15 R1 K14 ["pluginGui"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K15 ["Size"]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K16 ["Stylizer"]
  GETTABLEKS R18 R1 K17 ["Localization"]
  GETTABLEKS R20 R1 K17 ["Localization"]
  GETTABLEKS R19 R20 K18 ["locale"]
  GETTABLEKS R20 R0 K19 ["onAbsoluteSizeChange"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K20 ["TAB_WIDGET_HEIGHT"]
  LOADB R22 0
  NEWTABLE R23 0 0
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K21 ["getEngineAssetType"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["getCategoryByName"]
  MOVE R27 R9
  CALL R26 1 1
  GETTABLEKS R25 R26 K23 ["assetType"]
  CALL R24 1 1
  GETUPVAL R26 2
  CALL R26 0 1
  JUMPIFNOT R26 [+11]
  GETUPVAL R26 3
  CALL R26 0 1
  JUMPIFEQKNIL R26 [+8]
  GETIMPORT R25 K26 [string.split]
  GETUPVAL R26 3
  CALL R26 0 1
  LOADK R27 K27 [";"]
  CALL R25 2 1
  JUMP [+2]
  NEWTABLE R25 0 0
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K28 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R13 R26 [+56]
  JUMPIFNOT R6 [+2]
  JUMPIFNOTEQKS R6 K29 [""] [+53]
  JUMPIFNOTEQKS R7 K29 [""] [+51]
  JUMPIFNOTEQKNIL R10 [+49]
  JUMPIFNOTEQKNIL R11 [+47]
  JUMPIFNOTEQKNIL R12 [+45]
  GETUPVAL R26 2
  CALL R26 0 1
  JUMPIFNOT R26 [+19]
  GETIMPORT R26 K31 [ipairs]
  MOVE R27 R25
  CALL R26 1 3
  FORGPREP_INEXT R26
  GETIMPORT R32 K34 [Enum.AssetType]
  GETTABLE R31 R32 R30
  JUMPIFNOT R31 [+7]
  FASTCALL2 TABLE_INSERT R23 R31 [+5]
  MOVE R33 R23
  MOVE R34 R31
  GETIMPORT R32 K37 [table.insert]
  CALL R32 2 0
  FORGLOOP R26 2 [inext] [-12]
  JUMP [+16]
  GETIMPORT R28 K39 [Enum.AssetType.Model]
  FASTCALL2 TABLE_INSERT R23 R28 [+4]
  MOVE R27 R23
  GETIMPORT R26 K37 [table.insert]
  CALL R26 2 0
  GETIMPORT R28 K41 [Enum.AssetType.Audio]
  FASTCALL2 TABLE_INSERT R23 R28 [+4]
  MOVE R27 R23
  GETIMPORT R26 K37 [table.insert]
  CALL R26 2 0
  GETIMPORT R26 K43 [table.find]
  MOVE R27 R23
  MOVE R28 R24
  CALL R26 2 1
  MOVE R22 R26
  LOADNIL R26
  GETUPVAL R27 4
  CALL R27 0 1
  JUMPIFNOT R27 [+56]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K44 ["getTabForCategoryName"]
  MOVE R29 R9
  CALL R28 1 1
  GETUPVAL R30 0
  GETTABLEKS R29 R30 K45 ["INVENTORY"]
  JUMPIFEQ R28 R29 [+2]
  LOADB R27 0 +1
  LOADB R27 1
  JUMPIFNOT R4 [+57]
  JUMPIFNOT R27 [+12]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K46 ["createElement"]
  GETUPVAL R29 6
  DUPTABLE R30 K48 [{"OnClose"}]
  GETTABLEKS R31 R0 K49 ["toggleSearchOptions"]
  SETTABLEKS R31 R30 K47 ["OnClose"]
  CALL R28 2 1
  MOVE R26 R28
  JUMP [+44]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K50 ["categoryIsAudio"]
  MOVE R29 R9
  CALL R28 1 1
  JUMPIFNOT R28 [+12]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K46 ["createElement"]
  GETUPVAL R29 7
  DUPTABLE R30 K48 [{"OnClose"}]
  GETTABLEKS R31 R0 K49 ["toggleSearchOptions"]
  SETTABLEKS R31 R30 K47 ["OnClose"]
  CALL R28 2 1
  MOVE R26 R28
  JUMP [+26]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K46 ["createElement"]
  GETUPVAL R29 8
  DUPTABLE R30 K48 [{"OnClose"}]
  GETTABLEKS R31 R0 K49 ["toggleSearchOptions"]
  SETTABLEKS R31 R30 K47 ["OnClose"]
  CALL R28 2 1
  MOVE R26 R28
  JUMP [+14]
  JUMPIFNOT R4 [+12]
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K46 ["createElement"]
  GETUPVAL R28 9
  DUPTABLE R29 K52 [{"onSearchOptionsToggled"}]
  GETTABLEKS R30 R0 K49 ["toggleSearchOptions"]
  SETTABLEKS R30 R29 K51 ["onSearchOptionsToggled"]
  CALL R27 2 1
  MOVE R26 R27
  JUMP [+1]
  LOADNIL R26
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K46 ["createElement"]
  LOADK R28 K53 ["Frame"]
  NEWTABLE R29 8 0
  GETIMPORT R30 K56 [UDim2.new]
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K57 ["Position"]
  SETTABLEKS R16 R29 K15 ["Size"]
  LOADN R30 0
  SETTABLEKS R30 R29 K58 ["BorderSizePixel"]
  GETTABLEKS R30 R17 K59 ["backgroundColor"]
  SETTABLEKS R30 R29 K60 ["BackgroundColor3"]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K61 ["Change"]
  GETTABLEKS R30 R31 K62 ["AbsoluteSize"]
  SETTABLE R20 R29 R30
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K63 ["Event"]
  GETTABLEKS R30 R31 K64 ["MouseEnter"]
  GETTABLEKS R31 R1 K65 ["onMouseEnter"]
  SETTABLE R31 R29 R30
  DUPTABLE R30 K72 [{"AnnouncementDialogContainer", "Tabs", "Header", "MainView", "SearchOptions", "AudioPreview"}]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K46 ["createElement"]
  GETUPVAL R32 10
  DUPTABLE R33 K74 [{"checkUserInIXP"}]
  GETUPVAL R34 11
  SETTABLEKS R34 R33 K73 ["checkUserInIXP"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["AnnouncementDialogContainer"]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K46 ["createElement"]
  GETUPVAL R32 12
  DUPTABLE R33 K78 [{"Disabled", "Size", "Tabs", "CurrentTab", "onTabSelected"}]
  GETTABLEKS R34 R1 K79 ["hasTutorialLimits"]
  SETTABLEKS R34 R33 K75 ["Disabled"]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K20 ["TAB_WIDGET_HEIGHT"]
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  GETUPVAL R35 13
  CALL R35 0 1
  JUMPIFNOT R35 [+8]
  GETUPVAL R34 14
  MOVE R35 R18
  GETTABLEKS R36 R1 K80 ["roles"]
  GETTABLEKS R37 R1 K81 ["IXP"]
  CALL R34 3 1
  JUMP [+3]
  GETUPVAL R34 14
  MOVE R35 R18
  CALL R34 1 1
  SETTABLEKS R34 R33 K67 ["Tabs"]
  SETTABLEKS R13 R33 K76 ["CurrentTab"]
  GETTABLEKS R34 R0 K82 ["changeMarketplaceTab"]
  SETTABLEKS R34 R33 K77 ["onTabSelected"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["Tabs"]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K46 ["createElement"]
  GETUPVAL R32 15
  DUPTABLE R33 K84 [{"Position", "maxWidth", "onSearchOptionsToggled", "pluginGui"}]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  MOVE R38 R21
  CALL R34 4 1
  SETTABLEKS R34 R33 K57 ["Position"]
  SETTABLEKS R3 R33 K83 ["maxWidth"]
  GETTABLEKS R34 R0 K49 ["toggleSearchOptions"]
  SETTABLEKS R34 R33 K51 ["onSearchOptionsToggled"]
  SETTABLEKS R15 R33 K14 ["pluginGui"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["Header"]
  JUMPIFNOT R22 [+51]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K46 ["createElement"]
  GETUPVAL R32 16
  DUPTABLE R33 K90 [{"AssetType", "CategoryName", "Locale", "Position", "Size", "SortName", "TryOpenAssetConfig", "EnabledAssetTypes"}]
  SETTABLEKS R24 R33 K33 ["AssetType"]
  SETTABLEKS R9 R33 K85 ["CategoryName"]
  SETTABLEKS R19 R33 K86 ["Locale"]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K92 ["HEADER_HEIGHT"]
  ADD R39 R21 R40
  ADDK R38 R39 K91 [1]
  CALL R34 4 1
  SETTABLEKS R34 R33 K57 ["Position"]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 1
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K92 ["HEADER_HEIGHT"]
  ADD R40 R41 R21
  ADDK R39 R40 K93 [2]
  MINUS R38 R39
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  GETUPVAL R35 17
  GETTABLEKS R34 R35 K94 ["getDefaultSortNameForCategory"]
  MOVE R35 R9
  CALL R34 1 1
  SETTABLEKS R34 R33 K87 ["SortName"]
  SETTABLEKS R14 R33 K88 ["TryOpenAssetConfig"]
  SETTABLEKS R23 R33 K89 ["EnabledAssetTypes"]
  CALL R31 2 1
  JUMP [+43]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K46 ["createElement"]
  GETUPVAL R32 18
  DUPTABLE R33 K96 [{"Position", "Size", "maxWidth", "suggestions", "tryOpenAssetConfig", "onBackToHome"}]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K92 ["HEADER_HEIGHT"]
  ADD R39 R21 R40
  ADDK R38 R39 K91 [1]
  CALL R34 4 1
  SETTABLEKS R34 R33 K57 ["Position"]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 1
  GETUPVAL R42 1
  GETTABLEKS R41 R42 K92 ["HEADER_HEIGHT"]
  ADD R40 R41 R21
  ADDK R39 R40 K93 [2]
  MINUS R38 R39
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  SETTABLEKS R3 R33 K83 ["maxWidth"]
  SETTABLEKS R8 R33 K7 ["suggestions"]
  SETTABLEKS R14 R33 K13 ["tryOpenAssetConfig"]
  GETTABLEKS R34 R0 K95 ["onBackToHome"]
  SETTABLEKS R34 R33 K95 ["onBackToHome"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K69 ["MainView"]
  SETTABLEKS R26 R30 K70 ["SearchOptions"]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K46 ["createElement"]
  GETUPVAL R32 19
  CALL R31 1 1
  SETTABLEKS R31 R30 K71 ["AudioPreview"]
  CALL R27 3 -1
  RETURN R27 -1

PROTO_16:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K11 [{"categoryName", "creator", "audioSearchInfo", "additionalAudioSearchInfo", "roles", "searchId", "searchTerm", "sorts", "uiSortIntent", "hasTutorialLimits"}]
  GETTABLEKS R4 R2 K1 ["categoryName"]
  JUMPIF R4 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["DEFAULT"]
  GETTABLEKS R4 R5 K13 ["name"]
  SETTABLEKS R4 R3 K1 ["categoryName"]
  GETTABLEKS R4 R2 K2 ["creator"]
  SETTABLEKS R4 R3 K2 ["creator"]
  GETTABLEKS R4 R2 K3 ["audioSearchInfo"]
  SETTABLEKS R4 R3 K3 ["audioSearchInfo"]
  GETTABLEKS R4 R2 K4 ["additionalAudioSearchInfo"]
  SETTABLEKS R4 R3 K4 ["additionalAudioSearchInfo"]
  GETTABLEKS R4 R0 K5 ["roles"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K5 ["roles"]
  GETTABLEKS R5 R2 K6 ["searchId"]
  ORK R4 R5 K14 [""]
  SETTABLEKS R4 R3 K6 ["searchId"]
  GETTABLEKS R5 R2 K7 ["searchTerm"]
  ORK R4 R5 K14 [""]
  SETTABLEKS R4 R3 K7 ["searchTerm"]
  GETTABLEKS R4 R2 K8 ["sorts"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K8 ["sorts"]
  GETTABLEKS R5 R2 K9 ["uiSortIntent"]
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R2 K9 ["uiSortIntent"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["None"]
  JUMPIFEQ R5 R6 [+4]
  GETTABLEKS R4 R2 K9 ["uiSortIntent"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["uiSortIntent"]
  GETTABLEKS R6 R0 K16 ["tutorialLimits"]
  GETTABLEKS R5 R6 K17 ["assetIds"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["hasTutorialLimits"]
  RETURN R3 1

PROTO_17:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R6 0
  GETUPVAL R7 1
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  MOVE R13 R5
  CALL R7 6 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  LOADB R4 0
  CALL R2 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  DUPTABLE R1 K7 [{"setRoles", "updatePageInfo", "changeMarketplaceTab", "getRobuxBalance", "getToolboxManageableGroups", "logSearchAnalytics", "setLayoutMode"}]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K0 ["setRoles"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["updatePageInfo"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K2 ["changeMarketplaceTab"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K3 ["getRobuxBalance"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K4 ["getToolboxManageableGroups"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K5 ["logSearchAnalytics"]
  GETUPVAL R3 8
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["setLayoutMode"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K7 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxFixDefaultTabForCreations"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K7 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagEnablePluginHomeview"]
  CALL R3 1 1
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["AICOChatBot"]
  NAMECALL R4 R4 K14 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K15 ["AICOChatBotFindVariationFix"]
  NAMECALL R5 R5 K14 ["GetFastFlag"]
  CALL R5 2 1
  GETTABLEKS R6 R0 K16 ["Packages"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K17 ["Cryo"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R6 K18 ["Roact"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R6 K19 ["RoactRodux"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R6 K20 ["Framework"]
  CALL R10 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K5 ["Core"]
  GETTABLEKS R14 R15 K6 ["Util"]
  GETTABLEKS R13 R14 K21 ["ToolboxUtilities"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K22 ["showRobloxCreatedAssets"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K5 ["Core"]
  GETTABLEKS R15 R16 K6 ["Util"]
  GETTABLEKS R14 R15 K21 ["ToolboxUtilities"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K23 ["getHomeViewEnabledAssetTypes"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R0 K24 ["SharedPluginConstants"]
  CALL R13 1 1
  GETTABLEKS R15 R0 K5 ["Core"]
  GETTABLEKS R14 R15 K6 ["Util"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R14 K25 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R14 K26 ["PageInfoHelper"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R14 K27 ["getTabs"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R14 K28 ["Analytics"]
  GETTABLEKS R19 R20 K28 ["Analytics"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R14 K29 ["isInSemanticSearchIXP"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K5 ["Core"]
  GETTABLEKS R20 R21 K30 ["Types"]
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R20 K31 ["Sort"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R20 K32 ["Category"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R20 K33 ["RequestReason"]
  CALL R23 1 1
  GETTABLEKS R25 R0 K5 ["Core"]
  GETTABLEKS R24 R25 K34 ["Components"]
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R24 K35 ["AnnouncementDialog"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R24 K36 ["TabSet"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R24 K37 ["Header"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R30 R24 K38 ["MainView"]
  GETTABLEKS R29 R30 K38 ["MainView"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R30 R24 K39 ["SoundPreviewComponent"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R32 R24 K40 ["Home"]
  GETTABLEKS R31 R32 K41 ["HomeWrapper"]
  CALL R30 1 1
  MOVE R32 R1
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADNIL R31
  JUMP [+11]
  GETIMPORT R31 K4 [require]
  GETTABLEKS R35 R0 K5 ["Core"]
  GETTABLEKS R34 R35 K34 ["Components"]
  GETTABLEKS R33 R34 K42 ["SearchOptions"]
  GETTABLEKS R32 R33 K42 ["SearchOptions"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R37 R0 K5 ["Core"]
  GETTABLEKS R36 R37 K34 ["Components"]
  GETTABLEKS R35 R36 K42 ["SearchOptions"]
  GETTABLEKS R34 R35 K43 ["SearchOptionWrappers"]
  GETTABLEKS R33 R34 K44 ["AudioMarketplaceSearchOptions"]
  CALL R32 1 1
  MOVE R34 R1
  CALL R34 0 1
  JUMPIFNOT R34 [+14]
  GETIMPORT R33 K4 [require]
  GETTABLEKS R38 R0 K5 ["Core"]
  GETTABLEKS R37 R38 K34 ["Components"]
  GETTABLEKS R36 R37 K42 ["SearchOptions"]
  GETTABLEKS R35 R36 K43 ["SearchOptionWrappers"]
  GETTABLEKS R34 R35 K45 ["MarketplaceSearchOptions"]
  CALL R33 1 1
  JUMP [+1]
  LOADNIL R33
  MOVE R35 R1
  CALL R35 0 1
  JUMPIFNOT R35 [+14]
  GETIMPORT R34 K4 [require]
  GETTABLEKS R39 R0 K5 ["Core"]
  GETTABLEKS R38 R39 K34 ["Components"]
  GETTABLEKS R37 R38 K42 ["SearchOptions"]
  GETTABLEKS R36 R37 K43 ["SearchOptionWrappers"]
  GETTABLEKS R35 R36 K46 ["InventorySearchOptions"]
  CALL R34 1 1
  JUMP [+1]
  LOADNIL R34
  GETTABLEKS R37 R0 K5 ["Core"]
  GETTABLEKS R36 R37 K47 ["Networking"]
  GETTABLEKS R35 R36 K48 ["Requests"]
  GETIMPORT R36 K4 [require]
  GETTABLEKS R37 R35 K49 ["UpdatePageInfoAndSendRequest"]
  CALL R36 1 1
  GETIMPORT R37 K4 [require]
  GETTABLEKS R38 R35 K50 ["ChangeMarketplaceTab"]
  CALL R37 1 1
  GETIMPORT R38 K4 [require]
  GETTABLEKS R39 R35 K51 ["GetToolboxManageableGroupsRequest"]
  CALL R38 1 1
  GETIMPORT R39 K4 [require]
  GETTABLEKS R40 R35 K52 ["GetRolesRequest"]
  CALL R39 1 1
  GETIMPORT R40 K4 [require]
  GETTABLEKS R41 R35 K53 ["GetRolesDebugRequest"]
  CALL R40 1 1
  GETIMPORT R41 K4 [require]
  GETTABLEKS R42 R35 K54 ["GetRobuxBalance"]
  CALL R41 1 1
  GETIMPORT R42 K4 [require]
  GETTABLEKS R45 R0 K5 ["Core"]
  GETTABLEKS R44 R45 K55 ["ContextServices"]
  GETTABLEKS R43 R44 K56 ["IXPContext"]
  CALL R42 1 1
  GETTABLEKS R43 R10 K55 ["ContextServices"]
  GETTABLEKS R44 R43 K57 ["withContext"]
  GETIMPORT R45 K4 [require]
  GETTABLEKS R48 R0 K5 ["Core"]
  GETTABLEKS R47 R48 K55 ["ContextServices"]
  GETTABLEKS R46 R47 K58 ["Settings"]
  CALL R45 1 1
  GETIMPORT R46 K4 [require]
  GETTABLEKS R49 R0 K5 ["Core"]
  GETTABLEKS R48 R49 K55 ["ContextServices"]
  GETTABLEKS R47 R48 K59 ["ModalContext"]
  CALL R46 1 1
  GETIMPORT R47 K4 [require]
  GETTABLEKS R50 R0 K5 ["Core"]
  GETTABLEKS R49 R50 K55 ["ContextServices"]
  GETTABLEKS R48 R49 K60 ["NetworkContext"]
  CALL R47 1 1
  GETIMPORT R48 K4 [require]
  GETTABLEKS R51 R0 K5 ["Core"]
  GETTABLEKS R50 R51 K30 ["Types"]
  GETTABLEKS R49 R50 K61 ["HomeTypes"]
  CALL R48 1 1
  GETIMPORT R49 K4 [require]
  GETTABLEKS R52 R0 K5 ["Core"]
  GETTABLEKS R51 R52 K62 ["Actions"]
  GETTABLEKS R50 R51 K63 ["SetLayoutMode"]
  CALL R49 1 1
  GETIMPORT R50 K4 [require]
  GETTABLEKS R53 R0 K5 ["Core"]
  GETTABLEKS R52 R53 K64 ["Thunks"]
  GETTABLEKS R51 R52 K65 ["LogMarketplaceSearchAnalytics"]
  CALL R50 1 1
  GETIMPORT R51 K12 [game]
  LOADK R53 K66 ["DebugToolboxGetRolesRequest"]
  NAMECALL R51 R51 K14 ["GetFastFlag"]
  CALL R51 2 1
  GETIMPORT R52 K4 [require]
  GETTABLEKS R56 R0 K5 ["Core"]
  GETTABLEKS R55 R56 K6 ["Util"]
  GETTABLEKS R54 R55 K7 ["SharedFlags"]
  GETTABLEKS R53 R54 K67 ["getFFlagToolboxContentManagementCombineTabs"]
  CALL R52 1 1
  GETIMPORT R53 K4 [require]
  GETTABLEKS R57 R0 K5 ["Core"]
  GETTABLEKS R56 R57 K6 ["Util"]
  GETTABLEKS R55 R56 K7 ["SharedFlags"]
  GETTABLEKS R54 R55 K68 ["getFFlagToolboxEnableAssetRows"]
  CALL R53 1 1
  GETIMPORT R54 K4 [require]
  GETTABLEKS R58 R0 K5 ["Core"]
  GETTABLEKS R57 R58 K6 ["Util"]
  GETTABLEKS R56 R57 K7 ["SharedFlags"]
  GETTABLEKS R55 R56 K69 ["getIsIXPEnabledForListView"]
  CALL R54 1 1
  GETIMPORT R55 K4 [require]
  GETTABLEKS R58 R0 K5 ["Core"]
  GETTABLEKS R57 R58 K30 ["Types"]
  GETTABLEKS R56 R57 K70 ["LayoutMode"]
  CALL R55 1 1
  GETIMPORT R56 K4 [require]
  GETTABLEKS R59 R0 K5 ["Core"]
  GETTABLEKS R58 R59 K30 ["Types"]
  GETTABLEKS R57 R58 K71 ["Background"]
  CALL R56 1 1
  GETTABLEKS R57 R8 K72 ["PureComponent"]
  LOADK R59 K73 ["Toolbox"]
  NAMECALL R57 R57 K74 ["extend"]
  CALL R57 2 1
  DUPTABLE R58 K76 [{"Size"}]
  GETIMPORT R59 K79 [UDim2.new]
  LOADN R60 1
  LOADN R61 0
  LOADN R62 1
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K75 ["Size"]
  SETTABLEKS R58 R57 K80 ["defaultProps"]
  DUPCLOSURE R58 K81 [PROTO_0]
  CAPTURE VAL R53
  CAPTURE VAL R56
  CAPTURE VAL R22
  CAPTURE VAL R52
  CAPTURE VAL R2
  CAPTURE VAL R23
  CAPTURE VAL R54
  CAPTURE VAL R55
  SETTABLEKS R58 R57 K82 ["handleInitialSettings"]
  DUPCLOSURE R58 K83 [PROTO_8]
  CAPTURE VAL R15
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R52
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R4
  SETTABLEKS R58 R57 K84 ["init"]
  DUPCLOSURE R58 K85 [PROTO_9]
  SETTABLEKS R58 R57 K86 ["didUpdate"]
  DUPCLOSURE R58 K87 [PROTO_13]
  CAPTURE VAL R13
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R15
  SETTABLEKS R58 R57 K88 ["didMount"]
  DUPCLOSURE R58 K89 [PROTO_14]
  SETTABLEKS R58 R57 K90 ["willUnmount"]
  DUPCLOSURE R58 K91 [PROTO_15]
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R34
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R31
  CAPTURE VAL R25
  CAPTURE VAL R19
  CAPTURE VAL R26
  CAPTURE VAL R52
  CAPTURE VAL R17
  CAPTURE VAL R27
  CAPTURE VAL R30
  CAPTURE VAL R21
  CAPTURE VAL R28
  CAPTURE VAL R29
  SETTABLEKS R58 R57 K92 ["render"]
  MOVE R58 R44
  DUPTABLE R59 K98 [{"IXP", "Stylizer", "Localization", "Settings", "Modal", "Network"}]
  MOVE R61 R52
  CALL R61 0 1
  JUMPIF R61 [+3]
  MOVE R61 R53
  CALL R61 0 1
  JUMPIFNOT R61 [+2]
  MOVE R60 R42
  JUMP [+1]
  LOADNIL R60
  SETTABLEKS R60 R59 K93 ["IXP"]
  GETTABLEKS R60 R43 K94 ["Stylizer"]
  SETTABLEKS R60 R59 K94 ["Stylizer"]
  GETTABLEKS R60 R43 K95 ["Localization"]
  SETTABLEKS R60 R59 K95 ["Localization"]
  SETTABLEKS R45 R59 K58 ["Settings"]
  SETTABLEKS R46 R59 K96 ["Modal"]
  SETTABLEKS R47 R59 K97 ["Network"]
  CALL R58 1 1
  MOVE R59 R57
  CALL R58 1 1
  MOVE R57 R58
  DUPCLOSURE R58 K99 [PROTO_16]
  CAPTURE VAL R22
  CAPTURE VAL R7
  DUPCLOSURE R59 K100 [PROTO_24]
  CAPTURE VAL R51
  CAPTURE VAL R40
  CAPTURE VAL R39
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R41
  CAPTURE VAL R38
  CAPTURE VAL R50
  CAPTURE VAL R53
  CAPTURE VAL R49
  GETTABLEKS R60 R9 K101 ["connect"]
  MOVE R61 R58
  MOVE R62 R59
  CALL R60 2 1
  MOVE R61 R57
  CALL R60 1 -1
  RETURN R60 -1
