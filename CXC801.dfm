object FGNDebito: TFGNDebito
  Left = 257
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Generaci'#243'n de Nota de Debito'
  ClientHeight = 245
  ClientWidth = 679
  Color = 12904163
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlNDebito: TPanel
    Left = 26
    Top = 17
    Width = 543
    Height = 208
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 12904163
    TabOrder = 0
    object lblSerie: TLabel
      Left = 64
      Top = 14
      Width = 52
      Height = 16
      Caption = 'No.Serie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblNoDoc: TLabel
      Left = 134
      Top = 14
      Width = 82
      Height = 16
      Caption = 'No.Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 13
      Top = 14
      Width = 39
      Height = 16
      Caption = 'T.Doc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 431
      Top = 14
      Width = 50
      Height = 16
      Caption = 'Concepto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 76
      Width = 35
      Height = 16
      Caption = 'Monto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTMon: TLabel
      Left = 257
      Top = 14
      Width = 91
      Height = 16
      Caption = 'Tipo de Moneda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dblcSerie: TwwDBLookupCombo
      Left = 62
      Top = 34
      Width = 64
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'SERIEID'#9'5'#9'SERIEID'#9'F'
        'SERIEDES'#9'30'#9'SERIEDES'#9'F')
      LookupField = 'SERIEID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
    end
    object dbeNoDoc: TwwDBEdit
      Left = 130
      Top = 34
      Width = 120
      Height = 25
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcNDDoc: TwwDBLookupCombo
      Left = 13
      Top = 34
      Width = 41
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DOCID'#9'2'#9'DOCID'#9'F'
        'DOCDES'#9'30'#9'DOCDES'#9'F')
      LookupField = 'DOCID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcNDDocExit
    end
    object dblcdConceptoND: TwwDBLookupComboDlg
      Left = 429
      Top = 34
      Width = 102
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Busquedad'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      ParentFont = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object Z2bbtnOk: TBitBtn
      Left = 112
      Top = 168
      Width = 100
      Height = 25
      Hint = 'Aplica filtro'
      Caption = 'Grabar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Z2bbtnOkClick
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
      Left = 336
      Top = 168
      Width = 100
      Height = 25
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = bbtnCancelClick
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
    object rgdTipo: TRadioGroup
      Left = 163
      Top = 74
      Width = 135
      Height = 55
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Base Imponible'
        'Total')
      ParentFont = False
      TabOrder = 7
    end
    object edtMonto: TEdit
      Left = 13
      Top = 98
      Width = 121
      Height = 25
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object dblcTMon: TwwDBLookupCombo
      Left = 255
      Top = 34
      Width = 45
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TMONID'#9'3'#9'Moneda'#9'F'
        'TMONDES'#9'30'#9'Descripci'#243'n'#9'F')
      LookupField = 'TMONID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 2
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      SearchDelay = 2
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcTMonExit
    end
    object edtTMon: TEdit
      Left = 305
      Top = 34
      Width = 118
      Height = 25
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Z1sbKardex: TBitBtn
    Left = 602
    Top = 82
    Width = 48
    Height = 44
    Hint = 'Consulta de Kardex [S]/[V]'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Glyph.Data = {
      CE020000424DCE020000000000007600000028000000220000001E0000000100
      0400000000005802000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFF0078800FFFFFFFFFFFFFFFF000000FFFFFFFFF00777888800
      FFFFFFFFFFFFFF000000FFFFFFF007777800888800FFFFFFFFFFFF000000FFFF
      F0077778878800888800FFFFFFFFFF000000FFF00777788787888800888800FF
      FFFFFF000000FF07777887778788888800888800FFFFFF000000FF8778877777
      87888888880088880FFFFF000000FF888777777787888888888800880FFFFF00
      0000F8878777777787888888888888000FFFFF000000F8F7877777778F888888
      8888888800FFFF000000F8F78777777F8877888888888888800FFF000000F8F7
      87777FF777887788888888888080FF000000F8F7877FF7777777887788888888
      80780F000000F8F78FF77799778877887788888880788F000000F8FF8877AA77
      8877777088778888808FFF000000F88F778877887777700F7088778880FFFF00
      0000FFF88F77888877700FFFF077887780FFFF000000FFFFF88F7788800FFFCC
      F7087788FFFFFF000000FFFFFFF88F7788FFCCFFFF0888FFFFFFFF000000FFFF
      FFFFF88F778FFFFCCF70FFFFFFFFFF000000FFFFFFFFFFF88F8FFCCFFFF70FFF
      FFFFFF000000FFFFFFFFFFFFF888FFFFCCFF70FFFFFFFF000000FFFFFFFFFFFF
      FFF8FFCCFFFFF70FFFFFFF000000FFFFFFFFFFFFFFFF8FFFFFCCFF700FFFFF00
      0000FFFFFFFFFFFFFFFFF8FFCCFFFFF88FFFFF000000FFFFFFFFFFFFFFFFFF8F
      FFFFF88FFFFFFF000000FFFFFFFFFFFFFFFFFFF8FFF88FFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFF888FFFFFFFFFFF000000}
    Layout = blGlyphTop
  end
end
