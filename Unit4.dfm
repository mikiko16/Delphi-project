object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 242
  ClientWidth = 271
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
    Left = 48
    Top = 48
    Width = 55
    Height = 13
    Caption = 'Team name'
  end
  object Label2: TLabel
    Left = 48
    Top = 88
    Width = 39
    Height = 13
    Caption = 'Website'
  end
  object Label3: TLabel
    Left = 48
    Top = 128
    Width = 59
    Height = 13
    Caption = 'Founded On'
  end
  object Edit1: TEdit
    Left = 128
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 128
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 128
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 96
    Top = 176
    Width = 81
    Height = 25
    Caption = 'Save changes'
    TabOrder = 3
    OnClick = Button1Click
  end
end
