object FDPNLBCO: TFDPNLBCO
  Left = 211
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Detalle de Planilla de Bancos'
  ClientHeight = 468
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDatosBanco: TPanel
    Left = 4
    Top = 4
    Width = 629
    Height = 109
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 54
      Height = 13
      Caption = 'N'#186' Registro'
    end
    object Label2: TLabel
      Left = 92
      Top = 12
      Width = 73
      Height = 13
      Caption = 'N'#186' Letra Banco'
    end
    object Label3: TLabel
      Left = 217
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Letra N'#186
    end
    object Label4: TLabel
      Left = 405
      Top = 12
      Width = 69
      Height = 13
      Caption = 'Fecha Emisi'#243'n'
    end
    object Label6: TLabel
      Left = 508
      Top = 29
      Width = 8
      Height = 13
      Caption = 'al'
    end
    object Label5: TLabel
      Left = 521
      Top = 11
      Width = 91
      Height = 13
      Caption = 'Fecha Vencimiento'
    end
    object Label11: TLabel
      Left = 9
      Top = 56
      Width = 88
      Height = 13
      Caption = 'Tipo de Operaci'#243'n'
    end
    object Label7: TLabel
      Left = 333
      Top = 11
      Width = 39
      Height = 13
      Caption = 'Moneda'
    end
    object Label8: TLabel
      Left = 228
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Ingresos'
    end
    object Label9: TLabel
      Left = 352
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Descargos'
    end
    object dbeREG: TwwDBEdit
      Left = 8
      Top = 29
      Width = 81
      Height = 21
      Color = clInfoBk
      DataField = 'DPLBCID'
      DataSource = DMCXC.dsDPLNBCO
      Enabled = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeNLETBCO: TwwDBEdit
      Left = 92
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeNLETBCOExit
    end
    object dblcLETRA: TwwDBLookupComboDlg
      Left = 216
      Top = 29
      Width = 114
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CCNODOC'#9'20'#9'N'#186' Letra'#9'F'
        'lkTMon'#9'20'#9'Moneda'#9'F')
      LookupTable = DMCXC.cdsLetras
      LookupField = 'CCNODOC'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcLETRAExit
    end
    object dtpINI: TwwDBDateTimePicker
      Left = 404
      Top = 29
      Width = 100
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'CCFEMIS'
      DataSource = DMCXC.dsDPLNBCO
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
      DisplayFormat = 'DD/MM/YYYY'
    end
    object dtpFIN: TwwDBDateTimePicker
      Left = 521
      Top = 29
      Width = 100
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'CCFVCMTO'
      DataSource = DMCXC.dsDPLNBCO
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
      DisplayFormat = 'DD/MM/YYYY'
    end
    object dblcTOPE: TwwDBLookupCombo
      Left = 9
      Top = 73
      Width = 60
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TOPID'#9'2'#9'C'#243'digo'#9'F'
        'TOPDES'#9'40'#9'Descripci'#243'n'#9'F'
        'TOPABR'#9'15'#9'Abreviatura'#9'F')
      DataField = 'TOPID'
      DataSource = DMCXC.dsDPLNBCO
      LookupField = 'TOPID'
      Options = [loColLines, loTitles]
      Enabled = False
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnNotInList = dblcTOPENotInList
    end
    object dbeTOPE: TwwDBEdit
      Left = 71
      Top = 73
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeMON: TwwDBEdit
      Left = 332
      Top = 29
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'TMONID'
      DataSource = DMCXC.dsDPLNBCO
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeINGR: TwwDBEdit
      Left = 227
      Top = 73
      Width = 121
      Height = 21
      DataField = 'DPLBCINGRESOS'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDESCA: TwwDBEdit
      Left = 351
      Top = 73
      Width = 121
      Height = 21
      DataField = 'DPLBCINDESCAR'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlUbiSit: TPanel
    Left = 4
    Top = 117
    Width = 629
    Height = 112
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label10: TLabel
      Left = 10
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label12: TLabel
      Left = 471
      Top = 61
      Width = 68
      Height = 13
      Caption = 'Importe Actual'
    end
    object Label13: TLabel
      Left = 10
      Top = 61
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object Label14: TLabel
      Left = 241
      Top = 61
      Width = 44
      Height = 13
      Caption = 'Situaci'#243'n'
    end
    object dbeCLIEDES: TwwDBEdit
      Left = 102
      Top = 27
      Width = 345
      Height = 21
      Color = clBtnFace
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCLIEID: TwwDBEdit
      Left = 10
      Top = 27
      Width = 90
      Height = 21
      Color = clBtnFace
      DataField = 'CLIEID'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeImpAct: TwwDBEdit
      Left = 471
      Top = 77
      Width = 101
      Height = 21
      Color = clBtnFace
      DataField = 'IMPOR'
      DataSource = DMCXC.dsDPLNBCO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUBICAID: TwwDBEdit
      Left = 10
      Top = 77
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'UBIID'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUBICADES: TwwDBEdit
      Left = 62
      Top = 77
      Width = 175
      Height = 21
      Color = clBtnFace
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSITUAID: TwwDBEdit
      Left = 241
      Top = 77
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'SITID'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSITUADES: TwwDBEdit
      Left = 293
      Top = 77
      Width = 175
      Height = 21
      Color = clBtnFace
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object grbIntereses: TGroupBox
    Left = 4
    Top = 232
    Width = 628
    Height = 62
    Caption = 'Intereses'
    TabOrder = 2
    object Label15: TLabel
      Left = 7
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Moratorio'
    end
    object Label16: TLabel
      Left = 224
      Top = 16
      Width = 70
      Height = 13
      Caption = 'Compensatorio'
    end
    object Label17: TLabel
      Left = 436
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Renovaci'#243'n'
    end
    object dbeIntMOR: TwwDBEdit
      Left = 6
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCINTMORA'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeIntCOM: TwwDBEdit
      Left = 224
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCINTCOMP'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeIntREN: TwwDBEdit
      Left = 435
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCINTRENO'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object grbComisiones: TGroupBox
    Left = 4
    Top = 298
    Width = 629
    Height = 62
    Caption = 'Comisiones'
    TabOrder = 3
    object Label18: TLabel
      Left = 7
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Cobranza'
    end
    object Label19: TLabel
      Left = 224
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Protesto'
    end
    object Label20: TLabel
      Left = 436
      Top = 16
      Width = 42
      Height = 13
      Caption = 'T/Fondo'
    end
    object dbeComCOB: TwwDBEdit
      Left = 6
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCCOBRANZA'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeComPRO: TwwDBEdit
      Left = 224
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCPROTESTO'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeComTFO: TwwDBEdit
      Left = 435
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCTFONDO'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object grbOtros: TGroupBox
    Left = 4
    Top = 365
    Width = 629
    Height = 62
    Caption = 'Otros'
    TabOrder = 4
    object Label21: TLabel
      Left = 7
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Intereses'
    end
    object Label22: TLabel
      Left = 224
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Gastos'
    end
    object Label23: TLabel
      Left = 436
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Otros'
    end
    object dbeOtINTR: TwwDBEdit
      Left = 6
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCINTERESES'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeOtGAS: TwwDBEdit
      Left = 224
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCGASTOS'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeOtOTR: TwwDBEdit
      Left = 435
      Top = 32
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DPLBCOTROS'
      DataSource = DMCXC.dsDPLNBCO
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Z2bbtnCancela: TBitBtn
    Left = 600
    Top = 433
    Width = 32
    Height = 32
    Cancel = True
    TabOrder = 6
    OnClick = Z2bbtnCancelaClick
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
  object Z2bbtnAceptar: TBitBtn
    Left = 566
    Top = 433
    Width = 32
    Height = 32
    TabOrder = 5
    OnClick = Z2bbtnAceptarClick
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
