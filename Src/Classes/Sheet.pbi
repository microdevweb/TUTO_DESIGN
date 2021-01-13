; ************************************************************************************************
; AUTHOR    : microdevWeb
; PROJECT   : TUTO DESIGN
; MODULE    : ShapeFactory
; CLASS     : Sheet
; ************************************************************************************************
Procedure newSheet(id,canvasId)
  Static lastAny = 10000
  Protected currentId = id
  ; look if id already exist
  If id <> #PB_Any And FindMapElement(mySheets(),Str(id))
    MessageRequester("New sheet Error","This id "+Str(id)+" already exists",#PB_MessageRequester_Error)
    ProcedureReturn   0
  EndIf
  If id = #PB_Any
    currentId = lastAny
    lastAny +1
  EndIf
  AddMapElement(mySheets(),Str(currentId))
  ProcedureReturn currentId
EndProcedure
; IDE Options = PureBasic 5.73 LTS (Windows - x64)
; CursorPosition = 19
; Folding = -
; EnableXP