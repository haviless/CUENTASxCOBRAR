object FEmiDoc: TFEmiDoc
  Left = 178
  Top = 98
  BorderStyle = bsDialog
  Caption = 'FEmiDoc'
  ClientHeight = 433
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 5
    Top = 328
    Width = 783
    Height = 55
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 28
    Top = 338
    Width = 74
    Height = 13
    Caption = 'Monto Gravado'
  end
  object Label2: TLabel
    Left = 170
    Top = 338
    Width = 89
    Height = 13
    Caption = 'Monto no Gravado'
  end
  object Label3: TLabel
    Left = 312
    Top = 338
    Width = 18
    Height = 13
    Caption = 'IGV'
  end
  object Label4: TLabel
    Left = 454
    Top = 338
    Width = 17
    Height = 13
    Caption = 'ISC'
  end
  object Bevel2: TBevel
    Left = 5
    Top = 32
    Width = 783
    Height = 293
    Shape = bsFrame
  end
  object Bevel3: TBevel
    Left = 5
    Top = 386
    Width = 783
    Height = 41
    Shape = bsFrame
  end
  object Bevel4: TBevel
    Left = 586
    Top = 341
    Width = 165
    Height = 38
    Shape = bsFrame
  end
  object dbgEmiDoc: TwwDBGrid
    Left = 11
    Top = 38
    Width = 771
    Height = 281
    DisableThemesInTitle = False
    Selected.Strings = (
      'DDECORR'#9'3'#9'Item'#9'F'
      'DDEDES'#9'59'#9'Glosa'#9'F'
      'DDECANT'#9'14'#9'Cantidad'#9'F'
      'DDEPU'#9'15'#9'Precio ~Unitario'#9'F'
      'DDEPT'#9'14'#9'Precio ~Total'#9'F'
      'INCIGV'#9'1'#9'INC~IGV'#9'F'
      'DDEIGV'#9'3'#9'CAL~IGV'#9'F'
      'DDEISC'#9'3'#9'ISC'#9'F'
      'CPTOID'#9'15'#9'CPTOID'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    DataSource = dsEmidoc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgEmiDocDblClick
    OnKeyDown = dbgEmiDocKeyDown
    OnKeyPress = dbgEmiDocKeyPress
    object dbgEmiDocIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 25
      Height = 22
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
      OnClick = dbgEmiDocIButtonClick
    end
  end
  object edtMtoGravado: TEdit
    Left = 28
    Top = 354
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 1
  end
  object edtMtoNoGrav: TEdit
    Left = 170
    Top = 354
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 2
  end
  object edtIGV: TEdit
    Left = 312
    Top = 354
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 3
  end
  object edtISC: TEdit
    Left = 454
    Top = 354
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 4
  end
  object StaticText1: TStaticText
    Left = 9
    Top = 7
    Width = 264
    Height = 22
    Caption = 'Datos para Emisi'#243'n de Documentos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Z2bbtnGraba: TBitBtn
    Left = 717
    Top = 391
    Width = 32
    Height = 31
    Hint = 'Graba'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
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
  object Z2bbtnSalir: TBitBtn
    Left = 752
    Top = 391
    Width = 32
    Height = 31
    Hint = 'Salir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Z2bbtnSalirClick
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
    NumGlyphs = 2
  end
  object edtTotal: TEdit
    Left = 590
    Top = 354
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 8
    OnExit = edtTotalExit
  end
  object Z2bbtnGeneraVV: TBitBtn
    Left = 716
    Top = 347
    Width = 30
    Height = 28
    Hint = 'Genera Valor Venta e IGV'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Z2bbtnGeneraVVClick
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
  object CheckBox1: TCheckBox
    Left = 592
    Top = 333
    Width = 47
    Height = 17
    Caption = 'Total'
    TabOrder = 10
    OnClick = CheckBox1Click
  end
  object pnlConcepto: TPanel
    Left = 216
    Top = 118
    Width = 393
    Height = 179
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    TabOrder = 11
    Visible = False
    object lblConcepto: TLabel
      Left = 8
      Top = 24
      Width = 46
      Height = 21
      AutoSize = False
      Caption = 'Concepto'
      Layout = tlCenter
    end
    object lblDescri: TLabel
      Left = 8
      Top = 48
      Width = 56
      Height = 21
      AutoSize = False
      Caption = 'Descripci'#243'n'
      Layout = tlCenter
    end
    object lblCantidad: TLabel
      Left = 28
      Top = 73
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'Cantidad'
      Layout = tlCenter
    end
    object lblPreUni: TLabel
      Left = 104
      Top = 73
      Width = 55
      Height = 21
      AutoSize = False
      Caption = 'Precio Unit.'
      Layout = tlCenter
    end
    object lblPreTot: TLabel
      Left = 185
      Top = 73
      Width = 43
      Height = 21
      AutoSize = False
      Caption = 'Precio T.'
      Layout = tlCenter
    end
    object lblIgv: TLabel
      Left = 29
      Top = 125
      Width = 68
      Height = 13
      AutoSize = False
      Caption = 'Calcular I.G.V.'
      Layout = tlCenter
    end
    object lblIsc: TLabel
      Left = 143
      Top = 125
      Width = 67
      Height = 13
      AutoSize = False
      Caption = 'Calcular I.S.C.'
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 274
      Top = 96
      Width = 75
      Height = 13
      AutoSize = False
      Caption = 'Total con I.G.V.'
      Layout = tlCenter
    end
    object Bevel5: TBevel
      Left = 174
      Top = 72
      Width = 187
      Height = 46
      Shape = bsFrame
    end
    object dblcdConcepto: TwwDBLookupComboDlg
      Left = 74
      Top = 24
      Width = 120
      Height = 21
      AutoSize = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CPTOCAB'#9'12'#9'Id'#9'F'
        'CPTODES'#9'30'#9'Concepto'#9'F')
      LookupTable = DMCXC.cdsCpto
      LookupField = 'CPTOID'
      Style = csDropDownList
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdConceptoExit
    end
    object dbeDescri: TwwDBEdit
      Left = 74
      Top = 48
      Width = 303
      Height = 21
      DataField = 'DDEDES'
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCantidad: TwwDBEdit
      Left = 28
      Top = 91
      Width = 65
      Height = 21
      DataField = 'DDECANT'
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeCantidadExit
    end
    object dbePreUni: TwwDBEdit
      Left = 100
      Top = 91
      Width = 65
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      DataField = 'DDEPU'
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbePreTot: TwwDBEdit
      Left = 185
      Top = 91
      Width = 65
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      DataField = 'DDEPT'
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object StaticText2: TStaticText
      Left = 4
      Top = 4
      Width = 381
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Datos para Emisi'#243'n de Documentos'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object bbtnRegOk: TBitBtn
      Left = 311
      Top = 135
      Width = 30
      Height = 28
      Hint = 'Confirma Actualizaci'#243'n'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Left = 345
      Top = 135
      Width = 30
      Height = 28
      Hint = 'Cancela Actualizaci'#243'n'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object chbIGV: TCheckBox
      Left = 103
      Top = 125
      Width = 16
      Height = 17
      Caption = 'chbIGV'
      Enabled = False
      TabOrder = 8
    end
    object chbISC: TCheckBox
      Left = 219
      Top = 125
      Width = 16
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 9
    end
    object chbtotalIgv: TCheckBox
      Left = 255
      Top = 96
      Width = 16
      Height = 17
      Caption = 'chbIGV'
      Checked = True
      State = cbChecked
      TabOrder = 10
      OnClick = chbtotalIgvClick
    end
  end
  object dsEmidoc: TwwDataSource
    DataSet = cdsEmiDoc
    Left = 392
    Top = 8
  end
  object cdsEmiDoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEmiDoc'
    RemoteServer = DMCXC.DCOM1
    BeforePost = cdsEmiDocBeforePost
    AfterPost = cdsEmiDocAfterPost
    AfterDelete = cdsEmiDocAfterDelete
    ControlType.Strings = (
      'INCIGV;CheckBox;I;S'
      'DDEIGV;CheckBox;S;N'
      'DDEISC;CheckBox;S;N')
    ValidateWithMask = True
    Left = 328
    Top = 8
  end
end
