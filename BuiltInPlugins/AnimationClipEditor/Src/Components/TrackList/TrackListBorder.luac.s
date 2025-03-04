PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K9 [{"Size", "LayoutOrder", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 0
  LOADN R8 2
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K4 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K5 ["LayoutOrder"]
  GETTABLEKS R6 R2 K13 ["borderColor"]
  SETTABLEKS R6 R5 K6 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["BorderSizePixel"]
  GETTABLEKS R6 R1 K8 ["ZIndex"]
  SETTABLEKS R6 R5 K8 ["ZIndex"]
  DUPTABLE R6 K15 [{"DragArea"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K19 [{"AnchorPoint", "Size", "ZIndex", "Cursor", "OnDragMoved"}]
  GETIMPORT R10 K21 [Vector2.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["AnchorPoint"]
  GETIMPORT R10 K12 [UDim2.new]
  LOADN R11 0
  LOADN R12 5
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K4 ["Size"]
  LOADN R10 2
  SETTABLEKS R10 R9 K8 ["ZIndex"]
  LOADK R10 K22 ["SplitEW"]
  SETTABLEKS R10 R9 K17 ["Cursor"]
  GETTABLEKS R10 R1 K18 ["OnDragMoved"]
  SETTABLEKS R10 R9 K18 ["OnDragMoved"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["DragArea"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["DragListenerArea"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETTABLEKS R6 R1 K14 ["PureComponent"]
  LOADK R8 K15 ["TrackListBorder"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K18 ["render"]
  MOVE R7 R5
  DUPTABLE R8 K20 [{"Stylizer"}]
  GETTABLEKS R9 R4 K19 ["Stylizer"]
  SETTABLEKS R9 R8 K19 ["Stylizer"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
