object FRenoLetras: TFRenoLetras
  Left = 241
  Top = 174
  BorderStyle = bsDialog
  Caption = 'Renovaci'#243'n de Letras'
  ClientHeight = 339
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 9
    Top = 299
    Width = 487
    Height = 36
    Shape = bsFrame
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 115
    Width = 485
    Height = 65
    Caption = 'Previo'
    TabOrder = 0
    OnExit = bbtnOkClick
    object TLabel
      Left = 16
      Top = 17
      Width = 66
      Height = 13
      Caption = 'F. de  Emisi'#243'n'
    end
    object TLabel
      Left = 379
      Top = 17
      Width = 35
      Height = 13
      Caption = 'Importe'
    end
    object TLabel
      Left = 112
      Top = 18
      Width = 85
      Height = 13
      Caption = 'F. de Vencimiento'
    end
    object TLabel
      Left = 209
      Top = 18
      Width = 39
      Height = 13
      Caption = 'Moneda'
    end
    object TLabel
      Left = 312
      Top = 17
      Width = 58
      Height = 13
      Caption = 'T. de Camb.'
    end
    object dbdtpFEmis: TwwDBDateTimePicker
      Left = 14
      Top = 34
      Width = 95
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clBtnFace
      Epoch = 1950
      Enabled = False
      ShowButton = True
      TabOrder = 0
    end
    object dbdtpFVcmto: TwwDBDateTimePicker
      Left = 111
      Top = 34
      Width = 95
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clBtnFace
      Epoch = 1950
      Enabled = False
      ShowButton = True
      TabOrder = 1
    end
    object dbeImporte: TwwDBEdit
      Left = 379
      Top = 34
      Width = 95
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTMONDES: TwwDBEdit
      Left = 250
      Top = 34
      Width = 60
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTMOn: TwwDBEdit
      Left = 209
      Top = 34
      Width = 37
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTCamb: TwwDBEdit
      Left = 312
      Top = 34
      Width = 62
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeIMporte2Exit
      OnKeyPress = dbeIMporte2KeyPress
    end
  end
  object rgCodRenovacion: TRadioGroup
    Left = 9
    Top = 252
    Width = 487
    Height = 43
    Caption = 'C'#243'digo de Renovaci'#243'n'
    Columns = 3
    Items.Strings = (
      'Garant'#237'a'
      'Descuento'
      'Cartera')
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 9
    Top = 4
    Width = 485
    Height = 105
    Caption = 'Letra'
    TabOrder = 2
    object TLabel
      Left = 13
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object TLabel
      Left = 184
      Top = 56
      Width = 44
      Height = 13
      Caption = 'Situaci'#243'n'
    end
    object TLabel
      Left = 13
      Top = 15
      Width = 39
      Height = 13
      Caption = 'Letra N'#176
    end
    object TLabel
      Left = 142
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object TLabel
      Left = 340
      Top = 56
      Width = 69
      Height = 13
      Caption = 'Renovaciones'
    end
    object dbeLetra: TwwDBEdit
      Left = 14
      Top = 31
      Width = 121
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeClieid: TwwDBEdit
      Left = 142
      Top = 31
      Width = 60
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCliente: TwwDBEdit
      Left = 204
      Top = 31
      Width = 271
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUbiID: TwwDBEdit
      Left = 13
      Top = 72
      Width = 37
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUBIDes: TwwDBEdit
      Left = 55
      Top = 72
      Width = 121
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSitId: TwwDBEdit
      Left = 184
      Top = 72
      Width = 37
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSitDes: TwwDBEdit
      Left = 224
      Top = 72
      Width = 121
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeRenova: TwwDBEdit
      Left = 354
      Top = 72
      Width = 37
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object bbtnOk: TBitBtn
    Left = 429
    Top = 305
    Width = 30
    Height = 25
    TabOrder = 4
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
    Left = 462
    Top = 305
    Width = 30
    Height = 25
    TabOrder = 5
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
  object GroupBox2: TGroupBox
    Left = 9
    Top = 183
    Width = 487
    Height = 65
    Caption = 'Renovaci'#243'n'
    TabOrder = 1
    object TLabel
      Left = 16
      Top = 17
      Width = 66
      Height = 13
      Caption = 'F. de  Emisi'#243'n'
    end
    object TLabel
      Left = 379
      Top = 17
      Width = 35
      Height = 13
      Caption = 'Importe'
    end
    object TLabel
      Left = 112
      Top = 18
      Width = 85
      Height = 13
      Caption = 'F. de Vencimiento'
    end
    object TLabel
      Left = 209
      Top = 18
      Width = 39
      Height = 13
      Caption = 'Moneda'
    end
    object TLabel
      Left = 312
      Top = 17
      Width = 58
      Height = 13
      Caption = 'T. de Camb.'
    end
    object dbdtpFEmis2: TwwDBDateTimePicker
      Left = 14
      Top = 34
      Width = 95
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
      OnExit = dbdtpFEmis2Exit
    end
    object dbdtpFVcmto2: TwwDBDateTimePicker
      Left = 111
      Top = 34
      Width = 95
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object dbeIMporte2: TwwDBEdit
      Left = 379
      Top = 34
      Width = 95
      Height = 21
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeIMporte2Exit
      OnKeyPress = dbeIMporte2KeyPress
    end
    object dbeTMOnDes2: TwwDBEdit
      Left = 250
      Top = 34
      Width = 60
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTMon2: TwwDBEdit
      Left = 209
      Top = 34
      Width = 37
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTCamb2: TwwDBEdit
      Left = 312
      Top = 34
      Width = 62
      Height = 21
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeTCamb2Exit
      OnKeyPress = dbeIMporte2KeyPress
    end
  end
end
