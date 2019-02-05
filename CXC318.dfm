object FToolCanje: TFToolCanje
  Left = 260
  Top = 354
  Width = 696
  Height = 77
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnGLT: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 43
    Align = alClient
    Color = 10207162
    TabOrder = 0
    object lblContador: TLabel
      Left = 192
      Top = 16
      Width = 52
      Height = 24
      Caption = '0 de 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 16
      Width = 129
      Height = 25
      Caption = 'Reprocesa CxC302'
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
  end
end
