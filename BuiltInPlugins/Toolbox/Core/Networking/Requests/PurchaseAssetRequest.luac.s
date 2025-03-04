PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+18]
  GETUPVAL R0 1
  DUPTABLE R2 K2 [{"assetId", "assetTypeId"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K0 ["assetId"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K1 ["assetTypeId"]
  NAMECALL R0 R0 K3 ["jsonEncode"]
  CALL R0 2 1
  GETUPVAL R1 0
  LOADK R3 K4 ["AddToolboxAssetToInventory"]
  MOVE R4 R0
  NAMECALL R1 R1 K5 ["Fire"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K6 ["shouldDebugUrls"]
  CALL R0 0 1
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K8 [warn]
  LOADK R1 K9 ["MemStorageService not found!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K1 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CALL R3 1 2
  JUMPIF R3 [+14]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["shouldDebugWarnings"]
  CALL R5 0 1
  JUMPIFNOT R5 [+9]
  GETIMPORT R5 K4 [warn]
  LOADK R6 K5 ["Asset id %s was not added to inventory after purchase. Error: "]
  MOVE R8 R1
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 2 1
  MOVE R7 R4
  CALL R5 2 0
  RETURN R3 2

PROTO_2:
  MOVE R5 R4
  MOVE R6 R1
  MOVE R7 R3
  MOVE R8 R2
  CALL R5 3 2
  MOVE R7 R1
  JUMPIFNOT R7 [+7]
  GETTABLEKS R7 R1 K0 ["Asset"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R8 R1 K0 ["Asset"]
  GETTABLEKS R7 R8 K1 ["Id"]
  MOVE R8 R1
  JUMPIFNOT R8 [+7]
  GETTABLEKS R8 R1 K0 ["Asset"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R1 K0 ["Asset"]
  GETTABLEKS R8 R9 K2 ["TypeId"]
  GETIMPORT R11 K6 [Enum.AssetType.Plugin]
  GETTABLEKS R10 R11 K7 ["Value"]
  JUMPIFEQ R8 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  JUMPIFNOT R5 [+5]
  JUMPIFNOT R9 [+4]
  GETUPVAL R10 0
  NAMECALL R10 R10 K8 ["UpdatePluginManagement"]
  CALL R10 1 0
  JUMPIF R5 [+14]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["shouldDebugWarnings"]
  CALL R10 0 1
  JUMPIFNOT R10 [+9]
  GETIMPORT R10 K11 [warn]
  LOADK R11 K12 ["Asset id %s was not inserted correctly after purchase. Error: "]
  MOVE R13 R7
  NAMECALL R11 R11 K13 ["format"]
  CALL R11 2 1
  MOVE R12 R6
  CALL R10 2 0
  RETURN R5 1

PROTO_3:
  GETUPVAL R8 0
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R4
  CALL R8 3 0
  GETUPVAL R10 1
  LOADB R11 1
  MOVE R12 R2
  CALL R10 2 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R8 2
  MOVE R9 R1
  MOVE R10 R3
  MOVE R11 R5
  MOVE R12 R7
  MOVE R13 R6
  CALL R8 5 0
  GETUPVAL R10 3
  MOVE R11 R3
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K1 ["PurchaseSuccess"]
  CALL R10 2 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  NAMECALL R8 R0 K2 ["getState"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K3 ["assets"]
  JUMPIFNOT R9 [+14]
  GETTABLEKS R10 R8 K3 ["assets"]
  GETTABLEKS R9 R10 K4 ["previewAssetId"]
  JUMPIFNOTEQ R9 R2 [+9]
  GETUPVAL R11 5
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K5 ["Success"]
  CALL R11 1 -1
  NAMECALL R9 R0 K0 ["dispatch"]
  CALL R9 -1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["purchase"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R4 R0 K0 ["purchase"]
  GETTABLEKS R3 R4 K1 ["cachedOwnedAssets"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K0 ["purchase"]
  GETTABLEKS R2 R3 K1 ["cachedOwnedAssets"]
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+7]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  GETTABLE R3 R2 R4
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

PROTO_5:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["assets"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R2 K1 ["assets"]
  GETTABLEKS R3 R4 K2 ["previewAssetId"]
  JUMPIFNOTEQ R3 R1 [+9]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Failed"]
  CALL R5 1 -1
  NAMECALL R3 R0 K4 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_6:
  SETUPVAL R0 0
  GETUPVAL R2 1
  ADDK R1 R2 K0 [1]
  SETUPVAL R1 1
  RETURN R0 0

PROTO_7:
  LOADN R3 0
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  GETTABLEKS R7 R4 K1 ["purchase"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R8 R4 K1 ["purchase"]
  GETTABLEKS R7 R8 K2 ["cachedOwnedAssets"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R4 K1 ["purchase"]
  GETTABLEKS R6 R7 K2 ["cachedOwnedAssets"]
  JUMP [+1]
  LOADNIL R6
  JUMPIFNOT R6 [+7]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K4 [tostring]
  CALL R7 1 1
  GETTABLE R5 R6 R7
  JUMP [+1]
  LOADB R5 0
  JUMPIF R5 [+24]
  GETUPVAL R6 0
  JUMPIFNOTLT R3 R6 [+22]
  GETIMPORT R6 K6 [wait]
  GETUPVAL R7 1
  CALL R6 1 0
  NAMECALL R6 R0 K0 ["getState"]
  CALL R6 1 1
  GETUPVAL R9 2
  MOVE R10 R1
  MOVE R11 R2
  CALL R9 2 -1
  NAMECALL R7 R0 K7 ["dispatch"]
  CALL R7 -1 1
  NEWCLOSURE R9 P0
  CAPTURE REF R5
  CAPTURE REF R3
  NAMECALL R7 R7 K8 ["andThen"]
  CALL R7 2 0
  JUMPBACK [-25]
  CLOSEUPVALS R3
  RETURN R5 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+2]
  LOADK R1 K1 ["fiat"]
  JUMP [+1]
  LOADK R1 K2 ["robux"]
  GETIMPORT R2 K4 [warn]
  LOADK R3 K5 ["Could not purchase using %s assetID %s versionID %s"]
  MOVE R5 R1
  GETUPVAL R6 2
  GETUPVAL R7 3
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 4 1
  MOVE R4 R0
  CALL R2 2 0
  GETUPVAL R1 4
  GETUPVAL R3 5
  GETUPVAL R4 6
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K7 ["PurchaseFailed"]
  CALL R3 2 -1
  NAMECALL R1 R1 K8 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 4
  GETUPVAL R2 2
  NAMECALL R3 R1 K9 ["getState"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["assets"]
  JUMPIFNOT R4 [+14]
  GETTABLEKS R5 R3 K10 ["assets"]
  GETTABLEKS R4 R5 K11 ["previewAssetId"]
  JUMPIFNOTEQ R4 R2 [+9]
  GETUPVAL R6 8
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K12 ["Failed"]
  CALL R6 1 -1
  NAMECALL R4 R1 K8 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R1 4
  GETUPVAL R3 10
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K8 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 1
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 4
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 5
  GETUPVAL R6 6
  GETUPVAL R7 7
  GETUPVAL R8 8
  GETUPVAL R9 9
  CALL R1 8 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETTABLEKS R2 R1 K1 ["checkoutUrl"]
  GETTABLEKS R3 R1 K2 ["purchaseTransactionStatus"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Success"]
  JUMPIFNOTEQ R3 R4 [+33]
  JUMPIFNOT R2 [+20]
  GETUPVAL R4 1
  MOVE R6 R2
  NAMECALL R4 R4 K4 ["OpenBrowserWindow"]
  CALL R4 2 0
  GETIMPORT R4 K6 [spawn]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R4 6
  GETUPVAL R5 3
  GETUPVAL R6 4
  GETUPVAL R7 5
  GETUPVAL R8 7
  GETUPVAL R9 8
  GETUPVAL R10 9
  GETUPVAL R11 10
  GETUPVAL R12 11
  CALL R4 8 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["AlreadyOwned"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R4 6
  GETUPVAL R5 3
  GETUPVAL R6 4
  GETUPVAL R7 5
  GETUPVAL R8 7
  GETUPVAL R9 8
  GETUPVAL R10 9
  GETUPVAL R11 10
  GETUPVAL R12 11
  CALL R4 8 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["PriceChanged"]
  JUMPIFNOTEQ R3 R4 [+58]
  GETTABLEKS R4 R1 K9 ["actualPrice"]
  JUMPIFNOT R4 [+21]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K10 ["FiatProduct"]
  JUMPIFNOT R5 [+17]
  GETUPVAL R5 12
  GETUPVAL R6 7
  CALL R5 1 1
  SETUPVAL R5 7
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K10 ["FiatProduct"]
  SETTABLEKS R4 R5 K11 ["PurchasePrice"]
  GETUPVAL R5 3
  GETUPVAL R7 13
  GETUPVAL R8 5
  GETUPVAL R9 7
  CALL R7 2 -1
  NAMECALL R5 R5 K12 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 3
  GETUPVAL R7 14
  GETUPVAL R8 7
  GETUPVAL R10 15
  GETTABLEKS R9 R10 K8 ["PriceChanged"]
  CALL R7 2 -1
  NAMECALL R5 R5 K12 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 3
  GETUPVAL R6 5
  NAMECALL R7 R5 K13 ["getState"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["assets"]
  JUMPIFNOT R8 [+80]
  GETTABLEKS R9 R7 K14 ["assets"]
  GETTABLEKS R8 R9 K15 ["previewAssetId"]
  JUMPIFNOTEQ R8 R6 [+75]
  GETUPVAL R10 16
  GETUPVAL R12 17
  GETTABLEKS R11 R12 K16 ["Failed"]
  CALL R10 1 -1
  NAMECALL R8 R5 K12 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["ExcessiveTransactions"]
  JUMPIFNOTEQ R3 R4 [+59]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K18 ["Creator"]
  JUMPIFNOT R5 [+12]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K18 ["Creator"]
  GETTABLEKS R5 R6 K19 ["Id"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K18 ["Creator"]
  GETTABLEKS R4 R5 K19 ["Id"]
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOT R4 [+7]
  GETUPVAL R5 3
  GETUPVAL R7 18
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R5 K12 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 3
  GETUPVAL R7 14
  GETUPVAL R8 7
  GETUPVAL R10 15
  GETTABLEKS R9 R10 K17 ["ExcessiveTransactions"]
  CALL R7 2 -1
  NAMECALL R5 R5 K12 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 3
  GETUPVAL R6 5
  NAMECALL R7 R5 K13 ["getState"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["assets"]
  JUMPIFNOT R8 [+17]
  GETTABLEKS R9 R7 K14 ["assets"]
  GETTABLEKS R8 R9 K15 ["previewAssetId"]
  JUMPIFNOTEQ R8 R6 [+12]
  GETUPVAL R10 16
  GETUPVAL R12 17
  GETTABLEKS R11 R12 K16 ["Failed"]
  CALL R10 1 -1
  NAMECALL R8 R5 K12 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0
  GETUPVAL R4 19
  CALL R4 0 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["purchased"]
  GETTABLEKS R3 R0 K0 ["responseBody"]
  GETTABLEKS R2 R3 K2 ["reason"]
  JUMPIF R1 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["AlreadyOwned"]
  JUMPIFNOTEQ R2 R3 [+28]
  GETUPVAL R3 1
  GETUPVAL R5 2
  LOADB R6 1
  GETUPVAL R7 3
  CALL R5 2 -1
  NAMECALL R3 R3 K4 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 1
  GETUPVAL R5 4
  GETUPVAL R6 5
  CALL R5 1 -1
  NAMECALL R3 R3 K4 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 6
  GETUPVAL R4 5
  GETUPVAL R5 3
  GETUPVAL R6 7
  CALL R3 3 0
  GETUPVAL R3 8
  GETUPVAL R4 5
  GETUPVAL R5 9
  GETUPVAL R6 10
  GETUPVAL R7 11
  GETUPVAL R8 12
  CALL R3 5 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R4 13
  GETTABLEKS R3 R4 K5 ["PurchaseSuccess"]
  JUMP [+3]
  GETUPVAL R4 13
  GETTABLEKS R3 R4 K6 ["PurchaseFailed"]
  GETUPVAL R4 1
  GETUPVAL R6 14
  GETUPVAL R7 9
  MOVE R8 R3
  CALL R6 2 -1
  NAMECALL R4 R4 K4 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 1
  GETUPVAL R6 15
  JUMPIFNOT R1 [+4]
  GETUPVAL R8 16
  GETTABLEKS R7 R8 K7 ["Success"]
  JUMP [+3]
  GETUPVAL R8 16
  GETTABLEKS R7 R8 K8 ["Failed"]
  CALL R6 1 -1
  NAMECALL R4 R4 K4 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_12:
  LOADNIL R1
  LOADNIL R2
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K1 ["assets"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K2 ["idToAssetMap"]
  JUMP [+2]
  NEWTABLE R5 0 0
  GETUPVAL R7 0
  JUMPIFNOT R7 [+2]
  GETUPVAL R6 0
  JUMP [+2]
  GETUPVAL R7 1
  GETTABLE R6 R5 R7
  SETUPVAL R6 0
  GETUPVAL R6 0
  JUMPIF R6 [+13]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["shouldDebugWarnings"]
  CALL R6 0 1
  JUMPIFNOT R6 [+8]
  GETIMPORT R6 K5 [warn]
  LOADK R7 K6 ["Asset data for id %s was not found in the idToAssetMap."]
  GETUPVAL R9 1
  NAMECALL R7 R7 K7 ["format"]
  CALL R7 2 -1
  CALL R6 -1 0
  GETUPVAL R7 0
  JUMPIFNOT R7 [+10]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Asset"]
  JUMPIFNOT R7 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Asset"]
  GETTABLEKS R6 R7 K9 ["TypeId"]
  JUMP [+1]
  LOADNIL R6
  SETUPVAL R6 3
  GETTABLEKS R7 R3 K10 ["pageInfo"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R3 K10 ["pageInfo"]
  GETTABLEKS R6 R7 K11 ["searchId"]
  JUMP [+1]
  LOADNIL R6
  SETUPVAL R6 4
  JUMPIFNOT R4 [+3]
  GETTABLEKS R2 R4 K12 ["previewSwimlaneName"]
  JUMP [+1]
  LOADNIL R2
  GETTABLEKS R7 R3 K1 ["assets"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R3 K1 ["assets"]
  GETTABLEKS R6 R7 K13 ["previewPluginData"]
  JUMP [+1]
  LOADNIL R6
  JUMPIFNOT R6 [+3]
  GETTABLEKS R1 R6 K14 ["versionId"]
  JUMP [+1]
  LOADNIL R1
  GETUPVAL R9 5
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K15 ["Waiting"]
  CALL R9 1 -1
  NAMECALL R7 R0 K16 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R8 7
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K19 [{"expectedPrice", "productKey"}]
  GETUPVAL R8 7
  SETTABLEKS R8 R7 K17 ["expectedPrice"]
  DUPTABLE R8 K23 [{"productNamespace", "productType", "productTargetId"}]
  LOADK R9 K24 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET"]
  SETTABLEKS R9 R8 K20 ["productNamespace"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K25 ["convertAssetTypeToProductType"]
  GETUPVAL R10 3
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["productType"]
  GETUPVAL R10 1
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K27 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K22 ["productTargetId"]
  SETTABLEKS R8 R7 K18 ["productKey"]
  JUMP [+13]
  DUPTABLE R7 K30 [{"expectedPrice", "assetId", "assetType", "searchId"}]
  GETUPVAL R8 9
  SETTABLEKS R8 R7 K17 ["expectedPrice"]
  GETUPVAL R8 1
  SETTABLEKS R8 R7 K28 ["assetId"]
  GETUPVAL R8 3
  SETTABLEKS R8 R7 K29 ["assetType"]
  GETUPVAL R8 4
  SETTABLEKS R8 R7 K11 ["searchId"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U1
  CAPTURE REF R1
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U12
  GETUPVAL R9 7
  JUMPIFNOT R9 [+34]
  GETUPVAL R9 13
  LOADNIL R11
  MOVE R12 R7
  GETUPVAL R13 3
  NAMECALL R9 R9 K31 ["purchaseAsset"]
  CALL R9 4 1
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE VAL R0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U1
  CAPTURE UPVAL U17
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE REF R1
  CAPTURE UPVAL U18
  CAPTURE REF R2
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U21
  CAPTURE VAL R8
  MOVE R12 R8
  NAMECALL R9 R9 K32 ["andThen"]
  CALL R9 3 -1
  CLOSEUPVALS R1
  RETURN R9 -1
  GETUPVAL R9 13
  GETUPVAL R11 22
  MOVE R12 R7
  GETUPVAL R13 3
  NAMECALL R9 R9 K31 ["purchaseAsset"]
  CALL R9 4 1
  NEWCLOSURE R11 P2
  CAPTURE UPVAL U23
  CAPTURE VAL R0
  CAPTURE UPVAL U24
  CAPTURE UPVAL U1
  CAPTURE UPVAL U25
  CAPTURE UPVAL U13
  CAPTURE UPVAL U26
  CAPTURE UPVAL U3
  CAPTURE UPVAL U27
  CAPTURE UPVAL U0
  CAPTURE REF R1
  CAPTURE REF R2
  CAPTURE UPVAL U18
  CAPTURE UPVAL U11
  CAPTURE UPVAL U10
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  MOVE R12 R8
  NAMECALL R9 R9 K32 ["andThen"]
  CALL R9 3 -1
  CLOSEUPVALS R1
  RETURN R9 -1

PROTO_13:
  NEWCLOSURE R9 P0
  CAPTURE REF R8
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R7
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE VAL R2
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CLOSEUPVALS R4
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["MemStorageService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StudioService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R7 K7 [script]
  GETTABLEKS R6 R7 K8 ["Parent"]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R5 R3 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R5 R3 K11 ["Packages"]
  GETIMPORT R6 K13 [require]
  GETTABLEKS R7 R5 K14 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K10 ["Util"]
  GETTABLEKS R7 R8 K15 ["deepCopy"]
  GETIMPORT R8 K13 [require]
  GETTABLEKS R9 R4 K16 ["DebugFlags"]
  CALL R8 1 1
  GETIMPORT R9 K13 [require]
  GETTABLEKS R10 R4 K17 ["FiatUtil"]
  CALL R9 1 1
  GETIMPORT R10 K13 [require]
  GETTABLEKS R11 R4 K18 ["ToolboxUtilities"]
  CALL R10 1 1
  GETIMPORT R11 K13 [require]
  GETTABLEKS R14 R3 K9 ["Core"]
  GETTABLEKS R13 R14 K19 ["Actions"]
  GETTABLEKS R12 R13 K20 ["NetworkError"]
  CALL R11 1 1
  GETIMPORT R12 K13 [require]
  GETTABLEKS R15 R3 K9 ["Core"]
  GETTABLEKS R14 R15 K19 ["Actions"]
  GETTABLEKS R13 R14 K21 ["EnqueueSubsequentDialog"]
  CALL R12 1 1
  GETIMPORT R13 K13 [require]
  GETTABLEKS R16 R3 K9 ["Core"]
  GETTABLEKS R15 R16 K19 ["Actions"]
  GETTABLEKS R14 R15 K22 ["SetExcessiveTransactionUserId"]
  CALL R13 1 1
  GETIMPORT R14 K13 [require]
  GETTABLEKS R17 R3 K9 ["Core"]
  GETTABLEKS R16 R17 K19 ["Actions"]
  GETTABLEKS R15 R16 K23 ["SetOwnsAsset"]
  CALL R14 1 1
  GETIMPORT R15 K13 [require]
  GETTABLEKS R18 R3 K9 ["Core"]
  GETTABLEKS R17 R18 K19 ["Actions"]
  GETTABLEKS R16 R17 K24 ["SetPurchaseStatus"]
  CALL R15 1 1
  GETIMPORT R16 K13 [require]
  GETTABLEKS R19 R3 K9 ["Core"]
  GETTABLEKS R18 R19 K19 ["Actions"]
  GETTABLEKS R17 R18 K25 ["UpdateAssetData"]
  CALL R16 1 1
  GETIMPORT R17 K13 [require]
  GETTABLEKS R21 R3 K9 ["Core"]
  GETTABLEKS R20 R21 K26 ["Networking"]
  GETTABLEKS R19 R20 K27 ["Requests"]
  GETTABLEKS R18 R19 K28 ["GetOwnsAssetRequest"]
  CALL R17 1 1
  GETIMPORT R18 K13 [require]
  GETTABLEKS R22 R3 K9 ["Core"]
  GETTABLEKS R21 R22 K26 ["Networking"]
  GETTABLEKS R20 R21 K27 ["Requests"]
  GETTABLEKS R19 R20 K29 ["GetRobuxBalance"]
  CALL R18 1 1
  GETIMPORT R19 K13 [require]
  GETTABLEKS R22 R3 K9 ["Core"]
  GETTABLEKS R21 R22 K30 ["Types"]
  GETTABLEKS R20 R21 K31 ["PurchaseStatus"]
  CALL R19 1 1
  GETIMPORT R20 K13 [require]
  GETTABLEKS R23 R3 K9 ["Core"]
  GETTABLEKS R22 R23 K30 ["Types"]
  GETTABLEKS R21 R22 K32 ["ProductPurchaseResponseReasons"]
  CALL R20 1 1
  GETIMPORT R21 K13 [require]
  GETTABLEKS R24 R3 K9 ["Core"]
  GETTABLEKS R23 R24 K30 ["Types"]
  GETTABLEKS R22 R23 K33 ["PurchaseTransactionStatus"]
  CALL R21 1 1
  GETIMPORT R22 K13 [require]
  GETTABLEKS R25 R3 K9 ["Core"]
  GETTABLEKS R24 R25 K30 ["Types"]
  GETTABLEKS R23 R24 K34 ["SubsequentDialogStatus"]
  CALL R22 1 1
  GETTABLEKS R23 R10 K35 ["getOwnershipPollingMaxRetries"]
  CALL R23 0 1
  GETTABLEKS R24 R10 K36 ["getOwnershipPollingWaitTimeInSec"]
  CALL R24 0 1
  DUPCLOSURE R25 K37 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R8
  DUPCLOSURE R26 K38 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R8
  DUPCLOSURE R27 K39 [PROTO_3]
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R26
  CAPTURE VAL R12
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R19
  DUPCLOSURE R28 K40 [PROTO_4]
  DUPCLOSURE R29 K41 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R19
  DUPCLOSURE R30 K42 [PROTO_7]
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R17
  DUPCLOSURE R31 K43 [PROTO_13]
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R0
  CAPTURE VAL R30
  CAPTURE VAL R27
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R20
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R25
  CAPTURE VAL R26
  RETURN R31 1
