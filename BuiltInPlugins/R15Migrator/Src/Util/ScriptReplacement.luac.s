PROTO_0:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["OpenScriptDocumentAsync"]
  CALL R2 2 0
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["FindScriptDocument"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R5 R1 K2 ["startLine"]
  GETTABLEKS R6 R1 K3 ["startCharacter"]
  GETTABLEKS R7 R1 K4 ["endLine"]
  GETTABLEKS R8 R1 K5 ["endCharacter"]
  NAMECALL R3 R2 K6 ["ForceSetSelectionAsync"]
  CALL R3 5 0
  RETURN R2 1

PROTO_1:
  JUMPIFNOT R0 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  MOVE R5 R0
  NAMECALL R3 R2 K0 ["getScriptInstanceFromGUID"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["goToScriptInstance"]
  MOVE R5 R3
  MOVE R6 R1
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+2]
  LOADB R3 0
  RETURN R3 1
  MOVE R5 R2
  GETTABLEKS R6 R1 K0 ["startLine"]
  GETTABLEKS R7 R1 K1 ["startCharacter"]
  GETTABLEKS R8 R1 K2 ["endLine"]
  GETTABLEKS R9 R1 K3 ["endCharacter"]
  NAMECALL R3 R0 K4 ["EditTextAsync"]
  CALL R3 6 0
  LOADB R3 1
  RETURN R3 1

PROTO_3:
  GETTABLEKS R6 R4 K0 ["_list"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K1 ["range"]
  JUMPIFNOTEQ R1 R11 [+8]
  LOADK R13 K2 ["onScriptAutoReplacement"]
  NAMECALL R11 R5 K3 ["getHandler"]
  CALL R11 2 1
  GETTABLEKS R12 R10 K4 ["issueType"]
  CALL R11 1 0
  FORGLOOP R6 2 [-12]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["goToScript"]
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 1
  JUMPIFNOT R6 [+1]
  JUMPIF R1 [+2]
  LOADB R7 0
  RETURN R7 1
  MOVE R10 R3
  GETTABLEKS R11 R1 K6 ["startLine"]
  GETTABLEKS R12 R1 K7 ["startCharacter"]
  GETTABLEKS R13 R1 K8 ["endLine"]
  GETTABLEKS R14 R1 K9 ["endCharacter"]
  NAMECALL R8 R6 K10 ["EditTextAsync"]
  CALL R8 6 0
  LOADB R7 1
  RETURN R7 1

PROTO_4:
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R11 R8 K0 ["scriptId"]
  NAMECALL R9 R1 K1 ["getScriptInstanceFromGUID"]
  CALL R9 2 1
  FASTCALL2 TABLE_INSERT R3 R9 [+5]
  MOVE R11 R3
  MOVE R12 R9
  GETIMPORT R10 K4 [table.insert]
  CALL R10 2 0
  GETUPVAL R10 0
  MOVE R12 R9
  NAMECALL R10 R10 K5 ["GetScriptSourceFromChunks"]
  CALL R10 2 1
  FASTCALL2 TABLE_INSERT R2 R10 [+5]
  MOVE R12 R2
  MOVE R13 R10
  GETIMPORT R11 K4 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-25]
  GETUPVAL R4 1
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K6 ["ShowSourceDiffsAgainstCurrent"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ScriptEditorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["DraftsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["R15Migrator"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R3 K13 ["ScriptAnalysis"]
  GETTABLEKS R5 R6 K14 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R3 K15 ["ScriptHistory"]
  GETTABLEKS R6 R7 K16 ["ChunkUtil"]
  CALL R5 1 1
  DUPTABLE R6 K18 [{"UNASSIGNED"}]
  LOADK R7 K19 ["Unassigned"]
  SETTABLEKS R7 R6 K17 ["UNASSIGNED"]
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K21 ["goToScriptInstance"]
  DUPCLOSURE R7 K22 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K23 ["goToScript"]
  DUPCLOSURE R7 K24 [PROTO_2]
  DUPCLOSURE R8 K25 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R8 R6 K26 ["replaceWithSuggestion"]
  DUPCLOSURE R8 K27 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R8 R6 K28 ["diffScripts"]
  RETURN R6 1
