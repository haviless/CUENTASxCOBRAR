object FDocVence: TFDocVence
  Left = 405
  Top = 224
  BorderStyle = bsDialog
  Caption = 'Documentos Vencidos'
  ClientHeight = 199
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDetalle: TPanel
    Left = 0
    Top = 0
    Width = 234
    Height = 199
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 49
      Width = 36
      Height = 13
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 33
      Top = 89
      Width = 58
      Height = 13
      Caption = 'T.Moneda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblCia: TLabel
      Left = 33
      Top = 4
      Width = 58
      Height = 13
      Caption = 'Compa'#241#237'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bbtnOK: TBitBtn
      Left = 104
      Top = 170
      Width = 33
      Height = 25
      TabOrder = 5
      OnClick = bbtnOKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object dbdtpFecha: TwwDBDateTimePicker
      Left = 33
      Top = 64
      Width = 105
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object bbtnCancela: TBitBtn
      Left = 144
      Top = 170
      Width = 33
      Height = 25
      Cancel = True
      TabOrder = 6
      OnClick = bbtnCancelaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object dblcTMon: TwwDBLookupCombo
      Left = 33
      Top = 106
      Width = 43
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'3'#9'Moneda'#9'F'
        'TMONDES'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsTMon
      LookupField = 'TMONID'
      Options = [loColLines, loRowLines]
      MaxLength = 2
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTMonExit
    end
    object edtTMon: TEdit
      Left = 79
      Top = 106
      Width = 134
      Height = 22
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dblcCia: TwwDBLookupCombo
      Left = 33
      Top = 23
      Width = 42
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'Cia'#9'F'
        'CIAABR'#9'15'#9'Raz'#243'n Social'#9'F')
      LookupTable = DMCXC.cdsCia
      LookupField = 'CIAID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcCiaExit
    end
    object edtCia: TEdit
      Left = 76
      Top = 23
      Width = 137
      Height = 22
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ppReporte: TppReport
    AutoStop = False
    DataPipeline = ppdbReporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter Fanfold 8.5 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CarteraVencida.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 16
    Top = 165
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbReporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'LIMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 83609
        mmTop = 28840
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'PROVINCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 28840
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 98690
        mmTop = 33602
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 33602
        mmWidth = 2117
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'INFORME GERENCIAL DE CARTERA VENCIDA DOLARES AMERICANOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 45773
        mmTop = 7938
        mmWidth = 116417
        BandType = 0
      end
      object pplblCia: TppLabel
        UserName = 'lblCia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 1588
        mmWidth = 46567
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 2117
        mmWidth = 21167
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 6350
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 69850
        mmTop = 33602
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 33602
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 28840
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 192352
        mmTop = 33602
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 33602
        mmWidth = 14817
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 38365
        mmWidth = 197644
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = ' AL: 30/04/2002'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67998
        mmTop = 18785
        mmWidth = 31750
        BandType = 0
      end
      object pplblObservacion: TppLabel
        UserName = 'lblObservacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61119
        mmTop = 13494
        mmWidth = 4233
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'MTOLIM'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'MTOPRO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 124354
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'PORMTOLIM'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 84931
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'PORMTOPRO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'TOTMTO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'TOTPORMTO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'CLIEABR'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 3969
        mmLeft = 10848
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'MTOLIM'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 62971
        mmTop = 2381
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'PORMTOLIM'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 72231
        mmTop = 2381
        mmWidth = 31750
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'MTOPRO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 2381
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'PORMTOPRO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 2381
        mmWidth = 31750
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'TOTAL VENCIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 2381
        mmWidth = 27517
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'TOTMTO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 2381
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'TOTPORMTO'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 2381
        mmWidth = 31750
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 197644
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DOCDES'
      DataPipeline = ppdbReporte
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbReporte'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          AutoSize = True
          DataField = 'DOCDES'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 3969
          mmLeft = 4763
          mmTop = 1323
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 1852
          mmTop = 529
          mmWidth = 197644
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          AutoSize = True
          BlankWhenZero = True
          DataField = 'MTOLIM'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4233
          mmLeft = 62971
          mmTop = 529
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          AutoSize = True
          BlankWhenZero = True
          DataField = 'PORMTOLIM'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4233
          mmLeft = 72231
          mmTop = 529
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          AutoSize = True
          BlankWhenZero = True
          DataField = 'MTOPRO'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4233
          mmLeft = 111654
          mmTop = 529
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          AutoSize = True
          BlankWhenZero = True
          DataField = 'PORMTOPRO'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4233
          mmLeft = 118534
          mmTop = 529
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 3704
          mmTop = 529
          mmWidth = 10583
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          AutoSize = True
          BlankWhenZero = True
          DataField = 'TOTMTO'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4233
          mmLeft = 157163
          mmTop = 529
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          AutoSize = True
          BlankWhenZero = True
          DataField = 'TOTPORMTO'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4233
          mmLeft = 164836
          mmTop = 529
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          AutoSize = True
          DataField = 'DOCDES'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Sans Serif 17cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 3969
          mmLeft = 15875
          mmTop = 529
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CLIEABR'
      DataPipeline = ppdbReporte
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbReporte'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReporte
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 192
    Top = 169
  end
  object ppdbReporte: TppDBPipeline
    UserName = 'dbReporte'
    Left = 56
    Top = 165
  end
end
