; ************************************************************************************************
; AUTHOR    : microdevWeb
; PROJECT   : TUTO DESIGN
; ************************************************************************************************
EnableExplicit
UsePNGImageDecoder()
XIncludeFile "Include/ShapeFactory.pbi"
#MAIN_WINDOW = 0
#CANVAS = 0
#TOOLBAR = 1
Enumeration 
  #IMG_BOX 
  #IMG_CIRCLE
EndEnumeration
Enumeration 
  #TOOL_BOX
  #TOOL_CIRCLE
EndEnumeration

CatchImage(#IMG_BOX,?box)
CatchImage(#IMG_CIRCLE,?circle)


Procedure evCloseWindow()
  End
EndProcedure

Procedure OpenMainWindow()
  Protected mySheet
  OpenWindow(#MAIN_WINDOW,0,0,800,600,"TUTO DESIGN",#PB_Window_ScreenCentered|#PB_Window_SystemMenu)
  CreateToolBar(#TOOLBAR,WindowID(#MAIN_WINDOW),#PB_ToolBar_Large)
  ToolBarImageButton(#TOOL_BOX,ImageID(#IMG_BOX))
  ToolBarImageButton(#TOOL_CIRCLE,ImageID(#IMG_CIRCLE))
  CanvasGadget(#CANVAS,0,30,800,570)
  mySheet = ShapeFactory::newSheet(#PB_Any,#CANVAS)
  BindEvent(#PB_Event_CloseWindow,@evCloseWindow(),#MAIN_WINDOW)
EndProcedure

OpenMainWindow()

Repeat 
  WaitWindowEvent()  
ForEver

DataSection
  box:
  IncludeBinary "Images/box.png"
  circle:
  IncludeBinary "Images/circle.png"
EndDataSection
; IDE Options = PureBasic 5.73 LTS (Windows - x64)
; CursorPosition = 20
; FirstLine = 12
; Folding = -
; EnableXP