PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["TextLabel"]
  DUPTABLE R4 K7 [{"Text", "Size", "TextSize", "TextWrapped", "BackgroundTransparency"}]
  GETIMPORT R5 K10 [string.format]
  LOADK R6 K11 ["You must set %s to %s to view this story"]
  MOVE R7 R0
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K13 [tostring]
  CALL R8 1 1
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Text"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 100
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  LOADN R5 18
  SETTABLEKS R5 R4 K4 ["TextSize"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["TextWrapped"]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["BackgroundTransparency"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Instances must be a table"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETIMPORT R2 K7 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADK R10 K8 ["Instance"]
  NAMECALL R8 R6 K9 ["IsA"]
  CALL R8 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R7 K5 [assert]
  CALL R7 -1 0
  FORGLOOP R2 2 [inext] [-9]
  LOADK R2 K10 ["TEST"]
  RETURN R2 1

PROTO_2:
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["DEPRECATED_SerializeInstances"]
  NEWTABLE R1 0 1
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"StudioAssetService"}]
  SETTABLEKS R0 R3 K2 ["StudioAssetService"]
  CALL R2 1 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["ThunkWithArgsMiddleware"]
  DUPCLOSURE R5 K10 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R6 K11 [PROTO_2]
  CAPTURE VAL R4
  DUPTABLE R7 K14 [{"createThunkMiddleware", "mustSetFlag"}]
  SETTABLEKS R6 R7 K12 ["createThunkMiddleware"]
  SETTABLEKS R5 R7 K13 ["mustSetFlag"]
  RETURN R7 1
