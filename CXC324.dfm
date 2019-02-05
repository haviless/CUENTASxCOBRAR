object FConsistencia: TFConsistencia
  Left = 247
  Top = 222
  BorderStyle = bsDialog
  Caption = 'Cuentas por Cobrar'
  ClientHeight = 409
  ClientWidth = 732
  Color = 12904163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlInicial: TPanel
    Left = 8
    Top = 59
    Width = 716
    Height = 302
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 10207162
    TabOrder = 0
    object Label16: TLabel
      Left = 19
      Top = 9
      Width = 167
      Height = 27
      Caption = 'Periodos de Venta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgPeriodo: TwwDBGrid
      Left = 13
      Top = 42
      Width = 688
      Height = 245
      DisableThemesInTitle = False
      Selected.Strings = (
        'NOCIERRE'#9'8'#9'No.~Cierre'#9'F'
        'CNSPRICIE'#9'10'#9'Fecha~Inicio'#9'F'
        'CNSULTCIE'#9'10'#9'Fecha~Final'#9'F'
        'USUARIO'#9'12'#9'Usuario~Apertura'#9'F'
        'FREG'#9'21'#9'Fecha~Apertura'#9'F'
        'ESTVEN'#9'8'#9'Estado~I/C'#9'F'
        'USUCIE'#9'12'#9'Usuario~Cierre'#9'F'
        'FECCIE'#9'21'#9'Fecha~Cierre'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 375
    Width = 116
    Height = 25
    Caption = 'Detallado'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn4: TBitBtn
    Left = 129
    Top = 375
    Width = 116
    Height = 25
    Caption = 'Resumen x Cuenta'
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 251
    Top = 375
    Width = 116
    Height = 25
    Caption = 'Resumen Contable'
    TabOrder = 3
    OnClick = BitBtn5Click
  end
  object Panel2: TPanel
    Left = 7
    Top = 4
    Width = 716
    Height = 49
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 10207162
    TabOrder = 4
    object Label1: TLabel
      Left = 14
      Top = 17
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
    end
    object dblcCia: TwwDBLookupCombo
      Left = 68
      Top = 14
      Width = 55
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'Cia'#9'F'
        'CIAABR'#9'15'#9'Raz'#243'n Social'#9'F')
      LookupTable = DMCXC.cdsCia
      LookupField = 'CIAID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      DropDownCount = 15
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcCiaExit
      OnNotInList = dblcCiaNotInList
    end
    object edtCia: TEdit
      Left = 124
      Top = 14
      Width = 240
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object bbtnMostrar: TBitBtn
      Left = 621
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Mostrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbtnMostrarClick
    end
  end
  object bbtnSalir: TBitBtn
    Left = 627
    Top = 375
    Width = 95
    Height = 26
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = bbtnSalirClick
  end
  object BitBtn2: TBitBtn
    Left = 376
    Top = 375
    Width = 116
    Height = 25
    Caption = 'Facturas / Pago'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object cbDisenoRep: TCheckBox
    Left = 503
    Top = 381
    Width = 111
    Height = 17
    Caption = 'Dise'#241'o Reporte'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object ppdbMovCxC2: TppDBPipeline
    UserName = 'dbMovCxC2'
    Left = 230
    Top = 278
  end
  object ppRChico: TppReport
    AutoStop = False
    DataPipeline = ppdbMovCxC2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report1'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 15000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\oaEjecuta\RTMS\CxC\Dema\RegVenta_Consis.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRChicoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 262
    Top = 278
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbMovCxC2'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 20373
        mmWidth = 7408
        BandType = 0
      end
      object pplblComp: TppLabel
        UserName = 'lblComp'
        Caption = 'COMPROBANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 16140
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 24606
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        Caption = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 23813
        mmTop = 24606
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 48948
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'B.IMPONIBLE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 73290
        mmTop = 16140
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        Caption = 'GRAVADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 76465
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 98161
        mmTop = 16140
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Caption = 'INAFECTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 20373
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        Caption = 'I.G.V  e'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 116946
        mmTop = 16140
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 16140
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 106
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 106
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label802'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label902'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 69850
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 69850
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 69850
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 112977
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 112977
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel175: TppLabel
        UserName = 'Label1002'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 112977
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label178'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label181'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 153723
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 153723
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 153723
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object pplblCia: TppLabel
        UserName = 'lCia1'
        Caption = 'Compa'#241'ia : BAZAR Y REPRESENTACIONES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 794
        mmWidth = 51858
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174890
        mmTop = 794
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 794
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Caption = 'DE PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 18785
        mmTop = 20373
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel193: TppLabel
        UserName = 'Label193'
        Caption = 'Hora  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 5292
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174890
        mmTop = 5292
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174890
        mmTop = 9790
        mmWidth = 1588
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1588
        mmTop = 14817
        mmWidth = 193411
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 29633
        mmWidth = 193411
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'I.P.M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 119063
        mmTop = 20373
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label1301'
        Caption = 'RAZON SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 45244
        mmTop = 16140
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'P'#225'g   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 9790
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label101'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 16140
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 20373
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'REGISTRO DE VENTAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 794
        mmWidth = 26723
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'RANGO'
        DataPipeline = ppdbMovCxC2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 74877
        mmTop = 5292
        mmWidth = 48895
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 16140
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label9'
        Caption = 'us$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label10'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 194469
        mmTop = 16140
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label11'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 194469
        mmTop = 20373
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label12'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 194469
        mmTop = 24606
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label13'
        Caption = 'Forma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 16404
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label14'
        Caption = 'Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 24606
        mmWidth = 5821
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object varEstado: TppVariable
        UserName = 'varEstado'
        CalcOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        OnCalc = varEstadoCalc
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'CCFEMIS'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 0
        mmWidth = 11853
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        AutoSize = True
        DataField = 'CCSERIE'
        DataPipeline = ppdbMovCxC2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 0
        mmWidth = 4445
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'CCNODOC'
        DataPipeline = ppdbMovCxC2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 0
        mmWidth = 10372
        BandType = 4
      end
      object ppdbtCliente: TppDBText
        UserName = 'dbtCliente'
        DataField = 'CLIEDES'
        DataPipeline = ppdbMovCxC2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 35454
        mmTop = 0
        mmWidth = 33867
        BandType = 4
      end
      object ppvGravado: TppDBText
        UserName = 'vGravado'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CCGRAVAD'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 84402
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppvNGravado: TppDBText
        UserName = 'vGravado1'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CCNOGRAV'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 3175
        mmLeft = 103452
        mmTop = 0
        mmWidth = 10583
        BandType = 4
      end
      object ppvIGV: TppDBText
        UserName = 'vGravado2'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CCIGV'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 126207
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppvTotal: TppDBText
        UserName = 'vGravado3'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CCMTOORI'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        BlankWhenZero = True
        DataField = 'TOTEXT'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DCCOMDES'
        DataPipeline = ppdbMovCxC2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 173302
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppdbcGravado: TppDBCalc
        UserName = 'dbcGravado'
        AutoSize = True
        DataField = 'CCGRAVAD'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 3175
        mmWidth = 20743
        BandType = 7
      end
      object ppdbcNGravado: TppDBCalc
        UserName = 'dbcNGravado'
        AutoSize = True
        DataField = 'CCNOGRAV'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 93293
        mmTop = 3175
        mmWidth = 20743
        BandType = 7
      end
      object ppdbcIGV: TppDBCalc
        UserName = 'dbcIGV'
        AutoSize = True
        DataField = 'CCIGV'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 115729
        mmTop = 3175
        mmWidth = 16298
        BandType = 7
      end
      object ppdbcTotal: TppDBCalc
        UserName = 'dbcTotal'
        AutoSize = True
        DataField = 'CCMTOORI'
        DataPipeline = ppdbMovCxC2
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMovCxC2'
        mmHeight = 4233
        mmLeft = 133510
        mmTop = 3175
        mmWidth = 20743
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 68263
        mmTop = 1323
        mmWidth = 127529
        BandType = 7
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 48948
        mmTop = 3175
        mmWidth = 13229
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label2'
        Caption = 'TOTAL DE DOCUMENTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 3175
        mmWidth = 29633
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DOCID'
      DataPipeline = ppdbMovCxC2
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbMovCxC2'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'DOCID'
          DataPipeline = ppdbMovCxC2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 8202
          mmTop = 1588
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText1'
          AutoSize = True
          DataField = 'DOCDES'
          DataPipeline = ppdbMovCxC2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 17463
          mmTop = 1588
          mmWidth = 26670
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'dbcGravado1'
          AutoSize = True
          DataField = 'CCGRAVAD'
          DataPipeline = ppdbMovCxC2
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 71173
          mmTop = 2381
          mmWidth = 20743
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'dbcNGravado1'
          AutoSize = True
          DataField = 'CCNOGRAV'
          DataPipeline = ppdbMovCxC2
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 93293
          mmTop = 2381
          mmWidth = 20743
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'dbcIGV1'
          AutoSize = True
          DataField = 'CCIGV'
          DataPipeline = ppdbMovCxC2
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 115729
          mmTop = 2381
          mmWidth = 16298
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'dbcTotal1'
          AutoSize = True
          DataField = 'CCMTOORI'
          DataPipeline = ppdbMovCxC2
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 133510
          mmTop = 2381
          mmWidth = 20743
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 68263
          mmTop = 794
          mmWidth = 127529
          BandType = 5
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label17'
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 17727
          mmTop = 2381
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          AutoSize = True
          DataField = 'DOCDES'
          DataPipeline = ppdbMovCxC2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 27252
          mmTop = 2381
          mmWidth = 26723
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CCNODOC'
          DataPipeline = ppdbMovCxC2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Pitch = fpFixed
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbMovCxC2'
          mmHeight = 4233
          mmLeft = 56621
          mmTop = 2381
          mmWidth = 8467
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRChico
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 294
    Top = 278
  end
  object pprResumenCuenta: TppReport
    AutoStop = False
    DataPipeline = ppdbResumenCuenta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'rRCompras'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 5000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SolFormatos\CxC\Dema\RegVtaResCta.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 357
    Top = 278
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbResumenCuenta'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object pplblCiaCta: TppLabel
        UserName = 'lblCiaCta'
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 2117
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 2117
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 6615
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Resumen Total por Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 82021
        mmTop = 9790
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label202'
        Caption = 'REGISTRO DE VENTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 85196
        mmTop = 20373
        mmWidth = 34660
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 180000
        mmTop = 11113
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Cuentas por Cobrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 7938
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 2117
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 6615
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 11113
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 28840
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Debe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 82815
        mmTop = 29104
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label102'
        Caption = 'Haber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 130704
        mmTop = 29633
        mmWidth = 8996
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 34660
        mmWidth = 201348
        BandType = 0
      end
      object pplblPeriodoResCta: TppLabel
        UserName = 'lblPeriodoResCta'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 96573
        mmTop = 14817
        mmWidth = 11377
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 27252
        mmWidth = 200290
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CUENTAID'
        DataPipeline = ppdbResumenCuenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResumenCuenta'
        mmHeight = 3704
        mmLeft = 8467
        mmTop = 0
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DEBE'
        DataPipeline = ppdbResumenCuenta
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCuenta'
        mmHeight = 3704
        mmLeft = 79904
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'HABE'
        DataPipeline = ppdbResumenCuenta
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCuenta'
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'DEBE'
        DataPipeline = ppdbResumenCuenta
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCuenta'
        mmHeight = 3969
        mmLeft = 79904
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'HABE'
        DataPipeline = ppdbResumenCuenta
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCuenta'
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 529
        mmWidth = 202142
        BandType = 7
      end
    end
  end
  object ppdbResumenCuenta: TppDBPipeline
    UserName = 'dbResumenCuenta'
    Left = 325
    Top = 278
  end
  object ppdbResumenCtbl: TppDBPipeline
    UserName = 'dbResumenCtbl'
    Left = 389
    Top = 278
  end
  object pprResumenCtbl: TppReport
    AutoStop = False
    DataPipeline = ppdbResumenCtbl
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RegComCtbl'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SolFormatos\CxC\Dema\RegVtaResCtbl.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 421
    Top = 278
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbResumenCtbl'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object lblCiaCtabl: TppLabel
        UserName = 'lblCiaCtabl'
        Caption = 'cia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 2117
        mmWidth = 4498
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 2117
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 6615
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label1'
        Caption = 'Resumen Contable'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 87048
        mmTop = 9790
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label301'
        Caption = 'REGISTRO DE COMPRAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 83609
        mmTop = 20373
        mmWidth = 37042
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable8'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 11113
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label20'
        Caption = 'Cuentas por Pagar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 7938
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 2117
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 6615
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Pag.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 11113
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 28840
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Debe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 28840
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Haber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 184150
        mmTop = 28840
        mmWidth = 7673
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 529
        mmTop = 34660
        mmWidth = 201348
        BandType = 0
      end
      object pplblPeriodoCtabl: TppLabel
        UserName = 'Label27'
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 96573
        mmTop = 14817
        mmWidth = 11377
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 27252
        mmWidth = 200290
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label28'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 28840
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label29'
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 92075
        mmTop = 28840
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label30'
        Caption = 'Relaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 64294
        mmTop = 28840
        mmWidth = 10848
        BandType = 0
      end
      object ppVariable16: TppVariable
        UserName = 'Variable104'
        AutoSize = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 20638
        mmWidth = 7673
        BandType = 0
      end
      object ppVariable17: TppVariable
        UserName = 'Variable17'
        AutoSize = False
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 20902
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CUENTAID'
        DataPipeline = ppdbResumenCtbl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DCPAUXID'
        DataPipeline = ppdbResumenCtbl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 60325
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CPSERIE'
        DataPipeline = ppdbResumenCtbl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CPNODOC'
        DataPipeline = ppdbResumenCtbl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CPFEMIS'
        DataPipeline = ppdbResumenCtbl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DEBE'
        DataPipeline = ppdbResumenCtbl
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 141023
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'HABE'
        DataPipeline = ppdbResumenCtbl
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 170127
        mmTop = 0
        mmWidth = 27252
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 529
        mmWidth = 202142
        BandType = 7
      end
      object ppVariable18: TppVariable
        UserName = 'Variable18'
        AutoSize = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 59531
        mmTop = 1323
        mmWidth = 6085
        BandType = 7
      end
      object ppVariable19: TppVariable
        UserName = 'Variable19'
        AutoSize = False
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 69056
        mmTop = 1323
        mmWidth = 8202
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'DEBE'
        DataPipeline = ppdbResumenCtbl
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 137054
        mmTop = 1058
        mmWidth = 30956
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'HABE'
        DataPipeline = ppdbResumenCtbl
        DisplayFormat = '###,###,##0.00;(###,###,##0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbResumenCtbl'
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 1058
        mmWidth = 28840
        BandType = 7
      end
    end
  end
end
