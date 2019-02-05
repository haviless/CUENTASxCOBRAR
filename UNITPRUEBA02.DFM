object FPrueba02: TFPrueba02
  Left = 161
  Top = 252
  Width = 696
  Height = 480
  Caption = 'FPrueba02'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 8
    Width = 521
    Height = 417
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry4
    TabOrder = 0
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
  object BitBtn1: TBitBtn
    Left = 592
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ejecutar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object PB1: TProgressBar
    Left = 8
    Top = 424
    Width = 521
    Height = 13
    Min = 0
    Max = 100
    TabOrder = 2
  end
end
