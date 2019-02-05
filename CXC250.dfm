object FLetraHist: TFLetraHist
  Left = 224
  Top = 204
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Historico de Letras'
  ClientHeight = 448
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 41
    Height = 13
    Caption = 'No.Letra'
  end
  object Label2: TLabel
    Left = 314
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Fecha de Giro'
  end
  object Label3: TLabel
    Left = 463
    Top = 8
    Width = 39
    Height = 13
    Caption = 'Moneda'
  end
  object Label4: TLabel
    Left = 20
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Cl.Aux.'
  end
  object Label5: TLabel
    Left = 76
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label6: TLabel
    Left = 183
    Top = 56
    Width = 32
    Height = 13
    Caption = 'R.U.C.'
  end
  object Label7: TLabel
    Left = 318
    Top = 56
    Width = 112
    Height = 13
    Caption = 'Nombre o Raz'#243'n Social'
  end
  object Label8: TLabel
    Left = 561
    Top = 104
    Width = 67
    Height = 13
    Caption = 'F.Vencimiento'
  end
  object Label9: TLabel
    Left = 649
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Importe'
  end
  object Label10: TLabel
    Left = 24
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Ubicaci'#243'n'
  end
  object Label11: TLabel
    Left = 294
    Top = 104
    Width = 44
    Height = 13
    Caption = 'Situaci'#243'n'
  end
  object Label12: TLabel
    Left = 171
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Fecha Emisi'#243'n'
  end
  object Label13: TLabel
    Left = 568
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object dbgHist: TwwDBGrid
    Left = 8
    Top = 152
    Width = 761
    Height = 257
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object BitBtn1: TBitBtn
    Left = 624
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object dbeLetra: TwwDBEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    DataField = 'CCNODOC'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeTMon: TwwDBEdit
    Left = 462
    Top = 24
    Width = 41
    Height = 21
    DataField = 'TMONID'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dtpFGiro: TwwDBDateTimePicker
    Left = 316
    Top = 24
    Width = 120
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'CCFVALOR'
    DataSource = DMCXC.dsLetras
    Epoch = 1950
    Enabled = False
    ShowButton = True
    TabOrder = 4
  end
  object edtTMon: TwwDBEdit
    Left = 504
    Top = 24
    Width = 120
    Height = 21
    Enabled = False
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeClie: TwwDBEdit
    Left = 76
    Top = 72
    Width = 101
    Height = 21
    DataField = 'CLIEID'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeClieRuc: TwwDBEdit
    Left = 183
    Top = 72
    Width = 130
    Height = 21
    DataField = 'CLIERUC'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object edtClie: TwwDBEdit
    Left = 318
    Top = 72
    Width = 241
    Height = 21
    Enabled = False
    TabOrder = 8
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeClAux: TwwDBEdit
    Left = 24
    Top = 72
    Width = 49
    Height = 21
    DataField = 'CLAUXID'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeUbi: TwwDBEdit
    Left = 24
    Top = 120
    Width = 41
    Height = 21
    DataField = 'UBIID'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 10
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object edtUbi: TwwDBEdit
    Left = 66
    Top = 120
    Width = 200
    Height = 21
    Enabled = False
    TabOrder = 11
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeSit: TwwDBEdit
    Left = 294
    Top = 120
    Width = 41
    Height = 21
    DataField = 'SITID'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 12
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object edtSit: TwwDBEdit
    Left = 336
    Top = 120
    Width = 200
    Height = 21
    Enabled = False
    TabOrder = 13
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dbeImporte: TwwDBEdit
    Left = 649
    Top = 24
    Width = 105
    Height = 21
    DataField = 'CCMTOORI'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 14
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dtpFVcmto: TwwDBDateTimePicker
    Left = 561
    Top = 120
    Width = 120
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'CCFVCMTO'
    DataSource = DMCXC.dsLetras
    Date = 36753.000000000000000000
    Epoch = 1950
    Enabled = False
    ShowButton = True
    TabOrder = 15
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker
    Left = 171
    Top = 24
    Width = 120
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'CCFEMIS'
    DataSource = DMCXC.dsLetras
    Date = 36753.000000000000000000
    Epoch = 1950
    Enabled = False
    ShowButton = True
    TabOrder = 16
  end
  object wwDBEdit1: TwwDBEdit
    Left = 569
    Top = 72
    Width = 105
    Height = 21
    DataField = 'CCUSER'
    DataSource = DMCXC.dsLetras
    Enabled = False
    TabOrder = 17
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
end
