PROTO_0:
  DUPTABLE R1 K2 [{"Id", "Label"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Label"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["issueType"]
  GETTABLEKS R4 R0 K1 ["instanceName"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K4 [{"Id", "Label"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["UNASSIGNED"]
  SETTABLEKS R7 R6 K2 ["Id"]
  LOADK R9 K6 ["ScriptPane"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["UNASSIGNED"]
  NAMECALL R7 R2 K7 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Label"]
  SETLIST R5 R6 1 [1]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["PartKey"]
  JUMPIFEQ R3 R6 [+8]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["JointKey"]
  JUMPIFEQ R3 R6 [+3]
  LOADNIL R6
  RETURN R6 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["PartKey"]
  JUMPIFNOTEQ R3 R6 [+17]
  GETUPVAL R6 2
  MOVE R7 R5
  GETUPVAL R8 3
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["Conversions"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["PartsKey"]
  GETTABLE R10 R11 R12
  GETTABLE R9 R10 R4
  DUPCLOSURE R10 K12 [PROTO_0]
  CALL R8 2 -1
  CALL R6 -1 1
  MOVE R5 R6
  JUMP [+28]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["JointKey"]
  JUMPIFNOTEQ R3 R6 [+24]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["Conversions"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["JointsKey"]
  GETTABLE R8 R9 R10
  GETTABLE R7 R8 R4
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["JointKey"]
  GETTABLE R6 R7 R8
  DUPTABLE R9 K4 [{"Id", "Label"}]
  SETTABLEKS R6 R9 K2 ["Id"]
  SETTABLEKS R6 R9 K3 ["Label"]
  FASTCALL2 TABLE_INSERT R5 R9 [+4]
  MOVE R8 R5
  GETIMPORT R7 K16 [table.insert]
  CALL R7 2 0
  DUPTABLE R6 K19 [{"Value", "Schema"}]
  MOVE R7 R1
  JUMPIF R7 [+3]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["UNASSIGNED"]
  SETTABLEKS R7 R6 K17 ["Value"]
  DUPTABLE R7 K22 [{"Type", "Options"}]
  LOADK R8 K23 ["Dropdown"]
  SETTABLEKS R8 R7 K20 ["Type"]
  SETTABLEKS R5 R7 K21 ["Options"]
  SETTABLEKS R7 R6 K18 ["Schema"]
  RETURN R6 1

PROTO_2:
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETTABLE R2 R3 R4
  GETTABLEKS R6 R2 K0 ["Key"]
  GETTABLE R5 R0 R6
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K2 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K3 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R7 R2 K0 ["Key"]
  GETTABLE R6 R1 R7
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K2 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K3 ["table"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R3 [+6]
  GETTABLEKS R7 R2 K0 ["Key"]
  GETTABLE R6 R0 R7
  GETTABLEKS R5 R6 K4 ["Value"]
  JUMP [+3]
  GETTABLEKS R6 R2 K0 ["Key"]
  GETTABLE R5 R0 R6
  JUMPIFNOT R4 [+6]
  GETTABLEKS R8 R2 K0 ["Key"]
  GETTABLE R7 R1 R8
  GETTABLEKS R6 R7 K4 ["Value"]
  JUMP [+3]
  GETTABLEKS R7 R2 K0 ["Key"]
  GETTABLE R6 R1 R7
  GETTABLEKS R7 R2 K5 ["SortMethod"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R2 K5 ["SortMethod"]
  MOVE R8 R5
  MOVE R9 R6
  GETUPVAL R10 2
  CALL R7 3 1
  JUMPIFEQKNIL R7 [+20]
  RETURN R7 1
  JUMP [+17]
  JUMPIFEQ R5 R6 [+16]
  GETUPVAL R7 2
  GETIMPORT R8 K9 [Enum.SortDirection.Descending]
  JUMPIFNOTEQ R7 R8 [+6]
  JUMPIFLT R5 R6 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  RETURN R7 1
  JUMPIFLT R6 R5 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  RETURN R7 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["scriptLinkSort"]
  GETTABLEKS R9 R0 K11 ["name"]
  GETTABLEKS R8 R9 K4 ["Value"]
  GETTABLEKS R10 R1 K11 ["name"]
  GETTABLEKS R9 R10 K4 ["Value"]
  GETIMPORT R10 K13 [Enum.SortDirection.Ascending]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  RETURN R2 1

PROTO_4:
  GETIMPORT R3 K1 [next]
  GETTABLEKS R4 R2 K2 ["R6"]
  CALL R3 1 1
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R2 K2 ["R6"]
  GETTABLEKS R5 R1 K3 ["instanceName"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETIMPORT R3 K1 [next]
  GETTABLEKS R4 R2 K4 ["R15"]
  CALL R3 1 1
  JUMPIFNOT R3 [+20]
  GETTABLEKS R4 R2 K4 ["R15"]
  GETTABLEKS R3 R4 K5 ["Unassigned"]
  JUMPIF R3 [+5]
  GETTABLEKS R3 R1 K6 ["resolution"]
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R4 R2 K4 ["R15"]
  GETTABLEKS R3 R4 K7 ["Assigned"]
  JUMPIF R3 [+5]
  GETTABLEKS R3 R1 K6 ["resolution"]
  JUMPIFNOT R3 [+2]
  LOADB R3 0
  RETURN R3 1
  LOADB R3 1
  RETURN R3 1

PROTO_5:
  NEWTABLE R5 0 0
  NEWTABLE R6 0 0
  MOVE R7 R0
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  MOVE R14 R10
  NAMECALL R12 R2 K0 ["getScriptInstanceFromGUID"]
  CALL R12 2 1
  NAMECALL R13 R12 K1 ["GetFullName"]
  CALL R13 1 1
  GETTABLEKS R14 R3 K2 ["scriptName"]
  JUMPIFNOT R14 [+12]
  GETTABLEKS R14 R3 K2 ["scriptName"]
  JUMPIFEQKS R14 K3 [""] [+9]
  GETIMPORT R14 K6 [string.find]
  MOVE R15 R13
  GETTABLEKS R16 R3 K2 ["scriptName"]
  CALL R14 2 1
  JUMPIFEQKNIL R14 [+261]
  GETTABLEKS R14 R11 K7 ["_list"]
  LOADNIL R15
  LOADNIL R16
  FORGPREP R14
  GETUPVAL R19 0
  MOVE R20 R13
  MOVE R21 R18
  GETTABLEKS R22 R3 K8 ["rigFilters"]
  CALL R19 3 1
  JUMPIFNOT R19 [+246]
  GETTABLEKS R19 R18 K9 ["instanceName"]
  GETTABLEKS R20 R18 K10 ["issueType"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["AnimationKey"]
  JUMPIFEQ R20 R21 [+238]
  GETTABLE R21 R5 R10
  JUMPIF R21 [+3]
  NEWTABLE R21 0 0
  SETTABLE R21 R5 R10
  GETTABLE R22 R5 R10
  GETTABLE R21 R22 R20
  JUMPIF R21 [+4]
  GETTABLE R21 R5 R10
  NEWTABLE R22 0 0
  SETTABLE R22 R21 R20
  GETTABLE R23 R5 R10
  GETTABLE R22 R23 R20
  GETTABLE R21 R22 R19
  JUMPIFNOTEQKNIL R21 [+102]
  DUPTABLE R22 K23 [{"check", "name", "count", "issue", "r6", "r15", "cnv", "children", "Path", "_resolution", "_id"}]
  DUPTABLE R23 K26 [{"Value", "Schema"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K24 ["Value"]
  DUPTABLE R24 K28 [{"Type"}]
  LOADK R25 K29 ["Checkbox"]
  SETTABLEKS R25 R24 K27 ["Type"]
  SETTABLEKS R24 R23 K25 ["Schema"]
  SETTABLEKS R23 R22 K12 ["check"]
  DUPTABLE R23 K26 [{"Value", "Schema"}]
  DUPTABLE R24 K31 [{"Script"}]
  SETTABLEKS R12 R24 K30 ["Script"]
  SETTABLEKS R24 R23 K24 ["Value"]
  DUPTABLE R24 K28 [{"Type"}]
  LOADK R25 K32 ["ScriptLink"]
  SETTABLEKS R25 R24 K27 ["Type"]
  SETTABLEKS R24 R23 K25 ["Schema"]
  SETTABLEKS R23 R22 K13 ["name"]
  LOADN R23 0
  SETTABLEKS R23 R22 K14 ["count"]
  GETUPVAL R24 2
  GETTABLE R23 R24 R20
  SETTABLEKS R23 R22 K15 ["issue"]
  SETTABLEKS R19 R22 K16 ["r6"]
  GETUPVAL R24 3
  MOVE R25 R18
  GETTABLEKS R26 R18 K33 ["resolution"]
  MOVE R27 R4
  CALL R24 3 1
  ORK R23 R24 K3 [""]
  SETTABLEKS R23 R22 K17 ["r15"]
  DUPTABLE R23 K26 [{"Value", "Schema"}]
  GETTABLE R24 R1 R10
  SETTABLEKS R24 R23 K24 ["Value"]
  DUPTABLE R24 K28 [{"Type"}]
  LOADK R25 K34 ["Status"]
  SETTABLEKS R25 R24 K27 ["Type"]
  SETTABLEKS R24 R23 K25 ["Schema"]
  SETTABLEKS R23 R22 K18 ["cnv"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K19 ["children"]
  DUPTABLE R23 K37 [{"scriptId", "instanceName", "issueType", "diagnosticId"}]
  SETTABLEKS R10 R23 K35 ["scriptId"]
  SETTABLEKS R19 R23 K9 ["instanceName"]
  SETTABLEKS R20 R23 K10 ["issueType"]
  GETTABLEKS R24 R18 K36 ["diagnosticId"]
  SETTABLEKS R24 R23 K36 ["diagnosticId"]
  SETTABLEKS R23 R22 K20 ["Path"]
  GETTABLEKS R23 R18 K33 ["resolution"]
  SETTABLEKS R23 R22 K21 ["_resolution"]
  MOVE R24 R10
  LOADK R25 K38 ["|"]
  MOVE R26 R19
  LOADK R27 K38 ["|"]
  MOVE R28 R20
  CONCAT R23 R24 R28
  SETTABLEKS R23 R22 K22 ["_id"]
  MOVE R21 R22
  GETTABLEKS R22 R21 K20 ["Path"]
  SETTABLEKS R21 R22 K39 ["item"]
  GETTABLE R23 R5 R10
  GETTABLE R22 R23 R20
  SETTABLE R21 R22 R19
  FASTCALL2 TABLE_INSERT R6 R21 [+5]
  MOVE R23 R6
  MOVE R24 R21
  GETIMPORT R22 K42 [table.insert]
  CALL R22 2 0
  DUPTABLE R22 K43 [{"check", "name", "count", "issue", "r6", "r15", "cnv", "Path", "_id"}]
  DUPTABLE R23 K26 [{"Value", "Schema"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K24 ["Value"]
  DUPTABLE R24 K28 [{"Type"}]
  LOADK R25 K29 ["Checkbox"]
  SETTABLEKS R25 R24 K27 ["Type"]
  SETTABLEKS R24 R23 K25 ["Schema"]
  SETTABLEKS R23 R22 K12 ["check"]
  DUPTABLE R23 K26 [{"Value", "Schema"}]
  DUPTABLE R24 K45 [{"Script", "Range"}]
  SETTABLEKS R12 R24 K30 ["Script"]
  GETTABLEKS R25 R18 K46 ["range"]
  SETTABLEKS R25 R24 K44 ["Range"]
  SETTABLEKS R24 R23 K24 ["Value"]
  DUPTABLE R24 K28 [{"Type"}]
  LOADK R25 K32 ["ScriptLink"]
  SETTABLEKS R25 R24 K27 ["Type"]
  SETTABLEKS R24 R23 K25 ["Schema"]
  SETTABLEKS R23 R22 K13 ["name"]
  LOADNIL R23
  SETTABLEKS R23 R22 K14 ["count"]
  LOADK R23 K3 [""]
  SETTABLEKS R23 R22 K15 ["issue"]
  SETTABLEKS R19 R22 K16 ["r6"]
  GETUPVAL R24 3
  MOVE R25 R18
  GETTABLEKS R26 R18 K33 ["resolution"]
  MOVE R27 R4
  CALL R24 3 1
  ORK R23 R24 K3 [""]
  SETTABLEKS R23 R22 K17 ["r15"]
  DUPTABLE R23 K26 [{"Value", "Schema"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K24 ["Value"]
  DUPTABLE R24 K28 [{"Type"}]
  LOADK R25 K34 ["Status"]
  SETTABLEKS R25 R24 K27 ["Type"]
  SETTABLEKS R24 R23 K25 ["Schema"]
  SETTABLEKS R23 R22 K18 ["cnv"]
  DUPTABLE R23 K48 [{"parent", "scriptId", "diagnosticId"}]
  SETTABLEKS R21 R23 K47 ["parent"]
  SETTABLEKS R10 R23 K35 ["scriptId"]
  GETTABLEKS R24 R18 K36 ["diagnosticId"]
  SETTABLEKS R24 R23 K36 ["diagnosticId"]
  SETTABLEKS R23 R22 K20 ["Path"]
  MOVE R24 R10
  LOADK R25 K38 ["|"]
  MOVE R26 R19
  LOADK R27 K38 ["|"]
  MOVE R28 R20
  LOADK R29 K38 ["|"]
  GETTABLEKS R30 R18 K36 ["diagnosticId"]
  CONCAT R23 R24 R30
  SETTABLEKS R23 R22 K22 ["_id"]
  GETTABLEKS R23 R21 K21 ["_resolution"]
  JUMPIFNOT R23 [+17]
  GETTABLEKS R23 R18 K33 ["resolution"]
  GETTABLEKS R24 R21 K21 ["_resolution"]
  JUMPIFEQ R23 R24 [+12]
  GETUPVAL R24 3
  MOVE R25 R18
  LOADNIL R26
  MOVE R27 R4
  CALL R24 3 1
  ORK R23 R24 K3 [""]
  SETTABLEKS R23 R21 K17 ["r15"]
  LOADNIL R23
  SETTABLEKS R23 R21 K21 ["_resolution"]
  GETTABLEKS R23 R22 K20 ["Path"]
  SETTABLEKS R22 R23 K39 ["item"]
  GETTABLEKS R24 R21 K19 ["children"]
  FASTCALL2 TABLE_INSERT R24 R22 [+4]
  MOVE R25 R22
  GETIMPORT R23 K42 [table.insert]
  CALL R23 2 0
  GETTABLEKS R23 R21 K14 ["count"]
  ADDK R23 R23 K49 [1]
  SETTABLEKS R23 R21 K14 ["count"]
  FORGLOOP R14 2 [-254]
  FORGLOOP R7 2 [-283]
  RETURN R6 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_id"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"Sizes"}]
  SETTABLEKS R0 R3 K0 ["Sizes"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["Items"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  GETIMPORT R4 K4 [table.sort]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  GETUPVAL R4 1
  DUPTABLE R6 K8 [{"Items", "SortChildren", "SortIndex", "SortOrder"}]
  SETTABLEKS R2 R6 K1 ["Items"]
  JUMPIFNOTEQKN R0 K9 [2] [+3]
  MOVE R8 R1
  JUMP [+2]
  GETIMPORT R8 K13 [Enum.SortDirection.Descending]
  LOADN R9 2
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE UPVAL U3
  SETTABLEKS R7 R6 K5 ["SortChildren"]
  SETTABLEKS R0 R6 K6 ["SortIndex"]
  SETTABLEKS R1 R6 K7 ["SortOrder"]
  NAMECALL R4 R4 K14 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_9:
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K1 ["Items"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K2 ["item"]
  GETTABLEKS R5 R4 K3 ["r15"]
  GETTABLEKS R6 R0 K4 ["Id"]
  SETTABLEKS R6 R5 K5 ["Value"]
  GETTABLEKS R5 R4 K6 ["children"]
  JUMPIFNOT R5 [+38]
  GETTABLEKS R5 R4 K3 ["r15"]
  GETTABLEKS R6 R0 K4 ["Id"]
  SETTABLEKS R6 R5 K5 ["Value"]
  GETTABLEKS R5 R4 K6 ["children"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R11 R9 K3 ["r15"]
  GETTABLEKS R10 R11 K5 ["Value"]
  GETTABLEKS R11 R0 K4 ["Id"]
  JUMPIFEQ R10 R11 [+17]
  GETTABLEKS R10 R9 K3 ["r15"]
  GETTABLEKS R11 R0 K4 ["Id"]
  SETTABLEKS R11 R10 K5 ["Value"]
  GETTABLEKS R13 R9 K7 ["Path"]
  GETTABLEKS R12 R13 K8 ["diagnosticId"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K11 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-25]
  JUMP [+63]
  GETTABLEKS R8 R4 K7 ["Path"]
  GETTABLEKS R7 R8 K8 ["diagnosticId"]
  FASTCALL2 TABLE_INSERT R2 R7 [+4]
  MOVE R6 R2
  GETIMPORT R5 K11 [table.insert]
  CALL R5 2 0
  GETTABLEKS R5 R1 K12 ["parent"]
  JUMPIFNOT R5 [+17]
  GETTABLEKS R7 R4 K3 ["r15"]
  GETTABLEKS R6 R7 K5 ["Value"]
  GETTABLEKS R8 R5 K3 ["r15"]
  GETTABLEKS R7 R8 K5 ["Value"]
  JUMPIFEQ R6 R7 [+8]
  GETTABLEKS R6 R5 K3 ["r15"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["UNASSIGNED"]
  SETTABLEKS R7 R6 K5 ["Value"]
  GETTABLEKS R9 R5 K6 ["children"]
  GETTABLEN R8 R9 1
  GETTABLEKS R7 R8 K3 ["r15"]
  GETTABLEKS R6 R7 K5 ["Value"]
  GETTABLEKS R7 R5 K6 ["children"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R11 K3 ["r15"]
  GETTABLEKS R12 R13 K5 ["Value"]
  JUMPIFEQ R12 R6 [+4]
  GETUPVAL R12 2
  GETTABLEKS R6 R12 K13 ["UNASSIGNED"]
  FORGLOOP R7 2 [-10]
  GETTABLEKS R8 R5 K3 ["r15"]
  GETTABLEKS R7 R8 K5 ["Value"]
  JUMPIFEQ R7 R6 [+5]
  GETTABLEKS R7 R5 K3 ["r15"]
  SETTABLEKS R6 R7 K5 ["Value"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["props"]
  GETTABLEKS R5 R6 K15 ["ApplyResolutions"]
  GETTABLEKS R6 R1 K16 ["scriptId"]
  MOVE R7 R2
  MOVE R8 R0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["props"]
  GETTABLEKS R9 R10 K17 ["ScriptConversionContext"]
  CALL R5 4 0
  GETUPVAL R5 1
  DUPTABLE R7 K18 [{"Items"}]
  SETTABLEKS R3 R7 K1 ["Items"]
  NAMECALL R5 R5 K19 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K6 [{"Sizes", "SortChildren", "SortIndex", "SortOrder", "Expansion", "_Ref"}]
  NEWTABLE R2 0 7
  GETIMPORT R3 K9 [UDim.new]
  LOADN R4 0
  LOADN R5 30
  CALL R3 2 1
  GETIMPORT R4 K9 [UDim.new]
  LOADK R5 K10 [0.5]
  LOADK R6 K11 [-82.5]
  CALL R4 2 1
  GETIMPORT R5 K9 [UDim.new]
  LOADN R6 0
  LOADN R7 30
  CALL R5 2 1
  GETIMPORT R6 K9 [UDim.new]
  LOADN R7 0
  LOADN R8 75
  CALL R6 2 1
  GETIMPORT R7 K9 [UDim.new]
  LOADK R8 K12 [0.25]
  LOADK R9 K13 [-41.25]
  CALL R7 2 1
  GETIMPORT R8 K9 [UDim.new]
  LOADK R9 K12 [0.25]
  LOADK R10 K13 [-41.25]
  CALL R8 2 1
  GETIMPORT R9 K9 [UDim.new]
  LOADN R10 0
  LOADN R11 30
  CALL R9 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K0 ["Sizes"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["SortChildren"]
  LOADN R2 5
  SETTABLEKS R2 R1 K2 ["SortIndex"]
  GETIMPORT R2 K17 [Enum.SortDirection.Ascending]
  SETTABLEKS R2 R1 K3 ["SortOrder"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["Expansion"]
  DUPTABLE R2 K21 [{"diagnostics", "completedScripts", "searchFilters"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K18 ["diagnostics"]
  LOADNIL R3
  SETTABLEKS R3 R2 K19 ["completedScripts"]
  LOADNIL R3
  SETTABLEKS R3 R2 K20 ["searchFilters"]
  SETTABLEKS R2 R1 K5 ["_Ref"]
  SETTABLEKS R1 R0 K22 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K23 ["onSizesChange"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K24 ["onSortChange"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K25 ["onSuggestionApplied"]
  LOADNIL R1
  SETTABLEKS R1 R0 K26 ["ExpandAllEventConn"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["diagnostics"]
  GETTABLEKS R4 R1 K1 ["_Ref"]
  GETTABLEKS R3 R4 K0 ["diagnostics"]
  JUMPIFNOTEQ R2 R3 [+17]
  GETTABLEKS R2 R0 K2 ["completedScripts"]
  GETTABLEKS R4 R1 K1 ["_Ref"]
  GETTABLEKS R3 R4 K2 ["completedScripts"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K3 ["SearchFilters"]
  GETTABLEKS R4 R1 K1 ["_Ref"]
  GETTABLEKS R3 R4 K3 ["SearchFilters"]
  JUMPIFEQ R2 R3 [+56]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["diagnostics"]
  GETTABLEKS R4 R0 K2 ["completedScripts"]
  GETTABLEKS R5 R0 K4 ["ScriptConversionContext"]
  GETTABLEKS R6 R0 K3 ["SearchFilters"]
  GETTABLEKS R7 R0 K5 ["Localization"]
  CALL R2 5 1
  GETTABLEKS R3 R1 K6 ["SortIndex"]
  JUMPIFNOT R3 [+17]
  GETTABLEKS R3 R1 K7 ["SortOrder"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R1 K6 ["SortIndex"]
  GETTABLEKS R5 R1 K7 ["SortOrder"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE UPVAL U2
  GETIMPORT R4 K10 [table.sort]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  DUPTABLE R3 K12 [{"Items", "_Ref"}]
  SETTABLEKS R2 R3 K11 ["Items"]
  GETUPVAL R4 3
  GETTABLEKS R5 R1 K1 ["_Ref"]
  DUPTABLE R6 K14 [{"diagnostics", "completedScripts", "searchFilters"}]
  GETTABLEKS R7 R0 K0 ["diagnostics"]
  SETTABLEKS R7 R6 K0 ["diagnostics"]
  GETTABLEKS R7 R0 K2 ["completedScripts"]
  SETTABLEKS R7 R6 K2 ["completedScripts"]
  GETTABLEKS R7 R0 K3 ["SearchFilters"]
  SETTABLEKS R7 R6 K13 ["searchFilters"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["_Ref"]
  RETURN R3 1
  RETURN R0 0

PROTO_12:
  ORK R0 R0 K0 []
  NEWTABLE R1 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["state"]
  GETTABLEKS R2 R5 K2 ["Items"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K3 ["_id"]
  SETTABLE R0 R1 R7
  FORGLOOP R2 2 [-4]
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"Expansion"}]
  SETTABLEKS R1 R4 K4 ["Expansion"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["ExpandTreeView"]
  GETTABLEKS R1 R2 K2 ["Event"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["ExpandAllEventConn"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["ExpandAllEventConn"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["ExpandAllEventConn"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"Name", "Width"}]
  GETTABLEKS R6 R0 K0 ["Name"]
  JUMPIFNOT R6 [+8]
  GETUPVAL R5 1
  LOADK R7 K3 ["ScriptPane"]
  GETTABLEKS R8 R0 K0 ["Name"]
  NAMECALL R5 R5 K4 ["getText"]
  CALL R5 3 1
  JUMP [+1]
  LOADK R5 K5 [""]
  SETTABLEKS R5 R4 K0 ["Name"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["state"]
  GETTABLEKS R6 R7 K7 ["Sizes"]
  GETTABLE R5 R6 R1
  SETTABLEKS R5 R4 K1 ["Width"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_16:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"Expansion"}]
  GETUPVAL R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["state"]
  GETTABLEKS R5 R6 K0 ["Expansion"]
  MOVE R6 R0
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["Expansion"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["children"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_18:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["Localization"]
  GETUPVAL R4 0
  GETUPVAL R5 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE VAL R0
  CALL R4 2 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K22 [{"LayoutOrder", "Size", "SortIndex", "SortOrder", "SortChildren", "OnSortChange", "Columns", "OnExpansionChange", "CellComponent", "Expansion", "RootItems", "GetChildren", "GetItemId", "OnCellEdited", "Scroll", "ClampSize", "UseDeficit", "Renderers"}]
  GETTABLEKS R8 R2 K4 ["LayoutOrder"]
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  GETTABLEKS R8 R2 K5 ["Size"]
  SETTABLEKS R8 R7 K5 ["Size"]
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K6 ["SortIndex"]
  SETTABLEKS R8 R7 K6 ["SortIndex"]
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K7 ["SortOrder"]
  SETTABLEKS R8 R7 K7 ["SortOrder"]
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K8 ["SortChildren"]
  SETTABLEKS R8 R7 K8 ["SortChildren"]
  GETTABLEKS R8 R0 K23 ["onSortChange"]
  SETTABLEKS R8 R7 K9 ["OnSortChange"]
  SETTABLEKS R4 R7 K10 ["Columns"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R8 R7 K11 ["OnExpansionChange"]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K12 ["CellComponent"]
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K13 ["Expansion"]
  SETTABLEKS R8 R7 K13 ["Expansion"]
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K24 ["Items"]
  SETTABLEKS R8 R7 K14 ["RootItems"]
  DUPCLOSURE R8 K25 [PROTO_17]
  SETTABLEKS R8 R7 K15 ["GetChildren"]
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K16 ["GetItemId"]
  GETTABLEKS R8 R0 K26 ["onSuggestionApplied"]
  SETTABLEKS R8 R7 K17 ["OnCellEdited"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["Scroll"]
  LOADB R8 1
  SETTABLEKS R8 R7 K19 ["ClampSize"]
  LOADB R8 1
  SETTABLEKS R8 R7 K20 ["UseDeficit"]
  DUPTABLE R8 K30 [{"ScriptLink", "Dropdown", "Status"}]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K31 ["ScriptLinkCell"]
  SETTABLEKS R9 R8 K27 ["ScriptLink"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K32 ["DropdownCell"]
  SETTABLEKS R9 R8 K28 ["Dropdown"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K33 ["StatusCell"]
  SETTABLEKS R9 R8 K29 ["Status"]
  SETTABLEKS R8 R7 K21 ["Renderers"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_19:
  DUPTABLE R2 K2 [{"diagnostics", "completedScripts"}]
  GETTABLEKS R4 R0 K3 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["diagnostics"]
  SETTABLEKS R3 R2 K0 ["diagnostics"]
  GETTABLEKS R4 R0 K3 ["ScriptConversion"]
  GETTABLEKS R3 R4 K1 ["completedScripts"]
  SETTABLEKS R3 R2 K1 ["completedScripts"]
  RETURN R2 1

PROTO_20:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K1 [{"ApplyResolutions"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ApplyResolutions"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Contexts"]
  GETTABLEKS R9 R10 K16 ["ScriptConversionContext"]
  CALL R8 1 1
  GETTABLEKS R10 R3 K17 ["Style"]
  GETTABLEKS R9 R10 K18 ["Stylizer"]
  GETTABLEKS R10 R3 K19 ["Dash"]
  GETTABLEKS R11 R10 K20 ["append"]
  GETTABLEKS R12 R10 K21 ["join"]
  GETTABLEKS R13 R10 K22 ["map"]
  GETTABLEKS R14 R3 K23 ["UI"]
  GETTABLEKS R15 R14 K24 ["Pane"]
  GETTABLEKS R16 R14 K25 ["TreeTable"]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K26 ["Actions"]
  GETTABLEKS R19 R0 K14 ["Src"]
  GETTABLEKS R18 R19 K27 ["Components"]
  GETIMPORT R19 K5 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K28 ["CellComponent"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K29 ["Renderers"]
  CALL R20 1 1
  GETTABLEKS R22 R0 K14 ["Src"]
  GETTABLEKS R21 R22 K30 ["Thunks"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K31 ["ApplyResolutions"]
  CALL R22 1 1
  GETTABLEKS R24 R0 K14 ["Src"]
  GETTABLEKS R23 R24 K32 ["Util"]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R25 R23 K33 ["ScriptReplacement"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R27 R23 K34 ["ScriptAnalysis"]
  GETTABLEKS R26 R27 K35 ["R6Info"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R28 R23 K34 ["ScriptAnalysis"]
  GETTABLEKS R27 R28 K36 ["Constants"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETIMPORT R29 K1 [script]
  GETTABLEKS R28 R29 K37 ["Sort"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R30 R0 K14 ["Src"]
  GETTABLEKS R29 R30 K38 ["Types"]
  CALL R28 1 1
  GETTABLEKS R29 R1 K39 ["PureComponent"]
  LOADK R31 K40 ["ScriptPaneTreeTable"]
  NAMECALL R29 R29 K41 ["extend"]
  CALL R29 2 1
  NEWTABLE R30 0 7
  DUPTABLE R31 K45 [{"Name", "Key", "SortMethod"}]
  LOADNIL R32
  SETTABLEKS R32 R31 K42 ["Name"]
  LOADK R32 K46 ["check"]
  SETTABLEKS R32 R31 K43 ["Key"]
  GETTABLEKS R32 R27 K47 ["booleanSort"]
  SETTABLEKS R32 R31 K44 ["SortMethod"]
  DUPTABLE R32 K45 [{"Name", "Key", "SortMethod"}]
  LOADK R33 K48 ["NameTitle"]
  SETTABLEKS R33 R32 K42 ["Name"]
  LOADK R33 K49 ["name"]
  SETTABLEKS R33 R32 K43 ["Key"]
  GETTABLEKS R33 R27 K50 ["scriptLinkSort"]
  SETTABLEKS R33 R32 K44 ["SortMethod"]
  DUPTABLE R33 K45 [{"Name", "Key", "SortMethod"}]
  LOADNIL R34
  SETTABLEKS R34 R33 K42 ["Name"]
  LOADK R34 K51 ["count"]
  SETTABLEKS R34 R33 K43 ["Key"]
  GETTABLEKS R34 R27 K52 ["optionalNumSort"]
  SETTABLEKS R34 R33 K44 ["SortMethod"]
  DUPTABLE R34 K53 [{"Name", "Key"}]
  LOADK R35 K54 ["TypeTitle"]
  SETTABLEKS R35 R34 K42 ["Name"]
  LOADK R35 K55 ["issue"]
  SETTABLEKS R35 R34 K43 ["Key"]
  DUPTABLE R35 K53 [{"Name", "Key"}]
  LOADK R36 K56 ["R6Title"]
  SETTABLEKS R36 R35 K42 ["Name"]
  LOADK R36 K57 ["r6"]
  SETTABLEKS R36 R35 K43 ["Key"]
  DUPTABLE R36 K53 [{"Name", "Key"}]
  LOADK R37 K58 ["R15Title"]
  SETTABLEKS R37 R36 K42 ["Name"]
  LOADK R37 K59 ["r15"]
  SETTABLEKS R37 R36 K43 ["Key"]
  DUPTABLE R37 K45 [{"Name", "Key", "SortMethod"}]
  LOADNIL R38
  SETTABLEKS R38 R37 K42 ["Name"]
  LOADK R38 K60 ["cnv"]
  SETTABLEKS R38 R37 K43 ["Key"]
  GETTABLEKS R38 R27 K47 ["booleanSort"]
  SETTABLEKS R38 R37 K44 ["SortMethod"]
  SETLIST R30 R31 7 [1]
  NEWTABLE R31 4 0
  GETTABLEKS R32 R25 K61 ["PartKey"]
  LOADK R33 K62 ["Part"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R26 K63 ["ReferenceKey"]
  LOADK R33 K64 ["Variable"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R25 K65 ["JointKey"]
  LOADK R33 K66 ["Joint"]
  SETTABLE R33 R31 R32
  DUPCLOSURE R32 K67 [PROTO_1]
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R11
  CAPTURE VAL R13
  DUPCLOSURE R33 K68 [PROTO_3]
  CAPTURE VAL R30
  CAPTURE VAL R27
  DUPCLOSURE R34 K69 [PROTO_4]
  DUPCLOSURE R35 K70 [PROTO_5]
  CAPTURE VAL R34
  CAPTURE VAL R25
  CAPTURE VAL R31
  CAPTURE VAL R32
  DUPCLOSURE R36 K71 [PROTO_6]
  DUPCLOSURE R37 K72 [PROTO_10]
  CAPTURE VAL R12
  CAPTURE VAL R30
  CAPTURE VAL R27
  CAPTURE VAL R24
  SETTABLEKS R37 R29 K73 ["init"]
  DUPCLOSURE R37 K74 [PROTO_11]
  CAPTURE VAL R35
  CAPTURE VAL R30
  CAPTURE VAL R27
  CAPTURE VAL R12
  SETTABLEKS R37 R29 K75 ["getDerivedStateFromProps"]
  DUPCLOSURE R37 K76 [PROTO_13]
  SETTABLEKS R37 R29 K77 ["didMount"]
  DUPCLOSURE R37 K78 [PROTO_14]
  SETTABLEKS R37 R29 K79 ["willUnmount"]
  DUPCLOSURE R37 K80 [PROTO_18]
  CAPTURE VAL R13
  CAPTURE VAL R30
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R36
  CAPTURE VAL R20
  SETTABLEKS R37 R29 K81 ["render"]
  MOVE R37 R5
  DUPTABLE R38 K82 [{"Analytics", "Localization", "Stylizer", "ScriptConversionContext"}]
  SETTABLEKS R6 R38 K12 ["Analytics"]
  SETTABLEKS R7 R38 K13 ["Localization"]
  SETTABLEKS R9 R38 K18 ["Stylizer"]
  SETTABLEKS R8 R38 K16 ["ScriptConversionContext"]
  CALL R37 1 1
  MOVE R38 R29
  CALL R37 1 1
  MOVE R29 R37
  DUPCLOSURE R37 K83 [PROTO_19]
  DUPCLOSURE R38 K84 [PROTO_21]
  CAPTURE VAL R22
  GETTABLEKS R39 R2 K85 ["connect"]
  MOVE R40 R37
  MOVE R41 R38
  CALL R39 2 1
  MOVE R40 R29
  CALL R39 1 1
  MOVE R29 R39
  RETURN R29 1
