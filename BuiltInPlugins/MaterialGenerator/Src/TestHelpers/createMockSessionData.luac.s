PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  NAMECALL R1 R0 K0 ["StartSession"]
  CALL R1 1 1
  LOADK R4 K1 ["test"]
  NEWTABLE R5 0 0
  NAMECALL R2 R1 K2 ["GenerateImagesAsync"]
  CALL R2 3 2
  RETURN R1 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["TestHelpers"]
  GETTABLEKS R2 R3 K7 ["createMockMaterialGenerationService"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
