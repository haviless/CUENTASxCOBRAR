object Form1: TForm1
  Left = 184
  Top = 132
  Width = 696
  Height = 480
  Caption = 'Form11'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Ejecuta'
    TabOrder = 0
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 681
    Height = 313
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsMovCxC
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icBlack
  end
  object pb1: TProgressBar
    Left = 0
    Top = 320
    Width = 681
    Height = 13
    Min = 0
    Max = 100
    TabOrder = 2
  end
end
