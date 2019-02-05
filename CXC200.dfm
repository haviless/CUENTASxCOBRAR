object FMaesClie: TFMaesClie
  Left = 338
  Top = 121
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Maestro de Clientes'
  ClientHeight = 549
  ClientWidth = 747
  Color = 14869218
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
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
  TextHeight = 15
  object Label65: TLabel
    Left = 45
    Top = 311
    Width = 84
    Height = 15
    Caption = 'Nombre del Aval'
    Visible = False
  end
  object pnlPrincipal: TPanel
    Left = 8
    Top = 7
    Width = 729
    Height = 538
    Color = 14869218
    TabOrder = 0
    object Panel1: TPanel
      Left = 10
      Top = 12
      Width = 711
      Height = 513
      TabOrder = 0
      object pcMaestro: TPageControl
        Left = -1
        Top = 109
        Width = 714
        Height = 362
        ActivePage = TabSheet1
        TabOrder = 2
        OnChanging = pcMaestroChanging
        object TabSheet1: TTabSheet
          Caption = 'Generales'
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 14869218
            TabOrder = 0
            object Label4: TLabel
              Left = 23
              Top = 111
              Width = 43
              Height = 15
              Caption = 'EMail(s)'
            end
            object Label13: TLabel
              Left = 184
              Top = 57
              Width = 51
              Height = 15
              Caption = 'Tel'#233'fonos'
            end
            object Label14: TLabel
              Left = 298
              Top = 57
              Width = 19
              Height = 15
              Caption = 'Fax'
            end
            object lblNombreCorto: TLabel
              Left = 23
              Top = 57
              Width = 71
              Height = 15
              Caption = 'Nombre Corto'
            end
            object lblDocIdentidad: TLabel
              Left = 600
              Top = 57
              Width = 90
              Height = 15
              Caption = 'N'#186' Doc Identidad'
            end
            object Label28: TLabel
              Left = 23
              Top = 154
              Width = 40
              Height = 15
              Caption = 'Girador'
            end
            object Label30: TLabel
              Left = 23
              Top = 200
              Width = 73
              Height = 15
              Caption = 'Representante'
            end
            object Label19: TLabel
              Left = 309
              Top = 203
              Width = 136
              Height = 13
              AutoSize = False
              Caption = 'Relaci'#243'n con la Empresa'
              WordWrap = True
            end
            object Label6: TLabel
              Left = 23
              Top = 260
              Width = 23
              Height = 15
              Caption = 'Giro'
            end
            object Label2: TLabel
              Left = 209
              Top = 260
              Width = 80
              Height = 15
              Caption = 'Clasificaciones'
            end
            object Label63: TLabel
              Left = 461
              Top = 203
              Width = 60
              Height = 13
              AutoSize = False
              Caption = 'Situaci'#243'n'
              WordWrap = True
            end
            object lblNombre: TLabel
              Left = 23
              Top = 12
              Width = 40
              Height = 15
              Caption = 'Nombre'
            end
            object lblNombre2: TLabel
              Left = 175
              Top = 12
              Width = 87
              Height = 15
              Caption = 'Segundo Nombre'
            end
            object lblApPaterno: TLabel
              Left = 323
              Top = 12
              Width = 84
              Height = 15
              Caption = 'Apellido Paterno'
            end
            object lblApMaterno: TLabel
              Left = 512
              Top = 12
              Width = 88
              Height = 15
              Caption = 'Apellido Materno'
            end
            object lblTDocIdentidad: TLabel
              Left = 359
              Top = 57
              Width = 99
              Height = 15
              Caption = 'Tipo Doc Identidad'
            end
            object dbeTelef: TwwDBEdit
              Left = 175
              Top = 77
              Width = 90
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIETELF'
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeFax: TwwDBEdit
              Left = 270
              Top = 77
              Width = 77
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIEFAX'
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeMail: TwwDBEdit
              Left = 20
              Top = 129
              Width = 360
              Height = 23
              DataField = 'CLIEEMAI'
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeAbr: TwwDBEdit
              Left = 20
              Top = 77
              Width = 146
              Height = 23
              DataField = 'CLIEABR'
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeDocIdentidad: TwwDBEdit
              Left = 592
              Top = 77
              Width = 105
              Height = 23
              DataField = 'CLIEDNI'
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = dbeDocIdentidadExit
            end
            object dbeGirador: TwwDBEdit
              Left = 20
              Top = 172
              Width = 303
              Height = 23
              DataField = 'CLIEGIRA'
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeRepres: TwwDBEdit
              Left = 20
              Top = 220
              Width = 281
              Height = 23
              DataField = 'CLIEREPR'
              TabOrder = 11
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcVinculo: TwwDBLookupCombo
              Left = 310
              Top = 220
              Width = 40
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'VINCID'#9'2'#9'Id'#9'F'
                'VINCDES'#9'30'#9'Vinculo con la Empresa'#9'F')
              DataField = 'VINCID'
              LookupField = 'VINCID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 13
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcVinculoExit
            end
            object dbeVinculo: TwwDBEdit
              Left = 356
              Top = 220
              Width = 100
              Height = 23
              Enabled = False
              TabOrder = 12
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcGiro: TwwDBLookupCombo
              Left = 20
              Top = 280
              Width = 40
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'GIROID'#9'2'#9'Id'#9'F'
                'GIRODES'#9'40'#9'Giro de la Empresa'#9'F')
              DataField = 'GIROID'
              LookupField = 'GIROID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 15
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcGiroExit
            end
            object dbeGiro: TwwDBEdit
              Left = 65
              Top = 280
              Width = 100
              Height = 23
              Enabled = False
              TabOrder = 19
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcClasif: TwwDBLookupCombo
              Left = 208
              Top = 280
              Width = 40
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'CLASIFID'#9'1'#9'Id'#9'F'
                'CLASIFDES'#9'40'#9'Clasificaci'#243'n del Cliente'#9'F')
              DataField = 'CLASIFID'
              LookupField = 'CLASIFID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 16
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcClasifExit
            end
            object dbeClasif: TwwDBEdit
              Left = 248
              Top = 280
              Width = 100
              Height = 23
              Enabled = False
              TabOrder = 20
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcSituacion: TwwDBLookupCombo
              Left = 464
              Top = 220
              Width = 45
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'SITCLIEID'#9'2'#9'Id.'#9'F'
                'SITCLIEDES'#9'30'#9'Descricpi'#243'n'#9'F')
              DataField = 'SITCLIEID'
              LookupField = 'SITCLIEID'
              Options = [loTitles]
              TabOrder = 14
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcSituacionExit
            end
            object dbeSitClie: TwwDBEdit
              Left = 512
              Top = 220
              Width = 121
              Height = 23
              TabOrder = 18
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeNombres: TwwDBEdit
              Left = 20
              Top = 27
              Width = 146
              Height = 23
              DataField = 'CLIENOMBRE'
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbesNombres: TwwDBEdit
              Left = 172
              Top = 27
              Width = 146
              Height = 23
              DataField = 'CLIENOMBRE1'
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeapepat: TwwDBEdit
              Left = 320
              Top = 27
              Width = 185
              Height = 23
              DataField = 'CLIEAPEPAT'
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeapemat: TwwDBEdit
              Left = 509
              Top = 27
              Width = 188
              Height = 23
              DataField = 'CLIEAPEMAT'
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object cbActivo: TwwCheckBox
              Left = 541
              Top = 274
              Width = 98
              Height = 30
              DisableThemes = False
              AlwaysTransparent = False
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              DisplayValueChecked = 'S'
              DisplayValueUnchecked = 'N'
              NullAndBlankState = cbUnchecked
              Caption = 'Activo'
              Color = clInfoBk
              DataField = 'ACTIVO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 17
            end
            object dblcTDocIdentidad: TwwDBLookupCombo
              Left = 359
              Top = 77
              Width = 40
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TIPPERID'#9'2'#9'Id'#9'F'
                'TIPPERDES'#9'30'#9'Tipo de Persona'#9'F')
              DataField = 'TIPPERID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 7
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
              OnExit = dblcTDocIdentidadExit
            end
            object edtTDocIdentidad: TwwDBEdit
              Left = 399
              Top = 77
              Width = 186
              Height = 23
              Enabled = False
              TabOrder = 21
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object tsDireccion: TTabSheet
          Caption = 'Direcci'#243'n'
          ImageIndex = 2
          object pnlDireccion: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 14869218
            TabOrder = 0
            object Label11: TLabel
              Left = 23
              Top = 20
              Width = 105
              Height = 15
              Caption = 'Direcci'#243'n Comercial'
            end
            object Label12: TLabel
              Left = 307
              Top = 20
              Width = 81
              Height = 15
              Caption = 'Direcci'#243'n Legal'
            end
            object Label29: TLabel
              Left = 23
              Top = 80
              Width = 21
              Height = 15
              Caption = 'Pa'#237's'
            end
            object Label21: TLabel
              Left = 188
              Top = 80
              Width = 71
              Height = 15
              Caption = 'Departamento'
            end
            object Label22: TLabel
              Left = 356
              Top = 80
              Width = 49
              Height = 15
              Caption = 'Provincia'
            end
            object Label23: TLabel
              Left = 514
              Top = 80
              Width = 40
              Height = 15
              Caption = 'Distrito'
            end
            object Label50: TLabel
              Left = 23
              Top = 144
              Width = 89
              Height = 15
              Caption = 'Sector Comercial'
            end
            object Label51: TLabel
              Left = 326
              Top = 144
              Width = 73
              Height = 15
              Caption = 'Zona de Venta'
            end
            object dbeDirCom: TwwDBEdit
              Left = 20
              Top = 40
              Width = 260
              Height = 23
              DataField = 'CLIEDIR'
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeDirLeg: TwwDBEdit
              Left = 300
              Top = 40
              Width = 260
              Height = 23
              DataField = 'CLIEDIRLEG'
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcPais: TwwDBLookupCombo
              Left = 20
              Top = 100
              Width = 45
              Height = 23
              CharCase = ecUpperCase
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'PAISID'#9'3'#9'Id'#9'F'
                'PAISDES'#9'30'#9'Pais'#9'F')
              DataField = 'PAISID'
              LookupTable = DMCXC.cdsPais
              LookupField = 'PAISID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 2
              AutoDropDown = False
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
              OnExit = dblcPaisExit
            end
            object dbePais: TwwDBEdit
              Left = 68
              Top = 100
              Width = 100
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcDeparta: TwwDBLookupCombo
              Left = 187
              Top = 100
              Width = 45
              Height = 23
              CharCase = ecUpperCase
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'DPTOID'#9'3'#9'Id'#9'F'
                'DPTODES'#9'30'#9'Departamento'#9'F')
              DataField = 'DPTOID'
              LookupField = 'DPTOID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 4
              AutoDropDown = False
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
              OnExit = dblcDepartaExit
            end
            object dbeDeparta: TwwDBEdit
              Left = 232
              Top = 100
              Width = 100
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeProvinc: TwwDBEdit
              Left = 400
              Top = 100
              Width = 100
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeDistrito: TwwDBEdit
              Left = 558
              Top = 100
              Width = 100
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object edtSecNta: TEdit
              Left = 83
              Top = 164
              Width = 194
              Height = 23
              Enabled = False
              TabOrder = 11
            end
            object edtZonNta: TEdit
              Left = 404
              Top = 164
              Width = 213
              Height = 23
              Enabled = False
              TabOrder = 13
            end
            object dblcSecVta: TwwDBLookupCombo
              Left = 24
              Top = 164
              Width = 53
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TVTAID'#9'2'#9'Id'#9'F'
                'TVTADES'#9'15'#9'Descripci'#243'n'#9'F')
              DataField = 'TVTAID'
              LookupField = 'TVTAID'
              Options = [loTitles]
              TabOrder = 10
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcSecVtaExit
            end
            object dblcdDistrito: TwwDBLookupComboDlg
              Left = 512
              Top = 100
              Width = 45
              Height = 23
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'ZIPID'#9'3'#9'Id'#9'F'
                'ZIPDES'#9'35'#9'Distrito'#9'F')
              DataField = 'CLIECZIP'
              LookupTable = DMCXC.cdsDistrito
              LookupField = 'ZIPID'
              TabOrder = 8
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnExit = dblcdDistritoExit
            end
            object dblcdProvinc: TwwDBLookupComboDlg
              Left = 356
              Top = 101
              Width = 45
              Height = 23
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'CIUDID'#9'3'#9'Id'#9'F'
                'CIUDDES'#9'30'#9'Descripci'#243'n'#9'F')
              DataField = 'CIUDID'
              LookupField = 'CIUDID'
              TabOrder = 6
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnExit = dblcdProvincExit
            end
            object dblcZonVta: TwwDBLookupComboDlg
              Left = 324
              Top = 164
              Width = 79
              Height = 23
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'ZVTAID'#9'8'#9'Id'#9'F'
                'ZVTADES'#9'25'#9'Zona'#9'F')
              DataField = 'ZONVTAID'
              LookupField = 'ZVTAID'
              TabOrder = 12
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnExit = dblcZonVtaExit
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Comercial'
          ImageIndex = 3
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 14869218
            TabOrder = 0
            object Label5: TLabel
              Left = 23
              Top = 20
              Width = 48
              Height = 15
              Caption = 'Vendedor'
            end
            object Label3: TLabel
              Left = 226
              Top = 258
              Width = 86
              Height = 15
              Caption = 'Contacto Cr'#233'dito'
              Visible = False
            end
            object Label9: TLabel
              Left = 288
              Top = 20
              Width = 96
              Height = 15
              Caption = 'Condici'#243'n de Pago '
            end
            object Label20: TLabel
              Left = 19
              Top = 67
              Width = 72
              Height = 15
              Caption = 'Capital Social'
            end
            object Label18: TLabel
              Left = 119
              Top = 67
              Width = 108
              Height = 14
              AutoSize = False
              Caption = 'Sector Econ'#243'mico'
              WordWrap = True
            end
            object Label16: TLabel
              Left = 334
              Top = 67
              Width = 29
              Height = 15
              Caption = 'CIUU'
            end
            object Label1: TLabel
              Left = 11
              Top = 258
              Width = 50
              Height = 15
              Caption = 'Garant'#237'as'
              Visible = False
            end
            object Label64: TLabel
              Left = 21
              Top = 119
              Width = 84
              Height = 15
              Caption = 'Nombre del Aval'
            end
            object Label66: TLabel
              Left = 22
              Top = 161
              Width = 72
              Height = 15
              Caption = 'Tel'#233'fono Aval'
            end
            object Label67: TLabel
              Left = 152
              Top = 161
              Width = 32
              Height = 15
              Caption = 'D.O.I.'
            end
            object Label68: TLabel
              Left = 21
              Top = 201
              Width = 95
              Height = 15
              Caption = 'Direcci'#243'n del Aval'
            end
            object dblcVende: TwwDBLookupCombo
              Left = 16
              Top = 40
              Width = 60
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'VEID'#9'4'#9'Id'#9'F'
                'VENOMBRES'#9'40'#9'Vendedor'#9'F')
              DataField = 'VEID'
              LookupField = 'VEID'
              Options = [loColLines, loRowLines, loTitles]
              DropDownCount = 15
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
              OnExit = dblcVendeExit
            end
            object dbeVende: TwwDBEdit
              Left = 83
              Top = 40
              Width = 178
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeContac: TwwDBEdit
              Left = 219
              Top = 278
              Width = 206
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIECONTAC'
              TabOrder = 14
              UnboundDataType = wwDefault
              Visible = False
              WantReturns = False
              WordWrap = False
            end
            object dblcConPago: TwwDBLookupCombo
              Left = 287
              Top = 40
              Width = 46
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'CONDPID'#9'2'#9'Id'#9'F'
                'CONDPDES'#9'30'#9'Condici'#243'n de Pago'#9'F')
              DataField = 'CLIECOND'
              LookupField = 'CONDPID'
              Options = [loColLines, loRowLines, loTitles]
              DropDownCount = 15
              TabOrder = 2
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcConPagoExit
            end
            object dbeCondPago: TwwDBEdit
              Left = 334
              Top = 40
              Width = 151
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeCapSoc: TwwDBEdit
              Left = 16
              Top = 87
              Width = 90
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIECAPSOC'
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcSecEco: TwwDBLookupCombo
              Left = 118
              Top = 87
              Width = 41
              Height = 23
              CharCase = ecUpperCase
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'SECECOID'#9'2'#9'Id'#9'F'
                'SECECODES'#9'30'#9'Sector Economico'#9'F')
              DataField = 'SECECOID'
              LookupField = 'SECECOID'
              Options = [loColLines, loRowLines, loTitles]
              TabOrder = 5
              AutoDropDown = False
              ShowButton = True
              SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
              OnExit = dblcSecEcoExit
            end
            object dbeSecEco: TwwDBEdit
              Left = 163
              Top = 87
              Width = 160
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeCIUU: TwwDBEdit
              Left = 423
              Top = 87
              Width = 134
              Height = 23
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeGarantias: TwwDBEdit
              Left = 8
              Top = 278
              Width = 81
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIEGARAN'
              Enabled = False
              TabOrder = 13
              UnboundDataType = wwDefault
              Visible = False
              WantReturns = False
              WordWrap = False
            end
            object dblcCIUU: TwwDBLookupComboDlg
              Left = 332
              Top = 87
              Width = 90
              Height = 23
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'CIUUID'#9'10'#9'Id'#9'F'
                'CIUUDES'#9'40'#9'CIUU'#9'F')
              DataField = 'CIUUID'
              LookupField = 'CIUUID'
              TabOrder = 7
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnExit = dblcCIUUExit
            end
            object dbeAvalNomb: TwwDBEdit
              Left = 21
              Top = 134
              Width = 448
              Height = 23
              CharCase = ecUpperCase
              DataField = 'AVALNOMB'
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = dbeRazSocExit
            end
            object dbeAvalDir: TwwDBEdit
              Left = 21
              Top = 216
              Width = 448
              Height = 23
              CharCase = ecUpperCase
              DataField = 'AVALDIR'
              TabOrder = 12
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = dbeRazSocExit
            end
            object dbeAvalDoc: TwwDBEdit
              Left = 142
              Top = 176
              Width = 115
              Height = 23
              DataField = 'AVALDOC'
              TabOrder = 11
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeAvalTelf: TwwDBEdit
              Left = 22
              Top = 176
              Width = 115
              Height = 23
              DataField = 'AVALTELF'
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object tsLineaCredito: TTabSheet
          Caption = 'L'#237'nea de Cr'#233'dito'
          ImageIndex = 5
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 14869218
            TabOrder = 0
            object Label49: TLabel
              Left = 19
              Top = 5
              Width = 40
              Height = 15
              Caption = 'Moneda'
            end
            object Label7: TLabel
              Left = 239
              Top = 5
              Width = 98
              Height = 15
              Caption = 'L.Cr'#233'dito Max ( $ )'
            end
            object Label8: TLabel
              Left = 345
              Top = 5
              Width = 95
              Height = 15
              Caption = 'L.Cr'#233'dito Min ( $ )'
            end
            object Label53: TLabel
              Left = 449
              Top = 5
              Width = 75
              Height = 13
              Caption = 'Lista de Precios'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dbgLineaCredito: TwwDBGrid
              Left = 4
              Top = 53
              Width = 697
              Height = 276
              DisableThemesInTitle = False
              Selected.Strings = (
                'CLIECREMAX'#9'10'#9'M'#225'ximo'#9'F'
                'CLIECREMIN'#9'10'#9'M'#237'nimo'#9'F'
                'TMONID'#9'2'#9'Tipo. Moneda'#9'F'
                'ULTFECHA'#9'10'#9'Fecha'#9'F'
                'USERID'#9'10'#9'Usuario'#9'F'
                'FREG'#9'10'#9'Fecha Mod.'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 7566265
              FixedCols = 0
              ShowHorzScrollBar = True
              KeyOptions = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 7
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Comic Sans MS'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnDblClick = dbgLineaCreditoDblClick
              OnKeyDown = dbgLineaCreditoKeyDown
              object ibInsertaLineaCredito: TwwIButton
                Left = 0
                Top = 0
                Width = 26
                Height = 28
                AllowAllUp = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
                OnClick = ibInsertaLineaCreditoClick
              end
            end
            object pnlLineaCredito: TPanel
              Left = 218
              Top = 123
              Width = 213
              Height = 149
              Color = 14869218
              TabOrder = 6
              Visible = False
              object Label15: TLabel
                Left = 1
                Top = 1
                Width = 211
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = 'Actualizaci'#243'n de L'#237'nea de Cr'#233'dito'
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label54: TLabel
                Left = 10
                Top = 48
                Width = 41
                Height = 15
                Caption = 'M'#225'ximo'
              end
              object Label55: TLabel
                Left = 10
                Top = 95
                Width = 30
                Height = 15
                Caption = 'Fecha'
              end
              object Label56: TLabel
                Left = 10
                Top = 72
                Width = 38
                Height = 15
                Caption = 'M'#237'nimo'
              end
              object Label57: TLabel
                Left = 10
                Top = 25
                Width = 40
                Height = 15
                Caption = 'Moneda'
              end
              object Z2bbtnOKLC: TBitBtn
                Left = 155
                Top = 114
                Width = 25
                Height = 25
                Hint = 'Pasa a Registrar Detalle'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                OnClick = Z2bbtnOKLCClick
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
              object Z2bbtnCancelLC: TBitBtn
                Left = 179
                Top = 114
                Width = 26
                Height = 25
                Hint = 'Reinicia Comprobante'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = Z2bbtnCancelLCClick
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
              object dbeLineaCreditoMax: TwwDBEdit
                Left = 116
                Top = 43
                Width = 89
                Height = 23
                DataField = 'CLIECREMAX'
                TabOrder = 2
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbdtpUltFecha: TwwDBDateTimePicker
                Left = 116
                Top = 88
                Width = 89
                Height = 23
                CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                CalendarAttributes.Font.Color = clWindowText
                CalendarAttributes.Font.Height = -11
                CalendarAttributes.Font.Name = 'MS Sans Serif'
                CalendarAttributes.Font.Style = []
                DataField = 'ULTFECHA'
                Epoch = 1950
                ShowButton = True
                TabOrder = 4
                OnEnter = dbdtpUltFechaEnter
              end
              object dbeLineaCreditoMin: TwwDBEdit
                Left = 116
                Top = 66
                Width = 89
                Height = 23
                DataField = 'CLIECREMIN'
                TabOrder = 3
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dblcTMonid: TwwDBLookupCombo
                Left = 59
                Top = 21
                Width = 37
                Height = 23
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'TMONID'#9'2'#9'Moneda'#9'F'
                  'TMONDES'#9'30'#9'Descripci'#243'n'#9'F')
                DataField = 'TMONID'
                LookupField = 'TMONID'
                Options = [loTitles]
                TabOrder = 0
                AutoDropDown = False
                ShowButton = True
                UseTFields = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnExit = dblcTMonidExit
                OnNotInList = NotInList
              end
              object edtTMonId: TEdit
                Left = 95
                Top = 21
                Width = 111
                Height = 23
                Enabled = False
                TabOrder = 1
              end
            end
            object dblcMoneda: TwwDBLookupCombo
              Left = 16
              Top = 25
              Width = 53
              Height = 23
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TMONID'#9'2'#9'C'#243'digo'#9'F'
                'TMONDES'#9'20'#9'Descripci'#243'n'#9'F'
                'TMONABR'#9'8'#9'Abrv.'#9'F')
              DataField = 'TMONID'
              LookupField = 'TMONID'
              Enabled = False
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = False
              OnExit = dblcMonedaExit
            end
            object edtMoneda: TEdit
              Left = 72
              Top = 25
              Width = 149
              Height = 23
              Enabled = False
              TabOrder = 1
            end
            object dbeCredMax: TwwDBEdit
              Left = 235
              Top = 25
              Width = 90
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIECREMAX'
              Enabled = False
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dbeCredMin: TwwDBEdit
              Left = 338
              Top = 25
              Width = 90
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CLIECREMIN'
              Enabled = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object dblcLPrecio: TwwDBLookupCombo
              Left = 449
              Top = 25
              Width = 63
              Height = 23
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'TLISTAID'#9'3'#9'Id'#9'F'
                'TLISTADES'#9'20'#9'Lista'#9'F')
              DataField = 'TLISTAID'
              LookupField = 'TLISTAID'
              Options = [loColLines, loRowLines, loTitles]
              ParentFont = False
              TabOrder = 4
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              ShowMatchText = True
              OnExit = dblcLPrecioExit
            end
            object edtLPrecio: TEdit
              Left = 515
              Top = 25
              Width = 152
              Height = 23
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
        end
        object tsDireccionEntrega: TTabSheet
          Caption = 'Lugares de Entrega'
          ImageIndex = 4
          object pnlLEntrega: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 12904163
            TabOrder = 0
            object dbgLugarEntrega: TwwDBGrid
              Left = 4
              Top = 0
              Width = 697
              Height = 328
              DisableThemesInTitle = False
              Selected.Strings = (
                'CLIEDIRID'#9'2'#9'ID'#9'F'
                'CLIEDIRENT'#9'30'#9'Direcci'#243'n'#9'F'
                'ZIPID'#9'2'#9'C. Postal.~Comercial'#9'F'
                'ZVTAID'#9'10'#9'Zona de~ Venta'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 7566265
              FixedCols = 0
              ShowHorzScrollBar = True
              KeyOptions = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
              OnDblClick = dbgLugarEntregaDblClick
              OnKeyDown = dbgLugarEntregaKeyDown
              object ibLugarEntrega: TwwIButton
                Left = 0
                Top = 0
                Width = 26
                Height = 28
                AllowAllUp = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
                OnClick = ibLugarEntregaClick
              end
            end
            object pnlLugarEntrega: TPanel
              Left = 136
              Top = 76
              Width = 401
              Height = 149
              Color = 14869218
              TabOrder = 1
              Visible = False
              object Label58: TLabel
                Left = 1
                Top = 1
                Width = 399
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = 'Actualizaci'#243'n de Lugares de Entrega'
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label59: TLabel
                Left = 11
                Top = 19
                Width = 12
                Height = 15
                Caption = 'Id'
              end
              object Label60: TLabel
                Left = 11
                Top = 41
                Width = 51
                Height = 15
                Caption = 'Direcci'#243'n'
              end
              object Label61: TLabel
                Left = 11
                Top = 62
                Width = 81
                Height = 15
                Caption = 'C. Post. Comerc.'
              end
              object Label62: TLabel
                Left = 11
                Top = 83
                Width = 73
                Height = 15
                Caption = 'Zona de Venta'
              end
              object dbeIdDireccionEntrega: TwwDBEdit
                Left = 99
                Top = 19
                Width = 46
                Height = 23
                DataField = 'CLIEDIRID'
                TabOrder = 0
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbeDirecionEntrega: TwwDBEdit
                Left = 99
                Top = 40
                Width = 290
                Height = 23
                CharCase = ecUpperCase
                DataField = 'CLIEDIRENT'
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object edtZonaLE: TEdit
                Left = 178
                Top = 84
                Width = 213
                Height = 23
                Enabled = False
                TabOrder = 5
              end
              object dblcdDistritoLE: TwwDBLookupComboDlg
                Left = 99
                Top = 61
                Width = 45
                Height = 23
                GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
                GridColor = clWhite
                GridTitleAlignment = taLeftJustify
                Caption = 'Lookup'
                MaxWidth = 0
                MaxHeight = 209
                Selected.Strings = (
                  'ZIPID'#9'3'#9'Id'#9'F'
                  'ZIPDES'#9'35'#9'Distrito'#9'F')
                DataField = 'ZIPID'
                LookupTable = DMCXC.cdsDistrito
                LookupField = 'ZIPID'
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                AllowClearKey = False
                UseTFields = False
                OnExit = dblcdDistritoLEExit
              end
              object edtDistritoLE: TwwDBEdit
                Left = 143
                Top = 61
                Width = 148
                Height = 23
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 3
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object Z2bbtnOKLE: TBitBtn
                Left = 333
                Top = 109
                Width = 25
                Height = 25
                Hint = 'Pasa a Registrar Detalle'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = Z2bbtnOKLEClick
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
              object Z2bbtnCancelLE: TBitBtn
                Left = 357
                Top = 109
                Width = 26
                Height = 25
                Hint = 'Reinicia Comprobante'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                OnClick = Z2bbtnCancelLEClick
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
              object dblcZonaLE: TwwDBLookupComboDlg
                Left = 99
                Top = 85
                Width = 79
                Height = 23
                GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
                GridColor = clWhite
                GridTitleAlignment = taLeftJustify
                Caption = 'Lookup'
                MaxWidth = 0
                MaxHeight = 209
                Selected.Strings = (
                  'ZVTAID'#9'8'#9'Id'#9'F'
                  'ZVTADES'#9'25'#9'Zona'#9'F')
                DataField = 'ZVTAID'
                LookupField = 'ZVTAID'
                TabOrder = 4
                AutoDropDown = False
                ShowButton = True
                AllowClearKey = False
                OnExit = dblcZonaLEExit
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Miembros - Bienes'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 14869218
            TabOrder = 0
            object Label24: TLabel
              Left = 8
              Top = 205
              Width = 39
              Height = 13
              Caption = 'Bienes'
              Color = clNavy
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label32: TLabel
              Left = 9
              Top = 14
              Width = 138
              Height = 13
              Caption = 'Miembros de la Empresa'
              Color = clNavy
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object dbgMiembros: TwwDBGrid
              Left = 8
              Top = 35
              Width = 634
              Height = 170
              DisableThemesInTitle = False
              Selected.Strings = (
                'MIEMID'#9'2'#9'Miembro'
                'MIEMNOM'#9'40'#9'Nombre'
                'OCUPID'#9'3'#9'Ocupaci'#243'n'
                'MIEMSUELDO'#9'10'#9'Sueldo'
                'MIEMDDOMIC'#9'60'#9'Domicilio'
                'MIEMTELEF'#9'20'#9'Telefono'
                'MIEMNACIM'#9'10'#9'F.Nacimiento')
              IniAttributes.Delimiter = ';;'
              TitleColor = 7566265
              FixedCols = 0
              ShowHorzScrollBar = True
              KeyOptions = []
              TabOrder = 2
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Comic Sans MS'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnDblClick = dbgMiembrosDblClick
              OnKeyDown = dbgMiembrosKeyDown
              object wwDBGrid2IButton: TwwIButton
                Left = 0
                Top = 0
                Width = 26
                Height = 28
                AllowAllUp = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
                OnClick = wwDBGrid2IButtonClick
              end
            end
            object pnlMiembros: TPanel
              Left = 200
              Top = 8
              Width = 377
              Height = 201
              BevelInner = bvRaised
              BorderStyle = bsSingle
              Color = 14869218
              TabOrder = 1
              Visible = False
              object Label31: TLabel
                Left = 15
                Top = 5
                Width = 152
                Height = 13
                Caption = 'Actualizaci'#243'n de Miembros'
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label33: TLabel
                Left = 16
                Top = 22
                Width = 45
                Height = 15
                Caption = 'Miembro'
              end
              object Label34: TLabel
                Left = 70
                Top = 22
                Width = 40
                Height = 15
                Caption = 'Nombre'
              end
              object Label35: TLabel
                Left = 244
                Top = 65
                Width = 35
                Height = 15
                Caption = 'Sueldo'
              end
              object Label36: TLabel
                Left = 17
                Top = 64
                Width = 55
                Height = 15
                Caption = 'Ocupaci'#243'n'
              end
              object Label37: TLabel
                Left = 19
                Top = 109
                Width = 49
                Height = 15
                Caption = 'Domicilio'
              end
              object Label38: TLabel
                Left = 18
                Top = 153
                Width = 46
                Height = 15
                Caption = 'Telefono'
              end
              object Label39: TLabel
                Left = 168
                Top = 153
                Width = 59
                Height = 15
                Caption = 'Nacimiento'
              end
              object dbeMiembro: TwwDBEdit
                Left = 16
                Top = 40
                Width = 38
                Height = 23
                CharCase = ecUpperCase
                DataField = 'MIEMID'
                TabOrder = 0
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnExit = dbeMiembroExit
              end
              object dbeNombre: TwwDBEdit
                Left = 67
                Top = 39
                Width = 282
                Height = 23
                CharCase = ecUpperCase
                DataField = 'MIEMNOM'
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dblcOcupac: TwwDBLookupCombo
                Left = 17
                Top = 80
                Width = 54
                Height = 23
                CharCase = ecUpperCase
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'OCUPID'#9'3'#9'Id'#9'F'
                  'OCUPDES'#9'30'#9'Ocupaci'#243'n'#9'F')
                DataField = 'OCUPID'
                LookupField = 'OCUPID'
                Options = [loColLines, loRowLines, loTitles]
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = True
                ShowMatchText = True
                OnChange = dblcOcupacChange
                OnExit = dblcOcupacExit
              end
              object dbeOcupac: TwwDBEdit
                Left = 77
                Top = 79
                Width = 155
                Height = 23
                CharCase = ecUpperCase
                TabOrder = 3
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbeSueldo: TwwDBEdit
                Left = 243
                Top = 78
                Width = 106
                Height = 23
                CharCase = ecUpperCase
                DataField = 'MIEMSUELDO'
                TabOrder = 4
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbeDomicMiembro: TwwDBEdit
                Left = 18
                Top = 125
                Width = 335
                Height = 23
                CharCase = ecUpperCase
                DataField = 'MIEMDDOMIC'
                TabOrder = 5
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbeTelfMiembro: TwwDBEdit
                Left = 18
                Top = 167
                Width = 121
                Height = 23
                CharCase = ecUpperCase
                DataField = 'MIEMTELEF'
                TabOrder = 6
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object Z2bbtnCancel2: TBitBtn
                Left = 337
                Top = 162
                Width = 25
                Height = 25
                Hint = 'Reinicia Comprobante'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 9
                OnClick = Z2bbtnCancel2Click
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
              object Z2bbtnOK2: TBitBtn
                Left = 305
                Top = 162
                Width = 25
                Height = 25
                Hint = 'Pasa a Registrar Detalle'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                OnClick = Z2bbtnOK2Click
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
              object dtpFecNacMiembro: TwwDBDateTimePicker
                Left = 157
                Top = 167
                Width = 121
                Height = 23
                CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                CalendarAttributes.Font.Color = clWindowText
                CalendarAttributes.Font.Height = -11
                CalendarAttributes.Font.Name = 'MS Sans Serif'
                CalendarAttributes.Font.Style = []
                Epoch = 1950
                ShowButton = True
                TabOrder = 7
              end
            end
            object dbgBienes: TwwDBGrid
              Left = 7
              Top = 220
              Width = 633
              Height = 107
              DisableThemesInTitle = False
              Selected.Strings = (
                'BIENID'#9'2'#9'Bien'
                'TIPBIENID'#9'2'#9'Tipo de Bien'
                'BIENDES'#9'40'#9'Descripci'#243'n'
                'BIENVALOR'#9'10'#9'Valor Bien')
              IniAttributes.Delimiter = ';;'
              TitleColor = 7566265
              FixedCols = 0
              ShowHorzScrollBar = True
              KeyOptions = []
              TabOrder = 3
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Comic Sans MS'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnDblClick = dbgBienesDblClick
              OnKeyDown = dbgBienesKeyDown
              object wwDBGrid1IButton: TwwIButton
                Left = 0
                Top = 0
                Width = 26
                Height = 28
                AllowAllUp = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
                OnClick = wwDBGrid1IButtonClick
              end
            end
            object pnlBienes: TPanel
              Left = 200
              Top = 216
              Width = 374
              Height = 224
              BevelInner = bvRaised
              BorderStyle = bsSingle
              Color = 14869218
              TabOrder = 0
              Visible = False
              object Label40: TLabel
                Left = 16
                Top = 8
                Width = 137
                Height = 13
                Caption = 'Actualizaci'#243'n de Bienes'
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label41: TLabel
                Left = 15
                Top = 27
                Width = 23
                Height = 15
                Caption = 'Bien'
              end
              object Label42: TLabel
                Left = 96
                Top = 27
                Width = 62
                Height = 15
                Caption = 'Descripci'#243'n'
              end
              object Label43: TLabel
                Left = 15
                Top = 70
                Width = 64
                Height = 15
                Caption = 'Tipo de Bien'
              end
              object Label44: TLabel
                Left = 241
                Top = 70
                Width = 27
                Height = 15
                Caption = 'Valor'
              end
              object Label45: TLabel
                Left = 16
                Top = 113
                Width = 36
                Height = 15
                Caption = 'Detalle'
              end
              object dbeBien: TwwDBEdit
                Left = 14
                Top = 43
                Width = 75
                Height = 23
                CharCase = ecUpperCase
                DataField = 'BIENID'
                TabOrder = 0
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnExit = dbeBienExit
              end
              object dbeDescripcion: TwwDBEdit
                Left = 97
                Top = 43
                Width = 260
                Height = 23
                CharCase = ecUpperCase
                DataField = 'BIENDES'
                TabOrder = 1
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dblcTipoBien: TwwDBLookupCombo
                Left = 15
                Top = 86
                Width = 46
                Height = 23
                CharCase = ecUpperCase
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'TIPBIENID'#9'2'#9'Id'#9'F'
                  'TIPBIENDES'#9'30'#9'Tipo de Bien'#9'F')
                DataField = 'TIPBIENID'
                LookupField = 'TIPBIENID'
                Options = [loColLines, loRowLines, loTitles]
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
                PreciseEditRegion = False
                AllowClearKey = True
                ShowMatchText = True
                OnExit = dblcTipoBienExit
              end
              object dbeTipoBien: TwwDBEdit
                Left = 68
                Top = 86
                Width = 158
                Height = 23
                CharCase = ecUpperCase
                TabOrder = 3
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbeValorMiembro: TwwDBEdit
                Left = 241
                Top = 85
                Width = 116
                Height = 23
                CharCase = ecUpperCase
                DataField = 'BIENVALOR'
                TabOrder = 4
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
              object dbmDetalleBien: TDBMemo
                Left = 15
                Top = 131
                Width = 341
                Height = 75
                DataField = 'BIENDET'
                TabOrder = 5
              end
              object Z2bbtnOK3: TBitBtn
                Left = 303
                Top = 10
                Width = 25
                Height = 25
                Hint = 'Pasa a Registrar Detalle'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = Z2bbtnOK3Click
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
              object Z2bbtnCancel3: TBitBtn
                Left = 336
                Top = 10
                Width = 25
                Height = 25
                Hint = 'Reinicia Comprobante'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                OnClick = Z2bbtnCancel3Click
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
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Otros'
          ImageIndex = 6
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 706
            Height = 332
            Align = alClient
            Color = 14869218
            TabOrder = 0
            object Label69: TLabel
              Left = 16
              Top = 16
              Width = 63
              Height = 15
              Caption = 'Comentarios'
            end
            object dbeComentario: TwwDBEdit
              Left = 16
              Top = 34
              Width = 329
              Height = 161
              AutoSize = False
              MaxLength = 255
              ShowVertScrollBar = True
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = True
            end
          end
        end
      end
      object pnlCab: TPanel
        Left = 1
        Top = 1
        Width = 709
        Height = 108
        Align = alTop
        Color = 14869218
        TabOrder = 0
        object Label46: TLabel
          Left = 389
          Top = 6
          Width = 37
          Height = 15
          Caption = 'Cl.Aux.'
        end
        object Label25: TLabel
          Left = 612
          Top = 6
          Width = 74
          Height = 15
          Caption = 'Codigo Cliente'
        end
        object Label17: TLabel
          Left = 244
          Top = 6
          Width = 109
          Height = 16
          AutoSize = False
          Caption = 'Tipo de Persona'
          WordWrap = True
        end
        object Label47: TLabel
          Left = 7
          Top = 6
          Width = 49
          Height = 15
          Caption = 'Compa'#241#237'a'
        end
        object lblRuc: TLabel
          Left = 8
          Top = 51
          Width = 19
          Height = 15
          Caption = 'Ruc'
        end
        object lblRazonSocial: TLabel
          Left = 126
          Top = 50
          Width = 67
          Height = 15
          Caption = 'Razon Social'
        end
        object lblGrupo: TLabel
          Left = 584
          Top = 51
          Width = 31
          Height = 15
          Caption = 'Grupo'
        end
        object dblcClAux: TwwDBLookupCombo
          Left = 389
          Top = 23
          Width = 42
          Height = 23
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CLAUXID'#9'2'#9'Id.'#9'F'
            'CLAUXDES'#9'30'#9'Clase Auxiliar'#9'F')
          DataField = 'CLAUXID'
          LookupField = 'CLAUXID'
          Options = [loColLines, loRowLines, loTitles]
          Enabled = False
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcClAuxExit
          OnNotInList = NotInList
        end
        object dbeClAux: TwwDBEdit
          Left = 433
          Top = 23
          Width = 166
          Height = 23
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeClie: TwwDBEdit
          Left = 612
          Top = 23
          Width = 89
          Height = 23
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CLIEID'
          Enabled = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeClieExit
        end
        object dblcTipPer: TwwDBLookupCombo
          Left = 240
          Top = 23
          Width = 40
          Height = 23
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TIPPERID'#9'2'#9'Id'#9'F'
            'TIPPERDES'#9'30'#9'Tipo de Persona'#9'F')
          DataField = 'TIPPERID'
          LookupField = 'TIPPERID'
          Options = [loColLines, loRowLines, loTitles]
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnExit = dblcTipPerExit
          OnNotInList = NotInList
        end
        object dbeTipPer: TwwDBEdit
          Left = 280
          Top = 23
          Width = 105
          Height = 23
          Enabled = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dblcCia: TwwDBLookupCombo
          Left = 5
          Top = 23
          Width = 41
          Height = 23
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CIAID'#9'2'#9'Id'#9'F'
            'CIADES'#9'40'#9'Compa'#241#237'a'#9'F')
          DataField = 'CIAID'
          LookupTable = DMCXC.cdsCia
          LookupField = 'CIAID'
          Options = [loColLines, loRowLines, loTitles]
          DropDownCount = 13
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcCiaExit
          OnNotInList = NotInList
        end
        object dbeCia: TwwDBEdit
          Left = 46
          Top = 23
          Width = 191
          Height = 23
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeRuc: TwwDBEdit
          Left = 8
          Top = 65
          Width = 113
          Height = 23
          AutoFillDate = False
          AutoSelect = False
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CLIERUC'
          MaxLength = 11
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeRucExit
        end
        object dbeRazSoc: TwwDBEdit
          Left = 125
          Top = 66
          Width = 448
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CLIEDES'
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeRazSocExit
        end
        object dblcdGrupo: TwwDBLookupComboDlg
          Left = 576
          Top = 66
          Width = 121
          Height = 23
          AutoSize = False
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'GRUPOID'#9'15'#9'Grupo'#9'F'
            'CLIEDES'#9'40'#9'Nombres'#9'F'
            'CLIEID'#9'15'#9'C'#243'digo'#9'F')
          DataField = 'GRUPOID'
          LookupField = 'GRUPOID'
          AutoSelect = False
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
      end
      object pnlPie: TPanel
        Left = 1
        Top = 471
        Width = 709
        Height = 41
        Align = alBottom
        Color = 14869218
        TabOrder = 1
        object Z2bbtnOK: TBitBtn
          Left = 600
          Top = 7
          Width = 32
          Height = 31
          Hint = 'Pasa a Registrar Detalle'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Z2bbtnOKClick
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
          Left = 634
          Top = 7
          Width = 32
          Height = 31
          Hint = 'Reinicia Comprobante'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
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
        object Z2bbtnNuevo: TBitBtn
          Left = 668
          Top = 7
          Width = 32
          Height = 31
          Hint = 'Nuevo Registro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Garamond'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Z2bbtnNuevoClick
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
    end
  end
end
