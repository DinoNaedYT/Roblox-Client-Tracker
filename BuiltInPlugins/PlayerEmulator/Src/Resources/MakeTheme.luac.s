PROTO_0:
  GETUPVAL R0 0
  LOADK R1 K0 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  DUPTABLE R2 K3 [{"SpriteSize", "NumSprites"}]
  LOADN R3 12
  SETTABLEKS R3 R2 K1 ["SpriteSize"]
  LOADN R3 4
  SETTABLEKS R3 R2 K2 ["NumSprites"]
  CALL R0 2 1
  DUPTABLE R1 K7 [{"rightArrowImage", "downArrowImage", "dimension"}]
  GETTABLEN R2 R0 1
  SETTABLEKS R2 R1 K4 ["rightArrowImage"]
  GETTABLEN R2 R0 3
  SETTABLEKS R2 R1 K5 ["downArrowImage"]
  LOADN R2 12
  SETTABLEKS R2 R1 K6 ["dimension"]
  DUPTABLE R2 K20 [{"Arrow", "BackgroundColor", "ButtonColor", "HoverColor", "PressedColor", "BorderColor", "TextColor", "ErrorColor", "LinkColor", "Green", "White", "DisabledColor"}]
  SETTABLEKS R1 R2 K8 ["Arrow"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K21 ["MainBackground"]
  SETTABLEKS R3 R2 K9 ["BackgroundColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K21 ["MainBackground"]
  SETTABLEKS R3 R2 K10 ["ButtonColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K22 ["ButtonHover"]
  SETTABLEKS R3 R2 K11 ["HoverColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K23 ["ButtonPressed"]
  SETTABLEKS R3 R2 K12 ["PressedColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K24 ["Border"]
  SETTABLEKS R3 R2 K13 ["BorderColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K25 ["MainText"]
  SETTABLEKS R3 R2 K14 ["TextColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K26 ["ErrorText"]
  SETTABLEKS R3 R2 K15 ["ErrorColor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K27 ["LinkText"]
  SETTABLEKS R3 R2 K16 ["LinkColor"]
  GETIMPORT R3 K30 [Color3.fromRGB]
  LOADN R4 64
  LOADN R5 166
  LOADN R6 81
  CALL R3 3 1
  SETTABLEKS R3 R2 K17 ["Green"]
  GETIMPORT R3 K30 [Color3.fromRGB]
  LOADN R4 255
  LOADN R5 255
  LOADN R6 255
  CALL R3 3 1
  SETTABLEKS R3 R2 K18 ["White"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K31 ["MainTextDisabled"]
  SETTABLEKS R3 R2 K19 ["DisabledColor"]
  DUPTABLE R3 K60 [{"ROW_HEIGHT", "MAINVIEW_PADDING_TOP", "MAINVIEW_PADDING_LEFT", "MAINSWITCH_LABEL_SIZE", "TEXT_INDENT_PADDING", "HORIZONTAL_LISTLAYOUT_PADDING", "DROPDOWN_BUTTON_SIZE", "DROPDOWN_ARROW_IMAGE", "DROPDOWN_ARROW_POSITION", "DROPDOWN_ARROW_SIZE", "SELECTOR_SIZE", "DROPDOWN_MAX_HEIGHT", "SCROLLBAR_THICKNESS", "LANGUAGE_SECTION_SIZE", "LANGUAGE_INSTRUCTION_SIZE", "LANGUAGE_INSTRUCTION_TEXT_SIZE", "LOCALEID_TEXTBOX_SIZE", "PSEUDOLOCALIZATION_SECTION_SIZE", "TOGGLE_ITEM_FRAME_SIZE", "TOGGLE_BUTTON_HEIGHT", "TOGGLE_BUTTON_WIDTH", "TOGGLE_BUTTON_OFFSET", "COLLAPSE_ARROW_OFFSET", "LISTITEM_INDENT_LEFT", "LISTITEM_CHECKBOX_HEIGHT", "CHECKBOX_FRAME_SIZE", "CHECKBOX_HEIGHT", "CHECKBOX_TEXT_SIZE"}]
  LOADN R4 25
  SETTABLEKS R4 R3 K32 ["ROW_HEIGHT"]
  GETIMPORT R4 K63 [UDim.new]
  LOADN R5 0
  LOADN R6 15
  CALL R4 2 1
  SETTABLEKS R4 R3 K33 ["MAINVIEW_PADDING_TOP"]
  GETIMPORT R4 K63 [UDim.new]
  LOADN R5 0
  LOADN R6 10
  CALL R4 2 1
  SETTABLEKS R4 R3 K34 ["MAINVIEW_PADDING_LEFT"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 150
  LOADN R7 0
  LOADN R8 25
  CALL R4 4 1
  SETTABLEKS R4 R3 K35 ["MAINSWITCH_LABEL_SIZE"]
  GETIMPORT R4 K63 [UDim.new]
  LOADN R5 0
  LOADN R6 4
  CALL R4 2 1
  SETTABLEKS R4 R3 K36 ["TEXT_INDENT_PADDING"]
  GETIMPORT R4 K63 [UDim.new]
  LOADN R5 0
  LOADN R6 5
  CALL R4 2 1
  SETTABLEKS R4 R3 K37 ["HORIZONTAL_LISTLAYOUT_PADDING"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 170
  LOADN R7 0
  LOADN R8 25
  CALL R4 4 1
  SETTABLEKS R4 R3 K38 ["DROPDOWN_BUTTON_SIZE"]
  LOADK R4 K66 ["rbxasset://textures/menuDownArrow.png"]
  SETTABLEKS R4 R3 K39 ["DROPDOWN_ARROW_IMAGE"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 1
  LOADN R6 241
  LOADK R7 K67 [0.5]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K40 ["DROPDOWN_ARROW_POSITION"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 5
  LOADN R7 0
  LOADN R8 3
  CALL R4 4 1
  SETTABLEKS R4 R3 K41 ["DROPDOWN_ARROW_SIZE"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 44
  LOADN R7 0
  GETUPVAL R9 2
  JUMPIFNOT R9 [+2]
  LOADN R8 32
  JUMP [+1]
  LOADN R8 30
  CALL R4 4 1
  SETTABLEKS R4 R3 K42 ["SELECTOR_SIZE"]
  LOADN R4 200
  SETTABLEKS R4 R3 K43 ["DROPDOWN_MAX_HEIGHT"]
  LOADN R4 10
  SETTABLEKS R4 R3 K44 ["SCROLLBAR_THICKNESS"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 44
  LOADN R7 0
  LOADN R8 50
  CALL R4 4 1
  SETTABLEKS R4 R3 K45 ["LANGUAGE_SECTION_SIZE"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 44
  LOADN R7 0
  LOADN R8 20
  CALL R4 4 1
  SETTABLEKS R4 R3 K46 ["LANGUAGE_INSTRUCTION_SIZE"]
  LOADN R4 14
  SETTABLEKS R4 R3 K47 ["LANGUAGE_INSTRUCTION_TEXT_SIZE"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 75
  LOADN R7 0
  LOADN R8 25
  CALL R4 4 1
  SETTABLEKS R4 R3 K48 ["LOCALEID_TEXTBOX_SIZE"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 44
  LOADN R7 0
  LOADN R8 25
  CALL R4 4 1
  SETTABLEKS R4 R3 K49 ["PSEUDOLOCALIZATION_SECTION_SIZE"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 0
  LOADN R6 44
  LOADN R7 0
  LOADN R8 25
  CALL R4 4 1
  SETTABLEKS R4 R3 K50 ["TOGGLE_ITEM_FRAME_SIZE"]
  LOADN R4 15
  SETTABLEKS R4 R3 K51 ["TOGGLE_BUTTON_HEIGHT"]
  LOADN R4 25
  SETTABLEKS R4 R3 K52 ["TOGGLE_BUTTON_WIDTH"]
  LOADN R4 255
  SETTABLEKS R4 R3 K53 ["TOGGLE_BUTTON_OFFSET"]
  LOADN R4 9
  SETTABLEKS R4 R3 K54 ["COLLAPSE_ARROW_OFFSET"]
  GETIMPORT R4 K63 [UDim.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K55 ["LISTITEM_INDENT_LEFT"]
  LOADN R4 18
  SETTABLEKS R4 R3 K56 ["LISTITEM_CHECKBOX_HEIGHT"]
  GETIMPORT R4 K65 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 20
  CALL R4 4 1
  SETTABLEKS R4 R3 K57 ["CHECKBOX_FRAME_SIZE"]
  LOADN R4 18
  SETTABLEKS R4 R3 K58 ["CHECKBOX_HEIGHT"]
  LOADN R4 11
  SETTABLEKS R4 R3 K59 ["CHECKBOX_TEXT_SIZE"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K68 ["Dictionary"]
  GETTABLEKS R4 R5 K69 ["join"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RunningUnderCLI"]
  CALL R0 0 1
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 2
  CALL R4 0 -1
  NAMECALL R2 R1 K3 ["extend"]
  CALL R2 -1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnablePseudolocalizationInPlayerEmulator"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K12 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R7 R4 K15 ["Style"]
  GETTABLEKS R6 R7 K16 ["Themes"]
  GETTABLEKS R5 R6 K17 ["StudioTheme"]
  GETTABLEKS R7 R4 K15 ["Style"]
  GETTABLEKS R6 R7 K18 ["StyleKey"]
  GETTABLEKS R8 R4 K10 ["Util"]
  GETTABLEKS R7 R8 K19 ["Spritesheet"]
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R3
  DUPCLOSURE R9 K21 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  RETURN R9 1
