Unit CxC203;

//

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB, wwSpeedButton, ppviewr,
   wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
   ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
   ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod,
   ppEndUsr, ppMemo, wwdatsrc, ppTypes, oaVariables, ppParameter;

Type
   TFLetras = Class(TForm)
      pnlPie: TPanel;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnContab: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnRegresa: TBitBtn;
      bbtnCancela: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Label8: TLabel;
      pnlCabecera: TPanel;
      pnlCab2: TPanel;
      lblTDoc: TLabel;
      lblFCanje: TLabel;
      lblFRecep: TLabel;
      lblTMon: TLabel;
      lblTCambio: TLabel;
      lblCnpEgr: TLabel;
      Label13: TLabel;
      lblGlosa: TLabel;
      dblcTDoc: TwwDBLookupCombo;
      edtTDoc: TEdit;
      dtpFEmis: TwwDBDateTimePicker;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      dbeTCLet: TwwDBEdit;
      dblcdCnpEgr: TwwDBLookupComboDlg;
      dbeCuenta: TwwDBEdit;
      dbeGlosa: TwwDBEdit;
      pnlCab1: TPanel;
      Label1: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label2: TLabel;
      edtCanje: TwwDBEdit;
      dblcdClie: TwwDBLookupComboDlg;
      Label3: TLabel;
      Label4: TLabel;
      dblcdClieRuc: TwwDBLookupComboDlg;
      edtClie: TEdit;
      pnlEstado: TPanel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      lblContab: TLabel;
      lblAcepta: TLabel;
      Label9: TLabel;
      bbtnCalc: TBitBtn;
      bbtnSumat: TBitBtn;
      pnlDetalle: TPanel;
      pc1: TPageControl;
      ts1: TTabSheet;
      ts2: TTabSheet;
      pnlLetras: TPanel;
      Label14: TLabel;
      dbgLetras: TwwDBGrid;
      btnActReg: TwwIButton;
      pnlRegistro: TPanel;
      Label11: TLabel;
      lblTipReg: TLabel;
      Label12: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      dbeNoReg: TwwDBEdit;
      dbeLetra: TwwDBEdit;
      dtpFVcmto: TwwDBDateTimePicker;
      dbeTotal: TwwDBEdit;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      dbeMon: TwwDBEdit;
      dtpFValor: TwwDBDateTimePicker;
      edtFinal: TEdit;
      pnlDatos: TPanel;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      dbeLetIni: TwwDBEdit;
      bbtnDatos: TBitBtn;
      edtToTal1: TEdit;
      edtTotal: TEdit;
      bbtnCreaL: TBitBtn;
      pnlDatos2: TPanel;
      Label21: TLabel;
      dbePInt: TwwDBEdit;
      Z2bbtnGenera: TBitBtn;
      rgTiempo: TRadioGroup;
      dbeDias: TwwDBEdit;
      dbeNLet: TwwDBEdit;
      dblcdAval: TwwDBLookupComboDlg;
      Label22: TLabel;
      Label25: TLabel;
      dbeInte: TwwDBEdit;
      Label27: TLabel;
      wwDBEdit1: TwwDBEdit;
      Label20: TLabel;
      dbeGAdm: TwwDBEdit;
      Label23: TLabel;
      dbeGFin: TwwDBEdit;
      Label24: TLabel;
      dbeMora: TwwDBEdit;
      Label26: TLabel;
      dbeOtro: TwwDBEdit;
      Bevel1: TBevel;
      Label28: TLabel;
      wwDBEdit3: TwwDBEdit;
      bbtnCalcula: TBitBtn;
      pnlNDebito: TPanel;
      lblSerie: TLabel;
      dblcSerie: TwwDBLookupCombo;
      dbeNoDoc: TwwDBEdit;
      lblNoDoc: TLabel;
      bbtnNDebito: TBitBtn;
      bbtnCancND: TBitBtn;
      dblcNDDoc: TwwDBLookupCombo;
      Label29: TLabel;
      Label30: TLabel;
      dblcClAux: TwwDBLookupCombo;
      bbtnBorra: TBitBtn;
      bbtnOk: TBitBtn;
      dbeImp: TwwDBEdit;
      dbeGas: TwwDBEdit;
      dbeIGV: TwwDBEdit;
      Label10: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label33: TLabel;
      dbeInt: TwwDBEdit;
      pnlConta: TPanel;
      Label34: TLabel;
      dbeComp: TwwDBEdit;
      bbtnCont: TBitBtn;
      bbtnCanc2: TBitBtn;
      Label35: TLabel;
      ppdbpCanje: TppDBPipeline;
      pprCanje: TppReport;
      ppdbpDCanje: TppDBPipeline;
      ppdbpLetras: TppDBPipeline;
      pprLetras: TppReport;
      bbtnImpLet: TBitBtn;
      pnlSIT: TPanel;
      edtTDiario: TEdit;
      Label7: TLabel;
      dtpFComp: TwwDBDateTimePicker;
      Label36: TLabel;
      dbeGirado: TwwDBEdit;
      ppDesigner1: TppDesigner;
      ts3: TTabSheet;
      Panel1: TPanel;
      dbgDetCxC2: TwwDBGrid;
      btnActReg1: TwwIButton;
      pnlRegistro1: TPanel;
      Label37: TLabel;
      Label38: TLabel;
      lblDH: TLabel;
      lblImporte: TLabel;
      Label39: TLabel;
      lblCuenta: TLabel;
      lblCCosto: TLabel;
      lblTipPre: TLabel;
      lblPresu: TLabel;
      dblcTipReg: TwwDBLookupCombo;
      dblcdCpto: TwwDBLookupComboDlg;
      edtTipReg: TEdit;
      dbeImporte: TwwDBEdit;
      dbeDH: TwwDBEdit;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      wwDBEdit2: TwwDBEdit;
      wwDBEdit4: TwwDBEdit;
      StaticText1: TStaticText;
      dblcdCCosto: TwwDBLookupComboDlg;
      edtCCosto: TEdit;
      dblcTipPre: TwwDBLookupCombo;
      dbeTipPre: TwwDBEdit;
      dblcdPresup: TwwDBLookupComboDlg;
      edtPresup: TEdit;
      pprpND: TppReport;
      ppdbDetNDebito: TppDBPipeline;
      Z2bbtnElimina: TBitBtn;
      dblcdConceptoND: TwwDBLookupComboDlg;
      Label40: TLabel;
      bbtnImpND: TBitBtn;
      Z2bbtnImpCanje: TBitBtn;
      ppDetailBand4: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText17: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText23: TppDBText;
      ppDBText2: TppDBText;
      ppDBText11: TppDBText;
      ppDBText24: TppDBText;
      ppLabel13: TppLabel;
      ppDBText22: TppDBText;
      ppDBMemo1: TppDBMemo;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      pnlLetra: TPanel;
      rgTipo: TRadioGroup;
      bbtnGenerar: TBitBtn;
      dblcCond: TwwDBLookupCombo;
      bbtnClose: TButton;
      dbgPendientes: TwwDBGrid;
      Label5: TLabel;
      dbgDocCanje: TwwDBGrid;
      Label6: TLabel;
      Z2bbtnPreview: TBitBtn;
      ppdbpPreview: TppDBPipeline;
      ppField226: TppField;
      ppField227: TppField;
      ppField228: TppField;
      ppField229: TppField;
      ppField230: TppField;
      ppField231: TppField;
      ppField232: TppField;
      ppField233: TppField;
      ppField234: TppField;
      ppField235: TppField;
      ppField236: TppField;
      ppField237: TppField;
      ppField238: TppField;
      ppField239: TppField;
      ppField240: TppField;
      ppField241: TppField;
      ppField242: TppField;
      ppField243: TppField;
      ppField244: TppField;
      ppField245: TppField;
      ppField246: TppField;
      ppField247: TppField;
      ppField248: TppField;
      ppField249: TppField;
      ppField250: TppField;
      ppField251: TppField;
      ppField252: TppField;
      ppField253: TppField;
      ppField254: TppField;
      ppField255: TppField;
      ppField256: TppField;
      ppField257: TppField;
      ppField258: TppField;
      ppField259: TppField;
      ppField260: TppField;
      ppField261: TppField;
      ppField262: TppField;
      ppField263: TppField;
      ppField264: TppField;
      ppField265: TppField;
      ppField266: TppField;
      ppField267: TppField;
      ppField268: TppField;
      ppField269: TppField;
      ppField270: TppField;
      ppField271: TppField;
      ppField272: TppField;
      ppField273: TppField;
      ppField274: TppField;
      ppField275: TppField;
      ppField276: TppField;
      ppField277: TppField;
      ppField278: TppField;
      ppField279: TppField;
      ppField280: TppField;
      ppField281: TppField;
      ppField282: TppField;
      ppField283: TppField;
      ppField284: TppField;
      pprPreview: TppReport;
      ppHeaderBand5: TppHeaderBand;
      lblVCiaDes: TppLabel;
      ppsV4: TppSystemVariable;
      lblV30: TppLabel;
      ppsV5: TppSystemVariable;
      lblV1: TppLabel;
      lblV2: TppLabel;
      lblV25: TppLabel;
      lblV26: TppLabel;
      lblVTD: TppLabel;
      lblVDiario: TppLabel;
      lblVPeriodo: TppLabel;
      lblVNoCompro: TppLabel;
      lblV27: TppLabel;
      lblVProveedor: TppLabel;
      lblV28: TppLabel;
      lblVmoneda: TppLabel;
      lblV29: TppLabel;
      lblVTipoCamb: TppLabel;
      lblV31: TppLabel;
      lblVGlosa: TppLabel;
      lblV32: TppLabel;
      lblV33: TppLabel;
      lblV34: TppLabel;
      lblV3: TppLabel;
      lblV4: TppLabel;
      lblV5: TppLabel;
      lblV6: TppLabel;
      lblV7: TppLabel;
      lblV8: TppLabel;
      lblV9: TppLabel;
      lblV10: TppLabel;
      lblVauxiliar: TppLabel;
      ppDBVText30: TppDBText;
      lblV11: TppLabel;
      ppDBVText31: TppDBText;
      lblV12: TppLabel;
      lblVMesDia: TppLabel;
      ppDBVText32: TppDBText;
      lblV13: TppLabel;
      lblVEstado: TppLabel;
      lblV14: TppLabel;
      lblV47: TppLabel;
      lblV48: TppLabel;
      lblV49: TppLabel;
      lblV50: TppLabel;
      lblB15: TppLabel;
      lblV16: TppLabel;
      lblV17: TppLabel;
      ppDetailBand6: TppDetailBand;
      ppDBVText33: TppDBText;
      ppDBVText34: TppDBText;
      ppDBVText35: TppDBText;
      ppDBVText36: TppDBText;
      ppDBVText4: TppDBText;
      ppVtDesc: TppDBText;
      ppDBVText5: TppDBText;
      ppDBVText6: TppDBText;
      ppDBVText8: TppDBText;
      ppDBVText9: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppDBVCalc6: TppDBCalc;
      ppDBVCalc7: TppDBCalc;
      lblV18: TppLabel;
      BitBtn3: TBitBtn;
      ppHeaderBand1: TppHeaderBand;
      pplCia: TppLabel;
      pptCliente: TppDBText;
      pplTitulo: TppLabel;
      ppLine1: TppLine;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppDBText7: TppDBText;
      ppLabel7: TppLabel;
      pplClie: TppLabel;
      ppLabel1: TppLabel;
      ppDBText6: TppDBText;
      ppLabel2: TppLabel;
      pplMon: TppLabel;
      ppLabel8: TppLabel;
      ppDBText8: TppDBText;
      ppLabel9: TppLabel;
      ppDBText9: TppDBText;
      ppLine2: TppLine;
      ppLabel20: TppLabel;
      ppLabel17: TppLabel;
      ppDBText30: TppDBText;
      ppDetailBand1: TppDetailBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppLine3: TppLine;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText10: TppDBText;
      ppDBText12: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppVariable1: TppVariable;
      ppVariable2: TppVariable;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppLine6: TppLine;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppDetailBand3: TppDetailBand;
      ppDBText3: TppDBText;
      ppDBText5: TppDBText;
      ppDBText16: TppDBText;
      ppDBText4: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc3: TppDBCalc;
      ppLine4: TppLine;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppFooterBand1: TppFooterBand;
      ppLabel3: TppLabel;
      ppLabel18: TppLabel;
      ppLine5: TppLine;
      ppLabel19: TppLabel;
      ppLabel21: TppLabel;
      ppTitleBand2: TppTitleBand;
      Label41: TLabel;
      dblcTDiario: TwwDBLookupCombo;
      edtdiario: TEdit;
      lblTDiario: TLabel;
      dblcTDiario1: TwwDBLookupCombo;
      ppParameterList1: TppParameterList;
      ppHeaderBand4: TppHeaderBand;
      pplblNDano: TppLabel;
      ppDBText33: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppDetailBand5: TppDetailBand;
      ppdbtCCGLOSA: TppDBText;
      ppDBText34: TppDBText;
      ppFooterBand4: TppFooterBand;
      pplblNDLetras: TppLabel;
      ppDBCalc6: TppDBCalc;
      pplblIgv: TppLabel;
      pplblTotal: TppLabel;
      pplblNDSEUO: TppLabel;
      pplblIgvDes1: TppLabel;
      pplblNDSIM: TppLabel;
      pplblNDSIM1: TppLabel;
      ppDBText31: TppDBText;
      pplblNDDIR: TppLabel;
      pplblFecha: TppLabel;
      ppdbCabNDebito: TppDBPipeline;
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure edtCanjeExit(Sender: TObject);
      Procedure bbtnBasuraDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnSumatClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure dblcdCnpEgrExit(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure dtpFEmisExit(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure dbgLetrasMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure dbeTCLetExit(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure tnbDetalleChange(Sender: TObject; NewTab: Integer;
         Var AllowChange: Boolean);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcTDiario1Exit(Sender: TObject);
      Procedure btnActRegClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbgLetrasDblClick(Sender: TObject);
      Procedure dbgLetrasKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure bbtnRegresaEnter(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDocCanjeColExit2(Sender: TObject);
      Procedure dbgDocCanjeDragOver2(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgDocCanjeKeyPress2(Sender: TObject; Var Key: Char);
      Procedure dbgDocCanjeMouseDown2(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure dbgPendientesDragOver2(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgPendientesEndDrag2(Sender, Target: TObject; X,
         Y: Integer);
      Procedure dbgPendientesMouseDown2(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure ts2Enter(Sender: TObject);
      Procedure bbtnDatosClick(Sender: TObject);
      Procedure bbtnCreaLClick(Sender: TObject);
      Procedure pc1Change(Sender: TObject);
      Procedure bbtnCalculaClick(Sender: TObject);
      Procedure dbePIntExit(Sender: TObject);
      Procedure Z2bbtnGeneraClick(Sender: TObject);
      Procedure bbtnNDebitoClick(Sender: TObject);
      Procedure dblcNDDocExit(Sender: TObject);
      Procedure bbtnCancNDClick(Sender: TObject);
      Procedure pnlDatosEnter(Sender: TObject);
      Procedure dbeDiasExit(Sender: TObject);
      Procedure dbeNLetExit(Sender: TObject);
      Procedure dbeLetraExit(Sender: TObject);
      Procedure dbeImpExit(Sender: TObject);
      Procedure dbeGasExit(Sender: TObject);
      Procedure dbeIGVExit(Sender: TObject);
      Procedure dbeIntExit(Sender: TObject);
      Procedure bbtnContClick(Sender: TObject);
      Procedure bbtnCanc2Click(Sender: TObject);
      Procedure ppHeaderBand1BeforePrint(Sender: TObject);
      Procedure ppVariable1Calc(Sender: TObject; Var Value: Variant);
      Procedure ppVariable2Calc(Sender: TObject; Var Value: Variant);
      Procedure bbtnImpLetClick(Sender: TObject);
      Procedure pprLetrasPrintingComplete(Sender: TObject);
      Procedure dtpFVcmtoExit(Sender: TObject);
      Procedure Z2bbtnImpCanjeClick(Sender: TObject);
      Procedure dblcdClieEnter(Sender: TObject);
      Procedure dblcdClieRucEnter(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure dtpFValorExit(Sender: TObject);
      Procedure pprCanjePreviewFormCreate(Sender: TObject);
      Procedure ppDetailBand3BeforePrint(Sender: TObject);
      Procedure dbgDetCxC2DblClick(Sender: TObject);
      Procedure dbgDetCxC2KeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure btnActReg1Click(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure dblcTipRegExit(Sender: TObject);
      Procedure dblcdCptoExit(Sender: TObject);
      Procedure wwDBEdit4Exit(Sender: TObject);
      Procedure dblcdCCostoExit(Sender: TObject);
      Procedure dblcTipPreExit(Sender: TObject);
      Procedure dblcdPresupExit(Sender: TObject);
      Procedure dbeDHExit(Sender: TObject);
      Procedure bbtnImpNDClick(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dbgDocCanjeColEnter(Sender: TObject);
      Procedure dblcSerieExit(Sender: TObject);
      Procedure Z2bbtnEliminaClick(Sender: TObject);
      Procedure rgTipoClick(Sender: TObject);
      Procedure bbtnCloseClick(Sender: TObject);
      Procedure bbtnGenerarClick(Sender: TObject);
      Procedure Z2bbtnPreviewClick(Sender: TObject);
      Procedure BitBtn3Click(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure ppDetailBand4BeforePrint(Sender: TObject);
      Procedure FormShow(Sender: TObject);

   Private
      Procedure GrabaDetCanje;
      Procedure GrabaDetCanje1;
      Procedure InsertaRegistrosdeAbonos;
      Procedure InsertaRegistroDeTotal;
      Procedure CargaDataSource;

    { Private declarations }
   Public
    { Public declarations }
      Procedure InicializaPies;
      Procedure ModificaMontos;
      Procedure FiltraCanje(xModo: String);
      Procedure DetCxCUsuario;
      Procedure DetCxC2Usuario;
      Procedure InicializaDatos;
      Procedure InicializaClientDataSet;
      Procedure GrabaRegCxP305;
      Procedure ActualizaSaldosMovCxP;
      Procedure ActualizaPagadoMovCxP;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure GrabaContabilidadDocumentos;
      Procedure GrabaContabilidadLetra;
      Procedure GeneraDiferenciaCambio;
      Procedure GrabaDiferenciaCambio;
      Procedure DetalleLetra;
      Procedure GeneraDetalle;
      Procedure RegistroDetalle(xTipDet, xTipCar: String; xMonto: Double);
      Procedure EstadoNDebito(xxEstado: String);
      Procedure InsertaCanjes(xxCds: TwwClientDataSet);
      Function VerificaTotal: Boolean;
      Function GeneraAsientoCanje: Boolean;
      Function ValidaCabecera: Boolean;
      Function ExisteMovCxC(xxCia, xxClieid, xxDocid, xxCCSerie, xxCCNoDoc: String): Boolean;
      Function ExisteLetras(xxCia, xxTCanje, xxCanje: String): Boolean;
      Function VerificaDocumentosPendientes: Boolean;
      Function NGeneraAsiento: Boolean;
      Procedure NDetalleContable;
      Procedure NGeneraDiferenciaCambio;
      Procedure NGrabaDiferenciaCambio;
      Procedure NContabilidadCanje;
      Procedure InsertaLetra;
      Procedure MuestraSituacion;
    ///**CIM 23/05/2001
      Function PerteneceCondicionPago(xxCond: String): boolean;
      Procedure VerificaAsiento;
      Procedure TotalesNDebito;
      Procedure RevisaDetalleContable;
      Function IsNumeric(S: String): Boolean;
      Procedure GeneraAsientoCxC302;
      Procedure GeneraDiferenciaCambioCxC302(xReg, xTipDet: String; xxTotal: boolean);
   End;

Var
   FLetras: TFLetras;
   xNDTDiario: String;
   xSQL: String;
   xTAutoNum, xTAno, xTMes: String;
   xCtaDif, xGloDif, xCptoDif: String;
   xGlosa, xLote, xCuenta, xConcepto, xDH: String;
   xDifCam, xPagAnt, xDifCLoc, xDifCExt: Double;
   xTotLoc, xTotExt: Double;
   xxTCambio: Double;
   xCrea: Boolean;
   xFlagGr: Boolean;
   xModoL: String;
   xFlagP: Boolean;
   xTo, xMG, xI1, xMN: real;
//  22/05/2001  CIM
   wCondicion: boolean;
   wFlagCond: String;
   wTDoc: String; //31/07
   sDocIdNC: String;
   xSector: String;
   xZona: String;
   iNumLetOri: integer;
   xVeID, xVeIdMaes: String;
   sCptoND: String;
   dDebe, dHabe: double;
Implementation

//Uses CxCDM, CxC001;
Uses CxCDM, oaCC2000;

{$R *.DFM}

Procedure TFLetras.dblcdClieExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If length(dblcdClie.Text) > 0 Then
   Begin
      edtClie.Text := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', 'CLAUXID=' + QuotedStr(dblcClAux.Text) + ' AND CLIEID=' + QuotedStr(dblcdClie.Text), 'CLIEDES');
   //** 27/02/2001 - pjsv - solo para el JCP, por recomendacion de JCC
      If dblcClAux.text = 'SO' Then
         dbeGirado.Text := edtClie.Text + ' Socio No. ' + dblcdClie.Text
      Else
         dbeGirado.Text := edtClie.Text;
   //**
      If length(edtClie.Text) = 0 Then
      Begin
         ShowMessage('Cliente no existe');
         dblcdClie.Text := '';
         dblcdClieRuc.Text := '';
         dblcdClie.SetFocus;
         exit;
      End;
   //dblcClAux.Text   :=DMCXC.cdsQry.FieldByName('CLAUXID').AsString;

      xSector := DMCXC.cdsQry.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsQry.FieldByName('ZONVTAID').AsString;
      xVeidMaes := DMCXC.cdsQry.FieldByName('VEID').AsString;

      DMCXC.cdsCCanje.Edit;
      DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
      DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString := DMCXC.cdsQry.FieldByName('CLAUXID').AsString;
      DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'T';
      DMCXC.cdsPost(DMCXC.cdsCCanje);
      DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
      DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

      EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   End
   Else
   Begin
      edtClie.Text := '';
   End;
End;

Procedure TFLetras.MuestraSituacion;
Var
   xWhere: String;
Begin
   xWhere := 'SITUAID=''' + DMCXC.cdsLetras.FieldByName('SITID').AsString + '''';
   pnlSit.Caption := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUADES');
End;

Procedure TFLetras.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   dblcCia.Enabled := False;
   dblcClAux.Enabled := False;
   dblcdClie.Enabled := False;
   dblcdClieRuc.Enabled := False;
   edtCanje.Enabled := False;
   dblcTDoc.Enabled := False;
   dblcTDiario.Enabled := False;
   dtpFComp.Enabled := False;
   pnlCab1.Enabled := False;
   pnlCab2.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgPendientes.Enabled := False;
   dbgDocCanje.Enabled := False;
   dbgLetras.Enabled := False;
   dbgPendientes.ReadOnly := True;
   dbgDocCanje.ReadOnly := True;
   dbgLetras.ReadOnly := True;
   btnActReg.Enabled := False;
   btnActReg1.Enabled := False;

   pnlPie.Refresh;
   pnlPie.Enabled := False;
   bbtnRegresa.Enabled := False;
   bbtnCancela.Enabled := False;
   Z2bbtnGraba.Enabled := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnElimina.Enabled := False;
   Z2bbtnAnula.Enabled := False;
   Z2bbtnImprime.Enabled := False;
   Z2bbtnContab.Enabled := False;
   Z2bbtnPreview.Enabled := False;
   Z2bbtnNuevo.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;
   EstadoNDebito('S');

   If xxModo = 0 Then
   Begin
      If xMovEstado = ' ' Then
      Begin
         pnlCab1.Enabled := True;
         dblcCia.Enabled := True;
         edtCanje.Enabled := True;
         dblcClAux.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         dblcCia.SetFocus;
      End;
      If xMovEstado = 'X' Then
      Begin
         edtCanje.Enabled := True;
         pnlCab1.Enabled := True;
         dblcClAux.Enabled := True;
         dblcdClie.Enabled := True;
         dblcdClieRuc.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcClAux.SetFocus;
      End;
      If xMovEstado = 'T' Then
      Begin
         pnlCab2.Enabled := True;
         dblcTDoc.Enabled := True;
         dblcTDiario.Enabled := True;
         dtpFComp.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := False;
         dblcTDoc.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
         pnlCab2.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := True;
         dtpFEmis.SetFocus;
      End;
   End
   Else
   Begin
      If xMovConta = 'S' Then
      Begin
         pnlDetalle.Enabled := True;
         dbgDocCanje.Enabled := True;
         dbgLetras.Enabled := True;
         Z2bbtnPreview.Enabled := True;
         pnlPie.Enabled := True;
         lblContab.Visible := True;
      End
      Else
      Begin
         If xMovEstado = 'T' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgLetras.ReadOnly := False;
            btnActReg.Enabled := True;
            btnActReg1.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            lblActivo.Visible := True;
            EstadoNDebito(DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString);
         End;
         If xMovEstado = 'I' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgLetras.ReadOnly := False;
            btnActReg.Enabled := True;
            btnActReg1.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnElimina.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            lblActivo.Visible := True;
            EstadoNDebito(DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString);
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnContab.Enabled := True;
            Z2bbtnPreview.Enabled := True;
            Z2bbtnElimina.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;

            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;

            pnlPie.Enabled := True;

            lblAnula.Visible := True;
         End;
      End;
   End;

   If DMCXC.wModo = 'A' Then
   Begin
      Z2bbtnNuevo.Enabled := True;
   End;

   If DMCXC.wModo = 'C' Then
   Begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled := False;
      pnlCab2.Enabled := False;

      bbtnOK.Enabled := False;
      bbtnBorra.Enabled := False;

      dbgPendientes.Enabled := False;
      dbgDocCanje.Enabled := False;
      dbgLetras.Enabled := False;
      dbgPendientes.ReadOnly := True;
      dbgDocCanje.ReadOnly := True;
      dbgLetras.ReadOnly := True;
      btnActReg.Enabled := False;
      btnActReg1.Enabled := False;
      pnlDatos.Enabled := False;
      pnlDatos2.Enabled := False;

      pnlPie.Refresh;
      pnlPie.Enabled := False;
      bbtnRegresa.Enabled := False;
      bbtnCancela.Enabled := False;
      Z2bbtnGraba.Enabled := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnElimina.Enabled := False;
      Z2bbtnAnula.Enabled := False;
      Z2bbtnImprime.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnPreview.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
   MuestraSituacion;
End;

Procedure TFLetras.EstadoNDebito(xxEstado: String);
Begin
   If (xxEstado = 'N') Or (Length(xxEstado) = 0) Then
   Begin
      pnlDatos.Enabled := True;
      pnlDatos2.Enabled := True;
      dbeGAdm.Enabled := True;
      dbeGFin.Enabled := True;
      dbeMora.Enabled := True;
      dbeOtro.Enabled := True;
      dbePInt.Enabled := True;
      rgTiempo.Enabled := True;
      bbtnCalcula.Enabled := True;
      bbtnNDebito.Enabled := True;
      dblcNDDoc.Enabled := True;
      dblcSerie.Enabled := True;
      dbeNoDoc.Enabled := True;
   End;
   If xxEstado = 'S' Then
   Begin
      pnlDatos.Enabled := False;
      pnlDatos2.Enabled := False;
      dbeGAdm.Enabled := False;
      dbeGFin.Enabled := False;
      dbeMora.Enabled := False;
      dbeOtro.Enabled := False;
      dbePInt.Enabled := False;
      rgTiempo.Enabled := False;
      bbtnCalcula.Enabled := False;
      bbtnNDebito.Enabled := False;
      dblcNDDoc.Enabled := False;
      dblcSerie.Enabled := False;
      dbeNoDoc.Enabled := False;
      btnActReg.Enabled := False;
      btnActReg1.Enabled := False;
   End;
End;

Procedure TFLetras.InicializaPies;
Begin
   dbgDocCanje.ColumnByName('CPNoDoc').FooterValue := 'Totales';
   dbgDocCanje.ColumnByName('CPSalLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CPSalExt').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoExt').FooterValue := '';

   dbgLetras.ColumnByName('CPNoDoc').FooterValue := 'Totales';
//   dbgLetras.ColumnByName('lkTMonID').FooterValue:=DMCXC.cdsLetraslkTMon.Value;
   dbgLetras.ColumnByName('CPMtoOri').FooterValue := '';
   dbgLetras.ColumnByName('CPMtoLoc').FooterValue := '';
   dbgLetras.ColumnByName('CPMtoExt').FooterValue := '';
End;

Procedure TFLetras.InicializaDatos;
Begin
   xFlagGr := false;
   dtpFValor.Date := DMCXC.DateS;
   dtpFEmis.Date := DMCXC.DateS;
   dtpFComp.Date := DMCXC.DateS;
   dblcdClieRuc.Text := '';
   dblcdClie.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCLet.Text := '';
   dbeCuenta.Text := '';
   dbeGlosa.Text := '';
   edtClie.Text := '';
   dblcCia.Text := '';
   edtCia.Text := '';
   edtCanje.Text := '';
   dblcTDoc.Text := '';
   edtTDoc.Text := '';
   dblcTDiario.Text := '';
   edtdiario.Text := '';
   dbeGirado.Text := ''; // CIM
End;

Procedure TFLetras.InicializaClientDataSet;
Begin
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where CIAID='''' ');
   Filtracds(DMCXC.cdsMovCxC2, 'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where CIAID='''' ');
   Filtracds(DMCXC.cdsMovCxC2Clone, 'Select CXC301.* from CXC301 Where CIAID='''' ');
   Filtracds(DMCXC.cdsDetCanje, 'Select * from CXC305 Where CIAID='''' ');
   Filtracds(DMCXC.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where CIAID='''' ');
   Filtracds(DMCXC.cdsCanjesClone, 'Select CXC304.* from CXC304 Where CIAID='''' ');

   Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 Where CIAID='''' ');
   Filtracds(DMCXC.cdsMovCxC, 'Select * from CXC301 Where CIAID='''' ');
   Filtracds(DMCXC.cdsDoc, 'Select * from TGE110 Where DOCMOD=''CXC''');
End;

Procedure TFLetras.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   // Cancela todas las modificaciones en los cds.

   DMCXC.cdsLetras.CancelUpdates;
   DMCXC.cdsDetCxC.CancelUpdates;
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;
   DMCXC.cdsDetCanje.CancelUpdates;

   If (DMCXC.wModo = 'A') And (xFlagGr) Then
   Begin
      DMCXC.cdsCCanje.Delete;
      DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
      DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');
      DMCXC.cdsLetras.First;
      While Not DMCXC.cdsLetras.Eof Do
      Begin
         DMCXC.cdsLetras.Delete;
      End;
      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

//CLG: 04/02/2002
// BORRA LOS REGISTROS DEL ASIENTO DE LA NOTA DE CREDITO
      DMCXC.cdsDetCxC2.EmptyDataSet;
      DMCXC.cdsDetCxC2.DataRequest('Select * from CXC302');
      DMCXC.AplicaDatos(DMCXC.cdsDetCxC2, 'DetCxC2');

   End
   Else
   Begin
      DMCXC.cdsCCanje.CancelUpdates;
   End;
   // Eliminar Filtros
   DMCXC.cdsDetCxC.Filtered := False;
   DMCXC.cdsTDoc.Filtered := False;
   DMCXC.cdsCanjes.Filtered := False;
   DMCXC.cdsLetras.Filtered := False;
   DMCXC.cdsTMon.Filtered := False;
   DMCXC.cdsMovCxC2.IndexFieldNames := '';
   DMCXC.cdsMovCxC2.IndexFieldNames := '';
   DMCXC.cdsCanjes.IndexFieldNames := '';
   dblcdConceptoND.LookupTable := Nil;
   dblcdConceptoND.LookupField := '';
   DMCXC.cdsDoc.Filter := '';
   DMCXC.cdsDoc.Filtered := False;
   DMCXC.cdsQry12.Filter := '';
   DMCXC.cdsQry12.Filtered := False;
   dblcCond.LookupTable := Nil;
   dblcCond.LookupField := '';

   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := caFree;
End;

Procedure TFLetras.FiltraCanje(xModo: String);
Var
   sSQL: String;
Begin
   Filtracds(DMCXC.cdsMovCxC2, 'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');

   DMCXC.cdsMovCxC2.DisableControls;

   DMCXC.cdsDoc.IndexFieldNames := 'DOCID;DOCMOD';
   DMCXC.cdsMovCxC2.Filter := '';
   DMCXC.cdsMovCxC2.Filtered := False;

   DMCXC.cdsMovCxC2.First;
   DMCXC.cdsDoc.Filtered := False;
   While Not DMCXC.cdsMovCxC2.EOF Do
   Begin
      DMCXC.cdsDoc.Setkey;
      DMCXC.cdsDoc.FieldByName('DOCID').AsString := DMCXC.cdsMovCxc2.FieldByName('DOCID').AsString;
      DMCXC.cdsDoc.FieldByName('DOCMOD').AsString := DMCXC.wModulo;

      DMCXC.cdsMovCxC2.Edit;
      If DMCXC.cdsDoc.Gotokey Then
         DMCXC.cdsMovCxc2.FieldByName('DOCABR').AsString := DMCXC.cdsDoc.FieldByName('DOCABR').AsString
      Else
         DMCXC.cdsMovCxc2.FieldByName('DOCABR').AsString := 'N.A.';
      DMCXC.cdsMovCxC2.Post;
      DMCXC.cdsMovCxC2.Next;
   End;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2.Filter := '';
   DMCXC.cdsMovCxC2.Filter := 'FlagVar<>' + '''' + 'XX' + '''' + ' AND UBIID=' + QuotedStr(DMCXC.wsOfi) + ' and (CCSALLOC>0 or TCANJEID=''NC'')and '
      + 'CCCANJE<>' + '''' + edtCanje.Text + '''';

   DMCXC.cdsMovCxC2.Filtered := True;

   DMCXC.cdsMovCxC2.EnableControls;

   Filtracds(DMCXC.cdsMovCxC2Clone, 'Select CXC301.* from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');

   DMCXC.cdsMovCxC2Clone.Filtered := False;
   DMCXC.cdsMovCxC2Clone.Filter := '';
   DMCXC.cdsMovCxC2Clone.Filter := 'FlagVar<>' + '''' + 'XX' + '''' + ' AND UBIID=' + QuotedStr(DMCXC.wsOfi) + ' and (CCSALLOC>0 or TCANJEID=''NC'')and '
      + 'CCCANJE<>' + '''' + edtCanje.Text + '''';

   DMCXC.cdsMovCxC2Clone.Filtered := True;

   Filtracds(DMCXC.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   Filtracds(DMCXC.cdsCanjesClone, 'Select CXC304.* from CXC304 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   DMCXC.cdsCanjes.DisableControls;

   DMCXC.cdsTDoc.IndexFieldNames := 'DOCID;DOCMOD';

   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.EOF Do
   Begin
      DMCXC.cdsDoc.Setkey;
      DMCXC.cdsDoc.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsDoc.FieldByName('DOCMOD').AsString := 'CXC';
      DMCXC.cdsCanjes.Edit;
      If DMCXC.cdsDoc.Gotokey Then
         DMCXC.cdsCanjes.FieldByName('DOCABR').AsString := DMCXC.cdsTDoc.FieldByName('DOCABR').AsString
      Else
         DMCXC.cdsCanjes.FieldByName('DOCABR').AsString := 'N.A.';
      DMCXC.cdsCanjes.Post;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;

   Filtracds(DMCXC.cdsDetCanje, 'Select * from CXC305 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CLIEID=' + QuotedStr(dblcdClie.text) + ' AND '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, ' +
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, ' +
         ' Z1.TVTADES FROM CXC301 L ' +
         ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID ' +
         ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID ' +
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID ' +
         ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID ' +
         ' WHERE L.CIAID=' + QuotedStr(dblcCia.Text) +
         ' and L.TCANJEID=' + QuotedStr('LC') +
         ' and L.CCCANJE=' + QuotedStr(edtCanje.text);
   End;
   If DMCXC.SRV_D = 'ORACLE' Then
   Begin
      sSQL := ' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, ' +
         ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, ' +
         ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, ' +
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, ' +
         ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 ' +
         ' WHERE L.CIAID=' + QuotedStr(dblcCia.Text) +
         ' and L.TCANJEID=' + QuotedStr('LC') +
         ' and L.CCCANJE=' + QuotedStr(edtCanje.text) +
         ' and L.CLIEID=C.CLIEID(+) ' +
         ' and L.TMONID=M.TMONID(+) ' +
         ' and C.ZONVTAID=Z.ZVTAID(+) ' +
         ' and Z.ZVTAID=Z1.TVTAID(+) ';
   End;
   DMCXC.cdsQry4.Close;
   DMCXC.cdsQry4.Datarequest(sSQL);
   DMCXC.cdsQry4.Open;

   If xModo <> 'A' Then
   Begin
      Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');
      DMCXC.cdsDetCxC.First;
   End;

   If DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString = 'S' Then
   Begin
      Filtracds(DMCXC.cdsMovCxC, 'Select * from CXC301 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' AND '
         + 'DOCID=' + '''' + DMCXC.cdsCCanje.FieldByName('NDDOC').AsString + '''' + ' AND '
         + 'CCSERIE=' + '''' + DMCXC.cdsCCanje.FieldByName('NDSERIE').AsString + '''' + ' AND '
         + 'CCNODOC=' + '''' + DMCXC.cdsCCanje.FieldByName('NDNUMERO').AsString + '''');
      Filtracds(DMCXC.cdsDetCxC2, 'Select * from CXC302 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'ND' + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');

   End;
End;

Procedure TFLetras.edtCanjeExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;

   edtCanje.Text := StrZero(edtCanje.Text, DMCXC.cdsCCanje.FieldByName('CANJE').Size);
   perform(CM_DialogKey, VK_TAB, 0);

   If edtCanje.text = '000000' Then
   Begin
      edtcanje.SetFocus;
      Raise exception.Create('Error :  Falta Registrar Número de Canje');
   End;
   If DMCXC.BuscaCanje(dblcCia.Text, 'LC', edtCanje.Text) Then
   Begin
      edtcanje.SetFocus;
      Raise Exception.Create('Error :  Canje Ya Existe');
   End;

   // Si No Existe Canje Se Inserta Registro
   DMCXC.cdsCCanje.Insert;
   DMCXC.cdsCCanje.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString := 'LC';
   DMCXC.cdsCCanje.FieldByName('CANJE').AsString := edtCanje.Text;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'X';
   DMCXC.cdsCCanje.FieldByName('DOCID').AsString := '  ';
   DMCXC.cdsCCanje.FieldByName('CJUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCCanje.FieldByName('CJFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCCanje.FieldByName('CJFHOR').AsDateTime := DMCXC.TimeS;

   DMCXC.cdsCCanje.DataRequest(' Select * from CXC307 WHERE '
      + ' CIAID=' + QuotedStr(dblcCia.Text)
      + ' AND TCANJEID=' + QuotedStr('LC')
      + ' AND CANJE=' + QuotedStr(edtCanje.Text));
   DMCXC.cdsPost(DMCXC.cdsCCanje);

   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

   DMCXC.cdsTDoc.Filtered := true;

   bbtnSumatClick(Sender);

   EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   xFlagGr := True;
End;

Procedure TFLetras.bbtnBasuraDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Function TFLetras.ValidaCabecera: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then Raise exception.Create('Falta Código de Compañía');
   If length(edtCia.Text) = 0 Then Raise exception.Create('Código de Compañía Errado');
   If length(edtCanje.Text) = 0 Then Raise exception.Create('Falta No. de Canje');
   If length(dblcdClie.Text) = 0 Then Raise exception.Create('Falta Registrar Cliente');
   If length(dblcTMon.Text) = 0 Then Raise exception.Create('Falta Tipo de Moneda');
   If length(edtTMon.Text) = 0 Then Raise exception.Create('Código de Moneda Errado');
   If length(dbeTCLet.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   If length(dbeCuenta.Text) = 0 Then Raise exception.Create('Falta Registrar Cuenta');
   If length(dbeGlosa.Text) = 0 Then Raise exception.Create('Código de Cuenta Errado');
   If length(edtClie.Text) = 0 Then Raise exception.Create('Cliente Errado');
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
   If dtpFComp.Date = 0 Then Raise exception.Create('Falta Fecha de Comprobante');
   If length(dblcdClieRuc.Text) = 0 Then Raise exception.Create('Falta Registrar RUC de Cliente');
   Result := true;
End;

Function TFLetras.ExisteMovCxC(xxCia, xxClieid, xxDocid, xxCCSerie, xxCCNoDoc: String): Boolean;
Begin
   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
   DMCXC.cdsMovCxC2.Setkey;
   DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := xxCia;
   DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := xxDocid;
   DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := xxCCSerie;
   DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := xxCCNODOC;
   DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := xxClieid;
   If DMCXC.cdsMovCxC2.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Function TFLetras.ExisteLetras(xxCia, xxTCanje, xxCanje: String): Boolean;
Begin
   DMCXC.cdsLetras.SetKey;
   DMCXC.cdsLetras.FieldByName('CIAID').AsString := xxCia;
   DMCXC.cdsLetras.FieldByName('TCANJEID').AsString := xxTCanje;
   DMCXC.cdsLetras.FieldByName('CCCANJE').AsString := xxCanje;
   If DMCXC.cdsLetras.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Procedure TFLetras.bbtnOkClick(Sender: TObject);
Var
   xFecStr: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdCnpEgr.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdCnpEgr.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   DMCXC.xFlagCal := True;
   Screen.Cursor := crHourGlass;

   If Not ValidaCabecera Then Exit; // Valida Datos Cabecera

   DMCXC.cdsTDoc.Filtered := false;

   xFecStr := DateToStr(dtpFEmis.date);
   xTAno := Copy(xFecStr, 7, 4);
   xTMes := Copy(xFecStr, 4, 2);

   If DMCXC.wModo = 'A' Then
   Begin
      DMCXC.cdsCCanje.FieldByName('CJEGIRADO').AsString := dbeGirado.text;
      DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString := xTAno + xTMes;
      DMCXC.cdsCCanje.FieldByName('CJAA').AsString := xTAno;
      DMCXC.cdsCCanje.FieldByName('CJMM').AsString := xTMes;

      //CLG: 23/10/2002
      DMCXC.cdsCCanje.fieldbyname('CPTOID').AsString := dblcdCnpEgr.text;

      If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
      Begin
         DMCXC.cdsCCanje.FieldByName('CJDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
         DMCXC.cdsCCanje.FieldByName('CJTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
         DMCXC.cdsCCanje.FieldByName('CJSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
         DMCXC.cdsCCanje.FieldByName('CJSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
         DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
         DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
         DMCXC.cdsCCanje.FieldByName('CJAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
      End;

      FiltraCanje(DMCXC.wModo);
      TNumericField(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC')).displayFormat := '###,###,###0.00';
      TNumericField(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI')).displayFormat := '###,###,###0.00';
      TNumericField(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT')).displayFormat := '###,###,###0.00';
      dbgPendientes.RedrawGrid;
      TNumericField(DMCXC.cdsCanjes.FieldByName('CCSALLOC')).displayFormat := '###,###,###0.00';
      TNumericField(DMCXC.cdsCanjes.FieldByName('CCMTOORI')).displayFormat := '###,###,###0.00';
      TNumericField(DMCXC.cdsCanjes.FieldByName('CCSALEXT')).displayFormat := '###,###,###0.00';
      TNumericField(DMCXC.cdsCanjes.FieldByName('CCMTOLOC')).displayFormat := '###,###,###0.00';
      TNumericField(DMCXC.cdsCanjes.FieldByName('CCMTOEXT')).displayFormat := '###,###,###0.00';
      dbgDocCanje.RedrawGrid;

   End;

   If (DMCXC.cdsMovCxC2.RecordCount = 0) And (DMCXC.cdsCanjes.RecordCount = 0) Then
   Begin
      DMCXC.cdsCCanje.Edit;
      DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'X';
      EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
      Raise Exception.Create('Cliente No tiene Documentos Pendientes de Pago');
   End;

   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      If ExisteMovCxC(DMCXC.cdsCanjes.FieldByName('CIAID').AsString, DMCXC.cdsCanjes.FieldByName('CLIEID').AsString,
         DMCXC.cdsCanjes.FieldByName('DOCID').AsString, DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString, DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString) Then
      Begin
         DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat := StrToFloat(dbeTCLet.text);
         DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat + DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat + DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
         If dblcTMon.Text = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat / DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
            DMCXC.xFlagCal := False;
            DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat * DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
            DMCXC.xFlagCal := False;
            DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
         End;
      End;
      DMCXC.cdsPost(DMCXC.cdsCanjes);
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;

   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.EOF Do
   Begin
//     DMCXC.cdsCanjesClone.IndexFieldNames:='CIAID;TDIARID;CCANOMM;CCNOREG';
      DMCXC.cdsCanjesClone.Setkey;
      DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      If DMCXC.cdsCanjesClone.Gotokey Then
      Begin
         DMCXC.cdsCanjesClone.Edit;
         DMCXC.cdsCanjesClone.FieldByName('CCTCAMCJE').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsCanjesClone.Post;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');

   bbtnSumatClick(Sender);
   Screen.Cursor := crDefault;
End;

Procedure TFLetras.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
   State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLetras.bbtnSumatClick(Sender: TObject);
Var
   xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xTTotLet, xTTotIGV: Double;
   xTTotGra, xTTotGas, xTTotInt, xxTotal: Double;
   xTMonID: String;
   xRegAct: TBookMark;
   xSigno: String;

Begin
   xTPagLoc := 0;
   xTPagExt := 0;

   DMCXC.cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid
   xRegAct := DMCXC.cdsCanjes.GetBookmark; // marca reg. donde se quedo
   DMCXC.cdsTDoc.Filtered := False;
   If DMCXC.cdsTDoc.IndexFieldNames <> 'DOCID;DOCMOD' Then
      DMCXC.cdsTDoc.IndexFieldNames := 'DOCID;DOCMOD';
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      xSigno := '+';
      DMCXC.cdsTDoc.SetKey;
      DMCXC.cdsTDoc.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsTDoc.FieldByName('DOCMOD').AsString := 'CXC';
      If DMCXC.cdsTDoc.Gotokey Then
      Begin
         If DMCXC.cdsTDoc.FieldByName('DOCRESTA').AsString = 'S' Then
            xSigno := '-';
         If xSigno = '+' Then
         Begin
            xTPagLoc := xTPagLoc + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            xTPagExt := xTPagExt + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         End
         Else
         Begin
            xTPagLoc := xTPagLoc - DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            xTPagExt := xTPagExt - DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         End;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsTDoc.Filtered := True;
   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;

   xTSalLoc := OperClientDataSet(DMCXC.cdsCanjes, 'SUM(' + 'CCSALLOC' + ')', '');
   xTSalExt := OperClientDataSet(DMCXC.cdsCanjes, 'SUM(' + 'CCSALEXT' + ')', '');
 {  xTPagLoc := OperClientDataSet( DMCXC.cdsCanjes,'SUM('+'CCMTOLOC'+')','');
   xTPagExt := OperClientDataSet( DMCXC.cdsCanjes,'SUM('+'CCMTOEXT'+')','');}
   dbgDocCanje.ColumnByName('CCSalLoc').FooterValue := floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCSalExt').FooterValue := floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);

   xTTotGra := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'CCGRAVAD' + ')', '');
   xTTotGas := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'CCGASFIN' + ')', '');
   xTTotInt := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'INTERES' + ')', '');
   xTTotIGV := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'CCIGV' + ')', '');
   xTTotLet := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'CCMTOORI' + ')', '');
   dbgLetras.ColumnByName('CCGRAVAD').FooterValue := floattostrf(xTTotGra, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCGASFIN').FooterValue := floattostrf(xTTotGas, ffNumber, 10, 2);
   dbgLetras.ColumnByName('INTERES').FooterValue := floattostrf(xTTotInt, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCIGV').FooterValue := floattostrf(xTTotIGV, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCMTOORI').FooterValue := floattostrf(xTTotLet, ffNumber, 10, 2);

   If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      xxTotal := xTPagLoc
   Else
   Begin
      xxTotal := xTPagExt;
   End;

   xTMonID := DMCXC.cdsCCanje.FieldByName('TMONID').AsString; // DMCXC.cdsLetraslkTMon.Value;

   edtFinal.Text := 'Letras se deberan Generar por la suma de ' + DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + QuotedStr(xTMonID), 'TMONABR');

   edtTotal1.Text := floattostrf(xxToTal, ffNumber, 15, 2);
   edtTotal.Text := floattostr(FRound(xxToTal, 15, 2));
End;

Procedure TFLetras.Z2bbtnGrabaClick(Sender: TObject);
Var
   xNumRegT: Integer;
   xxNoReg, sSIT, sUBI, xWhere: String;
   fFlag: Boolean;
   xsNotDeb: real;
   xxWhere, xNumLet, sSQL: String;
   a1, m1, d1: word;
   sa1, sm1: String;
Begin
   xsNotDeb := 0;
   If DMCXC.cdsCanjes.RecordCount = 0 Then Raise exception.Create('Falta Registrar Documentos a Canjear');
   If DMCXC.cdsLetras.RecordCount = 0 Then Raise exception.Create('Falta Registrar Letras');

   If ((Not DMCXC.cdsCCanje.FieldByName('CJTOTORI').IsNull) Or (DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat <> 0)) And (DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString <> 'S') Then
   Begin
      ShowMessage('Genere la Nota de Débito');
      exit;
   End;

   xsNotDeb := DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat +
      DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat +
      DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat +
      DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat +
      DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat +
      DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat;

   If (xsNotDeb <> DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat) Then
   Begin
      If MessageDlg('Aun no se ha calculado la Nota de Débito. ¿ Desea Grabar  ? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         exit;
      End;
   End;

   // Verifica que Totales Cuadren
   VerificaAsiento;

   fFlag := True;
   If Not VerificaTotal Then
   Begin
      fFlag := False;
      ShowMessage('Total Documentos a Canjear y Total Letras NO Cuadran');
      exit;
   End;

//   ShowMessage('XXX');
//  Exit;

   // Al Grabar se Poner la 1ra. Situación de Letras
   sSIT := '';
   If fFlag Then
   Begin
      xWhere := 'SITUAFLAG=''1''';
      sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');
      If Length(sSIT) = 0 Then
         Raise Exception.Create('Revisar Tabla de Situación de Letras');

      xWhere := 'UBICAFLAG=''1''';
      sUBI := DMCXC.BuscaQry('dspTGE', 'CXC105', '*', xWhere, 'UBICAID');
   End;

   // Actualiza Letras
   xxNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
   xNumRegT := StrToInt(xxNoReg);

   xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + dblcTDoc.Text + '''' + ' AND '
      + 'CCCANJE<>' + QuotedStr(edtCanje.text);

   If DMCXC.wModo = 'A' Then
   Begin
      DMCXC.cdsCCanje.Edit;
      If DMCXC.cdsCCanje.FieldByName('CJLETINI').AsFloat < StrToFloat(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere)) Then
         DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere)
      Else
         xNumLet := DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString;
   End;
   xNumLet := DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString;

   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.eof Do
   Begin
      DMCXC.cdsLetras.Edit;
      If DMCXC.wModo = 'A' Then
      Begin
         DMCXC.cdsLetras.FieldByName('CCNODOC').AsString := xNumLet;
      End;
      xNumLet := IntToStr(StrToInt(xNumLet) + 1);

      DMCXC.cdsLetras.FieldByName('CCESTADO').AsString := 'I';
      If Length(DMCXC.cdsLetras.FieldByName('CCESTADO').AsString) = 0 Then
      Begin
         xxNoReg := DMCXC.GrabaRegistroLetra(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes, xNumRegT);
         xxNoReg := StrZero(xxNoReg, DMCXC.cdsLetras.FieldByName('CCNOREG').Size);
         DMCXC.cdsLetras.FieldByName('CCNOREG').AsString := xxNoReg;
      End;
      DMCXC.cdsLetras.FieldByName('CCESTADO').AsString := 'I';

      If (Length(DMCXC.cdsLetras.FieldByName('SITID').AsString) = 0) Or (Not fFlag) Then
      Begin
         DMCXC.cdsLetras.FieldByName('UBIID').AsString := sUBI;
         DMCXC.cdsLetras.FieldByName('SITID').AsString := sSit;
         DMCXC.cdsLetras.FieldByName('CCFSITUA').AsDateTime := DMCXC.DateS;
      End
      Else
      Begin
         If DMCXC.CambioSituacion(DMCXC.cdsLetras.FieldByName('SITID').AsString, sSIT) Then
         Begin
            DMCXC.SetHyst(dblcCia.Text, dblcTDoc.Text, DMCXC.cdsLetras.FieldByName('CCNODOC').AsString);
            DMCXC.cdsLetras.FieldByName('UBIID').AsString := sUBI;
            DMCXC.cdsLetras.FieldByName('SITID').AsString := sSIT;
            DMCXC.cdsLetras.FieldByName('CCFSITUA').AsDateTime := DMCXC.DateS;
         End;
      End;

      DMCXC.cdsLetras.FieldByName('CCFEMIS').AsDateTime := dtpFValor.Date;
      DMCXC.cdsLetras.FieldByName('CCFCMPRB').AsDateTime := dtpFComp.Date;
      DMCXC.cdsLetras.FieldByName('CCPTOTOT').AsString := dblcdCnpEgr.Text;
      DMCXC.cdsLetras.FieldByName('CTATOTAL').AsString := dbeCuenta.Text;
      DMCXC.cdsLetras.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsPost(DMCXC.cdsLetras);
      DMCXC.cdsLetras.Next;
   End;

   ActualizaSaldosMovCxP;

   DecodeDate(dtpFEmis.Date, a1, m1, d1);
   sa1 := StrZero(IntToStr(a1), 4);
   sm1 := StrZero(IntToStr(m1), 2);

   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJNUMLET').AsInteger := DMCXC.cdsLetras.RecordCount;
   DMCXC.cdsCCanje.FieldByName('CJUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCCanje.FieldByName('CJFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCCanje.FieldByName('CJFHOR').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString := sa1 + sm1;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'I';
   DMCXC.cdsPost(DMCXC.cdsCCanje);
   DMCXC.cdsCCanje.DataRequest('Select * from CXC307 WHERE '
      + ' CIAID=' + QuotedStr(dblcCia.Text)
      + ' AND TCANJEID=' + QuotedStr('LC')
      + ' AND CANJE=' + QuotedStr(edtCanje.Text));
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');
   DMCXC.cdsDetCxC2.DataRequest('Select * from CXC302');
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC2, 'DetCxC2');

   DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

   DMCXC.cdsCanjesClone.DataRequest('Select CXC304.* from CXC304 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsCanjesClone, 'Canjes');

   If xFlagGr Then
   Begin
      Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');
   End;

   xFlagGr := False;

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage(' Registro de Canje Grabado ');
End;

Procedure TFLetras.ActualizaSaldosMovCxP;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
Begin
   // Actualiza Saldo de MovCxP
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2Clone.Filtered := False;
   DMCXC.cdsCanjeS.DisableControls;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
      DMCXC.cdsMovCxC2.Setkey;

      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.GotoBookmark(xRegAct);
               DMCXC.cdsCanjes.FreeBookmark(xRegAct);
               DMCXC.cdsCanjes.EnableControls;
               DMCXC.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.GotoBookmark(xRegAct);
               DMCXC.cdsCanjes.FreeBookmark(xRegAct);
               DMCXC.cdsCanjes.EnableControls;
               DMCXC.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
         DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
         DMCXC.cdsMovCxC2Clone.Setkey;

         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;

         If DMCXC.cdsMovCxC2Clone.Gotokey Then
         Begin
            DMCXC.cdsMovCxC2Clone.edit;
            If DMCXC.cdsMovCxC2Clone.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
            Begin
               xPagLoc := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            End
            Else
            Begin
               xPagExt := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            End;
            DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').Value := 'LC';
           //DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').Value := '.';
            DMCXC.cdsPost(DMCXC.cdsMovCxC2Clone);
            DMCXC.cdsMovCxC2Clone.Post;
         End;

         DMCXC.cdsMovCxC2.edit;
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            xPagLoc := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;
         DMCXC.cdsMovCxC2.FieldByName('COMPROMET').Value := 'LC';
         //DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').Value := '.';
         DMCXC.cdsPost(DMCXC.cdsMovCxC2);
         DMCXC.cdsMovCxC2.Post;
      End;
      DMCXC.cdsCanjes.Next;
   End;

   DMCXC.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');

   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2Clone.Filtered := True;

   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.EnableControls;
End;

Procedure TFLetras.GrabaDetCanje;
Var
   xSalLoc, xSalExt, xSaldoC, xSaldoL: Double;
Begin
   DMCXC.cdsDetCanje.First;
   While (Not DMCXC.cdsDetCanje.Eof) And (DMCXC.cdsDetCanje.RecordCount > 0) Do
      DMCXC.cdsDetCanje.Delete;

   DMCXC.cdsLetras.First;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         xSaldoC := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat
      Else
      Begin
         xSaldoC := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
      End;
      xSalLoc := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
      xSalExt := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
      While xSaldoC > 0 Do
      Begin
         While (Not DMCXC.cdsLetras.Eof) And (xSaldoC > 0) Do
         Begin
            If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               xSaldoL := DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat
            Else
            Begin
               xSaldoL := DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat;
            End;

            DMCXC.cdsDetCanje.Insert;
            If xSaldoL <= xSaldoC Then
            Begin
               // Grabar en cxp305 en monto = a la letra
               GrabaRegCxP305;
               If DMCXC.cdsDetCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
                  xSalLoc := FRound(xSalLoc - DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  xSalExt := FRound(xSalExt - DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  xSaldoC := xSalLoc;
               End
               Else
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
                  xSalExt := FRound(xSalExt - DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  xSalLoc := FRound(xSalLoc - DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  xSaldoC := xSalExt;
               End;
               DMCXC.cdsPost(DMCXC.cdsDetCanje);

               DMCXC.cdsLetras.Edit;
               DMCXC.cdsLetras.FieldByName('CCMTOLOC').Value := 0;
               DMCXC.cdsLetras.Delete;
            End
            Else
            Begin
               // Grabar en cxp305 en monto = xSalLoc
               GrabaRegCxP305;
               If DMCXC.cdsDetCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(xSalLoc, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(xSalLoc / DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
               End
               Else
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(xSalExt, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(xSalExt * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
               End;
               DMCXC.cdsPost(DMCXC.cdsDetCanje);

               DMCXC.cdsLetras.Edit;
               DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat - xSalLoc, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat - xSalExt, 15, 2);
               DMCXC.cdsPost(DMCXC.cdsLetras);
               xSalLoc := 0;
               xSalExt := 0;
               xSaldoC := 0;
            End;
         End;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsLetras.CancelUpdates;
   DMCXC.cdsDetCanje.First;
   DMCXC.cdsLetras.EnableControls;
   DMCXC.cdsCanjes.EnableControls;

   DMCXC.AplicaDatos(DMCXC.cdsDetCanje, 'DetCanje');
End;

Procedure TFLetras.GrabaRegCxP305;
Begin
   DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString;
   DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := DMCXC.cdsLetras.FieldByName('CCNOREG').AsString;
   DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCCANJE').Value := DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCFCANJE').Value := DMCXC.cdsCanjes.FieldByName('CCFCANJE').Value;
   DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.cdsLetras.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := DMCXC.cdsLetras.FieldByName('CCSERIE').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := DMCXC.cdsLetras.FieldByName('CCNODOC').AsString;
   DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.cdsCanjes.FieldByName('CCUSER').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCFREG').value := DMCXC.cdsCanjes.FieldByName('CCFREG').Value;
   DMCXC.cdsDetCanje.FieldByName('DCCHREG').Value := DMCXC.cdsCanjes.FieldByName('CCHREG').Value;
   DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsCanjes.FieldByName('CCMM').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsCanjes.FieldByName('CCDD').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsCanjes.FieldByName('CCTRI').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsCanjes.FieldByName('CCSEM').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsCanjes.FieldByName('CCSS').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsCanjes.FieldByName('CCAASS').AsString;
End;

Procedure TFLetras.Z2bbtnContabClick(Sender: TObject);
{var
  xSQL,mes,ano,xwhere,MONABR : string;
  TMoneda,mesdes : String;
  xTotHaber:DOUBLE;
  xRegistro:string;}
Var
   xSQL: String;
   a, m, d: word;
   xNoReg: String;
Begin
{   EstadoDeForma( 1, 'P','S' );
   pnlConta.Visible:= True;}
   xSQL := ' CIAID=' + QuotedStr(dblcCia.text) +
      ' AND TCANJEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString) +
      ' AND CCCANJE=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CANJE').AsString) +
      ' AND CLIEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CLIEID').AsString);
   xNoReg := DMCXC.BuscaQry('dspTGE', 'CXC302', 'CCNOREG', xSQL, 'CCNOREG');

   If DMCXC.wAdmin = 'G' Then Exit;
   DecodeDate(dtpFEmis.Date, a, m, d);
   xTMes := StrZero(IntToStr(m), 2);
   xTAno := StrZero(IntToStr(a), 4);

   If DMCXC.MesCerrado(xTMes, xTAno, dblcCia.text) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;
   //**
   VerificaAsiento;

   If DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString = 'S' Then
      Raise exception.Create('Error: Asiento ya fue Contabilizado');

   If MessageDlg('Contabilizar Documento' + chr(13) + chr(13) +
      'Periodo         : ' + xTAno + xTMes + chr(13) +
      'Comprobante: ' + xNoReg + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?    ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DMCXC.GeneraContab(dblcCia.Text, dblcTDiario.Text, DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, xNoReg, Self, 'C');

   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString := 'S';
   DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString := xNoReg;
   DMCXC.cdsPost(DMCXC.cdsCCanje);

   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
      DMCXC.cdsPost(DMCXC.cdsDetCxC);
      DMCXC.cdsDetCxC.Next;
   End;

   DMCXC.cdsCCanje.DataRequest('SELECT * FROM CXC307 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'TCANJEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString) + ' AND '
      + 'CANJE=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CANJE').AsString) + ' AND '
      + 'CLIEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CLIEID').AsString));
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'MovCxC');

   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage('Registro Contabilizado' + chr(13) + chr(13) +
      'Periodo         : ' + xTAno + xTMes + chr(13) +
      'Comprobante: ' + xNoReg);

End;

Function TFLetras.GeneraAsientoCanje: Boolean;
Var
   xRegAct: TBookMark;
   sIndice: String;
Begin
   sIndice := DMCXC.cdsCanjes.IndexFieldNames;
   DMCXC.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';
   //** 12/09/2001 - pjsv
   If DMCXC.MesCerrado(xTMes, xTAno, dblcCia.text) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;
   //**
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
      DMCXC.cdsDetCxC.Delete;

   DMCXC.cdsLetras.DisableControls;
   xRegAct := DMCXC.cdsLetras.GetBookmark;

   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin

      GrabaContabilidadLetra;
      GrabaContabilidadDocumentos;
      DMCXC.cdsLetras.Next;
   End;
   DMCXC.cdsLetras.GotoBookmark(xRegAct);
   DMCXC.cdsLetras.FreeBookmark(xRegAct);
   DMCXC.cdsLetras.EnableControls;
   DMCXC.cdsCanjes.EnableControls;

   DMCXC.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;TDiarID;CCAnoMM;CCNoReg';
                                      //'CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';
   DMCXC.cdsCanjes.IndexFieldNames := sIndice;
   Result := True;
End;

Procedure TFLetras.GrabaContabilidadLetra;
Begin
   DMCXC.cdsDetCxC.Insert;
   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsLetras.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := DMCXC.cdsLetras.FieldByName('TCANJEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := DMCXC.cdsLetras.FieldByName('CCCANJE').AsString;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsLetras.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsLetras.FieldByName('CCNOREG').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsLetras.FieldByName('CCAAAA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsLetras.FieldByName('CCANOMES').AsString;
   DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsCCanje.FieldByName('CPTOID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
   DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCCanje.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := '00000';
   DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsLetras.FieldByName('CCNODOC').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDH').Value := 'H';
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsLetras.FieldByName('CCFEMIS').AsDatetime;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsLetras.FieldByName('CCFVCMTO').AsDatetime;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFComp.Date;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P';
   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsLetras.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsLetras.FieldByName('CCMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsLetras.FieldByName('CCDD').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsLetras.FieldByName('CCTRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsLetras.FieldByName('CCSEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsLetras.FieldByName('CCSS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsLetras.FieldByName('CCAATRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsLetras.FieldByName('CCAASEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsLetras.FieldByName('CCAASS').AsString;
   DetCxCUsuario; // Graba Usuario, Fecha y Hora
   DMCXC.cdsPost(DMCXC.cdsDetCxC);

End;

Procedure TFLetras.GrabaContabilidadDocumentos;
Begin

   DMCXC.cdsDetCanje.Filter := '';
   DMCXC.cdsDetCanje.Filter := 'CiaId=' + '''' + dblcCia.Text + '''' + ' and ' +
      'TCanjeID=' + '''' + 'LC' + '''' + ' and ' +
      'CCCanje=' + '''' + edtCanje.text + '''' + ' and ' +
      'DocID2=' + '''' + DMCXC.cdsLetras.FieldByName('DOCID').Value + '''' + ' and ' +
      'CCSerie2=' + '''' + DMCXC.cdsLetras.FieldByName('CCSERIE').Value + '''' + ' and ' +
      'CCNoDoc2=' + '''' + DMCXC.cdsLetras.FieldByName('CCNODOC').Value + '''';
   DMCXC.cdsDetCanje.Filtered := True;

   DMCXC.cdsDetCanje.First;
   While Not DMCXC.cdsDetCanje.Eof Do
   Begin
      DMCXC.cdsCanjes.SetKey;
      DMCXC.cdsCanjes.FieldByName('CIAID').Value := DMCXC.cdsLetras.FieldByName('CIAID').Value;
      DMCXC.cdsCanjes.FieldByName('TCANJEID').Value := DMCXC.cdsLetras.FieldByName('TCANJEID').Value;
      DMCXC.cdsCanjes.FieldByName('CCCANJE').Value := DMCXC.cdsLetras.FieldByName('CCCANJE').Value;
      DMCXC.cdsCanjes.FieldByName('DOCID').Value := DMCXC.cdsDetCanje.FieldByName('DOCID').Value;
      DMCXC.cdsCanjes.FieldByName('CCSERIE').Value := DMCXC.cdsDetCanje.FieldByName('CCSERIE').Value;
      DMCXC.cdsCanjes.FieldByName('CCNODOC').Value := DMCXC.cdsDetCanje.FieldByName('CCNODOC').Value;
      If DMCXC.cdsCanjes.GotoKey Then
      Begin

         GeneraDiferenciaCambio;

         DMCXC.cdsDetCxC.Insert;
         DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsLetras.FieldByName('CIAID').AsString;
         DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := DMCXC.cdsLetras.FieldByName('TCANJEID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := DMCXC.cdsLetras.FieldByName('CCCANJE').AsString;
         DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsLetras.FieldByName('TDIARID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsLetras.FieldByName('CCNOREG').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsLetras.FieldByName('CCANOMES').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsLetras.FieldByName('CCAAAA').AsString;
//         DMCXC.cdsDetCxCCCLote.Value   := DMCXC.cdsCCanjeCJLote.AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsCanjes.FieldByName('CTATOTAL').AsString;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsCanjes.FieldByName('CPTOTOT').AsString;
         DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
         DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString;
         DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCDH').Value := 'D';
         DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
         If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
            DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat
         Else
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat;
         End;
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat + xDifCLoc, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat + xDifCExt, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsCanjes.FieldByName('CCFEMIS').Value;
         DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsCanjes.FieldByName('CCFVCMTO').Value;
         DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := dtpFComp.Date;
         DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsLetras.FieldByName('CCMM').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsLetras.FieldByName('CCDD').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsLetras.FieldByName('CCTRI').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsLetras.FieldByName('CCSEM').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsLetras.FieldByName('CCSS').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsLetras.FieldByName('CCAATRI').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsLetras.FieldByName('CCAASEM').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsLetras.FieldByName('CCAASS').AsString;
         DetCxCUsuario; // Graba Usuario, Fecha y Hora

         GrabaDiferenciaCambio;

      End;
      DMCXC.cdsDetCanje.Next;
   End;
End;

Procedure TFLetras.GeneraDiferenciaCambio;
Begin
   xDifCLoc := 0;
   xDifCExt := 0;
   If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
   Begin
      xPagAnt := FRound(DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
      If DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat > xPagAnt Then
      Begin
         xDifCam := FRound(DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat - xPagAnt, 15, 2);
         xDifCLoc := FRound((-1) * (DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat - xPagAnt), 15, 2);
         xCtaDif := DMCXC.wDifAjuP;
         xCptoDif := DMCXC.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End
      Else
      Begin
         xDifCam := FRound(xPagAnt - DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat, 15, 2);
         xDifCLoc := FRound(xPagAnt - DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat, 15, 2);
         xCtaDif := DMCXC.wDifAjuG;
         xCptoDif := DMCXC.wCptoAjG;
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH := 'H'
      End;
   End
   Else
   Begin
      xPagAnt := FRound(DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
      If DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat > xPagAnt Then
      Begin
         xDifCam := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat - xPagAnt, 15, 2);
         xDifCExt := FRound((-1) * (DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat - xPagAnt), 15, 2);
         xCtaDif := DMCXC.wDifAjuP;
         xCptoDif := DMCXC.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End
      Else
      Begin
         xDifCam := xPagAnt - DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat;
         xDifCExt := xPagAnt - DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat;
         xCtaDif := DMCXC.wDifAjuG;
         xCptoDif := DMCXC.wCptoAjG;
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH := 'H'
      End;
   End;
End;

Procedure TFLetras.GrabaDiferenciaCambio;
Begin
   If xDifCam > 0 Then
   Begin
      DMCXC.cdsDetCxC.Insert;
      DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := DMCXC.cdsLetras.FieldByName('TCANJEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := DMCXC.cdsLetras.FieldByName('CCCANJE').AsString;
      DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsLetras.FieldByName('TDIARID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsLetras.FieldByName('CCNOREG').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsLetras.FieldByName('CCANOMES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsLetras.FieldByName('CCAAAA').AsString;
//      DMCXC.cdsDetCxCCCLote.Value   := DMCXC.cdsCCanjeCJLote.AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xCtaDif;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xCptoDif;
      DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
      DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGloDif;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := xDH;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat;
      //
      If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(xDifCam, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(xDifCam, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := 0;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(xDifCam, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := 0;
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(xDifCam, 15, 2);
      End;
      //
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsLetras.FieldByName('CCFEMIS').AsDatetime;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDatetime;
      DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFComp.Date;
      DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.wTMonLoc;
      DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsLetras.FieldByName('CCMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsLetras.FieldByName('CCDD').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsLetras.FieldByName('CCTRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsLetras.FieldByName('CCSEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsLetras.FieldByName('CCSS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsLetras.FieldByName('CCAATRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsLetras.FieldByName('CCAASEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsLetras.FieldByName('CCAASS').AsString;
      DetCxCUsuario; // Graba Usuario, Fecha y Hora
   End;
End;

Procedure TFLetras.DetCxCUsuario;
Begin
   DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
End;

Procedure TFLetras.DetCxC2Usuario;
Begin
   DMCXC.cdsDetCxC2.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCxC2.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC2.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
End;

Function TFLetras.VerificaTotal: Boolean;
Var
   xTPagLoc, xTPagExt, xTLetOri, xTLetLoc, xTLetExt, xDifLoc, xDifExt: Double;
   xRegAct: TBookMark;
   xSigno: String;
Begin
   Result := False;
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsTDoc.Filtered := False;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   xTPagLoc := 0;
   xTPagExt := 0;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      DMCXC.cdsMovCxC2.Setkey;
{      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString    := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString  := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString  := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;}

      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Asfloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Asfloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').Asfloat, 15, 2) Then
            Begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Asfloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Asfloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').Asfloat, 15, 2) Then
            Begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
      End;
      If DMCXC.cdsTDoc.IndexFieldNames <> 'DOCID;DOCMOD' Then
         DMCXC.cdsTDoc.IndexFieldNames := 'DOCID;DOCMOD';
      DMCXC.cdsTDoc.Setkey;
      DMCXC.cdsTDoc.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsTDoc.FieldByName('DOCMOD').AsString := 'CXC';
      xSigno := '+';
      If DMCXC.cdsTDoc.Gotokey Then
      Begin
         If DMCXC.cdsTDoc.FieldByName('DOCRESTA').AsString = 'S' Then
            xSigno := '-';
      End;
      If xSigno = '+' Then
      Begin
         xTPagLoc := xTPagLoc + FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Asfloat, 15, 2);
         xTPagExt := xTPagExt + FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Asfloat, 15, 2);
      End
      Else
      Begin
         xTPagLoc := xTPagLoc - FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Asfloat, 15, 2);
         xTPagExt := xTPagExt - FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Asfloat, 15, 2);
      End;

      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsTDoc.Filtered := False;
   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;

   // Totales de Letras por Pagar
   DMCXC.cdsLetras.DisableControls;
   xRegAct := DMCXC.cdsLetras.GetBookmark;
   xTLetOri := 0;
   xTLetLoc := 0;
   xTLetExt := 0;
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      xTLetOri := xTLetOri + FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').Asfloat, 15, 2);
      xTLetLoc := xTLetLoc + FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').Asfloat, 15, 2);
      xTLetExt := xTLetExt + FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').Asfloat, 15, 2);
      DMCXC.cdsLetras.Next;
   End;

   If DMCXC.cdsLetras.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      If FRound(xTLetLoc, 15, 2) = FRound(xTPagLoc, 15, 2) Then
         Result := True;
   End
   Else
   Begin
      If DMCXC.cdsLetras.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      Begin
         If FRound(xTLetExt, 15, 2) = FRound(xTPagExt, 15, 2) Then
            Result := True
      End;
   End;

   xDifLoc := 0;
   xDifExt := 0;

   If Result Then
   Begin
      If xTLetLoc <> xTPagLoc Then
      Begin
         xDifLoc := FRound(xTPagLoc - xTLetLoc, 5, 2);
      End;
      If xTLetExt <> xTPagExt Then
      Begin
         xDifExt := FRound(xTPagExt - xTLetExt, 5, 2);
      End;
   End;

   DMCXC.cdsLetras.Last;
   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').Asfloat + xDifLoc, 15, 2);
   DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').Asfloat + xDifExt, 15, 2);
   DMCXC.cdsLetras.GotoBookmark(xRegAct);
   DMCXC.cdsLetras.FreeBookmark(xRegAct);
   DMCXC.cdsLetras.EnableControls;
End;

Procedure TFLetras.bbtnCalcClick(Sender: TObject);
Begin
   WinExec('calc.exe', 1); // Executa Aplicación
End;

Procedure TFLetras.dblcdCnpEgrExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If Length(Trim(DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTODES', 'CPTOCAB=' + QuotedStr(dblcdCnpEgr.Text) +
      ' AND DOCID=' + QuotedStr(dblcTDoc.Text) + ' AND TMONID=' + QuotedStr(dblcTMon.text) +
      ' AND CIAID=' + QuotedStr(dblcCia.text), 'CPTODES'))) = 0 Then
   Begin
      dblcdCnpEgr.SetFocus;
      Raise Exception.Create('Concepto no existe');
   End;
   DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString := DMCXC.cdsCptoCab.FieldByName('CUENTAID').AsString;
   If length(dbeGlosa.Text) = 0 Then
      DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString := DMCXC.cdsCptoCab.FieldByName('CPTODES').AsString;
End;

Procedure TFLetras.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   xWhere := 'TMonId=' + '''' + dblcTMon.Text + ''''
      + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';

   edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   End;

   If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
         + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )')
   Else
      DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
         + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
   DMCXC.cdscpto.Open;

   DMCXC.cdscptoCab.Close;
   DMCXC.cdscptoCab.DataRequest('SELECT * FROM CXC208 WHERE OPCMENU=''P'' AND DOCID=' + QuotedStr(dblcTDoc.text) +
      ' AND TMONID=' + QuotedStr(dblcTMon.text) + ' AND TVTAID=' + QuotedStr(xSector) +
      ' AND CIAID=' + QuotedStr(dblcCia.text));
   DMCXC.cdscptoCab.Open;

   If DMCXC.cdscptoCab.RecordCount = 1 Then
   Begin
      DMCXC.cdscptoCab.First;
      dblcdCnpEgr.text := DMCXC.cdscptoCab.FieldByName('CPTOCAB').AsString;
   End;

   If Length(dbeTCLet.Text) > 0 Then
   Begin
      DMCXC.cdsLetras.First;
      If (DMCXC.cdsLetras.FieldByName('TMONID').AsString <> dblcTMon.Text) Then
      Begin
         While Not DMCXC.cdsLetras.eof Do
         Begin
            DMCXC.cdsLetras.Edit;
            DMCXC.cdsLetras.FieldByName('TMONID').AsString := dblcTMon.Text;
            If DMCXC.cdsLetras.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            Begin
               DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            End
            Else
            Begin
               DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            End;
            DMCXC.cdsLetras.Next;
         End;
         DMCXC.cdsLetras.First;
      End;
   End;

End;

Procedure TFLetras.bbtnCancelaClick(Sender: TObject);
Begin

   DMCXC.cdsCanjes.CancelUpdates;
   DMCXC.cdsLetras.CancelUpdates;

   EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);
End;

Procedure TFLetras.dtpFCompExit(Sender: TObject);
Var
   xWhere: String;
   xFCierre: TDate;
Begin
   If xCrea Then Exit;

   xWhere := 'CiaId=' + '''' + dblcCia.Text + '''';
   xFCierre := DMCXC.BuscaUltFecha('dspTGE', 'CXP202', 'FCierre', xWhere);

   If dtpFComp.Date <= xFCierre Then
   Begin
      ShowMessage(' Error :  Última Fecha de Cierre ' + DateToStr(xFCierre));
      dtpFComp.SetFocus;
      exit;
   End;

End;

Procedure TFLetras.dtpFEmisExit(Sender: TObject);
Var
   xWhere: String;
   xFCierre: TDate;
Begin
   If xCrea Then Exit;
   If dtpFEmis.date <= Date Then
   Begin
      If DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
      Begin
         dtpFEmis.SetFocus;
         Raise Exception.Create(' PERIODO CERRADO ');
      End;

      xWhere := 'CiaId=' + '''' + dblcCia.Text + '''';
      xFCierre := DMCXC.BuscaUltFecha('dspTGE', 'CXC202', 'FCierre', xWhere);

      If dtpFEmis.Date <= xFCierre Then
      Begin
         ShowMessage(' Error :  Última Fecha de Cierre ' + DateToStr(xFCierre));
         dtpFEmis.SetFocus;
         exit;
      End;

     // Tipo de Cambio
      xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
         + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFEmis.Date) + ''' )';
      xxTCambio := 0;
      If length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
         xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
      Else
      Begin
         dtpFEmis.SetFocus;
         Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
      End;
      DMCXC.cdsCCanje.Edit;
      DMCXC.cdsCCanje.FieldByName('CJFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
      DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').Value := FRound(xxTCambio, 7, 3);
   End
   Else
   Begin
      dtpFEmis.setfocus;
      Raise Exception.Create('Error :  Fecha de Canje' + chr(13)
         + 'no puede ser mayor que la Fecha del Sistema');
   End;
End;

Procedure TFLetras.ActualizaPagadoMovCxP;
Var
   sSQL, xIndexAnt: String;
Begin
   xIndexAnt := DMCXC.cdsMovCxC2.IndexFieldNames;

   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsMovCxC2Clone.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;

   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsMovCxC2.Setkey;
{      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString    := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
   DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString  := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
   DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
   DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString  := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;}
      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2.edit;
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;

         DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat, 15, 2);
         DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         If Abs(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat) <= 0.01 Then
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime := dtpFEmis.Date;
            DMCXC.cdsMovCxC2.FieldByName('CCESTADO').Value := 'C';
         End;

         DMCXC.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         If DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString = 'C' Then
         Begin
            DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
            If DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString = DMCXC.wsLet Then
            Begin
               DMCXC.cdsMovCxC2.FieldByName('SITID').AsString := DMCXC.wsCanCar;
            End;
         End
         Else
         Begin
            DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         End;

     //CLG:30/04/2002
         DMCXC.cdsPost(DMCXC.cdsMovCxC2);
         DMCXC.cdsMovCxC2.Post;

         DMCXC.cdsMovCxC2Clone.Setkey;
         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

         If DMCXC.cdsMovCxC2Clone.GotoKey Then
         Begin
            DMCXC.cdsMovCxC2Clone.edit;
            If DMCXC.cdsMovCxC2Clone.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            Begin
               DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            End
            Else
            Begin
               DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            End;

            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGORI').AsFloat;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat;
            If Abs(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat) <= 0.01 Then
            Begin
               DMCXC.cdsMovCxC2Clone.FieldByName('CCFCANCEL').AsDateTime := dtpFEmis.Date;
               DMCXC.cdsMovCxC2Clone.FieldByName('CCESTADO').Value := 'C';
            End;

            DMCXC.cdsMovCxC2Clone.FieldByName('CCTCAMPA').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCTCAMPA').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            If DMCXC.cdsMovCxC2Clone.FieldByName('CCESTADO').AsString = 'C' Then
            Begin
               DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := 'XX';
               If DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString = DMCXC.wsLet Then
               Begin
                  DMCXC.cdsMovCxC2Clone.FieldByName('SITID').AsString := DMCXC.wsCanCar;
               End;
            End
            Else
            Begin
               DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := '.';
            End;
            DMCXC.cdsPost(DMCXC.cdsMovCxC2Clone);
            DMCXC.cdsMovCxC2Clone.Post;
         End;

          //ACTUALIZA DOCUMENTOS ASIGNADOS A COBRADOR
         sSQL := ' SELECT * FROM CXC317 WHERE ' +
            ' CIAID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString) +
            ' AND DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) +
            ' AND CCSERIE=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString) +
            ' AND CCNODOC=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString) +
            ' AND CLIEID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CLIEID').AsString) +
            ' AND FLAGVAR=''.'' ';
         DMCXC.cdsDLiqCob.Close;
         DMCXC.cdsDLiqCob.DataRequest(sSQL);
         DMCXC.cdsDLiqCob.Open;
         DMCXC.cdsDLiqCob.First;
         While Not DMCXC.cdsDLiqCob.EOF Do
         Begin
            DMCXC.cdsDLiqCob.Edit;
            DMCXC.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsDLiqCob.FieldByName('LICOMTOABOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat;
            DMCXC.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat;

            DMCXC.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsDLiqCob.FieldByName('LICOMTOABOEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
            DMCXC.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat;

            DMCXC.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsDLiqCob.FieldByName('LICOMTOABOLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
            DMCXC.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat;

            DMCXC.cdsDLiqCob.FieldByName('FLAGVAR').AsString := DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString;

            DMCXC.cdsDLiqCob.Post;
            DMCXC.cdsDLiqCob.Next;
         End;

      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsMovCxC2Clone.Filtered := True;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');
   DMCXC.cdsMovCxC2.IndexFieldNames := xIndexAnt;
   DMCXC.cdsMovCxC2Clone.IndexFieldNames := xIndexAnt;
   DMCXC.cdsMovCxC2.First;
   DMCXC.cdsMovCxC2.EnableControls;
   DMCXC.cdsCanjes.EnableControls;
End;

Procedure TFLetras.dbgLetrasMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgLetras.BeginDrag(False);
End;

Procedure TFLetras.dbeTCLetExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If length(dbeTCLet.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Cambio');
      dbeTCLet.SetFocus;
      exit;
   End;

   dbeTCLet.Text := floattostr(strtofloat(dbeTCLet.Text));
   If strtofloat(dbeTCLet.Text) < 0 Then
   Begin
      ShowMessage('Tipo de Cambio debe ser Mayor a 0');
      dbeTCLet.Text := '';
      dbeTCLet.SetFocus;
      exit;
   End;
   DMCXC.cdsLetras.First;
   If FRound(DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 8, 3) <> FRound(strtofloat(dbeTCLet.Text), 8, 3) Then
   Begin
      While Not DMCXC.cdsLetras.eof Do
      Begin
         DMCXC.cdsLetras.Edit;
         DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat := FRound(strtofloat(dbeTCLet.Text), 8, 3);
         If DMCXC.cdsLetras.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         End;
         DMCXC.cdsLetras.Next;
      End;
      DMCXC.cdsLetras.First;
   End;
End;

Procedure TFLetras.bbtnBorraClick(Sender: TObject);
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      If xFlagGr Then
      Begin
         DMCXC.cdsLetras.CancelUpdates;
         DMCXC.cdsDetCxC.CancelUpdates;
         DMCXC.cdsCanjes.CancelUpdates;
         DMCXC.cdsDetCanje.CancelUpdates;

         DMCXC.cdsCCanje.Delete;
         DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
         DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

         DMCXC.cdsLetras.First;
         While Not DMCXC.cdsLetras.Eof Do
         Begin
            DMCXC.cdsLetras.Delete;
         End;
         DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

         InicializaClientDataSet;
         InicializaPies;
         InicializaDatos;
         EstadoDeForma(0, ' ', ' ');
      End
      Else
      Begin
         If Length(DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString) = 0 Then
         Begin
            DMCXC.cdsCCanje.CancelUpdates;
            InicializaClientDataSet;
            InicializaPies;
            InicializaDatos;
         End
         Else
         Begin
            DMCXC.cdsCCanje.CancelUpdates;
         End;
         EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
      End;
   End
   Else
   Begin
      DMCXC.cdsCCanje.CancelUpdates;
      EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   End;
End;

Procedure TFLetras.bbtnRegresaClick(Sender: TObject);
Begin
   EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);
End;

Procedure TFLetras.Z2bbtnNuevoClick(Sender: TObject);
Begin
   If MessageDlg('Ingresar Nuevo Canje' + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?  ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      DMCXC.cdsLetras.CancelUpdates;
      DMCXC.cdsDetCxC.CancelUpdates;
      DMCXC.cdsCanjes.CancelUpdates;
      DMCXC.cdsDetCanje.CancelUpdates;
      DMCXC.cdsCCanje.CancelUpdates;

      If (DMCXC.wModo = 'A') And (xFlagGr) Then
      Begin
         DMCXC.cdsCCanje.Delete;
         DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
         DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

         DMCXC.cdsLetras.First;
         While Not DMCXC.cdsLetras.Eof Do
         Begin
            DMCXC.cdsLetras.Delete;
         End;
         DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');
      End;
      InicializaClientDataSet;
      InicializaPies;
      InicializaDatos;
      pc1.ActivePage := ts1;
      EstadoDeForma(0, ' ', ' ');
   End;
End;

Procedure TFLetras.Z2bbtnAnulaClick(Sender: TObject);
Var
   xRegAct: TBookMark;
   sSIT, xWhere: String;
Begin
   If Not VerificaDocumentosPendientes Then
      Raise exception.Create(' Error :  Letras ya han sido Amortizadas ');

   If MessageDlg('Anular Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   xWhere := 'SITUAFLAG=''4''';
   sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUAID', xWhere, 'SITUAID');

   // Anula todas Las letras del canje
   DMCXC.cdsLetras.DisableControls;
   xRegAct := DMCXC.cdsLetras.GetBookmark;
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      DMCXC.SetHyst(dblcCia.Text, dblcTDoc.Text, DMCXC.cdsLetras.FieldByName('CCNODOC').AsString);
      DMCXC.cdsLetras.Edit;
      DMCXC.cdsLetras.FieldByName('SITID').AsString := sSIT;
      DMCXC.cdsLetras.FieldByName('CCFSITUA').AsDateTime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('CCUSER').Value := DMCXC.wUsuario;
      DMCXC.cdsLetras.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsLetras.FieldByName('CCESTADO').Value := 'A';
      DMCXC.cdsLetras.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
      DMCXC.cdsLetras.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsLetras.Next;
   End;
   DMCXC.cdsLetras.GotoBookmark(xRegAct);
   DMCXC.cdsLetras.FreeBookmark(xRegAct);
   DMCXC.cdsLetras.EnableControls;
   /////////////
   // Actualiza los Saldos de los Documentos Canjeados
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2Clone.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      If ExisteMovCxC(DMCXC.cdsCanjes.FieldByName('CIAID').AsString, DMCXC.cdsCanjes.FieldByName('CLIEID').AsString,
         DMCXC.cdsCanjes.FieldByName('DOCID').AsString, DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString, DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString) Then
      Begin
         DMCXC.cdsMovCxC2.Edit;

         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         End;
         DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsMovCxC2Clone.Setkey;
         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;

         If DMCXC.cdsMovCxC2Clone.Gotokey Then
         Begin
            DMCXC.cdsMovCxC2Clone.Edit;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat;
            DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := '.';
            If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString,
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString,
               DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString) Then
               DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := 'CO'
            Else
               DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := 'NA';

            DMCXC.cdsMovCxC2Clone.Post;
         End;
      End
      Else
      Begin
         xWhere := 'INSERT INTO CLG001(USERID,FREG,HREG,COMENT) ' +
            ' VALUES (' + QuotedStr(DMCXC.wUsuario) + ',CURRENT DATE,CURRENT TIME,' + QuotedStr('No se actualizó la el documento: ' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString) + ')';
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xWhere);
         Except
         End;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2Clone.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;
   /////////////
   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'A';
   DMCXC.cdsCCanje.Post;
   DMCXC.cdsCCanje.DataRequest(' Select * from CXC307 WHERE '
      + ' CIAID=' + QuotedStr(dblcCia.Text)
      + ' AND TCANJEID=' + QuotedStr('LC')
      + ' AND CANJE=' + QuotedStr(edtCanje.Text));
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');
   DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');
   DMCXC.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage(' Canje de Letras Anulado ');
End;

Function TFLetras.VerificaDocumentosPendientes: Boolean;
Begin
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      If DMCXC.cdsLetras.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         If FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsLetras.FieldByName('CCPAGLOC').AsFloat, 15, 2) <>
            FRound(DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat, 15, 2) Then
         Begin
            Result := False;
            Exit;
         End;
      End
      Else
      Begin
         If FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsLetras.FieldByName('CCPAGEXT').AsFloat, 15, 2) <>
            FRound(DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat, 15, 2) Then
         Begin
            Result := False;
            Exit;
         End;
      End;
      DMCXC.cdsLetras.Next;
   End;
   Result := True;
End;

Procedure TFLetras.Z2bbtnAceptaClick(Sender: TObject);
Var
   xRegAct: TBookMark;
   xTotMN, xTotME: Double;
   sUBI, xWhere, sSIT, xSitAnt, xSitNext, xNoDoc: String;
   sUBIANT, sSITANT: String;
   sImp: String;
Begin
   If DMCXC.cdsCanjes.RecordCount = 0 Then
      Raise exception.Create(' Error :  Falta registrar Documentos a Canjear');
   If DMCXC.cdsLetras.RecordCount = 0 Then
      Raise Exception.Create(' Error :  Falta registrar Letras');
   If Not VerificaTotal Then
      Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');
   If DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   xWhere := 'UBICAFLAG=''O''';

   sUBI := DMCXC.BuscaQry('dspTGE', 'CXC105', 'UBICAID', xWhere, 'UBICAID');

   xWhere := 'SITUAFLAG=''3''';
   sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   xWhere := 'SITUAFLAG=''5''';
   xSitNext := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   xWhere := 'SITUAFLAG=''1''';
   sImp := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   // VALIDA CADA UNA DE LAS LETRAS PARA VERIFICAR CAMBIO DE SITUACION
   DMCXC.cdsLetras.DisableControls;
   xRegAct := DMCXC.cdsLetras.GetBookmark;

   DMCXC.cdsLetras.First;

   If MessageDlg('Aceptar Letras' + chr(13) + '  ¿Esta Seguro?  ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      DMCXC.cdsLetras.GotoBookmark(xRegAct);
      DMCXC.cdsLetras.FreeBookmark(xRegAct);
      DMCXC.cdsLetras.EnableControls;
      exit;
   End;

   xTotMN := 0;
   xTotME := 0;

   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.eof Do
   Begin
      DMCXC.SetHyst(dblcCia.Text, dblcTDoc.Text, DMCXC.cdsLetras.FieldByName('CCNODOC').AsString);
      DMCXC.cdsLetras.Edit;
   //DMCXC.cdsLetras.FieldByName('SITID').AsString      := sSIT;
      DMCXC.cdsLetras.FieldByName('UBIID').AsString := sUBI;
   //DMCXC.cdsLetras.FieldByName('CCFSITUA').AsDatetime := DateS;
      DMCXC.cdsLetras.FieldByName('CCESTADO').Value := 'P';
      DMCXC.cdsLetras.FieldByName('CCUSER').Value := DMCXC.wUsuario;
      DMCXC.cdsLetras.FieldByName('CCFREG').AsDatetime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      xTotMN := xTotMN + DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat;
      xTotME := xTotME + DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat;
      DMCXC.cdsLetras.Post;
      DMCXC.cdsLetras.Next;
   End;
   DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

  //DE LA SITUACION '03' (ACEPTADO) SE PASA AUTOMATICAMENTE A LA SITUACION 10 (CARTERA)

 { DMCXC.cdsLetras.First;
  While not DMCXC.cdsLetras.eof do
  begin
   SetHyst(dblcCia.Text,dblcTDoc.Text, DMCXC.cdsLetras.FieldByName('CCNODOC').AsString);
   UpdLET (dblcCia.Text,
       DMCXC.cdsLetras.FieldByName('DOCID').AsString,
       DMCXC.cdsLetras.FieldByName('CCNODOC').AsString,
       DMCXC.cdsLetras.FieldByName('UBIID').AsString,
       xSitNext,
       '', '', '','', DateS,False,'',0,0);
   DMCXC.cdsLetras.Next;
  end;
   }
   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'P';
   DMCXC.cdsCCanje.Post;
   DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

   ActualizaPagadoMovCxP;

   GrabaDetCanje1;

   Filtracds(DMCXC.cdsMovCxC, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + DMCXC.cdsCCanje.FieldByName('NDDOC').AsString + '''' + ' and '
      + 'CCSERIE=' + '''' + DMCXC.cdsCCanje.FieldByName('NDSERIE').AsString + '''' + ' and '
      + 'CCNODOC=' + '''' + DMCXC.cdsCCanje.FieldByName('NDNUMERO').AsString + '''');

   DMCXC.cdsMovCxC.Edit;

   If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
   End
   Else
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   End;

   DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;
//CLG : 04/02/2002
   DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := 0;

   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'C';
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   DMCXC.SaldosAuxiliarCLG(DMCXC.cdsLetras.FieldByName('CIAID').AsString, DMCXC.cdsLetras.FieldByName('CCANOMES').AsString,
      DMCXC.cdsLetras.FieldByName('CLAUXID').AsString, DMCXC.cdsLetras.FieldByName('CLIEID').AsString,
      '=', xTotMN, xTotME, DMCXC.cdsCCanje.FieldByName('TMONID').AsString);

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);
   GeneraAsientoCxC302; // Documentos vs Letras
   DMCXC.cdsDetCxC.DataRequest('SELECT * FROM CXC302 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.text) +
      ' AND TCANJEID=''LC'' AND CCCANJE=' + QuotedStr(edtCanje.text));
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   ShowMessage(' Canje de Letras Aceptado ');
   DMCXC.cdsQry.Close;
End;

Procedure TFLetras.tnbDetalleChange(Sender: TObject; NewTab: Integer;
   Var AllowChange: Boolean);
Begin
{
   If tnbDetalle.ActivePage='  Documentos de Canje  ' then begin
      If DMCXC.cdsCanje.RecordCount=0 then begin
         tnbDetalle.ActivePage := '  Documentos de Canje  ';
         tnbDetalle.PageIndex  := 0;
         Raise Exception.Create(' No se han registrado Documentos ');
      end;

   end;

   bbtnSumatClick(Sender);
}
End;

Procedure TFLetras.dblcCiaExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);

   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
   End;
   If length(edtCia.Text) > 0 Then
   Begin
      //determina último número de registro incrementado en 1
      xWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and TCANJEID=' + '''' + 'LC' + '''';
      edtCanje.Text := DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'Canje', xWhere);
   End;
End;

Procedure TFLetras.dblcdClieRucExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;

   If length(dblcdClieRuc.Text) > 0 Then
   Begin
      edtClie.Text := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', 'CLAUXID=' + QuotedStr(dblcClAux.Text) + ' AND CLIERUC=' + QuotedStr(dblcdClieRuc.Text), 'CLIEDES');
      If length(edtClie.Text) = 0 Then
      Begin
         ShowMessage('Cliente no existe');
         dblcdClie.Text := '';
         dblcdClieRuc.Text := '';
         dblcdClie.SetFocus;
         exit;
      End;
   //dblcClAux.Text :=DMCXC.cdsQry.FieldByName('CLAUXID').Asstring;
      xSector := DMCXC.cdsQry.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsQry.FieldByName('ZONVTAID').AsString;
      xVeidMaes := DMCXC.cdsQry.FieldByName('VEID').AsString;

      DMCXC.cdsCCanje.Edit;
      DMCXC.cdsCCanje.FieldByName('CLIEID').AsString := DMCXC.cdsQry.FieldByName('CLIEID').AsString;
      DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString := DMCXC.cdsQry.FieldByName('CLAUXID').AsString;
      DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'T';
      DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
      DMCXC.cdsPost(DMCXC.cdsCCanje);
      DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');
      EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   End
   Else
   Begin
      edtClie.Text := '';
      dblcdClie.SetFocus;
   End;
End;

Procedure TFLetras.dblcTDocExit(Sender: TObject);
Var
   xFiltro, xWhere: String;
Begin
   If xCrea Then Exit;

   xWhere := 'DocId=' + '''' + dblcTDoc.Text + ''''
      + ' and DOC_FREG=' + '''' + FRegistros.xTipoProv + '''';
   edtTDoc.Text := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'DocDes');
   If length(edtTDoc.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Documento');
      dblcTDoc.SetFocus;
      Exit;
   End;

   If length(edtTDoc.Text) > 0 Then
   Begin
      xFiltro := 'TDIARID=' + QuotedStr(DMCXC.cdsQry.FieldByName('TDIARID').AsString);
      If length(DMCXC.cdsQry.FieldByName('TDIARID2').AsString) > 0 Then
      Begin
         xFiltro := xFiltro + ' OR TDIARID=' + '''' + DMCXC.cdsQry.FieldByName('TDIARID2').AsString + '''';
      End;
      DMCXC.cdsTDiario.Filter := '';
      DMCXC.cdsTDiario.Filter := xFiltro;
      DMCXC.cdsTDiario.Filtered := true;
      If DMCXC.cdsTDiario.Recordcount = 1 Then
      Begin
         dblcTDiario.Text := DMCXC.cdsQry.FieldByName('TDIARID').AsString;
         edtdiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);

         dblcTDiario.Enabled := false;
         DMCXC.cdsCCanje.Edit;
         DMCXC.cdsCCanje.FieldByName('TDIARID').AsString := DMCXC.cdsQry.FieldByName('TDIARID').AsString;
      End
      Else
      Begin
         dblcTDiario.Enabled := true;
         edtdiario.Clear;
      End;
   End;
End;

Procedure TFLetras.dblcTDiario1Exit(Sender: TObject);
Begin
   If length(DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario1.Text)) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiario1.SetFocus;
   End;
   xNDTDiario := dblcTDiario1.text;
End;

Procedure TFLetras.btnActRegClick(Sender: TObject);
Begin
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   InsertaLetra;
   xModoL := 'A';
End;

Procedure TFLetras.InsertaLetra;
Var
   xxWhere: String;
   xxNoReg: String;
Begin
   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', dblcTDiario.Text);
   xxNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
   xxNoReg := Strzero(xxNoReg, DMCXC.cdsLetras.FieldByName('CCNOREG').Size);

   DMCXC.cdsLetras.Insert;
   DMCXC.cdsLetras.FieldByName('CIAID').AsString := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
   DMCXC.cdsLetras.FieldByName('CCNRENOV').AsInteger := 0;
   DMCXC.cdsLetras.FieldByName('CCNRENOVA').AsInteger := 0;
   DMCXC.cdsLetras.FieldByName('TCANJEID').AsString := 'LC';
   DMCXC.cdsLetras.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsLetras.FieldByName('DOCID').AsString := DMCXC.cdsCCanje.FieldByName('DOCID').AsString;
   xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + dblcTDoc.Text + '''';
   DMCXC.cdsLetras.FieldByName('CCNODOC').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   DMCXC.cdsLetras.FieldByName('CCNOREG').AsString := xxNoReg;
   DMCXC.cdsLetras.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsLetras.FieldByName('TDIARID').AsString := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
   DMCXC.cdsLetras.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
   DMCXC.cdsLetras.FieldByName('CLIEID').Value := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsLetras.FieldByName('TVTAID').AsString := DMCXC.DisplayDescrip('FAC106', 'TVTAID', 'ZVTAID', (DMCXC.DisplayDescrip('TGE204', 'ZONVTAID', 'CLIEID', DMCXC.cdsCCanje.FieldByName('CLIEID').AsString)));
   DMCXC.cdsLetras.FieldByName('ZVTAID').AsString := DMCXC.DisplayDescrip('TGE204', 'ZONVTAID', 'CLIEID', DMCXC.cdsCCanje.FieldByName('CLIEID').AsString);
   DMCXC.cdsLetras.FieldByName('FLAGVAR').AsString := '.'; // NO PONER CLEAR     CLG
   DMCXC.cdsLetras.FieldByName('CLIERUC').Value := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
   DMCXC.cdsLetras.FieldByName('CCSERIE').Value := '000';
   DMCXC.cdsLetras.FieldByName('VEID').AsString := xVeidMaes;
   dbeLetra.Enabled := True;
   dbeLetra.SetFocus;
End;

Procedure TFLetras.bbtnRegOkClick(Sender: TObject);
Var
   xTotal: Double;
   xxTotGas, xxTotInt, xxTotIGV, xxTotal: Double;

Begin
   If Length(dbeLetra.Text) = 0 Then
   Begin
      dbeLetra.SetFocus;
      Raise Exception.Create('Error :  Falta Registrar Número de Letra');
   End;
   If dtpFVcmto.Date = 0 Then
   Begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Error :  Falta Registrar Fecha de Vencimiento');
   End;
   If dtpFVcmto.Date < dtpFValor.Date Then
   Begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Error :  Fecha de Vencimiento' + chr(13)
         + 'no puede ser menor que Fecha de Giro');
   End;
   xTotal := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat
      + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat
      + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat
      + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat;
   If xTotal <= 0 Then
   Begin
      dbeImp.SetFocus;
      Raise Exception.Create('Error :  Falta Registar Montos');
   End;

   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
   If DMCXC.cdsLetras.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
   End;

   DMCXC.cdsLetras.FieldByName('CC_CONTA').AsString := 'N';
   DMCXC.cdsLetras.FieldByName('CCFEMIS').Value := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
   DMCXC.cdsLetras.FieldByName('CCFVALOR').Value := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
   DMCXC.cdsLetras.FieldByName('CCFCANJE').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
   DMCXC.cdsLetras.FieldByName('CTATOTAL').AsString := DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString;
   DMCXC.cdsLetras.FieldByName('CCPTOTOT').AsString := DMCXC.cdsCCanje.FieldByName('CPTOID').AsString;
   DMCXC.cdsLetras.FieldByName('CCFCMPRB').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
   DMCXC.cdsLetras.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsLetras.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsLetras.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsLetras.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsLetras.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsLetras.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsLetras.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsLetras.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsLetras.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
   DMCXC.cdsLetras.Post;

   xxTotGas := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'CCGASFIN' + ')', '');
   xxTotInt := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'INTERES' + ')', '');
   xxTotIGV := OperClientDataSet(DMCXC.cdsLetras, 'SUM(' + 'CCIGV' + ')', '');
   xxTotal := FRound((xxTotGas + xxTotInt + xxTotIGV), 15, 2);
   DMCXC.cdsCCanje.Edit;
   If xxTotGas <> 0 Then
      DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat := xxTotGas
   Else
      DMCXC.cdsCCanje.FieldByName('CJGASFIN').Clear;
   If xxTotInt <> 0 Then
      DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat := xxTotInt
   Else
      DMCXC.cdsCCanje.FieldByName('CJINTERES').Clear;
   If xxTotIGV <> 0 Then
      DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat := xxTotIGV
   Else
      DMCXC.cdsCCanje.FieldByName('CJIGV').Clear;
   If xxTotal <> 0 Then
      DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat := xxTotal
   Else
      DMCXC.cdsCCanje.FieldByName('CJTOTORI').Clear;

   dbgLetras.setFocus;
   If xModoL = 'A' Then
      InsertaLetra
   Else
   Begin
      pnlRegistro.Visible := False;
   End;
//CLG: 04/02/2002
//   bbtnSumatClick(Sender);
//     bbtnCalculaClick(Sender);
End;

Procedure TFLetras.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If FLetras.activecontrol Is twwdbgrid Then
      Exit;
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFLetras.bbtnRegCancClick(Sender: TObject);
Begin
   If xModoL = 'A' Then
   Begin
      DMCXC.cdsLetras.Delete;
      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');
   End
   Else
   Begin
      DMCXC.cdsLetras.Cancel;
   End;
   pnlRegistro.Visible := False;

   bbtnSumatClick(Sender);
   dbgLetras.setFocus;
End;

Procedure TFLetras.dbgLetrasDblClick(Sender: TObject);
Begin
   If btnActReg.Enabled Then
   Begin
      xModoL := 'M';
      DMCXC.cdsLetras.Edit;
      pnlRegistro.Visible := True;
      dbeLetra.Enabled := False;
      dtpFVcmto.SetFocus;
   End;
End;

Procedure TFLetras.dbgLetrasKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If Not btnActReg.Enabled Then Exit;

   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsLetras.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');
      End;
   End;
End;

Procedure TFLetras.bbtnRegresaEnter(Sender: TObject);
Begin
//   dbgDocCanjeColExit2(Sender);
End;

Procedure TFLetras.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFLetras.dbgDocCanjeColExit2(Sender: TObject);
Begin
  //** 21/02/2001 - pjsv
   ModificaMontos;
//   bbtnSumatClick(Sender);
  //**
End;

Procedure TFLetras.dbgDocCanjeDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLetras.dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
Begin
   If Target = dbgPendientes Then
   Begin
      DMCXC.xFlagCal := False;
      DMCXC.cdsMovCxC2.Filtered := False;
      DMCXC.cdsMovCxC2Clone.Filtered := False;
      DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
      DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
      DMCXC.cdsMovCxC2.SetKey;
{      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString    := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString  := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString  := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;}
      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2Clone.SetKey;
{        DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString    := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
        DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString  := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
        DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
        DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString  := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;}

         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;

         DMCXC.cdsMovCxC2Clone.Edit;
         DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := '.';
         If DMCXC.cdsMovCxC2Clone.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2)
         Else
         Begin
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         End;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);

         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2)
         Else
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         End;
         DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);

         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Delete;
         End;

         DMCXC.cdsCanjes.Delete;
//         DMCXC.cdsCanjes.Refresh;
      End;
      DMCXC.cdsMovCxC2.Filtered := True;
      DMCXC.cdsMovCxC2Clone.Filtered := True;
      bbtnSumatClick(Sender);
      dbgPendientes.RefreshDisplay;
      DMCXC.xFlagCal := True;
   End;
End;

Procedure TFLetras.dbgDocCanjeKeyPress2(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      dbgDocCanjeColExit2(Sender);
   End;
End;

Procedure TFLetras.dbgDocCanjeMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFLetras.dbgPendientesDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLetras.dbgPendientesEndDrag2(Sender, Target: TObject; X,
   Y: Integer);
Var
   i: Integer;
 //  23/05/2001 CIM
   xCond, xFlag: String;
   xNLet, xNDias: Integer;
 ///////////////////////
Begin
   If Target = dbgDocCanje Then
   Begin
      DMCXC.cdsMovCxC2.DisableControls;
      // Verifica que Documentos No Esten Pendientes de Actualización
      For i := 0 To dbgPendientes.SelectedList.Count - 1 Do
      Begin
         dbgPendientes.datasource.dataset.GotoBookmark(dbgPendientes.SelectedList.items[i]);
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2) <>
               FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgPendientes.SelectedList.clear;
               DMCXC.cdsMovCxC2.First;
               DMCXC.cdsMovCxC2.EnableControls;
               Exit;
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2) <>
               FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgPendientes.SelectedList.clear;
               DMCXC.cdsMovCxC2.First;
               DMCXC.cdsMovCxC2.EnableControls;
               Exit;
            End;
         End;
      End; //FOR

      DMCXC.cdsCanjes.SetKey;
      DMCXC.cdsCanjes.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
      DMCXC.cdsCanjes.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
      DMCXC.cdsCanjes.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
      DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
      DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
      If Not DMCXC.cdsCanjes.GotoKey Then
      Begin ///**CIM 22/05/2001 Condiciones añadidas para Fact. Venta por ordenes de JCC
         If DMCXC.cdsMovCxC2.FieldByName('CCFLAGVTA').AsString = 'S' Then
         Begin
            ;
         {   xCond := DMCXC.cdsMovCxC2.FieldByName('CCOMERID').AsString;
            if (wCondicion = true) then
            begin //Pasan solo Doc. de la misma condicion
               if  PerteneceCondicionPago(xCond) then
               begin
                  ShowMessage('El Documento seleccionado no pertenece'+#13+' a la misma Condicion Pago');
                  DMCXC.cdsCanjes.EnableControls;
                  exit;
               end;
               xNLet := strtoint(DMCXC.DisplayDescrip('TGE180','DCCOMNLET','CCOMERID',xCond));
               xNDias := DMCXC.cdsQry2.FieldByName('DCCOMFDIAS').AsInteger;
               DMCXC.cdsCCanje.FieldByName('CJNUMLET').AsInteger := xNLet;
               //CLG:04/04/2002
               //if (xNLet >0) then
               //    dbenLet.Enabled := false;
               DMCXC.cdsCCanje.FieldByName('CJDIAS').AsInteger := xNDias;
               //CLG:04/04/2002
               //if xNDias >0 then
               //    dbeDias.Enabled := false;

            end;//if condicion}
         End; // if flag
      /////////////////////////////////////////////////////////
         DMCXC.cdsCanjes.Insert;
         DMCXC.cdsCanjes.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjes.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;
         DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAAAA').AsString;
         DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DMCXC.cdsCanjes.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIERUC').AsString;
         DMCXC.cdsCanjes.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjes.FieldByName('DOCABR').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCABR').AsString;
         DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
         DMCXC.cdsCanjes.FieldByName('TCANJEID').Value := 'LC';
         DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString := edtCanje.Text;
         DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime := dtpFComp.Date;
         DMCXC.cdsCanjes.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString;
         DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat := strtofloat(dbeTCLet.Text);
         DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCTCAMAJ').AsFloat; //DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat;
         //** 21/02/2001 - pjsv - se saca por indicaciones de O.B.
         {If dblcTMon.Text=DMCXC.wTMonLoc then begin
            DMCXC.cdsCanjesCCSalOri.Value := FRound(DMCXC.cdsMovCxC2CCMtoLoc.Value-DMCXC.cdsMovCxC2CCPagLoc.Value,15,2);
            DMCXC.cdsCanjesCCSalLoc.Value := DMCXC.cdsCanjesCCSalOri.Value;
            DMCXC.cdsCanjesCCSalExt.Value := FRound(DMCXC.cdsCanjesCCSalOri.Value/DMCXC.cdsCanjesCCTCamCje.Value,15,2);
            end
         else begin
            DMCXC.cdsCanjesCCSalOri.Value := FRound(DMCXC.cdsMovCxC2CCMtoExt.Value-DMCXC.cdsMovCxC2CCPagExt.Value,15,2);
            DMCXC.cdsCanjesCCSalExt.Value := DMCXC.cdsCanjesCCSalOri.Value;
            DMCXC.cdsCanjesCCSalLoc.Value := FRound(DMCXC.cdsCanjesCCSalOri.Value*DMCXC.cdsCanjesCCTCamCje.Value,15,2);
         end;}
         DMCXC.xFlagCal := False;
{                If DMCXC.BuscaQry('dspTGE','TGE110','DOC_FREG','DOCID='+quotedstr(DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString),'DOC_FREG') = 'N' then // Nota de CREDITO
                 begin
                  DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat  := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat * -1,15,2);
                  DMCXC.xFlagCal := False;
                  DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat  := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat * -1,15,2);
                  DMCXC.xFlagCal := False;
                  DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat  := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * -1,15,2);
                 end
                else
                 begin
                  DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat  := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat,15,2);
                  DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat  :=  FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat,15,2);
                  DMCXC.xFlagCal := False;
                  DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat  := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat,15,2);
                  DMCXC.xFlagCal := False;
                 end;
}
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat, 15, 2);
         DMCXC.xFlagCal := False;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat, 15, 2);
         DMCXC.xFlagCal := False;

         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
//               DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat, 15, 2);
            DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat, 15, 2);
         End;
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
         Begin
//               DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat, 15, 2);
            DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat, 15, 2);
         End;

         //**
         DMCXC.xFlagCal := False;
//         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat;
         DMCXC.xFlagCal := False;
//         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat;

         DMCXC.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsCanjes.FieldByName('CCUSER').Value := DMCXC.wUsuario;
         DMCXC.cdsCanjes.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
         DMCXC.cdsCanjes.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
         DMCXC.cdsCanjes.FieldByName('CCMM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCMM').AsString;
         DMCXC.cdsCanjes.FieldByName('CCDD').AsString := DMCXC.cdsMovCxC2.FieldByName('CCDD').AsString;
         DMCXC.cdsCanjes.FieldByName('CCTRI').AsString := DMCXC.cdsMovCxC2.FieldByName('CCTRI').AsString;
         DMCXC.cdsCanjes.FieldByName('CCSEM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSEM').AsString;
         DMCXC.cdsCanjes.FieldByName('CCSS').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSS').AsString;
         DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAATRI').AsString;
         DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAASEM').AsString;
         DMCXC.cdsCanjes.FieldByName('CCAASS').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAASS').AsString;
         DMCXC.cdsCanjes.FieldByName('CPTOTOT').AsString := DMCXC.cdsMovCxC2.FieldByName('CCPTOTOT').AsString;
         DMCXC.cdsCanjes.FieldByName('CTATOTAL').AsString := DMCXC.cdsMovCxC2.FieldByName('CTATOTAL').AsString;
         DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFEMIS').AsDateTime;
         DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFVCMTO').AsDateTime;
         DMCXC.cdsCanjes.Post;

         DMCXC.cdsCanjesClone.Insert;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAAAA').AsString := DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIERUC').AsString := DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TCANJEID').AsString := DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCCANJE').AsString := DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCFCANJE').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime;
         DMCXC.cdsCanjesClone.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCTCAMCJE').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCTCAMDOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCESTADO').AsString := DMCXC.cdsCanjes.FieldByName('CCESTADO').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCUSER').AsString := DMCXC.cdsCanjes.FieldByName('CCUSER').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCFREG').AsString := DMCXC.cdsCanjes.FieldByName('CCFREG').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCHREG').AsString := DMCXC.cdsCanjes.FieldByName('CCHREG').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCMM').AsString := DMCXC.cdsCanjes.FieldByName('CCMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCDD').AsString := DMCXC.cdsCanjes.FieldByName('CCDD').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCTRI').AsString := DMCXC.cdsCanjes.FieldByName('CCTRI').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSEM').AsString := DMCXC.cdsCanjes.FieldByName('CCSEM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSS').AsString := DMCXC.cdsCanjes.FieldByName('CCSS').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAATRI').AsString := DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAASEM').AsString := DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAASS').AsString := DMCXC.cdsCanjes.FieldByName('CCAASS').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CPTOTOT').AsString := DMCXC.cdsCanjes.FieldByName('CPTOTOT').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CTATOTAL').AsString := DMCXC.cdsCanjes.FieldByName('CTATOTAL').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCFEMIS').AsDateTime := DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime;
         DMCXC.cdsCanjesClone.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime;
         DMCXC.cdsCanjesClone.Post;

         DMCXC.cdsMovCxC2Clone.Filtered := False;

         DMCXC.cdsMovCxC2Clone.Setkey;
{         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString    := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString  := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString  := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;}

         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;

         DMCXC.cdsMovCxC2Clone.Gotokey;
         Begin
            DMCXC.cdsMovCxC2Clone.Edit;
            DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := 'XX';
            DMCXC.cdsMovCxC2Clone.Post;
            DMCXC.cdsMovCxC2Clone.Filter := 'FlagVar<>' + '''' + 'XX' + '''' + ' AND UBIID=' + QuotedStr(DMCXC.wsOfi) + ' and (CCSALLOC>0 or TCANJEID=''NC'')and '
               + 'CCCANJE<>' + '''' + edtCanje.Text + '''';
            DMCXC.cdsMovCxC2Clone.Filtered := True;

         End;
         DMCXC.cdsMovCxC2Clone.Filtered := True;

         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
         DMCXC.cdsMovCxC2.Post;
         DMCXC.cdsMovCxC2.Filter := 'FlagVar<>' + '''' + 'XX' + '''' + ' AND UBIID=' + QuotedStr(DMCXC.wsOfi) + ' and (CCSALLOC>0 or TCANJEID=''NC'')and '
            + 'CCCANJE<>' + '''' + edtCanje.Text + '''';
         DMCXC.cdsMovCxC2.Filtered := True;
      End;
      DMCXC.cdsMovCxC2.EnableControls;
   End;
   bbtnSumatClick(Sender);
   DMCXC.xFlagCal := True;
End;

Procedure TFLetras.dbgPendientesMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgPendientes.BeginDrag(False);
End;

Procedure TFLetras.ts2Enter(Sender: TObject);
Begin
   If pnlDatos.Enabled Then
      dbeNLet.SetFocus;
   //CIM
{     if (dbeNLet.Enabled = false) then
        dbeDias.SetFocus
     else if (dbeDias.Enabled = false) then
             dbeLetIni.SetFocus
          else  dbeNLet.SetFocus;
   end;  }
////////////////////////////////
End;

Procedure TFLetras.bbtnDatosClick(Sender: TObject);
Begin
   If Not pnlDatos.Visible Then
   Begin
      pnlDatos.Visible := True;
      dbeNLet.SetFocus;
   End;
End;

Procedure TFLetras.DetalleLetra;
Begin
   DMCXC.cdsLetras.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsLetras.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsLetras.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsLetras.FieldByName('TVTAID').AsString := DMCXC.DisplayDescrip('FAC106', 'TVTAID', 'ZVTAID', (DMCXC.DisplayDescrip('TGE204', 'ZONVTAID', 'CLIEID', DMCXC.cdsCCanje.FieldByName('CLIEID').AsString)));
   DMCXC.cdsLetras.FieldByName('ZVTAID').AsString := DMCXC.DisplayDescrip('TGE204', 'ZONVTAID', 'CLIEID', DMCXC.cdsCCanje.FieldByName('CLIEID').AsString);
   DMCXC.cdsLetras.FieldByName('FLAGVAR').AsString := '.'; //NO PONER CLEAR     CLG
   DMCXC.cdsLetras.FieldByName('COMPROMET').AsString := 'NA'; //NO PONER CLEAR     CLG
   DMCXC.cdsLetras.FieldByName('TMONID').AsString := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
   DMCXC.cdsLetras.FieldByName('CIAID').AsString := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
   DMCXC.cdsLetras.FieldByName('TCANJEID').AsString := 'LC';
   DMCXC.cdsLetras.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsLetras.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsLetras.FieldByName('TDIARID').AsString := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
  //DMCXC.cdsLetras.FieldByName('CCNOREG').AsString   := dbeNoReg.Text;
   DMCXC.cdsLetras.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
   DMCXC.cdsLetras.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsLetras.FieldByName('CLIEDES').AsString := edtClie.Text;
   DMCXC.cdsLetras.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
   DMCXC.cdsLetras.FieldByName('DOCID').AsString := DMCXC.cdsCCanje.FieldByName('DOCID').AsString;
   DMCXC.cdsLetras.FieldByName('CCSERIE').Value := '000'; //CJFCanje
   DMCXC.cdsLetras.FieldByName('CCFEMIS').Value := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
   DMCXC.cdsLetras.FieldByName('CCFVALOR').Value := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
   DMCXC.cdsLetras.FieldByName('TMONID').AsString := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
   DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DMCXC.cdsLetras.FieldByName('CCTCAMAJ').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
//   DMCXC.cdsLetrasCCEstado.ValUE  := 'I';
   DMCXC.cdsLetras.FieldByName('CC_CONTA').Value := 'N';

   DMCXC.cdsLetras.FieldByName('CCFCANJE').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDatetime;
   DMCXC.cdsLetras.FieldByName('CTATOTAL').AsString := DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString;
   DMCXC.cdsLetras.FieldByName('CCPTOTOT').AsString := DMCXC.cdsCCanje.FieldByName('CPTOID').AsString;
   DMCXC.cdsLetras.FieldByName('CCFCMPRB').AsDatetime := DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDatetime;
   DMCXC.cdsLetras.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsLetras.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsLetras.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsLetras.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsLetras.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsLetras.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsLetras.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsLetras.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsLetras.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
End;

Procedure TFLetras.bbtnCreaLClick(Sender: TObject);
Var
   xMonto, xImporte, xTotAcum: Double;
   xxNTemLe: String;
   I, xNLet, xIncDia, xxNumLet: Integer;
   xDias: TDate;
   xxWhere, sSQL, xxNoReg, xxNLetra: String;
Begin
   pnlLetra.BringToFront;
   pnlLetra.Visible := true;
   dblcCond.Visible := false;
   rgTipo.ItemIndex := -1;

{	 if Length(edtTotal.Text)=0 then Exit;
  if FRound(StrtoFloat(edtTotal.Text),15,2)<=0 then Exit;
  if Length(dbeDias.Text)=0 then Exit;

  if DMCXC.cdsLetras.RecordCount>0 then
   if MessageDlg(' Existen Letras Generadas '+chr(13)+chr(13)
          +'¿ Desea Regenerar letras ?',
    mtConfirmation, [mbYes, mbNo], 0)=mrNo then Exit;

  Screen.Cursor:=crHourGlass;
  DMCXC.cdsLetras.First;
  while not DMCXC.cdsLetras.Eof do
  begin
   DMCXC.cdsLetras.Delete;
  end;
  DMCXC.AplicaDatos( DMCXC.cdsLetras, 'Letras'  );

  xMonto   := FRound(StrtoFloat(edtTotal.Text),15,2);
  xDias    := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
  xIncDia  := StrtoInt( Trim(dbeDias.Text) );
  xNLet    := StrtoInt( Trim(dbeNlet.Text) );
  xxNLetra := dbeLetIni.Text;

  if DMCXC.wModo='A' then
  begin
   xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
        + 'DOCID='  +''''+dblcTDoc.Text+'''';
   DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
  end;

  xxNLetra := dbeLetIni.Text;

  xTotAcum := 0;
  xImporte := FRound( (xMonto / xNLet), 15,2 );

  xxNoReg := DMCXC.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes);
  xxNoReg := StrZero( xxNoReg, DMCXC.cdsLetras.FieldByName('CCNOREG').Size );

  xxNumLet:= StrToInt( Trim( dbeLetIni.Text ) );

  For I:=1 to xNLet do
  begin
    xxNLetra:= '';
    while Length(xxNLetra)=0 do
    begin
     xxNTemLe:= IntToStr( xxNumLet ) ;
     xxNLetra:= StrZero( xxNTemLe, Length(xxNTemLe) );
     xxNumLet := xxNumLet+1;
     if not BuscaCxCLet(dblcCia.Text,dblcTDoc.Text,xxNLetra) then
     begin
       Break;
     end;
     xxNLetra:= '';
    end;

    xDias   := xDias + xIncDia;
    DMCXC.cdsLetras.Insert;
    DetalleLetra;
    DMCXC.cdsLetras.FieldByName('VEID').AsString:=xVeidMaes;
       DMCXC.cdsLetras.FieldByName('COMPROMET').AsString:='NA';
    DMCXC.cdsLetras.FieldByName('CCNRENOV').AsInteger:=0;
    DMCXC.cdsLetras.FieldByName('CCNRENOVA').AsInteger:=0;

    DMCXC.cdsLetras.FieldByName('CCNOREG').AsString    := xxNoReg;
    DMCXC.cdsLetras.FieldByName('CCFVCMTO').AsDatetime := xDias;
    DMCXC.cdsLetras.FieldByName('CCNODOC').AsString    := xxNLetra;
    If I=xNLet then
    begin
     DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat:= FRound( xMonto-xTotAcum,15,2)
    end
    else
    begin
     DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat:= FRound( xImporte, 15, 2 );
    end;
    xTotAcum:= xTotAcum + DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
    xTotAcum:= FRound( xTotAcum, 15, 2 );
    xxNoReg := StrZero( IntToStr(StrToInt(xxNoReg)+1), DMCXC.cdsLetras.FieldByName('CCNOREG').Size );

    DMCXC.cdsLetras.FieldByName('CCMTOORI').Value := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
    If DMCXC.cdsCCanje.FieldByName('TMONID').AsString=DMCXC.wTMonLoc then
    begin
     DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat,15,2);
     DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat/DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat,15,2 );
     DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat,15,2);
     DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat,15,2);
     DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat/DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat,15,2 );
    end
    Else
    begin
     DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat*DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat,15,2 );
     DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat,15,2);
     DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat,15,2);
     DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat*DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat,15,2 );
     DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat:= FRound( DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat,15,2);
    end;

    DMCXC.cdsLetras.Post;
  end;

  DMCXC.AplicaDatos( DMCXC.cdsLetras, 'Letras'  );

  Filtracds( DMCXC.cdsLetras, 'Select * from CXC301 Where '
            + 'CIAID='   +''''+dblcCia.Text +''''+' and '
            + 'TCANJEID='+''''+'LC'         +''''+' and '
            + 'CCCANJE=' +''''+edtCanje.text+'''' );

  if (DMCXC.SRV_D = 'DB2NT') or (DMCXC.SRV_D = 'DB2400') then
  begin
  sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
     ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
     ' Z1.TVTADES FROM CXC301 L '+
     ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID '+
     ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID '+
     ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID '+
     ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID '+
     ' WHERE L.CIAID='+QuotedStr(dblcCia.Text)+
     ' and L.TCANJEID='+QuotedStr('LC')+
     ' and L.CCCANJE='+QuotedStr(edtCanje.text);
  end;
  if DMCXC.SRV_D='ORACLE' then
  begin
  sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, '+
     ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, '+
     ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
     ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
     ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 '+
     ' WHERE L.CIAID='+QuotedStr(dblcCia.Text)+
     ' and L.TCANJEID='+QuotedStr('LC')+
     ' and L.CCCANJE='+QuotedStr(edtCanje.text)+
     ' and L.CLIEID=C.CLIEID(+) '+
     ' and L.TMONID=M.TMONID(+) '+
     ' and C.ZONVTAID=Z.ZVTAID(+) '+
     ' and Z.ZVTAID=Z1.TVTAID(+) ';
  end;

  DMCXC.cdsQry4.Close;
  DMCXC.cdsQry4.Datarequest(sSQL);
  DMCXC.cdsQry4.Open;

  bbtnSumatClick(Sender);
  Screen.Cursor:=crDefault;}
End;

Procedure TFLetras.pc1Change(Sender: TObject);
Begin
   bbtnSumatClick(Sender);
End;

Procedure TFLetras.bbtnCalculaClick(Sender: TObject);
Var
   xInteres, xFactor, xTotLet, xTotInt, xAcumGas: Double;
   xNLet, xCont: Integer;
   xxNLetra: String;
   xDias, xIntLet, xIGVLet, xIGVGas, xGastos, xImpGas, xTotIGV: Double;
   xIGV: double;
Begin
   If DMCXC.cdsLetras.RecordCount = 0 Then
   Begin
      ShowMessage('Debe generar primero las Letras en un estado primario');
      Exit;
   End;

   If (DMCXC.cdsLetras.RecordCount <> 0) And (DMCXC.cdsLetras.RecordCount <> DMCXC.cdsCCanje.FieldByName('CJNUMLET').AsInteger) Then
   Begin
      ShowMessage('Número de Letras por calcular no coincide con Número de letras calculadas.' + #13 + ' Genere nuevamente las letras');
      Exit;
   End;
   xIGV := StrToFloat(DMCXC.DisplayDescrip('TGE128', 'TASA', 'TIPDET', 'I1')) / 100;

   If FRound(StrtoFloat(edtTotal.Text), 15, 2) <= 0 Then Exit;

   If Length(dbePInt.Text) > 0 Then
      If rgTiempo.ItemIndex < 0 Then
         Raise Exception.Create('Falta Registrar Mensual/Anual');

   DMCXC.cdsLetras.First;
   If DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat > 0 Then
      If MessageDlg(' Existen Letras Calculadas ' + chr(13) + chr(13)
         + '¿ Desea ReCalcular letras ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   xNLet := StrtoInt(Trim(dbeNlet.Text));
   xxNletra := dbeLetIni.Text;
   xInteres := 0;
   If Length(dbePInt.text) > 0 Then
      xInteres := FRound(StrtoFloat(dbePInt.Text), 15, 2);
   xAcumGas := 0;
   xTotInt := 0;
   xTotIGV := 0;
   xGastos := FRound((DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat + DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat +
      DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat + DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat), 15, 2);
   xImpGas := FRound((xGastos / xNLet), 15, 2);
   xCont := 0;
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      xCont := xCont + 1;
      DMCXC.cdsLetras.Edit;
      DMCXC.cdsLetras.FieldByName('INTERES').AsFloat := 0;
      DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat := 0;

      If xInteres > 0 Then
      Begin
         xDias := DMCXC.cdsLetras.FieldByName('CCFVCMTO').Value - DMCXC.cdsLetras.FieldByName('CCFVALOR').Value;
         If rgTiempo.ItemIndex = 0 Then
            xFactor := Power((1 + xInteres / 100), (xDias / 30)) - 1
         Else
         Begin
            xFactor := Power((1 + xInteres / 100), (xDias / 360)) - 1
         End;
         xIntLet := FRound(DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat * xFactor, 15, 2);
         xIGVLet := FRound((xIntLet * xIGV), 15, 2);
         DMCXC.cdsLetras.FieldByName('INTERES').AsFloat := FRound(xIntLet, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat := FRound((DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat + xIGVLet), 15, 2);
      End;

      If xCont = DMCXC.cdsLetras.RecordCount Then
         DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat := FRound(xGastos - xAcumGas, 15, 2)
      Else
      Begin
         DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat := xImpGas;
      End;

      xIGVGas := FRound((DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat * 0.18), 15, 2);
      DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat := FRound((DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat + xIGVGas), 15, 2);

      xTotLet := FRound((DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat
         + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat), 15, 2);

      xTotInt := FRound((xTotInt + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat), 15, 2);
      xTotIGV := FRound((xTotIGV + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat), 15, 2);

      xAcumGas := FRound(xAcumGas + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat, 15, 2);

      DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := xTotLet;
      If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      End
      Else
      Begin
         DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
      End;
      DMCXC.cdsLetras.Next;
   End;

   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat := xTotInt;
   DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat := xTotIGV;
   DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat := xGastos + xTotInt + xTotIGV;
   If rgTiempo.ItemIndex = 0 Then
      DMCXC.cdsCCanje.FieldByName('CJINTTIP').AsString := '0'
   Else
   Begin
      DMCXC.cdsCCanje.FieldByName('CJINTTIP').AsString := '1';
   End;
   If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsCCanje.FieldByName('CJTOTLOC').AsFloat := FRound(DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat, 15, 2);
      DMCXC.cdsCCanje.FieldByName('CJTOTEXT').AsFloat := FRound(DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat / DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsCCanje.FieldByName('CJTOTLOC').AsFloat := FRound(DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat * DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
      DMCXC.cdsCCanje.FieldByName('CJTOTEXT').AsFloat := FRound(DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat, 15, 2);
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFLetras.dbePIntExit(Sender: TObject);
Begin
   If (rgTiempo.ItemIndex = -1) And (Length(dbePInt.Text) > 0) Then
      rgTiempo.ItemIndex := 0;
End;

Procedure TFLetras.Z2bbtnGeneraClick(Sender: TObject);
Begin
   DMCXC.cdsDoc.Filter := 'DOCID=' + QuotedStr(DMCXC.wsNDe);
   DMCXC.cdsDoc.Filtered := True;

   DMCXC.cdsQry12.Close;
   DMCXC.cdsQry12.DataRequest('SELECT * FROM CXC208 WHERE CIAID=' + QuotedStr(dblcCia.text)
      + ' AND DOCID=' + QuotedStr(DMCXC.wsNDe) + ' AND TMONID=' + QuotedStr(dblcTMon.text));
   DMCXC.cdsQry12.Open;

   If DMCXC.cdsQry12.RecordCount = 0 Then
      Raise Exception.Create('No existen conceptos de Notas de Debito de esta Moneda');

   DMCXC.cdsQry12.Filter := 'CPTOREFIN=''S''';
   DMCXC.cdsQry12.Filtered := True;

   dblcdConceptoND.LookupTable := DMCXC.cdsQry12;
   dblcdConceptoND.LookupField := 'CPTOCAB';

   If (DMCXC.cdsQry12.RecordCount = 1) Then
   Begin
      dblcdConceptoND.text := DMCXC.cdsQry12.FieldByName('CPTOCAB').AsString;
      dblcdConceptoND.enabled := False;
   End
   Else
   Begin
      DMCXC.cdsQry12.Filter := '';
      DMCXC.cdsQry12.Filtered := False;
      dblcdConceptoND.text := '';
      dblcdConceptoND.enabled := True;
   End;
   dblcdConceptoND.Selected.Clear;
   dblcdConceptoND.Selected.Add('CPTOCAB'#9'12'#9'Concepto'#9'T');
   dblcdConceptoND.Selected.Add('CPTODES'#9'20'#9'Descripción'#9'T');
   dblcdConceptoND.Refresh;

   If (Not DMCXC.cdsCCanje.FieldByName('CJTOTORI').IsNull) Or (DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat <> 0) Then
   Begin
      dblcNDDoc.Text := '';
      dblcSerie.Text := '';
      dbeNoDoc.Text := '';
      dblcNDDoc.Enabled := True;
      dblcSerie.Enabled := True;
      dbeNoDoc.Enabled := True;
      bbtnNDebito.Enabled := True;
      dblcTDiario1.Enabled := ((Length(DMCXC.cdsDoc.FieldByName('TDIARID2').AsString)) > 0);
      If DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString = 'S' Then
      Begin
         dblcNDDoc.Enabled := False;
         dblcSerie.Enabled := False;
         dbeNoDoc.Enabled := False;
         dblcTDiario1.Enabled := False;
         bbtnNDebito.Enabled := False;
         dblcNDDoc.Text := DMCXC.cdsCCanje.FieldByName('NDDOC').AsString;
         dblcSerie.Text := DMCXC.cdsCCanje.FieldByName('NDSERIE').AsString;
         dbeNoDoc.Text := DMCXC.cdsCCanje.FieldByName('NDNUMERO').AsString;
         dblcTDiario1.Text := DMCXC.cdsCCanje.FieldByName('TDIARNDEB').AsString;

      End;
      pnlNDebito.Visible := True;
      bbtnImpND.visible := True;
      ts3.tabvisible := True;
   End
   Else
   Begin
      ShowMessage('No hay datos para generar la Nota de Débito');
      exit;
   End;
End;

Procedure TFLetras.bbtnNDebitoClick(Sender: TObject);
Var
   xNoReg2: String;
   xTDebe, xTHaber: Double;
   xTGravad, xTNoGrav, xTIGV, xTISC, xTDcto, xTServ, xTotal, xTFlete, xTGasFin: Double;
   xCtaTotal, xCptoTot: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdConceptoND.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdConceptoND.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   If dblcdConceptoND.text = '' Then
      Raise Exception.Create('No existe Concepto');

   RevisaDetalleContable;

   If Not DMCXC.BuscaCxCDoc(dblcCia.Text, dblcNDDoc.Text, dblcSerie.Text, dbeNoDoc.Text) Then
   Begin
   // actualiza archivo de canjes indicándole los datos de la nota de débito
      DMCXC.cdsCCanje.Edit;
      DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString := 'S';
      DMCXC.cdsCCanje.FieldByName('NDDOC').AsString := dblcNDDoc.Text;
      DMCXC.cdsCCanje.FieldByName('NDSERIE').AsString := dblcSerie.Text;
      DMCXC.cdsCCanje.FieldByName('NDNUMERO').AsString := dbeNoDoc.Text;
      DMCXC.cdsCCanje.FieldByName('TDIARNDEB').AsString := dblcTDiario1.text;
      DMCXC.cdsCCanje.Post;
   // cabecera de la Nota de Débito
      DMCXC.cdsMovCxC.Insert;
      DMCXC.cdsMovCxC.FieldByName('FLAGVAR').AsString := '.';
      DMCXC.cdsMovCxC.FieldByName('COMPROMET').AsString := 'NA';
      DMCXC.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.Text;
      DMCXC.cdsMovCxC.FieldByName('DOCID').AsString := dblcNDDoc.Text;
      DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := dblcSerie.Text;
      DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := dbeNoDoc.Text;
      DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString := xNDTDiario;
      DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
      DMCXC.cdsMovCxC.FieldByName('CLIEDES').AsString := DMCXC.BuscaQry2('dspTGE', 'TGE204', 'TVTAID,ZONVTAID,CLIEDES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEDES');
      DMCXC.cdsMovCxC.FieldByName('TVTAID').AsString := DMCXC.cdsQry6.FieldByName('TVTAID').AsString;
      DMCXC.cdsMovCxC.FieldByName('ZVTAID').AsString := DMCXC.cdsQry6.FieldByName('ZONVTAID').AsString;
      DMCXC.cdsMovCxC.FieldByName('UBIID').AsString := DMCXC.wsOfi;
      DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString := dblcdConceptoND.text;

      DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := dblcdClieRuc.Text;
      DMCXC.cdsMovCxC.FieldByName('FGEN_DOC').AsString := 'N';

      xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', xNDTDiario);
      xNoReg2 := DMCXC.GrabaRegistroLetra(xTAutoNum, dblcCia.Text, xNDTDiario, xTAno, xTMes, 0);
      xNoReg2 := StrZero(xNoReg2, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);

      DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := xNoReg2;
      DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsString := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsString := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsString := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsString;
      DMCXC.cdsMovCxC.FieldByName('TMONID').AsString := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsString := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsString := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'I';
      DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString := 'N';
      If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFComp.date) Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
         DMCXC.cdsMovCxC.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
         DMCXC.cdsMovCxC.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
         DMCXC.cdsMovCxC.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
         DMCXC.cdsMovCxC.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
         DMCXC.cdsMovCxC.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
         DMCXC.cdsMovCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
         DMCXC.cdsMovCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
         DMCXC.cdsMovCxC.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
      End;
      DMCXC.cdsMovCxC.Post;
      DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) +
         ' AND DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString) +
         ' AND CCSERIE=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString) +
         ' AND CCNODOC=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString));
      DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   End;
   DMCXC.cdsCCanje.DataRequest('Select * from CXC307 WHERE '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND '
      + 'TCANJEID=' + QuotedStr('LC') + ' AND '
      + 'CANJE=' + QuotedStr(edtCanje.Text));
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

   Filtracds(DMCXC.cdsMovCxC, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + DMCXC.cdsCCanje.FieldByName('NDDOC').AsString + '''' + ' and '
      + 'CCSERIE=' + '''' + DMCXC.cdsCCanje.FieldByName('NDSERIE').AsString + '''' + ' and '
      + 'CCNODOC=' + '''' + DMCXC.cdsCCanje.FieldByName('NDNUMERO').AsString + '''');

   GeneraDetalle;

   DMCXC.cdsDetCxC2.First;
   xTDebe := 0;
   xTHaber := 0;
   xTotal := 0;
   xTFlete := 0;
   xTGasFin := 0;
   xTGravad := 0;
   xTNoGrav := 0;
   xTIGV := 0;
   xTISC := 0;
   xTDcto := 0;
   xTServ := 0;
   While Not DMCXC.cdsDetCxC2.eof Do
   Begin
      If DMCXC.cdsDetCxC2.FieldByName('CCDH').AsString = 'D' Then xTDebe := xTDebe + FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').Asfloat, 15, 2);
      If DMCXC.cdsDetCxC2.FieldByName('CCDH').AsString = 'H' Then xTHaber := xTHaber + FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat, 15, 2);
      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'MG' Then
      Begin // Monto Gravado/Base Imponible/Monto Afecto
         xTGravad := xTGravad + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'MN' Then
      Begin // Monto No Gravado
         xTNoGrav := xTNoGrav + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'I1' Then
      Begin // IGV
         xTIGV := xTIGV + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'TO' Then
      Begin // Total
         xTotal := xTotal + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').Value;
         xCtaTotal := DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString;
         xCptoTot := DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString;
      End;
      DMCXC.cdsDetCxC2.Next;
   End;
   // graba sumatorias del detalle en cabecera CxP

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := xTGravad; // Monto Gravado
   DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat := xTNoGrav; // Monto No Gravado
   DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat := xTFlete;
   DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat := xTGasFin;
   DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := xTIGV; // IGV.
   DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat := xTISC; // ISC.
   DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat := xTDcto; // Descuento
   DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat := xTServ; // Servicio
   DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := xTotal; // Total documento
   DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := xTotal; // Saldo del documento

   If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := xTotal; // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := FRound(xTotal / FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2);
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := xTotal; // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(xTotal / FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2);
   End
   Else
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := xTotal; // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := FRound(xTotal * FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2); // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(xTotal * FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2); // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := xTotal; // Total en moneda extranjera
   End;
   DMCXC.cdsMovCxC.FieldByName('CTATOTAL').AsString := xCtaTotal;
   DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString := xCptoTot;
//CESAR : 01/02/2002
//   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value :='P';
   DMCXC.cdsMovCxC.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   InsertaCanjes(DMCXC.cdsMovCxC);
   DMCXC.AplicaDatos(DMCXC.cdsCanjesClone, 'CANJES');

   DMCXC.AplicaDatos(DMCXC.cdsDetCxC2, 'DetCxC2');

   EstadoNDebito(DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString);

   pnlNDebito.Visible := False;

   ShowMessage('Nota Débito Grabada');
End;

Procedure TFLetras.InsertaCanjes(xxCds: TwwClientDataSet);
Begin
   DMCXC.cdsCanjes.Insert;
   DMCXC.cdsCanjes.FieldByName('CIAID').AsString := xxCds.FieldByName('CIAID').AsString;
   DMCXC.cdsCanjes.FieldByName('TDIARID').AsString := xxCds.FieldByName('TDIARID').AsString;
   DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString := xxCds.FieldByName('CCNOREG').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString := xxCds.FieldByName('CCAAAA').AsString;
   DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString := xxCds.FieldByName('CCANOMES').AsString;
   DMCXC.cdsCanjes.FieldByName('CLIEID').AsString := xxCds.FieldByName('CLIEID').AsString;
   DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString := xxCds.FieldByName('CLIERUC').AsString;
   DMCXC.cdsCanjes.FieldByName('DOCID').AsString := xxCds.FieldByName('DOCID').AsString;
   DMCXC.cdsCanjes.FieldByName('DOCABR').AsString := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCABR', 'DOCMOD=''CXC'' AND DOCID=' + QuotedStr(dblcNDDoc.text), 'DOCABR');
   DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString := xxCds.FieldByName('CCSERIE').AsString;
   DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString := xxCds.FieldByName('CCNODOC').AsString;
   DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString := 'LC';
   DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsCanjes.FieldByName('CCFCANJE').Value := xxCds.FieldByName('CCFCMPRB').AsDateTime;
   DMCXC.cdsCanjes.FieldByName('TMONID').Value := xxCds.FieldByName('TMONID').AsString;
   DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CJEANTMN').Value := 0;
   DMCXC.cdsCanjes.FieldByName('CJEANTME').Value := 0;
   DMCXC.xFlagCal := False;
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.xFlagCal := False;
   DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
   DMCXC.cdsCanjes.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsCanjes.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCanjes.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCanjes.FieldByName('CCMM').AsString := xxCds.FieldByName('CCMM').AsString;
   DMCXC.cdsCanjes.FieldByName('CCDD').AsString := xxCds.FieldByName('CCDD').AsString;
   DMCXC.cdsCanjes.FieldByName('CCTRI').AsString := xxCds.FieldByName('CCTRI').AsString;
   DMCXC.cdsCanjes.FieldByName('CCSEM').AsString := xxCds.FieldByName('CCSEM').AsString;
   DMCXC.cdsCanjes.FieldByName('CCSS').AsString := xxCds.FieldByName('CCSS').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString := xxCds.FieldByName('CCAATRI').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString := xxCds.FieldByName('CCAASEM').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAASS').AsString := xxCds.FieldByName('CCAASS').AsString;
   DMCXC.cdsCanjes.FieldByName('CPTOTOT').AsString := xxCds.FieldByName('CCPTOTOT').AsString;
   DMCXC.cdsCanjes.FieldByName('CTATOTAL').AsString := xxCds.FieldByName('CTATOTAL').AsString;
   DMCXC.cdsCanjes.Post;

   DMCXC.cdsCanjesClone.Insert;
   DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := xxCds.FieldByName('CIAID').AsString;
   DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := xxCds.FieldByName('TDIARID').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := xxCds.FieldByName('CCNOREG').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCAAAA').AsString := xxCds.FieldByName('CCAAAA').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := xxCds.FieldByName('CCANOMES').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := xxCds.FieldByName('CLIEID').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CLIERUC').AsString := xxCds.FieldByName('CLIERUC').AsString;
   DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := xxCds.FieldByName('DOCID').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := xxCds.FieldByName('CCSERIE').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := xxCds.FieldByName('CCNODOC').AsString;
   DMCXC.cdsCanjesClone.FieldByName('TCANJEID').AsString := 'LC';
   DMCXC.cdsCanjesClone.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsCanjesClone.FieldByName('CCFCANJE').Value := xxCds.FieldByName('CCFCMPRB').AsDateTime;
   DMCXC.cdsCanjesClone.FieldByName('TMONID').Value := xxCds.FieldByName('TMONID').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCTCAMCJE').AsFloat := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsCanjesClone.FieldByName('CCTCAMDOC').AsFloat := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsCanjesClone.FieldByName('CCSALLOC').AsFloat := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsCanjesClone.FieldByName('CCSALEXT').AsFloat := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsCanjesClone.FieldByName('CJEANTMN').Value := 0;
   DMCXC.cdsCanjesClone.FieldByName('CJEANTME').Value := 0;
   DMCXC.xFlagCal := False;
   DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.xFlagCal := False;
   DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsCanjesClone.FieldByName('CCESTADO').Value := 'P';
   DMCXC.cdsCanjesClone.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsCanjesClone.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCanjesClone.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCanjesClone.FieldByName('CCMM').AsString := xxCds.FieldByName('CCMM').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCDD').AsString := xxCds.FieldByName('CCDD').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCTRI').AsString := xxCds.FieldByName('CCTRI').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCSEM').AsString := xxCds.FieldByName('CCSEM').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCSS').AsString := xxCds.FieldByName('CCSS').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCAATRI').AsString := xxCds.FieldByName('CCAATRI').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCAASEM').AsString := xxCds.FieldByName('CCAASEM').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CCAASS').AsString := xxCds.FieldByName('CCAASS').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CPTOTOT').AsString := xxCds.FieldByName('CCPTOTOT').AsString;
   DMCXC.cdsCanjesClone.FieldByName('CTATOTAL').AsString := xxCds.FieldByName('CTATOTAL').AsString;
   DMCXC.cdsCanjesClone.Post;
End;

Procedure TFLetras.GeneraDetalle;
Begin
   If DMCXC.cdsDetCxC2.RecordCount > 0 Then
   Begin
      While Not DMCXC.cdsDetCxC2.Eof Do
      Begin
         DMCXC.cdsDetCxC2.delete;
      End;
   End;

{   if DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'GAD', DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat );
   end;
   if DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'GFI', DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat );
   end;
   if DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'MOR', DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat );
   end;
   if DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'OTR', DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat );
   end;
   if DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'INT', DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat );
   end;
   if DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat>0 then begin
      RegistroDetalle( 'I1', '', DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat );
   end;
   if DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat>0 then begin
      RegistroDetalle( 'TO', '', DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat );
   end;}

   If DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat > 0 Then //GASTOS ADMINISTRATIVOS
   Begin
      RegistroDetalle('GF', 'MG', DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat);
   End;
   If DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat > 0 Then //GASTOS FINANCIEROS
   Begin
      RegistroDetalle('IN', 'MG', DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat);
   End;
   If DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat > 0 Then //MORA
   Begin
      RegistroDetalle('IN', 'MG', DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat);
   End;
   If DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat > 0 Then //OTROS GASTOS
   Begin
      RegistroDetalle('IN', 'OT', DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat);
   End;
   If DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat > 0 Then //INTERESES
   Begin
      RegistroDetalle('IN', 'MG', DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat);
   End;
   If DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat > 0 Then //IGV
   Begin
      RegistroDetalle('I1', 'I1', DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat);
   End;
   InsertaRegistroDeTotal;
End;

Procedure TFLetras.RegistroDetalle(xTipDet, xTipCar: String; xMonto: Double);
Var
   xWhere, xTReg, xDH, xCpto, xCta: String;
Begin
   xWhere := 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND TIPDET=' + QuotedStr(xTipCar) + ' AND CPTOCAB=' + QuotedStr(dblcdConceptoND.text);
   xTReg := DMCXC.BuscaQry('dspTGE', 'CXC102', '*', xWhere, 'TREGID');
   xDH := DMCXC.cdsQry.FieldByName('CCDH').Value;

   xCpto := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
   xCta := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;

   DMCXC.cdsDetCxC2.Insert;
   DMCXC.cdsDetCxC2.FieldByName('TIPDET').Value := xTipCar;
   DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').Value := xMonto;
   DMCXC.cdsDetCxC2.FieldByName('TREGID').Value := xTReg;
   DMCXC.cdsDetCxC2.FieldByName('CCDH').Value := xDH;
   DMCXC.cdsDetCxC2.FieldByName('TMONID').Value := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CPTOID').Value := xCpto;
   DMCXC.cdsDetCxC2.FieldByName('CUENTAID').Value := xCta;

   If DMCXC.cdsDetCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCxC2.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsDetCxC2.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsDetCxC2.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsDetCxC2.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End;

   If Length(DMCXC.cdsDetCxC2.FieldByName('CPTOID').Value) > 0 Then
   Begin
      xWhere := 'CPTOID=' + '''' + DMCXC.cdsDetCxC2.FieldByName('CPTOID').Value + '''';
      DMCXC.cdsDetCxC2.FieldByName('CCGLOSA').Value := DMCXC.BuscaQry('dspTGE', 'CXC201', 'CPTODES', xWhere, 'CPTODES')
   End;

   DMCXC.cdsDetCxC2.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
//CESAR 01/02/2002
//   DMCXC.cdsDetCxC2.FieldByName('DOCID').AsString   := DMCXC.cdsCCanje.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('DOCID').AsString := dblcNDDoc.Text;
   DMCXC.cdsDetCxC2.FieldByName('CCSERIE').AsString := dblcSerie.Text;
   DMCXC.cdsDetCxC2.FieldByName('TCANJEID').AsString := 'ND';
   DMCXC.cdsDetCxC2.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsDetCxC2.FieldByName('CCNODOC').AsString := dbeNoDoc.Text;
   DMCXC.cdsDetCxC2.FieldByName('CCTCAMPR').Asfloat := FRound(DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 7, 3);
   DMCXC.cdsDetCxC2.FieldByName('CCFEMIS').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime;
   DMCXC.cdsDetCxC2.FieldByName('CCFVCMTO').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime;
   DMCXC.cdsDetCxC2.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
   DMCXC.cdsDetCxC2.FieldByName('CCESTADO').Value := 'I'; // Activo
   DMCXC.cdsDetCxC2.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsDetCxC2.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC2.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCxC2.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
   DMCXC.cdsDetCxC2.Post;
End;

Procedure TFLetras.dblcNDDocExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If ((Length(DMCXC.cdsDoc.FieldByName('TDIARID2').AsString)) = 0) Then
   Begin
      xWhere := 'DocId=' + '''' + dblcNDDoc.Text + '''' + ' and '
         + 'DOCMOD=' + '''' + DMCXC.wModulo + '''';
      xNDTDiario := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'TDIARID');
      dblcTDiario1.text := xNDTDiario;
   End;

   DMCXC.cdsSerie.Filter := 'DOCID=' + QuotedStr(dblcNDDoc.text);
   DMCXC.cdsSerie.Filtered := True;
End;

Procedure TFLetras.bbtnCancNDClick(Sender: TObject);
Begin
   pnlNDebito.Visible := False;
End;

Procedure TFLetras.pnlDatosEnter(Sender: TObject);
Var
   xxWhere: String;
Begin
   If Length(dbeletIni.Text) = 0 Then
   Begin
      xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'DOCID=' + '''' + dblcTDoc.Text + '''';
      DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   End;
End;

Procedure TFLetras.dbeDiasExit(Sender: TObject);
Var
   xxWhere: String;
Begin
   If Length(dbeletIni.Text) = 0 Then
   Begin
      xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'DOCID=' + '''' + dblcTDoc.Text + '''';
      DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   End;
End;

Procedure TFLetras.dbeNLetExit(Sender: TObject);
Var
   xxWhere: String;
Begin
   If Length(dbeletIni.Text) = 0 Then
   Begin
      xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'DOCID=' + '''' + dblcTDoc.Text + '''';
      DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   End;
End;

Procedure TFLetras.dbeLetraExit(Sender: TObject);
Var
   xxRecno: Integer;
Begin
   If DMCXC.BuscaCxCLet(dblcCia.Text, dblcTDoc.Text, dbeLetra.Text) Then
   Begin
      dbeLetra.SetFocus;
      Raise Exception.Create('Número de Letra Existe');
   End;
   dbeLetra.Enabled := False;
   DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

   xxRecno := DMCXC.cdsLetras.RecNo;

   Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');
   DMCXC.cdsLetras.RecNo := xxRecno;
   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('TMONID').AsString := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
End;

Procedure TFLetras.dbeImpExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat < 0 Then
   Begin
      dbeImp.SetFocus;
      Raise Exception.Create('Importe debe Ser >= a Cero');
   End;

   xTotal := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat
      + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat;
   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetras.dbeGasExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat < 0 Then
   Begin
      dbeGas.SetFocus;
      Raise Exception.Create('Gastos debe Ser >= a Cero');
   End;

   xTotal := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat
      + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat;
   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetras.dbeIGVExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat < 0 Then
   Begin
      dbeIGV.SetFocus;
      Raise Exception.Create('I.G.V. debe Ser >= a Cero');
   End;

   xTotal := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat
      + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat;
   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetras.dbeIntExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DMCXC.cdsLetras.FieldByName('INTERES').AsFloat < 0 Then
   Begin
      dbeInt.SetFocus;
      Raise Exception.Create('Interes debe ser >= a Cero');
   End;
   xTotal := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsLetras.FieldByName('INTERES').AsFloat
      + DMCXC.cdsLetras.FieldByName('CCGASFIN').AsFloat + DMCXC.cdsLetras.FieldByName('CCIGV').AsFloat;
   DMCXC.cdsLetras.Edit;
   DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetras.bbtnContClick(Sender: TObject);
Var
   xRegAct: TBookMark;
Begin
   If Length(dbeComp.text) = 0 Then Raise exception.create('Falta Numero de Comprobante');

   If MessageDlg('Contabilizar Documento' + chr(13) + '    ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If Not NGeneraAsiento Then
   Begin
      pnlConta.Visible := False;
      Raise Exception.Create('Error:  Asiento No Terminado');
   End;

   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   DMCXC.cdsLetras.DisableControls;
   xRegAct := DMCXC.cdsLetras.GetBookmark;
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      DMCXC.cdsLetras.Edit;
      DMCXC.cdsLetras.FieldByName('CC_CONTA').AsString := 'S';
      DMCXC.cdsLetras.FieldByName('CCCMPRB').AsString := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
      DMCXC.cdsLetras.Next;
   End;
   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString := 'S';
   DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');
   DMCXC.cdsCCanje.DataRequest('Select * from CXC307');
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

   DMCXC.GeneraContabilidad(dblcCia.Text, dblcTDiario.Text, DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString, Self);

   DMCXC.cdsLetras.GotoBookmark(xRegAct);
   DMCXC.cdsLetras.FreeBookmark(xRegAct);
   DMCXC.cdsLetras.EnableControls;

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   pnlConta.Visible := False;
   ShowMessage('Registro Contabilizado');
End;

Procedure TFLetras.bbtnCanc2Click(Sender: TObject);
Begin
   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);
   pnlConta.Visible := False;
End;

Function TFLetras.NGeneraAsiento: Boolean;
Var
   sIndice: String;
Begin
   DMCXC.cdsCanjes.DisableControls;
   sIndice := DMCXC.cdsCanjes.IndexFieldNames;
   DMCXC.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';

   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
      DMCXC.cdsDetCxC.Delete;

   //  Detalle Debe
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      NDetalleContable;
      DMCXC.cdsCanjes.Next;
   End;

   //  Total Haber
   xTotLoc := 0;
   xTotExt := 0;
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.eof Do
   Begin
      xTotLoc := xTotLoc + DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat;
      xTotExt := xTotExt + DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat;
      DMCXC.cdsLetras.Next;
   End;
   NContabilidadCanje;

   DMCXC.cdsCanjes.EnableControls;

   DMCXC.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;TDiarID;CCAnoMM;CCNoReg';

   Result := True;
   DMCXC.cdsCanjes.IndexFieldNames := sIndice;
End;

Procedure TFLetras.NContabilidadCanje;
Begin
   DMCXC.cdsDetCxC.Insert;
   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := DMCXC.cdsCCanje.FieldByName('CANJE').AsString;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCCMPRB').AsString := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsCCanje.FieldByName('CPTOID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
   DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCCanje.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := '00000';
   DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCCanje.FieldByName('CANJE').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDH').Value := 'D';
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
   If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := xTotExt
   Else
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := xTotLoc;

   DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := xTotLoc;
   DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := xTotExt;

   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').Value;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P';
   DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := 'TO';
   DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
   DetCxCUsuario; // Graba Usuario, Fecha y Hora
End;

Procedure TFLetras.NDetalleContable;
Begin

   NGeneraDiferenciaCambio;

   DMCXC.cdsDetCxC.Insert;
   DMCXC.cdsDetCxC.FieldByName('CIAID').Value := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TCANJEID').Value := DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').Value := DMCXC.cdsCCanje.FieldByName('CANJE').AsString;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').Value := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').Value := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCCMPRB').Value := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCANOMES').Value := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAAAA').Value := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CUENTAID').value := DMCXC.cdsCanjes.FieldByName('CTATOTAL').Value;
   DMCXC.cdsDetCxC.FieldByName('CPTOID').value := DMCXC.cdsCanjes.FieldByName('CPTOTOT').Value;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').Value := DMCXC.cdsCanjes.FieldByName('CLIEID').Value;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').Value := DMCXC.cdsCanjes.FieldByName('CLIERUC').Value;
   DMCXC.cdsDetCxC.FieldByName('DOCID').Value := DMCXC.cdsCanjes.FieldByName('DOCID').Value;
   DMCXC.cdsDetCxC.FieldByName('CCSERIE').Value := DMCXC.cdsCanjes.FieldByName('CCSERIE').Value;
   DMCXC.cdsDetCxC.FieldByName('CCNODOC').Value := DMCXC.cdsCanjes.FieldByName('CCNODOC').Value;
   DMCXC.cdsDetCxC.FieldByName('CCGLOSA').Value := DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDH').Value := 'H';
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').Value := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').Value := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('TMONID').Value := DMCXC.cdsCanjes.FieldByName('TMONID').Value;
   If DMCXC.cdsCanjes.FieldByName('TMONID').Value = DMCXC.wTMonExt Then
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value;
   End;
   DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value + xDifCLoc, 15, 2);
   DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value + xDifCExt, 15, 2);
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsCanjes.FieldByName('CCFEMIS').Value;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsCanjes.FieldByName('CCFVCMTO').Value;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := dtpFComp.Date;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
   DMCXC.cdsDetCxC.FieldByName('CCMM').Value := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDD').Value := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTRI').Value := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSEM').Value := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSS').Value := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAATRI').Value := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASEM').Value := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASS').Value := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
   DetCxCUsuario; // Graba Usuario, Fecha y Hora
   DMCXC.cdsPost(DMCXC.cdsDetCxC);

   NGrabaDiferenciaCambio;
End;

Procedure TFLetras.NGeneraDiferenciaCambio;
Begin
   xDifCLoc := 0;
   xDifCExt := 0;
   If DMCXC.cdsCanjes.FieldByName('TMONID').Value = DMCXC.wTMonExt Then
   Begin
      xPagAnt := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
      If DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value > xPagAnt Then
      Begin
         xDifCam := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value - xPagAnt, 15, 2);
         xDifCLoc := FRound((-1) * (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value - xPagAnt), 15, 2);
         xCtaDif := DMCXC.wDifAjuG;
         xCptoDif := DMCXC.wCptoAjG;
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH := 'H'
      End
      Else
      Begin
         xDifCam := FRound(xPagAnt - DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
         xDifCLoc := FRound(xPagAnt - DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
         xCtaDif := DMCXC.wDifAjuP;
         xCptoDif := DMCXC.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End;
   End
   Else
   Begin
      xPagAnt := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value / DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
      If DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value > xPagAnt Then
      Begin
         xDifCam := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value - xPagAnt, 15, 2);
         xDifCExt := FRound((-1) * (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value - xPagAnt), 15, 2);
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xCtaDif := DMCXC.wDifAjuG;
         xCptoDif := DMCXC.wCptoAjG;
         xDH := 'H'
      End
      Else
      Begin
         xDifCam := xPagAnt - DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value;
         xDifCExt := xPagAnt - DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value;
         xCtaDif := DMCXC.wDifAjuP;
         xCptoDif := DMCXC.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End;
   End;
End;

Procedure TFLetras.NGrabaDiferenciaCambio;
Begin
   If xDifCam > 0 Then
   Begin
      DMCXC.cdsDetCxC.Insert;
      DMCXC.cdsDetCxC.FieldByName('CIAID').Value := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TCANJEID').Value := DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCCANJE').Value := DMCXC.cdsCCanje.FieldByName('CANJE').Value;
      DMCXC.cdsDetCxC.FieldByName('TDIARID').Value := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNOREG').Value := DMCXC.cdsCCanje.FieldByName('CCCMPRB').Value;
      DMCXC.cdsDetCxC.FieldByName('CCCMPRB').Value := DMCXC.cdsCCanje.FieldByName('CCCMPRB').Value;
      DMCXC.cdsDetCxC.FieldByName('CCANOMES').Value := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAAAA').Value := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').value := xCtaDif;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').value := xCptoDif;
      DMCXC.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
      DMCXC.cdsDetCxC.FieldByName('CLIEID').Value := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIERUC').Value := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCxC.FieldByName('DOCID').Value := DMCXC.cdsCanjes.FieldByName('DOCID').Value;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').Value := DMCXC.cdsCanjes.FieldByName('CCSERIE').Value;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').Value := DMCXC.cdsCanjes.FieldByName('CCNODOC').Value;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').Value := xGloDif;
      DMCXC.cdsDetCxC.FieldByName('CCDH').Value := xDH;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').Value := DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').Value;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').Value := DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
      //
      If DMCXC.cdsCanjes.FieldByName('TMONID').Value = DMCXC.wTMonExt Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value := FRound(xDifCam, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').Value := FRound(xDifCam, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').Value := 0;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value := FRound(xDifCam, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').Value := 0;
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').Value := FRound(xDifCam, 15, 2);
      End;
      //
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').Value;
      DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').Value;
      DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
      DMCXC.cdsDetCxC.FieldByName('TMONID').Value := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCMM').Value := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDD').Value := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTRI').Value := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSEM').Value := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSS').Value := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAATRI').Value := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASEM').Value := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASS').Value := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsDetCxC.FieldByName('CCUSER').Value := DMCXC.wUsuario;
      DMCXC.cdsPost(DMCXC.cdsDetCxC);
   End;
End;

Procedure TFLetras.ppHeaderBand1BeforePrint(Sender: TObject);
Begin
   pplCia.Caption := edtCia.Text;
   pplMon.Caption := edtTMon.Text;
   pplClie.Caption := edtClie.Text;
End;

Procedure TFLetras.ppVariable1Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
//   xWhere:= 'DocId='+''''+DMCXC.cdsCanjes.FieldByName('DOCID').AsString+''''+' AND DOCMOD=''CXC''';
   xWhere := 'DocId=' + '''' + DMCXC.cdsReporte.FieldByName('DOCID').AsString + '''' + ' AND DOCMOD=''CXC''';
   Value := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'DocDes');
End;

Procedure TFLetras.ppVariable2Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
//   xWhere:= 'TMonId='+''''+DMCXC.cdsCanjes.FieldByName('TMONID').AsString+'''';
   xWhere := 'TMonId=' + '''' + DMCXC.cdsReporte.FieldByName('TMONID').AsString + '''';
   Value := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLetras.bbtnImpLetClick(Sender: TObject);
Var
   xRegAct: TBookMark;
   sSIT, xWhere: String;
   sSQL: String;
Begin
   If Not VerificaTotal Then Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');

   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
//     sSQL:=' SELECT S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||UPPER(COALESCE(Z.ZVTAABREV,''''))||'' - ''||COALESCE(T.TVTADES,''''))) '+
//     sSQL:=' SELECT S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||COALESCE(C.CLIECZIP,''''))) '+
//           ' CLIEDIRINC, '+
      sSQL := ' SELECT ''                                                                                          '' LETRAS ,' +
         ' C.AVALNOMB,C.AVALTELF,C.AVALDIR,C.AVALDOC,S.SITUADES, CASE WHEN COALESCE(Z.ZIPID,'''')<>'''' THEN COALESCE(C.CLIEDIR,'''') || '' - '' || RTRIM(UPPER(Z.ZIPID)) ' +
         ' ELSE COALESCE(C.CLIEDIR,'''') || '' - '' || RTRIM(UPPER(COALESCE(Z.ZVTAABREV,''''))) ||'' - ''|| COALESCE(T.TVTADES,'''') END CLIEDIRINC, ' +
         ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* ' +
         ' FROM CXC301 ' +
         ' LEFT JOIN TGE103 M ON M.TMONID=CXC301.TMONID ' +
         ' LEFT JOIN CXC105 U ON U.UBICAID=CXC301.UBIID ' +
         ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID  ' +
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID ' +
         ' LEFT JOIN FAC105 T ON T.TVTAID=CXC301.TVTAID ' +
         ' LEFT JOIN CXC104 S ON S.SITUAID=CXC301.SITID ' +
         ' WHERE CXC301.CIAID =' + QuotedStr(DMCXC.cdsLetras.FieldByName('CIAID').AsString) +
         ' AND CXC301.TCANJEID =' + QuotedStr('LC') +
         ' AND CXC301.CCCANJE  =' + QuotedStr(edtCanje.text)
   End
   Else
   //REVISAR EN DERRAMA
   // 04/10/2001
   Begin
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         sSQL := ' SELECT ''                                                                                          '' LETRAS ,' +
            ' S.SITUADES,LTRIM(RTRIM(NVL(C.CLIEDIR,'''')||'' - ''||NVL(Z.ZVTADES,'''')||'' - ''||NVL(T.TVTADES,''''))) ' +
            ' CLIEDIRINC, ' +
            ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* ' +
            ' FROM CXC301,TGE103 M,CXC105 U,TGE204 C,FAC106 Z,FAC105 T,CXC104 S ' +
            ' WHERE CXC301.CIAID =' + QuotedStr(DMCXC.cdsLetras.FieldByName('CIAID').AsString) +
            ' AND CXC301.TCANJEID =' + QuotedStr('LC') +
            ' AND CXC301.CCCANJE  =' + QuotedStr(edtCanje.text) +
            ' AND M.TMONID(+)=CXC301.TMONID AND U.UBICAID(+)=CXC301.UBIID AND C.CLIEID(+)=CXC301.CLIEID  ' +
            ' AND Z.ZVTAID(+)=C.ZONVTAID AND T.TVTAID(+)=CXC301.TVTAID AND S.SITUAID(+)=CXC301.SITID ';
      End;
   End;
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;

   If DMCXC.cdsQry.Recordcount = 0 Then
   Begin
      showMessage('No hay letras pendientes de impresión');
      exit;
   End;
   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.EOF Do
   Begin
      DMCXC.cdsQry.Edit;
      DMCXC.cdsQry.FieldByName('LETRAS').AsString := StrNum(DMCXC.cdsQry.FieldByName('CCSALORI').AsFloat) + ' ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', DMCXC.cdsQry.FieldByName('TMONID').AsString);
      DMCXC.cdsQry.Post;
      DMCXC.cdsQry.Next;
   End;

   ppdbpLetras.DataSource := DMCXC.dsQry;

   xFlagP := False;
   pprLetras.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Letras.Rtm';
   pprLetras.template.LoadFromFile;

   pprLetras.Print;
   If xFlagP Then
   Begin
      DMCXC.cdsLetras.DisableControls;
      xRegAct := DMCXC.cdsLetras.GetBookmark;
      DMCXC.cdsLetras.First;

      xWhere := 'SITUAFLAG=''2''';
      sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

      While Not DMCXC.cdsLetras.eof Do
      Begin
         DMCXC.cdsLetras.Edit;
         If DMCXC.CambioSituacion(DMCXC.cdsLetras.FieldByName('SITID').AsString, sSIT) Then
         Begin
            DMCXC.SetHyst(dblcCia.Text, dblcTDoc.Text, DMCXC.cdsLetras.FieldByName('CCNODOC').AsString);
            DMCXC.cdsLetras.FieldByName('SITID').AsString := sSIT;
            DMCXC.cdsLetras.FieldByName('CCFSITUA').AsDateTime := DMCXC.DateS;
         End;
         DMCXC.cdsLetras.FieldByName('CCESTADO').Value := 'I';
         DMCXC.cdsLetras.FieldByName('CCUSER').Value := DMCXC.wUsuario;
         DMCXC.cdsLetras.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
         DMCXC.cdsLetras.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
         DMCXC.cdsPost(DMCXC.cdsLetras);
         DMCXC.cdsLetras.Next;
      End;
      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');
      DMCXC.cdsLetras.GotoBookmark(xRegAct);
      DMCXC.cdsLetras.FreeBookmark(xRegAct);
      DMCXC.cdsLetras.EnableControls;

      ShowMessage('Letras Impresas');
   End;
   ppdbpLetras.DataSource := Nil;
   ppdbpLetras.DataSource := DMCXC.dsLetras;

End;

Procedure TFLetras.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFLetras.dtpFVcmtoExit(Sender: TObject);
Begin
   If dtpFVcmto.Date <= dtpFValor.Date Then
   Begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Fecha de Vencimiento debe Ser Mayor a ' + DateToStr(dtpFValor.Date));
   End;
End;

Procedure TFLetras.Z2bbtnImpCanjeClick(Sender: TObject);
Var
   x10: integer;
Begin

   Filtracds(DMCXC.cdsReporte, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   ppdbpDCanje.datasource := DMCXC.dsReporte;

   DMCXC.cdsReporte.First;
   While Not DMCXC.cdsReporte.EOF Do
   Begin
      If DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCRESTA', 'DOCID=' + QuotedStr(DMCXC.cdsReporte.FieldByName('DOCID').AsString) + ' AND DOCMOD=''CXC''', 'DOCRESTA') = 'S' Then
      Begin
         DMCXC.cdsReporte.Edit;
         DMCXC.cdsReporte.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsReporte.FieldByName('CCMTOORI').AsFloat * (-1);
         DMCXC.cdsReporte.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsReporte.FieldByName('CCMTOEXT').AsFloat * (-1);
         DMCXC.cdsReporte.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsReporte.FieldByName('CCMTOLOC').AsFloat * (-1);
         DMCXC.cdsReporte.Post;
      End;
      DMCXC.cdsReporte.Next;
   End;

   pprCanje.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CanjeLetras.rtm';
   pprCanje.template.LoadFromFile;

//Designer1.Show;
   pprCanje.Print;
   pprCanje.Stop;
   x10 := Self.ComponentCount - 1;
   While x10 >= 0 Do
   Begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
      Begin
         Self.Components[x10].Free;
      End;
      x10 := x10 - 1;
   End;
End;

Procedure TFLetras.dblcdClieEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

   DMCXC.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFLetras.dblcdClieRucEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

   DMCXC.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFLetras.dblcClAuxExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;
//CLG : 27/02/2002
   If length(dblcClAux.text) = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DMCXC.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClAux.Text));
End;

Procedure TFLetras.dtpFValorExit(Sender: TObject);
Begin
{    If dtpFValor.Date < dtpFEmis.date then
    begin
     dtpFValor.setfocus;
      Raise Exception.Create('Error :  Fecha de Giro'+chr(13)
                            +'no puede ser menor que la Fecha de Canje');
    end;}
End;

Procedure TFLetras.pprCanjePreviewFormCreate(Sender: TObject);
Begin
   pprCanje.PreviewForm.ClientHeight := 550;
   pprCanje.PreviewForm.ClientWidth := 700;
   TppViewer(pprCanje.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
End;
/////CIM 22/05/2001

Function TFLetras.PerteneceCondicionPago(xxCond: String): boolean;
Var
   xRegAct: TBookMark;
   xCont: integer;
   xCia, xTDiar, xPeriodo, xNReg, xFPago: String;
Begin
   result := false;
   If (DMCXC.cdsCanjes.RecordCount = 0) Then
      wFlagCond := xxCond;
   If DMCXC.cdsCanjes.RecordCount > 0 Then
   Begin
      DMCXC.cdsCanjes.DisableControls;
      xRegAct := DMCXC.cdsCanjes.GetBookmark;
      xCont := 0;
      DMCXC.cdsCanjes.First;
      While Not DMCXC.cdsCanjes.Eof Do
      Begin
          //if DMCXC.cdsMovCxC2.GotoKey then begin   no hace caso
          //if DMCXC.cdsMovCxC2.Locate ('CIAID;TDIARID;CCANOMES;CCNOREG',VarArrayOf([xcia,xTDiar,xPeriodo,xNReg]) ,[loCaseInsensitive]) then begin
         xFPago := wFlagCond;
         If (xFPago <> xxCond) Then
         Begin
            xCont := xCont + 1;
            If xCont >= 1 Then
            Begin
               result := true;
               exit;
            End;
         End;
         DMCXC.cdsCanjes.Next;
      End; //while

      DMCXC.cdsCanjes.GotoBookmark(xRegAct);
      DMCXC.cdsCanjes.FreeBookmark(xRegAct);
      DMCXC.cdsCanjes.EnableControls;
   End; //if
End;

///////////////////

Procedure TFLetras.ppDetailBand3BeforePrint(Sender: TObject);
Begin
   ppDBText4.text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(DMCXC.cdsletras.FieldByName('TMONID').AsString), 'TMONABR');
End;

Procedure TFLetras.dbgDetCxC2DblClick(Sender: TObject);
Begin

   If (btnActReg1.Enabled) Or ((DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString = 'I') Or
      (DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString = 'T')) Then
   Begin
//      pnlDetalle.Enabled :=False                  ;
      pnlPie.Enabled := False;
      pnlRegistro1.Enabled := True;
      pnlRegistro1.Visible := True;
//      pnlRegistro1.SetFocus                        ;
      DMCXC.cdsDetCxC2.Edit;
      dblcTipReg.Text := DMCXC.cdsDetCxC2.FieldByName('TREGID').AsString;
      dblcTipRegExit(Sender);
      dblcTipReg.Enabled := False;
      DMCXC.cdscpto.close;
      If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
            + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )')
      Else
         DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
            + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
      DMCXC.cdscpto.Open;
      dblcdCpto.enabled := True;
      dblcdCpto.visible := True;
      dblcdCpto.SetFocus;
      dbeImporte.Enabled := True;
   End;
End;

Procedure TFLetras.dbgDetCxC2KeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsDetCxC2.Delete;
      End;
   End;
End;

Procedure TFLetras.btnActReg1Click(Sender: TObject);
Begin
   pnlDetalle.Enabled := False;
   pnlPie.Enabled := False;
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   DMCXC.cdsDetCxC.Insert;
   dblcTipReg.Enabled := True;
   dblcTipReg.Text := '';
   dblcTipReg.SetFocus;
End;

Procedure TFLetras.BitBtn1Click(Sender: TObject);
Var
   xWhere: String;
Begin
   If length(DMCXC.cdsDetCxC2.FieldByName('TREGID').AsString) = 0 Then
      Raise exception.Create('Falta Tipo de Registro');
   // consistencia Concepto
   If length(DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Concepto');
   End;
   // Presupuesto
   xWhere := 'CuentaId=' + QuotedStr(DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString) + ' AND CIAID=' + QuotedStr(dblcCia.text);
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
   Begin
      If DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S' Then
      Begin
         If Length(DMCXC.cdsDetCxC2.FieldByName('CCOSID').AsString) = 0 Then
         Begin
            Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString) + ' Obliga Centro de Costo');
         End;
      End;
      If DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S' Then
      Begin
         If Length(DMCXC.cdsDetCxC2.FieldByName('PARPRESID').AsString) = 0 Then
         Begin
            Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString) + ' Obliga Partida Presupuestal');
         End;
      End;
   End;
   // consistencia Debe Haber
   If length(DMCXC.cdsDetCxC2.FieldByName('CCDH').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Debe/Haber');
   End;
   If DMCXC.cdsDetCXC2.FieldByName('CCMTOORI').AsFloat <= 0 Then
   Begin
      DMCXC.cdsDetCxC2.Edit;
      DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat := 0;
      Raise Exception.Create('Importe debe Ser Mayor a Cero')
   End;
//////////
   If DMCXC.cdsDetCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCxC2.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsDetCxC2.FieldByName('CCTCAMPR').AsFloat > 0 Then
      Begin
         DMCXC.cdsDetCxC2.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC2.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      End;
   End
   Else
   Begin
      DMCXC.cdsDetCxC2.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC2.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      DMCXC.cdsDetCxC2.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
   End;

   If DMCXC.cdsDetCxC2.State = dsInsert Then
   Begin
      DMCXC.cdsPost(DMCXC.cdsDetCxC2);
      DMCXC.cdsDetCxC2.Insert;
      dblcTipReg.Text := '';
      dblcTipReg.Enabled := True;
      dblcTipReg.SetFocus;
   End
   Else
   Begin
      DMCXC.cdsPost(DMCXC.cdsDetCxC2);
      pnlRegistro1.Visible := False;
      pnlDetalle.Enabled := True;
      pnlPie.Enabled := True;
   End;
End;

Procedure TFLetras.BitBtn2Click(Sender: TObject);
Begin
   If DMCXC.cdsDetCxC2.State = dsInsert Then
      DMCXC.cdsDetCxC2.Delete
   Else
   Begin
      DMCXC.cdsDetCxC2.Cancel;
   End;
   pnlRegistro1.Visible := False;
   pnlDetalle.Enabled := True;
   pnlPie.Enabled := True;
   dbgDetCxC2.SetFocus;
End;

Procedure TFLetras.dblcTipRegExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If bbtnRegCanc.Focused Then Exit;

   edtTipReg.Text := DMCXC.DisplayDescrip('TGE128', 'TREGDES', 'TREGID', dblcTipReg.Text);

   If length(edtTipReg.Text) = 0 Then
   Begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcTipReg.SetFocus;
      exit;
   End;
   If DMCXC.cdsDetCxC2.State = dsInsert Then
   Begin
      With DMCXC Do
      Begin
         cdsDetCxC2.FieldByName('CIAID').AsString := cdsMovCxC.FieldByName('CIAID').AsString;
         cdsDetCxC2.FieldByName('TDIARID').AsString := cdsMovCxC.FieldByName('TDIARID').AsString;
         cdsDetCxC2.FieldByName('CCNOREG').AsString := cdsMovCxC.FieldByName('CCNOREG').AsString;
         cdsDetCxC2.FieldByName('CCAAAA').AsString := copy(cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
         cdsDetCxC2.FieldByName('CCANOMES').AsString := cdsMovCxC.FieldByName('CCANOMES').AsString;
         cdsDetCxC2.FieldByName('CLAUXID').AsString := DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString;
         cdsDetCxC2.FieldByName('CLIEID').AsString := cdsMovCxC.FieldByName('CLIEID').AsString;
         cdsDetCxC2.FieldByName('CLIERUC').AsString := cdsMovCxC.FieldByName('CLIERUC').AsString;
         cdsDetCxC2.FieldByName('DOCID').AsString := cdsMovCxC.FieldByName('DOCID').AsString;
         cdsDetCxC2.FieldByName('CCSERIE').AsString := cdsMovCxC.FieldByName('CCSERIE').AsString;
         cdsDetCxC2.FieldByName('CCNODOC').AsString := cdsMovCxC.FieldByName('CCNODOC').AsString;
         cdsDetCxC2.FieldByName('CCTCAMPR').AsFloat := FRound(cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 7, 3);
         cdsDetCxC2.FieldByName('CCFEMIS').AsDatetime := cdsMovCxC.FieldByName('CCFEMIS').AsDatetime;
         cdsDetCxC2.FieldByName('CCFVCMTO').AsDatetime := cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime;
         cdsDetCxC2.FieldByName('CCFCOMP').AsDatetime := cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime;
         cdsDetCxC2.FieldByName('TREGID').AsString := dblcTipReg.Text;
         cdsDetCxC2.FieldByName('CCESTADO').AsString := 'I'; // Activo
         cdsDetCxC2.FieldByName('CCMM').AsString := cdsMovCxC.FieldByName('CCMM').AsString;
         cdsDetCxC2.FieldByName('CCDD').AsString := cdsMovCxC.FieldByName('CCDD').AsString;
         cdsDetCxC2.FieldByName('CCTRI').AsString := cdsMovCxC.FieldByName('CCTRI').AsString;
         cdsDetCxC2.FieldByName('CCSEM').AsString := cdsMovCxC.FieldByName('CCSEM').AsString;
         cdsDetCxC2.FieldByName('CCSS').AsString := cdsMovCxC.FieldByName('CCSS').AsString;
         cdsDetCxC2.FieldByName('CCAATRI').AsString := cdsMovCxC.FieldByName('CCAATRI').AsString;
         cdsDetCxC2.FieldByName('CCAASEM').AsString := cdsMovCxC.FieldByName('CCAASEM').AsString;
         cdsDetCxC2.FieldByName('CCAASS').AsString := cdsMovCxC.FieldByName('CCAASS').AsString;
         cdsDetCxC2.FieldByName('TMONID').AsString := cdsMovCxC.FieldByName('TMONID').AsString;
      End;
   End
   Else
   Begin
      DMCXC.cdsDetCxC2.edit;
   End;

   If DMCXC.cdsDetCxC2.State = dsInsert Then
   Begin
      xWhere := 'TRegId=' + '''' + dblcTipReg.Text + '''';
      DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', xWhere, 'TIPDET');
      DMCXC.cdsDetCxC2.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').AsString;
      If DMCXC.cdsDetCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then // si es en moneda local
      Begin
         DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOMN').AsString;
         DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAMN').AsString;
      End
      Else
      Begin
         DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOME').AsString;
         DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAME').AsString;
      End;
      If Length(DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString) > 0 Then
      Begin
         dblcdCptoExit(sender);
      End;
   End;

   dblcdCpto.Enabled := True;
   DMCXC.cdsCptoCab.IndexFieldNames := 'CptoDes';
End;

Procedure TFLetras.dblcdCptoExit(Sender: TObject);
Var
   ssql, xWhere: String;
Begin

   sDocIdNC := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID');
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CPTOCAB=' + '''' + dblcdCpto.Text + '''';
      If length(DMCXC.BuscaQry('dspTGE', 'CXC208', '*', xWhere, 'CPTOCAB')) > 0 Then
      Begin
         DMCXC.cdsDetCxC2.edit;
         DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         xWhere := 'CuentaId=' + '''' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + '''' + ' AND CIAID=' + quotedStr(dblcCia.text);
         If sDocIdNC = dblcTDoc.text Then
         Begin
            DMCXC.cdsDetCxC2.FieldByName('CCGLOSA').AsString := '';
         End
         Else
         Begin
            If Length(DMCXC.cdsDetCxC2.FieldByName('CCGLOSA').AsString) = 0 Then
               DMCXC.cdsDetCxC2.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
         End;

         If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
         Begin
             //** 20/12/2000 - pjsv
            If (DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S') Then // AND (wActuaPresu = true) then
            Begin
               ssql := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
               DMCXC.cdsCCosto.Close;
               DMCXC.cdsCCosto.DataRequest(ssql);
               DMCXC.cdsCCosto.open;
               dblcdCCosto.Enabled := true;
               dblcdCCosto.Enabled := true
            End
            Else
               dblcdCCosto.Enabled := false;
            If (DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S') And (wActuaPresu = true) Then
            Begin
               dblcTipPre.Enabled := true;
               dblcdPresup.Enabled := true;
               lblPresu.Enabled := true;
               lblTipPre.Enabled := true;
            End
            Else
            Begin
               dblcTipPre.Enabled := false;
               dbeTipPre.Text := '';
               dblcdPresup.Enabled := false;
               lblTipPre.Enabled := false;
               lblPresu.Enabled := false;
            End;
               //**
         End
         Else
         Begin
            Raise Exception.Create('No tiene Cuenta Contable');
         End;
      End
      Else
      Begin
         ShowMessage(' Concepto NO encontrado, reintente!');
         dblcdCpto.SetFocus;
      End;
   End;
End;

Procedure TFLetras.wwDBEdit4Exit(Sender: TObject);
Begin
   If sDocIdNC = dblcTDoc.text Then
   Begin
      If length(dbeGlosa.text) = 0 Then
      Begin
         Raise Exception.Create('Ingrese Glosa de Nota de Crédito');
         dbeGlosa.setFocus;
      End;
   End
End;

Procedure TFLetras.dblcdCCostoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CCOSID=''' + dblcdCCosto.Text + '''';
      edtCCosto.Text := DMCXC.BuscaQry('dspTGE', 'TGE203', 'CCOSDES', xWhere, 'CCOSDES');
      If Length(edtCCosto.Text) = 0 Then
      Begin
         dblcdCCosto.SetFocus;
         Raise exception.Create('Centro de Costo Errado');
      End;
   End;
End;

Procedure TFLetras.dblcTipPreExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
//  if dblcdCnpEgr.Focused then exit;
   If dblcTipReg.Focused Then exit;
   If Length(dblcTipPre.Text) = 0 Then
   Begin
      Raise exception.Create('Falta Tipo de Presupuesto');
      dblcTipPre.SetFocus;
   End;
End;

Procedure TFLetras.dblcdPresupExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
  // if dblcdCnpEgr.Focused then exit;
   If dblcTipReg.Focused Then exit;
  //** 20/12/2000 - pjsv
  //edtPresup.Text:=DMCXC.DMCXC.DisplayDescrip('TGE216','PARPRESDES','PARPRESID',dblcdPresup.Text);
   edtPresup.Text := DMCXC.DisplayDescrip('PPRES201', 'PARPRESDES', 'PARPRESID', dblcdPresup.Text);
  //**
   If Length(edtPresup.text) = 0 Then
   Begin
      Raise exception.Create('Falta Partida Presupuestal');
      dblcdPresup.SetFocus;
   End;

End;

Procedure TFLetras.dbeDHExit(Sender: TObject);
Begin
   If Not bbtnRegCanc.Focused Then Exit;

   If (dbeDH.Text <> 'D') And (dbeDH.Text <> 'H') Then
   Begin
      ShowMessage('Digite sólo D(para Debe) o H(para Haber)');
      DMCXC.cdsDetCxC2.FieldByName('CCDH').Value := '';
      dbeDH.SetFocus;
   End;
End;

Procedure TFLetras.VerificaAsiento;
Var
   xWhere: String;
Begin
   DMCXC.cdsDetCxC2.DisableControls;
   DMCXC.cdsDetCxC2.First;
   While Not DMCXC.cdsDetCxC2.EOF Do
   Begin
      If length(DMCXC.cdsDetCxC2.FieldByName('TREGID').AsString) = 0 Then
      Begin
         DMCXC.cdsDetCxC2.EnableControls;
         Raise exception.Create('Falta Tipo de Registro');
      End;

      If length(DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString) = 0 Then
      Begin
         DMCXC.cdsDetCxC2.EnableControls;
         Raise Exception.Create('Falta Concepto');
      End;

      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'TO' Then
         xConcepto := DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString;

      xWhere := 'CuentaId=' + QuotedStr(DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString) + ' AND CIAID=' + QuotedStr(dblcCia.text);
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
      Begin
         If DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S' Then
         Begin
            If Length(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) = 0 Then
            Begin
               DMCXC.cdsDetCxC2.EnableControls;
               Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Centro de Costo');
            End;
         End;
      End;
      DMCXC.cdsDetCxC2.Next;
   End;
   DMCXC.cdsDetCxC2.EnableControls;
End;

Procedure TFLetras.bbtnImpNDClick(Sender: TObject);
Var
   sZona, sRazon: String;
Begin
   TotalesNDebito;

   pprpND.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NOTADEBITO.RTM';
   pprpND.template.LoadFromFile;
   ppdbDetNDebito.DataSource := DMCXC.dsDetCxC2;
//  DMCXC.cdsDetCxC2.DisableControls;
   DMCXC.cdsDetCxC2.filter := ' TIPDET = ''MN'' OR TIPDET = ''MG'' OR TIPDET = ''IN'' ';
   DMCXC.cdsDetCxC2.filtered := true;

   sRazon := DMCXC.BuscaQry2('dspTGE', 'TGE204', 'CLIERUC,CLIEDIR,CLIEDES,ZONVTAID', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEDES');
   sZona := DMCXC.cdsQry6.FieldByName('ZONVTAID').AsString;
   If Length(sZona) > 0 Then
      pplblNDDIR.text := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString
         + ' - ' + DMCXC.DisplayDescrip('FAC106', 'ZVTADES', 'ZVTAID', sZona)
   Else
      pplblNDDIR.text := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString;

//  pplblNDRUC.text := DMCXC.cdsQry6.FieldByName('CLIERUC').AsString;
//  pplblCodCli.text := dblcdClie.text;
//  pplblCodigo.text :=dblcSerie.text+ ' '+dbeNoDoc.text;
   pplblFecha.text := DateToStr(dtpFEmis.Date);

//  pplblNDImpAFE.text:=  FloatToStrF(xMG, ffNumber, 10, 2);
//  pplblNDImpNOAFE.text:=FloatToStrF(xMN, ffNumber, 10, 2);
//  pplblIgv.text:=     FloatToStrF(xI1, ffNumber, 10, 2);
//  pplblTotal.text:=   FloatToStrF(xTO, ffNumber, 10, 2);
   pplblNDAno.text := DMCXC.DisplayDescrip('TGE185', 'GLOSA', 'ANIO', DMCXC.cdsCCanje.FieldByName('CJAA').AsString);
   pplblNDLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text)); //xdesmon);
//   ppDesigner1.Report:=pprpND;
//   ppDesigner1.ShowModal;
   pprpND.Print;
   pprpND.Stop;
   DMCXC.cdsDetCxC2.filtered := False;
   DMCXC.cdsDetCxC2.EnableControls;
End;

Procedure TFLetras.TotalesNDebito;
Begin
   xTo := 0;
   xMG := 0;
   xI1 := 0;
   xMN := 0;

   DMCXC.cdsDetCxC2.DisableControls;
   DMCXC.cdsDetCxC2.First;
   While Not DMCXC.cdsDetCxC2.EOF Do
   Begin
      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'TO' Then
         xTo := xTo + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'MG' Then
         xMG := xMG + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'I1' Then
         xI1 := xI1 + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString = 'MN' Then
         xMN := xMN + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      DMCXC.cdsDetCxC2.Next;
   End;
   DMCXC.cdsDetCxC2.EnableControls;
End;

Procedure TFLetras.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFLetras.ModificaMontos;
Begin
   If dbgDocCanje.SelectedField.FieldName = 'CCTCAMCJE' Then
   Begin
      dbgDocCanje.RefreshDisplay;
   End;

   If dbgDocCanje.SelectedField.FieldName = 'CCMTOLOC' Then
   Begin
      If (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat) Or
         (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat < 0) Then
      Begin
         If (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat) Then
            ShowMessage(' Error :  Monto excede a Saldo Actual ')
         Else
            ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CJEANTMN').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);

         DMCXC.cdsPost(DMCXC.cdsCanjes);

         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsPost(DMCXC.cdsCanjesClone);
         End;

         dbgDocCanje.SelectedIndex := 8; // debería ser 9 pero no hace caso
         dbgDocCanje.SelectedIndex := 9; // debería ser 9 pero no hace caso
      End
      Else
      Begin
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);

         DMCXC.cdsPost(DMCXC.cdsCanjes);
         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;

            DMCXC.cdsPost(DMCXC.cdsCanjesClone);
         End;
         bbtnSumatClick(Self);
      End;
   End;

   If dbgDocCanje.SelectedField.FieldName = 'CCMTOEXT' Then
   Begin
      If (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat) Or
         (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat < 0) Then
      Begin
         If (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat) Then
            ShowMessage('Monto excede a Saldo Actual')
         Else
            ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);

         DMCXC.cdsPost(DMCXC.cdsCanjes);

         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsPost(DMCXC.cdsCanjesClone);
         End;

         dbgDocCanje.SelectedIndex := 9; // debería ser 9 pero no hace caso
         dbgDocCanje.SelectedIndex := 10; // debería ser 9 pero no hace caso
      End
      Else
      Begin
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);

         DMCXC.cdsPost(DMCXC.cdsCanjes);

         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsPost(DMCXC.cdsCanjesClone);
         End;
         bbtnSumatClick(Self);
      End;
   End;
End;

Procedure TFLetras.dbgDocCanjeColEnter(Sender: TObject);
Begin
//   ModificaMontos;
End;

Procedure TFLetras.GrabaDetCanje1;
Var
   xSalLoc, xSalExt, xSaldoC, xSaldoL: Double;
   sFiltroOriginal, sFiltroAbonosDi, sFiltroAbonosIg, sFiltroAbonosIg1, sSQL: String;

Begin
   sFiltroAbonosDi := '';
   sFiltroAbonosIg := '';
   sFiltroOriginal := '';
   sFiltroOriginal := DMCXC.cdsCanjes.Filter;

   sSQL := 'SELECT DOCID FROM TGE110 WHERE DOCMOD=''CXC'' AND DOCRESTA=''S'' ';
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;
   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.EOF Do
   Begin
      If DMCXC.cdsQry.RecordCount = 1 Then
      Begin
         sFiltroAbonosIg := '(DOCID=' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ')';
         sFiltroAbonosIg1 := '(DOCID2=' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ')';
         sFiltroAbonosDi := '(DOCID<>' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ')';
      End
      Else
         If DMCXC.cdsQry.RecordCount = DMCXC.cdsQry.RecNo Then
         Begin
            sFiltroAbonosIg := sFiltroAbonosIg + ' (DOCID=' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ') ';
            sFiltroAbonosIg1 := sFiltroAbonosIg1 + ' (DOCID2=' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ')';
            sFiltroAbonosDi := sFiltroAbonosDi + ' (DOCID<>' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ') ';
         End
         Else
         Begin
            sFiltroAbonosIg := sFiltroAbonosIg + ' (DOCID=' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ') OR ';
            sFiltroAbonosIg1 := sFiltroAbonosIg1 + ' (DOCID2=' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ') OR ';
            sFiltroAbonosDi := sFiltroAbonosDi + ' (DOCID<>' + QuotedStr(DMCXC.cdsQry.FieldByName('DOCID').AsString) + ') AND ';
         End;
      DMCXC.cdsQry.Next;
   End;

   If sFiltroOriginal <> '' Then
      DMCXC.cdsCanjes.Filter := sFiltroOriginal + ' AND ' + sFiltroAbonosIg
   Else
      DMCXC.cdsCanjes.Filter := sFiltroAbonosIg;
   DMCXC.cdsCanjes.Filtered := True;

   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.EOF Do
   Begin
      InsertaRegistrosdeAbonos;
      DMCXC.cdsCanjes.Next;
   End;

   If sFiltroOriginal <> '' Then
      DMCXC.cdsCanjes.Filter := sFiltroOriginal + ' AND ' + sFiltroAbonosDi
   Else
      DMCXC.cdsCanjes.Filter := sFiltroAbonosDi;
   DMCXC.cdsCanjes.Filtered := True;

   DMCXC.cdsDetCanje.EmptyDataSet;

   DMCXC.cdsLetras.First;
   DMCXC.cdsCanjes.First;
   DMCXC.cdsCanjes.DisableControls;

// Inicio de los Documentos a Canjear SIN NOTAS DE ABONO
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         xSaldoC := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat
      Else
      Begin
         xSaldoC := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
      End;
  // xSaldoC es el Saldo del Cargo
      xSalLoc := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
      xSalExt := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
      While xSaldoC > 0 Do
      Begin
         While (Not DMCXC.cdsLetras.Eof) And (xSaldoC > 0) Do
         Begin
            If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               xSaldoL := DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat
            Else
            Begin
               xSaldoL := DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat;
            End;
     // xSaldoL es el Saldo de la Letra

            DMCXC.cdsDetCanje.Insert;
            If xSaldoL <= xSaldoC Then
            Begin
        // Grabar en cxp305 en monto = a la letra
               GrabaRegCxP305;
               If DMCXC.cdsDetCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
                  xSalLoc := FRound(xSalLoc - DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  xSalExt := FRound(xSalExt - DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  xSaldoC := xSalLoc;
               End
               Else
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
                  xSalExt := FRound(xSalExt - DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat, 15, 2);
                  xSalLoc := FRound(xSalLoc - DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat, 15, 2);
                  xSaldoC := xSalExt;
               End;
               DMCXC.cdsPost(DMCXC.cdsDetCanje);

               DMCXC.cdsLetras.Edit;
               DMCXC.cdsLetras.FieldByName('CCMTOLOC').Value := 0;
               DMCXC.cdsLetras.Delete;
            End
            Else
            Begin

        // Grabar en cxp305 en monto = xSalLoc
               GrabaRegCxP305;
               If DMCXC.cdsDetCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(xSalLoc, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(xSalLoc, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(xSalLoc / DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
               End
               Else
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(xSalExt, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(xSalExt, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(xSalExt * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
               End;
               DMCXC.cdsPost(DMCXC.cdsDetCanje);

               DMCXC.cdsLetras.Edit;
               DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat - xSalLoc, 15, 2);
               DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat - xSalExt, 15, 2);
               DMCXC.cdsPost(DMCXC.cdsLetras);
               xSalLoc := 0;
               xSalExt := 0;
               xSaldoC := 0;
            End;
         End;
      End;
      DMCXC.cdsCanjes.Next;
   End;

  // CREA EL ABONO DE LA NOTA DE CREDITO CON LA FACTURA
   DMCXC.cdsDetCanje.Filter := sFiltroAbonosIg1;
   DMCXC.cdsDetCanje.Filtered := True;

   DMCXC.cdsDetCanje.First;
   While Not DMCXC.cdsDetCanje.EOf Do
   Begin
      sSQL := 'INSERT INTO CXC305(CIAID,CLIEID,CLIERUC,DOCID,CCSERIE,CCNODOC,CCNOREG,TCANJEID,CCCANJE,CCFCANJE,DOCID2,CCSERIE2,CCNODOC2,TMONID,' +
         ' DCCMTOORI,DCCMTOLOC,DCCMTOEXT,DCCUSER,DCCFREG,DCCHREG,DCCAAAA,DCCMM,DCCDD,DCCTRI,DCCSEM,DCCSS,DCCANOMM,DCCAATRI,DCCAASEM,DCCAASS) ' +
         ' VALUES(' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CIAID').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CCCANJE').AsString) + ',' +
         DMCXC.wRepFuncDate + QuotedStr(FormatDateTime(DMCXC.wFormatFecha, DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime)) + '),' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DOCID').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('TMONID').AsString) + ',' +
         FloatToStr(DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat) + ',' +
         FloatToStr(DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat) + ',' +
         FloatToStr(DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString) + ',' +
         DMCXC.wRepFuncDate + QuotedStr(FormatDateTime(DMCXC.wFormatFecha, DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsDateTime)) + '),' +
         QuotedStr(FormatDateTime(DMCXC.wFormatTime, DMCXC.cdsDetCanje.FieldByName('DCCHREG').AsDateTime)) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString) + ',' +
         QuotedStr(DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString) + ')';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
      DMCXC.cdsDetCanje.Next;
   End;

   DMCXC.cdsDetCanje.Filter := '';
   DMCXC.cdsDetCanje.Filtered := False;

   DMCXC.cdsCanjes.Filter := sFiltroOriginal;
   DMCXC.cdsLetras.CancelUpdates;
   DMCXC.cdsDetCanje.First;
   DMCXC.cdsLetras.EnableControls;
   DMCXC.cdsCanjes.EnableControls; //PROBAR AQUI

   DMCXC.AplicaDatos(DMCXC.cdsDetCanje, 'DetCanje');
End;

Procedure TFLetras.InsertaRegistrosdeAbonos;
Begin
   DMCXC.cdsLetras.Insert;
   DMCXC.cdsLetras.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
   DMCXC.cdsLetras.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
   DMCXC.cdsLetras.FieldByName('CLIERUC').AsString := DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString;
   DMCXC.cdsLetras.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
   DMCXC.cdsLetras.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
   DMCXC.cdsLetras.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
   DMCXC.cdsLetras.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
   DMCXC.cdsLetras.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
   DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
   DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsLetras.Post;
End;

Procedure TFLetras.dblcSerieExit(Sender: TObject);
Begin
   dbeNoDoc.Text := DMCXC.BuscaUltNumero(dblcCia.Text, dblcNDDoc.Text, dblcSerie.Text);
End;

Procedure TFLetras.InsertaRegistroDeTotal;
Var
   xTReg, xDH, xCpto, xCta: String;
Begin

   xCpto := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,TREGID,CCDH,CUENTAID,TIPDET,CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CPTOCAB=' + QuotedStr(dblcdConceptoND.text), 'CPTOCAB');

{   xTReg := DMCXC.cdsCptoCab.FieldByName('TREGID').AsString;
   xDH   := DMCXC.cdsCptoCab.FieldByName('CCDH').AsString;
   xCpto := DMCXC.cdsCptoCab.FieldByName('CPTOCAB').AsString;
   xCta  := DMCXC.cdsCptoCab.FieldByName('CUENTAID').AsString;
 }
   xTReg := DMCXC.cdsQry.FieldByName('TREGID').AsString;
   xDH := DMCXC.cdsQry.FieldByName('CCDH').AsString;
   xCpto := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
   xCta := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
//   xTipDet:= DMCXC.cdsQry.FieldByName('TIPDET').AsString;
   xGlosa := DMCXC.cdsQry.FieldByName('CPTODES').AsString;

{   xTReg := DMCXC.cdsCptoCab.FieldByName('TREGID').AsString;
   xDH   := DMCXC.cdsCptoCab.FieldByName('CCDH').AsString;
   xCpto := DMCXC.cdsCptoCab.FieldByName('CPTOCAB').AsString;
   xCta  := DMCXC.cdsCptoCab.FieldByName('CUENTAID').AsString;}

   DMCXC.cdsDetCxC2.Insert;
   DMCXC.cdsDetCxC2.FieldByName('TIPDET').AsString := DMCXC.cdsQry12.FieldByName('TIPDET').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCCanje.FieldByName('CJTOTORI').AsFloat;
   DMCXC.cdsDetCxC2.FieldByName('TREGID').AsString := xTReg;
   DMCXC.cdsDetCxC2.FieldByName('CCDH').AsString := xDH;
   DMCXC.cdsDetCxC2.FieldByName('TMONID').AsString := DMCXC.cdsCCanje.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CPTOID').AsString := xCpto;
   DMCXC.cdsDetCxC2.FieldByName('CUENTAID').AsString := xCta;

   If DMCXC.cdsDetCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCxC2.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsDetCxC2.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsDetCxC2.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsDetCxC2.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End;

   DMCXC.cdsDetCxC2.FieldByName('CCGLOSA').AsString := dbeGlosa.text;

   DMCXC.cdsDetCxC2.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
//CESAR 01/02/2002
//   DMCXC.cdsDetCxC2.FieldByName('DOCID').AsString   := DMCXC.cdsCCanje.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCxC2.FieldByName('DOCID').AsString := dblcNDDoc.Text;
   DMCXC.cdsDetCxC2.FieldByName('CCSERIE').AsString := dblcSerie.Text;
   DMCXC.cdsDetCxC2.FieldByName('TCANJEID').AsString := 'ND';
   DMCXC.cdsDetCxC2.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsDetCxC2.FieldByName('CCNODOC').AsString := dbeNoDoc.Text;
   DMCXC.cdsDetCxC2.FieldByName('CCTCAMPR').Asfloat := FRound(DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 7, 3);
   DMCXC.cdsDetCxC2.FieldByName('CCFEMIS').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime;
   DMCXC.cdsDetCxC2.FieldByName('CCFVCMTO').Value := DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime;
   DMCXC.cdsDetCxC2.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
   DMCXC.cdsDetCxC2.FieldByName('CCESTADO').Value := 'I'; // Activo
   DMCXC.cdsDetCxC2.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsDetCxC2.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC2.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCxC2.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsDetCxC2.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
   DMCXC.cdsDetCxC2.Post;
End;

Procedure TFLetras.Z2bbtnEliminaClick(Sender: TObject);
Var
   xNMes, xSQL, xWhere, sSit, xMes, xAno, xtmonid: String;
   xFacturas, xLetras: String;
   iX: Integer;
Begin

// Verificar que facturas sean de un Solo Pedido
   xWhere := '';
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      If xWhere <> '' Then xWhere := xWhere + ' or ';
      xWhere := xWhere
         + '( CIAID=''' + DMCXC.cdsCanjes.FieldByName('CIAID').AsString + ''' and '
         + 'CLIEID=''' + DMCXC.cdsCanjes.FieldByName('CLIEID').AsString + ''' and '
         + 'DOCID=''' + DMCXC.cdsCanjes.FieldByName('DOCID').AsString + ''' and '
         + 'CCSERIE=''' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString + ''' and '
         + 'CCNODOC=''' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString + ''' )';

{      xFacturas:=xFacturas
                +'Doc. '''+DMCXC.cdsCanjes.FieldByName('DOCID').AsString  +''' '
                +'No.Serie '''+DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString+''' and '
                +'No.Doc. '''+DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString+''' ) '+#13+ '
}
      DMCXC.cdsCanjes.Next;
   End;

   xSQL := 'Select CCPEDIDO FROM CXC301 Where ' + xWhere + ' Group by CCPEDIDO';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSQL);
   DMCXC.cdsQry3.Open;

   If DMCXC.cdsQry3.RecordCount > 1 Then
   Begin
      ShowMessage('Facturas no Pertenecen a Un Mismo Pedido');
      Exit;
   End;

   If DMCXC.cdsQry3.FieldByName('CCPEDIDO').AsString = '' Then
   Begin
      ShowMessage('Facturas no Pertenecen a Un Pedido');
      Exit;
   End;

   DMCXC.cdsMovCxC2Clone.Filtered := True;

// Verificar que Letras no Cerrado el periodo

//   xAno :=Copy(DMCXC.cdsCCanje.FieldByName('CCANOMES').AsString,1,4);
//   xNMes:=Copy(DMCXC.cdsCCanje.FieldByName('CCANOMES').AsString,5,2);
   xAno := Copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsCCanje.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular Letras' + #13 +
         ' El Periodo ya está cerrado');
   End;

// Verificar que Letras no esten cancelados

   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      If (DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat <> DMCXC.cdsLetras.FieldByName('CCPAGEXT').AsFloat) Then
         Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Cancelación');

      If DMCXC.cdsLetras.FieldByName('CCPAGORI').AsFloat > 0 Then
      Begin
         Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Cancelación');
      End
      Else
      Begin
         If DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat <> DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat Then
            Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Cancelación');
      End;
      DMCXC.cdsLetras.Next;
   End;

// Verificar que Facturas no esten contabilizados ni canceladas

   xSQL := 'Select * FROM CXC301 Where ' + xWhere;
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSQL);
   DMCXC.cdsQry3.Open;
   While Not DMCXC.cdsQry3.Eof Do
   Begin

      xAno := Copy(DMCXC.cdsQry3.FieldByName('CCANOMES').AsString, 1, 4);
      xNMes := Copy(DMCXC.cdsQry3.FieldByName('CCANOMES').AsString, 5, 2);
      If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsQry3.FieldByName('CIAID').AsString) Then
      Begin
         Raise Exception.create('No se puede Anular la Provision' + #13 +
            ' pues el Periodo ya está cerrado');
      End;

      If DMCXC.cdsQry3.FieldByName('CC_CONTA').AsString = 'S' Then
      Begin
         Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
            'ya se encuentra Contabilizada');
      End;

      If (abs(DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsQry3.FieldByName('CCSALLOC').AsFloat - DMCXC.cdsQry3.FieldByName('CCPAGLOC').AsFloat) > 0.02) Or
         (abs(DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsQry3.FieldByName('CCSALEXT').AsFloat - DMCXC.cdsQry3.FieldByName('CCPAGEXT').AsFloat) > 0.02) Then
         Raise Exception.Create('No se puede anular porque Saldo de Provisión no coincide con Pagos, puede estar en proceso de otra Cancelación');

//      if DMCXC.cdsQry3.FieldByName('CCPAGORI').AsFloat>0 then
//      begin
//         Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Cancelación');
//      end
//      else begin
//         if DMCXC.cdsQry3.FieldByName('CCSALORI').AsFloat<>DMCXC.cdsQry3.FieldByName('CCMTOORI').AsFloat then
//         Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Cancelación');
//      end;

      DMCXC.cdsQry3.Next;
   End;

// Anular Letras

   If MessageDlg('Anular Facturas y Letras' + chr(13)
      + '    ¿ Esta Seguro ?   ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   xWhere := 'SITUAFLAG=''4''';
   sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUAID', xWhere, 'SITUAID');

   // Anula todas Las letras del canje

   Errorcount := 0;
   DMCXC.DCOM1.AppServer.SOLStartTransaction;

   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.Eof Do
   Begin
      DMCXC.SetHyst(dblcCia.Text, dblcTDoc.Text, DMCXC.cdsLetras.FieldByName('CCNODOC').AsString);
      If Not DMCXC.wSetHys Then
         DMCXC.ControlTran(1, Nil, ''); //ROLLBACK

      DMCXC.cdsLetras.Edit;
      DMCXC.cdsLetras.FieldByName('SITID').AsString := sSIT;
      DMCXC.cdsLetras.FieldByName('CCFSITUA').AsDateTime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('CCUSER').Value := DMCXC.wUsuario;
      DMCXC.cdsLetras.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsLetras.FieldByName('CCESTADO').Value := 'A';
      DMCXC.cdsLetras.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
      DMCXC.cdsLetras.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
      DMCXC.cdsLetras.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsLetras.Next;
   End;
   DMCXC.ControlTran(0, DMCXC.cdsLetras, 'Letras'); //DMCXC.AplicaDatos( DMCXC.cdsLetras, 'Letras'  );

// Anular Facturas,  Actualizar Saldos de Proveedor

   xWhere := '';
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      xSQL := 'Select * FROM CXC301 Where '
         + 'CIAID=''' + DMCXC.cdsCanjes.FieldByName('CIAID').AsString + ''' and '
         + 'CLIEID=''' + DMCXC.cdsCanjes.FieldByName('CLIEID').AsString + ''' and '
         + 'DOCID=''' + DMCXC.cdsCanjes.FieldByName('DOCID').AsString + ''' and '
         + 'CCSERIE=''' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString + ''' and '
         + 'CCNODOC=''' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString + '''';
      DMCXC.cdsQry3.Close;
      DMCXC.cdsQry3.DataRequest(xSQL);
      DMCXC.cdsQry3.Open;

      xMes := strMes(DMCXC.cdsQry3.FieldByName('CCFCMPRB').AsDateTime);
      xAno := StrAno(DMCXC.cdsQry3.FieldByName('CCFCMPRB').AsDateTime);
      xSQL := 'UPDATE TGE401 SET DEBETMN' + xMes + ' = DEBETMN' + xMes + '- ' +
         DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsString + ',' +
         'DEBETME' + xMes + ' = DEBETME' + xMes + '- ' +
         DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsString;
      xtmonid := DMCXC.cdsQry3.FieldByName('TMONID').AsString;

      For iX := StrToInt(xMes) To 13 Do
      //**
      Begin
         xNmes := StrZero(IntToStr(iX), 2);
         If DMCXC.cdsQry3.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
            xsql := xsql + ' ,SALDTME' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + '=''' + DMCXC.wTMonExt + '''' +
               ' THEN  SALDTME' + xNmes + '- ' +
               DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsString +
               ' END),' +
               ' SALDSME' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + '=''' + DMCXC.wTMonExt + '''' +
               ' THEN SALDSME' + xNmes + '- ' +
               DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsString +
               ' END),' +
               ' SALDTMN' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + '=''' + DMCXC.wTMonExt + '''' +
               ' THEN SALDTMN' + xNmes + '- ' +
               DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsString +
               ' END)';
                         //**
         If DMCXC.cdsQry3.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            xsql := xsql + ',SALDTMN' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + '=''' + DMCXC.wTMonLoc + '''' +
               ' THEN  SALDTMN' + xNmes + '- ' +
               DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsString +
               ' END),' +
               ' SALDSMN' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + '=''' + DMCXC.wTMonLoc + '''' +
               ' THEN SALDSMN' + xNmes + '- ' +
               DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsString +
               ' END),' +
               ' SALDTME' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + '=''' + DMCXC.wTMonLoc + '''' +
               ' THEN SALDTME' + xNmes + '- ' +
               DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsString +
               ' END)';
      End;

      If DMCXC.cdsQry3.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         xSQL := xSQL + ' ,DEBESMN' + COPY(DMCXC.cdsQry3.FieldByName('CCANOMES').AsString, 5, 2) +
            ' = DEBESMN' + COPY(DMCXC.cdsQry3.FieldByName('CCANOMES').AsString, 5, 2) + '- ' +
            DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsString;
      If DMCXC.cdsQry3.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
         xSQL := xSQL + ' ,DEBESME' + COPY(DMCXC.cdsQry3.FieldByName('CCANOMES').AsString, 5, 2) +
            '  = DEBESME' + COPY(DMCXC.cdsQry3.FieldByName('CCANOMES').AsString, 5, 2) + '- ' +
            DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsString;

      xSQL := xSQL + ' WHERE CIAID=' + '''' + DMCXC.cdsQry3.FieldByName('CIAID').AsString + ''' AND '
         + ' ANO=' + '''' + xAno + '''' + ' AND '
         + ' CLAUXID=' + '''' + DMCXC.cdsQry3.FieldByName('CLAUXID').AsString + ''' AND '
         + ' AUXID=' + '''' + DMCXC.cdsQry3.FieldByName('CLIEID').AsString + '''';

      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
      End;

      If DMCXC.cdsQry3.FieldByName('CCFLAGVTA').AsString = 'S' Then
      Begin
         xSQL := ' UPDATE FAC305 SET FACESTADO=''ANULADO'', ' +
            ' USERANUL=' + QuotedStr(DMCXC.wUsuario) + ',' +
            ' FECANUL=' + DMCXC.wRepFecServi + ',' +
            ' HORANUL=' + DMCXC.wRepTimeServi +
            ' WHERE DOCID=' + QuotedStr(DMCXC.cdsQry3.FieldByName('DOCID').AsString) +
            ' AND FACSERIE=' + QuotedStr(DMCXC.cdsQry3.FieldByName('CCSERIE').AsString) +
            ' AND NFAC=' + QuotedStr(DMCXC.cdsQry3.FieldByName('CCNODOC').AsString);
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
         End;
      End;

      DMCXC.cdsQry3.edit;
      DMCXC.cdsQry3.FieldByName('CCSALORI').AsFloat := DMCXC.cdsQry3.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsQry3.FieldByName('CCPAGORI').AsFloat;
      DMCXC.cdsQry3.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsQry3.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsQry3.FieldByName('CCPAGEXT').AsFloat;
      DMCXC.cdsQry3.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsQry3.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsQry3.FieldByName('CCPAGLOC').AsFloat;
      DMCXC.cdsQry3.FieldByName('CCESTADO').AsString := 'A';
      DMCXC.cdsQry3.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
      DMCXC.cdsQry3.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
      DMCXC.cdsQry3.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsQry3.Post;
      DMCXC.cdsQry3.DataRequest(' SELECT * FROM CXC301 WHERE ' +
         ' CIAID=' + Quotedstr(DMCXC.cdsQry3.FieldByName('CIAID').AsString) +
         ' AND DOCID=' + Quotedstr(DMCXC.cdsQry3.FieldByName('DOCID').AsString) +
         ' AND CCSERIE=' + Quotedstr(DMCXC.cdsQry3.FieldByName('CCSERIE').AsString) +
         ' AND CCNODOC=' + Quotedstr(DMCXC.cdsQry3.FieldByName('CCNODOC').AsString));

      DMCXC.ControlTran(0, DMCXC.cdsQry3, 'MovCxC'); //DMCXC.AplicaDatos(DMCXC.cdsQry3,'MovCxC');

      xSQL := 'UPDATE CXC302 SET CCESTADO = ''A'' ';
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsQry3.FieldByName('CIAID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + DMCXC.cdsQry3.FieldByName('CCANOMES').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + DMCXC.cdsQry3.FieldByName('TDIARID').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + DMCXC.cdsQry3.FieldByName('CCNOREG').AsString + '''';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
      End;

      DMCXC.cdsCanjes.Next;
   End;

   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'A';
   DMCXC.cdsCCanje.Post;
   DMCXC.cdsCCanje.DataRequest(' Select * from CXC307 WHERE '
      + ' CIAID=' + QuotedStr(dblcCia.Text)
      + ' AND TCANJEID=' + QuotedStr('LC')
      + ' AND CANJE=' + QuotedStr(edtCanje.Text));
   DMCXC.ControlTran(0, DMCXC.cdsCCanje, 'CCanje'); //DMCXC.AplicaDatos( DMCXC.cdsCCanje, 'CCanje'  );

   //COMMIT
   DMCXC.ControlTran(8, Nil, ''); //COMMIT
//   DMCXC.ControlTran(8,DMCXC.cdsLetras,'Letras' );
//   DMCXC.ControlTran(8,DMCXC.cdsQry3,'MovCxC' );
//   DMCXC.ControlTran(8,DMCXC.cdsCCanje,'CCanje' );

   EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage('Canje Anulado, Incluyendo Facturas');

End;

Procedure TFLetras.RevisaDetalleContable;
Var
   xWhere, xTipDet: String;
Begin
   xWhere := 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND CPTOCAB=' + QuotedStr(dblcdConceptoND.text);
   DMCXC.BuscaQry('dspTGE', 'CXC102', '*', xWhere, 'TREGID');

   If (DMCXC.cdsCCanje.FieldByName('CJGASADM').AsFloat > 0) Or // LOS TRES SON MONTOS GRAVADOS (MG)
      (DMCXC.cdsCCanje.FieldByName('CJGASFIN').AsFloat > 0) Or
      (DMCXC.cdsCCanje.FieldByName('CJMORA').AsFloat > 0) Then
   Begin
      DMCXC.cdsQry.Filter := 'TIPDET=' + QuotedStr('MG');
      DMCXC.cdsQry.Filtered := True;
      If DMCXC.cdsQry.RecordCount = 0 Then
      Begin
         DMCXC.cdsQry.Filter := '';
         DMCXC.cdsQry.Filtered := False;
         Raise Exception.Create('No existe concepto de Monto Gravado (MG) en el CxC102');
      End;
   End;

   If (DMCXC.cdsCCanje.FieldByName('CJOTROS').AsFloat > 0) Then
   Begin
      DMCXC.cdsQry.Filter := 'TIPDET=' + QuotedStr('OT');
      DMCXC.cdsQry.Filtered := True;
      If DMCXC.cdsQry.RecordCount = 0 Then
      Begin
         DMCXC.cdsQry.Filter := '';
         DMCXC.cdsQry.Filtered := False;
         Raise Exception.Create('No existe concepto de Otros Montos (OT) en el CxC102');
      End;
   End;

   If (DMCXC.cdsCCanje.FieldByName('CJINTERES').AsFloat > 0) Then
   Begin
      DMCXC.cdsQry.Filter := 'TIPDET=' + QuotedStr('IN');
      DMCXC.cdsQry.Filtered := True;
      If DMCXC.cdsQry.RecordCount = 0 Then
      Begin
         DMCXC.cdsQry.Filter := '';
         DMCXC.cdsQry.Filtered := False;
         Raise Exception.Create('No existe concepto de Interes (IN) en el CxC102');
      End;
   End;

   If (DMCXC.cdsCCanje.FieldByName('CJIGV').AsFloat > 0) Then
   Begin
      DMCXC.cdsQry.Filter := 'TIPDET=' + QuotedStr('I1');
      DMCXC.cdsQry.Filtered := True;
      If DMCXC.cdsQry.RecordCount = 0 Then
      Begin
         DMCXC.cdsQry.Filter := '';
         DMCXC.cdsQry.Filtered := False;
         Raise Exception.Create('No existe concepto de IGV (I1) en el CxC102');
      End;
   End;
   DMCXC.cdsQry.Filter := '';
   DMCXC.cdsQry.Filtered := False;

End;

Procedure TFLetras.rgTipoClick(Sender: TObject);
Var
   xSQL, xWhere: String;
Begin
   If rgTipo.ItemIndex = 0 Then
      dblcCond.Visible := False
   Else
      If rgTipo.ItemIndex = 1 Then
      Begin
         dblcCond.Visible := true;
         xWhere := 'CLIEID=' + Quotedstr(dblcdClie.Text);
         DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,TVTAID,ZONVTAID', xWhere, 'CLIEID');

         xSQL := 'SELECT CCOMERID,DCCOMDES  FROM TGE180 ' +
            'WHERE CIAID=' + Quotedstr(dblcCia.text) +
            'AND SCOMERID=' + Quotedstr(DMCXC.cdsQry.fieldbyname('TVTAID').Asstring) +
            'AND ' + DMCXC.wReplacCeros + '(DCCOMMOD,'''')=''L'' ' +
            'ORDER BY CCOMERID ';
         DMCXC.cdsQry5.Filter := '';
         DMCXC.cdsQry5.Filtered := false;
         DMCXC.cdsQry5.IndexFieldNames := '';
         DMCXC.cdsQry5.Close;
         DMCXC.cdsQry5.DataRequest(xSQL);
         DMCXC.cdsQry5.Open;
         dblcCond.LookupTable := DMCXC.cdsQry5;
         dblcCond.LookupField := 'CCOMERID';

         dblcCond.Selected.Clear;
         dblcCond.Selected.Add('CCOMERID'#9'3'#9'Código');
         dblcCond.Selected.Add('DCCOMDES'#9'20'#9'Descripción');
      End;

End;

Procedure TFLetras.bbtnCloseClick(Sender: TObject);
Begin
   pnlLetra.Visible := false;
End;

Procedure TFLetras.bbtnGenerarClick(Sender: TObject);
Var
   xMonto, xImporte, xTotAcum: Double;
   xxNTemLe, xRangoLet, xxNRango, xValor: String;
   I, xNLet, xIncDia, xxNumLet, xDiasGracia, xPos: Integer;
   xDias: TDate;
   xxWhere, xWhere, sSQL, xxNoReg, xxNLetra: String;
Begin

   If Length(edtTotal.Text) = 0 Then Exit;
   If FRound(StrtoFloat(edtTotal.Text), 15, 2) <= 0 Then Exit;

   If rgTipo.ItemIndex = 0 Then
   Begin
      If Length(dbeDias.Text) = 0 Then Exit;

      If DMCXC.cdsLetras.RecordCount > 0 Then
         If MessageDlg(' Existen Letras Generadas ' + chr(13) + chr(13)
            + '¿ Desea Regenerar letras ?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

      Screen.Cursor := crHourGlass;
      DMCXC.cdsLetras.First;
      While Not DMCXC.cdsLetras.Eof Do
      Begin
         DMCXC.cdsLetras.Delete;
      End;
      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

      xMonto := FRound(StrtoFloat(edtTotal.Text), 15, 2);
      xDias := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
      xIncDia := StrtoInt(Trim(dbeDias.Text));
      xNLet := StrtoInt(Trim(dbeNlet.Text));
   //xxNLetra := dbeLetIni.Text;

      If (DMCXC.wModo = 'A') And (length(dbeLetIni.Text) = 0) Then
      Begin
         xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
            + 'DOCID=' + '''' + dblcTDoc.Text + '''';
         DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
      End;

      xxNLetra := dbeLetIni.Text;

      xTotAcum := 0;
      xImporte := FRound((xMonto / xNLet), 15, 2);

   //xxNoReg := DMCXC.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes);
   //xxNoReg := StrZero( xxNoReg, DMCXC.cdsLetras.FieldByName('CCNOREG').Size );

      xxNumLet := StrToInt(Trim(dbeLetIni.Text));

      For I := 1 To xNLet Do
      Begin
         xxNLetra := '';
         While Length(xxNLetra) = 0 Do
         Begin
            xxNTemLe := IntToStr(xxNumLet);
            xxNLetra := StrZero(xxNTemLe, Length(xxNTemLe));
            xxNumLet := xxNumLet + 1;
            If Not DMCXC.BuscaCxCLet(dblcCia.Text, dblcTDoc.Text, xxNLetra) Then
            Begin
               Break;
            End;
            xxNLetra := '';
         End;

         xDias := xDias + xIncDia;
         DMCXC.cdsLetras.Insert;
         DetalleLetra;
         DMCXC.cdsLetras.FieldByName('VEID').AsString := xVeidMaes;
         DMCXC.cdsLetras.FieldByName('CCNRENOV').AsInteger := 0;
         DMCXC.cdsLetras.FieldByName('CCNRENOVA').AsInteger := 0;

         xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', dblcTDiario.Text);
         xxNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
         xxNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes, StrToInt(xxNoReg));
         xxNoReg := StrZero(xxNoReg, DMCXC.cdsLetras.FieldByName('CCNOREG').Size);

         DMCXC.cdsLetras.FieldByName('CCNOREG').AsString := xxNoReg;
         DMCXC.cdsLetras.FieldByName('CCFVCMTO').AsDatetime := xDias;
         DMCXC.cdsLetras.FieldByName('CCNODOC').AsString := xxNLetra;
         If I = xNLet Then
         Begin
            DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat := FRound(xMonto - xTotAcum, 15, 2)
         End
         Else
         Begin
            DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat := FRound(xImporte, 15, 2);
         End;
         xTotAcum := xTotAcum + DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
         xTotAcum := FRound(xTotAcum, 15, 2);
         xxNoReg := StrZero(IntToStr(StrToInt(xxNoReg) + 1), DMCXC.cdsLetras.FieldByName('CCNOREG').Size);

         DMCXC.cdsLetras.FieldByName('CCMTOORI').Value := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
         If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         End;

         DMCXC.cdsLetras.Post;
      End;

      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

      Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');

      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin
         sSQL := ' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, ' +
            ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, ' +
            ' Z1.TVTADES FROM CXC301 L ' +
            ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID ' +
            ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID ' +
            ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID ' +
            ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID ' +
            ' WHERE L.CIAID=' + QuotedStr(dblcCia.Text) +
            ' and L.TCANJEID=' + QuotedStr('LC') +
            ' and L.CCCANJE=' + QuotedStr(edtCanje.text);
      End;
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         sSQL := ' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, ' +
            ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, ' +
            ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, ' +
            ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, ' +
            ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 ' +
            ' WHERE L.CIAID=' + QuotedStr(dblcCia.Text) +
            ' and L.TCANJEID=' + QuotedStr('LC') +
            ' and L.CCCANJE=' + QuotedStr(edtCanje.text) +
            ' and L.CLIEID=C.CLIEID(+) ' +
            ' and L.TMONID=M.TMONID(+) ' +
            ' and C.ZONVTAID=Z.ZVTAID(+) ' +
            ' and Z.ZVTAID=Z1.TVTAID(+) ';
      End;

      DMCXC.cdsQry4.Close;
      DMCXC.cdsQry4.Datarequest(sSQL);
      DMCXC.cdsQry4.Open;

      bbtnSumatClick(Sender);
      Screen.Cursor := crDefault;
   End
   Else
   Begin
//		 if Length(dbeDias.Text)=0 then Exit;

      xWhere := 'CLIEID=' + Quotedstr(dblcdClie.Text);
      DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,TVTAID,ZONVTAID', xWhere, 'CLIEID');

      xWhere := 'CIAID=' + quotedstr(dblcCia.text)
         + ' and SCOMERID=' + quotedstr(DMCXC.cdsQry.FieldByName('TVTAID').AsString)
         + ' and CCOMERID=' + quotedstr(dblcCond.text);

      If (DMCXC.BuscaQry('dspUltTGE', 'TGE180', 'DCCOMMOD,DCCOMNLET,DCCOMRANGO', xWhere, 'DCCOMMOD') <> 'L') Then
         Raise exception.Create('Seleccione una Condición q genere Letra');

      xNLet := DMCXC.cdsQry.fieldbyname('DCCOMNLET').AsInteger;
      xxNRango := DMCXC.cdsQry.fieldbyname('DCCOMRANGO').AsString;

      If DMCXC.cdsLetras.RecordCount > 0 Then
         If MessageDlg(' Existen Letras Generadas ' + chr(13) + chr(13)
            + '¿ Desea Regenerar letras ?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

      Screen.Cursor := crHourGlass;
      DMCXC.cdsLetras.First;
      While Not DMCXC.cdsLetras.Eof Do
      Begin
         DMCXC.cdsLetras.Delete;
      End;
      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

      xMonto := FRound(StrtoFloat(edtTotal.Text), 15, 2);
      xDias := DMCXC.cdsCCanje.FieldByName('CJFVALOR').Value;
      xDiasGracia := strtoint(DMCXC.BuscaQry('dspUltTGE', 'TGE110', 'GRACIAVCTO', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'GRACIAVCTO'));
//		 xIncDia  := StrtoInt( Trim(dbeDias.Text) );
//		 xNLet    := StrtoInt( Trim(dbeNlet.Text) );

      xxNLetra := dbeLetIni.Text;

      If DMCXC.wModo = 'A' Then
      Begin
         xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
            + 'DOCID=' + '''' + dblcTDoc.Text + '''';
         DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
      End;

      xxNLetra := dbeLetIni.Text;

      xTotAcum := 0;
      xImporte := FRound((xMonto / xNLet), 15, 2);

      xxNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
      xxNoReg := StrZero(xxNoReg, DMCXC.cdsLetras.FieldByName('CCNOREG').Size);

      xxNumLet := StrToInt(Trim(dbeLetIni.Text));

   ///////////////
      For i := 1 To length(xxNRango) Do
      Begin
         xValor := Copy(xxNRango, i, 1);
         If Not isnumeric(xValor) Then
            break;
      End;
      DMCXC.cdsCCanje.Edit;
      DMCXC.cdsCCanje.fieldbyname('CJDIAS').AsInteger := strtoint(Copy(xxNRango, 1, i - 1));

   //////////////

      For I := 1 To xNLet Do
      Begin
         xxNLetra := '';
         While Length(xxNLetra) = 0 Do
         Begin
            xxNTemLe := IntToStr(xxNumLet);
            xxNLetra := StrZero(xxNTemLe, Length(xxNTemLe));
            xxNumLet := xxNumLet + 1;
            If Not DMCXC.BuscaCxCLet(dblcCia.Text, dblcTDoc.Text, xxNLetra) Then
            Begin
               Break;
            End;
            xxNLetra := '';
         End;

     //xDias   := xDias + xIncDia;
     ///////////////////
         xPos := Pos(xValor, xxNRango);
         If i = xNLet Then
            xIncDIa := strtoint(xxNRango)
         Else
            xIncDIa := strtoint(Copy(xxNRango, 1, xPos - 1));

         xxNRango := Copy(xxNRango, xPos + 1, length(xxNRango));

         xDias := (DMCXC.cdsCCanje.fieldbyname('CJFVALOR').AsDateTime + xIncDia) + xDiasGracia;

         If DayOfWeek(xDias) = 7 Then
            xDias := (DMCXC.cdsCCanje.fieldbyname('CJFVALOR').AsDateTime + xIncDia) + 2
         Else
            If DayOfWeek(xDias) = 1 Then
               xDias := (DMCXC.cdsCCanje.fieldbyname('CJFVALOR').AsDateTime + xIncDia) + 1
            Else
               xDias := (DMCXC.cdsCCanje.fieldbyname('CJFVALOR').AsDateTime + xIncDia);

     ///////////////////
         DMCXC.cdsLetras.Insert;
         DetalleLetra;
         DMCXC.cdsLetras.FieldByName('VEID').AsString := xVeidMaes;
         DMCXC.cdsLetras.FieldByName('CCNRENOV').AsInteger := 0;
         DMCXC.cdsLetras.FieldByName('CCNRENOVA').AsInteger := 0;

         DMCXC.cdsLetras.FieldByName('CCNOREG').AsString := xxNoReg;
         DMCXC.cdsLetras.FieldByName('CCFVCMTO').AsDatetime := xDias;
         DMCXC.cdsLetras.FieldByName('CCNODOC').AsString := xxNLetra;
         If I = xNLet Then
         Begin
            DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat := FRound(xMonto - xTotAcum, 15, 2)
         End
         Else
         Begin
            DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat := FRound(xImporte, 15, 2);
         End;
         xTotAcum := xTotAcum + DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
         xTotAcum := FRound(xTotAcum, 15, 2);
         xxNoReg := StrZero(IntToStr(StrToInt(xxNoReg) + 1), DMCXC.cdsLetras.FieldByName('CCNOREG').Size);

         DMCXC.cdsLetras.FieldByName('CCMTOORI').Value := DMCXC.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
         If DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsLetras.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsLetras.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsLetras.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat, 15, 2);
         End;

         DMCXC.cdsLetras.Post;
      End;

      DMCXC.AplicaDatos(DMCXC.cdsLetras, 'Letras');

      Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');

      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin
         sSQL := ' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, ' +
            ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, ' +
            ' Z1.TVTADES FROM CXC301 L ' +
            ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID ' +
            ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID ' +
            ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID ' +
            ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID ' +
            ' WHERE L.CIAID=' + QuotedStr(dblcCia.Text) +
            ' and L.TCANJEID=' + QuotedStr('LC') +
            ' and L.CCCANJE=' + QuotedStr(edtCanje.text);
      End;
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         sSQL := ' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, ' +
            ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, ' +
            ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, ' +
            ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, ' +
            ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 ' +
            ' WHERE L.CIAID=' + QuotedStr(dblcCia.Text) +
            ' and L.TCANJEID=' + QuotedStr('LC') +
            ' and L.CCCANJE=' + QuotedStr(edtCanje.text) +
            ' and L.CLIEID=C.CLIEID(+) ' +
            ' and L.TMONID=M.TMONID(+) ' +
            ' and C.ZONVTAID=Z.ZVTAID(+) ' +
            ' and Z.ZVTAID=Z1.TVTAID(+) ';
      End;

      DMCXC.cdsQry4.Close;
      DMCXC.cdsQry4.Datarequest(sSQL);
      DMCXC.cdsQry4.Open;

      bbtnSumatClick(Sender);
      Screen.Cursor := crDefault;

   End;

End;

Function TFLetras.IsNumeric(S: String): Boolean;
Var
   xCodigo: Integer;
   xReal: Double;
Begin
   Result := False;
   If S = '.' Then
      exit;
   Val(S, xReal, xCodigo);
   If xCodigo <> 0 Then
      exit;
   result := True;
End;

Procedure TFLetras.GeneraAsientoCxC302;
Var
   sSQL, xTReg, xDH, xCpto, xCta, xNoReg: String;
   bDifCambio: boolean;
   nNoReg: integer;
   a, m, d: word;
   dTCambCje: double;
Begin
   DecodeDate(dtpFEmis.date, a, m, d);
   xTAno := StrZero(IntToStr(a), 4);
   xTMes := StrZero(IntToStr(m), 2);

   DMCXC.cdsCanjes.First;
   dTCambCje := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);

   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', DMCXC.cdsCCanje.FieldByName('TDIARID').AsString);
   xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, DMCXC.cdsCCanje.FieldByName('TDIARID').AsString, xTAno, xTMes);
   nNoReg := StrToInt(xNoReg);
   xNoReg := '';
   While Length(xNoReg) = 0 Do
   Begin
      xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes, nNoReg);
      xNoReg := StrZero(xNoReg, 10);
      If Not DMCXC.BuscaCxCReg(dblcCia.Text, DMCXC.cdsCCanje.FieldByName('TDIARID').AsString, xTAno + xTMes, xNoReg) Then
      Begin
         xNoReg := StrZero(xNoReg, 10);
         Break;
      End;
      //xNoReg:='';
      nNoReg := nNoReg + 1;
   End;

   bDifCambio := False;

   DMCXC.cdsCanjes.First;
   DMCXC.cdsCanjes.DisableControls;
   While Not DMCXC.cdsCanjes.EOF Do
   Begin
      Application.ProcessMessages;
      xCpto := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,TREGID,CCDH,CUENTAID,TIPDET,CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) +
         ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CPTOTOT').AsString), 'CPTOCAB');

      xTReg := DMCXC.cdsQry.FieldByName('TREGID').AsString;
      xDH := DMCXC.cdsQry.FieldByName('CCDH').AsString;
      xCpto := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
      xCta := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      xGlosa := DMCXC.cdsQry.FieldByName('CPTODES').AsString;

      DMCXC.cdsDetCxC.Insert;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;

      If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat
      Else
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;

      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := xTReg;
      If xDH = 'D' Then
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
      Else
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';

      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xCpto;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xCta;
      If (DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonLoc) And (DMCXC.cdsCCanje.FieldByName('TMONID').AsString = DMCXC.wTMonLoc) Then
      Begin
         If DMCXC.cdsDetCxC.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
         End;
         bDifCambio := False;
      End
      Else
      Begin
         bDifCambio := (FRound(DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 4) <> FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 4));
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
      End;

      DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC,CCFEMIS,CCFVCMTO', 'CIAID=' + QuotedStr(dblcCia.text) +
         ' AND DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) +
         ' AND CCSERIE=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString) +
         ' AND CCNODOC=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString) +
         ' AND CLIEID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CLIEID').AsString), 'CCNODOC');
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text; //xGlosa;
      DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg; //DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := 'LC';
      DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := edtCanje.Text;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := dTCambCje; //FRound( DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat,15,4);
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsQry.FieldByName('CCFEMIS').AsDaTeTime;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsQry.FieldByName('CCFVCMTO').AsDaTeTime;
      DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
      DMCXC.cdsDetCxC.FieldByName('CCUSER').Value := DMCXC.wUsuario;
      DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecordCount + 1;
      DMCXC.cdsDetCxC.Post;
      If bDifCambio Then
      Begin
         If xDH = 'D' Then
         Begin
            If FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) >
               FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D2', false);
            If FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) <
               FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D1', false);
         End
         Else
         Begin
            If FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) >
               FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D1', false);
            If FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) <
               FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D2', false);
         End;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;

   xCpto := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,TREGID,CCDH,CUENTAID,TIPDET,CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CPTOCAB=' + QuotedStr(dblcdCnpEgr.text), 'CPTOCAB');

   xTReg := DMCXC.cdsQry.FieldByName('TREGID').AsString;
   xDH := DMCXC.cdsQry.FieldByName('CCDH').AsString;
   xCpto := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
   xCta := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
   xGlosa := DMCXC.cdsQry.FieldByName('CPTODES').AsString;

   DMCXC.cdsLetras.DisableControls;
   DMCXC.cdsLetras.First;
   While Not DMCXC.cdsLetras.EOF Do
   Begin
      Application.ProcessMessages;
      DMCXC.cdsDetCxC.Insert;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := xTReg;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := xDH;

      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsLetras.FieldByName('TMONID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xCpto;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xCta;

      If DMCXC.cdsDetCxC.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / dTCambCje, 15, 2);
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * dTCambCje, 15, 2);
      End;

      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;

      DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsLetras.FieldByName('CIAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg; //DMCXC.cdsLetras.FieldByName('CCNOREG').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsLetras.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsLetras.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := 'LC';
      DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := edtCanje.Text;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsLetras.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := dTCambCje; //FRound( DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat,15,4);
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsLetras.FieldByName('CCFEMIS').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsLetras.FieldByName('CCFEMIS').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
      DMCXC.cdsDetCxC.FieldByName('CCUSER').Value := DMCXC.wUsuario;
      DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecordCount + 1;
      DMCXC.cdsDetCxC.Post;
      DMCXC.cdsLetras.Next;
   End;
   DMCXC.cdsLetras.EnableControls;

   dHabe := OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(' + 'CCMTOLOC' + ')', 'CCDH=''H''');
   dDebe := OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(' + 'CCMTOLOC' + ')', 'CCDH=''D''');

   If FRound(dHabe, 15, 2) > FRound(dDebe, 15, 2) Then
   Begin
      GeneraDiferenciaCambioCxC302(xNoReg, 'D2', true);
   End
   Else
   Begin
      If FRound(dHabe, 15, 2) < FRound(dDebe, 15, 2) Then
         GeneraDiferenciaCambioCxC302(xNoReg, 'D1', true);
   End;
End;

Procedure TFLetras.GeneraDiferenciaCambioCxC302(xReg, xTipDet: String; xxTotal: boolean);
Var
   sTRegIdDes, sCtaDif, sCptoDif, sDifDH, sDifTRegId: String;
Begin
   sCtaDif := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', 'TIPDET=' + QuotedStr(xTipDet), 'CUENTAMN');
   sCptoDif := DMCXC.cdsQry.FieldByName('CPTOMN').AsString;
   sDifDH := DMCXC.cdsQry.FieldByName('CCDH').AsString;
   sTRegIdDes := DMCXC.cdsQry.FieldByName('TREGDES').AsString;
   sDifTRegId := DMCXC.cdsQry.FieldByName('TREGID').AsString;

   DMCXC.cdsDetCxC.Insert;
   DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := xTipDet;
   DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := 0;
   DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := sDifTRegId;
   DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := sDifDH;

   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := sCptoDif;
   DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := sCtaDif;

   DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := 0;

   If xxTotal Then
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(Abs(dDebe - dHabe), 15, 2)
   Else
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat :=
         Abs(FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) -
         FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2));

   If xxTotal Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCABR', 'DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) + ' AND DOCMOD=''CXC'' ', 'DOCABR') + ' ' + edtClie.text;
   End;

    //sTRegIdDes;

   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xReg;
   DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsCCanje.FieldByName('CJAA').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString;

   If xxTotal Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := '';
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := '';
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := '';
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);
   End
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);
   End;

   DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := 'LC';
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').Value := DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').Value := DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').Value := DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
   DMCXC.cdsDetCxC.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsCCanje.FieldByName('CJMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsCCanje.FieldByName('CJDD').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsCCanje.FieldByName('CJTRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsCCanje.FieldByName('CJSEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsCCanje.FieldByName('CJSS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsCCanje.FieldByName('CJAASS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecordCount + 1;
   DMCXC.cdsDetCxC.Post;
End;

Procedure TFLetras.Z2bbtnPreviewClick(Sender: TObject);
Var
   xSQL, mes, ano, xwhere, MONABR: String;
   TMoneda, mesdes: String;
   xTotHaber: DOUBLE;
   xNoReg: String;
   dTCambCje: double;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   DMCXC.cdsCanjes.First;
   dTCambCje := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);

   xSQL := ' CIAID=' + QuotedStr(dblcCia.text) +
      ' AND TCANJEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString) +
      ' AND CCCANJE=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CANJE').AsString) +
      ' AND CLIEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CLIEID').AsString);
   xNoReg := DMCXC.BuscaQry('dspTGE', 'CXC302', 'CCNOREG', xSQL, 'CCNOREG');

   If DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString <> 'S' Then
   Begin
      VerificaAsiento;

      DMCXC.GeneraContab(dblcCia.Text, dblcTDiario.Text, DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, xNoReg, Self, 'P');

      // Se Transfiere la Data Generada en el SOLContabiliza
      DMCXC.cdsCXC.Data := DMCXC.cdsMovCnt.data;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      lblVestado.caption := 'Previo';
      lblVProveedor.Caption := edtClie.text;
      xSQL := 'SELECT CNTGLOSA FROM CNT310 WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(dblcTDiario.text) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
      DMCXC.cdsQry5.close;
      DMCXC.cdsQry5.ProviderName := 'dspTGE';
      DMCXC.cdsQry5.DataRequest(xsql);
      DMCXC.cdsQry5.Open;

      lblVTipoCamb.Caption := FloatToStrF(dTCambCje, ffNumber, 10, 4);

      //lblPeriodo.Caption  := meAnoMM.text ;  reemplazado por
      mes := copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 5, 2);
      ano := copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.BuscaQry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      lblVNoCompro.Caption := xNoReg;
      lblVMesDia.caption := DateToStr(dtpFEmis.date);
      lblVestado.caption := 'Previo';
      tMoneda := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMON_LOC', 'TMONID=' + quotedstr(dblcTMon.text), 'TMON_LOC');
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONABR');

      {DMCXC.CdsDetCxC.first;
      while not DMCXC.CdsDetCxC.EOF do
      begin
         if DMCXC.CdsDetCxC.FieldByName('TIPDET').Asstring = 'TO' then
         begin
            ppLabel44.Caption  := MONABR+FloatToStrF(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat,ffNumber,15,2);
                  //15
            break;
         end;
         DMCXC.CdsDetCxC.next;
      end;}
      lblV12.visible := False;
      lblV26.visible := False;
      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');

      {If TMoneda = 'L' then
      begin
         ppLabel12.Visible := false;
         ppDBText1.Visible:= false;
         ppLabel7.Visible:= false;
         ppDBText2.Visible:= false;
      end;}
   End;

   If DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString = 'S' Then
   Begin
      xsql := 'SELECT * FROM CNT301 '
         + 'WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(dblcTDiario.text) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(xNoReg)
         + ' order by CNT301.CNTREG';
      DMCXC.cdsCxC.Close;
      DMCXC.cdsCxC.DataRequest(xSQL);
      DMCXC.cdsCxC.Open;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      mes := copy(DMCXC.cdsCxC.FieldByName('CNTANOMM').asstring, 5, 2);
      ano := copy(DMCXC.cdsCxC.FieldByName('CNTANOMM').asstring, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.Buscaqry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      lblVMesDia.caption := DateToStr(dtpFEmis.date);
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONABR');

      lblVestado.caption := 'Contabilizado';
      xTotHaber := 0;

      // DMCXC.cdsDetCxP.DisableControls;
      {DMCXC.cdsDetCxC.First ;
      while not DMCXC.cdsDetCxC.Eof do
      begin
         if DMCXC.cdsDetCxC.FieldByName('CCDH').AsString = 'H' then
            xTotHaber:= xTotHaber+FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value,15,2);
         DMCXC.cdsDetCxC.Next;
      end;
      DMCXC.cdsDetCxC.First;}

      //ppLabel44.Caption:=MONABR+ FloatToStrF(xTotHaber,ffNumber,15,2);
      lblV12.visible := False;
      lblV26.visible := False;
      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');
   End;

   lblVCiades.Caption := edtCia.text;
   lblVauxiliar.Caption := dblcdClie.Text;
   lblVDiario.Caption := edtdiario.text;
   lblVTD.Caption := dblcTDiario.text;
   lblVTipoCamb.Caption := FloatToStrF(dTCambCje, ffNumber, 10, 4);
   lblVNoCompro.Caption := xNoReg;
   lblVProveedor.Caption := edtClie.text;
   lblVmoneda.caption := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONDES');
   lblVglosa.caption := DMCXC.cdsCxC.FieldByName('CNTGLOSA').asstring;

   DMCXC.cdsCxC.IndexFieldNames := 'CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := Nil;
   DMCXC.cdsCxC.IndexFieldNames := '';
End;

Procedure TFLetras.BitBtn3Click(Sender: TObject);
Begin
   GeneraAsientoCxC302;
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');
End;

Procedure TFLetras.dblcTDiarioExit(Sender: TObject);
Begin
   edtdiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);

   If length(edtdiario.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiario.SetFocus;
   End;
   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('TDIARID').AsString := dblcTDiario.text;

End;

Procedure TFLetras.ppDetailBand4BeforePrint(Sender: TObject);
Var
   sMON: String;
Begin
End;

Procedure TFLetras.FormShow(Sender: TObject);
Var
   xSQL: String;
Begin
   wCondicion := true;
   xCrea := True;
   DMCXC.cdsLetras.IndexFieldNames := 'CIAID;DOCID;CCNODOC';
   xSQL := 'SELECT DOCID,TDIARID FROM TGE110 WHERE DOC_FREG = ''N'' ';
   xSQL := xSQL + ' AND DOCMOD= ''CXC''';
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   wTDoc := DMCXC.cdsQry.FieldByName('DOCID').AsString;
   If DMCXC.wModo = 'A' Then
   Begin
      pc1.ActivePage := ts1;
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
      bbtnImpND.visible := False;
      ts3.tabvisible := False;
   End
   Else
   Begin
      pc1.ActivePage := ts2;
      xFlagGr := False;
      dblcCia.Text := DMCXC.cdsCCanje.FieldByName('CIAID').AsString;
      edtCanje.Text := DMCXC.cdsCCanje.FieldByName('CANJE').AsString;
      FiltraCanje(DMCXC.wModo);
      dbeGirado.text := DMCXC.cdsCCanje.FieldByName('CJEGIRADO').AsString;
      edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
      edtClie.text := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'CLIEID', dblcdClie.Text);
      xSector := DMCXC.cdsQry2.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsQry2.FieldByName('ZONVTAID').AsString;
      xVeIdMaes := DMCXC.cdsQry2.FieldByName('VEID').AsString;
      iNumLetOri := DMCXC.cdsCCanje.FieldByName('CJNUMLET').AsInteger;
      edtTDoc.Text := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCDES', 'DOCID=' + QuotedStr(dblcTDoc.Text) + ' AND DOCMOD=''CXC''', 'DOCDES');
      dblcTDiario.Text := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
      edtdiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      edtTMon.Text := DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMonID', dblcTMon.Text);
      xTMes := copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 5, 2);
      xTAno := copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 1, 4);
      If DMCXC.cdsCCanje.FieldByName('CJINTTIP').AsString = '0' Then
         rgTiempo.ItemIndex := 0
      Else
      Begin
         rgTiempo.ItemIndex := 1;
      End;
      If DMCXC.cdsCCanje.FieldByName('NDEBITO').AsString = 'S' Then
      Begin
         bbtnImpND.visible := True;
         ts3.tabvisible := True
      End
      Else
      Begin
         bbtnImpND.visible := False;
         ts3.tabvisible := False;
      End;

      If DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString = 'I' Then
         EstadoDeForma(0, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, ' ')
      Else
      Begin
         EstadoDeForma(1, DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString, DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString);
      End;
      bbtnSumatClick(Sender);
   End;

   xCrea := False;
End;

Procedure TFLetras.CargaDataSource;
Begin
   dblcTDoc.DataSource := DMCXC.dsCCanje;
   dtpFEmis.DataSource := DMCXC.dsCCanje;
   dblcTMon.DataSource := DMCXC.dsCCanje;
   dbeTCLet.DataSource := DMCXC.dsCCanje;
   dblcdCnpEgr.DataSource := DMCXC.dsCCanje;
   dbeCuenta.DataSource := DMCXC.dsCCanje;
   dbeGlosa.DataSource := DMCXC.dsCCanje;
   dtpFValor.DataSource := DMCXC.dsCCanje;
   dblcdAval.DataSource := DMCXC.dsCCanje;
   dblcdClie.DataSource := DMCXC.dsCCanje;
   dblcdClieRuc.DataSource := DMCXC.dsCCanje;
   dblcClAux.DataSource := DMCXC.dsCCanje;
   dbgPendientes.DataSource := DMCXC.dsMovCxC2;
   dbgDocCanje.DataSource := DMCXC.dsCanjes;
   dbgLetras.DataSource := DMCXC.dsLetras;
   dbeNoReg.DataSource := DMCXC.dsLetras;
   dbeLetra.DataSource := DMCXC.dsLetras;
   dtpFVcmto.DataSource := DMCXC.dsLetras;
   dbeTotal.DataSource := DMCXC.dsLetras;
   dbeMon.DataSource := DMCXC.dsLetras;
   dbeImp.DataSource := DMCXC.dsLetras;
   dbeGas.DataSource := DMCXC.dsLetras;
   dbeIGV.DataSource := DMCXC.dsLetras;
   dbeInt.DataSource := DMCXC.dsLetras;
   dbeLetIni.DataSource := DMCXC.dsCCanje;
   dbeDias.DataSource := DMCXC.dsCCanje;
   dbeNLet.DataSource := DMCXC.dsCCanje;
   dbePInt.DataSource := DMCXC.dsCCanje;
   dbeInte.DataSource := DMCXC.dsCCanje;
   wwDBEdit1.DataSource := DMCXC.dsCCanje;
   dbeGAdm.DataSource := DMCXC.dsCCanje;
   dbeGFin.DataSource := DMCXC.dsCCanje;
   dbeMora.DataSource := DMCXC.dsCCanje;
   dbeOtro.DataSource := DMCXC.dsCCanje;
   wwDBEdit3.DataSource := DMCXC.dsCCanje;
   dbgDetCxC2.DataSource := DMCXC.dsDetCxC2;
   dblcdCpto.DataSource := DMCXC.dsDetCxC2;
   dbeImporte.DataSource := DMCXC.dsDetCxC2;
   dbeDH.DataSource := DMCXC.dsDetCxC2;
   wwDBEdit2.DataSource := DMCXC.dsDetCxC2;
   wwDBEdit4.DataSource := DMCXC.dsDetCxC2;
   dblcdCCosto.DataSource := DMCXC.dsDetCxC2;
   dbeComp.DataSource := DMCXC.dsCCanje;
   dtpFComp.DataSource := DMCXC.dsCCanje;
   ppdbpCanje.DataSource := DMCXC.dsCCanje;
   ppdbpLetras.DataSource := DMCXC.dsLetras;
   ppdbDetNDebito.DataSource := DMCXC.dsDetCxC2;
   dblcTDoc.LookupTable := DMCXC.cdsTDoc;
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcdCnpEgr.LookupTable := DMCXC.cdsCptoCab;
   dblcdAval.LookupTable := DMCXC.cdsClie;
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
   dblcCia.LookupTable := DMCXC.cdsCia;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcSerie.LookupTable := DMCXC.cdsSerie;
   dblcNDDoc.LookupTable := DMCXC.cdsDoc;
   dblcTDiario1.LookupTable := DMCXC.cdsTDiario;
   dblcTipReg.LookupTable := DMCXC.cdsTipReg;
   dblcdCpto.LookupTable := DMCXC.cdsCpto;
   dblcdCCosto.LookupTable := DMCXC.cdsCCosto;
   dblcdPresup.LookupTable := DMCXC.cdsPresup;
End;

End.

