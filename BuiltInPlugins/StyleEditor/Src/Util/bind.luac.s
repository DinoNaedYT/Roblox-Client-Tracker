PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  FASTCALL1 TABLE_UNPACK R2 [+2]
  GETIMPORT R1 K1 [unpack]
  CALL R1 1 1
  GETVARARGS R2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Expecting a valid function for argument 'func'"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K4 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K5 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Expecting a valid array for argument 'args'"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1
