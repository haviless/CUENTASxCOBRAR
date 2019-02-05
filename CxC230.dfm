object FEnvioBancos: TFEnvioBancos
  Left = 118
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Envio a Bancos'
  ClientHeight = 504
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 7
    Top = 60
    Width = 777
    Height = 383
    BorderStyle = bsSingle
    TabOrder = 2
    object dbgLetras: TwwDBGrid
      Left = 4
      Top = 4
      Width = 765
      Height = 373
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsDetOEnvioE
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnKeyDown = dbgLetrasKeyDown
      object dbgLetrasIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
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
        OnClick = dbgLetrasIButtonClick
      end
    end
  end
  object pnlCab: TPanel
    Left = 7
    Top = 3
    Width = 777
    Height = 54
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 137
      Top = 7
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label2: TLabel
      Left = 313
      Top = 7
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object Label4: TLabel
      Left = 494
      Top = 7
      Width = 41
      Height = 13
      Caption = 'Cta. Cte.'
    end
    object Label5: TLabel
      Left = 224
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object lblCia: TLabel
      Left = 6
      Top = 7
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 631
      Top = 7
      Width = 44
      Height = 13
      Caption = 'Situaci'#243'n'
    end
    object dblcdNEnvio: TwwDBLookupComboDlg
      Left = 137
      Top = 21
      Width = 85
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'OENUM'#9'6'#9'O. Env'#237'o'
        'UBICAID'#9'2'#9'Banco'
        'UBICAABR'#9'10'#9'Abr.'
        'CCBCOID'#9'20'#9'Cta. Cte.'
        'CCBCOABR'#9'10'#9'Abr.'
        'OEMTOLOC'#9'10'#9'Mto. Local'
        'OEMTOEXT'#9'10'#9'Mto. Ext.'
        'OEFECHA'#9'10'#9'Fecha'
        'OEFMTBCO'#9'10'#9'N. Formato'
        'OENUMLETRAS'#9'10'#9'Cantidad')
      LookupField = 'OENUM'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnEnter = dblcdNEnvioEnter
      OnExit = dblcdNEnvioExit
    end
    object dblcUbicacion: TwwDBLookupCombo
      Left = 313
      Top = 21
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UBICAID'#9'2'#9'Id'#9'F'
        'UBICADES'#9'40'#9'Ubicaci'#243'n'#9'F'
        'UBICAABR'#9'10'#9'Abr.'#9'F')
      LookupTable = DMCXC.cdsUbica
      LookupField = 'UBICAID'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnChange = dblcUbicacionChange
      OnEnter = dblcUbicacionEnter
      OnExit = dblcUbicacionExit
    end
    object dblcCtaCte: TwwDBLookupCombo
      Left = 493
      Top = 21
      Width = 126
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CCBCOID'#9'15'#9'Id'#9'F'
        'CCBCODES'#9'30'#9'Cuenta Corriente'#9'F'
        'CCBCOABR'#9'10'#9'Abr'#9'F')
      LookupField = 'CCBCOID'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnChange = dblcCtaCteChange
      OnExit = dblcCtaCteExit
    end
    object dbeUbicacion: TwwDBEdit
      Left = 363
      Top = 21
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCtaCte: TwwDBEdit
      Left = 554
      Top = 1
      Width = 19
      Height = 21
      Enabled = False
      TabOrder = 7
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object dbdtpFOEnvio: TwwDBDateTimePicker
      Left = 224
      Top = 21
      Width = 85
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
      OnChange = dbdtpFOEnvioChange
      OnExit = dbdtpFOEnvioExit
    end
    object edtCia: TEdit
      Left = 49
      Top = 21
      Width = 86
      Height = 21
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dblcCia: TwwDBLookupCombo
      Left = 6
      Top = 21
      Width = 42
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'Id'#9'F'
        'CIADES'#9'40'#9'Compa'#241'ia'#9'F')
      LookupTable = DMCXC.cdsCia
      LookupField = 'CIAID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnChange = dblcCiaChange
      OnExit = dblcCiaExit
    end
    object dblcSIT: TwwDBLookupCombo
      Left = 628
      Top = 21
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'SITUAID'#9'2'#9'C'#243'digo'#9'F'
        'SITUADES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsSitua
      LookupField = 'SITUAID'
      Options = [loColLines, loTitles]
      Enabled = False
      MaxLength = 2
      TabOrder = 8
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object dbeSIT: TwwDBEdit
      Left = 678
      Top = 21
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlBotones: TPanel
    Left = 7
    Top = 447
    Width = 777
    Height = 50
    BorderStyle = bsSingle
    TabOrder = 1
    object Label3: TLabel
      Left = 18
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Cant. Letras'
    end
    object Label7: TLabel
      Left = 142
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Importe (S/.)'
    end
    object Label9: TLabel
      Left = 274
      Top = 7
      Width = 50
      Height = 13
      Caption = 'Importe ($)'
    end
    object Bevel1: TBevel
      Left = 4
      Top = 4
      Width = 357
      Height = 39
    end
    object stMtoLoc: TStaticText
      Left = 134
      Top = 23
      Width = 75
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '1000'
      TabOrder = 3
    end
    object stLetras: TStaticText
      Left = 10
      Top = 23
      Width = 75
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '1000'
      TabOrder = 2
    end
    object bbtnOk: TBitBtn
      Left = 665
      Top = 17
      Width = 30
      Height = 25
      TabOrder = 0
      OnClick = bbtnOkClick
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
    object bbtnCancel: TBitBtn
      Left = 698
      Top = 17
      Width = 30
      Height = 25
      TabOrder = 1
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
    object stMtoExt: TStaticText
      Left = 258
      Top = 23
      Width = 75
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '112'
      TabOrder = 4
    end
    object bbtnSalir: TBitBtn
      Left = 731
      Top = 17
      Width = 30
      Height = 25
      TabOrder = 5
      OnClick = bbtnSalirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object dsDetOEnvioE: TwwDataSource
    DataSet = cdsDetOEnvioE
    Left = 717
    Top = 386
  end
  object cdsDetOEnvioE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    BeforeDelete = cdsDetOEnvioEBeforeDelete
    AfterDelete = cdsDetOEnvioEAfterDelete
    ValidateWithMask = True
    Left = 655
    Top = 386
    object cdsDetOEnvioECCNODOC: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 15
      FieldName = 'CCNODOC'
      Size = 15
    end
    object cdsDetOEnvioECLIEID: TStringField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'CLIEID'
      Size = 8
    end
    object cdsDetOEnvioECLIEDES: TStringField
      Tag = 1
      DisplayLabel = 'Cliente'
      DisplayWidth = 35
      FieldName = 'CLIEDES'
      Size = 35
    end
    object cdsDetOEnvioETMONID: TStringField
      DisplayLabel = 'TM'
      DisplayWidth = 4
      FieldName = 'TMONID'
      Size = 3
    end
    object cdsDetOEnvioECCMTOORI: TCurrencyField
      DisplayLabel = 'Importe'
      DisplayWidth = 12
      FieldName = 'CCMTOORI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '#######0.00'
    end
    object cdsDetOEnvioECCFVCMTO: TDateField
      DisplayLabel = 'F. Vcmto.'
      DisplayWidth = 11
      FieldName = 'CCFVCMTO'
    end
    object cdsDetOEnvioESITID: TStringField
      DisplayLabel = 'Sit.'
      DisplayWidth = 3
      FieldName = 'SITID'
      Size = 2
    end
    object cdsDetOEnvioESITDES: TStringField
      Tag = 1
      DisplayLabel = 'Desc. Sit.'
      DisplayWidth = 22
      FieldName = 'SITDES'
      Size = 22
    end
    object cdsDetOEnvioECIAID: TStringField
      FieldName = 'CIAID'
      Visible = False
      Size = 2
    end
    object cdsDetOEnvioEFGRAB: TStringField
      Tag = 1
      DisplayWidth = 1
      FieldName = 'FGRAB'
      Visible = False
      Size = 1
    end
    object cdsDetOEnvioEDOCID: TStringField
      FieldName = 'DOCID'
      Visible = False
    end
  end
  object cdsDetOEnvioD: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CIAID;CCNODOC'
    Params = <>
    ValidateWithMask = True
    Left = 685
    Top = 386
    object cdsDetOEnvioDCIAID: TStringField
      FieldName = 'CIAID'
      Size = 2
    end
    object cdsDetOEnvioDCCNODOC: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 15
      FieldName = 'CCNODOC'
      Size = 15
    end
    object cdsDetOEnvioDCLIEID: TStringField
      DisplayLabel = 'Id'
      DisplayWidth = 9
      FieldName = 'CLIEID'
      Size = 8
    end
    object cdsDetOEnvioDCLIEDES: TStringField
      Tag = 1
      DisplayLabel = 'Cliente'
      DisplayWidth = 35
      FieldName = 'CLIEDES'
      Size = 35
    end
    object cdsDetOEnvioDTMONID: TStringField
      DisplayLabel = 'TM'
      DisplayWidth = 4
      FieldName = 'TMONID'
      Size = 3
    end
    object cdsDetOEnvioDCCMTOORI: TCurrencyField
      DisplayLabel = 'Importe'
      DisplayWidth = 12
      FieldName = 'CCMTOORI'
    end
    object cdsDetOEnvioDCCFVCMTO: TDateField
      DisplayLabel = 'F. Vcmto.'
      DisplayWidth = 11
      FieldName = 'CCFVCMTO'
    end
    object cdsDetOEnvioDSITID: TStringField
      DisplayLabel = 'Sit.'
      DisplayWidth = 3
      FieldName = 'SITID'
      Size = 2
    end
    object cdsDetOEnvioDSITDES: TStringField
      Tag = 1
      DisplayLabel = 'Desc. Sit.'
      DisplayWidth = 22
      FieldName = 'SITDES'
      Size = 22
    end
    object cdsDetOEnvioDFGRAB: TStringField
      Tag = 1
      DisplayWidth = 1
      FieldName = 'FGRAB'
      Visible = False
      Size = 1
    end
  end
  object ldlgLetras: TwwLookupDialog
    Selected.Strings = (
      'CCNODOC'#9'20'#9'CCNODOC'#9'F'
      'CLIEDES'#9'40'#9'CLIEDES'#9'T'
      'TMONID'#9'2'#9'TMONID'#9'T'
      'TMONABR'#9'8'#9'TMONABR'#9'T'
      'CCMTOORI'#9'10'#9'CCMTOORI'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    Options = [opShowSearchBy]
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    UserButton1Caption = '&Ok'
    UserButton2Caption = '&Cancelar'
    OnUserButton1Click = ldlgLetrasUserButton1Click
    OnUserButton2Click = ldlgLetrasUserButton2Click
    OnCloseDialog = ldlgLetrasCloseDialog
    Left = 132
    Top = 114
  end
end
