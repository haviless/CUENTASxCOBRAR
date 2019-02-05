object FEstCxCli: TFEstCxCli
  Left = 101
  Top = 77
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Estados de Cuenta por Cliente'
  ClientHeight = 630
  ClientWidth = 866
  Color = clBtnFace
  Constraints.MaxHeight = 664
  Constraints.MaxWidth = 874
  Constraints.MinHeight = 559
  Constraints.MinWidth = 743
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Draft 12cpi'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label17: TLabel
    Left = 381
    Top = 72
    Width = 85
    Height = 17
    Caption = 'Saldo Ant. M.E.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 480
    Top = 72
    Width = 65
    Height = 17
    Caption = 'Cargos M.E.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 577
    Top = 72
    Width = 66
    Height = 17
    Caption = 'Abonos M.E.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 675
    Top = 72
    Width = 85
    Height = 17
    Caption = 'Saldo Act. M.E.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object pnlFOOT: TPanel
    Left = 0
    Top = 582
    Width = 866
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Z2bbtnCancel: TBitBtn
      Left = 796
      Top = 14
      Width = 45
      Height = 30
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
    object bbtnPrint: TBitBtn
      Left = 564
      Top = 15
      Width = 41
      Height = 30
      TabOrder = 1
      OnClick = bbtnPrintClick
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
    object BitBtn1: TBitBtn
      Left = 748
      Top = 13
      Width = 46
      Height = 32
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Z2bbtnRepAnos: TBitBtn
      Left = 701
      Top = 14
      Width = 45
      Height = 31
      Hint = 'Reporte Anual'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Z2bbtnRepAnosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object Z2bbtnOtros: TBitBtn
      Left = 653
      Top = 14
      Width = 48
      Height = 31
      Hint = 'Otros Clientes de este grupo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Z2bbtnOtrosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbtnImprimeAmortiza: TBitBtn
      Left = 606
      Top = 15
      Width = 43
      Height = 30
      TabOrder = 5
      Visible = False
      OnClick = bbtnImprimeAmortizaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 155
    Width = 866
    Height = 429
    ActivePage = TabSheet5
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet6: TTabSheet
      Caption = 'Todos'
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 858
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Todos los Documentos'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgTodos: TwwDBGrid
        Left = 0
        Top = 23
        Width = 858
        Height = 378
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
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = dbgTodosTitleButtonClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Documentos'
      PopupMenu = ppmDocu
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 858
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Documentos por Cobrar'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgEst2: TwwDBGrid
        Left = 0
        Top = 23
        Width = 858
        Height = 378
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = True
        OnCalcCellColors = dbgEst2CalCellColors
        OnCalcTitleAttributes = dbgEst2CalcTitleAttributes
        OnTitleButtonClick = dbgEst2TitleButtonClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Letras'
      ImageIndex = 4
      PopupMenu = ppmLetra
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 858
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Letras por Cobrar'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgEst3: TwwDBGrid
        Left = 0
        Top = 23
        Width = 858
        Height = 378
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = True
        OnCalcCellColors = dbgEst3CalcCellColors
        OnCalcTitleAttributes = dbgEst3CalcTitleAttributes
        OnTitleButtonClick = dbgEst3TitleButtonClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cheques Devueltos'
      ImageIndex = 1
      PopupMenu = ppmChDev
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Cheques por Devueltos'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgEst4: TwwDBGrid
        Left = 0
        Top = 23
        Width = 857
        Height = 375
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = dbgEst4TitleButtonClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Cheques Diferidos'
      ImageIndex = 6
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Cheques por Diferidos'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgEst7: TwwDBGrid
        Left = 0
        Top = 23
        Width = 857
        Height = 374
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = dbgEst7TitleButtonClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Anticipo'
      ImageIndex = 2
      PopupMenu = ppmAntic
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Anticipos'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgEst5: TwwDBGrid
        Left = 0
        Top = 23
        Width = 857
        Height = 375
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = dbgEst5TitleButtonClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'N. Credito'
      ImageIndex = 3
      PopupMenu = ppmNCre
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Notas de Cr'#233'dito'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbgEst6: TwwDBGrid
        Left = 0
        Top = 23
        Width = 857
        Height = 375
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = dbgEst6TitleButtonClick
      end
    end
  end
  object pnlLetras: TPanel
    Left = 12
    Top = 296
    Width = 845
    Height = 282
    Caption = 'pnlLetras'
    TabOrder = 4
    Visible = False
    object lblDocumento: TLabel
      Left = 9
      Top = 23
      Width = 36
      Height = 19
      Caption = 'LET '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgHist: TwwDBGrid
      Left = 1
      Top = 41
      Width = 843
      Height = 238
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Draft 12cpi'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dbgHistDblClick
    end
    object pnlHist: TStaticText
      Left = 1
      Top = 1
      Width = 843
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Cancelaciones de letras'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object bbtnCierraHist: TBitBtn
      Left = 823
      Top = 3
      Width = 19
      Height = 20
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbtnCierraHistClick
    end
  end
  object pnlHEAD: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 155
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl2: TPageControl
      Left = 0
      Top = 0
      Width = 866
      Height = 155
      ActivePage = TabSheet8
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet8: TTabSheet
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object Label11: TLabel
          Left = 8
          Top = 0
          Width = 39
          Height = 17
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 82
          Width = 55
          Height = 17
          Caption = 'L. Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 106
          Top = 82
          Width = 57
          Height = 17
          Caption = 'Disponible'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 512
          Top = 82
          Width = 75
          Height = 17
          Caption = 'Sdo Ant. M.E.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 672
          Top = 82
          Width = 66
          Height = 17
          Caption = 'Abonos M.E.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 369
          Top = 0
          Width = 53
          Height = 17
          Caption = 'Direcci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 41
          Width = 62
          Height = 17
          Caption = 'Tel'#233'fono(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 83
          Top = 41
          Width = 79
          Height = 17
          Caption = 'Zona de Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 183
          Top = 41
          Width = 78
          Height = 17
          Caption = 'Sect de Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 592
          Top = 82
          Width = 65
          Height = 17
          Caption = 'Cargos M.E.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 753
          Top = 82
          Width = 85
          Height = 17
          Caption = 'Saldo Act. M.E.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 753
          Top = 41
          Width = 87
          Height = 17
          Caption = 'Saldo Act. M.N.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 672
          Top = 41
          Width = 68
          Height = 17
          Caption = 'Abonos M.N.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 592
          Top = 41
          Width = 67
          Height = 17
          Caption = 'Cargos M.N.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 512
          Top = 41
          Width = 77
          Height = 17
          Caption = 'Sdo Ant. M.N.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 691
          Top = 0
          Width = 47
          Height = 17
          Caption = 'Distrito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object rgEST: TRadioGroup
          Left = 267
          Top = 52
          Width = 191
          Height = 70
          Caption = 'Estados de Cr'#233'dito'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ItemIndex = 1
          Items.Strings = (
            'Todos'
            'Pendientes'
            'Cancelados'
            'Pend. Acept.')
          ParentFont = False
          TabOrder = 17
        end
        object dbeCLIE: TwwDBEdit
          Left = 115
          Top = 14
          Width = 254
          Height = 25
          CharCase = ecUpperCase
          DataField = 'CLIEDES'
          DataSource = DMCXC.dsCxC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeDirec: TwwDBEdit
          Left = 370
          Top = 14
          Width = 320
          Height = 25
          DataField = 'CLIEDIR'
          DataSource = DMCXC.dsCxC
          Enabled = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeDistrito: TwwDBEdit
          Left = 691
          Top = 14
          Width = 131
          Height = 25
          DataField = 'ZIPDES'
          DataSource = DMCXC.dsCxC
          Enabled = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeTelf: TwwDBEdit
          Left = 3
          Top = 55
          Width = 78
          Height = 25
          DataField = 'CLIETELF'
          DataSource = DMCXC.dsCxC
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnMouseMove = dbeTelfMouseMove
        end
        object dbeZonaVta: TwwDBEdit
          Left = 84
          Top = 55
          Width = 97
          Height = 25
          DataField = 'ZVTADES'
          DataSource = DMCXC.dsCxC
          Enabled = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeSectorVta: TwwDBEdit
          Left = 184
          Top = 55
          Width = 76
          Height = 25
          DataField = 'SECTOR'
          DataSource = DMCXC.dsCxC
          Enabled = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeSaldoAnt: TwwDBEdit
          Left = 512
          Top = 96
          Width = 76
          Height = 25
          DataField = 'SALANTME'
          Enabled = False
          TabOrder = 7
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dbeCargos: TwwDBEdit
          Left = 592
          Top = 96
          Width = 77
          Height = 25
          DataField = 'CARGOSME'
          Enabled = False
          TabOrder = 8
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dbeAbonos: TwwDBEdit
          Left = 672
          Top = 96
          Width = 76
          Height = 25
          DataField = 'ABONOSME'
          Enabled = False
          TabOrder = 9
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dbeSaldoAct: TwwDBEdit
          Left = 753
          Top = 96
          Width = 76
          Height = 25
          DataField = 'SALTOTALME'
          Enabled = False
          TabOrder = 10
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dbeLCredito: TwwDBEdit
          Left = 3
          Top = 96
          Width = 77
          Height = 25
          DataField = 'CLIECREMAX'
          DataSource = DMCXC.dsCxC
          Enabled = False
          TabOrder = 11
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dbeDisponible: TwwDBEdit
          Left = 101
          Top = 96
          Width = 77
          Height = 25
          DataField = 'DISPONIBLE'
          Enabled = False
          TabOrder = 12
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object dblcClie: TwwDBEdit
          Left = 3
          Top = 14
          Width = 110
          Height = 25
          CharCase = ecUpperCase
          DataField = 'CLIEID'
          DataSource = DMCXC.dsCxC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 753
          Top = 57
          Width = 76
          Height = 25
          DataField = 'SALTOTALMN'
          Enabled = False
          TabOrder = 13
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit2: TwwDBEdit
          Left = 672
          Top = 57
          Width = 76
          Height = 25
          DataField = 'ABONOSMN'
          Enabled = False
          TabOrder = 14
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit3: TwwDBEdit
          Left = 592
          Top = 57
          Width = 77
          Height = 25
          DataField = 'CARGOSMN'
          Enabled = False
          TabOrder = 15
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit4: TwwDBEdit
          Left = 512
          Top = 57
          Width = 76
          Height = 25
          DataField = 'SALANTMN'
          Enabled = False
          TabOrder = 16
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
        object Z2bbtnAceptar: TBitBtn
          Left = 467
          Top = 85
          Width = 35
          Height = 35
          TabOrder = 18
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
      object TabSheet10: TTabSheet
        Caption = 'Cambia Estado Docs.'
        ImageIndex = 3
        object lblTipCam: TLabel
          Left = 1
          Top = 75
          Width = 81
          Height = 17
          Caption = 'Tipo de Cambio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 230
          Top = 8
          Width = 61
          Height = 17
          Caption = 'Comentario'
        end
        object dbeTCAMB: TwwDBEdit
          Left = 0
          Top = 93
          Width = 96
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyPress = dbeTCAMBKeyPress
        end
        object gbPER: TGroupBox
          Left = -1
          Top = 0
          Width = 225
          Height = 73
          Caption = 'Periodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label1: TLabel
            Left = 8
            Top = 14
            Width = 72
            Height = 17
            Caption = 'Fecha Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 123
            Top = 13
            Width = 62
            Height = 17
            Caption = 'Fecha Final'
          end
          object Label3: TLabel
            Left = 106
            Top = 33
            Width = 10
            Height = 17
            Caption = 'al'
          end
          object dtpINI: TwwDBDateTimePicker
            Left = 8
            Top = 29
            Width = 93
            Height = 25
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Draft 12cpi'
            CalendarAttributes.Font.Style = []
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 0
            UnboundDataType = wwDTEdtDate
          end
          object dtpFIN: TwwDBDateTimePicker
            Left = 123
            Top = 29
            Width = 93
            Height = 25
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Draft 12cpi'
            CalendarAttributes.Font.Style = []
            Epoch = 1950
            ShowButton = True
            TabOrder = 1
            UnboundDataType = wwDTEdtDate
            OnExit = dtpFINExit
          end
          object chbFecha: TCheckBox
            Left = 8
            Top = 54
            Width = 82
            Height = 18
            Caption = 'A la Fecha'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 2
            OnClick = chbFechaClick
          end
        end
        object dbeComment: TwwDBEdit
          Left = 228
          Top = 26
          Width = 363
          Height = 96
          AutoSize = False
          DataField = 'CLIECOMEN'
          DataSource = DMCXC.dsCxC
          Enabled = False
          MaxLength = 255
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = True
        end
      end
    end
  end
  object pnlClientes: TPanel
    Left = 224
    Top = 347
    Width = 475
    Height = 182
    TabOrder = 5
    Visible = False
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 473
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Clientes del Grupo'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object bbtnCierra1: TBitBtn
      Left = 452
      Top = 3
      Width = 20
      Height = 20
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbtnCierra1Click
    end
    object dbgClientes: TwwDBGrid
      Left = 1
      Top = 21
      Width = 473
      Height = 160
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Draft 12cpi'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object pnlBusca1: TPanel
    Left = 207
    Top = 224
    Width = 225
    Height = 44
    UseDockManager = False
    FullRepaint = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    Visible = False
    object Edit1: TEdit
      Left = 86
      Top = 17
      Width = 27
      Height = 14
      AutoSize = False
      TabOrder = 1
    end
    object isBusca1: TwwIncrementalSearch
      Left = 4
      Top = 13
      Width = 217
      Height = 23
      ShowMatchText = True
      AutoSize = False
      CharCase = ecUpperCase
      HideSelection = False
      TabOrder = 0
      OnExit = isBusca1Exit
    end
  end
  object pnlDetFPagoLiq: TPanel
    Left = 95
    Top = 393
    Width = 690
    Height = 185
    TabOrder = 6
    Visible = False
    object SpeedButton1: TSpeedButton
      Left = 668
      Top = 1
      Width = 22
      Height = 21
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object dbgDetPagoLiq: TwwDBGrid
      Left = 1
      Top = 21
      Width = 688
      Height = 163
      DisableThemesInTitle = False
      Selected.Strings = (
        'FPAGOID'#9'2'#9'C'#243'digo~Pago '#9'F'
        'FPAGODES'#9'10'#9'Descripci'#243'n~Pago'#9'F'
        'TMONIDPAGO'#9'2'#9'T. Moneda~del Pago'#9'F'
        'LICOMTOABOLOC'#9'10'#9'Mto. Pag.~Local'#9'F'
        'LICOMTOABOEXT'#9'10'#9'Mto. Pag.~Extranjero'#9'F'
        'BANCOID'#9'3'#9'C'#243'digo~Banco'#9'F'
        'BANCODES'#9'15'#9'Descripci'#243'n~Banco'#9'F'
        'LICONOCHQ'#9'20'#9'Nro ~Cheque/Docum.'#9'F'
        'LICOTCAMBL'#9'10'#9'T. Camb. ~Pago'#9'F'
        'FECPAGO'#9'10'#9'Fecha ~del Pago'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 15263976
      DataSource = DMCXC.dsDetPagoLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      object dbgDetPagoLiqIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 27
        Height = 31
        AllowAllUp = True
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
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 688
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Detalle de Liquidaci'#243'n'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object bbtnCierraDetFPagoLiq: TBitBtn
      Left = 669
      Top = 3
      Width = 19
      Height = 20
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbtnCierraDetFPagoLiqClick
    end
  end
  object ppDBPipelineF: TppDBPipeline
    DataSource = DMCXC.dsQry2
    UserName = 'DBPipelineF'
    Left = 128
    Top = 176
    object ppDBPipelineFppField1: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipelineFppField2: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppDBPipelineFppField3: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipelineFppField4: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppDBPipelineFppField5: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipelineFppField6: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppDBPipelineFppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipelineFppField8: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppDBPipelineFppField9: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppDBPipelineFppField10: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object ppDBPipelineFppField11: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppDBPipelineFppField12: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppDBPipelineFppField13: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppDBPipelineFppField14: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppDBPipelineFppField15: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppDBPipelineFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipelineFppField17: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppDBPipelineFppField18: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppDBPipelineFppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipelineFppField20: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppDBPipelineFppField21: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppDBPipelineFppField22: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipelineFppField23: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppDBPipelineFppField24: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppDBPipelineFppField25: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppDBPipelineFppField26: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppDBPipelineFppField27: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipelineFppField28: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppDBPipelineFppField29: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppDBPipelineFppField30: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 512
      DataType = dtMemo
      DisplayWidth = 10
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineFppField31: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 30
    end
    object ppDBPipelineFppField32: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppDBPipelineFppField33: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppDBPipelineFppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object ppDBPipelineFppField35: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 256
      DataType = dtMemo
      DisplayWidth = 10
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineFppField36: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 256
      DataType = dtMemo
      DisplayWidth = 10
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineFppField37: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 256
      DataType = dtMemo
      DisplayWidth = 10
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipelineFppField38: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipelineFppField39: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppDBPipelineFppField40: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 39
    end
  end
  object ppDBPipelineL: TppDBPipeline
    DataSource = DMCXC.dsQry4
    UserName = 'DBPipelineL'
    Left = 128
    Top = 220
    object ppField201: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField202: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField203: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField204: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField205: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField206: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField207: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField208: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField209: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField210: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField211: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField212: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField213: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField214: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField215: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField216: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField217: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField218: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField219: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField220: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField221: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField222: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField223: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField224: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField225: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField226: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField227: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField228: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField229: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField230: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object ppField231: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField232: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField233: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField234: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField235: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppField236: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object ppField237: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 36
    end
    object ppField238: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField239: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField240: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppDBPipelineN: TppDBPipeline
    DataSource = DMCXC.dsQry6
    SkipWhenNoRecords = False
    UserName = 'DBPipelineN'
    Left = 136
    Top = 392
    object ppField161: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField162: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField163: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField164: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField165: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField166: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField167: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField168: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField169: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField170: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField171: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField172: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField173: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField174: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField175: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField177: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField178: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField180: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField181: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField182: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField183: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField184: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField185: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField186: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField187: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField188: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField189: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField190: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object ppField191: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField192: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField193: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField195: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppField196: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object ppField197: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 36
    end
    object ppField198: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField199: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField200: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppdbp1: TppDBPipeline
    DataSource = DMCXC.dsQry2
    UserName = 'dbp1'
    Left = 544
    Top = 192
  end
  object ppdbp2: TppDBPipeline
    UserName = 'dbp2'
    Left = 544
    Top = 256
  end
  object ppReport2: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report2'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 11000
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCte2.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 608
    Top = 224
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint2
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object pplTitulo: TppLabel
        UserName = 'lTitulo'
        Caption = 'Estado de Cta.Cte.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 80963
        mmTop = 1323
        mmWidth = 33338
        BandType = 0
      end
      object pplPeriodo: TppLabel
        UserName = 'lPeriodo1'
        Caption = '     Al 17/12/2002'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 5027
        mmWidth = 33338
        BandType = 0
      end
      object pplCia: TppLabel
        UserName = 'lCia1'
        Caption = 'DISTRIBUIDORA INCORESA S.A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Fecha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 5027
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 8731
        mmWidth = 11113
        BandType = 0
      end
      object pplblTSalMN: TppLabel
        UserName = 'lblTSalMN'
        Caption = 'Saldo Anterior M.N.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 3969
        mmLeft = 157957
        mmTop = 20373
        mmWidth = 35190
        BandType = 0
      end
      object pplblTSalME: TppLabel
        UserName = 'lblTSalME'
        Caption = 'Saldo Anterior M.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 7938
        mmLeft = 169069
        mmTop = 20373
        mmWidth = 24077
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 5027
        mmWidth = 18521
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 8731
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 1323
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'C'#243'digo  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 8731
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Cliente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 16140
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Direcci'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 19844
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Linea de Cr'#233'dito:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 23548
        mmWidth = 31485
        BandType = 0
      end
      object pplSalME: TppLabel
        UserName = 'lSalExt1'
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 186002
        mmTop = 23813
        mmWidth = 7408
        BandType = 0
      end
      object pplSalMN: TppLabel
        UserName = 'lSalMN'
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 161132
        mmTop = 23813
        mmWidth = 7408
        BandType = 0
      end
      object pplCod: TppLabel
        UserName = 'lCod'
        AutoSize = False
        Caption = '38003917'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 8731
        mmWidth = 29369
        BandType = 0
      end
      object pplCli: TppLabel
        UserName = 'lCli'
        AutoSize = False
        Caption = 'INVERSIONES DALIDE SRL.                 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 16140
        mmWidth = 88371
        BandType = 0
      end
      object pplDir: TppLabel
        UserName = 'lDir'
        AutoSize = False
        Caption = 'JR. CUSCO 716 TDA. 301 M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 19844
        mmWidth = 88371
        BandType = 0
      end
      object pplLin: TppLabel
        UserName = 'lLin'
        Caption = '5000.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 39423
        mmTop = 23548
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'Zona :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 119327
        mmTop = 19844
        mmWidth = 11113
        BandType = 0
      end
      object pplZon: TppLabel
        UserName = 'lZon'
        Caption = '01137 - MERCADO CENTRAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133086
        mmTop = 19844
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'Tel'#233'fono:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 119327
        mmTop = 16140
        mmWidth = 16669
        BandType = 0
      end
      object pplTel: TppLabel
        UserName = 'lTel'
        Caption = '4278182'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 16140
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'TOTAL GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 158486
        mmTop = 12435
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'SALDO ACTUAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 15875
        mmWidth = 22225
        BandType = 0
      end
      object pplActMN: TppLabel
        UserName = 'lSalMN1'
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 162719
        mmTop = 15875
        mmWidth = 7408
        BandType = 0
      end
      object pplMovME: TppLabel
        UserName = 'lMovME'
        Caption = '823.32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 167482
        mmTop = 12435
        mmWidth = 11113
        BandType = 0
      end
      object pplMovMN: TppLabel
        UserName = 'lMovMN'
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 162719
        mmTop = 12435
        mmWidth = 7408
        BandType = 0
      end
      object pplActME: TppLabel
        UserName = 'lActME'
        Caption = '560.56'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 167482
        mmTop = 15875
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        Caption = 'RUC     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 12435
        mmWidth = 16669
        BandType = 0
      end
      object pplRUC: TppLabel
        UserName = 'lCod1'
        AutoSize = False
        Caption = '20380039177'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 12435
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 27252
        mmWidth = 196586
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 47361
      mmPrintPosition = 0
      object ppsrFacturas: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipelineF'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppcFactura: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipelineF
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report2'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.FileName = 'C:\SOLEXES\SOLFormatos\CXC\Incoresa\CtaCte2.rtm'
          Units = utMillimeters
          Left = 544
          Top = 432
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipelineF'
          object ppTitleBand6: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 11377
            mmPrintPosition = 0
            object ppLabel62: TppLabel
              UserName = 'Label62'
              AutoSize = False
              Caption = 'NUMERO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 34131
              mmTop = 3704
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel65: TppLabel
              UserName = 'Label65'
              AutoSize = False
              Caption = 'F.EMISION'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 52652
              mmTop = 3704
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label67'
              AutoSize = False
              Caption = 'MONEDA NACIONAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 98161
              mmTop = 0
              mmWidth = 33867
              BandType = 1
            end
            object ppLabel68: TppLabel
              UserName = 'Label68'
              AutoSize = False
              Caption = 'CARGOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 92075
              mmTop = 3704
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel70: TppLabel
              UserName = 'Label70'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 87313
              mmTop = 0
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel71: TppLabel
              UserName = 'Label304'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 87313
              mmTop = 3704
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel75: TppLabel
              UserName = 'Label75'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 7673
              mmWidth = 197115
              BandType = 1
            end
            object ppLabel78: TppLabel
              UserName = 'Label78'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 141288
              mmTop = 0
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label79'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 141288
              mmTop = 3175
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel80: TppLabel
              UserName = 'Label80'
              AutoSize = False
              Caption = 'ABONOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 109273
              mmTop = 3704
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel81: TppLabel
              UserName = 'Label201'
              AutoSize = False
              Caption = 'MONEDA EXTRANJERA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 152400
              mmTop = 265
              mmWidth = 34925
              BandType = 1
            end
            object ppLabel82: TppLabel
              UserName = 'Label82'
              AutoSize = False
              Caption = 'CARGOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 146050
              mmTop = 3704
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel83: TppLabel
              UserName = 'Label83'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 180446
              mmTop = 3704
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel84: TppLabel
              UserName = 'Label84'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 194469
              mmTop = 3704
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel85: TppLabel
              UserName = 'Label85'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 194469
              mmTop = 0
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel109: TppLabel
              UserName = 'Label109'
              AutoSize = False
              Caption = 'MONEDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 74348
              mmTop = 3704
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel58: TppLabel
              UserName = 'Label58'
              AutoSize = False
              Caption = 'D   O   C   U   M   E   N   T   O   S'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 10054
              mmTop = 0
              mmWidth = 74877
              BandType = 1
            end
            object ppLabel63: TppLabel
              UserName = 'Label63'
              AutoSize = False
              Caption = 'SERIE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 19315
              mmTop = 3704
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel64: TppLabel
              UserName = 'Label64'
              AutoSize = False
              Caption = 'TIPO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 3969
              mmTop = 3704
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel73: TppLabel
              UserName = 'Label73'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 265
              mmTop = 3704
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label72'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 265
              mmTop = 0
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label801'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 127000
              mmTop = 3440
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel77: TppLabel
              UserName = 'Label77'
              AutoSize = False
              Caption = 'ABONOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 163248
              mmTop = 3704
              mmWidth = 14817
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'DOCABR'
              DataPipeline = ppDBPipelineF
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'CCSERIE'
              DataPipeline = ppDBPipelineF
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 18785
              mmTop = 0
              mmWidth = 11642
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'CCNODOC'
              DataPipeline = ppDBPipelineF
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 32015
              mmTop = 0
              mmWidth = 19579
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'CCFEMIS'
              DataPipeline = ppDBPipelineF
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 52917
              mmTop = 0
              mmWidth = 20373
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'dbCargoMN1'
              BlankWhenZero = True
              DataField = 'MTOLOC'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 89959
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'dbAbonoMN1'
              BlankWhenZero = True
              DataField = 'PAGLOC'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 107156
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'dbCargoME1'
              BlankWhenZero = True
              DataField = 'MTOEXT'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 144198
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'dbAbonoME1'
              BlankWhenZero = True
              DataField = 'PAGEXT'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 161396
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'TMONABR'
              DataPipeline = ppDBPipelineF
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 75406
              mmTop = 0
              mmWidth = 9260
              BandType = 4
            end
            object ppsrDFacturas: TppSubReport
              UserName = 'srDFacturas'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ParentPrinterSetup = False
              TraverseAllData = False
              DataPipelineName = 'ppDBPipelineDF'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 3969
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppdFactura: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipelineDF
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report2'
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 11000
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 297000
                PrinterSetup.mmPaperWidth = 210000
                PrinterSetup.PaperSize = 9
                Template.FileName = 'C:\SOLEXES\SOLFormatos\CXC\Incoresa\CtaCte2.rtm'
                Units = utMillimeters
                Version = '7.02'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBPipelineDF'
                object ppTitleBand1: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand6: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3969
                  mmPrintPosition = 0
                  object ppDBText31: TppDBText
                    UserName = 'DBText31'
                    DataField = 'CCSERIE2'
                    DataPipeline = ppDBPipelineDF
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 23813
                    mmTop = 0
                    mmWidth = 10583
                    BandType = 4
                  end
                  object ppDBText32: TppDBText
                    UserName = 'DBText32'
                    DataField = 'CCNODOC2'
                    DataPipeline = ppDBPipelineDF
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 35454
                    mmTop = 0
                    mmWidth = 20108
                    BandType = 4
                  end
                  object ppDBText29: TppDBText
                    UserName = 'DBText29'
                    DataField = 'CCFCANJE'
                    DataPipeline = ppDBPipelineDF
                    DisplayFormat = 'DD/MM/YY'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 57415
                    mmTop = 0
                    mmWidth = 18521
                    BandType = 4
                  end
                  object ppDBText30: TppDBText
                    UserName = 'DBText30'
                    DataField = 'TMONABR'
                    DataPipeline = ppDBPipelineDF
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 78317
                    mmTop = 0
                    mmWidth = 11377
                    BandType = 4
                  end
                  object ppDBText34: TppDBText
                    UserName = 'DBText34'
                    DataField = 'DOCABR2'
                    DataPipeline = ppDBPipelineDF
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 7144
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText49: TppDBText
                    UserName = 'DBText49'
                    AutoSize = True
                    BlankWhenZero = True
                    DataField = 'DCCMTOLOC'
                    DataPipeline = ppDBPipelineDF
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 124090
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                  object ppDBText51: TppDBText
                    UserName = 'DBText51'
                    AutoSize = True
                    BlankWhenZero = True
                    DataField = 'DCCMTOEXT'
                    DataPipeline = ppDBPipelineDF
                    DisplayFormat = '(###,###,##0.00)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDF'
                    mmHeight = 3969
                    mmLeft = 168011
                    mmTop = 0
                    mmWidth = 11113
                    BandType = 4
                  end
                end
                object ppSummaryBand6: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
              end
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              BlankWhenZero = True
              DataField = 'SALLOC'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 124884
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              BlankWhenZero = True
              DataField = 'SALEXT'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 178594
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 11377
            mmPrintPosition = 0
            object ppdbcCLF: TppDBCalc
              UserName = 'dbcCargoMN4'
              BlankWhenZero = True
              DataField = 'MTOLOC'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 89959
              mmTop = 3704
              mmWidth = 15875
              BandType = 7
            end
            object ppdbcPLF: TppDBCalc
              UserName = 'dbcPLF'
              BlankWhenZero = True
              DataField = 'PAGLOC'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 107156
              mmTop = 3704
              mmWidth = 15875
              BandType = 7
            end
            object ppdbcCEF: TppDBCalc
              UserName = 'dbcCEF'
              BlankWhenZero = True
              DataField = 'MTOEXT'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 144198
              mmTop = 3704
              mmWidth = 15875
              BandType = 7
            end
            object ppdbcPEF: TppDBCalc
              UserName = 'dbcPEF'
              BlankWhenZero = True
              DataField = 'PAGEXT'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 161396
              mmTop = 3704
              mmWidth = 15875
              BandType = 7
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Caption = 'TOTAL DOCUMENTOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 50006
              mmTop = 3704
              mmWidth = 35190
              BandType = 7
            end
            object ppdbcSLF: TppDBCalc
              UserName = 'dbcSLF'
              BlankWhenZero = True
              DataField = 'SALLOC'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 124884
              mmTop = 3704
              mmWidth = 15875
              BandType = 7
            end
            object ppdbcSEF: TppDBCalc
              UserName = 'dbcSEF'
              BlankWhenZero = True
              DataField = 'SALEXT'
              DataPipeline = ppDBPipelineF
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineF'
              mmHeight = 3969
              mmLeft = 178594
              mmTop = 3704
              mmWidth = 15875
              BandType = 7
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 197115
              BandType = 7
            end
          end
        end
      end
      object ppsrLetras: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppsrFacturas
        TraverseAllData = False
        DataPipelineName = 'ppDBPipelineL'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7673
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipelineL
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report2'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.FileName = 'C:\SOLExes\SolFormatos\CXC\Incoresa\CtaCte21.rtm'
          Units = utMillimeters
          Left = 560
          Top = 448
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipelineL'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppLabel88: TppLabel
              UserName = 'Label88'
              AutoSize = False
              Caption = 'LETRA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 26458
              mmTop = 11113
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel91: TppLabel
              UserName = 'Label91'
              AutoSize = False
              Caption = 'F.VCMTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 84402
              mmTop = 11113
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel93: TppLabel
              UserName = 'Label701'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 109538
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel95: TppLabel
              UserName = 'Label95'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel96: TppLabel
              UserName = 'Label96'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel99: TppLabel
              UserName = 'Label99'
              AutoSize = False
              Caption = 'IMPORTE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 11113
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel100: TppLabel
              UserName = 'Label100'
              AutoSize = False
              Caption = 'MONEDA NACIONAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 115888
              mmTop = 7408
              mmWidth = 28046
              BandType = 1
            end
            object ppLabel110: TppLabel
              UserName = 'Label110'
              AutoSize = False
              Caption = 'MON.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 101336
              mmTop = 11113
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 3704
              mmWidth = 198702
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '-----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 14817
              mmWidth = 198702
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              AutoSize = False
              Caption = 'DETALLE DE LETRAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 1588
              mmTop = 0
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel90: TppLabel
              UserName = 'Label90'
              AutoSize = False
              Caption = 'SITUAC.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 7408
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel89: TppLabel
              UserName = 'Label89'
              AutoSize = False
              Caption = 'UBICA.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 14288
              mmTop = 11113
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label45'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 109538
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              AutoSize = False
              Caption = 'SALDO '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 180711
              mmTop = 11113
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label1002'
              AutoSize = False
              Caption = 'MONEDA EXTRANJERA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 158221
              mmTop = 7408
              mmWidth = 32279
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              AutoSize = False
              Caption = 'IMPORTE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 160073
              mmTop = 11113
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label49'
              AutoSize = False
              Caption = 'SALDO '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 135467
              mmTop = 11113
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 150284
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 150284
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label66'
              AutoSize = False
              Caption = 'F.EMISION'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 66675
              mmTop = 11113
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel74: TppLabel
              UserName = 'Label74'
              Caption = 'Prot'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 59531
              mmTop = 11113
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel86: TppLabel
              UserName = 'Label86'
              AutoSize = False
              Caption = 'N. BCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 44979
              mmTop = 11113
              mmWidth = 11642
              BandType = 1
            end
          end
          object ppDetailBand7: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8996
            mmPrintPosition = 0
            object ppDBText33: TppDBText
              UserName = 'DBText33'
              DataField = 'CCNODOC'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 25929
              mmTop = 0
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              DataField = 'CCFVCMTO'
              DataPipeline = ppDBPipelineL
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 83609
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              DataField = 'TMONABR'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 101865
              mmTop = 0
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              BlankWhenZero = True
              DataField = 'SALLOC'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 133615
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText401'
              BlankWhenZero = True
              DataField = 'SALEXT'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 175684
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'SITUADES'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 794
              mmTop = 0
              mmWidth = 12171
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'UBICADES'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 14288
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              BlankWhenZero = True
              DataField = 'MTOLOC'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 111919
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              BlankWhenZero = True
              DataField = 'MTOEXT'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 153988
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppSubReport1: TppSubReport
              UserName = 'SubReport5'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipelineDL'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 3969
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport4: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipelineDL
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report2'
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 11000
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 297000
                PrinterSetup.mmPaperWidth = 210000
                PrinterSetup.PaperSize = 9
                Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCte2.rtm'
                Units = utMillimeters
                Version = '7.02'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBPipelineDL'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand8: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3969
                  mmPrintPosition = 0
                  object ppDBText42: TppDBText
                    UserName = 'DBText42'
                    DataField = 'CCNODOC2'
                    DataPipeline = ppDBPipelineDL
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 62177
                    mmTop = 0
                    mmWidth = 23548
                    BandType = 4
                  end
                  object ppDBText43: TppDBText
                    UserName = 'DBText43'
                    DataField = 'CCSERIE2'
                    DataPipeline = ppDBPipelineDL
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 44715
                    mmTop = 0
                    mmWidth = 8996
                    BandType = 4
                  end
                  object ppDBText44: TppDBText
                    UserName = 'DBText44'
                    DataField = 'DOCABR2'
                    DataPipeline = ppDBPipelineDL
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 25665
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText45: TppDBText
                    UserName = 'DBText45'
                    AutoSize = True
                    BlankWhenZero = True
                    DataField = 'DCCMTOLOC'
                    DataPipeline = ppDBPipelineDL
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 121709
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                  object ppDBText46: TppDBText
                    UserName = 'DBText46'
                    AutoSize = True
                    BlankWhenZero = True
                    DataField = 'DCCMTOEXT'
                    DataPipeline = ppDBPipelineDL
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 175155
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                  object ppDBText47: TppDBText
                    UserName = 'DBText47'
                    DataField = 'TMONABR'
                    DataPipeline = ppDBPipelineDL
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 105834
                    mmTop = 0
                    mmWidth = 9790
                    BandType = 4
                  end
                  object ppDBText48: TppDBText
                    UserName = 'DBText48'
                    DataField = 'CCFCANJE'
                    DataPipeline = ppDBPipelineDL
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 86784
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText35: TppDBText
                    UserName = 'DBText35'
                    AutoSize = True
                    BlankWhenZero = True
                    DataField = 'DCCMTOLOC'
                    DataPipeline = ppDBPipelineDL
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Draft 17cpi'
                    Font.Pitch = fpFixed
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipelineDL'
                    mmHeight = 3969
                    mmLeft = 150548
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                end
                object ppSummaryBand7: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
              end
            end
            object ppDBText50: TppDBText
              UserName = 'DBText50'
              DataField = 'CCFEMIS'
              DataPipeline = ppDBPipelineL
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 66146
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText53'
              DataField = 'PAGLOC'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 129646
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
              DataField = 'PAGEXT'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 150019
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'CCFLAGPROT'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 61913
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              AutoSize = True
              DataField = 'CCNLETBCO'
              DataPipeline = ppDBPipelineL
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 41275
              mmTop = 0
              mmWidth = 16669
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppdbcSEL: TppDBCalc
              UserName = 'DBCalc1'
              BlankWhenZero = True
              DataField = 'SALEXT'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 175684
              mmTop = 3704
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcSLL: TppDBCalc
              UserName = 'dbcSLL'
              BlankWhenZero = True
              DataField = 'SALLOC'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 133615
              mmTop = 3704
              mmWidth = 15081
              BandType = 7
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Caption = 'TOTAL DE LETRAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 69586
              mmTop = 3704
              mmWidth = 31750
              BandType = 7
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '-----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 198702
              BandType = 7
            end
            object ppdbcPEL: TppDBCalc
              UserName = 'dbcPEL'
              AutoSize = True
              BlankWhenZero = True
              DataField = 'PAGEXT'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 21696
              mmTop = 3704
              mmWidth = 22225
              BandType = 7
            end
            object ppdbcCEL: TppDBCalc
              UserName = 'dbcCEL'
              BlankWhenZero = True
              DataField = 'MTOEXT'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 153988
              mmTop = 3704
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcPLL: TppDBCalc
              UserName = 'dbcPLL'
              AutoSize = True
              BlankWhenZero = True
              DataField = 'PAGLOC'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 44979
              mmTop = 3704
              mmWidth = 22225
              BandType = 7
            end
            object ppdbcCLL: TppDBCalc
              UserName = 'dbcCLL'
              BlankWhenZero = True
              DataField = 'MTOLOC'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 111919
              mmTop = 3704
              mmWidth = 15081
              BandType = 7
            end
          end
        end
      end
      object ppsrCheques: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport3
        TraverseAllData = False
        DataPipelineName = 'ppDBPipelineC'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 21960
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipelineC
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report2'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCte2.rtm'
          Units = utMillimeters
          Left = 396
          Top = 284
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipelineC'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Caption = 'MONEDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 60590
              mmTop = 11113
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              AutoSize = False
              Caption = 'F.EMISION'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 78052
              mmTop = 11113
              mmWidth = 20638
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 100542
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 100542
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label1001'
              AutoSize = False
              Caption = 'MONEDA NACIONAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 111919
              mmTop = 7408
              mmWidth = 33073
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 193940
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              AutoSize = False
              Caption = 'MONEDA EXTRANJERA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 155575
              mmTop = 7408
              mmWidth = 36248
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 3704
              mmWidth = 196321
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 14817
              mmWidth = 196321
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              AutoSize = False
              Caption = 'DETALLE DE CHEQUES'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 40481
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label901'
              AutoSize = False
              Caption = 'N'#176' DE CHEQUE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 3440
              mmTop = 11113
              mmWidth = 24606
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              AutoSize = False
              Caption = 'BANCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 35983
              mmTop = 11113
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 193940
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              AutoSize = False
              Caption = 'CARGO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 110861
              mmTop = 11113
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel104: TppLabel
              UserName = 'Label104'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 132292
              mmTop = 11113
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel105: TppLabel
              UserName = 'Label105'
              AutoSize = False
              Caption = 'CARGO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 159015
              mmTop = 11113
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel106: TppLabel
              UserName = 'Label106'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 180182
              mmTop = 11113
              mmWidth = 12435
              BandType = 1
            end
          end
          object ppDetailBand1: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'CCNODOC'
              DataPipeline = ppDBPipelineC
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 2910
              mmTop = 0
              mmWidth = 30163
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'BANCOABR'
              DataPipeline = ppDBPipelineC
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 35983
              mmTop = 0
              mmWidth = 22754
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'TMONABR'
              DataPipeline = ppDBPipelineC
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 62442
              mmTop = 0
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'CCFEMIS'
              DataPipeline = ppDBPipelineC
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 78052
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              BlankWhenZero = True
              DataField = 'CCSALLOC'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              BlankWhenZero = True
              DataField = 'CCSALEXT'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 173832
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText55'
              BlankWhenZero = True
              DataField = 'CCMTOLOC'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 104511
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText56: TppDBText
              UserName = 'DBText56'
              BlankWhenZero = True
              DataField = 'CCPAGLOC'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 98954
              mmTop = 0
              mmWidth = 5027
              BandType = 4
            end
            object ppDBText58: TppDBText
              UserName = 'DBText58'
              BlankWhenZero = True
              DataField = 'CCMTOEXT'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 152136
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText57: TppDBText
              UserName = 'DBText57'
              BlankWhenZero = True
              DataField = 'CCPAGEXT'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 147109
              mmTop = 0
              mmWidth = 5027
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel23: TppLabel
              UserName = 'Label23'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 196321
              BandType = 7
            end
            object ppdbcSEC: TppDBCalc
              UserName = 'dbcSEC'
              BlankWhenZero = True
              DataField = 'CCSALEXT'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 173832
              mmTop = 3704
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcsLC: TppDBCalc
              UserName = 'dbcsLC'
              BlankWhenZero = True
              DataField = 'CCSALLOC'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 3704
              mmWidth = 20108
              BandType = 7
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              AutoSize = False
              Caption = 'TOTAL DE CHEQUES'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 58738
              mmTop = 3704
              mmWidth = 34396
              BandType = 7
            end
            object ppdbcPEC: TppDBCalc
              UserName = 'dbcPEC'
              AutoSize = True
              BlankWhenZero = True
              DataField = 'CCPAGEXT'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 265
              mmTop = 3704
              mmWidth = 25929
              BandType = 7
            end
            object ppdbcCEC: TppDBCalc
              UserName = 'dbcCEC'
              BlankWhenZero = True
              DataField = 'CCMTOEXT'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 152136
              mmTop = 3704
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcCLC: TppDBCalc
              UserName = 'dbcCLC'
              BlankWhenZero = True
              DataField = 'CCMTOLOC'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 104511
              mmTop = 3704
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcPLC: TppDBCalc
              UserName = 'dbcPLC'
              AutoSize = True
              BlankWhenZero = True
              DataField = 'CCPAGLOC'
              DataPipeline = ppDBPipelineC
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineC'
              mmHeight = 3969
              mmLeft = 19315
              mmTop = 3704
              mmWidth = 25929
              BandType = 7
            end
          end
        end
      end
      object ppsrAnticipo: TppSubReport
        UserName = 'SubReport4'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppsrCheques
        TraverseAllData = False
        DataPipelineName = 'ppDBPipelineA'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 29633
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipelineA
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report2'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCte2.rtm'
          Units = utMillimeters
          Left = 564
          Top = 452
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipelineA'
          object ppTitleBand7: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Caption = 'MONEDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 43921
              mmTop = 11113
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Caption = 'F.EMISION'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 62971
              mmTop = 11113
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 87577
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 87577
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              AutoSize = False
              Caption = 'MONEDA LOCAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 104246
              mmTop = 7408
              mmWidth = 25135
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 138377
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              AutoSize = False
              Caption = 'MONEDA EXTRANJERA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 147373
              mmTop = 7408
              mmWidth = 35190
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 3704
              mmWidth = 187325
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '-------------------------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 14817
              mmWidth = 187325
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              Caption = 'DETALLE DE ANTICIPOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 37042
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              AutoSize = False
              Caption = 'N'#176' DE ANTICIPO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 3969
              mmTop = 11113
              mmWidth = 31750
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 185473
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 185473
              mmTop = 7408
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel115: TppLabel
              UserName = 'Label115'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 138377
              mmTop = 11113
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel116: TppLabel
              UserName = 'Label116'
              AutoSize = False
              Caption = 'CARGO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 146844
              mmTop = 11113
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel117: TppLabel
              UserName = 'Label117'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 168540
              mmTop = 11113
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel118: TppLabel
              UserName = 'Label118'
              AutoSize = False
              Caption = 'CARGO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 97631
              mmTop = 11113
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel119: TppLabel
              UserName = 'Label119'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 120121
              mmTop = 11113
              mmWidth = 15081
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'CCNODOC'
              DataPipeline = ppDBPipelineA
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 4233
              mmTop = 0
              mmWidth = 25400
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'TMONABR'
              DataPipeline = ppDBPipelineA
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 45508
              mmTop = 0
              mmWidth = 8731
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'CCFEMIS'
              DataPipeline = ppDBPipelineA
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 64029
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              BlankWhenZero = True
              DataField = 'CCMTOEXT'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,#0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 142875
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText101'
              BlankWhenZero = True
              DataField = 'CCMTOLOC'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,#0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 93663
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText201'
              BlankWhenZero = True
              DataField = 'CCSALEXT'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,#0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 164571
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText59: TppDBText
              UserName = 'DBText59'
              BlankWhenZero = True
              DataField = 'CCSALLOC'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,#0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 115623
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText60: TppDBText
              UserName = 'DBText202'
              BlankWhenZero = True
              DataField = 'CCPAGEXT'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,#0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 137054
              mmTop = 0
              mmWidth = 5027
              BandType = 4
            end
            object ppDBText61: TppDBText
              UserName = 'DBText61'
              BlankWhenZero = True
              DataField = 'CCPAGLOC'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,#0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 85990
              mmTop = 0
              mmWidth = 5027
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppLabel120: TppLabel
              UserName = 'Label120'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 187590
              BandType = 7
            end
            object ppdbcSEA: TppDBCalc
              UserName = 'dbcSEC1'
              BlankWhenZero = True
              DataField = 'CCSALEXT'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 164571
              mmTop = 3969
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcSLA: TppDBCalc
              UserName = 'dbcsLC1'
              BlankWhenZero = True
              DataField = 'CCSALLOC'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 115623
              mmTop = 3969
              mmWidth = 20108
              BandType = 7
            end
            object ppLabel121: TppLabel
              UserName = 'Label121'
              Caption = 'TOTAL DE ANTICIPOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 54769
              mmTop = 3969
              mmWidth = 33338
              BandType = 7
            end
            object ppdbcPEA: TppDBCalc
              UserName = 'dbcPEC1'
              BlankWhenZero = True
              DataField = 'CCPAGEXT'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 28310
              mmTop = 3969
              mmWidth = 15081
              BandType = 7
            end
            object ppdbcCEA: TppDBCalc
              UserName = 'dbcCEC1'
              BlankWhenZero = True
              DataField = 'CCMTOEXT'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 142875
              mmTop = 3969
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcCLA: TppDBCalc
              UserName = 'dbccLC1'
              BlankWhenZero = True
              DataField = 'CCMTOLOC'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 93663
              mmTop = 3969
              mmWidth = 20108
              BandType = 7
            end
            object ppdbcPLA: TppDBCalc
              UserName = 'dbcPLC1'
              BlankWhenZero = True
              DataField = 'CCPAGLOC'
              DataPipeline = ppDBPipelineA
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipelineA'
              mmHeight = 3969
              mmLeft = 7938
              mmTop = 3969
              mmWidth = 15081
              BandType = 7
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport6'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppsrAnticipo
        TraverseAllData = False
        DataPipelineName = 'ppDBPipelineN'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 37306
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipelineN
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report2'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.FileName = 'C:\SOLEXES\SOLFormatos\CXC\Incoresa\CtaCte2.rtm'
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipelineN'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppLabel124: TppLabel
              UserName = 'Label124'
              AutoSize = False
              Caption = 'NUMERO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 26458
              mmTop = 11377
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel125: TppLabel
              UserName = 'Label125'
              AutoSize = False
              Caption = 'F.EMISION'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 44979
              mmTop = 11377
              mmWidth = 17992
              BandType = 1
            end
            object ppLabel126: TppLabel
              UserName = 'Label126'
              AutoSize = False
              Caption = 'MONEDA NACIONAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 99219
              mmTop = 7673
              mmWidth = 32808
              BandType = 1
            end
            object ppLabel127: TppLabel
              UserName = 'Label127'
              AutoSize = False
              Caption = 'CARGOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 84931
              mmTop = 11377
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel128: TppLabel
              UserName = 'Label702'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 78317
              mmTop = 7673
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel129: TppLabel
              UserName = 'Label129'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 78317
              mmTop = 11377
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel130: TppLabel
              UserName = 'Label130'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '---------------------------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 3969
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel131: TppLabel
              UserName = 'Label131'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 15081
              mmWidth = 196321
              BandType = 1
            end
            object ppLabel132: TppLabel
              UserName = 'Label132'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 138113
              mmTop = 7673
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel133: TppLabel
              UserName = 'Label133'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 138113
              mmTop = 11377
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel134: TppLabel
              UserName = 'Label802'
              AutoSize = False
              Caption = 'ABONOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 104246
              mmTop = 11377
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel135: TppLabel
              UserName = 'Label135'
              AutoSize = False
              Caption = 'MONEDA EXTRANJERA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 150813
              mmTop = 7673
              mmWidth = 38100
              BandType = 1
            end
            object ppLabel136: TppLabel
              UserName = 'Label136'
              AutoSize = False
              Caption = 'CARGOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 144198
              mmTop = 11377
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel137: TppLabel
              UserName = 'Label137'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 183092
              mmTop = 11377
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel138: TppLabel
              UserName = 'Label138'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 195263
              mmTop = 11377
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel139: TppLabel
              UserName = 'Label139'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 195263
              mmTop = 7673
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel140: TppLabel
              UserName = 'Label140'
              AutoSize = False
              Caption = 'MONEDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 65088
              mmTop = 11377
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel141: TppLabel
              UserName = 'Label141'
              AutoSize = False
              Caption = 'D   O   C   U   M   E   N   T   O'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 6085
              mmTop = 7673
              mmWidth = 71173
              BandType = 1
            end
            object ppLabel142: TppLabel
              UserName = 'Label142'
              AutoSize = False
              Caption = 'SERIE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 13758
              mmTop = 11377
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel143: TppLabel
              UserName = 'Label143'
              AutoSize = False
              Caption = 'TIPO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 3969
              mmTop = 11377
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel144: TppLabel
              UserName = 'Label144'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 11377
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel145: TppLabel
              UserName = 'Label145'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 7673
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel146: TppLabel
              UserName = 'Label146'
              AutoSize = False
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 123561
              mmTop = 11377
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel147: TppLabel
              UserName = 'Label147'
              AutoSize = False
              Caption = 'ABONOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 164042
              mmTop = 11377
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label1501'
              AutoSize = False
              Caption = 'DETALLE DE N. CREDITO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 529
              mmTop = 529
              mmWidth = 49477
              BandType = 1
            end
          end
          object ppDetailBand9: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText64: TppDBText
              UserName = 'DBText64'
              DataField = 'DOCABR'
              DataPipeline = ppDBPipelineN
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 1852
              mmTop = 0
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText65: TppDBText
              UserName = 'DBText65'
              DataField = 'CCSERIE'
              DataPipeline = ppDBPipelineN
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 12965
              mmTop = 0
              mmWidth = 10848
              BandType = 4
            end
            object ppDBText66: TppDBText
              UserName = 'DBText66'
              DataField = 'CCNODOC'
              DataPipeline = ppDBPipelineN
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 24871
              mmTop = 0
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText67: TppDBText
              UserName = 'DBText67'
              DataField = 'CCFEMIS'
              DataPipeline = ppDBPipelineN
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 43392
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText68: TppDBText
              UserName = 'DBText68'
              BlankWhenZero = True
              DataField = 'CCMTOLOC'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 79904
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText69: TppDBText
              UserName = 'DBText69'
              BlankWhenZero = True
              DataField = 'CCPAGLOC'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 99484
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText70: TppDBText
              UserName = 'DBText70'
              BlankWhenZero = True
              DataField = 'CCMTOEXT'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 139436
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText71: TppDBText
              UserName = 'DBText71'
              BlankWhenZero = True
              DataField = 'CCPAGEXT'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 158750
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText72: TppDBText
              UserName = 'DBText72'
              DataField = 'TMONABR'
              DataPipeline = ppDBPipelineN
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 65352
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
            object ppDBText73: TppDBText
              UserName = 'DBText73'
              BlankWhenZero = True
              DataField = 'CCSALLOC'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 118798
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText74: TppDBText
              UserName = 'DBText74'
              BlankWhenZero = True
              DataField = 'CCSALEXT'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 177800
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
          end
          object ppSummaryBand8: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel148: TppLabel
              UserName = 'Label148'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 0
              mmWidth = 195792
              BandType = 7
            end
            object ppdbcCLN: TppDBCalc
              UserName = 'dbcCLN'
              BlankWhenZero = True
              DataField = 'CCMTOLOC'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 79904
              mmTop = 3704
              mmWidth = 17992
              BandType = 7
            end
            object ppdbcPLN: TppDBCalc
              UserName = 'dbcPLF1'
              BlankWhenZero = True
              DataField = 'CCPAGLOC'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 99484
              mmTop = 3704
              mmWidth = 17992
              BandType = 7
            end
            object ppdbcCEN: TppDBCalc
              UserName = 'dbcCEF1'
              BlankWhenZero = True
              DataField = 'CCMTOEXT'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 139436
              mmTop = 3704
              mmWidth = 17992
              BandType = 7
            end
            object ppdbcPEN: TppDBCalc
              UserName = 'dbcPEF1'
              BlankWhenZero = True
              DataField = 'CCPAGEXT'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 158750
              mmTop = 3704
              mmWidth = 17992
              BandType = 7
            end
            object ppLabel149: TppLabel
              UserName = 'Label149'
              AutoSize = False
              Caption = 'TOTAL N. CREDITO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 38629
              mmTop = 3704
              mmWidth = 35454
              BandType = 7
            end
            object ppdbcSLN: TppDBCalc
              UserName = 'dbcSLF1'
              BlankWhenZero = True
              DataField = 'CCSALLOC'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 118798
              mmTop = 3704
              mmWidth = 17992
              BandType = 7
            end
            object ppdbcSEN: TppDBCalc
              UserName = 'dbcSEF1'
              BlankWhenZero = True
              DataField = 'CCSALEXT'
              DataPipeline = ppDBPipelineN
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineN'
              mmHeight = 3969
              mmLeft = 177800
              mmTop = 3704
              mmWidth = 17992
              BandType = 7
            end
          end
        end
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport7'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppsrLetras
        TraverseAllData = False
        DataPipelineName = 'ppdbPipelineAdendo'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14817
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = ppdbPipelineAdendo
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report2'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.FileName = 'C:\SOLExes\SOLFormatos\CxC\Incoresa\CtaCte2.rtm'
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdbPipelineAdendo'
          object ppTitleBand8: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 19315
            mmPrintPosition = 0
            object ppLabel107: TppLabel
              UserName = 'Label107'
              AutoSize = False
              Caption = 'LETRA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 28575
              mmTop = 12700
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel187: TppLabel
              UserName = 'Label187'
              AutoSize = False
              Caption = 'F.VCMTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 86519
              mmTop = 12700
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel189: TppLabel
              UserName = 'Label189'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 111654
              mmTop = 12700
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel191: TppLabel
              UserName = 'Label191'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 12700
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel192: TppLabel
              UserName = 'Label192'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 12700
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel193: TppLabel
              UserName = 'Label193'
              AutoSize = False
              Caption = 'IMPORTE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 115888
              mmTop = 12700
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel194: TppLabel
              UserName = 'Label1003'
              AutoSize = False
              Caption = 'MONEDA NACIONAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 118004
              mmTop = 8996
              mmWidth = 28046
              BandType = 1
            end
            object ppLabel195: TppLabel
              UserName = 'Label1101'
              AutoSize = False
              Caption = 'MON.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 103452
              mmTop = 12700
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel196: TppLabel
              UserName = 'Label196'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 265
              mmTop = 6085
              mmWidth = 196321
              BandType = 1
            end
            object ppLabel197: TppLabel
              UserName = 'Label197'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 15346
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel215: TppLabel
              UserName = 'Label215'
              AutoSize = False
              Caption = 'LETRAS POR ACEPTAR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 265
              mmTop = 1852
              mmWidth = 40217
              BandType = 1
            end
            object ppLabel216: TppLabel
              UserName = 'Label902'
              AutoSize = False
              Caption = 'SITUAC.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 4233
              mmTop = 12700
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel217: TppLabel
              UserName = 'Label217'
              AutoSize = False
              Caption = 'UBICA.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 16404
              mmTop = 12700
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel218: TppLabel
              UserName = 'Label218'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 111654
              mmTop = 12700
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel219: TppLabel
              UserName = 'Label219'
              AutoSize = False
              Caption = 'SALDO '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 182827
              mmTop = 12700
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel220: TppLabel
              UserName = 'Label220'
              AutoSize = False
              Caption = 'MONEDA EXTRANJERA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 160338
              mmTop = 8996
              mmWidth = 32279
              BandType = 1
            end
            object ppLabel221: TppLabel
              UserName = 'Label221'
              AutoSize = False
              Caption = 'IMPORTE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 162190
              mmTop = 12700
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel222: TppLabel
              UserName = 'Label222'
              AutoSize = False
              Caption = 'SALDO '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 137584
              mmTop = 12700
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel223: TppLabel
              UserName = 'Label501'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 152400
              mmTop = 12700
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel224: TppLabel
              UserName = 'Label224'
              Caption = #166
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 152400
              mmTop = 12700
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel225: TppLabel
              UserName = 'Label225'
              AutoSize = False
              Caption = 'F.EMISION'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 68792
              mmTop = 12700
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel226: TppLabel
              UserName = 'Label226'
              Caption = 'Prot'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 61648
              mmTop = 12700
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel227: TppLabel
              UserName = 'Label227'
              AutoSize = False
              Caption = 'N. BCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 47096
              mmTop = 12700
              mmWidth = 11642
              BandType = 1
            end
          end
          object ppDetailBand12: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText106: TppDBText
              UserName = 'DBText106'
              DataField = 'CCNODOC'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 27517
              mmTop = 0
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText107: TppDBText
              UserName = 'DBText107'
              DataField = 'CCFVCMTO'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 85196
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText108: TppDBText
              UserName = 'DBText108'
              DataField = 'TMONABR'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 103452
              mmTop = 0
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText109: TppDBText
              UserName = 'DBText402'
              BlankWhenZero = True
              DataField = 'SALLOC'
              DataPipeline = ppDBPipelineL
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipelineL'
              mmHeight = 3969
              mmLeft = 135202
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText110: TppDBText
              UserName = 'DBText110'
              BlankWhenZero = True
              DataField = 'SALEXT'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 177007
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText111: TppDBText
              UserName = 'DBText111'
              DataField = 'SITUADES'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 2381
              mmTop = 0
              mmWidth = 12171
              BandType = 4
            end
            object ppDBText112: TppDBText
              UserName = 'DBText112'
              DataField = 'UBICADES'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 15875
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
            object ppDBText113: TppDBText
              UserName = 'DBText113'
              BlankWhenZero = True
              DataField = 'MTOLOC'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 113506
              mmTop = 0
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText114: TppDBText
              UserName = 'DBText114'
              BlankWhenZero = True
              DataField = 'MTOEXT'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 155575
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText115: TppDBText
              UserName = 'DBText501'
              DataField = 'CCFEMIS'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = 'DD/MM/YY'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 67733
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText116: TppDBText
              UserName = 'DBText116'
              DataField = 'PAGLOC'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              Visible = False
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 131234
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText117: TppDBText
              UserName = 'DBText117'
              DataField = 'PAGEXT'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              Visible = False
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 151607
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText118: TppDBText
              UserName = 'DBText118'
              DataField = 'CCFLAGPROT'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 63500
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText119: TppDBText
              UserName = 'DBText119'
              AutoSize = True
              DataField = 'CCNLETBCO'
              DataPipeline = ppdbPipelineAdendo
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 42863
              mmTop = 0
              mmWidth = 16669
              BandType = 4
            end
          end
          object ppSummaryBand11: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel228: TppLabel
              UserName = 'Label228'
              AutoSize = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '-----'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 529
              mmWidth = 198702
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'dbcCEL1'
              BlankWhenZero = True
              DataField = 'MTOEXT'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 156104
              mmTop = 4233
              mmWidth = 20108
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              BlankWhenZero = True
              DataField = 'SALEXT'
              DataPipeline = ppdbPipelineAdendo
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPipelineAdendo'
              mmHeight = 3969
              mmLeft = 177536
              mmTop = 4233
              mmWidth = 20108
              BandType = 7
            end
          end
        end
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppLabel76: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Caption = 'CARGO(M.N)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 7144
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Caption = 'ABONO(M.N)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 7144
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = 'SALDO(M.N)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 7144
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'Fac/Bol/N.Deb'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 10583
        mmWidth = 24077
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'Letras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 14023
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'Cheques'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 17463
        mmWidth = 12965
        BandType = 7
      end
      object ppvCLF: TppVariable
        UserName = 'vCLF'
        AutoSize = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 10583
        mmWidth = 20902
        BandType = 7
      end
      object ppvPLF: TppVariable
        UserName = 'vPLF'
        AutoSize = False
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 10583
        mmWidth = 20902
        BandType = 7
      end
      object ppvSLF: TppVariable
        UserName = 'vSLF'
        AutoSize = False
        CalcOrder = 2
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 10583
        mmWidth = 20902
        BandType = 7
      end
      object ppvCLL: TppVariable
        UserName = 'vCLL'
        AutoSize = False
        CalcOrder = 3
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 14023
        mmWidth = 20902
        BandType = 7
      end
      object ppvPLL: TppVariable
        UserName = 'vPLL'
        AutoSize = False
        CalcOrder = 4
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 14023
        mmWidth = 20902
        BandType = 7
      end
      object ppvSLL: TppVariable
        UserName = 'vSLL'
        AutoSize = False
        CalcOrder = 5
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 14023
        mmWidth = 20902
        BandType = 7
      end
      object ppvCLC: TppVariable
        UserName = 'vCLC'
        AutoSize = False
        CalcOrder = 6
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 17463
        mmWidth = 20902
        BandType = 7
      end
      object ppvPLC: TppVariable
        UserName = 'vPLC'
        AutoSize = False
        CalcOrder = 7
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 17463
        mmWidth = 20902
        BandType = 7
      end
      object ppvSLC: TppVariable
        UserName = 'vSLC'
        AutoSize = False
        CalcOrder = 8
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 17463
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Caption = 'TOTALES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 47890
        mmTop = 29369
        mmWidth = 12965
        BandType = 7
      end
      object ppvCLT: TppVariable
        UserName = 'vCLT'
        AutoSize = False
        CalcOrder = 9
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 72496
        mmTop = 29369
        mmWidth = 20902
        BandType = 7
      end
      object ppvPLT: TppVariable
        UserName = 'vPLT'
        AutoSize = False
        CalcOrder = 10
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 93134
        mmTop = 29369
        mmWidth = 20902
        BandType = 7
      end
      object ppvSLT: TppVariable
        UserName = 'vSLT'
        AutoSize = False
        CalcOrder = 11
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 29369
        mmWidth = 20902
        BandType = 7
      end
      object ppvCEF: TppVariable
        UserName = 'vCLF1'
        AutoSize = False
        CalcOrder = 12
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 10583
        mmWidth = 20902
        BandType = 7
      end
      object ppvPEF: TppVariable
        UserName = 'vPEF'
        AutoSize = False
        CalcOrder = 13
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155046
        mmTop = 10583
        mmWidth = 20902
        BandType = 7
      end
      object ppvSEF: TppVariable
        UserName = 'vSEF'
        AutoSize = False
        CalcOrder = 14
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 10583
        mmWidth = 20902
        BandType = 7
      end
      object ppvCEL: TppVariable
        UserName = 'vCEL'
        AutoSize = False
        CalcOrder = 15
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 14023
        mmWidth = 20902
        BandType = 7
      end
      object ppvPEL: TppVariable
        UserName = 'vPEL'
        AutoSize = False
        CalcOrder = 16
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155046
        mmTop = 14023
        mmWidth = 20902
        BandType = 7
      end
      object ppvSEL: TppVariable
        UserName = 'vSEL'
        AutoSize = False
        CalcOrder = 17
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 14023
        mmWidth = 20902
        BandType = 7
      end
      object ppvCEC: TppVariable
        UserName = 'vCEC'
        AutoSize = False
        CalcOrder = 18
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 17463
        mmWidth = 20902
        BandType = 7
      end
      object ppvPEC: TppVariable
        UserName = 'vPEC'
        AutoSize = False
        CalcOrder = 19
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155046
        mmTop = 17463
        mmWidth = 20902
        BandType = 7
      end
      object ppvSEC: TppVariable
        UserName = 'vSEC'
        AutoSize = False
        CalcOrder = 20
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 17463
        mmWidth = 20902
        BandType = 7
      end
      object ppvCET: TppVariable
        UserName = 'vCET'
        AutoSize = False
        CalcOrder = 21
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134409
        mmTop = 29369
        mmWidth = 20902
        BandType = 7
      end
      object ppvPET: TppVariable
        UserName = 'vPET'
        AutoSize = False
        CalcOrder = 22
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 155046
        mmTop = 29369
        mmWidth = 20902
        BandType = 7
      end
      object ppvSET: TppVariable
        UserName = 'vSET'
        AutoSize = False
        CalcOrder = 23
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 29369
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'CARGO(M.E)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 7144
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'ABONO(M.E)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 155046
        mmTop = 7144
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = 'SALDO(M.E)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 7144
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        AutoSize = False
        Caption = 'R  E  S  U  M  E  N    D  E    S  A  L  D  O  S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 3704
        mmWidth = 124354
        BandType = 7
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        AutoSize = False
        Caption = 'CREDITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 3704
        mmWidth = 43656
        BandType = 7
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        AutoSize = False
        Caption = 'LINEA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 7144
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        AutoSize = False
        Caption = 'DISPONIBLE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 7144
        mmWidth = 21960
        BandType = 7
      end
      object ppvLin: TppVariable
        UserName = 'vLin'
        AutoSize = False
        CalcOrder = 24
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 21960
        BandType = 7
      end
      object ppvDis: TppVariable
        UserName = 'vDis'
        AutoSize = False
        CalcOrder = 25
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 10583
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        Caption = 'Anticipos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 20902
        mmWidth = 16669
        BandType = 7
      end
      object ppvCLA: TppVariable
        UserName = 'vCLA'
        AutoSize = False
        CalcOrder = 26
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 20902
        mmWidth = 20902
        BandType = 7
      end
      object ppvPLA: TppVariable
        UserName = 'vPLA'
        AutoSize = False
        CalcOrder = 27
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 20902
        mmWidth = 20902
        BandType = 7
      end
      object ppvSLA: TppVariable
        UserName = 'vSLA'
        AutoSize = False
        CalcOrder = 28
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 20902
        mmWidth = 20902
        BandType = 7
      end
      object ppvCEA: TppVariable
        UserName = 'vCEA'
        AutoSize = False
        CalcOrder = 29
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 20902
        mmWidth = 20902
        BandType = 7
      end
      object ppvPEA: TppVariable
        UserName = 'vPEA'
        AutoSize = False
        CalcOrder = 30
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155046
        mmTop = 20902
        mmWidth = 20902
        BandType = 7
      end
      object ppvSEA: TppVariable
        UserName = 'vSEA'
        AutoSize = False
        CalcOrder = 31
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 20902
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        Caption = 'N. Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47625
        mmTop = 24342
        mmWidth = 18521
        BandType = 7
      end
      object ppvCLN: TppVariable
        UserName = 'vCLA1'
        AutoSize = False
        CalcOrder = 32
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 72496
        mmTop = 24342
        mmWidth = 20902
        BandType = 7
      end
      object ppvPLN: TppVariable
        UserName = 'vPLA1'
        AutoSize = False
        CalcOrder = 33
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 93134
        mmTop = 24342
        mmWidth = 20902
        BandType = 7
      end
      object ppvSLN: TppVariable
        UserName = 'vSLA1'
        AutoSize = False
        CalcOrder = 34
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 113771
        mmTop = 24342
        mmWidth = 20902
        BandType = 7
      end
      object ppvCEN: TppVariable
        UserName = 'vCEA1'
        AutoSize = False
        CalcOrder = 35
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 24342
        mmWidth = 20902
        BandType = 7
      end
      object ppvPEN: TppVariable
        UserName = 'vPEA1'
        AutoSize = False
        CalcOrder = 36
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155046
        mmTop = 24342
        mmWidth = 20902
        BandType = 7
      end
      object ppvSEN: TppVariable
        UserName = 'vSEA1'
        AutoSize = False
        CalcOrder = 37
        DataType = dtDouble
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 24342
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 7
      end
    end
  end
  object ppDBPipelineC: TppDBPipeline
    DataSource = DMCXC.dsQry7
    UserName = 'DBPipelineC'
    Left = 132
    Top = 260
    object ppField81: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField82: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField83: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField84: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField85: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField86: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField88: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField89: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField90: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField91: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField92: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField93: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField94: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField95: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField97: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField98: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField100: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField101: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField102: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField103: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField104: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField105: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField106: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField107: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField108: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField109: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField110: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object ppField111: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField112: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField113: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField115: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppField116: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object ppField117: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 36
    end
    object ppField118: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField119: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField120: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppDBPipelineA: TppDBPipeline
    DataSource = DMCXC.dsQry5
    UserName = 'DBPipelineA'
    Left = 136
    Top = 348
    object ppField121: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField122: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField123: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField124: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField125: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField126: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField128: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField129: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField130: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField131: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField132: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField133: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField134: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField135: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField137: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField138: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField139: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField140: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField141: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField142: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField143: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField144: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField145: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField146: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField147: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField148: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField149: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField150: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object ppField151: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField152: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField153: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField154: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField155: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppField156: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object ppField157: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 36
    end
    object ppField158: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField159: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField160: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReport2
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 496
    Top = 196
  end
  object pprCtaCte: TppReport
    AutoStop = False
    DataPipeline = ppdbCtaCte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'rCtaCte'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\oaEjecuta\RTMS\CxC\Dema\CtaCteCarta.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 542
    Top = 573
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbCtaCte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 63765
      mmPrintPosition = 0
      object pplblCiaInc: TppLabel
        UserName = 'lblCiaInc'
        Caption = 'NOMBRE DE LA COMPA'#209'IA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 1588
        mmWidth = 45508
        BandType = 0
      end
      object pplblTelefonoInc: TppLabel
        UserName = 'lblTelefonoInc'
        Caption = 'TELEFONOS DE LA COMPA'#209'IA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6350
        mmTop = 6615
        mmWidth = 51329
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 183886
        mmTop = 0
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 5292
        mmWidth = 13229
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 186002
        mmTop = 10583
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Caption = 'ESTADO DE CUENTA CORRIENTE AL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 16933
        mmWidth = 61648
        BandType = 0
      end
      object pplblFechaINC: TppLabel
        UserName = 'lblFechaINC'
        Caption = '01/01/2002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 129646
        mmTop = 16933
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label190'
        Caption = 'Sr. (es).'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 24871
        mmWidth = 12700
        BandType = 0
      end
      object pplblClienteINC: TppLabel
        UserName = 'lblClienteINC'
        Caption = 'NOMBRE DEL CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 29633
        mmWidth = 37835
        BandType = 0
      end
      object pplblrucinc: TppLabel
        UserName = 'lblrucinc'
        Caption = 'RUC: XXX TELF: XXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 34131
        mmWidth = 35190
        BandType = 0
      end
      object pplbldirinc: TppLabel
        UserName = 'lbldirinc'
        Caption = 'DIRECCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 38629
        mmWidth = 18785
        BandType = 0
      end
      object pplblDistritoinc: TppLabel
        UserName = 'lblDistritoinc'
        Caption = 'DISTRITO : XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5821
        mmTop = 43127
        mmWidth = 24077
        BandType = 0
      end
      object pplblVendedorinc: TppLabel
        UserName = 'lblVendedorinc'
        Caption = 'VENDEDOR: XXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132821
        mmTop = 43127
        mmWidth = 28046
        BandType = 0
      end
      object pplblZonainc: TppLabel
        UserName = 'lblZonainc'
        Caption = 'ZONA DE VENTA: XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132821
        mmTop = 38629
        mmWidth = 34131
        BandType = 0
      end
      object pplblCodigoinc: TppLabel
        UserName = 'lblCodigoinc'
        Caption = 'CODIGO CLIENTE: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132821
        mmTop = 34131
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = 'Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 54769
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 54769
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        Caption = 'Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 58738
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel201: TppLabel
        UserName = 'Label201'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 54769
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label2001'
        Caption = 'Emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60590
        mmTop = 58738
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label2002'
        Caption = 'N'#176' Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 54769
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label204'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 86254
        mmTop = 54769
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label205'
        Caption = 'deuda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 86519
        mmTop = 58738
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label206'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 122502
        mmTop = 54769
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label207'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 58738
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label208'
        Caption = 'A Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 100277
        mmTop = 54769
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel209: TppLabel
        UserName = 'Label209'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 54769
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label210'
        Caption = 'Vcmto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 58738
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel211: TppLabel
        UserName = 'Label211'
        Caption = 'Ubicaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 153723
        mmTop = 54769
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel212: TppLabel
        UserName = 'Label212'
        Caption = 'Numero Bco.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 54240
        mmWidth = 21696
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DOCABR'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'CCSERIE'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 34396
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        AutoSize = True
        DataField = 'CCNODOC'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        AutoSize = True
        DataField = 'CCFEMIS'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 60061
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText100: TppDBText
        UserName = 'DBText100'
        AutoSize = True
        DataField = 'MTOEXT'
        DataPipeline = ppdbCtaCte
        DisplayFormat = '###,###,###,0.00;-###,###,###,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 83609
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText1001'
        AutoSize = True
        DataField = 'PAGEXT'
        DataPipeline = ppdbCtaCte
        DisplayFormat = '###,###,###,0.00;-###,###,###,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 100542
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText102'
        AutoSize = True
        DataField = 'SALEXT'
        DataPipeline = ppdbCtaCte
        DisplayFormat = '###,###,###,0.00;-###,###,###,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 119327
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText103'
        AutoSize = True
        DataField = 'CCFVCMTO'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 135996
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText104'
        DataField = 'UBICADES'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 154782
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText105'
        DataField = 'CCNLETBCO'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand10: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'MTOEXT'
        DataPipeline = ppdbCtaCte
        DisplayFormat = '###,###,###,0.00;-###,###,###,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4057
        mmLeft = 70432
        mmTop = 2646
        mmWidth = 26670
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'PAGEXT'
        DataPipeline = ppdbCtaCte
        DisplayFormat = '###,###,###,0.00;-###,###,###,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4057
        mmLeft = 87577
        mmTop = 2646
        mmWidth = 26458
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'SALEXT'
        DataPipeline = ppdbCtaCte
        DisplayFormat = '###,###,###,0.00;-###,###,###,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4057
        mmLeft = 106204
        mmTop = 2646
        mmWidth = 25823
        BandType = 7
      end
      object ppLabel213: TppLabel
        UserName = 'Label213'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 44450
        mmTop = 2646
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataPipeline = ppdbCtaCte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbCtaCte'
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 2910
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel214: TppLabel
        UserName = 'Label214'
        Caption = 'Documentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 2910
        mmWidth = 19315
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Caption = 
          'El presente estado de cuenta es un informe de su saldo en nuestr' +
          'os libros.'#13#10'Le rogamos confrontarlos con sus registros y darnos ' +
          'su conformidad o reparo, '#13#10'cualquier pago efectuado con fecha po' +
          'sterior a la fecha indicada, se reflejar'#225#13#10'en su pr'#243'ximo estado ' +
          'de cuenta.'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Lines.Strings = (
          
            'El presente estado de cuenta es un informe de su saldo en nuestr' +
            'os libros. Le rogamos confrontarlos con sus registros y darnos s' +
            'u conformidad o reparo,  cualquier pago efectuado con fecha post' +
            'erior a la fecha indicada, se reflejar'#225' en su pr'#243'ximo estado de ' +
            'cuenta.')
        Transparent = True
        mmHeight = 17992
        mmLeft = 5292
        mmTop = 12171
        mmWidth = 191030
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppdbCtaCte: TppDBPipeline
    UserName = 'dbCtaCte'
    Left = 512
    Top = 558
  end
  object ppDBPipelineDF: TppDBPipeline
    DataSource = DMCXC.dsQry8
    UserName = 'DBPipelineDF'
    Left = 156
    Top = 176
    object ppField241: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField242: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField243: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField244: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField245: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField246: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField247: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField248: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField249: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField250: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField251: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField252: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField253: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField254: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField255: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField256: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField257: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField258: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField259: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField260: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField261: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField262: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField263: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField264: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField265: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField266: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField267: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField268: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField269: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField270: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object ppField271: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField272: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField273: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField274: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField275: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppField276: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object ppField277: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 36
    end
    object ppField278: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField279: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField280: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppDBPipelineDL: TppDBPipeline
    DataSource = DMCXC.dsQry9
    UserName = 'DBPipelineDL'
    Left = 160
    Top = 220
    object ppField281: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField282: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField283: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField284: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField285: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField286: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField287: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField288: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField289: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField290: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField291: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField292: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField293: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField294: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField295: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField296: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField297: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField298: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField299: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField300: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField301: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField302: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField303: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField304: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField305: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField306: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField307: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField308: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField309: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField310: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object ppField311: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField312: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField313: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField314: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField315: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppField316: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 35
    end
    object ppField317: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 36
    end
    object ppField318: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField319: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField320: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppDBPipelineDC: TppDBPipeline
    UserName = 'DBPipelineDC'
    Left = 160
    Top = 260
  end
  object ppDBPipelineDA: TppDBPipeline
    UserName = 'DBPipelineDA'
    Left = 164
    Top = 348
  end
  object ppRepAnos: TppReport
    AutoStop = False
    DataPipeline = dbplRepAnos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SolExes\SolFormatos\CXC\Dema\RepAnos.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepAnosPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 76
    Top = 523
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbplRepAnos'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppLabel150: TppLabel
        UserName = 'Label150'
        Caption = 'MES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 9525
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        Caption = 'A'#209'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 17992
        mmTop = 9525
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        Caption = 'VENTA M.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 41275
        mmTop = 9525
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        Caption = 'PAGO M.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 9525
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        Caption = 'SALDO M.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 78317
        mmTop = 9525
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        Caption = 'RENOVACIONES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 98161
        mmTop = 9525
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        Caption = 'REFINANCIACIONES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 125677
        mmTop = 9525
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        Caption = 'CHEQUES DEV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180711
        mmTop = 9525
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        Caption = 'CHEQUES DIF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 203994
        mmTop = 9525
        mmWidth = 22225
        BandType = 0
      end
      object pplblCiaAnos: TppLabel
        UserName = 'lblCiaAnos'
        Caption = 'DISTRIBUIDORA INCORESA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 265
        mmWidth = 52917
        BandType = 0
      end
      object pplRATitulo: TppLabel
        UserName = 'lRATitulo'
        Caption = 'ANALISIS DEL CLIENTE: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 3969
        mmWidth = 39423
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 183357
        mmTop = 0
        mmWidth = 15610
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 183357
        mmTop = 3704
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label160'
        Caption = 'PROTESTOS  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 9525
        mmWidth = 22225
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 13758
        mmWidth = 226219
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label161'
        Caption = 'L. CRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 9525
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText75: TppDBText
        UserName = 'DBText75'
        AutoSize = True
        DataField = 'ANO'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        AutoSize = True
        DataField = 'MESDESL'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 794
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'MTOEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 47890
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'PAGEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 64823
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'SALEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 85725
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'RENEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText801'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'NRORENOV'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 92075
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'NROREFINA'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 120650
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText802'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'REFEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 146315
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'NRODEV'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 178859
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'DEVEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 191294
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'NRODIF'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 205317
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'DIFEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 216430
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'NROPROT'
        DataPipeline = dbplRepAnos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 150548
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'PROTEXT'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 166952
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CLIECREMAX'
        DataPipeline = dbplRepAnos
        DisplayFormat = '###,###,#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbplRepAnos'
        mmHeight = 3440
        mmLeft = 22490
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object dbplRepAnos: TppDBPipeline
    UserName = 'dbplRepAnos'
    Left = 76
    Top = 492
    object ppField35: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object ppField36: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object ppField37: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField38: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppField39: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField40: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppField42: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppField43: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppField44: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppField45: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object ppField46: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppField47: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object ppField48: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppField49: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppField51: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppField52: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField54: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppField55: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppField56: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppField57: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppField58: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppField59: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppField60: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 25
    end
    object ppField61: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppField62: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppField63: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppField64: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 1
      DataType = dtMemo
      DisplayWidth = 10
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppField65: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 30
    end
    object ppField66: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppField67: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppField69: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 1
      DataType = dtMemo
      DisplayWidth = 10
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppField70: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 1
      DataType = dtMemo
      DisplayWidth = 10
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppField71: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 1
      DataType = dtMemo
      DisplayWidth = 10
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppField72: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppField73: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppField74: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 39
    end
  end
  object ppmLetra: TPopupMenu
    Left = 36
    Top = 208
    object Histrico1: TMenuItem
      Caption = 'Hist'#243'rico'
      OnClick = Histrico1Click
    end
    object CanLetra: TMenuItem
      Caption = 'Cancelaciones'
      OnClick = CanLetraClick
    end
    object DocumentosOrigen1: TMenuItem
      Caption = 'Documentos de Compromiso'
      OnClick = DocumentosOrigen1Click
    end
  end
  object ppmDocu: TPopupMenu
    Left = 76
    Top = 208
    object CanDocu: TMenuItem
      Caption = 'Cancelaciones'
      OnClick = CanDocuClick
    end
  end
  object ppmChDev: TPopupMenu
    Left = 36
    Top = 240
    object CanChDev: TMenuItem
      Caption = 'Cancelaciones'
      OnClick = CanChDevClick
    end
  end
  object ppmAntic: TPopupMenu
    Left = 76
    Top = 240
    object CanAnti: TMenuItem
      Caption = 'Cancelaciones'
      OnClick = CanAntiClick
    end
  end
  object ppmNCre: TPopupMenu
    Left = 108
    Top = 240
    object CanNCre: TMenuItem
      Caption = 'Cancelaciones'
      OnClick = CanNCreClick
    end
  end
  object ppdbAmortiza: TppDBPipeline
    UserName = 'dbAmortiza'
    Left = 208
    Top = 544
  end
  object pprAmortiza: TppReport
    AutoStop = False
    DataPipeline = ppdbAmortiza
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 11000
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 220000
    PrinterSetup.PaperSize = 123
    Template.FileName = 'C:\SolExes\SolFormatos\CXC\Dema\Amortiza.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 240
    Top = 544
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbAmortiza'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 50800
      mmPrintPosition = 0
      object ppLabel163: TppLabel
        UserName = 'Label163'
        Caption = 'Amortizaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 82550
        mmTop = 6615
        mmWidth = 26988
        BandType = 0
      end
      object pplblCiaAmortiza: TppLabel
        UserName = 'lCia'
        Caption = 'INCORESA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4763
        mmLeft = 265
        mmTop = 1588
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 38100
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 47096
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label8'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 1852
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        AutoSize = False
        Caption = 'Hora  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 6879
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 12700
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169598
        mmTop = 6879
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169598
        mmTop = 1852
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 12700
        mmWidth = 10319
        BandType = 0
      end
      object pplblCliente: TppLabel
        UserName = 'lblCliente'
        AutoSize = False
        Caption = 'CLIENTES VARIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 18785
        mmWidth = 106363
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        Caption = 'T. Doc,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 26723
        mmWidth = 10848
        BandType = 0
      end
      object pplblTDoc: TppLabel
        UserName = 'lblTDoc'
        AutoSize = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 32808
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Caption = 'Serie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 26723
        mmWidth = 7673
        BandType = 0
      end
      object pplblSerie: TppLabel
        UserName = 'lblSerie'
        AutoSize = False
        Caption = '030'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 44715
        mmTop = 32808
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        Caption = 'N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 26723
        mmWidth = 3704
        BandType = 0
      end
      object pplblNoDoc: TppLabel
        UserName = 'Label202'
        AutoSize = False
        Caption = '00001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 32808
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        Caption = 'Moneda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 84402
        mmTop = 26723
        mmWidth = 11906
        BandType = 0
      end
      object pplblMoneda: TppLabel
        UserName = 'Label203'
        AutoSize = False
        Caption = 'US$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 84402
        mmTop = 32808
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel175: TppLabel
        UserName = 'Label175'
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 26723
        mmWidth = 11377
        BandType = 0
      end
      object pplblImporte: TppLabel
        UserName = 'Label204'
        AutoSize = False
        Caption = '8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 32808
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label176'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 136790
        mmTop = 26723
        mmWidth = 7938
        BandType = 0
      end
      object pplblSaldo: TppLabel
        UserName = 'Label205'
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 136790
        mmTop = 32808
        mmWidth = 26194
        BandType = 0
      end
      object pplblCodigo: TppLabel
        UserName = 'lblCliente1'
        AutoSize = False
        Caption = 'C9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 18785
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        Caption = 'F.Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 42598
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label20'
        Caption = 'T.Doc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33073
        mmTop = 42598
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = 'Serie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 58208
        mmTop = 42598
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 42598
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label181'
        Caption = 'T.Cje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94192
        mmTop = 42598
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = 'N'#176'Canje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 42598
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'Moneda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 42598
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        Caption = 'Monto(MN)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 42598
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label7'
        Caption = 'Monto(ME)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 175684
        mmTop = 42598
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        DataField = 'CCFCANJE'
        DataPipeline = ppdbAmortiza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        DataField = 'DOCABR'
        DataPipeline = ppdbAmortiza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 24342
        mmTop = 0
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        DataField = 'CCSERIE'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 56356
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        DataField = 'CCNODOC'
        DataPipeline = ppdbAmortiza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 71173
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        DataField = 'TCANJEID'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 94721
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        DataField = 'CCCANJE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        DataField = 'DCCMTOEXT'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        DataField = 'DCCMTOLOC'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText99: TppDBText
        UserName = 'DBText99'
        DataField = 'TMONABR'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 134673
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand9: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'DCCMTOLOC'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 3440
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'DCCMTOEXT'
        DataPipeline = ppdbAmortiza
        DisplayFormat = '### ### ### ##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbAmortiza'
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 3440
        mmWidth = 23019
        BandType = 7
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 195263
        BandType = 7
      end
    end
  end
  object ppdbPipelineAdendo: TppDBPipeline
    UserName = 'dbPipelineAdendo'
    Left = 128
    Top = 288
  end
end
