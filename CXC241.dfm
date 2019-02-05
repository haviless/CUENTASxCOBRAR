object FImportarRVChess: TFImportarRVChess
  Left = 350
  Top = 184
  Width = 455
  Height = 346
  Caption = 'Importar Registro de Ventas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 55
    Height = 13
    Caption = 'Compa'#241#237'a :'
  end
  object Label2: TLabel
    Left = 32
    Top = 57
    Width = 54
    Height = 13
    Caption = 'Tipo Diario:'
  end
  object Label3: TLabel
    Left = 32
    Top = 81
    Width = 42
    Height = 13
    Caption = 'Periodo :'
  end
  object Label4: TLabel
    Left = 32
    Top = 113
    Width = 24
    Height = 13
    Caption = 'Lote:'
  end
  object Label5: TLabel
    Left = 32
    Top = 137
    Width = 148
    Height = 13
    Caption = 'Archivo en Formato TXT / CSV'
  end
  object edtRutaArchivo: TEdit
    Left = 32
    Top = 150
    Width = 278
    Height = 21
    TabOrder = 4
  end
  object btnBuscarArchivo: TButton
    Left = 313
    Top = 144
    Width = 33
    Height = 31
    Caption = '...'
    TabOrder = 3
    OnClick = btnBuscarArchivoClick
  end
  object dblcCompania: TwwDBLookupCombo
    Left = 104
    Top = 24
    Width = 49
    Height = 21
    DropDownAlignment = taLeftJustify
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcCompaniaExit
    OnKeyPress = FormKeyPress
  end
  object edtCompania: TEdit
    Left = 153
    Top = 23
    Width = 192
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 7
  end
  object dblcTipoDiario: TwwDBLookupCombo
    Left = 104
    Top = 49
    Width = 49
    Height = 21
    DropDownAlignment = taLeftJustify
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcTipoDiarioExit
    OnKeyPress = FormKeyPress
  end
  object edtTipoDiario: TEdit
    Left = 153
    Top = 48
    Width = 192
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
  object edtPeriodo: TEdit
    Left = 105
    Top = 80
    Width = 88
    Height = 21
    TabOrder = 2
    OnExit = edtPeriodoExit
    OnKeyPress = FormKeyPress
  end
  object edtLote: TEdit
    Left = 105
    Top = 112
    Width = 88
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object edtLogResultado: TMemo
    Left = 32
    Top = 188
    Width = 313
    Height = 49
    Lines.Strings = (
      'edtLogResultado')
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object btnGrabarRegVentas: TButton
    Left = 240
    Top = 244
    Width = 107
    Height = 25
    Caption = 'Grabar Reg Ventas'
    TabOrder = 5
    OnClick = btnGrabarRegVentasClick
  end
  object btnNuevo: TBitBtn
    Left = 346
    Top = 144
    Width = 31
    Height = 31
    Hint = 'Nuevo Registro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Garamond'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btnNuevoClick
    Glyph.Data = {
      96010000424D9601000000000000760000002800000017000000180000000100
      04000000000020010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
      BBBBBBBBBBB08887777777777777777778B08800000000000000000078B0880F
      FFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF0
      78B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFF
      FFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880F
      FFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF0
      78B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFFFFFFFFF078B0880FFFFFFFFF
      FF00000078B0880FFFFFFFFFFF0FF88088B0880FFFFFFFFFFF0F880888B0880F
      FFFFFFFFFF08808888B0880FFFFFFFFFFF08088888B088000000000000008888
      88B08888888888888888888888B08888888888888888888888B0}
  end
  object prgb_Progreso: TProgressBar
    Left = 32
    Top = 280
    Width = 313
    Height = 17
    TabOrder = 11
  end
  object btnProcesar: TButton
    Left = 120
    Top = 244
    Width = 107
    Height = 25
    Caption = 'Procesar Importaci'#243'n'
    Enabled = False
    TabOrder = 12
    OnClick = btnProcesarClick
  end
  object rgOrigenArch: TRadioGroup
    Left = 208
    Top = 80
    Width = 105
    Height = 57
    Caption = 'Origen'
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Sistemas'
      'PLE InfHotel')
    TabOrder = 13
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 14
    OnClick = BitBtn1Click
  end
  object odlgSeleccionarArchivo: TOpenDialog
    Left = 272
    Top = 72
  end
end
