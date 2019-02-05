object Form21: TForm21
  Left = 198
  Top = 217
  Width = 696
  Height = 480
  Caption = 'Form21'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 14
    Top = 6
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object PageControl1: TPageControl
    Left = 14
    Top = 37
    Width = 667
    Height = 407
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Cabecera Canje'
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 657
        Height = 377
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsCCanje
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Documentos Canjeados'
      ImageIndex = 1
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 0
        Width = 657
        Height = 377
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsCanjes
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Letras'
      ImageIndex = 2
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 0
        Width = 657
        Height = 377
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsLetras
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object wwDBGrid4: TwwDBGrid
        Left = 0
        Top = 0
        Width = 657
        Height = 377
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsMovCxC2
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icBlack
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 605
    Top = 3
    Width = 75
    Height = 25
    Caption = 'RollBack'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
