object FCambioFacturas: TFCambioFacturas
  Left = 202
  Top = 240
  BorderStyle = bsDialog
  Caption = 'Cambio de Documentos'
  ClientHeight = 117
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 2
    Top = 2
    Width = 790
    Height = 111
    BevelInner = bvRaised
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object pnlCab2: TPanel
      Left = 8
      Top = 56
      Width = 776
      Height = 49
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lblFCanje: TLabel
        Left = 12
        Top = 3
        Width = 45
        Height = 13
        Caption = 'F.Emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 338
        Top = 3
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 280
        Top = 3
        Width = 24
        Height = 13
        Caption = 'Serie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 437
        Top = 3
        Width = 78
        Height = 13
        Caption = 'Tipo de Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 582
        Top = 3
        Width = 45
        Height = 13
        Caption = 'T.Cambio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblTDoc: TLabel
        Left = 98
        Top = 3
        Width = 59
        Height = 17
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dtpFFac: TwwDBDateTimePicker
        Left = 8
        Top = 19
        Width = 83
        Height = 23
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'FACFECHA'
        DataSource = DMCXC.dsFact
        Epoch = 1950
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
      end
      object bbtnOk: TBitBtn
        Left = 715
        Top = 12
        Width = 31
        Height = 28
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
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
      object bbtnBorra: TBitBtn
        Left = 674
        Top = 12
        Width = 30
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
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
      object dbeNFac: TwwDBEdit
        Left = 333
        Top = 19
        Width = 102
        Height = 23
        DataField = 'NFAC'
        DataSource = DMCXC.dsFact
        Enabled = False
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
      end
      object dblcSerie: TwwDBLookupCombo
        Left = 278
        Top = 19
        Width = 55
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'SERIEID'#9'5'#9'Serie'#9'F'
          'SERIEDES'#9'30'#9'Descripci'#243'n'#9'F')
        DataField = 'FACSERIE'
        DataSource = DMCXC.dsFact
        LookupTable = DMCXC.cdsSerie
        LookupField = 'SERIEID'
        Options = [loColLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object dblcTMon: TwwDBLookupCombo
        Left = 437
        Top = 19
        Width = 47
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TMONID'#9'2'#9'TMONID'#9'F'
          'TMONDES'#9'30'#9'TMONDES'#9'F'
          'TMONABR'#9'8'#9'TMONABR'#9'F'
          'TMON_LOC'#9'1'#9'TMON_LOC'#9'F')
        DataField = 'TMONID'
        DataSource = DMCXC.dsFact
        LookupTable = DMCXC.cdsTMon
        LookupField = 'TMONID'
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        MaxLength = 2
        ParentFont = False
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object edtTMon: TEdit
        Left = 484
        Top = 19
        Width = 96
        Height = 23
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object dbeTCambio: TwwDBEdit
        Left = 582
        Top = 19
        Width = 57
        Height = 23
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        DataField = 'FACTCAM'
        DataSource = DMCXC.dsFact
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcTDocC: TwwDBLookupCombo
        Left = 94
        Top = 19
        Width = 47
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DOCID'#9'2'#9'Id'#9'F'
          'DOCDES'#9'30'#9'Documento'#9'F')
        DataField = 'DOCID'
        DataSource = DMCXC.dsFact
        LookupTable = DMCXC.cdsTDoc
        LookupField = 'DOCID'
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
      end
      object edtTDocC: TEdit
        Left = 142
        Top = 19
        Width = 128
        Height = 23
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
    end
    object pnlCab1: TPanel
      Left = 8
      Top = 8
      Width = 776
      Height = 45
      Color = 10207162
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 3
        Width = 49
        Height = 13
        Caption = 'Compa'#241#237'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 364
        Top = 3
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 454
        Top = 3
        Width = 29
        Height = 13
        Caption = 'R.U.C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 214
        Top = 3
        Width = 46
        Height = 13
        Caption = 'Localidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblcCia: TwwDBLookupCombo
        Left = 10
        Top = 18
        Width = 47
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIAID'#9'2'#9'Compa'#241'ia'#9'F'
          'CIADES'#9'40'#9'Descripci'#243'n'#9'F'
          'CIAABR'#9'15'#9'Abreviatura'#9'F')
        DataField = 'CIAID'
        DataSource = DMCXC.dsFact
        LookupTable = DMCXC.cdsCia
        LookupField = 'CIAID'
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        MaxLength = 2
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
      end
      object edtCia: TEdit
        Left = 57
        Top = 18
        Width = 156
        Height = 23
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object dblcdClie: TwwDBLookupComboDlg
        Left = 363
        Top = 18
        Width = 91
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Clientes'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'CLIEID'#9'15'#9'CLIEID'#9'F'
          'CLIEDES'#9'40'#9'CLIEDES'#9'F'
          'CLIEABR'#9'15'#9'CLIEABR'#9'F'
          'CLIERUC'#9'15'#9'CLIERUC'#9'F'
          'CLAUXID'#9'2'#9'CLAUXID'#9'F')
        DataField = 'CLIEID'
        DataSource = DMCXC.dsFact
        LookupTable = DMCXC.cdsClie
        LookupField = 'CLIEID'
        Enabled = False
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
      end
      object dblcdClieRuc: TwwDBLookupComboDlg
        Left = 455
        Top = 18
        Width = 94
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'CLIEID'#9'15'#9'CLIEID'#9'F'
          'CLIEDES'#9'40'#9'CLIEDES'#9'F'
          'CLIEABR'#9'15'#9'CLIEABR'#9'F'
          'CLIERUC'#9'15'#9'CLIERUC'#9'F')
        DataField = 'CLIERUC'
        DataSource = DMCXC.dsFact
        LookupTable = DMCXC.cdsClie
        LookupField = 'CLIERUC'
        Enabled = False
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
      end
      object dblcLocal: TwwDBLookupCombo
        Left = 214
        Top = 18
        Width = 47
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'LOCID'#9'2'#9'Id'#9'F'
          'LOCDES'#9'27'#9'Localidad'#9'F')
        DataField = 'LOCID'
        DataSource = DMCXC.dsFact
        LookupField = 'LOCID'
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object edtLocal: TEdit
        Left = 260
        Top = 18
        Width = 102
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
      end
      object wwDBEdit1: TwwDBEdit
        Left = 548
        Top = 18
        Width = 213
        Height = 21
        DataField = 'CLIEDES'
        DataSource = DMCXC.dsFact
        Enabled = False
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
end
