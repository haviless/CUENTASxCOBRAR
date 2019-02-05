Unit CXC210;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, WwDbgrid, DBGrids, DB, wwSpeedButton,
   wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
   ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
   ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod,
   Wwkeycb, ppEndUsr, ppviewr, wwriched, MsgDlgs;

Type
   TFLiquidaPago = Class(TForm)
      ppdbCob: TppDBPipeline;
      ppdbCanje: TppDBPipeline;
      pprCobra: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppLine4: TppLine;
      pplblCobrador1: TppLabel;
      ppLabel12: TppLabel;
      ppLabel14: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppdbDPag: TppDBPipeline;
      ppSummaryBand4: TppSummaryBand;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLine13: TppLine;
      ppLine14: TppLine;
      pplblLetras: TppLabel;
      lblImporte: TppLabel;
      ppLabel6: TppLabel;
      ppLine5: TppLine;
      ppLabel7: TppLabel;
      ppLabel1: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppFooterBand1: TppFooterBand;
      pnlCabecera: TPanel;
      pnlCab1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      Label30: TLabel;
      Label10: TLabel;
      lblFCanje: TLabel;
      lblTCambio: TLabel;
      Label13: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      edtCanje: TwwDBEdit;
      dblcClAux: TwwDBLookupCombo;
      dblcdCobrador: TwwDBLookupComboDlg;
      dtpFEmis: TwwDBDateTimePicker;
      edtCobrador: TEdit;
      dbeTCLet: TwwDBEdit;
      bbtnOk: TBitBtn;
      bbtnBorra: TBitBtn;
      dblcZona: TwwDBLookupCombo;
      edtZona: TEdit;
      pnlDetalle: TPanel;
      pnlPie: TPanel;
      Label8: TLabel;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnRegresa: TBitBtn;
      bbtnCancela: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      pnlEstado: TPanel;
      lblAcepta: TLabel;
      lblContab: TLabel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      Label9: TLabel;
      bbtnCalc: TBitBtn;
      bbtnSumat: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      PnlFPago: TPanel;
      Z2OkDetalle: TBitBtn;
      z2CancelDetalle: TBitBtn;
      StaticText1: TStaticText;
      dblcFormPago: TwwDBLookupCombo;
      dbeNoChq: TwwDBEdit;
      dblcBancoFPago: TwwDBLookupCombo;
      edtBcoFPago: TEdit;
      edtFormPago: TEdit;
      dblcTMonC: TwwDBLookupCombo;
      edtTMonC: TEdit;
      dbeACobrar: TwwDBEdit;
      edtTCambio: TEdit;
      dbdtpFecha: TwwDBDateTimePicker;
      ppLabel2: TppLabel;
      ppDBText1: TppDBText;
      ppLabel3: TppLabel;
      pprEntrCaja: TppReport;
      ppdbpEntrCaja: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      ppDetailBand2: TppDetailBand;
      ppFooterBand2: TppFooterBand;
      ppLabel5: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel10: TppLabel;
      pplblCobrador: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLine1: TppLine;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLine2: TppLine;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLine3: TppLine;
      ppLabel34: TppLabel;
      ppdbtBancoID: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppLabel35: TppLabel;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppLine6: TppLine;
      bbtnResumen: TBitBtn;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel36: TppLabel;
      ppLabel44: TppLabel;
      pplblTotS: TppLabel;
      pplblTotd: TppLabel;
      ppLabel8: TppLabel;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLabel11: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLine15: TppLine;
      ppLine16: TppLine;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLine19: TppLine;
      ppLabel17: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      Label14: TLabel;
      dbdtpFechaCheque: TwwDBDateTimePicker;
      pnlDocCanje: TPanel;
      Label6: TLabel;
      dblcCPTO: TwwDBLookupCombo;
      pnlPendientes: TPanel;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      dbgLiqCobranza: TwwDBGrid;
      etcCobranza: TLabel;
      edtCobranza: TLabel;
      ppDBText9: TppDBText;
      pplblTitulo: TppLabel;
      ppDBText10: TppDBText;
      ppLabel13: TppLabel;
      ppLabel18: TppLabel;
      pplblTitulo1: TppLabel;
      ppDBText11: TppDBText;
      ppDBText18: TppDBText;
      ppDBText14: TppDBText;
      pplblFecha1: TppLabel;
      pplblTcambio: TppLabel;
      pnlResumen: TPanel;
      Label4: TLabel;
      Label5: TLabel;
      Label7: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      StaticText2: TStaticText;
      Button1: TButton;
      edtEFS: TwwDBEdit;
      edtEFD: TwwDBEdit;
      edtCHS: TwwDBEdit;
      edtCHD: TwwDBEdit;
      edtCHDS: TwwDBEdit;
      edtCHDD: TwwDBEdit;
      edtBOS: TwwDBEdit;
      edtBOD: TwwDBEdit;
      edtTOTS: TwwDBEdit;
      edtTOTD: TwwDBEdit;
      dblcCCB: TwwDBLookupCombo;
      Label15: TLabel;
      pnlDocumento: TPanel;
      StaticText3: TStaticText;
      bbtnCancelDocumento: TBitBtn;
      bbtnOKDocumento: TBitBtn;
      Label16: TLabel;
      dblcClauxDoc: TwwDBLookupCombo;
      lblprov: TLabel;
      dblcdClie: TwwDBLookupComboDlg;
      lblProvNom: TLabel;
      edtClie: TEdit;
      dbgLiqCobranzaIButton: TwwIButton;
      pprComposicion: TppReport;
      ppdbCabecera: TppDBPipeline;
      ppdbDetalle: TppDBPipeline;
      ppDesigner1: TppDesigner;
      pprCheBol: TppReport;
      ppdbCheBol: TppDBPipeline;
      dbgFormaPago: TwwDBGrid;
      ppdbResumen: TppDBPipeline;
      pprResumen: TppReport;
      dbgDocCobranza: TwwDBGrid;
      wwDBGrid1IButton: TwwIButton;
      Label3: TLabel;
      dblcClAuxFormaPago: TwwDBLookupCombo;
      Label20: TLabel;
      dblcClieFormaPago: TwwDBLookupComboDlg;
      edtClieFormaPago: TEdit;
      Label21: TLabel;
      dbeAgencia: TwwDBEdit;
      Label22: TLabel;
      dblcTDoc: TwwDBLookupCombo;
      edtTDoc: TEdit;
      Label23: TLabel;
      dblcSerie: TwwDBLookupCombo;
      Label24: TLabel;
      dblcdNumero: TwwDBLookupComboDlg;
      gbAnticipo: TGroupBox;
      Label17: TLabel;
      lblFComprob: TLabel;
      lblComprob: TLabel;
      Label18: TLabel;
      lblTipoOpera: TLabel;
      Label19: TLabel;
      dblcTMonAnt: TwwDBLookupCombo;
      edtTMonAnt: TEdit;
      dtpFComp: TwwDBDateTimePicker;
      dbeNoReg: TwwDBEdit;
      dbeMtoOri: TwwDBEdit;
      dblcdTipoOpera: TwwDBLookupComboDlg;
      edtTipoOpera: TEdit;
      dbePedido: TwwDBEdit;
      Label25: TLabel;
      dbeDocMtoOri: TwwDBEdit;
      Label26: TLabel;
      dbeDocSalOri: TwwDBEdit;
      dbeDocPagOri: TwwDBEdit;
      Label27: TLabel;
      bbtnBorraDetalle: TBitBtn;
      ppHeaderBand4: TppHeaderBand;
      ppLabel53: TppLabel;
      ppLabel55: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      pplblCiaCheBol: TppLabel;
      ppLabel72: TppLabel;
      ppSystemVariable10: TppSystemVariable;
      ppSystemVariable11: TppSystemVariable;
      pplblTituloCheBol: TppLabel;
      ppLabel76: TppLabel;
      pplblFechaCheBol: TppLabel;
      ppLabel78: TppLabel;
      ppLabel68: TppLabel;
      pplblCobradorCheBol: TppLabel;
      ppLabel57: TppLabel;
      ppLabel67: TppLabel;
      ppLabel71: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppSystemVariable12: TppSystemVariable;
      ppDetailBand5: TppDetailBand;
      ppDBText32: TppDBText;
      ppDBText34: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppDBText37: TppDBText;
      ppDBText33: TppDBText;
      ppFooterBand4: TppFooterBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppDBText39: TppDBText;
      ppDBText38: TppDBText;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppLabel87: TppLabel;
      ppDBText41: TppDBText;
      ppDBText42: TppDBText;
      ppDBCalc7: TppDBCalc;
      ppDBText40: TppDBText;
      ppHeaderBand3: TppHeaderBand;
      ppLabel4: TppLabel;
      ppLabel9: TppLabel;
      ppLabel20: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel50: TppLabel;
      ppLabel52: TppLabel;
      lblCIA: TppLabel;
      ppLabel54: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable8: TppSystemVariable;
      lblTituloCobranza: TppLabel;
      ppLabel56: TppLabel;
      lblFecha: TppLabel;
      ppLabel58: TppLabel;
      ppSystemVariable9: TppSystemVariable;
      pplblCobradorComposion: TppLabel;
      ppLabel49: TppLabel;
      ppLabel19: TppLabel;
      ppLabel75: TppLabel;
      ppLabel77: TppLabel;
      ppLabel84: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText7: TppDBText;
      ppDBText21: TppDBText;
      ppDBText23: TppDBText;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppDetailBand4: TppDetailBand;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText43: TppDBText;
      ppDBText22: TppDBText;
      ppDBText47: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc5: TppDBCalc;
      ppLabel51: TppLabel;
      ppLabel83: TppLabel;
      ppDBCalc12: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBText8: TppDBText;
      ppFooterBand3: TppFooterBand;
      ppSummaryBand2: TppSummaryBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText20: TppDBText;
      ppDBText29: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppDBCalc8: TppDBCalc;
      ppDBText31: TppDBText;
      ppLabel82: TppLabel;
      ppDBText30: TppDBText;
      ppDBText19: TppDBText;
      ppDBCalc13: TppDBCalc;
      ppHeaderBand5: TppHeaderBand;
      ppLabel59: TppLabel;
      pplblCia2: TppLabel;
      ppLabel61: TppLabel;
      ppSystemVariable13: TppSystemVariable;
      ppSystemVariable14: TppSystemVariable;
      pplblLiq2: TppLabel;
      ppLabel63: TppLabel;
      pplblFecha2: TppLabel;
      ppSystemVariable15: TppSystemVariable;
      pplblCob2: TppLabel;
      ppLabel60: TppLabel;
      ppLabel62: TppLabel;
      ppLabel64: TppLabel;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppDetailBand6: TppDetailBand;
      ppDBText24: TppDBText;
      ppDBText44: TppDBText;
      ppDBText45: TppDBText;
      ppFooterBand5: TppFooterBand;
      ppSummaryBand3: TppSummaryBand;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppDBText46: TppDBText;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnBasuraDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnSumatClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure dtpFEmisExit(Sender: TObject);
      Procedure dbeTCLetExit(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgPendientesDragOver2(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgPendientesEndDrag2(Sender, Target: TObject; X,
         Y: Integer);
      Procedure dbgPendientesMouseDown2(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure ppvTMonCalc(Sender: TObject; Var Value: Variant);
      Procedure ppVariable2Calc(Sender: TObject; Var Value: Variant);
      Procedure pprLetrasPrintingComplete(Sender: TObject);
      Procedure Z2bbtnImprimeClick(Sender: TObject);
      Procedure dblcdClieEnter(Sender: TObject);
      Procedure dblcdClieRucEnter(Sender: TObject);
      Procedure ppvCptoCalc(Sender: TObject; Var Value: Variant);
      Procedure dbgbtnRegClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure ppvTMCalc(Sender: TObject; Var Value: Variant);
      Procedure dblcCPTOExit(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure ppHeaderBand1BeforeGenerate(Sender: TObject);
      Procedure ppDBText14Print(Sender: TObject);
      Procedure dblcdCobradorExit(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcZonaExit(Sender: TObject);
      Procedure dbgLiqCobranzaDragOver(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgLiqCobranzaMouseDown(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure dbgLiqCobranzaEndDrag(Sender, Target: TObject; X,
         Y: Integer);
      Procedure Z2OkDetalleClick(Sender: TObject);
      Procedure z2CancelDetalleClick(Sender: TObject);
      Procedure dblcFormPagoExit(Sender: TObject);
      Procedure dblcBancoFPagoExit(Sender: TObject);
      Procedure dbeNoChqExit(Sender: TObject);
      Procedure dblcTMonCExit(Sender: TObject);
      Procedure edtTCambioExit(Sender: TObject);
      Procedure dbdtpFechaExit(Sender: TObject);
      Procedure ppVarMonAbrCalc(Sender: TObject; Var Value: Variant);
      Procedure ppVarMonPagCalc(Sender: TObject; Var Value: Variant);
      Procedure MonedaExt(Sender: TObject; Var Value: Variant);
      Procedure bbtnResumenClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure ppVariable4Calc(Sender: TObject; Var Value: Variant);
      Procedure dblcNotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure PageControl1Change(Sender: TObject);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdTipoOperaExit(Sender: TObject);
      Procedure bbtnCancelDocumentoClick(Sender: TObject);
      Procedure dblcClauxDocExit(Sender: TObject);
      Procedure bbtnOKDocumentoClick(Sender: TObject);
      Procedure dblcTMonAntExit(Sender: TObject);
      Procedure dbgLiqCobranzaKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgLiqCobranzaDblClick(Sender: TObject);
      Procedure CreaReporte(Sender: TObject);
      Procedure wwDBGrid1IButtonClick(Sender: TObject);
      Procedure dblcCCBExit(Sender: TObject);
      Procedure dblcClAuxFormaPagoExit(Sender: TObject);
      Procedure dblcClieFormaPagoExit(Sender: TObject);
      Procedure dbdtpFechaChequeExit(Sender: TObject);
      Procedure dblcClieFormaPagoDropDown(Sender: TObject);
      Procedure dbgDocCobranzaDblClick(Sender: TObject);
      Procedure dbgDocCobranzaKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgLiqCobranzaIButtonClick(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcdClieDropDown(Sender: TObject);
      Procedure dblcdNumeroEnter(Sender: TObject);
      Procedure dblcdNumeroExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure dbeDocPagOriExit(Sender: TObject);
   Private
    { Private declarations }
      xmoneda: String;
      xmonedaR: String;
      xdiferencia: bool;
      sTDocCh, sFPagCh, sTDiario: String;
      sCartera, sOficina: String;
      sChEnCob: String;
      cadAnt: String;
      sKeyCNum: String;
      Procedure InsertaCheques;
   Public
    { Public declarations }
      xxTotalLoc, xxTotalExt: Double;
      xxTotalLocL, xxTotalExtL: Double;
      xxTFPagoLoc, xxTFPagoExt: Double;
      Procedure InsertaConsolidado;
      Procedure InicializaPies;
      Procedure FiltraCanje(xModo: String);
      Procedure InicializaDatos;
      Procedure InicializaClientDataSet;
      Procedure ActualizaSaldosMovCxP;
      Procedure ActualizaPagadoMovCxP;
      Procedure ActualizaDocumentosEncargados;

      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure InsertaCanjes(xxCds: TwwClientDataSet);
      Function VerificaTotal: Boolean;
      Function ValidaCabecera: Boolean;
      Function ExisteMovCxC(xxCia, xxDocid, xxCCNodoc, xxCCSerie, xxClieid: String): Boolean;
      Procedure InsertaPago;
      Function WhereAnticipo: String;
      Procedure LlenaDetCxC;
      Procedure ActualizaDocumentoSuma;
      Procedure ActualizaDocumentoResta;
      Procedure VerificaMontos;
   End;

Var
   wAno, wMes, wDia: Word;
   sPe: String;
   FLiquidaPago: TFLiquidaPago;
   xNDTDiario: String;
   xSQL: String;
   xTAutoNum: String;
   xCtaDif, xGloDif, xCptoDif: String;
   xGlosa, xLote, xCuenta, xConcepto, xDH: String;
   xDifCam, xPagAnt, xDifCLoc, xDifCExt: Double;
   xTotLoc, xTotExt, xAboLoc, xAboExt: Double;
   xxTCambio: Double;
   wModoAnt: String;
   xxTCambioAnt: Double;
   xCrea: Boolean;
   xFlagGr: Boolean;
   sWhereDocs, xModoL: String;
   xFlagP: Boolean;
   xZonaAnt, xSectorAnt: String;

Implementation

Uses CxCDM, CxC001, CxC205, CxC206, CxC006;

{$R *.DFM}

Procedure TFLiquidaPago.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   dblcCia.Enabled := False;
   dblcZona.Enabled := False;
  //dblcTMon.Enabled      := False;
   dblcdCobrador.Enabled := False;
   dblcClAux.Enabled := False;
   dtpFEmis.Enabled := False;
   edtCanje.Enabled := False;

   pnlCab1.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgLiqCobranza.Enabled := False;

   pnlPie.Refresh;
   pnlPie.Enabled := False;
   bbtnRegresa.Enabled := False;
   bbtnCancela.Enabled := False;
   Z2bbtnGraba.Enabled := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled := False;
   Z2bbtnImprime.Enabled := False;
   Z2bbtnNuevo.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;

   // XXMODO    0 CABECERA
   //           1 DETALLE
   If xxModo = 0 Then
   Begin
         // EN MODO DE INSERTCION
      If xMovEstado = ' ' Then
      Begin
         pnlCab1.Enabled := True;
         dblcCia.Enabled := True;
         dblcZona.Enabled := True;
      //dblcTMon.Enabled      := True;
         dblcdCobrador.Enabled := True;
         dblcClAux.Enabled := True;
         dtpFEmis.Enabled := True;
         dblcZona.Enabled := True;
         edtCanje.Enabled := False;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcCia.SetFocus;
      End;

         // EN MODO DE INSERCION
      If xMovEstado = 'X' Then
      Begin
         pnlCab1.Enabled := True;

         dblcCia.Enabled := True;
         dblcClAux.Enabled := True;
         dblcdCobrador.Enabled := True;
         dtpFEmis.Enabled := True;
         dblcZona.Enabled := True;
      //dblcTMon.Enabled      := True;
//           edtCanje.Enabled   := False;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcCia.SetFocus;

         pnlDetalle.Enabled := False;

         dbgLiqCobranza.Enabled := False;

         pnlPie.Enabled := False;
         lblActivo.Visible := True;

//            dblcClAux.SetFocus;
      End;

         //CUANDO SE GRABO
      If xMovEstado = 'I' Then
      Begin
//            pnlCab2.Enabled    := True;
         pnlCab1.Enabled := True;
         pnlDetalle.Enabled := False;
         dbgLiqCobranza.Enabled := True;

         pnlPie.Enabled := True;
         bbtnRegresa.Enabled := False;
         bbtnCancela.Enabled := True;
         Z2bbtnGraba.Enabled := True;
         Z2bbtnImprime.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         lblActivo.Visible := True;
//            dblcTMon.SetFocus;
      End;
   End //DEL IF PRINCIPAL
   // EN EL DETALLE
   Else
   Begin
      If xMovConta = 'S' Then
      Begin
         pnlDetalle.Enabled := True;

         lblContab.Visible := True;
      End
      Else
      Begin
         If xMovEstado = 'X' Then
         Begin
            pnlCab1.enabled := False;
            pnlDetalle.Enabled := True;
            dbgLiqCobranza.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            lblActivo.Visible := True;
         End;
         If xMovEstado = 'I' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgLiqCobranza.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := False;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            lblActivo.Visible := True;
         End;
         If xMovEstado = 'P' Then
         Begin

            pnlCab1.enabled := False;
            pnlDetalle.Enabled := True;
            dbgLiqCobranza.Enabled := True;
            //dbgLiqCobranza.ReadOnly:= True;

            pnlPie.Enabled := True;
            Z2bbtnAnula.Enabled := False;
            Z2bbtnImprime.Enabled := True;
            bbtnRegresa.Enabled := False;
            bbtnCancela.Enabled := False;
            Z2bbtnAcepta.Enabled := False;
            If DM1.wModo = 'A' Then
               Z2bbtnNuevo.enabled := True
            Else
               Z2bbtnNuevo.enabled := False;
            lblAcepta.Visible := True;
            lblActivo.Visible := False;
         End;
         If xMovEstado = 'C' Then
         Begin
            pnlDetalle.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;

            pnlPie.Enabled := True;

            lblAnula.Visible := True;
         End;
      End;
   End;

   If DM1.wModo = 'A' Then
   Begin
      Z2bbtnNuevo.Enabled := True;
   End;

   If DM1.wModo = 'C' Then
   Begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled := False;
//      pnlCab2.Enabled      := False;

      bbtnOK.Enabled := False;
      bbtnBorra.Enabled := False;

      dbgLiqCobranza.Enabled := False;

      pnlPie.Refresh;
      pnlPie.Enabled := False;
      bbtnRegresa.Enabled := False;
      bbtnCancela.Enabled := False;
      Z2bbtnGraba.Enabled := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled := False;
      Z2bbtnImprime.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
End;

Procedure TFLiquidaPago.InicializaPies;
Begin
End;

Procedure TFLiquidaPago.InicializaDatos;
Begin
   xFlagGr := false;

   dblcCia.Text := '';
   edtCia.Text := '';
   dblcClAux.text := '';
   dblcdCobrador.text := '';
   edtCobrador.text := '';
   dtpFEmis.Date := dateS;
   dblcZona.text := '';
   edtZona.text := '';
   dbeTCLet.text := '';
   edtCanje.Text := '(Nuevo)';
  //dblcTMon.text     :='';
  //edtTMon.text      := '';
End;

Procedure TFLiquidaPago.InicializaClientDataSet;
Var
   sSQL, sWhere: String;
Begin

   Filtracds(DM1.cdsDocCobranza, ' Select * ' +
      ' from CXC324 Where CIAID=''CLG'' ');
   DM1.cdsDocCobranza.EmptyDataSet;

   Filtracds(DM1.cdsDLiqCob1, ' Select * ' +
      ' from CXC319 Where CIAID=''CLG'' ');
   DM1.cdsDLiqCob1.EmptyDataSet;
   dbgLiqCobranza.RedrawGrid;

   Filtracds(DM1.cdsDetCanje, 'Select ' +
      ' CCCANJE,CCFCANJE,CCNODOC,CCNODOC2,CCNOREG,CCSERIE,CCSERIE2,CIAID,CJEANTME,CJEANTMN, ' +
      ' CLIEID,CLIERUC,DCCAAAA,DCCAASEM,DCCAASS,DCCAATRI,DCCANOMM,DCCDD,DCCFREG,DCCHREG,DCCMM, ' +
      ' DCCMTOEXT,DCCMTOLOC,DCCMTOORI,DCCSEM,DCCSS,DCCTCAMB,DCCTRI,DCCUSER,DOCID,DOCID2,FLAGVAR, ' +
      ' SALEXT,SALLOC,TCANJEID,TMONID ' +
      ' from CXC305 Where CIAID=''CLG''');
   DM1.cdsDetCanje.EmptyDataSet;

   Filtracds(DM1.cdsCobrador, 'Select ' +
      ' CIAID,COCONS,COCUENTA,COFLAG,COFLCOM,COID, ' +
      ' CONOMBRES,COPORC,COTELF,COTIPO,CVTAID ' +
      ' from CXC206');
End;

Procedure TFLiquidaPago.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   If (DM1.cdsDLiqCob1.Modified) Or (DM1.cdsDLiqCob1.ChangeCount > 0) Then
   Begin
      Raise Exception.Create('Se perderán registros sin grabar.' + #13 + 'Grabe su planilla o elimine el detalle');
   End;

   ppdbCabecera.DataSource := Nil;
   ppdbDetalle.DataSource := Nil;
   ppdbCheBol.DataSource := Nil;
   ppdbResumen.DataSource := Nil;

   DM1.cdsQry4.MasterSource := Nil;
   DM1.cdsQry4.MasterFields := '';
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry5.IndexFieldNames := '';
   DM1.cdsMovCxC2.IndexFieldNames := '';

   DM1.cdsBanco.Filter := '';
   DM1.cdsBanco.Filtered := False;

   // Cancela todas las modificaciones en los cds.
   DM1.cdsDLiqCob1.CancelUpdates;
   DM1.cdsDocCobranza.CancelUpdates;
  //   DM1.cdsDPag.CancelUpdates;

   If (DM1.wModo = 'A') And (xFlagGr) Then
   Begin
      If DM1.cdsDocCobranza.RecordCount = 0 Then
      Begin
         DM1.cdsCLiqCob1.Delete;
         DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
      End
   End
   Else
   Begin
      DM1.cdsCLiqCob1.CancelUpdates;
   End;
  // Eliminar Filtros
   DM1.cdsDLiqCob.Filtered := False;
   DM1.cdsDLiqCobClone.Filtered := False;
   DM1.cdsTMon.Filtered := False;
End;

Procedure TFLiquidaPago.FiltraCanje(xModo: String);
Var
   xSelDoc, sCartera, sSQL: String;
Begin
//CLG : 26/02/2002
{	 sSQL:=' SELECT CXC317.*,TGE110.DOCABR,TGE103.TMONABR FROM CXC317 '+
     ' LEFT JOIN TGE103 ON CXC317.TMONID=TGE103.TMONID '+
     ' LEFT JOIN TGE110 ON TGE110.DOCID=CXC317.DOCID and TGE110.DOCMOD=''CXC'' WHERE ';

  Filtracds( DM1.cdsDLiqCob, sSQL
            + ' CXC317.CIAID='   +''''+dblcCia.Text +''''+' and '
            + ' CXC317.CLAUXID=' +''''+dblcClAux.text+''''+' and '
            + ' CXC317.TVTAID=' +''''+dblcZona.text+''''+' and '
            + ' CXC317.COID=' +''''+dblcdCobrador.text+'''');

  sSQL:=' SELECT * FROM CXC317 WHERE ';

  Filtracds( DM1.cdsDLiqCobClone, sSQL
            + ' CXC317.CIAID='   +''''+dblcCia.Text +''''+' and '
            + ' CXC317.CLAUXID=' +''''+dblcClAux.text+''''+' and '
            + ' CXC317.TVTAID=' +''''+dblcZona.text+''''+' and '
            + ' CXC317.COID=' +''''+dblcdCobrador.text+'''');
  DM1.cdsDLiqCobClone.IndexFieldNames:='CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';

 dbgDocCanje.Selected.Clear;
 dbgDocCanje.Selected.Add('DOCABR'#9'5'#9'Doc.'#9'F');
 dbgDocCanje.Selected.Add('CCSERIE'#9'5'#9'Serie'#9'F');
 dbgDocCanje.Selected.Add('CCNODOC'#9'17'#9'No.Documento'#9'F');
 dbgDocCanje.Selected.Add('CLIEID'#9'11'#9'Cliente'#9'F');
 dbgDocCanje.Selected.Add('CLIEDES'#9'27'#9'Nombre'#9'F');
 dbgDocCanje.Selected.Add('TMONABR'#9'9'#9'Tipo de~Moneda'#9'F');
 dbgDocCanje.Selected.Add('LICOMTOORI'#9'12'#9'Importe'#9'F');
 dbgDocCanje.Selected.Add('LICOMTOABOEXT'#9'12'#9'Pagado~Mon.Ext.'#9'F');
 dbgDocCanje.Selected.Add('LICOSALEXT'#9'12'#9'Saldo~Mon.Ext.'#9'F');
 dbgDocCanje.Selected.Add('LICOMTOABOLOC'#9'12'#9'Pagado~Mon.Loc.'#9'F');
 dbgDocCanje.Selected.Add('LICOSALLOC'#9'12'#9'Saldo~Mon.Loc.'#9'F');

 dbgDocCanje.RedrawGrid;}

   DM1.cdsDLiqCob.Filtered := False;
   DM1.cdsDLiqCob.Filter := '';
   DM1.cdsDLiqCob.Filter := ' FLAGVAR<>' + '''' + 'XX' + '''';
   DM1.cdsDLiqCob.Filtered := True;

   DM1.cdsDLiqCobClone.Filtered := False;
   DM1.cdsDLiqCobClone.Filter := '';
   DM1.cdsDLiqCobClone.Filter := ' FLAGVAR<>' + '''' + 'XX' + '''';
   DM1.cdsDLiqCobClone.Filtered := True;

   Filtracds(DM1.cdsDLiqCob1, ' Select * FROM CXC319 WHERE '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');

   dbgLiqCobranza.Selected.Clear;
   dbgLiqCobranza.Selected.Add('DOCID'#9'2'#9'Doc.'#9'F');
   dbgLiqCobranza.Selected.Add('CCSERIE'#9'4'#9'Serie'#9'F');
   dbgLiqCobranza.Selected.Add('CCNODOC'#9'8'#9'No.Documento'#9'F');
   dbgLiqCobranza.Selected.Add('CLIEDES'#9'40'#9'Cliente'#9'F');
   dbgLiqCobranza.Selected.Add('TMONID'#9'9'#9'Tipo de~Moneda'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOEXT'#9'11'#9'Mon. Ext.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOABOEXT'#9'11'#9'Monto a~ pagar Ext.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOSALEXT'#9'11'#9'Saldo~Mon.Ext.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOLOC'#9'11'#9'Mon. Loc.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOABOLOC'#9'11'#9'Monto a~ pagar Loc.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOSALLOC'#9'11'#9'Saldo~Mon.Loc.'#9'F');
   dbgLiqCobranza.RedrawGrid;

   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT')).displayFormat := '###,###,###0.00';

   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALORI')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT')).EditFormat := '#########0.00';

   Filtracds(DM1.cdsDocCobranza, 'SELECT * FROM CXC324 WHERE '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''');

   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOORI')).displayFormat := '#########0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOLOC')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOEXT')).EditFormat := '#########0.00';

   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI')).displayFormat := '#########0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT')).EditFormat := '#########0.00';

   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOSALORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOSALORI')).displayFormat := '#########0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOSALLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOSALEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOSALLOC')).EditFormat := '#########0.00';
   TNumericField(DM1.cdsDocCobranza.FieldByName('LICOSALEXT')).EditFormat := '#########0.00';

   dbgDocCobranza.Selected.Clear;
   dbgDocCobranza.Selected.Add('CIAID'#9'2'#9'Cia'#9'F');
   dbgDocCobranza.Selected.Add('LICOID'#9'10'#9'Lico'#9'F');
   dbgDocCobranza.Selected.Add('LICOITEM'#9'2'#9'Item'#9'F');
   dbgDocCobranza.Selected.Add('FPAGODES'#9'10'#9'Forma~de Pago'#9'F');
   dbgDocCobranza.Selected.Add('TMONID'#9'4'#9'Moneda'#9'F');
   dbgDocCobranza.Selected.Add('LICOMTOEXT'#9'12'#9'Monto~Extranjero'#9'F');
   dbgDocCobranza.Selected.Add('LICOMTOABOEXT'#9'12'#9'Pagado~Extranjero'#9'F');
   dbgDocCobranza.Selected.Add('LICOSALEXT'#9'12'#9'Saldo~Extranjero'#9'F');
   dbgDocCobranza.Selected.Add('LICOMTOLOC'#9'12'#9'Monto~Local'#9'F');
   dbgDocCobranza.Selected.Add('LICOMTOABOLOC'#9'12'#9'Pagado~Local'#9'F');
   dbgDocCobranza.Selected.Add('LICOSALLOC'#9'12'#9'Saldo~Local'#9'F');

   dbgDocCobranza.Selected.Add('BANCODES'#9'18'#9'Banco'#9'F');
   dbgDocCobranza.Selected.Add('LICONOCHQ'#9'12'#9'Cheque/Boleta'#9'F');
   dbgDocCobranza.Selected.Add('LICOTCAMB'#9'8'#9'Tipo de~Cambio'#9'F');
   dbgDocCobranza.Selected.Add('FECPAGO'#9'12'#9'Fecha de~Pago'#9'F');
   dbgDocCobranza.RedrawGrid;

   Filtracds(DM1.cdsDetCanje, 'Select ' +
      ' CCCANJE,CCFCANJE,CCNODOC,CCNODOC2,CCNOREG,CCSERIE,CCSERIE2,CIAID,CJEANTME,CJEANTMN, ' +
      ' CLIEID,CLIERUC,DCCAAAA,DCCAASEM,DCCAASS,DCCAATRI,DCCANOMM,DCCDD,DCCFREG,DCCHREG,DCCMM, ' +
      ' DCCMTOEXT,DCCMTOLOC,DCCMTOORI,DCCSEM,DCCSS,DCCTCAMB,DCCTRI,DCCUSER,DOCID,DOCID2,FLAGVAR, ' +
      ' SALEXT,SALLOC,TCANJEID,TMONID ' +
      ' from CXC305 Where CIAID=''CLG''');
   DM1.cdsDetCanje.EmptyDataSet;

   DM1.cdsDocCobranza.IndexFieldNames := 'CIAID;LICOID;FPAGOID;LICOITEM';
   DM1.cdsDLiqCob1.IndexFieldNames := 'CIAID;LICOID;FPAGOID;LICOITEM';
   DM1.cdsDLiqCob1.MasterSource := DM1.dsDocCobranza;
   DM1.cdsDLiqCob1.MasterFields := 'CIAID;LICOID;FPAGOID;LICOITEM';

   If DM1.wModo = 'A' Then
   Begin
      DM1.cdsMovCxC.Close;
      DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
         + 'CIAID=' + QuotedStr('CLG') + ' AND '
         + 'DOCID=' + QuotedStr(DM1.wsAnt));
      DM1.cdsMovCxC.Open;
      DM1.cdsMovCxC.EmptyDataSet;
   End
   Else
   Begin
      cadAnt := WhereAnticipo;
      DM1.cdsMovCxC.Close;
      DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
         + cadAnt);
      DM1.cdsMovCxC.Open;
   End;
   Filtracds(DM1.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + '''' + 'CLG' + '''' + ' and '
      + 'CLIEID=' + '''' + 'CLG' + '''' + ' and '
      + 'DOCID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCSERIE=' + '''' + 'CLG' + '''' + ' and '
      + 'CCNODOC=' + '''' + 'CLG' + '''');

End;

Procedure TFLiquidaPago.bbtnBasuraDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Function TFLiquidaPago.ValidaCabecera: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then Raise exception.Create('Falta Código de Compañía');
   If length(edtCia.Text) = 0 Then Raise exception.Create('Código de Compañía Errado');
   If length(edtCanje.Text) = 0 Then Raise exception.Create('Falta No. de Canje');
   If length(dblcClAux.Text) = 0 Then Raise exception.Create('Falta Registrar Clase de Auxiliar');
   If length(dblcdCobrador.Text) = 0 Then Raise exception.Create('Falta Registrar Cobrador');
   If length(edtCobrador.Text) = 0 Then Raise exception.Create('Cobrador Errado');
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
//   if length(dblcTMon.Text)=0  then     raise exception.Create('Falta Tipo de Moneda');
//	 if length(edtTMon.Text)=0   then     raise exception.Create('Código de Moneda Errado');
   If length(dbeTCLet.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   Result := true;
End;

Function TFLiquidaPago.ExisteMovCxC(xxCia, xxDocid, xxCCNodoc, xxCCSerie, xxClieid: String): Boolean;
Begin
   DM1.cdsMovCxC2.Setkey;
   DM1.cdsMovCxC2.FieldByName('CIAID').AsString := xxCia;
   DM1.cdsMovCxC2.FieldByName('DOCID').AsString := xxDocid;
   DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := xxCCnodoc;
   DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := xxCCSerie;
   DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := xxClieid;

{   DM1.cdsMovCxC2.FieldByName('CIAID').AsString    := xxCia;
   DM1.cdsMovCxC2.FieldByName('TDIARID').AsString  := xxTDiario;
   DM1.cdsMovCxC2.FieldByName('CCANOMES').AsString := xxAAMM;
   DM1.cdsMovCxC2.FieldByName('CCNOREG').AsString  := xxNoReg;
  }If DM1.cdsMovCxC2.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Procedure TFLiquidaPago.bbtnOkClick(Sender: TObject);
Var
   xWhere: String;
Begin
   DM1.xFlagCal := True;

   If Not ValidaCabecera Then Exit; // Valida Datos Cabecera

//   if DM1.wModo='A' then
   Begin
      FiltraCanje(DM1.wModo);
      dbgLiqCobranza.RedrawGrid;
   End;

   If DM1.wModo = 'A' Then
   Begin

      DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
      sPe := InttoStr(wAno) + StrZero(IntToStr(wMes), 2);

      If length(edtCia.Text) > 0 Then
      Begin
    //determina último número de registro incrementado en 1
         xWhere := ' CIAID=' + QuotedStr(dblcCia.Text);
         edtCanje.Text := StrZero(DM1.BuscaUltTGE('dspTGE', 'CXC318', 'LICOID', xWhere), 6);
      End;
      edtCobranza.Caption := 'Cobranza' + ' ' + edtCanje.text;
      If BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
      Begin
         DM1.cdsCLiqCob1.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
         DM1.cdsCLiqCob1.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
         DM1.cdsCLiqCob1.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
         DM1.cdsCLiqCob1.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
         DM1.cdsCLiqCob1.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
         DM1.cdsCLiqCob1.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
         DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
         DM1.cdsCLiqCob1.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
         DM1.cdsCLiqCob1.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
         DM1.cdsCLiqCob1.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
      End;

      DM1.cdsCLiqCob1.FieldByName('CIAID').ASString := dblcCia.Text;
      DM1.cdsCLiqCob1.FieldByName('CLAUXID').ASString := dblcClAux.Text;
      DM1.cdsCLiqCob1.FieldByName('COID').ASString := dblcdCobrador.Text;
      DM1.cdsCLiqCob1.FieldByName('CCONOMBRES').ASString := edtCobrador.Text;
      DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime := dtpFEmis.Date;
      DM1.cdsCLiqCob1.FieldByName('LICOID').AsString := edtCanje.Text;
      DM1.cdsCLiqCob1.FieldByName('LICOUSER').AsString := DM1.wUsuario;
      DM1.cdsCLiqCob1.FieldByName('LICOFREG').AsDateTime := DateS;
      DM1.cdsCLiqCob1.FieldByName('LICOHREG').AsDateTime := TimeS;
      DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'X';
      DM1.cdsCLiqCob1.FieldByName('TVTAID').AsString := dblcZona.text;
      DM1.cdsCLiqCob1.FieldByName('LICOTCAMB').AsFloat := xxTCambio;
      DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
      DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
   End;
   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   xFlagGr := True;
End;

Procedure TFLiquidaPago.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
   State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiquidaPago.bbtnSumatClick(Sender: TObject);
Var
   xTORILoc, xTORIExt, xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xxTotal: Double;
   xTSalLocL, xTSalExtL, xTPagLocL, xTPagExtL, xxTotalL: Double;
   xTFPagoLoc, xTFPagoExt: Double;
   sCond: String;
Begin
//   xTPagLoc := OperClientDataSet( DM1.cdsDPag,'SUM('+'NCOMTOLOC'+')','');
//   xTPagExt := OperClientDataSet( DM1.cdsDPag,'SUM('+'NCOMTOEXT'+')','');
//   dbgPago.ColumnByName('NCOMtoLoc').FooterValue:=floattostrf(xTPagLoc, ffNumber, 10, 2);
//   dbgPago.ColumnByName('NCOMtoExt').FooterValue:=floattostrf(xTPagExt, ffNumber, 10, 2);

   xTORILoc := OperClientDataSet(DM1.cdsDocCobranza, 'SUM(' + 'LICOMTOLOC' + ')', '');
   xTORIExt := OperClientDataSet(DM1.cdsDocCobranza, 'SUM(' + 'LICOMTOEXT' + ')', '');
   xTSalLoc := OperClientDataSet(DM1.cdsDocCobranza, 'SUM(' + 'LICOSALLOC' + ')', '');
   xTSalExt := OperClientDataSet(DM1.cdsDocCobranza, 'SUM(' + 'LICOSALEXT' + ')', '');
   xTPagLoc := OperClientDataSet(DM1.cdsDocCobranza, 'SUM(' + 'LICOMTOABOLOC' + ')', '');
   xTPagExt := OperClientDataSet(DM1.cdsDocCobranza, 'SUM(' + 'LICOMTOABOEXT' + ')', '');

   xTOriLoc := FRound(xTOriLoc, 15, 2);
   xTOriExt := FRound(xTOriExt, 15, 2);
   xTSalLoc := FRound(xTSalLoc, 15, 2);
   xTSalExt := FRound(xTSalExt, 15, 2);
   xTPagLoc := FRound(xTPagLoc, 15, 2);
   xTPagExt := FRound(xTPagExt, 15, 2);

   xTotLoc := xTOriLoc;
   xTotExt := xTOriExt;
   xAboLoc := xTPagLoc;
   xAboExt := xTPagExt;

   dbgDocCobranza.ColumnByName('LICOMTOLOC').FooterValue := floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCobranza.ColumnByName('LICOMTOEXT').FooterValue := floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCobranza.ColumnByName('LICOMTOABOLOC').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCobranza.ColumnByName('LICOMTOABOEXT').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);
   dbgDocCobranza.ColumnByName('LICOSALLOC').FooterValue := floattostrf(xTSALLoc, ffNumber, 10, 2);
   dbgDocCobranza.ColumnByName('LICOSALEXT').FooterValue := floattostrf(xTSALExt, ffNumber, 10, 2);
   dbgDocCobranza.RedrawGrid;
  {	 xxTotalLoc:= xTPagLoc;
  xxTotalExt:= xTPagExt;

  If DM1.cdsCLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonLoc then
   xxTotal := xTPagLoc
  else begin
   xxTotal := xTPagExt;
  end;}

   xTOriLoc := OperClientDataSet1(DM1.cdsDLiqCob1, 'SUM(' + 'LICOMTOLOC' + ')', '');
   xTOriExt := OperClientDataSet1(DM1.cdsDLiqCob1, 'SUM(' + 'LICOMTOEXT' + ')', '');
   xTSalLocL := OperClientDataSet1(DM1.cdsDLiqCob1, 'SUM(' + 'LICOSALLOC' + ')', '');
   xTSalExtL := OperClientDataSet1(DM1.cdsDLiqCob1, 'SUM(' + 'LICOSALEXT' + ')', '');
   xTPagLocL := OperClientDataSet1(DM1.cdsDLiqCob1, 'SUM(' + 'LICOMTOABOLOC' + ')', '');
   xTPagExtL := OperClientDataSet1(DM1.cdsDLiqCob1, 'SUM(' + 'LICOMTOABOEXT' + ')', '');

   xxTotalLoc := xTSalLocL;
   xxTotalExt := xTSalExtL;

   xxTotalLocL := xTPagLocL;
   xxTotalExtL := xTPagExtL;

   dbgLiqCobranza.ColumnByName('LICOMTOLOC').FooterValue := floattostrf(xTOriLoc, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOMTOEXT').FooterValue := floattostrf(xTOriExt, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOSALLOC').FooterValue := floattostrf(xTSalLocL, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOSALEXT').FooterValue := floattostrf(xTSalExtL, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOMTOABOLOC').FooterValue := floattostrf(xTPagLocL, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOMTOABOEXT').FooterValue := floattostrf(xTPagExtL, ffNumber, 10, 2);

   If DM1.cdsCLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      xxTotalL := xTPagLocL
   Else
   Begin
      xxTotalL := xTPagExtL;
   End;

   xxTFPagoExt := xTFPagoExt;
   xxTFPagoLoc := xTFPagoLoc;
End;

Procedure TFLiquidaPago.Z2bbtnGrabaClick(Sender: TObject);
Var
   xmoneda, xWhere: String;
   xentero: integer;
Begin
{   if DM1.cdsDLiqCob1.RecordCount=0 then
   Raise exception.Create('Falta Cargar Documentos');}

{   if not VerificaTotal then
  begin
   ShowMessage('Diferencias entre Documentos a Cobrar y Pagos');
   if xdiferencia then
   begin
     ShowMessage('El monto a pagar es mayor que el monto a cobrar');
     exit;
   end;
  end; }

   bbtnSumatClick(Sender);

//   ActualizaSaldosMovCxP;
   DM1.cdsCLiqCob1.Edit;
   If DM1.cdsCLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      DM1.cdsCLiqCob1.FieldByName('LICOMTOORI').AsFloat := xxTotalLocL
   Else
   Begin
      DM1.cdsCLiqCob1.FieldByName('LICOMTOORI').AsFloat := xxTotalExtL;
   End;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat := xxTotalLocL;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat := xxTotalExtL;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xxTotalLoc;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xxTotalExt;
   DM1.cdsCLiqCob1.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsCLiqCob1.FieldByName('LICOFREG').AsDateTime := dateS;
   DM1.cdsCLiqCob1.FieldByName('LICOHREG').AsDateTime := TimeS;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'I';

   DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
//   DM1.AplicaDatos(DM1.cdsDLiqCob,'DLiqCob');
   DM1.AplicaDatos(DM1.cdsDLiqCobClone, 'DLiqCob');
   DM1.cdsDLiqCob1.DataRequest(' Select * FROM CXC319 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');
   DM1.AplicaDatos(DM1.cdsDLiqCob1, 'DLiqCob1');
//	 DM1.AplicaDatos(DM1.cdsDetPagoLiq,'DetPagoLiq');
  //cadAnt:=WhereAnticipo;
   DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) + ' AND CCSERIE=''000''');
   DM1.AplicaDatos(DM1.cdsMovCxC, 'MovCxC');

   DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC324 WHERE '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');

   DM1.AplicaDatos(DM1.cdsDocCobranza, 'DOCCOBRANZA');
//   DM1.AplicaDatos( DM1.cdsCobranza,'Cobranza');
//   DM1.AplicaDatos( DM1.cdsMovCxC2,'MovCxC2' );
//   DM1.AplicaDatos( DM1.cdsDPag,    'DPag'  );
   xFlagGr := False;
   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   ShowMessage('Registro de Cobranza Grabado ');
   Z2bbtnImprime.Enabled := TRUE;
End;

//OK

Procedure TFLiquidaPago.ActualizaSaldosMovCxP;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
   xSelDoc, sCartera: String;
Begin
   sCartera := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5'); //CODIGO DE LETRAS EN CARTERA
   DM1.cdsTDoc.Filter := '( DOC_FREG=''L'' or '
      + '  DOC_FREG=''N'' or DOC_FREG=''P'' ) and DOCMOD=''CXC''';
   DM1.cdsTDoc.Filtered := true;

   xSelDoc := '';
   DM1.cdsTDoc.First;
   While Not DM1.cdsTDoc.Eof Do
   Begin
      If Length(xSelDoc) = 0 Then
         xSelDoc := '(DOCID=' + '''' + DM1.cdsTDoc.FieldByName('DOCID').AsString + ''''
      Else
         xSelDoc := xSelDoc + ' OR DOCID=' + '''' + DM1.cdsTDoc.FieldByName('DOCID').AsString + '''';
      DM1.cdsTDoc.Next;
   End;
   xSelDoc := xSelDoc + ' ) ';
   xSelDoc := xSelDoc + ' AND (SITID=' + QuotedStr(sCartera) + ' OR SITID IS NULL)';

   Filtracds(DM1.cdsMovCxC2, 'Select * from CXC301 Where '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
      + 'CCESTADO=' + QuotedStr('P') + ' AND ' + xSelDoc);

//                         + 'TDIARID='   +QuotedStr()
//                         + 'TVTAID='    +''''+dblcZona.text+''''+' and '
//                         + 'TMONID='    +''''+dblcTMon.text+''''+' and '

{   if DM1.cdsMovCxC2.IndexFieldNames <> 'CIAID;CCANOMES;TDIARID;DOCID;CCNODOC;CCSERIE;CLIEID' then
     DM1.cdsMovCxC2.IndexFieldNames:='CIAID;CCANOMES;TDIARID;DOCID;CCNODOC;CCSERIE;CLIEID';
 }
   If DM1.cdsMovCxC2.IndexFieldNames <> 'CIAID;DOCID;CCNODOC;CCSERIE;CLIEID' Then
      DM1.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCNODOC;CCSERIE;CLIEID';

   // Actualiza Saldo de MovCxP
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsDLiqCob1.DisableControls;
   xRegAct := DM1.cdsDLiqCob.GetBookmark;
   DM1.cdsDLiqCob1.First;
   While Not DM1.cdsDLiqCob.Eof Do
   Begin
//      DM1.cdsDLiqCob1.Edit;
      DM1.cdsMovCxC2.Setkey;
{      DM1.cdsMovCxC2.FieldByName('CIAID').AsString    := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').AsString := DM1.cdsDLiqCob1.FieldByName('LICONOMM').AsString;
      DM1.cdsMovCxC2.FieldByName('TDIARID').AsString  := DM1.cdsDLiqCob1.FieldByName('TDIARID').AsString;
      DM1.cdsMovCxC2.FieldByName('DOCID').AsString    := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
      DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString  := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
      DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString  := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
      DM1.cdsMovCxC2.FieldByName('CLIEID').AsString   := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
      }
      DM1.cdsMovCxC2.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
      DM1.cdsMovCxC2.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
      DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
      DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
      DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;

      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         If DM1.cdsMovCxC2.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat, 15, 2) Then
            Begin
               DM1.cdsDLiqCob1.GotoBookmark(xRegAct);
               DM1.cdsDLiqCob1.FreeBookmark(xRegAct);
               DM1.cdsDLiqCob1.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat, 15, 2) Then
            Begin
               DM1.cdsDLiqCob1.GotoBookmark(xRegAct);
               DM1.cdsDLiqCob1.FreeBookmark(xRegAct);
               DM1.cdsDLiqCob1.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End; //06/07/2001
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            xPagLoc := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGOORI').AsFloat := FRound(xPagLoc, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGOLOC').AsFloat := FRound(xPagLoc, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGOEXT').AsFloat := FRound(xPagLoc / DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - xPagLoc, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            If DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat <= 0 Then
               DM1.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';

         End
         Else
         Begin
            xPagExt := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DM1.cdsDLiqCob.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGOORI').AsFloat := FRound(xPagExt, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGOEXT').AsFloat := FRound(xPagExt, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGOLOC').AsFloat := FRound(xPagExt * DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - xPagExt, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            If DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat <= 0 Then
               DM1.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';
         End;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';

         DM1.cdsMovCxC2.Post;
      End;
      DM1.cdsDLiqCob1.Next;
   End;
   DM1.AplicaDatos(DM1.cdsMovCxC2, 'MovCxC2');
   DM1.cdsDLiqCob1.GotoBookmark(xRegAct);
   DM1.cdsDLiqCob1.FreeBookmark(xRegAct);
   DM1.cdsDLiqCob1.EnableControls;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxC2.EnableControls;
End;

Function TFLiquidaPago.VerificaTotal: Boolean;
Var
   xTPagLoc, xTPagExt: Double;
   xTPagOri2, xTPagLoc2, xTPagExt2: Double;
   xRegAct: TBookMark;
Begin
   Result := False;

   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsDLiqCob.DisableControls;
   xRegAct := DM1.cdsDLiqCob.GetBookmark;
   xTPagLoc := 0;
   xTPagExt := 0;
   DM1.cdsDLiqCob.First;
   While Not DM1.cdsDLiqCob.Eof Do
   Begin
      //** 20/12/20000 - pjsv
     //if Length(DM1.cdsDLiqCobCptoId.AsString)=0 then
     // begin
     //   DM1.cdsDLiqCob.EnableControls;
     //   DM1.cdsMovCxC2.Filtered:=True;
     //   DM1.cdsMovCxC2.EnableControls;
     //   Raise Exception.Create('Falta Registrar Tipo de Pago');
     // end;
     //**
      DM1.cdsMovCxC2.Setkey;
{     DM1.cdsMovCxC2.FieldByName('CIAID').AsString    := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
     DM1.cdsMovCxC2.FieldByName('TDIARID').AsString  := DM1.cdsDLiqCob.FieldByName('TDIARID').AsString;
     DM1.cdsMovCxC2.FieldByName('CCANOMES').AsString := DM1.cdsDLiqCob.FieldByName('CCANOMM').AsString;
     DM1.cdsMovCxC2.FieldByName('CCNOREG').AsString  := DM1.cdsDLiqCob.FieldByName('CCNOREG').AsString;
 }
      DM1.cdsMovCxC2.FieldByName('CIAID').AsString := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
      DM1.cdsMovCxC2.FieldByName('DOCID').AsString := DM1.cdsDLiqCob.FieldByName('DOCID').AsString;
      DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString;
      DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString;
      DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob.FieldByName('CLIEID').AsString;

      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         If DM1.cdsMovCxC2.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DM1.cdsDLiqCob.FieldByName('CCMTOLOC').AsFloat
               > DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat Then
            Begin
               DM1.cdsDLiqCob.EnableControls;
               DM1.cdsMovCxC2.Filtered := True;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DM1.cdsDLiqCob.FieldByName('CCMTOEXT').AsFloat
               > DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat Then
            Begin
               DM1.cdsDLiqCob.EnableControls;
               DM1.cdsMovCxC2.Filtered := True;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
      End;
      xTPagLoc := xTPagLoc + DM1.cdsDLiqCob.FieldByName('CCMTOLOC').AsFloat;
      xTPagExt := xTPagExt + DM1.cdsDLiqCob.FieldByName('CCMTOEXT').AsFloat;
      DM1.cdsDLiqCob.Next;
   End;
   DM1.cdsDLiqCob.GotoBookmark(xRegAct);
   DM1.cdsDLiqCob.FreeBookmark(xRegAct);
   DM1.cdsDLiqCob.EnableControls;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxC2.EnableControls;

   xTPagOri2 := 0;
   xTPagLoc2 := 0;
   xTPagExt2 := 0;
   xdiferencia := false;
   DM1.cdsDPag.First;
   While Not DM1.cdsDPag.Eof Do
   Begin
      xTPagOri2 := xTPagOri2 + DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat;
      xTPagLoc2 := xTPagLoc2 + DM1.cdsDPag.FieldByName('NCOMTOLOC').AsFloat;
      xTPagExt2 := xTPagExt2 + DM1.cdsDPag.FieldByName('NCOMTOEXT').AsFloat;
      DM1.cdsDPag.Next;
   End;

   If DM1.cdsDPag.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
   Begin
      If xTPagLoc2 = xTPagLoc Then
         Result := True
      Else
         If xTPagLoc2 > xTPagLoc Then
            xdiferencia := true;
   End
   Else
   Begin
      If DM1.cdsDPag.FieldByName('TMONID').AsString = DM1.wTMonExt Then
      Begin
         If xTPagExt2 = xTPagExt Then
            Result := True
         Else
            If xTPagExt2 > xTPagExt Then
               xdiferencia := true;
      End;
   End;
End;

Procedure TFLiquidaPago.bbtnCalcClick(Sender: TObject);
Begin

   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación

End;

Procedure TFLiquidaPago.bbtnCancelaClick(Sender: TObject);
Begin
  //DM1.cdsMovCxC2.CancelUpdates;
   //DM1.cdsDPag.CancelUpdates;
   DM1.cdsDLiqCob.CancelUpdates;
   FSelCob.OnKeyPress := FormKeyPress;
   EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
End;

Procedure TFLiquidaPago.dtpFEmisExit(Sender: TObject);
Var
   xWhere: String;
   wAno, wMes, wDia: Word;
   sPe: String;
Begin

   If xCrea Then Exit;
   If dblcClAux.Focused And (dtpFEmis.Date = 0) Then Exit;
   If dblcdCobrador.Focused And (dtpFEmis.Date = 0) Then Exit;
   If dblcClAux.Focused And (dtpFEmis.Date = 0) Then Exit;
   If dblcCia.Focused And (dtpFEmis.Date = 0) Then Exit;
   If DM1.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

//   if dblcdClie.Focused    and (dtpFEmis.Date=0) then Exit;
//   if dblcdClieRuc.Focused and (dtpFEmis.Date=0) then Exit;

   DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
   sPe := InttoStr(wAno) + StrZero(IntToStr(wMes), 2);
   // Tipo de Cambio
   xWhere := 'TMonId=''' + DM1.wTMonExt + ''' and '
      + 'Fecha=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + ''' )';
   xxTCambio := 0;
   If length(BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
   Begin
      xxTCambio := DM1.cdsQry.FieldByName('TCAM' + DM1.WVRN_TIPOCAMBIO).AsFloat;
      dbeTCLet.text := FloatToStr(xxTCambio);
   End
   Else
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;
End;

Procedure TFLiquidaPago.ActualizaPagadoMovCxP;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
   xSelDoc, sCartera, sCancelada, sLet: String;
Begin
   sCancelada := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', 'C'); //CODIGO DE LETRAS CANCELADA EN CARTERA
   sCartera := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5'); //CODIGO DE LETRAS EN CARTERA
   sLet := BuscaQry('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');

   Filtracds(DM1.cdsMovCxC2, 'Select CIAID,DOCID,CCNODOC,CCSERIE,CLIEID,TMONID,CCMTOORI,CCMTOEXT,CCMTOLOC,CCPAGORI,CCPAGEXT,CCPAGLOC,' +
      ' CCSALORI,CCSALEXT,CCSALLOC,CCESTADO,SITID,CCTCAMPA,CLIEDES,FLAGVAR,CCCANJE,TCANJEID,CCFCANCEL from CXC301 Where '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and ' + sWhereDocs
      + ' AND CCESTADO=' + QuotedStr('P'));

   If DM1.cdsMovCxC2.IndexFieldNames <> 'CIAID;DOCID;CCNODOC;CCSERIE;CLIEID' Then
      DM1.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCNODOC;CCSERIE;CLIEID';

   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;

   DM1.cdsDLiqCob1.DisableControls;
   DM1.cdsDLiqCob1.First;
   While Not DM1.cdsDLiqCob1.Eof Do
   Begin
      If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      Begin
         DM1.cdsMovCxC2.Setkey;
         DM1.cdsMovCxC2.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
         DM1.cdsMovCxC2.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
         DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
         If DM1.cdsMovCxC2.GotoKey Then
         Begin
            DM1.cdsMovCxC2.edit;
            If DM1.cdsMovCxC2.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
            Begin
      {if DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat>0 then
      begin
       xPagLoc:=FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat,15,2);
       xPagExt:=FRound(xPagLoc/DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat,15,2);
      end
      else}
               Begin
                  xPagLoc := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
                  xPagExt := FRound(xPagLoc / DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);
               End;

               DM1.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + xPagLoc, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + xPagLoc, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + xPagExt, 15, 2);

               DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);

               If Abs(DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat) <= 0.01 Then
               Begin
                  DM1.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime := dtpFEmis.date;
                  DM1.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';
                  DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := 0;
                  DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := 0;
                  DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := 0;

                  If DM1.cdsMovCxC2.FieldByName('DOCID').AsString = sLet Then // SI ES LETRA LE CAMBIA LA SITUACION
                     DM1.cdsMovCxC2.FieldByName('SITID').AsString := sCancelada;
               End;
            End
            Else
            Begin
      {if DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat>0 then
      begin
       xPagExt:=FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat,15,2);
       xPagLoc:=FRound(xPagExt*DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat,15,2);
      end
      else}
               Begin
                  xPagExt := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
                  xPagLoc := FRound(xPagExt * DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);
               End;

               DM1.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + xPagExt, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + xPagExt, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + xPagLoc, 15, 2);

               DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);

               If Abs(DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat) <= 0.01 Then
               Begin
                  DM1.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime := dtpFEmis.date;
                  DM1.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';
                  DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := 0;
                  DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := 0;
                  DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := 0;

                  If DM1.cdsMovCxC2.FieldByName('DOCID').AsString = sLet Then // SI ES LETRA LE CAMBIA LA SITUACION
                     DM1.cdsMovCxC2.FieldByName('SITID').AsString := sCancelada;
               End;
            End;
            DM1.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);
         End;
         DM1.cdsDLiqCob1.Next;
      End
      Else
      Begin
         DM1.cdsDLiqCob1.Next;
      End;
   End;
   DM1.AplicaDatos(DM1.cdsMovCxC2, 'MovCxC2');
   DM1.cdsMovCxC2.First;
   DM1.cdsMovCxC2.EnableControls;
   DM1.cdsDLiqCob1.EnableControls;
End;

Procedure TFLiquidaPago.dbeTCLetExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If length(dbeTCLet.Text) = 0 Then
   Begin
      dbeTCLet.SetFocus;
      Raise Exception.Create('Falta Tipo de Cambio');
   End;

   If strtofloat(dbeTCLet.Text) < 0 Then
   Begin
      dbeTCLet.Text := '';
      dbeTCLet.SetFocus;
      Raise Exception.Create('Tipo de Cambio debe ser Mayor a 0');
   End;
End;

Procedure TFLiquidaPago.bbtnBorraClick(Sender: TObject);
Begin
{   If DM1.wModo='A' then
   begin
      if xFlagGr then
      begin
         DM1.cdsDLiqCob.CancelUpdates;
         DM1.cdsMovCxC2.CancelUpdates;
         DM1.cdsDPag.CancelUpdates;
         DM1.cdsCobranza.Delete;
         DM1.AplicaDatos( DM1.cdsCobranza, 'Cobranza' );

         InicializaClientDataSet;
         InicializaPies;
         InicializaDatos;
         EstadoDeForma( 0, ' ', ' ' );
      end
      else
      begin
         if Length(DM1.cdsCobranza.FieldByName('NCOESTADO').AsString)=0 then
         begin
            DM1.cdsCobranza.CancelUpdates;
            InicializaClientDataSet;
            InicializaPies;
            InicializaDatos;
         end
         else
         begin
            DM1.cdsCobranza.CancelUpdates;
         end;
         EstadoDeForma(0,DM1.cdsCobranza.FieldByName('NCOESTADO').AsString,' ' );
      end;
   end
   else
   begin
      DM1.cdsCobranza.CancelUpdates;
      EstadoDeForma(0,DM1.cdsCobranza.FieldByName('NCOESTADO').AsString,' ' );
   end;}
End;

Procedure TFLiquidaPago.bbtnRegresaClick(Sender: TObject);
Begin
//   FSelCob.OnKeyPress:=FormKeyPress;
   EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   DM1.cdsCLiqCob1.Edit;
End;

Procedure TFLiquidaPago.Z2bbtnNuevoClick(Sender: TObject);
Begin
   If MessageDlg('Ingresar Nueva Cobranza' + chr(13) + chr(13) + '   ¿ Esta Seguro ?  ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      DM1.cdsCLiqCob1.CancelUpdates;

      If (DM1.wModo = 'A') And (xFlagGr) Then
      Begin
         DM1.cdsCLiqCob1.Delete;
         DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
      End;
      InicializaClientDataSet;
      InicializaPies;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
   End;
End;

Procedure TFLiquidaPago.Z2bbtnAnulaClick(Sender: TObject);
Begin

   If MessageDlg('Anular Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   // Actualiza los Saldos de los Documentos Canjeados
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsDLiqCob.DisableControls;
   DM1.cdsDLiqCob.First;
   While Not DM1.cdsDLiqCob.Eof Do
   Begin
      DM1.cdsDLiqCob.Edit;
      If ExisteMovCxC(DM1.cdsDLiqCob.FieldByName('CIAID').AsString, DM1.cdsDLiqCob.FieldByName('DOCID').AsString,
         DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString, DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString, DM1.cdsDLiqCob.FieldByName('CLIEID').AsString) Then
      Begin
         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat, 15, 2);
         DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         DM1.cdsMovCxC2.Post;
      End;
      DM1.cdsDLiqCob.Next;
   End;
   DM1.cdsDLiqCob.EnableControls;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxC2.EnableControls;
   /////////////
   DM1.cdsCLiqCob1.Edit;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'A';
   DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
   DM1.AplicaDatos(DM1.cdsMovCxC2, 'MovCxC2');

   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');

   ShowMessage('Cobranza Anulada');
End;

Procedure TFLiquidaPago.Z2bbtnAceptaClick(Sender: TObject);
Var
   xxNoReg, sLetra, sLet, sSQL: String;
   sTDiarioAnt: String;
   xTAutoNum, sWhere: String;
   sClieDes, sClieRuc, sMes, sAno: String;
   wDia, wMes, wAno: word;
   nNoReg: integer;
   xWhere, sNumeroAnt, sZona: String;
   sCptoAnt, sCtaAnt: String;
   sEFE, sCHE, sNDE: String;
Begin
  {if DM1.cdsDLiqCob1.RecordCount=0 then
   Raise exception.Create(' Error :  Falta registrar Documentos a Liquidar');}
   If DM1.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

 // VERIFICA QUE TODOS TENGAN FORMA DE PAGO ASIGNADA

   VerificaMontos;

   If MessageDlg('Aceptar Cobranza' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DM1.cdsDLiqCob1.DisableControls;
   DM1.cdsDLiqCob1.First;

   sEFE := DisplayDescrip('TGE112', 'FPAGOID', 'FEFE', '1');
   sCHE := DisplayDescrip('TGE112', 'FPAGOID', 'FCHQ', '1');
   sNDE := DisplayDescrip('TGE112', 'FPAGOID', 'FNDE', '1');
   sOficina := DM1.BuscaQry2('dspTGE', 'CXC105', 'UBICAID', 'UBICAFLAG=''O''', 'UBICAID');
   sCartera := DM1.BuscaQry2('dspTGE', 'CXC104', 'SITUAID', 'SITUAFLAG=''5''', 'SITUAID');
   sFPagCh := DM1.BuscaQry2('dspTGE', 'TGE112', 'FPAGOID', 'FCHQ=''1''', 'FPAGOID');
   sTDocCh := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID,TDIARID', 'DOCMOD=''CXC'' AND DOCTIPREG=''CH''', 'DOCID');
   sTDiario := DM1.cdsQry6.FieldByName('TDIARID').AsString;
   sTDiarioAnt := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID,TDIARID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'TDIARID');
   sLet := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');
   sChEnCob := DM1.BuscaQry2('dspTGE', 'CXC114', 'SITUAID', 'SITUAFLAG=' + QuotedStr('PCO'), 'SITUAID');

   DM1.cdsDLiqCob1.MasterSource := Nil;
   DM1.cdsDLiqCob1.MasterFields := '';

   DM1.cdsDLiqCob1.DisableControls;
   sWhereDocs := '(';
   DM1.cdsDLiqCob1.First;

   While Not DM1.cdsDLiqCob1.EOF Do
   Begin
  {if (DM1.cdsDLiqCob1.FieldByName('FLAGVAR').IsNull) OR (DM1.cdsDLiqCob1.FieldByName('FLAGVAR').AsString<>'X') then
  begin
   ShowMessage('Falta Ingresar la Forma de Pago de los Documentos a Liquidar');
   DM1.cdsDLiqCob1.EnableControls;
   exit;
  end;}

      If DM1.cdsDLiqCob1.RecordCount <> DM1.cdsDLiqCob1.RecNo Then
      Begin
         sWhereDocs := sWhereDocs + ' (DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) + ' AND ' +
            'CCSERIE=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString) + ' AND ' +
            'CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString) + ') OR';
      End
      Else
      Begin
         sWhereDocs := sWhereDocs + ' (DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) + ' AND ' +
            'CCSERIE=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString) + ' AND ' +
            'CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString) + ')) ';
      End;

      DM1.cdsDLiqCob1.Next;
   End;
   DM1.cdsDLiqCob1.EnableControls;

// SI ES CHEQUE SE INSERTA EN EN CXC301 COMO DOCUMENTO PENDIENTE DE COBRANZA
// POR ORDEN DE JCC 19/04/2002
//  InsertaCheques;

//	DM1.cdsDLiqCob1.DisableControls;
   DM1.cdsDLiqCob1.First;
   While Not DM1.cdsDLiqCob1.EOF Do
   Begin
      If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      Begin
   {if DM1.cdsDLiqCob1.FieldByName('LICOMTOANTORI').AsFloat>0 then
   begin
    //SE GENERA ANTICIPO EN CXC301
    DecodeDate(DM1.cdsDLiqCob1.FieldByName('FECPAGO').AsDateTime,wAno,wMes,wDia);
    sAno:=StrZero(IntToStr(wAno),4);
    sMes:=StrZero(IntToStr(wMes),2);

    sClieRuc:=DM1.BuscaQry2('dspTGE','TGE204','ZONVTAID,CLIERUC,CLIEDES','CLIEID='+QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString),'CLIERUC');
    sZona:=DM1.cdsQry6.FieldByName('ZONVTAID').AsString;
    sClieDes:=DM1.cdsQry6.FieldByName('CLIEDES').AsString;
    sCptoAnt:=BuscaQry('dspTGE','CXC208','CPTOCAB,CPTODES,CUENTAID','CIAID='+QuotedStr(DM1.cdsDLiqCob1.FieldByName('CIAID').AsString)+
             ' AND TMONID='+QuotedStr(DM1.cdsDLiqCob1.FieldByName('TMONID').AsString)+
             ' AND DOCID='+QuotedStr(DM1.wsAnt)+
             ' AND TVTAID='+QuotedStr(DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString),'CPTOCAB');
    sCtaAnt:=DM1.cdsQry.FieldByName('CUENTAID').AsString;

    xTAutoNum:= DisplayDescrip('TGE104','AutoNum','TDiarID',sTDiario);
    xxNoReg  := DM1.UltimoRegistro(xTAutoNum,DM1.cdsDLiqCob1.FieldByName('CIAID').AsString,sTDiarioAnt,sAno,sMes );
    xxNoReg  := Strzero( xxNoReg,10);
    nNoReg  :=  strtoint(xxNoReg);
     //determina último número de registro incrementado en 1
     xWhere:=' CIAID='+QuotedStr(dblcCia.Text)+
         ' AND DOCID='+QuotedStr(DM1.wsAnt)+
         ' AND CCSERIE='+QuotedStr('000');
     sNumeroAnt:=StrZero(DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xWhere),10);

    BuscaFecha('TGE114','Fecha',DM1.cdsDLiqCob1.FieldByName('FECPAGO').AsDateTime);

    sSQL:=' INSERT INTO CXC301 (CCPTOTOT,CTATOTAL,CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, '+
       ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,TMONID,CCTCAMPR,CCESTADO, '+
       ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, '+
       ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG,CCHREG, '+
       ' CLIEDES,TVTAID,ZVTAID,CCNLETBCO) VALUES('+
       QuotedStr(sCptoAnt)+','+QuotedStr(sCtaAnt)+','+
       QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECANO').AsString+DM1.cdsQry2.FieldByName('FECMES').AsString)+','+      // AÑOMES
       QuotedStr(sTDiarioAnt)+','+QuotedStr('000')+','+QuotedStr(xxNoReg)+','+DM1.wRepFecServi+','+
       QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString)+','+
       QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString)+','+
       QuotedStr(sClieRuc)+','+QuotedStr(DM1.wsAnt)+','+QuotedStr('000')+','+
       QuotedStr(sNumeroAnt)+','+
       QuotedStr(DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsString)+','+
       QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString)+','+
       DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsString+','+QuotedStr('P')+','+
       DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsString+','+
       DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsString+','+
       DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsString+',0,0,0,'+
       DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsString+','+
       DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsString+','+
       DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsString+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECANO').AsString)+','+
         QuotedStr(DM1.cdsQry2.FieldByName('FECMES').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECDIA').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECTRIM').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECSEM').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECSS').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECAATRI').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECAASEM').AsString)+','+
       QuotedStr(DM1.cdsQry2.FieldByName('FECAASS').AsString)+','+
       QuotedStr(DM1.cdsDetPagoLiq.FieldByName('BANCOID').AsString)+','+QuotedStr('.')+','+
       QuotedStr(DM1.wUsuario)+','+DM1.wRepFecServi+','+DM1.wRepTimeServi+','+
       QuotedStr(sClieDes)+','+QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString)+','+QuotedStr(sZona)+','+QuotedStr(edtCanje.text)+')';
    try
     DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    except
    end;
    DM1.SaldosAuxiliarCLG( DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString,sano+smes,
          DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString,DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString,
          '-', DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat, DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat, DM1.cdsDetPagoLiq.FieldByName('TMONID').AsString);
    xxNoReg  := DM1.GrabaUltimoRegistro(xTAutoNum,DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString,sTDiarioAnt,sAno,sMes, nNoReg );
   end;}

   // INSERTAR EL PAGO EN LA CXC305
         DM1.cdsDetCanje.Insert;

         DM1.cdsDetCanje.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
         DM1.cdsDetCanje.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
         DM1.cdsDetCanje.FieldByName('CLIERUC').AsString := DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString);
         DM1.cdsDetCanje.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsDetCanje.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsDetCanje.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
   //DM1.cdsDetCanje.FieldByName('CCNOREG').AsString  := DM1.cdsDLiqCob1.FieldByName('CCNOREG').AsString;
         DM1.cdsDetCanje.FieldByName('TCANJEID').AsString := 'CO';

         If BuscaFecha('TGE114', 'Fecha', DM1.cdsDLiqCob1.FieldByName('FECPAGO').AsDateTime) Then
         Begin
            DM1.cdsDetCanje.FieldByName('DCCAAAA').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
            DM1.cdsDetCanje.FieldByName('DCCMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
            DM1.cdsDetCanje.FieldByName('DCCDD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
            DM1.cdsDetCanje.FieldByName('DCCTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
            DM1.cdsDetCanje.FieldByName('DCCSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
            DM1.cdsDetCanje.FieldByName('DCCSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
            DM1.cdsDetCanje.FieldByName('DCCANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
            DM1.cdsDetCanje.FieldByName('DCCAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
            DM1.cdsDetCanje.FieldByName('DCCAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
            DM1.cdsDetCanje.FieldByName('DCCAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
         End;

         DM1.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime := dtpFEmis.Date;

         DM1.cdsDetCanje.FieldByName('DOCID2').AsString := DisplayDescrip('TGE110', 'DOCID', 'DOC_FREG', 'C');
         DM1.cdsDetCanje.FieldByName('CCSERIE2').AsString := '000';
         DM1.cdsDetCanje.FieldByName('CCNODOC2').AsString := edtCanje.text;

         DM1.cdsDetCanje.FieldByName('TMONID').AsString := DM1.cdsDLiqCob1.FieldByName('TMONIDPAGO').AsString;
         DM1.cdsDetCanje.FieldByName('DCCUSER').AsString := DM1.wUsuario;
         DM1.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DateS;
         DM1.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := TimeS;
         DM1.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat;

         If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
    {if DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat>=0 then
    begin
     DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat:= FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat-DM1.cdsDetPagoLiq.FieldByName ('LICOMTOANTLOC').AsFloat,15,2);
     DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat:= FRound((DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat-DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat)/DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat,15,2);
    end
    else
    begin
     DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat:= FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsString),15,2);
     DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat:= FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsString)/DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat,15,2);
    end;}
            DM1.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(StrTofloat(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsString), 15, 2);
            DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsString), 15, 2);
            DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsString) / DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);
         End
         Else
            If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonExt Then
            Begin
    {if DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat>=0 then
    begin
     DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat:= FRound((DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat-DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat)*DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat,15,2);
     DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat:= FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').Asfloat-DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat,15,2);
    end
    else
    begin
     DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat:= FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsString)*DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat,15,2);
     DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat:= FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsString),15,2);
    end;}
               DM1.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(StrTofloat(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsString), 15, 2);
               DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsString) * DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat, 15, 2);
               DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsString), 15, 2);
            End;

   //ACTUALIZO LA CUENTA CORRIENTE DEL CLIENTE
   // SOLO PARA DOCUMENTOS DIFERENTES DE LETRAS
   //if (DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString<>sLet) then
         DM1.SaldosAuxiliarCLG(DM1.cdsDetCanje.FieldByName('CIAID').AsString, DM1.cdsDLiqCob1.FieldByName('LICOANOMM').AsString,
            DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString, DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString,
            '-', DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat, DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat, DM1.cdsDLiqCob1.FieldByName('TMONID').AsString);

         DM1.cdsDetCanje.Post;

         DM1.cdsDLiqCob1.Next;
      End
      Else
      Begin
    //ANTICIPOS
       // ACTUALIZA EL ANTICIPO A ACEPTADO
         sSQL := ' UPDATE CXC301 SET CCESTADO=''P'' WHERE ' +
            ' CIAID=' + QuotedStr(dblcCia.Text) + ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) +
            ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString);
         Try
            DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except

         End;

    // INSERTA EL REGISTRO DEL ANTICIPO EN EL HABER
         DM1.cdsDetCxC.Insert;
         LlenaDetCxC;
         BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) +
            ' AND TMONID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('TMONIDPAGO').AsString) +
            ' AND TVTAID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString), 'CPTOCAB');
         DM1.cdsDetCxC.Edit;
         DM1.cdsDetCxC.FieldByName('TREGID').AsString := DM1.cdsQry.FieldByName('TREGID').AsString;
         DM1.cdsDetCxC.FieldByName('TIPDET').AsString := DM1.cdsQry.FieldByName('TIPDET').AsString;
         DM1.cdsDetCxC.FieldByName('CCDH').AsString := DM1.cdsQry.FieldByName('CCDH').AsString;
         DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
         DM1.cdsDetCxC.FieldByName('CPTOID').AsString := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
         DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CUENTAID').AsString;
         DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
         DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;
         DM1.cdsDetCxC.Post;
    // INSERTA EL REGISTRO DEL ANTICIPO EN EL DEBE

         DM1.cdsDetCxC.Insert;
         LlenaDetCxC;
         DM1.cdsDetCxC.Edit;
         If (DM1.cdsDLiqCob1.FieldByName('FPAGOID').AsString = sEFE) Or (DM1.cdsDLiqCob1.FieldByName('FPAGOID').AsString = sCHE) Then
         Begin
            BuscaQry('dspTGE', 'TGE105', 'REMESAID', 'BCOTIPCTA=''C''', 'REMESAID');
            DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('REMESAID').AsString;
            DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
            DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
         End;

         If (DM1.cdsDLiqCob1.FieldByName('FPAGOID').AsString = sNDE) Then
         Begin //FALTA BANCOS
            BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND BANCOID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('BANCOID').AsString) +
               ' AND CCBCOID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCBCOID').AsString), 'CTAREMES');
            DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CTAREMES').AsString;
            DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
            DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
         End;

         DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
         DM1.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
         DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;
         DM1.cdsDetCxC.FieldByName('TIPDET').AsString := 'MN';
         DM1.cdsDetCxC.FieldByName('TREGID').AsString := BuscaQry('dspTGE', 'TGE128', 'TREGID,TIPDET', 'TIPDET=''MN''', 'TREGID');

         DM1.cdsDetCxC.Post;
         DM1.SaldosAuxiliarCLG(DM1.cdsDLiqCob1.FieldByName('CIAID').AsString, DM1.cdsDLiqCob1.FieldByName('LICOANOMM').AsString,
            DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString, DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString,
            '-', DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, DM1.cdsDLiqCob1.FieldByName('TMONIDPAGO').AsString);

         DM1.cdsDLiqCob1.Next;
      End;
   End;

  //ACTUALIZA LOS DOCUMENTOS EN LA CXC301
   ActualizaPagadoMovCxP;
//	 ActualizaDocumentosEncargados; //DLiqcob
   DM1.cdsDLiqCob1.EnableControls;
{   DM1.cdsDetPagoLiq.MasterSource:=DM1.dsDLiqCob1;
  DM1.cdsDetPagoLiq.MasterFields:='CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';}
   DM1.cdsDLiqCob1.MasterSource := DM1.dsDocCobranza;
   DM1.cdsDLiqCob1.MasterFields := 'CIAID;LICOID;FPAGOID;LICOITEM';

  //DM1.cdsDLiqCob1.EnableControls;

   DM1.cdsCLiqCob1.Edit;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'P';
   DM1.cdsCLiqCob1.Post;
   DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
   DM1.AplicaDatos(DM1.cdsDetCanje, 'DetCanje');
   DM1.AplicaDatos(DM1.cdsDetCxC, 'DetCxC');

   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   InsertaConsolidado;
   ShowMessage(' Cobranza Aceptada ');
End;

Procedure TFLiquidaPago.dblcCiaExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If length(dblcCia.text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
   End;
   //edtCia.Text:=DisplayDescrip('TGE101','CIADES','CiaID',dblcCia.Text);
   edtCia.Text := DM1.cdsCia.FieldByName('CIADES').AsString;

   DM1.cdsCobrador.Filter := 'CIAID=' + QuotedStr(dblcCia.Text);

   dblcClAux.text := DisplayDescrip('TGE102', 'CLAUXID', 'CLAUXCP', 'C')
End;

Procedure TFLiquidaPago.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFLiquidaPago.dbgPendientesDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiquidaPago.dbgPendientesEndDrag2(Sender, Target: TObject; X,
   Y: Integer);
Var
   i: Integer;
Begin
End;

Procedure TFLiquidaPago.dbgPendientesMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgLiqCobranza.BeginDrag(False);
End;

Procedure TFLiquidaPago.InsertaCanjes(xxCds: TwwClientDataSet);
Begin
   DM1.cdsDLiqCob.Insert;
   DM1.cdsDLiqCob.FieldByName('CIAID').AsString := xxCds.FieldByName('CIAID').AsString;
   DM1.cdsDLiqCob.FieldByName('TDIARID').AsString := xxCds.FieldByName('TDIARID').AsString;
   DM1.cdsDLiqCob.FieldByName('CCNOREG').AsString := xxCds.FieldByName('CCNOREG').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAAAA').AsString := xxCds.FieldByName('CCAAAA').AsString;
   DM1.cdsDLiqCob.FieldByName('CCANOMM').AsString := xxCds.FieldByName('CCANOMES').AsString;
   DM1.cdsDLiqCob.FieldByName('CLIEID').AsString := xxCds.FieldByName('CLIEID').AsString;
   DM1.cdsDLiqCob.FieldByName('CLIERUC').AsString := xxCds.FieldByName('CLIERUC').AsString;
   DM1.cdsDLiqCob.FieldByName('DOCID').AsString := xxCds.FieldByName('DOCID').AsString;
   DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString := xxCds.FieldByName('CCSERIE').AsString;
   DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString := xxCds.FieldByName('CCNODOC').AsString;
   DM1.cdsDLiqCob.FieldByName('TCANJEID').AsString := 'CO';
   DM1.cdsDLiqCob.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DM1.cdsDLiqCob.FieldByName('CCFCANJE').AsDateTime := xxCds.FieldByName('CCFCMPRB').AsDateTime;
   DM1.cdsDLiqCob.FieldByName('TMONID').AsString := xxCds.FieldByName('TMONID').AsString;
   DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').AsFloat := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCTCAMDOC').AsFloat := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCSALLOC').AsFloat := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCSALEXT').AsFloat := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DM1.xFlagCal := False;
   DM1.cdsDLiqCob.FieldByName('CCMTOLOC').AsFloat := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DM1.xFlagCal := False;
   DM1.cdsDLiqCob.FieldByName('CCMTOEXT').AsFloat := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCESTADO').AsString := 'P';
   DM1.cdsDLiqCob.FieldByName('CCUSER').AsString := DM1.wUsuario;
   DM1.cdsDLiqCob.FieldByName('CCFREG').AsDateTime := DateS;
   DM1.cdsDLiqCob.FieldByName('CCHREG').AsDateTime := TimeS;
   DM1.cdsDLiqCob.FieldByName('CCMM').AsString := xxCds.FieldByName('CCMM').AsString;
   DM1.cdsDLiqCob.FieldByName('CCDD').AsString := xxCds.FieldByName('CCDD').AsString;
   DM1.cdsDLiqCob.FieldByName('CCTRI').AsString := xxCds.FieldByName('CCTRI').AsString;
   DM1.cdsDLiqCob.FieldByName('CCSEM').AsString := xxCds.FieldByName('CCSEM').AsString;
   DM1.cdsDLiqCob.FieldByName('CCSS').AsString := xxCds.FieldByName('CCSS').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAATRI').AsString := xxCds.FieldByName('CCAATRI').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAASEM').AsString := xxCds.FieldByName('CCAASEM').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAASS').AsString := xxCds.FieldByName('CCAASS').AsString;
   DM1.cdsDLiqCob.FieldByName('CPTOTOT').AsString := xxCds.FieldByName('CCPTOTOT').AsString;
   DM1.cdsDLiqCob.FieldByName('CTATOTAL').AsString := xxCds.FieldByName('CTATOTAL').AsString;
   DM1.cdsDLiqCob.Post;
End;

Procedure TFLiquidaPago.ppvTMonCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + QuotedStr(dm1.wTMonLoc);
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLiquidaPago.ppVariable2Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DM1.cdsDLiqCob.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLiquidaPago.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFLiquidaPago.Z2bbtnImprimeClick(Sender: TObject);
Var
   sNDE, sEFE, sCHE, sSQL: String;
   x10: integer;
Begin

   DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
   sPe := InttoStr(wAno) + StrZero(IntToStr(wMes), 2);

   sEFE := BuscaQry('dspTGE', 'TGE112', 'FPAGOID', 'FEFE=''1'' OR FEFE=''S''', 'FPAGOID');
   sCHE := BuscaQry('dspTGE', 'TGE112', 'FPAGOID', 'FCHQ=''1'' OR FCHQ=''S''', 'FPAGOID');
   sNDE := BuscaQry('dspTGE', 'TGE112', 'FPAGOID', 'FNDE=''1'' OR FNDE=''S''', 'FPAGOID');

////NUEVO REPORTE
  //DM1.cdsQry4.IndexFieldNames:='';
   DM1.cdsQry4.MasterSource := Nil;
   DM1.cdsQry4.MasterFields := '';

   sSQL := 'SELECT CIAID,LICOID,FPAGOID,FPAGODES,TMONID TMONIDPAGO,''MONEDAMONEDA'' TMONABR,''DESCRIPCION LARGA DE MONEDA'' TMONDES, ' +
      ' ''TIPOCHEQUE'' TIPOCHEQUE, BANCOID, BANCODES,''000'' CCSERIE,LICONOCHQ CCNODOC,FECPAGO,FECEMICHQ,SUM(LICOMTOORI) LICOMTOABOORI, ''C'' OPC, LICONOCHQ  ' +
      ' FROM CXC324 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) +
      ' AND (FPAGOID=' + QuotedStr(sCHE) + ' OR FPAGOID=' + QuotedStr(sNDE) + ') ' +
      ' GROUP BY CIAID,LICOID,FPAGOID,FPAGODES,TMONID,BANCOID,BANCODES,LICONOCHQ,FECPAGO,FECEMICHQ ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(sSQL);
   DM1.cdsQry5.Open;
  //Filtracds( DM1.cdsQry5,sSQL);
   DM1.cdsQry5.IndexFieldNames := 'CIAID;LICOID;FPAGOID;TMONIDPAGO;LICONOCHQ';

   sSQL := ' SELECT CIAID,LICOID,FPAGOID,FPAGODES,TMONID TMONIDPAGO,''MONEDAMONEDA'' TMONABR,''DESCRIPCION LARGA DE MONEDA'' TMONDES, BANCOID, ' +
      ' BANCODES,''000'' CCSERIE,LICONOCHQ CCNODOC,FECPAGO,FECEMICHQ, SUM(LICOMTOORI) LICOMTOABOORI, ''C'' OPC, LICONOCHQ,LICOITEM ' +
      ' FROM CXC324 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) +
      ' GROUP BY CIAID,LICOID,FPAGOID,FPAGODES,TMONID,BANCOID,BANCODES,LICONOCHQ,FECPAGO,FECEMICHQ,LICOITEM ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(sSQL);
   DM1.cdsQry3.Open;

   DM1.cdsQry3.IndexFieldNames := 'CIAID;LICOID;FPAGOID;LICOITEM';

   sSQL := 'SELECT CXC319.CIAID,LICOID,CXC319.CLAUXID,CXC319.CLIEID,FPAGOID,DOCID,''DOCUMENTODOCUMENTO'' DOCABR, TMONIDPAGO,TMONID,''MONEDAMONEDA'' TMONABR, ' +
      ' ''DESCRIPCION LARGA DE MONEDA'' TMONDES,BANCOID,CCSERIE,CCNODOC,FECPAGO, ' +
      ' CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE LICOMTOABOEXT END LICOMTOABOORI, ' +
      ' CASE WHEN DOCID=' + QuotedStr(DM1.wsAnt) + ' THEN LICOMTOORI ELSE 0 END LICOMTOANTORI,  ' +
      ' ''D'' OPC, ''RAZON SOCIAL DEL CLIENTE RAZON SOCIAL DEL CLIENTE'' CLIEDES,LICOITEM ' +
      ' FROM CXC319 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text);

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(sSQL);
   DM1.cdsQry4.Open;

   DM1.cdsQry3.First;
   While Not DM1.cdsQry3.EOF Do
   Begin
      DM1.cdsQry3.Edit;
      DM1.cdsQry3.FieldByName('TMONABR').AsString := BuscaQry('dspTGE', 'TGE103', 'TMONABR,TMONDES', 'TMONID=' + QuotedStr(DM1.cdsQry3.FieldByName('TMONIDPAGO').AsString), 'TMONABR');
      DM1.cdsQry3.FieldByName('TMONDES').AsString := DM1.cdsQry.FieldByName('TMONDES').AsString;
      DM1.cdsQry3.Post;
      DM1.cdsQry3.Next;
   End;

   DM1.cdsQry5.First;
   While Not DM1.cdsQry5.EOF Do
   Begin
      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('TMONABR').AsString := BuscaQry('dspTGE', 'TGE103', 'TMONABR,TMONDES', 'TMONID=' + QuotedStr(DM1.cdsQry5.FieldByName('TMONIDPAGO').AsString), 'TMONABR');
      DM1.cdsQry5.FieldByName('TMONDES').AsString := DM1.cdsQry.FieldByName('TMONDES').AsString;

//      if (DM1.cdsQry5.FieldByName('FECPAGO').AsDateTime>DM1.cdsQry5.FieldByName('FECEMICHQ').AsDateTime) AND
      If (DM1.cdsQry5.FieldByName('FECPAGO').AsDateTime > dtpFEmis.date) And
         (DM1.cdsQry5.FieldByName('FPAGOID').AsString = sCHE) Then
      Begin
         DM1.cdsQry5.FieldByName('TIPOCHEQUE').AsString := 'DIFERIDO';
      End
      Else
      Begin
         DM1.cdsQry5.FieldByName('TIPOCHEQUE').Clear;
      End;
      DM1.cdsQry5.Post;
      DM1.cdsQry5.Next;
   End;
   pprCheBol.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CHEQUEBOLETA.RTM';
   pprCheBol.template.LoadFromFile;

   pplblTituloCheBol.text := 'LIQUIDACION DE COBRANZA N° ' + edtCanje.text;
   pplblCIACheBol.text := edtCia.text;
   pplblFechaCheBol.text := DateToStr(dtpFEmis.date);
   pplblCobradorCheBol.text := 'COBRADOR ' + dblcdCobrador.text + ' ' + edtCobrador.text;

   If DM1.cdsTDoc.IndexFieldNames <> 'DOCID' Then
      DM1.cdsTDoc.IndexFieldNames := 'DOCID';
//   DM1.cdsTDoc.Filtered:=False;
   DM1.cdsTDoc.Filter := 'DOCMOD=''CXC''';
   ;
   DM1.cdsTDoc.Filtered := True;

   DM1.cdsQry4.First;
   While Not DM1.cdsQry4.EOF Do
   Begin
      DM1.cdsTDoc.Setkey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString := DM1.cdsQry4.FieldByName('DOCID').AsString;
      DM1.cdsQry4.Edit;
      If DM1.cdsTDoc.Gotokey Then
      Begin
         DM1.cdsQry4.FieldByName('DOCABR').AsString := DM1.cdsTDoc.FieldByName('DOCABR').AsString;
      End
      Else
      Begin
         DM1.cdsQry4.FieldByName('DOCABR').Clear;
      End;
      DM1.cdsQry4.FieldByName('TMONABR').AsString := BuscaQry('dspTGE', 'TGE103', 'TMONABR,TMONDES', 'TMONID=' + QuotedStr(DM1.cdsQry4.FieldByName('TMONID').AsString), 'TMONABR');
      DM1.cdsQry4.FieldByName('TMONDES').AsString := DM1.cdsQry.FieldByName('TMONDES').AsString;
      DM1.cdsQry4.FieldByName('CLIEDES').AsString := BuscaQry('dspTGE', 'TGE204', 'CLIEDES', 'CIAID=' + QuotedStr(dblcCia.text) + 'AND CLAUXID=' + QuotedStr(DM1.cdsQry4.FieldByName('CLAUXID').AsString) + ' AND CLIEID=' + QuotedStr(DM1.cdsQry4.FieldByName('CLIEID').AsString), 'CLIEDES');
      DM1.cdsQry4.Post;
      DM1.cdsQry4.Next;
   End;
   DM1.cdsTDoc.Filtered := True;

   DM1.cdsQry4.IndexFieldNames := 'CIAID;LICOID;FPAGOID;LICOITEM;CCSERIE;CCNODOC';
   DM1.cdsQry4.MasterSource := DM1.dsQry3;
   DM1.cdsQry4.MasterFields := 'CIAID;LICOID;FPAGOID;LICOITEM';

   ppdbCabecera.DataSource := DM1.dsQry3;
   ppdbDetalle.DataSource := DM1.dsQry4;
   ppdbCheBol.DataSource := DM1.dsQry5;
   ppdbResumen.DataSource := DM1.dsQry6;
   sSQL := ' SELECT MONEXT,MONLOC,TODOEXT,RTRIM(TGE112.FPAGODES)||DIF FPAGODES FROM (SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOLOC ELSE 0 END) MONLOC, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) + SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN ROUND(LICOMTOLOC/LICOTCAMB,2) ELSE 0 END) TODOEXT, ' +
      ' '''' DIF ' +
      ' FROM CXC324 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID<>' + QuotedStr(sCHE) +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOLOC ELSE 0 END) MONLOC, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) + SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN ROUND(LICOMTOLOC/LICOTCAMB,2) ELSE 0 END) TODOEXT, ' +
      ' '''' DIF ' +
      ' FROM CXC324 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID=' + QuotedStr(sCHE) + ' AND FECPAGO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + '''' + ') ' +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOLOC ELSE 0 END) MONLOC, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) + SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN ROUND(LICOMTOLOC/LICOTCAMB,2) ELSE 0 END) TODOEXT, ' +
      ' '' DIFERIDO'' DIF ' +
      ' FROM CXC324 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID=' + QuotedStr(sCHE) + ' AND FECPAGO>' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + '''' + ') ' +
      ' GROUP BY FPAGOID)X ' +
      ' LEFT JOIN TGE112 ON TGE112.FPAGOID=X.FPAGOID ';

   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(sSQL);
   DM1.cdsQry6.Open;

   pprResumen.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\ResumenCaja.RTM';
   pprResumen.template.LoadFromFile;

   pprComposicion.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\COMPOSICIONCOBRADO.RTM';
   pprComposicion.template.LoadFromFile;

   lblTituloCobranza.text := 'LIQUIDACION DE COBRANZA N° ' + edtCanje.text;
   pplblCobradorComposion.text := 'COBRADOR ' + dblcdCobrador.text + ' ' + edtCobrador.text;
   lblCIA.text := edtCia.text;
   lblFecha.text := DateToStr(dtpFEmis.date);

   pplblLiq2.text := 'LIQUIDACION DE COBRANZA N° ' + edtCanje.text;
   pplblCob2.text := 'COBRADOR ' + dblcdCobrador.text + ' ' + edtCobrador.text;
   pplblCIA2.text := edtCia.text;
   pplblFecha2.text := DateToStr(dtpFEmis.date);
   ppDBCalc13.DataField := '';
   If DM1.cdsQry5.RecordCount > 0 Then
      pprCheBol.Print;
   If DM1.cdsQry3.RecordCount > 0 Then
      pprComposicion.Print;
   If DM1.cdsQry6.RecordCount > 0 Then
      pprResumen.Print;
   ppDBCalc13.DataField := 'LICOMTOANTORI';
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

Procedure TFLiquidaPago.dblcdClieEnter(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'CLIEDES';
End;

Procedure TFLiquidaPago.dblcdClieRucEnter(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'CLIEDES';
End;

Procedure TFLiquidaPago.ppvCptoCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'CptoId=' + '''' + DM1.cdsDLiqCob.FieldByName('CPTOID').AsString + '''';
   Value := BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOABR');
End;

Procedure TFLiquidaPago.dbgbtnRegClick(Sender: TObject);
Begin

   InsertaPago;
End;

Procedure TFLiquidaPago.InsertaPago;
Begin
{   DM1.cdsDPag.Insert;
   DM1.cdsDPag.FieldByName('CIAID').AsString   := dblcCia.Text;
   DM1.cdsDPag.FieldByName('NOTACOB').AsString:= edtCanje.Text;
   DM1.cdsDPag.FieldByName('CLAUXID').AsString := DM1.cdsCobranza.FieldByName('CLAUXID').AsString;
   DM1.cdsDPag.FieldByName('CLIEID').AsString  := DM1.cdsCobranza.FieldByName('CLIEID').AsString;
   DM1.cdsDPag.FieldByName('CLIERUC').AsString := DM1.cdsCobranza.FieldByName('CLIERUC').AsString;
   xModoL := 'A';}
End;

Procedure TFLiquidaPago.bbtnRegCancClick(Sender: TObject);
Begin
   If xModoL = 'A' Then
      DM1.cdsDPag.Delete
   Else
   Begin
      DM1.cdsDPag.Cancel;
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFLiquidaPago.bbtnRegOkClick(Sender: TObject);
Begin
{   If Length(dblcFPago.Text)=0 then begin
   dblcFpago.SetFocus;
   Raise Exception.Create('Error :  Falta Forma de Pago');
  end;
  If Length(dblcMon.Text)=0 then begin
   dblcMon.SetFocus;
   Raise Exception.Create('Error :  Falta Tipo de Moneda');
  end;
  If DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat<=0 then begin
   dbeImp.SetFocus;
   Raise Exception.Create('Error :  Falta Registar Monto');
  end;

  DM1.cdsDPag.Edit;
  DM1.cdsDPag.FieldByName('NCOTCAMB').AsFloat := DM1.cdsCobranza.FieldByName('NCOTCAMB').AsFloat;
  If DM1.cdsDPag.FieldByName('TMONID').AsString=DM1.wTMonLoc then begin
   DM1.cdsDPag.FieldByName('NCOMTOLOC').AsFloat := FRound( DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat,15,2);
   DM1.cdsDPag.FieldByName('NCOMTOEXT').AsFloat := FRound( DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat/DM1.cdsDPag.FieldByName('NCOTCAMB').AsFloat,15,2);
   end
  Else begin
   DM1.cdsDPag.FieldByName('NCOMTOEXT').AsFloat := FRound( DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat,15,2);
   DM1.cdsDPag.FieldByName('NCOMTOLOC').AsFloat := FRound( DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat*DM1.cdsDPag.FieldByName('NCOTCAMB').AsFloat,15,2);
  end;

  DM1.cdsDPag.FieldByName('NCOANO').AsString   := DM1.cdsCobranza.FieldByName('NCOANO').AsString;
  DM1.cdsDPag.FieldByName('NCOMM').AsString    := DM1.cdsCobranza.FieldByName('NCOMM').AsString;
  DM1.cdsDPag.FieldByName('NCODD').AsString    := DM1.cdsCobranza.FieldByName('NCODD').AsString;
  DM1.cdsDPag.FieldByName('NCOTRI').AsString   := DM1.cdsCobranza.FieldByName('NCOTRI').AsString;
  DM1.cdsDPag.FieldByName('NCOSEM').AsString   := DM1.cdsCobranza.FieldByName('NCOSEM').AsString;
  DM1.cdsDPag.FieldByName('NCOSS').AsString    := DM1.cdsCobranza.FieldByName('NCOSS').AsString;
  DM1.cdsDPag.FieldByName('NCOANOMM').AsString := DM1.cdsCobranza.FieldByName('NCOANOMM').AsString;
  DM1.cdsDPag.FieldByName('NCOAATRI').AsString := DM1.cdsCobranza.FieldByName('NCOAATRI').AsString;
  DM1.cdsDPag.FieldByName('NCOAASEM').AsString := DM1.cdsCobranza.FieldByName('NCOAASEM').AsString;
  DM1.cdsDPag.FieldByName('NCOAASS').AsString  := DM1.cdsCobranza.FieldByName('NCOAASS').AsString;
  DM1.cdsDPag.Post;

  if xModoL='A' then
   InsertaPago
  else begin
   pnlRegistro.Visible:=False;
  end;
  bbtnSumatClick(Sender);}
End;

Procedure TFLiquidaPago.ppvTMCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=''' + DM1.cdsDPag.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', 'TMONABR', xWhere, 'TMONABR');
End;

Procedure TFLiquidaPago.dblcCPTOExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcCPTO.Text) = 0 Then Exit;

   xWhere := 'CPTOID=''' + dblcCPTO.Text + ''' and OPCMENU=''C''';
   DM1.cdsDLiqCob.Edit;
   DM1.cdsDLiqCob.FieldByName('CPTODES').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOABR', xWhere, 'CPTOABR');
End;

Procedure TFLiquidaPago.dblcClAuxExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelDocumento.Focused Then Exit;

   If length(dblcClAux.text) = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DM1.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClAux.Text));
End;

Procedure TFLiquidaPago.ppHeaderBand1BeforeGenerate(Sender: TObject);
Var
   xsimbolo, xMoneda, xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DM1.cdsCLiqCob1.FieldByName('TMONID').AsString + '''';
   xmoneda := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMON_LOC');
   xsimbolo := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMONDES');
   If xmoneda = 'L' Then
   Begin
//'     lblCantidad.text:=DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsString;
      lblImporte.text := DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsString;
      pplblLetras.Text := 'LA CANTIDAD DE : ' + Trim(strNum(DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + '   ' + xsimbolo);
   End
   Else
   Begin
//     lblCantidad.text :=DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsString;
      lblImporte.text := DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsString;
      pplblLetras.Text := 'LA CANTIDAD DE : ' + Trim(strNum(DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + '   ' + xsimbolo);
   End;
End;

Procedure TFLiquidaPago.ppDBText14Print(Sender: TObject);
Var
   xWhere: String;
Begin
//   xWhere:= 'TMonId='+''''+DM1.cdsDLiqCob.FieldByName('TMONID').AsString+'''';
//   ppDBText14.text := BuscaQry('dspTGE','TGE103','*',xWhere,'TMonAbr');
End;

Procedure TFLiquidaPago.dblcdCobradorExit(Sender: TObject);
Begin
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If length(dblcdCobrador.Text) > 0 Then
   Begin
      edtCobrador.Text := DisplayDescrip('CXC206', 'CONOMBRES', 'COID', dblcdCobrador.Text);
      If length(edtCobrador.Text) = 0 Then
      Begin
         ShowMessage('Cobrador No existe');
         dblcdCobrador.Text := '';
         dblcdCobrador.SetFocus;
         exit;
      End;
   End
   Else
   Begin
      edtCobrador.Text := '';
      dblcdCobrador.SetFocus;
   End;
End;

Procedure TFLiquidaPago.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFLiquidaPago.dblcZonaExit(Sender: TObject);
Begin
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   edtZona.Text := DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcZona.Text);
   If length(edtZona.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcZona.Text := '';
      dblcZona.SetFocus;
   End;
End;

Procedure TFLiquidaPago.dbgLiqCobranzaDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiquidaPago.dbgLiqCobranzaMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   If DM1.cdsDLiqCob1.RecordCount > 0 Then
      dbgLiqCobranza.BeginDrag(False);
End;

Procedure TFLiquidaPago.dbgLiqCobranzaEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Var
   bmk: TBookMark;
Begin
End;

Procedure TFLiquidaPago.Z2OkDetalleClick(Sender: TObject);
Var
   xTCambio: double;
   cdsClone: TwwClientDataSet;
   sSQL: String;
Begin
   If (DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat = 0) Or (DM1.cdsDocCobranza.FieldByName('LICOMTOORI').IsNull) Then
   Begin
      dbeACobrar.setFocus;
      Raise Exception.Create('Ingrese Monto');
   End;

   If DM1.cdsDocCobranza.State = dsInsert Then
   Begin
      If sKeyCNum = 'S' Then
      Begin
         sSQL := ' SELECT LICOID FROM CXC324 ' +
            ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND FPAGOID=' + QuotedStr(dblcFormPago.text) +
            ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text) +
            ' AND LICONOCHQ=' + QuotedStr(dbeNoChq.text);

         If DM1.wsFChe = dblcFormPago.text Then
         Begin
            sSQL := sSQL + ' AND CLIEID=' + QuotedStr(dblcClieFormaPago.text);
         End;

         If DM1.wsFNDep = dblcFormPago.text Then
         Begin
            sSQL := sSQL + ' AND LICOAGBCO=' + QuotedStr(dblcClieFormaPago.text) +
               ' AND TMONID=' + QuotedStr(dblcTMonC.text) +
               ' AND FECPAGO=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFecha.Date) + ''' )';
         End;

         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(sSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            If DM1.cdsDocCobranza.state = dsInsert Then
            Begin
               Raise Exception.Create(edtFormPago.text + ' ya se registró ' + #13 + 'Liquidación N°: ' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString));
            End
            Else
            Begin
               ShowMessage(edtFormPago.text + ' ya se registró ' + #13 + 'Liquidación N°: ' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString));
            End;
         End
         Else
         Begin
            cdsClone := TwwClientDataSet.create(Nil);
            cdsClone.CloneCursor(DM1.cdsDocCobranza, False, True);

            If DM1.wsFChe = dblcFormPago.text Then
            Begin
               cdsClone.IndexFieldNames := 'CIAID;FPAGOID;BANCOID;LICONOCHQ;CLIEID';
            End
            Else
            Begin
               cdsClone.IndexFieldNames := 'CIAID;FPAGOID;BANCOID;LICONOCHQ;FECPAGO;TMONID;LICOAGBCO';
            End;
            cdsClone.Setkey;
            cdsClone.FieldByName('CIAID').AsString := dblcCia.text;
            cdsClone.FieldByName('FPAGOID').AsString := dblcFormPago.text;
            cdsClone.FieldByName('BANCOID').AsString := dblcBancoFPago.text;
            cdsClone.FieldByName('LICONOCHQ').AsString := dbeNoChq.text;
            If DM1.wsFChe = dblcFormPago.text Then
            Begin
               cdsClone.FieldByName('CLIEID').AsString := dblcClieFormaPago.text;
            End
            Else
            Begin
               cdsClone.FieldByName('FECPAGO').AsDateTime := dbdtpFecha.Date;
               cdsClone.FieldByName('TMONID').AsString := dblcTMonC.text;
               cdsClone.FieldByName('LICOAGBCO').AsString := dbeAgencia.text;
            End;
            If cdsClone.gotokey Then
            Begin
               cdsClone.Free;
               If DM1.cdsDocCobranza.state = dsInsert Then
               Begin
                  Raise Exception.Create('Aviso: ' + edtFormPago.text + ' ya se registró en un registro anterior');
               End
               Else
               Begin
                  ShowMessage(edtFormPago.text + ' ya se registró ' + #13 + 'Liquidación N°: ' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString));
               End;
            End
            Else
            Begin
               cdsClone.Free;
            End;
         End;
      End
      Else
      Begin
         sSQL := ' SELECT LICOID FROM CXC324 ' +
            ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND FPAGOID=' + QuotedStr(dblcFormPago.text) +
            ' AND TMONID=' + QuotedStr(dblcTMonC.text) +
            ' AND LICOID=' + QuotedStr(dbeNoChq.text);

         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(sSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            Raise Exception.Create(edtFormPago.text + ' ya se registró ' + #13 + 'Liquidación N°: ' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString));
         End
         Else
         Begin
            cdsClone := TwwClientDataSet.create(Nil);
            cdsClone.CloneCursor(DM1.cdsDocCobranza, False, True);

            cdsClone.IndexFieldNames := 'CIAID;LICOID;FPAGOID;TMONID';
            cdsClone.Setkey;
            cdsClone.FieldByName('CIAID').AsString := dblcCia.text;
            cdsClone.FieldByName('LICOID').AsString := edtCanje.text;
            cdsClone.FieldByName('FPAGOID').AsString := dblcFormPago.text;
            cdsClone.FieldByName('TMONID').AsString := dblcTMonC.text;
            If cdsClone.gotokey Then
            Begin
               cdsClone.Free;
               Raise Exception.Create('Aviso: ' + edtFormPago.text + ' en ' + edtTMonC.text + ' ya se registró en un registro anterior');
            End
            Else
            Begin
               cdsClone.Free;
            End;
         End;
      End;
   End;

   xTCambio := StrToFloat(EdtTCambio.text);

   If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
   Begin
   //DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat:=FRound(DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat/xTCambio,15,2);
      DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat;
      DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat := 0;

      DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat := 0;
      DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat := 0;
      DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat := 0;

      DM1.cdsDocCobranza.FieldByName('LICOSALORI').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat;
   //DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat:=DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat-DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat;
      DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat := 0;
      DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat;
   End
   Else
   Begin
      If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonExt Then
      Begin
    //DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat:=FRound(DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat*xTCambio,15,2);
         DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat := 0;
         DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat;

         DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat := 0;
         DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat := 0;
         DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat := 0;

         DM1.cdsDocCobranza.FieldByName('LICOSALORI').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat;
         DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat;
    //DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat:=DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat-DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat;
         DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat := 0;
      End
   End;

   DM1.cdsDocCobranza.FieldByName('FPAGODES').AsString := edtFormPago.text;
   DM1.cdsDocCobranza.FieldByName('BANCODES').AsString := edtBcoFPago.text;
   DM1.cdsDocCobranza.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsDocCobranza.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsDocCobranza.FieldByName('LICOHREG').AsDateTime := TimeS;

   DM1.cdsDocCobranza.FieldByName('TMONID').AsString := dblcTMonC.text;
   DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat := xTCambio;
   DM1.cdsDocCobranza.FieldByName('FECPAGO').Value := dbdtpFecha.date;

   If BuscaFecha('TGE114', 'Fecha', dbdtpFecha.Date) Then
   Begin
      DM1.cdsDocCobranza.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsDocCobranza.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
      DM1.cdsDocCobranza.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
      DM1.cdsDocCobranza.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DM1.cdsDocCobranza.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DM1.cdsDocCobranza.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
      DM1.cdsDocCobranza.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
      DM1.cdsDocCobranza.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DM1.cdsDocCobranza.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DM1.cdsDocCobranza.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DM1.cdsDocCobranza.Post;

   pnlFPago.Visible := False;
   bbtnSumatClick(Sender);
   DM1.cdsDocCobranza.DataRequest('SELECT * FROM CXC324 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsDocCobranza, 'DOCCOBRANZA');
   DM1.cdsCLiqCob1.Edit;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'I';
   DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat := xTotLoc;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat := xTotExt;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xAboLoc;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xAboExt;
   DM1.cdsCLiqCob1.Post;
   DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
End;

Procedure TFLiquidaPago.z2CancelDetalleClick(Sender: TObject);
Begin
   DM1.cdsDocCobranza.Cancel;
   pnlFPago.Visible := False;
   bbtnSumatClick(Sender);
End;

Procedure TFLiquidaPago.dblcFormPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.focused Then exit;

   edtFormPago.text := BuscaQry('dspTGE', 'TGE112', 'FPAGOID,FPAGODES,FPAGOBCO,FCHQ,FNDE,KEYCNUM', 'FPAGOID=' + QuotedStr(dblcFormPago.text), 'FPAGODES');
   sKeyCNum := DM1.cdsQry.FieldByName('KEYCNUM').AsString;
   If Length(edtFormPago.text) = 0 Then
   Begin
      ShowMessage('Ingrese Forma de Pago');
      dblcFormPago.SetFocus;
      exit;
   End;
   If Trim(DM1.cdsQry.FieldByName('FPAGOBCO').AsString) = 'S' Then
   Begin
      dbdtpFechaCheque.enabled := (DM1.cdsQry.FieldByName('FCHQ').AsString = '1') Or (DM1.cdsQry.FieldByName('FCHQ').AsString = 'S');
      dblcCCB.enabled := (DM1.cdsQry.FieldByName('FNDE').AsString = '1') Or (DM1.cdsQry.FieldByName('FNDE').AsString = 'S');
      dblcBancoFPago.enabled := True;
      dbeNoChq.enabled := True;
      dblcClAuxFormaPago.enabled := (DM1.cdsQry.FieldByName('FCHQ').AsString = '1') Or (DM1.cdsQry.FieldByName('FCHQ').AsString = 'S');
      dblcClieFormaPago.enabled := (DM1.cdsQry.FieldByName('FCHQ').AsString = '1') Or (DM1.cdsQry.FieldByName('FCHQ').AsString = 'S');
      dbeAgencia.enabled := (DM1.cdsQry.FieldByName('FNDE').AsString = '1') Or (DM1.cdsQry.FieldByName('FNDE').AsString = 'S');
      dblcBancoFPago.SetFocus;
   End
   Else
   Begin
      dblcBancoFPago.enabled := False;
      dblcBancoFPago.text := '';
      edtBcoFPago.text := '';
      dbeNoChq.enabled := False;
      dbeNoChq.text := '';
      dblcCCB.enabled := False;
      dblcCCB.text := '';
      dbdtpFechaCheque.enabled := False;
      dbdtpFechaCheque.Date := 0;
      dblcClAuxFormaPago.enabled := False;
      dblcClAuxFormaPago.text := '';
      dblcClieFormaPago.enabled := False;
      dblcClieFormaPago.text := '';
      dbeAgencia.enabled := False;
      dbeAgencia.text := '';
      dblcTMonC.SetFocus;
   End;

End;

Procedure TFLiquidaPago.dblcBancoFPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.focused Then exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;

   edtBcoFPago.text := DisplayDescrip('TGE105', 'BANCONOM', 'BANCOID', dblcBancoFPago.text);
   If Length(edtBcoFPago.text) = 0 Then
   Begin
      ShowMessage('Ingrese Banco');
      dblcBancoFPago.SetFocus;
      exit;
   End;
End;

Procedure TFLiquidaPago.dbeNoChqExit(Sender: TObject);
Begin
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If Length(dbeNoChq.text) = 0 Then
   Begin
      ShowMessage('Ingrese Documento');
      dbeNoChq.SetFocus;
      exit;
   End;
End;

Procedure TFLiquidaPago.dblcTMonCExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If z2CancelDetalle.focused Then exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;

   xWhere := 'TMonId=' + '''' + dblcTMonC.Text + ''''
      + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';

   edtTMonC.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMonC.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMonC.SetFocus;
      exit;
   End;
//CLG: 08/03/2002
   // SI ES NOTA DE DEPOSITO EN BANCO HABILITAR CUENTA CORRIENTE
   // Y FILTRAR CUENTACORRIENTE POR TIPO DE MONEDA Y BANCO.
   If dblcCCB.enabled Then
   Begin
     //DM1.cdsBCOCCB.DataRequest('SELECT * FROM TGE105')
      FiltraTabla(DM1.cdsCCBco, 'TGE106', 'CCBcoId');
      DM1.cdsCCBco.Filter := 'TMONID=' + QuotedStr(dblcTMonC.text) + ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text);
      DM1.cdsCCBco.Filtered := True;
   End;

End;

Procedure TFLiquidaPago.edtTCambioExit(Sender: TObject);
Begin
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If StrToFloat(edtTCambio.text) = 0 Then
   Begin
      ShowMessage('Ingrese Tipo de cambio');
      edtTCambio.SetFocus;
      exit;
   End;
End;

Procedure TFLiquidaPago.dbdtpFechaExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If dbdtpFecha.date = 0 Then
   Begin
      dbdtpFecha.SetFocus;
      Raise Exception.Create('Ingrese Fecha');
   End;

   // Tipo de Cambio
   xWhere := 'TMonId=''' + DM1.wTMonExt + ''' and '
      + 'Fecha=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFecha.Date) + '''' + ')';
   xxTCambio := 0;
   If length(BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DM1.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
   Begin
      EdtTCambio.enabled := True;
      EdttCambio.text := FloatToStr(DM1.cdsQry.FieldByName('TCAM' + DM1.WVRN_TIPOCAMBIO).AsFloat);
   End
   Else
   Begin
      EdtTCambio.enabled := True;
      EdtTCambio.text := '0.000';
   End;
   EdtTCambio.SetFocus;
End;

Procedure TFLiquidaPago.ppVarMonAbrCalc(Sender: TObject; Var Value: Variant);
Begin
   Value := DisplayDescrip('TGE103', 'TMONABR', 'TMONID', DM1.cdsDLiqCob1.FieldByName('TMONID').AsString);
End;

Procedure TFLiquidaPago.ppVarMonPagCalc(Sender: TObject; Var Value: Variant);
Begin
//  Value:=DisplayDescrip('TGE103','TMONABR', 'TMonID',ppdbtMonPag.Text);
   Value := DisplayDescrip('TGE103', 'TMONABR', 'TMonID', DM1.cdsDLiqCob1.FieldByName('TMONID').AsString);
End;

Procedure TFLiquidaPago.MonedaExt(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + QuotedStr(dm1.wTMonExt);
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLiquidaPago.bbtnResumenClick(Sender: TObject);
Var
   sNDE, sEFE, sCHE, sSQL: String;
Begin
   sCHE := DisplayDescrip('TGE112', 'FPAGOID', 'FCHQ', '1');
   sSQL := ' SELECT MONEXT,MONLOC,X.FPAGOID,RTRIM(TGE112.FPAGODES)||DIF FPAGODES FROM (SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOLOC ELSE 0 END) MONLOC,'''' DIF ' +
      ' FROM CXC324 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID<>' + QuotedStr(sCHE) +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOLOC ELSE 0 END) MONLOC,'''' DIF ' +
      ' FROM CXC324 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID=' + QuotedStr(sCHE) + ' AND FECPAGO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + '''' + ') ' +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOLOC ELSE 0 END) MONLOC,'' DIFERIDO'' DIF ' +
      ' FROM CXC324 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID=' + QuotedStr(sCHE) + ' AND FECPAGO>' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + '''' + ') ' +
      ' GROUP BY FPAGOID)X ' +
      ' LEFT JOIN TGE112 ON TGE112.FPAGOID=X.FPAGOID ' +
      ' ORDER BY FPAGOID ';

   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(sSQL);
   DM1.cdsQry6.Open;
   If DM1.cdsQry6.RecordCount = 0 Then
   Begin
      ShowMessage('No existen Registros');
      pnlResumen.Visible := False;
   End
   Else
   Begin
      dbgFormaPago.Selected.Clear;
      dbgFormaPago.Selected.Add('FPAGODES'#9'18'#9'Forma~de Pago'#9'F');
      dbgFormaPago.Selected.Add('MONLOC'#9'12'#9'Moneda~Local'#9'F');
      dbgFormaPago.Selected.Add('MONEXT'#9'12'#9'Moneda~Extranjero'#9'F');
      TNumericField(DM1.cdsQry6.FieldByName('MONLOC')).displayFormat := '###,###,###0.00';
      TNumericField(DM1.cdsQry6.FieldByName('MONEXT')).displayFormat := '###,###,###0.00';
      dbgFormaPago.ColumnByName('MONLOC').FooterValue := floattostrf(OperClientDataSet(DM1.cdsQry6, 'SUM(' + 'MONLOC' + ')', ''), ffNumber, 15, 2);
      dbgFormaPago.ColumnByName('MONEXT').FooterValue := floattostrf(OperClientDataSet(DM1.cdsQry6, 'SUM(' + 'MONEXT' + ')', ''), ffNumber, 15, 2);
      dbgFormaPago.RedrawGrid;
      pnlResumen.Visible := true;
   End;
End;

Procedure TFLiquidaPago.Button1Click(Sender: TObject);
Begin
   pnlResumen.Visible := false;
End;

Procedure TFLiquidaPago.ppVariable4Calc(Sender: TObject; Var Value: Variant);
Begin
   value := BuscaQry('dspTGE', 'TGE204', 'CLIEDES', 'CLIEID=' + quotedstr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString), 'CLIEDES');

End;

Procedure TFLiquidaPago.InsertaConsolidado;
Var
   sSQL, sCob, sCobDes, sWhere, sNumLiq: String;
Begin
 //VERIFICA QUE EXISTA COBRADOR DE CONSOLIDACION
   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) + ' AND COCONS=' + QuotedStr('S');
   sCob := BuscaQry('dspTGE', 'CXC206', 'COID,CONOMBRES', sWhere, 'COID');
   sCobDes := DM1.cdsQry.FieldByName('CONOMBRES').AsString;
   If sCob = '' Then
      Raise Exception.Create('No se puede Crear Consolidado porque no existe Cobrador');

   sSQL := ' SELECT LICOID FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) +
      ' AND COID=' + QuotedStr(sCob) + ' AND CCFEMIS=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + ''' )' +
      ' AND LICOESTADO=' + QuotedStr('P') + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      sNumLiq := DM1.cdsQry.FieldByName('LICOID').AsString;
//   sNumLiqNew:='';
  //ACTUALIZA LA CABECERA DE LA LIQUIDACION DE COBRANZA
      sSQL := ' UPDATE CXC318 ' + //new
         ' SET LICOMTOABOLOC=LICOMTOABOLOC+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + ',' +
         '     LICOMTOORI=LICOMTOORI+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOORI').AsFloat) + ',' +
         '     LICOMTOABOEXT=LICOMTOABOEXT+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + ',' +
         '     LICOMTOLOC=LICOMTOLOC+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat) + ',' +
         '     LICOMTOEXT=LICOMTOEXT+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat) + ',' +
         ' LICOHREG=CURRENT TIME, LICOFREG=CURRENT DATE ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(sNumLiq) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

  //INSERT DETALLE DE LA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC319 ' +
         ' (CUENTAID,CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
         ' LICOELABO,LICOAPROB,FECPAGO,LICOMM,LICODD,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOTRI, ' +
         ' LICOSEM,LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CCFEMIS,CCFVCMTO ' +
         ' CLAUXID,CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,FPAGOID,LICOSALEXT,FPAGONODOC, ' +
         ' BANCOID,FLAGVAR,TMONIDPAGO,CLIEDES,LICOMTOABOORI) ' +
         ' SELECT CUENTAID,' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, ' + QuotedStr(sCob) + ' COID, LIQ.TMONID, LIQ.LICOTCAMB, LIQ.LICOMTOABOLOC, LIQ.LICOMTOORI, ' +
         ' LIQ.LICOMTOABOEXT,LIQ.LICOMTOLOC,LIQ.LICOMTOEXT,LIQ.LICOELABO,LIQ.LICOAPROB,LIQ.FECPAGO, ' +
         ' FEC.FECMES LICOMM, FEC.FECDIA LICODD,LIQ.LICOESTADO,' + QuotedStr(DM1.wUsuario) + ' LICOUSER, ' + DM1.wRepFecServi + ' LICOFREG,' + DM1.wRepTimeServi + ' LICOHREG, ' +
         ' FEC.FECANO LICOANO,FEC.FECTRIM LICOTRI, FEC.FECSEM LICOSEM,FEC.FECSS LICOSS,FEC.FECANO||FEC.FECMES LICOANOMM, FEC.FECAATRI LICOAATRI,LIQ.DOCID,FEC.FECAASEM LICOAASEM,LIQ.CCNODOC,FEC.FECAASS LICOAASS, ' +
         ' LIQ.TDIARID,LIQ.CLIEID,LIQ.CCSERIE,LIQ.CCFEMIS,LIQ.CCFVCMTO,LIQ.CLAUXID,' + QuotedStr(sCobDes) + ' CONOMBRES,LIQ.TVTAID,LIQ.CCNORGE, ' +
         ' LIQ.LICOTCAMBL,LIQ.LICOSALORI,LIQ.LICOSALLOC,LIQ.FPAGOID,LIQ.LICOSALEXT,LIQ.FPAGONODOC,LIQ.BANCOID, ' +
         ' LIQ.FLAGVAR,LIQ.TMONIDPAGO,LIQ.CLIEDES,LIQ.LICOMTOABOORI ' +
         ' FROM CXC319 LIQ ' +
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=' + DM1.wRepFecServi +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

  //INSERTA DETALLE DE LA FORMA DE PAGO

      sSQL := ' INSERT INTO CXC324 ' +
         ' (CIAID,LICOID,CLAUXID,CLIEID,CLIERUC,FPAGOID,FPAGODES,LICOTCAMB,LICOMTOLOC,LICOMTOEXT, ' +
         ' BANCOID,BANCODES,LICONOCHQ,LICOUSER,LICOFREG,LICOHREG,TMONID,FECPAGO,COID,TVTAID,FECEMICHQ, ' +
         ' CCBCOID,CUENTAID,CCFEMIS,CCFVCMTO,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM, ' +
         ' LICOAATRI,LICOAASEM,LICOAASS,LICOMTOORI,LICOAGBCO,LICOITEM,LICOSALORI,LICOSALEXT,LICOSALLOC, ' +
         ' LICOMTOABOORI,LICOMTOABOEXT,LICOMTOABOLOC) ' +
         ' SELECT ' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, PAG.CLAUXID,PAG.CLIEID,PAG.CLIERUC,PAG.FPAGOID,PAG.FPAGODES,PAG.LICOTCAMB,PAG.LICOMTOLOC,PAG.LICOMTOEXT, ' +
         ' PAG.BANCOID,PAG.BANCODES,PAG.LICONOCHQ,PAG.LICOUSER,PAG.LICOFREG,PAG.LICOHREG,PAG.TMONID,PAG.FECPAGO,' + QuotedStr(sCob) + ' COID,PAG.TVTAID,PAG.FECEMICHQ, ' +
         ' PAG.CCBCOID,PAG.CUENTAID,PAG.CCFEMIS,PAG.CCFVCMTO,PAG.LICOANO,PAG.LICOMM,PAG.LICODD,PAG.LICOTRI,PAG.LICOSEM,PAG.LICOSS,PAG.LICOANOMM, ' +
         ' PAG.LICOAATRI,PAG.LICOAASEM,PAG.LICOAASS,PAG.LICOMTOORI,PAG.LICOAGBCO,PAG.LICOITEM,PAG.LICOSALORI,PAG.LICOSALEXT,PAG.LICOSALLOC, ' +
         ' PAG.LICOMTOABOORI,PAG.LICOMTOABOEXT,PAG.LICOMTOABOLOC ' +
         ' FROM CXC324 PAG ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   End
   Else
   Begin

  // FALTA CAPTURAR EL NUMERO DE LA LIQUIDACION A INSERTAR
      sSQL := ' SELECT MAX(LICOID) NUMERO FROM CXC318 ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If (DM1.cdsQry.FieldByName('NUMERO').IsNull) Or (DM1.cdsQry.FieldByName('NUMERO').AsString = '') Then
         sNumLiq := '000001'
      Else
         sNumLiq := StrZero(IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUMERO').AsString) + 1), 6);

  // INSERT LA CABECERA DE LA NUEVA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC318 ' +
         ' (CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT,LICOELABO, ' +
         ' LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM, ' +
         ' LICOAATRI,LICOAASEM,LICOAASS,CCFEMIS,CLAUXID,CCONOMBRES,TVTAID) ' +
         ' SELECT ' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, ' + QuotedStr(sCob) + ' COID, LIQ.TMONID, LIQ.LICOTCAMB, LIQ.LICOMTOABOLOC, LIQ.LICOMTOORI, ' +
         ' LIQ.LICOMTOABOEXT, LIQ.LICOMTOLOC, LIQ.LICOMTOEXT, LIQ.LICOELABO, LIQ.LICOAPROB, ''P'' LICOESTADO, ' +
         QuotedStr(DM1.wUsuario) + ' LICOUSER, ' + DM1.wRepFecServi + ' LICOFREG, ' + DM1.wRepTimeServi + ' LICOHREG, FEC.FECANO LICOANO, FEC.FECMES LICOMM, FEC.FECDIA LICODD, FEC.FECTRIM LICOTRI, ' +
         ' FEC.FECSEM LICOSEM, FEC.FECSS LICOSS, FEC.FECANO||FEC.FECMES LICOANOMM, FEC.FECAATRI LICOAATRI, FEC.FECAASEM LICOAASEM, FEC.FECAASS LICOAASS, LIQ.CCFEMIS, ' +
         ' LIQ.CLAUXID, ' + QuotedStr(sCobDes) + ', LIQ.TVTAID ' +
         ' FROM CXC318 LIQ ' +
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=LIQ.CCFEMIS ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

  //INSERT DETALLE DE LA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC319 ' +
         ' (CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
         ' LICOELABO,LICOAPROB,FECPAGO,LICOMM,LICODD,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOTRI, ' +
         ' LICOSEM,LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CCFEMIS,CCFVCMTO,CUENTAID, ' +
         ' CLAUXID,CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,FPAGOID,LICOSALEXT,FPAGONODOC, ' +
         ' BANCOID,FLAGVAR,TMONIDPAGO,CLIEDES,LICOMTOABOORI) ' +
         ' SELECT ' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, ' + QuotedStr(sCob) + ' COID, LIQ.TMONID, LIQ.LICOTCAMB, LIQ.LICOMTOABOLOC, LIQ.LICOMTOORI, ' +
         ' LIQ.LICOMTOABOEXT,LIQ.LICOMTOLOC,LIQ.LICOMTOEXT,LIQ.LICOELABO,LIQ.LICOAPROB,LIQ.FECPAGO, ' +
         ' FEC.FECMES LICOMM, FEC.FECDIA LICODD,LIQ.LICOESTADO,' + QuotedStr(DM1.wUsuario) + ' LICOUSER, ' + DM1.wRepFecServi + ' LICOFREG,' + DM1.wRepTimeServi + ' LICOHREG, ' +
         ' FEC.FECANO LICOANO,FEC.FECTRIM LICOTRI, FEC.FECSEM LICOSEM,FEC.FECSS LICOSS,FEC.FECANO||FEC.FECMES LICOANOMM, FEC.FECAATRI LICOAATRI,LIQ.DOCID,FEC.FECAASEM LICOAASEM,LIQ.CCNODOC,FEC.FECAASS LICOAASS, ' +
         ' LIQ.TDIARID,LIQ.CLIEID,LIQ.CCSERIE,LIQ.CCFEMIS,LIQ.CCFVCMTO,LIQ.CUENTAID,LIQ.CLAUXID,' + QuotedStr(sCobDes) + ' CONOMBRES,LIQ.TVTAID,LIQ.CCNORGE, ' +
         ' LIQ.LICOTCAMBL,LIQ.LICOSALORI,LIQ.LICOSALLOC,LIQ.FPAGOID,LIQ.LICOSALEXT,LIQ.FPAGONODOC,LIQ.BANCOID, ' +
         ' LIQ.FLAGVAR,LIQ.TMONIDPAGO,LIQ.CLIEDES,LIQ.LICOMTOABOORI ' +
         ' FROM CXC319 LIQ ' +
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=' + DM1.wRepFecServi +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

  //INSERTA DETALLE DE LA FORMA DE PAGO

      sSQL := ' INSERT INTO CXC324 ' +
         ' (CIAID,LICOID,CLAUXID,CLIEID,CLIERUC,FPAGOID,FPAGODES,LICOTCAMB,LICOMTOLOC,LICOMTOEXT, ' +
         ' BANCOID,BANCODES,LICONOCHQ,LICOUSER,LICOFREG,LICOHREG,TMONID,FECPAGO,COID,TVTAID,FECEMICHQ, ' +
         ' CCBCOID,CUENTAID,CCFEMIS,CCFVCMTO,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM, ' +
         ' LICOAATRI,LICOAASEM,LICOAASS,LICOMTOORI,LICOAGBCO,LICOITEM,LICOSALORI,LICOSALEXT,LICOSALLOC, ' +
         ' LICOMTOABOORI,LICOMTOABOEXT,LICOMTOABOLOC) ' +
         ' SELECT ' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, PAG.CLAUXID,PAG.CLIEID,PAG.CLIERUC,PAG.FPAGOID,PAG.FPAGODES,PAG.LICOTCAMB,PAG.LICOMTOLOC,PAG.LICOMTOEXT, ' +
         ' PAG.BANCOID,PAG.BANCODES,PAG.LICONOCHQ,PAG.LICOUSER,PAG.LICOFREG,PAG.LICOHREG,PAG.TMONID,PAG.FECPAGO,' + QuotedStr(sCob) + ' COID,PAG.TVTAID,PAG.FECEMICHQ, ' +
         ' PAG.CCBCOID,PAG.CUENTAID,PAG.CCFEMIS,PAG.CCFVCMTO,PAG.LICOANO,PAG.LICOMM,PAG.LICODD,PAG.LICOTRI,PAG.LICOSEM,PAG.LICOSS,PAG.LICOANOMM, ' +
         ' PAG.LICOAATRI,PAG.LICOAASEM,PAG.LICOAASS,PAG.LICOMTOORI,PAG.LICOAGBCO,PAG.LICOITEM,PAG.LICOSALORI,PAG.LICOSALEXT,PAG.LICOSALLOC, ' +
         ' PAG.LICOMTOABOORI,PAG.LICOMTOABOEXT,PAG.LICOMTOABOLOC ' +
         ' FROM CXC324 PAG ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   End;

End;

Procedure TFLiquidaPago.InsertaCheques;
Begin
End;

Procedure TFLiquidaPago.dblcNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFLiquidaPago.PageControl1Change(Sender: TObject);
Begin
{   DM1.cdsDetPagoLiq.MasterSource:=DM1.dsDLiqCob1;
  DM1.cdsDetPagoLiq.MasterFields:='CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';
   DM1.cdsDetPagoLiq.IndexFieldNames:='CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';}
End;

Procedure TFLiquidaPago.ActualizaDocumentosEncargados;
Begin
   DM1.cdsDLiqCob.Filtered := False;
   DM1.cdsDLiqCobClone.Filtered := False;

   If DM1.cdsDLiqCob.IndexFieldNames <> 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC' Then
      DM1.cdsDLiqCob.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';

   DM1.cdsDLiqCob1.First;
   While Not DM1.cdsDLiqCob1.EOF Do
   Begin
      If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      Begin
         DM1.cdsDLiqCob.SetKey;
         DM1.cdsDLiqCob.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
         DM1.cdsDLiqCob.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
         DM1.cdsDLiqCob.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;

         DM1.cdsDLiqCobClone.SetKey;
         DM1.cdsDLiqCobClone.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
         DM1.cdsDLiqCobClone.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
         DM1.cdsDLiqCobClone.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsDLiqCobClone.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsDLiqCobClone.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;

         If DM1.cdsDLiqCobClone.GotoKey Then
         Begin
            DM1.cdsDLiqCobClone.Edit;
            DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOORI').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOORI').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
            DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOEXT').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOEXT').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;
            DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOLOC').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOLOC').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;

            DM1.cdsDLiqCobClone.FieldByName('LICOSALORI').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOORI').AsFloat;
            DM1.cdsDLiqCobClone.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOEXT').AsFloat - DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOEXT').AsFloat;
            DM1.cdsDLiqCobClone.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOLOC').AsFloat - DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOLOC').AsFloat;

            If DM1.cdsDLiqCobClone.FieldByName('LICOSALORI').AsFloat > 0 Then
            Begin
               DM1.cdsDLiqCobClone.FieldByName('FLAGVAR').AsString := '.'
            End
            Else
            Begin
               DM1.cdsDLiqCobClone.FieldByName('FLAGVAR').AsString := 'XX';
            End;

            DM1.cdsDLiqCobClone.Post;
         End;

         If DM1.cdsDLiqCob.GotoKey Then
         Begin
            DM1.cdsDLiqCob.Edit;
            DM1.cdsDLiqCob.FieldByName('FLAGVAR').AsString := '.';
            DM1.cdsDLiqCob.FieldByName('LICOMTOABOORI').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOORI').AsFloat;
            DM1.cdsDLiqCob.FieldByName('LICOMTOABOEXT').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOEXT').AsFloat;
            DM1.cdsDLiqCob.FieldByName('LICOMTOABOLOC').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOMTOABOLOC').AsFloat;

            DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOSALORI').AsFloat;
            DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOSALEXT').AsFloat;
            DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDLiqCobClone.FieldByName('LICOSALLOC').AsFloat;

            DM1.cdsDLiqCob.Post;
         End;
         DM1.cdsDLiqCob1.Next;
      End
      Else
      Begin
         DM1.cdsDLiqCob1.Next;
      End;
   End;
   DM1.cdsDLiqCob.Filtered := True;
   DM1.cdsDLiqCobClone.Filtered := True;
End;

{var sNumFisico,sNumMem:string;
if DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString='P' then exit;
 if DM1.cdsDLiqCob1.RecordCount=43 then
 begin
  ShowMessage('Solo se pueden aceptar 43 Documentos. Cree una nueva planilla');
  exit;
 end;

 wModoAnt:='A';
 bbtnSumatClick(Sender);
 //LIMPIA LOS CONTROLES
 edtClie.clear;
 DM1.cdsMovCxC.Insert;
 DM1.cdsDLiqCob1.Append;
 DM1.cdsMovCxC.FieldByName('CIAID').AsString:=dblcCia.text;
 DM1.cdsMovCxC.FieldByName('CCSERIE').AsString:='000';
 sNumFisico:=DM1.BuscaUltNumero(dblcCia.Text,DM1.wsAnt,'000');
 sNumMem:=DM1.BuscaUltNumeroEnMemoria(DM1.cdsMovCxC,dblcCia.Text,DM1.wsAnt,'000');
 if sNumFisico>sNumMem then
  DM1.cdsMovCxC.FieldByName('CCNODOC').AsString:=sNumFisico
 else
  DM1.cdsMovCxC.FieldByName('CCNODOC').AsString:=sNumMem;

 PnlAnticipo.Visible:=True;
 dblcClauxAnt.setFocus;

}

Procedure TFLiquidaPago.dtpFCompExit(Sender: TObject);
Var
   sNoReg, wTDiar, xTMes, xTAno, xAAMM, wLote, wMes, xWhere: String;
   Year, Month, Day: Word;
   xNoReg: integer;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If dtpFEmis.date = 0 Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Fecha ');
   End;

   xWhere := 'TMonId=''' + DM1.wTMonExt + ''' and '
      + 'Fecha=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFComp.Date) + ''' )';
   xxTCambioAnt := 0;
   If length(BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
   Begin
      xxTCambioAnt := DM1.cdsQry.FieldByName('TCAM' + DM1.WVRN_TIPOCAMBIO).AsFloat;
   End
   Else
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   DecodeDate(dtpFEmis.Date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   xAAMM := IntToStr(Year) + wMes;
   xTAno := IntToStr(Year);
   xTMes := wMes;
   wTDiar := BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCID=' + QuotedStr(DM1.wsAnt) + ' AND DOCMOD=' + QuotedStr(DM1.wModulo), 'TDIARID');
   xTAutoNum := DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);

   sNoReg := DM1.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   If sNoReg = '' Then
      xNoReg := 1
   Else
      xNoReg := StrToInt(sNoReg);
   DM1.cdsMovCxC.FieldByName('CCNOREG').AsString := StrZero(IntToStr(xNoReg), DM1.cdsMovCxC.FieldByName('CCNOREG').Size);
   DM1.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, xNoReg);
   DM1.cdsMovCxC.FieldByName('TDIARID').AsString := wTDiar;
   DM1.cdsMovCxC.FieldByName('CC_CONTA').AsString := 'N';
   DM1.cdsMovCxC.FieldByName('CCESTADO').AsString := 'I'; //ANTES ERA P
   DM1.cdsMovCxC.FieldByName('CCLOTE').AsString := '000';
   DM1.cdsMovCxC.FieldByName('DOCID').AsString := DM1.wsAnt;
   DM1.cdsMovCxC.FieldByName('CCFEMIS').AsDatetime := dtpFComp.Date;
   DM1.cdsMovCxC.FieldByName('CCANOMES').AsString := xTAno + xTMes;
   DM1.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat; //xxTCambioAnt;
   DM1.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat;
End;

Procedure TFLiquidaPago.dblcdClieExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelDocumento.Focused Then Exit;
  //if (Sender as TWincontrol).TabOrder>ActiveControl.TabOrder then Exit;

   If (Length(dblcdClie.Text) = 0) Then
   Begin
      dblcdClie.SetFocus;
      Raise Exception.Create('Ingrese Cliente');
   End;

  {if DM1.cdsClie.IndexFieldNames<>'CLIEID' then
   DM1.cdsClie.IndexFieldNames:='CLIEID';}

  {DM1.cdsClie.Setkey;
  DM1.cdsClie.FieldByName('CLIEID').AsString:=dblcdClie.text;}
  {if DM1.cdsClie.Gotokey then}
   BuscaQry('dspTGE', 'TGE204', 'CIAID,CLIEID,CLIEDES,TVTAID,ZONVTAID', 'CIAID=' + QuotedStr(dblcCia.TEXT) + ' AND CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEID');
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      edtClie.text := DM1.cdsQry.FieldByName('CLIEDES').AsString;
      xSectorAnt := DM1.cdsQry.FieldByName('TVTAID').AsString;
      xZonaAnt := DM1.cdsQry.FieldByName('ZONVTAID').AsString;
      If xSectorAnt = '' Then
      Begin
         Raise Exception.Create('Atencion: Cliente No Tiene Asignado Sector Comercial. Revise Maestro de Clientes');
      End;
   End
   Else
   Begin
      edtClie.Clear;
      dblcdClie.SetFocus;
      Raise Exception.Create('Cliente no Existe');
   End;
End;

Procedure TFLiquidaPago.dblcdTipoOperaExit(Sender: TObject);
Begin
   If length(dblcdTipoOpera.Text) > 0 Then
   Begin
// jcc 29/04/2002
      If edtTipoOpera.Text = '' Then
         edtTipoOpera.Text := dm1.cdsCptoCab.FieldByName('CPTODES').AsString;
   End
   Else
   Begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcdTipoOpera.SetFocus;
      exit;
   End
End;

Procedure TFLiquidaPago.bbtnCancelDocumentoClick(Sender: TObject);
Begin
   DM1.cdsTDoc.Filter := '';
   ;
   DM1.cdsTDoc.Filtered := False;
   DM1.cdsDLiqCob1.Cancel;
   pnlDocumento.Visible := False;
   bbtnSumatClick(Sender);
End;

Procedure TFLiquidaPago.dblcClauxDocExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelDocumento.Focused Then Exit;

   If length(dblcClauxDoc.text) = 0 Then
   Begin
      dblcClauxDoc.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DM1.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClauxDoc.Text));
End;

Procedure TFLiquidaPago.bbtnOKDocumentoClick(Sender: TObject);
Begin
   If wModoAnt = 'M' Then
   Begin
      If (DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc) And (DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat > DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMLOC').AsFloat) Then
      Begin
         dbeDocPagOri.setFocus;
         Raise Exception.Create('Monto Pagado excede al Total de Forma de Pago: ' + FloatToStrF(DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat, ffNumber, 15, 2));
      End;
   End
   Else
   Begin
      If (DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc) And (DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat > DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat) Then
      Begin
         dbeDocPagOri.setFocus;
         Raise Exception.Create('Monto Pagado excede al Total de Forma de Pago: ' + FloatToStrF(DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat, ffNumber, 15, 2));
      End;
   End;

   If wModoAnt = 'M' Then
   Begin
      If (DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonExt) And (DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat > DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMEXT').AsFloat) Then
      Begin
         dbeDocPagOri.setFocus;
         Raise Exception.Create('Monto Pagado excede al Total de Forma de Pago: ' + FloatToStrF(DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat, ffNumber, 15, 2));
      End;
   End
   Else
   Begin
      If (DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonExt) And (DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat > DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat) Then
      Begin
         dbeDocPagOri.setFocus;
         Raise Exception.Create('Monto Pagado excede al Total de Forma de Pago: ' + FloatToStrF(DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat, ffNumber, 15, 2));
      End;
   End;

   If (Not gbAnticipo.enabled) Then
   Begin
      If (DM1.cdsDocCobranza.FieldByName('TMONID').AsString <> DM1.cdsDLiqCob1.FieldByName('TMONID').AsString) Then
      Begin
         If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2) > FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat * DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2) Then
            Begin
               dbeDocPagOri.setFocus;
               Raise Exception.Create('Monto Pagado excede al Saldo del Documento ' + FloatToStrF(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat * DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2), ffNumber, 10, 2));
            End
         End
         Else
         Begin
            If FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2) > (FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat / DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2)) Then
            Begin
               dbeDocPagOri.setFocus;
               Raise Exception.Create('Monto Pagado excede al Saldo del Documento ' + FloatToStrF(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat / DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2), ffNumber, 10, 2));
            End
         End;
      End
      Else
      Begin
         If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2) > FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat, 15, 2) Then
            Begin
               dbeDocPagOri.setFocus;
               Raise Exception.Create('Monto Pagado excede al Saldo del Documento');
            End
         End
         Else
         Begin
            If FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2) > FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat, 15, 2) Then
            Begin
               dbeDocPagOri.setFocus;
               Raise Exception.Create('Monto Pagado excede al Saldo del Documento');
            End
         End;
      End;
   End
   Else
   Begin //SI ES ANTICIPO

   End;

   If (DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat = 0) Or (DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').IsNull) Then
   Begin
      dbeDocPagOri.setFocus;
      Raise Exception.Create('Ingrese Monto');
   End
   Else
   Begin
      Try
         If DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat <= 0 Then
         Begin
            dbeDocPagOri.setFocus;
            Raise Exception.Create('Ingreso Monto Mayor a Cero');
         End;
      Except
         dbeDocPagOri.setFocus;
         Raise Exception.Create('Error en el Monto');
      End;

   End;

   If gbAnticipo.enabled Then
   Begin
      If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonExt Then
      Begin
         DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat, 15, 2);
         DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat * DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2);
      End
      Else
      Begin
         DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat, 15, 2);
         DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat / DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2);
      End;
      DM1.cdsDLiqCob1.FieldByName('TMONID').AsString := dblcTMonAnt.text;
   End
   Else
      DM1.cdsDLiqCob1.FieldByName('TMONID').AsString := DM1.cdsSQL.FieldByName('TMONID').AsString;

   If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonExt Then
   Begin
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2);
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat * DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2);
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
   End
   Else
   Begin
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2);
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat / DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2);
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
   End;
   DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat := FRound(DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString := edtClie.text;
   If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      ActualizaDocumentoSuma;

   DM1.cdsDocCobranza.Edit;
   If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
   Begin
      DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMLOC').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;
      DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat;
   End
   Else
   Begin
      DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMEXT').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;
      DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat;
   End;
   DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
   DM1.cdsDocCobranza.FieldByName('LICOSALORI').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat;

   DM1.cdsDocCobranza.Post;

   DM1.cdsDLiqCob1.Edit;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMORI').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMEXT').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMLOC').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
   DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString := xZonaAnt;
   DM1.cdsDLiqCob1.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsDLiqCob1.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsDLiqCob1.FieldByName('LICOHREG').AsDateTime := TimeS;
   If BuscaFecha('TGE114', 'Fecha', DM1.cdsDocCobranza.FieldByName('FECPAGO').AsDateTime) Then
   Begin
      DM1.cdsDLiqCob1.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString;
      DM1.cdsDLiqCob1.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString;
   End;

   DM1.cdsDLiqCob1.Post;

   pnlDocumento.Visible := False;
   DM1.cdsTDoc.Filter := '';
   ;
   DM1.cdsTDoc.Filtered := False;

   If gbAnticipo.enabled Then
   Begin
      DM1.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.text;
      DM1.cdsMovCxC.FieldByName('CCSERIE').AsString := '000';
      DM1.cdsMovCxC.FieldByName('CCNODOC').AsString := dblcdNumero.text;
      DM1.cdsMovCxC.FieldByName('BANCOID').AsString := DM1.cdsDocCobranza.FieldByName('BANCOID').AsString;

      If dblcTMonAnt.text = DM1.wTMonExt Then
      Begin
         DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat * DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2)
      End
      Else
      Begin
         DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat / DM1.cdsDocCobranza.FieldByName('LICOTCAMB').AsFloat, 15, 2);
      End;

      DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := 0;
      DM1.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := 0;
      DM1.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := 0;

      DM1.cdsMovCxC.FieldByName('CCSALORI').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat - DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat, 15, 2);
      DM1.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat, 15, 2);
      DM1.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat, 15, 2);

      DM1.cdsMovCxC.FieldByName('CCPTOTOT').AsString := DM1.cdsCptoCab.FieldByName('CPTOCAB').AsString;
      DM1.cdsMovCxC.FieldByName('CTATOTAL').AsString := DM1.cdsCptoCab.FieldByName('CUENTAID').AsString;
      DM1.cdsMovCxC.FieldByName('FLAGVAR').AsString := '.';
      DM1.cdsMovCxC.FieldByName('CCUSER').AsString := DM1.wUsuario;
      DM1.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DateS;
      DM1.cdsMovCxC.FieldByName('CCHREG').AsDateTime := TimeS;
      DM1.cdsMovCxC.FieldByName('CLIEDES').AsString := edtClie.text;
      DM1.cdsMovCxC.FieldByName('CLIEID').AsString := dblcdClie.text;
      DM1.cdsMovCxC.FieldByName('CLAUXID').AsString := dblcClauxDoc.text;
      DM1.cdsMovCxC.FieldByName('CCFVCMTO').AsDatetime := dtpFComp.Date;
      DM1.cdsMovCxC.FieldByName('CLIERUC').AsString := DM1.BuscaQry2('dspTGE', 'TGE204', 'ZONVTAID,CLIERUC,CLIEDES', 'CIAID=' + QuotedStr(dblcCia.TEXT) +
         ' AND CLAUXID=' + QuotedStr(DM1.cdsMovCxC.FieldByName('CLAUXID').AsString) +
         ' AND CLIEID=' + QuotedStr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString), 'CLIERUC');

      DM1.cdsMovCxC.FieldByName('VEID').AsString := DM1.cdsClie.FieldByName('VEID').AsString;
      DM1.cdsMovCxC.FieldByName('TVTAID').AsString := xSectorAnt;
      DM1.cdsMovCxC.FieldByName('ZVTAID').AsString := xZonaAnt;
      DM1.cdsMovCxC.FieldByName('CCNLETBCO').AsString := edtCanje.text;

      DM1.cdsMovCxC.Post;
      cadAnt := WhereAnticipo;
      DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
         + cadAnt);
      DM1.AplicaDatos(DM1.cdsMovCxC, 'MovCxC');

   End;

   bbtnSumatClick(Sender);
   DM1.cdsDocCobranza.DataRequest('SELECT * FROM CXC324 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsDocCobranza, 'DOCCOBRANZA');
   DM1.cdsDLiqCob1.DataRequest(' Select * FROM CXC319 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');
   DM1.AplicaDatos(DM1.cdsDLiqCob1, 'DLiqCob1');
   DM1.cdsCLiqCob1.Edit;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'I';
   DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat := xTotLoc;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat := xTotExt;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xAboLoc;
   DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xAboExt;
   DM1.cdsCLiqCob1.Post;
   DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');

   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'I' Then
      EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ')
   Else
      EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
End;

Procedure TFLiquidaPago.dblcTMonAntExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
//	 if (Sender as TWincontrol).TabOrder>ActiveControl.TabOrder then Exit;
  {probar xWhere:='TMonId='''+dblcTMon.Text+''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
  edtTMonAnt.Text:=BuscaQry('dspTGE','TGE103','TMONDES,TMon_Loc',xWhere,'TMONDES');}

   If length(edtTMonAnt.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMonAnt.SetFocus;
      exit;
   End;
   dm1.cdscptoCab.Close;
   dm1.cdscptoCab.DataRequest('SELECT * FROM CXC208 WHERE OPCMENU=''P'' AND DOCID=' + QuotedStr(DM1.wsAnt) +
      ' AND TMONID=' + QuotedStr(dblcTMonAnt.text) + ' AND TVTAID=' + QuotedStr(xSectorAnt) +
      ' AND CIAID=' + QuotedStr(dblcCia.text));
   dm1.cdscptoCab.Open;
   If dm1.cdscptoCab.RecordCount = 1 Then
   Begin
      DM1.cdscptoCab.First;
      dblcdTipoOpera.text := DM1.cdscptoCab.FieldByName('CPTOCAB').AsString;
   End;
   dblcdTipoOpera.Enabled := True;

End;

Procedure TFLiquidaPago.dbgLiqCobranzaKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Var
   sSQL: String;
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If DM1.cdsDLiqCob1.RecordCount = 0 Then
         exit;
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsAnt Then
         Begin
            sSQL := 'DELETE FROM CXC301 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) +
               ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString) + ' AND CLIEID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString);
            Try
               DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
            Except
               ShowMessage('No se eliminó Anticipo');
            End;
         End;
         DM1.cdsDocCobranza.Edit;
         If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;
            DM1.cdsDocCobranza.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat + DM1.cdsDocCobranza.FieldByName('LICOMTOABOLOC').AsFloat;
         End
         Else
         Begin
            DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;
            DM1.cdsDocCobranza.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat + DM1.cdsDocCobranza.FieldByName('LICOMTOABOEXT').AsFloat;
         End;

         DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
         DM1.cdsDocCobranza.FieldByName('LICOSALORI').AsFloat := DM1.cdsDocCobranza.FieldByName('LICOMTOORI').AsFloat + DM1.cdsDocCobranza.FieldByName('LICOMTOABOORI').AsFloat;

         ActualizaDocumentoResta;
         DM1.cdsDocCobranza.Post;
         DM1.cdsDLiqCob1.Delete;
         cadAnt := WhereAnticipo;
         DM1.cdsMovCxC.Close;
         DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
            + cadAnt);
         DM1.cdsMovCxC.Open;

         bbtnSumatClick(Sender);
         DM1.AplicaDatos(DM1.cdsDocCobranza, 'DOCCOBRANZA');
         DM1.cdsDLiqCob1.DataRequest(' Select * FROM CXC319 Where '
            + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
            + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
            + ' COID=' + '''' + dblcdCobrador.text + '''');
         DM1.AplicaDatos(DM1.cdsDLiqCob1, 'DLiqCob1');
         DM1.cdsCLiqCob1.Edit;
         DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'I';
         DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat := xTotLoc;
         DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat := xTotExt;
         DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xAboLoc;
         DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xAboExt;
         DM1.cdsCLiqCob1.Post;
         DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
         DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
      End;
   End;
End;

Procedure TFLiquidaPago.dbgLiqCobranzaDblClick(Sender: TObject);
Var
   xWhere: String;
Begin
   wModoAnt := 'M';
   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   If DM1.cdsDLiqCob1.RecordCount = 0 Then Exit;
   If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsAnt Then
   Begin
      DM1.cdsMovCxC.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
      DM1.cdsMovCxC.Setkey;
      DM1.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.text;
      DM1.cdsMovCxC.FieldByName('DOCID').AsString := DM1.wsAnt;
      DM1.cdsMovCxC.FieldByName('CCSERIE').AsString := '000';
      DM1.cdsMovCxC.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
      If DM1.cdsMovCxC.Gotokey Then
         DM1.cdsMovCxC.Edit
      Else
         Raise Exception.Create('Error en Anticipo');
   End;

   DM1.cdsDLiqCob1.Edit;
   If dblcTMonAnt.text <> '' Then
   Begin
      edtTMonAnt.text := DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMonAnt.text)
   End;
   edtClie.text := DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString;
   edtTipoOpera.text := BuscaQry('dspTGE', 'CXC208', 'CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DM1.cdsMovCxC.FieldByName('CCPTOTOT').AsString), 'CPTODES');
   If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsAnt Then
   Begin
      pnlDocumento.height := 265;
      gbAnticipo.enabled := True;
   End
   Else
   Begin
      pnlDocumento.height := 148;
      gbAnticipo.enabled := False;
   End;
   pnlDocumento.Visible := True;
   If wModoAnt = 'M' Then
   Begin
      dbeDocPagOri.SetFocus;
      dblcClauxDoc.Enabled := False;
      dblcdClie.Enabled := False;
      dblcTDoc.Enabled := False;
      dblcSerie.Enabled := False;
      dblcdNumero.Enabled := False;
      dblcTMonAnt.Enabled := False;
      dtpFComp.Enabled := False;
      dbePedido.Enabled := False;
      dblcdTipoOpera.Enabled := False;
      dbeMtoOri.Enabled := False;
      edtTipoOpera.Enabled := False;
   End
   Else
   Begin
      dblcClauxDoc.SetFocus;
      dblcClauxDoc.Enabled := True;
      dblcdClie.Enabled := True;
      dblcTDoc.Enabled := True;
      dblcSerie.Enabled := True;
      dblcdNumero.Enabled := True;
      dblcTMonAnt.Enabled := True;
      dtpFComp.Enabled := True;
      dbePedido.Enabled := True;
      dblcdTipoOpera.Enabled := True;
      dbeMtoOri.Enabled := True;
      edtTipoOpera.Enabled := True;

   End;

End;

Function TFLiquidaPago.WhereAnticipo: String;
Var
   sWhere: String;
Begin
   DM1.cdsDLiqCob1.DisableControls;
   DM1.cdsDLiqCob1.Filter := 'DOCID=' + QuotedStr(DM1.wsAnt);
   DM1.cdsDLiqCob1.Filtered := True;

   DM1.cdsDLiqCob1.MasterSource := Nil;
   DM1.cdsDLiqCob1.MasterFields := '';

   sWhere := '';
   DM1.cdsDLiqCob1.First;
   If DM1.cdsDLiqCob1.RecordCount > 0 Then
   Begin
      While Not DM1.cdsDLiqCob1.EOF Do
      Begin
         If (DM1.cdsDLiqCob1.RecordCount = 1) Then
         Begin
            sWhere := sWhere + ' CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString);
         End
         Else
         Begin
            If (DM1.cdsDLiqCob1.Recno = 1) Then
            Begin
               sWhere := sWhere + ' CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString);
            End
            Else
            Begin
               sWhere := sWhere + ' OR CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString);
            End;
         End;
         DM1.cdsDLiqCob1.Next;
      End;
   End;
   If sWhere <> '' Then
   Begin
      sWhere := ' CIAID=' + QuotedStr(dblcCia.Text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) + ' AND CCSERIE=''000'' AND (' + sWhere + ')';
   End
   Else
   Begin
      sWhere := ' CIAID=' + QuotedStr('CLG') + ' AND '
         + 'DOCID=' + QuotedStr(DM1.wsAnt) + ' AND CCSERIE=''000''';
   End;
   DM1.cdsDLiqCob1.Filter := '';
   DM1.cdsDLiqCob1.Filtered := False;
   DM1.cdsDLiqCob1.MasterSource := DM1.dsDocCobranza;
   DM1.cdsDLiqCob1.MasterFields := 'CIAID;LICOID;FPAGOID;LICOITEM';
   DM1.cdsDLiqCob1.EnableControls;
   result := sWhere;
End;

Procedure TFLiquidaPago.LlenaDetCxC;
Begin
   DM1.cdsDetCxC.Edit;
   DM1.cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DM1.cdsDetCxC.FieldByName('TDIARID').AsString := BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=' + QuotedStr(DM1.wModulo) + ' AND DOCID=' + QuotedStr(DM1.wsAnt), 'TDIARID');
 //DM1.cdsDetCxC.FieldByName('CCNOREG').AsString   :=DM1.cdsDetPagoLiq.FieldByName('CCNOREG').AsString;
   DM1.cdsDetCxC.FieldByName('CLAUXID').AsString := DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString;
   DM1.cdsDetCxC.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
   DM1.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DateS;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := DateS;
   DM1.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DM1.cdsDetCxC.FieldByName('CCUSER').AsString := DM1.wUsuario;
   DM1.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DateS;
   DM1.cdsDetCxC.FieldByName('CCHREG').AsDateTime := TimeS;
   DM1.cdsDetCxC.FieldByName('TMONID').AsString := DM1.cdsDLiqCob1.FieldByName('TMONIDPAGO').AsString;

   If BuscaFecha('TGE114', 'Fecha', dtpFEmis.Date) Then
   Begin
      DM1.cdsDetCxC.FieldByName('CCAAAA').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsDetCxC.FieldByName('CCMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsDetCxC.FieldByName('CCDD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString;
      DM1.cdsDetCxC.FieldByName('CCTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString;
      DM1.cdsDetCxC.FieldByName('CCSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString;
      DM1.cdsDetCxC.FieldByName('CCSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCANOMES').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsDetCxC.FieldByName('CCAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString;
   End;
End;

Procedure TFLiquidaPago.CreaReporte(Sender: TObject);
Begin
   (sender As tppReport).PreviewForm.WindowState := wsMaximized;
   TppViewer((sender As tppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;
End;

Procedure TFLiquidaPago.wwDBGrid1IButtonClick(Sender: TObject);
Begin
   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   dblcFormPago.Clear;
   edtFormPago.Clear;
   dblcBancoFPago.Clear;
   edtBcoFPago.Clear;
   dbeNoChq.Clear;
   dblcTMonC.Clear;
   edtTMonC.Clear;
   dbeACobrar.Clear;
   dblcClAuxFormaPago.clear;
   dblcClieFormaPago.clear;
   edtClieFormaPago.clear;
   dbeAgencia.clear;

   DM1.cdsDocCobranza.Append;
   DM1.cdsDocCobranza.FieldByName('LICOITEM').AsString := StrZero(DM1.MaxValue('LICOITEM', DM1.cdsDocCobranza), 2);
   DM1.cdsDocCobranza.FieldByName('CIAID').AsString := dblcCia.text;
   DM1.cdsDocCobranza.FieldByName('LICOID').AsString := edtCanje.text;
   DM1.cdsDocCobranza.FieldByName('COID').AsString := dblcdCobrador.text;
   DM1.cdsDocCobranza.FieldByName('TVTAID').AsString := dblcZona.text;
   DM1.cdsDocCobranza.FieldByName('FECPAGO').AsDateTime := DateS;
 //dbdtpFecha.Date:=DateS;
   dbdtpFechaCheque.Date := DateS;
   edtTCambio.text := '0.000';
   PnlFPago.Visible := True;
   dblcFormPago.enabled := true;
   dblcBancoFPago.enabled := true;
   dbeNoChq.enabled := true;
   dbdtpFecha.enabled := true;
   dblcTMonC.enabled := true;
   dbeAgencia.enabled := true;
   dblcClAuxFormaPago.enabled := true;
   dblcClieFormaPago.enabled := true;

   dblcFormPago.SetFocus;

 {bbtnSumatClick(Sender);
 dblcFormPago.Clear;
 edtFormPago.Clear;
 dblcBancoFPago.Clear;
 edtBcoFPago.Clear;
 dbeNoChq.Clear;
 dblcTMonC.Clear;
 edtTMonC.Clear;
 dbeACobrar.Clear;
 dbeRecibido.Clear;

 dbdtpFecha.Date:=DateS;
 dbdtpFechaCheque.Date:=DateS;
 edtTCambio.text:='0.000';

 DM1.cdsDocCobranza.Insert;
 DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString:=DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('TMONID').AsString:=DM1.cdsDLiqCob1.FieldByName('TMONID').AsString;

 DM1.cdsDetPagoLiq.FieldByName('LICOID').AsString:=DM1.cdsDLiqCob1.FieldByName('LICOID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString:=DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString:=DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString:=DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
 DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString:=DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString:=DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
 DM1.cdsDetPagoLiq.FieldByName('CUENTAID').AsString:=DM1.cdsDLiqCob1.FieldByName('CUENTAID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('CCFEMIS').AsDateTime:=DM1.cdsDLiqCob1.FieldByName('CCFEMIS').AsDateTime;
 DM1.cdsDetPagoLiq.FieldByName('CCFVCMTO').AsDateTime:=DM1.cdsDLiqCob1.FieldByName('CCFVCMTO').AsDateTime;

 DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat;
 DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat;
 DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat;

 DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOTCAMBL').AsFloat;
 DM1.cdsDetPagoLiq.FieldByName('COID').AsString:=DM1.cdsDLiqCob1.FieldByName('COID').AsString;
 DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString:=DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString;

 if DM1.cdsDLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonLoc then
 begin
  DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat:=FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat-xxTFPagoLoc,15,2);
  dbeResta.text:=FloatToStr(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat-xxTFPagoLoc,15,2));
 end;
 if DM1.cdsDLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonExt then
 begin
  DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat:=FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat-xxTFPagoExt,15,2);
  dbeResta.text:=FloatToStr(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat-xxTFPagoExt,15,2));
 end;

 PnlFPago.Visible:=True;
 edtdocumento.text:=BuscaQry('dspTGE','TGE110','DOCABR','DOCMOD='+QuotedStr('CXC')+' AND DOCID='+QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString),'DOCABR');
 edtSerie.text:=DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
 edtCCNODOC.text:=DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
 edtCLIEDES.text:=DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString;
 dblcFormPago.SetFocus;}
End;

Procedure TFLiquidaPago.dblcCCBExit(Sender: TObject);
Begin
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If Length(dblcCCB.Text) = 0 Then
      Raise Exception.Create('Ingrese Cuenta Corriente');
End;

Procedure TFLiquidaPago.dblcClAuxFormaPagoExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If z2CancelDetalle.Focused Then Exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;

   If length(dblcClAuxFormaPago.text) = 0 Then
   Begin
      dblcClAuxFormaPago.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DM1.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClAuxFormaPago.Text));
End;

Procedure TFLiquidaPago.dblcClieFormaPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.Focused Then Exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;

   If (Length(dblcClieFormaPago.Text) = 0) Then
   Begin
      dblcClieFormaPago.SetFocus;
      Raise Exception.Create('Ingrese Cliente');
   End;

   If DM1.cdsClie.IndexFieldNames <> 'CLIEID' Then
      DM1.cdsClie.IndexFieldNames := 'CLIEID';

   DM1.cdsClie.Setkey;
   DM1.cdsClie.FieldByName('CLIEID').AsString := dblcClieFormaPago.text;
   If DM1.cdsClie.Gotokey Then
   Begin
      edtClieFormaPago.text := DM1.cdsClie.FieldByName('CLIEDES').AsString;
   End
   Else
   Begin
      edtClieFormaPago.Clear;
      dblcClieFormaPago.SetFocus;
      Raise Exception.Create('Cliente no Existe');
   End;
End;

Procedure TFLiquidaPago.dbdtpFechaChequeExit(Sender: TObject);
Begin
   If dbdtpFechaCheque.Date = 0 Then
   Begin
      dbdtpFechaCheque.SetFocus;
      Raise Exception.Create('Ingrese Fecha de Emisión del Abono');
   End;
End;

Procedure TFLiquidaPago.dblcClieFormaPagoDropDown(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'CLIEDES';
End;

Procedure TFLiquidaPago.dbgDocCobranzaDblClick(Sender: TObject);
Begin
   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   If DM1.cdsDocCobranza.RecordCount = 0 Then Exit;

   DM1.cdsDocCobranza.Edit;

   If dblcFormPago.text <> '' Then
   Begin
      edtFormPago.text := BuscaQry('dspTGE', 'TGE112', 'FPAGOID,FPAGODES,FPAGOBCO,KEYCNUM', 'FPAGOID=' + QuotedStr(dblcFormPago.text), 'FPAGODES');
      sKeyCNum := DM1.cdsQry.FieldByName('KEYCNUM').AsString;
   End
   Else
   Begin
      edtFormPago.text := '';
   End;

   If dblcBancoFPago.text <> '' Then
      edtBcoFPago.text := DisplayDescrip('TGE105', 'BANCONOM', 'BANCOID', dblcBancoFPago.text)
   Else
      edtBcoFPago.text := '';

   If dblcTMonC.text <> '' Then
   Begin
      edtTMonC.text := DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMonC.text)
   End;

   dblcFormPago.enabled := true;
   dblcBancoFPago.enabled := true;
   dbeNoChq.enabled := true;
   dbdtpFecha.enabled := true;
   dblcTMonC.enabled := true;
   dbeAgencia.enabled := true;
   dblcClAuxFormaPago.enabled := true;
   dblcClieFormaPago.enabled := true;

   If DM1.wsFChe = dblcFormPago.text Then
   Begin
      dblcBancoFPago.enabled := False;
      dbeNoChq.enabled := False;
      dblcClAuxFormaPago.enabled := false;
      dblcClieFormaPago.enabled := False;
   End
   Else
      If DM1.wsFChe = dblcFormPago.text Then
      Begin
         dblcBancoFPago.enabled := False;
         dbeNoChq.enabled := False;
         dbdtpFecha.enabled := False;
         dblcTMonC.enabled := False;
         dbeAgencia.enabled := False;
      End
      Else
      Begin
         dblcTMonC.enabled := False;
         dblcClAuxFormaPago.enabled := False;
         dblcClieFormaPago.enabled := False;
      End;

   dblcFormPago.enabled := False;

   PnlFPago.Visible := True;

//	dblcFormPago.SetFocus;
End;

Procedure TFLiquidaPago.dbgDocCobranzaKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   If (key = VK_delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('Desea borrar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         If DM1.cdsDLiqCob1.RecordCount > 0 Then
         Begin
            Raise Exception.Create('No se puede borrar porque hay detalle');
         End
         Else
         Begin
            DM1.cdsDocCobranza.Delete;
            bbtnSumatClick(Sender);
            DM1.cdsDocCobranza.DataRequest('SELECT * FROM CXC324 WHERE CIAID=' + Quotedstr(dblcCia.text) + ' AND LICOID=' + Quotedstr(edtCanje.text));
            DM1.AplicaDatos(DM1.cdsDocCobranza, 'DOCCOBRANZA');
            DM1.cdsCLiqCob1.Edit;
            DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'I';
            DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat := xTotLoc;
            DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat := xTotExt;
            DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xAboLoc;
            DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xAboExt;
            DM1.cdsCLiqCob1.Post;
            DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
            DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
         End;
      End;
   End;
End;

Procedure TFLiquidaPago.dbgLiqCobranzaIButtonClick(Sender: TObject);
Begin
   wModoAnt := 'A';
   pnlDocumento.height := 148;

   DM1.cdsTDoc.Filter := 'DOCMOD=''CXC''';
   ;
   DM1.cdsTDoc.Filtered := True;
   edtClie.Clear;
   edtTDoc.Clear;

   DM1.cdsDLiqCob1.Append;
   DM1.cdsDLiqCob1.FieldByName('CIAID').AsString := dblcCia.text;
   DM1.cdsDLiqCob1.FieldByName('LICOID').AsString := edtCanje.text;
   DM1.cdsDLiqCob1.FieldByName('COID').AsString := dblcdCobrador.text;
   DM1.cdsDLiqCob1.FieldByName('FPAGOID').AsString := DM1.cdsDocCobranza.FieldByName('FPAGOID').AsString;
   DM1.cdsDLiqCob1.FieldByName('LICOITEM').AsString := DM1.cdsDocCobranza.FieldByName('LICOITEM').AsString;
   DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString := DM1.cdsDocCobranza.FieldByName('CLAUXID').AsString;
   DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString := DM1.cdsDocCobranza.FieldByName('CLIEID').AsString;
   DM1.cdsDLiqCob1.FieldByName('FECPAGO').AsDateTime := DM1.cdsDocCobranza.FieldByName('FECPAGO').AsDateTime;
   DM1.cdsDLiqCob1.FieldByName('TMONIDPAGO').AsString := DM1.cdsDocCobranza.FieldByName('TMONID').AsString;
   DM1.cdsDLiqCob1.FieldByName('BANCOID').AsString := DM1.cdsDocCobranza.FieldByName('BANCOID').AsString;
   DM1.cdsDLiqCob1.FieldByName('CCBCOID').AsString := DM1.cdsDocCobranza.FieldByName('CCBCOID').AsString;

   If DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString <> '' Then
   Begin
      dblcdClieExit(Sender);
      dblcClauxDoc.enabled := False;
      dblcdClie.enabled := False;
   End
   Else
   Begin
      dblcClauxDoc.enabled := True;
      dblcdClie.enabled := True;
      dblcTDoc.enabled := True;
      dblcSerie.enabled := True;
      dtpFComp.enabled := True;
   End;

   pnlDocumento.visible := True;
   If dblcClauxDoc.enabled Then
      dblcClauxDoc.SetFocus;

End;

Procedure TFLiquidaPago.dblcTDocExit(Sender: TObject);
Begin
   If bbtnCancelDocumento.Focused Then exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   If Length(dblcTDoc.Text) = 0 Then
   Begin
      dblcTDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento ');
   End;
   edtTDoc.Text := DM1.cdsTDoc.FieldByName('DOCDES').AsString;
   DM1.cdsSerie.Filter := 'CIAID=' + QuotedStr(dblcCia.Text) + 'AND DOCID=' + QuotedStr(dblcTDoc.text);
   DM1.cdsSerie.Filtered := True;

   gbAnticipo.enabled := (dblcTDoc.Text = DM1.wsAnt);
   If gbAnticipo.enabled Then
   Begin
      DM1.cdsMovCxC.Insert;
      pnlDocumento.height := 265;
      dblcSerie.text := '000';
      DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString := '000';
      dblcTMonAnt.text := DM1.cdsDocCobranza.FieldByName('TMONID').AsString;
      edtTMonAnt.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', 'TMONID=' + QuotedStr(dblcTMonAnt.text), 'TMONDES');
      dblcdNumero.text := DM1.BuscaUltNumero(dblcCia.Text, DM1.wsAnt, '000');
   End
   Else
   Begin
      pnlDocumento.height := 148;
      dblcSerie.text := '';
      edtTMonAnt.Text := '';
   End;
   dbeMtoOri.enabled := Not gbAnticipo.enabled;
   dblcSerie.enabled := Not gbAnticipo.enabled;
   dblcdNumero.enabled := Not gbAnticipo.enabled;
   dblcTMonAnt.enabled := Not gbAnticipo.enabled;
   If gbAnticipo.enabled Then
   Begin
      dblcTMonAntExit(Sender);
      dbeDocPagOri.SetFocus;
   End;
End;

Procedure TFLiquidaPago.dblcdClieDropDown(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'CLIEDES';
End;

Procedure TFLiquidaPago.dblcdNumeroEnter(Sender: TObject);
Var
   sSQL: String;
Begin
   Begin
      sSQL := ' SELECT CIAID,DOCID,CCSERIE,CCNODOC,CLIEID,TMONID,LICOMTOORI,LICOMTOABOORI,LICOSALORI, ' +
         ' LICOMTOEXT,LICOMTOABOEXT,LICOSALEXT,LICOMTOLOC,LICOMTOABOLOC,LICOSALLOC ' +
         ' FROM CXC317 ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(dblcTDoc.text) +
         ' AND CCSERIE=' + QuotedStr(dblcSerie.text) + ' AND CLAUXID=' + QuotedStr(dblcClauxDoc.text) +
         ' AND CLIEID=' + QuotedStr(dblcdClie.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND FLAGVAR=''.'' ';
      DM1.cdsSQL.Close;
      DM1.cdsSQL.DataRequest(sSQL);
      DM1.cdsSQL.Open;
      dblcdNumero.LookupTable := DM1.cdsSQL;
      dblcdNumero.LookupField := 'CCNODOC';
   End;
End;

Procedure TFLiquidaPago.dblcdNumeroExit(Sender: TObject);
Var
   sSQL: String;
Begin
   If Not gbAnticipo.enabled Then
   Begin
  // SI SE ENCUENTRA EN EL CXC317: DOCUMENTOS ASIGNADOS
      If DM1.cdsSQL.Locate('CIAID;DOCID;CCSERIE;CCNODOC;CLIEID',
         VarArrayOf([dblcCia.text, dblcTDoc.text, dblcSerie.text, dblcdNumero.text, dblcdClie.text]), []) Then
      Begin
         DM1.cdsDLiqCob1.FieldByName('TMONID').AsString := DM1.cdsSQL.FieldByName('TMONID').AsString;

         DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat := DM1.cdsSQL.FieldByName('LICOMTOORI').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := DM1.cdsSQL.FieldByName('LICOSALORI').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := DM1.cdsSQL.FieldByName('LICOSALORI').AsFloat;

         DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat := DM1.cdsSQL.FieldByName('LICOMTOEXT').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := DM1.cdsSQL.FieldByName('LICOSALEXT').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := DM1.cdsSQL.FieldByName('LICOSALEXT').AsFloat;

         DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat := DM1.cdsSQL.FieldByName('LICOMTOLOC').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := DM1.cdsSQL.FieldByName('LICOSALLOC').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := DM1.cdsSQL.FieldByName('LICOSALLOC').AsFloat;
      End
      Else
      Begin
         sSQL := ' SELECT CIAID,DOCID,CCSERIE,CCNODOC,CLIEID,TMONID,LICOMTOORI,LICOMTOABOORI,LICOSALORI, ' +
            ' LICOMTOEXT,LICOMTOABOEXT,LICOSALEXT,LICOMTOLOC,LICOMTOABOLOC,LICOSALLOC,CONOMBRES,COID,LICOID,CCFEMIS ' +
            ' FROM CXC317 ' +
            ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(dblcTDoc.text) +
            ' AND CCSERIE=' + QuotedStr(dblcSerie.text) + ' AND CLAUXID=' + QuotedStr(dblcClauxDoc.text) +
            ' AND CLIEID=' + QuotedStr(dblcdClie.text) + ' AND COID<>' + QuotedStr(dblcdCobrador.text) + ' AND FLAGVAR=''.'' ';
         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(sSQL);
         DM1.cdsQry2.Open;
         If DM1.cdsQry2.RecordCount > 0 Then
         Begin
            Raise Exception.Create('El Documento ha sido asignado al cobrador ' + #13 +
               DM1.cdsQry2.FieldByName('COID').AsString + ' ' + DM1.cdsQry2.FieldByName('CONOMBRES').AsString + ' ' + #13 +
               'Planilla N° ' + DM1.cdsQry2.FieldByName('LICOID').AsString + ' del ' + DateToStr(DM1.cdsQry2.FieldByName('CCFEMIS').AsDateTime));
         End
         Else
         Begin
            sSQL := ' SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(dblcTDoc.text) +
               ' AND CCSERIE=' + QuotedStr(dblcSerie.text) + ' AND CCNODOC=' + QuotedStr(dblcdNumero.text) +
               ' AND CLIEID=' + QuotedStr(dblcdClie.text);
            DM1.cdsQry2.Close;
            DM1.cdsQry2.DataRequest(sSQL);
            DM1.cdsQry2.Open;
            If DM1.cdsQry2.RecordCount = 0 Then
               Raise Exception.Create('No existe el Documento.')
            Else
            Begin
               If DM1.cdsQry2.FieldByName('TVTAID').AsString <> dblcZona.text Then
                  Raise Exception.Create('El Sector es diferente');
               If DM1.cdsQry2.FieldByName('CCESTADO').AsString = 'C' Then
                  Raise Exception.Create('El Documento ya está cancelado');
               If DM1.cdsQry2.FieldByName('CCESTADO').AsString = 'A' Then
                  Raise Exception.Create('El Documento está anulado');
               If DM1.cdsQry2.FieldByName('UBIID').AsString <> DM1.wsOfi Then
                  Raise Exception.Create('El Documento no se encuentra en Oficina');
               If (DM1.cdsQry2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsQry2.FieldByName('CCPAGEXT').AsFloat <> DM1.cdsQry2.FieldByName('CCSALEXT').AsFloat) Then
                  Raise Exception.Create('El Documento Se encuentra en proceso de Canje');
               Raise Exception.Create('El Documento Se encuentra en ' + #13 + 'Situación: ' + QuotedStr(BuscaQry('dspTGE', 'CXC104', 'SITUAID,SITUADES', 'SITUAID=' + Quotedstr(DM1.cdsQry2.FieldByName('SITID').AsString), 'SITUADES'))
                  + #13 + 'Ubicación: ' + QuotedStr(BuscaQry('dspTGE', 'CXC105', 'UBICAID,UBICADES', 'UBICAID=' + Quotedstr(DM1.cdsQry2.FieldByName('UBIID').AsString), 'UBICADES')));
            End;
         End;
      End;
   End
   Else
   Begin

   End;
End;

Procedure TFLiquidaPago.FormShow(Sender: TObject);
Begin
   xCrea := True;
   dblcdCobrador.LookupTable := DM1.cdsCobrador;
   dblcZona.Lookuptable := DM1.cdsZona;
   dblcFormPago.LookUpTable := DM1.cdsFPago;

{   DM1.cdsDetPagoLiq.MasterSource:=DM1.dsDLiqCob1;
  DM1.cdsDetPagoLiq.MasterFields:='CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';
   DM1.cdsDetPagoLiq.IndexFieldNames:='CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';}

   DM1.cdsBanco.Filter := 'BCOTIPCTA=''B''';
   DM1.cdsBanco.Filtered := True;
   If DM1.wModo = 'A' Then
   Begin
      DM1.cdsCLiqCob1.Insert;
      edtCobranza.Caption := 'Liquidación de Cobranza';
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
      bbtnSumatClick(Sender);
   End
   Else
   Begin
      xFlagGr := False;
      dblcCia.Text := DM1.cdsCLiqCob1.FieldByName('CIAID').AsString;
      edtCanje.Text := DM1.cdsCLiqCob1.FieldByName('LICOID').AsString;
      edtCobranza.Caption := 'Cobranza' + ' ' + DM1.cdsCLiqCob1.FieldByName('LICOID').AsString;
      dblcClAux.text := DM1.cdsCLiqCob1.FieldByName('CLAUXID').AsString;
      dblcZona.text := DM1.cdsCLiqCob1.FieldByName('TVTAID').AsString;
      dbeTCLet.text := DM1.cdsCLiqCob1.FieldByName('LICOTCAMB').AsString;
      dtpFEmis.date := DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime;
      dblcdCobrador.text := DM1.cdsCLiqCob1.FieldByName('COID').AsString;

      FiltraCanje(DM1.wModo);
      dbgLiqCobranza.RedrawGrid;

      edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
      edtZona.Text := DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcZona.text);
      edtCobrador.Text := BuscaQry('prvCobrador', 'CXC206', 'CONOMBRES', 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND COID=' + QuotedStr(dblcdCobrador.text), 'CONOMBRES');
     //edtTMon.Text:=DisplayDescrip('TGE103','TMONDES', 'TMonID',dblcTMon.Text);

      If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'I' Then
         EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ')
      Else
         EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
      bbtnSumatClick(Sender);
   End;
   PageControl1.ActivePage := TabSheet1;
   xCrea := False;
End;

Procedure TFLiquidaPago.ActualizaDocumentoSuma;
Var
   ssQL: String;
Begin
   sSQL := ' UPDATE CXC317 ' +
      ' SET LICOMTOABOORI=COALESCE(LICOMTOABOORI,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMORI').AsFloat) + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat) + ', ' +
      '     LICOMTOABOEXT=COALESCE(LICOMTOABOEXT,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMEXT').AsFloat) + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + ', ' +
      '     LICOMTOABOLOC=COALESCE(LICOMTOABOLOC,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMLOC').AsFloat) + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + ', ' +
      '     LICOSALORI=COALESCE(LICOMTOORI,0)-(COALESCE(LICOMTOABOORI,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMORI').AsFloat) + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat) + '), ' +
      '     LICOSALEXT=COALESCE(LICOMTOEXT,0)-(COALESCE(LICOMTOABOEXT,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMEXT').AsFloat) + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + '), ' +
      '     LICOSALLOC=COALESCE(LICOMTOLOC,0)-(COALESCE(LICOMTOABOLOC,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOTEMLOC').AsFloat) + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + ') ' +
      ' WHERE CIAID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) +
      ' AND CCSERIE=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString) + ' AND CCNODOC=' + QuotedStr(dblcdNumero.text) + ' AND CLAUXID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString) +
      ' AND CLIEID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString) + ' AND COID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('COID').AsString) + ' AND FLAGVAR=''.'' ';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;
End;

Procedure TFLiquidaPago.ActualizaDocumentoResta;
Var
   ssQL: String;
Begin
   sSQL := ' UPDATE CXC317 ' +
      ' SET LICOMTOABOORI=COALESCE(LICOMTOABOORI,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat) + ', ' +
      '     LICOMTOABOEXT=COALESCE(LICOMTOABOEXT,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + ', ' +
      '     LICOMTOABOLOC=COALESCE(LICOMTOABOLOC,0)' + '-' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + ', ' +
      '     LICOSALORI=COALESCE(LICOMTOORI,0)-(COALESCE(LICOMTOABOORI,0)' + '-' + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat) + '), ' +
      '     LICOSALEXT=COALESCE(LICOMTOEXT,0)-(COALESCE(LICOMTOABOEXT,0)' + '-' + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + '), ' +
      '     LICOSALLOC=COALESCE(LICOMTOLOC,0)-(COALESCE(LICOMTOABOLOC,0)' + '-' + '+' + FloatToStr(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + ') ' +
      ' WHERE CIAID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) +
      ' AND CCSERIE=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString) + ' AND CCNODOC=' + QuotedStr(dblcdNumero.text) + ' AND CLAUXID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString) +
      ' AND CLIEID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString) + ' AND COID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('COID').AsString) + ' AND FLAGVAR=''.'' ';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;
End;

Procedure TFLiquidaPago.dbeDocPagOriExit(Sender: TObject);
Begin
   If DM1.cdsMovCxC.state In [dsInsert, dsEdit] Then
   Begin
      DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
      DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
   End;

End;

Procedure TFLiquidaPago.VerificaMontos;
Var
   xmonto: double;
Begin
 //DM1.cdsDocCobranza.DisableControls;
   DM1.cdsDocCobranza.First;
   While Not DM1.cdsDocCobranza.EOF Do
   Begin
      xMonto := 0;
      If DM1.cdsDocCobranza.FieldByName('TMONID').AsString = DM1.wTMonExt Then
      Begin
         DM1.cdsDLiqCob1.First;
         While Not DM1.cdsDLiqCob1.EOF Do
         Begin
            xMonto := FRound(xMonto + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.Next;
         End;
         If DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat > xMonto Then
         Begin
    //DM1.cdsDocCobranza.EnableControls;
            Raise Exception.Create('Faltan ' + DisplayDescrip('TGE103', 'TMONABR', 'TMONID', DM1.cdsDocCobranza.FieldByName('TMONID').AsString) + ' ' + FloatToStrF(FRound(DM1.cdsDocCobranza.FieldByName('LICOMTOEXT').AsFloat - xMonto, 15, 2), ffNumber, 15, 2) + ' para cuadrar el documento de pago');
         End;
      End
      Else
      Begin
         DM1.cdsDLiqCob1.First;
         While Not DM1.cdsDLiqCob1.EOF Do
         Begin
            xMonto := FRound(xMonto + DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.Next;
         End;
         If DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat > xMonto Then
         Begin
    //DM1.cdsDocCobranza.EnableControls;
            Raise Exception.Create('Faltan ' + DisplayDescrip('TGE103', 'TMONABR', 'TMONID', DM1.cdsDocCobranza.FieldByName('TMONID').AsString) + ' ' + FloatToStrF(FRound(DM1.cdsDocCobranza.FieldByName('LICOMTOLOC').AsFloat - xMonto, 15, 2), ffNumber, 15, 2) + ' para cuadrar el documento de pago');
         End;
      End;
      DM1.cdsDocCobranza.Next;
   End;
 //DM1.cdsDocCobranza.EnableControls;
End;

End.

