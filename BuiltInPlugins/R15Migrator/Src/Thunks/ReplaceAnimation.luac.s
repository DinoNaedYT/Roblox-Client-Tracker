PROTO_0:
  LOADNIL R4
  MOVE R5 R0
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  MOVE R12 R8
  NAMECALL R10 R2 K0 ["findScriptGUID"]
  CALL R10 2 1
  JUMPIFNOTEQKNIL R4 [+2]
  MOVE R4 R10
  MOVE R11 R9
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETTABLE R16 R1 R10
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K1 ["getConvertedAnimationAssetInfo"]
  GETTABLEKS R18 R15 K2 ["info"]
  CALL R17 1 1
  GETTABLEKS R18 R17 K3 ["id"]
  JUMPIFNOT R18 [+14]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K4 ["replaceWithSuggestion"]
  MOVE R19 R10
  GETTABLEKS R21 R15 K5 ["ref"]
  GETTABLEKS R20 R21 K6 ["range"]
  MOVE R21 R2
  GETTABLEKS R22 R17 K7 ["url"]
  MOVE R23 R16
  MOVE R24 R3
  CALL R18 6 0
  FORGLOOP R11 2 [-25]
  JUMPIFEQ R10 R4 [+5]
  MOVE R13 R10
  NAMECALL R11 R2 K8 ["closeScriptIfOpen"]
  CALL R11 2 0
  FORGLOOP R5 2 [-44]
  JUMPIFNOT R4 [+4]
  MOVE R7 R4
  NAMECALL R5 R2 K8 ["closeScriptIfOpen"]
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["AnimationConversion"]
  GETTABLEKS R2 R3 K2 ["animations"]
  GETTABLEKS R4 R1 K3 ["ScriptConversion"]
  GETTABLEKS R3 R4 K4 ["diagnostics"]
  GETUPVAL R4 0
  LOADK R6 K5 ["preReplace"]
  NAMECALL R4 R4 K6 ["SetWaypoint"]
  CALL R4 2 0
  NEWTABLE R4 0 0
  GETUPVAL R5 1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["getConvertedAnimationAssetInfo"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K8 ["id"]
  JUMPIF R11 [+1]
  RETURN R0 0
  GETTABLEKS R13 R10 K9 ["_type"]
  NAMECALL R11 R9 K10 ["IsA"]
  CALL R11 2 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R11 K12 [next]
  GETTABLEKS R14 R9 K8 ["id"]
  GETTABLE R13 R2 R14
  GETTABLEKS R12 R13 K13 ["refs"]
  CALL R11 1 1
  JUMPIFNOT R11 [+131]
  GETUPVAL R11 3
  GETTABLEKS R13 R9 K8 ["id"]
  GETTABLE R12 R2 R13
  CALL R11 1 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["getConvertedKeyframeSequence"]
  MOVE R13 R9
  CALL R12 1 1
  NEWTABLE R13 0 0
  LOADN R14 0
  GETTABLEKS R15 R11 K13 ["refs"]
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K15 ["LocalAsset"]
  NAMECALL R20 R19 K10 ["IsA"]
  CALL R20 2 1
  JUMPIFNOT R20 [+27]
  NAMECALL R20 R18 K16 ["ClearAllChildren"]
  CALL R20 1 0
  NAMECALL R20 R12 K17 ["GetChildren"]
  CALL R20 1 3
  FORGPREP R20
  NAMECALL R25 R24 K18 ["Clone"]
  CALL R25 1 1
  SETTABLEKS R18 R25 K19 ["Parent"]
  FORGLOOP R20 2 [-6]
  FASTCALL2 TABLE_INSERT R13 R18 [+5]
  MOVE R21 R13
  MOVE R22 R18
  GETIMPORT R20 K22 [table.insert]
  CALL R20 2 0
  GETUPVAL R20 5
  MOVE R22 R18
  NAMECALL R20 R20 K23 ["removeTag"]
  CALL R20 2 0
  JUMP [+57]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K24 ["AnimationInstance"]
  NAMECALL R20 R19 K10 ["IsA"]
  CALL R20 2 1
  JUMPIFNOT R20 [+17]
  GETTABLEKS R20 R10 K25 ["url"]
  SETTABLEKS R20 R18 K26 ["AnimationId"]
  FASTCALL2 TABLE_INSERT R13 R18 [+5]
  MOVE R21 R13
  MOVE R22 R18
  GETIMPORT R20 K22 [table.insert]
  CALL R20 2 0
  GETUPVAL R20 5
  MOVE R22 R18
  NAMECALL R20 R20 K23 ["removeTag"]
  CALL R20 2 0
  JUMP [+33]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K27 ["AssetIdString"]
  NAMECALL R20 R19 K10 ["IsA"]
  CALL R20 2 1
  JUMPIFNOT R20 [+26]
  GETTABLEKS R20 R18 K28 ["scriptInstance"]
  GETTABLE R21 R4 R20
  JUMPIFNOT R21 [+12]
  GETTABLE R22 R4 R20
  DUPTABLE R23 K31 [{"ref", "info"}]
  SETTABLEKS R18 R23 K29 ["ref"]
  SETTABLEKS R9 R23 K30 ["info"]
  FASTCALL2 TABLE_INSERT R22 R23 [+3]
  GETIMPORT R21 K22 [table.insert]
  CALL R21 2 0
  JUMP [+10]
  NEWTABLE R21 0 1
  DUPTABLE R22 K31 [{"ref", "info"}]
  SETTABLEKS R18 R22 K29 ["ref"]
  SETTABLEKS R9 R22 K30 ["info"]
  SETLIST R21 R22 1 [1]
  SETTABLE R21 R4 R20
  ADDK R14 R14 K32 [1]
  FORGLOOP R15 2 [-93]
  LENGTH R15 R13
  JUMPIFNOTEQ R14 R15 [+5]
  NAMECALL R15 R11 K33 ["complete"]
  CALL R15 1 0
  JUMP [+4]
  MOVE R17 R13
  NAMECALL R15 R11 K34 ["removeRefs"]
  CALL R15 2 0
  GETUPVAL R17 6
  GETTABLEKS R18 R9 K8 ["id"]
  MOVE R19 R11
  CALL R17 2 -1
  NAMECALL R15 R0 K35 ["dispatch"]
  CALL R15 -1 0
  FORGLOOP R5 2 [-157]
  GETUPVAL R5 7
  MOVE R6 R4
  MOVE R7 R3
  GETUPVAL R8 8
  GETUPVAL R9 9
  CALL R5 4 0
  GETUPVAL R5 0
  LOADK R7 K36 ["postReplace"]
  NAMECALL R5 R5 K6 ["SetWaypoint"]
  CALL R5 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["ChangeHistoryService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["Util"]
  GETTABLEKS R3 R4 K13 ["deepCopy"]
  GETTABLEKS R5 R0 K14 ["Src"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R4 K15 ["PublishTagging"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["AnimationTagging"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R4 K17 ["ScriptReplacement"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K18 ["AnimationConversion"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R7 K19 ["AnimationConversionManager"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R7 K20 ["constants"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K21 ["AssetType"]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K22 ["Actions"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R13 R11 K23 ["SetAnimation"]
  CALL R12 1 1
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R6
  DUPCLOSURE R14 K25 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R13
  RETURN R14 1
