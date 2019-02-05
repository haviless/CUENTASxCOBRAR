object FPrueba07: TFPrueba07
  Left = 195
  Top = 80
  Width = 485
  Height = 597
  Caption = 'Migración de Números Unicos de Bancos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 41
    Top = 3
    Width = 399
    Height = 555
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsmigracion
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
  object wwDBNavigator1: TwwDBNavigator
    Left = 8
    Top = 32
    Width = 25
    Height = 500
    DataSource = dsmigracion
    ImageList = im1
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
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
    object wwdbAbrir: TwwNavButton
      Left = 0
      Top = 450
      Width = 25
      Height = 25
      Hint = 'Abrir dbf'
      ImageIndex = 0
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      ParentShowHint = False
      ShowHint = True
      OnClick = wwdbAbrirClick
      Index = 18
      Style = nbsCustom
    end
    object wwdbEjecutar: TwwNavButton
      Left = 0
      Top = 475
      Width = 25
      Height = 25
      ImageIndex = 1
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwdbEjecutarClick
      Index = 19
      Style = nbsCustom
    end
  end
  object od: TOpenDialog
    DefaultExt = '*.dbf'
    Filter = 'Dbase|*.dbf'
    Left = 32
    Top = 56
  end
  object dsmigracion: TwwDataSource
    DataSet = table
    Left = 16
    Top = 104
  end
  object table: TwwTable
    TableType = ttDBase
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 16
    Top = 152
  end
  object im1: TImageList
    Left = 16
    Top = 8
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EEF3D0000FF7FFF7FFF7FFF7FFF7F0000000000000000E07FF75EE07F
      F75EE07FF75EE07FF75EE07F00000000000000000000000000000000007C0000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E000000000000FF7F0000E07FF75E
      E07FF75EE07FF75EE07FF75EE07F000000000000000000000000007C007C007C
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E000000000000E07FFF7F0000E07F
      F75EE07FF75EE07FF75EE07FF75EE07F00000000000000000000007C007C007C
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FE07FFF7F0000
      000000000000000000000000000000000000000000000000007C007C007C007C
      007C00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75EF75EF75EF75EF75E000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F000000000000000000000000007C007C007C007C007C
      007C00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75EF75EF75EF75EF75E0000E07F0000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000EF3D007C007C00000000007C
      007C007C0000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000E07FFF7FE07FFF7F
      E07FFF7F0000000000000000000000000000EF3D007C00000000000000000000
      007C007C0000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FEF3DEF3DEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75EF75EF75EF75EF75E0000E07FFF7F0000E07FFF7FE07F
      FF7F0000E07F0000000000000000000000000000000000000000000000000000
      007C007C007C000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75EF75EF75EF75EF75E0000FF7FE07FEF3D000000000000
      0000EF3DFF7F0000000000000000000000000000000000000000000000000000
      0000007C007C000000000000000000000000FF7FFF7FFF7FFF7FEF3DEF3DEF3D
      FF7FFF7FFF7FFF7FEF3DEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000E07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000000000000000000000000000000000000000000000000000
      00000000007C007C00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FEF3DEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75E0000F75EF75E00000000FF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000000000000000000000000000000000000000000000000000
      000000000000EF3D007C0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3DEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75EF75EF75EF75EF75E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3D007C000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3DEF3DEF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FE07FFF7FE07F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000007C007C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EF75E0000F75EF75E00000000EF3D0000000000000000EF3D
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF75EF75EF75EFF7FFF7FFF7FFF7FFF7F424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFE007FFFFFFFFFFFF
      C003F9FFFFFFFFFFC001F0FFFFFFEF7BC000F0FFFFFFFFFFC000E07FFFFFFFFF
      8007C07F00F800000007843FFFFFFFFF000F1E3FFFFFFFFF001FFE1FFFFFFFFF
      001FFF1FFFFFFFFF001FFF8FFFFFFFFF001FFFC7FFFFFFFF003FFFE3FFFFFFFF
      81FFFFF80000000081FFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
