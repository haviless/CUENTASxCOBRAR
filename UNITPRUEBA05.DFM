object FPrueba05: TFPrueba05
  Left = 69
  Top = 123
  Width = 696
  Height = 480
  Caption = 'FPrueba05'
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
    Top = 60
    Width = 328
    Height = 217
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsMovCxC
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
  object wwDBGrid2: TwwDBGrid
    Left = 353
    Top = 56
    Width = 325
    Height = 217
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry
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
  object BitBtn1: TBitBtn
    Left = 8
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 344
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BitBtn3'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object PB1: TProgressBar
    Left = 8
    Top = 280
    Width = 665
    Height = 13
    Min = 0
    Max = 100
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 168
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 248
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object ppDBPipeline1: TppDBPipeline
    UserName = 'DBPipeline1'
    Left = 56
    Top = 320
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta: 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    Template.FileName = 'c:\nosierve.rtm'
    UserName = 'Report'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    Left = 120
    Top = 320
    Version = '4.22 Pro'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'fasdfffffffffffffffff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 2381
        mmWidth = 19844
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
end
