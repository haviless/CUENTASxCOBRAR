object FRVentasValidacion: TFRVentasValidacion
  Left = 347
  Top = 202
  Width = 375
  Height = 289
  Caption = 'Validaci'#243'n del Registro de Ventas'
  Color = 12904163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 8
    Width = 58
    Height = 13
    Caption = 'Compa'#241#237'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 32
    Width = 81
    Height = 13
    Caption = 'Tipo de Diario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 58
    Width = 44
    Height = 13
    Caption = 'Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object chb_ValidaFacturacion: TCheckBox
    Left = 32
    Top = 128
    Width = 321
    Height = 15
    Alignment = taLeftJustify
    Caption = 'Diferencias entre la Facturaci'#243'n y la Provisi'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object chb_ValidaProvision: TCheckBox
    Left = 32
    Top = 152
    Width = 321
    Height = 15
    Alignment = taLeftJustify
    Caption = 'Documentos mal Provisionados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object chb_ValidaContabilizacion: TCheckBox
    Left = 32
    Top = 175
    Width = 321
    Height = 15
    Alignment = taLeftJustify
    Caption = 'Diferencias entre lo Provisionado y lo Contabilizado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object chb_ValidaAsiento: TCheckBox
    Left = 32
    Top = 200
    Width = 321
    Height = 15
    Alignment = taLeftJustify
    Caption = 'Asientos mal generados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object edt_Cia: TEdit
    Left = 113
    Top = 8
    Width = 25
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object edt_TipoDiario: TEdit
    Left = 113
    Top = 32
    Width = 25
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object edt_CiaDes: TEdit
    Left = 145
    Top = 8
    Width = 209
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object edt_TipoDiarioDes: TEdit
    Left = 145
    Top = 32
    Width = 209
    Height = 21
    Enabled = False
    TabOrder = 7
  end
  object edt_Periodo: TEdit
    Left = 113
    Top = 58
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object btn_Validar: TBitBtn
    Left = 266
    Top = 220
    Width = 89
    Height = 27
    Hint = 'Validar Registro de Ventas'
    Caption = 'Validar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btn_ValidarClick
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
  object btnExportarExcel: TBitBtn
    Left = 153
    Top = 220
    Width = 89
    Height = 27
    Hint = 'Exportar a Excel'
    Caption = 'Exportar'
    TabOrder = 10
    OnClick = btnExportarExcelClick
    Glyph.Data = {
      F6010000424DF60100000000000076000000280000001C000000180000000100
      04000000000080010000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF0FFFFFF0000FFFFFFFFFFFF
      FFFFFFFF00FFFFFF0000FFFFFFFFFFFFFFFFFFF00000FFFF0000FFFFFFFFFFFF
      FFFFFFFF00FF0FFF0000FFFFFFFFFFFFFFFFFF0FF0FFF0FF0000272727272727
      2727F0FFFFFFF0FF00007272727272727272F0FFFFFFF0FF000027FFFFFFFFFF
      FF27F0FFFFFFF0FF000072FFFFFFF7272772F0FFF0FF0FFF000027F2727272F2
      7227FF0FF00FFFFF000072F727272F272F72FFF00000FFFF000027F27272F272
      7F27FFFFF00FFFFF000072FF272F27272F72FFFFF0FFFFFF000027FFF2F2727F
      FF27FFFFFFFFFFFF000072FF2F272727FF72FFFFFFFFFFFF000027F2F2727272
      7F27FFFFFFFFFFFF000072F72727F7272F72FFFFFFFFFFFF000027F2727FFF72
      7F27FFFFFFFFFFFF000072FFFFFFFFFFFF72FFFFFFFFFFFF0000272727272727
      2727FFFFFFFFFFFF00007272727272727272FFFFFFFFFFFF0000}
  end
  object dbgValidaRegVentas: TwwDBGrid
    Left = 264
    Top = 64
    Width = 64
    Height = 40
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    TabOrder = 11
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    Visible = False
  end
  object ppr_Validar: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\DemaExes\RTMS\CxC\Dema\VALIDAREGVENTAS.RTM'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 48
    Top = 88
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Validaci'#243'n del Registro de Ventas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4995
        mmLeft = 53711
        mmTop = 6350
        mmWidth = 68199
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label20'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 1852
        mmWidth = 10319
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 1852
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'Hora   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 5556
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 5556
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label22'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 10054
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 183092
        mmTop = 9525
        mmWidth = 14023
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppdb_ValidaProvision'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 11906
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppdb_ValidaProvision
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdb_ValidaProvision'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 15610
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 6615
              mmLeft = 10848
              mmTop = 7144
              mmWidth = 185738
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'Sum Haber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 176213
              mmTop = 8731
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'Monto Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 117475
              mmTop = 8731
              mmWidth = 23283
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'N'#176' Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 73819
              mmTop = 8731
              mmWidth = 18521
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = 'Serie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 62971
              mmTop = 8731
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = 'Compa'#241#237'a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 13229
              mmTop = 8731
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label1'
              Caption = 'Documentos mal Provisionados en Cuentas por Cobrar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 10848
              mmTop = 1323
              mmWidth = 92604
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 143669
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 94456
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 71173
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 60854
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 27781
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Tipo Diario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 29633
              mmTop = 8731
              mmWidth = 13758
              BandType = 1
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 44186
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label2'
              Caption = 'Tipo de Doc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 45244
              mmTop = 8731
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'N'#176' Registro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 95515
              mmTop = 8731
              mmWidth = 14552
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 113771
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 170657
              mmTop = 7144
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label3'
              Caption = 'Sum Debe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 148696
              mmTop = 8731
              mmWidth = 13494
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'CIAID'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 13758
              mmTop = 794
              mmWidth = 8202
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'TDIARID'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 30692
              mmTop = 794
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'DOCID'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 48419
              mmTop = 794
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'CCSERIE'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 61648
              mmTop = 794
              mmWidth = 6350
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'CCNODOC'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 72231
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'CCNOREG'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 94456
              mmTop = 794
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'MONTO301'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 120121
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'DEBE302'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 147109
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'HABER302'
              DataPipeline = ppdb_ValidaProvision
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaProvision'
              mmHeight = 3175
              mmLeft = 175155
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppFooterBand2: TppFooterBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport2
        TraverseAllData = False
        DataPipelineName = 'ppdb_ValidaContabilizacion'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 20108
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppdb_ValidaContabilizacion
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdb_ValidaContabilizacion'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 15081
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 6615
              mmLeft = 11642
              mmTop = 6615
              mmWidth = 185738
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = 'Sum Haber CxC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 174890
              mmTop = 8202
              mmWidth = 20638
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'Sum Haber CNT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 122502
              mmTop = 8202
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              Caption = 'Compa'#241#237'a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 14023
              mmTop = 8202
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'Documentos mal transferidos a Contabilidad'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 11642
              mmTop = 794
              mmWidth = 74877
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 144463
              mmTop = 6615
              mmWidth = 6085
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 95250
              mmTop = 6615
              mmWidth = 6085
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line101'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 28575
              mmTop = 6615
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              Caption = 'Tipo Diario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 36248
              mmTop = 8202
              mmWidth = 13758
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 57679
              mmTop = 6615
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'N'#176' Comprobante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 70115
              mmTop = 8202
              mmWidth = 21167
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Caption = 'Sum Debe CNT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 97367
              mmTop = 8202
              mmWidth = 20108
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 119327
              mmTop = 6615
              mmWidth = 6085
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 171450
              mmTop = 6615
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = 'Sum Debe CxC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 149490
              mmTop = 8202
              mmWidth = 19579
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'CIAID'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 18256
              mmTop = 265
              mmWidth = 6085
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'TDIARID'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 40481
              mmTop = 265
              mmWidth = 6879
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'CNTCOMPROB'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 71702
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'DEBE'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 100013
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              DataField = 'HABER'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 126207
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              DataField = 'DEBE_CXC'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 149754
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              DataField = 'HABER_CXC'
              DataPipeline = ppdb_ValidaContabilizacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaContabilizacion'
              mmHeight = 3175
              mmLeft = 177536
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppFooterBand3: TppFooterBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport4: TppSubReport
        UserName = 'SubReport4'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport3
        TraverseAllData = False
        DataPipelineName = 'ppdb_ValidaAsiento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 28046
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppdb_ValidaAsiento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdb_ValidaAsiento'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13758
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 6615
              mmLeft = 14817
              mmTop = 6879
              mmWidth = 185738
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Sum Haber Detalle'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 175684
              mmTop = 8467
              mmWidth = 24077
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = 'Haber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 131498
              mmTop = 8467
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'Compa'#241#237'a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 17198
              mmTop = 8467
              mmWidth = 12965
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              Caption = 
                'Documentos mal Contabilizados transferidos desde Cuentas por Cob' +
                'rar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 14817
              mmTop = 1058
              mmWidth = 120915
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 147638
              mmTop = 6879
              mmWidth = 6085
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 98425
              mmTop = 6879
              mmWidth = 6085
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 31750
              mmTop = 6879
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label301'
              Caption = 'Tipo Diario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 39423
              mmTop = 8467
              mmWidth = 13758
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 60854
              mmTop = 6879
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              Caption = 'N'#176' Comprobante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 73290
              mmTop = 8467
              mmWidth = 21167
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              Caption = 'Debe '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 106363
              mmTop = 8467
              mmWidth = 7408
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line201'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 122502
              mmTop = 6879
              mmWidth = 6085
              BandType = 1
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 174625
              mmTop = 6879
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = 'Sum Debe Detalle'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 149754
              mmTop = 8467
              mmWidth = 23019
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'CIAID'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 17463
              mmTop = 1058
              mmWidth = 7938
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'TDIARID'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 39158
              mmTop = 1058
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'CNTCOMPROB'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 71702
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'DEBE_CAB'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 101865
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'HABER_CAB'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 126207
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'DEBE_MOV'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 152400
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'HABER_MOV'
              DataPipeline = ppdb_ValidaAsiento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaAsiento'
              mmHeight = 3175
              mmLeft = 178594
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppFooterBand4: TppFooterBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppdb_ValidaFacturacion'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 4763
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppdb_ValidaFacturacion
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdb_ValidaFacturacion'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 15346
            mmPrintPosition = 0
            object ppShape1: TppShape
              UserName = 'Shape1'
              mmHeight = 6615
              mmLeft = 7938
              mmTop = 7938
              mmWidth = 185738
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              Caption = 'Monto Provisionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 165365
              mmTop = 8996
              mmWidth = 26194
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = 'Monto Facturado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 129382
              mmTop = 9525
              mmWidth = 21431
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'N'#176' Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 95779
              mmTop = 9525
              mmWidth = 18521
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 'Moneda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 64558
              mmTop = 9525
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = 'Serie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 41275
              mmTop = 9525
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 'Tipo Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 12965
              mmTop = 9525
              mmWidth = 20828
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Documentos con diferencias entre lo Facturado y lo Provisionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 7938
              mmTop = 2117
              mmWidth = 110067
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 155575
              mmTop = 7938
              mmWidth = 6085
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 119856
              mmTop = 7938
              mmWidth = 6085
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 84138
              mmTop = 7938
              mmWidth = 6085
              BandType = 1
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 57150
              mmTop = 7938
              mmWidth = 6085
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 37042
              mmTop = 7938
              mmWidth = 6085
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'DOCID'
              DataPipeline = ppdb_ValidaFacturacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppdb_ValidaFacturacion'
              mmHeight = 3175
              mmLeft = 17198
              mmTop = 529
              mmWidth = 10054
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'FACSERIE'
              DataPipeline = ppdb_ValidaFacturacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppdb_ValidaFacturacion'
              mmHeight = 3175
              mmLeft = 39158
              mmTop = 529
              mmWidth = 13494
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              DataField = 'TMONID'
              DataPipeline = ppdb_ValidaFacturacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppdb_ValidaFacturacion'
              mmHeight = 3175
              mmLeft = 65881
              mmTop = 529
              mmWidth = 6615
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'NFAC'
              DataPipeline = ppdb_ValidaFacturacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdb_ValidaFacturacion'
              mmHeight = 3175
              mmLeft = 89694
              mmTop = 529
              mmWidth = 19050
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'FACTOTMO'
              DataPipeline = ppdb_ValidaFacturacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaFacturacion'
              mmHeight = 3175
              mmLeft = 129646
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'IMPORTE_CXC'
              DataPipeline = ppdb_ValidaFacturacion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppdb_ValidaFacturacion'
              mmHeight = 3175
              mmLeft = 168805
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd_validar: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 88
    Top = 88
  end
  object ppdb_ValidaFacturacion: TppDBPipeline
    UserName = 'db_ValidaFacturacion'
    Left = 16
    Top = 88
  end
  object ppdb_ValidaProvision: TppDBPipeline
    UserName = 'db_ValidaProvision'
    Left = 144
    Top = 88
  end
  object ppdb_ValidaContabilizacion: TppDBPipeline
    UserName = 'db_ValidaContabilizacion'
    Left = 176
    Top = 88
  end
  object ppdb_ValidaAsiento: TppDBPipeline
    UserName = 'db_ValidaAsiento'
    Left = 208
    Top = 88
  end
end
