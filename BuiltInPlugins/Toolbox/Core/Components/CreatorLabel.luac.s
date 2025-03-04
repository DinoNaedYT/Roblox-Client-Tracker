PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CreatorType"]
  GETIMPORT R2 K3 [Enum.CreatorType.Group]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["Icon"]
  GETTABLEKS R0 R1 K5 ["GroupIcon"]
  RETURN R0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["Icon"]
  GETTABLEKS R0 R1 K6 ["AvatarHeadShot"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["CreatorType"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["new"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K9 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R7 K12 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K5 ["AutomaticSize"]
  GETIMPORT R7 K15 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K6 ["Layout"]
  GETTABLEKS R7 R0 K7 ["LayoutOrder"]
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  GETTABLEKS R8 R2 K16 ["creatorLabel"]
  GETTABLEKS R7 R8 K17 ["spacingUnit"]
  SETTABLEKS R7 R6 K8 ["Spacing"]
  DUPTABLE R7 K20 [{"Thumbnail", "Name"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K21 ["ImageLabel"]
  DUPTABLE R10 K25 [{"BackgroundColor3", "Image", "LayoutOrder", "Size"}]
  GETTABLEKS R12 R2 K16 ["creatorLabel"]
  GETTABLEKS R11 R12 K26 ["thumbnailBackgroundColor"]
  SETTABLEKS R11 R10 K22 ["BackgroundColor3"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K27 ["constructAssetThumbnailUrl"]
  GETTABLEKS R12 R0 K28 ["CreatorId"]
  LOADN R13 150
  LOADN R14 150
  MOVE R15 R1
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Image"]
  NAMECALL R11 R3 K29 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K7 ["LayoutOrder"]
  GETIMPORT R11 K32 [UDim2.fromOffset]
  GETTABLEKS R13 R2 K16 ["creatorLabel"]
  GETTABLEKS R12 R13 K33 ["textSize"]
  GETTABLEKS R14 R2 K16 ["creatorLabel"]
  GETTABLEKS R13 R14 K33 ["textSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Size"]
  DUPTABLE R11 K35 [{"Corner"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  LOADK R13 K36 ["UICorner"]
  DUPTABLE R14 K38 [{"CornerRadius"}]
  GETTABLEKS R16 R0 K1 ["CreatorType"]
  GETIMPORT R17 K40 [Enum.CreatorType.User]
  JUMPIFNOTEQ R16 R17 [+7]
  GETIMPORT R15 K42 [UDim.new]
  LOADK R16 K43 [0.5]
  LOADN R17 0
  CALL R15 2 1
  JUMP [+9]
  GETIMPORT R15 K42 [UDim.new]
  LOADN R16 0
  GETTABLEKS R19 R2 K16 ["creatorLabel"]
  GETTABLEKS R18 R19 K17 ["spacingUnit"]
  DIVK R17 R18 K44 [2]
  CALL R15 2 1
  SETTABLEKS R15 R14 K37 ["CornerRadius"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["Corner"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["Thumbnail"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K49 [{"AutomaticSize", "Font", "LayoutOrder", "Text", "TextColor", "TextSize"}]
  GETIMPORT R11 K12 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K5 ["AutomaticSize"]
  GETTABLEKS R12 R2 K16 ["creatorLabel"]
  GETTABLEKS R11 R12 K50 ["font"]
  SETTABLEKS R11 R10 K45 ["Font"]
  NAMECALL R11 R3 K29 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K7 ["LayoutOrder"]
  GETTABLEKS R11 R0 K51 ["CreatorName"]
  SETTABLEKS R11 R10 K46 ["Text"]
  GETTABLEKS R12 R2 K16 ["creatorLabel"]
  GETTABLEKS R11 R12 K52 ["textColor"]
  SETTABLEKS R11 R10 K47 ["TextColor"]
  GETTABLEKS R12 R2 K16 ["creatorLabel"]
  GETTABLEKS R11 R12 K33 ["textSize"]
  SETTABLEKS R11 R10 K48 ["TextSize"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Name"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Urls"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["LayoutOrderIterator"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K13 ["Types"]
  GETTABLEKS R6 R7 K14 ["ThumbnailTypes"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K15 ["UI"]
  GETTABLEKS R6 R7 K16 ["Pane"]
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R7 R8 K17 ["TextLabel"]
  GETTABLEKS R9 R2 K18 ["ContextServices"]
  GETTABLEKS R8 R9 K19 ["Stylizer"]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R9 1
