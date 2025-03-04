PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnScaleHandleDragStart"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["getSelectionData"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K3 ["latestKeyframe"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnScaleHandleDragStart"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnScaleHandleDragStart"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["getSelectionData"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K3 ["earliestKeyframe"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnScaleHandleDragStart"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getPathValue"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 1
  ADD R3 R4 R2
  GETUPVAL R4 2
  JUMPIFNOTLE R4 R3 [+6]
  GETUPVAL R4 3
  JUMPIFNOTEQKNIL R4 [+3]
  GETUPVAL R4 4
  SETUPVAL R4 3
  GETUPVAL R4 5
  JUMPIFNOTLE R3 R4 [+3]
  GETUPVAL R4 4
  SETUPVAL R4 6
  GETTABLEKS R4 R0 K1 ["Expanded"]
  JUMPIFNOT R4 [+55]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["IsChannelAnimation"]
  JUMPIFNOT R4 [+40]
  GETUPVAL R5 4
  ADDK R4 R5 K4 [1]
  SETUPVAL R4 4
  GETIMPORT R4 K6 [ipairs]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K7 ["COMPONENT_TRACK_TYPES"]
  GETTABLEKS R9 R0 K8 ["Type"]
  GETTABLE R7 R8 R9
  GETTABLEKS R5 R7 K9 ["_Order"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R0 K10 ["Components"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R10 R0 K10 ["Components"]
  GETTABLE R9 R10 R8
  JUMPIFNOT R9 [+15]
  GETUPVAL R10 9
  MOVE R11 R9
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K11 ["List"]
  GETTABLEKS R12 R13 K12 ["join"]
  MOVE R13 R1
  NEWTABLE R14 0 1
  MOVE R15 R8
  SETLIST R14 R15 1 [1]
  CALL R12 2 -1
  CALL R10 -1 0
  FORGLOOP R4 2 [inext] [-23]
  RETURN R0 0
  GETUPVAL R5 4
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K13 ["getExpandedSize"]
  MOVE R7 R0
  CALL R6 1 1
  ADD R4 R5 R6
  SETUPVAL R4 4
  RETURN R0 0
  GETUPVAL R5 4
  ADDK R4 R5 K4 [1]
  SETUPVAL R4 4
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Tracks"]
  GETTABLEKS R3 R1 K2 ["TopTrackIndex"]
  LOADN R4 1
  GETTABLEKS R5 R0 K3 ["topSelectedChannelIndex"]
  GETTABLEKS R6 R0 K4 ["bottomSelectedChannelIndex"]
  LOADNIL R7
  LOADNIL R8
  MOVE R9 R3
  LENGTH R10 R2
  JUMPIFNOTLE R9 R10 [+22]
  GETTABLE R10 R2 R9
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U1
  CAPTURE REF R9
  CAPTURE VAL R5
  CAPTURE REF R7
  CAPTURE REF R4
  CAPTURE VAL R6
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R11
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  MOVE R12 R11
  MOVE R13 R10
  NEWTABLE R14 0 0
  CALL R12 2 0
  ADDK R9 R9 K5 [1]
  JUMPBACK [-24]
  CLOSEUPVALS R4
  RETURN R7 2

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["StartTick"]
  GETTABLEKS R3 R1 K2 ["EndTick"]
  GETTABLEKS R4 R1 K3 ["DopeSheetWidth"]
  GETTABLEKS R5 R1 K4 ["UseFullHeight"]
  JUMPIFNOT R5 [+24]
  DUPTABLE R5 K7 [{"left", "right"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["getScaledKeyframePosition"]
  GETTABLEKS R7 R0 K9 ["earliestKeyframe"]
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  CALL R6 4 1
  SETTABLEKS R6 R5 K5 ["left"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["getScaledKeyframePosition"]
  GETTABLEKS R7 R0 K10 ["latestKeyframe"]
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["right"]
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["getSelectionChannelExtents"]
  MOVE R6 R0
  CALL R5 1 2
  JUMPIFNOT R5 [+46]
  JUMPIFNOT R6 [+45]
  DUPTABLE R7 K14 [{"top", "bottom", "left", "right"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["SUMMARY_TRACK_HEIGHT"]
  SUBK R11 R5 K16 [1]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["TRACK_HEIGHT"]
  MUL R10 R11 R12
  ADD R8 R9 R10
  SETTABLEKS R8 R7 K12 ["top"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["SUMMARY_TRACK_HEIGHT"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K17 ["TRACK_HEIGHT"]
  MUL R10 R6 R11
  ADD R8 R9 R10
  SETTABLEKS R8 R7 K13 ["bottom"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["getScaledKeyframePosition"]
  GETTABLEKS R9 R0 K9 ["earliestKeyframe"]
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  CALL R8 4 1
  SETTABLEKS R8 R7 K5 ["left"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["getScaledKeyframePosition"]
  GETTABLEKS R9 R0 K10 ["latestKeyframe"]
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["right"]
  RETURN R7 1
  LOADNIL R7
  RETURN R7 1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["Selection"]
  JUMPIFNOT R3 [+61]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["UseFullHeight"]
  JUMPIF R3 [+28]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["getPathValue"]
  MOVE R4 R2
  CALL R3 1 1
  ADD R4 R1 R3
  GETUPVAL R5 2
  JUMPIFNOTEQKNIL R5 [+4]
  SETUPVAL R4 2
  SETUPVAL R4 3
  JUMP [+16]
  GETUPVAL R6 2
  FASTCALL2 MATH_MIN R6 R4 [+4]
  MOVE R7 R4
  GETIMPORT R5 K6 [math.min]
  CALL R5 2 1
  SETUPVAL R5 2
  GETUPVAL R6 3
  FASTCALL2 MATH_MAX R6 R4 [+4]
  MOVE R7 R4
  GETIMPORT R5 K8 [math.max]
  CALL R5 2 1
  SETUPVAL R5 3
  GETIMPORT R3 K10 [pairs]
  GETTABLEKS R4 R0 K0 ["Selection"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R9 4
  FASTCALL2 MATH_MIN R9 R6 [+4]
  MOVE R10 R6
  GETIMPORT R8 K6 [math.min]
  CALL R8 2 1
  SETUPVAL R8 4
  GETUPVAL R9 5
  FASTCALL2 MATH_MAX R9 R6 [+4]
  MOVE R10 R6
  GETIMPORT R8 K8 [math.max]
  CALL R8 2 1
  SETUPVAL R8 5
  FORGLOOP R3 2 [-17]
  GETIMPORT R3 K10 [pairs]
  GETTABLEKS R4 R0 K11 ["Components"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K12 ["List"]
  GETTABLEKS R8 R9 K13 ["join"]
  MOVE R9 R2
  NEWTABLE R10 0 1
  MOVE R11 R6
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R9 7
  MOVE R10 R7
  MOVE R11 R1
  MOVE R12 R8
  CALL R9 3 0
  FORGLOOP R3 2 [-18]
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["EndTick"]
  ADDK R0 R1 K0 [1]
  LOADN R1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K3 ["SelectedKeyframes"]
  LOADNIL R3
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R0
  CAPTURE REF R1
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  GETIMPORT R6 K5 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETIMPORT R11 K5 [pairs]
  MOVE R12 R10
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K1 ["props"]
  GETTABLEKS R16 R17 K6 ["UseFullHeight"]
  JUMPIF R16 [+18]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K7 ["getTrackIndex"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["props"]
  GETTABLEKS R17 R18 K8 ["Tracks"]
  MOVE R18 R14
  CALL R16 2 1
  JUMPIFNOT R16 [+13]
  MOVE R17 R5
  MOVE R18 R15
  MOVE R19 R16
  NEWTABLE R20 0 0
  CALL R17 3 0
  JUMP [+6]
  MOVE R16 R5
  MOVE R17 R15
  LOADNIL R18
  NEWTABLE R19 0 0
  CALL R16 3 0
  FORGLOOP R11 2 [-31]
  FORGLOOP R6 2 [-38]
  DUPTABLE R6 K13 [{"earliestKeyframe", "latestKeyframe", "topSelectedChannelIndex", "bottomSelectedChannelIndex"}]
  SETTABLEKS R0 R6 K9 ["earliestKeyframe"]
  SETTABLEKS R1 R6 K10 ["latestKeyframe"]
  ORK R7 R3 K14 []
  SETTABLEKS R7 R6 K11 ["topSelectedChannelIndex"]
  ORK R7 R4 K14 []
  SETTABLEKS R7 R6 K12 ["bottomSelectedChannelIndex"]
  CLOSEUPVALS R0
  RETURN R6 1

PROTO_7:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["leftScaleHandleDragStart"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["rightScaleHandleDragStart"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K2 ["getSelectionChannelExtents"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K3 ["calculateScaleHandleExtents"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K4 ["getSelectionData"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["ShowSelectionArea"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+2]
  GETTABLEKS R4 R1 K3 ["ShowAsSeconds"]
  GETTABLEKS R5 R1 K4 ["TimelineUnit"]
  GETTABLEKS R6 R1 K5 ["Dragging"]
  GETTABLEKS R7 R1 K6 ["FrameRate"]
  GETTABLEKS R8 R1 K7 ["UseFullHeight"]
  GETTABLEKS R9 R1 K8 ["ZIndex"]
  GETTABLEKS R10 R1 K9 ["OnScaleHandleDragMoved"]
  GETTABLEKS R11 R1 K10 ["OnScaleHandleDragEnd"]
  GETTABLEKS R12 R0 K11 ["getSelectionData"]
  CALL R12 0 1
  GETTABLEKS R13 R0 K12 ["calculateScaleHandleExtents"]
  MOVE R14 R12
  CALL R13 1 1
  JUMPIF R13 [+1]
  RETURN R0 0
  GETTABLEKS R14 R12 K13 ["earliestKeyframe"]
  GETTABLEKS R15 R12 K14 ["latestKeyframe"]
  GETIMPORT R16 K17 [UDim.new]
  LOADN R17 0
  GETTABLEKS R20 R13 K19 ["right"]
  GETTABLEKS R21 R13 K20 ["left"]
  SUB R19 R20 R21
  ADDK R18 R19 K18 [24]
  CALL R16 2 1
  GETIMPORT R17 K17 [UDim.new]
  JUMPIFNOT R8 [+2]
  LOADN R18 1
  JUMP [+1]
  LOADN R18 0
  JUMPIFNOT R8 [+2]
  LOADN R19 0
  JUMP [+5]
  GETTABLEKS R20 R13 K21 ["bottom"]
  GETTABLEKS R21 R13 K22 ["top"]
  SUB R19 R20 R21
  CALL R17 2 1
  LOADNIL R18
  JUMPIFNOT R8 [+10]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K23 ["SUMMARY_TRACK_HEIGHT"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K23 ["SUMMARY_TRACK_HEIGHT"]
  SUBK R21 R22 K25 [18]
  DIVK R20 R21 K24 [2]
  ADD R18 R19 R20
  JUMP [+12]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K23 ["SUMMARY_TRACK_HEIGHT"]
  GETTABLEKS R21 R13 K22 ["top"]
  SUB R19 R20 R21
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K23 ["SUMMARY_TRACK_HEIGHT"]
  SUBK R21 R22 K25 [18]
  DIVK R20 R21 K24 [2]
  ADD R18 R19 R20
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K26 ["createElement"]
  LOADK R20 K27 ["Frame"]
  DUPTABLE R21 K32 [{"BackgroundColor3", "BackgroundTransparency", "Position", "Size", "ZIndex"}]
  GETTABLEKS R22 R2 K33 ["selectionBox"]
  SETTABLEKS R22 R21 K28 ["BackgroundColor3"]
  JUMPIFNOT R3 [+2]
  LOADK R22 K34 [0.8]
  JUMP [+1]
  LOADN R22 1
  SETTABLEKS R22 R21 K29 ["BackgroundTransparency"]
  GETIMPORT R22 K36 [UDim2.new]
  LOADN R23 0
  GETTABLEKS R27 R1 K38 ["TrackPadding"]
  DIVK R26 R27 K24 [2]
  GETTABLEKS R27 R13 K20 ["left"]
  ADD R25 R26 R27
  SUBK R24 R25 K37 [12]
  LOADN R25 0
  JUMPIFNOT R8 [+2]
  LOADN R26 0
  JUMP [+2]
  GETTABLEKS R26 R13 K22 ["top"]
  CALL R22 4 1
  SETTABLEKS R22 R21 K30 ["Position"]
  GETIMPORT R22 K36 [UDim2.new]
  MOVE R23 R16
  MOVE R24 R17
  CALL R22 2 1
  SETTABLEKS R22 R21 K31 ["Size"]
  SETTABLEKS R9 R21 K8 ["ZIndex"]
  DUPTABLE R22 K43 [{"LeftHandle", "RightHandle", "LeftTimeTag", "RightTimeTag"}]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K26 ["createElement"]
  GETUPVAL R24 3
  DUPTABLE R25 K45 [{"Position", "Size", "ZIndex", "OnScaleHandleDragStart", "OnScaleHandleDragMoved", "OnScaleHandleDragEnd"}]
  GETIMPORT R26 K36 [UDim2.new]
  LOADN R27 0
  LOADN R28 253
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K30 ["Position"]
  GETIMPORT R26 K36 [UDim2.new]
  GETIMPORT R27 K17 [UDim.new]
  LOADN R28 0
  LOADN R29 6
  CALL R27 2 1
  MOVE R28 R17
  CALL R26 2 1
  SETTABLEKS R26 R25 K31 ["Size"]
  SETTABLEKS R9 R25 K8 ["ZIndex"]
  GETTABLEKS R26 R0 K46 ["leftScaleHandleDragStart"]
  SETTABLEKS R26 R25 K44 ["OnScaleHandleDragStart"]
  SETTABLEKS R10 R25 K9 ["OnScaleHandleDragMoved"]
  SETTABLEKS R11 R25 K10 ["OnScaleHandleDragEnd"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K39 ["LeftHandle"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K26 ["createElement"]
  GETUPVAL R24 3
  DUPTABLE R25 K45 [{"Position", "Size", "ZIndex", "OnScaleHandleDragStart", "OnScaleHandleDragMoved", "OnScaleHandleDragEnd"}]
  GETIMPORT R26 K36 [UDim2.new]
  LOADN R27 1
  LOADN R28 253
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K30 ["Position"]
  GETIMPORT R26 K36 [UDim2.new]
  GETIMPORT R27 K17 [UDim.new]
  LOADN R28 0
  LOADN R29 6
  CALL R27 2 1
  MOVE R28 R17
  CALL R26 2 1
  SETTABLEKS R26 R25 K31 ["Size"]
  SETTABLEKS R9 R25 K8 ["ZIndex"]
  GETTABLEKS R26 R0 K47 ["rightScaleHandleDragStart"]
  SETTABLEKS R26 R25 K44 ["OnScaleHandleDragStart"]
  SETTABLEKS R10 R25 K9 ["OnScaleHandleDragMoved"]
  SETTABLEKS R11 R25 K10 ["OnScaleHandleDragEnd"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K40 ["RightHandle"]
  MOVE R23 R6
  JUMPIFNOT R23 [+47]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K26 ["createElement"]
  GETUPVAL R24 4
  DUPTABLE R25 K50 [{"Position", "Size", "AnchorPoint", "Time", "ZIndex"}]
  GETIMPORT R26 K36 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  MOVE R30 R18
  CALL R26 4 1
  SETTABLEKS R26 R25 K30 ["Position"]
  GETUPVAL R26 5
  SETTABLEKS R26 R25 K31 ["Size"]
  GETIMPORT R26 K52 [Vector2.new]
  LOADN R27 1
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K48 ["AnchorPoint"]
  GETUPVAL R27 0
  CALL R27 0 1
  JUMPIFNOT R27 [+8]
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K53 ["formatTime"]
  MOVE R27 R14
  MOVE R28 R7
  MOVE R29 R5
  CALL R26 3 1
  JUMP [+7]
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K54 ["formatTime_DEPRECATED"]
  MOVE R27 R14
  MOVE R28 R7
  MOVE R29 R4
  CALL R26 3 1
  SETTABLEKS R26 R25 K49 ["Time"]
  SETTABLEKS R9 R25 K8 ["ZIndex"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["LeftTimeTag"]
  MOVE R23 R6
  JUMPIFNOT R23 [+47]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K26 ["createElement"]
  GETUPVAL R24 4
  DUPTABLE R25 K50 [{"Position", "Size", "AnchorPoint", "Time", "ZIndex"}]
  GETIMPORT R26 K36 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  MOVE R30 R18
  CALL R26 4 1
  SETTABLEKS R26 R25 K30 ["Position"]
  GETUPVAL R26 5
  SETTABLEKS R26 R25 K31 ["Size"]
  GETIMPORT R26 K52 [Vector2.new]
  LOADN R27 0
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K48 ["AnchorPoint"]
  GETUPVAL R27 0
  CALL R27 0 1
  JUMPIFNOT R27 [+8]
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K53 ["formatTime"]
  MOVE R27 R15
  MOVE R28 R7
  MOVE R29 R5
  CALL R26 3 1
  JUMP [+7]
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K54 ["formatTime_DEPRECATED"]
  MOVE R27 R15
  MOVE R28 R7
  MOVE R29 R4
  CALL R26 3 1
  SETTABLEKS R26 R25 K49 ["Time"]
  SETTABLEKS R9 R25 K8 ["ZIndex"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K42 ["RightTimeTag"]
  CALL R19 3 -1
  RETURN R19 -1

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
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["TrackUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K15 ["PathUtils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Util"]
  GETTABLEKS R9 R10 K16 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K13 ["Util"]
  GETTABLEKS R10 R11 K17 ["StringUtils"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["ScaleControls"]
  GETTABLEKS R11 R12 K20 ["ScaleHandle"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K19 ["ScaleControls"]
  GETTABLEKS R12 R13 K21 ["TimeTag"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K22 ["PureComponent"]
  LOADK R14 K22 ["PureComponent"]
  NAMECALL R12 R12 K23 ["extend"]
  CALL R12 2 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R0 K24 ["LuaFlags"]
  GETTABLEKS R14 R15 K25 ["GetFFlagTimelineUnitSeconds"]
  CALL R13 1 1
  GETIMPORT R14 K28 [UDim2.new]
  LOADN R15 0
  LOADN R16 30
  LOADN R17 0
  LOADN R18 18
  CALL R14 4 1
  DUPCLOSURE R15 K29 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R15 R12 K30 ["init"]
  DUPCLOSURE R15 K31 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R9
  SETTABLEKS R15 R12 K32 ["render"]
  MOVE R15 R5
  DUPTABLE R16 K34 [{"Stylizer"}]
  GETTABLEKS R17 R4 K33 ["Stylizer"]
  SETTABLEKS R17 R16 K33 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R12
  CALL R15 1 1
  MOVE R12 R15
  RETURN R12 1
