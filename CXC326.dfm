object frmPleDatosCliente: TfrmPleDatosCliente
  Left = 428
  Top = 124
  Width = 430
  Height = 375
  BorderIcons = []
  Caption = 'Modificar documentos del Cliente'
  Color = 14869218
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 146
    Width = 100
    Height = 13
    Caption = 'Actualizar Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 7
    Top = 162
    Width = 57
    Height = 13
    Caption = 'Tipo Auxiliar'
  end
  object Label2: TLabel
    Left = 288
    Top = 162
    Width = 68
    Height = 13
    Caption = 'C'#243'digo Cliente'
  end
  object Label3: TLabel
    Left = 7
    Top = 246
    Width = 63
    Height = 13
    Caption = 'Raz'#243'n Social'
  end
  object lblTDocIdentidad: TLabel
    Left = 5
    Top = 204
    Width = 91
    Height = 13
    Caption = 'Tipo Doc Identidad'
  end
  object lblDocIdentidad: TLabel
    Left = 287
    Top = 204
    Width = 82
    Height = 13
    Caption = 'N'#186' Doc Identidad'
  end
  object Label7: TLabel
    Left = 8
    Top = 3
    Width = 123
    Height = 13
    Caption = 'Datos del Documento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCia: TLabel
    Left = 8
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Compa'#241#237'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblTDoc: TLabel
    Left = 229
    Top = 16
    Width = 94
    Height = 13
    Caption = 'Tipo de Documento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblSerie: TLabel
    Left = 9
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Serie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblNoDoc: TLabel
    Left = 65
    Top = 56
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 134
    Top = 56
    Width = 69
    Height = 13
    Caption = 'Fecha Emisi'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 230
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Cl.Aux.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblProv: TLabel
    Left = 280
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblProvRuc: TLabel
    Left = 8
    Top = 95
    Width = 23
    Height = 13
    Caption = 'RUC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblProvNom: TLabel
    Left = 133
    Top = 95
    Width = 63
    Height = 13
    Caption = 'Raz'#243'n Social'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object dblcTipoAuxiliar: TwwDBLookupCombo
    Left = 8
    Top = 178
    Width = 44
    Height = 23
    TabStop = False
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Options = [loColLines, loRowLines, loTitles]
    MaxLength = 2
    ParentFont = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = dblcTipoAuxiliarExit
  end
  object edtTipoAuxiliar: TEdit
    Left = 52
    Top = 178
    Width = 229
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
    TabOrder = 1
  end
  object dblcCodigoCliente: TwwDBLookupComboDlg
    Left = 288
    Top = 178
    Width = 113
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
    UserButton1Caption = 'Cliente Nuevo'
    SearchDelay = 2
    Selected.Strings = (
      'CLIEID'#9'15'#9'Cliente'#9'F'
      'CLIEDES'#9'40'#9'Nombre'#9'F'
      'CLIERUC'#9'15'#9'R.U.C.'#9'F'
      'CLIEDNI'#9'15'#9'D.N.I.'#9'F'
      'CLAUXID'#9'2'#9'Aux'#9'F')
    DataField = 'CLIEID'
    LookupField = 'CLIEID'
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    MaxLength = 15
    ParentFont = False
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = True
    OnExit = dblcCodigoClienteExit
    OnKeyPress = FormKeyPress
  end
  object edtCliente: TwwDBEdit
    Left = 8
    Top = 262
    Width = 393
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'CLIEDES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnKeyPress = FormKeyPress
  end
  object dblcTipoDocCliente: TwwDBLookupCombo
    Left = 8
    Top = 220
    Width = 44
    Height = 21
    DropDownAlignment = taLeftJustify
    Options = [loColLines, loRowLines, loTitles]
    DropDownWidth = 150
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnExit = dblcTipoDocClienteExit
    OnKeyPress = FormKeyPress
  end
  object edtTipoDocCliente: TEdit
    Left = 52
    Top = 220
    Width = 229
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
  object edtNumDocCliente: TwwDBEdit
    Left = 287
    Top = 220
    Width = 114
    Height = 21
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnKeyPress = FormKeyPress
  end
  object bbtnRegOk: TBitBtn
    Left = 338
    Top = 295
    Width = 30
    Height = 28
    Hint = 'Confirma Ingreso de Articulo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
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
  object bbtnCanFact: TBitBtn
    Left = 371
    Top = 295
    Width = 30
    Height = 28
    Hint = 'Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = bbtnCanFactClick
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 135
    Width = 393
    Height = 9
    TabOrder = 9
  end
  object dblcCompania: TwwDBLookupCombo
    Left = 8
    Top = 31
    Width = 42
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CIAID'#9'2'#9'Cia'#9'F'
      'CIAABR'#9'15'#9'Raz'#243'n Social'#9'F')
    LookupField = 'CIAID'
    Options = [loColLines, loRowLines, loTitles]
    Enabled = False
    MaxLength = 2
    ParentFont = False
    TabOrder = 10
    AutoDropDown = True
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnExit = dblcCompaniaExit
  end
  object edtCompania: TEdit
    Left = 49
    Top = 31
    Width = 170
    Height = 22
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object dblcTipoDocumento: TwwDBLookupCombo
    Left = 229
    Top = 31
    Width = 42
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
    LookupField = 'DOCID'
    Options = [loColLines, loRowLines, loTitles]
    Style = csDropDownList
    MaxLength = 2
    ParentFont = False
    TabOrder = 12
    AutoDropDown = True
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnExit = dblcTipoDocumentoExit
  end
  object edtTipoDocumento: TEdit
    Left = 272
    Top = 31
    Width = 129
    Height = 22
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object edtNumeroDoc: TwwDBEdit
    Left = 63
    Top = 70
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 14
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dtpFemision: TwwDBDateTimePicker
    Left = 133
    Top = 70
    Width = 87
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    Enabled = False
    ShowButton = True
    TabOrder = 15
  end
  object dblcTipoAuxDoc: TwwDBLookupCombo
    Left = 229
    Top = 70
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CLAUXID'#9'2'#9'Id.'#9'F'
      'CLAUXDES'#9'30'#9'Clase Auxiliar'#9'F')
    DataField = 'CLAUXID'
    LookupField = 'CLAUXID'
    Options = [loColLines, loRowLines, loTitles]
    Enabled = False
    TabOrder = 16
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object dblcdCodClienteDoc: TwwDBLookupComboDlg
    Left = 280
    Top = 70
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Maestro de Clientes'
    MaxWidth = 0
    MaxHeight = 209
    Selected.Strings = (
      'CLIEID'#9'8'#9'Id.'#9'F'
      'CLIEDES'#9'40'#9'Cliente'#9'F'
      'CLIERUC'#9'10'#9'R.U.C.'#9'F')
    DataField = 'CLIEID'
    LookupField = 'CLIEID'
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    Enabled = False
    MaxLength = 15
    ParentFont = False
    TabOrder = 17
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
  end
  object edtRazonSocialDoc: TwwDBEdit
    Left = 135
    Top = 110
    Width = 250
    Height = 21
    Enabled = False
    TabOrder = 18
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object edtSerie: TwwDBEdit
    Left = 8
    Top = 70
    Width = 48
    Height = 21
    Enabled = False
    TabOrder = 19
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object edtClieRuc: TwwDBEdit
    Left = 7
    Top = 110
    Width = 106
    Height = 21
    Enabled = False
    TabOrder = 20
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object btnCopiaRuc: TBitBtn
    Left = 114
    Top = 111
    Width = 20
    Height = 19
    Hint = 'Pasar a Exonerado'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = btnCopiaRucClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337F33333333333333033333333333333373F333333333333090333
      33333333337F7F33333333333309033333333333337373F33333333330999033
      3333333337F337F33333333330999033333333333733373F3333333309999903
      333333337F33337F33333333099999033333333373333373F333333099999990
      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333300033333333333337773333333}
    NumGlyphs = 2
  end
  object btnCopiaRazonSocial: TBitBtn
    Left = 386
    Top = 111
    Width = 20
    Height = 19
    Hint = 'Pasar a Exonerado'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = btnCopiaRazonSocialClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337F33333333333333033333333333333373F333333333333090333
      33333333337F7F33333333333309033333333333337373F33333333330999033
      3333333337F337F33333333330999033333333333733373F3333333309999903
      333333337F33337F33333333099999033333333373333373F333333099999990
      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333300033333333333337773333333}
    NumGlyphs = 2
  end
end
