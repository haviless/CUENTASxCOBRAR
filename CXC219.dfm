object FFRMBANK: TFFRMBANK
  Left = 0
  Top = 11
  Width = 800
  Height = 600
  Caption = 'Formato de Bancos'
  Color = clBtnFace
  Constraints.MaxHeight = 608
  Constraints.MaxWidth = 808
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 792
    Height = 263
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 792
      Height = 22
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Detalle de Formatos de Bancos'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dbgFDetPlan: TwwDBGrid
      Left = 0
      Top = 22
      Width = 792
      Height = 241
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnKeyDown = dbgFDetPlanKeyDown
    end
  end
  object dbgFBCO: TwwDBGrid
    Left = 0
    Top = 113
    Width = 792
    Height = 150
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 113
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object grBBCO: TGroupBox
      Left = 5
      Top = 3
      Width = 556
      Height = 64
      TabOrder = 0
      object Label11: TLabel
        Left = 275
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object Label1: TLabel
        Left = 8
        Top = 15
        Width = 49
        Height = 13
        Caption = 'Compa'#241#237'a'
      end
      object dblcBCO: TwwDBLookupCombo
        Left = 274
        Top = 32
        Width = 60
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BANCOID'#9'3'#9'C'#243'digo'#9'F'
          'BANCONOM'#9'40'#9'Descripci'#243'n'#9'F'
          'BANCOABR'#9'8'#9'Abreviatura'#9'F')
        LookupTable = DMCXC.cdsBanco
        LookupField = 'BANCOID'
        Options = [loColLines, loTitles]
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = dblcBCOChange
        OnNotInList = dblcNotInList
      end
      object dbeBCO: TwwDBEdit
        Left = 336
        Top = 32
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcCIA: TwwDBLookupCombo
        Left = 8
        Top = 32
        Width = 59
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CIAID'#9'2'#9'C'#243'digo'#9'F'
          'CIADES'#9'40'#9'Descripci'#243'n'#9'F'
          'CIAABR'#9'15'#9'Abreviatura'#9'F')
        LookupTable = DMCXC.cdsCia
        LookupField = 'CIAID'
        Options = [loColLines, loTitles]
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = dblcCIAChange
        OnExit = dblcExist
        OnNotInList = dblcNotInList
      end
      object dbeCIA: TwwDBEdit
        Left = 69
        Top = 32
        Width = 202
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object rgEst: TRadioGroup
      Left = 565
      Top = 3
      Width = 221
      Height = 64
      ItemIndex = 0
      Items.Strings = (
        'Pendientes'
        'Todos')
      TabOrder = 1
    end
    object Z2bbtnAceptar: TBitBtn
      Left = 754
      Top = 74
      Width = 32
      Height = 32
      Default = True
      TabOrder = 2
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 526
    Width = 792
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Z2bbtnCancel: TBitBtn
      Left = 755
      Top = 5
      Width = 32
      Height = 32
      Cancel = True
      TabOrder = 0
      OnClick = Z2bbtnCancelClick
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
    object bbtnPrintP: TBitBtn
      Left = 93
      Top = 5
      Width = 81
      Height = 32
      Hint = 'Imprimir Formato'
      Caption = 'Formato'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbtnPrintPCClick
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
    object bbtnPrintC: TBitBtn
      Left = 179
      Top = 5
      Width = 81
      Height = 32
      Hint = 'Imprimir Cargo'
      Caption = 'Cargo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbtnPrintPCClick
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
    object bbtnNUMPLA: TBitBtn
      Left = 7
      Top = 5
      Width = 81
      Height = 32
      Hint = 'Actualizar N'#250'mero de Planilla'
      Caption = '# Formato'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbtnNUMPLAClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object Z2bbtnGraba: TBitBtn
      Left = 719
      Top = 6
      Width = 32
      Height = 31
      Hint = 'Grabar Registro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object Z2bbtnRecibido: TBitBtn
      Left = 319
      Top = 5
      Width = 81
      Height = 32
      Hint = 'Imprimir Cargo'
      Caption = 'Recibido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Z2bbtnRecibidoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
  end
  object pRCARGO: TppReport
    AutoStop = False
    DataPipeline = pdbpCARGO
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 210874
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SOLCxC\Cliente\CXC219.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 176
    Top = 208
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'pdbpCARGO'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44979
      mmPrintPosition = 0
      object ptxtCIA: TppDBText
        UserName = 'ptxtCIA'
        DataField = 'CIADES'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 15875
        mmLeft = 0
        mmTop = 265
        mmWidth = 51858
        BandType = 0
      end
      object ptxtFecha: TppDBText
        UserName = 'ptxtFecha'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 3969
        mmLeft = 265
        mmTop = 16933
        mmWidth = 51594
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Cargo Formato N'#186' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 57150
        mmTop = 12171
        mmWidth = 44979
        BandType = 0
      end
      object ptxtNUM: TppDBText
        UserName = 'ptxtNUM'
        DataField = 'OEFMTBCO'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4763
        mmLeft = 105304
        mmTop = 12171
        mmWidth = 29898
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 1058
        mmWidth = 18521
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 173302
        mmTop = 5556
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 1058
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 160602
        mmTop = 5556
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Orden N'#186' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 26458
        mmWidth = 18521
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 23813
        mmWidth = 197644
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 43656
        mmWidth = 197909
        BandType = 0
      end
      object ptxtORD: TppDBText
        UserName = 'ptxtORD'
        DataField = 'OENUM'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4498
        mmLeft = 22490
        mmTop = 25665
        mmWidth = 17198
        BandType = 0
      end
      object ptxtBANCO: TppDBText
        UserName = 'ptxtBANCO'
        DataField = 'UBICADES'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4763
        mmLeft = 57415
        mmTop = 6615
        mmWidth = 78052
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'N'#186' de Letra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 35454
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fecha de Giro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 94721
        mmTop = 32544
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Fecha de Vencimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 117740
        mmTop = 32279
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Importe USD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 150019
        mmTop = 32279
        mmWidth = 20638
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ptxtLetra: TppDBText
        UserName = 'ptxtLetra'
        DataField = 'CCNODOC'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4233
        mmLeft = 52652
        mmTop = 0
        mmWidth = 34396
        BandType = 4
      end
      object ptxtFGIRO: TppDBText
        UserName = 'ptxtFGIRO'
        DataField = 'CCFEMIS'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ptxtFVCMTO: TppDBText
        UserName = 'ptxtFVCMTO'
        DataField = 'CCFVCMTO'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4233
        mmLeft = 118798
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ptxtIMPORTE: TppDBText
        UserName = 'ptxtIMPORTE'
        DataField = 'CCMTOEXT'
        DataPipeline = pdbpCARGO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbpCARGO'
        mmHeight = 4233
        mmLeft = 147109
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ptxtORD'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object plbCliente: TppLabel
          UserName = 'plbCliente'
          Caption = 'Cliente :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 3175
          mmTop = 0
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ptxtCliente: TppDBText
          UserName = 'ptxtCliente'
          DataField = 'CLIEDES'
          DataPipeline = pdbpCARGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pdbpCARGO'
          mmHeight = 4233
          mmLeft = 23548
          mmTop = 0
          mmWidth = 94456
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ptxtSIMPORTE: TppDBCalc
          UserName = 'ptxtSIMPORTE'
          DataField = 'CCMTOEXT'
          DataPipeline = pdbpCARGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pdbpCARGO'
          mmHeight = 4233
          mmLeft = 146844
          mmTop = 1588
          mmWidth = 26194
          BandType = 5
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Total Cliente :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 1588
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 197644
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ptxtCliente'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
      end
    end
  end
  object pdbpCARGO: TppDBPipeline
    UserName = 'pdbpCARGO'
    Left = 136
    Top = 208
  end
end
