PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Settings"]
  GETTABLEKS R3 R4 K2 ["Current"]
  GETUPVAL R5 0
  CALL R5 0 1
  GETUPVAL R6 1
  GETTABLE R4 R5 R6
  JUMPIF R4 [+7]
  GETTABLEKS R5 R1 K3 ["localizationPageController"]
  GETUPVAL R8 1
  NAMECALL R6 R5 K4 ["getAutoTranslationTargetLanguages"]
  CALL R6 2 1
  MOVE R4 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["Dictionary"]
  GETTABLEKS R5 R6 K6 ["join"]
  MOVE R6 R3
  DUPTABLE R7 K8 [{"AutoTranslationTargetLanguages"}]
  SETTABLEKS R4 R7 K7 ["AutoTranslationTargetLanguages"]
  CALL R5 2 1
  MOVE R3 R5
  GETUPVAL R7 3
  MOVE R8 R3
  CALL R7 1 -1
  NAMECALL R5 R0 K9 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["GameSettingsUtilities"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["getAutoTranslatedLanguages"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETTABLEKS R4 R5 K12 ["SetCurrentSettings"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
