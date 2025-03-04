PROTO_0:
  LOADK R2 K0 ["rbxthumb://type=GameIcon&id=%*&w=50&h=50"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  LOADK R2 K0 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  LOADK R2 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=48&h=48"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_3:
  LOADK R2 K0 ["rbxthumb://type=BadgeIcon&id=%*&w=150&h=150"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_4:
  LOADK R1 K0 [""]
  RETURN R1 1

PROTO_5:
  LOADK R2 K0 ["rbxthumb://type=GamePass&id=%*&w=150&h=150"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_6:
  LOADK R2 K0 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_7:
  GETUPVAL R7 0
  GETTABLEKS R3 R7 K0 ["createPath"]
  LOADK R4 K1 ["dashboard/creations/experiences/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K3 [tostring]
  CALL R7 1 1
  MOVE R5 R7
  LOADK R6 K4 ["/overview"]
  CONCAT R2 R3 R6
  RETURN R2 1

PROTO_8:
  GETUPVAL R6 0
  GETTABLEKS R3 R6 K0 ["wwwPath"]
  LOADK R4 K1 ["games/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K3 [tostring]
  CALL R5 1 1
  CONCAT R2 R3 R5
  RETURN R2 1

PROTO_9:
  GETUPVAL R7 0
  GETTABLEKS R3 R7 K0 ["wwwPath"]
  LOADK R4 K1 ["users/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K3 [tostring]
  CALL R7 1 1
  MOVE R5 R7
  LOADK R6 K4 ["/profile"]
  CONCAT R2 R3 R6
  RETURN R2 1

PROTO_10:
  GETUPVAL R9 0
  GETTABLEKS R3 R9 K0 ["createPath"]
  LOADK R4 K1 ["dashboard/creations/experiences/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  MOVE R5 R9
  LOADK R6 K4 ["/badges/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  MOVE R7 R9
  LOADK R8 K5 ["/overview"]
  CONCAT R2 R3 R8
  RETURN R2 1

PROTO_11:
  GETUPVAL R9 0
  GETTABLEKS R3 R9 K0 ["createPath"]
  LOADK R4 K1 ["dashboard/creations/experiences/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  MOVE R5 R9
  LOADK R6 K4 ["/developer-products/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  MOVE R7 R9
  LOADK R8 K5 ["/configure"]
  CONCAT R2 R3 R8
  RETURN R2 1

PROTO_12:
  GETUPVAL R9 0
  GETTABLEKS R3 R9 K0 ["createPath"]
  LOADK R4 K1 ["dashboard/creations/experiences/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  MOVE R5 R9
  LOADK R6 K4 ["/passes/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K3 [tostring]
  CALL R9 1 1
  MOVE R7 R9
  LOADK R8 K5 ["/configure"]
  CONCAT R2 R3 R8
  RETURN R2 1

PROTO_13:
  GETUPVAL R6 0
  GETTABLEKS R3 R6 K0 ["wwwPath"]
  LOADK R4 K1 ["groups/"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K3 [tostring]
  CALL R5 1 1
  CONCAT R2 R3 R5
  RETURN R2 1

PROTO_14:
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [tostring]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
  LOADK R3 K2 [""]
  RETURN R3 1

PROTO_15:
  JUMPIFNOTEQKS R0 K0 ["User"] [+3]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_16:
  NEWTABLE R0 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Bubble"]
  GETTABLEKS R1 R2 K1 ["viewBasicSettingsLink"]
  JUMPIFNOT R1 [+11]
  MOVE R2 R0
  GETUPVAL R3 1
  LOADK R5 K0 ["Bubble"]
  LOADK R6 K2 ["ViewOnCreatorDashboard"]
  NAMECALL R3 R3 K3 ["getText"]
  CALL R3 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K6 [table.insert]
  CALL R1 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Bubble"]
  GETTABLEKS R1 R2 K7 ["viewOnRobloxLink"]
  JUMPIFNOT R1 [+11]
  MOVE R2 R0
  GETUPVAL R3 1
  LOADK R5 K0 ["Bubble"]
  LOADK R6 K8 ["ViewOnRoblox"]
  NAMECALL R3 R3 K3 ["getText"]
  CALL R3 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K6 [table.insert]
  CALL R1 -1 0
  RETURN R0 1

PROTO_17:
  NEWTABLE R0 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Bubble"]
  GETTABLEKS R1 R2 K1 ["viewBasicSettingsLink"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Bubble"]
  GETTABLEKS R3 R4 K1 ["viewBasicSettingsLink"]
  FASTCALL2 TABLE_INSERT R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Bubble"]
  GETTABLEKS R1 R2 K5 ["viewOnRobloxLink"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Bubble"]
  GETTABLEKS R3 R4 K5 ["viewOnRobloxLink"]
  FASTCALL2 TABLE_INSERT R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 2 0
  RETURN R0 1

PROTO_18:
  GETUPVAL R2 0
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["openBrowserLink"]
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["openBrowserLink"]
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Bubble"]
  GETTABLEKS R2 R3 K2 ["universeId"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Bubble"]
  GETTABLEKS R3 R4 K3 ["iconId"]
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["openBrowserLink"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["User"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["Bubble"]
  GETTABLEKS R3 R4 K3 ["universeId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K5 [tostring]
  CALL R2 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["Bubble"]
  GETTABLEKS R4 R5 K6 ["actorId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K5 [tostring]
  CALL R3 1 1
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  LOADB R5 1
  GETTABLEKS R7 R0 K3 ["Bubble"]
  GETTABLEKS R6 R7 K4 ["viewBasicSettingsLink"]
  JUMPIFNOTEQKNIL R6 [+9]
  GETTABLEKS R7 R0 K3 ["Bubble"]
  GETTABLEKS R6 R7 K5 ["viewOnRobloxLink"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["useMemo"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R8 0 2
  GETTABLEKS R10 R0 K3 ["Bubble"]
  GETTABLEKS R9 R10 K4 ["viewBasicSettingsLink"]
  GETTABLEKS R11 R0 K3 ["Bubble"]
  GETTABLEKS R10 R11 K5 ["viewOnRobloxLink"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["useMemo"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  NEWTABLE R9 0 2
  GETTABLEKS R11 R0 K3 ["Bubble"]
  GETTABLEKS R10 R11 K4 ["viewBasicSettingsLink"]
  GETTABLEKS R12 R0 K3 ["Bubble"]
  GETTABLEKS R11 R12 K5 ["viewOnRobloxLink"]
  SETLIST R9 R10 2 [1]
  CALL R7 2 1
  NEWCLOSURE R8 P2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R2
  NEWCLOSURE R9 P3
  CAPTURE VAL R4
  NEWCLOSURE R10 P4
  CAPTURE VAL R4
  GETUPVAL R12 3
  GETTABLEKS R14 R0 K3 ["Bubble"]
  GETTABLEKS R13 R14 K7 ["iconType"]
  GETTABLE R11 R12 R13
  LOADNIL R12
  JUMPIFNOT R11 [+71]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K9 ["ImageButton"]
  NEWTABLE R15 4 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["Tag"]
  GETTABLEKS R20 R0 K3 ["Bubble"]
  GETTABLEKS R19 R20 K7 ["iconType"]
  JUMPIFNOTEQKS R19 K11 ["User"] [+3]
  LOADB R18 1
  JUMP [+1]
  LOADB R18 0
  JUMPIFNOT R18 [+4]
  GETUPVAL R17 4
  LOADK R18 K12 ["RoundIcon"]
  CALL R17 1 1
  JUMPIF R17 [+3]
  GETUPVAL R17 4
  LOADK R18 K13 ["SquareIcon"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R18 R0 K3 ["Bubble"]
  GETTABLEKS R17 R18 K7 ["iconType"]
  GETTABLEKS R19 R0 K3 ["Bubble"]
  GETTABLEKS R18 R19 K14 ["iconId"]
  FASTCALL1 TOSTRING R18 [+3]
  MOVE R20 R18
  GETIMPORT R19 K16 [tostring]
  CALL R19 1 1
  GETUPVAL R21 5
  GETTABLE R20 R21 R17
  JUMPIFNOT R20 [+6]
  GETUPVAL R21 5
  GETTABLE R20 R21 R17
  MOVE R21 R19
  CALL R20 1 1
  MOVE R16 R20
  JUMP [+1]
  LOADK R16 K17 [""]
  SETTABLEKS R16 R15 K18 ["Image"]
  GETUPVAL R16 6
  NAMECALL R16 R16 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K20 ["LayoutOrder"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K22 ["Activated"]
  NEWCLOSURE R17 P5
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R0
  SETTABLE R17 R15 R16
  CALL R13 2 1
  MOVE R12 R13
  JUMP [+60]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K23 ["ImageLabel"]
  NEWTABLE R15 4 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["Tag"]
  GETTABLEKS R20 R0 K3 ["Bubble"]
  GETTABLEKS R19 R20 K7 ["iconType"]
  JUMPIFNOTEQKS R19 K11 ["User"] [+3]
  LOADB R18 1
  JUMP [+1]
  LOADB R18 0
  JUMPIFNOT R18 [+4]
  GETUPVAL R17 4
  LOADK R18 K12 ["RoundIcon"]
  CALL R17 1 1
  JUMPIF R17 [+3]
  GETUPVAL R17 4
  LOADK R18 K13 ["SquareIcon"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R18 R0 K3 ["Bubble"]
  GETTABLEKS R17 R18 K7 ["iconType"]
  GETTABLEKS R19 R0 K3 ["Bubble"]
  GETTABLEKS R18 R19 K14 ["iconId"]
  FASTCALL1 TOSTRING R18 [+3]
  MOVE R20 R18
  GETIMPORT R19 K16 [tostring]
  CALL R19 1 1
  GETUPVAL R21 5
  GETTABLE R20 R21 R17
  JUMPIFNOT R20 [+6]
  GETUPVAL R21 5
  GETTABLE R20 R21 R17
  MOVE R21 R19
  CALL R20 1 1
  MOVE R16 R20
  JUMP [+1]
  LOADK R16 K17 [""]
  SETTABLEKS R16 R15 K18 ["Image"]
  GETUPVAL R16 6
  NAMECALL R16 R16 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K20 ["LayoutOrder"]
  CALL R13 2 1
  MOVE R12 R13
  NEWCLOSURE R13 P6
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K8 ["createElement"]
  LOADK R15 K24 ["Frame"]
  NEWTABLE R16 1 0
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["Tag"]
  GETUPVAL R18 4
  LOADK R19 K25 ["Component-ActivityHistoryBubble"]
  LOADK R20 K26 ["X-Row"]
  CALL R18 2 1
  SETTABLE R18 R16 R17
  DUPTABLE R17 K29 [{"Left", "Right"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K8 ["createElement"]
  LOADK R19 K24 ["Frame"]
  NEWTABLE R20 2 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K10 ["Tag"]
  GETUPVAL R22 4
  LOADK R23 K30 ["CX-Invisible"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  GETUPVAL R21 6
  NAMECALL R21 R21 K19 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K20 ["LayoutOrder"]
  DUPTABLE R21 K32 [{"Icon"}]
  SETTABLEKS R12 R21 K31 ["Icon"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["Left"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K8 ["createElement"]
  LOADK R19 K24 ["Frame"]
  NEWTABLE R20 2 0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K10 ["Tag"]
  GETUPVAL R22 4
  LOADK R23 K33 ["X-Column"]
  LOADK R24 K30 ["CX-Invisible"]
  CALL R22 2 1
  SETTABLE R22 R20 R21
  GETUPVAL R21 6
  NAMECALL R21 R21 K19 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K20 ["LayoutOrder"]
  DUPTABLE R21 K37 [{"Top", "Middle", "Bottom"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K8 ["createElement"]
  LOADK R23 K24 ["Frame"]
  NEWTABLE R24 2 0
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K10 ["Tag"]
  GETUPVAL R26 4
  LOADK R27 K26 ["X-Row"]
  LOADK R28 K30 ["CX-Invisible"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETUPVAL R25 6
  NAMECALL R25 R25 K19 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K20 ["LayoutOrder"]
  DUPTABLE R25 K40 [{"Date", "DotDotDot"}]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K41 ["TextLabel"]
  DUPTABLE R28 K43 [{"LayoutOrder", "Text"}]
  GETUPVAL R29 6
  NAMECALL R29 R29 K19 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K20 ["LayoutOrder"]
  GETTABLEKS R30 R0 K3 ["Bubble"]
  GETTABLEKS R29 R30 K44 ["date"]
  SETTABLEKS R29 R28 K42 ["Text"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K38 ["Date"]
  JUMPIF R5 [+2]
  LOADNIL R26
  JUMP [+72]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K24 ["Frame"]
  NEWTABLE R28 2 0
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K10 ["Tag"]
  GETUPVAL R30 4
  LOADK R31 K30 ["CX-Invisible"]
  CALL R30 1 1
  SETTABLE R30 R28 R29
  GETUPVAL R29 6
  NAMECALL R29 R29 K19 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K20 ["LayoutOrder"]
  DUPTABLE R29 K47 [{"Dropdown", "Button"}]
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K8 ["createElement"]
  GETUPVAL R31 7
  DUPTABLE R32 K53 [{"Items", "Hide", "OnItemActivated", "OnFocusLost", "Width"}]
  SETTABLEKS R6 R32 K48 ["Items"]
  NOT R33 R3
  SETTABLEKS R33 R32 K49 ["Hide"]
  SETTABLEKS R8 R32 K50 ["OnItemActivated"]
  SETTABLEKS R9 R32 K51 ["OnFocusLost"]
  LOADN R33 240
  SETTABLEKS R33 R32 K52 ["Width"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K45 ["Dropdown"]
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K8 ["createElement"]
  LOADK R31 K9 ["ImageButton"]
  NEWTABLE R32 4 0
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K10 ["Tag"]
  GETUPVAL R34 4
  LOADK R35 K54 ["X-Fill"]
  CALL R34 1 1
  SETTABLE R34 R32 R33
  GETUPVAL R33 6
  NAMECALL R33 R33 K19 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K20 ["LayoutOrder"]
  LOADB R33 1
  SETTABLEKS R33 R32 K55 ["AutoButtonColor"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K21 ["Event"]
  GETTABLEKS R33 R34 K22 ["Activated"]
  SETTABLE R10 R32 R33
  CALL R30 2 1
  SETTABLEKS R30 R29 K46 ["Button"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K39 ["DotDotDot"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["Top"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K8 ["createElement"]
  LOADK R23 K24 ["Frame"]
  NEWTABLE R24 2 0
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K10 ["Tag"]
  GETUPVAL R26 4
  LOADK R27 K30 ["CX-Invisible"]
  CALL R26 1 1
  SETTABLE R26 R24 R25
  GETUPVAL R25 6
  NAMECALL R25 R25 K19 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K20 ["LayoutOrder"]
  NEWTABLE R25 0 1
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K41 ["TextLabel"]
  NEWTABLE R28 4 0
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K10 ["Tag"]
  GETUPVAL R30 4
  LOADK R31 K54 ["X-Fill"]
  CALL R30 1 1
  SETTABLE R30 R28 R29
  LOADB R29 1
  SETTABLEKS R29 R28 K56 ["RichText"]
  LOADB R29 1
  SETTABLEKS R29 R28 K57 ["TextWrapped"]
  GETTABLEKS R30 R0 K3 ["Bubble"]
  GETTABLEKS R29 R30 K58 ["translation"]
  SETTABLEKS R29 R28 K42 ["Text"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETTABLEKS R22 R21 K35 ["Middle"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K8 ["createElement"]
  LOADK R23 K24 ["Frame"]
  NEWTABLE R24 2 0
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K10 ["Tag"]
  GETUPVAL R26 4
  LOADK R27 K26 ["X-Row"]
  LOADK R28 K30 ["CX-Invisible"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETUPVAL R25 6
  NAMECALL R25 R25 K19 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K20 ["LayoutOrder"]
  DUPTABLE R25 K60 [{"Icon", "TargetName"}]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K9 ["ImageButton"]
  NEWTABLE R28 4 0
  GETTABLEKS R31 R0 K3 ["Bubble"]
  GETTABLEKS R30 R31 K61 ["actorId"]
  FASTCALL1 TOSTRING R30 [+3]
  MOVE R32 R30
  GETIMPORT R31 K16 [tostring]
  CALL R31 1 1
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K11 ["User"]
  JUMPIFNOT R32 [+7]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K11 ["User"]
  MOVE R33 R31
  CALL R32 1 1
  MOVE R29 R32
  JUMP [+1]
  LOADK R29 K17 [""]
  SETTABLEKS R29 R28 K18 ["Image"]
  GETUPVAL R29 6
  NAMECALL R29 R29 K19 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K20 ["LayoutOrder"]
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K21 ["Event"]
  GETTABLEKS R29 R30 K22 ["Activated"]
  SETTABLE R13 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K31 ["Icon"]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K62 ["TextButton"]
  NEWTABLE R28 4 0
  GETUPVAL R29 6
  NAMECALL R29 R29 K19 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K20 ["LayoutOrder"]
  LOADK R30 K63 ["  "]
  GETTABLEKS R32 R0 K3 ["Bubble"]
  GETTABLEKS R31 R32 K64 ["actorName"]
  CONCAT R29 R30 R31
  SETTABLEKS R29 R28 K42 ["Text"]
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K21 ["Event"]
  GETTABLEKS R29 R30 K22 ["Activated"]
  SETTABLE R13 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K59 ["TargetName"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K36 ["Bottom"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K28 ["Right"]
  CALL R14 3 -1
  RETURN R14 -1

PROTO_24:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["props"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["ActivityHistoryEventTranslated"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["ActivityHistoryContext"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["BaseUrls"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["UI"]
  GETTABLEKS R8 R2 K15 ["ContextServices"]
  GETTABLEKS R7 R8 K16 ["Localization"]
  GETTABLEKS R8 R6 K17 ["DropdownMenu"]
  GETTABLEKS R10 R2 K18 ["Styling"]
  GETTABLEKS R9 R10 K19 ["joinTags"]
  GETTABLEKS R11 R2 K9 ["Util"]
  GETTABLEKS R10 R11 K20 ["LayoutOrderIterator"]
  GETTABLEKS R11 R10 K21 ["new"]
  CALL R11 0 1
  DUPTABLE R12 K29 [{"Universe", "Place", "User", "Badge", "DeveloperProduct", "GamePass", "Group"}]
  DUPCLOSURE R13 K30 [PROTO_0]
  SETTABLEKS R13 R12 K22 ["Universe"]
  DUPCLOSURE R13 K31 [PROTO_1]
  SETTABLEKS R13 R12 K23 ["Place"]
  DUPCLOSURE R13 K32 [PROTO_2]
  SETTABLEKS R13 R12 K24 ["User"]
  DUPCLOSURE R13 K33 [PROTO_3]
  SETTABLEKS R13 R12 K25 ["Badge"]
  DUPCLOSURE R13 K34 [PROTO_4]
  SETTABLEKS R13 R12 K26 ["DeveloperProduct"]
  DUPCLOSURE R13 K35 [PROTO_5]
  SETTABLEKS R13 R12 K27 ["GamePass"]
  DUPCLOSURE R13 K36 [PROTO_6]
  SETTABLEKS R13 R12 K28 ["Group"]
  DUPTABLE R13 K29 [{"Universe", "Place", "User", "Badge", "DeveloperProduct", "GamePass", "Group"}]
  DUPCLOSURE R14 K37 [PROTO_7]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K22 ["Universe"]
  DUPCLOSURE R14 K38 [PROTO_8]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K23 ["Place"]
  DUPCLOSURE R14 K39 [PROTO_9]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K24 ["User"]
  DUPCLOSURE R14 K40 [PROTO_10]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K25 ["Badge"]
  DUPCLOSURE R14 K41 [PROTO_11]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K26 ["DeveloperProduct"]
  DUPCLOSURE R14 K42 [PROTO_12]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K27 ["GamePass"]
  DUPCLOSURE R14 K43 [PROTO_13]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K28 ["Group"]
  DUPCLOSURE R14 K44 [PROTO_14]
  CAPTURE VAL R12
  DUPCLOSURE R15 K45 [PROTO_15]
  DUPCLOSURE R16 K46 [PROTO_23]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R8
  GETTABLEKS R17 R1 K47 ["PureComponent"]
  LOADK R19 K48 ["ActivityHistoryBubble"]
  NAMECALL R17 R17 K49 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K50 [PROTO_24]
  CAPTURE VAL R1
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K51 ["render"]
  RETURN R17 1
