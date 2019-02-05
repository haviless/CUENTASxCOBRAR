object FContaLetras: TFContaLetras
  Left = 38
  Top = 91
  Width = 747
  Height = 474
  Caption = 'Contabilizacion de Letras'
  Color = clBtnFace
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 721
    Height = 65
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
    end
    object Label2: TLabel
      Left = 250
      Top = 7
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Label3: TLabel
      Left = 303
      Top = 6
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object dblcCia: TwwDBLookupCombo
      Left = 23
      Top = 23
      Width = 44
      Height = 21
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
    end
    object edtCia: TEdit
      Left = 74
      Top = 23
      Width = 137
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object seAno: TSpinEdit
      Left = 238
      Top = 22
      Width = 51
      Height = 22
      MaxValue = 2020
      MinValue = 1990
      TabOrder = 2
      Value = 1990
    end
    object seMes: TSpinEdit
      Left = 296
      Top = 22
      Width = 46
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object bbtnSelec: TBitBtn
      Left = 677
      Top = 30
      Width = 32
      Height = 25
      TabOrder = 4
      OnClick = bbtnSelecClick
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
    object rgTipo: TRadioGroup
      Left = 376
      Top = 8
      Width = 97
      Height = 49
      Caption = 'Condici'#243'n'
      ItemIndex = 0
      Items.Strings = (
        'Pendientes'
        'Todos')
      TabOrder = 5
    end
  end
  object dbgLetras: TwwDBGrid
    Left = 12
    Top = 88
    Width = 721
    Height = 321
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DMCXC.dsQry3
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object BitBtn1: TBitBtn
    Left = 572
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Cierre'
    TabOrder = 2
    Visible = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 648
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 3
    Visible = False
    OnClick = BitBtn2Click
  end
  object pnlConta: TPanel
    Left = 282
    Top = 216
    Width = 335
    Height = 177
    BevelInner = bvRaised
    BevelWidth = 2
    TabOrder = 4
    Visible = False
    object Label34: TLabel
      Left = 222
      Top = 90
      Width = 63
      Height = 13
      Caption = 'Comprobante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 65
      Top = 11
      Width = 204
      Height = 20
      Caption = 'CONTABILIZAR LETRAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 23
      Top = 41
      Width = 49
      Height = 13
      Caption = 'Compa'#241#237'a'
    end
    object lblTDiario: TLabel
      Left = 22
      Top = 90
      Width = 66
      Height = 13
      Caption = 'Tipo de Diario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 224
      Top = 41
      Width = 36
      Height = 13
      Caption = 'Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bbtnCont: TBitBtn
      Left = 246
      Top = 138
      Width = 32
      Height = 31
      Hint = 'Contabiliza Canje'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbtnContClick
      Glyph.Data = {
        06020000424D060200000000000076000000280000001A000000190000000100
        04000000000090010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888880000008BBBBBBBBBBBBBBBBBBBBBBBB8000000B00000000000
        0000000000000B000000B000000000000000000000000B000000B00000000000
        0000000000000B000000B000000000000000000000000B000000B00000BBBBBB
        BBBBBBBBB0000B000000B000000000000000000000000B000000B000BBBBBBBB
        BBBBBBBBBBB00B000000B000000000000000000000000B000000B00000000000
        0000000000000B000000B0BBBB0BBB0B0B0B0BBB0BBB0B000000B0B00B0B0B0B
        0B0B0B0B0B0B0B000000B0B00B0B0B0B0B0B0BBB0B0B0B000000B0B0000B0B0B
        0B0B000B0B0B0B000000B0B0000BBB0BBB0B0BBB0BBB0B000000B0B000000000
        000B00000B000B000000B0B00B00000000BBB0000B000B000000B0BBBB000000
        000B000000000B000000B000000000000000000000000B000000B00000000000
        0000000000000B000000B000000000000000000000000B000000B00000000000
        0000000000000B0000008BBBBBBBBBBBBBBBBBBBBBBBB8000000888888888888
        88888888888888000000}
    end
    object bbtnCanc2: TBitBtn
      Left = 282
      Top = 138
      Width = 32
      Height = 31
      Hint = 'Deshacer Modificaciones de Detalle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnCanc2Click
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
    object dblcCia2: TwwDBLookupCombo
      Left = 20
      Top = 56
      Width = 44
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CIAID'#9'2'#9'Cia'#9'F'
        'CIAABR'#9'15'#9'Raz'#243'n Social'#9'F')
      LookupTable = DMCXC.cdsCia
      LookupField = 'CIAID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      Enabled = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
    end
    object edtCia2: TEdit
      Left = 65
      Top = 56
      Width = 130
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtPeriodo: TEdit
      Left = 215
      Top = 56
      Width = 60
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
    object dblcTDiario: TwwDBLookupCombo
      Left = 20
      Top = 106
      Width = 44
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TDIARID'#9'2'#9'Id'#9'F'
        'TDIARDES'#9'30'#9'Tipo de Diario'#9'F')
      LookupTable = DMCXC.cdsTDiario
      LookupField = 'TDIARID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTDiarioExit
    end
    object edtTDiario: TEdit
      Left = 65
      Top = 106
      Width = 130
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbeNoReg: TwwDBEdit
      Left = 215
      Top = 106
      Width = 96
      Height = 21
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeNoRegExit
    end
  end
  object z2bbtnContab: TBitBtn
    Left = 482
    Top = 414
    Width = 32
    Height = 31
    Hint = 'Contabiliza Canje'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = z2bbtnContabClick
    Glyph.Data = {
      06020000424D060200000000000076000000280000001A000000190000000100
      04000000000090010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888888888888880000008BBBBBBBBBBBBBBBBBBBBBBBB8000000B00000000000
      0000000000000B000000B000000000000000000000000B000000B00000000000
      0000000000000B000000B000000000000000000000000B000000B00000BBBBBB
      BBBBBBBBB0000B000000B000000000000000000000000B000000B000BBBBBBBB
      BBBBBBBBBBB00B000000B000000000000000000000000B000000B00000000000
      0000000000000B000000B0BBBB0BBB0B0B0B0BBB0BBB0B000000B0B00B0B0B0B
      0B0B0B0B0B0B0B000000B0B00B0B0B0B0B0B0BBB0B0B0B000000B0B0000B0B0B
      0B0B000B0B0B0B000000B0B0000BBB0BBB0B0BBB0BBB0B000000B0B000000000
      000B00000B000B000000B0B00B00000000BBB0000B000B000000B0BBBB000000
      000B000000000B000000B000000000000000000000000B000000B00000000000
      0000000000000B000000B000000000000000000000000B000000B00000000000
      0000000000000B0000008BBBBBBBBBBBBBBBBBBBBBBBB8000000888888888888
      88888888888888000000}
  end
  object z2bbtnCancel: TBitBtn
    Left = 518
    Top = 414
    Width = 32
    Height = 31
    Hint = 'Deshacer Modificaciones de Detalle'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = z2bbtnCancelClick
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
  object z2bbtImprime: TBitBtn
    Left = 446
    Top = 414
    Width = 32
    Height = 31
    TabOrder = 7
    OnClick = z2bbtImprimeClick
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
  object pnlImprime: TPanel
    Left = 268
    Top = 200
    Width = 213
    Height = 129
    BevelInner = bvRaised
    BevelWidth = 2
    TabOrder = 8
    Visible = False
    object Label6: TLabel
      Left = 18
      Top = 22
      Width = 66
      Height = 13
      Caption = 'Tipo de Diario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dblcTDiarioImp: TwwDBLookupCombo
      Left = 16
      Top = 38
      Width = 44
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TDIARID'#9'2'#9'Id'#9'F'
        'TDIARDES'#9'30'#9'Tipo de Diario'#9'F')
      LookupTable = DMCXC.cdsTDiario
      LookupField = 'TDIARID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTDiarioImpExit
    end
    object edtTDiarDesImp: TEdit
      Left = 67
      Top = 38
      Width = 130
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object z2bbtOK: TBitBtn
      Left = 137
      Top = 90
      Width = 32
      Height = 31
      TabOrder = 2
      OnClick = z2bbtOKClick
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
    object z1bbtCancela: TBitBtn
      Left = 169
      Top = 90
      Width = 32
      Height = 31
      Hint = 'Deshacer Modificaciones de Detalle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = z1bbtCancelaClick
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
  end
  object pnlCnt: TPanel
    Left = 276
    Top = 116
    Width = 197
    Height = 97
    BevelInner = bvRaised
    BevelWidth = 2
    TabOrder = 9
    Visible = False
    object Label7: TLabel
      Left = 20
      Top = 16
      Width = 119
      Height = 13
      Caption = 'Fecha de Contabilizaci'#243'n'
    end
    object dtmCnt: TDateTimePicker
      Left = 36
      Top = 32
      Width = 82
      Height = 21
      Date = 37143.442651157400000000
      Time = 37143.442651157400000000
      TabOrder = 0
    end
    object bbtnCnt: TBitBtn
      Left = 119
      Top = 59
      Width = 32
      Height = 31
      Hint = 'Contabiliza Canje'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnCntClick
      Glyph.Data = {
        06020000424D060200000000000076000000280000001A000000190000000100
        04000000000090010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888880000008BBBBBBBBBBBBBBBBBBBBBBBB8000000B00000000000
        0000000000000B000000B000000000000000000000000B000000B00000000000
        0000000000000B000000B000000000000000000000000B000000B00000BBBBBB
        BBBBBBBBB0000B000000B000000000000000000000000B000000B000BBBBBBBB
        BBBBBBBBBBB00B000000B000000000000000000000000B000000B00000000000
        0000000000000B000000B0BBBB0BBB0B0B0B0BBB0BBB0B000000B0B00B0B0B0B
        0B0B0B0B0B0B0B000000B0B00B0B0B0B0B0B0BBB0B0B0B000000B0B0000B0B0B
        0B0B000B0B0B0B000000B0B0000BBB0BBB0B0BBB0BBB0B000000B0B000000000
        000B00000B000B000000B0B00B00000000BBB0000B000B000000B0BBBB000000
        000B000000000B000000B000000000000000000000000B000000B00000000000
        0000000000000B000000B000000000000000000000000B000000B00000000000
        0000000000000B0000008BBBBBBBBBBBBBBBBBBBBBBBB8000000888888888888
        88888888888888000000}
    end
    object bbtnCancelCnt: TBitBtn
      Left = 155
      Top = 59
      Width = 32
      Height = 31
      Hint = 'Deshacer Modificaciones de Detalle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbtnCancelCntClick
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
  end
  object dbplAsientos: TppDBPipeline
    DataSource = DMCXC.dsQry3
    UserName = 'dbplAsientos'
    Left = 596
    Top = 20
    object ppField1: TppField
      FieldAlias = 'DEBEMN'
      FieldName = 'DEBEMN'
      FieldLength = 10
      DisplayFormat = '###,###,###,#0.00'
      DisplayWidth = 10
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'DEBEME'
      FieldName = 'DEBEME'
      FieldLength = 10
      DisplayFormat = '###,###,###,#0.00'
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'HABEMN'
      FieldName = 'HABEMN'
      FieldLength = 10
      DisplayFormat = '###,###,###,#0.00'
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'HABEME'
      FieldName = 'HABEME'
      FieldLength = 10
      DisplayFormat = '###,###,###,#0.00'
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'CCNODOC'
      FieldName = 'CCNODOC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object CCGLOSA: TppField
      FieldAlias = 'CCGLOSA'
      FieldName = 'CCGLOSA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppField6: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppField7: TppField
      FieldAlias = 'CUENTAID'
      FieldName = 'CUENTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppField8: TppField
      FieldAlias = 'ORDEN'
      FieldName = 'ORDEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
  end
  object pprAsientos: TppReport
    AutoStop = False
    DataPipeline = dbplAsientos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 624
    Top = 20
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbplAsientos'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'REGISTRO DE LETRAS PARA EL ASIENTO CONTABLE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 58473
        mmTop = 265
        mmWidth = 79640
        BandType = 0
      end
      object ppdbtCIA: TppDBText
        UserName = 'dbtCIA'
        DataField = 'CIAID'
        DataPipeline = dbplAsientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 27517
        mmTop = 0
        mmWidth = 7144
        BandType = 0
      end
      object pplCIA: TppLabel
        UserName = 'lCIA'
        Caption = 'lCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 3704
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Cuentas por Cobrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 7673
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'P'#225'gina: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165365
        mmTop = 794
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165629
        mmTop = 5556
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165629
        mmTop = 10054
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180711
        mmTop = 5821
        mmWidth = 18521
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180446
        mmTop = 10054
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 794
        mmWidth = 1852
        BandType = 0
      end
      object ppdbtTDiarID: TppDBText
        UserName = 'dbtTDiarID'
        DataField = 'TDIARID'
        DataPipeline = dbplAsientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 101336
        mmTop = 8731
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'T. de Diario:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 8731
        mmWidth = 24077
        BandType = 0
      end
      object pplTDiarDes: TppLabel
        UserName = 'lTDiarDes'
        Caption = 'lTDiarDes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 109273
        mmTop = 8731
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Letra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 21430
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Periodo     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 13229
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CCANOMES'
        DataPipeline = dbplAsientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 101071
        mmTop = 13229
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Glosa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 21430
        mmWidth = 9260
        BandType = 0
      end
      object ppdbtTMonId: TppDBText
        UserName = 'dbtTMonId'
        DataField = 'TMONID'
        DataPipeline = dbplAsientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 153723
        mmTop = 6085
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'DEBE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 108215
        mmTop = 24871
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'HABER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 131498
        mmTop = 25135
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'DEBE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 24871
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'HABER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 190500
        mmTop = 24606
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'CUENTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 65881
        mmTop = 21430
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'MONEDA NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 106098
        mmTop = 21430
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'MONEDA EXTRANJERA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161925
        mmTop = 21430
        mmWidth = 31485
        BandType = 0
      end
      object pplTMonDes: TppLabel
        UserName = 'lTMonDes'
        AutoSize = False
        Caption = 'lTMonDes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 47625
        mmTop = 15081
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'ITEM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 51065
        mmTop = 21430
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        BlankWhenZero = True
        DataField = 'DEBEMN'
        DataPipeline = dbplAsientos
        DisplayFormat = '###,###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3703
        mmLeft = 94986
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        BlankWhenZero = True
        DataField = 'HABEMN'
        DataPipeline = dbplAsientos
        DisplayFormat = '###,###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 121974
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        BlankWhenZero = True
        DataField = 'DEBEME'
        DataPipeline = dbplAsientos
        DisplayFormat = '###,###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 148697
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        BlankWhenZero = True
        DataField = 'HABEME'
        DataPipeline = dbplAsientos
        DisplayFormat = '###,###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CUENTAID'
        DataPipeline = dbplAsientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ORDEN'
        DataPipeline = dbplAsientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbplAsientos'
        mmHeight = 3704
        mmLeft = 51858
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText1'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          AutoSize = True
          DataField = 'CCNODOC'
          DataPipeline = dbplAsientos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbplAsientos'
          mmHeight = 3704
          mmLeft = 4763
          mmTop = 0
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'CCGLOSA'
          DataPipeline = dbplAsientos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbplAsientos'
          mmHeight = 3704
          mmLeft = 18521
          mmTop = 0
          mmWidth = 63236
          BandType = 3
          GroupNo = 0
        end
        object ppdbtCliente: TppDBText
          UserName = 'dbtCliente'
          DataField = 'CLIEID'
          DataPipeline = dbplAsientos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbplAsientos'
          mmHeight = 3704
          mmLeft = 88106
          mmTop = 0
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
        end
        object pplClieDes: TppLabel
          UserName = 'lClieDes'
          AutoSize = False
          Caption = 'lClieDes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 112713
          mmTop = 0
          mmWidth = 60854
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = '----------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 94721
          mmTop = 0
          mmWidth = 51858
          BandType = 5
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'TOTAL POR LETRA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 64558
          mmTop = 3440
          mmWidth = 27781
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'DEBEMN'
          DataPipeline = dbplAsientos
          DisplayFormat = '###,###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbplAsientos'
          mmHeight = 3704
          mmLeft = 94986
          mmTop = 3440
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'HABEMN'
          DataPipeline = dbplAsientos
          DisplayFormat = '###,###,###,#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbplAsientos'
          mmHeight = 3704
          mmLeft = 121973
          mmTop = 3440
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
