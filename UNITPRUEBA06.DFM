object FPrueba05: TFPrueba05
  Left = 161
  Top = 157
  Width = 696
  Height = 521
  Caption = 'FPrueba06'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 494
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'CxC320'
      object wwDBNavigator1: TwwDBNavigator
        Left = 0
        Top = 41
        Width = 25
        Height = 217
        DataSource = DM1.dsMovCxC
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
        ParentShowHint = False
        object wwDBNavigator1First: TwwNavButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object wwDBNavigator1PriorPage: TwwNavButton
          Left = 0
          Top = 25
          Width = 25
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object wwDBNavigator1Prior: TwwNavButton
          Left = 0
          Top = 50
          Width = 25
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object wwDBNavigator1Next: TwwNavButton
          Left = 0
          Top = 75
          Width = 25
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object wwDBNavigator1NextPage: TwwNavButton
          Left = 0
          Top = 100
          Width = 25
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object wwDBNavigator1Last: TwwNavButton
          Left = 0
          Top = 125
          Width = 25
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object wwDBNavigator1Insert: TwwNavButton
          Left = 0
          Top = 150
          Width = 25
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Insert'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsInsert
        end
        object wwDBNavigator1Delete: TwwNavButton
          Left = 0
          Top = 175
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsDelete
        end
        object wwDBNavigator1Edit: TwwNavButton
          Left = 0
          Top = 200
          Width = 25
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Edit'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsEdit
        end
        object wwDBNavigator1Post: TwwNavButton
          Left = 0
          Top = 225
          Width = 25
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsPost
        end
        object wwDBNavigator1Cancel: TwwNavButton
          Left = 0
          Top = 250
          Width = 25
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 10
          Style = nbsCancel
        end
        object wwDBNavigator1Refresh: TwwNavButton
          Left = 0
          Top = 275
          Width = 25
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Refresh'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 11
          Style = nbsRefresh
        end
        object wwDBNavigator1SaveBookmark: TwwNavButton
          Left = 0
          Top = 300
          Width = 25
          Height = 25
          Hint = 'Bookmark current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1SaveBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 12
          Style = nbsSaveBookmark
        end
        object wwDBNavigator1RestoreBookmark: TwwNavButton
          Left = 0
          Top = 325
          Width = 25
          Height = 25
          Hint = 'Go back to saved bookmark'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1RestoreBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 13
          Style = nbsRestoreBookmark
        end
        object wwDBNavigator1FilterDialog: TwwNavButton
          Left = 0
          Top = 350
          Width = 25
          Height = 25
          Hint = 'Filter the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1FilterDialog'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 14
          Style = nbsFilterDialog
        end
        object wwDBNavigator1RecordViewDialog: TwwNavButton
          Left = 0
          Top = 375
          Width = 25
          Height = 25
          Hint = 'View current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1RecordViewDialog'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 15
          Style = nbsRecordViewDialog
        end
        object wwDBNavigator1LocateDialog: TwwNavButton
          Left = 0
          Top = 400
          Width = 25
          Height = 25
          Hint = 'Locate a specific record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1LocateDialog'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 16
          Style = nbsLocateDialog
        end
        object wwDBNavigator1SearchDialog: TwwNavButton
          Left = 0
          Top = 425
          Width = 25
          Height = 25
          Hint = 'Search the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1SearchDialog'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 17
          Style = nbsSearchDialog
        end
      end
      object dbg1: TwwDBGrid
        Left = 25
        Top = 41
        Width = 655
        Height = 217
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnRowChanged = dbg1RowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DM1.dsMovCxC
        KeyOptions = []
        MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = dbg1CalcCellColors
        IndicatorColor = icBlack
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 41
        Align = alTop
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 21
          Caption = 'Refresca'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object Button1: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 21
          Caption = 'Actualiza'
          TabOrder = 1
          OnClick = Button1Click
        end
        object pb1: TProgressBar
          Left = 9
          Top = 31
          Width = 664
          Height = 9
          Min = 0
          Max = 100
          TabOrder = 2
        end
        object BitBtn3: TBitBtn
          Left = 168
          Top = 8
          Width = 75
          Height = 21
          Caption = 'Graba 320'
          TabOrder = 3
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 248
          Top = 8
          Width = 75
          Height = 21
          Caption = 'M. Clientes'
          TabOrder = 4
          OnClick = BitBtn4Click
        end
        object BitBtn2: TBitBtn
          Left = 328
          Top = 8
          Width = 75
          Height = 21
          Caption = 'Graba Ant.'
          TabOrder = 5
          OnClick = BitBtn2Click
        end
      end
      object dbg3: TwwDBGrid
        Left = 0
        Top = 258
        Width = 680
        Height = 208
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alBottom
        DataSource = DM1.dsQry2
        TabOrder = 3
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = dbg3CalcCellColors
        IndicatorColor = icBlack
      end
    end
  end
  object fd: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Options = [fdEffects, fdApplyButton]
    Left = 468
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 32
    object Fuentes1: TMenuItem
      Caption = 'Fuentes'
      OnClick = Fuentes1Click
    end
  end
end
