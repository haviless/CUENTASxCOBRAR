object FPrueba03: TFPrueba03
  Left = 161
  Top = 252
  Width = 696
  Height = 480
  Caption = 'FPrueba03'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 528
    Top = 80
    Width = 153
    Height = 65
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 8
    Width = 233
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
    Left = 552
    Top = 16
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
  object memo1: TwwDBRichEdit
    Left = 248
    Top = 8
    Width = 281
    Height = 417
    AutoURLDetect = False
    PrintJobName = 'Delphi 5'
    TabOrder = 3
    EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1
    PrintMargins.Bottom = 1
    PrintMargins.Left = 1
    PrintMargins.Right = 1
    RichEditVersion = 2
    Data = {
      7A0000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E6731303235307B5C666F6E7474626C7B5C66305C666E696C
      204D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C7563
      315C706172645C66305C66733136206D656D6F315C7061720D0A7D0D0A00}
  end
end
