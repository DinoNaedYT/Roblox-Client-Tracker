PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 0 3
  GETIMPORT R3 K10 [Enum.TerrainFace.Top]
  GETIMPORT R4 K12 [Enum.TerrainFace.Side]
  GETIMPORT R5 K14 [Enum.TerrainFace.Bottom]
  SETLIST R2 R3 3 [1]
  DUPCLOSURE R3 K15 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
