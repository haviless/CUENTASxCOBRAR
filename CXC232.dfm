object FNLetras: TFNLetras
  Left = 219
  Top = 180
  BorderStyle = bsDialog
  Caption = 'Din'#225'mica Contable de Letras'
  ClientHeight = 321
  ClientWidth = 761
  Color = clBtnFace
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 97
    Align = alTop
    Color = 14869218
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
    end
    object Label2: TLabel
      Left = 284
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object Label3: TLabel
      Left = 444
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Situaci'#243'n'
    end
    object Label4: TLabel
      Left = 28
      Top = 49
      Width = 52
      Height = 13
      Caption = 'T. Moneda'
    end
    object Label5: TLabel
      Left = 204
      Top = 49
      Width = 25
      Height = 13
      Caption = 'Zona'
    end
    object Label11: TLabel
      Left = 368
      Top = 49
      Width = 66
      Height = 13
      Caption = 'Tipo de Diario'
    end
    object dblcCIA: TwwDBLookupCombo
      Left = 28
      Top = 24
      Width = 37
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'Compa'#241#237'a'#9'F'
        'CIADES'#9'40'#9'Descripci'#243'n'#9'F'
        'CIAABR'#9'15'#9'Abreviatura'#9'F')
      LookupTable = DMCXC.cdsCia
      LookupField = 'CIAID'
      Options = [loTitles]
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcCIAExit
      OnNotInList = NotInList
    end
    object edtCIA: TEdit
      Left = 68
      Top = 24
      Width = 201
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object dblcUbicacion: TwwDBLookupCombo
      Left = 284
      Top = 24
      Width = 45
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UBICAID'#9'2'#9'Ubicaci'#243'n'#9'F'
        'UBICADES'#9'40'#9'Descripci'#243'n'#9'F'
        'UBICAABR'#9'10'#9'Abreviatura'#9'F')
      LookupTable = DMCXC.cdsUbica
      LookupField = 'UBICAID'
      Options = [loTitles]
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcUbicacionExit
      OnNotInList = NotInList
    end
    object dblcSituacion: TwwDBLookupCombo
      Left = 444
      Top = 24
      Width = 45
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'SITUAID'#9'2'#9'Situaci'#243'n'#9'F'
        'SITUADES'#9'40'#9'Descripci'#243'n'#9'F'
        'SITUAABR'#9'10'#9'Abreviatura'#9'F')
      LookupTable = DMCXC.cdsSitua
      LookupField = 'SITUAID'
      Options = [loTitles]
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcSituacionExit
      OnNotInList = NotInList
    end
    object edtUbicacion: TEdit
      Left = 332
      Top = 24
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtSituacion: TEdit
      Left = 496
      Top = 24
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object dblcTMon: TwwDBLookupCombo
      Left = 28
      Top = 65
      Width = 37
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'2'#9'Moneda'#9'F'
        'TMONDES'#9'30'#9'Descripci'#243'n'#9'F'
        'TMONABR'#9'8'#9'Abreviatura'#9'F')
      LookupTable = DMCXC.cdsTMon
      LookupField = 'TMONID'
      Options = [loTitles]
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcTMonExit
      OnNotInList = NotInList
    end
    object edtTMon: TEdit
      Left = 72
      Top = 65
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object dblcZona: TwwDBLookupCombo
      Left = 200
      Top = 65
      Width = 37
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TVTAID'#9'2'#9'Zona'#9'F'
        'TVTADES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsZona
      LookupField = 'TVTAID'
      Options = [loTitles]
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcZonaExit
      OnNotInList = NotInList
    end
    object edtZona: TEdit
      Left = 240
      Top = 65
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object z2bbtNuevo: TBitBtn
      Left = 572
      Top = 60
      Width = 30
      Height = 30
      Hint = 'Nuevo'
      TabOrder = 13
      Visible = False
      OnClick = z2bbtNuevoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object z2bbtOk: TBitBtn
      Left = 604
      Top = 60
      Width = 30
      Height = 30
      Hint = 'Aceptar'
      TabOrder = 12
      OnClick = z2bbtOkClick
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
    object z2bbtCancelar: TBitBtn
      Left = 636
      Top = 60
      Width = 30
      Height = 30
      Hint = 'Cancelar'
      Cancel = True
      ModalResult = 2
      TabOrder = 14
      OnClick = z2bbtCancelarClick
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
    object dblcdTDiario: TwwDBLookupCombo
      Left = 368
      Top = 65
      Width = 49
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TDIARID'#9'2'#9'T. Diario'#9'F'
        'TDIARDES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsTDiario
      LookupField = 'TDIARID'
      Options = [loTitles]
      TabOrder = 10
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcdTDiarioExit
      OnNotInList = NotInList
    end
    object edtTDiario: TEdit
      Left = 424
      Top = 65
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 11
    end
  end
  object pnlDetalle: TPanel
    Left = 0
    Top = 97
    Width = 761
    Height = 224
    Align = alClient
    TabOrder = 1
    object dbgAsiento: TwwDBGrid
      Left = 1
      Top = 1
      Width = 759
      Height = 222
      TabStop = False
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = DMCXC.dsNLetras
      KeyOptions = [dgEnterToTab]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgAsientoDblClick
      OnKeyDown = dbgAsientoKeyDown
      object dbgAsientoIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 25
        Height = 30
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = dbgAsientoIButtonClick
      end
    end
  end
  object pnlRegitro: TPanel
    Left = 224
    Top = 120
    Width = 265
    Height = 169
    Color = 14869218
    TabOrder = 2
    Visible = False
    object Label7: TLabel
      Left = 20
      Top = 36
      Width = 64
      Height = 13
      Caption = 'Cta. Contable'
    end
    object Label9: TLabel
      Left = 188
      Top = 36
      Width = 60
      Height = 13
      Caption = 'Debe/Haber'
    end
    object Label10: TLabel
      Left = 24
      Top = 84
      Width = 78
      Height = 13
      Caption = 'Origen / Destino'
    end
    object Label12: TLabel
      Left = 115
      Top = 84
      Width = 42
      Height = 13
      Caption = 'Relaci'#243'n'
    end
    object Label13: TLabel
      Left = 185
      Top = 84
      Width = 29
      Height = 13
      Caption = 'Orden'
    end
    object dblcdCuenta: TwwDBLookupComboDlg
      Left = 20
      Top = 52
      Width = 133
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Plan de Cuentas'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CUENTAID'#9'20'#9'Cuenta'#9'F'
        'CTADES'#9'40'#9'Descripci'#243'n'#9'F'
        'CTAABR'#9'15'#9'Abreviatura'#9'F')
      DataField = 'CUENTAID'
      DataSource = DMCXC.dsNLetras
      LookupTable = DMCXC.cdsPlanCta
      LookupField = 'CUENTAID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdCuentaExit
    end
    object dblcDebeHabe: TwwDBLookupCombo
      Left = 188
      Top = 52
      Width = 45
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'3'#9'Debe/Habe'#9'F'
        'DESCRIP'#9'15'#9'Descripci'#243'n'#9'F')
      DataField = 'DH'
      DataSource = DMCXC.dsNLetras
      LookupTable = DMCXC.cdsDebeHabe
      LookupField = 'ID'
      Options = [loTitles]
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcDebeHabeExit
      OnNotInList = NotInList
    end
    object dblcdTipoDest: TwwDBLookupCombo
      Left = 24
      Top = 100
      Width = 49
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'TIPDEST'
      DataSource = DMCXC.dsNLetras
      LookupTable = DMCXC.cdsOrigenDestino
      Options = [loTitles]
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnNotInList = NotInList
    end
    object dblcRelacion: TwwDBLookupCombo
      Left = 112
      Top = 100
      Width = 57
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'TIPOREL'
      DataSource = DMCXC.dsNLetras
      LookupTable = DMCXC.cdsRelacion
      Options = [loTitles]
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnNotInList = NotInList
    end
    object dbeOrden: TwwDBSpinEdit
      Left = 184
      Top = 100
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = 1.000000000000000000
      DataField = 'ORDEN'
      DataSource = DMCXC.dsNLetras
      TabOrder = 5
      UnboundDataType = wwDefault
    end
    object bbtnROk: TBitBtn
      Left = 192
      Top = 136
      Width = 33
      Height = 25
      TabOrder = 6
      OnClick = bbtnROkClick
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
    object bbtnRCancel: TBitBtn
      Left = 224
      Top = 136
      Width = 33
      Height = 25
      TabOrder = 7
      OnClick = bbtnRCancelClick
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
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 263
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Registro de Cuentas'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
end
