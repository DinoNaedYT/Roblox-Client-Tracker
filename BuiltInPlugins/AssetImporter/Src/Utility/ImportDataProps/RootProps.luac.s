PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  JUMPIF R2 [+4]
  NAMECALL R3 R1 K2 ["usesCustomRestPoseLua"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_2:
  NAMECALL R3 R1 K0 ["IsR15"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_3:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  JUMPIF R2 [+4]
  NAMECALL R3 R1 K0 ["IsR15"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["InsertInWorkspace"]
  NOT R1 R2
  RETURN R1 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K1 ["ImportAsPackage"]
  NOT R1 R2
  RETURN R1 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["AddModelToInventory"]
  NOT R1 R2
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["RunningUnderCLI"]
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["RunningUnderCLI"]
  CALL R2 0 1
  NOT R1 R2
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["IsR15"]
  CALL R1 1 1
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  RETURN R1 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K1 ["ImportAsPackage"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

PROTO_12:
  GETUPVAL R1 0
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utility"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Properties"]
  GETTABLEKS R4 R5 K11 ["Types"]
  GETTABLEKS R3 R4 K12 ["AssetIdProperty"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["Properties"]
  GETTABLEKS R5 R6 K11 ["Types"]
  GETTABLEKS R4 R5 K13 ["AnimationListProperty"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K10 ["Properties"]
  GETTABLEKS R6 R7 K11 ["Types"]
  GETTABLEKS R5 R6 K14 ["UploadDestinationProperty"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K15 ["Flags"]
  GETTABLEKS R6 R7 K16 ["getFFlagShowOffCenterOriginImporter"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K17 ["getFFlagChooseAnimationForRestPose"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K15 ["Flags"]
  GETTABLEKS R8 R9 K18 ["getFFlagHideAnimationSettingForGltf"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K15 ["Flags"]
  GETTABLEKS R9 R10 K19 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K15 ["Flags"]
  GETTABLEKS R10 R11 K20 ["getFFlagAssetImportUseUploadId"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K15 ["Flags"]
  GETTABLEKS R11 R12 K21 ["getFFlagKeepZeroInfluenceBones"]
  CALL R10 1 1
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R12 K23 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R13 K24 [PROTO_2]
  DUPCLOSURE R14 K25 [PROTO_3]
  CAPTURE VAL R8
  DUPCLOSURE R15 K26 [PROTO_4]
  DUPCLOSURE R16 K27 [PROTO_5]
  DUPCLOSURE R17 K28 [PROTO_6]
  DUPCLOSURE R18 K29 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R19 K30 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R20 K31 [PROTO_9]
  CAPTURE VAL R5
  DUPCLOSURE R21 K32 [PROTO_10]
  DUPCLOSURE R22 K33 [PROTO_11]
  CAPTURE VAL R9
  DUPCLOSURE R23 K34 [PROTO_12]
  CAPTURE VAL R10
  NEWTABLE R24 0 5
  DUPTABLE R25 K36 [{"Section", "Properties"}]
  LOADK R26 K37 ["FileGeneral"]
  SETTABLEKS R26 R25 K35 ["Section"]
  NEWTABLE R26 0 13
  DUPTABLE R27 K40 [{"Name", "Editable"}]
  LOADK R28 K41 ["ImportName"]
  SETTABLEKS R28 R27 K38 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K39 ["Editable"]
  DUPTABLE R28 K40 [{"Name", "Editable"}]
  LOADK R29 K42 ["ImportAsModelAsset"]
  SETTABLEKS R29 R28 K38 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K39 ["Editable"]
  DUPTABLE R29 K40 [{"Name", "Editable"}]
  LOADK R30 K43 ["AddModelToInventory"]
  SETTABLEKS R30 R29 K38 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K39 ["Editable"]
  DUPTABLE R30 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R31 K46 ["ImportAsPackage"]
  SETTABLEKS R31 R30 K38 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K39 ["Editable"]
  SETTABLEKS R17 R30 K44 ["ShouldHide"]
  DUPTABLE R31 K48 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R32 K49 ["ExistingPackageId"]
  SETTABLEKS R32 R31 K38 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K39 ["Editable"]
  SETTABLEKS R2 R31 K47 ["ComponentFactory"]
  SETTABLEKS R16 R31 K44 ["ShouldHide"]
  DUPTABLE R32 K48 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R33 K50 ["PreferredUploadId"]
  SETTABLEKS R33 R32 K38 ["Name"]
  LOADB R33 1
  SETTABLEKS R33 R32 K39 ["Editable"]
  SETTABLEKS R4 R32 K47 ["ComponentFactory"]
  SETTABLEKS R22 R32 K44 ["ShouldHide"]
  DUPTABLE R33 K40 [{"Name", "Editable"}]
  LOADK R34 K51 ["InsertInWorkspace"]
  SETTABLEKS R34 R33 K38 ["Name"]
  LOADB R34 1
  SETTABLEKS R34 R33 K39 ["Editable"]
  DUPTABLE R34 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R35 K52 ["InsertWithScenePosition"]
  SETTABLEKS R35 R34 K38 ["Name"]
  LOADB R35 1
  SETTABLEKS R35 R34 K39 ["Editable"]
  SETTABLEKS R15 R34 K44 ["ShouldHide"]
  DUPTABLE R35 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R36 K53 ["UseSceneOriginAsCFrame"]
  SETTABLEKS R36 R35 K38 ["Name"]
  LOADB R36 1
  SETTABLEKS R36 R35 K39 ["Editable"]
  SETTABLEKS R20 R35 K44 ["ShouldHide"]
  DUPTABLE R36 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R37 K54 ["KeepZeroInfluenceBones"]
  SETTABLEKS R37 R36 K38 ["Name"]
  LOADB R37 1
  SETTABLEKS R37 R36 K39 ["Editable"]
  SETTABLEKS R23 R36 K44 ["ShouldHide"]
  DUPTABLE R37 K40 [{"Name", "Editable"}]
  LOADK R38 K55 ["UseSceneOriginAsPivot"]
  SETTABLEKS R38 R37 K38 ["Name"]
  LOADB R38 1
  SETTABLEKS R38 R37 K39 ["Editable"]
  DUPTABLE R38 K40 [{"Name", "Editable"}]
  LOADK R39 K56 ["Anchored"]
  SETTABLEKS R39 R38 K38 ["Name"]
  LOADB R39 1
  SETTABLEKS R39 R38 K39 ["Editable"]
  DUPTABLE R39 K40 [{"Name", "Editable"}]
  LOADK R40 K57 ["UsesCages"]
  SETTABLEKS R40 R39 K38 ["Name"]
  LOADB R40 1
  SETTABLEKS R40 R39 K39 ["Editable"]
  SETLIST R26 R27 13 [1]
  SETTABLEKS R26 R25 K10 ["Properties"]
  DUPTABLE R26 K59 [{"Section", "Properties", "Callouts"}]
  LOADK R27 K60 ["RigGeneral"]
  SETTABLEKS R27 R26 K35 ["Section"]
  NEWTABLE R27 0 3
  DUPTABLE R28 K40 [{"Name", "Editable"}]
  LOADK R29 K61 ["RigType"]
  SETTABLEKS R29 R28 K38 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K39 ["Editable"]
  DUPTABLE R29 K62 [{"Name", "Editable", "ShouldHide", "Callouts"}]
  LOADK R30 K63 ["ValidateUgcBody"]
  SETTABLEKS R30 R29 K38 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K39 ["Editable"]
  SETTABLEKS R14 R29 K44 ["ShouldHide"]
  NEWTABLE R30 0 1
  DUPTABLE R31 K65 [{"Name", "ShouldShow"}]
  LOADK R32 K66 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R32 R31 K38 ["Name"]
  SETTABLEKS R19 R31 K64 ["ShouldShow"]
  SETLIST R30 R31 1 [1]
  SETTABLEKS R30 R29 K58 ["Callouts"]
  DUPTABLE R30 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R31 K67 ["RigScale"]
  SETTABLEKS R31 R30 K38 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K39 ["Editable"]
  SETTABLEKS R13 R30 K44 ["ShouldHide"]
  SETLIST R27 R28 3 [1]
  SETTABLEKS R27 R26 K10 ["Properties"]
  NEWTABLE R27 0 1
  DUPTABLE R28 K65 [{"Name", "ShouldShow"}]
  LOADK R29 K66 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R29 R28 K38 ["Name"]
  SETTABLEKS R19 R28 K64 ["ShouldShow"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K58 ["Callouts"]
  DUPTABLE R27 K36 [{"Section", "Properties"}]
  LOADK R28 K68 ["AnimationGeneral"]
  SETTABLEKS R28 R27 K35 ["Section"]
  NEWTABLE R28 0 2
  DUPTABLE R29 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R30 K69 ["RestPose"]
  SETTABLEKS R30 R29 K38 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K39 ["Editable"]
  SETTABLEKS R11 R29 K44 ["ShouldHide"]
  DUPTABLE R30 K48 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R31 K70 ["AnimationIdForRestPose"]
  SETTABLEKS R31 R30 K38 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K39 ["Editable"]
  SETTABLEKS R3 R30 K47 ["ComponentFactory"]
  SETTABLEKS R12 R30 K44 ["ShouldHide"]
  SETLIST R28 R29 2 [1]
  SETTABLEKS R28 R27 K10 ["Properties"]
  DUPTABLE R28 K36 [{"Section", "Properties"}]
  LOADK R29 K71 ["FileTransform"]
  SETTABLEKS R29 R28 K35 ["Section"]
  NEWTABLE R29 0 2
  DUPTABLE R30 K73 [{"Name", "Editable", "Dependencies"}]
  LOADK R31 K74 ["WorldForward"]
  SETTABLEKS R31 R30 K38 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K39 ["Editable"]
  NEWTABLE R31 0 1
  LOADK R32 K75 ["WorldUp"]
  SETLIST R31 R32 1 [1]
  SETTABLEKS R31 R30 K72 ["Dependencies"]
  DUPTABLE R31 K73 [{"Name", "Editable", "Dependencies"}]
  LOADK R32 K75 ["WorldUp"]
  SETTABLEKS R32 R31 K38 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K39 ["Editable"]
  NEWTABLE R32 0 1
  LOADK R33 K74 ["WorldForward"]
  SETLIST R32 R33 1 [1]
  SETTABLEKS R32 R31 K72 ["Dependencies"]
  SETLIST R29 R30 2 [1]
  SETTABLEKS R29 R28 K10 ["Properties"]
  DUPTABLE R29 K36 [{"Section", "Properties"}]
  LOADK R30 K76 ["FileGeometry"]
  SETTABLEKS R30 R29 K35 ["Section"]
  NEWTABLE R30 0 5
  DUPTABLE R31 K40 [{"Name", "Editable"}]
  LOADK R32 K77 ["ScaleUnit"]
  SETTABLEKS R32 R31 K38 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K39 ["Editable"]
  DUPTABLE R32 K73 [{"Name", "Editable", "Dependencies"}]
  LOADK R33 K78 ["FileDimensions"]
  SETTABLEKS R33 R32 K38 ["Name"]
  LOADB R33 0
  SETTABLEKS R33 R32 K39 ["Editable"]
  NEWTABLE R33 0 1
  LOADK R34 K77 ["ScaleUnit"]
  SETLIST R33 R34 1 [1]
  SETTABLEKS R33 R32 K72 ["Dependencies"]
  DUPTABLE R33 K40 [{"Name", "Editable"}]
  LOADK R34 K79 ["PolygonCount"]
  SETTABLEKS R34 R33 K38 ["Name"]
  LOADB R34 0
  SETTABLEKS R34 R33 K39 ["Editable"]
  DUPTABLE R34 K45 [{"Name", "Editable", "ShouldHide"}]
  LOADK R35 K80 ["MergeMeshes"]
  SETTABLEKS R35 R34 K38 ["Name"]
  LOADB R35 1
  SETTABLEKS R35 R34 K39 ["Editable"]
  SETTABLEKS R21 R34 K44 ["ShouldHide"]
  DUPTABLE R35 K40 [{"Name", "Editable"}]
  LOADK R36 K81 ["InvertNegativeFaces"]
  SETTABLEKS R36 R35 K38 ["Name"]
  LOADB R36 1
  SETTABLEKS R36 R35 K39 ["Editable"]
  SETLIST R30 R31 5 [1]
  SETTABLEKS R30 R29 K10 ["Properties"]
  SETLIST R24 R25 5 [1]
  RETURN R24 1
