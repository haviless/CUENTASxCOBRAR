object FSolucion: TFSolucion
  Left = 68
  Top = 13
  BorderStyle = bsDialog
  Caption = 'Solución a Hoja de Trabajo'
  ClientHeight = 504
  ClientWidth = 792
  Color = 12904163
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
  object Label18: TLabel
    Left = 352
    Top = 140
    Width = 118
    Height = 13
    Caption = 'SADFSADFFSADFASDF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object pnlDetalle: TPanel
    Left = 2
    Top = 240
    Width = 795
    Height = 216
    BevelInner = bvRaised
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = clGray
    TabOrder = 1
    object dbgDHojaT: TwwDBGrid
      Left = 6
      Top = 6
      Width = 780
      Height = 201
      Selected.Strings = (
        'INTID'#9'2'#9'Id'
        'INTDES'#9'18'#9'Interrupción'
        'SOLUFID'#9'2'#9'Solución'
        'SOLUDES'#9'12'#9'Estado'
        'PROV'#9'8'#9'Proveedor'
        'ARTID'#9'9'#9'Artículo'
        'ARTDES'#9'28'#9'Descripción'
        'HOJTCANTPE'#9'9'#9'Cantidad~ Pedida'
        'HOJTCANTDF'#9'9'#9'Cantidad~Deficit'
        'HOJTFECREG'#9'6'#9'Fecha ~Registro'
        'HOJTHORREG'#9'5'#9'Hora~Registro'
        'HOJTFECSOL'#9'6'#9'Fecha ~Solución'
        'HOJTHORSOL'#9'5'#9'Hora~.Sol.ución')
      IniAttributes.Delimiter = ';;'
      TitleColor = 11974251
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsDHojaT
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = dbgDHojaTCalcCellColors
      OnDblClick = dbgDHojaTDblClick
      IndicatorColor = icBlack
      object dbgDHojaTIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 50
        AllowAllUp = True
        Enabled = False
        Flat = True
      end
    end
  end
  object pnlCabecera: TPanel
    Left = 1
    Top = -1
    Width = 795
    Height = 235
    BevelInner = bvRaised
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 0
    object pnlCab1: TPanel
      Left = 7
      Top = 8
      Width = 780
      Height = 44
      Color = 10207162
      TabOrder = 0
      object Label10: TLabel
        Left = 111
        Top = 2
        Width = 45
        Height = 13
        Caption = 'F.Emisión'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 12
        Top = 2
        Width = 61
        Height = 13
        Caption = 'Hoja Trabajo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 299
        Top = 2
        Width = 49
        Height = 15
        Caption = 'Localidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblProcCliente: TLabel
        Left = 496
        Top = 11
        Width = 96
        Height = 20
        Caption = 'lblProcCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object dtpHojaT: TwwDBDateTimePicker
        Left = 103
        Top = 16
        Width = 86
        Height = 23
        AutoSize = False
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'HOJTFECSOL'
        DataSource = DM1.dsHojaT
        Epoch = 1950
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
      end
      object dbeHojaT: TwwDBEdit
        Left = 10
        Top = 16
        Width = 83
        Height = 23
        AutoSize = False
        DataField = 'HOJTID'
        DataSource = DM1.dsHojaT
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object bbtnok: TBitBtn
        Left = 253
        Top = 9
        Width = 30
        Height = 28
        Hint = 'Pasa a Modificar Detalle'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbtnokClick
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
      object dblcLocal: TwwDBLookupCombo
        Left = 296
        Top = 16
        Width = 53
        Height = 21
        DropDownAlignment = taLeftJustify
        DataField = 'LOCID'
        DataSource = DM1.dsHojaT
        TabOrder = 3
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcLocalExit
      end
      object edtLocal: TEdit
        Left = 352
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 4
        Visible = False
      end
    end
    object PnlCab2: TPanel
      Left = 7
      Top = 53
      Width = 779
      Height = 171
      Color = 10207162
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 89
        Top = 5
        Width = 42
        Height = 13
        Caption = 'F.Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblVendedor: TLabel
        Left = 431
        Top = 47
        Width = 46
        Height = 13
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 362
        Top = 5
        Width = 123
        Height = 13
        Caption = 'Cond. Comerc. del Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblClie: TLabel
        Left = 7
        Top = 46
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblClieRuc: TLabel
        Left = 103
        Top = 46
        Width = 23
        Height = 13
        Caption = 'RUC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblProvNom: TLabel
        Left = 193
        Top = 46
        Width = 63
        Height = 13
        Caption = 'Razón Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 5
        Top = 5
        Width = 33
        Height = 13
        Caption = 'Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 82
        Top = 128
        Width = 65
        Height = 13
        Caption = 'Créd.Utilizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 182
        Top = 128
        Width = 66
        Height = 13
        Caption = 'Monto Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 441
        Top = 111
        Width = 41
        Height = 13
        Caption = 'Almacén'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label15: TLabel
        Left = 180
        Top = 5
        Width = 39
        Height = 13
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 128
        Width = 62
        Height = 13
        Caption = 'Linea Crédito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 294
        Top = 128
        Width = 27
        Height = 13
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 356
        Top = 128
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 8
        Top = 84
        Width = 160
        Height = 13
        Caption = 'Grupo Cond. Comerc. Establecida'
      end
      object Label22: TLabel
        Left = 626
        Top = 3
        Width = 58
        Height = 13
        Caption = 'Compañía'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object EdtVen: TEdit
        Left = 480
        Top = 59
        Width = 196
        Height = 23
        AutoSize = False
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dblcVen: TwwDBLookupCombo
        Left = 432
        Top = 59
        Width = 49
        Height = 23
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'VEID'#9'4'#9'Vendedor'#9'F'
          'VENOMBRES'#9'28'#9'Nombres'#9'F')
        DataField = 'VEID'
        DataSource = DM1.dsHojaT
        LookupTable = DM1.cdsVende
        LookupField = 'VEID'
        Options = [loColLines, loRowLines, loTitles]
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
      end
      object dblcFPago: TwwDBLookupCombo
        Left = 360
        Top = 19
        Width = 47
        Height = 23
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CCOMERID'#9'2'#9'Id'#9'F'
          'DCCOMDES'#9'30'#9'Descripción'#9'F')
        DataField = 'FPAGOID'
        DataSource = DM1.dsHojaT
        LookupTable = DM1.cdsDscto
        LookupField = 'CCOMERID'
        Options = [loColLines, loRowLines, loTitles]
        MaxLength = 2
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
      end
      object edtFPago: TEdit
        Left = 409
        Top = 19
        Width = 209
        Height = 23
        AutoSize = False
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 89
        Top = 19
        Width = 86
        Height = 23
        AutoSize = False
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'PEDFECHA'
        DataSource = DM1.dsHojaT
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
      end
      object dblcdClie: TwwDBLookupComboDlg
        Left = 4
        Top = 59
        Width = 92
        Height = 23
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Maestro de Clientes'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'CLIEID'#9'15'#9'Cliente'#9'F'
          'CLIEDES'#9'40'#9'Nombre'#9'F'
          'CLIERUC'#9'15'#9'Ruc'#9'F'
          'CLAUXID'#9'2'#9'Aux'#9'F')
        DataField = 'CLIEID'
        DataSource = DM1.dsHojaT
        LookupTable = DM1.cdsClie
        LookupField = 'CLIEID'
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        MaxLength = 8
        ParentFont = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
      end
      object dblcdClieRuc: TwwDBLookupComboDlg
        Left = 97
        Top = 59
        Width = 92
        Height = 23
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Registro Unico'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'CLIEID'#9'15'#9'CLIEID'#9'F'
          'CLIEDES'#9'40'#9'CLIEDES'#9'F'
          'CLIEABR'#9'15'#9'CLIEABR'#9'F'
          'CLIERUC'#9'15'#9'CLIERUC'#9'F')
        DataField = 'CLIERUC'
        DataSource = DM1.dsHojaT
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        Enabled = False
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
      end
      object edtClie: TEdit
        Left = 190
        Top = 59
        Width = 233
        Height = 23
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        MaxLength = 40
        ParentFont = False
        TabOrder = 8
      end
      object dbeCredito: TwwDBEdit
        Left = 2
        Top = 142
        Width = 71
        Height = 23
        AutoSize = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
      end
      object dbeNPedido: TwwDBEdit
        Left = 4
        Top = 19
        Width = 83
        Height = 23
        AutoSize = False
        DataField = 'PEDIDO'
        DataSource = DM1.dsHojaT
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit3: TwwDBEdit
        Left = 181
        Top = 142
        Width = 71
        Height = 23
        AutoSize = False
        DataField = 'PEDTOTMO'
        DataSource = DM1.dsHojaT
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        UnboundDataType = wwDefault
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
      end
      object dblcAlmacen: TwwDBLookupCombo
        Left = 438
        Top = 123
        Width = 72
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        DataField = 'ALMID'
        DataSource = DM1.dsHojaT
        Enabled = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object dblctMon: TwwDBLookupCombo
        Left = 178
        Top = 19
        Width = 49
        Height = 21
        DropDownAlignment = taLeftJustify
        DataField = 'TMONID'
        DataSource = DM1.dsHojaT
        TabOrder = 12
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object edtMoneda: TEdit
        Left = 230
        Top = 19
        Width = 117
        Height = 21
        TabOrder = 13
      end
      object dbeLinea: TwwDBEdit
        Left = 255
        Top = 142
        Width = 71
        Height = 23
        AutoSize = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
      end
      object dbeSaldo: TwwDBEdit
        Left = 82
        Top = 142
        Width = 71
        Height = 23
        AutoSize = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
      end
      object dbePorc: TwwDBEdit
        Left = 330
        Top = 142
        Width = 71
        Height = 23
        AutoSize = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
      end
      object dblcConPago: TwwDBLookupCombo
        Left = 7
        Top = 100
        Width = 46
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONDPID'#9'2'#9'Id'#9'F'
          'CONDPDES'#9'30'#9'Condición de Pago'#9'F')
        Options = [loColLines, loRowLines, loTitles]
        DropDownCount = 15
        Enabled = False
        TabOrder = 17
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcConPagoExit
      end
      object EdtCPEstablecida: TEdit
        Left = 56
        Top = 100
        Width = 265
        Height = 21
        Enabled = False
        TabOrder = 18
      end
      object dblcCia: TwwDBLookupCombo
        Left = 626
        Top = 18
        Width = 47
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIAID'#9'2'#9'Cia'#9'F'
          'CIAABR'#9'15'#9'Razón Social'#9'F')
        DataField = 'CIAID'
        DataSource = DM1.dsHojaT
        LookupTable = DM1.cdsCia
        LookupField = 'CIAID'
        Options = [loColLines, loRowLines, loTitles]
        MaxLength = 2
        ParentFont = False
        TabOrder = 19
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
      end
    end
  end
  object pnlPie: TPanel
    Left = 0
    Top = 454
    Width = 795
    Height = 51
    BevelInner = bvRaised
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 10207162
    Enabled = False
    TabOrder = 2
    object Label2: TLabel
      Left = 7
      Top = 33
      Width = 14
      Height = 8
      Caption = 'SOL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object bbtnCancela: TBitBtn
      Left = 480
      Top = 9
      Width = 32
      Height = 31
      Hint = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Z2bbtnGraba: TBitBtn
      Left = 547
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Grabar Solución'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = Z2bbtnGrabaClick
      Glyph.Data = {
        8A010000424D8A01000000000000760000002800000017000000170000000100
        04000000000014010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333303000077777777777770003300000078888888888880000300000
        0780088888888800003000000780088888888800003000000780088888888800
        0030000007888888888888000030000000000000000000000030000000000000
        0000000000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
        FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF00
        00300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFF
        FFFFFF0000300000FFFFFFFFFFFFFF0000300000FFFFFFFFFFFFFF0000300000
        FFFFFFFFFFFFFF07703000009999999999999907703000009999999999999900
        0030300099999999999999000330}
    end
    object Z2bbtnAcepta: TBitBtn
      Left = 580
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Aceptar Solución '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Z2bbtnAceptaClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
    object Z2bbtnImprime: TBitBtn
      Left = 614
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Imprimir Hoja Trabajo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Z2bbtnImprimeClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object pnlEstado: TPanel
      Left = 88
      Top = 9
      Width = 244
      Height = 32
      Color = 12904163
      TabOrder = 4
      object lblActivo: TLabel
        Left = 94
        Top = 7
        Width = 60
        Height = 19
        Caption = 'ACTIVO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lblAcepta: TLabel
        Left = 63
        Top = 7
        Width = 90
        Height = 19
        Caption = 'ACEPTADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 6
        Top = 7
        Width = 46
        Height = 16
        Caption = 'Estado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Z2bbtnClose: TBitBtn
      Left = 746
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Cerrar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      OnClick = Z2bbtnCloseClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      Margin = 2
      NumGlyphs = 2
    end
    object Z2bbtnCtaCte: TBitBtn
      Left = 647
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Cta Cte'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Z2bbtnCtaCteClick
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
    end
    object Z2bbtnHist: TBitBtn
      Left = 679
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Historial de Observaciones'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Z2bbtnHistClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
        FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
        FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
        FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
        00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
        55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
        5555777577775755555550FBFB0555555555575FFF7555555555570000755555
        5555557777555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object Z2bbtnOtros: TBitBtn
      Left = 711
      Top = 8
      Width = 32
      Height = 31
      Hint = 'Otros Clientes de este grupo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = Z2bbtnOtrosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object Z2bbtnNivel: TBitBtn
      Left = 514
      Top = 9
      Width = 30
      Height = 31
      Hint = 'Subir de nivel'
      Cancel = True
      TabOrder = 9
      OnClick = Z2bbtnNivelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
  end
  object pnlClientes: TPanel
    Left = 344
    Top = 250
    Width = 441
    Height = 169
    TabOrder = 5
    Visible = False
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 439
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Clientes del Grupo'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object bbtnCierra1: TBitBtn
      Left = 420
      Top = 3
      Width = 18
      Height = 18
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbtnCierra1Click
    end
    object dbgClientes: TwwDBGrid
      Left = 1
      Top = 21
      Width = 439
      Height = 147
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = dbgClientesDblClick
      IndicatorColor = icBlack
    end
  end
  object pnlInter: TPanel
    Left = 24
    Top = 123
    Width = 473
    Height = 266
    TabOrder = 4
    Visible = False
    object dbgCabHis: TwwDBGrid
      Left = 3
      Top = 20
      Width = 466
      Height = 129
      Selected.Strings = (
        'PEDIDO'#9'10'#9'Pedido'#9'F'
        'PEDFECHA'#9'10'#9'Fecha'#9'F'
        'HOJOBS'#9'40'#9'Observación'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsHistorialSolucion
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      IndicatorColor = icBlack
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 471
      Height = 20
      Align = alTop
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Historial de Observaciones'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object dbgDetHis: TwwDBGrid
      Left = 4
      Top = 150
      Width = 464
      Height = 90
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 2
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
    object bbtnCierra: TBitBtn
      Left = 456
      Top = 3
      Width = 16
      Height = 16
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbtnCierraClick
    end
    object dbeRObs: TwwDBRichEdit
      Left = 320
      Top = 72
      Width = 73
      Height = 33
      AutoURLDetect = False
      PrintJobName = 'Delphi 5'
      TabOrder = 4
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
        7C0000007B5C727466315C616E73695C616E7369637067313235325C64656666
        305C6465666C616E6731303235307B5C666F6E7474626C7B5C66305C666E696C
        204D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C7563
        315C706172645C66305C6673313620646265524F62735C7061720D0A7D0D0A00}
    end
    object Z2bbtnImprimeHistorial: TBitBtn
      Left = 434
      Top = 242
      Width = 26
      Height = 21
      Hint = 'Imprimir Historial de Observaciones'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Z2bbtnImprimeHistorialClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object DBRichEdit1: TDBRichEdit
    Left = 418
    Top = 144
    Width = 363
    Height = 74
    DataField = 'HOJOBSCXC1'
    DataSource = DM1.dsHojaT
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object pnlRegistro: TPanel
    Left = 561
    Top = 206
    Width = 228
    Height = 190
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 12904163
    TabOrder = 3
    Visible = False
    object Label21: TLabel
      Left = 193
      Top = 183
      Width = 66
      Height = 15
      Caption = 'Interrupción'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 7
      Top = 21
      Width = 45
      Height = 15
      Caption = 'Solución'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblStock: TLabel
      Left = 262
      Top = 72
      Width = 71
      Height = 15
      Caption = 'Stock Dispon.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblArticulo: TLabel
      Left = 196
      Top = 192
      Width = 42
      Height = 15
      Caption = 'Articulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblCantAceptada: TLabel
      Left = 281
      Top = 192
      Width = 60
      Height = 15
      Caption = 'Cant.Pedida'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblCantReservada: TLabel
      Left = 201
      Top = 168
      Width = 79
      Height = 15
      Caption = 'Cant.Reservada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblCantxAtender: TLabel
      Left = 344
      Top = 73
      Width = 70
      Height = 30
      Caption = 'Cant. Total a  Atender'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object pnlMonto: TPanel
      Left = 487
      Top = 20
      Width = 274
      Height = 54
      Color = 10207162
      TabOrder = 7
      Visible = False
      object Label12: TLabel
        Left = 11
        Top = 8
        Width = 92
        Height = 15
        Caption = 'Monto Autorizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 201
        Top = 8
        Width = 73
        Height = 15
        Caption = 'Forma de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeMonto: TwwDBEdit
        Left = 8
        Top = 25
        Width = 93
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdFPago: TwwDBLookupCombo
        Left = 114
        Top = 26
        Width = 44
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CCOMERID'#9'2'#9'Id'#9'F'
          'CCOMERDES'#9'30'#9'Forma Pago'#9'F')
        LookupTable = DM1.cdsCComer
        LookupField = 'CCOMERID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdFPagoExit
      end
      object edtDFPago: TEdit
        Left = 159
        Top = 25
        Width = 114
        Height = 23
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object bbtnRegOk: TBitBtn
      Left = 163
      Top = 152
      Width = 27
      Height = 25
      Hint = 'Confirma Ingreso de Solución'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnRegOkClick
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
    object bbtnRegCanc: TBitBtn
      Left = 192
      Top = 152
      Width = 27
      Height = 25
      Hint = 'Cancela Ingreso de Solución'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbtnRegCancClick
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
    object stTitulo: TStaticText
      Left = 4
      Top = 4
      Width = 216
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSingle
      Caption = 'Detalle de Hoja Trabajo'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object dblcSolucion: TwwDBLookupCombo
      Left = 7
      Top = 38
      Width = 46
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'SOLUID'#9'2'#9'Id'#9'F'
        'SOLUDES'#9'30'#9'Solución'#9'F')
      LookupTable = DM1.cdsSolu
      LookupField = 'SOLUID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      ShowMatchText = True
      OnExit = dblcSolucionExit
      OnNotInList = NotInList
    end
    object edtSolucion: TEdit
      Left = 54
      Top = 38
      Width = 163
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbeInterrupcion: TDBEdit
      Left = 192
      Top = 185
      Width = 33
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object edtInterrupcion: TEdit
      Left = 199
      Top = 249
      Width = 143
      Height = 23
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object dbeStock: TwwDBEdit
      Left = 261
      Top = 104
      Width = 69
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object dbeArticulo: TwwDBEdit
      Left = 197
      Top = 224
      Width = 80
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object dbeCantPedida: TwwDBEdit
      Left = 282
      Top = 224
      Width = 69
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object dbeCantReservada: TwwDBEdit
      Left = 362
      Top = 224
      Width = 69
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object dbeCantXAtender: TwwDBEdit
      Left = 343
      Top = 103
      Width = 69
      Height = 23
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Picture.PictureMask = '#[*#][.[#][#][#]]'
      TabOrder = 12
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
      OnExit = dbeCantXAtenderExit
    end
    object dbeOBS: TwwDBEdit
      Left = 8
      Top = 64
      Width = 209
      Height = 89
      AutoSize = False
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = True
    end
  end
  object ppRHojas: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    Template.FileName = 'C:\SOLExes\SOLFormatos\Fac\Incoresa\HojaTrabajo.rtm'
    UserName = 'Report'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRHojasPreviewFormCreate
    Left = 413
    Top = 423
    Version = '4.22 Pro'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 48419
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'HOJA DE TRABAJO N°'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 58208
        mmTop = 1588
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label301'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 164571
        mmTop = 5821
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Hora  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 164571
        mmTop = 10583
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Interrupciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 42598
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'F.Ing.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 159544
        mmTop = 42598
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169598
        mmTop = 42598
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'F.Sal.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 42598
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 189971
        mmTop = 42598
        mmWidth = 6085
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'PEDIDO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 95515
        mmTop = 1588
        mmWidth = 36513
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 5821
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176477
        mmTop = 10583
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Etapas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 42598
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Cliente       :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 23548
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 33602
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Localidad   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 13494
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Pedido       :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 18521
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 49742
        mmTop = 18521
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Forma Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 70379
        mmTop = 33602
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Línea Crédito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 28575
        mmWidth = 18256
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 794
        mmLeft = 794
        mmTop = 41275
        mmWidth = 196321
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.75
        mmHeight = 794
        mmLeft = 794
        mmTop = 47625
        mmWidth = 196321
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Monto :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 18521
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'ArtÍculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 116681
        mmTop = 42598
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'Ctd. Ped.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130969
        mmTop = 42598
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 85990
        mmTop = 42598
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Deficit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 147109
        mmTop = 42598
        mmWidth = 7938
        BandType = 0
      end
      object pplblLocal: TppLabel
        UserName = 'lblLocal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 13494
        mmWidth = 6615
        BandType = 0
      end
      object pplblPedido: TppLabel
        UserName = 'lblPedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 20902
        mmTop = 18521
        mmWidth = 23283
        BandType = 0
      end
      object pplblClie: TppLabel
        UserName = 'lblClie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20638
        mmTop = 23283
        mmWidth = 16404
        BandType = 0
      end
      object pplblClieDes: TppLabel
        UserName = 'lblClieDes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 37571
        mmTop = 23283
        mmWidth = 53975
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 60061
        mmTop = 18521
        mmWidth = 12965
        BandType = 0
      end
      object pplblMonto: TppLabel
        UserName = 'lblMonto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 143669
        mmTop = 18521
        mmWidth = 17198
        BandType = 0
      end
      object pplblLocalDes: TppLabel
        UserName = 'lblLocalDes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 28310
        mmTop = 13494
        mmWidth = 55298
        BandType = 0
      end
      object pplblLinea: TppLabel
        UserName = 'lblLinea'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 57150
        mmTop = 28840
        mmWidth = 18521
        BandType = 0
      end
      object pplblVend: TppLabel
        UserName = 'lblVend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17463
        mmTop = 33602
        mmWidth = 7938
        BandType = 0
      end
      object pplblFPago: TppLabel
        UserName = 'lblFPago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 90488
        mmTop = 33602
        mmWidth = 5027
        BandType = 0
      end
      object pplblFPagoDes: TppLabel
        UserName = 'lblFPagoDes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96044
        mmTop = 33602
        mmWidth = 43656
        BandType = 0
      end
      object pplblVendDes: TppLabel
        UserName = 'lblVendDes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 33602
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CLIECREMAX'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 21696
        mmTop = 28575
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Moneda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 76200
        mmTop = 18521
        mmWidth = 10848
        BandType = 0
      end
      object pplblMoneda: TppLabel
        UserName = 'lblMoneda'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 18521
        mmWidth = 42863
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'INTID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 23813
        mmTop = 0
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'INTDES'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 0
        mmWidth = 46831
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'HOJTFECREG'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'dd/mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157957
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'HOJTHORREG'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 168805
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'HOJTFECSOL'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'dd/mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178594
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'HOJTHORSOL'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 189707
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'SOLUFID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 75936
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'ARTID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        Alignment = taRightJustify
        DataField = 'HOJTCANTPE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Alignment = taRightJustify
        DataField = 'HOJTCANTDF'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'SOLUDES'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 0
        mmWidth = 32015
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 50006
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText6'
      BreakType = btCustomField
      KeepTogether = True
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'ETAPAID'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 0
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'ETAPADES'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 6615
          mmTop = 0
          mmWidth = 26194
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DBPipeline2'
    Left = 347
    Top = 423
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
      DataType = dtDate
      DisplayWidth = 10
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
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
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
      FieldLength = 1
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
      DataType = dtTime
      DisplayWidth = 10
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
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
  end
  object ppRepHistorial: TppReport
    AutoStop = False
    DataPipeline = dbplHistorialSolucion
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepHistorial'
    PrinterSetup.PaperName = 'Carta 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    Template.FileName = 'C:\SOLExes\SolFormatos\Cxc\Incoresa\HistorialPedidos.rtm'
    UserName = 'RepHistorial'
    DeviceType = 'Screen'
    Left = 8
    Top = 404
    Version = '4.22 Pro'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DISTRIBUIDORA INCORESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 0
        mmWidth = 44715
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 1058
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 6085
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'OBSERVACIONES ANTERIORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 2646
        mmWidth = 52652
        BandType = 0
      end
      object pplblHISCliente: TppLabel
        UserName = 'lblHISCliente'
        Caption = 'CLIENTE: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 59796
        mmTop = 6615
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taRightJustify
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14023
        mmTop = 15875
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Alignment = taRightJustify
        Caption = 'FECHA PED.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 15875
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taRightJustify
        Caption = 'FECHA SOL.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 15875
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Alignment = taRightJustify
        Caption = 'MONEDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 79640
        mmTop = 15875
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Alignment = taRightJustify
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 96573
        mmTop = 15875
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Alignment = taRightJustify
        Caption = 'OBSERVACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 147902
        mmTop = 15875
        mmWidth = 25135
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'PEDIDO'
        DataPipeline = dbplHistorialSolucion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'PEDFECHA'
        DataPipeline = dbplHistorialSolucion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'HOJOBS'
        DataPipeline = dbplHistorialSolucion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 3969
        mmLeft = 109538
        mmTop = 265
        mmWidth = 93663
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'PEDFECHA'
        DataPipeline = dbplHistorialSolucion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 59267
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    Position = poScreenCenter
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.SQLType = sqBDELocal
    Report = ppRepHistorial
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 64
    Top = 404
  end
  object dbplHistorialSolucion: TppDBPipeline
    DataSource = DM1.dsHistorialSolucion
    UserName = 'dbplHistorialSolucion'
    Left = 36
    Top = 404
  end
end
