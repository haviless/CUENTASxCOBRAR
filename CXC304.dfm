object FcrCliSaldos: TFcrCliSaldos
  Left = 281
  Top = 240
  BorderStyle = bsDialog
  Caption = 'Clientes con Saldos'
  ClientHeight = 207
  ClientWidth = 243
  Color = 12904163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 6
    Top = 14
    Width = 52
    Height = 13
    Caption = 'Compa'#241#237'a:'
  end
  object TLabel
    Left = 13
    Top = 118
    Width = 77
    Height = 13
    Caption = 'Tipo de Cambio:'
  end
  object meTipCamb: TEdit
    Left = 90
    Top = 111
    Width = 49
    Height = 21
    TabOrder = 4
    OnExit = meTipCambExit
    OnKeyPress = meTipCambKeyPress
  end
  object pnlComando: TPanel
    Left = 0
    Top = 172
    Width = 243
    Height = 35
    Align = alBottom
    Color = 10207162
    TabOrder = 3
    object Z2bbtnSalir: TBitBtn
      Left = 181
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Cerrar el Formulario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object Z2bbtnImprimir: TBitBtn
      Left = 149
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Imprimir Reporte'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Z2bbtnImprimirClick
      Glyph.Data = {
        BE080000424DBE0800000000000036000000280000001B0000001A0000000100
        18000000000088080000CE0E0000D80E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080
        8080000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000808080C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000080808080800080808080
        8000808080808000808080808000808080808000808080808000808080808000
        808080808000808080808080808000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C00000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000000000C0C0C0
        C0C0C0000000C0C0C0C0C0C00000008080008080000000000000008080000000
        0000000080800000000000000080800080800080800080800000000000000000
        0000000000000000000000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0
        0000008080008080000000000000008080000000000000008080000000000000
        0080800080800080800080800000000000000000000000000000000000000080
        8000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000000000C0C0C0C0C0C000
        0000C0C0C0C0C0C0000000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000000000C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0
        C0C0C0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF
        C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C00000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0000000808000808000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808000808000
        000000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C00000
        00000000000000000000FFFFFF00000000000080808080808000000080808000
        0000808080000000FFFFFF000000000000000000000000C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF0000000000008080800000
        00808080000000000000C0C0C0000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF000000
        808080000000000000808080000000FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000FFFFFF000000000000808080808080000000000000FFFFFF000000000000
        000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000000000000000000000000000000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000}
    end
  end
  object gbPeriodo: TGroupBox
    Left = 6
    Top = 54
    Width = 196
    Height = 55
    Caption = 'Periodo:'
    TabOrder = 2
    object TLabel
      Left = 8
      Top = 14
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object TLabel
      Left = 59
      Top = 14
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object cbMes: TComboBox
      Left = 58
      Top = 29
      Width = 132
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnExit = cbMesExit
    end
    object speAnyo: TSpinEdit
      Left = 7
      Top = 28
      Width = 49
      Height = 22
      MaxValue = 3000
      MinValue = 1990
      TabOrder = 0
      Value = 1990
      OnExit = speAnyoExit
      OnKeyPress = speAnyoKeyPress
    end
  end
  object dblcCIA: TwwDBLookupCombo
    Left = 6
    Top = 29
    Width = 51
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CIAID'#9'2'#9'ID'#9'F'
      'CIADES'#9'40'#9'Compa'#241#237'a'#9'F')
    LookupTable = DMCXC.cdsCia
    LookupField = 'CIAID'
    Options = [loColLines, loTitles]
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = dblcCIAExit
    OnNotInList = dblcCIANotInList
  end
  object edtCia: TEdit
    Left = 62
    Top = 28
    Width = 140
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object ppdbFuente: TppDBPipeline
    UserName = 'dbFuente'
    Left = 96
    object ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALACUMMN'
      FieldName = 'SALACUMMN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALACUMME'
      FieldName = 'SALACUMME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALACUMTOT'
      FieldName = 'SALACUMTOT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 5
    end
  end
  object ppReporte: TppReport
    AutoStop = False
    DataPipeline = ppdbFuente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Reporte'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\oaSistema\Menu\SOLFormatos\CxC\Dema\ClienteConSaldo.rtm'
    Units = utMillimeters
    BeforePrint = ppReporteBeforePrint
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 160
    Version = '7.02'
    mmColumnWidth = 190000
    DataPipelineName = 'ppdbFuente'
    object ppHBCab: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object pplblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        Caption = 'JOCKEY CLUB DEL PERU'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 42069
        BandType = 0
      end
      object pplblSistema: TppLabel
        UserName = 'lblSistema'
        Caption = 'Cuenta Corriente Studs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4233
        mmWidth = 35719
        BandType = 0
      end
      object pplblPagina: TppLabel
        UserName = 'lblPagina'
        Caption = 'PAGINA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblPagina1'
        Caption = 'FECHA  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
      end
      object pplblHora: TppLabel
        UserName = 'lblPagina2'
        Caption = 'HORA   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 8467
        mmWidth = 14023
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'lblTitulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 14023
        mmLeft = 40217
        mmTop = 0
        mmWidth = 129646
        BandType = 0
      end
      object pplblLin0: TppLabel
        UserName = 'lblLin0'
        Caption = 'pplblLin0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 13494
        BandType = 0
      end
      object pplblLin1: TppLabel
        UserName = 'pplblLin1'
        Caption = 'pplblLin1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 13494
        BandType = 0
      end
      object ppsvPagina: TppSystemVariable
        UserName = 'svPagina'
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 0
        mmWidth = 5556
        BandType = 0
      end
      object ppsvFecha: TppSystemVariable
        UserName = 'svFecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 4233
        mmWidth = 16933
        BandType = 0
      end
      object ppsvHora: TppSystemVariable
        UserName = 'svHora'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 8467
        mmWidth = 19579
        BandType = 0
      end
      object TppLabel
        UserName = 'Label1'
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 20108
        mmWidth = 10583
        BandType = 0
      end
      object TppLabel
        UserName = 'Label2'
        Caption = '--------US$--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 103981
        mmTop = 18785
        mmWidth = 22754
        BandType = 0
      end
      object TppLabel
        UserName = 'Label3'
        Caption = '--------S/.--------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130440
        mmTop = 18785
        mmWidth = 21431
        BandType = 0
      end
      object TppLabel
        UserName = 'Label4'
        Caption = '----Total S/.----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 18785
        mmWidth = 21431
        BandType = 0
      end
    end
    object ppDBDet: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'CLIEID'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLIEDES'
        DataPipeline = ppdbFuente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 1058
        mmWidth = 79640
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SALACUMME'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 103717
        mmTop = 794
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SALACUMMN'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 794
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'SALACUMTOT'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 794
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFBPie: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object pplblLin2: TppLabel
        UserName = 'lblLin2'
        Caption = 'pplblLin2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 13494
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'SALACUMME'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 103717
        mmTop = 10848
        mmWidth = 24077
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'SALACUMMN'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 11113
        mmWidth = 24077
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'SALACUMTOT'
        DataPipeline = ppdbFuente
        DisplayFormat = '#,#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbFuente'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 11113
        mmWidth = 24077
        BandType = 7
      end
      object TppLabel
        UserName = 'Label5'
        Caption = '====================================='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 4498
        mmWidth = 78317
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label6'
        Caption = 'TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 86784
        mmTop = 11113
        mmWidth = 11642
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
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
    Report = ppReporte
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 198
    Top = 62
  end
end
