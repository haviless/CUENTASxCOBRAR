object FENVIALETBCO: TFENVIALETBCO
  Left = 177
  Top = 215
  BorderStyle = bsSingle
  Caption = 'Env'#237'o de Letras al Banco'
  ClientHeight = 480
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlUBISIT: TPanel
    Left = 0
    Top = 288
    Width = 784
    Height = 192
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = -1
      Top = 155
      Width = 793
      Height = 9
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 19
      Top = 60
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object Label2: TLabel
      Left = 265
      Top = 60
      Width = 44
      Height = 13
      Caption = 'Situaci'#243'n'
    end
    object Label3: TLabel
      Left = 664
      Top = 61
      Width = 82
      Height = 13
      Caption = 'Fecha Operaci'#243'n'
    end
    object lblNroPlla: TLabel
      Left = 16
      Top = 8
      Width = 104
      Height = 13
      Caption = 'Nro.Planilla del Banco'
    end
    object lblFEnvio: TLabel
      Left = 168
      Top = 8
      Width = 77
      Height = 13
      Caption = 'Fecha de Env'#237'o'
    end
    object Z2bbtnAceptar: TBitBtn
      Left = 700
      Top = 116
      Width = 32
      Height = 32
      Hint = 'Actualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object Z2bbtnCancel: TBitBtn
      Left = 736
      Top = 116
      Width = 32
      Height = 32
      Hint = 'Cancelar'
      Cancel = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
    object dblcUBI: TwwDBLookupCombo
      Left = 14
      Top = 77
      Width = 59
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UBICAID'#9'2'#9'C'#243'digo'#9'F'
        'UBICADES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsUbica
      LookupField = 'UBICAID'
      Options = [loColLines, loTitles]
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnChange = dblcUBIChange
      OnExit = dblcUBIExit
      OnNotInList = dblcNotInList
    end
    object dbeUBI: TwwDBEdit
      Left = 74
      Top = 77
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcSIT: TwwDBLookupCombo
      Left = 258
      Top = 77
      Width = 59
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'SITUAID'#9'2'#9'C'#243'digo'#9'F'
        'SITUADES'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DMCXC.cdsSitua
      LookupField = 'SITUAID'
      Options = [loColLines, loTitles]
      MaxLength = 2
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnChange = dblcSITChange
      OnExit = dblcSITExit
      OnNotInList = dblcNotInList
    end
    object dbeSIT: TwwDBEdit
      Left = 318
      Top = 77
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object Z2bbtnImprimir: TBitBtn
      Left = 648
      Top = 116
      Width = 32
      Height = 32
      TabOrder = 8
      Visible = False
      OnClick = Z2bbtnImprimirClick
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
    object Z2bbtnSuma: TBitBtn
      Left = 13
      Top = 116
      Width = 32
      Height = 30
      Hint = 'Sumatoria'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = Z2bbtnSumaClick
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
    object dtpFOper: TwwDBDateTimePicker
      Left = 663
      Top = 77
      Width = 91
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
    end
    object edtNumPlla: TEdit
      Left = 504
      Top = 77
      Width = 147
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object dbdtpFEnvio: TwwDBDateTimePicker
      Left = 160
      Top = 24
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 10
    end
    object dbeNroPlla: TwwDBEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object dbgUBISIT: TwwDBGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 288
    DisableThemesInTitle = False
    Selected.Strings = (
      'BANCOID'#9'3'#9'BANCOID'
      'CC_CONTA'#9'1'#9'CC_CONTA'
      'CCAAAA'#9'4'#9'CCAAAA'
      'CCAASEM'#9'5'#9'CCAASEM'
      'CCAASS'#9'6'#9'CCAASS'
      'CCAATRI'#9'5'#9'CCAATRI'
      'CCACEPTA'#9'15'#9'CCACEPTA'
      'CCANOMES'#9'6'#9'CCANOMES'
      'CCAVAL'#9'15'#9'CCAVAL'
      'CCBCOID'#9'30'#9'CCBCOID'
      'CCCANJE'#9'6'#9'CCCANJE'
      'CCDCTO'#9'10'#9'CCDCTO'
      'CCDD'#9'2'#9'CCDD'
      'CCESTADO'#9'1'#9'CCESTADO'
      'CCESTCJE'#9'1'#9'CCESTCJE'
      'CCFCANJE'#9'10'#9'CCFCANJE'
      'CCFCMPRB'#9'10'#9'CCFCMPRB'
      'CCFEMIS'#9'10'#9'CCFEMIS'
      'CCFLCRED'#9'1'#9'CCFLCRED'
      'CCFLETE'#9'10'#9'CCFLETE'
      'CCFPLABCO'#9'10'#9'CCFPLABCO'
      'CCFRECEP'#9'10'#9'CCFRECEP'
      'CCFREG'#9'10'#9'CCFREG'
      'CCFSITUA'#9'10'#9'CCFSITUA'
      'CCFVALOR'#9'10'#9'CCFVALOR'
      'CCFVCMTO'#9'10'#9'CCFVCMTO'
      'CCFVENLREAL'#9'10'#9'CCFVENLREAL'
      'CCGASFIN'#9'10'#9'CCGASFIN'
      'CCGRAVAD'#9'10'#9'CCGRAVAD'
      'CCHREG'#9'10'#9'CCHREG'
      'CCIGV'#9'10'#9'CCIGV'
      'CCISC'#9'10'#9'CCISC'
      'CCLOTE'#9'4'#9'CCLOTE'
      'CCMM'#9'2'#9'CCMM'
      'CCMTOEXT'#9'10'#9'CCMTOEXT'
      'CCMTOLOC'#9'10'#9'CCMTOLOC'
      'CCMTOORI'#9'10'#9'CCMTOORI'
      'CCNFACTURA'#9'10'#9'CCNFACTURA'
      'CCNLETBCO'#9'10'#9'CCNLETBCO'
      'CCNODOC'#9'20'#9'CCNODOC'
      'CCNOGRAV'#9'10'#9'CCNOGRAV'
      'CCNOREG'#9'10'#9'CCNOREG'
      'CCNPLABCO'#9'10'#9'CCNPLABCO'
      'CCNREFINA'#9'10'#9'CCNREFINA'
      'CCNRENOV'#9'10'#9'CCNRENOV'
      'CCNSERFACTL'#9'5'#9'CCNSERFACTL'
      'CCNVECPRT'#9'10'#9'CCNVECPRT'
      'CCOENV'#9'10'#9'CCOENV'
      'CCOMERID'#9'2'#9'CCOMERID'
      'CCPAGEXT'#9'10'#9'CCPAGEXT'
      'CCPAGLOC'#9'10'#9'CCPAGLOC'
      'CCPAGORI'#9'10'#9'CCPAGORI'
      'CCPEDIDO'#9'6'#9'CCPEDIDO'
      'CCPTOTOT'#9'6'#9'CCPTOTOT'
      'CCSALEXT'#9'10'#9'CCSALEXT'
      'CCSALLOC'#9'10'#9'CCSALLOC'
      'CCSALORI'#9'10'#9'CCSALORI'
      'CCSEM'#9'1'#9'CCSEM'
      'CCSERIE'#9'5'#9'CCSERIE'
      'CCSERVIC'#9'10'#9'CCSERVIC'
      'CCSS'#9'2'#9'CCSS'
      'CCTCAMPA'#9'10'#9'CCTCAMPA'
      'CCTCAMPR'#9'10'#9'CCTCAMPR'
      'CCTRI'#9'1'#9'CCTRI'
      'CCUSER'#9'10'#9'CCUSER'
      'CIAID'#9'2'#9'COMPA'#209'IA'
      'CLAUXID'#9'2'#9'CLAUXID'
      'CLIEID'#9'8'#9'CLIEID'
      'CLIENDES'#9'40'#9'CLIENDES'
      'CLIERUC'#9'10'#9'CLIERUC'
      'CTATOTAL'#9'15'#9'CTATOTAL'
      'DOCID'#9'2'#9'DOCID'
      'DOCSIT'#9'2'#9'DOCSIT'
      'FLAGVAR'#9'2'#9'FLAGVAR'
      'FLAGVAR2'#9'2'#9'FLAGVAR2'
      'NODOCSIT'#9'12'#9'NODOCSIT'
      'RAZSOCDES'#9'30'#9'RAZSOCDES'
      'SITDES'#9'30'#9'SITDES'
      'SITID'#9'2'#9'SITID'
      'SITUACION'#9'3'#9'SITUACION'
      'TCANJEID'#9'2'#9'TCANJEID'
      'TDIARID'#9'2'#9'TDIARID'
      'TMONDES'#9'30'#9'TMONDES'
      'TMONID'#9'2'#9'TMONID'
      'UBICACION'#9'3'#9'UBICACION'
      'UBICADES'#9'40'#9'UBICADES'
      'UBIID'#9'2'#9'UBIID'
      'VEID'#9'4'#9'VEID')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = DMCXC.dsQry7
    UserName = 'DBPipeline1'
    Left = 584
    Top = 160
    object ppField1: TppField
      FieldAlias = 'LOCID'
      FieldName = 'LOCID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'HOJTID'
      FieldName = 'HOJTID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'PEDIDO'
      FieldName = 'PEDIDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'PEDFECHA'
      FieldName = 'PEDFECHA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PEDTOTMO'
      FieldName = 'PEDTOTMO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'FPAGOID'
      FieldName = 'FPAGOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'HOJTFECREG'
      FieldName = 'HOJTFECREG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'HOJTHORREG'
      FieldName = 'HOJTHORREG'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'HOJTFECSOL'
      FieldName = 'HOJTFECSOL'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'HOJTHORSOL'
      FieldName = 'HOJTHORSOL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 9
    end
    object ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIECREMAX'
      FieldName = 'CLIECREMAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'HOJTFLAGFP'
      FieldName = 'HOJTFLAGFP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTDCTO'
      FieldName = 'HOJTDCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'DESCLIEPL1'
      FieldName = 'DESCLIEPL1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'DESCLIEPL2'
      FieldName = 'DESCLIEPL2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'HOJTESTADO'
      FieldName = 'HOJTESTADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppField17: TppField
      FieldAlias = 'SCOMERID'
      FieldName = 'SCOMERID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'HOJTSOLLOG'
      FieldName = 'HOJTSOLLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'HOJTSOLCXC'
      FieldName = 'HOJTSOLCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'ALMID'
      FieldName = 'ALMID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 19
    end
    object ppField21: TppField
      FieldAlias = 'HOJTUSER'
      FieldName = 'HOJTUSER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'HOJTVBCXC'
      FieldName = 'HOJTVBCXC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppField23: TppField
      FieldAlias = 'HOJTVBLOG'
      FieldName = 'HOJTVBLOG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'HOJOBS'
      FieldName = 'HOJOBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 23
    end
    object ppField25: TppField
      FieldAlias = 'HOJHOR'
      FieldName = 'HOJHOR'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'CLIEDES'
      FieldName = 'CLIEDES'
      FieldLength = 40
      DisplayWidth = 40
      Position = 25
    end
    object ppField27: TppField
      FieldAlias = 'DCCOMDES'
      FieldName = 'DCCOMDES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 26
    end
    object ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOJTNIVEL'
      FieldName = 'HOJTNIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppField29: TppField
      FieldAlias = 'HOJOBSLOG1'
      FieldName = 'HOJOBSLOG1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 28
    end
    object ppField30: TppField
      FieldAlias = 'HOJOBSLOG2'
      FieldName = 'HOJOBSLOG2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 29
    end
    object ppField31: TppField
      FieldAlias = 'HOJOBSCXC1'
      FieldName = 'HOJOBSCXC1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 30
    end
    object ppField32: TppField
      FieldAlias = 'USERANUL'
      FieldName = 'USERANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 31
    end
    object ppField33: TppField
      FieldAlias = 'FECANUL'
      FieldName = 'FECANUL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppField34: TppField
      FieldAlias = 'HORANUL'
      FieldName = 'HORANUL'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 33
    end
    object ppField35: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object ppField36: TppField
      FieldAlias = 'CLAUXID'
      FieldName = 'CLAUXID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 35
    end
    object ppField37: TppField
      FieldAlias = 'CLIEID'
      FieldName = 'CLIEID'
      FieldLength = 15
      DisplayWidth = 8
      Position = 36
    end
    object ppField38: TppField
      FieldAlias = 'CLIERUC'
      FieldName = 'CLIERUC'
      FieldLength = 15
      DisplayWidth = 10
      Position = 37
    end
    object ppField39: TppField
      FieldAlias = 'TMONID'
      FieldName = 'TMONID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 38
    end
    object ppField40: TppField
      FieldAlias = 'VEID'
      FieldName = 'VEID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 39
    end
  end
  object pprCambio: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 640
    Top = 164
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 7144
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 11642
        mmWidth = 21167
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 188119
        mmTop = 15610
        mmWidth = 1852
        BandType = 0
      end
      object pplCia: TppLabel
        UserName = 'lCia'
        Caption = 'lCia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 7144
        mmWidth = 5821
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 22490
        mmWidth = 201348
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 32015
        mmWidth = 201348
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'No.Letra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 25400
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 25400
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 184150
        mmTop = 25665
        mmWidth = 8731
        BandType = 0
      end
      object pplNPlanilla: TppLabel
        UserName = 'lNPlanilla'
        AutoSize = False
        Caption = 'Planilla N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 11642
        mmWidth = 18521
        BandType = 0
      end
      object lNPlanilla: TppLabel
        UserName = 'lNPlanilla1'
        Caption = 'lNPlanilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 21000
        mmTop = 11642
        mmWidth = 14288
        BandType = 0
      end
      object pplFReg: TppLabel
        UserName = 'lFReg'
        AutoSize = False
        Caption = 'F. Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 15610
        mmWidth = 18521
        BandType = 0
      end
      object lFReg: TppLabel
        UserName = 'lFReg1'
        Caption = 'lFReg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 21000
        mmTop = 15610
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'F. Vcmto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 25400
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'P'#225'g.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 15610
        mmWidth = 7144
        BandType = 0
      end
      object pplTituloLetra: TppLabel
        UserName = 'lTituloLetra'
        AutoSize = False
        Caption = 'lTituloLetra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 25665
        mmTop = 529
        mmWidth = 153459
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Plaza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87842
        mmTop = 25400
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'RUC / LE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 25400
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CCNODOC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CCSALORI'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CCFVCMTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppTclien: TppDBText
        UserName = 'Tclien'
        DataField = 'CLIERUC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 112713
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'TMONABR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLIEDES'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 16669
        mmTop = 0
        mmWidth = 67204
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'ZIPID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 84667
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 153723
        mmTop = 1058
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'CCSALORI'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 529
        mmWidth = 201877
        BandType = 7
      end
      object pptUbica: TppDBText
        UserName = 'tUbica'
        AutoSize = True
        DataField = 'UBIID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 1058
        mmWidth = 6615
        BandType = 7
      end
      object pplUbica: TppLabel
        UserName = 'lUbica'
        AutoSize = False
        Caption = 'lUbica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 794
        mmWidth = 19050
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Ubicaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 34396
        mmTop = 794
        mmWidth = 15081
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Situaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 59796
        mmTop = 794
        mmWidth = 14288
        BandType = 7
      end
      object pptsitua: TppDBText
        UserName = 'tsitua'
        AutoSize = True
        DataField = 'SITID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 1588
        mmWidth = 6350
        BandType = 7
      end
      object ppLSITUA: TppLabel
        UserName = 'LSITUA'
        AutoSize = False
        Caption = 'LSITUA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 83873
        mmTop = 1588
        mmWidth = 22490
        BandType = 7
      end
    end
  end
  object ActionList1: TActionList
    Left = 376
    Top = 415
  end
end
