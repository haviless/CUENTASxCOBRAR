object FDinaDocs: TFDinaDocs
  Left = 232
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Din'#225'mica Contable de Documentos por Cobrar'
  ClientHeight = 398
  ClientWidth = 688
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
    Width = 688
    Height = 174
    Align = alTop
    Color = 14869218
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 5
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
    end
    object Label4: TLabel
      Left = 30
      Top = 46
      Width = 52
      Height = 13
      Caption = 'T. Moneda'
    end
    object Label6: TLabel
      Left = 260
      Top = 5
      Width = 71
      Height = 13
      Caption = 'Concepto Cab.'
    end
    object Label8: TLabel
      Left = 579
      Top = 5
      Width = 59
      Height = 13
      Caption = 'Cuenta Cab.'
    end
    object lblTDoc: TLabel
      Left = 201
      Top = 46
      Width = 55
      Height = 13
      Caption = 'Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 417
      Top = 46
      Width = 80
      Height = 13
      Caption = 'Sector Comercial'
    end
    object Label5: TLabel
      Left = 30
      Top = 87
      Width = 63
      Height = 13
      Caption = 'Tipo Registro'
    end
    object Label9: TLabel
      Left = 199
      Top = 87
      Width = 60
      Height = 13
      Caption = 'Debe/Haber'
    end
    object Label20: TLabel
      Left = 30
      Top = 126
      Width = 105
      Height = 15
      Caption = 'Condici'#243'n Comercial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dblcCIA: TwwDBLookupCombo
      Left = 28
      Top = 20
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
      Left = 66
      Top = 20
      Width = 180
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object dblcTMon: TwwDBLookupCombo
      Left = 28
      Top = 61
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'2'#9'Moneda'#9'F'
        'TMONDES'#9'30'#9'Descripci'#243'n'#9'F'
        'TMONABR'#9'8'#9'Abreviatura'#9'F')
      LookupTable = DMCXC.cdsTMon
      LookupField = 'TMONID'
      Options = [loTitles]
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcTMonExit
      OnNotInList = NotInList
    end
    object edtTMon: TEdit
      Left = 66
      Top = 61
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object dblcZona: TwwDBLookupCombo
      Left = 414
      Top = 61
      Width = 37
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TVTAID'#9'2'#9'Zona'#9'F'
        'TVTADES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsZona
      LookupField = 'TVTAID'
      Options = [loTitles]
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcZonaExit
      OnNotInList = NotInList
    end
    object edtZona: TEdit
      Left = 452
      Top = 61
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object z2bbtNuevo: TBitBtn
      Left = 581
      Top = 133
      Width = 30
      Height = 30
      Hint = 'Nuevo'
      TabOrder = 23
      Visible = False
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
      Left = 613
      Top = 133
      Width = 30
      Height = 30
      Hint = 'Aceptar'
      TabOrder = 24
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
      Left = 645
      Top = 133
      Width = 30
      Height = 30
      Hint = 'Cancelar'
      Cancel = True
      ModalResult = 2
      TabOrder = 25
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
    object dblcdConceptoCab: TwwDBLookupComboDlg
      Left = 257
      Top = 20
      Width = 77
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Concepto de Cabecera'
      MaxWidth = 0
      MaxHeight = 209
      LookupField = 'CPTOID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdConceptoCabExit
    end
    object edtConceptoCab: TEdit
      Left = 335
      Top = 20
      Width = 231
      Height = 21
      TabOrder = 3
    end
    object dblcdCuentaCab: TwwDBLookupComboDlg
      Left = 577
      Top = 20
      Width = 89
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dblcTDoc: TwwDBLookupCombo
      Left = 199
      Top = 61
      Width = 37
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DOCID'#9'2'#9'Doc.'#9'F'
        'DOCDES'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsTDoc
      LookupField = 'DOCID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTDocExit
      OnNotInList = NotInList
    end
    object edtTDoc: TEdit
      Left = 237
      Top = 61
      Width = 163
      Height = 22
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dblcDebeHabe: TwwDBLookupCombo
      Left = 198
      Top = 102
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'3'#9'Debe/Habe'#9'F'
        'DESCRIP'#9'15'#9'Descripci'#243'n'#9'F')
      LookupField = 'ID'
      Options = [loTitles]
      TabOrder = 13
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcDebeHabeExit
      OnNotInList = NotInList
    end
    object dblcTReg: TwwDBLookupCombo
      Left = 28
      Top = 101
      Width = 37
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = DMCXC.cdsTipReg
      LookupField = 'TREGID'
      Options = [loTitles]
      TabOrder = 11
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcTRegExit
      OnNotInList = NotInList
    end
    object chCptoVta: TCheckBox
      Left = 336
      Top = 94
      Width = 97
      Height = 17
      Caption = 'Cpto. de Ventas'
      TabOrder = 15
    end
    object chDevAlm: TCheckBox
      Left = 336
      Top = 124
      Width = 105
      Height = 17
      Caption = 'Dev. de Almac'#233'n'
      TabOrder = 17
    end
    object chGtoLet: TCheckBox
      Left = 458
      Top = 94
      Width = 105
      Height = 17
      Caption = 'Gasto de Letras'
      TabOrder = 18
    end
    object chCptAnt: TCheckBox
      Left = 336
      Top = 109
      Width = 105
      Height = 17
      Caption = 'Cpto. de Anticipo'
      TabOrder = 16
    end
    object chRenLet: TCheckBox
      Left = 458
      Top = 109
      Width = 105
      Height = 17
      Caption = 'Renov. Letras'
      TabOrder = 19
    end
    object chRefLet: TCheckBox
      Left = 458
      Top = 124
      Width = 105
      Height = 17
      Caption = 'Refin. Letras'
      TabOrder = 20
    end
    object chProLet: TCheckBox
      Left = 458
      Top = 139
      Width = 105
      Height = 17
      Caption = 'Prot. Letras'
      TabOrder = 21
    end
    object edtTRegDes: TEdit
      Left = 66
      Top = 101
      Width = 120
      Height = 21
      Enabled = False
      TabOrder = 12
    end
    object dblcFPago: TwwDBLookupCombo
      Left = 28
      Top = 142
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
        'DCCOMDES'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsQry12
      LookupField = 'CCOMERID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 14
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcFPagoExit
    end
    object edtFPago: TEdit
      Left = 76
      Top = 142
      Width = 237
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
      TabOrder = 22
    end
  end
  object pnlDetalle: TPanel
    Left = 0
    Top = 174
    Width = 688
    Height = 224
    Align = alClient
    TabOrder = 1
    object dbgAsiento: TwwDBGrid
      Left = 1
      Top = 1
      Width = 686
      Height = 222
      TabStop = False
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 7566265
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = clWhite
      KeyOptions = [dgEnterToTab]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgAsientoDblClick
      OnKeyDown = dbgAsientoKeyDown
      FooterColor = 7566265
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
    Left = 141
    Top = 221
    Width = 409
    Height = 133
    Color = 14869218
    TabOrder = 2
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 60
      Width = 64
      Height = 13
      Caption = 'Cta. Contable'
    end
    object Label13: TLabel
      Left = 305
      Top = 60
      Width = 29
      Height = 13
      Caption = 'Orden'
    end
    object Label2: TLabel
      Left = 16
      Top = 23
      Width = 63
      Height = 13
      Caption = 'Tipo Registro'
    end
    object Label3: TLabel
      Left = 178
      Top = 23
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label11: TLabel
      Left = 133
      Top = 60
      Width = 60
      Height = 13
      Caption = 'Debe/Haber'
    end
    object dblcdCuentaDet: TwwDBLookupComboDlg
      Left = 16
      Top = 76
      Width = 113
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
      LookupField = 'CUENTAID'
      Enabled = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dbeOrden: TwwDBSpinEdit
      Left = 304
      Top = 76
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 8
      UnboundDataType = wwDefault
      OnExit = dbeOrdenExit
    end
    object bbtnROk: TBitBtn
      Left = 332
      Top = 100
      Width = 33
      Height = 25
      TabOrder = 9
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
      Left = 364
      Top = 100
      Width = 33
      Height = 25
      TabOrder = 10
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
      Width = 407
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Registro de Cuentas'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object dblcTReg2: TwwDBLookupCombo
      Left = 16
      Top = 37
      Width = 37
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TREGID'#9'2'#9'Tipo Registro'#9'F'
        'TREGDES'#9'20'#9'Descripci'#243'n'#9'F'
        'TIPDET'#9'2'#9'Tip. Det.'#9'F')
      LookupTable = DMCXC.cdsTipReg
      LookupField = 'TREGID'
      Options = [loTitles]
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcTReg2Exit
      OnNotInList = NotInList
    end
    object edtTRegDes2: TEdit
      Left = 56
      Top = 37
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object dblcdConceptoDet: TwwDBLookupComboDlg
      Left = 180
      Top = 37
      Width = 93
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CPTOID'#9'15'#9'CPTOID'#9'F'
        'CPTODES'#9'40'#9'Descripci'#243'n'#9'F'
        'CUENTAID'#9'20'#9'Cuenta'#9'F')
      LookupTable = DMCXC.cdsCpto1
      LookupField = 'CPTOID'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdConceptoDetExit
    end
    object edtConceptoDet: TEdit
      Left = 276
      Top = 37
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object dblcDebeHabe2: TwwDBLookupCombo
      Left = 133
      Top = 76
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ID'#9'3'#9'Debe/Habe'#9'F'
        'DESCRIP'#9'15'#9'Descripci'#243'n'#9'F')
      LookupField = 'ID'
      Options = [loTitles]
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcDebeHabe2Exit
      OnNotInList = NotInList
    end
    object dbeTasa: TwwDBEdit
      Left = 180
      Top = 76
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
end
