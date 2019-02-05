object FRPlanillaBancos: TFRPlanillaBancos
  Left = 307
  Top = 196
  BorderStyle = bsDialog
  Caption = 'Planilla de Bancos'
  ClientHeight = 145
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 283
    Height = 145
    Align = alClient
    Color = 10207162
    TabOrder = 0
    object pnlDatos1: TPanel
      Left = 6
      Top = 5
      Width = 272
      Height = 92
      Color = 10207162
      TabOrder = 0
      object lblCia: TLabel
        Left = 8
        Top = 17
        Width = 49
        Height = 13
        Caption = 'Compa'#241#237'a'
      end
      object Label1: TLabel
        Left = 8
        Top = 44
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label2: TLabel
        Left = 8
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object dblcCia: TwwDBLookupCombo
        Left = 75
        Top = 11
        Width = 42
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIAID'#9'2'#9'Cia'#9'F'
          'CIAABR'#9'15'#9'Raz'#243'n Social'#9'F')
        LookupTable = DMCXC.cdsCia
        LookupField = 'CIAID'
        Options = [loColLines, loRowLines, loTitles]
        Style = csDropDownList
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
        Left = 121
        Top = 11
        Width = 137
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'edtCia'
      end
      object dtpFecha1: TwwDBDateTimePicker
        Left = 75
        Top = 36
        Width = 121
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
      object dtpFecha2: TwwDBDateTimePicker
        Left = 75
        Top = 61
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
      end
    end
    object bbtnBorra: TBitBtn
      Left = 210
      Top = 107
      Width = 30
      Height = 25
      Hint = 'Borrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbtnBorraClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object bbtnOk: TBitBtn
      Left = 245
      Top = 107
      Width = 30
      Height = 25
      Hint = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnOkClick
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
  end
  object ppdbPlanBco: TppDBPipeline
    UserName = 'dbPlanBco'
    Left = 27
    Top = 92
  end
  object pprPlanBco: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SolFormatos\Cxc\Incoresa\PlanillaBancos.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 92
    Top = 92
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'COMPA'#209'IA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 0
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'FECHA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 5027
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'HORA   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 8996
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 185473
        mmTop = 4763
        mmWidth = 21167
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 185473
        mmTop = 8731
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'REPORTE DE CONSISTENCIA DE COBRANZAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55033
        mmTop = 2117
        mmWidth = 76200
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'DE PLANILLA DE BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 69321
        mmTop = 6085
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'DESDE EL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 65881
        mmTop = 10054
        mmWidth = 16933
        BandType = 0
      end
      object lblTituloPeriodo: TppLabel
        UserName = 'lblTituloPeriodo'
        Caption = 'lblTituloPeriodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 83344
        mmTop = 10054
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 265
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 265
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 15346
        mmWidth = 194734
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 21431
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'CANCELA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 25400
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'NRO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 20638
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 24606
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 39423
        mmTop = 20638
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 39423
        mmTop = 24606
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 23283
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'N'#176' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98690
        mmTop = 21167
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'USUARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 21431
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'PLAN.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 98690
        mmTop = 25135
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'IMP.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 20373
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'COB.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 24342
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = '(ME)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 28311
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label201'
        Caption = 'IMP.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148696
        mmTop = 20373
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'COB.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148696
        mmTop = 24342
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = '(MN)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148696
        mmTop = 28310
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = '(MN)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 26194
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'PROV.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 20638
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'DIFER.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 188119
        mmTop = 20373
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 192088
        mmTop = 24342
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'CAMBIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 188119
        mmTop = 28310
        mmWidth = 12700
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'PLBCFECHA'
        DataPipeline = ppdbPlanBco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 5556
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'LETRA'
        DataPipeline = ppdbPlanBco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLIEID'
        DataPipeline = ppdbPlanBco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CLIEDES'
        DataPipeline = ppdbPlanBco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 53711
        mmTop = 0
        mmWidth = 44450
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'PLBCID'
        DataPipeline = ppdbPlanBco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'USUARIO'
        DataPipeline = ppdbPlanBco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'IMPME'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 123030
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'IMPMN'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 141024
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'MTOORIMN'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 161661
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DIFCAMBIO'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 182563
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'TOTAL DE LETRAS DEL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 0
        mmWidth = 18521
        BandType = 8
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'PLBLFECHA'
        DataPipeline = ppdbPlanBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 37571
        mmTop = 0
        mmWidth = 20373
        BandType = 8
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'IMPNE'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 0
        mmWidth = 17198
        BandType = 8
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'IMPMN'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 141552
        mmTop = 0
        mmWidth = 20373
        BandType = 8
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'MTOORIMN'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 162189
        mmTop = 0
        mmWidth = 20373
        BandType = 8
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'DIFCAMBIO'
        DataPipeline = ppdbPlanBco
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbPlanBco'
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 0
        mmWidth = 20373
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppdbtFecha'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          UserName = 'Label9'
          AutoSize = False
          Caption = 'FECHA DE CANCELACION :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 0
          mmWidth = 44715
          BandType = 3
          GroupNo = 0
        end
        object ppdbtFecha: TppDBText
          UserName = 'dbtFecha'
          AutoSize = True
          DataField = 'PLBCFECHA'
          DataPipeline = ppdbPlanBco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 48154
          mmTop = 0
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel32: TppLabel
          UserName = 'Label32'
          AutoSize = False
          Caption = 'TOTAL DE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 18521
          mmTop = 0
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object lblDescripcionBanco1: TppLabel
          UserName = 'lblDescripcionBanco1'
          Caption = 'lblDescripcionBanco1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 37835
          mmTop = 0
          mmWidth = 36248
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'IMPNE'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 123561
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'IMPMN'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 141552
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'MTOORIMN'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 162189
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'DIFCAMBIO'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 183092
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppdbtBancoId'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppdbtBancoId: TppDBText
          UserName = 'dbtBancoId'
          DataField = 'BANCOID'
          DataPipeline = ppdbPlanBco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          Visible = False
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 60854
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object lblDescripcionBanco: TppLabel
          UserName = 'lblDescripcionBanco'
          Caption = 'lblDescripcionBanco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3175
          mmTop = 0
          mmWidth = 31221
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel31: TppLabel
          UserName = 'Label23'
          AutoSize = False
          Caption = 'TOTAL DE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 19050
          mmTop = 0
          mmWidth = 18521
          BandType = 5
          GroupNo = 1
        end
        object lblDescripcionSituacion1: TppLabel
          UserName = 'Label31'
          Caption = 'lblDescripcionSituacion1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 38100
          mmTop = 0
          mmWidth = 41540
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'IMPNE'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 123030
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'IMPMN'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 141024
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'MTOORIMN'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 161661
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'DIFCAMBIO'
          DataPipeline = ppdbPlanBco
          DisplayFormat = '###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 182827
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppdbtSituacion'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand3BeforePrint
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppdbtSituacion: TppDBText
          UserName = 'dbtSituacion'
          DataField = 'SITUACION'
          DataPipeline = ppdbPlanBco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          Visible = False
          DataPipelineName = 'ppdbPlanBco'
          mmHeight = 4233
          mmLeft = 50271
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 2
        end
        object lblDescripcionSituacion: TppLabel
          UserName = 'lblDescripcionSituacion'
          Caption = 'lblDescripcionSituacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 5292
          mmTop = 0
          mmWidth = 35719
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
