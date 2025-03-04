PROTO_0:
  GETIMPORT R2 K2 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-2]
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 0
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R0 2
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  JUMPIFNOTEQKS R0 K1 ["Inactive"] [+2]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  JUMPIFEQKS R0 K2 ["Prompt"] [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  JUMPIFNOTEQKS R0 K3 ["Sharing"] [+4]
  GETUPVAL R0 1
  CALL R0 0 0
  JUMP [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  JUMPIFNOTEQKS R0 K4 ["CantShare"] [+4]
  GETUPVAL R0 2
  CALL R0 0 0
  JUMP [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  JUMPIFNOTEQKS R0 K5 ["UnexpectedError"] [+3]
  GETUPVAL R0 3
  CALL R0 0 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["use"]
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R1 0 3
  NEWTABLE R4 0 0
  JUMPIFNOT R1 [+14]
  GETTABLEKS R5 R1 K1 ["state"]
  JUMPIFEQKS R5 K2 ["Prompt"] [+9]
  GETTABLEKS R5 R1 K1 ["state"]
  JUMPIFEQKS R5 K3 ["Sharing"] [+5]
  GETTABLEKS R5 R1 K1 ["state"]
  JUMPIFNOTEQKS R5 K4 ["CantShare"] [+3]
  GETTABLEKS R4 R1 K5 ["assetModels"]
  GETUPVAL R5 2
  DUPTABLE R6 K14 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "ActionSecondary", "Modal", "Width"}]
  LOADK R7 K15 ["Warning"]
  SETTABLEKS R7 R6 K6 ["Intent"]
  LOADK R9 K16 ["ShareDialogView"]
  LOADK R10 K17 ["PromptHeading"]
  NAMECALL R7 R0 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Heading"]
  LOADK R9 K16 ["ShareDialogView"]
  LOADK R10 K19 ["PromptBody"]
  NAMECALL R7 R0 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Body"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K20 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K22 [{"AssetModels"}]
  SETTABLEKS R4 R9 K21 ["AssetModels"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Contents"]
  JUMPIFNOT R1 [+25]
  GETTABLEKS R8 R1 K1 ["state"]
  JUMPIFNOTEQKS R8 K2 ["Prompt"] [+22]
  DUPTABLE R7 K26 [{"Label", "OnActivated", "Enabled"}]
  LOADK R10 K16 ["ShareDialogView"]
  LOADK R11 K27 ["PromptActionShare"]
  NAMECALL R8 R0 K18 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["Label"]
  SETTABLEKS R2 R7 K24 ["OnActivated"]
  GETIMPORT R9 K29 [next]
  MOVE R10 R4
  CALL R9 1 1
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K25 ["Enabled"]
  JUMP [+18]
  JUMPIFNOT R1 [+16]
  GETTABLEKS R8 R1 K1 ["state"]
  JUMPIFNOTEQKS R8 K3 ["Sharing"] [+13]
  DUPTABLE R7 K30 [{"Label", "Enabled"}]
  LOADK R10 K16 ["ShareDialogView"]
  LOADK R11 K31 ["PromptActionSharing"]
  NAMECALL R8 R0 K18 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["Label"]
  LOADB R8 0
  SETTABLEKS R8 R7 K25 ["Enabled"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K10 ["ActionPrimary"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K32 ["CLOSE"]
  DUPTABLE R9 K33 [{"OnActivated"}]
  SETTABLEKS R3 R9 K24 ["OnActivated"]
  GETIMPORT R10 K36 [table.clone]
  MOVE R11 R8
  CALL R10 1 1
  MOVE R11 R9
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  SETTABLE R15 R10 R14
  FORGLOOP R11 2 [-2]
  MOVE R7 R10
  SETTABLEKS R7 R6 K11 ["ActionSecondary"]
  LOADB R7 1
  SETTABLEKS R7 R6 K12 ["Modal"]
  LOADN R7 215
  SETTABLEKS R7 R6 K13 ["Width"]
  CALL R5 1 2
  GETUPVAL R7 2
  DUPTABLE R8 K37 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "Modal", "Width"}]
  LOADK R9 K38 ["Error"]
  SETTABLEKS R9 R8 K6 ["Intent"]
  LOADK R11 K16 ["ShareDialogView"]
  LOADK R12 K39 ["CantShareHeading"]
  NAMECALL R9 R0 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Heading"]
  LOADK R11 K16 ["ShareDialogView"]
  LOADK R12 K40 ["CantShareBody"]
  NAMECALL R9 R0 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Body"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K20 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K22 [{"AssetModels"}]
  SETTABLEKS R4 R11 K21 ["AssetModels"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["Contents"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K41 ["OK"]
  DUPTABLE R11 K33 [{"OnActivated"}]
  SETTABLEKS R3 R11 K24 ["OnActivated"]
  GETIMPORT R12 K36 [table.clone]
  MOVE R13 R10
  CALL R12 1 1
  MOVE R13 R11
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  SETTABLE R17 R12 R16
  FORGLOOP R13 2 [-2]
  MOVE R9 R12
  SETTABLEKS R9 R8 K10 ["ActionPrimary"]
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["Modal"]
  LOADN R9 215
  SETTABLEKS R9 R8 K13 ["Width"]
  CALL R7 1 2
  GETUPVAL R9 2
  DUPTABLE R10 K42 [{"Intent", "Heading", "Body", "ActionPrimary", "Modal"}]
  LOADK R11 K38 ["Error"]
  SETTABLEKS R11 R10 K6 ["Intent"]
  LOADK R13 K16 ["ShareDialogView"]
  LOADK R14 K43 ["UnexpectedErrorHeading"]
  NAMECALL R11 R0 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Heading"]
  LOADK R13 K16 ["ShareDialogView"]
  LOADK R14 K44 ["UnexpectedErrorBody"]
  NAMECALL R11 R0 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K8 ["Body"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K41 ["OK"]
  DUPTABLE R13 K33 [{"OnActivated"}]
  SETTABLEKS R3 R13 K24 ["OnActivated"]
  GETIMPORT R14 K36 [table.clone]
  MOVE R15 R12
  CALL R14 1 1
  MOVE R15 R13
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  SETTABLE R19 R14 R18
  FORGLOOP R15 2 [-2]
  MOVE R11 R14
  SETTABLEKS R11 R10 K10 ["ActionPrimary"]
  LOADB R11 1
  SETTABLEKS R11 R10 K12 ["Modal"]
  CALL R9 1 2
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K45 ["useEffect"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  NEWTABLE R13 0 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R14 R1 K1 ["state"]
  JUMP [+1]
  LOADK R14 K46 ["Inactive"]
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  LOADNIL R11
  RETURN R11 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetAccess"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["DialogAction"]
  GETTABLEKS R5 R1 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETTABLEKS R7 R1 K13 ["UI"]
  GETTABLEKS R6 R7 K14 ["Hooks"]
  GETTABLEKS R5 R6 K15 ["useDialog"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K16 ["Src"]
  GETTABLEKS R8 R9 K17 ["Components"]
  GETTABLEKS R7 R8 K18 ["AssetMetadataTable"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K16 ["Src"]
  GETTABLEKS R9 R10 K14 ["Hooks"]
  GETTABLEKS R8 R9 K19 ["useShareDialogModel"]
  CALL R7 1 1
  DUPCLOSURE R8 K20 [PROTO_0]
  DUPCLOSURE R9 K21 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R9 1
