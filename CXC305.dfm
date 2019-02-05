object FRDocu: TFRDocu
  Left = 280
  Top = 148
  BorderStyle = bsDialog
  Caption = 'Registro por tipo de documentos'
  ClientHeight = 311
  ClientWidth = 298
  Color = 12904163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRegComp: TPanel
    Left = 5
    Top = 6
    Width = 288
    Height = 300
    BevelInner = bvRaised
    BorderWidth = 1
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Z2sbOK: TBitBtn
      Left = 246
      Top = 268
      Width = 30
      Height = 25
      TabOrder = 0
      OnClick = Z2sbOKClick
      OnMouseUp = Z2sbOKMouseUp
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
    object Z2sbNuevo: TBitBtn
      Left = 211
      Top = 268
      Width = 30
      Height = 25
      TabOrder = 1
      OnClick = Z2sbNuevoClick
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
    object pnlDatos1: TPanel
      Left = 9
      Top = 7
      Width = 271
      Height = 256
      Color = 10207162
      TabOrder = 2
      object lblCia: TLabel
        Left = 12
        Top = 13
        Width = 49
        Height = 15
        Caption = 'Compa'#241#237'a'
      end
      object Label1: TLabel
        Left = 12
        Top = 43
        Width = 66
        Height = 15
        Caption = 'T.Documento'
      end
      object Label3: TLabel
        Left = 12
        Top = 63
        Width = 31
        Height = 15
        Caption = 'Desde'
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 12
        Top = 87
        Width = 29
        Height = 15
        Caption = 'Hasta'
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 12
        Top = 140
        Width = 40
        Height = 15
        Caption = 'Moneda'
        Visible = False
      end
      object Label2: TLabel
        Left = 12
        Top = 224
        Width = 53
        Height = 15
        Caption = 'T.  Cambio'
      end
      object Label6: TLabel
        Left = 12
        Top = 111
        Width = 50
        Height = 15
        Caption = 'Situaci'#243'n'
        Layout = tlCenter
      end
      object dblcCia: TwwDBLookupCombo
        Left = 81
        Top = 7
        Width = 42
        Height = 23
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
        OnNotInList = NotInList
      end
      object edtCia: TEdit
        Left = 127
        Top = 7
        Width = 137
        Height = 23
        Enabled = False
        ReadOnly = True
        TabOrder = 8
      end
      object edtTDoc: TEdit
        Left = 127
        Top = 37
        Width = 137
        Height = 23
        Enabled = False
        ReadOnly = True
        TabOrder = 9
      end
      object dblcTDoc: TwwDBLookupCombo
        Left = 81
        Top = 37
        Width = 42
        Height = 23
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DOCID'#9'2'#9'Doc.'#9'F'
          'DOCDES'#9'30'#9'Descripci'#243'n'#9'F')
        LookupTable = DMCXC.cdsTDoc
        LookupField = 'DOCID'
        Options = [loColLines, loRowLines, loTitles]
        Style = csDropDownList
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcTDocExit
        OnNotInList = NotInList
      end
      object dbdtpDesde: TwwDBDateTimePicker
        Left = 81
        Top = 63
        Width = 85
        Height = 23
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
      end
      object dbdtpHasta: TwwDBDateTimePicker
        Left = 81
        Top = 87
        Width = 85
        Height = 23
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
      end
      object dblcbTmon: TwwDBLookupCombo
        Left = 81
        Top = 134
        Width = 42
        Height = 23
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TMONID'#9'3'#9'Id.'#9'F'
          'TMONDES'#9'20'#9'Moneda'#9'F')
        LookupTable = DMCXC.cdsTMon
        LookupField = 'TMONID'
        Options = [loColLines, loRowLines, loTitles]
        Style = csDropDownList
        Enabled = False
        TabOrder = 7
        Visible = False
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcbTmonExit
      end
      object edtTmon: TEdit
        Left = 126
        Top = 134
        Width = 59
        Height = 23
        Enabled = False
        ReadOnly = True
        TabOrder = 10
        Visible = False
      end
      object rgTmon: TRadioGroup
        Left = 12
        Top = 134
        Width = 241
        Height = 81
        Items.Strings = (
          'S'#243'lo Mov. en Moneda Nacional'
          'S'#243'lo Mov. en Moneda Extranjera'
          'Todo en Moneda Nacional'
          'Todo en Moneda Extranjera')
        TabOrder = 5
        OnClick = rgTmonClick
      end
      object edtTcam: TEdit
        Left = 81
        Top = 224
        Width = 59
        Height = 23
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object edtSitua: TEdit
        Left = 117
        Top = 111
        Width = 104
        Height = 23
        Enabled = False
        ReadOnly = True
        TabOrder = 11
      end
      object cbSitua: TComboBox
        Left = 81
        Top = 111
        Width = 34
        Height = 23
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 4
        OnExit = cbSituaExit
        Items.Strings = (
          'C'
          'P')
      end
    end
  end
  object ppdbNLetras: TppDBPipeline
    DataSource = DMCXC.dsQry
    UserName = 'dbNLetras'
    Left = 26
    Top = 255
    object ppField1: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField23: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField27: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField30: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 512
      DataType = dtMemo
      DisplayWidth = 10
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppField31: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 30
    end
    object ppField32: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField33: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 256
      DataType = dtMemo
      DisplayWidth = 10
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppField36: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 256
      DataType = dtMemo
      DisplayWidth = 10
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppField37: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 256
      DataType = dtMemo
      DisplayWidth = 10
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppField38: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField39: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField40: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 39
    end
  end
  object ppRNLetras: TppReport
    AutoStop = False
    DataPipeline = ppdbNLetras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SolCxC\SolFormatos\FacturaXCobrar.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRNLetrasPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 93
    Top = 254
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbNLetras'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppdbCia: TppDBText
        UserName = 'dbCia'
        AutoSize = True
        DataField = 'CIADESC'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 12965
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'POR FECHA DE EMISION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 77523
        mmTop = 1058
        mmWidth = 37042
        BandType = 0
      end
      object pplblModulo: TppLabel
        UserName = 'lblModulo'
        Caption = 'Cuentas Por Cobrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 7938
        mmWidth = 33338
        BandType = 0
      end
      object pplblDel: TppLabel
        UserName = 'lblDel1'
        Caption = 'Del:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 14552
        mmWidth = 7408
        BandType = 0
      end
      object pplblAl: TppLabel
        UserName = 'lblAl1'
        Caption = 'Al:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 14552
        mmWidth = 5556
        BandType = 0
      end
      object pplblFecini: TppLabel
        UserName = 'lblFecini1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 14552
        mmWidth = 16933
        BandType = 0
      end
      object pplblFecfin: TppLabel
        UserName = 'lblFecfin1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 14552
        mmWidth = 16933
        BandType = 0
      end
      object pplblPag: TppLabel
        UserName = 'lblPag'
        Caption = 'P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 1058
        mmWidth = 12965
        BandType = 0
      end
      object pplblHora: TppLabel
        UserName = 'lblHora'
        AutoSize = False
        Caption = 'Hora   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 7408
        mmWidth = 11642
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 14023
        mmWidth = 12965
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 28840
        mmWidth = 198967
        BandType = 0
      end
      object ppsvPag: TppSystemVariable
        UserName = 'svPag'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 1323
        mmWidth = 1852
        BandType = 0
      end
      object ppsvHora: TppSystemVariable
        UserName = 'svHora'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 7144
        mmWidth = 14817
        BandType = 0
      end
      object ppsvFecha: TppSystemVariable
        UserName = 'svFecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 13758
        mmWidth = 18521
        BandType = 0
      end
      object pplblEsta: TppLabel
        UserName = 'lblEsta'
        Caption = 'Estado : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 21167
        mmWidth = 16669
        BandType = 0
      end
      object pplblDEsta: TppLabel
        UserName = 'lblDEsta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 21167
        mmWidth = 58473
        BandType = 0
      end
      object pplblEmi: TppLabel
        UserName = 'lblEsta1'
        Caption = 'Emisi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 34131
        mmWidth = 12965
        BandType = 0
      end
      object pplblLetra: TppLabel
        UserName = 'lblLetra'
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 16669
        mmTop = 34131
        mmWidth = 16669
        BandType = 0
      end
      object pplblCliente: TppLabel
        UserName = 'lblCliente'
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 51065
        mmTop = 30427
        mmWidth = 12965
        BandType = 0
      end
      object pplblSubT: TppLabel
        UserName = 'lblCliente1'
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 116681
        mmTop = 30163
        mmWidth = 9260
        BandType = 0
      end
      object pplblFVmto: TppLabel
        UserName = 'lblTotal1'
        Caption = 'Vencimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 34131
        mmWidth = 20373
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 41010
        mmWidth = 198967
        BandType = 0
      end
      object pplblTitulo1: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'MOVIMIENTOS EN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 77788
        mmTop = 7938
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 30427
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'No.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 21431
        mmTop = 30427
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 30427
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Situaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 128323
        mmTop = 30163
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Ubicaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 155311
        mmTop = 30163
        mmWidth = 16669
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CCFEMIS'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'AUXNOMB'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 62177
        mmTop = 0
        mmWidth = 46567
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'SAL'
        DataPipeline = ppdbNLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 121709
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CCNODOC'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 21696
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CLIERUC'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SITUAABR'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 129117
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'UBICADES'
        DataPipeline = ppdbNLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 66675
        mmTop = 1323
        mmWidth = 112448
        BandType = 7
      end
      object pplbltot: TppLabel
        UserName = 'lbltot'
        Caption = 'Totales:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 4498
        mmWidth = 14817
        BandType = 7
      end
      object ppdbtotext: TppDBCalc
        UserName = 'dbtotext'
        DataField = 'SUBT'
        DataPipeline = ppdbNLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 102659
        mmTop = 4498
        mmWidth = 24606
        BandType = 7
      end
      object ppdbtotloc: TppDBCalc
        UserName = 'dbtotloc'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        OnCalc = ppdbtotlocCalc
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 4498
        mmWidth = 24606
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'dbtotloc1'
        DataField = 'IGV'
        DataPipeline = ppdbNLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppdbNLetras'
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 4763
        mmWidth = 24606
        BandType = 7
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
    Report = ppRNLetras
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 58
    Top = 261
  end
end
