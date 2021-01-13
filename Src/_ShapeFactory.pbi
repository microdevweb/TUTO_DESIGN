; ************************************************************************************************
; AUTHOR    : microdevWeb
; PROJECT   : TUTO DESIGN
; MODULE    : ShapeFactory
; ************************************************************************************************
Module ShapeFactory
  EnableExplicit
  Prototype p_shape_draw(id)
  Prototype p_shape_move(id,x,y)
  Prototype p_shape_resize(id,w,h)
  ;{ CLASS DESCRIPTION
  ; class Handle
  Structure _handle
    ;{ MEMBERS
    poX.i
    posY.i
    size.i
    type.i
    *myShape
    ;}
  EndStructure
  ; handle enumerations
  Enumeration HANDLE
    #HANDLE_NW
    #HANDLE_N
    #HANDLE_NE
    #HANDLE_W
    #HANDLE_E
    #HANDLE_SW
    #HANDLE_S
    #HANDLE_SE
  EndEnumeration
  ; abstract class
  Structure _shape
    ;{ MEMBERS
    posX.i
    posY.i
    color.i
    selected.i
    List myHandles._handle()
    ;}
    ;{ ABSTRACT METHODS
    draw.p_shape_draw
    move.p_shape_move
    resize.p_shape_resize
    ;}
  EndStructure
  ; class BoxShape
  Structure _boxShape Extends _shape
    width.i
    height.i
  EndStructure
  ; class CircleShape
  Structure _circleShape Extends _shape
    radius.i
  EndStructure
  ; class Sheet
  Structure _sheet
    Map myShape._shape()
  EndStructure
  ;}
  ;{ GLOBALS VARIABLES
  Global NewMap mySheets._sheet()
  ;}
  ;{ CLASS SOURCE CODE
  XIncludeFile "Classes/Sheet.pbi"
  XIncludeFile "Classes/BoxShape.pbi"
  XIncludeFile "Classes/CircleShape.pbi"
  XIncludeFile "Classes/Handle.pbi"
  ;}
EndModule
; IDE Options = PureBasic 5.73 LTS (Windows - x64)
; CursorPosition = 62
; FirstLine = 35
; Folding = --
; EnableXP