MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K9 [{"Arctic", "Canyons", "Dunes", "Hills", "Lavascape", "Marsh", "Mountains", "Plains", "Water"}]
  LOADK R1 K0 ["Arctic"]
  SETTABLEKS R1 R0 K0 ["Arctic"]
  LOADK R1 K1 ["Canyons"]
  SETTABLEKS R1 R0 K1 ["Canyons"]
  LOADK R1 K2 ["Dunes"]
  SETTABLEKS R1 R0 K2 ["Dunes"]
  LOADK R1 K3 ["Hills"]
  SETTABLEKS R1 R0 K3 ["Hills"]
  LOADK R1 K4 ["Lavascape"]
  SETTABLEKS R1 R0 K4 ["Lavascape"]
  LOADK R1 K5 ["Marsh"]
  SETTABLEKS R1 R0 K5 ["Marsh"]
  LOADK R1 K6 ["Mountains"]
  SETTABLEKS R1 R0 K6 ["Mountains"]
  LOADK R1 K7 ["Plains"]
  SETTABLEKS R1 R0 K7 ["Plains"]
  LOADK R1 K8 ["Water"]
  SETTABLEKS R1 R0 K8 ["Water"]
  DUPTABLE R1 K11 [{"Biome"}]
  SETTABLEKS R0 R1 K10 ["Biome"]
  RETURN R1 1
