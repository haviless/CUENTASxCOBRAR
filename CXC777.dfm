object FToolLetras: TFToolLetras
  Left = 177
  Top = 192
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Tools de Letras'
  ClientHeight = 65
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sbtn2: TSpeedButton
    Left = 36
    Top = 2
    Width = 32
    Height = 32
    Hint = 'Editar Orden de Envio'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = sbtn2Click
  end
  object sbtn1: TSpeedButton
    Left = 3
    Top = 2
    Width = 32
    Height = 32
    Hint = 'Nueva Orden de Envio'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = sbtn1Click
  end
  object pgGLt: TPageControl
    Left = 0
    Top = 0
    Width = 696
    Height = 65
    ActivePage = tsMovLt
    HotTrack = True
    TabOrder = 0
    object tsMovLt: TTabSheet
      Caption = '&Letras'
      object Z2sbtn7: TSpeedButton
        Left = 165
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Actualiza N'#250'mero Unico desde Tabla Externa'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000333300
          0000377777FFFF7777770FFFF099990FFFF07FFFF777777FFFF7000000333300
          00007777773333777777307703333330770337FF7F333337FF7F300003333330
          0003377773333337777333993333333399333F7FFFF3333FF7FF000000333300
          0000777777F3337777770FFFF033330FFFF07FFFF7F3337FFFF7000000333300
          00007777773333777777307703333330770337FF7F333337FF7F300003333330
          0003377773FFFFF777733393300000033933337F3777777F37F3339990FFFF09
          99333373F7FFFF7FF73333399000000993333337777777777333333333077033
          33333333337FF7F3333333333300003333333333337777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Z2sbtn7Click
      end
      object Z2ImpMasivo: TSpeedButton
        Left = 69
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Impresi'#243'n Masiva de Letras del M'#243'dulo de Ventas'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
          FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
          990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
          990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
          FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
          00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
          0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
          00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
          03FF3777773337777333333333333333333F3333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Z2ImpMasivoClick
      end
      object Z2sbtn6: TSpeedButton
        Left = 36
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Cambio de Ubicaci'#243'n y Situaci'#243'n de Letras'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Z2sbtn6Click
      end
      object Z2bbtn5: TSpeedButton
        Left = 3
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Impresi'#243'n'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Z2bbtn5Click
      end
      object Z1sbtCambiaVcmto: TSpeedButton
        Left = 101
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Cambia Fecha de Vencimiento'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
          F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
          F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
          F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
          F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
          F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
          F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
          333337FFFFFFFF77333330000000000333333777777777733333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Z1sbtCambiaVcmtoClick
      end
      object Z2sbtNumeroBanco: TSpeedButton
        Left = 133
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Actualiza Numero Bancario'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
          8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
          0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
          0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
          05555555575FF777755555555500055555555555557775555555}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Z2sbtNumeroBancoClick
      end
      object SpeedButton1: TSpeedButton
        Left = 197
        Top = 2
        Width = 32
        Height = 32
        Hint = 'Env'#237'a Letras al Banco'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
          FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
          FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
          FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
          0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
          9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
          9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
          99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
          93337777FF777777733370000000073333333777777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
    end
  end
  object pprLetras: TppReport
    AutoStop = False
    DataPipeline = ppdbpLetras
    OnPrintingComplete = pprLetrasPrintingComplete
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report2'
    PrinterSetup.PaperName = '8K'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 102000
    PrinterSetup.mmPaperWidth = 213000
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\SOLExes\SolFormatos\Cxc\Incoresa\Letras.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 323
    Top = 28
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbpLetras'
    object ppDetailBand4: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      mmBottomOffset = 0
      mmHeight = 70000
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CCNODOC'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 20373
        mmTop = 6615
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'CCSALORI'
        DataPipeline = ppdbpLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 6615
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        AutoSize = True
        DataField = 'CCFEMIS'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 104246
        mmTop = 6615
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        AutoSize = True
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 130969
        mmTop = 6615
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'CLIERUC'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 49477
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'TMONABR'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 6615
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'CLIETELF'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 49477
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText101'
        DataField = 'CLIEDIRINC'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 7673
        mmLeft = 34660
        mmTop = 40217
        mmWidth = 73025
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'CLIEDES'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 33073
        mmWidth = 14817
        BandType = 4
      end
      object pplLetras: TppLabel
        UserName = 'lLetras'
        Caption = 'lLetras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 19315
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'LIMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 6615
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CCCANJE'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 6615
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CCNODOC'
      DataPipeline = ppdbpLetras
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbpLetras'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppdbpLetras: TppDBPipeline
    UserName = 'dbpLetras'
    Left = 291
    Top = 28
  end
  object cdsX: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 372
    Top = 28
    object cdsXBANCOID: TStringField
      DisplayWidth = 3
      FieldName = 'BANCOID'
      FixedChar = True
      Size = 3
    end
    object uu: TStringField
      DisplayWidth = 1
      FieldName = 'CC_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsXCCAAAA: TStringField
      DisplayWidth = 4
      FieldName = 'CCAAAA'
      FixedChar = True
      Size = 4
    end
    object cdsXCCAASEM: TStringField
      DisplayWidth = 5
      FieldName = 'CCAASEM'
      FixedChar = True
      Size = 5
    end
    object cdsXCCAASS: TStringField
      DisplayWidth = 6
      FieldName = 'CCAASS'
      FixedChar = True
      Size = 6
    end
    object cdsXCCAATRI: TStringField
      DisplayWidth = 5
      FieldName = 'CCAATRI'
      FixedChar = True
      Size = 5
    end
    object cdsXCCACEPTA: TStringField
      DisplayWidth = 15
      FieldName = 'CCACEPTA'
      FixedChar = True
      Size = 15
    end
    object cdsXCCANOMES: TStringField
      DisplayWidth = 6
      FieldName = 'CCANOMES'
      FixedChar = True
      Size = 6
    end
    object cdsXCCAVAL: TStringField
      DisplayWidth = 15
      FieldName = 'CCAVAL'
      FixedChar = True
      Size = 15
    end
    object cdsXCCBCOID: TStringField
      DisplayWidth = 30
      FieldName = 'CCBCOID'
      FixedChar = True
      Size = 30
    end
    object cdsXCCCANJE: TStringField
      DisplayWidth = 6
      FieldName = 'CCCANJE'
      FixedChar = True
      Size = 6
    end
    object cdsXCCDCTO: TFloatField
      DisplayWidth = 10
      FieldName = 'CCDCTO'
    end
    object cdsXCCDD: TStringField
      DisplayWidth = 2
      FieldName = 'CCDD'
      FixedChar = True
      Size = 2
    end
    object cdsXCCESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'CCESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsXCCESTCJE: TStringField
      DisplayWidth = 1
      FieldName = 'CCESTCJE'
      FixedChar = True
      Size = 1
    end
    object cdsXCCFCANJE: TDateField
      DisplayWidth = 10
      FieldName = 'CCFCANJE'
    end
    object cdsXCCFCMPRB: TDateField
      DisplayWidth = 10
      FieldName = 'CCFCMPRB'
    end
    object cdsXCCFEMIS: TDateField
      DisplayWidth = 10
      FieldName = 'CCFEMIS'
    end
    object cdsXCCFLCRED: TStringField
      DisplayWidth = 1
      FieldName = 'CCFLCRED'
      FixedChar = True
      Size = 1
    end
    object cdsXCCFLETE: TFloatField
      DisplayWidth = 10
      FieldName = 'CCFLETE'
    end
    object cdsXCCFPLABCO: TDateField
      DisplayWidth = 10
      FieldName = 'CCFPLABCO'
    end
    object cdsXCCFRECEP: TDateField
      DisplayWidth = 10
      FieldName = 'CCFRECEP'
    end
    object cdsXCCFREG: TDateField
      DisplayWidth = 10
      FieldName = 'CCFREG'
    end
    object cdsXCCFSITUA: TDateField
      DisplayWidth = 10
      FieldName = 'CCFSITUA'
    end
    object cdsXCCFVALOR: TDateField
      DisplayWidth = 10
      FieldName = 'CCFVALOR'
    end
    object cdsXCCFVCMTO: TDateField
      DisplayWidth = 10
      FieldName = 'CCFVCMTO'
    end
    object cdsXCCFVENLREAL: TDateField
      DisplayWidth = 10
      FieldName = 'CCFVENLREAL'
    end
    object cdsXCCGASFIN: TFloatField
      DisplayWidth = 10
      FieldName = 'CCGASFIN'
    end
    object cdsXCCGRAVAD: TFloatField
      DisplayWidth = 10
      FieldName = 'CCGRAVAD'
    end
    object cdsXCCHREG: TTimeField
      DisplayWidth = 10
      FieldName = 'CCHREG'
    end
    object cdsXCCIGV: TFloatField
      DisplayWidth = 10
      FieldName = 'CCIGV'
    end
    object cdsXCCISC: TFloatField
      DisplayWidth = 10
      FieldName = 'CCISC'
    end
    object cdsXCCLOTE: TStringField
      DisplayWidth = 4
      FieldName = 'CCLOTE'
      FixedChar = True
      Size = 4
    end
    object cdsXCCMM: TStringField
      DisplayWidth = 2
      FieldName = 'CCMM'
      FixedChar = True
      Size = 2
    end
    object cdsXCCMTOEXT: TFloatField
      DisplayWidth = 10
      FieldName = 'CCMTOEXT'
      DisplayFormat = '###########0.00'
    end
    object cdsXCCMTOLOC: TFloatField
      DisplayWidth = 10
      FieldName = 'CCMTOLOC'
      DisplayFormat = '###########0.00'
    end
    object cdsXCCMTOORI: TFloatField
      DisplayWidth = 10
      FieldName = 'CCMTOORI'
      DisplayFormat = '###########0.00'
    end
    object cdsXCCNFACTURA: TStringField
      DisplayWidth = 10
      FieldName = 'CCNFACTURA'
      FixedChar = True
      Size = 10
    end
    object cdsXCCNLETBCO: TStringField
      DisplayWidth = 10
      FieldName = 'CCNLETBCO'
      FixedChar = True
      Size = 10
    end
    object cdsXCCNODOC: TStringField
      DisplayWidth = 20
      FieldName = 'CCNODOC'
      FixedChar = True
    end
    object cdsXCCNOGRAV: TFloatField
      DisplayWidth = 10
      FieldName = 'CCNOGRAV'
    end
    object cdsXCCNOREG: TStringField
      DisplayWidth = 10
      FieldName = 'CCNOREG'
      FixedChar = True
      Size = 10
    end
    object cdsXCCNPLABCO: TStringField
      DisplayWidth = 10
      FieldName = 'CCNPLABCO'
      FixedChar = True
      Size = 10
    end
    object cdsXCCNREFINA: TStringField
      DisplayWidth = 10
      FieldName = 'CCNREFINA'
      FixedChar = True
      Size = 10
    end
    object cdsXCCNRENOV: TIntegerField
      DisplayWidth = 10
      FieldName = 'CCNRENOV'
    end
    object cdsXCCNSERFACTL: TStringField
      DisplayWidth = 5
      FieldName = 'CCNSERFACTL'
      FixedChar = True
      Size = 5
    end
    object cdsXCCNVECPRT: TIntegerField
      DisplayWidth = 10
      FieldName = 'CCNVECPRT'
    end
    object cdsXCCOENV: TStringField
      DisplayWidth = 10
      FieldName = 'CCOENV'
      Size = 6
    end
    object cdsXCCOMERID: TStringField
      DisplayWidth = 2
      FieldName = 'CCOMERID'
      FixedChar = True
      Size = 2
    end
    object cdsXCCPAGEXT: TFloatField
      DisplayWidth = 10
      FieldName = 'CCPAGEXT'
    end
    object cdsXCCPAGLOC: TFloatField
      DisplayWidth = 10
      FieldName = 'CCPAGLOC'
    end
    object cdsXCCPAGORI: TFloatField
      DisplayWidth = 10
      FieldName = 'CCPAGORI'
    end
    object cdsXCCPEDIDO: TStringField
      DisplayWidth = 6
      FieldName = 'CCPEDIDO'
      FixedChar = True
      Size = 6
    end
    object cdsXCCPTOTOT: TStringField
      DisplayWidth = 6
      FieldName = 'CCPTOTOT'
      FixedChar = True
      Size = 6
    end
    object cdsXCCSALEXT: TFloatField
      DisplayWidth = 10
      FieldName = 'CCSALEXT'
    end
    object cdsXCCSALLOC: TFloatField
      DisplayWidth = 10
      FieldName = 'CCSALLOC'
    end
    object cdsXCCSALORI: TFloatField
      DisplayWidth = 10
      FieldName = 'CCSALORI'
    end
    object cdsXCCSEM: TStringField
      DisplayWidth = 1
      FieldName = 'CCSEM'
      FixedChar = True
      Size = 1
    end
    object cdsXCCSERIE: TStringField
      DisplayWidth = 5
      FieldName = 'CCSERIE'
      FixedChar = True
      Size = 5
    end
    object cdsXCCSERVIC: TFloatField
      DisplayWidth = 10
      FieldName = 'CCSERVIC'
    end
    object cdsXCCSS: TStringField
      DisplayWidth = 2
      FieldName = 'CCSS'
      FixedChar = True
      Size = 2
    end
    object cdsXCCTCAMPA: TFloatField
      DisplayWidth = 10
      FieldName = 'CCTCAMPA'
    end
    object cdsXCCTCAMPR: TFloatField
      DisplayWidth = 10
      FieldName = 'CCTCAMPR'
    end
    object cdsXCCTRI: TStringField
      DisplayWidth = 1
      FieldName = 'CCTRI'
      FixedChar = True
      Size = 1
    end
    object cdsXCCUSER: TStringField
      DisplayWidth = 10
      FieldName = 'CCUSER'
      FixedChar = True
      Size = 10
    end
    object cdsXCIAID: TStringField
      DisplayLabel = 'COMPA'#209'IA'
      DisplayWidth = 2
      FieldName = 'CIAID'
      FixedChar = True
      Size = 2
    end
    object cdsXCLAUXID: TStringField
      DisplayWidth = 2
      FieldName = 'CLAUXID'
      FixedChar = True
      Size = 2
    end
    object cdsXCLIEID: TStringField
      DisplayWidth = 8
      FieldName = 'CLIEID'
      FixedChar = True
      Size = 8
    end
    object cdsXCLIENDES: TStringField
      DisplayWidth = 40
      FieldName = 'CLIENDES'
      Size = 40
    end
    object cdsXCLIERUC: TStringField
      DisplayWidth = 10
      FieldName = 'CLIERUC'
      FixedChar = True
      Size = 10
    end
    object cdsXCTATOTAL: TStringField
      DisplayWidth = 15
      FieldName = 'CTATOTAL'
      FixedChar = True
      Size = 15
    end
    object cdsXDOCID: TStringField
      DisplayWidth = 2
      FieldName = 'DOCID'
      FixedChar = True
      Size = 2
    end
    object cdsXDOCSIT: TStringField
      DisplayWidth = 2
      FieldName = 'DOCSIT'
      FixedChar = True
      Size = 2
    end
    object cdsXFLAGVAR: TStringField
      DisplayWidth = 2
      FieldName = 'FLAGVAR'
      FixedChar = True
      Size = 2
    end
    object cdsXFLAGVAR2: TStringField
      DisplayWidth = 2
      FieldName = 'FLAGVAR2'
      FixedChar = True
      Size = 2
    end
    object cdsXNODOCSIT: TStringField
      DisplayWidth = 12
      FieldName = 'NODOCSIT'
      FixedChar = True
      Size = 12
    end
    object cdsXRAZSOCDES: TStringField
      DisplayWidth = 30
      FieldName = 'RAZSOCDES'
      Size = 30
    end
    object cdsXSITDES: TStringField
      DisplayWidth = 30
      FieldName = 'SITDES'
      Size = 30
    end
    object cdsXSITID: TStringField
      DisplayWidth = 2
      FieldName = 'SITID'
      FixedChar = True
      Size = 2
    end
    object cdsXSITUACION: TStringField
      DisplayWidth = 3
      FieldName = 'SITUACION'
      FixedChar = True
      Size = 3
    end
    object cdsXTCANJEID: TStringField
      DisplayWidth = 2
      FieldName = 'TCANJEID'
      FixedChar = True
      Size = 2
    end
    object cdsXTDIARID: TStringField
      DisplayWidth = 2
      FieldName = 'TDIARID'
      FixedChar = True
      Size = 2
    end
    object cdsXTMONDES: TStringField
      DisplayWidth = 30
      FieldName = 'TMONDES'
      Size = 30
    end
    object cdsXTMONID: TStringField
      DisplayWidth = 2
      FieldName = 'TMONID'
      FixedChar = True
      Size = 2
    end
    object cdsXUBICACION: TStringField
      DisplayWidth = 3
      FieldName = 'UBICACION'
      FixedChar = True
      Size = 3
    end
    object cdsXUBICADES: TStringField
      DisplayWidth = 40
      FieldName = 'UBICADES'
      Size = 40
    end
    object cdsXUBIID: TStringField
      DisplayWidth = 2
      FieldName = 'UBIID'
      FixedChar = True
      Size = 2
    end
    object cdsXVEID: TStringField
      DisplayWidth = 4
      FieldName = 'VEID'
      FixedChar = True
      Size = 4
    end
    object cdsXCLIEDIR: TStringField
      FieldName = 'CLIEDIR'
      Size = 70
    end
    object cdsXCLIETELF: TStringField
      FieldName = 'CLIETELF'
    end
  end
  object dsX: TwwDataSource
    DataSet = cdsX
    Left = 408
    Top = 28
  end
  object ppdbLetraCanje: TppDBPipeline
    DataSource = DMCXC.dsQry7
    UserName = 'dbLetraCanje'
    Left = 468
    Top = 24
  end
  object pprLetraCanje: TppReport
    AutoStop = False
    DataPipeline = ppdbLetraCanje
    OnPrintingComplete = pprLetrasPrintingComplete
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report2'
    PrinterSetup.PaperName = '8K'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 102000
    PrinterSetup.mmPaperWidth = 213000
    PrinterSetup.PaperSize = 122
    Template.FileName = 'C:\SOLExes\SolFormatos\Cxc\Incoresa\Letras.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 500
    Top = 24
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbLetraCanje'
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      mmBottomOffset = 0
      mmHeight = 70000
      mmPrintPosition = 0
      DataPipeline = ppdbpLetras
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CCNODOC'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 20373
        mmTop = 6615
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CCMTOORI'
        DataPipeline = ppdbpLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 6615
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText201'
        AutoSize = True
        DataField = 'CCFEMIS'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 6615
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 128323
        mmTop = 6615
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'CLIERUC'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 49477
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'TMONABR'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 6615
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'CLIETELF'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 49477
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CLIEDIRINC'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 7673
        mmLeft = 34660
        mmTop = 40217
        mmWidth = 73025
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'CLIEDES'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 33073
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'lLetras1'
        Caption = 'lLetras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 19315
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'LIMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 6615
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CCCANJE'
        DataPipeline = ppdbpLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbpLetras'
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 6615
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'CCNODOC'
      DataPipeline = ppdbLetraCanje
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbLetraCanje'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
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
    Report = pprNumerosUnicos
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 532
    Top = 24
  end
  object pprNumerosUnicos: TppReport
    AutoStop = False
    DataPipeline = ppdbNumerosUnicos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'rNumerosUnicos'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 588
    Top = 24
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbNumerosUnicos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppdbNumerosUnicos: TppDBPipeline
    UserName = 'dbNumerosUnicos'
    Left = 620
    Top = 24
  end
end
