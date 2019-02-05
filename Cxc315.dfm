object FMovCtaCte: TFMovCtaCte
  Left = 337
  Top = 276
  BorderStyle = bsDialog
  Caption = 'Movimientos de Cuenta Corriente'
  ClientHeight = 254
  ClientWidth = 300
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 2
    Width = 49
    Height = 13
    Caption = 'Compa'#241#237'a'
  end
  object Label1: TLabel
    Left = 8
    Top = 50
    Width = 80
    Height = 13
    Caption = 'Sector Comercial'
  end
  object dblcCia: TwwDBLookupCombo
    Left = 8
    Top = 20
    Width = 41
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CIAID'#9'2'#9'C'#243'digo'#9'F'
      'CIADES'#9'40'#9'Descripci'#243'n'#9'F')
    LookupTable = DMCXC.cdsCia
    LookupField = 'CIAID'
    Options = [loTitles]
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcCiaExit
    OnNotInList = NotInList
  end
  object edtCia: TEdit
    Left = 50
    Top = 20
    Width = 231
    Height = 21
    Color = clBtnFace
    Enabled = False
    TabOrder = 1
  end
  object dblcZona: TwwDBLookupCombo
    Left = 7
    Top = 64
    Width = 49
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'TVTAID'#9'2'#9'Zona'#9'F'
      'TVTADES'#9'20'#9'Descripci'#243'n'#9'F')
    LookupTable = DMCXC.cdsZona
    LookupField = 'TVTAID'
    Options = [loColLines, loRowLines, loTitles]
    MaxLength = 2
    ParentFont = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnExit = dblcZonaExit
    OnNotInList = NotInList
  end
  object edtZona: TEdit
    Left = 60
    Top = 64
    Width = 221
    Height = 21
    AutoSelect = False
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object bbtnOK: TBitBtn
    Left = 216
    Top = 210
    Width = 33
    Height = 25
    TabOrder = 8
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
  object bbtnCancela: TBitBtn
    Left = 256
    Top = 210
    Width = 33
    Height = 25
    Cancel = True
    TabOrder = 9
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
  object rgZona: TRadioGroup
    Left = 2
    Top = 87
    Width = 277
    Height = 44
    Caption = 'Zona'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Una'
      'Todas')
    ParentFont = False
    TabOrder = 4
    OnClick = rgZonaClick
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 132
    Width = 275
    Height = 61
    Caption = 'Rango de Fechas'
    TabOrder = 7
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 16
      Height = 13
      Caption = 'Del'
    end
    object Label4: TLabel
      Left = 24
      Top = 40
      Width = 9
      Height = 13
      Caption = 'Al'
    end
    object dbdtpInicio: TwwDBDateTimePicker
      Left = 49
      Top = 13
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Date = 32874.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbdtpFin: TwwDBDateTimePicker
      Left = 49
      Top = 36
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Date = 40179.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
  end
  object dblcZona1: TwwDBLookupComboDlg
    Left = 72
    Top = 101
    Width = 74
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    Selected.Strings = (
      'ZVTAID'#9'10'#9'Zona'#9'F'
      'ZVTADES'#9'30'#9'Descripci'#243'n'#9'F')
    LookupTable = DMCXC.cdsZona1
    LookupField = 'ZVTAID'
    ParentFont = False
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnDropDown = dblcZona1DropDown
    OnExit = dblcZona1Exit
  end
  object edtZona1: TEdit
    Left = 152
    Top = 102
    Width = 121
    Height = 21
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppdbReporte
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
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCteZona.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 8
    Top = 200
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbReporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'LISTADO DE MOVIMIENTOS EN CUENTAS CORRIENTES AL '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 40217
        mmTop = 0
        mmWidth = 127000
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 133350
        mmTop = 0
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 4763
        mmTop = 13229
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Pos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 5292
        mmTop = 16933
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11906
        mmTop = 16933
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 16933
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Emisi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 46567
        mmTop = 16933
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Vcmto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 69056
        mmTop = 16933
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 92869
        mmTop = 16933
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 111390
        mmTop = 16933
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 126471
        mmTop = 16933
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Ubic.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 141288
        mmTop = 16933
        mmWidth = 13229
        BandType = 0
      end
      object pplblCia: TppLabel
        UserName = 'lblCia'
        Caption = 'DISTRIBUIDORA INCORESA S.A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 4498
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Cuentas x Cobrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 8467
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 162454
        mmTop = 0
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 163513
        mmTop = 3440
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 168540
        mmTop = 0
        mmWidth = 26458
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 170127
        mmTop = 3440
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 
          '----------------------------------------------------------------' +
          '-----------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 5292
        mmTop = 19315
        mmWidth = 277813
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'COB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 193940
        mmTop = 16669
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'N. BCO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 171186
        mmTop = 16933
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Situac.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 155046
        mmTop = 16933
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'PR.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 187590
        mmTop = 16669
        mmWidth = 7938
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ABR'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'CCSERIE'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 17198
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'CCNODOC'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 23548
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'CCFEMIS'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 42069
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 64823
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'CCPAGEXT'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 98161
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'CCSALEXT'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 114300
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'UBICAABR'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 139700
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        DataField = 'CCNLETBCO'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 166159
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'CCMTOEXT'
        DataPipeline = ppdbReporte
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 82550
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        ResetGroup = ppGroup2
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CCFLAGPROT'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 185473
        mmTop = 0
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'SITUAABR'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 152665
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CODES'
        DataPipeline = ppdbReporte
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbReporte'
        mmHeight = 4763
        mmLeft = 193675
        mmTop = 0
        mmWidth = 8731
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ZVTAID'
      DataPipeline = ppdbReporte
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbReporte'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Zona: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 5027
          mmTop = 265
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'ZVTAID'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 16404
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'ZVTADES'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 34396
          mmTop = 265
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CLIEID'
      DataPipeline = ppdbReporte
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbReporte'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 
            '----------------------------------------------------------------' +
            '-----------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 3969
          mmTop = 7673
          mmWidth = 277813
          BandType = 3
          GroupNo = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'CLIEID'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 7938
          mmTop = 2117
          mmWidth = 23548
          BandType = 3
          GroupNo = 1
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'CLIEDES'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 31750
          mmTop = 2117
          mmWidth = 78846
          BandType = 3
          GroupNo = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'CLIEDIRLEG'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 31485
          mmTop = 5556
          mmWidth = 79111
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label202'
          Caption = 'LC:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 111125
          mmTop = 2117
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object ppLabel24: TppLabel
          UserName = 'Label203'
          Caption = ' T:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 111125
          mmTop = 5556
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          AutoSize = True
          DataField = 'CLIECREMAX'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 117211
          mmTop = 1852
          mmWidth = 26458
          BandType = 3
          GroupNo = 1
        end
        object ppDBText21: TppDBText
          UserName = 'DBText201'
          AutoSize = True
          DataField = 'CLIETELF'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 117211
          mmTop = 5556
          mmWidth = 21167
          BandType = 3
          GroupNo = 1
        end
        object ppDBText22: TppDBText
          UserName = 'DBText22'
          AutoSize = True
          DataField = 'CONDPDES'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 147373
          mmTop = 5556
          mmWidth = 21167
          BandType = 3
          GroupNo = 1
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          AutoSize = True
          DataField = 'SITCLIEDES'
          DataPipeline = ppdbReporte
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 149225
          mmTop = 1852
          mmWidth = 26458
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 12435
        mmPrintPosition = 0
        object ppLabel21: TppLabel
          UserName = 'Label201'
          Caption = 'SALDO TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 3969
          mmTop = 1852
          mmWidth = 29104
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          AutoSize = True
          DataField = 'CCSALEXT'
          DataPipeline = ppdbReporte
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbReporte'
          mmHeight = 4763
          mmLeft = 114829
          mmTop = 1852
          mmWidth = 37042
          BandType = 5
          GroupNo = 1
        end
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentPrinterSetup = False
          TraverseAllData = False
          DataPipelineName = 'ppdbSubReporte'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 5292
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppdbSubReporte
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
            PrinterSetup.PaperSize = 1
            Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCteZona.rtm'
            Version = '7.02'
            mmColumnWidth = 0
            DataPipelineName = 'ppdbSubReporte'
            object ppTitleBand1: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 265
              mmPrintPosition = 0
            end
            object ppDetailBand2: TppDetailBand
              mmBottomOffset = 0
              mmHeight = 3704
              mmPrintPosition = 0
              object ppDBText16: TppDBText
                UserName = 'DBText16'
                DataField = 'ABR'
                DataPipeline = ppdbSubReporte
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 12cpi'
                Font.Pitch = fpFixed
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppdbSubReporte'
                mmHeight = 3704
                mmLeft = 20373
                mmTop = 0
                mmWidth = 17198
                BandType = 4
              end
              object ppDBText18: TppDBText
                UserName = 'DBText18'
                AutoSize = True
                DataField = 'CCSALEXT'
                DataPipeline = ppdbSubReporte
                DisplayFormat = '###,###,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 12cpi'
                Font.Pitch = fpFixed
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppdbSubReporte'
                mmHeight = 3704
                mmLeft = 137054
                mmTop = 0
                mmWidth = 14817
                BandType = 4
              end
              object ppLabel20: TppLabel
                UserName = 'Label20'
                AutoSize = False
                Caption = 'TOTAL DE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 12cpi'
                Font.Pitch = fpFixed
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 3969
                mmTop = 0
                mmWidth = 14817
                BandType = 4
              end
            end
            object ppSummaryBand1: TppSummaryBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'DOCID'
      DataPipeline = ppdbReporte
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbReporte'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        PrintHeight = phDynamic
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
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 48
    Top = 200
  end
  object ppdbReporte: TppDBPipeline
    UserName = 'dbReporte'
    Left = 80
    Top = 200
  end
  object ppdbSubReporte: TppDBPipeline
    UserName = 'dbplSubReporte'
    Left = 112
    Top = 200
  end
end
