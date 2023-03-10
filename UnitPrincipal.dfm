object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pong'
  ClientHeight = 400
  ClientWidth = 400
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 190
    Top = 0
    Width = 10
    Height = 401
    Brush.Color = clMedGray
  end
  object Player: TShape
    Left = 8
    Top = 160
    Width = 15
    Height = 60
    Brush.Color = clDefault
    Shape = stRoundRect
  end
  object Ball: TShape
    Left = 190
    Top = 190
    Width = 10
    Height = 10
    Brush.Color = clWindow
    Shape = stCircle
  end
  object Player2: TShape
    Left = 377
    Top = 160
    Width = 15
    Height = 60
    Brush.Color = clDefault
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 3
    Height = 13
  end
  object PlayerScore: TLabel
    Left = 73
    Top = 24
    Width = 29
    Height = 64
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Player2Score: TLabel
    Left = 289
    Top = 24
    Width = 29
    Height = 64
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 5
    OnTimer = Timer1Timer
    Left = 336
    Top = 328
  end
end
