object FRegistros: TFRegistros
  Left = 529
  Top = 244
  Width = 271
  Height = 154
  Caption = 'FRegistros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblVersion: TLabel
    Left = 48
    Top = 40
    Width = 141
    Height = 20
    Caption = '20180420080000'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object pprContabilizado: TppReport
    AutoStop = False
    DataPipeline = ppdbPCxC
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 210874
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SolCxC\Cliente\voucher.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 120
    Top = 196
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbPCxC'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 60061
      mmPrintPosition = 0
      object ppLine15: TppLine
        UserName = 'Line15'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 12700
        mmWidth = 198174
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 23548
        mmWidth = 198174
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 51858
        mmWidth = 198174
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 55563
        mmWidth = 198174
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Style = bsClear
        ParentWidth = True
        mmHeight = 5556
        mmLeft = 0
        mmTop = 52917
        mmWidth = 198174
        BandType = 0
      end
      object lblCiaDes: TppLabel
        UserName = 'lblCiaDes'
        Caption = 'Nombre de la Compa'#241'ia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 1852
        mmTop = 2910
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Periodo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 145257
        mmTop = 12700
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = '  Nro Comprobante '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 13229
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Proveedor         :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 35454
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Glosa             :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 43921
        mmWidth = 35190
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 3440
        mmWidth = 18521
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 8467
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = '  Diario '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 12965
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Lote          :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 88900
        mmTop = 35190
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Nro Documento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 88636
        mmTop = 26458
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Tipo de Cambio :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 144992
        mmTop = 26194
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Tipo de Documento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 27252
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Documento '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 53711
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Fec. Emisi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 53446
        mmTop = 53975
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Fec. Vncmto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 53975
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = '  Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 97631
        mmTop = 53711
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'DEBE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 163248
        mmTop = 53975
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'HABER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184415
        mmTop = 53711
        mmWidth = 9260
        BandType = 0
      end
      object lblPeriodo: TppLabel
        UserName = 'lblPeriodo'
        Caption = 'lblPeriodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 18256
        mmWidth = 18521
        BandType = 0
      end
      object lblDiario: TppLabel
        UserName = 'lblDiario'
        Caption = 'Este es el diario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 18521
        mmWidth = 31485
        BandType = 0
      end
      object lblProveedor: TppLabel
        UserName = 'lblProveedor'
        Caption = 'lblProveedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39423
        mmTop = 35719
        mmWidth = 22225
        BandType = 0
      end
      object lblGlosa: TppLabel
        UserName = 'lblGlosa'
        Caption = 'lblGlosa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39423
        mmTop = 44186
        mmWidth = 14817
        BandType = 0
      end
      object lblLote: TppLabel
        UserName = 'lblLote'
        Caption = 'lblLote'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 119327
        mmTop = 35454
        mmWidth = 13229
        BandType = 0
      end
      object lblTipoDoc: TppLabel
        UserName = 'lblTipoDoc'
        Caption = 'lblTipoDoc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39423
        mmTop = 27252
        mmWidth = 18521
        BandType = 0
      end
      object lblTipoCamb: TppLabel
        UserName = 'lblTipoCamb'
        Caption = 'lblTipoCamb'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 26194
        mmWidth = 20373
        BandType = 0
      end
      object lblNoDoc: TppLabel
        UserName = 'lblNoDoc'
        Caption = 'lblNoDoc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 119063
        mmTop = 26458
        mmWidth = 15081
        BandType = 0
      end
      object lblNoComp: TppLabel
        UserName = 'lblNoComp'
        Caption = 'lblNoComp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174096
        mmTop = 18256
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'T.C.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 53711
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'US$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 53711
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = ' Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 13494
        mmWidth = 11113
        BandType = 0
      end
      object lblbanco: TppLabel
        UserName = 'lblbanco'
        AutoSize = False
        Caption = 'lblbanco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 18256
        mmWidth = 31221
        BandType = 0
      end
      object lblcuenta: TppLabel
        UserName = 'lblcuenta'
        AutoSize = False
        Caption = 'lblcuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 66940
        mmTop = 18521
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = '  Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 13494
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = '  Nro Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 105040
        mmTop = 13229
        mmWidth = 22225
        BandType = 0
      end
      object lblnumchq: TppLabel
        UserName = 'lblnumchq'
        AutoSize = False
        Caption = 'lblnumchq'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 106098
        mmTop = 18521
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Moneda :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 159809
        mmTop = 36513
        mmWidth = 15081
        BandType = 0
      end
      object lblmoneda: TppLabel
        UserName = 'lblmoneda'
        AutoSize = False
        Caption = 'lblmoneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 36513
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Ser.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 53711
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Nro. Doc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 53975
        mmWidth = 16669
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'lkdocdes'
        DataPipeline = ppdbPCxC
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CCSERIE'
        DataPipeline = ppdbPCxC
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 21167
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CCNODOC'
        DataPipeline = ppdbPCxC
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CCFEMIS'
        DataPipeline = ppdbPCxC
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 56886
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbPCxC
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CUENTAID'
        DataPipeline = ppdbPCxC
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 96838
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'DEBE'
        DataPipeline = ppdbPCxC
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'HABER'
        DataPipeline = ppdbPCxC
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 178594
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CCTCAMPA'
        DataPipeline = ppdbPCxC
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 121709
        mmTop = 265
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CCMTOEXT'
        DataPipeline = ppdbPCxC
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 135467
        mmTop = 265
        mmWidth = 20373
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
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 5292
        mmLeft = 154252
        mmTop = 0
        mmWidth = 43921
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'DEBE'
        DataPipeline = ppdbPCxC
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 155840
        mmTop = 1058
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'HABER'
        DataPipeline = ppdbPCxC
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbPCxC'
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
    end
  end
  object ppdbPCxC: TppDBPipeline
    UserName = 'dbPCxC'
    Left = 121
    Top = 248
  end
end
