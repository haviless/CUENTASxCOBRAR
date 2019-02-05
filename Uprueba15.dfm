object FPrueba15: TFPrueba15
  Left = 222
  Top = 107
  Width = 696
  Height = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object g1: TGauge
    Left = 24
    Top = 8
    Width = 521
    Height = 17
    Progress = 0
  end
  object bbtnLeer: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Leer'
    TabOrder = 0
    OnClick = bbtnLeerClick
  end
  object bbtnEscribe: TButton
    Left = 24
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = bbtnEscribeClick
  end
end
