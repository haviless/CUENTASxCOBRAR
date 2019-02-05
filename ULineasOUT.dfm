object Form1: TForm1
  Left = 276
  Top = 136
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo2: TMemo
    Left = 16
    Top = 32
    Width = 625
    Height = 337
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 384
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 456
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cambiar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object PB: TProgressBar
    Left = 16
    Top = 384
    Width = 633
    Height = 16
    Min = 0
    Max = 100
    TabOrder = 3
  end
  object memo1: TwwDBRichEdit
    Left = 16
    Top = 32
    Width = 617
    Height = 329
    AutoURLDetect = False
    PrintJobName = 'Delphi 5'
    TabOrder = 4
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
      790000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C20
      4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
      5C706172645C66305C66733136206D656D6F315C7061720D0A7D0D0A00}
  end
  object Button3: TButton
    Left = 528
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Remplazar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object o: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Texto|*.txt'
    Left = 464
    Top = 72
  end
end
