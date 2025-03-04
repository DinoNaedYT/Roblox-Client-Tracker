PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  JUMPIFNOT R4 [+13]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K0 ["current"]
  JUMPIFEQKNIL R4 [+9]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["serialize"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K0 ["current"]
  CALL R3 1 1
  JUMP [+3]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K0 ["current"]
  NAMECALL R0 R0 K2 ["SetAttribute"]
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  LOADNIL R0
  JUMP [+5]
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K0 ["GetAttribute"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+5]
  GETUPVAL R1 3
  GETUPVAL R2 4
  CALL R1 1 0
  JUMP [+11]
  GETUPVAL R1 3
  GETUPVAL R3 5
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K1 ["deserialize"]
  MOVE R3 R0
  CALL R2 1 1
  JUMP [+1]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 6
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["current"]
  GETUPVAL R1 7
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 3
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  NEWTABLE R7 0 1
  MOVE R8 R1
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K1 ["ATTRIBUTE_PREFIX"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["useRef"]
  MOVE R8 R2
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["useRef"]
  LOADB R9 0
  CALL R8 1 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["useCallback"]
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  NEWTABLE R11 0 3
  MOVE R12 R6
  MOVE R13 R4
  MOVE R14 R0
  SETLIST R11 R12 3 [1]
  CALL R9 2 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["useEffect"]
  NEWCLOSURE R11 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R9
  NEWTABLE R12 0 6
  MOVE R13 R0
  MOVE R14 R6
  MOVE R15 R3
  MOVE R16 R4
  MOVE R17 R5
  MOVE R18 R9
  SETLIST R12 R13 6 [1]
  CALL R10 2 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["useEffect"]
  NEWCLOSURE R11 P3
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  NEWTABLE R12 0 1
  MOVE R13 R2
  SETLIST R12 R13 1 [1]
  CALL R10 2 0
  RETURN R0 0

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
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagDebugAvatarPreviewerAvoidSerialization"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1
