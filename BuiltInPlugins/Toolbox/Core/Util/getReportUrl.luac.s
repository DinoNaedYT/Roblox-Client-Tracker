PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["BaseUrl"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["convertAssetTypeValueToEnum"]
  MOVE R4 R1
  CALL R3 1 1
  GETIMPORT R4 K4 [string.format]
  LOADK R5 K5 ["%s/abusereport/asset?id=%s"]
  MOVE R6 R2
  GETUPVAL R7 2
  MOVE R9 R0
  NAMECALL R7 R7 K6 ["urlEncode"]
  CALL R7 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETTABLEKS R4 R2 K8 ["Core"]
  GETTABLEKS R3 R4 K9 ["Util"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R3 K12 ["AssetConfigConstants"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R6 R3 K13 ["EnumConvert"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R1
  RETURN R6 1
