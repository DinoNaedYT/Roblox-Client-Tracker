PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  MOVE R3 R1
  LOADK R4 K0 [" HTTP "]
  GETTABLEKS R5 R0 K1 ["responseCode"]
  CONCAT R2 R3 R5
  GETIMPORT R3 K3 [warn]
  MOVE R4 R2
  CALL R3 1 0
  GETIMPORT R3 K5 [pairs]
  GETTABLEKS R6 R0 K6 ["responseBody"]
  GETTABLEKS R4 R6 K7 ["errors"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETIMPORT R8 K3 [warn]
  GETTABLEKS R9 R7 K8 ["userFacingMessage"]
  CALL R8 1 0
  FORGLOOP R3 2 [-6]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["name"]
  NAMECALL R0 R0 K1 ["SetUniverseDisplayName"]
  CALL R0 2 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["RefreshDocumentDisplayName"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["EmitPlacePublishedSignal"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  LOADK R5 K0 ["Error"]
  LOADK R6 K1 ["SetConfiguration"]
  NAMECALL R3 R3 K2 ["getText"]
  CALL R3 3 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  LOADK R5 K0 ["Error"]
  LOADK R6 K1 ["ActivatingUniverse"]
  NAMECALL R3 R3 K2 ["getText"]
  CALL R3 3 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  LOADK R5 K0 ["Error"]
  LOADK R6 K1 ["DeactivatingUniverse"]
  NAMECALL R3 R3 K2 ["getText"]
  CALL R3 3 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R6 4 0
  NEWTABLE R7 0 0
  GETIMPORT R8 K1 [pairs]
  MOVE R9 R0
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETUPVAL R15 0
  GETTABLE R14 R15 R11
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R13 [+2]
  SETTABLE R12 R6 R11
  JUMP [+8]
  GETUPVAL R15 1
  GETTABLE R14 R15 R11
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R13 [+1]
  SETTABLE R12 R7 R11
  FORGLOOP R8 2 [-18]
  GETIMPORT R8 K3 [game]
  LOADK R10 K4 ["StudioPublishService"]
  NAMECALL R8 R8 K5 ["GetService"]
  CALL R8 2 1
  GETTABLEKS R10 R0 K6 ["teamCreateEnabled"]
  GETTABLEKS R11 R6 K7 ["name"]
  NAMECALL R8 R8 K8 ["SetTeamCreateOnPublishInfo"]
  CALL R8 3 0
  GETUPVAL R8 2
  GETTABLEKS R10 R6 K7 ["name"]
  GETTABLEKS R11 R6 K7 ["name"]
  NAMECALL R8 R8 K9 ["setUploadNames"]
  CALL R8 3 0
  GETUPVAL R8 2
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R0 K10 ["creatorId"]
  MOVE R13 R4
  LOADNIL R14
  NAMECALL R8 R8 K11 ["publishAs"]
  CALL R8 6 0
  LOADNIL R8
  LOADNIL R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K12 ["GamePublishFinished"]
  NAMECALL R10 R10 K13 ["wait"]
  CALL R10 1 2
  MOVE R8 R10
  MOVE R9 R11
  JUMPIF R8 [+1]
  RETURN R0 0
  GETTABLEKS R10 R6 K14 ["playableDevices"]
  JUMPIFNOT R10 [+20]
  NEWTABLE R10 0 0
  GETIMPORT R11 K1 [pairs]
  GETTABLEKS R12 R6 K14 ["playableDevices"]
  CALL R11 1 3
  FORGPREP_NEXT R11
  JUMPIFNOT R15 [+7]
  FASTCALL2 TABLE_INSERT R10 R14 [+5]
  MOVE R17 R10
  MOVE R18 R14
  GETIMPORT R16 K17 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [-9]
  SETTABLEKS R10 R6 K14 ["playableDevices"]
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+59]
  JUMPIFEQKNIL R3 [+58]
  GETUPVAL R10 4
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R9
  CALL R10 3 1
  JUMPIFNOTEQKN R10 K18 [200] [+40]
  GETTABLEKS R12 R6 K19 ["OptInLocations"]
  FASTCALL1 ASSERT R12 [+2]
  GETIMPORT R11 K21 [assert]
  CALL R11 1 0
  NEWTABLE R11 0 0
  NEWTABLE R12 0 0
  GETIMPORT R13 K1 [pairs]
  GETTABLEKS R14 R6 K19 ["OptInLocations"]
  CALL R13 1 3
  FORGPREP_NEXT R13
  JUMPIFNOT R17 [+8]
  FASTCALL2 TABLE_INSERT R11 R16 [+5]
  MOVE R19 R11
  MOVE R20 R16
  GETIMPORT R18 K17 [table.insert]
  CALL R18 2 0
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R12 R16 [+5]
  MOVE R19 R12
  MOVE R20 R16
  GETIMPORT R18 K17 [table.insert]
  CALL R18 2 0
  FORGLOOP R13 2 [-17]
  SETTABLEKS R11 R6 K22 ["optInRegions"]
  SETTABLEKS R12 R6 K23 ["optOutRegions"]
  JUMP [+8]
  GETIMPORT R11 K25 [warn]
  GETUPVAL R14 5
  LOADK R15 K26 ["EmailSubmitFailure"]
  NAMECALL R12 R1 K27 ["getText"]
  CALL R12 3 -1
  CALL R11 -1 0
  LOADNIL R11
  SETTABLEKS R11 R6 K19 ["OptInLocations"]
  GETTABLEKS R13 R2 K28 ["Develop"]
  GETTABLEKS R12 R13 K29 ["V2"]
  GETTABLEKS R11 R12 K30 ["Universes"]
  GETTABLEKS R10 R11 K31 ["configuration"]
  MOVE R11 R9
  MOVE R12 R6
  CALL R10 2 1
  NAMECALL R10 R10 K32 ["makeRequest"]
  CALL R10 1 1
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  NAMECALL R10 R10 K33 ["andThen"]
  CALL R10 3 0
  GETTABLEKS R10 R7 K34 ["isActive"]
  JUMPIFNOT R10 [+20]
  GETTABLEKS R13 R2 K28 ["Develop"]
  GETTABLEKS R12 R13 K35 ["V1"]
  GETTABLEKS R11 R12 K30 ["Universes"]
  GETTABLEKS R10 R11 K36 ["activate"]
  MOVE R11 R9
  CALL R10 1 1
  NAMECALL R10 R10 K32 ["makeRequest"]
  CALL R10 1 1
  NEWCLOSURE R12 P2
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  NAMECALL R10 R10 K37 ["catch"]
  CALL R10 2 0
  JUMP [+19]
  GETTABLEKS R13 R2 K28 ["Develop"]
  GETTABLEKS R12 R13 K35 ["V1"]
  GETTABLEKS R11 R12 K30 ["Universes"]
  GETTABLEKS R10 R11 K38 ["deactivate"]
  MOVE R11 R9
  CALL R10 1 1
  NAMECALL R10 R10 K32 ["makeRequest"]
  CALL R10 1 1
  NEWCLOSURE R12 P3
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  NAMECALL R10 R10 K37 ["catch"]
  CALL R10 2 0
  GETUPVAL R10 7
  CALL R10 0 1
  JUMPIFNOT R10 [+47]
  FASTCALL1 ASSERT R5 [+3]
  MOVE R11 R5
  GETIMPORT R10 K21 [assert]
  CALL R10 1 0
  LOADB R10 1
  GETTABLEKS R11 R0 K10 ["creatorId"]
  JUMPIFEQKN R11 K39 [0] [+14]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K40 ["List"]
  GETTABLEKS R11 R12 K41 ["find"]
  MOVE R12 R5
  GETTABLEKS R13 R0 K10 ["creatorId"]
  CALL R11 2 1
  JUMPIFNOTEQKNIL R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIFNOT R10 [+6]
  GETTABLEKS R11 R0 K42 ["dataSharingEnabled"]
  JUMPIFNOT R11 [+3]
  GETUPVAL R11 9
  MOVE R12 R9
  CALL R11 1 0
  GETUPVAL R11 10
  LOADK R12 K43 ["PublishPlaceAsDataSharing"]
  GETUPVAL R13 11
  CALL R13 0 1
  LOADK R14 K44 ["saveAll"]
  DUPTABLE R15 K47 [{"dataSharingEnabled", "dataSharingDefault", "isOwner"}]
  GETTABLEKS R16 R0 K42 ["dataSharingEnabled"]
  SETTABLEKS R16 R15 K42 ["dataSharingEnabled"]
  GETTABLEKS R16 R0 K45 ["dataSharingDefault"]
  SETTABLEKS R16 R15 K45 ["dataSharingDefault"]
  SETTABLEKS R10 R15 K46 ["isOwner"]
  CALL R11 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioPublishService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Thunks"]
  GETTABLEKS R3 R4 K11 ["PostContactEmail"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["KeyProvider"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K14 ["getOptInLocationsKeyName"]
  CALL R4 0 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K9 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K15 ["PublishPlaceAsUtilities"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["shouldShowDevPublishLocations"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R10 R1 K9 ["Src"]
  GETTABLEKS R9 R10 K17 ["Network"]
  GETTABLEKS R8 R9 K18 ["Requests"]
  GETTABLEKS R7 R8 K19 ["ApiSetUniverseDataSharing"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K9 ["Src"]
  GETTABLEKS R9 R10 K20 ["Flags"]
  GETTABLEKS R8 R9 K21 ["getFFlagCAP1107"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K9 ["Src"]
  GETTABLEKS R10 R11 K20 ["Flags"]
  GETTABLEKS R9 R10 K22 ["getFIntCAP1107ThrottleHundredthsPercentage"]
  CALL R8 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K9 ["Src"]
  GETTABLEKS R12 R13 K12 ["Util"]
  GETTABLEKS R11 R12 K15 ["PublishPlaceAsUtilities"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K23 ["sendAnalyticsToKibana"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K24 ["Packages"]
  GETTABLEKS R11 R12 K25 ["Cryo"]
  CALL R10 1 1
  DUPTABLE R11 K27 [{"isActive"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K26 ["isActive"]
  DUPTABLE R12 K33 [{"description", "genre", "name", "playableDevices", "isFriendsOnly"}]
  LOADB R13 1
  SETTABLEKS R13 R12 K28 ["description"]
  LOADB R13 1
  SETTABLEKS R13 R12 K29 ["genre"]
  LOADB R13 1
  SETTABLEKS R13 R12 K30 ["name"]
  LOADB R13 1
  SETTABLEKS R13 R12 K31 ["playableDevices"]
  LOADB R13 1
  SETTABLEKS R13 R12 K32 ["isFriendsOnly"]
  MOVE R13 R5
  CALL R13 0 1
  JUMPIFNOT R13 [+3]
  LOADB R13 1
  SETTABLEKS R13 R12 K34 ["OptInLocations"]
  DUPCLOSURE R13 K35 [PROTO_0]
  CAPTURE VAL R11
  DUPCLOSURE R14 K36 [PROTO_1]
  CAPTURE VAL R12
  DUPCLOSURE R15 K37 [PROTO_2]
  DUPCLOSURE R16 K38 [PROTO_7]
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  DUPTABLE R17 K40 [{"saveAll"}]
  SETTABLEKS R16 R17 K39 ["saveAll"]
  RETURN R17 1
