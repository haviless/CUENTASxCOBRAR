object FPNLBCO: TFPNLBCO
  Left = 122
  Top = 64
  Width = 800
  Height = 600
  Caption = 'Planilla de Bancos'
  Color = clBtnFace
  Constraints.MaxHeight = 600
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
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
  object pnlHEADER: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 239
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 87
      Width = 63
      Height = 13
      Caption = 'N'#186' de Planilla'
    end
    object Label5: TLabel
      Left = 142
      Top = 87
      Width = 89
      Height = 13
      Caption = 'N'#186' Cta Cte. Gastos'
    end
    object Label6: TLabel
      Left = 253
      Top = 87
      Width = 33
      Height = 13
      Caption = 'Fecha '
    end
    object Bevel1: TBevel
      Left = 4
      Top = 130
      Width = 786
      Height = 4
      Shape = bsTopLine
    end
    object Label17: TLabel
      Left = 562
      Top = 87
      Width = 66
      Height = 13
      Caption = 'Saldo Anterior'
    end
    object Label18: TLabel
      Left = 674
      Top = 87
      Width = 60
      Height = 13
      Caption = 'Saldo Actual'
    end
    object Label20: TLabel
      Left = 352
      Top = 87
      Width = 88
      Height = 13
      Caption = 'Tipo de Operaci'#243'n'
    end
    object grbCIA: TGroupBox
      Left = 3
      Top = 3
      Width = 321
      Height = 64
      TabOrder = 0
      object Label11: TLabel
        Left = 7
        Top = 16
        Width = 49
        Height = 13
        Caption = 'Compa'#241#237'a'
      end
      object dblcCIA: TwwDBLookupCombo
        Left = 7
        Top = 33
        Width = 59
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIAID'#9'2'#9'C'#243'digo'#9'F'
          'CIADES'#9'40'#9'Descripci'#243'n'#9'F'
          'CIAABR'#9'15'#9'Abreviatura'#9'F')
        DataField = 'CIAID'
        LookupField = 'CIAID'
        Options = [loColLines, loTitles]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcCIAChange
        OnExit = dblcCIAExit
        OnNotInList = NotInList
      end
      object dbeCIA: TwwDBEdit
        Left = 69
        Top = 33
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object grbBCO: TGroupBox
      Left = 328
      Top = 3
      Width = 461
      Height = 64
      Caption = 'Banco - N'#186' de Cuenta Corriente'
      TabOrder = 1
      object Label1: TLabel
        Left = 5
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object Label3: TLabel
        Left = 275
        Top = 16
        Width = 53
        Height = 13
        Caption = 'N'#186' Cta Cte.'
      end
      object Label4: TLabel
        Left = 386
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Moneda'
      end
      object dblcBCO: TwwDBLookupCombo
        Left = 5
        Top = 33
        Width = 59
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BANCOID'#9'3'#9'C'#243'digo'#9'F'
          'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F'
          'BANCOABR'#9'8'#9'Abreviatura'#9'F')
        DataField = 'BANCOID'
        LookupField = 'BANCOID'
        Options = [loColLines, loTitles]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcBCOChange
        OnExit = dblcBCOExit
        OnNotInList = NotInList
      end
      object dbeBCO: TwwDBEdit
        Left = 67
        Top = 33
        Width = 204
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcCCB: TwwDBLookupCombo
        Left = 275
        Top = 33
        Width = 107
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CCBCOID'#9'20'#9'Cta. Corriente'#9'F'
          'CCBCODES'#9'40'#9'Descripci'#243'n'#9'F')
        DataField = 'CCBCOID'
        LookupField = 'CCBCOID'
        Options = [loColLines, loTitles]
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = dblcCCBExit
        OnNotInList = NotInList
      end
      object dbeMON: TwwDBEdit
        Left = 385
        Top = 33
        Width = 70
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object dbeNPLA: TwwDBEdit
      Left = 7
      Top = 103
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLBCID'
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcCCBG: TwwDBLookupCombo
      Left = 142
      Top = 103
      Width = 107
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CCBCOID'#9'20'#9'Cta. Corriente'#9'F'
        'CCBCODES'#9'40'#9'Descripci'#243'n'#9'F')
      DataField = 'CCBCOGASTOS'
      LookupField = 'CCBCOID'
      Options = [loColLines, loTitles]
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcCCBGExit
      OnNotInList = NotInList
    end
    object dbeFECHA: TwwDBDateTimePicker
      Left = 252
      Top = 103
      Width = 97
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'PLBCFECHA'
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
      DisplayFormat = 'DD/MM/YYYY'
      OnExit = dbeFECHAExit
    end
    object grbIntereses: TGroupBox
      Left = 5
      Top = 136
      Width = 258
      Height = 62
      Caption = 'Intereses'
      TabOrder = 9
      object Label7: TLabel
        Left = 7
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Moratorio'
      end
      object Label8: TLabel
        Left = 88
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Compensatorio'
      end
      object Label9: TLabel
        Left = 172
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Renovaci'#243'n'
      end
      object dbeIntMOR: TwwDBEdit
        Left = 6
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCINTMORA'
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeIntCOM: TwwDBEdit
        Left = 88
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCINTCOMP'
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeIntREN: TwwDBEdit
        Left = 171
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCINTRENO'
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object grbComisiones: TGroupBox
      Left = 267
      Top = 136
      Width = 258
      Height = 62
      Caption = 'Comisiones'
      TabOrder = 10
      object Label10: TLabel
        Left = 7
        Top = 16
        Width = 45
        Height = 13
        Caption = 'Cobranza'
      end
      object Label12: TLabel
        Left = 88
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Protesto'
      end
      object Label13: TLabel
        Left = 172
        Top = 16
        Width = 42
        Height = 13
        Caption = 'T/Fondo'
      end
      object dbeComCOB: TwwDBEdit
        Left = 6
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCCOBRANZA'
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeComPRO: TwwDBEdit
        Left = 88
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCPROTESTO'
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeComTFO: TwwDBEdit
        Left = 171
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCTFONDO'
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object grbOtros: TGroupBox
      Left = 528
      Top = 136
      Width = 258
      Height = 62
      Caption = 'Otros'
      TabOrder = 11
      object Label14: TLabel
        Left = 7
        Top = 16
        Width = 43
        Height = 13
        Caption = 'Intereses'
      end
      object Label15: TLabel
        Left = 88
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Gastos'
      end
      object Label16: TLabel
        Left = 172
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Otros'
      end
      object dbeOtINTR: TwwDBEdit
        Left = 6
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCINTERESES'
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeOtGAS: TwwDBEdit
        Left = 88
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCGASTOS'
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeOtOTR: TwwDBEdit
        Left = 171
        Top = 32
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PLBCOTROS'
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Z2bbtnAceptar: TBitBtn
      Left = 755
      Top = 204
      Width = 32
      Height = 32
      TabOrder = 12
      OnClick = Z2bbtnAceptarClick
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
    object wwDBEdit1: TwwDBEdit
      Left = 561
      Top = 103
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLBCSALDOANT'
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 674
      Top = 103
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLBCSALDOACT'
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcGrupo: TwwDBLookupCombo
      Left = 351
      Top = 103
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'GRUPOID'#9'5'#9'Grupo'#9'F'
        'GRUPODES'#9'15'#9'Descripci'#243'n'#9'F')
      DataField = 'GRUPOID'
      LookupTable = DMCXC.cdsTOPERBCO
      LookupField = 'TOPID'
      Options = [loColLines, loTitles]
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcGrupoExit
      OnNotInList = NotInList1
    end
    object dbeTipoOpera: TwwDBEdit
      Left = 401
      Top = 103
      Width = 140
      Height = 21
      Enabled = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 526
    Width = 792
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object lblTOTAL: TLabel
      Left = 444
      Top = 16
      Width = 3
      Height = 13
    end
    object Z2bbtnCerrar: TBitBtn
      Left = 721
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Cerrar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Z2bbtnCerrarClick
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
    object Z2bbtnGraba: TBitBtn
      Left = 651
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Grabar Registro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
    object Z2bbtNUEVO: TBitBtn
      Left = 756
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Nuevo Registro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Z2bbtNUEVOClick
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
    object bbtnBusca: TBitBtn
      Left = 616
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Buscar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbtnBuscaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object bbtnAcepta: TBitBtn
      Left = 686
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Aceptar la Planilla'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbtnAceptaClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
    object bbtnSuma: TBitBtn
      Left = 581
      Top = 6
      Width = 32
      Height = 32
      TabOrder = 5
      OnClick = bbtnSumaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbtnNumera: TBitBtn
      Left = 546
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Numerar Items'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbtnNumeraClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F33F333F3337F330FF0FFF0FFF
        F03337F37F337F3337F330FF0FFF0FFFF03337F37FFF7FFF37F330F00000000F
        F03337F77777777337F330FFF0FFF0FFF03337F337F337F337F330FFF0FFF0FF
        F03337F337FFF7FFF7F330FF00000000F03337F37777777737F330FFFF0FFF0F
        F03337F3337F337F37F330FFFF0FFF0FF03337F33373337337F330FFFFFFFFFF
        F03337F33333333FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
    end
    object bbtnSelecciona: TBitBtn
      Left = 511
      Top = 6
      Width = 32
      Height = 32
      Hint = 'Selecciona todas las letras'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbtnSeleccionaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333FFF33F333FF3F330E0330FFFCCFCC33777FF7F3377F7730EEE030FFFC
        CFCC377777F7F33773770EEE0000FFFFFCCF777777773F33377FEEE0BFBF0FFF
        FCCF7777333373F337730E0BFBFBF0FFCCFF77733333373F77F330BFBFBFBF0F
        CCFF37F333333F7F773330FBFBFB0B0FFFFF37F3F33F737FFFFF30B0BF0FB000
        000037F73F73F777777730FB0BF0FB0FFFFF373F73F73F7F333F330030BF0F0F
        FF993F77373F737F3377CC33330BF00FFF9977FFF373F77F3F77CC993330009F
        99FF7777F337777F77F333993330F99F99FF3F77FF37F773773F993CC330FFF9
        9F9977F77F37F3377F77993CC330FFF99F997737733733377377}
      NumGlyphs = 2
    end
    object bbtnCalc: TBitBtn
      Left = 8
      Top = 5
      Width = 32
      Height = 32
      Hint = 'Calculadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bbtnCalcClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
  end
  object pnlDetalle: TPanel
    Left = 0
    Top = 239
    Width = 792
    Height = 287
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label19: TLabel
      Left = 508
      Top = 168
      Width = 38
      Height = 13
      Caption = 'Label19'
    end
    object dbgFDetPlan: TwwDBGrid
      Left = 0
      Top = 22
      Width = 792
      Height = 265
      DisableThemesInTitle = False
      Selected.Strings = (
        'OK'#9'1'#9'OK'#9'F'
        'ESTADO'#9'1'#9'Eje.'#9'T'
        'DPLBCID'#9'3'#9'N'#186#9'F'
        'CCNODOC'#9'12'#9'N'#186' Letra'#9'F'
        'DPLBCNBCOLETR'#9'10'#9'N'#186' Letra Banco'#9'F'
        'CCFVCMTO'#9'12'#9'Fecha de~ Vencimiento'#9'F'
        'DPLBCINGRESOS'#9'12'#9'Saldo'#9'F'
        'TOPID'#9'6'#9'T.O.'#9'F'
        'TOPDES'#9'15'#9'Tipo~Operaci'#243'n'#9'F'
        'DOCID'#9'2'#9'DOCID'#9'F'
        'FLAGPROT'#9'1'#9'FLAGPROT'#9'T')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Enabled = False
      KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      TabOrder = 2
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnCalcCellColors = dbgFDetPlanCalcCellColors
      OnDblClick = dbgFDetPlanDblClick
      OnFieldChanged = dbgFDetPlanFieldChanged
      object bbtnDPLN: TwwIButton
        Left = 0
        Top = 0
        Width = 27
        Height = 33
        AllowAllUp = True
        Enabled = False
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
        OnClick = bbtnDPLNClick
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 792
      Height = 22
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Detalle de Planilla de Bancos'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dblcTOP: TwwDBLookupCombo
      Left = 403
      Top = 273
      Width = 42
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TOPID'#9'2'#9'C'#243'digo'#9'F'
        'TOPDES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupField = 'TOPID'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcTOPExit
      OnNotInList = NotInList1
    end
    object pnlAvi: TPanel
      Left = 280
      Top = 104
      Width = 197
      Height = 85
      Alignment = taLeftJustify
      Caption = '   Buscando...'
      TabOrder = 3
      Visible = False
      object aBusca: TAnimate
        Left = 67
        Top = 8
        Width = 110
        Height = 65
        Cursor = crSQLWait
        AutoSize = False
        BorderWidth = 3
        CommonAVI = aviFindFile
        StopFrame = 8
      end
    end
  end
end
