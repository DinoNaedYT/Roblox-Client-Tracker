PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["hovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["hovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"pressed"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["pressed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"pressed"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["pressed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R4 K2 [{"hovered", "pressed"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["hovered"]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["pressed"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K5 ["buttonRef"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onMouseEnter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onMouseLeave"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onMouseButton1Down"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onMouseButton1Up"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R1 K2 ["isPrimary"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R2 K3 ["nav"]
  GETTABLEKS R3 R4 K4 ["mainButton"]
  JUMPIF R3 [+4]
  GETTABLEKS R4 R2 K3 ["nav"]
  GETTABLEKS R3 R4 K5 ["button"]
  LOADNIL R4
  GETTABLEKS R6 R0 K6 ["state"]
  GETTABLEKS R5 R6 K7 ["hovered"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R6 R0 K6 ["state"]
  GETTABLEKS R5 R6 K8 ["pressed"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R3 K9 ["pressBackground"]
  JUMP [+10]
  GETTABLEKS R6 R0 K6 ["state"]
  GETTABLEKS R5 R6 K7 ["hovered"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R3 K10 ["hoverBackground"]
  JUMP [+2]
  GETTABLEKS R4 R3 K11 ["background"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 16 0
  GETTABLEKS R8 R1 K13 ["Size"]
  SETTABLEKS R8 R7 K13 ["Size"]
  GETTABLEKS R8 R1 K14 ["Position"]
  SETTABLEKS R8 R7 K14 ["Position"]
  GETTABLEKS R8 R1 K15 ["LayoutOrder"]
  SETTABLEKS R8 R7 K15 ["LayoutOrder"]
  SETTABLEKS R4 R7 K16 ["BackgroundColor3"]
  GETTABLEKS R8 R3 K17 ["borderColor"]
  SETTABLEKS R8 R7 K18 ["BorderColor3"]
  GETTABLEKS R9 R1 K2 ["isPrimary"]
  JUMPIFNOT R9 [+2]
  LOADN R8 0
  JUMP [+1]
  LOADN R8 1
  SETTABLEKS R8 R7 K19 ["BorderSizePixel"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["Event"]
  GETTABLEKS R8 R9 K21 ["MouseEnter"]
  GETTABLEKS R9 R0 K22 ["onMouseEnter"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["Event"]
  GETTABLEKS R8 R9 K23 ["MouseLeave"]
  GETTABLEKS R9 R0 K24 ["onMouseLeave"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["Event"]
  GETTABLEKS R8 R9 K25 ["MouseButton1Down"]
  GETTABLEKS R9 R0 K26 ["onMouseButton1Down"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["Event"]
  GETTABLEKS R8 R9 K27 ["MouseButton1Up"]
  GETTABLEKS R9 R0 K28 ["onMouseButton1Up"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K20 ["Event"]
  GETTABLEKS R8 R9 K29 ["MouseButton1Click"]
  GETTABLEKS R9 R1 K30 ["onClick"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K32 [{"Title"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["createElement"]
  LOADK R10 K33 ["TextLabel"]
  DUPTABLE R11 K39 [{"Text", "Font", "TextSize", "BackgroundTransparency", "TextColor3", "Size"}]
  GETTABLEKS R12 R1 K40 ["titleText"]
  SETTABLEKS R12 R11 K34 ["Text"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K41 ["FONT"]
  SETTABLEKS R12 R11 K35 ["Font"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K42 ["FONT_SIZE_LARGE"]
  SETTABLEKS R12 R11 K36 ["TextSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K37 ["BackgroundTransparency"]
  GETTABLEKS R12 R3 K43 ["textColor"]
  SETTABLEKS R12 R11 K38 ["TextColor3"]
  GETIMPORT R12 K46 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K13 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K31 ["Title"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETTABLEKS R9 R0 K8 ["Core"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K14 ["RoundButton"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K15 ["Component"]
  LOADK R12 K16 ["NavButton"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K19 ["init"]
  DUPCLOSURE R11 K20 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K21 ["render"]
  MOVE R11 R7
  DUPTABLE R12 K23 [{"Stylizer"}]
  GETTABLEKS R13 R6 K22 ["Stylizer"]
  SETTABLEKS R13 R12 K22 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
