PROTO_0:
  GETUPVAL R0 0
  ADDK R0 R0 K0 [1]
  SETUPVAL R0 0
  LOADK R1 K1 ["ID"]
  GETUPVAL R3 0
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  CONCAT R0 R1 R2
  RETURN R0 1

PROTO_1:
  LOADN R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  LOADN R3 0
  NEWCLOSURE R2 P0
  CAPTURE REF R3
  CLOSEUPVALS R3
  DUPTABLE R3 K11 [{"id", "name", "children"}]
  LOADK R4 K12 ["{F9335871-7386-4AFA-B6B3-CF1A4FDB2BFE}"]
  SETTABLEKS R4 R3 K8 ["id"]
  LOADK R4 K13 ["Mock Compositor 1"]
  SETTABLEKS R4 R3 K9 ["name"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K16 [{"children", "className", "id", "props"}]
  NEWTABLE R6 0 3
  DUPTABLE R7 K18 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R8 0 3
  DUPTABLE R9 K21 [{"children", "className", "name", "id", "linkData", "props", "weight", "watches"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  LOADK R10 K22 ["RestPose"]
  SETTABLEKS R10 R9 K14 ["className"]
  LOADK R10 K23 ["Debug B"]
  SETTABLEKS R10 R9 K9 ["name"]
  LOADK R10 K24 ["{20BFB42C-2D06-4E75-868D-0DA9AF1CBEB4}"]
  SETTABLEKS R10 R9 K8 ["id"]
  DUPTABLE R10 K26 [{"position"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K25 ["position"]
  SETTABLEKS R10 R9 K19 ["linkData"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K15 ["props"]
  LOADK R10 K27 [0.5]
  SETTABLEKS R10 R9 K17 ["weight"]
  NEWTABLE R10 2 0
  LOADK R11 K28 ["FOO"]
  SETTABLEKS R11 R10 K29 ["foo"]
  LOADK R11 K30 ["BAR"]
  SETTABLEKS R11 R10 K31 ["bar"]
  SETTABLEKS R10 R9 K20 ["watches"]
  DUPTABLE R10 K33 [{"children", "className", "name", "id", "linkData", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K10 ["children"]
  LOADK R11 K34 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K35 ["Debug C"]
  SETTABLEKS R11 R10 K9 ["name"]
  LOADK R11 K36 ["{E577542C-2F20-4F2E-836B-0E5BC148CBE6}"]
  SETTABLEKS R11 R10 K8 ["id"]
  DUPTABLE R11 K26 [{"position"}]
  LOADN R12 3
  SETTABLEKS R12 R11 K25 ["position"]
  SETTABLEKS R11 R10 K19 ["linkData"]
  DUPTABLE R11 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R12 K41 ["rbxassetid://10921541949"]
  SETTABLEKS R12 R11 K37 ["animationId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K38 ["isLooping"]
  LOADN R12 1
  SETTABLEKS R12 R11 K39 ["speed"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K44 [{"timePositionNormalized", "length"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K42 ["timePositionNormalized"]
  LOADN R12 5
  SETTABLEKS R12 R11 K43 ["length"]
  SETTABLEKS R11 R10 K32 ["state"]
  LOADK R11 K45 [0.3]
  SETTABLEKS R11 R10 K17 ["weight"]
  DUPTABLE R11 K46 [{"children", "className", "name", "id", "linkData", "props", "state", "watches"}]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K10 ["children"]
  LOADK R12 K34 ["ClipLayer"]
  SETTABLEKS R12 R11 K14 ["className"]
  LOADK R12 K47 ["Debug D"]
  SETTABLEKS R12 R11 K9 ["name"]
  LOADK R12 K48 ["{2321A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R12 R11 K8 ["id"]
  DUPTABLE R12 K26 [{"position"}]
  LOADN R13 5
  SETTABLEKS R13 R12 K25 ["position"]
  SETTABLEKS R12 R11 K19 ["linkData"]
  DUPTABLE R12 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R13 K49 ["rbxassetid://10899968825"]
  SETTABLEKS R13 R12 K37 ["animationId"]
  LOADB R13 1
  SETTABLEKS R13 R12 K38 ["isLooping"]
  LOADN R13 1
  SETTABLEKS R13 R12 K39 ["speed"]
  SETTABLEKS R12 R11 K15 ["props"]
  DUPTABLE R12 K44 [{"timePositionNormalized", "length"}]
  LOADK R13 K27 [0.5]
  SETTABLEKS R13 R12 K42 ["timePositionNormalized"]
  LOADN R13 4
  SETTABLEKS R13 R12 K43 ["length"]
  SETTABLEKS R12 R11 K32 ["state"]
  NEWTABLE R12 2 0
  DUPCLOSURE R13 K50 [PROTO_2]
  SETTABLEKS R13 R12 K51 ["function"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K52 ["table"]
  SETTABLEKS R12 R11 K20 ["watches"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K10 ["children"]
  LOADK R8 K53 ["Blend1D"]
  SETTABLEKS R8 R7 K14 ["className"]
  LOADK R8 K54 ["Debug A"]
  SETTABLEKS R8 R7 K9 ["name"]
  LOADK R8 K55 ["{275F34E0-57F4-4354-BC5A-38518EF2EB37}"]
  SETTABLEKS R8 R7 K8 ["id"]
  DUPTABLE R8 K57 [{"targetPosition", "speed"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K56 ["targetPosition"]
  LOADN R9 1
  SETTABLEKS R9 R8 K39 ["speed"]
  SETTABLEKS R8 R7 K15 ["props"]
  LOADN R8 1
  SETTABLEKS R8 R7 K17 ["weight"]
  DUPTABLE R8 K18 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R9 0 3
  DUPTABLE R10 K21 [{"children", "className", "name", "id", "linkData", "props", "weight", "watches"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K10 ["children"]
  LOADK R11 K22 ["RestPose"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K58 ["Debug G"]
  SETTABLEKS R11 R10 K9 ["name"]
  LOADK R11 K59 ["{FB02B42C-2D06-4E75-868D-0DA9AF1C4BEB}"]
  SETTABLEKS R11 R10 K8 ["id"]
  DUPTABLE R11 K26 [{"position"}]
  GETIMPORT R12 K62 [Vector2.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["position"]
  SETTABLEKS R11 R10 K19 ["linkData"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K15 ["props"]
  LOADK R11 K27 [0.5]
  SETTABLEKS R11 R10 K17 ["weight"]
  NEWTABLE R11 2 0
  LOADK R12 K28 ["FOO"]
  SETTABLEKS R12 R11 K29 ["foo"]
  LOADK R12 K30 ["BAR"]
  SETTABLEKS R12 R11 K31 ["bar"]
  SETTABLEKS R11 R10 K20 ["watches"]
  DUPTABLE R11 K33 [{"children", "className", "name", "id", "linkData", "props", "state", "weight"}]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K10 ["children"]
  LOADK R12 K34 ["ClipLayer"]
  SETTABLEKS R12 R11 K14 ["className"]
  LOADK R12 K63 ["Debug H"]
  SETTABLEKS R12 R11 K9 ["name"]
  LOADK R12 K64 ["{775E542C-2F20-4F2E-836B-0E5BC1486EBC}"]
  SETTABLEKS R12 R11 K8 ["id"]
  DUPTABLE R12 K26 [{"position"}]
  GETIMPORT R13 K62 [Vector2.new]
  LOADN R14 0
  LOADN R15 2
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["position"]
  SETTABLEKS R12 R11 K19 ["linkData"]
  DUPTABLE R12 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R13 K41 ["rbxassetid://10921541949"]
  SETTABLEKS R13 R12 K37 ["animationId"]
  LOADB R13 1
  SETTABLEKS R13 R12 K38 ["isLooping"]
  LOADN R13 1
  SETTABLEKS R13 R12 K39 ["speed"]
  SETTABLEKS R12 R11 K15 ["props"]
  DUPTABLE R12 K44 [{"timePositionNormalized", "length"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K42 ["timePositionNormalized"]
  LOADN R13 5
  SETTABLEKS R13 R12 K43 ["length"]
  SETTABLEKS R12 R11 K32 ["state"]
  LOADK R12 K45 [0.3]
  SETTABLEKS R12 R11 K17 ["weight"]
  DUPTABLE R12 K46 [{"children", "className", "name", "id", "linkData", "props", "state", "watches"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K10 ["children"]
  LOADK R13 K34 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K65 ["Debug I"]
  SETTABLEKS R13 R12 K9 ["name"]
  LOADK R13 K66 ["{1231A81C-9EB4-4017-A496-87F0570B9F65}"]
  SETTABLEKS R13 R12 K8 ["id"]
  DUPTABLE R13 K26 [{"position"}]
  GETIMPORT R14 K62 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["position"]
  SETTABLEKS R13 R12 K19 ["linkData"]
  DUPTABLE R13 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R14 K49 ["rbxassetid://10899968825"]
  SETTABLEKS R14 R13 K37 ["animationId"]
  LOADB R14 1
  SETTABLEKS R14 R13 K38 ["isLooping"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["speed"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K44 [{"timePositionNormalized", "length"}]
  LOADK R14 K27 [0.5]
  SETTABLEKS R14 R13 K42 ["timePositionNormalized"]
  LOADN R14 4
  SETTABLEKS R14 R13 K43 ["length"]
  SETTABLEKS R13 R12 K32 ["state"]
  NEWTABLE R13 2 0
  DUPCLOSURE R14 K67 [PROTO_3]
  SETTABLEKS R14 R13 K51 ["function"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K52 ["table"]
  SETTABLEKS R13 R12 K20 ["watches"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K10 ["children"]
  LOADK R9 K68 ["Blend2D"]
  SETTABLEKS R9 R8 K14 ["className"]
  LOADK R9 K69 ["Debug F"]
  SETTABLEKS R9 R8 K9 ["name"]
  LOADK R9 K70 ["{F57234E0-57F4-4354-BC5A-38518EF273BE}"]
  SETTABLEKS R9 R8 K8 ["id"]
  DUPTABLE R9 K57 [{"targetPosition", "speed"}]
  GETIMPORT R10 K62 [Vector2.new]
  LOADK R11 K27 [0.5]
  LOADK R12 K27 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K56 ["targetPosition"]
  LOADN R10 1
  SETTABLEKS R10 R9 K39 ["speed"]
  SETTABLEKS R9 R8 K15 ["props"]
  LOADN R9 1
  SETTABLEKS R9 R8 K17 ["weight"]
  DUPTABLE R9 K18 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  LOADK R10 K34 ["ClipLayer"]
  SETTABLEKS R10 R9 K14 ["className"]
  LOADK R10 K71 ["Debug E"]
  SETTABLEKS R10 R9 K9 ["name"]
  LOADK R10 K72 ["{B1A616DC-DBA5-4E75-ACFC-D073FBBF921F}"]
  SETTABLEKS R10 R9 K8 ["id"]
  DUPTABLE R10 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R11 K73 ["rbxassetid://10921258489"]
  SETTABLEKS R11 R10 K37 ["animationId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K38 ["isLooping"]
  LOADN R11 1
  SETTABLEKS R11 R10 K39 ["speed"]
  SETTABLEKS R10 R9 K15 ["props"]
  LOADN R10 0
  SETTABLEKS R10 R9 K17 ["weight"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K10 ["children"]
  LOADK R6 K74 ["SelectLayer"]
  SETTABLEKS R6 R5 K14 ["className"]
  LOADK R6 K75 ["{6F4A739B-8775-4B8E-9A89-1DBD43E9A4EF}"]
  SETTABLEKS R6 R5 K8 ["id"]
  DUPTABLE R6 K79 [{"fadeInTimeSeconds", "fadeOutTimeSeconds", "selection"}]
  LOADK R7 K80 [0.2]
  SETTABLEKS R7 R6 K76 ["fadeInTimeSeconds"]
  LOADK R7 K80 [0.2]
  SETTABLEKS R7 R6 K77 ["fadeOutTimeSeconds"]
  LOADK R7 K81 ["Idle"]
  SETTABLEKS R7 R6 K78 ["selection"]
  SETTABLEKS R6 R5 K15 ["props"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["children"]
  DUPTABLE R4 K93 [{"mockPayload1", "mockPayload2", "sortByIndex", "sortByName", "sortByClassName", "sortById", "clipLayerView", "blend1DLayerView", "blend1DLayerViewWrongType", "blend2DLayerViewWrongType", "blend2DLayerView", "state"}]
  SETTABLEKS R3 R4 K82 ["mockPayload1"]
  DUPTABLE R5 K11 [{"id", "name", "children"}]
  LOADK R6 K94 ["{CF1A4FDB-7386-4AFA-B6B3-2BFEF9335871}"]
  SETTABLEKS R6 R5 K8 ["id"]
  LOADK R6 K95 ["Mock Compositor 2"]
  SETTABLEKS R6 R5 K9 ["name"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K96 [{"children", "className", "name", "id", "props"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K98 [{"children", "className", "id", "name", "props", "state", "data"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  LOADK R10 K34 ["ClipLayer"]
  SETTABLEKS R10 R9 K14 ["className"]
  LOADK R10 K99 ["{4017A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R10 R9 K8 ["id"]
  LOADK R10 K100 ["My Layer"]
  SETTABLEKS R10 R9 K9 ["name"]
  DUPTABLE R10 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R11 K49 ["rbxassetid://10899968825"]
  SETTABLEKS R11 R10 K37 ["animationId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K38 ["isLooping"]
  LOADN R11 1
  SETTABLEKS R11 R10 K39 ["speed"]
  SETTABLEKS R10 R9 K15 ["props"]
  DUPTABLE R10 K101 [{"length", "timePositionNormalized"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K43 ["length"]
  LOADK R11 K27 [0.5]
  SETTABLEKS R11 R10 K42 ["timePositionNormalized"]
  SETTABLEKS R10 R9 K32 ["state"]
  NEWTABLE R10 2 0
  DUPCLOSURE R11 K102 [PROTO_4]
  SETTABLEKS R11 R10 K51 ["function"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K52 ["table"]
  SETTABLEKS R10 R9 K97 ["data"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K10 ["children"]
  LOADK R8 K34 ["ClipLayer"]
  SETTABLEKS R8 R7 K14 ["className"]
  LOADK R8 K69 ["Debug F"]
  SETTABLEKS R8 R7 K9 ["name"]
  LOADK R8 K103 ["{43E9A4EF-8775-4B8E-9A89-1DBD6F4A739B}"]
  SETTABLEKS R8 R7 K8 ["id"]
  DUPTABLE R8 K40 [{"animationId", "isLooping", "speed"}]
  LOADK R9 K73 ["rbxassetid://10921258489"]
  SETTABLEKS R9 R8 K37 ["animationId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K38 ["isLooping"]
  LOADN R9 1
  SETTABLEKS R9 R8 K39 ["speed"]
  SETTABLEKS R8 R7 K15 ["props"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K10 ["children"]
  SETTABLEKS R5 R4 K83 ["mockPayload2"]
  DUPTABLE R5 K11 [{"id", "name", "children"}]
  MOVE R6 R2
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["id"]
  LOADK R6 K104 ["Sort by Index"]
  SETTABLEKS R6 R5 K9 ["name"]
  NEWTABLE R6 0 3
  DUPTABLE R7 K106 [{"id", "name", "index", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K8 ["id"]
  LOADK R8 K107 ["Third"]
  SETTABLEKS R8 R7 K9 ["name"]
  LOADN R8 3
  SETTABLEKS R8 R7 K105 ["index"]
  LOADK R8 K34 ["ClipLayer"]
  SETTABLEKS R8 R7 K14 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K10 ["children"]
  DUPTABLE R8 K106 [{"id", "name", "index", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K8 ["id"]
  LOADK R9 K108 ["First"]
  SETTABLEKS R9 R8 K9 ["name"]
  LOADN R9 1
  SETTABLEKS R9 R8 K105 ["index"]
  LOADK R9 K34 ["ClipLayer"]
  SETTABLEKS R9 R8 K14 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K10 ["children"]
  DUPTABLE R9 K106 [{"id", "name", "index", "className", "children"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["id"]
  LOADK R10 K109 ["Second"]
  SETTABLEKS R10 R9 K9 ["name"]
  LOADN R10 2
  SETTABLEKS R10 R9 K105 ["index"]
  LOADK R10 K34 ["ClipLayer"]
  SETTABLEKS R10 R9 K14 ["className"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K10 ["children"]
  SETTABLEKS R5 R4 K84 ["sortByIndex"]
  DUPTABLE R5 K11 [{"id", "name", "children"}]
  MOVE R6 R2
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["id"]
  LOADK R6 K110 ["Sort by Name"]
  SETTABLEKS R6 R5 K9 ["name"]
  NEWTABLE R6 0 3
  DUPTABLE R7 K111 [{"id", "name", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K8 ["id"]
  LOADK R8 K112 ["[C] Third"]
  SETTABLEKS R8 R7 K9 ["name"]
  LOADK R8 K34 ["ClipLayer"]
  SETTABLEKS R8 R7 K14 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K10 ["children"]
  DUPTABLE R8 K111 [{"id", "name", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K8 ["id"]
  LOADK R9 K113 ["[B] Second"]
  SETTABLEKS R9 R8 K9 ["name"]
  LOADK R9 K34 ["ClipLayer"]
  SETTABLEKS R9 R8 K14 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K10 ["children"]
  DUPTABLE R9 K111 [{"id", "name", "className", "children"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["id"]
  LOADK R10 K114 ["[A] First"]
  SETTABLEKS R10 R9 K9 ["name"]
  LOADK R10 K34 ["ClipLayer"]
  SETTABLEKS R10 R9 K14 ["className"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K10 ["children"]
  SETTABLEKS R5 R4 K85 ["sortByName"]
  DUPTABLE R5 K11 [{"id", "name", "children"}]
  MOVE R6 R2
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["id"]
  LOADK R6 K115 ["Sort by Classname"]
  SETTABLEKS R6 R5 K9 ["name"]
  NEWTABLE R6 0 3
  DUPTABLE R7 K116 [{"id", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K8 ["id"]
  LOADK R8 K117 ["SequenceLayer"]
  SETTABLEKS R8 R7 K14 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K10 ["children"]
  DUPTABLE R8 K116 [{"id", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K8 ["id"]
  LOADK R9 K53 ["Blend1D"]
  SETTABLEKS R9 R8 K14 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K10 ["children"]
  DUPTABLE R9 K116 [{"id", "className", "children"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["id"]
  LOADK R10 K34 ["ClipLayer"]
  SETTABLEKS R10 R9 K14 ["className"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K10 ["children"]
  SETTABLEKS R5 R4 K86 ["sortByClassName"]
  DUPTABLE R5 K11 [{"id", "name", "children"}]
  MOVE R6 R2
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["id"]
  LOADK R6 K118 ["Sort by Id"]
  SETTABLEKS R6 R5 K9 ["name"]
  NEWTABLE R6 0 3
  DUPTABLE R7 K116 [{"id", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K8 ["id"]
  LOADK R8 K34 ["ClipLayer"]
  SETTABLEKS R8 R7 K14 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K10 ["children"]
  DUPTABLE R8 K116 [{"id", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K8 ["id"]
  LOADK R9 K34 ["ClipLayer"]
  SETTABLEKS R9 R8 K14 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K10 ["children"]
  DUPTABLE R9 K116 [{"id", "className", "children"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["id"]
  LOADK R10 K34 ["ClipLayer"]
  SETTABLEKS R10 R9 K14 ["className"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K10 ["children"]
  SETTABLEKS R5 R4 K87 ["sortById"]
  DUPTABLE R5 K121 [{"ExpandedSections", "LayerData"}]
  NEWTABLE R6 4 0
  LOADB R7 1
  SETTABLEKS R7 R6 K122 ["LayerDetails"]
  LOADB R7 1
  SETTABLEKS R7 R6 K123 ["Properties"]
  LOADB R7 0
  SETTABLEKS R7 R6 K124 ["State"]
  LOADB R7 1
  SETTABLEKS R7 R6 K125 ["Watches"]
  SETTABLEKS R6 R5 K119 ["ExpandedSections"]
  GETTABLEKS R11 R3 K10 ["children"]
  GETTABLEN R10 R11 1
  GETTABLEKS R9 R10 K10 ["children"]
  GETTABLEN R8 R9 1
  GETTABLEKS R7 R8 K10 ["children"]
  GETTABLEN R6 R7 3
  SETTABLEKS R6 R5 K120 ["LayerData"]
  SETTABLEKS R5 R4 K88 ["clipLayerView"]
  DUPTABLE R5 K121 [{"ExpandedSections", "LayerData"}]
  NEWTABLE R6 2 0
  LOADB R7 1
  SETTABLEKS R7 R6 K122 ["LayerDetails"]
  LOADB R7 1
  SETTABLEKS R7 R6 K123 ["Properties"]
  SETTABLEKS R6 R5 K119 ["ExpandedSections"]
  GETTABLEKS R9 R3 K10 ["children"]
  GETTABLEN R8 R9 1
  GETTABLEKS R7 R8 K10 ["children"]
  GETTABLEN R6 R7 1
  SETTABLEKS R6 R5 K120 ["LayerData"]
  SETTABLEKS R5 R4 K89 ["blend1DLayerView"]
  DUPTABLE R5 K121 [{"ExpandedSections", "LayerData"}]
  NEWTABLE R6 2 0
  LOADB R7 1
  SETTABLEKS R7 R6 K122 ["LayerDetails"]
  LOADB R7 1
  SETTABLEKS R7 R6 K123 ["Properties"]
  SETTABLEKS R6 R5 K119 ["ExpandedSections"]
  DUPTABLE R6 K18 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R7 0 4
  DUPTABLE R8 K126 [{"linkData"}]
  DUPTABLE R9 K26 [{"position"}]
  GETIMPORT R10 K62 [Vector2.new]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["position"]
  SETTABLEKS R9 R8 K19 ["linkData"]
  DUPTABLE R9 K126 [{"linkData"}]
  DUPTABLE R10 K26 [{"position"}]
  LOADN R12 3
  LOADN R13 0
  LOADN R14 0
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K128 [Vector3.new]
  CALL R11 3 1
  SETTABLEKS R11 R10 K25 ["position"]
  SETTABLEKS R10 R9 K19 ["linkData"]
  DUPTABLE R10 K126 [{"linkData"}]
  DUPTABLE R11 K26 [{"position"}]
  DUPTABLE R12 K130 [{"X"}]
  LOADN R13 5
  SETTABLEKS R13 R12 K129 ["X"]
  SETTABLEKS R12 R11 K25 ["position"]
  SETTABLEKS R11 R10 K19 ["linkData"]
  DUPTABLE R11 K126 [{"linkData"}]
  DUPTABLE R12 K26 [{"position"}]
  LOADK R13 K28 ["FOO"]
  SETTABLEKS R13 R12 K25 ["position"]
  SETTABLEKS R12 R11 K19 ["linkData"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K10 ["children"]
  LOADK R7 K53 ["Blend1D"]
  SETTABLEKS R7 R6 K14 ["className"]
  LOADK R7 K131 ["WrongTargets"]
  SETTABLEKS R7 R6 K9 ["name"]
  LOADK R7 K132 ["{275F34E0-57F4-4534-A5CB-38518EF2EB37}"]
  SETTABLEKS R7 R6 K8 ["id"]
  DUPTABLE R7 K57 [{"targetPosition", "speed"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K56 ["targetPosition"]
  LOADN R8 1
  SETTABLEKS R8 R7 K39 ["speed"]
  SETTABLEKS R7 R6 K15 ["props"]
  LOADN R7 1
  SETTABLEKS R7 R6 K17 ["weight"]
  SETTABLEKS R6 R5 K120 ["LayerData"]
  SETTABLEKS R5 R4 K90 ["blend1DLayerViewWrongType"]
  DUPTABLE R5 K121 [{"ExpandedSections", "LayerData"}]
  NEWTABLE R6 2 0
  LOADB R7 1
  SETTABLEKS R7 R6 K122 ["LayerDetails"]
  LOADB R7 1
  SETTABLEKS R7 R6 K123 ["Properties"]
  SETTABLEKS R6 R5 K119 ["ExpandedSections"]
  DUPTABLE R6 K18 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R7 0 4
  DUPTABLE R8 K126 [{"linkData"}]
  DUPTABLE R9 K26 [{"position"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K25 ["position"]
  SETTABLEKS R9 R8 K19 ["linkData"]
  DUPTABLE R9 K126 [{"linkData"}]
  DUPTABLE R10 K26 [{"position"}]
  LOADN R12 3
  LOADN R13 2
  LOADN R14 0
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K128 [Vector3.new]
  CALL R11 3 1
  SETTABLEKS R11 R10 K25 ["position"]
  SETTABLEKS R10 R9 K19 ["linkData"]
  DUPTABLE R10 K126 [{"linkData"}]
  DUPTABLE R11 K26 [{"position"}]
  DUPTABLE R12 K134 [{"X", "Y"}]
  LOADN R13 5
  SETTABLEKS R13 R12 K129 ["X"]
  LOADN R13 1
  SETTABLEKS R13 R12 K133 ["Y"]
  SETTABLEKS R12 R11 K25 ["position"]
  SETTABLEKS R11 R10 K19 ["linkData"]
  DUPTABLE R11 K126 [{"linkData"}]
  DUPTABLE R12 K26 [{"position"}]
  LOADK R13 K28 ["FOO"]
  SETTABLEKS R13 R12 K25 ["position"]
  SETTABLEKS R12 R11 K19 ["linkData"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K10 ["children"]
  LOADK R7 K68 ["Blend2D"]
  SETTABLEKS R7 R6 K14 ["className"]
  LOADK R7 K131 ["WrongTargets"]
  SETTABLEKS R7 R6 K9 ["name"]
  LOADK R7 K132 ["{275F34E0-57F4-4534-A5CB-38518EF2EB37}"]
  SETTABLEKS R7 R6 K8 ["id"]
  DUPTABLE R7 K57 [{"targetPosition", "speed"}]
  GETIMPORT R8 K62 [Vector2.new]
  LOADK R9 K27 [0.5]
  LOADK R10 K27 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K56 ["targetPosition"]
  LOADN R8 1
  SETTABLEKS R8 R7 K39 ["speed"]
  SETTABLEKS R7 R6 K15 ["props"]
  LOADN R7 1
  SETTABLEKS R7 R6 K17 ["weight"]
  SETTABLEKS R6 R5 K120 ["LayerData"]
  SETTABLEKS R5 R4 K91 ["blend2DLayerViewWrongType"]
  DUPTABLE R5 K121 [{"ExpandedSections", "LayerData"}]
  NEWTABLE R6 2 0
  LOADB R7 1
  SETTABLEKS R7 R6 K122 ["LayerDetails"]
  LOADB R7 1
  SETTABLEKS R7 R6 K123 ["Properties"]
  SETTABLEKS R6 R5 K119 ["ExpandedSections"]
  GETTABLEKS R9 R3 K10 ["children"]
  GETTABLEN R8 R9 1
  GETTABLEKS R7 R8 K10 ["children"]
  GETTABLEN R6 R7 2
  SETTABLEKS R6 R5 K120 ["LayerData"]
  SETTABLEKS R5 R4 K92 ["blend2DLayerView"]
  DUPTABLE R5 K44 [{"timePositionNormalized", "length"}]
  LOADK R6 K27 [0.5]
  SETTABLEKS R6 R5 K42 ["timePositionNormalized"]
  LOADN R6 4
  SETTABLEKS R6 R5 K43 ["length"]
  SETTABLEKS R5 R4 K32 ["state"]
  RETURN R4 1
