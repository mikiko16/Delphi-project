object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 432
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = OnFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Teams: TLabel
    Left = 40
    Top = 47
    Width = 31
    Height = 13
    Caption = 'Teams'
  end
  object Players: TLabel
    Left = 40
    Top = 193
    Width = 35
    Height = 13
    Caption = 'Players'
  end
  object Memo1: TMemo
    Left = 0
    Top = 344
    Width = 641
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button2: TButton
    Left = 40
    Top = 66
    Width = 89
    Height = 25
    Caption = 'New Team'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 135
    Top = 66
    Width = 89
    Height = 25
    Caption = 'Edit Team'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 230
    Top = 66
    Width = 89
    Height = 25
    Caption = 'Delete Team'
    TabOrder = 3
    OnClick = Button4Click
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 97
    Width = 201
    Height = 90
    ScrollBars = ssVertical
    TabOrder = 4
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object StringGrid2: TStringGrid
    Left = 40
    Top = 243
    Width = 279
    Height = 86
    ScrollBars = ssVertical
    TabOrder = 5
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object Button5: TButton
    Left = 40
    Top = 212
    Width = 89
    Height = 25
    Caption = 'Add Player'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button1: TButton
    Left = 344
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 7
    OnClick = Button1Click
  end
end
