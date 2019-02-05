object FAjusteRedondeo: TFAjusteRedondeo
  Left = 193
  Top = 135
  Width = 813
  Height = 424
  Caption = 'FAjusteRedondeo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 8
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object lblTotDebe: TLabel
    Left = 80
    Top = 304
    Width = 52
    Height = 13
    Caption = 'lblTotDebe'
  end
  object lblTotHaber: TLabel
    Left = 80
    Top = 320
    Width = 55
    Height = 13
    Caption = 'lblTotHaber'
  end
  object lblDifer: TLabel
    Left = 80
    Top = 336
    Width = 32
    Height = 13
    Caption = 'lblDifer'
  end
  object dbgDet: TwwDBGrid
    Left = 16
    Top = 152
    Width = 609
    Height = 120
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object dbgCab: TwwDBGrid
    Left = 16
    Top = 56
    Width = 609
    Height = 81
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btnGraba: TButton
    Left = 544
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Graba'
    TabOrder = 2
    OnClick = btnGrabaClick
  end
  object btnProcesaRedGral: TBitBtn
    Left = 312
    Top = 16
    Width = 113
    Height = 25
    Caption = 'Procesa 201408'
    TabOrder = 3
    OnClick = btnProcesaRedGralClick
  end
  object memo1: TwwDBRichEdit
    Left = 640
    Top = 9
    Width = 105
    Height = 349
    AutoURLDetect = False
    PrintJobName = 'Delphi 5'
    TabOrder = 4
    WordWrap = False
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'MS Sans Serif'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'MS Sans Serif'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      AC0000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E6731303235307B5C666F6E7474626C7B5C66305C666E696C
      5C66636861727365743020436F6D69632053616E73204D533B7D7D0D0A7B5C63
      6F6C6F7274626C203B5C726564305C677265656E305C626C75653132383B7D0D
      0A5C766965776B696E64345C7563315C706172645C6366315C66305C66733136
      206D656D6F315C7061720D0A7D0D0A00}
  end
  object btnListaDifer: TBitBtn
    Left = 448
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Lista Difer'
    TabOrder = 5
    OnClick = btnListaDiferClick
  end
  object Edit1: TEdit
    Left = 168
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
end
