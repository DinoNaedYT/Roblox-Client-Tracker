PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetTextPrompt"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"addedImageHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["addedImageHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"addedImageHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["addedImageHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"addImageCloseButtonHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["addImageCloseButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"addImageCloseButtonHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["addImageCloseButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["StudioServices"]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["getService"]
  CALL R0 2 1
  GETUPVAL R3 2
  NAMECALL R1 R0 K4 ["PromptImportFile"]
  CALL R1 2 1
  SETUPVAL R1 1
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["isQueryingForImage"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  DUPTABLE R2 K3 [{"addedImageHovered", "isQueryingForImage"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["addedImageHovered"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isQueryingForImage"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  NEWTABLE R0 0 3
  LOADK R1 K5 ["png"]
  LOADK R2 K6 ["jpg"]
  LOADK R3 K7 ["jpeg"]
  SETLIST R0 R1 3 [1]
  LOADNIL R1
  GETIMPORT R2 K9 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE REF R1
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R2 [+11]
  JUMPIFNOT R1 [+17]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K11 ["dispatchSetInitialImageId"]
  NAMECALL R5 R1 K12 ["GetTemporaryId"]
  CALL R5 1 -1
  CALL R4 -1 0
  JUMP [+7]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K13 ["dispatchSetImageError"]
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R4 1
  DUPTABLE R6 K14 [{"isQueryingForImage"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K1 ["isQueryingForImage"]
  NAMECALL R4 R4 K4 ["setState"]
  CALL R4 2 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"addedImageHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["addedImageHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["dispatchSetInitialImageId"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["StudioServices"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Analytics"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["dispatchGenerateImages"]
  MOVE R4 R1
  MOVE R5 R2
  MOVE R6 R0
  CALL R3 3 0
  GETUPVAL R3 0
  DUPTABLE R5 K6 [{"textInputShouldFocus"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["textInputShouldFocus"]
  NAMECALL R3 R3 K7 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"textInputShouldFocus"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["textInputShouldFocus"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R0 K2 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R3 K5 [{"retriesAttempt", "addedImageHovered", "addImageCloseButtonHovered", "textInputShouldFocus", "isQueryingForImage"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K0 ["retriesAttempt"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["addedImageHovered"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["addImageCloseButtonHovered"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["textInputShouldFocus"]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["isQueryingForImage"]
  NAMECALL R1 R0 K6 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["textPromptChanged"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onAddedImageHovered"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onAddedImageUnhovered"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onAddedImageCloseButtonHovered"]
  NEWCLOSURE R1 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onAddedImageCloseButtonUnhovered"]
  NEWCLOSURE R1 P5
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["addImage"]
  NEWCLOSURE R1 P6
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["clearImage"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["generate"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["unsetFocusLater"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["unsetFocusLater"]
  CALL R1 0 0
  RETURN R0 0

PROTO_13:
  LOADNIL R3
  NAMECALL R1 R0 K0 ["_setDeferredTask"]
  CALL R1 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["textInputShouldFocus"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["unsetFocusLater"]
  CALL R1 0 0
  RETURN R0 0

PROTO_15:
  LOADN R3 1
  LOADN R5 5
  LOADN R7 1
  LOADK R9 K0 [2.71828]
  LOADK R12 K2 [0.5]
  DIVK R13 R1 K1 [10]
  SUB R11 R12 R13
  MULK R10 R11 K1 [10]
  POW R8 R9 R10
  ADD R6 R7 R8
  DIV R4 R5 R6
  ADD R2 R3 R4
  RETURN R2 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["deferredQueryingTask"]
  JUMPIFNOT R2 [+8]
  GETIMPORT R2 K3 [task.cancel]
  GETTABLEKS R3 R0 K0 ["deferredQueryingTask"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["deferredQueryingTask"]
  SETTABLEKS R1 R0 K0 ["deferredQueryingTask"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K6 [{"Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R6 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K1 ["Layout"]
  GETTABLEKS R6 R1 K2 ["LayoutOrder"]
  SETTABLEKS R6 R5 K2 ["LayoutOrder"]
  GETTABLEKS R6 R2 K3 ["Padding"]
  SETTABLEKS R6 R5 K3 ["Padding"]
  GETTABLEKS R6 R2 K11 ["VerticalSpacing"]
  SETTABLEKS R6 R5 K4 ["Spacing"]
  GETIMPORT R6 K13 [Enum.VerticalAlignment.Center]
  SETTABLEKS R6 R5 K5 ["VerticalAlignment"]
  DUPTABLE R6 K15 [{"Loading"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 2
  CALL R7 1 1
  SETTABLEKS R7 R6 K14 ["Loading"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["generate"]
  LOADK R1 K1 ["ButtonClick"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["generate"]
  LOADK R1 K1 ["KeyboardEnter"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["Header"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["IsGeneratingImages"]
  JUMPIF R4 [+11]
  LOADB R4 1
  GETTABLEKS R5 R1 K5 ["TextPrompt"]
  JUMPIFEQKNIL R5 [+7]
  GETTABLEKS R5 R1 K5 ["TextPrompt"]
  JUMPIFEQKS R5 K6 [""] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADN R5 0
  LOADNIL R6
  LOADB R7 0
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIFNOT R8 [+339]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K7 ["initialImageId"]
  JUMPIF R8 [+8]
  GETTABLEKS R9 R0 K8 ["state"]
  GETTABLEKS R8 R9 K9 ["isQueryingForImage"]
  JUMPIF R8 [+3]
  LOADB R7 1
  LOADNIL R6
  JUMP [+326]
  GETTABLEKS R8 R2 K10 ["PromptHeight"]
  GETTABLEKS R9 R2 K11 ["ImagePadding"]
  ADD R5 R8 R9
  LOADB R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["createElement"]
  LOADK R9 K13 ["Frame"]
  DUPTABLE R10 K18 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
  GETIMPORT R11 K21 [UDim2.fromOffset]
  GETTABLEKS R12 R2 K10 ["PromptHeight"]
  GETTABLEKS R13 R2 K10 ["PromptHeight"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETIMPORT R11 K23 [UDim2.fromScale]
  LOADN R12 0
  LOADK R13 K24 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Position"]
  GETIMPORT R11 K27 [Vector2.new]
  LOADN R12 0
  LOADK R13 K24 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["AnchorPoint"]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["BackgroundTransparency"]
  DUPTABLE R11 K29 [{"ImagePreview"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K30 ["ImageButton"]
  NEWTABLE R14 16 0
  GETTABLEKS R15 R2 K31 ["ImageBackgroundColor3"]
  SETTABLEKS R15 R14 K32 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K33 ["BorderSizePixel"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K7 ["initialImageId"]
  SETTABLEKS R15 R14 K34 ["Image"]
  GETIMPORT R15 K21 [UDim2.fromOffset]
  GETTABLEKS R17 R2 K10 ["PromptHeight"]
  SUBK R16 R17 K35 [2]
  GETTABLEKS R18 R2 K10 ["PromptHeight"]
  SUBK R17 R18 K35 [2]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Size"]
  GETIMPORT R15 K23 [UDim2.fromScale]
  LOADK R16 K24 [0.5]
  LOADK R17 K24 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["Position"]
  GETIMPORT R15 K27 [Vector2.new]
  LOADK R16 K24 [0.5]
  LOADK R17 K24 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["AnchorPoint"]
  LOADN R15 2
  SETTABLEKS R15 R14 K36 ["ZIndex"]
  GETTABLEKS R15 R2 K37 ["ImageColor3"]
  SETTABLEKS R15 R14 K37 ["ImageColor3"]
  GETIMPORT R15 K41 [Enum.ScaleType.Crop]
  SETTABLEKS R15 R14 K39 ["ScaleType"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K42 ["Event"]
  GETTABLEKS R15 R16 K43 ["Activated"]
  GETTABLEKS R16 R0 K44 ["addImage"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K42 ["Event"]
  GETTABLEKS R15 R16 K45 ["MouseEnter"]
  GETTABLEKS R16 R0 K46 ["onAddedImageHovered"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K42 ["Event"]
  GETTABLEKS R15 R16 K47 ["MouseLeave"]
  GETTABLEKS R16 R0 K48 ["onAddedImageUnhovered"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K53 [{"UICorner", "UIStroke", "AddImageIcon", "CloseButton"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K49 ["UICorner"]
  DUPTABLE R18 K55 [{"CornerRadius"}]
  GETTABLEKS R19 R2 K56 ["ImageCornerRadius"]
  SETTABLEKS R19 R18 K54 ["CornerRadius"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K49 ["UICorner"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K50 ["UIStroke"]
  DUPTABLE R18 K59 [{"Thickness", "Color"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K57 ["Thickness"]
  GETTABLEKS R19 R2 K60 ["ImageBorderColor"]
  SETTABLEKS R19 R18 K58 ["Color"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["UIStroke"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K61 ["ImageLabel"]
  DUPTABLE R18 K63 [{"BackgroundTransparency", "ImageColor3", "Size", "Visible", "Image", "AnchorPoint", "Position"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K7 ["initialImageId"]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R2 K64 ["AddImageButtonIconColor"]
  JUMP [+2]
  GETTABLEKS R19 R2 K65 ["AddImageButtonIconColorNoImage"]
  SETTABLEKS R19 R18 K37 ["ImageColor3"]
  GETIMPORT R19 K21 [UDim2.fromOffset]
  LOADN R20 32
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETTABLEKS R20 R0 K8 ["state"]
  GETTABLEKS R19 R20 K66 ["addedImageHovered"]
  JUMPIF R19 [+4]
  GETTABLEKS R20 R0 K8 ["state"]
  GETTABLEKS R19 R20 K9 ["isQueryingForImage"]
  SETTABLEKS R19 R18 K62 ["Visible"]
  LOADK R19 K67 ["rbxasset://textures/MaterialGenerator/AddImage_64x64.png"]
  SETTABLEKS R19 R18 K34 ["Image"]
  GETIMPORT R19 K27 [Vector2.new]
  LOADK R20 K24 [0.5]
  LOADK R21 K24 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K16 ["AnchorPoint"]
  GETIMPORT R19 K23 [UDim2.fromScale]
  LOADK R20 K24 [0.5]
  LOADK R21 K24 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K15 ["Position"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["AddImageIcon"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K30 ["ImageButton"]
  NEWTABLE R18 8 0
  LOADN R19 1
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  GETIMPORT R19 K21 [UDim2.fromOffset]
  LOADN R20 22
  LOADN R21 22
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETIMPORT R19 K27 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K16 ["AnchorPoint"]
  GETIMPORT R19 K23 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K15 ["Position"]
  GETTABLEKS R20 R0 K8 ["state"]
  GETTABLEKS R19 R20 K66 ["addedImageHovered"]
  SETTABLEKS R19 R18 K62 ["Visible"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K42 ["Event"]
  GETTABLEKS R19 R20 K43 ["Activated"]
  GETTABLEKS R20 R0 K68 ["clearImage"]
  SETTABLE R20 R18 R19
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K42 ["Event"]
  GETTABLEKS R19 R20 K45 ["MouseEnter"]
  GETTABLEKS R20 R0 K69 ["onAddedImageCloseButtonHovered"]
  SETTABLE R20 R18 R19
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K42 ["Event"]
  GETTABLEKS R19 R20 K47 ["MouseLeave"]
  GETTABLEKS R20 R0 K70 ["onAddedImageCloseButtonUnhovered"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K72 [{"Icon"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K73 [{"BackgroundTransparency", "Image", "Size", "Position", "AnchorPoint"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K74 ["rbxasset://textures/StudioSharedUI/close.png"]
  SETTABLEKS R23 R22 K34 ["Image"]
  GETIMPORT R23 K21 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K14 ["Size"]
  GETIMPORT R23 K23 [UDim2.fromScale]
  LOADK R24 K24 [0.5]
  LOADK R25 K24 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K15 ["Position"]
  GETIMPORT R23 K27 [Vector2.new]
  LOADK R24 K24 [0.5]
  LOADK R25 K24 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K16 ["AnchorPoint"]
  DUPTABLE R23 K76 [{"UIScale"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K12 ["createElement"]
  LOADK R25 K75 ["UIScale"]
  DUPTABLE R26 K78 [{"Scale"}]
  GETTABLEKS R29 R0 K8 ["state"]
  GETTABLEKS R28 R29 K79 ["addImageCloseButtonHovered"]
  JUMPIFNOT R28 [+2]
  LOADK R27 K80 [1.2]
  JUMP [+1]
  LOADN R27 1
  SETTABLEKS R27 R26 K77 ["Scale"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K75 ["UIScale"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K71 ["Icon"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K52 ["CloseButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["ImagePreview"]
  CALL R8 3 1
  MOVE R6 R8
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K87 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R13 K89 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K81 ["AutomaticSize"]
  GETIMPORT R13 K92 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K82 ["Layout"]
  GETTABLEKS R13 R1 K83 ["LayoutOrder"]
  SETTABLEKS R13 R12 K83 ["LayoutOrder"]
  GETTABLEKS R13 R2 K84 ["Padding"]
  SETTABLEKS R13 R12 K84 ["Padding"]
  GETTABLEKS R13 R2 K93 ["VerticalSpacing"]
  SETTABLEKS R13 R12 K85 ["Spacing"]
  GETIMPORT R13 K95 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K86 ["VerticalAlignment"]
  DUPTABLE R13 K98 [{"TextPromptPane", "SettingsRow"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K12 ["createElement"]
  LOADK R15 K13 ["Frame"]
  DUPTABLE R16 K99 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R17 K100 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETTABLEKS R21 R2 K10 ["PromptHeight"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  DUPTABLE R17 K104 [{"Preview", "TextPrompt", "AddImageButton", "GenerateButton"}]
  SETTABLEKS R6 R17 K101 ["Preview"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K112 [{"LayoutOrder", "MultiLine", "OnEnter", "OnTextChanged", "PlaceholderText", "ShouldFocus", "Position", "Size", "Text", "TextYAlignment"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K83 ["LayoutOrder"]
  GETTABLEKS R21 R2 K113 ["MultiLinePrompt"]
  SETTABLEKS R21 R20 K105 ["MultiLine"]
  JUMPIFNOT R4 [+2]
  LOADNIL R21
  JUMP [+6]
  GETUPVAL R22 5
  JUMPIFNOT R22 [+2]
  MOVE R21 R9
  JUMP [+2]
  GETTABLEKS R21 R0 K114 ["generate"]
  SETTABLEKS R21 R20 K106 ["OnEnter"]
  GETTABLEKS R21 R0 K115 ["textPromptChanged"]
  SETTABLEKS R21 R20 K107 ["OnTextChanged"]
  LOADK R23 K2 ["Header"]
  LOADK R24 K116 ["PromptPlaceholderText"]
  NAMECALL R21 R3 K117 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K108 ["PlaceholderText"]
  GETTABLEKS R22 R0 K8 ["state"]
  GETTABLEKS R21 R22 K118 ["textInputShouldFocus"]
  SETTABLEKS R21 R20 K109 ["ShouldFocus"]
  GETIMPORT R21 K100 [UDim2.new]
  LOADN R22 0
  MOVE R23 R5
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K15 ["Position"]
  GETIMPORT R21 K100 [UDim2.new]
  LOADN R22 1
  MINUS R23 R5
  LOADN R24 0
  GETTABLEKS R25 R2 K10 ["PromptHeight"]
  CALL R21 4 1
  SETTABLEKS R21 R20 K14 ["Size"]
  GETTABLEKS R21 R1 K5 ["TextPrompt"]
  SETTABLEKS R21 R20 K110 ["Text"]
  GETTABLEKS R21 R2 K111 ["TextYAlignment"]
  SETTABLEKS R21 R20 K111 ["TextYAlignment"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K5 ["TextPrompt"]
  MOVE R18 R7
  JUMPIFNOT R18 [+81]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K122 [{"Style", "Size", "AnchorPoint", "Position", "Tooltip", "OnClick"}]
  LOADK R21 K123 ["RoundSubtle"]
  SETTABLEKS R21 R20 K119 ["Style"]
  GETTABLEKS R21 R2 K124 ["UploadButtonSize"]
  SETTABLEKS R21 R20 K14 ["Size"]
  GETIMPORT R21 K27 [Vector2.new]
  LOADN R22 0
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K16 ["AnchorPoint"]
  GETIMPORT R21 K100 [UDim2.new]
  LOADN R22 0
  LOADN R24 5
  ADD R23 R24 R5
  LOADN R24 1
  LOADN R25 251
  CALL R21 4 1
  SETTABLEKS R21 R20 K15 ["Position"]
  LOADK R23 K2 ["Header"]
  LOADK R24 K125 ["AddImageTooltip"]
  NAMECALL R21 R3 K117 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K120 ["Tooltip"]
  GETTABLEKS R21 R0 K44 ["addImage"]
  SETTABLEKS R21 R20 K121 ["OnClick"]
  DUPTABLE R21 K72 [{"Icon"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K12 ["createElement"]
  GETUPVAL R23 2
  DUPTABLE R24 K126 [{"BackgroundTransparency", "ImageColor3", "Image", "Size", "Position", "AnchorPoint"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  GETTABLEKS R25 R2 K64 ["AddImageButtonIconColor"]
  SETTABLEKS R25 R24 K37 ["ImageColor3"]
  LOADK R25 K127 ["rbxasset://textures/MaterialGenerator/AddImage_48x48.png"]
  SETTABLEKS R25 R24 K34 ["Image"]
  GETIMPORT R25 K21 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K14 ["Size"]
  GETIMPORT R25 K23 [UDim2.fromScale]
  LOADK R26 K24 [0.5]
  LOADK R27 K24 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K15 ["Position"]
  GETIMPORT R25 K27 [Vector2.new]
  LOADK R26 K24 [0.5]
  LOADK R27 K24 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K16 ["AnchorPoint"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["Icon"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K102 ["AddImageButton"]
  GETUPVAL R18 0
  CALL R18 0 1
  JUMPIFNOT R18 [+90]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K129 [{"OnClick", "Size", "AnchorPoint", "Position", "Style", "StyleModifier", "Text"}]
  GETUPVAL R22 5
  JUMPIFNOT R22 [+2]
  MOVE R21 R8
  JUMP [+2]
  GETTABLEKS R21 R0 K114 ["generate"]
  SETTABLEKS R21 R20 K121 ["OnClick"]
  GETTABLEKS R21 R2 K130 ["GenerateButtonSize"]
  SETTABLEKS R21 R20 K14 ["Size"]
  GETIMPORT R21 K27 [Vector2.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K16 ["AnchorPoint"]
  GETIMPORT R21 K100 [UDim2.new]
  LOADN R22 1
  LOADN R23 251
  LOADN R24 1
  LOADN R25 251
  CALL R21 4 1
  SETTABLEKS R21 R20 K15 ["Position"]
  LOADK R21 K131 ["RoundPrimary"]
  SETTABLEKS R21 R20 K119 ["Style"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K132 ["Disabled"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K128 ["StyleModifier"]
  GETTABLEKS R22 R1 K4 ["IsGeneratingImages"]
  JUMPIFNOT R22 [+2]
  LOADK R21 K6 [""]
  JUMP [+5]
  LOADK R23 K2 ["Header"]
  LOADK R24 K103 ["GenerateButton"]
  NAMECALL R21 R3 K117 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K110 ["Text"]
  DUPTABLE R21 K134 [{"LoadingIndicator"}]
  GETTABLEKS R22 R1 K4 ["IsGeneratingImages"]
  JUMPIFNOT R22 [+27]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K12 ["createElement"]
  GETUPVAL R23 8
  DUPTABLE R24 K135 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R25 K27 [Vector2.new]
  LOADK R26 K24 [0.5]
  LOADK R27 K24 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K16 ["AnchorPoint"]
  GETIMPORT R25 K23 [UDim2.fromScale]
  LOADK R26 K24 [0.5]
  LOADK R27 K24 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K15 ["Position"]
  GETIMPORT R25 K21 [UDim2.fromOffset]
  LOADN R26 24
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K14 ["Size"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K133 ["LoadingIndicator"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K103 ["GenerateButton"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K96 ["TextPromptPane"]
  GETUPVAL R15 0
  CALL R15 0 1
  JUMPIF R15 [+71]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K137 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "VerticalAlignment"}]
  GETIMPORT R17 K139 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K136 ["HorizontalAlignment"]
  GETIMPORT R17 K141 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K82 ["Layout"]
  LOADN R17 2
  SETTABLEKS R17 R16 K83 ["LayoutOrder"]
  GETIMPORT R17 K100 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETTABLEKS R21 R2 K142 ["RowHeight"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Size"]
  GETIMPORT R17 K144 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K86 ["VerticalAlignment"]
  DUPTABLE R17 K145 [{"GenerateButton"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K146 [{"OnClick", "Size", "Style", "StyleModifier", "Text"}]
  GETUPVAL R22 5
  JUMPIFNOT R22 [+2]
  MOVE R21 R8
  JUMP [+2]
  GETTABLEKS R21 R0 K114 ["generate"]
  SETTABLEKS R21 R20 K121 ["OnClick"]
  GETTABLEKS R21 R2 K130 ["GenerateButtonSize"]
  SETTABLEKS R21 R20 K14 ["Size"]
  LOADK R21 K131 ["RoundPrimary"]
  SETTABLEKS R21 R20 K119 ["Style"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K132 ["Disabled"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K128 ["StyleModifier"]
  LOADK R23 K2 ["Header"]
  LOADK R24 K103 ["GenerateButton"]
  NAMECALL R21 R3 K117 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K110 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K103 ["GenerateButton"]
  CALL R14 3 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K97 ["SettingsRow"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_21:
  LOADNIL R2
  GETTABLEKS R3 R1 K0 ["isQueryingForImage"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Selected"]
  JUMP [+6]
  GETTABLEKS R3 R1 K2 ["addedImageHovered"]
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Hover"]
  GETTABLEKS R3 R1 K4 ["StyleModifier"]
  JUMPIFEQ R2 R3 [+10]
  DUPTABLE R3 K5 [{"StyleModifier"}]
  MOVE R4 R2
  JUMPIF R4 [+3]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["None"]
  SETTABLEKS R4 R3 K4 ["StyleModifier"]
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_22:
  DUPTABLE R2 K3 [{"initialImageId", "IsGeneratingImages", "TextPrompt"}]
  GETTABLEKS R4 R0 K4 ["MaterialsReducer"]
  GETTABLEKS R3 R4 K0 ["initialImageId"]
  SETTABLEKS R3 R2 K0 ["initialImageId"]
  GETTABLEKS R5 R0 K5 ["AppStateReducer"]
  GETTABLEKS R4 R5 K6 ["generatingImages"]
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["IsGeneratingImages"]
  GETTABLEKS R4 R0 K5 ["AppStateReducer"]
  GETTABLEKS R3 R4 K7 ["textPrompt"]
  SETTABLEKS R3 R2 K2 ["TextPrompt"]
  RETURN R2 1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["FailedToSetImage"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  DUPTABLE R1 K4 [{"dispatchSetImageError", "dispatchGenerateImages", "dispatchSetTextPrompt", "dispatchSetInitialImageId"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["dispatchSetImageError"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["dispatchGenerateImages"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["dispatchSetTextPrompt"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["dispatchSetInitialImageId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["MaterialFramework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R10 R0 K5 ["Packages"]
  GETTABLEKS R9 R10 K10 ["_Index"]
  GETTABLEKS R8 R9 K11 ["DeveloperFramework"]
  GETTABLEKS R7 R8 K11 ["DeveloperFramework"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Enum"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K15 ["GenerationErrorType"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["withContext"]
  GETTABLEKS R10 R8 K18 ["Analytics"]
  GETTABLEKS R11 R8 K19 ["Localization"]
  GETTABLEKS R13 R1 K20 ["Style"]
  GETTABLEKS R12 R13 K21 ["Stylizer"]
  GETTABLEKS R13 R1 K22 ["UI"]
  GETTABLEKS R14 R13 K23 ["Button"]
  GETTABLEKS R15 R13 K24 ["Image"]
  GETTABLEKS R16 R13 K25 ["Pane"]
  GETTABLEKS R17 R13 K26 ["TextInput"]
  GETTABLEKS R18 R13 K27 ["LoadingIndicator"]
  GETTABLEKS R19 R1 K28 ["Util"]
  GETTABLEKS R20 R19 K29 ["StyleModifier"]
  GETTABLEKS R22 R2 K30 ["Context"]
  GETTABLEKS R21 R22 K31 ["StudioServices"]
  GETTABLEKS R23 R0 K13 ["Src"]
  GETTABLEKS R22 R23 K32 ["Actions"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R22 K33 ["SetTextPrompt"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R22 K34 ["SetInitialImageId"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R22 K35 ["SetGenerationError"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R29 R0 K13 ["Src"]
  GETTABLEKS R28 R29 K36 ["Thunks"]
  GETTABLEKS R27 R28 K37 ["GenerateImages"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R30 R0 K13 ["Src"]
  GETTABLEKS R29 R30 K38 ["Flags"]
  GETTABLEKS R28 R29 K39 ["getFFlagMaterialGeneratorSupportVariations2"]
  CALL R27 1 1
  GETIMPORT R28 K41 [game]
  LOADK R30 K42 ["MaterialGeneratorErrorAnalytics"]
  NAMECALL R28 R28 K43 ["GetFastFlag"]
  CALL R28 2 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R31 R0 K13 ["Src"]
  GETTABLEKS R30 R31 K12 ["Types"]
  CALL R29 1 1
  GETTABLEKS R30 R3 K44 ["PureComponent"]
  LOADK R32 K45 ["Header"]
  NAMECALL R30 R30 K46 ["extend"]
  CALL R30 2 1
  DUPCLOSURE R31 K47 [PROTO_11]
  CAPTURE VAL R27
  SETTABLEKS R31 R30 K48 ["init"]
  DUPCLOSURE R31 K49 [PROTO_12]
  SETTABLEKS R31 R30 K50 ["didMount"]
  DUPCLOSURE R31 K51 [PROTO_13]
  SETTABLEKS R31 R30 K52 ["willUnmount"]
  DUPCLOSURE R31 K53 [PROTO_14]
  SETTABLEKS R31 R30 K54 ["didUpdate"]
  DUPCLOSURE R31 K55 [PROTO_15]
  SETTABLEKS R31 R30 K56 ["_computeRetryTime"]
  DUPCLOSURE R31 K57 [PROTO_16]
  SETTABLEKS R31 R30 K58 ["_setDeferredTask"]
  DUPCLOSURE R31 K59 [PROTO_17]
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R18
  SETTABLEKS R31 R30 K60 ["_renderLoader"]
  DUPCLOSURE R31 K61 [PROTO_20]
  CAPTURE VAL R27
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R28
  CAPTURE VAL R14
  CAPTURE VAL R20
  CAPTURE VAL R18
  SETTABLEKS R31 R30 K62 ["render"]
  DUPCLOSURE R31 K63 [PROTO_21]
  CAPTURE VAL R20
  CAPTURE VAL R3
  SETTABLEKS R31 R30 K64 ["getDerivedStateFromProps"]
  MOVE R31 R9
  DUPTABLE R32 K65 [{"Analytics", "Localization", "StudioServices", "Stylizer"}]
  SETTABLEKS R10 R32 K18 ["Analytics"]
  SETTABLEKS R11 R32 K19 ["Localization"]
  SETTABLEKS R21 R32 K31 ["StudioServices"]
  SETTABLEKS R12 R32 K21 ["Stylizer"]
  CALL R31 1 1
  MOVE R32 R30
  CALL R31 1 1
  MOVE R30 R31
  DUPCLOSURE R31 K66 [PROTO_22]
  DUPCLOSURE R32 K67 [PROTO_27]
  CAPTURE VAL R25
  CAPTURE VAL R7
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R24
  GETTABLEKS R33 R4 K68 ["connect"]
  MOVE R34 R31
  MOVE R35 R32
  CALL R33 2 1
  MOVE R34 R30
  CALL R33 1 -1
  RETURN R33 -1
