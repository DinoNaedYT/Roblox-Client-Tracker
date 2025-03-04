PROTO_0:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["hide"]
  CALL R2 1 0
  GETUPVAL R2 1
  LOADB R4 0
  NAMECALL R2 R2 K1 ["setVisible"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["update"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADB R4 1
  NAMECALL R2 R2 K1 ["setVisible"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["updatePosition"]
  CALL R2 1 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["show"]
  CALL R2 1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["updatePosition"]
  CALL R2 1 0
  GETUPVAL R2 1
  LOADB R4 1
  NAMECALL R2 R2 K2 ["setVisible"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["update"]
  CALL R2 1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["update"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  LOADB R4 0
  NAMECALL R2 R2 K0 ["setVisible"]
  CALL R2 2 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["hide"]
  CALL R2 1 0
  GETUPVAL R2 2
  LOADB R4 0
  NAMECALL R2 R2 K0 ["setVisible"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  MOVE R4 R1
  GETUPVAL R5 1
  NAMECALL R5 R5 K0 ["getRotation"]
  CALL R5 1 -1
  NAMECALL R2 R2 K1 ["update"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["updatePosition"]
  CALL R2 1 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["show"]
  CALL R2 1 0
  GETUPVAL R2 1
  LOADB R4 1
  NAMECALL R2 R2 K2 ["setVisible"]
  CALL R2 2 0
  GETUPVAL R2 2
  NAMECALL R2 R2 K3 ["update"]
  CALL R2 1 0
  GETUPVAL R2 2
  LOADB R4 1
  NAMECALL R2 R2 K2 ["setVisible"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["hide"]
  CALL R2 1 0
  GETUPVAL R2 1
  LOADB R4 0
  NAMECALL R2 R2 K1 ["setVisible"]
  CALL R2 2 0
  GETUPVAL R2 2
  LOADB R4 0
  NAMECALL R2 R2 K1 ["setVisible"]
  CALL R2 2 0
  GETUPVAL R2 3
  LOADB R4 1
  NAMECALL R2 R2 K2 ["setSuppressFilteredSelectionChanged"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K0 ["setSuppressFilteredSelectionChanged"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K0 ["setVisible"]
  CALL R1 2 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["hide"]
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R3 0
  NAMECALL R1 R1 K0 ["setVisible"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  LOADB R3 1
  NAMECALL R1 R1 K0 ["setVisible"]
  CALL R1 2 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["show"]
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R3 1
  NAMECALL R1 R1 K0 ["setVisible"]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_14:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_15:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_16:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_17:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_18:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_19:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_20:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_21:
  SETUPVAL R1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["FFlag"]
  CALL R1 1 1
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  NEWCLOSURE R11 P0
  CAPTURE REF R3
  CAPTURE REF R9
  SETTABLEKS R11 R0 K6 ["onMoveBegan"]
  NEWCLOSURE R11 P1
  CAPTURE REF R7
  SETTABLEKS R11 R0 K7 ["onMoveChanged"]
  NEWCLOSURE R11 P2
  CAPTURE REF R3
  CAPTURE REF R9
  SETTABLEKS R11 R0 K8 ["onMoveEnded"]
  DUPCLOSURE R11 K9 [PROTO_3]
  SETTABLEKS R11 R0 K10 ["onResizeBegan"]
  NEWCLOSURE R11 P4
  CAPTURE REF R7
  CAPTURE REF R9
  SETTABLEKS R11 R0 K11 ["onResizeChanged"]
  DUPCLOSURE R11 K12 [PROTO_5]
  SETTABLEKS R11 R0 K13 ["onResizeEnded"]
  NEWCLOSURE R11 P6
  CAPTURE REF R7
  CAPTURE REF R3
  CAPTURE REF R9
  SETTABLEKS R11 R0 K14 ["onRotateBegan"]
  NEWCLOSURE R11 P7
  CAPTURE REF R8
  CAPTURE REF R4
  SETTABLEKS R11 R0 K15 ["onRotateChanged"]
  NEWCLOSURE R11 P8
  CAPTURE REF R3
  CAPTURE REF R9
  CAPTURE REF R7
  SETTABLEKS R11 R0 K16 ["onRotateEnded"]
  NEWCLOSURE R11 P9
  CAPTURE REF R3
  CAPTURE REF R9
  CAPTURE REF R7
  CAPTURE REF R10
  SETTABLEKS R11 R0 K17 ["onRubberbandBegan"]
  NEWCLOSURE R11 P10
  CAPTURE REF R10
  SETTABLEKS R11 R0 K18 ["onRubberbandEnded"]
  NEWCLOSURE R11 P11
  CAPTURE REF R7
  CAPTURE REF R3
  CAPTURE REF R9
  SETTABLEKS R11 R0 K19 ["onTextEditorBegan"]
  NEWCLOSURE R11 P12
  CAPTURE REF R7
  CAPTURE REF R3
  CAPTURE REF R9
  SETTABLEKS R11 R0 K20 ["onTextEditorEnded"]
  NEWCLOSURE R11 P13
  CAPTURE REF R2
  SETTABLEKS R11 R0 K21 ["setMove"]
  NEWCLOSURE R11 P14
  CAPTURE REF R4
  SETTABLEKS R11 R0 K22 ["setRotate"]
  NEWCLOSURE R11 P15
  CAPTURE REF R3
  SETTABLEKS R11 R0 K23 ["setResize"]
  NEWCLOSURE R11 P16
  CAPTURE REF R5
  SETTABLEKS R11 R0 K24 ["setRubberband"]
  NEWCLOSURE R11 P17
  CAPTURE REF R6
  SETTABLEKS R11 R0 K25 ["setTextEditor"]
  NEWCLOSURE R11 P18
  CAPTURE REF R7
  SETTABLEKS R11 R0 K26 ["setDistanceLinesManager"]
  NEWCLOSURE R11 P19
  CAPTURE REF R8
  SETTABLEKS R11 R0 K27 ["setRotationBox"]
  NEWCLOSURE R11 P20
  CAPTURE REF R9
  SETTABLEKS R11 R0 K28 ["setSizeBox"]
  NEWCLOSURE R11 P21
  CAPTURE REF R10
  SETTABLEKS R11 R0 K29 ["setSelectionManager"]
  CLOSEUPVALS R2
  RETURN R0 1
