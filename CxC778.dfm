object FToolCont: TFToolCont
  Left = 253
  Top = 261
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Contabilizaci'#243'n en Bloque'
  ClientHeight = 41
  ClientWidth = 697
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
  object pnGLT: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 41
    BevelInner = bvRaised
    Color = clSilver
    TabOrder = 0
    object sbtABl: TSpeedButton
      Left = 84
      Top = 4
      Width = 32
      Height = 32
      Hint = 'Aceptaci'#243'n'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF5555555555555C055555
        55555555577FF55555555555CCC05555555555557777F55555555555CCC05555
        555555557777FF555555555CCCCC05555555555777777F55555555CCCCCC0555
        5555557777777FF555555CCC05CCC05555555777757777F55555CC05555CC055
        55557775555777FF55555555555CCC05555555555557777F555555555555CC05
        555555555555777FF555555555555CC05555555555555777FF555555555555CC
        05555555555555777FF555555555555CC05555555555555777FF555555555555
        5CC0555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtABlClick
    end
    object sbtCBl: TSpeedButton
      Left = 124
      Top = 4
      Width = 32
      Height = 32
      Hint = 'Contabilizar'
      Flat = True
      Glyph.Data = {
        06020000424D060200000000000076000000280000001A000000190000000100
        04000000000090010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888800000080000000000000000000000008000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000BBBBBB
        BBBBBBBBB00000000000000000000000000000000000000000000000BBBBBBBB
        BBBBBBBBBBB00000000000000000000000000000000000000000000000000000
        0000000000000000000000BBBB0BBB0B0B0B0BBB0BBB0000000000B00B0B0B0B
        0B0B0B0B0B0B0000000000B00B0B0B0B0B0B0BBB0B0B0000000000B0000B0B0B
        0B0B000B0B0B0000000000B0000BBB0BBB0B0BBB0BBB0000000000B000000000
        000B00000B000000000000B00B00000000BBB0000B000000000000BBBB000000
        000B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080000000000000000000000008000000888888888888
        88888888888888000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtCBlClick
    end
    object sbtEliminar: TSpeedButton
      Left = 163
      Top = 4
      Width = 33
      Height = 32
      Hint = 'Anulaci'#243'n'
      Flat = True
      Glyph.Data = {
        96010000424D9601000000000000760000002800000015000000180000000100
        04000000000020010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888880009988888888888888888990009990000000000000009990008999
        FFFFFFFFFFFFF999800088999FFFFFFFFFFF99988000880999FFFFFFFFF99908
        8000880F999FFFFFFF999F088000880FF999FFFFF999FF088000880FFF999FFF
        999FFF088000880FFFF999F999FFFF088000880FFFFF99999FFFFF088000880F
        FFFFF999FFFFFF088000880FFFFF99999FFFFF088000880FFFF999F999FFFF08
        8000880FFF999FFF999FFF088000880FF999FFFFF999FF088000880F999FFFFF
        FF999F088000880999FFFFFFFFF99908800088999FFFFFFFFFFF999880008999
        FFFFFFFFFFFFF9998000999FFFFFFFFFFFFFFF99900099000000000000000009
        9000888888888888888888888000888888888888888888888000}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtEliminarClick
    end
    object sbtImprimir: TSpeedButton
      Left = 207
      Top = 4
      Width = 32
      Height = 32
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
      OnClick = sbtImprimirClick
    end
    object sbtNC: TSpeedButton
      Left = 257
      Top = 4
      Width = 32
      Height = 32
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
      OnClick = sbtNCClick
    end
    object sbtInicial: TSpeedButton
      Left = 299
      Top = 4
      Width = 33
      Height = 32
      Hint = 'Eliminar'
      Flat = True
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000CCFEFDCCFEFD
        CCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFE
        FDCCFEFDCCFEFD000000CCFEFD00000000000000000000000000000000000000
        0000000000000000000000000000000000000000CCFEFD000000CCFEFD000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000CCFEFD000000CCFEFD000000FFFFFF0000FF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FF0000FFFFFFFF000000CCFEFD000000CCFEFD000000
        FFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFF
        FF000000CCFEFD000000CCFEFD000000FFFFFFFFFFFF0000FF0000FF0000FFFF
        FFFF0000FF0000FF0000FFFFFFFFFFFFFF000000CCFEFD000000CCFEFD000000
        FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFF
        FF000000CCFEFD000000CCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF00
        00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000CCFEFD000000CCFEFD000000
        FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFF
        FF000000CCFEFD000000CCFEFD000000FFFFFFFFFFFF0000FF0000FF0000FFFF
        FFFF0000FF0000FF0000FFFFFFFFFFFFFF000000CCFEFD000000CCFEFD000000
        FFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFF
        FF000000CCFEFD000000CCFEFD000000FFFFFF0000FF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FF0000FFFFFFFF000000CCFEFD000000CCFEFD000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000CCFEFD000000CCFEFD00000000000000000000000000000000000000
        0000000000000000000000000000000000000000CCFEFD000000CCFEFDCCFEFD
        CCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFEFDCCFE
        FDCCFEFDCCFEFD000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtInicialClick
    end
    object SpeedButton1: TSpeedButton
      Left = 352
      Top = 8
      Width = 23
      Height = 22
    end
    object Button2: TButton
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      Visible = False
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 496
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      Visible = False
      OnClick = Button4Click
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 33
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object ppdbFuente: TppDBPipeline
    UserName = 'dbFuente'
    Left = 632
  end
  object ppReporte: TppReport
    AutoStop = False
    DataPipeline = ppdbFuente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Reporte'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 378000
    PrinterSetup.PaperSize = 125
    Units = utMillimeters
    BeforePrint = ppReporteBeforePrint
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReportePreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 592
    Version = '7.02'
    mmColumnWidth = 190000
    DataPipelineName = 'ppdbFuente'
    object ppHBCab: TppHeaderBand
      BeforePrint = ppHBCabBeforePrint
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object pplblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        Caption = 'DISTRIBUIDORA INCORESA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 46567
        BandType = 0
      end
      object pplblSistema: TppLabel
        UserName = 'lblSistema'
        Caption = 'Cuenta Corriente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4233
        mmWidth = 33867
        BandType = 0
      end
      object pplblPagina: TppLabel
        UserName = 'lblPagina'
        Caption = 'PAGINA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 0
        mmWidth = 14817
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblPagina1'
        Caption = 'FECHA  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 4233
        mmWidth = 16933
        BandType = 0
      end
      object pplblHora: TppLabel
        UserName = 'lblPagina2'
        Caption = 'HORA   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 8467
        mmWidth = 16933
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'lblTitulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 14023
        mmLeft = 40217
        mmTop = 0
        mmWidth = 129646
        BandType = 0
      end
      object pplblLin0: TppLabel
        UserName = 'lblLin0'
        AutoSize = False
        Caption = 'pplblLin0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 13494
        BandType = 0
      end
      object pplblLin1: TppLabel
        UserName = 'pplblLin1'
        AutoSize = False
        Caption = 'pplblLin1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 28575
        mmWidth = 13494
        BandType = 0
      end
      object ppsvPagina: TppSystemVariable
        UserName = 'svPagina'
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 794
        mmWidth = 6350
        BandType = 0
      end
      object ppsvFecha: TppSystemVariable
        UserName = 'svFecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 5027
        mmWidth = 21167
        BandType = 0
      end
      object ppsvHora: TppSystemVariable
        UserName = 'svHora'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 9260
        mmWidth = 23283
        BandType = 0
      end
      object pplblGuionBase: TppLabel
        UserName = 'lblGuionBase'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12700
        mmWidth = 1058
        BandType = 0
      end
      object TppLabel
        UserName = 'Label2'
        Caption = '------TIPO REGISTRO------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 24077
        mmWidth = 52917
        BandType = 0
      end
      object TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'CONCEPTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 24077
        mmWidth = 16933
        BandType = 0
      end
      object TppLabel
        UserName = 'Label5'
        Caption = '----NRO.DOC----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 86784
        mmTop = 19050
        mmWidth = 31750
        BandType = 0
      end
      object TppLabel
        UserName = 'Label6'
        Caption = '--FECHA---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 19050
        mmWidth = 21167
        BandType = 0
      end
      object TppLabel
        UserName = 'Label7'
        Caption = '--------------------------GLOSA--------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 116417
        mmTop = 24077
        mmWidth = 120650
        BandType = 0
      end
      object TppLabel
        UserName = 'Label10'
        Caption = '--MONTO DEBE--'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 256117
        mmTop = 24077
        mmWidth = 29633
        BandType = 0
      end
      object TppLabel
        UserName = 'Label11'
        Caption = '--MONTO HABER--'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 289984
        mmTop = 24077
        mmWidth = 31750
        BandType = 0
      end
      object TppLabel
        UserName = 'Label8'
        Caption = 'CIA.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 19050
        mmWidth = 8467
        BandType = 0
      end
      object TppLabel
        UserName = 'Label9'
        Caption = '-------DOCUMENTO--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 19050
        mmWidth = 50800
        BandType = 0
      end
      object TppLabel
        UserName = 'Label13'
        Caption = 'NRO.SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 66411
        mmTop = 19050
        mmWidth = 19050
        BandType = 0
      end
      object TppLabel
        UserName = 'Label3'
        Caption = '--------CLIENTE--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 201084
        mmTop = 19050
        mmWidth = 48683
        BandType = 0
      end
      object TppLabel
        UserName = 'Label14'
        Caption = 'COND.COMER.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 254001
        mmTop = 19050
        mmWidth = 23283
        BandType = 0
      end
      object TppLabel
        UserName = 'Label15'
        Caption = '---MONEDA---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 307711
        mmTop = 19050
        mmWidth = 25400
        BandType = 0
      end
      object TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = '------CLASE AUXILIAR------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 19050
        mmWidth = 55033
        BandType = 0
      end
      object TppLabel
        UserName = 'Label12'
        Caption = '-TIPO DIARIO-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 278607
        mmTop = 19050
        mmWidth = 27517
        BandType = 0
      end
      object TppLabel
        UserName = 'Label17'
        Caption = 'CTA.CONTAB.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 24077
        mmWidth = 23283
        BandType = 0
      end
    end
    object ppDBDet: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object TppDBText
        UserName = 'DBText1'
        DataField = 'TREGID'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object TppDBText
        UserName = 'DBText2'
        DataField = 'TREGDES'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 265
        mmWidth = 44450
        BandType = 4
      end
      object TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CPTOID'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 64029
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object TppDBText
        UserName = 'DBText4'
        DataField = 'CUENTAID'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object TppDBText
        UserName = 'DBText5'
        DataField = 'CCGLOSA'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 116417
        mmTop = 0
        mmWidth = 120121
        BandType = 4
      end
      object TppDBText
        UserName = 'DBText6'
        BlankWhenZero = True
        DataField = 'MONTOD'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 256117
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
      object TppDBText
        UserName = 'DBText7'
        BlankWhenZero = True
        DataField = 'MONTOH'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 289984
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
    end
    object ppFBPie: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object pplblLin2: TppLabel
        UserName = 'lblLin2'
        AutoSize = False
        Caption = 'pplblLin2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 13494
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CIAID'
      DataPipeline = ppdbFuente
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbFuente'
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
    object ppGroup5: TppGroup
      BreakName = 'DOCID'
      DataPipeline = ppdbFuente
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbFuente'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CCSERIE'
      DataPipeline = ppdbFuente
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbFuente'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CCNODOC'
      DataPipeline = ppdbFuente
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbFuente'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object TppDBText
          UserName = 'DBText11'
          DataField = 'CIAID'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 0
          mmTop = 4763
          mmWidth = 8467
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText12'
          DataField = 'DOCID'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 14817
          mmTop = 4763
          mmWidth = 4233
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText13'
          DataField = 'DOCABR'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 19844
          mmTop = 4763
          mmWidth = 45244
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText14'
          DataField = 'CCSERIE'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 70115
          mmTop = 5292
          mmWidth = 10319
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText10'
          DataField = 'CCNODOC'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 86784
          mmTop = 5292
          mmWidth = 31750
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText101'
          DataField = 'CLAUXID'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 143934
          mmTop = 5292
          mmWidth = 5292
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText15'
          DataField = 'CLAUXDES'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 150284
          mmTop = 5292
          mmWidth = 49477
          BandType = 3
          GroupNo = 3
        end
        object ppDBText1: TppDBText
          UserName = 'DBText16'
          DataField = 'CLIEDES'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 201084
          mmTop = 5292
          mmWidth = 49742
          BandType = 3
          GroupNo = 3
        end
        object TppDBText
          UserName = 'DBText102'
          DataField = 'CCFEMIS'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 120650
          mmTop = 5292
          mmWidth = 21431
          BandType = 3
          GroupNo = 3
        end
        object ppDBText2: TppDBText
          UserName = 'DBText17'
          DataField = 'CCOMERDES'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 251884
          mmTop = 5292
          mmWidth = 26988
          BandType = 3
          GroupNo = 3
        end
        object ppDBText3: TppDBText
          UserName = 'DBText18'
          DataField = 'TDIARABR'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 279401
          mmTop = 5292
          mmWidth = 26988
          BandType = 3
          GroupNo = 3
        end
        object ppDBText4: TppDBText
          UserName = 'DBText19'
          DataField = 'TMONDES'
          DataPipeline = ppdbFuente
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbFuente'
          mmHeight = 4233
          mmLeft = 306917
          mmTop = 5292
          mmWidth = 26988
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
