; ************************************************************************************************
; AUTHOR    : microdevWeb
; PROJECT   : TUTO DESIGN
; ************************************************************************************************

XIncludeFile "Include/ShapeFactory.pbi"
#MAIN_WINDOW = 0
#CANVAS = 0

Procedure evCloseWindow()
  End
EndProcedure

Procedure OpenMainWindow()
  OpenWindow(#MAIN_WINDOW,0,0,800,600,"TUTO DESIGN",#PB_Window_ScreenCentered|#PB_Window_SystemMenu)
  CanvasGadget(#CANVAS,0,30,800,570)
  BindEvent(#PB_Event_CloseWindow,@evCloseWindow(),#MAIN_WINDOW)
EndProcedure

OpenMainWindow()

Repeat 
  WaitWindowEvent()  
ForEver
; IDE Options = PureBasic 5.73 LTS (Windows - x64)
; CursorPosition = 18
; Folding = -
; EnableXP