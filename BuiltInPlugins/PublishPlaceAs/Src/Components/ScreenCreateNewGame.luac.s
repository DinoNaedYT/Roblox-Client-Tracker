PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selected"}]
  SETTABLEKS R0 R3 K0 ["selected"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ChangedOptInLocations"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 1
  GETTABLE R2 R1 R3
  JUMPIFEQKNIL R2 [+4]
  GETUPVAL R3 1
  GETTABLE R2 R1 R3
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_2:
  DUPTABLE R1 K3 [{"selected", "showEmailDialog", "bottomText"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["selected"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["showEmailDialog"]
  LOADK R2 K4 [""]
  SETTABLEKS R2 R1 K2 ["bottomText"]
  SETTABLEKS R1 R0 K5 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["finishedConnection"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["changeSelection"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K9 ["scrollingFrameRef"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K10 ["shouldShowEmailDialog"]
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R0 [+14]
  JUMPIFEQKN R1 K0 [0] [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["OpenPublishSuccessfulPage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["Changed"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K4 ["OpenPublishFailPage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["Changed"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GamePublishFinished"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K1 ["connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["finishedConnection"]
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["DispatchLoadGroups"]
  CALL R1 0 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K5 ["DispatchDataSharingDefault"]
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["finishedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["finishedConnection"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+14]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["shouldShowEmailDialog"]
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R0 1
  DUPTABLE R2 K2 [{"showEmailDialog"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["showEmailDialog"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+14]
  NEWTABLE R0 2 0
  GETUPVAL R1 2
  GETUPVAL R2 3
  SETTABLE R2 R0 R1
  GETUPVAL R1 4
  LOADB R2 0
  SETTABLE R2 R0 R1
  GETUPVAL R1 5
  GETUPVAL R2 6
  GETUPVAL R3 7
  GETUPVAL R4 8
  MOVE R5 R0
  CALL R1 4 0
  GETUPVAL R0 9
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R1 10
  GETTABLEKS R0 R1 K4 ["saveAll"]
  GETUPVAL R1 11
  GETUPVAL R2 12
  GETUPVAL R3 13
  LOADNIL R4
  GETUPVAL R5 14
  GETUPVAL R7 15
  GETTABLEKS R6 R7 K5 ["OwnedGroups"]
  CALL R0 6 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"showEmailDialog", "bottomText"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showEmailDialog"]
  LOADK R3 K3 [""]
  SETTABLEKS R3 R2 K1 ["bottomText"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  JUMPIFEQKS R0 K0 ["Submit"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+57]
  NEWTABLE R4 2 0
  GETUPVAL R5 0
  GETUPVAL R6 1
  SETTABLE R6 R4 R5
  GETUPVAL R5 2
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETUPVAL R5 3
  GETUPVAL R6 4
  GETUPVAL R7 5
  GETUPVAL R8 6
  MOVE R9 R4
  CALL R5 4 0
  JUMPIFNOTEQ R1 R2 [+28]
  GETUPVAL R5 7
  DUPTABLE R7 K3 [{"showEmailDialog", "bottomText"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K1 ["showEmailDialog"]
  LOADK R8 K4 [""]
  SETTABLEKS R8 R7 K2 ["bottomText"]
  NAMECALL R5 R5 K5 ["setState"]
  CALL R5 2 0
  GETUPVAL R5 8
  LOADB R6 1
  CALL R5 1 0
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K6 ["saveAll"]
  GETUPVAL R6 10
  GETUPVAL R7 11
  GETUPVAL R8 12
  MOVE R9 R1
  GETUPVAL R10 13
  GETUPVAL R12 14
  GETTABLEKS R11 R12 K7 ["OwnedGroups"]
  CALL R5 6 0
  RETURN R0 0
  GETUPVAL R5 7
  DUPTABLE R7 K8 [{"bottomText"}]
  GETUPVAL R8 11
  GETUPVAL R10 0
  LOADK R11 K9 ["ErrorEmailNotEqual"]
  NAMECALL R8 R8 K10 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K2 ["bottomText"]
  NAMECALL R5 R5 K5 ["setState"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R4 7
  DUPTABLE R6 K3 [{"showEmailDialog", "bottomText"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K1 ["showEmailDialog"]
  LOADK R7 K4 [""]
  SETTABLEKS R7 R6 K2 ["bottomText"]
  NAMECALL R4 R4 K5 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["API"]
  NAMECALL R4 R4 K4 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K5 ["OnClose"]
  GETTABLEKS R6 R1 K6 ["ReadyToSave"]
  GETTABLEKS R7 R1 K7 ["IsPublishing"]
  GETTABLEKS R8 R1 K8 ["Changed"]
  GETTABLEKS R9 R1 K9 ["IsPublish"]
  GETTABLEKS R10 R1 K10 ["dispatchSetIsPublishing"]
  GETTABLEKS R12 R0 K11 ["state"]
  GETTABLEKS R11 R12 K12 ["selected"]
  LOADNIL R12
  JUMPIFNOT R9 [+2]
  LOADK R12 K13 ["Create"]
  JUMP [+1]
  LOADK R12 K14 ["Save"]
  DUPTABLE R13 K19 [{"MenuBar", "Separator", "Page", "Footer"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K24 [{"Entries", "Selected", "SelectionChanged"}]
  GETUPVAL R17 2
  SETTABLEKS R17 R16 K21 ["Entries"]
  SETTABLEKS R11 R16 K22 ["Selected"]
  GETTABLEKS R17 R0 K25 ["changeSelection"]
  SETTABLEKS R17 R16 K23 ["SelectionChanged"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K15 ["MenuBar"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K28 [{"Position", "DominantAxis"}]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R2 K32 ["MENU_BAR_WIDTH"]
  LOADK R20 K33 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K26 ["Position"]
  GETIMPORT R17 K36 [Enum.DominantAxis.Height]
  SETTABLEKS R17 R16 K27 ["DominantAxis"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["Separator"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["createElement"]
  LOADK R15 K37 ["Frame"]
  DUPTABLE R16 K40 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K38 ["BackgroundTransparency"]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R2 K32 ["MENU_BAR_WIDTH"]
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K26 ["Position"]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 1
  GETTABLEKS R20 R2 K32 ["MENU_BAR_WIDTH"]
  MINUS R19 R20
  LOADN R20 1
  GETTABLEKS R22 R2 K41 ["FOOTER_HEIGHT"]
  MINUS R21 R22
  CALL R17 4 1
  SETTABLEKS R17 R16 K39 ["Size"]
  NEWTABLE R17 0 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K20 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K42 [{"IsPublish"}]
  SETTABLEKS R9 R20 K9 ["IsPublish"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  SETTABLEKS R14 R13 K17 ["Page"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K46 [{"MainButton", "OnClose", "NextScreen", "NextScreenText", "IsPublish"}]
  DUPTABLE R17 K50 [{"Name", "Active", "OnActivated"}]
  SETTABLEKS R12 R17 K47 ["Name"]
  MOVE R18 R6
  JUMPIFNOT R18 [+1]
  NOT R18 R7
  SETTABLEKS R18 R17 K48 ["Active"]
  NEWCLOSURE R18 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE VAL R10
  CAPTURE UPVAL U14
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K49 ["OnActivated"]
  SETTABLEKS R17 R16 K43 ["MainButton"]
  SETTABLEKS R5 R16 K5 ["OnClose"]
  GETUPVAL R19 15
  GETTABLEKS R18 R19 K51 ["SCREENS"]
  GETTABLEKS R17 R18 K52 ["CHOOSE_GAME"]
  SETTABLEKS R17 R16 K44 ["NextScreen"]
  LOADK R17 K53 ["UpdateExistingGame"]
  SETTABLEKS R17 R16 K45 ["NextScreenText"]
  SETTABLEKS R9 R16 K9 ["IsPublish"]
  DUPTABLE R17 K55 [{"EmailDialog"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K20 ["createElement"]
  GETUPVAL R19 16
  DUPTABLE R20 K64 [{"Enabled", "Size", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
  GETTABLEKS R22 R0 K11 ["state"]
  GETTABLEKS R21 R22 K65 ["showEmailDialog"]
  SETTABLEKS R21 R20 K56 ["Enabled"]
  GETIMPORT R21 K67 [Vector2.new]
  GETTABLEKS R24 R2 K68 ["emailDialog"]
  GETTABLEKS R23 R24 K39 ["Size"]
  GETTABLEKS R22 R23 K69 ["X"]
  GETTABLEKS R25 R2 K68 ["emailDialog"]
  GETTABLEKS R24 R25 K39 ["Size"]
  GETTABLEKS R23 R24 K70 ["Y"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["Size"]
  GETUPVAL R23 7
  LOADK R24 K71 ["EmailDialogHeader"]
  NAMECALL R21 R3 K72 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K57 ["Title"]
  GETUPVAL R23 7
  LOADK R24 K71 ["EmailDialogHeader"]
  NAMECALL R21 R3 K72 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K58 ["Header"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K75 [{"Key", "Text"}]
  LOADK R23 K76 ["Submit"]
  SETTABLEKS R23 R22 K73 ["Key"]
  LOADK R25 K77 ["Button"]
  LOADK R26 K76 ["Submit"]
  NAMECALL R23 R3 K72 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K74 ["Text"]
  DUPTABLE R23 K75 [{"Key", "Text"}]
  LOADK R24 K78 ["Cancel"]
  SETTABLEKS R24 R23 K73 ["Key"]
  LOADK R26 K77 ["Button"]
  LOADK R27 K78 ["Cancel"]
  NAMECALL R24 R3 K72 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K74 ["Text"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K59 ["Buttons"]
  GETUPVAL R23 7
  LOADK R24 K79 ["EmailDialogBody"]
  NAMECALL R21 R3 K72 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K60 ["Body"]
  GETUPVAL R23 7
  LOADK R24 K80 ["EmailDialogDescription"]
  NAMECALL R21 R3 K72 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K61 ["Description"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K82 [{"PlaceholderText"}]
  GETUPVAL R25 7
  LOADK R26 K83 ["EmailAddress"]
  NAMECALL R23 R3 K72 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K81 ["PlaceholderText"]
  DUPTABLE R23 K85 [{"PlaceholderText", "BottomText"}]
  GETUPVAL R26 7
  LOADK R27 K86 ["ConfirmEmailAddress"]
  NAMECALL R24 R3 K72 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K81 ["PlaceholderText"]
  GETTABLEKS R25 R0 K11 ["state"]
  GETTABLEKS R24 R25 K87 ["bottomText"]
  SETTABLEKS R24 R23 K84 ["BottomText"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K62 ["TextInput"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R0
  SETTABLEKS R21 R20 K5 ["OnClose"]
  NEWCLOSURE R21 P2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE UPVAL U14
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R21 R20 K63 ["OnButtonPressed"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["EmailDialog"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K18 ["Footer"]
  GETUPVAL R14 17
  CALL R14 0 1
  JUMPIF R14 [+1]
  JUMPIFNOT R9 [+68]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["createElement"]
  GETUPVAL R15 18
  NEWTABLE R16 8 0
  LOADN R17 1
  SETTABLEKS R17 R16 K38 ["BackgroundTransparency"]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R2 K32 ["MENU_BAR_WIDTH"]
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K26 ["Position"]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 1
  GETTABLEKS R20 R2 K32 ["MENU_BAR_WIDTH"]
  MINUS R19 R20
  LOADN R20 1
  GETTABLEKS R22 R2 K41 ["FOOTER_HEIGHT"]
  MINUS R21 R22
  CALL R17 4 1
  SETTABLEKS R17 R16 K39 ["Size"]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 1
  GETTABLEKS R20 R2 K32 ["MENU_BAR_WIDTH"]
  MINUS R19 R20
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K88 ["CanvasSize"]
  GETIMPORT R17 K90 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K91 ["AutomaticCanvasSize"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K92 ["Ref"]
  GETTABLEKS R18 R0 K93 ["scrollingFrameRef"]
  SETTABLE R18 R16 R17
  NEWTABLE R17 0 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K20 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K42 [{"IsPublish"}]
  SETTABLEKS R9 R20 K9 ["IsPublish"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  SETTABLEKS R14 R13 K17 ["Page"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["createElement"]
  LOADK R15 K37 ["Frame"]
  DUPTABLE R16 K95 [{"Size", "BackgroundColor3"}]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K39 ["Size"]
  GETTABLEKS R17 R2 K96 ["backgroundColor"]
  SETTABLEKS R17 R16 K94 ["BackgroundColor3"]
  MOVE R17 R13
  CALL R14 3 -1
  RETURN R14 -1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["NewGameSettings"]
  LOADNIL R3
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K1 ["GroupsHavePermission"]
  GETTABLEKS R4 R5 K2 ["groupInfo"]
  GETTABLEKS R3 R4 K3 ["ownedGroups"]
  DUPTABLE R4 K9 [{"Changed", "ReadyToSave", "IsPublishing", "ChangedOptInLocations", "OwnedGroups"}]
  GETTABLEKS R5 R2 K10 ["changed"]
  SETTABLEKS R5 R4 K4 ["Changed"]
  GETIMPORT R6 K12 [next]
  GETTABLEKS R7 R2 K13 ["errors"]
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["ReadyToSave"]
  GETTABLEKS R6 R0 K14 ["PublishedPlace"]
  GETTABLEKS R5 R6 K15 ["isPublishing"]
  SETTABLEKS R5 R4 K6 ["IsPublishing"]
  GETTABLEKS R6 R2 K10 ["changed"]
  GETTABLEKS R5 R6 K16 ["OptInLocations"]
  SETTABLEKS R5 R4 K7 ["ChangedOptInLocations"]
  SETTABLEKS R3 R4 K8 ["OwnedGroups"]
  RETURN R4 1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"id", "name", "parentGameName"}]
  GETIMPORT R5 K5 [game]
  GETTABLEKS R4 R5 K6 ["GameId"]
  SETTABLEKS R4 R3 K0 ["id"]
  GETTABLEKS R4 R0 K1 ["name"]
  SETTABLEKS R4 R3 K1 ["name"]
  GETTABLEKS R4 R0 K1 ["name"]
  SETTABLEKS R4 R3 K2 ["parentGameName"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["SCREENS"]
  GETTABLEKS R3 R4 K8 ["PUBLISH_SUCCESSFUL"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"id", "name", "parentGameName", "parentGameId", "settings", "failed"}]
  GETIMPORT R5 K8 [game]
  GETTABLEKS R4 R5 K9 ["GameId"]
  SETTABLEKS R4 R3 K0 ["id"]
  GETTABLEKS R4 R0 K1 ["name"]
  SETTABLEKS R4 R3 K1 ["name"]
  GETTABLEKS R4 R0 K1 ["name"]
  SETTABLEKS R4 R3 K2 ["parentGameName"]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["parentGameId"]
  SETTABLEKS R0 R3 K4 ["settings"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["failed"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["SCREENS"]
  GETTABLEKS R3 R4 K11 ["PUBLISH_FAIL"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  CALL R1 0 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R0 K1 [assert]
  CALL R0 -1 0
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["name"]
  GETTABLEKS R4 R0 K0 ["name"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETTABLEKS R1 R0 K1 ["description"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K1 ["description"]
  GETTABLEKS R4 R0 K1 ["description"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETTABLEKS R1 R0 K2 ["genre"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K2 ["genre"]
  GETTABLEKS R4 R0 K2 ["genre"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R1 K6 [{"OpenPublishSuccessfulPage", "OpenPublishFailPage", "DispatchLoadGroups", "DispatchDataSharingDefault", "dispatchSetIsPublishing", "dispatchSetExistingUniverseConfiguration"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K0 ["OpenPublishSuccessfulPage"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["OpenPublishFailPage"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["DispatchLoadGroups"]
  NEWCLOSURE R2 P3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K3 ["DispatchDataSharingDefault"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K4 ["dispatchSetIsPublishing"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K5 ["dispatchSetExistingUniverseConfiguration"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["ScrollingFrame"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["Network"]
  GETTABLEKS R10 R11 K15 ["Requests"]
  GETTABLEKS R9 R10 K16 ["SettingsImpl"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K17 ["Resources"]
  GETTABLEKS R10 R11 K18 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R11 R3 K11 ["UI"]
  GETTABLEKS R10 R11 K19 ["Separator"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K13 ["Src"]
  GETTABLEKS R14 R15 K20 ["Components"]
  GETTABLEKS R13 R14 K21 ["Menu"]
  GETTABLEKS R12 R13 K22 ["MenuBar"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K13 ["Src"]
  GETTABLEKS R14 R15 K20 ["Components"]
  GETTABLEKS R13 R14 K23 ["Footer"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K13 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K24 ["BasicInfo"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K13 ["Src"]
  GETTABLEKS R16 R17 K25 ["Actions"]
  GETTABLEKS R15 R16 K26 ["AddChange"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K25 ["Actions"]
  GETTABLEKS R16 R17 K27 ["SetIsPublishing"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K13 ["Src"]
  GETTABLEKS R18 R19 K25 ["Actions"]
  GETTABLEKS R17 R18 K28 ["SetScreen"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K13 ["Src"]
  GETTABLEKS R19 R20 K25 ["Actions"]
  GETTABLEKS R18 R19 K29 ["SetPublishInfo"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K13 ["Src"]
  GETTABLEKS R20 R21 K30 ["Thunks"]
  GETTABLEKS R19 R20 K31 ["LoadGroups"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K13 ["Src"]
  GETTABLEKS R21 R22 K30 ["Thunks"]
  GETTABLEKS R20 R21 K32 ["LoadDataSharingDefault"]
  CALL R19 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K13 ["Src"]
  GETTABLEKS R23 R24 K33 ["Util"]
  GETTABLEKS R22 R23 K34 ["PublishPlaceAsUtilities"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K35 ["shouldShowDevPublishLocations"]
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K13 ["Src"]
  GETTABLEKS R24 R25 K33 ["Util"]
  GETTABLEKS R23 R24 K34 ["PublishPlaceAsUtilities"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K36 ["sendAnalyticsToKibana"]
  GETIMPORT R22 K38 [game]
  LOADK R24 K39 ["LuobuDevPublishAnalyticsHundredthsPercentage"]
  NAMECALL R22 R22 K40 ["GetFastInt"]
  CALL R22 2 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K13 ["Src"]
  GETTABLEKS R25 R26 K41 ["Flags"]
  GETTABLEKS R24 R25 K42 ["getFFlagCAP1107"]
  CALL R23 1 1
  GETTABLEKS R25 R3 K11 ["UI"]
  GETTABLEKS R24 R25 K43 ["TextInputDialog"]
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K33 ["Util"]
  GETTABLEKS R26 R27 K44 ["KeyProvider"]
  CALL R25 1 1
  GETTABLEKS R26 R25 K45 ["getOptInLocationsKeyName"]
  CALL R26 0 1
  GETTABLEKS R27 R25 K46 ["getChinaKeyName"]
  CALL R27 0 1
  GETTABLEKS R28 R25 K47 ["getLuobuStudioDevPublishKeyName"]
  CALL R28 0 1
  GETTABLEKS R29 R25 K48 ["getSelectedKeyName"]
  CALL R29 0 1
  GETTABLEKS R30 R25 K49 ["getCreateNewGameKeyName"]
  CALL R30 0 1
  GETIMPORT R31 K38 [game]
  LOADK R33 K50 ["StudioPublishService"]
  NAMECALL R31 R31 K51 ["GetService"]
  CALL R31 2 1
  NEWTABLE R32 0 1
  LOADK R33 K24 ["BasicInfo"]
  SETLIST R32 R33 1 [1]
  GETTABLEKS R33 R1 K52 ["PureComponent"]
  LOADK R35 K53 ["ScreenCreateNewGame"]
  NAMECALL R33 R33 K54 ["extend"]
  CALL R33 2 1
  DUPCLOSURE R34 K55 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R27
  SETTABLEKS R34 R33 K56 ["init"]
  DUPCLOSURE R34 K57 [PROTO_4]
  CAPTURE VAL R31
  CAPTURE VAL R23
  SETTABLEKS R34 R33 K58 ["didMount"]
  DUPCLOSURE R34 K59 [PROTO_5]
  SETTABLEKS R34 R33 K60 ["willUnmount"]
  DUPCLOSURE R34 K61 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R32
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R20
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R29
  CAPTURE VAL R21
  CAPTURE VAL R28
  CAPTURE VAL R22
  CAPTURE VAL R30
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R7
  SETTABLEKS R34 R33 K62 ["render"]
  MOVE R34 R5
  DUPTABLE R35 K66 [{"Stylizer", "Localization", "API"}]
  GETTABLEKS R36 R4 K63 ["Stylizer"]
  SETTABLEKS R36 R35 K63 ["Stylizer"]
  GETTABLEKS R36 R4 K64 ["Localization"]
  SETTABLEKS R36 R35 K64 ["Localization"]
  GETTABLEKS R36 R4 K65 ["API"]
  SETTABLEKS R36 R35 K65 ["API"]
  CALL R34 1 1
  MOVE R35 R33
  CALL R34 1 1
  MOVE R33 R34
  DUPCLOSURE R34 K67 [PROTO_10]
  CAPTURE VAL R23
  DUPCLOSURE R35 K68 [PROTO_17]
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R23
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R14
  GETTABLEKS R36 R2 K69 ["connect"]
  MOVE R37 R34
  MOVE R38 R35
  CALL R36 2 1
  MOVE R37 R33
  CALL R36 1 -1
  RETURN R36 -1
