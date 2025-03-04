PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  GETTABLE R3 R1 R0
  JUMPIFEQ R2 R3 [+35]
  DUPTABLE R2 K5 [{"LowGain", "MidGain", "HighGain", "MidRange", "Bypass"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LowGain"]
  SETTABLEKS R3 R2 K0 ["LowGain"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["MidGain"]
  SETTABLEKS R3 R2 K1 ["MidGain"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["HighGain"]
  SETTABLEKS R3 R2 K2 ["HighGain"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["MidRange"]
  SETTABLEKS R3 R2 K3 ["MidRange"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Bypass"]
  SETTABLEKS R3 R2 K4 ["Bypass"]
  SETUPVAL R2 1
  GETIMPORT R2 K7 [plugin]
  LOADK R4 K8 ["OnInstanceChanged"]
  GETUPVAL R5 1
  NAMECALL R2 R2 K9 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  LENGTH R3 R0
  LOADN R1 1
  LOADN R2 255
  FORNPREP R1
  GETTABLE R4 R0 R3
  JUMPIFNOT R4 [+5]
  LOADK R7 K0 ["AudioEqualizer"]
  NAMECALL R5 R4 K1 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+5]
  GETIMPORT R5 K4 [table.remove]
  MOVE R6 R0
  MOVE R7 R3
  CALL R5 2 0
  FORNLOOP R1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K5 [0] [+2]
  RETURN R0 0
  SETUPVAL R0 0
  GETTABLEN R1 R0 1
  DUPTABLE R2 K11 [{"LowGain", "MidGain", "HighGain", "MidRange", "Bypass"}]
  GETTABLEKS R3 R1 K6 ["LowGain"]
  SETTABLEKS R3 R2 K6 ["LowGain"]
  GETTABLEKS R3 R1 K7 ["MidGain"]
  SETTABLEKS R3 R2 K7 ["MidGain"]
  GETTABLEKS R3 R1 K8 ["HighGain"]
  SETTABLEKS R3 R2 K8 ["HighGain"]
  GETTABLEKS R3 R1 K9 ["MidRange"]
  SETTABLEKS R3 R2 K9 ["MidRange"]
  GETTABLEKS R3 R1 K10 ["Bypass"]
  SETTABLEKS R3 R2 K10 ["Bypass"]
  SETUPVAL R2 1
  LOADK R3 K12 ["%* \"%*\""]
  GETTABLEKS R5 R1 K13 ["ClassName"]
  GETTABLEKS R6 R1 K14 ["Name"]
  NAMECALL R3 R3 K15 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  LENGTH R3 R0
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+9]
  LOADK R3 K16 ["%* (%* items)"]
  GETTABLEKS R5 R1 K13 ["ClassName"]
  LENGTH R6 R0
  NAMECALL R3 R3 K15 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K17 ["createInstances"]
  MOVE R4 R1
  GETUPVAL R5 3
  CALL R3 2 0
  GETIMPORT R3 K19 [plugin]
  LOADK R5 K20 ["OnOpen"]
  GETUPVAL R6 1
  GETUPVAL R7 4
  MOVE R8 R2
  NAMECALL R3 R3 K21 ["Invoke"]
  CALL R3 5 0
  GETUPVAL R3 5
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 5
  NAMECALL R3 R3 K22 ["Disconnect"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K23 ["Changed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K24 ["Connect"]
  CALL R3 2 1
  SETUPVAL R3 5
  GETUPVAL R3 4
  ADDK R3 R3 K25 [1]
  SETUPVAL R3 4
  RETURN R0 0

PROTO_2:
  SETUPVAL R0 0
  GETUPVAL R1 1
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  JUMPIFNOT R5 [+25]
  LOADK R8 K0 ["AudioEqualizer"]
  NAMECALL R6 R5 K1 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+20]
  GETTABLEKS R6 R0 K2 ["LowGain"]
  SETTABLEKS R6 R5 K2 ["LowGain"]
  GETTABLEKS R6 R0 K3 ["MidGain"]
  SETTABLEKS R6 R5 K3 ["MidGain"]
  GETTABLEKS R6 R0 K4 ["HighGain"]
  SETTABLEKS R6 R5 K4 ["HighGain"]
  GETTABLEKS R6 R0 K5 ["MidRange"]
  SETTABLEKS R6 R5 K5 ["MidRange"]
  GETTABLEKS R6 R0 K6 ["Bypass"]
  SETTABLEKS R6 R5 K6 ["Bypass"]
  FORGLOOP R1 2 [-27]
  RETURN R0 0

PROTO_3:
  NEWTABLE R0 0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  LOADNIL R0
  SETUPVAL R0 2
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["destroyInstances"]
  GETUPVAL R1 4
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["AudioEqualizerEditor"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K10 ["launch"]
  LOADK R3 K4 ["AudioEqualizerEditor"]
  GETTABLEKS R4 R0 K11 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R0 K13 ["Bin"]
  GETTABLEKS R4 R5 K14 ["Common"]
  GETTABLEKS R3 R4 K15 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K16 ["getFFlagEnableAudioEqualizerEditor"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K13 ["Bin"]
  GETTABLEKS R5 R6 K14 ["Common"]
  GETTABLEKS R4 R5 K17 ["pluginType"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K18 ["Util"]
  GETTABLEKS R5 R6 K19 ["AnalyzerUtil"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K20 ["setPlugin"]
  GETIMPORT R6 K1 [plugin]
  CALL R5 1 0
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K21 ["Types"]
  CALL R5 1 1
  NEWTABLE R6 0 0
  LOADNIL R7
  LOADN R8 0
  LOADNIL R9
  GETIMPORT R10 K23 [game]
  LOADK R12 K24 ["GuiService"]
  NAMECALL R10 R10 K25 ["GetService"]
  CALL R10 2 1
  GETIMPORT R11 K23 [game]
  LOADK R13 K26 ["SoundService"]
  NAMECALL R11 R11 K25 ["GetService"]
  CALL R11 2 1
  NEWCLOSURE R12 P0
  CAPTURE REF R6
  CAPTURE REF R9
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE REF R8
  CAPTURE REF R7
  GETTABLEKS R13 R11 K27 ["OpenAudioEqualizerEditorSignal"]
  MOVE R15 R12
  NAMECALL R13 R13 K28 ["Connect"]
  CALL R13 2 1
  GETIMPORT R14 K1 [plugin]
  LOADK R16 K29 ["OnEdit"]
  NEWCLOSURE R17 P1
  CAPTURE REF R9
  CAPTURE REF R6
  NAMECALL R14 R14 K30 ["OnInvoke"]
  CALL R14 3 0
  GETIMPORT R14 K1 [plugin]
  LOADK R16 K31 ["OnStopEditing"]
  NEWCLOSURE R17 P2
  CAPTURE REF R6
  CAPTURE REF R7
  CAPTURE REF R9
  CAPTURE VAL R4
  CAPTURE VAL R10
  NAMECALL R14 R14 K30 ["OnInvoke"]
  CALL R14 3 0
  GETTABLEKS R14 R3 K32 ["get"]
  CALL R14 0 1
  GETTABLEKS R15 R3 K33 ["Asset"]
  JUMPIFEQ R14 R15 [+3]
  CLOSEUPVALS R6
  RETURN R0 0
  GETIMPORT R14 K7 [require]
  GETTABLEKS R17 R0 K13 ["Bin"]
  GETTABLEKS R16 R17 K14 ["Common"]
  GETTABLEKS R15 R16 K34 ["setup"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R18 R0 K13 ["Bin"]
  GETTABLEKS R17 R18 K14 ["Common"]
  GETTABLEKS R16 R17 K35 ["setupMain"]
  CALL R15 1 1
  MOVE R16 R14
  GETIMPORT R17 K1 [plugin]
  MOVE R18 R15
  CALL R16 2 0
  CLOSEUPVALS R6
  RETURN R0 0
