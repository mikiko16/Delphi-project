object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 210
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 33
    Width = 55
    Height = 13
    Caption = 'Team name'
  end
  object Label2: TLabel
    Left = 56
    Top = 70
    Width = 39
    Height = 13
    Caption = 'Website'
  end
  object Label3: TLabel
    Left = 56
    Top = 111
    Width = 57
    Height = 13
    Caption = 'Founded on'
  end
  object Button1: TButton
    Left = 96
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Create team'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 30
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 136
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 136
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
