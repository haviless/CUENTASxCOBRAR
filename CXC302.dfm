object FRLetras: TFRLetras
  Left = 398
  Top = 237
  BorderStyle = bsDialog
  Caption = 'Cuentas por Cobrar'
  ClientHeight = 393
  ClientWidth = 315
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
    Left = 13
    Top = 6
    Width = 288
    Height = 375
    BevelInner = bvRaised
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object lblLetras: TLabel
      Left = 12
      Top = 6
      Width = 129
      Height = 16
      Caption = 'Registro de Letras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbtnOk: TBitBtn
      Left = 246
      Top = 340
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
    object bbtnBorra: TBitBtn
      Left = 211
      Top = 340
      Width = 30
      Height = 25
      TabOrder = 1
      OnClick = bbtnBorraClick
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
      Top = 25
      Width = 271
      Height = 147
      Color = 10207162
      TabOrder = 2
      object lblCia: TLabel
        Left = 12
        Top = 13
        Width = 49
        Height = 13
        Caption = 'Compa'#241#237'a'
      end
      object Label1: TLabel
        Left = 12
        Top = 43
        Width = 65
        Height = 13
        Caption = 'T.Documento'
      end
      object Label2: TLabel
        Left = 12
        Top = 116
        Width = 39
        Height = 13
        Caption = 'Periodo '
      end
      object dblcCia: TwwDBLookupCombo
        Left = 81
        Top = 7
        Width = 42
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIAID'#9'2'#9'Cia'#9'F'
          'CIAABR'#9'15'#9'Raz'#243'n Social'#9'F')
        LookupTable = DMCXC.cdsCia
        LookupField = 'CIAID'
        Options = [loColLines, loRowLines, loTitles]
        Style = csDropDownList
        MaxLength = 2
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcCiaExit
        OnNotInList = dblcCiaNotInList
      end
      object edtCia: TEdit
        Left = 127
        Top = 7
        Width = 137
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtTDoc: TEdit
        Left = 127
        Top = 37
        Width = 137
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object dblcTDoc: TwwDBLookupCombo
        Left = 81
        Top = 37
        Width = 42
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DOCID'#9'2'#9'Doc.'#9'F'
          'DOCABR'#9'8'#9'Descripci'#243'n'#9'F')
        LookupTable = DMCXC.cdsTDoc
        LookupField = 'DOCID'
        Options = [loColLines, loRowLines, loTitles]
        Style = csDropDownList
        MaxLength = 2
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcTDocExit
      end
      object dbeAnoMM: TwwDBEdit
        Left = 81
        Top = 110
        Width = 49
        Height = 21
        MaxLength = 6
        Picture.PictureMask = '999999'
        TabOrder = 5
        UnboundDataType = wwDefault
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
        OnExit = dbeAnoMMExit
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 63
        Width = 257
        Height = 39
        Caption = 'T. Diario'
        TabOrder = 4
        object dblcTDiario: TwwDBLookupCombo
          Left = 73
          Top = 13
          Width = 42
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TDIARID'#9'2'#9'Tipo de Diario'#9'F'
            'TDIARDES'#9'40'#9'Descripci'#243'n'#9'F')
          LookupTable = DMCXC.cdsTDiario
          LookupField = 'TDIARID'
          Options = [loColLines, loRowLines, loTitles]
          Style = csDropDownList
          Enabled = False
          MaxLength = 2
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnClick = dblcTDiarioClick
          OnExit = dblcTDiarioExit
        end
        object edtTDiario: TEdit
          Left = 112
          Top = 13
          Width = 137
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object chqTodos: TCheckBox
          Left = 11
          Top = 16
          Width = 57
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chqTodosClick
          OnExit = chqTodosExit
        end
      end
    end
    object pnlDatos2: TPanel
      Left = 9
      Top = 173
      Width = 271
      Height = 164
      Color = 10207162
      TabOrder = 3
      object lblRango1: TLabel
        Left = 62
        Top = 107
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object lblRango2: TLabel
        Left = 62
        Top = 139
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object dblcdProv2: TwwDBLookupComboDlg
        Left = 120
        Top = 136
        Width = 80
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'PROV'#9'8'#9'Proveedor'#9'F'
          'PROVDES'#9'30'#9'Raz'#243'n Social'#9'F'
          'PROVRUC'#9'10'#9'R.U.C.'#9'F')
        LookupField = 'PROV'
        MaxLength = 8
        TabOrder = 5
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object dbdtpFReg2: TwwDBDateTimePicker
        Left = 120
        Top = 136
        Width = 80
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 6
        Visible = False
      end
      object dbdtpFReg1: TwwDBDateTimePicker
        Left = 120
        Top = 104
        Width = 80
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
        Visible = False
      end
      object dblcdProv1: TwwDBLookupComboDlg
        Left = 121
        Top = 104
        Width = 80
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'PROV'#9'8'#9'Proveedor'#9'F'
          'PROVDES'#9'30'#9'Raz'#243'n Social'#9'F'
          'PROVRUC'#9'10'#9'R.U.C.'#9'F')
        LookupField = 'PROV'
        MaxLength = 8
        TabOrder = 3
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object rgOrden: TRadioGroup
        Left = 36
        Top = 4
        Width = 185
        Height = 87
        Caption = 'Ordenado por'
        Ctl3D = True
        ItemIndex = 0
        Items.Strings = (
          'No. de Registro'
          'Fecha de Registro'
          'Clientes'
          'No. de Letra')
        ParentCtl3D = False
        TabOrder = 0
        OnClick = rgOrdenClick
      end
      object dbeNoReg1: TwwDBEdit
        Left = 120
        Top = 104
        Width = 80
        Height = 21
        MaxLength = 10
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNoReg2: TwwDBEdit
        Left = 120
        Top = 136
        Width = 80
        Height = 21
        MaxLength = 10
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object ppdbLetras: TppDBPipeline
    DataSource = DMCXC.dsMovCxC2
    UserName = 'dbLetras'
    Left = 10
    Top = 351
    object ppField1: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'CCANOMES'
      FieldName = 'CCANOMES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'TDIARID'
      FieldName = 'TDIARID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'CCLOTE'
      FieldName = 'CCLOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'CCNOREG'
      FieldName = 'CCNOREG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'CCFCMPRB'
      FieldName = 'CCFCMPRB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = 'DOCID'
      FieldName = 'DOCID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'CCSERIE'
      FieldName = 'CCSERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppField12: TppField
      FieldAlias = 'CCNODOC'
      FieldName = 'CCNODOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppField13: TppField
      FieldAlias = 'CCFRECEP'
      FieldName = 'CCFRECEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppField14: TppField
      FieldAlias = 'CCFEMIS'
      FieldName = 'CCFEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppField15: TppField
      FieldAlias = 'CCFVCMTO'
      FieldName = 'CCFVCMTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppField16: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppField17: TppField
      FieldAlias = 'CCTCAMPR'
      FieldName = 'CCTCAMPR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppField18: TppField
      FieldAlias = 'CCTCAMPA'
      FieldName = 'CCTCAMPA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppField19: TppField
      FieldAlias = 'CCESTADO'
      FieldName = 'CCESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppField20: TppField
      FieldAlias = 'CC_CONTA'
      FieldName = 'CC_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppField21: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppField22: TppField
      FieldAlias = 'CCOMERID'
      FieldName = 'CCOMERID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppField23: TppField
      FieldAlias = 'CCFLCRED'
      FieldName = 'CCFLCRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppField24: TppField
      FieldAlias = 'CCGRAVAD'
      FieldName = 'CCGRAVAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppField25: TppField
      FieldAlias = 'CCNOGRAV'
      FieldName = 'CCNOGRAV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppField26: TppField
      FieldAlias = 'CCFLETE'
      FieldName = 'CCFLETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppField27: TppField
      FieldAlias = 'CCGASFIN'
      FieldName = 'CCGASFIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppField28: TppField
      FieldAlias = 'CCSERVIC'
      FieldName = 'CCSERVIC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppField29: TppField
      FieldAlias = 'CCDCTO'
      FieldName = 'CCDCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppField30: TppField
      FieldAlias = 'CCIGV'
      FieldName = 'CCIGV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppField31: TppField
      FieldAlias = 'CCISC'
      FieldName = 'CCISC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppField32: TppField
      FieldAlias = 'CCMTOORI'
      FieldName = 'CCMTOORI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppField33: TppField
      FieldAlias = 'CCMTOLOC'
      FieldName = 'CCMTOLOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppField34: TppField
      FieldAlias = 'CCMTOEXT'
      FieldName = 'CCMTOEXT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppField35: TppField
      FieldAlias = 'CCPAGORI'
      FieldName = 'CCPAGORI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppField36: TppField
      FieldAlias = 'CCPAGLOC'
      FieldName = 'CCPAGLOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppField37: TppField
      FieldAlias = 'CCPAGEXT'
      FieldName = 'CCPAGEXT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppField38: TppField
      FieldAlias = 'CCSALORI'
      FieldName = 'CCSALORI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppField39: TppField
      FieldAlias = 'CCSALLOC'
      FieldName = 'CCSALLOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppField40: TppField
      FieldAlias = 'CCSALEXT'
      FieldName = 'CCSALEXT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppField41: TppField
      FieldAlias = 'CCPTOTOT'
      FieldName = 'CCPTOTOT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppField42: TppField
      FieldAlias = 'CTATOTAL'
      FieldName = 'CTATOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppField43: TppField
      FieldAlias = 'TCANJEID'
      FieldName = 'TCANJEID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppField44: TppField
      FieldAlias = 'CCCANJE'
      FieldName = 'CCCANJE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppField45: TppField
      FieldAlias = 'CCFCANJE'
      FieldName = 'CCFCANJE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppField46: TppField
      FieldAlias = 'CCAAAA'
      FieldName = 'CCAAAA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppField47: TppField
      FieldAlias = 'CCMM'
      FieldName = 'CCMM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppField48: TppField
      FieldAlias = 'CCDD'
      FieldName = 'CCDD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppField49: TppField
      FieldAlias = 'CCTRI'
      FieldName = 'CCTRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppField50: TppField
      FieldAlias = 'CCSEM'
      FieldName = 'CCSEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppField51: TppField
      FieldAlias = 'CCSS'
      FieldName = 'CCSS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppField52: TppField
      FieldAlias = 'CCAATRI'
      FieldName = 'CCAATRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppField53: TppField
      FieldAlias = 'CCAASEM'
      FieldName = 'CCAASEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppField54: TppField
      FieldAlias = 'CCAASS'
      FieldName = 'CCAASS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppField55: TppField
      FieldAlias = 'CCPEDIDO'
      FieldName = 'CCPEDIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppField56: TppField
      FieldAlias = 'CCFVALOR'
      FieldName = 'CCFVALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppField57: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppField58: TppField
      FieldAlias = 'CCBCOID'
      FieldName = 'CCBCOID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppField59: TppField
      FieldAlias = 'SITUACION'
      FieldName = 'SITUACION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppField60: TppField
      FieldAlias = 'UBICACION'
      FieldName = 'UBICACION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppField61: TppField
      FieldAlias = 'CCFSITUA'
      FieldName = 'CCFSITUA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppField62: TppField
      FieldAlias = 'DOCSIT'
      FieldName = 'DOCSIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppField63: TppField
      FieldAlias = 'NODOCSIT'
      FieldName = 'NODOCSIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppField65: TppField
      FieldAlias = 'CCUSER'
      FieldName = 'CCUSER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppField66: TppField
      FieldAlias = 'CCFREG'
      FieldName = 'CCFREG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppField67: TppField
      FieldAlias = 'FLAGVAR2'
      FieldName = 'FLAGVAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppField68: TppField
      FieldAlias = 'CCHREG'
      FieldName = 'CCHREG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppField69: TppField
      FieldAlias = 'CCNLETBCO'
      FieldName = 'CCNLETBCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppField70: TppField
      FieldAlias = 'CCNRENOV'
      FieldName = 'CCNRENOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppField71: TppField
      FieldAlias = 'CCACEPTA'
      FieldName = 'CCACEPTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppField72: TppField
      FieldAlias = 'CCNPLABCO'
      FieldName = 'CCNPLABCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppField73: TppField
      FieldAlias = 'CCFPLABCO'
      FieldName = 'CCFPLABCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppField74: TppField
      FieldAlias = 'CCNREFINA'
      FieldName = 'CCNREFINA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppField75: TppField
      FieldAlias = 'CCAVAL'
      FieldName = 'CCAVAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppField76: TppField
      FieldAlias = 'CCNVECPRT'
      FieldName = 'CCNVECPRT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppField77: TppField
      FieldAlias = 'CCESTCJE'
      FieldName = 'CCESTCJE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppField78: TppField
      FieldAlias = 'CCNFACTURA'
      FieldName = 'CCNFACTURA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppField79: TppField
      FieldAlias = 'CCNSERFACTL'
      FieldName = 'CCNSERFACTL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppField80: TppField
      FieldAlias = 'CCFVENLREAL'
      FieldName = 'CCFVENLREAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppField81: TppField
      FieldAlias = 'UBIID'
      FieldName = 'UBIID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppField82: TppField
      FieldAlias = 'SITID'
      FieldName = 'SITID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppField83: TppField
      FieldAlias = 'CCOENV'
      FieldName = 'CCOENV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppField84: TppField
      FieldAlias = 'OEFNUMFOR'
      FieldName = 'OEFNUMFOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppField85: TppField
      FieldAlias = 'INTERES'
      FieldName = 'INTERES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppField86: TppField
      FieldAlias = 'CCFEMISANT'
      FieldName = 'CCFEMISANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppField87: TppField
      FieldAlias = 'CCFVCMTOANT'
      FieldName = 'CCFVCMTOANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppField88: TppField
      FieldAlias = 'CCMTOORIANT'
      FieldName = 'CCMTOORIANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppField89: TppField
      FieldAlias = 'CCNRENOVA'
      FieldName = 'CCNRENOVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppField90: TppField
      FieldAlias = 'CCTCAMPRANT'
      FieldName = 'CCTCAMPRANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppField91: TppField
      FieldAlias = 'CCCMPRB'
      FieldName = 'CCCMPRB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppField92: TppField
      FieldAlias = 'CPTOANT'
      FieldName = 'CPTOANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppField93: TppField
      FieldAlias = 'CTAANT'
      FieldName = 'CTAANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppField94: TppField
      FieldAlias = 'FGEN_DOC'
      FieldName = 'FGEN_DOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppField95: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppField96: TppField
      FieldAlias = 'DOCPLAZO'
      FieldName = 'DOCPLAZO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppField97: TppField
      FieldAlias = 'CPTOID'
      FieldName = 'CPTOID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppField98: TppField
      FieldAlias = 'CCFLAGVTA'
      FieldName = 'CCFLAGVTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppField99: TppField
      FieldAlias = 'CCFLAGTDOC'
      FieldName = 'CCFLAGTDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppField100: TppField
      FieldAlias = 'TVTAID'
      FieldName = 'TVTAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppField101: TppField
      FieldAlias = 'ZVTAID'
      FieldName = 'ZVTAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppField102: TppField
      FieldAlias = 'CCFLAGPROT'
      FieldName = 'CCFLAGPROT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppField103: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppField104: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppField105: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppField106: TppField
      FieldAlias = 'CCFCANCEL'
      FieldName = 'CCFCANCEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppField107: TppField
      FieldAlias = 'LICOID'
      FieldName = 'LICOID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppField108: TppField
      FieldAlias = 'COMPROMET'
      FieldName = 'COMPROMET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
  end
  object pprLetras: TppReport
    AutoStop = False
    DataPipeline = ppdbLetras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 296863
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 18
    Top = 207
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbLetras'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'lkCia'
        DataPipeline = ppdbLetras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'REGISTRO DE LETRAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 118269
        mmTop = 2117
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Cuentas Por Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 7938
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 122502
        mmTop = 7408
        mmWidth = 14288
        BandType = 0
      end
      object pplblPeriodo: TppLabel
        UserName = 'lblPeriodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 139965
        mmTop = 7408
        mmWidth = 14288
        BandType = 0
      end
      object pplblDel: TppLabel
        UserName = 'lblDel'
        Caption = 'Del:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 12700
        mmWidth = 6615
        BandType = 0
      end
      object pplblAl: TppLabel
        UserName = 'lblAl'
        Caption = 'Al:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 139700
        mmTop = 12700
        mmWidth = 4498
        BandType = 0
      end
      object pplblFecini: TppLabel
        UserName = 'lblFecini'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 12700
        mmWidth = 16933
        BandType = 0
      end
      object pplblFecfin: TppLabel
        UserName = 'lblFecfin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 12700
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245269
        mmTop = 1323
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Hora   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245269
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245269
        mmTop = 11642
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 260086
        mmTop = 11377
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 259821
        mmTop = 6350
        mmWidth = 21167
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 259821
        mmTop = 1323
        mmWidth = 1852
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 24077
        mmWidth = 275167
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'A Favor de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 27252
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 25135
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 29104
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 68792
        mmTop = 25135
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Letra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 68792
        mmTop = 29104
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 25135
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 29104
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Plazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 25135
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Tipo de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 164571
        mmTop = 25135
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Cambio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 164571
        mmTop = 29104
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 186002
        mmTop = 25135
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'M.Extranjera'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 186002
        mmTop = 29104
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 214842
        mmTop = 25135
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'M.Nacional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 214842
        mmTop = 29104
        mmWidth = 18785
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 33867
        mmWidth = 275167
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Vencimientos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 240771
        mmTop = 27781
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = '(d'#237'as)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 29104
        mmWidth = 8996
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppVarEstado: TppVariable
        UserName = 'VarEstado'
        AutoSize = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 67998
        mmTop = 529
        mmWidth = 122502
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'CPNOREG'
        DataPipeline = ppdbLetras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'lkProv'
        DataPipeline = ppdbLetras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 529
        mmWidth = 45773
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'CPSERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 99484
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CPNODOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 116152
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CPNODOC'
        DataPipeline = ppdbLetras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 69586
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CPTCAMPR'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 794
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CPMTOEXT'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CPMTOLOC'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 215371
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'CPFVCMTO'
        DataPipeline = ppdbLetras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 243153
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
      object ppVarPlazo: TppVariable
        UserName = 'VarPlazo'
        AutoSize = False
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 529
        mmWidth = 8467
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Totales:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 3704
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CPMTOEXT'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 188119
        mmTop = 3440
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CPMTOLOC'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 4233
        mmLeft = 215107
        mmTop = 3440
        mmWidth = 17198
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 130175
        mmTop = 1323
        mmWidth = 112448
        BandType = 7
      end
    end
  end
  object pprRLetras: TppReport
    AutoStop = False
    DataPipeline = ppdbLetras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'rRLetras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 378090
    PrinterSetup.PaperSize = 123
    Template.FileName = 'C:\SOLExes\SolFormatos\CXC\Dema\REGLETRAS.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 29
    Top = 262
    Version = '7.02'
    mmColumnWidth = 365390
    DataPipelineName = 'ppdbLetras'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'REGISTRO DE LETRAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 4498
        mmWidth = 35719
        BandType = 0
      end
      object pplCIA: TppLabel
        UserName = 'lCIA'
        Caption = 'CIA  -  CREDITOS Y COBRANZAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 1058
        mmWidth = 44450
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 1058
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'FECHA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 165365
        mmTop = 1058
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 6085
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 189442
        mmTop = 10319
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'PAGINA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 10319
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'HORA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 6085
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 19050
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 31221
        mmTop = 19315
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 19315
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'LETRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 23019
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Nro.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 18785
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'CANJE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 22490
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 19050
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 22754
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'IMPORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 146315
        mmTop = 19050
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'U.S.$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 149225
        mmTop = 22754
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134409
        mmTop = 18785
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'CAMBIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 131763
        mmTop = 22490
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label601'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label602'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 14552
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 14552
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 107421
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 107421
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 119063
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 119063
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label701'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143934
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 143934
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 181769
        mmTop = 19050
        mmWidth = 529
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 181769
        mmTop = 22754
        mmWidth = 529
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130704
        mmTop = 18785
        mmWidth = 529
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130704
        mmTop = 22490
        mmWidth = 529
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 14817
        mmWidth = 143934
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 26194
        mmWidth = 143934
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'EMISION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 15875
        mmTop = 22754
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'MON.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 119592
        mmTop = 22225
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 184680
        mmTop = 18785
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'VCMTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 184415
        mmTop = 22490
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 199496
        mmTop = 18785
        mmWidth = 529
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = #166
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 199496
        mmTop = 22490
        mmWidth = 529
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CCANOMES'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 8202
        mmWidth = 17198
        BandType = 0
      end
      object pplblPeriodo1: TppLabel
        UserName = 'lblPeriodo1'
        Caption = 'FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 68527
        mmTop = 8731
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'CCFEMIS'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 15610
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'CLIEID'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 31221
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        DataField = 'CCNODOC'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 265
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CCCANJE'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 109009
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        DataField = 'CCMTOLOC'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'CCMTOEXT'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 144198
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        AutoSize = True
        DataField = 'CCTCAMPR'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 127265
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CLIEDES'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 49742
        mmTop = 0
        mmWidth = 56621
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'TMONABR'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 120915
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbLetras
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'CCMTOEXT'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 135732
        mmTop = 5821
        mmWidth = 25135
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'CCMTOLOC'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3704
        mmLeft = 155046
        mmTop = 5821
        mmWidth = 24871
        BandType = 7
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 1058
        mmWidth = 143934
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataPipeline = ppdbLetras
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbLetras'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 5556
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Letras '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 5821
        mmWidth = 8467
        BandType = 7
      end
    end
  end
end
