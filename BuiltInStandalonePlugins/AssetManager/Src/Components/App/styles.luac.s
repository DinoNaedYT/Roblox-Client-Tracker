MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".App"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K11 [">> .TopBar"]
  DUPTABLE R9 K13 [{"Size"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 42
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K17 [">> .Explorer"]
  DUPTABLE R10 K13 [{"Size"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 214
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K18 [">> .MainContents"]
  DUPTABLE R11 K13 [{"Size"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 214
  CALL R12 4 1
  SETTABLEKS R12 R11 K12 ["Size"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K23 [{"DefaultSizeSidebar", "MinimumSizeSidebar", "DefaultSizeMainView", "MinimumSizeMainView"}]
  GETIMPORT R8 K25 [UDim.new]
  LOADK R9 K26 [0.15]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["DefaultSizeSidebar"]
  GETIMPORT R8 K25 [UDim.new]
  LOADN R9 0
  LOADN R10 100
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["MinimumSizeSidebar"]
  GETIMPORT R8 K25 [UDim.new]
  LOADK R9 K27 [0.85]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["DefaultSizeMainView"]
  GETIMPORT R8 K25 [UDim.new]
  LOADN R9 0
  LOADN R10 144
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["MinimumSizeMainView"]
  CALL R3 4 -1
  RETURN R3 -1
