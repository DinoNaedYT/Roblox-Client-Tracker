PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Writable"]
  GETTABLEKS R4 R1 K3 ["NewUserCollaborators"]
  GETTABLEKS R5 R1 K4 ["CurrentUserCollaborators"]
  GETTABLEKS R6 R1 K5 ["NewGroupCollaborators"]
  GETTABLEKS R7 R1 K6 ["CurrentGroupCollaborators"]
  GETTABLEKS R8 R1 K7 ["OwnerId"]
  GETTABLEKS R9 R1 K8 ["OwnerType"]
  GETUPVAL R11 0
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K9 ["IsGroupGame"]
  JUMP [+1]
  LOADNIL R10
  NEWTABLE R11 0 0
  GETIMPORT R13 K13 [Enum.CreatorType.User]
  JUMPIFNOTEQ R9 R13 [+3]
  LOADB R12 1
  JUMP [+1]
  LOADB R12 0
  JUMPIFNOT R12 [+2]
  GETUPVAL R13 1
  JUMP [+1]
  GETUPVAL R13 2
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K14 ["new"]
  CALL R14 0 1
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K15 ["createElement"]
  MOVE R16 R13
  DUPTABLE R17 K18 [{"Id", "Writable", "LayoutOrder", "HideSeparator", "IsGroupGame"}]
  SETTABLEKS R8 R17 K16 ["Id"]
  SETTABLEKS R3 R17 K2 ["Writable"]
  NAMECALL R18 R14 K19 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  LOADB R18 0
  SETTABLEKS R18 R17 K17 ["HideSeparator"]
  SETTABLEKS R10 R17 K9 ["IsGroupGame"]
  CALL R15 2 1
  FASTCALL2 TABLE_INSERT R11 R15 [+5]
  MOVE R17 R11
  MOVE R18 R15
  GETIMPORT R16 K22 [table.insert]
  CALL R16 2 0
  GETIMPORT R16 K24 [pairs]
  MOVE R17 R4
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 1
  DUPTABLE R23 K25 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame"}]
  NAMECALL R24 R14 K19 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K1 ["LayoutOrder"]
  SETTABLEKS R3 R23 K2 ["Writable"]
  SETTABLEKS R20 R23 K16 ["Id"]
  LOADB R24 0
  SETTABLEKS R24 R23 K17 ["HideSeparator"]
  SETTABLEKS R10 R23 K9 ["IsGroupGame"]
  CALL R21 2 1
  FASTCALL2 TABLE_INSERT R11 R21 [+5]
  MOVE R23 R11
  MOVE R24 R21
  GETIMPORT R22 K22 [table.insert]
  CALL R22 2 0
  FORGLOOP R16 2 [-28]
  GETIMPORT R16 K24 [pairs]
  MOVE R17 R6
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K27 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame"}]
  NAMECALL R24 R14 K19 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K1 ["LayoutOrder"]
  SETTABLEKS R3 R23 K2 ["Writable"]
  SETTABLEKS R20 R23 K16 ["Id"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K28 ["MultipleKey"]
  SETTABLEKS R24 R23 K26 ["CurrentPermission"]
  LOADB R24 0
  SETTABLEKS R24 R23 K17 ["HideSeparator"]
  SETTABLEKS R10 R23 K9 ["IsGroupGame"]
  CALL R21 2 1
  FASTCALL2 TABLE_INSERT R11 R21 [+5]
  MOVE R23 R11
  MOVE R24 R21
  GETIMPORT R22 K22 [table.insert]
  CALL R22 2 0
  FORGLOOP R16 2 [-33]
  GETIMPORT R16 K24 [pairs]
  MOVE R17 R5
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 1
  DUPTABLE R23 K25 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame"}]
  NAMECALL R24 R14 K19 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K1 ["LayoutOrder"]
  SETTABLEKS R3 R23 K2 ["Writable"]
  SETTABLEKS R20 R23 K16 ["Id"]
  LOADB R24 0
  SETTABLEKS R24 R23 K17 ["HideSeparator"]
  SETTABLEKS R10 R23 K9 ["IsGroupGame"]
  CALL R21 2 1
  FASTCALL2 TABLE_INSERT R11 R21 [+5]
  MOVE R23 R11
  MOVE R24 R21
  GETIMPORT R22 K22 [table.insert]
  CALL R22 2 0
  FORGLOOP R16 2 [-28]
  GETIMPORT R16 K24 [pairs]
  MOVE R17 R7
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K27 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame"}]
  NAMECALL R24 R14 K19 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K1 ["LayoutOrder"]
  SETTABLEKS R3 R23 K2 ["Writable"]
  SETTABLEKS R20 R23 K16 ["Id"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K28 ["MultipleKey"]
  SETTABLEKS R24 R23 K26 ["CurrentPermission"]
  LOADB R24 0
  SETTABLEKS R24 R23 K17 ["HideSeparator"]
  SETTABLEKS R10 R23 K9 ["IsGroupGame"]
  CALL R21 2 1
  FASTCALL2 TABLE_INSERT R11 R21 [+5]
  MOVE R23 R11
  MOVE R24 R21
  GETIMPORT R22 K22 [table.insert]
  CALL R22 2 0
  FORGLOOP R16 2 [-33]
  LENGTH R18 R11
  GETTABLE R17 R11 R18
  GETTABLEKS R16 R17 K0 ["props"]
  LOADB R17 1
  SETTABLEKS R17 R16 K17 ["HideSeparator"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K15 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K30 [{"LayoutOrder", "BackgroundTransparency"}]
  SETTABLEKS R2 R18 K1 ["LayoutOrder"]
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["BackgroundTransparency"]
  NEWTABLE R19 0 1
  MOVE R20 R11
  SETLIST R19 R20 1 [1]
  CALL R16 3 -1
  RETURN R16 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 2
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 2
  DUPTABLE R6 K6 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "OwnerId", "OwnerType"}]
  SETTABLEKS R2 R6 K0 ["NewUserCollaborators"]
  SETTABLEKS R3 R6 K1 ["CurrentUserCollaborators"]
  SETTABLEKS R4 R6 K2 ["NewGroupCollaborators"]
  SETTABLEKS R5 R6 K3 ["CurrentGroupCollaborators"]
  GETTABLEKS R8 R0 K7 ["GameOwnerMetadata"]
  GETTABLEKS R7 R8 K8 ["creatorId"]
  SETTABLEKS R7 R6 K4 ["OwnerId"]
  GETTABLEKS R8 R0 K7 ["GameOwnerMetadata"]
  GETTABLEKS R7 R8 K9 ["creatorType"]
  SETTABLEKS R7 R6 K5 ["OwnerType"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["COLLAB2850_FixMcTooltips"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["ContextServices"]
  GETTABLEKS R5 R4 K14 ["withContext"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K15 ["Style"]
  GETTABLEKS R7 R8 K16 ["Stylizer"]
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Util"]
  GETTABLEKS R9 R10 K19 ["CreateFitToContent"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K17 ["Src"]
  GETTABLEKS R11 R12 K20 ["Components"]
  GETTABLEKS R10 R11 K21 ["UserCollaboratorItem"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K17 ["Src"]
  GETTABLEKS R12 R13 K20 ["Components"]
  GETTABLEKS R11 R12 K22 ["GroupCollaboratorItem"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K17 ["Src"]
  GETTABLEKS R13 R14 K23 ["Selectors"]
  GETTABLEKS R12 R13 K24 ["GetUserCollaborators"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K17 ["Src"]
  GETTABLEKS R14 R15 K23 ["Selectors"]
  GETTABLEKS R13 R14 K25 ["GetGroupCollaborators"]
  CALL R12 1 1
  GETTABLEKS R13 R6 K18 ["Util"]
  GETTABLEKS R14 R13 K26 ["LayoutOrderIterator"]
  MOVE R15 R8
  LOADK R16 K27 ["Frame"]
  LOADK R17 K28 ["UIListLayout"]
  DUPTABLE R18 K33 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
  GETIMPORT R19 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K29 ["SortOrder"]
  GETIMPORT R19 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K30 ["FillDirection"]
  GETIMPORT R19 K41 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["Padding"]
  GETIMPORT R19 K43 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R19 R18 K32 ["HorizontalAlignment"]
  CALL R15 3 1
  GETTABLEKS R16 R2 K44 ["PureComponent"]
  LOADK R18 K45 ["CollaboratorsWidget"]
  NAMECALL R16 R16 K46 ["extend"]
  CALL R16 2 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R20 R1 K17 ["Src"]
  GETTABLEKS R19 R20 K18 ["Util"]
  GETTABLEKS R18 R19 K47 ["PermissionsConstants"]
  CALL R17 1 1
  DUPCLOSURE R18 K48 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R15
  SETTABLEKS R18 R16 K49 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K51 [{"Stylizer", "Localization"}]
  SETTABLEKS R7 R19 K16 ["Stylizer"]
  GETTABLEKS R20 R4 K50 ["Localization"]
  SETTABLEKS R20 R19 K50 ["Localization"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  GETTABLEKS R18 R3 K52 ["connect"]
  DUPCLOSURE R19 K53 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  RETURN R16 1
