PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"AbsoluteSize", "AbsolutePosition"}]
  GETTABLEKS R4 R0 K0 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K0 ["AbsoluteSize"]
  GETTABLEKS R4 R0 K1 ["AbsolutePosition"]
  SETTABLEKS R4 R3 K1 ["AbsolutePosition"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["HorizontalZoom"]
  GETTABLEKS R4 R2 K2 ["HorizontalScroll"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["state"]
  GETTABLEKS R6 R7 K4 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K5 ["X"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["state"]
  GETTABLEKS R7 R8 K6 ["AbsolutePosition"]
  GETTABLEKS R6 R7 K5 ["X"]
  GETTABLEKS R7 R1 K7 ["UserInputType"]
  GETIMPORT R8 K10 [Enum.UserInputType.MouseWheel]
  JUMPIFNOTEQ R7 R8 [+75]
  GETTABLEKS R10 R1 K11 ["Position"]
  GETTABLEKS R9 R10 K5 ["X"]
  SUB R8 R9 R6
  DIV R7 R8 R5
  SUB R9 R7 R4
  LOADN R11 1
  SUB R10 R11 R3
  MUL R8 R9 R10
  ADD R10 R4 R8
  LOADN R11 0
  LOADN R12 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R9 K14 [math.clamp]
  CALL R9 3 1
  MOVE R8 R9
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K15 ["ctrlHeld"]
  JUMPIFNOT R9 [+44]
  GETTABLEKS R10 R1 K11 ["Position"]
  GETTABLEKS R9 R10 K16 ["Z"]
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+16]
  GETTABLEKS R9 R2 K17 ["SetHorizontalScrollZoom"]
  MOVE R10 R8
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K18 ["ZOOM_INCREMENT"]
  ADD R12 R3 R13
  LOADN R13 0
  LOADN R14 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K14 [math.clamp]
  CALL R11 3 1
  CALL R9 2 0
  RETURN R0 0
  GETTABLEKS R10 R1 K11 ["Position"]
  GETTABLEKS R9 R10 K16 ["Z"]
  LOADN R10 0
  JUMPIFNOTLT R9 R10 [+63]
  GETTABLEKS R9 R2 K17 ["SetHorizontalScrollZoom"]
  MOVE R10 R8
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K18 ["ZOOM_INCREMENT"]
  SUB R12 R3 R13
  LOADN R13 0
  LOADN R14 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K14 [math.clamp]
  CALL R11 3 1
  CALL R9 2 0
  RETURN R0 0
  GETTABLEKS R9 R2 K19 ["OnScroll"]
  GETTABLEKS R11 R1 K11 ["Position"]
  GETTABLEKS R10 R11 K16 ["Z"]
  CALL R9 1 0
  RETURN R0 0
  GETTABLEKS R7 R1 K7 ["UserInputType"]
  GETIMPORT R8 K21 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R7 R8 [+34]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K22 ["dragging"]
  JUMPIFNOT R7 [+29]
  GETTABLEKS R10 R1 K23 ["Delta"]
  GETTABLEKS R9 R10 K5 ["X"]
  MINUS R8 R9
  DIV R7 R8 R5
  LOADN R10 1
  LOADK R12 K24 [0.01]
  FASTCALL2 MATH_MAX R12 R3 [+4]
  MOVE R13 R3
  GETIMPORT R11 K26 [math.max]
  CALL R11 2 1
  DIV R9 R10 R11
  MUL R8 R7 R9
  ADD R10 R4 R8
  LOADN R11 0
  LOADN R12 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R9 K14 [math.clamp]
  CALL R9 3 1
  MOVE R8 R9
  GETTABLEKS R9 R2 K17 ["SetHorizontalScrollZoom"]
  MOVE R10 R8
  MOVE R11 R3
  CALL R9 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["dragging"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["dragging"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R1 R2 K2 ["AbsoluteSize"]
  JUMPIF R1 [+3]
  GETIMPORT R1 K5 [Vector2.new]
  CALL R1 0 1
  GETTABLEKS R2 R0 K6 ["Playhead"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["getTrackPadding"]
  CALL R5 0 1
  MULK R4 R5 K7 [0.5]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["getScaledKeyframePosition"]
  MOVE R6 R2
  GETTABLEKS R7 R0 K10 ["StartTick"]
  GETTABLEKS R8 R0 K11 ["EndTick"]
  GETTABLEKS R10 R1 K12 ["X"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["getTrackPadding"]
  CALL R11 0 1
  SUB R9 R10 R11
  CALL R5 4 1
  ADD R3 R4 R5
  RETURN R3 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PlayState"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["PLAY_STATE"]
  GETTABLEKS R3 R4 K3 ["Pause"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETTABLEKS R2 R1 K4 ["StepAnimation"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Mouse"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R2 R1 K2 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.MouseButton3]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Mouse"]
  LOADK R4 K6 ["ClosedHand"]
  NAMECALL R2 R2 K7 ["__pushCursor"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["startDragging"]
  CALL R2 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Mouse"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["dragging"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R1 K3 ["UserInputType"]
  GETIMPORT R3 K6 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R2 R3 [+7]
  GETTABLEKS R2 R1 K3 ["UserInputType"]
  GETIMPORT R3 K8 [Enum.UserInputType.MouseButton3]
  JUMPIFNOTEQ R2 R3 [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Mouse"]
  NAMECALL R2 R2 K9 ["__popCursor"]
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["stopDragging"]
  CALL R2 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["FrameRate"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["LastTick"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["EndTick"]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K6 [math.max]
  CALL R1 2 1
  MUL R3 R1 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["TICK_FREQUENCY"]
  DIV R2 R3 R4
  LOADN R3 100
  JUMPIFNOTLT R2 R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["TRACK_PADDING_SMALL"]
  RETURN R3 1
  LOADN R3 232
  JUMPIFNOTLT R2 R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["TRACK_PADDING_MEDIUM"]
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["TRACK_PADDING_LARGE"]
  RETURN R3 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["IsChannelAnimation"]
  JUMPIFNOT R0 [+46]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["EditorMode"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["EDITOR_MODE"]
  GETTABLEKS R1 R2 K4 ["CurveCanvas"]
  JUMPIFNOTEQ R0 R1 [+18]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["SwitchEditorMode"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["EDITOR_MODE"]
  GETTABLEKS R1 R2 K6 ["DopeSheet"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K7 ["Analytics"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["SwitchEditorMode"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["EDITOR_MODE"]
  GETTABLEKS R1 R2 K4 ["CurveCanvas"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K7 ["Analytics"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K8 ["ReadOnly"]
  JUMPIF R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K9 ["OnPromoteRequested"]
  CALL R0 0 0
  RETURN R0 0

PROTO_10:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["ctrlHeld"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["dragging"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["updateSize"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K3 ["inputChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["startDragging"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["stopDragging"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K6 ["getPlayheadPositionX"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["stepAnimation"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["inputBegan"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["inputEnded"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K10 ["getTrackPadding"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K11 ["toggleEditorClicked"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isControl"]
  GETTABLEKS R2 R0 K1 ["KeyCode"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["ctrlHeld"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isControl"]
  GETTABLEKS R2 R0 K1 ["KeyCode"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["ctrlHeld"]
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["StartTick"]
  GETTABLEKS R4 R1 K3 ["EndTick"]
  GETTABLEKS R5 R1 K4 ["LastTick"]
  GETTABLEKS R6 R1 K5 ["SnapMode"]
  GETTABLEKS R7 R1 K6 ["FrameRate"]
  GETUPVAL R9 0
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADNIL R8
  JUMP [+2]
  GETTABLEKS R8 R1 K7 ["ShowAsSeconds"]
  GETTABLEKS R9 R1 K8 ["TimelineUnit"]
  GETTABLEKS R10 R1 K9 ["HorizontalScroll"]
  GETTABLEKS R11 R1 K10 ["HorizontalZoom"]
  GETTABLEKS R12 R1 K11 ["VerticalScroll"]
  GETTABLEKS R13 R1 K12 ["VerticalZoom"]
  GETTABLEKS R14 R1 K13 ["LayoutOrder"]
  GETTABLEKS R15 R1 K14 ["ZIndex"]
  GETTABLEKS R16 R1 K15 ["Size"]
  GETTABLEKS R17 R1 K16 ["TopTrackIndex"]
  GETTABLEKS R18 R1 K17 ["ShowEvents"]
  GETTABLEKS R19 R1 K18 ["Playhead"]
  GETTABLEKS R20 R1 K19 ["IsChannelAnimation"]
  GETTABLEKS R21 R1 K20 ["ColorsPosition"]
  GETTABLEKS R22 R1 K21 ["Localization"]
  GETTABLEKS R23 R1 K22 ["SnapToNearestKeyframe"]
  GETTABLEKS R24 R1 K23 ["SnapToNearestFrame"]
  GETTABLEKS R25 R2 K24 ["AbsoluteSize"]
  JUMPIF R25 [+3]
  GETIMPORT R25 K27 [Vector2.new]
  CALL R25 0 1
  GETTABLEKS R26 R2 K28 ["AbsolutePosition"]
  JUMPIF R26 [+3]
  GETIMPORT R26 K27 [Vector2.new]
  CALL R26 0 1
  GETTABLEKS R27 R0 K29 ["getTrackPadding"]
  CALL R27 0 1
  LOADB R28 0
  JUMPIFNOTLE R3 R19 [+5]
  JUMPIFLE R19 R4 [+2]
  LOADB R28 0 +1
  LOADB R28 1
  GETTABLEKS R30 R1 K30 ["EditorMode"]
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K31 ["EDITOR_MODE"]
  GETTABLEKS R31 R32 K32 ["DopeSheet"]
  JUMPIFEQ R30 R31 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  GETTABLEKS R31 R1 K30 ["EditorMode"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K31 ["EDITOR_MODE"]
  GETTABLEKS R32 R33 K33 ["CurveCanvas"]
  JUMPIFEQ R31 R32 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  GETTABLEKS R31 R1 K34 ["CannotPasteError"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K35 ["createElement"]
  LOADK R33 K36 ["Frame"]
  NEWTABLE R34 8 0
  LOADN R35 1
  SETTABLEKS R35 R34 K37 ["BackgroundTransparency"]
  SETTABLEKS R15 R34 K14 ["ZIndex"]
  SETTABLEKS R14 R34 K13 ["LayoutOrder"]
  SETTABLEKS R16 R34 K15 ["Size"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K38 ["Change"]
  GETTABLEKS R35 R36 K24 ["AbsoluteSize"]
  GETTABLEKS R36 R0 K39 ["updateSize"]
  SETTABLE R36 R34 R35
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K40 ["Event"]
  GETTABLEKS R35 R36 K41 ["InputBegan"]
  GETTABLEKS R36 R0 K42 ["inputBegan"]
  SETTABLE R36 R34 R35
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K40 ["Event"]
  GETTABLEKS R35 R36 K43 ["InputEnded"]
  GETTABLEKS R36 R0 K44 ["inputEnded"]
  SETTABLE R36 R34 R35
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K40 ["Event"]
  GETTABLEKS R35 R36 K45 ["MouseLeave"]
  GETTABLEKS R36 R0 K46 ["stopDragging"]
  SETTABLE R36 R34 R35
  DUPTABLE R35 K53 [{"Layout", "TimelineContainer", "DopeSheetController", "CurveEditorController", "CannotPasteToast", "IgnoreLayout"}]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K35 ["createElement"]
  LOADK R37 K54 ["UIListLayout"]
  DUPTABLE R38 K59 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K62 [Enum.FillDirection.Vertical]
  SETTABLEKS R39 R38 K55 ["FillDirection"]
  GETIMPORT R39 K64 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R39 R38 K56 ["HorizontalAlignment"]
  GETIMPORT R39 K65 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K57 ["SortOrder"]
  GETIMPORT R39 K67 [Enum.VerticalAlignment.Top]
  SETTABLEKS R39 R38 K58 ["VerticalAlignment"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K47 ["Layout"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K35 ["createElement"]
  GETUPVAL R37 3
  DUPTABLE R38 K74 [{"StartTick", "EndTick", "LastTick", "SnapMode", "TrackPadding", "FrameRate", "ShowAsSeconds", "TimelineUnit", "LayoutOrder", "ParentSize", "ParentPosition", "StepAnimation", "SnapToNearestKeyframe", "SnapToNearestFrame", "AnimationData", "Playhead", "ZIndex", "EditorMode", "OnToggleEditorClicked"}]
  SETTABLEKS R3 R38 K2 ["StartTick"]
  SETTABLEKS R4 R38 K3 ["EndTick"]
  SETTABLEKS R5 R38 K4 ["LastTick"]
  SETTABLEKS R6 R38 K5 ["SnapMode"]
  SETTABLEKS R27 R38 K68 ["TrackPadding"]
  SETTABLEKS R7 R38 K6 ["FrameRate"]
  GETUPVAL R40 0
  CALL R40 0 1
  JUMPIFNOT R40 [+2]
  LOADNIL R39
  JUMP [+1]
  MOVE R39 R8
  SETTABLEKS R39 R38 K7 ["ShowAsSeconds"]
  SETTABLEKS R9 R38 K8 ["TimelineUnit"]
  LOADN R39 0
  SETTABLEKS R39 R38 K13 ["LayoutOrder"]
  SETTABLEKS R25 R38 K69 ["ParentSize"]
  SETTABLEKS R26 R38 K70 ["ParentPosition"]
  GETTABLEKS R39 R0 K75 ["stepAnimation"]
  SETTABLEKS R39 R38 K71 ["StepAnimation"]
  SETTABLEKS R23 R38 K22 ["SnapToNearestKeyframe"]
  SETTABLEKS R24 R38 K23 ["SnapToNearestFrame"]
  GETTABLEKS R39 R1 K72 ["AnimationData"]
  SETTABLEKS R39 R38 K72 ["AnimationData"]
  SETTABLEKS R19 R38 K18 ["Playhead"]
  LOADN R39 2
  SETTABLEKS R39 R38 K14 ["ZIndex"]
  GETTABLEKS R39 R1 K30 ["EditorMode"]
  SETTABLEKS R39 R38 K30 ["EditorMode"]
  GETTABLEKS R39 R0 K76 ["toggleEditorClicked"]
  SETTABLEKS R39 R38 K73 ["OnToggleEditorClicked"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K48 ["TimelineContainer"]
  JUMPIFNOT R29 [+54]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K35 ["createElement"]
  GETUPVAL R37 4
  DUPTABLE R38 K78 [{"ShowEvents", "StartTick", "EndTick", "TrackPadding", "TopTrackIndex", "Size", "ShowAsSeconds", "TimelineUnit", "IsChannelAnimation", "ColorsPosition", "ZIndex", "OnInputChanged"}]
  SETTABLEKS R18 R38 K17 ["ShowEvents"]
  SETTABLEKS R3 R38 K2 ["StartTick"]
  SETTABLEKS R4 R38 K3 ["EndTick"]
  SETTABLEKS R27 R38 K68 ["TrackPadding"]
  SETTABLEKS R17 R38 K16 ["TopTrackIndex"]
  GETIMPORT R39 K80 [UDim2.new]
  LOADN R40 1
  LOADN R41 0
  LOADN R42 1
  GETUPVAL R46 1
  GETTABLEKS R45 R46 K81 ["TIMELINE_HEIGHT"]
  MINUS R44 R45
  GETUPVAL R46 1
  GETTABLEKS R45 R46 K82 ["SCROLL_BAR_SIZE"]
  SUB R43 R44 R45
  CALL R39 4 1
  SETTABLEKS R39 R38 K15 ["Size"]
  GETUPVAL R40 0
  CALL R40 0 1
  JUMPIFNOT R40 [+2]
  LOADNIL R39
  JUMP [+1]
  MOVE R39 R8
  SETTABLEKS R39 R38 K7 ["ShowAsSeconds"]
  SETTABLEKS R9 R38 K8 ["TimelineUnit"]
  SETTABLEKS R20 R38 K19 ["IsChannelAnimation"]
  SETTABLEKS R21 R38 K20 ["ColorsPosition"]
  LOADN R39 1
  SETTABLEKS R39 R38 K14 ["ZIndex"]
  GETTABLEKS R39 R0 K83 ["inputChanged"]
  SETTABLEKS R39 R38 K77 ["OnInputChanged"]
  CALL R36 2 1
  JUMPIF R36 [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K49 ["DopeSheetController"]
  JUMPIFNOT R30 [+50]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K35 ["createElement"]
  GETUPVAL R37 5
  DUPTABLE R38 K84 [{"ShowEvents", "StartTick", "EndTick", "TrackPadding", "Size", "ShowAsSeconds", "TimelineUnit", "Playhead", "ZIndex", "OnInputChanged"}]
  SETTABLEKS R18 R38 K17 ["ShowEvents"]
  SETTABLEKS R3 R38 K2 ["StartTick"]
  SETTABLEKS R4 R38 K3 ["EndTick"]
  SETTABLEKS R27 R38 K68 ["TrackPadding"]
  GETIMPORT R39 K80 [UDim2.new]
  LOADN R40 1
  LOADN R41 0
  LOADN R42 1
  GETUPVAL R46 1
  GETTABLEKS R45 R46 K81 ["TIMELINE_HEIGHT"]
  MINUS R44 R45
  GETUPVAL R46 1
  GETTABLEKS R45 R46 K82 ["SCROLL_BAR_SIZE"]
  SUB R43 R44 R45
  CALL R39 4 1
  SETTABLEKS R39 R38 K15 ["Size"]
  GETUPVAL R40 0
  CALL R40 0 1
  JUMPIFNOT R40 [+2]
  LOADNIL R39
  JUMP [+1]
  MOVE R39 R8
  SETTABLEKS R39 R38 K7 ["ShowAsSeconds"]
  SETTABLEKS R9 R38 K8 ["TimelineUnit"]
  SETTABLEKS R19 R38 K18 ["Playhead"]
  LOADN R39 1
  SETTABLEKS R39 R38 K14 ["ZIndex"]
  GETTABLEKS R39 R0 K83 ["inputChanged"]
  SETTABLEKS R39 R38 K77 ["OnInputChanged"]
  CALL R36 2 1
  JUMPIF R36 [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K50 ["CurveEditorController"]
  JUMPIFNOT R31 [+18]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K35 ["createElement"]
  GETUPVAL R37 6
  DUPTABLE R38 K87 [{"Text", "OnClose"}]
  LOADK R41 K88 ["Toast"]
  LOADK R42 K34 ["CannotPasteError"]
  NAMECALL R39 R22 K89 ["getText"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K85 ["Text"]
  GETTABLEKS R39 R1 K90 ["CloseCannotPasteToast"]
  SETTABLEKS R39 R38 K86 ["OnClose"]
  CALL R36 2 1
  JUMPIF R36 [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K51 ["CannotPasteToast"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K35 ["createElement"]
  LOADK R37 K91 ["Folder"]
  NEWTABLE R38 0 0
  DUPTABLE R39 K97 [{"TimelineBorder", "Scrubber", "HorizontalZoomBar", "VerticalZoomBar", "KeyboardListener"}]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K35 ["createElement"]
  GETUPVAL R41 7
  DUPTABLE R42 K102 [{"Position", "DominantAxis", "Weight", "Padding", "ZIndex"}]
  GETIMPORT R43 K80 [UDim2.new]
  LOADK R44 K103 [0.5]
  LOADN R45 0
  LOADN R46 0
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K81 ["TIMELINE_HEIGHT"]
  CALL R43 4 1
  SETTABLEKS R43 R42 K98 ["Position"]
  GETIMPORT R43 K105 [Enum.DominantAxis.Width]
  SETTABLEKS R43 R42 K99 ["DominantAxis"]
  LOADN R43 1
  SETTABLEKS R43 R42 K100 ["Weight"]
  LOADN R43 0
  SETTABLEKS R43 R42 K101 ["Padding"]
  LOADN R43 2
  SETTABLEKS R43 R42 K14 ["ZIndex"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K92 ["TimelineBorder"]
  MOVE R40 R28
  JUMPIFNOT R40 [+46]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K35 ["createElement"]
  GETUPVAL R41 8
  DUPTABLE R42 K111 [{"Position", "AnchorPoint", "Height", "ShowHead", "HeadSize", "ZIndex", "Thickness"}]
  GETIMPORT R43 K80 [UDim2.new]
  LOADN R44 0
  GETTABLEKS R45 R0 K112 ["getPlayheadPositionX"]
  CALL R45 0 1
  LOADN R46 0
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K98 ["Position"]
  GETIMPORT R43 K27 [Vector2.new]
  LOADK R44 K103 [0.5]
  LOADN R45 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K106 ["AnchorPoint"]
  GETTABLEKS R43 R25 K113 ["Y"]
  SETTABLEKS R43 R42 K107 ["Height"]
  LOADB R43 1
  SETTABLEKS R43 R42 K108 ["ShowHead"]
  GETIMPORT R43 K80 [UDim2.new]
  LOADN R44 0
  LOADN R45 5
  LOADN R46 0
  LOADN R47 5
  CALL R43 4 1
  SETTABLEKS R43 R42 K109 ["HeadSize"]
  LOADN R43 3
  SETTABLEKS R43 R42 K14 ["ZIndex"]
  LOADN R43 1
  SETTABLEKS R43 R42 K110 ["Thickness"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K93 ["Scrubber"]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K35 ["createElement"]
  GETUPVAL R41 9
  DUPTABLE R42 K120 [{"Size", "Position", "Direction", "ZIndex", "LayoutOrder", "ContainerSize", "AdjustScrollZoom", "Scroll", "Zoom", "Min"}]
  GETIMPORT R43 K80 [UDim2.new]
  LOADN R44 0
  GETTABLEKS R47 R25 K122 ["X"]
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K123 ["SCROLL_BAR_PADDING"]
  SUB R46 R47 R48
  ADDK R45 R46 K121 [1]
  LOADN R46 0
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K82 ["SCROLL_BAR_SIZE"]
  CALL R43 4 1
  SETTABLEKS R43 R42 K15 ["Size"]
  GETIMPORT R43 K80 [UDim2.new]
  LOADN R44 0
  LOADN R45 0
  LOADN R46 1
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K82 ["SCROLL_BAR_SIZE"]
  MINUS R47 R48
  CALL R43 4 1
  SETTABLEKS R43 R42 K98 ["Position"]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K124 ["HORIZONTAL"]
  SETTABLEKS R43 R42 K114 ["Direction"]
  LOADN R43 4
  SETTABLEKS R43 R42 K14 ["ZIndex"]
  LOADN R43 2
  SETTABLEKS R43 R42 K13 ["LayoutOrder"]
  GETIMPORT R43 K27 [Vector2.new]
  GETTABLEKS R44 R25 K122 ["X"]
  GETTABLEKS R45 R25 K113 ["Y"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K115 ["ContainerSize"]
  GETTABLEKS R43 R1 K125 ["SetHorizontalScrollZoom"]
  SETTABLEKS R43 R42 K116 ["AdjustScrollZoom"]
  SETTABLEKS R10 R42 K117 ["Scroll"]
  SETTABLEKS R11 R42 K118 ["Zoom"]
  GETTABLEKS R44 R26 K122 ["X"]
  ADDK R43 R44 K121 [1]
  SETTABLEKS R43 R42 K119 ["Min"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K94 ["HorizontalZoomBar"]
  MOVE R40 R30
  JUMPIFNOT R40 [+87]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K35 ["createElement"]
  GETUPVAL R41 9
  DUPTABLE R42 K120 [{"Size", "Position", "Direction", "ZIndex", "LayoutOrder", "ContainerSize", "AdjustScrollZoom", "Scroll", "Zoom", "Min"}]
  GETIMPORT R43 K80 [UDim2.new]
  LOADN R44 0
  GETUPVAL R46 1
  GETTABLEKS R45 R46 K82 ["SCROLL_BAR_SIZE"]
  LOADN R46 0
  GETTABLEKS R51 R25 K113 ["Y"]
  GETUPVAL R53 1
  GETTABLEKS R52 R53 K82 ["SCROLL_BAR_SIZE"]
  SUB R50 R51 R52
  GETUPVAL R52 1
  GETTABLEKS R51 R52 K123 ["SCROLL_BAR_PADDING"]
  SUB R49 R50 R51
  GETUPVAL R51 1
  GETTABLEKS R50 R51 K81 ["TIMELINE_HEIGHT"]
  SUB R48 R49 R50
  ADDK R47 R48 K121 [1]
  CALL R43 4 1
  SETTABLEKS R43 R42 K15 ["Size"]
  GETIMPORT R43 K80 [UDim2.new]
  LOADN R44 1
  LOADN R45 0
  LOADN R46 0
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K81 ["TIMELINE_HEIGHT"]
  CALL R43 4 1
  SETTABLEKS R43 R42 K98 ["Position"]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K126 ["VERTICAL"]
  SETTABLEKS R43 R42 K114 ["Direction"]
  LOADN R43 4
  SETTABLEKS R43 R42 K14 ["ZIndex"]
  LOADN R43 2
  SETTABLEKS R43 R42 K13 ["LayoutOrder"]
  GETIMPORT R43 K27 [Vector2.new]
  GETTABLEKS R44 R25 K122 ["X"]
  GETTABLEKS R47 R25 K113 ["Y"]
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K82 ["SCROLL_BAR_SIZE"]
  SUB R46 R47 R48
  GETUPVAL R48 1
  GETTABLEKS R47 R48 K81 ["TIMELINE_HEIGHT"]
  SUB R45 R46 R47
  CALL R43 2 1
  SETTABLEKS R43 R42 K115 ["ContainerSize"]
  GETTABLEKS R43 R1 K127 ["SetVerticalScrollZoom"]
  SETTABLEKS R43 R42 K116 ["AdjustScrollZoom"]
  SETTABLEKS R12 R42 K117 ["Scroll"]
  SETTABLEKS R13 R42 K118 ["Zoom"]
  GETTABLEKS R45 R26 K113 ["Y"]
  GETUPVAL R47 1
  GETTABLEKS R46 R47 K81 ["TIMELINE_HEIGHT"]
  ADD R44 R45 R46
  ADDK R43 R44 K121 [1]
  SETTABLEKS R43 R42 K119 ["Min"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K95 ["VerticalZoomBar"]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K35 ["createElement"]
  GETUPVAL R41 10
  DUPTABLE R42 K130 [{"OnKeyPressed", "OnKeyReleased"}]
  NEWCLOSURE R43 P0
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  SETTABLEKS R43 R42 K128 ["OnKeyPressed"]
  NEWCLOSURE R43 P1
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  SETTABLEKS R43 R42 K129 ["OnKeyReleased"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K96 ["KeyboardListener"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K52 ["IgnoreLayout"]
  CALL R32 3 -1
  RETURN R32 -1

PROTO_14:
  DUPTABLE R1 K7 [{"AnimationData", "CannotPasteError", "EditorMode", "IsPlaying", "PlayState", "SnapMode", "ReadOnly"}]
  GETTABLEKS R2 R0 K0 ["AnimationData"]
  SETTABLEKS R2 R1 K0 ["AnimationData"]
  GETTABLEKS R3 R0 K8 ["Notifications"]
  GETTABLEKS R2 R3 K1 ["CannotPasteError"]
  SETTABLEKS R2 R1 K1 ["CannotPasteError"]
  GETTABLEKS R3 R0 K9 ["Status"]
  GETTABLEKS R2 R3 K2 ["EditorMode"]
  SETTABLEKS R2 R1 K2 ["EditorMode"]
  GETTABLEKS R3 R0 K9 ["Status"]
  GETTABLEKS R2 R3 K3 ["IsPlaying"]
  SETTABLEKS R2 R1 K3 ["IsPlaying"]
  GETTABLEKS R3 R0 K9 ["Status"]
  GETTABLEKS R2 R3 K4 ["PlayState"]
  SETTABLEKS R2 R1 K4 ["PlayState"]
  GETTABLEKS R3 R0 K9 ["Status"]
  GETTABLEKS R2 R3 K5 ["SnapMode"]
  SETTABLEKS R2 R1 K5 ["SnapMode"]
  GETTABLEKS R3 R0 K9 ["Status"]
  GETTABLEKS R2 R3 K6 ["ReadOnly"]
  SETTABLEKS R2 R1 K6 ["ReadOnly"]
  RETURN R1 1

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["CannotPasteError"]
  LOADB R3 0
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_23:
  DUPTABLE R1 K8 [{"CloseCannotPasteToast", "SetHorizontalScrollZoom", "SetVerticalScrollZoom", "StepAnimation", "SnapToNearestKeyframe", "SnapToNearestFrame", "SetEditorMode", "SwitchEditorMode"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["CloseCannotPasteToast"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetHorizontalScrollZoom"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetVerticalScrollZoom"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["StepAnimation"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["SnapToNearestKeyframe"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["SnapToNearestFrame"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["SetEditorMode"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K7 ["SwitchEditorMode"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R7 R3 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["KeyboardListener"]
  GETTABLEKS R8 R3 K12 ["UI"]
  GETTABLEKS R7 R8 K14 ["Separator"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K17 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K18 ["TrackUtils"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K19 ["Input"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K20 ["Components"]
  GETTABLEKS R12 R13 K21 ["DopeSheetController"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K22 ["Curves"]
  GETTABLEKS R13 R14 K23 ["CurveEditorController"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K24 ["TimelineContainer"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K15 ["Src"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K25 ["ZoomBar"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K15 ["Src"]
  GETTABLEKS R18 R19 K20 ["Components"]
  GETTABLEKS R17 R18 K26 ["Timeline"]
  GETTABLEKS R16 R17 K27 ["Scrubber"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K20 ["Components"]
  GETTABLEKS R18 R19 K28 ["Toast"]
  GETTABLEKS R17 R18 K29 ["NoticeToast"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K30 ["Actions"]
  GETTABLEKS R18 R19 K31 ["SetEditorMode"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K30 ["Actions"]
  GETTABLEKS R19 R20 K32 ["SetHorizontalScrollZoom"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K15 ["Src"]
  GETTABLEKS R21 R22 K30 ["Actions"]
  GETTABLEKS R20 R21 K33 ["SetNotification"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K15 ["Src"]
  GETTABLEKS R22 R23 K30 ["Actions"]
  GETTABLEKS R21 R22 K34 ["SetVerticalScrollZoom"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K15 ["Src"]
  GETTABLEKS R23 R24 K35 ["Thunks"]
  GETTABLEKS R22 R23 K36 ["SnapToNearestFrame"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K15 ["Src"]
  GETTABLEKS R24 R25 K35 ["Thunks"]
  GETTABLEKS R23 R24 K37 ["SnapToNearestKeyframe"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R27 R0 K15 ["Src"]
  GETTABLEKS R26 R27 K35 ["Thunks"]
  GETTABLEKS R25 R26 K38 ["Playback"]
  GETTABLEKS R24 R25 K39 ["StepAnimation"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K15 ["Src"]
  GETTABLEKS R26 R27 K35 ["Thunks"]
  GETTABLEKS R25 R26 K40 ["SwitchEditorMode"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R27 R0 K41 ["LuaFlags"]
  GETTABLEKS R26 R27 K42 ["GetFFlagTimelineUnitSeconds"]
  CALL R25 1 1
  GETTABLEKS R26 R1 K43 ["PureComponent"]
  LOADK R28 K44 ["TrackEditor"]
  NAMECALL R26 R26 K45 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K46 [PROTO_10]
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R27 R26 K47 ["init"]
  DUPCLOSURE R27 K48 [PROTO_13]
  CAPTURE VAL R25
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R27 R26 K49 ["render"]
  DUPCLOSURE R27 K50 [PROTO_14]
  DUPCLOSURE R28 K51 [PROTO_23]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R17
  CAPTURE VAL R24
  MOVE R29 R5
  DUPTABLE R30 K55 [{"Analytics", "Localization", "Mouse"}]
  GETTABLEKS R31 R4 K52 ["Analytics"]
  SETTABLEKS R31 R30 K52 ["Analytics"]
  GETTABLEKS R31 R4 K53 ["Localization"]
  SETTABLEKS R31 R30 K53 ["Localization"]
  GETTABLEKS R31 R4 K54 ["Mouse"]
  SETTABLEKS R31 R30 K54 ["Mouse"]
  CALL R29 1 1
  MOVE R30 R26
  CALL R29 1 1
  MOVE R26 R29
  GETTABLEKS R29 R2 K56 ["connect"]
  MOVE R30 R27
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1
