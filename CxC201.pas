Unit CxC201;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CxC201
// Formulario           :   FProvision
// Fecha de Creación    :
// Autor                :   Equipo de Desarrollo
// Objetivo             :   Ventana de mantenimiento de las provisiones de las
//                          cuentas por cobrar
//
// Actualizaciones      :
// HPC_201203_CXC  17/02/2012  Permitir la modificación de los importes que se muestrar
//                             en el registro de ventas.
// HPC_201301_CXC  09/04/2013  Deshabilita la edicion del campo Fecha de Vencimiento y la actualiza segun la fecha de emisión
// HPC_201405_CXC  22/10/2014  Actualización del control transaccional en el módulo de cuentas por cobrar
//                             Notas de Débito.
// HPC_201602_CXC                07/10/2016  Se añade rutina que genera Nota de Crédito Electrónica
// HPC_201701_CXC : Corregir configuración de la dinámica contable
// HPC_201702_CXC : 30.06.2017 Adecuaciones para Facturación Electrónica
//                : 26.10.2017 Cambio de operación de escritura de archivo TXT de aplicación cliente hacia la aplicación servidor CXC
// HPC_201801_CXC   26/03/2018 Cambios en Búsqueda en Maestro de Clientes
//

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, Wwdbdlg, wwdblook,
   ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, DB, DBCtrls, ppReport, ppDBPipe,
   ppCtrls, ppCache, ppDB, ppComm, ppRelatv, ppProd, ppClass, ppBands,
   ppPrnabl, Menus, ppVar, wwclient, ppStrtch, ppMemo, ppEndUsr, ComCtrls,
   pptypes, variants, oaVariables,
   wwDialog, wwidlg, CXCUTIL;

Type
   TFProvision = Class(TForm)
      pnlCabecera: TPanel;
      pnlCab1: TPanel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      pnlCab2: TPanel;
      pnlCab3: TPanel;
      bbtnOK: TBitBtn;
      bbtnBorra: TBitBtn;
      dblcdClie: TwwDBLookupComboDlg;
      dblcdClieRuc: TwwDBLookupComboDlg;
      edtClie: TEdit;
      lblProv: TLabel;
      lblProvRuc: TLabel;
      lblProvNom: TLabel;
      dblcTDoc: TwwDBLookupCombo;
      edtTDoc: TEdit;
      lblTDoc: TLabel;
      lblSerie: TLabel;
      lblNoDoc: TLabel;
      Label11: TLabel;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      Label12: TLabel;
      dbeTCambio: TwwDBEdit;
      Label10: TLabel;
      dtpFVcmto: TwwDBDateTimePicker;
      lblTDiario: TLabel;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      dtpFComp: TwwDBDateTimePicker;
      Label15: TLabel;
      lblAnoMes: TLabel;
      dbeAnoMM: TwwDBEdit;
      dbeNoReg: TwwDBEdit;
      lblNoReg: TLabel;
      lblOCompra: TLabel;
      dbePedido: TwwDBEdit;
      pnlDetalle: TPanel;
      pnlPie: TPanel;
      bbtnCalc: TBitBtn;
      pnlEstado: TPanel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      lblContab: TLabel;
      lblAcepta: TLabel;
      Label3: TLabel;
      bbtnRegresa: TBitBtn;
      bbtnCancela: TBitBtn;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      Z2bbtnContab: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Label9: TLabel;
      bbtnAcepta: TBitBtn;
      dbeNoDoc: TwwDBEdit;
      dblcSerie: TwwDBLookupCombo;
      pnlMontos: TPanel;
      Label16: TLabel;
      dbeMGrav: TwwDBEdit;
      dbeMNoGrav: TwwDBEdit;
      dbeFlete: TwwDBEdit;
      dbeGasFin: TwwDBEdit;
      dbeServ: TwwDBEdit;
      dbeDcto: TwwDBEdit;
      dbeIGV: TwwDBEdit;
      dbeISC: TwwDBEdit;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      Label20: TLabel;
      Label21: TLabel;
      Label22: TLabel;
      Label23: TLabel;
      dblcVende: TwwDBLookupCombo;
      edtVende: TEdit;
      dblcCComer: TwwDBLookupCombo;
      edtCComer: TEdit;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      dbeTotal: TwwDBEdit;
      bbtnGenera: TBitBtn;
      bbtnCalcula: TBitBtn;
      Label8: TLabel;
      dblcClAux: TwwDBLookupCombo;
      dtpFEmis: TwwDBDateTimePicker;
      dbcbCred: TDBCheckBox;
      Z2bbtnEmiDoc: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      dbcbGenDoc: TDBCheckBox;
      pprpFormatos: TppReport;
      dbpFormatos: TppDBPipeline;
      PopupMenu1: TPopupMenu;
      pprpBoleta: TppReport;
      pprpNC: TppReport;
      pprpND: TppReport;
      pnlActuali: TPanel;
      lblActuali: TLabel;
      Z2bbtnContador: TBitBtn;
      dbeDocPlazo: TwwDBEdit;
      Label1: TLabel;
      dblcdTipoOpera: TwwDBLookupComboDlg;
      lblTipoOpera: TLabel;
      edtTipoOpera: TEdit;
      pnlTipoImp: TPanel;
      rgImp: TRadioGroup;
      bbtnVouOk: TBitBtn;
      bbtnVouCa: TBitBtn;
      StaticText2: TStaticText;
      ppHeaderBand2: TppHeaderBand;
      pplblNCRazon: TppLabel;
      pplblNCDIR: TppLabel;
      pplblNCRUC: TppLabel;
      pplblNCFactura: TppLabel;
      pplblNCFacFecha: TppLabel;
      pplblNCConPagoID: TppLabel;
      pplblNCVendedor: TppLabel;
      pplblNCClie: TppLabel;
      pplblNCDescrip: TppLabel;
      pplblAno: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppdbtMtoOri: TppDBText;
      ppdbtGlosa: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppdbcMtoOri: TppDBCalc;
      pplblNCIGV: TppLabel;
      pplblNCTotal: TppLabel;
      pplblNCLetras: TppLabel;
      pplblNCSEUO: TppLabel;
      pplblNCDIA1: TppLabel;
      pplblNCMES1: TppLabel;
      pplblNCANO1: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      dblcdPedido: TwwDBLookupComboDlg;
      Z2bbtnPreview: TBitBtn;
      ppdbpPreview: TppDBPipeline;
      ppField61: TppField;
      ppField62: TppField;
      ppField63: TppField;
      ppField64: TppField;
      ppField65: TppField;
      ppField66: TppField;
      ppField67: TppField;
      ppField68: TppField;
      ppField69: TppField;
      ppField70: TppField;
      ppField71: TppField;
      ppField72: TppField;
      ppField73: TppField;
      ppField74: TppField;
      ppField75: TppField;
      ppField76: TppField;
      ppField77: TppField;
      ppField78: TppField;
      ppField79: TppField;
      ppField80: TppField;
      ppField81: TppField;
      ppField82: TppField;
      ppField83: TppField;
      ppField84: TppField;
      ppField85: TppField;
      ppField86: TppField;
      ppField87: TppField;
      ppField88: TppField;
      ppField89: TppField;
      ppField90: TppField;
      ppField91: TppField;
      ppField92: TppField;
      ppField93: TppField;
      ppField94: TppField;
      ppField95: TppField;
      ppField96: TppField;
      ppField97: TppField;
      ppField98: TppField;
      ppField99: TppField;
      ppField100: TppField;
      ppField101: TppField;
      ppField102: TppField;
      ppField103: TppField;
      ppField104: TppField;
      ppField105: TppField;
      ppField106: TppField;
      ppField107: TppField;
      ppField108: TppField;
      ppField109: TppField;
      ppField110: TppField;
      ppField111: TppField;
      ppField112: TppField;
      ppField113: TppField;
      ppField114: TppField;
      ppField115: TppField;
      ppField116: TppField;
      ppField117: TppField;
      ppField118: TppField;
      ppField119: TppField;
      pprPreview: TppReport;
      pgDocumento: TPageControl;
      TabSheet1: TTabSheet;
      Panel1: TPanel;
      dbgDetCxC: TwwDBGrid;
      btnActReg: TwwIButton;
      TabSheet2: TTabSheet;
      Panel2: TPanel;
      Label14: TLabel;
      dbgDocRefencia: TwwDBGrid;
      btnRegDocRef: TwwIButton;
      pnlRegReferencia: TPanel;
      Label4: TLabel;
      Label24: TLabel;
      Label13: TLabel;
      dblcRefTipoDoc: TwwDBLookupCombo;
      edtReftipDoc: TEdit;
      Panel3: TPanel;
      bbtnDocref: TBitBtn;
      bbtnCancelar: TBitBtn;
      edtRefSerie: TEdit;
      edtRefNodoc: TEdit;
      pprpFAC: TppReport;
      ppDesigner1: TppDesigner;
      ppReport1: TppReport;
      ppHeaderBand3: TppHeaderBand;
      PPRAZON: TppLabel;
      PPDIRECCION: TppLabel;
      PPRUC: TppLabel;
      PPDIA: TppLabel;
      PPMES: TppLabel;
      PPANO: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      pplblcocli: TppLabel;
      pplblnodoc: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBMemo1: TppDBMemo;
      ppFooterBand3: TppFooterBand;
      ppMontoLetras: TppLabel;
      ppDBCalc3: TppDBCalc;
      PPIGV: TppLabel;
      PPTOTAL: TppLabel;
      pplbFASEUO: TppLabel;
      pplblIgvDes: TppLabel;
      pplblFaSim: TppLabel;
      pplblFaSim1: TppLabel;
      ppHeaderBand6: TppHeaderBand;
      pplblCtaCte1: TppLabel;
      pplblCtaCte2: TppLabel;
      pplblNombreAno: TppLabel;
      ppDBText20: TppDBText;
      ppDBText24: TppDBText;
      ppDBText37: TppDBText;
      ppDBText38: TppDBText;
      ppLabel51: TppLabel;
      ppDBText39: TppDBText;
      ppDBText40: TppDBText;
      ppDBText41: TppDBText;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppDBText42: TppDBText;
      ppDBText43: TppDBText;
      ppDBText46: TppDBText;
      ppDBText47: TppDBText;
      ppDBText48: TppDBText;
      ppDBText49: TppDBText;
      ppDBText51: TppDBText;
      ppDBText52: TppDBText;
      ppLabel63: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppDBText53: TppDBText;
      ppDetailBand6: TppDetailBand;
      ppDBText59: TppDBText;
      ppFooterBand5: TppFooterBand;
      ppDBText54: TppDBText;
      ppDBText55: TppDBText;
      ppDBText56: TppDBText;
      ppDBText57: TppDBText;
      ppDBText58: TppDBText;
      ppHeaderBand1: TppHeaderBand;
      pplblBolDia: TppLabel;
      pplblBolmES: TppLabel;
      pplblBolAno: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      pplblBolMonto: TppLabel;
      ppFooterBand1: TppFooterBand;
      pplblBolLetras: TppLabel;
      pplblBolTot: TppLabel;
      pplblBolSEUO: TppLabel;
      ppHeaderBand7: TppHeaderBand;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      pplblNDano: TppLabel;
      ppDetailBand7: TppDetailBand;
      pplblNDImpAfe: TppLabel;
      pplblNDImpNoAfe: TppLabel;
      pplblNDImp: TppLabel;
      pplblNDTotal: TppLabel;
      pplblFecha: TppLabel;
      ppdbtCCGLOSA: TppDBText;
      ppFooterBand6: TppFooterBand;
      ppLabel40: TppLabel;
      ppDBCalc5: TppDBCalc;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppDBText22: TppDBText;
      ppHeaderBand4: TppHeaderBand;
      pplblNDRazon: TppLabel;
      pplblNDDir: TppLabel;
      pplblNDRuc: TppLabel;
      pplblNDDia1: TppLabel;
      pplblNDMes1: TppLabel;
      pplblNDAno1: TppLabel;
      pplblCodCli: TppLabel;
      pplblcodigo: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText7: TppDBText;
      ppDBMemo2: TppDBMemo;
      ppFooterBand4: TppFooterBand;
      pplblNDLetras: TppLabel;
      ppDBCalc4: TppDBCalc;
      pplblIgv: TppLabel;
      pplblTotal: TppLabel;
      pplblNDSEUO: TppLabel;
      pplblIgvDes1: TppLabel;
      pplblNDSIM: TppLabel;
      pplblNDSIM1: TppLabel;
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
      ppDetailBand5: TppDetailBand;
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
      Z2bbtnElimina: TBitBtn;
      lblElimina: TLabel;
      pnlRegistro: TPanel;
      lblTipReg: TLabel;
      lblCnpEgr: TLabel;
      lblDH: TLabel;
      lblImporte: TLabel;
      lblGlosa: TLabel;
      lblCuenta: TLabel;
      lblCCosto: TLabel;
      lblTipPre: TLabel;
      lblPresu: TLabel;
      dblcTipReg: TwwDBLookupCombo;
      dblcdCpto: TwwDBLookupComboDlg;
      edtTipReg: TEdit;
      dbeImporte: TwwDBEdit;
      dbeDH: TwwDBEdit;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      dbeCuenta: TwwDBEdit;
      dbeGlosa: TwwDBEdit;
      StaticText1: TStaticText;
      dblcdCCosto: TwwDBLookupComboDlg;
      edtCCosto: TEdit;
      dblcTipPre: TwwDBLookupCombo;
      dbeTipPre: TwwDBEdit;
      dblcdPresup: TwwDBLookupComboDlg;
      edtPresup: TEdit;
      btnModificaRegVentas: TBitBtn;
      Label2: TLabel;
      edtMontoExportacion: TwwDBEdit;
      Label25: TLabel;
      edtMontoExonerado: TwwDBEdit;
      Label27: TLabel;
      btnHabilitaModifRVentas: TBitBtn;
      btnPasarAExonerado: TBitBtn;
      btnPasarAExportado: TBitBtn;
      btnPasarAExonerado2: TBitBtn;
      rgTDocRef: TRadioGroup;
      dblcTipND: TwwDBLookupCombo;
      edtTipoND: TEdit;
      Label26: TLabel;
      bbtnReEnvia: TBitBtn;
      pnlImprDest: TPanel;
      bbtnImpDest: TBitBtn;
      StaticText3: TStaticText;
      dblcdImpDest: TwwDBLookupComboDlg;
      bbtnImpDestCanc: TBitBtn;

      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure InicializaClientDataSet;
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcTDocEnter(Sender: TObject);
      Procedure dbeSerieExit(Sender: TObject);
      Procedure dbeNoDocExit(Sender: TObject);
      Procedure bbtnAceptaClick(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure bbtnOKClick(Sender: TObject);
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure dtpFEmisExit(Sender: TObject);
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure btnActRegClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbgDetCxCDblClick(Sender: TObject);
      Procedure dblcTipRegExit(Sender: TObject);
      Procedure dblcdCptoExit(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure bbtnCalculaClick(Sender: TObject);
      Procedure bbtnGeneraClick(Sender: TObject);
      Procedure dbeNoRegExit(Sender: TObject);
      Procedure dblcVendeExit(Sender: TObject);
      Procedure dblcCComerExit(Sender: TObject);
      Procedure dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dtpFVcmtoExit(Sender: TObject);
      Procedure dblcdPresupExit(Sender: TObject);
      Procedure dbeDHExit(Sender: TObject);
      Procedure dblcSerieExit(Sender: TObject);
      Procedure dblcdClieEnter(Sender: TObject);
      Procedure dblcdClieRucEnter(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure dblcdCCostoExit(Sender: TObject);
      Procedure dbcbGenDocClick(Sender: TObject);
      Procedure Z2bbtnEmiDocClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure Z2bbtnImprimeClick(Sender: TObject);
      Procedure ppFooterBand2BeforeGenerate(Sender: TObject);
      Procedure dblcTipPreExit(Sender: TObject);
      Procedure Z2bbtnContadorClick(Sender: TObject);
      Procedure dbeDocPlazoExit(Sender: TObject);
      Procedure dblcdTipoOperaExit(Sender: TObject);
      Procedure dblcTMonEnter(Sender: TObject);
      Procedure bbtnVouOkClick(Sender: TObject);
      Procedure bbtnVouCaClick(Sender: TObject);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure dbeGlosaExit(Sender: TObject);
      Procedure Z2bbtnPreviewClick(Sender: TObject);
      Procedure ppDetailBand5BeforePrint(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcRefTipoDocExit(Sender: TObject);
      Procedure bbtnDocrefClick(Sender: TObject);
      Procedure btnRegDocRefClick(Sender: TObject);
      Procedure bbtnCancelarClick(Sender: TObject);
      Procedure dbgDocRefenciaKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgDocRefenciaDblClick(Sender: TObject);
      Procedure Z2bbtnEliminaClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dbeMGravExit(Sender: TObject);
      Procedure dbeMNoGravExit(Sender: TObject);
      Procedure dbeFleteExit(Sender: TObject);
      Procedure dbeGasFinExit(Sender: TObject);
      Procedure dbeServExit(Sender: TObject);
      Procedure dbeDctoExit(Sender: TObject);
      Procedure dbeIGVExit(Sender: TObject);
      Procedure dbeISCExit(Sender: TObject);
      Procedure dbeTotalExit(Sender: TObject);
      Procedure dbeTCambioExit(Sender: TObject);
      Procedure btnModificaRegVentasClick(Sender: TObject);
      Procedure btnHabilitaModifRVentasClick(Sender: TObject);
      Procedure btnPasarAExoneradoClick(Sender: TObject);
      Procedure btnPasarAExportadoClick(Sender: TObject);
      Procedure btnPasarAExonerado2Click(Sender: TObject);
      Procedure dtpFEmisChange(Sender: TObject);
   // Inicio HPC_201602_CXC
      Procedure CXC_ND_FACT_ELEC;
      Procedure SelecImpresDest;
      Procedure rgTDocRefClick(Sender: TObject);
      Procedure dblcTipNDExit(Sender: TObject);
      Procedure bbtnReEnviaClick(Sender: TObject);
      Procedure bbtnImpDestClick(Sender: TObject);
      Procedure dblcdImpDestExit(Sender: TObject);
      Procedure bbtnImpDestCancClick(Sender: TObject);
   // Inicio HPC_201801_CXC
   // cambios en búsqueda del Maestro de Clientes
      procedure dblcdClieClick(Sender: TObject);
   // Fin HPC_201801_CXC
   // procedure pnlImprDestClick(Sender: TObject);
  //  procedure dblcdImpDestCloseDialog(Dialog: TwwLookupDlg);
  //  procedure dblcdImpDestDblClick(Sender: TObject);
   // Final HPC_201602_CXC
   Private
    { Private declarations }
      xIgv: String; // para el valor del IGV
      rIGV, rISC: real;
      xDesMon: String; // para la descripcion de la moneda
      xPlazo: String;
      XFLAG: String;
      xtipoOpera: String;
      StrTmp: String;
      xTGravad, xTGravad2, xTNoGrav, xTIGV, xTIGV2, xTISC, xTDcto, xTServ, xTotal: Real;
   //   Procedure CalculoNivelSupe;
   //   Procedure inicializoCero(xcds: TwwClientDataSet);
   //   Procedure CreaSuperior;
   //   Procedure CalculoNivel;
      Procedure DeshabilitaEdits(xPnl: TPanel);
      Procedure BlanqueaEdits(xPnl: TPanel);
      Procedure Genera;
      Procedure EmiteDoc(xArchivoReporte: String);
      Procedure GeneraComprobante;
      Procedure CargaDataSource;
      Function fg_ValidaMontosRV: Boolean;
      Procedure fg_grabar;
      Procedure fg_habilitaCamposRV(wgTrueFalse: Boolean);
      Procedure fg_Recuperacxc301;
   Public
    { Public declarations }
      Procedure InicializaDatos;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure FiltraMov;
      Procedure GeneraDetalle(xTipDet: String; xMonto: Double; xCpto, xcta, xglosa: String);
      Procedure ConfIngreso;
      Procedure ModificaDetalle;
      Function ValidaDocumento: Boolean;
      Function ValidaCabecera(): Boolean;
      Function AsientoCuadra: Boolean;
      Procedure GeneraRegistro;
   // Inicio HPC_201801_CXC
   // cambios por búsqueda en Maestro de Clientes
{
   // Tool de Busqueda de Cliente
      Procedure ToolBuscaCliCreate(Sender: TObject); //Asociados
   // Evento de Selección de Cliente en búsqueda (doble click)
      Procedure OnEditBuscaCli(Sender: TObject; MantFields: TFields);
}   
   // Fin HPC_201801_CXC
   End;

Var
   FProvision: TFProvision;
   xCrea: Boolean;
   xNuevoProv: Boolean;
   xxLlenaRuc: Boolean;
   xxTCambio: Double;
   xFiltroTDiar: String;
   xTMes, xTAno: String;
   xTAutoNum: String;
   xRegAct2: TBookMark;
   xTDiario: String;
   xNoReg: String;
   xCia: String;
   xTDi: String;
   xAMe: String;
   xNRe: String;
   xFlagGr: Boolean;
   sDocIdNC: String;
   xSector: String;
   xZona: String;
   igvGlosa: String;
   xSQL: String;
   wTDoc: String;
   wIP_Impresora: String;
   wId_Rutadest: String;
   xTienda: String;
   xPVenta: String;
// Inicio HPC_201702_CXC : Definición de variable de control
   xEnvioSunat : String;
// Fin HPC_201702_CXC

Implementation

{$R *.DFM}

Uses CxCDM, oaCC2000, CXC401, CxC778;

Procedure TFProvision.dblcCiaExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If Length(dblcCia.Text) = 0 Then
   Begin
      dblcCia.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Compañía ');
   End;
   edtCia.Text := DMCXC.cdsCia.FieldByName('CIADES').AsString;
   DMCXC.cdsSerie.Filter := 'CIAID=' + QuotedStr(dblcCia.Text);
   DMCXC.cdsSerie.Filtered := True;
   dblcTDoc.Text := DMCXC.cdsDoc.FieldByName('DOCID').AsString;
   edtTDoc.Text := DMCXC.cdsDoc.FieldByName('DOCDES').AsString;
   dblcTDoc.enabled := False;
   edtTDoc.enabled := False;
   rgTDocRef.ItemIndex := 0;
   DMCXC.cdsSerie.Filter := 'CIAID=' + QuotedStr(dblcCia.Text) + 'AND DOCID=' + QuotedStr(dblcTDoc.text);
   DMCXC.cdsSerie.Filtered := True;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   DMCXC.cdsTDoc.Filtered := True;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
   dblcTDocExit(Self);
   rgTDocRefClick(Sender);
End;

Procedure TFProvision.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFProvision.FiltraMov;
Begin
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + dblcTDoc.Text + '''' + ' and '
      + 'CCSERIE=' + '''' + dblcSerie.Text + '''' + ' and '
      + 'CCNODOC=' + QuotedStr(dbeNoDoc.Text) + ' and '
      + 'CCNOREG=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString) + ' ORDER BY TREGID');
   DMCXC.cdsVende.Filtered := False;
   DMCXC.cdsVende.Filter := '';
   DMCXC.cdsVende.Filter := 'CIAID=' + '''' + dblcCia.Text + '''';
   DMCXC.cdsVende.Filtered := True;

   DMCXC.cdsCComer.Filtered := False;
   DMCXC.cdsCComer.Filter := '';
   DMCXC.cdsCComer.Filter := 'CIAID=' + '''' + dblcCia.Text + '''';
   DMCXC.cdsCComer.Filtered := True;
End;

Procedure TFProvision.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);

Begin
   pnlCab1.Enabled := False;
   pnlCab2.Enabled := False;
   pnlCab3.Enabled := False;
   dtpFComp.Enabled := False;
   dbeNoReg.Enabled := False;
   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgDetCxC.ReadOnly := True;
   pnlMontos.Enabled := False;
   btnActReg.Enabled := False;
   btnRegDocRef.Enabled := False;

   pnlPie.Refresh;
   pnlPie.Enabled := False;
   bbtnRegresa.Enabled := False;
   bbtnCancela.Enabled := False;
   Z2bbtnGraba.Enabled := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled := False;
   Z2bbtnContab.Enabled := False;
   Z2bbtnNuevo.Enabled := False;
   Z2bbtnPreview.Enabled := False;
   Z2bbtnElimina.Enabled := False;

   Z2bbtnImprime.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;
   lblElimina.Visible := False;

   If xxModo = 0 Then
   Begin
      If xMovEstado = ' ' Then
      Begin
         pnlCab1.Enabled := True;
         lblActivo.Visible := False;
         dblcCia.SetFocus;
      End;
      If xMovEstado = 'X' Then
      Begin
         pnlCab2.Enabled := True;
         pnlCab3.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dtpFEmis.SetFocus;
      End;
      If xMovEstado = 'T' Then
      Begin
         pnlCab2.Enabled := True;
         pnlCab3.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         lblActivo.Visible := False;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
         dblcdTipoOpera.Enabled := True;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
         dtpFEmis.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
         pnlCab2.Enabled := True;
         pnlCab3.Enabled := True;
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
         pnlPie.Enabled := True;
         Z2bbtnImprime.Enabled := True;
         Z2bbtnPreview.Enabled := True;
         lblContab.Visible := True;
      End
      Else
      Begin
         If xMovEstado = 'T' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.ReadOnly := False;
            pnlMontos.Enabled := True;
            btnActReg.Enabled := True;
            btnRegDocRef.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;

            lblActivo.Visible := True;
         End;
         If xMovEstado = 'I' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.ReadOnly := False;
            pnlMontos.Enabled := True;
            btnActReg.Enabled := True;
            btnRegDocRef.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnPreview.Enabled := True;
            lblActivo.Visible := True;
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnContab.Enabled := True;
            Z2bbtnPreview.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnElimina.Enabled := True;
            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;
            pnlPie.Enabled := True;
            lblAnula.Visible := True;
         End;
         If xMovEstado = 'E' Then
         Begin
            pnlDetalle.Enabled := True;
            pnlPie.Enabled := True;
            lblElimina.Visible := True;
         End;
      End;
   End;
   If DMCXC.wModo = 'C' Then
   Begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled := False;
      pnlCab2.Enabled := False;
      pnlCab3.Enabled := False;
      bbtnOK.Enabled := False;
      bbtnBorra.Enabled := False;

      pnlDetalle.Enabled := False;
      dbgDetCxC.ReadOnly := True;
      pnlMontos.Enabled := False;
      btnActReg.Enabled := False;
      btnRegDocRef.Enabled := True;

      pnlPie.Refresh;
      pnlPie.Enabled := False;
      bbtnRegresa.Enabled := False;
      bbtnCancela.Enabled := False;
      Z2bbtnGraba.Enabled := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
      Z2bbtnPreview.Enabled := True;
   End
   Else
   Begin
      If (DMCXC.wModo = 'A') And (xxModo = 1) Then
      Begin
         Z2bbtnNuevo.Enabled := True;
         pnlPie.Refresh;
         pnlPie.Enabled := True;
      End;
   End;
End;

Procedure TFProvision.InicializaClientDataSet;
Begin
   // Filtra Tipos de documentos aptos para guardar como Provisión
   DMCXC.cdsDetCxC.EnableControls;
   dbgDetCxC.Enabled := True;
   dbgDetCxC.ReadOnly := False;
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where CIAID=' + '''' + '' + '''');
End;

Procedure TFProvision.dblcTDocExit(Sender: TObject);
Var
   xFiltro: String;
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;
   If Length(dblcTDoc.Text) = 0 Then
   Begin
      dblcTDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento ');
   End;

//   edtTDoc.Text := DMCXC.cdsTDoc.FieldByName('DOCDES').AsString;
   edtTDoc.Text := DMCXC.cdsDoc.FieldByName('DOCDES').AsString;
   DMCXC.cdsSerie.Filter := 'CIAID=' + QuotedStr(dblcCia.Text) + 'AND DOCID=' + QuotedStr(dblcTDoc.text);
   DMCXC.cdsSerie.Filtered := True;

   If length(edtTDoc.Text) > 0 Then
   Begin
   // Asigna Tipo de Diario a lookup combo TDiario
      xTDiario := DMCXC.cdsTDoc.FieldByName('TDIARID').AsString;
   // Busca descripción TDiario y asigna a edit TDiario
      edtTDiario.Text := DMCXC.displayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
   // Filtra Tipo de Diario específico
      xFiltro := 'TDiarID=' + DMCXC.cdsTDoc.FieldByName('TDIARID').AsString;
      If Length(DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString) > 0 Then
      Begin
         xFiltro := xFiltro + 'or TDiarID=' + '''' + DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString + '''';
      End;
      DMCXC.cdsTDiario.Filter := '';
      DMCXC.cdsTDiario.Filter := xFiltro;
      DMCXC.cdsTDiario.Filtered := true;
      If DMCXC.cdsTDiario.Recordcount = 1 Then
         dblcTDiario.Enabled := false
      Else
      Begin
         dblcTDiario.Enabled := true;
      End;
      dbeDocPlazo.Text := DMCXC.cdsTDoc.FieldByName('DOCPLAZO').AsString;
      xPlazo := dbeDocPlazo.Text;
     //**
   End;
   DMCXC.cdsTDoc.Filtered := false;
End;

Procedure TFProvision.dblcTDocEnter(Sender: TObject);
Begin
   DMCXC.cdsTDoc.Filtered := True;
End;

Procedure TFProvision.dbeSerieExit(Sender: TObject);
Begin
   If Length(dblcSerie.Text) = 0 Then
   Begin
      dblcSerie.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Serie ');
   End;
End;

Procedure TFProvision.dbeNoDocExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If dblcSerie.Focused Then Exit;
   dbeNoDoc.Text := TRIM(dbeNoDoc.Text);
   If Length(dbeNoDoc.Text) = 0 Then
   Begin
      dbeNoDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar No.Documento ');
   End;
End;

Procedure TFProvision.bbtnAceptaClick(Sender: TObject);
Var
   xSQL, xCCNoReg: String;
   xwAno, xwMes, xwDia: word;
Begin
   decodedate(DMCXC.DateS, xwAno, xwMes, xwDia);
   If Not ValidaDocumento Then Exit;

   If (dblcTDoc.Text = '25') Or (dblcTDoc.Text = '24') Or
      (dblcTDoc.Text = '26') Or (dblcTDoc.Text = '33') Then
      dtpFVcmto.Enabled := False
   Else
      dtpFVcmto.Enabled := True;

   If DMCXC.BuscaCxCDoc(dblcCia.Text, dblcTDoc.Text, dblcSerie.Text, dbeNoDoc.Text) Then
   Begin
      dbeNoDoc.SetFocus;

      Raise Exception.Create(' Error : Documento ya Existe ')
   End;

   xSQL := 'Select nvl(max(CCNOREG),''0000000000'') CCNOREG '
      + '  from CXC301 '
      + ' where CIAID=' + quotedstr(dblcCia.Text)
      + '   and CCANOMES=' + quotedstr(inttostr(xwAno) + strzero(inttostr(xwMes), 2))
      + '   and TDIARID=' + quotedstr(xTDiario);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.recordcount = 0 Then
      xCCNoReg := '0000000001'
   Else
      xCCNoReg := strzero(inttostr(strtoint(DMCXC.cdsQry.FieldByName('CCNOREG').AsString) + 1), 10);

   DMCXC.cdsMovCxC.Insert;
   DMCXC.cdsMovCxC.FieldByName('DOCPLAZO').AsString := xPlazo;
   DMCXC.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsMovCxC.FieldByName('DOCID').AsString := dblcTDoc.Text;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := dblcSerie.Text;
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := dbeNoDoc.Text;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString := xTDiario;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'I';
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('FGEN_DOC').AsString := 'N';
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := inttostr(xwAno) + strzero(inttostr(xwMes), 2);
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').Value := xCCNoReg;
   dtpFEmis.Date := DMCXC.dateS;
   dtpFVcmto.Date := DMCXC.dateS;
   DMCXC.cdsMovCxC.Post;
   xSQL := ' Insert into CXC301( CIAID, DOCID,CCSERIE, CCNODOC, TDIARID, DOCPLAZO,CCNOREG, CCANOMES, CCUSER, CCFREG, CCHREG, CCESTADO,FGEN_DOC ) '
      + ' Values( ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCPLAZO').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCUSER').AsString) + ', '
      + '           trunc(sysdate),  '
      + '           sysdate, '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString) + ', '
      + quotedstr(DMCXC.cdsMovCxC.fieldbyname('FGEN_DOC').AsString) + ' )';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('No se pudo insertar la provisión');
      bbtnBorraClick(Self);
      ;
      exit;
   End;

   xFlagGr := True;
   edtTDiario.Text := DMCXC.displayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
   FiltraMov;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
   // HABILITA O DESHABILITA EMISIÓN DE DOCUMENTOS
   If DMCXC.RecuperaDatos('TGE110', '*', 'DOCID=''' + trim(dblcTDoc.Text) + ''' AND DOCMOD=''CXC''') Then
   Begin
      If DMCXC.cdsqry2.FieldByName('F_EMIDOC').AsString = 'S' Then
         dbcbGenDoc.Enabled := True
      Else
         dbcbGenDoc.Enabled := false;
   End
   Else
   Begin
      dbcbGenDoc.Enabled := false;
   End;
End;

Procedure TFProvision.InicializaDatos;
Begin
   xFlagGr := False;

   dblcCia.Text := '';
   edtCia.Text := '';
   dblcTDoc.Text := '';
   edtTDoc.Text := '';
   dblcSerie.Text := '';
   dbeNoDoc.Text := '';
   dblcdClieRuc.Text := '';
   dblcdClie.Text := '';
   edtClie.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCambio.Text := '';
   dbePedido.Text := '';
   dblcdPedido.Text := '';
   dblcVende.Text := '';
   edtVende.text := '';
   dblcCComer.Text := '';
   edtCComer.Text := '';
   dbcbCred.Checked := False;

   dblcTDiario.Text := '';
   edtTDiario.Text := '';
   dtpFComp.Date := DMCXC.dateS;
   dbeNoReg.Text := '';

   dbeMGrav.Text := '';
   dbeMNoGrav.Text := '';
   dbeFlete.Text := '';
   dbeGasFin.Text := '';
   dbeServ.Text := '';
   dbeDcto.Text := '';
   dbeIGV.Text := '';
   dbeISC.Text := '';
   dbeTotal.Text := '';
   dblcVende.enabled := (DMCXC.wVRN_VtaPed = 'S');
   dbeDocPlazo.enabled := (DMCXC.wVRN_VtaPed = 'S');
   dblcdPedido.enabled := (DMCXC.wVRN_VtaPed = 'S');
End;

Procedure TFProvision.bbtnBorraClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      If xFlagGr Then
      Begin
         DMCXC.cdsDetCxC.CancelUpdates;
         xSQL := ' Delete CXC301 '
            + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
            + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)
            + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString)
            + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString);

         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            DMCXC.DCOM1.AppServer.RetornaTransaccion;
            ShowMessage('No se puede eliminar los datos de la cabecera');
            exit;
         End;
         DMCXC.cdsMovCxC.Delete;
         InicializaClientDataSet;
         InicializaDatos;
         EstadoDeForma(0, ' ', ' ');
      End
      Else
      Begin
         DMCXC.cdsMovCxC.CancelUpdates;
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      End;
   End
   Else
   Begin
      DMCXC.cdsMovCxC.CancelUpdates;
      EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
   End;
End;

Procedure TFProvision.bbtnOKClick(Sender: TObject);
Var
   sZona: String;
   XSQL: String;
Begin
   If Not ValidaCabecera Then exit;
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdTipoOpera.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdTipoOpera.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   xTipoOpera := dblcdTipoOpera.Text;
   DMCXC.cdsMovCxC.Edit;

// Inicio HPC_201801_CXC
// cambios en búsqueda del Maestro de Clientes
   DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
   DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
   DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := dblcdClieRuc.Text;
// Fin HPC_201801_CXC

   DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsMovCxC.FieldByName('TVTAID').AsString := xSector;
   DMCXC.cdsMovCxC.FieldByName('ZVTAID').AsString := xZona;
   DMCXC.cdsMovCxC.FieldByName('FLAGVAR').AsString := '.'; //NO PONER CLEAR
   DMCXC.cdsMovCxC.Post;
   If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'X') Or
      (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') Then
      GeneraRegistro;
   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);
   ConfIngreso;
   ModificaDetalle;
   If dbcbGenDoc.Checked Then
   Begin
      btnActReg.Enabled := False;
      btnRegDocRef.Enabled := False;
      DeshabilitaEdits(pnlMontos);
      bbtnCalcula.Enabled := False;
      bbtnGenera.Enabled := False;
      Z2bbtnEmiDoc.Enabled := True;
   End
   Else
   Begin
      btnActReg.Enabled := True;
      btnRegDocRef.Enabled := True;
      bbtnCalcula.Enabled := True;
      bbtnGenera.Enabled := True;
      Z2bbtnEmiDoc.Enabled := False;
   End;
   If DMCXC.wModo = 'M' Then
   Begin
      XSQL := 'SELECT * FROM CXC304 where  CIAID='''
         + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString
         + ''' AND TDIARID=''' + DMCXC.CDSMOVCXC.FieldByName('TDIARID').AsString
         + ''' AND CCNOREG=''' + DMCXC.CDSMOVCXC.FieldByName('CCNOREG').AsString
         + ''' AND CCANOMM=''' + DMCXC.CDSMOVCXC.FieldByName('CCANOMES').AsString
         + ''' AND CLIEID=''' + DMCXC.CDSMOVCXC.FieldByName('CLIEID').AsString
         + ''' AND TCANJEID=''RF''';
      DMCXC.cdscanje.close;
      DMCXC.cdscanje.datarequest(XSQL);
      DMCXC.cdscanje.open;

   End
   Else
   Begin
      XSQL := 'SELECT * FROM CXC304 WHERE '
         + ' CIAID=''DD''  AND  TCANJEID=''RF''';
      DMCXC.cdsCanje.Close;
      DMCXC.cdsCanje.Datarequest(XSQL);
      DMCXC.cdsCanje.Open;
   End;
   dblcRefTipoDoc.Selected.Clear;
   dblcRefTipoDoc.Selected.Add('DOCID'#9'12'#9'Código'#9'T');
   dblcRefTipoDoc.Selected.Add('DOCDES'#9'15'#9'Descripción'#9'F');
   If dbcbGenDoc.Checked Then
      Z2bbtnEmiDocClick(Sender);
End;

Procedure TFProvision.GeneraRegistro;
Var
   xsql, xMes, xNoReg: String;
   wAno, wMes, wDia: Word;
   nNoReg: Integer;
Begin
   DecodeDate(dtpFComp.Date, wAno, wMes, wDia);

   If wMes < 10 Then
      xMes := '0' + inttostr(wMes)
   Else
      xMes := inttostr(wMes);
   xTMes := xMes;
   xTAno := IntToStr(wAno);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CPTOID').AsString := dblcdTipoOpera.text;
   DMCXC.cdsMovCxC.FieldByName('UBIID').AsString := DMCXC.wsOfi;
   //OTRA OPCION
   xNoReg := dbeNoReg.text; // Jala el numero de Comprobante preguntar a Jorge
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := xNoReg;
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := IntToStr(wAno) + xMes;
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
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
   DMCXC.cdsMovCxC.Post;

   xSQL := ' Update CXC301 '
      + '    set CCTCAMAJ = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCTCAMAJ').AsFloat) + ','
      + '        CCTCAMPR = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCTCAMPR').AsFloat) + ','
      + '        TVTAID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TVTAID').AsString) + ','
      + '        ZVTAID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('ZVTAID').AsString) + ','
      + '        DOCPLAZO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCPLAZO').AsString) + ','
      + '        CCPEDIDO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCPEDIDO').AsString) + ','
      + '        CCPTOTOT = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCPTOTOT').AsString) + ','
      + '        CTATOTAL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CTATOTAL').AsString) + ','
      + '        CPTOID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CPTOID').AsString) + ','
      + '        UBIID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('UBIID').AsString) + ','
      + '        CCNOREG = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString) + ','
      + '        CCANOMES = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString) + ','
      + '        CLAUXID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLAUXID').AsString) + ','
      + '        CLIEID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString) + ','
      + '        CLIERUC = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIERUC').AsString) + ','
      + '        CCLOTE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCLOTE').AsString) + ','
      + '        TMONID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TMONID').AsString) + ','
      + '        CCOMERID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCOMERID').AsString) + ','
      + '        CCFEMIS = ' + quotedstr(datetostr(DMCXC.cdsMovCxC.FieldByname('CCFEMIS').AsDateTime)) + ','
      + '        CCFVCMTO = ' + quotedstr(datetostr(DMCXC.cdsMovCxC.FieldByname('CCFVCMTO').AsDateTime)) + ','
      + '        CCFCMPRB = ' + quotedstr(datetostr(DMCXC.cdsMovCxC.FieldByname('CCFCMPRB').AsDateTime)) + ','
      + '        CCAAAA = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAAAA').AsString) + ','
      + '        CCMM = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCMM').AsString) + ','
      + '        CCDD = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCDD').AsString) + ','
      + '        CCTRI = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCTRI').AsString) + ','
      + '        CCSEM = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSEM').AsString) + ','
      + '        CCSS = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSS').AsString) + ','
      + '        CCAATRI = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAATRI').AsString) + ','
      + '        CCAASEM = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAASEM').AsString) + ','
      + '        CCAASS = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAASS').AsString) + ','
      + '        CCUSER = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCUSER').AsString) + ','
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      + '        COD_TIP_NC =' + quotedstr(DMCXC.cdsMovCxC.FieldByName('COD_TIP_NC').AsString) + ','
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
      + '        CCFREG = trunc(sysdate), '
      + '        CCHREG = sysdate, '
      + '        CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString) + ' '
      + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
      + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)
      + '    and DOCID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
      + '    and CCSERIE=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)
      + '    and CCNODOC=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString);

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se puede actualizar los datos de la cabecera');
      exit;
   End;
   FEmiDoc.wciaid := dblcCia.Text;
   FEmiDoc.wccnoreg := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   FEmiDoc.wccanomm := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
   FEmiDoc.wtdiarid := dblcTDiario.Text;
   xsql := 'SELECT * FROM CXC311 WHERE CIAID=' + quotedstr(dblcCia.Text) +
      ' AND CCANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND TDIARID=' + quotedstr(dblcTDiario.Text) +
      ' AND CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
   FEmiDoc.cdsEmiDoc.close;
   FEmiDoc.cdsEmiDoc.DataRequest(xsql);
   FEmiDoc.cdsEmiDoc.open;
End;

Procedure TFProvision.GeneraComprobante;
Var
   xsql, xMes: String;
   wAno, wMes, wDia: Word;
   nNoReg: Integer;
Begin
   If (DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString = '') Or (DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString = 'X') Then
   Begin
      xTAutoNum := DMCXC.displayDescrip('TGE104', 'AutoNum', 'TDiarID', dblcTDiario.Text);
      xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
      nNoReg := StrToInt(xNoReg);
      xNoReg := '';
      While Length(xNoReg) = 0 Do
      Begin
         xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes, nNoReg);
         xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
         If Not DMCXC.BuscaCxCReg(dblcCia.Text, dblcTDiario.Text, xTAno + xTMes, xNoReg) Then
         Begin
            xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
            Break;
         End;
         nNoReg := nNoReg + 1;
      End;

      xSQL := ' Update CXC301 '
         + '    set CCNOREG = ' + quotedstr(xNoReg)
         + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)
         + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := xNoReg;
   End;
End;

Procedure TFProvision.ModificaDetalle;
Begin
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC.FieldByName('TMONID').AsString;
      If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then // si es en moneda local
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      End;
      DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 7, 3);
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDatetime;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime;
      If copy(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString, 1, 2) = '12' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtTipoOpera.text;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := dblcdTipoOpera.text;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
End;

Procedure TFProvision.ConfIngreso;
Begin
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   pnlMontos.Enabled := True;
   dbeMGrav.Enabled := False; // False;
   dbeMNoGrav.Enabled := False; // False;
   dbeFlete.Enabled := False; // False;
   dbeGasFin.Enabled := False; // False;
   dbeServ.Enabled := False; // False;
   dbeDcto.Enabled := False; // False;
   dbeIGV.Enabled := False; // False;
   dbeISC.Enabled := False; // False;
   dbeTotal.Enabled := True;
   edtMontoExonerado.Enabled:=False;
   edtMontoExportacion.Enabled:=False;
   Filtracds(DMCXC.cdsModelo, 'SELECT TIPDET FROM CXC102 WHERE '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CPTOCAB=' + QuotedStr(dblcdTipoOpera.text));

   DMCXC.cdsModelo.First;
   While Not DMCXC.cdsModelo.Eof Do
   Begin
      ;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'MG' Then
         dbeMGrav.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'MN' Then
         dbeMNoGrav.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'FL' Then
         dbeFlete.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'GF' Then
         dbeGasFin.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'SV' Then
         dbeServ.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'DC' Then
         dbeDcto.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'I1' Then
         dbeIGV.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'IS' Then
         dbeISC.Enabled := True;
//      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'TO' Then
//         dbeTotal.Enabled := True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'ME' Then
         edtMontoExonerado.Enabled:=True;
      If Trim(DMCXC.cdsModelo.FieldByName('TIPDET').AsString) = 'FE' Then
         edtMontoExportacion.Enabled:=True;
      DMCXC.cdsModelo.Next;
   End;
// Fin HPC_201701_CXC : Corregir configuración de la dinámica contable
   If dbeMGrav.Enabled Then
   Begin
      dbeMGrav.SetFocus;
      Exit;
   End;
   If dbeMNoGrav.Enabled Then
   Begin
      dbeMNoGrav.SetFocus;
      Exit;
   End;
   If dbeFlete.Enabled Then
   Begin
      dbeFlete.SetFocus;
      Exit;
   End;
   If dbeGasFin.Enabled Then
   Begin
      dbeGasFin.SetFocus;
      Exit;
   End;
   If dbeServ.Enabled Then
   Begin
      dbeServ.SetFocus;
      Exit;
   End;
   If dbeDcto.Enabled Then
   Begin
      dbeDcto.SetFocus;
      Exit;
   End;
   If dbeIGV.Enabled Then
   Begin
      dbeIGV.SetFocus;
      Exit;
   End;
   If dbeISC.Enabled Then
   Begin
      dbeISC.SetFocus;
      Exit;
   End;
   If dbeTotal.Enabled Then
   Begin
      dbeTotal.SetFocus;
      Exit;
   End;

End;

Procedure TFProvision.bbtnRegresaClick(Sender: TObject);
Begin
   If DMCXC.wAdmin = 'G' Then Exit;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);
End;

Function TFProvision.ValidaCabecera(): Boolean;
Begin
   Result := False;
   If Not ValidaDocumento Then Exit;
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
   If length(dblcdClie.Text) = 0 Then Raise exception.Create('Falta Registrar Cliente');
   If length(edtClie.Text) = 0 Then Raise exception.Create('Proveedor Errado');
   If length(dblcTMon.Text) = 0 Then Raise exception.Create('Falta Tipo de Moneda');
   If length(edtTMon.Text) = 0 Then Raise exception.Create('Código de Moneda Errado');
   If length(dbeTCambio.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   If dtpFVcmto.Date = 0 Then Raise exception.Create('Falta Fecha de Comprobante');
   If length(dblcTDiario.Text) = 0 Then Raise exception.Create('Falta Tipo de Diario');
// Inicio HPC_201701_CXC : Validar tipo de ND
   If length(dblcTipND.Text) = 0 Then Raise exception.Create('Debe Ingresar Tipo de ND');
// Fin  HPC_201701_CXC : Validar tipo de ND
   If length(dblcdTipoOpera.Text) = 0 Then Raise exception.Create('Debe Ingresar Tipo de Registro');
   Result := true;
End;

Function TFProvision.ValidaDocumento: Boolean;
Begin
   If Length(dblcCia.Text) = 0 Then
   Begin
      dblcCia.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Compañía ');
   End;
   If Length(dblcTDoc.Text) = 0 Then
   Begin
      dblcTDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento ');
   End;
   If Length(dblcSerie.Text) = 0 Then
   Begin
      dblcSerie.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Serie ');
   End;
   If Length(dbeNoDoc.Text) = 0 Then
   Begin
      dbeNoDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar No.Documento ');
   End;
   Result := True;
End;

Procedure TFProvision.dtpFEmisExit(Sender: TObject);
Var
   xWhere: String;
   xMes, xNoReg: String;
   wAno, wMes, wDia: Word;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;
   If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime := dtpFEmis.Date + DMCXC.cdsMovCxC.FieldByName('DOCPLAZO').AsInteger;
   If (DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString = '') And (DMCXC.cdsTDiario.RecordCount = 1) Then
   Begin
      DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
      xTMes := StrZero(IntToStr(wMes), 2);
      xTAno := StrZero(IntToStr(wAno), 4);
      GeneraComprobante;
   End;
   // Tipo de Cambio
   xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFEmis.Date) + '''' + ')';
   xxTCambio := 0;
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DMCXC.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
   Begin
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime := dtpFEmis.Date;
      If DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime = 0 Then DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime := dtpFEmis.Date;
   End
   Else
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;
End;

// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
Procedure TFProvision.dblcdClieExit(Sender: TObject);
//Var
//   xWhere: String;
Begin
{
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If (length(dblcdClie.text) = 0) And (dblcdClieRuc.Focused) Then
   Begin
      exit;
   End;

   If (Length(dblcdClie.Text) = 0) And (length(dblcdClieRuc.text) = 0) Then
   Begin
      dblcdClie.SetFocus;
      Raise Exception.Create('Ingrese Cliente');
   End;

   If DMCXC.cdsClie.IndexFieldNames <> 'CLIEID' Then
      DMCXC.cdsClie.IndexFieldNames := 'CLIEID';

   DMCXC.cdsClie.Setkey;
   DMCXC.cdsClie.FieldByName('CLIEID').AsString := dblcdClie.text;
   If DMCXC.cdsClie.Gotokey Then
   Begin
      edtClie.text := DMCXC.cdsClie.FieldByName('CLIEDES').AsString;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := DMCXC.cdsClie.FieldByName('CLIEID').AsString;
      DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsClie.FieldByName('CLIERUC').AsString;
      DMCXC.cdsMovCxC.FieldByName('VEID').AsString := DMCXC.cdsClie.FieldByName('VEID').AsString;
      xSector := DMCXC.cdsClie.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;
      Filtracds(DMCXC.cdsMovFac, 'Select PEDIDO, PEDFECHA FROM FAC301 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.Text) + ' AND (PEDESTADO=''ALMACEN'' OR PEDESTADO=''DESPACHO'' OR PEDESTADO=''VENTAS'')');
      If xSector = '' Then
      Begin
         Raise Exception.Create('Atencion: Cliente No Tiene Asignado Sector Comercial. Revise Maestro de Clientes');
      End;
   End
   Else
   Begin
      dblcdClieRuc.Clear;
      edtClie.Clear;
      dblcdClie.SetFocus;
      Raise Exception.Create('Cliente no Existe');
   End;
}
   If length(trim(edtClie.Text))=0 Then
   Begin
      ShowMessage('Código de Cliente Errado');
      dblcdClie.SetFocus;
      Exit;
   End;
End;
// Fin HPC_201801_CXC

Procedure TFProvision.dblcdClieRucExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;
   If (Length(dblcdClieRuc.Text) = 0) And (dblcdClie.Focused) Then Exit;

   If (Length(dblcdClieRuc.text) = 0) And (Length(dblcdClie.text) = 0) Then
   Begin
      dblcdClieRuc.SetFocus;
      Raise Exception.Create('Ingrese RUC');
   End;

   If (Length(dblcdClieRuc.text) >= 0) And (Length(dblcdClie.text) = 0) Then
   Begin

      If DMCXC.cdsClie.IndexFieldNames <> 'CLIERUC' Then
         DMCXC.cdsClie.IndexFieldNames := 'CLIERUC';

      DMCXC.cdsClie.Setkey;
      DMCXC.cdsClie.FieldByName('CLIERUC').AsString := dblcdClieRuc.text;
      If DMCXC.cdsClie.Gotokey Then
      Begin
         edtClie.text := DMCXC.cdsClie.FieldByName('CLIEDES').AsString;
         DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsClie.FieldByName('CLIERUC').AsString;
         DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := DMCXC.cdsClie.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC.FieldByName('VEID').AsString := DMCXC.cdsClie.FieldByName('VEID').AsString;
         xSector := DMCXC.cdsClie.FieldByName('TVTAID').AsString;
         xZona := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;
         Filtracds(DMCXC.cdsMovFac, 'Select PEDIDO, PEDFECHA FROM FAC301 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND (PEDESTADO=''ALMACEN'' OR PEDESTADO=''DESPACHO'' OR PEDESTADO=''VENTAS'')');
         If xSector = '' Then
         Begin
            Raise Exception.Create('Atencion: Cliente No Tiene Asignado Sector Comercial. Revise Maestro de Clientes');
         End;
      End
      Else
      Begin
         dblcdClie.Clear;
         edtClie.Clear;
         dblcdClie.SetFocus;
         Raise Exception.Create('RUC de Cliente no Existe');
      End;
   End;
End;

Procedure TFProvision.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
   Tmp: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   Tmp := StrTmp;
   If DMCXC.cdsMovCxC.state In [dsInsert, dsedit] Then
      DMCXC.cdsMovCxC.FieldByName('TMONID').AsString := trim(DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);

   If trim(dblcTMon.Text) = '' Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      StrTmp := Tmp;
      exit;
   End;

   If trim(dblcTMon.Text) <> StrTmp Then
   Begin
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + ''''
         + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR', xWhere, 'TMONABR');
      xdesmon := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES', xWhere, 'TMONDES');
      If length(edtTMon.Text) = 0 Then
      Begin
         ShowMessage('Tipo de Moneda Equivocada');
         dblcTMon.SetFocus;
         StrTmp := Tmp;
         exit;
      End
      Else
      Begin
         DMCXC.cdscpto.Close;
         If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 '
               + 'WHERE CIAID=' + QuotedStr(dblcCia.text)
               + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )');
            DMCXC.cdscpto.Open;
         End
         Else
         Begin
            DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
               + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
            DMCXC.cdscpto.Open;
         End;
         DMCXC.cdscptoCab.Close;
      // Inicio HPC_201801_CXC
      // Cambios por nueva búsqueda en Maestro de Cliente
         {
         DMCXC.cdscptoCab.DataRequest('SELECT * FROM CXC208 WHERE OPCMENU=''P'' AND DOCID=' + QuotedStr(dblcTDoc.text) +
            ' AND TMONID=' + QuotedStr(dblcTMon.text) + ' AND TVTAID=' + QuotedStr(xSector) +
            ' AND CIAID=' + QuotedStr(dblcCia.text));
         DMCXC.cdscptoCab.Open;
         }
         xWhere := 'CIAID=' + QuotedStr(dblcCia.text)
            + ' and DOCID=' + QuotedStr(DMCXC.wsNCre)
            + ' and TMONID=' + QuotedStr(dblcTMon.text)
            + ' and OPCMENU=''P'' ';
         DMCXC.FiltraTabla(DMCXC.cdsCptoCab, 'CXC208', 'CPTOCAB', xWhere);
      // Fin HPC_201801_CXC

         If DMCXC.cdscptoCab.RecordCount = 1 Then
         Begin
            DMCXC.cdscptoCab.First;
            dblcdTipoOpera.text := DMCXC.cdscptoCab.FieldByName('CPTOCAB').AsString;
         End;
         dblcdTipoOpera.Enabled := True;
      End;
   End;
End;

Procedure TFProvision.dblcTDiarioExit(Sender: TObject);
Var
   xWhere: String;
   xMes, xNoReg: String;
   wAno, wMes, wDia: Word;
Begin
   If xCrea Then Exit;
   If Not bbtnBorra.Focused Then
   Begin
      Begin
         edtTDiario.Text := DMCXC.displayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      End;
      If length(edtTDiario.Text) = 0 Then
      Begin
         ShowMessage('Falta Tipo de Diario');
         dblcTDiario.SetFocus;
      End;
   End;
   If (DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString = '') Or (DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString = 'X') Then
   Begin
      DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
      xTMes := StrZero(IntToStr(wMes), 2);
      xTAno := StrZero(IntToStr(wAno), 4);
      GeneraComprobante;
   End;

End;

Procedure TFProvision.dtpFCompExit(Sender: TObject);
Var
   xMes, xNoReg: String;
   wAno, wMes, wDia: Word;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If dtpFComp.Date = 0 Then
   Begin
      ShowMessage('Falta Fecha de Comprobante');
      dtpFComp.SetFocus;
      exit;
   End;
   If dtpFComp.Date < dtpFEmis.Date Then
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create('F.Comprobante debe ser >= F.Emisión');
   End;

   DecodeDate(dtpFComp.Date, wAno, wMes, wDia);

   If wMes < 10 Then
      xMes := '0' + inttostr(wMes)
   Else
      xMes := inttostr(wMes);
   xTMes := xMes;
   xTAno := IntToStr(wAno);

   If length(edtTDiario.Text) > 0 Then
   Begin
      xTAutoNum := DMCXC.displayDescrip('TGE104', 'AutoNum', 'TDiarID', dblcTDiario.Text);
      xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
      xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size)
   End;

   dbeNoReg.Text := xNoReg;
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCLOTE').AsString := '';
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := xNoReg;
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := IntToStr(wAno) + xMes;
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
End;

Procedure TFProvision.btnActRegClick(Sender: TObject);
Begin
   pnlMontos.Enabled := False;
   pgDocumento.Enabled := False;
   pnlDetalle.Enabled := true;
   pnlPie.Enabled := False;
   pnlRegistro.Visible := True;
   pnlRegistro.Enabled := True;
   pnlRegistro.SetFocus;
   DMCXC.cdsDetCxC.Insert;
   dblcTipReg.Enabled := True;
   dblcTipReg.Text := '';
   dblcTipReg.SetFocus;
End;

Procedure TFProvision.bbtnRegCancClick(Sender: TObject);
Begin
   If DMCXC.cdsDetCxC.State = dsInsert Then
      DMCXC.cdsDetCxC.Delete
   Else
   Begin
      DMCXC.cdsDetCxC.Cancel;
   End;
   pnlMontos.Enabled := True;
   pgDocumento.Enabled := True;
   pnlRegistro.Visible := False;
   pnlDetalle.Enabled := True;
   pnlPie.Enabled := True;
   dbgDetCxC.SetFocus;
End;

Procedure TFProvision.dbgDetCxCDblClick(Sender: TObject);
Begin

   If (btnActReg.Enabled) Or ((DMCXC.cdsmovcxc.FieldByName('CCESTADO').AsString = 'I') Or
      (DMCXC.cdsmovcxc.FieldByName('CCESTADO').AsString = 'T')) Then
   Begin
      pnlMontos.Enabled := False;
      pgDocumento.Enabled := False;
      pnlDetalle.Enabled := true;
      pnlPie.Enabled := False;
      pnlRegistro.Visible := True;
      pnlRegistro.SetFocus;
      DMCXC.cdsDetCxC.Edit;
      dblcTipReg.Text := DMCXC.cdsDetCxC.FieldByName('TREGID').AsString;
      dblcTipRegExit(Sender);
      dblcTipReg.Enabled := False;
      DMCXC.cdscpto.Close;
      If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
            + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )');
         DMCXC.cdscpto.Open;
      End
      Else
      Begin
         DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
            + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
         DMCXC.cdscpto.Open;
      End;
      dblcdCpto.enabled := True;
      If dbcbGenDoc.Checked Then
      Begin
         dbeImporte.Enabled := False
      End
      Else
      Begin
         dbeImporte.Enabled := True;
      End;
   End;

End;

Procedure TFProvision.dblcTipRegExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If bbtnRegCanc.Focused Then Exit;

   edtTipReg.Text := DMCXC.displayDescrip('TGE128', 'TREGDES', 'TREGID', dblcTipReg.Text);

   If length(edtTipReg.Text) = 0 Then
   Begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcTipReg.SetFocus;
      exit;
   End;
   If DMCXC.cdsDetCxC.State = dsInsert Then
   Begin
      With DMCXC Do
      Begin
         cdsDetCxC.FieldByName('CIAID').AsString := cdsMovCxC.FieldByName('CIAID').AsString;
         cdsDetCxC.FieldByName('TDIARID').AsString := cdsMovCxC.FieldByName('TDIARID').AsString;
         cdsDetCxC.FieldByName('CCNOREG').AsString := cdsMovCxC.FieldByName('CCNOREG').AsString;
         cdsDetCxC.FieldByName('CCAAAA').AsString := copy(cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
         cdsDetCxC.FieldByName('CCANOMES').AsString := cdsMovCxC.FieldByName('CCANOMES').AsString;
         cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString;
         cdsDetCxC.FieldByName('CLIEID').AsString := cdsMovCxC.FieldByName('CLIEID').AsString;
         cdsDetCxC.FieldByName('CLIERUC').AsString := cdsMovCxC.FieldByName('CLIERUC').AsString;
         cdsDetCxC.FieldByName('DOCID').AsString := cdsMovCxC.FieldByName('DOCID').AsString;
         cdsDetCxC.FieldByName('CCSERIE').AsString := cdsMovCxC.FieldByName('CCSERIE').AsString;
         cdsDetCxC.FieldByName('CCNODOC').AsString := cdsMovCxC.FieldByName('CCNODOC').AsString;
         cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := FRound(cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 7, 3);
         cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsMovCxC.FieldByName('CCFEMIS').AsDatetime;
         cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime;
         cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime;
         cdsDetCxC.FieldByName('TREGID').AsString := dblcTipReg.Text;
         cdsDetCxC.FieldByName('CCESTADO').AsString := 'I'; // Activo
         cdsDetCxC.FieldByName('CCMM').AsString := cdsMovCxC.FieldByName('CCMM').AsString;
         cdsDetCxC.FieldByName('CCDD').AsString := cdsMovCxC.FieldByName('CCDD').AsString;
         cdsDetCxC.FieldByName('CCTRI').AsString := cdsMovCxC.FieldByName('CCTRI').AsString;
         cdsDetCxC.FieldByName('CCSEM').AsString := cdsMovCxC.FieldByName('CCSEM').AsString;
         cdsDetCxC.FieldByName('CCSS').AsString := cdsMovCxC.FieldByName('CCSS').AsString;
         cdsDetCxC.FieldByName('CCAATRI').AsString := cdsMovCxC.FieldByName('CCAATRI').AsString;
         cdsDetCxC.FieldByName('CCAASEM').AsString := cdsMovCxC.FieldByName('CCAASEM').AsString;
         cdsDetCxC.FieldByName('CCAASS').AsString := cdsMovCxC.FieldByName('CCAASS').AsString;
         cdsDetCxC.FieldByName('TMONID').AsString := cdsMovCxC.FieldByName('TMONID').AsString;
      End;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.edit;
   End;

   If DMCXC.cdsDetCxC.State = dsInsert Then
   Begin
      xWhere := 'TRegId=' + '''' + dblcTipReg.Text + '''';
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', xWhere, 'TIPDET');
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').AsString;
      If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then // si es en moneda local
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOMN').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAMN').AsString;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOME').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAME').AsString;
      End;
      If Length(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) > 0 Then
      Begin
         dblcdCptoExit(sender);
      End;
   End;

   dblcdCpto.Enabled := True;
   DMCXC.cdsCptoCab.IndexFieldNames := 'CPTODES';
End;

Procedure TFProvision.dblcdCptoExit(Sender: TObject);
Var
   ssql, xWhere: String;
Begin
   sDocIdNC := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID');
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CIAID=' + quotedStr(dblcCia.text) + ' and CPTOID=' + QuotedStr(dblcdCpto.Text);
      If length(DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOID')) > 0 Then
      Begin
         DMCXC.cdsDetCxC.edit;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         xWhere := 'CIAID=' + quotedStr(dblcCia.text)
            + ' AND CUENTAID=' + '''' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + '''';
         If sDocIdNC = dblcTDoc.text Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := '';
         End
         Else
         Begin
            If Length(DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString) = 0 Then
               DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
         End;

         If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
         Begin
            If (DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S') Then
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

Procedure TFProvision.bbtnRegOkClick(Sender: TObject);
Var
   xWhere, xSQL: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdCpto.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdCpto.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   If length(DMCXC.cdsDetCxC.FieldByName('TREGID').AsString) = 0 Then
      Raise exception.Create('Falta Tipo de Registro');
   // consistencia Concepto
   If length(DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Concepto');
   End;
   // Presupuesto
   xWhere := 'CuentaId=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' AND CIAID=' + QuotedStr(dblcCia.text);
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
   Begin
      If DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S' Then
      Begin
         If Length(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) = 0 Then
         Begin
            Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Centro de Costo');
         End;
      End;
      If DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S' Then
      Begin
         If Length(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) = 0 Then
         Begin
            Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Partida Presupuestal');
         End;
      End;
   End;
   // consistencia Debe Haber
   If length(DMCXC.cdsDetCxC.FieldByName('CCDH').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Debe/Haber');
   End;
   DMCXC.cdsDetCxC.Edit;
   If DMCXC.cdsDetCXC.FieldByName('CCMTOORI').AsFloat <= 0 Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := 0;
      Raise Exception.Create('Importe debe Ser Mayor a Cero')
   End;
//////////
   If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat > 0 Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      End;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
   End;

   If DMCXC.cdsDetCxC.State = dsInsert Then
   Begin
      DMCXC.cdsDetCxC.Post;
      DMCXC.cdsDetCxC.Insert;
      xSQL := ' Insert into CXC302( ciaid, ccanomes, tdiarid, cclote, ccnoreg, cptoid, cuentaid, clauxid, clieid, clieruc, docid, ccserie, ccnodoc, ccglosa, ccdh, ccreg, TIPPRESID,parpresid,'
         + ' ccosid, tmonid, cctcampr, ccmtoori, ccmtoloc, ccmtoext, ccfemis, CCFVCMTO, ccfcomp, ccestado, ccaaaa, ccmm, ccdd, cctri, ccsem, ccss, ccaatri, ccaasem, ccaass, ccuser, ccfreg, cchreg, tregid, tipdet, cctcampa, ccflcdr, cccmprb ) '
         + ' Values( ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CIAID').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccanomes').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tdiarid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cclote').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccnoreg').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cptoid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cuentaid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('clauxid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('clieid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('clieruc').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('docid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccserie').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccnodoc').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccglosa').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccdh').AsString) + ', '
         + inttostr(DMCXC.cdsDetCxC.fieldbyname('ccreg').AsInteger) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TIPPRESID').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('parpresid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccosid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tmonid').AsString) + ', '
         + floattostr(DMCXC.cdsDetCxC.fieldbyname('cctcampr').AsFloat) + ','
         + floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoori').AsFloat) + ','
         + floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoloc').AsFloat) + ','
         + floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoext').AsFloat) + ','
         + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('CCFEMIS').AsDateTime)) + ', '
         + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('CCFVCMTO').AsDateTime)) + ', '
         + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('ccfcomp').AsDateTime)) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccestado').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaaaa').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccmm').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccdd').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cctri').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccsem').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccss').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaatri').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaasem').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaass').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccuser').AsString) + ', '
         + '           trunc(sysdate),  '
         + '           sysdate, '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tregid').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tipdet').AsString) + ', '
         + floattostr(DMCXC.cdsDetCxC.fieldbyname('cctcampa').AsFloat) + ','
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccflcdr').AsString) + ', '
         + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cccmprb').AsString) + ' )';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('No se pudo insertar el detalle de la nota de débito');
         exit;
      End;
      dblcTipReg.Text := '';
      dblcTipReg.Enabled := True;
      dblcTipReg.SetFocus;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.Post;
      xSQL := ' Update CXC302 '
         + '    set TREGID = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TREGID').AsString) + ','
         + '        CPTOID = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CPTOID').AsString) + ','
         + '        CCGLOSA = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCGLOSA').AsString) + ','
         + '        CCOSID = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCOSID').AsString) + ','
         + '        TIPPRESID = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TIPPRESID').AsString) + ','
         + '        PARPRESID = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('PARPRESID').AsString) + ','
         + '        CCDH = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCDH').AsString) + ','
         + '        CCMTOORI = ' + floattostr(DMCXC.cdsDetCxC.fieldbyname('CCMTOORI').AsFloat) + ','
         + '        CCMTOLOC = ' + floattostr(DMCXC.cdsDetCxC.fieldbyname('CCMTOLOC').AsFloat) + ','
         + '        CCMTOEXT = ' + floattostr(DMCXC.cdsDetCxC.fieldbyname('CCMTOEXT').AsFloat) + ''
         + '  Where CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TDIARID').AsString)
         + '    and CCANOMES=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos del detalle');
         exit;
      End;
      pnlMontos.Enabled := True;
      pgDocumento.Enabled := True;
      pnlRegistro.Visible := False;
      pnlDetalle.Enabled := True;
      pnlPie.Enabled := True;
   End;
End;

Procedure TFProvision.bbtnCancelaClick(Sender: TObject);
Begin
   If DMCXC.wAdmin = 'G' Then Exit;
   DMCXC.cdsDetCxC.CancelUpdates;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
End;

Procedure TFProvision.Z2bbtnGrabaClick(Sender: TObject);
Var
   xTGravad, xTNoGrav, xTIGV, xTISC, xTDcto, xTServ, xTotal, xTFlete, xTGasFin: Double;
   xTDebe, xTHaber: Double;
   xCtaTotal, xCptoTot, xWhere: String;
   xSQL: String;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   xTExonera : Double;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   xTGravad := 0;
   xTNoGrav := 0;
   xTIGV := 0;
   xTISC := 0;
   xTDcto := 0;
   xTServ := 0;
   xTFlete := 0;
   xTGasFin := 0;
   xTotal := 0;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   xTExonera := 0;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable

   If DMCXC.cdsDetCxC.RecordCount = 0 Then
      Raise exception.create('No hay Detalle especificado');

// Comprueba que registros estén correctamente ingresados
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      // consistencia Tipo de Registro
      If length(DMCXC.cdsDetCxC.FieldByName('TREGID').AsString) = 0 Then
         Raise exception.Create('Falta Tipo de Registro');
      // consistencia Concepto
      If length(DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString) = 0 Then
      Begin
         ShowMessage('Debe Ingresar Tipo de Registro');
         exit;
         //dblcTipRegExit(self); // toma las propiedades del registro
         Raise exception.Create('Falta Concepto');
      End;
      // Presupuesto
      xWhere := 'CuentaId=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' AND CIAID=' + QuotedStr(dblcCia.text);
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
      Begin
         If DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S' Then
         Begin
            If Length(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) = 0 Then
            Begin
               Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Centro de Costo');
            End;
         End;
         If DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S' Then
         Begin
            If Length(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) = 0 Then
            Begin
               Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Partida Presupuestal');
            End;
         End;
      End;
      // consistencia Debe Haber
      If length(DMCXC.cdsDetCxC.FieldByName('CCDH').AsString) = 0 Then
      Begin
         Raise exception.Create('Falta Debe/Haber');
      End;
      // consistencia Importe de Detalle
      If DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat <= 0 Then
         Raise exception.Create('Falta Importe');
      DMCXC.cdsDetCxC.Next;
   End;
// calcula sumatorias del detalle

   DMCXC.cdsDetCxC.First;
   DMCXC.cdsDetCxC.DisableControls;
   xTDebe := 0;
   xTHaber := 0;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      If DMCXC.cdsDetCxC.FieldByName('CCDH').AsString = 'D' Then xTDebe := xTDebe + FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
      If DMCXC.cdsDetCxC.FieldByName('CCDH').AsString = 'H' Then xTHaber := xTHaber + FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG' Then
      Begin // Monto Gravado/Base Imponible/Monto Afecto
         xTGravad := xTGravad + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN' Then
      Begin // Monto No Gravado
         xTNoGrav := xTNoGrav + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'ME' Then
      Begin // Monto Exonerado
         xTExonera := xTExonera + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'FL' Then
      Begin // Flete
         xTFlete := xTFlete + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'GF' Then
      Begin // IGV
         xTGasFin := xTGasFin + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'SV' Then
      Begin // Servicio
         xTServ := xTServ + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'DC' Then
      Begin // Descuento
         xTDcto := xTDcto + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'I1' Then
      Begin // IGV
         xTIGV := xTIGV + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'IS' Then
      Begin // ISC
         xTISC := xTISC + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'TO' Then
      Begin // Total
         xTotal := xTotal + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         xCtaTotal := DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString;
         xCptoTot := DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString;
      End;
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
      DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDatetime;
      DMCXC.cdsDetCxC.FieldByName('CCHREG').Value := DMCXC.cdsMovCxC.FieldByName('CCHREG').Value;
      DMCXC.cdsDetCxC.Post;
      DMCXC.cdsDetCxC.Next;
   End;
   DMCXC.cdsDetCxC.EnableControls;
   If (FRound(xTDebe, 15, 2) - FRound(xTHaber, 15, 2)) > 0 Then
   Begin
      If MessageDlg('No hay coincidencia entre Debe y Haber' + chr(13)
         + '      ¿Continuar con Grabación?       ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         dbgDetCxC.SelectedIndex := 0;
         exit;
      End;
   End;
// graba sumatorias del detalle en cabecera CxP

   If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value <> 'I') Then
   Begin
      GeneraComprobante;

      DMCXC.cdsDetCxC.First;
      DMCXC.cdsDetCxC.DisableControls;
      xTDebe := 0;
      xTHaber := 0;

      xSQL := ' Update CXC302 '
         + '    set CCNOREG = ' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString) + ', '
         + '        CCUSER = ' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString) + ', '
         + '        CCFREG = trunc(sysdate), '
         + '        CCHREG = sysdate '
         + '  Where CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TDIARID').AsString)
         + '    and CCANOMES=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
      While Not DMCXC.cdsDetCxC.eof Do
      Begin
         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
         DMCXC.cdsDetCxC.Post;
         DMCXC.cdsDetCxC.Next;
      End;
      DMCXC.cdsDetCxC.EnableControls;
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('UBIID').AsString := DMCXC.wsOfi;
   DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := xTGravad; // Monto Gravado
   DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat := xTNoGrav; // Monto No Gravado
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat := xTExonera; // Monto Exonerado
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable

   DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat := xTFlete;
   DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat := xTGasFin;
   DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := xTIGV; // IGV.
   DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat := xTISC; // ISC.
   DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat := xTDcto; // Descuento
   DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat := xTServ; // Servicio
   DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := xTotal; // Total documento
   DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := xTotal; // Saldo del documento
   DMCXC.cdsmovcxc.FieldByName('CLIEDES').AsString := edtClie.Text;
   If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := xTotal; // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(xTotal / FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2); // Total en moneda extranjera
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := xTotal; // Saldo en moneda Local
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := FRound(xTotal / FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2); // Saldo en moneda extranjera
   End
   Else
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(xTotal * FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2); // Total en moneda local
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := xTotal; // Total en moneda extranjera
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := FRound(xTotal * FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 12, 3), 15, 2); // Saldo en moneda Local
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := xTotal; // Saldo en moneda extranjera
   End;
   DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString := xCptoTot; //14/07
   DMCXC.cdsMovCxC.FieldByName('CTATOTAL').AsString := xCtaTotal;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'I';
   DMCXC.cdsMovCxC.FieldByName('COMPROMET').Value := 'NA';
   DMCXC.cdsMovCxC.FieldByName('CCUSER').Value := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCFLAGVTA').value := '.';
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.Post;
   xSQL := ' Update CXC301 '
      + '    set UBIID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('UBIID').AsString) + ','
      + '     CCGRAVAD = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCGRAVAD').AsFloat) + ','
      + '     CCNOGRAV = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCNOGRAV').AsFloat) + ','
   // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      + '     CXC_IMP_EXO = ' + floattostr(DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat) + ',' // Monto Exonerado
   // Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
      + '      CCFLETE = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCFLETE').AsFloat) + ','
      + '     CCGASFIN = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCGASFIN').AsFloat) + ','
      + '        CCIGV = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCIGV').AsFloat) + ','
      + '        CCISC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCISC').AsFloat) + ','
      + '       CCDCTO = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCDCTO').AsFloat) + ','
      + '     CCSERVIC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSERVIC').AsFloat) + ','
      + '     CCMTOORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCMTOORI').AsFloat) + ','
      + '     CCSALORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat) + ','
      + '      CLIEDES = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIEDES').AsString) + ','
      + '     CCMTOLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat) + ','
      + '     CCMTOEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat) + ','
      + '     CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat) + ','
      + '     CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat) + ','
      + '     CCPTOTOT = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCPTOTOT').AsString) + ','
      + '     CTATOTAL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CTATOTAL').AsString) + ','
      + '     CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString) + ','
      + '    COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('COMPROMET').AsString) + ','
      + '       CCUSER = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCUSER').AsString) + ','
      + '       CCFREG = trunc(sysdate), '
      + '       CCHREG = sysdate, '
      + '    CCFLAGVTA = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCFLAGVTA').AsString) + ' '
      + '  Where CIAID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
      + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)
      + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString)
      + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString);

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se puede actualizar los datos de la cabecera');
      exit;
   End;

   If dbcbGenDoc.Checked Then
      If FEmiDoc.cdsEmiDoc.ApplyUpdates(0) > 0 Then
      Begin
         Showmessage('No se grabaron los detalles ' + #13 + 'de la Emisión de Documentos');
      End;

   xFlagGr := False;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
   //Actualiza a la tabla CXC304 para registrar los datos del documento de referencia
   DMCXC.cdscanje.first;
   While Not DMCXC.cdsCanje.Eof Do
   Begin
      DMCXC.cdsCanje.edit;
      DMCXC.cdscanje.FieldByName('CCNOREG').Asstring := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsSTRING;
      DMCXC.cdsCanje.Next;
   End;
   DMCXC.AplicaDatos(DMCXC.cdsCanje, 'CANJES');
   ShowMessage(' Registro de Provisión Grabado ');
End;

Procedure TFProvision.Z2bbtnAceptaClick(Sender: TObject);
Var
   xWhere, wCje, sSigno: String;
   xSQL: String;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   Try
      If DMCXC.wsNCreS = dblcTDoc.text Then
      Begin
         xWhere := 'CiaId=' + '''' + dblcCia.Text + '''' + ' and TCanjeID=' + '''' + 'NC' + '''';
         wCje := DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCanje', xWhere);
         wCje := StrZero(wCje, 6);
         sSigno := '-';
      End
      Else
      Begin
         sSigno := '+';
      End;

      DMCXC.cdsDetCxC.DisableControls;
      screen.Cursor := crHOURGLASS;
      pnlActuali.Visible := true;
      pnlActuali.Refresh;

      If Not AsientoCuadra Then
         Raise exception.Create(' Error:  Asiento NO Cuadra ');

      If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
      Begin
         dtpFEmis.SetFocus;
      End;

      If MessageDlg('Aceptar Documento' + chr(13) + '  ¿Esta Seguro?  ',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('COMPROMET').AsString := 'NA'; // pendiente
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'P'; // pendiente
      DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      If sDocIdNC = dblcTDoc.text Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString := wCje;
      End;
      DMCXC.cdsMovCxC.Post;

      DMCXC.DCOM1.AppServer.IniciaTransaccion;
      xSigueGrab := True;
      xSQL := ' Update CXC301 '
         + '    set CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString) + ','
         + '        CCFCANJE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCFCANJE').AsString) + ','
         + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('COMPROMET').AsString) + ','
         + '        CCPAGORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat) + ','
         + '        CCPAGLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat) + ','
         + '        CCPAGEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat) + ','
         + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat) + ','
         + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat) + ','
         + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat) + ','
         + '        CCFREG = trunc(sysdate), '
         + '        CCHREG = sysdate '
         + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)
         + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;

      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').Asstring, DMCXC.cdsMovCxC.FieldByName('CCANOMES').Asstring,
         DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString,
         sSigno, DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMONID').AsString);

      EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
      If dbcbGenDoc.Checked Then
         If FEmiDoc.cdsEmiDoc.ApplyUpdates(0) > 0 Then
         Begin
            Showmessage('No se grabaron los detalles ' + #13 + 'de la Emisión de Documentos');
         End;

      DMCXC.cdscanje.first;
      While Not DMCXC.cdsCanje.Eof Do
      Begin
         DMCXC.cdsCanje.edit;
         DMCXC.cdscanje.FieldByName('CCESTADO').Asstring := 'P';
         DMCXC.cdsCanje.Next;
      End;

      xSQL := ' Update CXC304 '
         + '    set CCESTADO = ' + quotedstr(DMCXC.cdsCanje.fieldbyname('CCESTADO').AsString) + ' '
         + '  Where CIAID=' + quotedstr(DMCXC.cdsCanje.FieldByName('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsCanje.fieldbyname('TDIARID').AsString)
         + '    and CCANOMM=' + quotedstr(DMCXC.cdsCanje.FieldByName('CCANOMM').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsCanje.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
      DMCXC.DCOM1.AppServer.GrabaTransaccion;
// Llama a Facturación Electrónica
// Inicio HPC_201602_CXC
      xSigueGrab := True;
      SelecImpresDest;
//      CXC_ND_FACT_ELEC;
// Fin HPC_201602_CXC
   Finally
      DMCXC.cdsNivelPresu.close;
      DMCXC.cdsDetCxC.EnableControls;
      pnlActuali.Visible := false;
      screen.Cursor := crDEFAULT;
   End;
End;

Function TFProvision.AsientoCuadra: Boolean;
Var
   xTotDebe, xTotHaber: Double;
   xDife, xdife1: Double;
   xSQL: String;
Begin
   Result := False;
   xTotDebe := 0;
   xTotHaber := 0;

   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      If DMCXC.cdsDetCxC.FieldByName('CCDH').Value = 'D' Then
         xTotDebe := FRound(xTotDebe + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat, 15, 2)
      Else
      Begin
         xTotHaber := FRound(xTotHaber + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
      End;
      DMCXC.cdsDetCxC.Next;
   End;
   DMCXC.cdsDetCxC.First;
   DMCXC.cdsDetCxC.EnableControls;

   xdife1 := FRound(xTotDebe, 15, 2) - FRound(xTotHaber, 15, 2);

   If FRound(xTotDebe, 15, 2) > FRound(xTotHaber, 15, 2) Then
      xdife := FRound(xTotDebe, 15, 2) - FRound(xTotHaber, 15, 2);

   If FRound(xTotHaber, 15, 2) > FRound(xTotDebe, 15, 2) Then
      xdife := FRound(xTotHaber, 15, 2) - FRound(xTotDebe, 15, 2);

   If (dblcTMon.Text = DMCXC.wTMonExt) And (xdife <= 0.02) Then
   Begin
      If FRound(xTotDebe, 15, 2) > FRound(xTotHaber, 15, 2) Then
         xTotHaber := FRound(xTotHaber, 15, 2) + xdife;
      If FRound(xTotHaber, 15, 2) > FRound(xTotDebe, 15, 2) Then
         xTotDebe := FRound(xTotDebe, 15, 2) + xdife;
      DMCXC.cdsDetCxC.First;
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2) + xdife1;
      DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsDetCxC.Post;

      xSQL := ' Update CXC302 '
         + '    set CCMTOLOC = ' + floattostr(DMCXC.cdsDetCxC.fieldbyname('CCMTOLOC').AsFloat) + ','
         + '        CCFREG = trunc(sysdate),'
         + '        CCHREG = sysdate '
         + '  Where CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TDIARID').AsString)
         + '    and CCANOMES=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
   End;

   If FRound(xTotDebe, 15, 2) = FRound(xTotHaber, 15, 2) Then
      Result := True;
End;

Procedure TFProvision.FormClose(Sender: TObject; Var Action: TCloseAction);
Var
   xsql: String;
Begin
   If (DMCXC.wModo = 'A') And (xFlagGr) Then
   Begin
      xSQL := ' Delete CXC301 '
         + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
         + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)
         + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString)
         + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede eliminar los datos de la cabecera');
         exit;
      End;

      DMCXC.cdsMovCxC.CancelUpdates;
      DMCXC.cdsDetCxC.CancelUpdates;
      dbgDetCxC.ReadOnly := False;
   End;
   FEmiDoc.wciaid := dblcCia.Text;
   FEmiDoc.wccnoreg := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   FEmiDoc.wccanomm := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
   FEmiDoc.wtdiarid := dblcTDiario.Text;
   xsql := 'SELECT * FROM CXC311 WHERE CIAID=' + quotedstr(dblcCia.Text) +
      ' AND CCANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND TDIARID=' + quotedstr(dblcTDiario.Text) +
      ' AND CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
   FEmiDoc.cdsEmiDoc.close;
   FEmiDoc.cdsEmiDoc.DataRequest(xsql);
   FEmiDoc.cdsEmiDoc.open;
   FEmidoc.edtMtoGravado.Text := '';
   FEmidoc.edtMtoNoGrav.Text := '';
   FEmidoc.edtIGV.Text := '';
   FEmidoc.edtISC.Text := '';
   DMCXC.cdsTDiario.Filter := '';
   DMCXC.cdsTDiario.Filtered := False;
   pnlTipoImp.visible := False;
   pnlPie.Enabled := True;
   FEmiDoc.Free;

   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := caFree;
End;

Procedure TFProvision.Z2bbtnAnulaClick(Sender: TObject);
Var
   xAno, xNmes: String;
   Y1, Y2, M1, M2, D: word;
   sSQL: String;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      //Raise Exception.Create(' PERIODO CERRADO ' );
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
      Raise Exception.Create('No se puede anular porque ya se Contabilizó');

   If DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat > 0 Then
      Raise Exception.Create('No se puede anular porque ya tienes pagos');

   If (DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat) Or
      (DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat) Then
      Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Canje.');

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular la Provision' + #13 +
         ' pues el Periodo ya está cerrado');
   End;

   sSQL := ' SELECT ' + DMCXC.wRepFecServi + ' FECHA FROM TGE901 ';
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;

   DecodeDate(DMCXC.cdsQry.FieldByName('FECHA').AsDateTime, Y2, M2, D);
   DecodeDate(DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime, Y1, M1, D);

   If MessageDlg('Anular Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If ((DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString <> 'P') And (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString <> 'I')) Then
      ShowMessage('Registro No Se Puede Anular (Sólo Consulta))')
   Else
   Begin
      If DMCXC.cdsMovCXC.FieldByName('CCFLAGVTA').AsString = 'S' Then
      Begin
         sSQL := ' UPDATE FAC305 SET FACESTADO=''ANULADO'', ' +
            ' USERANUL=' + QuotedStr(DMCXC.wUsuario) + ',' +
            ' FECANUL=' + DMCXC.wRepFecServi + ',' +
            ' HORANUL=' + DMCXC.wRepTimeServi +
            ' WHERE DOCID=' + QuotedStr(DMCXC.cdsMovCXC.FieldByName('DOCID').AsString) +
            ' AND FACSERIE=' + QuotedStr(DMCXC.cdsMovCXC.FieldByName('CCSERIE').AsString) +
            ' AND NFAC=' + QuotedStr(DMCXC.cdsMovCXC.FieldByName('CCNODOC').AsString);
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
         End;

      End;
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').Asstring, DMCXC.cdsMovCxC.FieldByName('CCANOMES').Asstring,
         DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString,
         '+', (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMONID').AsString);

      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'A';
      DMCXC.cdsMovCxC.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
      DMCXC.cdsMovCxC.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
      DMCXC.cdsMovCxC.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsMovCxC.post;
      sSQL := 'UPDATE CXC301 SET CCESTADO = ''A'', '
         + '        USERANUL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString) + ','
         + '        FECANUL = trunc(sysdate), '
         + '        HORANUL = sysdate ';
      sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString + '''';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede anular la provisión');
         exit;
      End;

      sSQL := 'UPDATE CXC302 SET CCESTADO = ''A'' ';
      sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString + '''';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

      EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

      ShowMessage('  Registro Anulado  ');
   End;
End;

Procedure TFProvision.Z2bbtnContabClick(Sender: TObject);
Var
   xSQL, sSQL: String;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   Z2bbtnContador.Enabled := false;
   Z2bbtnContador.Click;

   If DMCXC.MesCerrado(xTMes, xTAno, dblcCia.text) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;

   If Not AsientoCuadra Then Raise exception.Create('Error:  Asiento No Cuadra');

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then Raise exception.Create('Error: Asiento ya fue Contabilizado');

   If MessageDlg('Contabilizar Documento' + chr(13) + chr(13) +
      'Periodo         : ' + dbeAnoMM.Text + chr(13) +
      'Comprobante: ' + dbeNoReg.Text + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?    ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DMCXC.GeneraContab(dblcCia.Text, dblcTDiario.Text, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString, Self, 'C');

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString := 'S';
   DMCXC.cdsMovCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
   DMCXC.cdsMovCxC.post;
   sSQL := 'UPDATE CXC301 SET CC_CONTA = ''S'', '
      + '        CCCMPRB = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCCMPRB').AsString) + ' ';
   sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '''' + ' AND '
      + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
      + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
      + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se puede actualizar la provisión cuando se contabiliza');
      exit;
   End;

   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
      DMCXC.cdsDetCxC.Post;
      DMCXC.cdsDetCxC.Next;
   End;

   sSQL := 'UPDATE CXC302 SET '
      + '        CCCMPRB = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCCMPRB').AsString) + ' ';
   sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsDetCxC.FieldByName('CIAID').AsString + '''' + ' AND '
      + ' TDIARID  = ' + '''' + DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
      + ' CCANOMES = ' + '''' + DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
      + ' CCNOREG  = ' + '''' + DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se puede actualizar la provisión de detalle cuando se contabiliza');
      exit;
   End;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Contabilizado' + chr(13) + chr(13) +
      'Periodo         : ' + dbeAnoMM.Text + chr(13) +
      'Comprobante: ' + dbeNoReg.Text);
End;

Procedure TFProvision.Z2bbtnNuevoClick(Sender: TObject);
Var
   xsql: String;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   If (DMCXC.wModo = 'A') And (xFlagGr) Then
   Begin
      DMCXC.cdsDetCxC.CancelUpdates;
      DMCXC.cdsMovCxC.Delete;
   End;

   InicializaClientDataSet;
   InicializaDatos;
   EstadoDeForma(0, ' ', ' ');
   FEmiDoc.cdsEmiDoc.CancelUpdates;
   FEmiDoc.wciaid := dblcCia.Text;
   FEmiDoc.wccnoreg := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   FEmiDoc.wccanomm := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
   FEmiDoc.wtdiarid := dblcTDiario.Text;
   xsql := 'SELECT * FROM CXC311 WHERE CIAID=' + quotedstr(dblcCia.Text) +
      ' AND CCANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND TDIARID=' + quotedstr(dblcTDiario.Text) +
      ' AND CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
   FEmiDoc.cdsEmiDoc.close;
   FEmiDoc.cdsEmiDoc.DataRequest(xsql);
   FEmiDoc.cdsEmiDoc.open;
   FEmidoc.edtMtoGravado.Text := '';
   FEmidoc.edtMtoNoGrav.Text := '';
   FEmidoc.edtIGV.Text := '';
   FEmidoc.edtISC.Text := '';
   edtTipoOpera.Text := '';
   dblcdTipoOpera.Text := '';
   dblcdTipoOpera.Enabled := False;
End;

Procedure TFProvision.bbtnCalculaClick(Sender: TObject);
Var
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   xMEX, xMNG, xIGV, xISC, xSubT, xTotal: Double;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
   xProcesoTotal: Boolean;
   xFactor1: Currency;
Begin
   xProcesoTotal := False;
   If (dbeTotal.Enabled) And (DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency <> 0) Then
      xProcesoTotal := true;

   If Not xProcesoTotal Then
   Begin
      xSubT := DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat +
         DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat +
         DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat +
         DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat -
         DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat;

      xMNG := DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat;

      // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      xMEX := DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat;
      // Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable

      If dbeIGV.Enabled Then
      Begin
         If DMCXC.cdsMovCxC.FieldByName('CCIGV').AsCurrency <> 0 Then
            xIGV := xSubT * rIGV
         Else
            If Not DMCXC.cdsMovCxC.FieldByName('CCIGV').IsNull Then
               xIGV := 0
            Else
               xIGV := xSubT * rIGV;
      End
      Else
         xIGV := 0;

      If dbeISC.Enabled Then
      Begin
         If DMCXC.cdsMovCxC.FieldByName('CCISC').AsCurrency <> 0 Then
            If DMCXC.cdsMovCxC.FieldByName('CCISC').AsCurrency < xSubT * 0.05 Then
               xISC := DMCXC.cdsMovCxC.FieldByName('CCISC').AsCurrency
            Else
               xISC := xSubT * rISC
         Else
         Begin
            If DMCXC.cdsMovCxC.FieldByName('CCISC').IsNull Then
               xISC := xSubT * rISC
            Else
               xISC := 0;
         End;
      End
      Else
         xISC := 0;

      // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      xTotal := xMEX + xMNG + xSubT + xIGV + xISC;
      // FIN  HPC_201701_CXC : Corregir configuración de la dinámica contable

      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := xIGV;
      DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat := xISC;
      DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := xTotal;
   End
   Else
   Begin
      xTotal := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency;
      xFactor1 := 1;
      If (dbeIGV.Enabled) And ((DMCXC.cdsMovCxC.FieldByName('CCIGV').AsCurrency <> 0) Or (DMCXC.cdsMovCxC.FieldByName('CCIGV').IsNull)) Then
         xFactor1 := 1 + rIGV;

      If (dbeISC.Enabled) And ((DMCXC.cdsMovCxC.FieldByName('CCISC').AsCurrency <> 0) Or (DMCXC.cdsMovCxC.FieldByName('CCISC').IsNull)) Then
         xFactor1 := xFactor1 + rISC;

      xFactor1 := xTotal / xFactor1;

      If (dbeIGV.Enabled) And ((DMCXC.cdsMovCxC.FieldByName('CCIGV').AsCurrency <> 0) Or (DMCXC.cdsMovCxC.FieldByName('CCIGV').IsNull)) Then
         xIGV := FRound(xFactor1 * rIGV, 15, 2)
      Else
         xIGV := 0;

      If (dbeISC.Enabled) And ((DMCXC.cdsMovCxC.FieldByName('CCISC').AsCurrency <> 0) Or (DMCXC.cdsMovCxC.FieldByName('CCISC').IsNull)) Then
         xISC := FRound(xFactor1 * rISC, 15, 2)
      Else
         xISC := 0;

      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat := 0;
      DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat := 0;
      DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat := 0;
      DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat := 0;
      DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := FRound(xFactor1, 15, 2); //redondea(xFactor1) ;

      DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := xIGV;
      DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat := xISC;
      DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := xTotal;
   End;
End;

Procedure TFProvision.GeneraDetalle(xTipDet: String; xMonto: Double; xCpto, xcta, xglosa: String);
Var
   xString, xWhere, xSQL: String;
   sGlosa: String;
Begin
   DMCXC.cdsDetCxC.Insert;
   DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := xTipDet;
   DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(xMonto, 15, 2);
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat, 7, 3);
   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := dblcTMon.text;
   DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecordCount + 1;

   If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat > 0 Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      End;
   End
   Else
   Begin
      If xTipDet = 'TO' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOLOC)', 'TIPDET<>''TO'''), 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      End;
   End;

   xWhere := 'CIAID=' + quotedstr(dblcCia.Text) + ' AND TIPDET=''' + xTipDet + ''' AND CPTOCAB=' + QuotedStr(dblcdTipoOpera.text);
   xString := xWhere;

   If xTipDet <> 'TO' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC102', '*', xWhere, 'TREGID');
      sGlosa := DMCXC.cdsQry.FieldByName('TREGDES').AsString;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTODES,TREGID,CUENTAID,CPTOCAB,CCDH', xWhere, 'TREGID');
      If length(edtClie.text) > 0 Then
         sGlosa := edtClie.text
      Else
         sGlosa := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      xCta := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
   End;

   If dblcTDoc.text = DMCXC.wsNCreS Then
   Begin
      If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H';
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
      End;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').AsString;
   End;

   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC.FieldByName('TMONID').AsString;
   If xTipDet = 'MG' Then
   Begin
      If xCpto <> '' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
         //xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
         //   ' AND CIAID=' + QuotedStr(dblcCia.text);
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;   // sGlosa;
         // Fin HPC_201701_CXC : Corregir configuración de la dinámica contable
         igvGlosa := sGlosa;
      End;
   End;
   If xTipDet = 'MN' Then
   Begin
      If xCpto <> '' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;   // sGlosa;
         // Fin HPC_201701_CXC : Corregir configuración de la dinámica contable
      End;
   End;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   If xTipDet = 'ME' Then
   Begin
      If xCpto <> '' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;   // sGlosa;
         // Fin HPC_201701_CXC : Corregir configuración de la dinámica contable
      End;
   End;
// Fin  HPC_201701_CXC : Corregir configuración de la dinámica contable

   If xTipDet = 'FL' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
         ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
   End;
   If xTipDet = 'GF' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
         ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
   End;
   If xTipDet = 'SV' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
         ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
   End;
   If xTipDet = 'DC' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
         ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
   End;
   If xTipDet = 'I1' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text; //igvGlosa;//sGlosa;
   End;
   If xTipDet = 'IS' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sGlosa;
   End;
   If xTipDet = 'TO' Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
      xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
         ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
   End;
   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString;
   DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDatetime;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'I'; // Activo
   DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsMovCxC.FieldByName('CCMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsMovCxC.FieldByName('CCDD').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsMovCxC.FieldByName('CCTRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsMovCxC.FieldByName('CCSEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsMovCxC.FieldByName('CCSS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsMovCxC.FieldByName('CCAATRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsMovCxC.FieldByName('CCAASEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsMovCxC.FieldByName('CCAASS').AsString;
   DMCXC.cdsDetCxC.Post;
   xSQL := ' Insert into CXC302( ciaid, ccanomes, tdiarid, cclote, ccnoreg, cptoid, cuentaid, clauxid, clieid, clieruc, docid, ccserie, ccnodoc, ccglosa, ccdh, ccreg, TIPPRESID,parpresid,'
      + ' ccosid, tmonid, cctcampr, ccmtoori, ccmtoloc, ccmtoext, ccfemis, CCFVCMTO, ccfcomp, ccestado, ccaaaa, ccmm, ccdd, cctri, ccsem, ccss, ccaatri, ccaasem, ccaass, ccuser, ccfreg, cchreg, tregid, tipdet, cctcampa, ccflcdr, cccmprb ) '
      + ' Values( ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CIAID').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccanomes').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tdiarid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cclote').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccnoreg').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cptoid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cuentaid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('clauxid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('clieid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('clieruc').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('docid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccserie').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccnodoc').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccglosa').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccdh').AsString) + ', '
      + inttostr(DMCXC.cdsDetCxC.fieldbyname('ccreg').AsInteger) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TIPPRESID').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('parpresid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccosid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tmonid').AsString) + ', '
      + floattostr(DMCXC.cdsDetCxC.fieldbyname('cctcampr').AsFloat) + ','
      + floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoori').AsFloat) + ','
      + floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoloc').AsFloat) + ','
      + floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoext').AsFloat) + ','
      + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('CCFEMIS').AsDateTime)) + ', '
      + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('CCFVCMTO').AsDateTime)) + ', '
      + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('ccfcomp').AsDateTime)) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccestado').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaaaa').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccmm').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccdd').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cctri').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccsem').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccss').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaatri').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaasem').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaass').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccuser').AsString) + ', '
      + '           trunc(sysdate),  '
      + '           sysdate, '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tregid').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('tipdet').AsString) + ', '
      + floattostr(DMCXC.cdsDetCxC.fieldbyname('cctcampa').AsFloat) + ','
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccflcdr').AsString) + ', '
      + quotedstr(DMCXC.cdsDetCxC.fieldbyname('cccmprb').AsString) + ' )';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('No se pudo insertar el detalle de la nota de débito');
      exit;
   End;
End;

Procedure TFProvision.bbtnGeneraClick(Sender: TObject);
Var
   xWhere: String;
   xSQL: String;
Begin
   igvGlosa := '';
   If DMCXC.cdsDetCxC.RecordCount > 0 Then
   Begin
      // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      If MessageDlg(' Existe Detalle Ingresado ' + chr(13) + chr(13)
         + '¿ Desea Regenerar Detalle ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
          xSQL := ' Delete CXC302 '
             + '  Where CIAID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CIAID').AsString)
             + '    and TDIARID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TDIARID').AsString)
             + '    and CCANOMES=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCANOMES').AsString)
             + '    and CCNOREG=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCNOREG').AsString);

          Try
             DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
          Except
             DMCXC.DCOM1.AppServer.RetornaTransaccion;
             ShowMessage('No se puede eliminar el detalle para luego grabar ');
             exit;
          End;

          DMCXC.cdsDetCxC.First;
          While Not DMCXC.cdsDetCxC.Eof Do
          Begin
             DMCXC.cdsDetCxC.delete;
          End;
      end
      else
          Exit;
      // Fin  HPC_201701_CXC : Corregir configuración de la dinámica contable
   End;

   If DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat > 0 Then
      GeneraDetalle('MG', DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat > 0 Then
      GeneraDetalle('MN', DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat, '', '', '');
   // Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
   If DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat > 0 Then
      GeneraDetalle('ME', DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat, '', '', '');
   // Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable
   If DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat > 0 Then
      GeneraDetalle('FL', DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat > 0 Then
      GeneraDetalle('GF', DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat > 0 Then
      GeneraDetalle('SV', DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat > 0 Then
      GeneraDetalle('DC', DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat > 0 Then
      GeneraDetalle('I1', DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat > 0 Then
      GeneraDetalle('IS', DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat > 0 Then
   Begin
      xWhere := 'CPTOCAB=' + quotedstr(dblcdTipoOpera.Text) + ' AND CIAID=' + QuotedStr(dblcCia.text);
      GeneraDetalle('TO', DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, dblcdTipoOpera.Text,
         edtClie.text {DMCXC.BuscaQry('dspTGE','CXC208','*',xWhere,'CUENTAID')}, edtTipoOpera.text);
   End;
End;

Procedure TFProvision.dbeNoRegExit(Sender: TObject);
Var
   xxNoReg: String;
   xSQL: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   dbeNoReg.Text := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);

   If DMCXC.BuscaCxCReg(dblcCia.Text, dblcTDiario.Text, dbeAnoMM.Text, dbeNoReg.Text) Then
   Begin
      dbeNoReg.SetFocus;
      Raise Exception.Create('No.de Registro Duplicado');
   End;

   xxNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes, StrToInt(dbeNoReg.Text));
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := dbeNoReg.Text;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
   DMCXC.cdsMovCxC.Post;
   xSQL := ' Update CXC301 '
      + '    set CCNOREG = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString) + ','
      + '        CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString) + ''
      + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString)
      + '    and DOCID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
      + '    and CCSERIE=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString)
      + '    and CCNODOC=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString)
      + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se puede actualizar los datos de la cabecera');
      exit;
   End;

   dbeNoReg.Text := xxNoReg;
   dtpFComp.Enabled := False;
   dbeNoReg.Enabled := False;
End;

Procedure TFProvision.dblcVendeExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   If Not bbtnBorra.Focused Then
   Begin

      If length(dblcVende.Text) = 0 Then Exit;

      xWhere := 'VEID=' + '''' + dblcVende.Text + '''' + ' and '
         + 'CIAID=' + '''' + dblcCia.text + '''';
      edtVende.Text := DMCXC.BuscaQry('dspTGE', 'CXC203', 'VENOMBRES', xWhere, 'VENOMBRES');

      If length(edtVende.Text) = 0 Then
      Begin
         ShowMessage('Falta Vendedor');
         dblcVende.SetFocus;
         exit;
      End;
   End;
End;

Procedure TFProvision.dblcCComerExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   xWhere := 'CCOMERID=' + '''' + dblcCComer.Text + '''' + ' and '
      + 'CIAID=' + '''' + dblcCia.text + '''';
   edtCComer.Text := DMCXC.BuscaQry('dspTGE', 'CXC101', 'CCOMERDES,CREDITO', xWhere, 'CCOMERDES');
   If length(edtCComer.Text) = 0 Then
   Begin
      ShowMessage('Falta Condicion Comercial');
      dblcCComer.SetFocus;
      exit;
   End;

   If DMCXC.cdsQry.FieldByName('CREDITO').AsString = 'S' Then
      dbcbCred.Checked := True
   Else
      dbcbCred.Checked := False;

   dbcbCred.SetFocus;
End;

Procedure TFProvision.dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSQL := ' Delete CXC302 '
            + '  Where CIAID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CIAID').AsString)
            + '    and TDIARID=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('TDIARID').AsString)
            + '    and CCANOMES=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCANOMES').AsString)
            + '    and CCNOREG=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCNOREG').AsString)
            + '    and CCREG=' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCREG').AsString);

         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            DMCXC.DCOM1.AppServer.RetornaTransaccion;
            ShowMessage('No se puede eliminar el detalle del documento');
            exit;
         End;
         DMCXC.cdsDetCxC.Delete;
      End;
   End;
End;

Procedure TFProvision.dtpFVcmtoExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').Value < dtpFEmis.Date Then
   Begin
      dtpFVcmto.SetFocus;

      Raise Exception.Create('F.Vencimiento debe ser >= F.Emisión');
   End;
End;

Procedure TFProvision.dbeDHExit(Sender: TObject);
Begin
   If Not bbtnRegCanc.Focused Then Exit;

   If (dbeDH.Text <> 'D') And (dbeDH.Text <> 'H') Then
   Begin
      ShowMessage('Digite sólo D(para Debe) o H(para Haber)');
      DMCXC.cdsDetCxC.FieldByName('CCDH').Value := '';
      dbeDH.SetFocus;
   End;
End;

Procedure TFProvision.dblcSerieExit(Sender: TObject);
Begin
   dbeNoDoc.Text := DMCXC.BuscaUltNumero(dblcCia.Text, dblcTDoc.Text, dblcSerie.Text);
End;

// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
Procedure TFProvision.dblcdClieEnter(Sender: TObject);
Var
   xSQL : String;
Begin
{
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;
}
   edtClie.Enabled := False;
   dblcdClie.ReadOnly := True;
   FRegistros.BuscaMaeClientes;
End;
// Fin HPC_201801_CXC

Procedure TFProvision.dblcdClieRucEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

End;

Procedure TFProvision.dblcClAuxExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If length(dblcClAux.text) = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;
   Filtracds(DMCXC.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CLAUXID=' + QuotedStr(dblcClAux.Text));

   If DMCXC.cdsClie.IndexFieldNames <> 'CLIEID' Then
      DMCXC.cdsClie.IndexFieldNames := 'CLIEID';

   If dblcdClie.text <> '' Then
   Begin
      DMCXC.cdsClie.Setkey;
      DMCXC.cdsClie.FieldByName('CLIEID').AsString := dblcdClie.text;
      If Not DMCXC.cdsClie.Gotokey Then
      Begin
         dblcdClieRuc.Clear;
         edtClie.Clear;
         dblcdClie.SetFocus;
         ShowMessage('Error : Cliente no Existe');
         Exit;
      End;
   End;
End;

Procedure TFProvision.dblcdCCostoExit(Sender: TObject);
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

Procedure TFProvision.DeshabilitaEdits(xPnl: TPanel);
Var
   i: Integer;
Begin
   For i := 0 To xpnl.ControlCount - 1 Do
   Begin
      If xpnl.controls[i] Is TCustomEdit Then
         TCustomEdit(xpnl.controls[i]).Enabled := False;
   End;
End;

Procedure TFProvision.dbcbGenDocClick(Sender: TObject);
Var
   evt: TNotifyEvent;
   evtDTS1,
      evtDTS2: TDataSetNotifyEvent;
Begin
   If FProvision = Nil Then
      Exit;
   If Not FProvision.Visible Then
      Exit;
   If Not FProvision.Showing Then
      Exit;

   If Not dbcbGenDoc.Focused Then
      Exit;

   If dbcbGenDoc.Checked Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount > 0 Then
      Begin
         If MessageDlg('Esto Borrará los detalles del Movimiento' +
            #13 + '¿Desea Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin

            DMCXC.cdsDetCxC.First;
            While Not DMCXC.cdsDetCxC.Eof Do
            Begin
               DMCXC.cdsDetCxC.Delete;
            End;
            BlanqueaEdits(pnlMontos);
         End
         Else
         Begin
            evt := dbcbGenDoc.OnClick;
            dbcbGenDoc.OnClick := Nil;
            dbcbGenDoc.Checked := Not dbcbGenDoc.Checked;
            dbcbGenDoc.OnClick := evt;
         End;
      End;
   End
   Else
   Begin
      If (FEmidoc.cdsEmiDoc.Active) Then
         If (FEmiDoc.cdsEmiDoc.RecordCount > 0) Then
         Begin
            If MessageDlg('Esto Borrará los Detalles del Documento a Emitir' +
               #13 + '¿Desea Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               evtDTS1 := FEmiDoc.cdsEmiDoc.AfterDelete;
               evtDTS2 := FEmiDoc.cdsEmiDoc.BeforeDelete;
               FEmiDoc.cdsEmiDoc.AfterDelete := Nil;
               FEmiDoc.cdsEmiDoc.BeforeDelete := Nil;

               FEmiDoc.cdsEmiDoc.First;
               While Not FEmiDoc.cdsEmiDoc.Eof Do
               Begin
                  FEmiDoc.cdsEmiDoc.Delete;
               End;
               FEmiDoc.ActualizaTotales;
               FEmiDoc.cdsEmiDoc.AfterDelete := evtDTS1;
               FEmiDoc.cdsEmiDoc.BeforeDelete := evtDTS2;
            End
            Else
            Begin
               evt := dbcbGenDoc.OnClick;
               dbcbGenDoc.OnClick := Nil;
               dbcbGenDoc.Checked := Not dbcbGenDoc.Checked;
               dbcbGenDoc.OnClick := evt;
            End;
         End;
   End;
End;

Procedure TFProvision.Z2bbtnEmiDocClick(Sender: TObject);
Var
   xsql, xMtoGravado,
      xMtoNoGrav,
      xIGV,
      xISC: String;
   xCondicion: Boolean;
Begin
   FEmiDoc.wciaid := dblcCia.Text;
   FEmiDoc.wccnoreg := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   FEmiDoc.wccanomm := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
   FEmiDoc.wtdiarid := dblcTDiario.Text;

   xMtoGravado := trim(FEmidoc.edtMtoGravado.Text);
   xMtoNoGrav := trim(FEmidoc.edtMtoNoGrav.Text);
   xIGV := trim(FEmidoc.edtIGV.Text);
   xISC := trim(FEmidoc.edtISC.Text);
   FEmidoc.ShowModal;
   dblcdTipoOpera.Value := xTipoOpera;
   If FEmiDoc.xGrabo Then
   Begin
      If FEmiDoc.cdsEmiDoc.RecordCount = 0 Then
      Begin
        //Borrar detalles
         DMCXC.cdsDetCxC.First;
         While Not DMCXC.cdsDetCxC.Eof Do
         Begin
            DMCXC.cdsDetCxC.Delete;
         End;
        //borrar panel
         BlanqueaEdits(pnlMontos);
      End
      Else
      Begin
        //llenar panel
         xCondicion := (xMtoGravado <> trim(FEmiDoc.edtMtoGravado.Text))
            Or (xMtoNoGrav <> trim(FEmiDoc.edtMtoNoGrav.Text))
            Or (xIGV <> trim(FEmiDoc.edtIGV.Text))
            Or (xISC <> trim(FEmiDoc.edtISC.Text));
         If xCondicion Then
         Begin
            With FEmiDoc Do
            Begin
               DMCXC.cdsMovCxC.edit;
               DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').asstring := edtMtoGravado.Text;
               DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').asstring := edtMtoNoGrav.Text;
               DMCXC.cdsMovCxC.FieldByName('CCIGV').asstring := edtIGV.Text;
               DMCXC.cdsMovCxC.FieldByName('CCISC').asstring := edtISC.Text;
               DMCXC.cdsMovCxC.Post;
            End;
           //generar detalle
            ConfIngreso;
            DMCXC.cdsmovcxc.Edit;
            DMCXC.cdsmovcxc.FieldByName('CCMTOORI').clear;
            DMCXC.cdsmovcxc.Post;

            bbtnCalcula.OnClick(Nil);
            DeshabilitaEdits(pnlMontos);
            Genera;
         End;
      End;
   End;
End;

Procedure TFProvision.FormShow(Sender: TObject);
Var
   xMes, xsql, xWhere: String;
   wAno, wMes, wDia: Word;
Begin
   pnlRegReferencia.visible := False;
   pgDocumento.ActivePageIndex := 0;
   xsql := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
   DMCXC.cdsCCosto.Close;
   DMCXC.cdsCCosto.DataRequest(xsql);
   DMCXC.cdsCCosto.open;
   If DMCXC.BuscaQry('dspTGE', 'TGE128', 'TASA', 'TIPDET=' + QuotedStr('I1'), 'TASA') = '' Then
      rIGV := 0
   Else
      rIGV := DMCXC.cdsQry.FieldByName('TASA').AsFloat / 100;

   If DMCXC.BuscaQry('dspTGE', 'TGE128', 'TASA', 'TIPDET=' + QuotedStr('IS'), 'TASA') = '' Then
      rIsc := 0
   Else
      rIsc := DMCXC.cdsQry.FieldByName('TASA').AsFloat / 100;

   xCrea := True;
   xTipoOpera := '';
   xNuevoProv := False;
   DMCXC.cdsDetCxC.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;TREGID';
   If DMCXC.wModo = 'A' Then
   Begin
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
      FEmidoc.edtMtoGravado.Text := '';
      FEmidoc.edtMtoNoGrav.Text := '';
      FEmidoc.edtIGV.Text := '';
      FEmidoc.edtISC.Text := '';
      dblcdTipoOpera.Clear;
      edtTipoOpera.Text := '';
      dblcCia.SetFocus;
      dblcdTipoOpera.Enabled := false;
   End
   Else
   Begin
      XSQL := 'SELECT * FROM CXC304 where  CIAID=''' + DMCXC.CDSMOVCXC.FieldByName('CIAID').ASSTRING
         + ''' AND TDIARID=''' + DMCXC.CDSMOVCXC.FieldByName('TDIARID').ASSTRING
         + ''' AND CCNOREG=''' + DMCXC.CDSMOVCXC.FieldByName('CCNOREG').ASSTRING
         + ''' AND CCANOMM=''' + DMCXC.CDSMOVCXC.FieldByName('CCANOMES').ASSTRING
         + ''' AND CLIEID=''' + DMCXC.CDSMOVCXC.FieldByName('CLIEID').ASSTRING
         + ''' AND TCANJEID=''RF''';
      DMCXC.cdscanje.close;
      DMCXC.cdscanje.datarequest(XSQL);
      DMCXC.cdscanje.open;

      xFlagGr := False;

// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'P') or (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'C') Then
         bbtnReEnvia.enabled := True;
// Fin    HPC_201701_CXC : Corregir configuración de la dinámica contable

      DMCXC.cdsMovCxC.Edit;
      DecodeDate(DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime, wAno, wMes, wDia);
      If wMes < 10 Then
         xMes := '0' + inttostr(wMes)
      Else
         xMes := inttostr(wMes);
      xTMes := xMes;
      xTAno := IntToStr(wAno);

      dblcCia.Text := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
      dblcTDoc.Text := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      dblcSerie.Text := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      dbeNoDoc.Text := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      dblcdClie.Text := DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString;
      edtCia.Text := DMCXC.displayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
      edtClie.text := DMCXC.BuscaQry('dspTGE', 'TGE204', 'ClieDES', 'CLIEID=' + quotedstr(dblcdClie.Text) + ' AND CLAUXID=' + quotedstr(dblcClAux.text), 'CLIEDES');

// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
//    Se Carga Tipo de ND
      dblcTipND.Text := DMCXC.cdsMovCxC.FieldByName('COD_TIP_NC').AsString;
      edtTipoND.Text := DMCXC.DisplayDescrip('DB2ADMIN.SUNAT_CAT_10', 'TIP_ND_DES', 'TIP_ND_COD', dblcTipND.Text);
// Fin   HPC_201701_CXC : Corregir configuración de la dinámica contable

      If length(edtClie.text) = 0 Then
         If dblcClAux.text = 'AS' Then
            edtClie.text := DMCXC.BuscaQry('dspTGE', 'APO201', 'ASOAPENOMDNI', 'ASOID=' + quotedstr(dblcdClie.Text), 'ASOAPENOMDNI');
      xWhere := 'DocId=''' + dblcTDoc.Text + ''' and ( DOC_FREG=''' + FRegistros.xTipoProv + ''' or '
         + 'Doc_FReg=''D'' or DOC_FREG=''B'' or DOC_FREG=''H'') and DOCMOD=''CXC''';
      edtTDoc.Text := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'DocDes');
      edtTDiario.Text := DMCXC.displayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + '''' + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR', xWhere, 'TMONABR');
      xWhere := 'VEID=' + '''' + dblcVende.Text + '''' + ' and '
         + 'CIAID=' + '''' + dblcCia.text + '''';
      edtVende.Text := DMCXC.BuscaQry('dspTGE', 'CXC203', 'VENOMBRES', xWhere, 'VENOMBRES');
      xWhere := 'CCOMERID=' + '''' + dblcCComer.Text + '''' + ' and '
         + 'CIAID=' + '''' + dblcCia.text + '''';
      edtCComer.Text := DMCXC.BuscaQry('dspTGE', 'CXC101', 'CCOMERDES,CREDITO', xWhere, 'CCOMERDES');

      If DMCXC.cdsMovCxC.FieldByName('CCFLCRED').AsString = 'S' Then
         dbcbCred.Checked := True
      Else
         dbcbCred.Checked := False;

      FiltraMov;
      FEmiDoc.wciaid := dblcCia.Text;
      FEmiDoc.wccnoreg := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
      FEmiDoc.wccanomm := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
      FEmiDoc.wtdiarid := dblcTDiario.Text;
      xsql := 'SELECT * FROM CXC311 WHERE CIAID=' + quotedstr(dblcCia.Text) +
         ' AND CCANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND TDIARID=' + quotedstr(dblcTDiario.Text) +
         ' AND CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
      FEmiDoc.cdsEmiDoc.close;
      FEmiDoc.cdsEmiDoc.DataRequest(xsql);
      FEmiDoc.cdsEmiDoc.open;

      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I' Then
      Begin
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
         //HABILITA O DESHABILITA EMISION DE DOCUMENTOS
         If DMCXC.RecuperaDatos('TGE110', '*', 'DOCID=''' + trim(dblcTDoc.Text) + ''' AND DOCMOD = ''CXC''') Then
         Begin
            If DMCXC.cdsqry2.FieldByName('F_EMIDOC').AsString = 'S' Then
               dbcbGenDoc.Enabled := True
            Else
               dbcbGenDoc.Enabled := false;
         End
         Else
         Begin
            dbcbGenDoc.Enabled := false;
         End;
      End
      Else
         EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);
      If (DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Value = 'S') Then
         Z2bbtnContador.Enabled := false;

      DMCXC.cdsCpto.Close;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') or (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T')Then
// Fin HPC_201701_CXC : Corregir configuración de la dinámica contable
      Begin
         If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
               + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )');
            DMCXC.cdscpto.Open;
         End
         Else
         Begin
            DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
               + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
            DMCXC.cdscpto.Open;
         End;

         DMCXC.cdsCptoCab.Close;
      // Inicio HPC_201801_CXC
      // Cambios por nueva búsqueda en Maestro de Cliente
         {
         DMCXC.cdscptoCab.DataRequest('SELECT * FROM CXC208 WHERE OPCMENU=''P'' AND DOCID=' + QuotedStr(dblcTDoc.text) +
            ' AND TMONID=' + QuotedStr(dblcTMon.text) + ' AND TVTAID=' + QuotedStr(xSector) +
            ' AND CIAID=' + QuotedStr(dblcCia.text));
         DMCXC.cdscptoCab.Open;
         }
         xWhere := 'CIAID=' + QuotedStr(dblcCia.text)
            + ' and DOCID=' + QuotedStr(DMCXC.wsNCre)
            + ' and TMONID=' + QuotedStr(dblcTMon.text)
            + ' and OPCMENU=''P'' ';
         DMCXC.FiltraTabla(DMCXC.cdsCptoCab, 'CXC208', 'CPTOCAB', xWhere);
      // Fin HPC_201801_CXC

         dblcdTipoOpera.Enabled := true;
      End;
      dblcdTipoOpera.text := DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString;
      xWhere := 'CPTOCAB=''' + dblcdTipoOpera.text + ''' and CIAID=''' + dblcCia.text + '''';
      edtTipoOpera.text := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTODES,CPTOCAB', xWhere, 'CPTODES');
   End;

   If (DMCXC.wAdmin = 'V') Or (DMCXC.wAdmin = 'P') Then
   Begin
      btnHabilitaModifRVentas.Enabled := True;
   End
   Else
   Begin
      btnHabilitaModifRVentas.Enabled := False;
   End;
   xCrea := False;
End;

Procedure TFProvision.BlanqueaEdits(xPnl: TPanel);
Var
   i: Integer;
Begin
   For i := 0 To xpnl.ControlCount - 1 Do
   Begin
      If xpnl.controls[i] Is TwwDBEdit Then
      Begin
         If Not (DMCXC.cdsmovcxc.state In [dsinsert, dsedit]) Then
            DMCXC.cdsmovcxc.edit;
         DMCXC.cdsmovcxc.FieldByName(TWWDBEDIT(XPNL.CONTROLS[I]).DataField).AsString := '';
      End;

   End;
End;

Procedure TFProvision.Genera;
Var
   xWhere: String;
Begin
   If DMCXC.cdsDetCxC.RecordCount > 0 Then
   Begin
      DMCXC.cdsDetCxC.First;
      While Not DMCXC.cdsDetCxC.Eof Do
      Begin
         DMCXC.cdsDetCxC.delete;
      End;
   End;
   If DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat > 0 Then
   Begin
      FEmidoc.cdsEmiDoc.first;
      While Not FEmidoc.cdsEmiDoc.Eof Do
      Begin
         If (FEmidoc.cdsEmiDoc.FieldByName('DDEIGV').AsString = 'S') Or
            (FEmidoc.cdsEmiDoc.FieldByName('INCIGV').AsString = 'I') Then
         Begin
            xWhere := 'CPTOCAB=' + quotedstr(FEmidoc.cdsEmiDoc.FieldByName('CPTOID').AsString);
            GeneraDetalle('MG', FEmidoc.cdsEmiDoc.FieldByName('DDEPT').AsFloat,
               FEmidoc.cdsEmiDoc.FieldByName('CPTOID').AsString, DMCXC.BuscaQry('dspTGE', 'CXC208', '*', xWhere, 'CUENTAID'),
               FEmidoc.cdsEmiDoc.FieldByName('DDEDES').AsString);
         End;
         FEmidoc.cdsEmiDoc.next;
      End;
   End;
   If DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat > 0 Then
   Begin
      FEmidoc.cdsEmiDoc.first;
      While Not FEmidoc.cdsEmiDoc.Eof Do
      Begin
         If (FEmidoc.cdsEmiDoc.FieldByName('DDEIGV').AsString <> 'S') And
            (FEmidoc.cdsEmiDoc.FieldByName('INCIGV').AsString <> 'I') Then
         Begin
            xWhere := 'CPTOCAB=' + quotedstr(FEmidoc.cdsEmiDoc.FieldByName('CPTOID').AsString);
            GeneraDetalle('MN', FEmidoc.cdsEmiDoc.FieldByName('DDEPT').AsFloat,
               FEmidoc.cdsEmiDoc.FieldByName('CPTOID').AsString, DMCXC.BuscaQry('dspTGE', 'CXC208', '*', xWhere, 'CUENTAID'),
               FEmidoc.cdsEmiDoc.FieldByName('DDEDES').AsString);
         End;
         FEmidoc.cdsEmiDoc.next;
      End;
   End;
   If DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat > 0 Then
      GeneraDetalle('FL', DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat > 0 Then
      GeneraDetalle('GF', DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat > 0 Then
      GeneraDetalle('SV', DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat > 0 Then
      GeneraDetalle('DC', DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat > 0 Then
      GeneraDetalle('I1', DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCISC').value > 0 Then
      GeneraDetalle('IS', DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat, '', '', '');
   If DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat > 0 Then
   Begin
      xWhere := 'CPTOCAB=' + quotedstr(dblcdTipoOpera.Text);
      GeneraDetalle('TO', DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, dblcdTipoOpera.Text,
         DMCXC.BuscaQry('dspTGE', 'CXC208', '*', xWhere, 'CUENTAID'), '');
   End;
End;

Procedure TFProvision.Z2bbtnImprimeClick(Sender: TObject);
Var
   xReporte, xCampoFlag, xWhere: String;
   xY, xD, xM, dd, mm, aa: word;
   sComerid, sDocumento, sSerie, sDocid, sCanje, sWhere, szona: String;
   xIGV1, xTotal1: real;
   sSQL, xAnoMM: String;
   sNDImpAFE, sNDImpNOAFE, sNDImp, sNDTOTAL, sNDAno, sNDLetras, sNDRazon, sNDDIR, sNDRUC, sCodCli, sCodigo, sFecha: String;
   sNombreAno, sCtaCte1, sCtaCte2: String;
Begin
   If dbcbGenDoc.Checked Then
   Begin
      If DMCXC.RecuperaDatos('CXC108', '*', 'DOCID=''' + dblcTDoc.Text + '''') Then
      Begin
         xReporte := DMCXC.cdsqry2.FieldByName('REPORTE').AsString;
         xCampoFlag := DMCXC.cdsqry2.FieldByName('CAMPOFLAG').AsString;

         If DMCXC.RecuperaDatos('CXC109', '*', xCampoFlag + ' = ''S'' ') Then
         Begin
            xIgv := DMCXC.BuscaQry('dspTGE', 'TGE108', '*', 'TASAABR = ''I.G.V.''', 'TASACAN');
            EmiteDoc(xReporte);
         End
         Else
            Application.MessageBox(
               'No se ha registrado datos a Imprimir' + #13 + 'Para este Tipo de Documento' +
               #13 + 'Imposible Imprimir',
               'Falta Registro de datos a Imprimir', MB_OK);
      End
      Else
         Application.MessageBox(
            'No se ha registrado Formato' + #13 + 'Para este Tipo de Documento' +
            #13 + 'Imposible Imprimir',
            'No existe el Formato', MB_OK);
   End
   Else
   Begin
      If dblcTDoc.text = DMCXC.wsNDe Then
      Begin
         sNDRazon := DMCXC.BuscaQry2('dspTGE', 'TGE204', 'CLIERUC,CLIEDIR,CLIEDES,ZONVTAID', 'CLAUXID=' + quotedstr(dblcClAux.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEDES');
         szona := DMCXC.cdsQry6.FieldByName('ZONVTAID').AsString;
         If Length(szona) > 0 Then
            sNDDIR := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString + ' - ' + DMCXC.displayDescrip('FAC106', 'ZVTADES', 'ZVTAID', sZona)
         Else
            sNDDIR := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString;

         sNDRUC := DMCXC.cdsQry6.FieldByName('CLIERUC').AsString;
         sCodCli := dblcdClie.text;
         sCodigo := dblcSerie.text + ' ' + dbeNoDoc.text;
         sFecha := DateToStr(dtpFEmis.Date);
         sNDImpAFE := dbeMGrav.text;
         sNDImpNOAFE := dbeMNoGrav.text;
         sNDImp := dbeIGV.text;
         sNDTOTAL := dbeTotal.text;
         sNDAno := DMCXC.displayDescrip('TGE185', 'GLOSA', 'ANIO', DMCXC.cdsMovCxC.FieldByName('CCAAAA').AsString);
         sNDLetras := 'SON  ' + Trim(strNum(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text));

         sSQL := ' SELECT C.*,' + QuotedStr(sNDRazon) + 'NDRazon, ' + QuotedStr(sNDDIR) + 'NDDIR, ' + QuotedStr(sNDRUC) + 'NDRUC, ' + QuotedStr(sCodCli) + 'CodCli, ' +
            QuotedStr(sCodigo) + 'Codigo, ' + QuotedStr(sFecha) + 'Fecha, ' + sNDImpAFE + ' NDImpAFE, ' + sNDImpNOAFE + ' NDImpNOAFE, ' +
            sNDImp + ' NDImp, ' + sNDTOTAL + ' NDTOTAL, ' + QuotedStr(sNDAno) + ' NDAno, ' + QuotedStr(sNDLetras) + ' NDLetras ' +
            '  FROM CXC302 C WHERE ' +
            ' C.CIAID=' + '''' + dblcCia.Text + '''' + ' and ' +
            ' C.DOCID=' + '''' + dblcTDoc.Text + '''' + ' and ' +
            ' C.CCSERIE=' + '''' + dblcSerie.Text + '''' + ' and ' +
            ' C.CCNODOC=' + '''' + dbeNoDoc.Text + ''' AND (TIPDET = ''MN'' OR TIPDET = ''MG'')';
         DMCXC.cdsReporte.Close;
         DMCXC.cdsReporte.Datarequest(sSQL);
         DMCXC.cdsReporte.Open;

         dbpFormatos.DataSource := DMCXC.dsReporte;
         pprpND.DataPipeline := dbpFormatos;
         pprpND.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NOTADEBITO.RTM';
         pprpND.template.LoadFromFile;
         ppDesigner1.Show;
      End;

      If dblcTDoc.text = DMCXC.wsFac Then
      Begin
         pprpFAC.DataPipeline := dbpFormatos;
         pprpFAC.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\FACTURACG.RTM';
         pprpFAC.template.LoadFromFile;

   //NUEVAS ETIQUETAS
         DecodeDate(dtpFEmis.date, xY, xM, xD);
         xAnoMM := IntToStr(xY) + StrZero(IntToStr(xM), 2);
         sNombreAno := DMCXC.BuscaQry('dspUltTGE', 'TGE185', 'ANIO,GLOSA', 'ANIO=' + quotedstr(copy(xAnoMM, 1, 4)), 'GLOSA');
         sSQL := 'Select BANCOID,CCBCOID from TGE106'
            + ' where BANCOID in (''01'',''02'')'
            + ' and TMONID=' + quotedstr(DMCXC.wTMonExt);
         DMCXC.cdsQry2.Filter := '';
         DMCXC.cdsQry2.IndexFieldNames := '';
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.DataRequest(sSQL);
         DMCXC.cdsQry2.Open;

         sWhere := 'BANCOID=' + quotedstr(DMCXC.cdsQry2.FieldByName('BANCOID').AsString);
         sCtaCte1 := DMCXC.BuscaQry('dspUltTGE', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM') + ' CTA.US$ ' + DMCXC.cdsQry2.FieldByName('CCBCOID').AsString;

         DMCXC.cdsQry2.Next;

         sWhere := 'BANCOID=' + quotedstr(DMCXC.cdsQry2.FieldByName('BANCOID').AsString);
         sCtaCte2 := DMCXC.BuscaQry('dspUltTGE', 'TGE105', 'BANCONOM', xWhere, 'BANCONOM') + ' CTA.US$ ' + DMCXC.cdsQry2.FieldByName('CCBCOID').AsString;

         If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
         Begin
            sWhere := 'SELECT E.CIADIRE PTOSAL,B.CLIEDIR||'' Zona: ''||C.ZVTADES||''-''||D.TVTADES PTOLLEG,C.ZVTADES ZONAVENTA,B.CLIETELF,C.ZVTADES||''-''||D.TVTADES ZONADIR,A.CLIERUC,B.CLIEDES,B.CLIEDIR DIRCLIE,A.CCGLOSA CPTO,' +
               StringReplace(dbeMGrav.text, ',', '', [rfReplaceAll]) + ' MTOBRUTO,' + StringReplace(dbeIGV.text, ',', '', [rfReplaceAll]) + ' FACIGVMO,' + StringReplace(dbeTotal.text, ',', '', [rfReplaceAll]) + ' FACTOTMO,' +
               QuotedStr(DMCXC.displayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text)) + ' TIPOMONEDA, ' +
               QuotedStr('SON:' + Trim(strNum(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text))) + ' MONTOLETRA, ' +
               QuotedStr(dblcVende.text) + ' VEID, ' + QuotedStr(DateToStr(dtpFEmis.Date)) + 'FECPEDIDO, ' + QuotedStr(dblcdPedido.text) + ' PEDIDO, ' + QuotedStr(edtCComer.text) + 'CONDPAGO, '''' NUMEROGUIA, ' +
               QuotedStr(DateToStr(dtpFEmis.Date)) + 'FACFECHA, ' + QuotedStr(dblcSerie.text + dbeNoDoc.text) + 'NUMFACTURA, ' +
               QuotedStr(sNombreAno) + 'NombreAno, ' + QuotedStr(sCtaCte1) + 'CtaCte1, ' + QuotedStr(sCtaCte2) + 'CtaCte2 ' +
               ' FROM CXC302 A ' +
               ' LEFT JOIN TGE101 E ON A.CIAID=E.CIAID ' +
               ' LEFT JOIN TGE204 B ON A.CIAID=B.CIAID AND A.CLAUXID=B.CLAUXID AND A.CLIEID=B.CLIEID ' +
               ' LEFT JOIN FAC106 C ON B.TVTAID=C.TVTAID AND B.ZONVTAID=C.ZVTAID ' +
               ' LEFT JOIN FAC105 D ON B.TVTAID=D.TVTAID ' +
               ' WHERE A.CIAID=' + QuotedStr(dblcCia.text) + ' AND A.DOCID=' + QuotedStr(dblcTDoc.text) + ' AND A.CCSERIE=' + QuotedStr(dblcSerie.text) +
               ' AND A.CCNODOC=' + QuotedStr(dbeNoDoc.text) + ' AND A.TIPDET=''MG'' ';
         End;
         If DMCXC.SRV_D = 'ORACLE' Then
         Begin
            sWhere := 'SELECT E.CIADIRE PTOSAL,B.CLIEDIR||'' Zona: ''||C.ZVTADES||''-''||D.TVTADES PTOLLEG,C.ZVTADES ZONAVENTA,B.CLIETELF,C.ZVTADES||''-''||D.TVTADES ZONADIR,A.CLIERUC,B.CLIEDES,B.CLIEDIR DIRCLIE,A.CCGLOSA CPTO,' +
               StringReplace(dbeMGrav.text, ',', '', [rfReplaceAll]) + ' MTOBRUTO,' + StringReplace(dbeIGV.text, ',', '', [rfReplaceAll]) + ' FACIGVMO,' + StringReplace(dbeTotal.text, ',', '', [rfReplaceAll]) + ' FACTOTMO,' +
               QuotedStr(DMCXC.displayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text)) + ' TIPOMONEDA, ' +
               QuotedStr('SON:' + Trim(strNum(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text))) + ' MONTOLETRA, ' +
               QuotedStr(dblcVende.text) + ' VEID, ' + QuotedStr(DateToStr(dtpFEmis.Date)) + 'FECPEDIDO, ' + QuotedStr(dblcdPedido.text) + ' PEDIDO, ' + QuotedStr(edtCComer.text) + 'CONDPAGO, '''' NUMEROGUIA, ' +
               QuotedStr(DateToStr(dtpFEmis.Date)) + 'FACFECHA, ' + QuotedStr(dblcSerie.text + dbeNoDoc.text) + 'NUMFACTURA, ' +
               QuotedStr(sNombreAno) + 'NombreAno, ' + QuotedStr(sCtaCte1) + 'CtaCte1, ' + QuotedStr(sCtaCte2) + 'CtaCte2 ' +
               ' FROM CXC302 A,TGE101 E, TGE204 B, FAC106 C, FAC105 D ' +
               ' WHERE A.CIAID=E.CIAID(+) ' +
               ' AND A.CIAID=B.CIAID(+) AND A.CLAUXID=B.CLAUXID(+) AND A.CLIEID=B.CLIEID(+) ' +
               ' AND B.TVTAID=C.TVTAID(+) AND B.ZONVTAID=C.ZVTAID(+) ' +
               ' AND B.TVTAID=D.TVTAID(+) ' +
               ' AND A.CIAID=' + QuotedStr(dblcCia.text) + ' AND A.DOCID=' + QuotedStr(dblcTDoc.text) + ' AND A.CCSERIE=' + QuotedStr(dblcSerie.text) +
               ' AND A.CCNODOC=' + QuotedStr(dbeNoDoc.text) + ' AND A.TIPDET=''MG'' ';
         End;

         DMCXC.cdsSQL.Close;
         DMCXC.cdsSQL.DataRequest(sWhere);
         DMCXC.cdsSQL.Open;
         dbpFormatos.DataSource := DMCXC.dsSQL;
         pprpFAC.Print;
      End;

      If dblcTDoc.text = DMCXC.wsBol Then //BOLETAS
      Begin
         pprpFAC.DataPipeline := dbpFormatos;
         pprpFAC.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\FACTURACG.RTM';
         pprpFAC.template.LoadFromFile;
         DecodeDate(dtpFEmis.date, xY, xM, xD);
         xAnoMM := IntToStr(xY) + StrZero(IntToStr(xM), 2);
         sNombreAno := DMCXC.BuscaQry('dspUltTGE', 'TGE185', 'ANIO,GLOSA', 'ANIO=' + quotedstr(copy(xAnoMM, 1, 4)), 'GLOSA');
         sSQL := 'Select BANCOID,CCBCOID from TGE106'
            + ' where BANCOID in (''01'',''02'')'
            + ' and TMONID=' + quotedstr(DMCXC.wTMonExt);
         DMCXC.cdsQry2.Filter := '';
         DMCXC.cdsQry2.IndexFieldNames := '';
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.DataRequest(sSQL);
         DMCXC.cdsQry2.Open;

         sWhere := 'BANCOID=' + quotedstr(DMCXC.cdsQry2.FieldByName('BANCOID').AsString);
         sCtaCte1 := DMCXC.BuscaQry('dspUltTGE', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM') + ' CTA.US$ ' + DMCXC.cdsQry2.FieldByName('CCBCOID').AsString;

         DMCXC.cdsQry2.Next;

         sWhere := 'BANCOID=' + quotedstr(DMCXC.cdsQry2.FieldByName('BANCOID').AsString);
         sCtaCte2 := DMCXC.BuscaQry('dspUltTGE', 'TGE105', 'BANCONOM', xWhere, 'BANCONOM') + ' CTA.US$ ' + DMCXC.cdsQry2.FieldByName('CCBCOID').AsString;

         If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
         Begin
            sWhere := 'SELECT E.CIADIRE PTOSAL,B.CLIEDIR||'' Zona: ''||C.ZVTADES||''-''||D.TVTADES PTOLLEG,C.ZVTADES ZONAVENTA,B.CLIETELF,C.ZVTADES||''-''||D.TVTADES ZONADIR,A.CLIERUC,B.CLIEDES,B.CLIEDIR DIRCLIE,A.CCGLOSA CPTO,' +
               StringReplace(dbeMGrav.text, ',', '', [rfReplaceAll]) + ' MTOBRUTO,' + StringReplace(dbeIGV.text, ',', '', [rfReplaceAll]) + ' FACIGVMO,' + StringReplace(dbeTotal.text, ',', '', [rfReplaceAll]) + ' FACTOTMO,' +
               QuotedStr(DMCXC.displayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text)) + ' TIPOMONEDA, ' +
               QuotedStr('SON:' + Trim(strNum(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text))) + ' MONTOLETRA, ' +
               QuotedStr(dblcVende.text) + ' VEID, ' + QuotedStr(DateToStr(dtpFEmis.Date)) + 'FECPEDIDO, ' + QuotedStr(dblcdPedido.text) + ' PEDIDO, ' + QuotedStr(edtCComer.text) + 'CONDPAGO, '''' NUMEROGUIA, ' +
               QuotedStr(DateToStr(dtpFEmis.Date)) + 'FACFECHA, ' + QuotedStr(dblcSerie.text + dbeNoDoc.text) + 'NUMFACTURA, ' +
               QuotedStr(sNombreAno) + 'NombreAno, ' + QuotedStr(sCtaCte1) + 'CtaCte1, ' + QuotedStr(sCtaCte2) + 'CtaCte2 ' +
               ' FROM CXC302 A ' +
               ' LEFT JOIN TGE101 E ON A.CIAID=E.CIAID ' +
               ' LEFT JOIN TGE204 B ON A.CIAID=B.CIAID AND A.CLAUXID=B.CLAUXID AND A.CLIEID=B.CLIEID ' +
               ' LEFT JOIN FAC106 C ON B.TVTAID=C.TVTAID AND B.ZONVTAID=C.ZVTAID ' +
               ' LEFT JOIN FAC105 D ON B.TVTAID=D.TVTAID ' +
               ' WHERE A.CIAID=' + QuotedStr(dblcCia.text) + ' AND A.DOCID=' + QuotedStr(dblcTDoc.text) + ' AND A.CCSERIE=' + QuotedStr(dblcSerie.text) +
               ' AND A.CCNODOC=' + QuotedStr(dbeNoDoc.text) + ' AND A.TIPDET=''MG'' ';
         End;
         If DMCXC.SRV_D = 'ORACLE' Then
         Begin
            sWhere := 'SELECT E.CIADIRE PTOSAL,B.CLIEDIR||'' Zona: ''||C.ZVTADES||''-''||D.TVTADES PTOLLEG,C.ZVTADES ZONAVENTA,B.CLIETELF,C.ZVTADES||''-''||D.TVTADES ZONADIR,A.CLIERUC,B.CLIEDES,B.CLIEDIR DIRCLIE,A.CCGLOSA CPTO,' +
               StringReplace(dbeMGrav.text, ',', '', [rfReplaceAll]) + ' MTOBRUTO,' + StringReplace(dbeIGV.text, ',', '', [rfReplaceAll]) + ' FACIGVMO,' + StringReplace(dbeTotal.text, ',', '', [rfReplaceAll]) + ' FACTOTMO,' +
               QuotedStr(DMCXC.displayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text)) + ' TIPOMONEDA, ' +
               QuotedStr('SON:' + Trim(strNum(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text))) + ' MONTOLETRA, ' +
               QuotedStr(dblcVende.text) + ' VEID, ' + QuotedStr(DateToStr(dtpFEmis.Date)) + 'FECPEDIDO, ' + QuotedStr(dblcdPedido.text) + ' PEDIDO, ' + QuotedStr(edtCComer.text) + 'CONDPAGO, '''' NUMEROGUIA, ' +
               QuotedStr(DateToStr(dtpFEmis.Date)) + 'FACFECHA, ' + QuotedStr(dblcSerie.text + dbeNoDoc.text) + 'NUMFACTURA, ' +
               QuotedStr(sNombreAno) + 'NombreAno, ' + QuotedStr(sCtaCte1) + 'CtaCte1, ' + QuotedStr(sCtaCte2) + 'CtaCte2 ' +
               ' FROM CXC302 A,TGE101 E, TGE204 B, FAC106 C, FAC105 D ' +
               ' WHERE A.CIAID=E.CIAID(+) ' +
               ' AND A.CIAID=B.CIAID(+) AND A.CLAUXID=B.CLAUXID(+) AND A.CLIEID=B.CLIEID(+) ' +
               ' AND B.TVTAID=C.TVTAID(+) AND B.ZONVTAID=C.ZVTAID(+) ' +
               ' AND B.TVTAID=D.TVTAID(+) ' +
               ' AND A.CIAID=' + QuotedStr(dblcCia.text) + ' AND A.DOCID=' + QuotedStr(dblcTDoc.text) + ' AND A.CCSERIE=' + QuotedStr(dblcSerie.text) +
               ' AND A.CCNODOC=' + QuotedStr(dbeNoDoc.text) + ' AND A.TIPDET=''MG'' ';
         End;

         DMCXC.cdsSQL.Close;
         DMCXC.cdsSQL.DataRequest(sWhere);
         DMCXC.cdsSQL.Open;
         dbpFormatos.DataSource := DMCXC.dsSQL;
         pprpFAC.Print;
      End;

   End;

End;

Procedure TFProvision.EmiteDoc;
Var
   i,
      Banda,
      Componente: Integer;
   xSQL,
      xTipDoc, xTipFReg, ssql, xFiltro: String;
   j: Integer;
   xnum: real;
   cdsClone: TwwClientDataset;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := 'SELECT TGE204.CLIEDES PPRAZON, TGE204.CLIEDIR PPDIRECCION, '
         + 'CXC301.CLIERUC PPRUC, '
         + 'CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIA, '
         + 'CASE WHEN LENGTH(RTRIM(CHAR(MONTH(CCFEMIS))))< 2 THEN ''0''||CHAR(MONTH(CCFEMIS)) ELSE CHAR(MONTH(CCFEMIS)) END PPMES, '
         + 'CHAR(YEAR(CCFEMIS)) PPANO, '
         + DMCXC.wReplacCeros + '(CCIGV,0) AS PPIGV, CCMTOORI PPTOTAL, '
         + 'CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIAN, '
         + 'CASE WHEN MONTH(CCFEMIS)= 1  THEN ''Enero'' '
         + 'WHEN MONTH(CCFEMIS)= 2  THEN ''Febrero'' '
         + 'WHEN MONTH(CCFEMIS)= 3  THEN ''Marzo'' '
         + 'WHEN MONTH(CCFEMIS)= 4  THEN ''Abril'' '
         + 'WHEN MONTH(CCFEMIS)= 5  THEN ''Mayo'' '
         + 'WHEN MONTH(CCFEMIS)= 6  THEN ''Junio'' '
         + 'WHEN MONTH(CCFEMIS)= 7  THEN ''Julio'' '
         + 'WHEN MONTH(CCFEMIS)= 8  THEN ''Agosto'' '
         + 'WHEN MONTH(CCFEMIS)= 9  THEN ''Septiembre'''
         + 'WHEN MONTH(CCFEMIS)= 10 THEN ''Octubre'' '
         + 'WHEN MONTH(CCFEMIS)= 11 THEN ''Noviembre'' '
         + 'WHEN MONTH(CCFEMIS)= 12 THEN ''Diciembre'' '
         + 'END PPMESN, '
         + 'CHAR(YEAR(CCFEMIS)) PPANON, CCFEMIS '
         + 'FROM CXC301 '
         + 'LEFT JOIN TGE204 ON (TGE204.CIAID=CXC301.CIAID AND TGE204.CLAUXID=CXC301.CLAUXID AND TGE204.CLIEID=CXC301.CLIEID) ';
      With DMCXC.cdsmovcxc Do
         xFiltro := 'CXC301.CIAID=''' + fieldbyname('CIAID').AsString + ''' AND '
            + 'CCANOMES=''' + fieldbyname('CCANOMES').AsString + ''' AND '
            + 'TDIARID=''' + fieldbyname('TDIARID').AsString + ''' AND '
            + 'CCNOREG=''' + fieldbyname('CCNOREG').AsString + ''' ';

      xSQL := xSQL + ' WHERE ' + xFiltro;
   End;

   If DMCXC.SRV_D = 'ORACLE' Then
   Begin
      xSQL := 'SELECT TGE204.CLIEDES PPRAZON, TGE204.CLIEDIR PPDIRECCION, CXC301.CLIERUC PPRUC, '
         + 'TO_CHAR( CCFEMIS,''DD'')   PPDIA, '
         + 'TO_CHAR( CCFEMIS,''MM'')   PPMES, '
         + 'TO_CHAR( CCFEMIS,''YYYY'') PPANO, '
         + 'NVL(CCIGV,0) PPIGV,  CCMTOORI PPTOTAL, '
         + 'TO_CHAR( CCFEMIS,''DD'')   PPDIAN, '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''01'', ''Enero'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''02'', ''Febrero'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''03'', ''Marzo'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''04'', ''Abril'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''05'', ''Mayo'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''06'', ''Junio'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''07'', ''Julio'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''08'', ''Agosto'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''09'', ''Setiembre'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''10'', ''Octubre'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''11'', ''Noviembre'', '
         + 'DECODE( TO_CHAR(CCFEMIS,''MM''), ''12'', ''Diciembre'', ''Error'' )))))))))))) PPMESN, '
         + 'TO_CHAR( CCFEMIS,''YYYY'') PPANON, CCFEMIS '
         + 'FROM CXC301, TGE204 '
         + 'WHERE CXC301.CIAID=''' + DMCXC.cdsmovcxc.FieldByName('CIAID').AsString + ''' AND '
         + 'CCANOMES=''' + DMCXC.cdsmovcxc.FieldByName('CCANOMES').AsString + ''' AND '
         + 'TDIARID=''' + DMCXC.cdsmovcxc.FieldByName('TDIARID').AsString + ''' AND '
         + 'CCNOREG=''' + DMCXC.cdsmovcxc.FieldByName('CCNOREG').AsString + ''' AND '
         + '( TGE204.CLAUXID=CXC301.CLAUXID(+) AND TGE204.CLIEID=CXC301.CLIEID(+) ) '
   End;

   DMCXC.cdsQry6.Close;
   DMCXC.cdsQry6.DataRequest(xSQL);
   DMCXC.cdsQry6.Open;

   ssql := '';
   ssql := 'SELECT * FROM CXC311 WHERE CIAID=' + quotedstr(dblcCia.text) +
      ' AND CCANOMM=' + quotedstr(dbeAnoMM.text) +
      ' AND TDIARID=' + quotedstr(dblcTDiario.text) +
      ' AND CCNOREG=' + quotedstr(dbeNoReg.text);
   DMCXC.cdsEmiDoc1.close;
   DMCXC.cdsEmiDoc1.ProviderName := 'prvEjecuta';
   DMCXC.cdsEmiDoc1.DataRequest(ssql);
   DMCXC.cdsEmiDoc1.Open;
   DMCXC.cdsEmiDoc1.First;

   If Application.MessageBox('Confirme Impresión de Documento',
      'Confirmación Impresión',
      MB_OKCANCEL + MB_DEFBUTTON1) = IDOK Then
   Begin
      xTipDoc := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOC_FREG,DOCTIPREG', 'DOCID=' + quotedstr(dblcTDoc.text) +
         ' AND DOCMOD=' + quotedstr('CXC'), 'DOC_FREG');
      xTipFReg := DMCXC.cdsQry.FieldByName('DOCTIPREG').AsString;

      If (xTipDoc = 'P') And (xTipFReg = 'F') Then
      Begin
         pnlTipoImp.visible := true;
         pnlPie.Enabled := False;
         rgImp.itemindex := -1;
      End;
      If (xTipDoc = 'P') And (xTipFReg = 'B') Then
      Begin
         pprpBoleta.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Boleta.Rtm';
         pprpBoleta.template.LoadFromFile;
         pplblBolDia.Text := DMCXC.cdsqry6.FieldByName('PPDIA').AsString;
         pplblBolMes.Text := DMCXC.cdsqry6.FieldByName('PPMES').AsString;
         pplblBolAno.Text := DMCXC.cdsqry6.FieldByName('PPANO').AsString;
         pplblBolTot.Text := DMCXC.cdsQry6.FieldByName('PPTOTAL').AsString;
         pplblBolMonto.text := DMCXC.cdsQry6.FieldByName('PPTOTAL').AsString;
         pplblBolLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsQry6.FieldByName('PPTOTAL').Asfloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text)); //xdesmon);
         pplblBolSEUO.Width := pplblBolLetras.Width;
         dbpFormatos.DataSource := DMCXC.dsEmidoc1;
         pprpBoleta.Print;
      End;
      If (xTipDoc = 'P') And (xTipFReg = 'NC') Then
      Begin
         DMCXC.cdsEmiDoc1.Insert;
         cdsclone := TwwClientDataSet.create(self);
         cdsClone.CloneCursor(DMCXC.cdsDetCxC, False);
         cdsClone.Filter := ' TIPDET = ''MN'' OR TIPDET = ''MG'' ';
         cdsClone.Filtered := True;
         If cdsClone.RecordCount <> 0 Then
         Begin
            cdsClone.First;
            DMCXC.cdsEmiDoc1.FieldByName('DDEDES').AsString := cdsClone.FieldByName('CCGLOSA').AsString;
            DMCXC.cdsEmiDoc1.FieldByName('DDEPT').AsCurrency :=
               OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOORI)', cdsClone.Filter);
         End
         Else
         Begin
            DMCXC.cdsEmiDoc1.FieldByName('DDEDES').AsString := '';
            DMCXC.cdsEmiDoc1.FieldByName('DDEPT').AsCurrency := 0;
         End;

         DMCXC.cdsEmiDoc1.Post;
         DMCXC.dsEmiDoc1.DataSet := DMCXC.cdsEmiDoc1;

         pprpNC.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Notacredito.Rtm';
         pprpNC.template.LoadFromFile;
         pplblNCRazon.Text := DMCXC.cdsqry6.FieldByName('PPRAZON').AsString;
         pplblNCRUC.Text := DMCXC.cdsqry6.FieldByName('PPRUC').AsString;
         pplblNCDIR.Text := DMCXC.cdsqry6.FieldByName('PPDIRECCION').AsString;
         pplblNCDIA1.Text := DMCXC.cdsqry6.FieldByName('PPDIA').AsString;
         pplblNCMES1.Text := DMCXC.cdsqry6.FieldByName('PPMES').AsString;
         pplblNCANO1.Text := DMCXC.cdsqry6.FieldByName('PPANO').AsString;
         pplblNCIGV.Text := FloatToStrF(DMCXC.cdsqry6.FieldByName('PPIGV').value, ffCurrency, 15, 2);
         pplblNCTotal.Text := FloatToStrF(DMCXC.cdsqry6.FieldByName('PPTOTAL').value, ffCurrency, 15, 2);
         pplblNCLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsQry6.FieldByName('PPTOTAL').Asfloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text)); //xdesmon);
         pplblNCSEUO.Width := pplblNCLetras.Width;
         dbpFormatos.DataSource := DMCXC.dsEmidoc1;
         pprpNC.Print;
      End;
      If (xTipDoc = 'P') And (xTipFReg = 'ND') Then
      Begin
         pprpND.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NotadebitoJCP.Rtm';
         pprpND.template.LoadFromFile;
         pplblNDRazon.Text := DMCXC.cdsqry6.FieldByName('PPRAZON').AsString;
         pplblNDRuc.Text := DMCXC.cdsqry6.FieldByName('PPRUC').AsString;
         pplblNDDir.Text := DMCXC.cdsqry6.FieldByName('PPDIRECCION').AsString;
         pplblNDDia1.Text := DMCXC.cdsqry6.FieldByName('PPDIA').AsString;
         pplblNDMes1.Text := DMCXC.cdsqry6.FieldByName('PPMES').AsString;
         pplblNDAno1.Text := DMCXC.cdsqry6.FieldByName('PPANO').AsString;
         pplblIgvDes1.text := xigv + '%';
         pplblNDSIM.text := Trim(edtTMon.text);
         pplblIgv.Text := FloatToStrF(DMCXC.cdsqry6.FieldByName('PPIGV').value, ffNumber, 15, 2);
         pplblNDSIM1.text := Trim(edtTMon.text);
         pplblTotal.Text := FloatToStrF(DMCXC.cdsqry6.FieldByName('PPTOTAL').value, ffNumber, 15, 2);
         pplblNDLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsQry6.FieldByName('PPTOTAL').AsFloat) + '   ' + DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text)); //xdesmon);
         pplblNDSEUO.Width := pplblNDLetras.Width;
         dbpFormatos.DataSource := DMCXC.dsEmidoc1;
         pprpND.Print;
      End;
   End;

End;

Procedure TFProvision.ppFooterBand2BeforeGenerate(Sender: TObject);
Begin
End;

{ para actualizar el monto ejecutado, monto variación y
  y variación en porcentaje en el PPRES301, se debe de recorrer el cds del
 grid para ver si hay MG,MN,NG }

// Inicio HPC_201602_CXC
// Retura Rutina que no se usa
(*
Procedure TFProvision.CalculoNivel;
Var
   xmonto, xhora, xfecha, xEjecuMN, xEjecuME, xmes, ssql: String;
   xcambio: real;
   iX: integer;
   xtotal: Array[1..48] Of Real;
   xtotG: Array[1..6] Of Real;
  { guarda los montos asignados del PPRES300}
   xasxmes: Array[1..24] Of Real;
  { guarda los montos modificados del PPRES300}
   xmoxmes: Array[1..24] Of Real;
  { xvpxmes[1] = (xtotal[1]/xasxmes[1]+xmoxmes[1])*100 para cada mes y MN,ME.
    xtotal[25] hasta xtotal[48] no se toma }
   xvpxmes: Array[1..24] Of Real;
   xestado: bool; // para controlar el error del infinito
   xIS: String;
Begin
   { crea los niveles superiores si no tuviera }
   CreaSuperior;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      { registros que tienen las pp}
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').Value = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').Value = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').Value = 'MN') Then
      Begin
         xmes := copy(dbeAnoMM.Text, 5, 2);
         ssql := '';
         ssql := 'Update PPRES301 Set ';
         If dblcTMon.Text = '01' Then
         Begin
            xCambio := StrToFloat(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString) / StrToFloat(dbeTCambio.text);
            xEjecuME := '(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0) + ' + FloatToStr(xcambio) + ')';
            xEjecuMN := '(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0) + ' + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString + ')';
            xmonto := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString;
         End
         Else
         Begin
            xCambio := StrToFloat(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString) * StrToFloat(dbeTCambio.text);
            xEjecuME := '(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0) + ' + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString + ')';
            xEjecuMN := '(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0) + ' + FloatToStr(xcambio) + ')';
            xmonto := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString;
         End;
         ssql := ssql + 'DPREEJMN' + xmes + '= DEC(' + xEjecuMN + ',15,2), ';
         ssql := ssql + 'DPREEJME' + xmes + '= DEC(' + xEjecuME + ',15,2), ';
         If dblcTMon.Text = '01' Then
         Begin
            ssql := ssql + 'DPREVMMN' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)+' + xmonto + '),15,2), ';
            ssql := ssql + 'DPREVMME' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)+' + FloatToStr(xcambio) + '),15,2), ';
            ssql := ssql + 'DPREVPMN' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)+' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPREVPME' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+' + DMCXC.wReplacCeros + '(DPRETOMOME,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)+' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJMN=DEC(' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)+' +
               xmonto + ',15,2),';
            ssql := ssql + 'DPRETOVMMN=DEC(' + DMCXC.wReplacCeros + '(DPREVMMN01,0)+' + DMCXC.wReplacCeros + '(DPREVMMN02,0)+' + DMCXC.wReplacCeros + '(DPREVMMN03,0)+' + DMCXC.wReplacCeros + '(DPREVMMN04,0)+' + DMCXC.wReplacCeros + '(DPREVMMN05,0)+' + DMCXC.wReplacCeros + '(DPREVMMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMMN07,0)+' + DMCXC.wReplacCeros + '(DPREVMMN08,0)+' + DMCXC.wReplacCeros + '(DPREVMMN09,0)+' + DMCXC.wReplacCeros + '(DPREVMMN10,0)+' + DMCXC.wReplacCeros + '(DPREVMMN11,0)+' + DMCXC.wReplacCeros + '(DPREVMMN12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)+' + xmonto + '),15,2),';

            ssql := ssql + 'DPRETOVPMN=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)+' +
               xmonto + ')/((' + DMCXC.wReplacCeros + '(DPRETOASMN,0) )+(' + DMCXC.wReplacCeros + '(DPRETOMOMN,0))))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJME=DEC(' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)+' +
               FloatToStr(xcambio) + ',15,2),';
            ssql := ssql + 'DPRETOVMME=DEC(' + DMCXC.wReplacCeros + '(DPREVMME01,0)+' + DMCXC.wReplacCeros + '(DPREVMME02,0)+' + DMCXC.wReplacCeros + '(DPREVMME03,0)+' + DMCXC.wReplacCeros + '(DPREVMME04,0)+' + DMCXC.wReplacCeros + '(DPREVMME05,0)+' + DMCXC.wReplacCeros + '(DPREVMME06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMME07,0)+' + DMCXC.wReplacCeros + '(DPREVMME08,0)+' + DMCXC.wReplacCeros + '(DPREVMME09,0)+' + DMCXC.wReplacCeros + '(DPREVMME10,0)+' + DMCXC.wReplacCeros + '(DPREVMME11,0)+' + DMCXC.wReplacCeros + '(DPREVMME12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)+' + FloatToStr(xcambio) + '),15,2),';
            ssql := ssql + 'DPRETOVPME=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+' + DMCXC.wReplacCeros + '(DPRETOMOME,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)+' +
               xmonto + ')/((' + DMCXC.wReplacCeros + '(DPRETOASME,0) )+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0))))*100,15,2)END),';
         End
         Else
         Begin
            ssql := ssql + 'DPREVMMN' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)+' + FloatToStr(xcambio) + '),15,2), ';
            ssql := ssql + 'DPREVMME' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)+' + xmonto + '),15,2), ';
            ssql := ssql + 'DPREVPMN' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0) = 0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)+' + FloatToSTr(xcambio) + ')/(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0)))*100,15,2)END), ';
            ssql := ssql + 'DPREVPME' + xmes + '= (CASE WHEN COALESCE(DPREASME' + xmes + ',0) + COALESCE(DPREMOME' + xmes + ',0) = 0 ' +
               ' THEN 200' +
               ' ELSE DEC(((COALESCE(DPREEJME' + xmes + ',0)+' + xmonto + ')/(COALESCE(DPREASME' + xmes + ',0) + COALESCE(DPREMOME' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJME=DEC(COALESCE(DPREEJME01,0)+COALESCE(DPREEJME02,0)+COALESCE(DPREEJME03,0)+COALESCE(DPREEJME04,0)+COALESCE(DPREEJME05,0)+COALESCE(DPREEJME06,0)+' +
               'COALESCE(DPREEJME07,0)+COALESCE(DPREEJME08,0)+COALESCE(DPREEJME09,0)+COALESCE(DPREEJME10,0)+COALESCE(DPREEJME11,0)+COALESCE(DPREEJME12,0)+' +
               xmonto + ',15,2),';
            ssql := ssql + 'DPRETOVMME=DEC(COALESCE(DPREVMME01,0)+COALESCE(DPREVMME02,0)+COALESCE(DPREVMME03,0)+COALESCE(DPREVMME04,0)+COALESCE(DPREVMME05,0)+COALESCE(DPREVMME06,0)+' +
               'COALESCE(DPREVMME07,0)+COALESCE(DPREVMME08,0)+COALESCE(DPREVMME09,0)+COALESCE(DPREVMME10,0)+COALESCE(DPREVMME11,0)+COALESCE(DPREVMME12,0)+' +
               '(COALESCE(DPREASME' + xmes + ',0) + COALESCE(DPREMOME' + xmes + ',0))-(COALESCE(DPREEJME' + xmes + ',0)+' + xmonto + '),15,2),';
            ssql := ssql + 'DPRETOVPME=(CASE WHEN COALESCE(DPRETOASME,0)+COALESCE(DPRETOMOME,0) = 0 ' +
               ' THEN 200 ' +
               ' ELSE DEC(((COALESCE(DPREEJME01,0)+COALESCE(DPREEJME02,0)+COALESCE(DPREEJME03,0)+COALESCE(DPREEJME04,0)+COALESCE(DPREEJME05,0)+COALESCE(DPREEJME06,0)+' +
               'COALESCE(DPREEJME07,0)+COALESCE(DPREEJME08,0)+COALESCE(DPREEJME09,0)+COALESCE(DPREEJME10,0)+COALESCE(DPREEJME11,0)+COALESCE(DPREEJME12,0)+' +
               xmonto + ')/((COALESCE(DPRETOASME,0))+(COALESCE(DPRETOMOME,0))))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJMN=DEC(COALESCE(DPREEJMN01,0)+COALESCE(DPREEJMN02,0)+COALESCE(DPREEJMN03,0)+COALESCE(DPREEJMN04,0)+COALESCE(DPREEJMN05,0)+COALESCE(DPREEJMN06,0)+' +
               'COALESCE(DPREEJMN07,0)+COALESCE(DPREEJMN08,0)+COALESCE(DPREEJMN09,0)+COALESCE(DPREEJMN10,0)+COALESCE(DPREEJMN11,0)+COALESCE(DPREEJMN12,0)+' +
               FloatToStr(xcambio) + ',15,2),';
            ssql := ssql + 'DPRETOVMMN=DEC(COALESCE(DPREVMMN01,0)+COALESCE(DPREVMMN02,0)+COALESCE(DPREVMMN03,0)+COALESCE(DPREVMMN04,0)+COALESCE(DPREVMMN05,0)+COALESCE(DPREVMMN06,0)+' +
               'COALESCE(DPREVMMN07,0)+COALESCE(DPREVMMN08,0)+COALESCE(DPREVMMN09,0)+COALESCE(DPREVMMN10,0)+COALESCE(DPREVMMN11,0)+COALESCE(DPREVMMN12,0)+' +
               '(COALESCE(DPREASMN' + xmes + ',0) + COALESCE(DPREMOMN' + xmes + ',0))-(COALESCE(DPREEJMN' + xmes + ',0)+' + FloatToStr(xcambio) + '),15,2),';

            ssql := ssql + 'DPRETOVPMN=(CASE WHEN COALESCE(DPRETOASMN,0)+COALESCE(DPRETOMOMN,0) = 0' +
               ' THEN 200 ' +
               ' ELSE DEC(((COALESCE(DPREEJMN01,0)+COALESCE(DPREEJMN02,0)+COALESCE(DPREEJMN03,0)+COALESCE(DPREEJMN04,0)+COALESCE(DPREEJMN05,0)+COALESCE(DPREEJMN06,0)+' +
               ' COALESCE(DPREEJMN07,0)+COALESCE(DPREEJMN08,0)+COALESCE(DPREEJMN09,0)+COALESCE(DPREEJMN10,0)+COALESCE(DPREEJMN11,0)+COALESCE(DPREEJMN12,0)+' +
               FloatToStr(xcambio) + ')/(COALESCE(DPRETOASMN,0)+COALESCE(DPRETOMOMN,0)))*100,15,2)END),';
         End;
         ssql := ssql + 'RQPARTUSER=' + quotedstr(DMCXC.wUsuario);
         xFecha := formatdatetime(DMCXC.wFormatFecha, DMCXC.DateS);
         ssql := ssql + ',RQPARTFREG =' + quotedstr(xfecha);
         xhora := formatdatetime('hh:mm:ss', DMCXC.timeS);
         ssql := ssql + ',RQPARTHREG =' + quotedstr(xhora) +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND TIPPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString) +
            ' AND PARPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) +
            ' AND RQPARTANO=' + quotedstr(copy(dbeAnoMM.Text, 1, 4));
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            Raise exception.Create('No se pudo actualizar Presupuesto');
         End;
           // se inicia la actualización de la cabecera
           { inicializo en cero el arreglo }
         For iX := 1 To 48 Do
            xTotal[iX] := 0;
         For iX := 1 To 6 Do
            xTotg[iX] := 0;
         For iX := 1 To 24 Do
            xasxmes[iX] := 0;
         For iX := 1 To 24 Do
            xmoxmes[iX] := 0;
         For iX := 1 To 24 Do
            xvpxmes[iX] := 0;
           { para cargar los AS y MO de cada mes }
         ssql := '';
         ssql := 'SELECT * FROM PPRES300' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(copy(dbeAnoMM.Text, 1, 4));
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.ProviderName := 'dspClasif';
         DMCXC.cdsQry2.DataRequest(ssql);
         DMCXC.cdsQry2.open;
         DMCXC.cdsQry2.First;
         While Not DMCXC.cdsQry2.Eof Do
         Begin
            For iX := 1 To 12 Do
            Begin
               xmes := StrZero(IntToStr(iX), 2);
               xasxmes[iX] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREASMN' + XMES).AsString);
               xasxmes[iX + 12] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREASME' + XMES).AsString);
               xmoxmes[iX] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREMOMN' + XMES).AsString);
               xmoxmes[iX + 12] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREMOME' + XMES).AsString);
            End;
            DMCXC.cdsQry2.Next;
         End;

         ssql := '';
         ssql := 'SELECT * FROM PPRES301' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(copy(dbeAnoMM.Text, 1, 4));
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.ProviderName := 'dspClasif';
         DMCXC.cdsQry2.DataRequest(ssql);
         DMCXC.cdsQry2.open;
         DMCXC.cdsQry2.First;
         While Not DMCXC.cdsQry2.Eof Do
         Begin
            ssql := '';
            ssql := 'PARPRESID=' + quotedstr(DMCXC.cdsQry2.FieldByName('PARPRESID').AsString);
            xIS := DMCXC.BuscaQry('dspParPres', 'PPRES201', '*', ssql, 'PARPRES_IS');
            For iX := 1 To 24 Do
               Case iX Of
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
                     Begin
                        xmes := StrZero(IntToStr(iX), 2);
                        If xIS = 'S' Then
                           xTotal[iX] := xTotal[iX] + StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJMN' + XMES).AsString)
                        Else
                           xTotal[iX] := xTotal[iX] - StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJMN' + XMES).AsString)
                     End;
                  13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24:
                     Begin
                        xmes := StrZero(IntToStr(iX - 12), 2);
                        If xIS = 'S' Then
                           xTotal[iX] := xTotal[iX] + StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJME' + XMES).AsString)
                        Else
                           xTotal[iX] := xTotal[iX] - StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJME' + XMES).AsString)
                     End;
               End;
            DMCXC.cdsQry2.next;
         End;
           // para controlar el error del INFINITO
         xestado := false;
         For ix := 1 To 12 Do
            If (xasxmes[ix] <> 0) Or (xmoxmes[ix] <> 0) Then
            Begin
               xestado := true;
               Break;
            End;
           { hallo el total por mes de VP }
         For ix := 1 To 12 Do
         Begin
             // se agrega 17/10/2000 pjsv - para que solo calcule el mes
             // del periodo, si se quita el if calcula todos los meses
            If StrZero(IntToStr(iX), 2) = copy(dbeAnoMM.text, 5, 2) Then
            Begin
                { para DPREVMMN01..12 }
               xTotal[iX + 24] := (xasxmes[iX] + xmoxmes[iX]) - xTotal[iX];
                { para DPREVMME01..12 }
               xTotal[iX + 36] := (xasxmes[iX + 12] + xmoxmes[iX + 12]) - xTotal[iX + 12];
                // se agrego el 23/10/200 pjsv
               If xestado = False Then
               Begin
                   // los igualo a cero
                  xvpxmes[iX] := 0;
                   { para VPME }
                  xvpxmes[iX + 12] := 0;
               End
               Else
               Begin
                  { para VPMN }
                  xvpxmes[iX] := (xtotal[ix] / (xasxmes[iX] + xmoxmes[iX])) * 100;
                  { para VPME }
                  xvpxmes[iX + 12] := (xtotal[ix + 12] / (xasxmes[iX + 12] + xmoxmes[iX + 12])) * 100;
               End;
            End;
         End;
         ssql := '';
         ssql := 'Update PPRES300 Set ';
         For iX := 1 To 12 Do
         Begin
            xmes := StrZero(IntToStr(iX), 2);
             { carga para cada mes y campo el valor hallado en las lineas de
               arriba }
            ssql := ssql + ' DPREEJMN' + xmes + '=DEC(' + FloatToStr(xtotal[iX]) + ',15,2),';
            ssql := ssql + ' DPREEJME' + xmes + '=DEC(' + FloatToStr(xtotal[iX + 12]) + ',15,2),';
            ssql := ssql + ' DPREVMMN' + xmes + '=DEC(' + FloatToStr(xtotal[iX + 24]) + ',15,2),';
            ssql := ssql + ' DPREVMME' + xmes + '=DEC(' + FloatToStr(xtotal[iX + 36]) + ',15,2),';
            ssql := ssql + ' DPREVPMN' + xmes + '=DEC(' + FloatToStr(xvpxmes[iX]) + ',15,2),';
            ssql := ssql + ' DPREVPME' + xmes + '=DEC(' + FloatToStr(xvpxmes[iX + 12]) + ',15,2),';
         End;
           { SUMATORIA DE LOS EJMN, LOS DOCE MESES }
         For iX := 1 To 12 Do
            xtotG[1] := xtotG[1] + xtotal[iX];
           { SUMATORIA DE LOS EJME, LOS DOCE MESES }
         For iX := 13 To 24 Do
            xtotG[2] := xtotG[2] + xtotal[iX];
           { SUMATORIA DE LOS MOMN, LOS DOCE MESES }
         For iX := 25 To 36 Do
            xtotG[3] := xtotG[3] + xtotal[iX];
           { SUMATORIA DE LOS MOME, LOS DOCE MESES }
         For iX := 37 To 48 Do
            xtotG[4] := xtotG[4] + xtotal[iX];
           {  calculo del total VPMN si es <> de 0 al menos uno, para que no me de
              el error de INFINITO }
         If xestado = False Then
         Begin
             // los igualo a cero
            xtotG[5] := 0;
            xtotG[6] := 0;
         End
         Else
         Begin
             // calculo del Total VMMN
            xtotG[5] := (xtotG[1] / ((xasxmes[1] + xasxmes[2] + xasxmes[3] + xasxmes[4] + xasxmes[5] + xasxmes[6] +
               xasxmes[7] + xasxmes[8] + xasxmes[9] + xasxmes[10] + xasxmes[11] + xasxmes[12]) +
               (xmoxmes[1] + xmoxmes[2] + xmoxmes[3] + xmoxmes[4] + xmoxmes[5] + xmoxmes[6] +
               xmoxmes[7] + xmoxmes[8] + xmoxmes[9] + xmoxmes[10] + xmoxmes[11] + xmoxmes[12]))) * 100;
             { calculo del total VPME }
            xtotG[6] := (xtotG[2] / ((xasxmes[13] + xasxmes[14] + xasxmes[15] + xasxmes[16] + xasxmes[17] + xasxmes[18] +
               xasxmes[19] + xasxmes[20] + xasxmes[21] + xasxmes[22] + xasxmes[23] + xasxmes[24]) +
               (xmoxmes[13] + xmoxmes[14] + xmoxmes[15] + xmoxmes[16] + xmoxmes[17] + xmoxmes[18] +
               xmoxmes[19] + xmoxmes[20] + xmoxmes[21] + xmoxmes[22] + xmoxmes[23] + xmoxmes[24]))) * 100;
         End;
           { asigno los totales para EJ,VM y VP en MN y ME }
         ssql := ssql + ' DPRETOEJMN=DEC(' + FloatToStr(xtotg[1]) + ',15,2),';
         ssql := ssql + ' DPRETOEJME=DEC(' + FloatToStr(xtotg[2]) + ',15,2),';
         ssql := ssql + ' DPRETOVMMN=DEC(' + FloatToStr(xtotg[3]) + ',15,2),';
         ssql := ssql + ' DPRETOVMME=DEC(' + FloatToStr(xtotg[4]) + ',15,2),';
         ssql := ssql + ' DPRETOVPMN=DEC(' + FloatToStr(xtotg[5]) + ',15,2),';
         ssql := ssql + ' DPRETOVPME=DEC(' + FloatToStr(xtotg[6]) + ',15,2),';
           { otros campos a actualizar }
         ssql := ssql + 'RQPARTUSER=' + quotedstr(DMCXC.wUsuario);
         xFecha := formatdatetime(DMCXC.wFormatFecha, DMCXC.DateS);
         ssql := ssql + ',RQPARTFREG =' + quotedstr(xfecha);
         xhora := formatdatetime('hh:mm:ss', DMCXC.timeS);
         ssql := ssql + ',RQPARTHREG =' + quotedstr(xhora) +
           { condicional }
         ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(copy(dbeAnoMM.Text, 1, 4));
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            Raise exception.Create('No se pudo actualizar Presupuesto');
         End;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
   { ahora para los niveles speriores }
   CalculoNivelSupe;
End;
*)
// Fin HPC_201602_CXC

// Inicio HPC_201602_CXC
// Retura Rutina que no se usa
(*
Procedure TFProvision.CreaSuperior;
Var
   xppcomun, ssql, xcc: String;
   xmaxdigitosup, xmaxnivelsup, xmaxnivelinf: String;
   xpp, xmaxdigitoint, xmaxnivelint, xmaxdigitoinf: String;
   xcontador: Integer;
   xcia, xccosid, xtippresid, xano: String;
Begin
   { tabla de niveles}
   ssql := '';
   ssql := 'SELECT * FROM PPRES103 ORDER BY PARPRESNIV';
   DMCXC.cdsNivelPresu.close;
   DMCXC.cdsNivelPresu.DataRequest(ssql);
   DMCXC.cdsNivelPresu.Open;
   { se recorre el client del detalle, por lo que en este se encuentran
     las P.P. a actualizar}
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN') Then
      Begin
         If xcc <> DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString Then
         Begin
          { tabla de detalle del presupuesto }
            ssql := '';
            ssql := 'SELECT * FROM PPRES301' +
               ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
               ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
               ' AND RQPARTANO=' + quotedstr(copy(dbeAnoMM.Text, 1, 4));
            DMCXC.cdsDetallePres.Close;
            DMCXC.cdsDetallePres.DataRequest(ssql);
            DMCXC.cdsDetallePres.open;
            xcc := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
         End;
         ssql := '';
         ssql := 'SELECT * FROM PPRES201';
         DMCXC.cdsParPres.Close;
         DMCXC.cdsParPres.DataRequest(ssql);
         DMCXC.cdsParPres.open;
          { se toma 01 por defecto para el nivel máximo superior }
         xmaxnivelsup := '01';
         DMCXC.cdsNivelPresu.First;
          { se jala el máximo digito superior }
         xmaxdigitosup := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { se carga a partir de la P.P. digitada el digito en común
            ejmp. si se digito 10101 --> el digito comuún es 1
                  si se digito 20501 --> el digito común es 2  }
         xppcomun := copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitosup));
         DMCXC.cdsNivelPresu.Last;
          { jalo el máximo nivel inferior de la tabla de niveles }
         xmaxnivelinf := DMCXC.cdsNivelPresu.FieldByName('PARPRESNIV').AsString;
          { se jala el máximo digito inferior }
         xmaxdigitoinf := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { este proceso se repite hasta que la variable xmaxnivelint se iguale
            a la xmaxnivelsup. Esto me permite generar los niveles superiores
            que cuyo primer digito sea igual a la variable xppcomun }
         xcontador := 0;
         Repeat
           { ejemp. si el xmaxnivelinf = 03 ==>  xmaxnivelint = 02. }
            xmaxnivelint := StrZero(IntToStr(StrToInt(xmaxnivelinf) - xcontador), 2);
            xcontador := 1;
            ssql := '';
            ssql := 'PARPRESNIV=' + quotedstr(xmaxnivelint);
            xcia := Trim(dblcCia.Text);
            xccosid := Trim(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString);
            xtippresid := Trim(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString);
            xano := Trim(copy(dbeAnoMM.text, 1, 4));
            xmaxdigitoint := DMCXC.BuscaQry('dspNivelPresu', 'PPRES103', '*', ssql, 'DIGITOS');
            xpp := Trim(copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitoint)));
            If DMCXC.cdsParPres.Locate('PARPRESID', VarArrayOf([xpp]), [loCaseInsensitive]) Then
               If Not DMCXC.cdsDetallePres.Locate('CIAID;CCOSID;TIPPRESID;PARPRESID;RQPARTANO', VarArrayOf([xcia, xccosid, xtippresid, xpp, xano]), [loCaseInsensitive]) Then
                  DMCXC.cdsDetallePres.insert;
            If DMCXC.cdsDetallePres.State = dsInsert Then
            Begin
               DMCXC.cdsDetallePres.FieldByName('CIAID').AsString := dblcCia.Text;
               DMCXC.cdsDetallePres.FieldByName('CCOSID').AsString := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
               DMCXC.cdsDetallePres.FieldByName('TIPPRESID').AsString := DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString;
               DMCXC.cdsDetallePres.FieldByName('RQPARTANO').AsString := Copy(FProvision.dbeAnoMM.Text, 1, 4);
               DMCXC.cdsDetallePres.FieldByName('PARPRESID').AsString := DMCXC.cdsParPres.FieldByName('PARPRESID').AsString;
               DMCXC.cdsDetallePres.FieldByName('PARPREDES').AsString := DMCXC.cdsParPres.FieldByName('PARPRESDES').AsString;
               DMCXC.cdsDetallePres.FieldByName('TMONID').AsString := dblcTMon.Text;
               DMCXC.cdsDetallePres.FieldByName('RQPARTUSER').AsString := DMCXC.wusuario;
               DMCXC.cdsDetallePres.FieldByName('RQPARTFREG').AsDateTime := DMCXC.DateS;
               DMCXC.cdsDetallePres.FieldByName('RQPARTHREG').AsDateTime := DMCXC.TimeS;
               DMCXC.cdsDetallePres.FieldByName('RQPARTIS').AsString := DMCXC.cdsParPres.FieldByName('PARPRES_IS').AsString;
               DMCXC.cdsDetallePres.FieldByName('PARPRESNIV').AsString := DMCXC.cdsParPres.FieldByName('PARPRESNIV').AsString;
               // inicializo en cero todos los montos
               inicializoCero(DMCXC.cdsDetallePres);
               DMCXC.cdsDetallePres.Post;
               DMCXC.cdsDetallePres.ApplyUpdates(0);
            End;
            xmaxnivelinf := xmaxnivelint;
         Until xmaxnivelsup = xmaxnivelint;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
End;
*)
// Fin HPC_201602_CXC

// Inicio HPC_201602_CXC
// Retura Rutina que no se usa
(*
Procedure TFProvision.inicializoCero;
Var
   iX: integer;
   xmes: String;
Begin
    { inicializo los demás campos en cero }
   For iX := 1 To 12 Do
   Begin
      xmes := StrZero(IntToStr(iX), 2);
      xcds.FieldByName('DPRERQMN' + XMES).AsString := '0';
      xcds.FieldByName('DPRERQME' + XMES).AsString := '0';
      xcds.FieldByName('DPRERMMN' + XMES).AsString := '0';
      xcds.FieldByName('DPRERMME' + XMES).AsString := '0';
      xcds.FieldByName('DPREASMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREASME' + XMES).AsString := '0';
      xcds.FieldByName('DPREMOMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREMOME' + XMES).AsString := '0';
      xcds.FieldByName('DPREEJMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREEJME' + XMES).AsString := '0';
      xcds.FieldByName('DPREVMMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREVMME' + XMES).AsString := '0';
      xcds.FieldByName('DPREVPMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREVPME' + XMES).AsString := '0';
   End;
   xcds.FieldByName('DPRETORQMN').AsString := '0';
   xcds.FieldByName('DPRETORQME').AsString := '0';
   xcds.FieldByName('DPRETORMMN').AsString := '0';
   xcds.FieldByName('DPRETORMME').AsString := '0';
   xcds.FieldByName('DPRETOASMN').AsString := '0';
   xcds.FieldByName('DPRETOASME').AsString := '0';
   xcds.FieldByName('DPRETOMOMN').AsString := '0';
   xcds.FieldByName('DPRETOMOME').AsString := '0';
   xcds.FieldByName('DPRETOEJMN').AsString := '0';
   xcds.FieldByName('DPRETOEJME').AsString := '0';
   xcds.FieldByName('DPRETOVMMN').AsString := '0';
   xcds.FieldByName('DPRETOVMME').AsString := '0';
   xcds.FieldByName('DPRETOVPMN').AsString := '0';
   xcds.FieldByName('DPRETOVPME').AsString := '0';
End;
*)
// Fin HPC_201602_CXC

// Inicio HPC_201602_CXC
// Retura Rutina que no se usa
(*
Procedure TFProvision.CalculoNivelSupe;
Var
   xppcomun, xmaxdigitosup, xmaxnivelsup, xmaxnivelinf, ssql: String;
   xcc, xmes, xmaxdigitoint, xmaxnivelint, xmaxdigitoinf: String;
   ix: integer;
   xestado, xestado1: bool;
  { para los EJMN y EJME del mes 01 al mes 12 }
   xmontos: Array[1..24] Of Real;
  { para los ASMN y ASME del mes 01 al mes 12 }
   xmontosas: Array[1..24] Of Real;
  { para los MOMN y MOME del mes 01 al mes 12 }
   xmontosmo: Array[1..24] Of Real;
   xtotvmmn, xtotvmme, xtotejmn, xtotejme: real;
Begin
   xestado := False;
   xestado1 := False;
   { tabla de niveles, se ordena por el nivel }
   ssql := '';
   ssql := 'SELECT * FROM PPRES103 ORDER BY PARPRESNIV';
   DMCXC.cdsNivelPresu.close;
   DMCXC.cdsNivelPresu.DataRequest(ssql);
   DMCXC.cdsNivelPresu.open;
   DMCXC.cdsNivelPresu.First;
   { se inicializa en cero }
   xtotvmmn := 0;
   xtotvmme := 0;
   { se recorre el client del detalle, por lo que en este se encuentran
     las P.P. a actualizar}
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN') Then
      Begin
        { solo si se cambia de centro de costo }
         If xcc <> DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString Then
         Begin
          { tabla de detalle del presupuesto }
            ssql := '';
            ssql := 'SELECT * FROM PPRES301' +
               ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
               ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
               ' AND RQPARTANO=' + quotedstr(copy(dbeAnoMM.Text, 1, 4));
            DMCXC.cdsDetallePres.Close;
            DMCXC.cdsDetallePres.DataRequest(ssql);
            DMCXC.cdsDetallePres.open;
          { se carga la variable }
            xcc := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
         End;
         If xppcomun <> copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, 1) Then
         Begin
          //////////// poceso para genera los niveles superiores ////////////
            ssql := '';
            ssql := 'SELECT * FROM PPRES201';
            DMCXC.cdsParPres.Close;
            DMCXC.cdsParPres.DataRequest(ssql);
            DMCXC.cdsParPres.open;
          { se toma 01 por defecto para el nivel máximo superior }
            xmaxnivelsup := '01';
            DMCXC.cdsNivelPresu.First;
          { se jala el máximo digito superior }
            xmaxdigitosup := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { se carga a partir de la P.P. digitada el digito en común
            ejmp. si se digito 10101 --> el digito comuún es 1
                  si se digito 20501 --> el digito común es 2  }
            xppcomun := copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitosup));
            DMCXC.cdsNivelPresu.Last;
          { jalo el máximo nivel inferior de la tabla de niveles }
            xmaxnivelinf := DMCXC.cdsNivelPresu.FieldByName('PARPRESNIV').AsString;
          { se jala el máximo digito inferior }
            xmaxdigitoinf := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { se filtra la tabla por CIA, TIPPRESID RQPARTANO y PARPRESID cuyo digito
            sustraido se igual al xppcomun }
            ssql := '';
            ssql := 'SELECT PARPRESID,PARPREDES,RQPARTIS,TMONID,' +
               'DPREEJMN01,DPREEJMN02,DPREEJMN03,DPREEJMN04,DPREEJMN05,DPREEJMN06,' +
               'DPREEJMN07,DPREEJMN08,DPREEJMN09,DPREEJMN10,DPREEJMN11,DPREEJMN12,' +
               'DPREEJME01,DPREEJME02,DPREEJME03,DPREEJME04,DPREEJME05,DPREEJME06,' +
               'DPREEJME07,DPREEJME08,DPREEJME09,DPREEJME10,DPREEJME11,DPREEJME12,' +

            'DPREVMMN01,DPREVMMN02,DPREVMMN03,DPREVMMN04,DPREVMMN05,DPREVMMN06,' +
               'DPREVMMN07,DPREVMMN08,DPREVMMN09,DPREVMMN10,DPREVMMN11,DPREVMMN12,' +
               'DPREVMME01,DPREVMME02,DPREVMME03,DPREVMME04,DPREVMME05,DPREVMME06,' +
               'DPREVMME07,DPREVMME08,DPREVMME09,DPREVMME10,DPREVMME11,DPREVMME12,' +

            'DPREVPMN01,DPREVPMN02,DPREVPMN03,DPREVPMN04,DPREVPMN05,DPREVPMN06,' +
               'DPREVPMN07,DPREVPMN08,DPREVPMN09,DPREVPMN10,DPREVPMN11,DPREVPMN12,' +
               'DPREVPME01,DPREVPME02,DPREVPME03,DPREVPME04,DPREVPME05,DPREVPME06,' +
               'DPREVPME07,DPREVPME08,DPREVPME09,DPREVPME10,DPREVPME11,DPREVPME12,' +

            'DPREASMN01,DPREASMN02,DPREASMN03,DPREASMN04,DPREASMN05,DPREASMN06,' +
               'DPREASMN07,DPREASMN08,DPREASMN09,DPREASMN10,DPREASMN11,DPREASMN12,' +
               'DPREASME01,DPREASME02,DPREASME03,DPREASME04,DPREASME05,DPREASME06,' +
               'DPREASME07,DPREASME08,DPREASME09,DPREASME10,DPREASME11,DPREASME12,' +

            'DPREMOMN01,DPREMOMN02,DPREMOMN03,DPREMOMN04,DPREMOMN05,DPREMOMN06,' +
               'DPREMOMN07,DPREMOMN08,DPREMOMN09,DPREMOMN10,DPREMOMN11,DPREMOMN12,' +
               'DPREMOME01,DPREMOME02,DPREMOME03,DPREMOME04,DPREMOME05,DPREMOME06,' +
               'DPREMOME07,DPREMOME08,DPREMOME09,DPREMOME10,DPREMOME11,DPREMOME12' +

            ' FROM PPRES301 WHERE CIAID=' + quotedstr(dblcCia.Text) +
               ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
               ' AND TIPPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString) +
               ' AND SUBSTR(PARPRESID,1,' + xmaxdigitosup + ')=' + quotedstr(xppcomun) +
               ' AND RQPARTANO=' + quotedstr(Copy(FProvision.dbeAnoMM.Text, 1, 4));
            DMCXC.cdsSQL.Close;
            DMCXC.cdsSQL.DataRequest(ssql);
            DMCXC.cdsSQL.Open;
            DMCXC.cdsSQL.first;
          { este proceso se repite hasta que la variable xmaxnivelint se iguale
            a la xmaxnivelsup. Esto me permite generar los niveles superiores
            que cuyo primer digito sea igual a la variable xppcomun }
            Repeat
            { ejemp. si el xmaxnivelinf = 03 ==>  xmaxnivelint = 02. }
               xmaxnivelint := StrZero(IntToStr(StrToInt(xmaxnivelinf) - 1), 2);
               ssql := '';
               ssql := 'PARPRESNIV=' + quotedstr(xmaxnivelint);
               xmaxdigitoint := DMCXC.BuscaQry('dspNivelPresu', 'PPRES103', '*', ssql, 'DIGITOS');
            { filtra la tabla de P.P.P. por todas aquellas cuyo digito sean igual al del
              xmaxdigitoint }
               ssql := '';
               ssql := 'SELECT * FROM PPRES201 WHERE LENGTH(PARPRESID)=' + xmaxdigitoint +
                  ' ORDER BY PARPRESID';
               DMCXC.cdsParPres.Close;
               DMCXC.cdsParPres.DataRequest(ssql);
               DMCXC.cdsParPres.Open;
           { se recorre la tabla }
               While Not DMCXC.cdsParPres.Eof Do
               Begin
                  DMCXC.cdsSQL.First;
               { se blanquea }
                  For iX := 1 To 24 Do
                  Begin
                     xmontos[iX] := 0;
                     xmontosas[iX] := 0;
                     xmontosmo[iX] := 0;
                  End;
                { se recorre el clon del detalle }
                  While Not DMCXC.cdsSQL.Eof Do
                  Begin
                  { si el # de digitos es = al # maximo de digitos inferior }
                     If length(DMCXC.cdsSQL.FieldByName('PARPRESID').AsString) = StrToInt(xmaxdigitoinf) Then
                   { si la sustracción es = al nivel de la P.P..}
                        If copy(DMCXC.cdsSQL.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitoint)) =
                           DMCXC.cdsParPres.FieldByName('PARPRESID').AsString Then
                           For iX := 1 To 12 Do
                           Begin
                      // se halla los montos para las 2 monesa y los 12 meses
                     {se agrego esta linea 17/10/2000 para que sólo actualice el mes del periodo
                      y ya no los 12 meses }
//                     if StrZero(IntToStr(iX),2) = copy(dbeAnoMM.text,5,2) then
//                       begin
                              xmes := StrZero(IntToStr(iX), 2);
                              xmontos[iX] := xmontos[iX] + DMCXC.cdsSQL.FieldByName('DPREEJMN' + XMES).value;
                              xmontos[iX + 12] := xmontos[iX + 12] + DMCXC.cdsSQL.FieldByName('DPREEJME' + XMES).value;
                              xmontosas[iX] := xmontosas[iX] + DMCXC.cdsSQL.FieldByName('DPREASMN' + XMES).value;
                              xmontosas[iX + 12] := xmontosas[iX + 12] + DMCXC.cdsSQL.FieldByName('DPREASME' + XMES).value;
                              xmontosmo[iX] := xmontosmo[iX] + DMCXC.cdsSQL.FieldByName('DPREMOMN' + XMES).value;
                              xmontosmo[iX + 12] := xmontosmo[iX + 12] + DMCXC.cdsSQL.FieldByName('DPREMOME' + XMES).value;
//                       end;
                           End;
                     DMCXC.cdsSQL.next;
                  End;
                 { si hubiera montos }
                  For iX := 1 To 12 Do
                     If xmontos[iX] <> 0 Then
                     Begin
                        xestado := true;
                        break;
                     End;
                 { si es true, me indica que al menos hay una cantidad a actualizar }
                  If xestado = true Then
                  Begin
                     xtotejmn := 0;
                     xtotejme := 0;
                   { para posicionarme sobre el nivel en el clon }
                     If DMCXC.cdsSQL.Locate('PARPRESID', DMCXC.cdsParPres.FieldByName('PARPRESID').AsString, [loCaseInsensitive]) Then
                        DMCXC.cdsSQL.Edit;
                   { para posicionarme sobre el nivel en el detalle }
                     If DMCXC.cdsDetallePres.Locate('PARPRESID', DMCXC.cdsParPres.FieldByName('PARPRESID').AsString, [loCaseInsensitive]) Then
                        DMCXC.cdsDetallePres.Edit;
                     For iX := 1 To 12 Do
                     Begin
                        xmes := StrZero(IntToStr(iX), 2);
                      { para el cdsSQL }
                        If xmes = Copy(FProvision.dbeAnoMM.Text, 5, 2) Then
                        Begin
                           DMCXC.cdsSQL.FieldByName('DPREEJMN' + XMES).AsString := FloatToStr(xmontos[iX]);
                           DMCXC.cdsSQL.FieldByName('DPREEJME' + XMES).AsString := FloatToStr(xmontos[iX + 12]);
                        { para el detalle }
                           DMCXC.cdsDetallePres.FieldByName('DPREEJMN' + XMES).AsString := FloatToStr(xmontos[iX]);
                           DMCXC.cdsDetallePres.FieldByName('DPREEJME' + XMES).AsString := FloatToStr(xmontos[iX + 12]);
                           If xmontos[iX] > 0 Then
                           Begin
                              DMCXC.cdsDetallePres.FieldByName('DPREVMMN' + XMES).AsString := FloatToStr((xmontosas[iX] + xmontosmo[iX]) - xmontos[iX]);
                              DMCXC.cdsDetallePres.FieldByName('DPREVMME' + XMES).AsString := FloatToStr((xmontosas[iX + 12] + xmontosmo[iX + 12]) - xmontos[iX + 12]);
                           End;
                           If xmontos[iX] <> 0 Then
                              If (xmontosas[iX] <> 0) Or (xmontosmo[iX] <> 0) Then
                                 DMCXC.cdsDetallePres.FieldByName('DPREVPMN' + XMES).AsString :=
                                    FloatToStr((xmontos[iX] / (xmontosas[iX] + xmontosmo[iX])) * 100)
                              Else
                                 DMCXC.cdsDetallePres.FieldByName('DPREVPMN' + XMES).value := 200;
                           If xmontos[iX + 12] <> 0 Then
                              If (xmontosas[iX + 12] <> 0) Or (xmontosmo[iX + 12] <> 0) Then
                                 DMCXC.cdsDetallePres.FieldByName('DPREVPME' + XMES).AsString :=
                                    FloatToStr((xmontos[iX + 12] / (xmontosas[iX + 12] + xmontosmo[iX + 12])) * 100)
                              Else
                                 DMCXC.cdsDetallePres.FieldByName('DPREVPME' + XMES).value := 200;
//                         xtotvmmn := xtotvmmn + StrToFloat(DMCXC.cdsDetallePres.FieldByName('DPREVMMN'+XMES).AsString);
//                         xtotvmme := xtotvmme + StrToFloat(DMCXC.cdsDetallePres.FieldByName('DPREVMME'+XMES).AsString);
                        End;
                     End;
                   //** 03/11/2000. para el total de variación
                     xtotvmmn := (xmontosas[1] + xmontosas[2] + xmontosas[3] + xmontosas[4] + xmontosas[5] + xmontosas[6] +
                        xmontosas[7] + xmontosas[8] + xmontosas[9] + xmontosas[10] + xmontosas[11] + xmontosas[12] +
                        xmontosmo[1] + xmontosmo[2] + xmontosmo[3] + xmontosmo[4] + xmontosmo[5] + xmontosmo[6] +
                        xmontosmo[7] + xmontosmo[8] + xmontosmo[9] + xmontosmo[10] + xmontosmo[11] + xmontosmo[12]) -
                        (xmontos[1] + xmontos[2] + xmontos[3] + xmontos[4] + xmontos[5] + xmontos[6] +
                        xmontos[7] + xmontos[8] + xmontos[9] + xmontos[10] + xmontos[11] + xmontos[12]);
                     xtotvmme := (xmontosas[13] + xmontosas[14] + xmontosas[15] + xmontosas[16] + xmontosas[17] + xmontosas[18] +
                        xmontosas[19] + xmontosas[20] + xmontosas[21] + xmontosas[22] + xmontosas[23] + xmontosas[24] +
                        xmontosmo[13] + xmontosmo[14] + xmontosmo[15] + xmontosmo[16] + xmontosmo[17] + xmontosmo[18] +
                        xmontosmo[19] + xmontosmo[20] + xmontosmo[21] + xmontosmo[22] + xmontosmo[23] + xmontosmo[24]) -
                        (xmontos[13] + xmontos[14] + xmontos[15] + xmontos[16] + xmontos[17] + xmontos[18] +
                        xmontos[19] + xmontos[20] + xmontos[21] + xmontos[22] + xmontos[23] + xmontos[24]);
                     For iX := 1 To 12 Do
                     Begin
                     { totales de EJ y VM }
                        xtotejmn := xtotejmn + xmontos[iX];
                        xtotejme := xtotejme + xmontos[iX + 12];
                     End;
                    //**
                    { para el detalle, se asignan los totales }
                     DMCXC.cdsDetallePres.FieldByName('DPRETOEJMN').AsString := FloatToStr(xtotejmn);
                     DMCXC.cdsDetallePres.FieldByName('DPRETOEJME').AsString := FloatToStr(xtotejme);
                     DMCXC.cdsDetallePres.FieldByName('DPRETOVMMN').AsString := FloatToStr(xtotvmmn);
                     DMCXC.cdsDetallePres.FieldByName('DPRETOVMME').AsString := FloatToStr(xtotvmme);
                     { si hubiera montos }
                     For iX := 1 To 12 Do
                        If (xmontosas[iX] <> 0) Or (xmontosmo[iX] <> 0) Then
                        Begin
                           xestado1 := true;
                           break;
                        End;
                     { me indica que hay que actualizar los VP }
                     If xEstado1 = true Then
                     Begin
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPMN').AsString :=
                           FloatToStr(((xmontos[1] + xmontos[2] + xmontos[3] + xmontos[4] + xmontos[5] + xmontos[6] +
                           xmontos[7] + xmontos[8] + xmontos[9] + xmontos[10] + xmontos[11] + xmontos[12]) /
                           (xmontosas[1] + xmontosas[2] + xmontosas[3] + xmontosas[4] + xmontosas[5] + xmontosas[6] +
                           xmontosas[7] + xmontosas[8] + xmontosas[9] + xmontosas[10] + xmontosas[11] + xmontosas[12] +
                           xmontosmo[1] + xmontosmo[2] + xmontosmo[3] + xmontosmo[4] + xmontosmo[5] + xmontosmo[6] +
                           xmontosmo[7] + xmontosmo[8] + xmontosmo[9] + xmontosmo[10] + xmontosmo[11] + xmontosmo[12])) * 100);
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPME').AsString :=
                           FloatToStr(((xmontos[13] + xmontos[14] + xmontos[15] + xmontos[16] + xmontos[17] + xmontos[18] +
                           xmontos[19] + xmontos[20] + xmontos[21] + xmontos[22] + xmontos[23] + xmontos[24]) /
                           (xmontosas[13] + xmontosas[14] + xmontosas[15] + xmontosas[16] + xmontosas[17] + xmontosas[18] +
                           xmontosas[19] + xmontosas[20] + xmontosas[21] + xmontosas[22] + xmontosas[23] + xmontosas[24] +
                           xmontosmo[13] + xmontosmo[14] + xmontosmo[15] + xmontosmo[16] + xmontosmo[17] + xmontosmo[18] +
                           xmontosmo[19] + xmontosmo[20] + xmontosmo[21] + xmontosmo[22] + xmontosmo[23] + xmontosmo[24])) * 100);
                        xestado1 := false;
                     End
                     Else
                     Begin
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPMN').AsString := FloatToStr(200);
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPME').AsString := FloatToStr(200);
                     End;
                     DMCXC.cdsSQL.Post;
                     DMCXC.cdsDetallePres.Post;
                     DMCXC.cdsDetallePres.ApplyUpdates(0);
                     xEstado := false;
                  End;
                  DMCXC.cdsParPres.next;
               End;
                 { se igualan variables }
               xmaxnivelinf := xmaxnivelint;
               xmaxdigitoinf := xmaxdigitoint;
            Until xmaxnivelsup = xmaxnivelint;
         End;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
End;
*)
// Fin HPC_201602_CXC

Procedure TFProvision.dblcTipPreExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
   If dblcTipReg.Focused Then exit;
   If Length(dblcTipPre.Text) = 0 Then
   Begin
      Raise exception.Create('Falta Tipo de Presupuesto');
      dblcTipPre.SetFocus;
   End;
End;

Procedure TFProvision.dblcdPresupExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
   If dblcTipReg.Focused Then exit;
   edtPresup.Text := DMCXC.displayDescrip('PPRES201', 'PARPRESDES', 'PARPRESID', dblcdPresup.Text);
   If Length(edtPresup.text) = 0 Then
   Begin
      Raise exception.Create('Falta Partida Presupuestal');
      dblcdPresup.SetFocus;
   End;
End;

Procedure TFProvision.Z2bbtnContadorClick(Sender: TObject);
Begin
   If Z2bbtnContador.Tag = 0 Then
   Begin
      pnlDetalle.Enabled := true;
      pnlMontos.Enabled := false;
      Panel1.Enabled := true;
      Z2bbtnContador.Tag := 1;
   End
   Else
      If Z2bbtnContador.Tag = 1 Then
      Begin
         pnlDetalle.Enabled := false;
         Panel1.Enabled := false;
         Z2bbtnContador.Tag := 0;
      End;
End;

Procedure TFProvision.dbeDocPlazoExit(Sender: TObject);
Begin
   DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime := dtpFEmis.Date + DMCXC.cdsMovCxC.FieldByName('DOCPLAZO').AsInteger;
End;

Procedure TFProvision.dblcdTipoOperaExit(Sender: TObject);
Begin
   If length(dblcdTipoOpera.Text) > 0 Then
   Begin
      edtTipoOpera.Text := DMCXC.cdsCptoCab.FieldByName('CPTODES').AsString;
   End
   Else
   Begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcdTipoOpera.SetFocus;
      exit;
   End

End;

Procedure TFProvision.dblcTMonEnter(Sender: TObject);
Begin
   StrTmp := TCustomEdit(Sender).Text;
End;

Procedure TFProvision.bbtnVouOkClick(Sender: TObject);
Begin
   dbpFormatos.DataSource := DMCXC.dsEmiDoc1;
   Case rgImp.itemindex Of
      0:
         Begin
            pprpFormatos.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\FacturaG.Rtm';
            pprpFormatos.Template.LoadFromFile;
         End;
      1:
         Begin
            pprpFormatos.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Factura.Rtm';
            pprpFormatos.Template.LoadFromFile;
         End;
   End;
   pplblnodoc.Text := dblcSerie.Text + ' - ' + Trim(dbeNoDoc.text);
   PPRAZON.Text := DMCXC.cdsqry6.FieldByName('PPRAZON').AsString;
   PPRUC.Text := DMCXC.cdsqry6.FieldByName('PPRUC').AsString;
   PPDIRECCION.Text := DMCXC.cdsqry6.FieldByName('PPDIRECCION').AsString;
   PPDIA.Text := DMCXC.cdsqry6.FieldByName('PPDIA').AsString;
   PPMES.Text := DMCXC.cdsqry6.FieldByName('PPMES').AsString;
   PPANO.Text := DMCXC.cdsqry6.FieldByName('PPANO').AsString;
   pplblIgvDes.text := xigv + '%';
   pplblFaSim.text := Trim(edtTMon.text);
   PPIGV.Text := FloatToStrF(DMCXC.cdsqry6.FieldByName('PPIGV').value, ffNumber, 15, 2);
   pplblFaSim1.text := Trim(edtTMon.text);
   PPTOTAL.Text := FloatToStrF(DMCXC.cdsqry6.FieldByName('PPTOTAL').value, ffNumber, 15, 2);
   ppMontoLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsQry6.FieldByName('PPTOTAL').Asfloat) + '   ' + //+xdesmon);//+ ' '+
      DMCXC.displayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text));
   pplbFASEUO.Width := ppMontoLetras.Width;
   dbpFormatos.DataSource := DMCXC.dsEmidoc1;
   pprpFormatos.Print;
   dbpFormatos.DataSource := Nil;
End;

Procedure TFProvision.bbtnVouCaClick(Sender: TObject);
Begin
   pnlTipoImp.visible := False;
   pnlPie.Enabled := True;
End;

Procedure TFProvision.bbtnCalcClick(Sender: TObject);
Begin
   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación
End;

Procedure TFProvision.dbeGlosaExit(Sender: TObject);
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

Procedure TFProvision.Z2bbtnPreviewClick(Sender: TObject);
Var
   xSQL, mes, ano, xwhere, MONABR: String;
   TMoneda, mesdes: String;
   xTotHaber: DOUBLE;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString <> 'S' Then
   Begin
      If Not AsientoCuadra Then
         Raise exception.Create('Error:  Asiento No Cuadra');

      DMCXC.GeneraContab(dblcCia.Text, dblcTDiario.Text, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString, Self, 'P');

      // Se Transfiere la Data Generada en el SOLContabiliza
      DMCXC.cdsCXC.Data := DMCXC.cdsMovCnt.data;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      lblVEstado.caption := 'Previo';
      lblVProveedor.Caption := edtClie.text;
      xSQL := 'SELECT CNTGLOSA FROM CNT310 WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(dblcTDiario.text) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
      DMCXC.cdsQry5.close;
      DMCXC.cdsQry5.ProviderName := 'dspTGE';
      DMCXC.cdsQry5.DataRequest(xsql);
      DMCXC.cdsQry5.Open;

      lblVTipoCamb.Caption := FloatToStrF(StrToFloat(dbeTCambio.text), ffNumber, 10, 3);

      //lblPeriodo.Caption  := meAnoMM.text ;  reemplazado por
      mes := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
      ano := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.BuscaQry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      lblVNoCompro.Caption := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;

      tMoneda := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMON_LOC', 'TMONID=' + quotedstr(dblcTMon.text), 'TMON_LOC');
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONABR');
      lblVMesDia.caption := DateToStr(dtpFEmis.date);

      DMCXC.CdsDetCxC.first;
      While Not DMCXC.CdsDetCxC.EOF Do
      Begin
         If DMCXC.CdsDetCxC.FieldByName('TIPDET').Asstring = 'TO' Then
         Begin
            lblV12.Caption := MONABR + FloatToStrF(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);
            break;
         End;
         DMCXC.CdsDetCxC.next;
      End;

      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');

   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      xsql := 'SELECT * FROM CNT301 '
         + 'WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(dblcTDiario.text) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString)
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
      mesdes := DMCXC.BuscaQry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONABR');
      lblVMesDia.caption := DateToStr(dtpFEmis.date);

      lblVestado.caption := 'Contabilizado';
      xTotHaber := 0;

      // DMCXC.cdsDetCxP.DisableControls;
      DMCXC.cdsDetCxC.First;
      While Not DMCXC.cdsDetCxC.Eof Do
      Begin
         If DMCXC.cdsDetCxC.FieldByName('CCDH').AsString = 'H' Then
            xTotHaber := xTotHaber + FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value, 15, 2);
         DMCXC.cdsDetCxC.Next;
      End;
      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');

      DMCXC.cdsDetCxC.First;

      lblV12.Caption := MONABR + FloatToStrF(xTotHaber, ffNumber, 15, 2);

   End;

   lblVCiades.Caption := edtCia.text;
   lblVauxiliar.Caption := dblcdClie.Text;
   lblVDiario.Caption := edtTDiario.text;
   lblVTD.Caption := dblcTDiario.text;
   lblVTipoCamb.Caption := FloatToStrF(StrToFloat(dbeTCambio.text), ffNumber, 10, 3);
   lblVNoCompro.Caption := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   lblVProveedor.Caption := edtClie.text;
   lblVmoneda.caption := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONDES');
   lblVGlosa.caption := DMCXC.cdsCxC.FieldByName('CNTGLOSA').asstring;

   DMCXC.cdsCxC.IndexFieldNames := 'CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := Nil;
   DMCXC.cdsCxC.IndexFieldNames := '';
End;

Procedure TFProvision.ppDetailBand5BeforePrint(Sender: TObject);
Begin
   lblVMesDia.Caption := DMCXC.CdsCxC.FieldByName('CNTFEMIS').AsString;
End;

Procedure TFProvision.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFProvision.dblcRefTipoDocExit(Sender: TObject);
Begin
   If bbtnCancelar.focused Then exit;
   If Length(dblcRefTipoDoc.Text) = 0 Then
   Begin
      dblcRefTipoDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento de Referencia ');
   End;
   edtReftipDoc.Text := DMCXC.cdsQry10.FieldByName('DOCDES').AsString;
   If length(edtReftipDoc.Text) = 0 Then
   Begin
      dblcRefTipoDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento de Referencia ');
   End;

End;

Procedure TFProvision.bbtnDocrefClick(Sender: TObject);
Var
   XSQL: String;
   xccanje: String;
   xcanjei: Integer;
Begin
   If length(dblcRefTipoDoc.text) = 0 Then
   Begin
      dblcRefTipoDoc.setfocus;
      Showmessage('Debe ingresar el Tipo de Documento');
      Exit;
   End;

   If length(edtReftipDoc.text) = 0 Then
   Begin
      edtReftipDoc.setfocus;
      Showmessage('Tipo de Documento Errado');
      Exit;
   End;

   If length(edtRefSerie.text) = 0 Then
   Begin
      edtRefSerie.setfocus;
      Showmessage('Falta ingresar la Serie del Documento');
      Exit;
   End;

   If length(edtRefNodoc.text) = 0 Then
   Begin
      edtRefNodoc.setfocus;
      Showmessage('Falta ingresar el numero del Documento');
      Exit;
   End;

   xSQL := ' CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(dblcRefTipoDoc.text) +
      ' AND CCSERIE=' + QuotedStr(edtRefSerie.text) + ' AND CCNODOC=' + QuotedStr(edtRefNodoc.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.text);
   If length(DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC', xSQL, 'CCNODOC')) <= 0 Then
   Begin
      edtRefNodoc.setfocus;
      Showmessage('Documento no exite');
      Exit;
   End;

   xSQL := ' CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(dblcRefTipoDoc.text) +
      ' AND CCSERIE=' + QuotedStr(edtRefSerie.text) + ' AND CCNODOC=' + QuotedStr(edtRefNodoc.text) +
      ' AND CLIEID=' + QuotedStr(dblcdClie.text) + ' AND TCANJEID=' + QuotedStr('RF');
   If length(DMCXC.BuscaQry('dspTGE', 'CXC304', 'CCNODOC', xSQL, 'CCNODOC')) > 0 Then
   Begin
      Raise Exception.Create('El Documento ya ha sido Referenciado ');
   End;

   If DMCXC.cdsCanje.RecordCount > 0 Then
   Begin
      DMCXC.cdscanje.First;
      While Not DMCXC.cdsCanje.Eof Do
      Begin
         If DMCXC.cdsCanje.FieldByName('DOCID').asstring = dblcRefTipoDoc.text Then
         Begin
            If DMCXC.cdsCanje.FieldByName('CCSERIE').asstring = edtRefSerie.text Then
            Begin
               If DMCXC.cdsCanje.FieldByName('CCNODOC').asstring = edtRefNodoc.text Then
               Begin
                  edtRefNodoc.setfocus;
                  Showmessage('El Documento ya ha sido registrado en esta Provision');
                  Exit;
               End;
            End;
         End;
         DMCXC.cdscanje.next;
      End;
   End;

   xccanje := DMCXC.cdscanje.FieldByName('CCCANJE').asstring;
   If length(xccanje) = 0 Then
      xccanje := StrZero('1', 6)
   Else
   Begin
      xcanjei := strtoint(xccanje) + 1;
      xccanje := StrZero(inttostr(xcanjei), 6);
   End;
   If xflag = 'INSERTA' Then
      DMCXC.cdsCanje.insert;
   If xflag = 'EDITA' Then
      DMCXC.cdsCanje.EDIT;

   DMCXC.cdsCanje.FieldByName('CIAID').asstring := dblcCia.Text;
   DMCXC.cdsCanje.FieldByName('TDIARID').asstring := dblcTDiario.Text;
   DMCXC.cdsCanje.FieldByName('CCNOREG').asstring := dbeNoReg.Text;
   DMCXC.cdsCanje.FieldByName('CCANOMM').asstring := dbeAnoMM.Text;
   DMCXC.cdsCanje.FieldByName('CLIERUC').asstring := dblcdClieRuc.Text;
   DMCXC.cdsCanje.FieldByName('CLIEID').asstring := dblcdClie.Text;
   DMCXC.cdsCanje.FieldByName('DOCID').asstring := dblcRefTipoDoc.Text;
   DMCXC.cdsCanje.FieldByName('CCSERIE').asstring := edtRefSerie.Text;
   DMCXC.cdsCanje.FieldByName('CCNODOC').asstring := edtRefNodoc.Text;
   DMCXC.cdsCanje.FieldByName('TCANJEID').asstring := 'RFE';
   DMCXC.cdsCanje.FieldByName('CCFCANJE').asdatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').asdatetime;
   DMCXC.cdsCanje.FieldByName('CCCANJE').asstring := xccanje;
   DMCXC.cdsCanje.FieldByName('TMONID').asstring := dblcTMon.Text;
   DMCXC.cdsCanje.FieldByName('CCTCAMDOC').asstring := dbeTCambio.Text;
   DMCXC.cdsCanje.FieldByName('CCTCAMCJE').asstring := dbeTCambio.Text;
   DMCXC.cdsCanje.FieldByName('CCMTOORI').asfloat := 0;
   DMCXC.cdsCanje.FieldByName('CCMTOLOC').asfloat := 0;
   DMCXC.cdsCanje.FieldByName('CCMTOEXT').asfloat := 0;
   DMCXC.cdsCanje.FieldByName('CCSALORI').asfloat := 0;
   DMCXC.cdsCanje.FieldByName('CCSALLOC').asfloat := 0;
   DMCXC.cdsCanje.FieldByName('CCSALEXT').asfloat := 0;
   DMCXC.cdsCanje.FieldByName('CCESTADO').asstring := ' ';
   DMCXC.cdsCanje.FieldByName('CCUSER').asstring := DMCXC.wUsuario;
   DMCXC.cdsCanje.FieldByName('CCFREG').asdatetime := DMCXC.dateS;
   DMCXC.cdsCanje.FieldByName('CCHREG').asdatetime := DMCXC.timeS;
   DMCXC.cdsCanje.FieldByName('CTATOTAL').asstring := ' ';
   DMCXC.cdsCanje.FieldByName('FLAGVAR').asstring := ' ';
   DMCXC.cdsCanje.FieldByName('CPTOTOT').asstring := ' ';
   DMCXC.cdsCanje.FieldByName('CCESTADO').asstring := 'I';
   DMCXC.cdsCanje.FieldByName('CLAUXID').asstring := dblcClAux.text;
   DMCXC.cdsCanje.FieldByName('CPTODES').asstring := ' ';
   DMCXC.cdsCanje.Post;
End;

Procedure TFProvision.btnRegDocRefClick(Sender: TObject);
Var
   XSQL: String;
Begin
   xflag := 'INSERTA';
   pnlRegReferencia.visible := True;
   pnlRegReferencia.Enabled := True;
   dblcRefTipoDoc.setfocus;
   dblcRefTipoDoc.text := '';
   edtReftipDoc.text := '';
   edtRefSerie.text := '';
   edtRefNodoc.text := '';
End;

Procedure TFProvision.bbtnCancelarClick(Sender: TObject);
Begin
   If dblcRefTipoDoc.focused Then exit;
   pnlRegReferencia.visible := False;
End;

Procedure TFProvision.dbgDocRefenciaKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsCanje.Delete;
      End;
   End;

End;

Procedure TFProvision.dbgDocRefenciaDblClick(Sender: TObject);
Var
   xwhere: String;
Begin
   If (btnActReg.Enabled) Or ((DMCXC.cdsmovcxc.FieldByName('CCESTADO').AsString = 'I') Or
      (DMCXC.cdsmovcxc.FieldByName('CCESTADO').AsString = 'T')) Then
   Begin
      xflag := 'EDITA';
      If ((DMCXC.cdsCanje.FieldByName('CCESTADO').AsString = 'I') Or
         (DMCXC.cdscanje.FieldByName('CCESTADO').AsString = 'T')) Then
      Begin
         pnlRegReferencia.visible := True;
         pnlRegReferencia.Enabled := True;
         dblcRefTipoDoc.setfocus;
         edtRefNodoc.text := DMCXC.cdscanje.FieldByName('CCNODOC').asstring;
         dblcRefTipoDoc.text := DMCXC.cdscanje.FieldByName('DOCID').asstring;
         edtReftipDoc.text := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCDES', 'DOCMOD=''CXC'' AND DOCID=' + QuotedStr(dblcRefTipoDoc.text), 'DOCDES');
         edtRefSerie.text := DMCXC.cdscanje.FieldByName('CCSERIE').asstring;
      End;
   End;
End;

Procedure TFProvision.Z2bbtnEliminaClick(Sender: TObject);
Var
   xAno, xNmes: String;
   Y1, Y2, M1, M2, D: word;
   sSQL: String;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
      Raise Exception.Create('No se puede Eliminar porque ya se Contabilizó');

   If DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat > 0 Then
      Raise Exception.Create('No se puede Eliminar porque ya tiene pagos');

   If (DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat) Or
      (DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat) Then
      Raise Exception.Create('No se puede Eliminar porque la provisión esta en proceso de Canje.');

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Eliminar la Provision' + #13 +
         ' pues el Periodo ya está cerrado');
   End;

   sSQL := ' SELECT ' + DMCXC.wRepFecServi + ' FECHA FROM TGE901 ';
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;

   DecodeDate(DMCXC.cdsQry.FieldByName('FECHA').AsDateTime, Y2, M2, D);
   DecodeDate(DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime, Y1, M1, D);

   If DMCXC.cdsMovCXC.FieldByName('CCFLAGVTA').AsString = 'S' Then
   Begin
      Raise Exception.Create('No se pueden eliminar registros que vienen del Módulo de Ventas ');
   End;

   If MessageDlg('Eliminar Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'P') Then
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').Asstring, DMCXC.cdsMovCxC.FieldByName('CCANOMES').Asstring,
         DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString,
         '+', (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMONID').AsString);

   sSQL := 'UPDATE CXC302 SET CCESTADO = ''E'' ';
   sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '''' + ' AND '
      + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
      + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
      + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'E';
   DMCXC.cdsMovCxC.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.Post;
   sSQL := 'UPDATE CXC301 SET CCESTADO = ''E'', '
      + '        USERANUL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString) + ','
      + '        FECANUL = trunc(sysdate), '
      + '        HORANUL = sysdate ';
   sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '''' + ' AND '
      + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
      + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
      + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se puede eliminar los datos de la provisión');
      exit;
   End;
   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('  Registro Eliminado  ');
End;

Procedure TFProvision.FormCreate(Sender: TObject);
Begin
   xEnvioSunat := '';
   CargaDataSource;
End;

Procedure TFProvision.CargaDataSource;
Var
   xSQL: String;
Begin
   dblcdClie.DataSource := DMCXC.dsMovCxC;
   dblcdClieRuc.DataSource := DMCXC.dsMovCxC;
   dblcTMon.DataSource := DMCXC.dsMovCxC;
   dbeTCambio.DataSource := DMCXC.dsMovCxC;
   dtpFVcmto.DataSource := DMCXC.dsMovCxC;
   dbePedido.DataSource := DMCXC.dsMovCxC;
   dblcVende.DataSource := DMCXC.dsMovCxC;
   dblcCComer.DataSource := DMCXC.dsMovCxC;
   dblcClAux.DataSource := DMCXC.dsMovCxC;
   dtpFEmis.DataSource := DMCXC.dsMovCxC;
   dbcbCred.DataSource := DMCXC.dsMovCxC;
   dbeDocPlazo.DataSource := DMCXC.dsMovCxC;
   dblcdPedido.DataSource := DMCXC.dsMovCxC;
   dblcTDiario.DataSource := DMCXC.dsMovCxC;
   dtpFComp.DataSource := DMCXC.dsMovCxC;
   dbeAnoMM.DataSource := DMCXC.dsMovCxC;
   dbeNoReg.DataSource := DMCXC.dsMovCxC;
   dbcbGenDoc.DataSource := DMCXC.dsMovCxC;
   dbeMGrav.DataSource := DMCXC.dsMovCxC;
   dbeMNoGrav.DataSource := DMCXC.dsMovCxC;
   dbeFlete.DataSource := DMCXC.dsMovCxC;
   dbeGasFin.DataSource := DMCXC.dsMovCxC;
   dbeServ.DataSource := DMCXC.dsMovCxC;
   dbeDcto.DataSource := DMCXC.dsMovCxC;
   dbeIGV.DataSource := DMCXC.dsMovCxC;
   dbeISC.DataSource := DMCXC.dsMovCxC;
   dbeTotal.DataSource := DMCXC.dsMovCxC;
   dbgDetCxC.DataSource := DMCXC.dsDetCxC;
   dblcTipReg.DataSource := DMCXC.dsDetCxC;
   dblcdCpto.DataSource := DMCXC.dsDetCxC;
   dbeImporte.DataSource := DMCXC.dsDetCxC;
   dbeDH.DataSource := DMCXC.dsDetCxC;
   dbeCuenta.DataSource := DMCXC.dsDetCxC;
   edtMontoExportacion.DataSource := DMCXC.dsMovCxC;
   edtMontoExonerado.DataSource := DMCXC.dsMovCxC;
   dbeGlosa.DataSource := DMCXC.dsDetCxC;
   dblcdCCosto.DataSource := DMCXC.dsDetCxC;
   dbgDocRefencia.DataSource := DMCXC.dsCanje;
   dblcCia.LookupTable := DMCXC.cdsCia;
// Inicio HPC_201602_CXC
//   dblcTDoc.LookupTable := DMCXC.cdsTDoc;
   dblcTDoc.LookupTable := DMCXC.cdsDoc;
// Fin HPC_201602_CXC
   dblcSerie.LookupTable := DMCXC.cdsSerie;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcVende.LookupTable := DMCXC.cdsVende;
   dblcCComer.LookupTable := DMCXC.cdsCComer;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcdPedido.LookupTable := DMCXC.cdsMovFac;
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
   dblcdTipoOpera.LookupTable := DMCXC.cdsCptoCab;
   dblcTipReg.LookupTable := DMCXC.cdsTipReg;
   dblcdCpto.LookupTable := DMCXC.cdsCpto;
   dblcdCCosto.LookupTable := DMCXC.cdsCCosto;
   dblcdPresup.LookupTable := DMCXC.cdsPresup;
   dblcRefTipoDoc.LookupTable := DMCXC.cdsQry10;

// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
// Cargando Tipo de Nota de Débito

   DMCXC.cdsQry14.close;
   DMCXC.cdsQry14.DataRequest('Select TIP_ND_COD, TIP_ND_DES from db2admin.SUNAT_CAT_10 order by TIP_ND_COD');
   DMCXC.cdsQry14.Open;
   dblcTipND.LookupTable := DMCXC.cdsQry14;
   dblcTipND.LookupField := 'TIP_ND_COD';
   dblcTipND.Selected.Clear;
   dblcTipND.Selected.Add('TIP_ND_COD'#9'10'#9'Tipo N/D'#9'F');
   dblcTipND.Selected.Add('TIP_ND_DES'#9'30'#9'Descripción'#9'F');

   dblcTipND.DataSource := DMCXC.dsMovCxC;
// Fin   HPC_201701_CXC : Corregir configuración de la dinámica contable

// Cargando Lista de Impresoras disponibles
   xSQL := 'Select R.IMP_ID, R.IMP_DES, R.IMP_IP '
      + '  From DB2ADMIN.FAC_FE_PVTA T, DB2ADMIN.FAC_FE_IMPR R  '
      + '  Where T.CIAID   = ' + QuotedStr(dblcCia.Text)
      + '   And  T.TIE_ID  = ' + QuotedStr(xTienda)
      + '   And  R.IMP_ID  = T.IMP_ID '
      + '   And  nvl(R.IMP_ACTIVO,''N'')=''S'' ';
   DMCXC.cdsQry9.close;
   DMCXC.cdsQry9.DataRequest(xSQL);
   DMCXC.cdsQry9.Open;
   dblcdImpDest.LookupTable := DMCXC.cdsQry9;
   dblcdImpDest.Selected.Clear;
   dblcdImpDest.Selected.Add('IMP_ID'#9'12'#9'Código'#9'F');
   dblcdImpDest.Selected.Add('IMP_DES'#9'20'#9'Descripción'#9'F');
   dblcdImpDest.Selected.Add('IMP_IP'#9'15'#9'IP'#9'F');
End;

Procedure TFProvision.dbeMGravExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeMGrav.SetFocus;
   End;
End;

Procedure TFProvision.dbeMNoGravExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeMNoGrav.SetFocus;
   End;
End;

Procedure TFProvision.dbeFleteExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCFLETE').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeFlete.SetFocus;
   End;
End;

Procedure TFProvision.dbeGasFinExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCGASFIN').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeGasFin.SetFocus;
   End;
End;

Procedure TFProvision.dbeServExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCSERVIC').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeServ.SetFocus;
   End;
End;

Procedure TFProvision.dbeDctoExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCDCTO').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeDcto.SetFocus;
   End;
End;

Procedure TFProvision.dbeIGVExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeIGV.SetFocus;
   End;
End;

Procedure TFProvision.dbeISCExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeISC.SetFocus;
   End;
End;

Procedure TFProvision.dbeTotalExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat < 0 Then
   Begin
      ShowMessage('Error : Monto NO debe ser Negativo');
      dbeTotal.SetFocus;
   End;
End;

Procedure TFProvision.dbeTCambioExit(Sender: TObject);
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat <= 0 Then
   Begin
      ShowMessage('Error : Monto Debe Ser Mayor a Cero');
      dbeTCambio.SetFocus;
   End;
End;

Function TFProvision.fg_ValidaMontosRV: Boolean;
Var
   xnExportacion, xnGravado, xnExonerado, xnInafecto, xnIgv, xnOtrosTributos, xnTotal: Double;
   xnPorcIgvCalculado, xnIgvOasis, xnTemp: Double;
Begin
   If edtMontoExportacion.Text = '' Then
      xnExportacion := 0
   Else
      xnExportacion := StrToFloat(edtMontoExportacion.Text);

   If dbeMGrav.Text = '' Then
      xnGravado := 0
   Else
      xnGravado := StrToFloat(dbeMGrav.Text);

   If edtMontoExonerado.Text = '' Then
      xnExonerado := 0
   Else
      xnExonerado := StrToFloat(edtMontoExonerado.Text);

   If dbeMNoGrav.Text = '' Then
      xnInafecto := 0
   Else
      xnInafecto := StrToFloat(dbeMNoGrav.Text);

   If dbeIGV.Text = '' Then
      xnIgv := 0
   Else
      xnIgv := StrToFloat(dbeIGV.Text);

   If dbeServ.Text = '' Then
      xnOtrosTributos := 0
   Else
      xnOtrosTributos := StrToFloat(dbeServ.Text);

   If dbeTotal.Text = '' Then
      xnTotal := 0
   Else
      xnTotal := StrToFloat(dbeTotal.Text);

   xnTemp := xnExportacion + xnGravado + xnExonerado + xnInafecto + xnIgv + xnOtrosTributos;
   If Abs(xnTotal - xnTemp) > 0.1 Then
   Begin
      ShowMessage('La suma de los importes ' + FloatToStr(xnTemp) + #13 + ' no es igual al Total de la Provisión ' + FloatToStr(xnTotal));
      Result := False;
      Exit;
   End;

   If xnIgvOasis > 0 Then
   Begin
      xnIgvOasis := StrToFloat(DMCXC.BuscaQry('dspTGE', 'TGE128', 'TASA', 'TIPDET=' + QuotedStr('I1'), 'TASA'));
      xnPorcIgvCalculado := FRound((xnIgv / xnGravado) * 100, 10, 2);
      If (Abs(xnPorcIgvCalculado - xnIgvOasis) > 1) Then
      Begin
         If MessageDlg('El Porcentaje de IGV de la Provisión es: ' + FloatToStr(xnPorcIgvCalculado) + ' %' + #13 +
            '¿Desea Continuar? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
         Begin
            Result := False;
            Exit;
         End;
      End;
   End;
   Result := True;
   Exit;

End;

Procedure TFProvision.fg_grabar;
//Actualiza el registro de ventas de acuerdo a los montos ingresados
Var
   xsExportacion, xsGravado, xsExonerado, xsInafecto, xsIgv, xsOtrosTributos, xsTotal: String;
   xnTotalLoc, xnTotalExt, xnTipoCambio: Double;
   xsSql, xsMoneda: String;
Begin
   xsMoneda := DMCXC.cdsMovCxC.FieldByName('TMONID').AsString;
   xnTipoCambio := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
   If edtMontoExportacion.Text = '' Then
      xsExportacion := 'NULL'
   Else
      xsExportacion := edtMontoExportacion.Text;

   If dbeMGrav.Text = '' Then
      xsGravado := '0'
   Else
      xsGravado := dbeMGrav.Text;

   If edtMontoExonerado.Text = '' Then
      xsExonerado := 'NULL'
   Else
      xsExonerado := edtMontoExonerado.Text;

   If dbeMNoGrav.Text = '' Then
      xsInafecto := '0'
   Else
      xsInafecto := dbeMNoGrav.Text;

   If dbeIGV.Text = '' Then
      xsIgv := '0'
   Else
      xsIgv := dbeIGV.Text;

   If dbeServ.Text = '' Then
      xsOtrosTributos := '0'
   Else
      xsOtrosTributos := dbeServ.Text;

   If dbeTotal.Text = '' Then
      xsTotal := '0'
   Else
      xsTotal := dbeTotal.Text;

   If xsMoneda = 'D' Then
   Begin
      xnTotalLoc := FRound(StrToFloat(xsTotal) * xnTipoCambio, 10, 2);
      xnTotalExt := StrToFloat(xsTotal);
   End
   Else
   Begin
      xnTotalLoc := StrToFloat(xsTotal);
      xnTotalExt := FRound(StrToFloat(xsTotal) / xnTipoCambio, 10, 2);
   End;

   xsSql := 'UPDATE CXC301 SET   ' +
      ' CCGRAVAD = ' + xsGravado + ',' +
      ' CCNOGRAV = ' + xsInafecto + ',' +
      ' CCIGV = ' + xsIgv + ',' +
      ' CCSERVIC = ' + xsOtrosTributos + ',' +
      ' CCEXPORT = ' + xsExportacion + ',' +
      ' CXC_IMP_EXO = ' + xsExonerado + ',' +
      ' CCMTOORI = ' + xsTotal + ',' +
      ' CCMTOLOC = ' + FloatToStr(xnTotalLoc) + ',' +
      ' CCMTOEXT = ' + FloatToStr(xnTotalExt) +
      ' WHERE CIAID = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) +
      ' AND CCANOMES = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) +
      ' AND CCNOREG = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
   DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
End;

Procedure TFProvision.fg_habilitaCamposRV(wgTrueFalse: Boolean);
//Habilita los campos que permiten editar los montos del registro de ventas
Begin
   pnlMontos.Enabled := wgTrueFalse;
   edtMontoExportacion.Enabled := wgTrueFalse;
   dbeMGrav.Enabled := wgTrueFalse;
   edtMontoExonerado.Enabled := wgTrueFalse;
   dbeMNoGrav.Enabled := wgTrueFalse;
   dbeFlete.Enabled := False;
   dbeGasFin.Enabled := False;
   dbeServ.Enabled := wgTrueFalse;
   dbeDcto.Enabled := False;
   dbeIGV.Enabled := wgTrueFalse;
   dbeISC.Enabled := False;
   dbeTotal.Enabled := wgTrueFalse;
   btnModificaRegVentas.Enabled := wgTrueFalse;
   Z2bbtnEmiDoc.Enabled := False;
   bbtnCalcula.Enabled := False;
   bbtnGenera.Enabled := False;
   btnPasarAExonerado.Enabled := wgTrueFalse;
   btnPasarAExportado.Enabled := wgTrueFalse;
   btnPasarAExonerado2.Enabled := wgTrueFalse;

End;

Procedure TFProvision.fg_Recuperacxc301;
//Recupera el registro de la provisión de cuentas por cobrar
Var
   xsSql, xsCompania, xsTipoDocumento, xsSerie, xsNumeroDoc: String;
Begin
   xsCompania := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
   xsTipoDocumento := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
   xsSerie := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
   xsNumeroDoc := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
   xsSql := 'SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(xsCompania)
      + ' AND DOCID=' + QuotedStr(xsTipoDocumento)
      + ' AND CCSERIE=' + QuotedStr(xsSerie)
      + ' AND CCNODOC=' + QuotedStr(xsNumeroDoc);

   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xsSql);
   DMCXC.cdsMovCxC.Open;
End;

Procedure TFProvision.btnModificaRegVentasClick(Sender: TObject);
//cuando se acepta los cambios del registro de ventas
Begin
   Try
      If fg_ValidaMontosRV = False Then
      Begin
         Exit;
      End;
      fg_grabar;
      fg_Recuperacxc301;
      ShowMessage('Actualización exitosa');
      bbtnGenera.Enabled := True;
   Except
      ShowMessage('Error en la actualización');
   End;
End;

Procedure TFProvision.btnHabilitaModifRVentasClick(Sender: TObject);
Begin
   If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
      Exit;
   End;
   fg_habilitaCamposRV(True);
End;

Procedure TFProvision.btnPasarAExoneradoClick(Sender: TObject);
//transfiere el monto del campo INAFECTO hacia el campo EXONERADO
Begin
   DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat;
   edtMontoExonerado.Text := DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsString;
   DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat := 0;
   dbeMNoGrav.text := '';
End;

Procedure TFProvision.btnPasarAExportadoClick(Sender: TObject);
//transfiere el monto del campo INAFECTO hacia el campo EXPORTACION
Begin
   DMCXC.cdsMovCxC.FieldByName('CCEXPORT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat;
   edtMontoExportacion.Text := DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsString;
   DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat := 0;
   dbeMNoGrav.text := '';
End;

Procedure TFProvision.btnPasarAExonerado2Click(Sender: TObject);
Begin
   DMCXC.cdsMovCxC.FieldByName('CXC_IMP_EXO').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCEXPORT').AsFloat;
   edtMontoExonerado.Text := DMCXC.cdsMovCxC.FieldByName('CCEXPORT').AsString;
   DMCXC.cdsMovCxC.FieldByName('CCEXPORT').AsFloat := 0;
   edtMontoExportacion.Text := '0'
End;

Procedure TFProvision.dtpFEmisChange(Sender: TObject);
Begin
   If Length(Trim(dtpFEmis.Text)) > 0 Then
   Begin
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime := dtpFEmis.Date;
   End;
End;


// Inicio HPC_201702_CXC : Adecuaciones para Facturación Electrónica
Procedure TFProvision.CXC_ND_FACT_ELEC;
Var
   xSQL: String;
   xfArchivoTexto: TextFile;
   xsNombreTxt, xCarpeta, xTDocSunat, xsClave: String;
Begin
   DMCXC.DCOM1.AppServer.IniciaTransaccion;
   xSQL := ' Declare v_cursor SYS_REFCURSOR;'
      + ' Begin db2admin.SP_FAC_GEN_TXT_FACELE_V2('
      + QuotedStr(dblcCia.Text) + ','
      + QuotedStr(dblcTDoc.Text) + ','
      + QuotedStr(dblcSerie.Text) + ','
      + QuotedStr(dbeNoDoc.Text) + ','
      + QuotedStr(DMCXC.wUsuario) + ','
      + QuotedStr('ACEPTADO') + ','
      + QuotedStr(wIP_Impresora) + ','
      + ' v_cursor ); End;';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('No se pudo generar el archivo electrónico para SUNAT');
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      Screen.Cursor := crDefault;
      xEnvioSunat := '1';
      exit;
   End;


// Inicio HPC_201702_CXC : Se llama a método de servidor para realizar la escritura de TXT
   If DMCXC.DCOM1.AppServer.GenTxtCXC(dblcCia.text,dblcTDoc.Text,dblcSerie.text,dbeNoDoc.Text,wId_Rutadest)='OK' then
      xEnvioSunat := ''
   Else
   Begin
      ShowMessage('Archivo TXT NO se Generó');
      Exit;
   End;

{
// Resolviendo ID de Envio
   xsClave := dblcCia.Text + dblcTDoc.Text + dblcSerie.Text + dbeNoDoc.Text;

// Resolviendo último número de Envio
   xSQL := 'Select max(NUMENVFAC) NUMENVFAC '
      + '     from db2admin.FAC_FACT_ELEC '
      + '    where CODFACELE = ' + QuotedStr(xsClave);
   DMCXC.cdsQry7.Close;
   DMCXC.cdsQry7.DataRequest(xSQL);
   DMCXC.cdsQry7.Open;

// Resolviendo Tipo de Documento Sunat
   xSQL := 'Select TDOC_SUNAT '
      + '  From db2admin.TGE110 '
      + '  Where DOCID = ' + QuotedStr(dblcTDoc.Text);
   DMCXC.cdsQry8.Close;
   DMCXC.cdsQry8.DataRequest(xSQL);
   DMCXC.cdsQry8.Open;

   xTDocSunat := DMCXC.cdsQry8.FieldByName('TDOC_SUNAT').AsString;

// Resolviendo Carpeta para Archivo
   xSQL := 'Select RUTADES '
      + '  From db2admin.TGE837 '
      + '  Where APLIC = ' + QuotedStr('FAC')
      + '   And RUTAID = ' + QuotedStr(wId_Rutadest);
   DMCXC.cdsQry8.Close;
   DMCXC.cdsQry8.DataRequest(xSQL);
   DMCXC.cdsQry8.Open;

   xCarpeta := DMCXC.cdsQry8.FieldByName('RUTADES').AsString;

// Seleccionando Registros para escribir en Txt
   xSQL := 'Select NUMDETLIN, DESDETLIN '
      + '  from db2admin.FAC_FACT_ELEC '
      + '  where CODFACELE  = ' + QuotedStr(xsClave)
      + '    and NUMENVFAC  = ' + inttostr(DMCXC.cdsQry7.FieldByName('NUMENVFAC').AsInteger);
   DMCXC.cdsQry8.Close;
   DMCXC.cdsQry8.DataRequest(xSQL);
   DMCXC.cdsQry8.Open;
   DMCXC.cdsQry8.IndexFieldNames := 'NUMDETLIN';

   If DMCXC.cdsQry8.recordcount = 0 Then
   Begin
      ShowMessage('No se pudo leer correctamente la información generada para el archivo txt');
      xSigueGrab := False;
      exit;
   End;

   xsNombreTxt := xCarpeta + 'FE_' + xTDocSunat + '_' + dblcSerie.Text + '_' + dbeNoDoc.Text + '.txt';

   AssignFile(xfArchivoTexto, xsNombreTxt);
   Rewrite(xfArchivoTexto);
   DMCXC.cdsQry8.First;
   While Not DMCXC.cdsQry8.EOF Do
   Begin
      WriteLn(xfArchivoTexto, DMCXC.cdsQry8.FieldByName('DESDETLIN').AsString);
      DMCXC.cdsQry8.Next;
   End;
 //  ShowMessage('Información generada para archivo electrónico correcto');
   DMCXC.cdsQry8.IndexFieldNames := '';
   DMCXC.cdsQry8.Filter := '';
   CloseFile(xfArchivoTexto);
   xSigueGrab := False;
}
End;
// Fin HPC_201702_CXC

Procedure TFProvision.rgTDocRefClick(Sender: TObject);
Var
   xSQL, xFiltro, xTipoNC: String;
Begin
   dblcSerie.Text := '';
   dbeNoDoc.Text := '';
   // DMCXC.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   {
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := dblcSerie.Text;
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := dbeNoDoc.Text;
   }
   If rgTDocRef.ItemIndex = 0 Then
      xTipoNC := 'B'
   Else
      xTipoNC := 'F';

// Filtra la Serie de Documentos de la Cía
// Inicio HPC_201501_CXC
//   DMCXC.cdsSerie.Filter := 'CIAID=' + QuotedStr(dblcCia.Text);
//   DMCXC.cdsSerie.Filtered := True;
// Abre las Series asociadas sólo a Notas de Crédito
   xSQL := 'Select CODIGO '
      + '  from TGE004 '
      + ' where MODULOID=''CXC'' '
      + '   and NTABLA=''CXC103'' '
      + '   and USERID=' + quotedstr(DMCXC.wUsuario);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   xFiltro := '';
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      DMCXC.cdsQry.First;
      While Not DMCXC.cdsQry.Eof Do
      Begin
         If Length(xFiltro) = 0 Then
            xFiltro := 'and (SERIES.SERIEID=' + quotedstr(DMCXC.cdsQry.FieldByName('CODIGO').AsString)
         Else
            xFiltro := xFiltro + ' or SERIES.SERIEID=' + quotedstr(DMCXC.cdsQry.FieldByName('CODIGO').AsString);
         DMCXC.cdsQry.Next;
      End;
      If length(xFiltro) > 0 Then xFiltro := xFiltro + ')';
   End;

   xSQL := 'Select SERIES.CIAID, SERIES.SERIEID, SERIES.SERIEDES, SERIES.SERIEABR, '
      + '       SERIES.DOCID '
      + '  from CXC103 SERIES, '
      + '      (select DOCID from TGE110 where DOCMOD=''CXC'' and DOCTIPREG=''ND'') DOCS '
      + ' where SERIES.CIAID=' + quotedstr(dblcCia.Text)
      + '   and DOCS.DOCID=SERIES.DOCID '
      + '   and SERIES.DOCREF=' + quotedstr(xTipoNC)
      + '   and nvl(FLGACTIVO,''N'')=''S'' ';
   If length(xFiltro) > 0 Then xSQL := xSQL + xFiltro;
   DMCXC.cdsSerie.Filter := '';
   DMCXC.cdsSerie.Filtered := False;
   DMCXC.cdsSerie.Close;
   DMCXC.cdsSerie.DataRequest(xSQL);
   DMCXC.cdsSerie.Open;
   If DMCXC.cdsSerie.RecordCount=0 then
   Begin
      Showmessage('No hay series de documentos para esta Compañía');
      dblcCia.SetFocus;
      exit;
   End;
End;

Procedure TFProvision.dblcTipNDExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If length(dblcTipND.text) = 0 Then
   Begin
      dblcTipND.SetFocus;
// Inicio HPC_201701_CXC : Corregir configuración de la dinámica contable
      Raise Exception.Create('Ingrese Tipo de ND');
// Fin  HPC_201701_CXC : Corregir configuración de la dinámica contable
   End;
   edtTipoND.Text := DMCXC.cdsQry14.FieldByName('TIP_ND_DES').AsString;
End;

Procedure TFProvision.bbtnReEnviaClick(Sender: TObject);
Var
   xSQL, xImpdefault: String;
Begin
   If MessageDlg('¿Seguro de Reenviar Comprobante?', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
   Begin
      pnlImprDest.visible := True;
      SelecImpresDest;
   End;

End;

Procedure TFProvision.SelecImpresDest;
Var
   xSQL, xImpdefault: String;
Begin
//       If MessageDlg('¿Seguro de Reenviar Comprobante?', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
//       Begin
       // Resolviendo Tienda / Id Impresora
   wIP_Impresora := '';
   xSQL := 'Select TIE_ID, PVTA_ID '
      + '  From db2admin.fac206 t '
      + '  Where CIAID  = ' + QuotedStr(dblcCia.Text)
      + '   And  USERID = ' + QuotedStr(DMCXC.wUsuario);

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;

   xTienda := DMCXC.cdsQry.FieldByName('TIE_ID').AsString;
   xPVenta := DMCXC.cdsQry.FieldByName('PVTA_ID').AsString;

       // Resolviendo Impresora de Destino(Default)
   xSQL := 'Select T.IMP_ID, T.IMP_DES, T.IMP_IP, T.IMP_RUTAID '
      + '  From db2admin.FAC_FE_IMPR t, DB2ADMIN.FAC_FE_PVTA r '
      + '  Where r.CIAID   = ' + QuotedStr(dblcCia.Text)
      + '   And  r.TIE_ID  = ' + QuotedStr(xTienda)
      + '   And  r.PVTA_ID = ' + QuotedStr(xPVenta)
      + '   And  t.IMP_ID  = r.IMP_ID '
      + '   And  nvl(t.IMP_ACTIVO,''N'')=''S'' ';
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   xImpdefault := DMCXC.cdsQry.FieldByName('IMP_DES').AsString;
   wIP_Impresora := DMCXC.cdsQry.FieldByName('IMP_IP').AsString;
   wId_Rutadest := DMCXC.cdsQry.FieldByName('IMP_RUTAID').AsString;

       // Carga Todas las Impresoras de Tienda
   xSQL := 'Select R.IMP_ID, R.IMP_DES, R.IMP_IP, R.IMP_RUTAID '
      + '  From DB2ADMIN.FAC_FE_PVTA T, DB2ADMIN.FAC_FE_IMPR R  '
      + '  Where T.CIAID   = ' + QuotedStr(dblcCia.Text)
      + '   And  T.TIE_ID  = ' + QuotedStr(xTienda)
      + '   And  R.IMP_ID  = T.IMP_ID '
      + '   And  nvl(R.IMP_ACTIVO,''N'')=''S'' ';
   DMCXC.cdsQry9.Close;
   DMCXC.cdsQry9.DataRequest(xSQL);
   DMCXC.cdsQry9.Open;
   DMCXC.cdsQry9.IndexFieldNames := 'IMP_DES';
   dblcdImpDest.text := xImpdefault;

   pnlImprDest.visible := True;
         // CXC_ND_FACT_ELEC;
         // ShowMessage('Archivo fue Re-enviado a Sunat');
          //exit;
//       End;

End;

Procedure TFProvision.bbtnImpDestClick(Sender: TObject);
Begin

// Inicio HPC_201702_CXC : Cambio de operación de escritura de archivo TXT de aplicación cliente hacia la aplicación servidor CXC
          pnlImprDest.visible := False;
          If (copy(dblcSerie.Text,1,1) = 'B') or (copy(dblcSerie.Text,1,1) = 'F') Then
              CXC_ND_FACT_ELEC
          Else
          begin
              xEnvioSunat := '1';
              ShowMessage('Comprobante Manual... NO se enviará a Sunat!');
          End;

          If xSigueGrab Then
             ShowMessage(' Registro de Provisión Aceptado ');

          If xEnvioSunat <> '1' Then
             ShowMessage('Comprobante Electrónico fue Enviado a Sunat');
          exit;
End;
// Fin HPC_201702_CXC

Procedure TFProvision.dblcdImpDestExit(Sender: TObject);
Begin
   //wIP_Impresora := '';
   If DMCXC.cdsQry9.Locate('IMP_ID', dblcdImpDest.Text, [loCaseInsensitive]) Then
   Begin
      wIP_Impresora := DMCXC.cdsQry9.FieldByName('IMP_IP').AsString;
      wId_Rutadest := DMCXC.cdsQry9.FieldByName('IMP_RUTAID').AsString;
   //   xTienda       := DMCXC.cdsQry9.FieldByName('TIE_ID').AsString;
   //   xPVenta       := DMCXC.cdsQry9.FieldByName('PVTA_ID').AsString;

   End;
End;

Procedure TFProvision.bbtnImpDestCancClick(Sender: TObject);
Begin
   pnlImprDest.visible := False;
// Inicio HPC_201702_CXC : Cambio de operación de escritura de archivo TXT de aplicación cliente hacia la aplicación servidor CXC
   ShowMessage('Comprobante Electrónico NO fue Enviado a Sunat');
// Fin HPC_201702_CXC
   Exit;
End;
// Fin HPC_201702_CXC : Adecuaciones para Facturación Electrónica

// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
(*
procedure TFProvision.OnEditBuscaCli(Sender: TObject; MantFields: TFields);
begin
{
   If Not DMCXC.DCOM1.Connected Then Exit;
   Screen.Cursor := crHourGlass;
   dblcClAux.Text := MantFields.FieldByName('CLAUXID').AsString;
   dblcdClie.Text := MantFields.FieldByName('CLIEID').AsString;
   dblcdClieRuc.Text := MantFields.FieldByName('NUMDOCID').AsString;
   edtClie.Text := MantFields.FieldByName('CLIEDES').AsString;

   TMant(Sender).FMant.Close;
   If length(edtClie.Text)>0 then
      dblcTMon.SetFocus
   Else
      dblcdClieEnter(Self);

   Screen.Cursor := crDefault;
}
end;

procedure TFProvision.ToolBuscaCliCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
{
   pg := FToolBuscaCli.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   TMant(Sender).FMant.pnlBtns.Visible := True;
}
end;
*)
// Fin HPC_201801_CXC

// Inicio HPC_201801_CXC
// Asigna Código de Cliente
procedure TFProvision.dblcdClieClick(Sender: TObject);
begin
   edtClie.Enabled := False;
   dblcdClie.ReadOnly := True;
   FRegistros.BuscaMaeClientes;
end;
// Fin HPC_201801_CXC

End.

