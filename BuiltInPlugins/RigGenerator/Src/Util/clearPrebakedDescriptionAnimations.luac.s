PROTO_0:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["ClimbAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["FallAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["IdleAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["JumpAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["MoodAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["RunAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K6 ["SwimAnimation"]
  LOADN R1 0
  SETTABLEKS R1 R0 K7 ["WalkAnimation"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
