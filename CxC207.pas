Unit CxC207;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB, wwSpeedButton,
   wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
   ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
   ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod,
   Wwkeycb, ppEndUsr, ppviewr, MsgDlgs;

Type
   TFLiqCob = Class(TForm)
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
      lblTMon: TLabel;
      Label13: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      edtCanje: TwwDBEdit;
      dblcClAux: TwwDBLookupCombo;
      dblcdCobrador: TwwDBLookupComboDlg;
      dtpFEmis: TwwDBDateTimePicker;
      edtCobrador: TEdit;
      dbeTCLet: TwwDBEdit;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
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
      dbeRecibido: TwwDBEdit;
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
      dbeResta: TwwDBEdit;
      Label3: TLabel;
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
      dbgDocCanje: TwwDBGrid;
      pnlPendientes: TPanel;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      dbgLiqCobranza: TwwDBGrid;
      TabSheet2: TTabSheet;
      dbgDetPagoLiq: TwwDBGrid;
      dbgDetPagoLiqIButton: TwwIButton;
      etcCobranza: TLabel;
      pnlOrden: TPanel;
      lblBusca: TLabel;
      Bevel1: TBevel;
      isBusca: TwwIncrementalSearch;
      btnSalir: TBitBtn;
      bbtnPasa: TBitBtn;
      edtCobranza: TLabel;
      edtSerie: TEdit;
      edtCCNODOC: TEdit;
      edtDocumento: TEdit;
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
      edtCLIEDES: TEdit;
      dblcCCB: TwwDBLookupCombo;
      Label15: TLabel;
      pnlAnticipo: TPanel;
      StaticText3: TStaticText;
      bbtnCancelAnticipo: TBitBtn;
      bbtnOKAnticipo: TBitBtn;
      lblNoDoc: TLabel;
      edtNoDoc: TwwDBEdit;
      Label16: TLabel;
      dblcClauxAnt: TwwDBLookupCombo;
      lblprov: TLabel;
      dblcdClie: TwwDBLookupComboDlg;
      lblRuc: TLabel;
      dblcdClieRuc: TwwDBLookupComboDlg;
      lblProvNom: TLabel;
      edtClie: TEdit;
      Label17: TLabel;
      dblcTMonAnt: TwwDBLookupCombo;
      edtTMonAnt: TEdit;
      lblFComprob: TLabel;
      dtpFComp: TwwDBDateTimePicker;
      lblComprob: TLabel;
      dbeNoReg: TwwDBEdit;
      Label18: TLabel;
      dbeMtoOri: TwwDBEdit;
      lblTipoOpera: TLabel;
      dblcdTipoOpera: TwwDBLookupComboDlg;
      edtTipoOpera: TEdit;
      dbgLiqCobranzaIButton: TwwIButton;
      Label19: TLabel;
      dbePedido: TwwDBEdit;
      pprComposicion: TppReport;
      ppdbCabecera: TppDBPipeline;
      ppdbDetalle: TppDBPipeline;
      ppDesigner1: TppDesigner;
      pprCheBol: TppReport;
      ppdbCheBol: TppDBPipeline;
      ppHeaderBand4: TppHeaderBand;
      ppLabel53: TppLabel;
      ppLabel55: TppLabel;
      ppLabel57: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      pplblCiaCheBol: TppLabel;
      ppLabel72: TppLabel;
      ppSystemVariable10: TppSystemVariable;
      ppSystemVariable11: TppSystemVariable;
      ppSystemVariable12: TppSystemVariable;
      pplblTituloCheBol: TppLabel;
      ppLabel76: TppLabel;
      pplblFechaCheBol: TppLabel;
      ppLabel78: TppLabel;
      ppLabel68: TppLabel;
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
      ppDBText40: TppDBText;
      ppDBText39: TppDBText;
      ppDBText38: TppDBText;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppLabel71: TppLabel;
      ppDBText41: TppDBText;
      ppDBText42: TppDBText;
      ppDBCalc7: TppDBCalc;
      pplblCobradorCheBol: TppLabel;
      dbgFormaPago: TwwDBGrid;
      ppdbResumen: TppDBPipeline;
      pprResumen: TppReport;
      ppHeaderBand5: TppHeaderBand;
      ppDetailBand6: TppDetailBand;
      ppFooterBand5: TppFooterBand;
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
      ppDBText24: TppDBText;
      ppDBText44: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppDBText45: TppDBText;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      ppDBText46: TppDBText;
      ppDBCalc11: TppDBCalc;
      ppLabel81: TppLabel;
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
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc5: TppDBCalc;
      ppLabel51: TppLabel;
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
      ppDBText47: TppDBText;
      ppLabel83: TppLabel;
      ppDBCalc12: TppDBCalc;
      ppLabel84: TppLabel;
      ppDBCalc13: TppDBCalc;
      Procedure FormActivate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnBasuraDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnSumatClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
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
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDocCanjeCalcCellColors2(Sender: TObject;
         Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure dbgDocCanjeDragOver2(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgDocCanjeMouseDown2(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
      Procedure dbeRecibidoExit(Sender: TObject);
      Procedure dbdtpFechaExit(Sender: TObject);
      Procedure ppVarMonAbrCalc(Sender: TObject; Var Value: Variant);
      Procedure ppVarMonPagCalc(Sender: TObject; Var Value: Variant);
      Procedure dbgDetPagoLiqIButtonClick(Sender: TObject);
      Procedure dbgDetPagoLiqDblClick(Sender: TObject);
      Procedure dbgDetPagoLiqKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure MonedaExt(Sender: TObject; Var Value: Variant);
      Procedure bbtnResumenClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure ppVariable4Calc(Sender: TObject; Var Value: Variant);
      Procedure dbgDocCanjeTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure isBuscaKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnPasaClick(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure dblcNotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure PageControl1Change(Sender: TObject);
      Procedure dbgLiqCobranzaIButtonClick(Sender: TObject);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure dblcdTipoOperaExit(Sender: TObject);
      Procedure bbtnCancelAnticipoClick(Sender: TObject);
      Procedure dblcClauxAntExit(Sender: TObject);
      Procedure bbtnOKAnticipoClick(Sender: TObject);
      Procedure dblcTMonAntExit(Sender: TObject);
      Procedure dbgLiqCobranzaKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgLiqCobranzaDblClick(Sender: TObject);
      Procedure CreaReporte(Sender: TObject);
   Private
    { Private declarations }
      xmoneda: String;
      xmonedaR: String;
      xdiferencia: bool;
      sTDocCh, sFPagCh, sTDiario: String;
      sCartera, sOficina: String;
      sChEnCob: String;
      cadAnt: String;
      Procedure InsertaCheques;
      Function ExisteNisaxAnulacionFactura(xCiaId, xSerie, xFactura: String): boolean;
      Function VerificaCaja(xCIA: String; xFecha: TDateTime): boolean;
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
   End;

Var
   wAno, wMes, wDia: Word;
   sPe: String;
   FLiqCob: TFLiqCob;
   xNDTDiario: String;
   xSQL: String;
   xTAutoNum: String;
   xCtaDif, xGloDif, xCptoDif: String;
   xGlosa, xLote, xCuenta, xConcepto, xDH: String;
   xDifCam, xPagAnt, xDifCLoc, xDifCExt: Double;
   xTotLoc, xTotExt: Double;
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

Procedure TFLiqCob.FormActivate(Sender: TObject);
Begin
   xCrea := True;
   dblcdCobrador.LookupTable := DM1.cdsCobrador;
   dblcZona.Lookuptable := DM1.cdsZona;
   dblcFormPago.LookUpTable := DM1.cdsFPago;

   DM1.cdsDetPagoLiq.MasterSource := DM1.dsDLiqCob1;
   DM1.cdsDetPagoLiq.MasterFields := 'CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';
   DM1.cdsDetPagoLiq.IndexFieldNames := 'CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';

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
      dblcTMon.text := DM1.cdsCLiqCob1.FieldByName('TMONID').AsString;
      dtpFEmis.date := DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime;
      dblcdCobrador.text := DM1.cdsCLiqCob1.FieldByName('COID').AsString;

      FiltraCanje(DM1.wModo);
      dbgLiqCobranza.RedrawGrid;
      dbgDocCanje.RedrawGrid;

      edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
      edtZona.Text := DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcZona.text);
      edtCobrador.Text := BuscaQry('prvCobrador', 'CXC206', 'CONOMBRES', 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND COID=' + QuotedStr(dblcdCobrador.text), 'CONOMBRES');
      edtTMon.Text := DisplayDescrip('TGE103', 'TMONDES', 'TMonID', dblcTMon.Text);

      If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'I' Then
         EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ')
      Else
         EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
      bbtnSumatClick(Sender);
   End;
   PageControl1.ActivePage := TabSheet1;
   xCrea := False;
End;

Procedure TFLiqCob.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   dblcCia.Enabled := False;
   dblcZona.Enabled := False;
   dblcTMon.Enabled := False;
   dblcdCobrador.Enabled := False;
   dblcClAux.Enabled := False;
   dtpFEmis.Enabled := False;
   edtCanje.Enabled := False;

   pnlCab1.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgLiqCobranza.Enabled := False;
   dbgDocCanje.Enabled := False;
   //dbgLiqCobranza.ReadOnly:= True;
   dbgDocCanje.ReadOnly := True;

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
         dblcTMon.Enabled := True;
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
         dblcTMon.Enabled := True;
//           edtCanje.Enabled   := False;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcCia.SetFocus;

         pnlDetalle.Enabled := False;

         dbgLiqCobranza.Enabled := False;
         dbgDocCanje.Enabled := False;
            //dbgLiqCobranza.ReadOnly:= True;
         dbgDocCanje.ReadOnly := True;

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
         dbgDocCanje.Enabled := True;
            //dbgLiqCobranza.ReadOnly:= False;
         dbgDocCanje.ReadOnly := False;

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
         dbgDocCanje.Enabled := True;

         lblContab.Visible := True;
      End
      Else
      Begin
         If xMovEstado = 'X' Then
         Begin
            pnlCab1.enabled := False;
            pnlDetalle.Enabled := True;
            dbgLiqCobranza.Enabled := True;
            dbgDocCanje.Enabled := True;
            //dbgLiqCobranza.ReadOnly:= True;
            dbgDocCanje.ReadOnly := True;

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
            dbgDocCanje.Enabled := True;
            //dbgLiqCobranza.ReadOnly:= False;
            dbgDocCanje.ReadOnly := False;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := False;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            lblActivo.Visible := True;
         End;
         If xMovEstado = 'P' Then
         Begin

            pnlCab1.enabled := False;
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := False;
            dbgDocCanje.ReadOnly := True;
            dbgDetPagoLiq.Enabled := True;
            dbgDetPagoLiq.ReadOnly := True;
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
            dbgDocCanje.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;

            dbgDocCanje.Enabled := True;

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
      dbgDocCanje.Enabled := False;
      //dbgLiqCobranza.ReadOnly:= True;
      dbgDocCanje.ReadOnly := True;

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

Procedure TFLiqCob.InicializaPies;
Begin
   dbgDocCanje.ColumnByName('CPNoDoc').FooterValue := 'Totales';
   dbgDocCanje.ColumnByName('CPSalLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CPSalExt').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoExt').FooterValue := '';
End;

Procedure TFLiqCob.InicializaDatos;
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
   dblcTMon.text := '';
   edtTMon.text := '';
End;

Procedure TFLiqCob.InicializaClientDataSet;
Var
   sSQL, sWhere: String;
Begin
//   Filtracds( DM1.cdsMovCxC2,'Select * from CXC301 Where CIAID=''''' );
   sWhere := ' WHERE CIAID=' + QuotedStr('CLG');
   sSQL := ' CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
      ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM, ' +
      ' LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CUENTAID,CCFEMIS,CCFVCMTO,CLAUXID, ' +
      ' CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,LICOSALEXT,FLAGVAR,LICOID2,LICOMTOABOORI ';

   Filtracds(DM1.cdsDLiqCob, 'Select ' + sSQL + ' from CXC317 ' + sWhere);
   DM1.cdsDLiqCob.EmptyDataSet;
   dbgDocCanje.RedrawGrid;

   Filtracds(DM1.cdsDLiqCob1, ' Select ' +
      ' BANCOID,CCFEMIS,CUENTAID,CCFVCMTO,CCNODOC,CCNORGE,CCSERIE,CIAID,CLAUXID,CLIEID,COID,CONOMBRES,DOCID, ' +
      ' FECPAGO,FLAGVAR,FPAGOID,FPAGONODOC,LICOAASEM,LICOAASS,LICOAATRI,LICOANO,LICOANOMM, ' +
      ' LICOAPROB,LICODD,LICOELABO,LICOESTADO,LICOFREG,LICOHREG,LICOID,LICOMM,LICOMTOABOEXT, ' +
      ' LICOMTOABOLOC,LICOMTOEXT,LICOMTOLOC,LICOMTOORI,LICOSALEXT,LICOSALLOC,LICOSALORI, ' +
      ' LICOSEM,LICOSS,LICOTCAMB,LICOTCAMBL,LICOTRI,LICOUSER,TDIARID,TMONID,TMONIDPAGO,TVTAID,LICOMTOABOORI ' +
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

   Filtracds(DM1.cdsDetPagoLiq, 'Select ' +
      ' CUENTAID,CCFEMIS,CCFVCMTO,BANCODES,BANCOID,CCNODOC,CCNOREG,CCSERIE,CIAID,CLAUXID,CLIEID,CLIERUC, ' +
      ' COID,DOCID,FECEMICHQ,FECPAGO,FLAGVAR,FPAGODES,FPAGOID,LICOAASEM,LICOAASS, ' +
      ' LICOAATRI,LICOANO,LICOANOMM,LICOAPROB,LICODD,LICOELABO,LICOESTADO,LICOFREG, ' +
      ' LICOHREG,LICOID,LICOMM,LICOMTOABOEXT,LICOMTOABOLOC,LICOMTOABOORI,LICOMTOANTEXT, ' +
      ' LICOMTOANTLOC,LICOMTOANTORI,LICOMTOEXT,LICOMTOLOC,LICOMTOORI,LICONOCHQ,LICOSEM, ' +
      ' LICOSS,LICOTCAMB,LICOTCAMBL,LICOTRI,LICOUSER,TMONID,TMONIDPAGO,TVTAID,CCBCOID ' +
      ' from CXC320 Where CIAID=''CLG   ''');
   DM1.cdsDetPagoLiq.EmptyDataSet;

   Filtracds(DM1.cdsCobrador, 'Select ' +
      ' CIAID,COCONS,COCUENTA,COFLAG,COFLCOM,COID, ' +
      ' CONOMBRES,COPORC,COTELF,COTIPO,CVTAID ' +
      ' from CXC206');
End;

Procedure TFLiqCob.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
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
   DM1.cdsDLiqCob.CancelUpdates;
//   DM1.cdsDPag.CancelUpdates;

   If (DM1.wModo = 'A') And (xFlagGr) Then
   Begin
      DM1.cdsCLiqCob1.Delete;
      DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');
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

Procedure TFLiqCob.FiltraCanje(xModo: String);
Var
   xSelDoc, sCartera, sSQL: String;
Begin
//CLG : 26/02/2002
   sSQL := ' SELECT TGE110.DOCABR,TGE103.TMONABR,CXC317.FLAGVAR,CXC317.CCSERIE,CXC317.CCNODOC,CXC317.LICOSALORI,C1.CCSALLOC LICOSALLOC, ' +
      ' C1.CCSALEXT LICOSALEXT,CXC317.CIAID,CXC317.CLIEID,CXC317.DOCID,CXC317.TMONID,CXC317.LICOTCAMB,C1.CCMTOORI LICOMTOORI,CXC317.LICOANO, ' +
      ' CXC317.LICOMM,CXC317.LICODD,CXC317.LICOTRI,CXC317.LICOSEM,CXC317.LICOSS,CXC317.LICOANOMM,CXC317.LICOAATRI,CXC317.LICOAASEM, ' +
      ' CXC317.LICOAASS,CXC317.TDIARID,CXC317.CUENTAID,CXC317.CCFVCMTO,CXC317.CCFEMIS,CXC317.CLAUXID,CXC317.TVTAID,CXC317.LICOID2, ' +
      ' CXC317.LICOMTOLOC,CXC317.LICOMTOEXT,CXC317.CLIEDES,CXC317.LICOMTOABOORI,C1.CCPAGLOC LICOMTOABOLOC,C1.CCPAGEXT LICOMTOABOEXT ,' +
         //CIM 12/08/2002
   ' CXC317.LICOTCAMBL ' +
      ' FROM CXC317 ' +
      ' LEFT JOIN TGE103 ON CXC317.TMONID=TGE103.TMONID ' +
      ' LEFT JOIN CXC301 C1 ON C1.CIAID=CXC317.CIAID AND C1.DOCID=CXC317.DOCID AND C1.CCSERIE=CXC317.CCSERIE AND C1.CCNODOC=CXC317.CCNODOC AND C1.CLIEID=CXC317.CLIEID ' +
      ' LEFT JOIN TGE110 ON TGE110.DOCID=CXC317.DOCID and TGE110.DOCMOD=''CXC'' WHERE ';

   Filtracds(DM1.cdsDLiqCob, sSQL
      + ' CXC317.CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' CXC317.CLAUXID=' + '''' + dblcClAux.text + '''' + ' and '
      + ' CXC317.TVTAID=' + '''' + dblcZona.text + '''' + ' and '
      + ' CXC317.TMONID=' + '''' + dblcTMon.text + '''' + ' and '
      + ' CXC317.COID=' + '''' + dblcdCobrador.text + '''');

   sSQL := ' SELECT CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
      ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM, ' +
      ' LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CUENTAID,CCFVCMTO,CCFEMIS,CLAUXID, ' +
      ' CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,LICOSALEXT,FLAGVAR,LICOID2,LICOMTOABOORI FROM CXC317 WHERE ';

   Filtracds(DM1.cdsDLiqCobClone, sSQL
      + ' CXC317.CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' CXC317.CLAUXID=' + '''' + dblcClAux.text + '''' + ' and '
      + ' CXC317.TVTAID=' + '''' + dblcZona.text + '''' + ' and '
      + ' CXC317.TMONID=' + '''' + dblcTMon.text + '''' + ' and '
      + ' CXC317.COID=' + '''' + dblcdCobrador.text + '''');
   DM1.cdsDLiqCobClone.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';

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

   dbgDocCanje.RedrawGrid;

   DM1.cdsDLiqCob.Filtered := False;
   DM1.cdsDLiqCob.Filter := '';
   DM1.cdsDLiqCob.Filter := ' FLAGVAR<>' + '''' + 'XX' + '''';
   DM1.cdsDLiqCob.Filtered := True;

   DM1.cdsDLiqCobClone.Filtered := False;
   DM1.cdsDLiqCobClone.Filter := '';
   DM1.cdsDLiqCobClone.Filter := ' FLAGVAR<>' + '''' + 'XX' + '''';
   DM1.cdsDLiqCobClone.Filtered := True;

   Filtracds(DM1.cdsDLiqCob1, ' Select ' +
      ' BANCOID,CUENTAID,CCFVCMTO,CCFEMIS,CCNODOC,CCNORGE,CCSERIE,CIAID,CLAUXID,CLIEID,COID,CONOMBRES,DOCID, ' +
      ' FECPAGO,FLAGVAR,FPAGOID,FPAGONODOC,LICOAASEM,LICOAASS,LICOAATRI,LICOANO,LICOANOMM, ' +
      ' LICOAPROB,LICODD,LICOELABO,LICOESTADO,LICOFREG,LICOHREG,LICOID,LICOMM,LICOMTOABOEXT, ' +
      ' LICOMTOABOLOC,LICOMTOEXT,LICOMTOLOC,LICOMTOORI,LICOSALEXT,LICOSALLOC,LICOSALORI, ' +
      ' LICOSEM,LICOSS,LICOTCAMB,LICOTCAMBL,LICOTRI,LICOUSER,TDIARID,TMONID,TMONIDPAGO,TVTAID,CLIEDES,LICOMTOABOORI ' +
      ' from CXC319 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' CLAUXID=' + '''' + dblcClAux.text + '''' + ' and '
//                        + ' TVTAID=' +''''+dblcZona.text+''''+' and '
      + ' TMONID=' + '''' + dblcTMon.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');

   dbgLiqCobranza.Selected.Clear;
   dbgLiqCobranza.Selected.Add('DOCID'#9'2'#9'Doc.'#9'F');
   dbgLiqCobranza.Selected.Add('CCSERIE'#9'4'#9'Serie'#9'F');
   dbgLiqCobranza.Selected.Add('CCNODOC'#9'8'#9'No.Documento'#9'F');
   dbgLiqCobranza.Selected.Add('CLIEDES'#9'40'#9'Cliente'#9'F');
   dbgLiqCobranza.Selected.Add('TMONID'#9'9'#9'Tipo de~Moneda'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOORI'#9'11'#9'Importe'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOABOEXT'#9'11'#9'Monto a~ pagar Ext.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOSALEXT'#9'11'#9'Saldo~Mon.Ext.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOMTOABOLOC'#9'11'#9'Monto a~ pagar Loc.'#9'F');
   dbgLiqCobranza.Selected.Add('LICOSALLOC'#9'11'#9'Saldo~Mon.Loc.'#9'F');
   dbgLiqCobranza.RedrawGrid;

   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT')).displayFormat := '###,###,###0.00';

   Filtracds(DM1.cdsDetPagoLiq, 'Select ' +
      ' BANCODES,BANCOID,CCNODOC,CCNOREG,CCSERIE,CIAID,CLAUXID,CLIEID,CLIERUC,COID, ' +
      ' DOCID,FECEMICHQ,FECPAGO,FLAGVAR,FPAGODES,FPAGOID,LICOAASEM,LICOAASS,LICOAATRI, ' +
      ' LICOANO,LICOANOMM,LICOAPROB,LICODD,LICOELABO,LICOESTADO,LICOFREG,LICOHREG,LICOID, ' +
      ' LICOMM,LICOMTOABOEXT,LICOMTOABOLOC,LICOMTOABOORI,LICOMTOANTEXT,LICOMTOANTLOC, ' +
      ' LICOMTOANTORI,LICOMTOEXT,LICOMTOLOC,LICOMTOORI,LICONOCHQ,LICOSEM,LICOSS,LICOTCAMB, ' +
      ' LICOTCAMBL,LICOTRI,LICOUSER,TMONID,TMONIDPAGO,TVTAID,CCBCOID,CUENTAID,CCFEMIS,CCFVCMTO ' +
      ' from CXC320 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''');
   TNumericField(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT')).displayFormat := '###,###,###0.00';

   Filtracds(DM1.cdsDetCanje, 'Select ' +
      ' CCCANJE,CCFCANJE,CCNODOC,CCNODOC2,CCNOREG,CCSERIE,CCSERIE2,CIAID,CJEANTME,CJEANTMN, ' +
      ' CLIEID,CLIERUC,DCCAAAA,DCCAASEM,DCCAASS,DCCAATRI,DCCANOMM,DCCDD,DCCFREG,DCCHREG,DCCMM, ' +
      ' DCCMTOEXT,DCCMTOLOC,DCCMTOORI,DCCSEM,DCCSS,DCCTCAMB,DCCTRI,DCCUSER,DOCID,DOCID2,FLAGVAR, ' +
      ' SALEXT,SALLOC,TCANJEID,TMONID ' +
      ' from CXC305 Where CIAID=''CLG''');
   DM1.cdsDetCanje.EmptyDataSet;

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

Procedure TFLiqCob.bbtnBasuraDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Function TFLiqCob.ValidaCabecera: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then Raise exception.Create('Falta Código de Compañía');
   If length(edtCia.Text) = 0 Then Raise exception.Create('Código de Compañía Errado');
   If length(edtCanje.Text) = 0 Then Raise exception.Create('Falta No. de Canje');
   If length(dblcClAux.Text) = 0 Then Raise exception.Create('Falta Registrar Clase de Auxiliar');
   If length(dblcdCobrador.Text) = 0 Then Raise exception.Create('Falta Registrar Cobrador');
   If length(edtCobrador.Text) = 0 Then Raise exception.Create('Cobrador Errado');
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
   If length(dblcTMon.Text) = 0 Then Raise exception.Create('Falta Tipo de Moneda');
   If length(edtTMon.Text) = 0 Then Raise exception.Create('Código de Moneda Errado');
   If length(dbeTCLet.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   Result := true;
End;

Function TFLiqCob.ExisteMovCxC(xxCia, xxDocid, xxCCNodoc, xxCCSerie, xxClieid: String): Boolean;
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

Procedure TFLiqCob.bbtnOkClick(Sender: TObject);
Var
   xWhere: String;
Begin
   DM1.xFlagCal := True;
   If VerificaCaja(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' No se puede Crear un Liquidación ' + #13 + ' En caja ya fue trabajada.');
   End;

   If Not ValidaCabecera Then Exit; // Valida Datos Cabecera

//   if DM1.wModo='A' then
   Begin
      FiltraCanje(DM1.wModo);
      dbgLiqCobranza.RedrawGrid;
   End;

{   if (DM1.cdsMovCxC2.RecordCount=0) and (DM1.cdsDLiqCob.RecordCount=0) then
   begin
      DM1.cdsCobranza.Edit;
      DM1.cdsCobranza.FieldByName('NCOESTADO').AsString:='X';
      EstadoDeForma( 0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ' );
      raise Exception.Create('Proveedor No tiene Documentos Pendientes de Pago');
   end;}

   If DM1.wModo = 'A' Then
   Begin

      DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
      sPe := InttoStr(wAno) + StrZero(IntToStr(wMes), 2);

      If length(edtCia.Text) > 0 Then
      Begin
        //determina último número de registro incrementado en 1
         xWhere := ' CIAID=' + QuotedStr(dblcCia.Text);
{                ' AND CLAUXID='+QuotedStr(dblcClAux.Text)+
                ' AND COID='+QuotedStr(dblcdCobrador.Text)+
                ' AND LICOANOMM='+QuotedStr(sPe)+}
             //   ' AND LICOESTADO<>'+QuotedStr('X');
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
      DM1.cdsCLiqCob1.FieldByName('TMONID').ASString := dblcTMon.Text;
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
//   bbtnSumatClick(Sender);

//   EstadoDeForma( 0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ' );
   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   xFlagGr := True;

{   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsDLiqCob.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsDLiqCob.First;
   while not DM1.cdsDLiqCob.Eof do begin
      DM1.cdsDLiqCob.Edit;
      if ExisteMovCxC( DM1.cdsDLiqCob.FieldByName('CIAID').Value,DM1.cdsDLiqCob.FieldByName('TDIARID').Value,
                       DM1.cdsDLiqCob.FieldByName('CCANOMM').Value,DM1.cdsDLiqCob.FieldByName('CCNOREG').Value) then begin
         DM1.cdsDLiqCob.FieldByName('CCSALLOC').Value:=DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value+DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value;
         DM1.cdsDLiqCob.FieldByName('CCSALEXT').Value:=DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value+DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value;
         if FRound(DM1.cdsCobranza.FieldByName('NCOTCAMB').Value,15,3)<>
            FRound(DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').Value,15,3) then begin

            If dblcTMon.Text=DM1.wTMonLoc then begin
               DM1.cdsDLiqCob.FieldByName('CCSALORI').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value-DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value,15,2);
               DM1.cdsDLiqCob.FieldByName('CCSALLOC').Value := DM1.cdsDLiqCob.FieldByName('CCSALORI').Value;
               DM1.cdsDLiqCob.FieldByName('CCSALEXT').Value := FRound(DM1.cdsDLiqCob.FieldByName('CCSALORI').Value/DM1.cdsCobranza.FieldByName('NCOTCAMB').Value,15,2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsDLiqCob.FieldByName('CCMTOLOC').Value/DM1.cdsCobranza.FieldByName('NCOTCAMB').Value,15,2);

               end
            else begin
               DM1.cdsDLiqCob.FieldByName('CCSALORI').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value-DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value,15,2);
               DM1.cdsDLiqCob.FieldByName('CCSALEXT').Value := DM1.cdsDLiqCob.FieldByName('CCSALORI').Value;
               DM1.cdsDLiqCob.FieldByName('CCSALLOC').Value := FRound(DM1.cdsDLiqCob.FieldByName('CCSALORI').Value*DM1.cdsCobranza.FieldByName('NCOTCAMB').Value,15,2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsDLiqCob.FieldByName('CCMTOEXT').Value*DM1.cdsCobranza.FieldByName('NCOTCAMB').Value,15,2);
            end;
         end;
      end;
      DM1.cdsDLiqCob.Next;
   end;
   DM1.cdsDLiqCob.EnableControls;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2.EnableControls;

   DM1.cdsDPag.DisableControls;
   DM1.cdsDPag.First;
   while not DM1.cdsDPag.Eof do begin
      DM1.cdsDPag.Edit;
      If dblcTMon.Text=DM1.wTMonLoc then begin
         DM1.cdsDPag.FieldByName('NCOMTOLOC').AsFloat:=DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat;
         DM1.cdsDPag.FieldByName('NCOMTOEXT').AsFloat:=FRound(DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat/DM1.cdsCobranza.FieldByName('NCOTCAMB').AsFloat,15,2);
         end
      else begin
         DM1.cdsDPag.FieldByName('NCOMTOEXT').AsFloat:=DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat;
         DM1.cdsDPag.FieldByName('NCOMTOLOC').AsFloat:=FRound(DM1.cdsDPag.FieldByName('NCOMTOORI').AsFloat*DM1.cdsCobranza.FieldByName('NCOTCAMB').AsFloat,15,2);
      end;
      DM1.cdsDPag.Next;
   end;
   DM1.cdsDPag.EnableControls;

   EstadoDeForma( 1, DM1.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ' );

   FNotaCob.OnKeyPress:=nil;

   bbtnSumatClick(Sender);}
End;

Procedure TFLiqCob.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
   State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiqCob.bbtnSumatClick(Sender: TObject);
Var
   xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xxTotal: Double;
   xTSalLocL, xTSalExtL, xTPagLocL, xTPagExtL, xxTotalL: Double;
   xTFPagoLoc, xTFPagoExt: Double;
   sCond: String;
Begin
//   xTPagLoc := OperClientDataSet( DM1.cdsDPag,'SUM('+'NCOMTOLOC'+')','');
//   xTPagExt := OperClientDataSet( DM1.cdsDPag,'SUM('+'NCOMTOEXT'+')','');
//   dbgPago.ColumnByName('NCOMtoLoc').FooterValue:=floattostrf(xTPagLoc, ffNumber, 10, 2);
//   dbgPago.ColumnByName('NCOMtoExt').FooterValue:=floattostrf(xTPagExt, ffNumber, 10, 2);

   xTSalLoc := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOSALLOC' + ')', '');
   xTSalExt := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOSALEXT' + ')', '');
   xTPagLoc := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOMTOLOC' + ')', '');
   xTPagExt := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOMTOEXT' + ')', '');
   xxTotalLoc := xTPagLoc;
   xxTotalExt := xTPagExt;
   dbgDocCanje.ColumnByName('LICOSalLoc').FooterValue := floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('LICOSalExt').FooterValue := floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('LICOMtoLoc').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('LICOMtoExt').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);

   If DM1.cdsCLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      xxTotal := xTPagLoc
   Else
   Begin
      xxTotal := xTPagExt;
   End;

   xTSalLocL := OperClientDataSet(DM1.cdsDLiqCob1, 'SUM(' + 'LICOSALLOC' + ')', '');
   xTSalExtL := OperClientDataSet(DM1.cdsDLiqCob1, 'SUM(' + 'LICOSALEXT' + ')', '');
   xTPagLocL := OperClientDataSet(DM1.cdsDLiqCob1, 'SUM(' + 'LICOMTOABOLOC' + ')', '');
   xTPagExtL := OperClientDataSet(DM1.cdsDLiqCob1, 'SUM(' + 'LICOMTOABOEXT' + ')', '');

   xxTotalLoc := xTSalLocL;
   xxTotalExt := xTSalExtL;

   xxTotalLocL := xTPagLocL;
   xxTotalExtL := xTPagExtL;

   dbgLiqCobranza.ColumnByName('LICOSalLoc').FooterValue := floattostrf(xTSalLocL, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOSalExt').FooterValue := floattostrf(xTSalExtL, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOMtoABOLoc').FooterValue := floattostrf(xTPagLocL, ffNumber, 10, 2);
   dbgLiqCobranza.ColumnByName('LICOMtoABOExt').FooterValue := floattostrf(xTPagExtL, ffNumber, 10, 2);

   If DM1.cdsCLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      xxTotalL := xTPagLocL
   Else
   Begin
      xxTotalL := xTPagExtL;
   End;

   sCond := 'DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString) +
      ' AND CCSERIE=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString) +
      ' AND CCNODOC=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString) +
      ' AND CLIEID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString);

   xTFPagoLoc := OperClientDataSet(DM1.cdsDetPagoLiq, 'SUM(' + 'LICOMTOABOLOC' + ')', sCond);
   xTFPagoExt := OperClientDataSet(DM1.cdsDetPAgoLiq, 'SUM(' + 'LICOMTOABOEXT' + ')', sCond);

   xxTFPagoExt := xTFPagoExt;
   xxTFPagoLoc := xTFPagoLoc;
   dbgDetPagoLiq.ColumnByName('LICOMTOABOLOC').FooterValue := floattostrf(xTFPagoLoc, ffNumber, 10, 2);
   dbgDetPagoLiq.ColumnByName('LICOMTOABOEXT').FooterValue := floattostrf(xTFPagoExt, ffNumber, 10, 2);

//   edtFinal.Text :='Cobranza se deberan Generar por la suma de '+edtTMon.Text;
//   edtTotal1.Text:=floattostrf( xxToTal ,ffNumber,15,2);
//   edtTotal.Text :=floattostr( FRound(xxToTal,15,2) );
End;

Procedure TFLiqCob.Z2bbtnGrabaClick(Sender: TObject);
Var
   xmoneda, xWhere: String;
   xentero: integer;
Begin
   If DM1.cdsDLiqCob1.RecordCount = 0 Then
      Raise exception.Create('Falta Cargar Documentos');
   DM1.cdsDLiqCob1.DisableControls;
   DM1.cdsDLiqCob1.First;
   While Not DM1.cdsDLiqCob1.EOF Do
   Begin
      If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsAnt Then
      Begin
         If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat > 0 Then
            Begin
               DM1.cdsDLiqCob1.EnableControls;
               Raise exception.Create('El Anticipo N°' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString) + ' no está cancelado totalmente');
            End;
         End
         Else
         Begin
            If DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat > 0 Then
            Begin
               DM1.cdsDLiqCob1.EnableControls;
               Raise exception.Create('El Anticipo N°' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString) + ' no está cancelado totalmente');
            End;
         End;
      End;
      DM1.cdsDLiqCob1.Next;
   End;
   DM1.cdsDLiqCob1.EnableControls;

   bbtnSumatClick(Sender);

   Errorcount := 0;
   DM1.DCOM1.AppServer.SOLStartTransaction;

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
   DM1.cdsCLiqCob1.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsCLiqCob1.FieldByName('LICOHREG').AsDateTime := TimeS;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'I';

   DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));

   DM1.ControlTran(0, DM1.cdsCLiqCob1, 'CLiqCob1'); //DM1.AplicaDatos(DM1.cdsCLiqCob1,'CLiqCob1');
   DM1.ControlTran(0, DM1.cdsDLiqCobClone, 'DLiqCob'); //DM1.AplicaDatos(DM1.cdsDLiqCobClone,'DLiqCob');
   DM1.cdsDLiqCob1.DataRequest(' Select ' +
      ' BANCOID,CUENTAID,CCFVCMTO,CCFEMIS,CCNODOC,CCNORGE,CCSERIE,CIAID,CLAUXID,CLIEID,COID,CONOMBRES,DOCID, ' +
      ' FECPAGO,FLAGVAR,FPAGOID,FPAGONODOC,LICOAASEM,LICOAASS,LICOAATRI,LICOANO,LICOANOMM, ' +
      ' LICOAPROB,LICODD,LICOELABO,LICOESTADO,LICOFREG,LICOHREG,LICOID,LICOMM,LICOMTOABOEXT, ' +
      ' LICOMTOABOLOC,LICOMTOEXT,LICOMTOLOC,LICOMTOORI,LICOSALEXT,LICOSALLOC,LICOSALORI, ' +
      ' LICOSEM,LICOSS,LICOTCAMB,LICOTCAMBL,LICOTRI,LICOUSER,TDIARID,TMONID,TMONIDPAGO,TVTAID,CLIEDES,LICOMTOABOORI ' +
      ' from CXC319 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');
   DM1.ControlTran(0, DM1.cdsDLiqCob1, 'DLiqCob1'); //DM1.AplicaDatos(DM1.cdsDLiqCob1,'DLiqCob1');
   DM1.ControlTran(0, DM1.cdsDetPagoLiq, 'DetPagoLiq'); //DM1.AplicaDatos(DM1.cdsDetPagoLiq,'DetPagoLiq');
   DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) + ' AND CCSERIE=''000''');
   DM1.ControlTran(0, DM1.cdsMovCxC, 'MovCxC'); //DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   xFlagGr := False;
   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
  //DM1.ControlTran( 8, nil, '' );  //COMMIT

   DM1.ControlTran(8, DM1.cdsCLiqCob1, 'CLiqCob1'); //DM1.AplicaDatos(DM1.cdsCLiqCob1,'CLiqCob1');
   DM1.ControlTran(8, DM1.cdsDLiqCobClone, 'DLiqCob'); //DM1.AplicaDatos(DM1.cdsDLiqCobClone,'DLiqCob');
   DM1.ControlTran(8, DM1.cdsDLiqCob1, 'DLiqCob1'); //DM1.AplicaDatos(DM1.cdsDLiqCob1,'DLiqCob1');
   DM1.ControlTran(8, DM1.cdsDetPagoLiq, 'DetPagoLiq'); //DM1.AplicaDatos(DM1.cdsDetPagoLiq,'DetPagoLiq');
   DM1.ControlTran(8, DM1.cdsMovCxC, 'MovCxC'); //DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

   ShowMessage('Registro de Cobranza Grabado ');
   Z2bbtnImprime.Enabled := TRUE;
End;

//OK

Procedure TFLiqCob.ActualizaSaldosMovCxP;
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

Function TFLiqCob.VerificaTotal: Boolean;
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

Procedure TFLiqCob.bbtnCalcClick(Sender: TObject);
Begin

   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación

End;

Procedure TFLiqCob.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
//dblcTMonAnt
   If xCrea Then Exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   xWhere := 'TMonId=''' + dblcTMon.Text + ''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
   edtTMon.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   End;
End;

Procedure TFLiqCob.bbtnCancelaClick(Sender: TObject);
Begin
   DM1.cdsMovCxC2.CancelUpdates;
   DM1.cdsDPag.CancelUpdates;
   DM1.cdsDLiqCob.CancelUpdates;
   FSelCob.OnKeyPress := FormKeyPress;
   EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
End;

Procedure TFLiqCob.dtpFEmisExit(Sender: TObject);
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
   If VerificaCaja(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' No se puede Crear una Liquidación ' + #13 + ' En caja ya fue trabajada.');
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

Procedure TFLiqCob.ActualizaPagadoMovCxP;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
   xSelDoc, sCartera, sCancelada, sLet: String;
Begin
   sCancelada := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', 'C'); //CODIGO DE LETRAS CANCELADA EN CARTERA
   sCartera := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5'); //CODIGO DE LETRAS EN CARTERA
   sLet := BuscaQry('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');

   Filtracds(DM1.cdsMovCxC2, 'Select CCUSER,CCFREG,CCHREG,CIAID,DOCID,CCNODOC,CCSERIE,CLIEID,TMONID,CCMTOORI,CCMTOEXT,CCMTOLOC,CCPAGORI,CCPAGEXT,CCPAGLOC,' +
      ' CCSALORI,CCSALEXT,CCSALLOC,CCESTADO,SITID,CCTCAMPA,CLIEDES,FLAGVAR,CCCANJE,TCANJEID,CCFCANCEL from CXC301 Where '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and ' + sWhereDocs
      + ' AND CCESTADO=' + QuotedStr('P'));

   If DM1.cdsMovCxC2.IndexFieldNames <> 'CIAID;DOCID;CCNODOC;CCSERIE;CLIEID' Then
      DM1.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCNODOC;CCSERIE;CLIEID';

   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsDetPagoLiq.DisableControls;
   DM1.cdsDetPagoLiq.First;
   While Not DM1.cdsDetPagoLiq.Eof Do
   Begin
      If DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      Begin
         DM1.cdsMovCxC2.Setkey;
         DM1.cdsMovCxC2.FieldByName('CIAID').AsString := DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString;
         DM1.cdsMovCxC2.FieldByName('DOCID').AsString := DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString;
         DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString;
         DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString;
         DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString;
         If DM1.cdsMovCxC2.GotoKey Then
         Begin
            DM1.cdsMovCxC2.edit;
            If DM1.cdsMovCxC2.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
            Begin
               If DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat > 0 Then
               Begin
                  xPagLoc := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat, 15, 2);
                  xPagExt := FRound(xPagLoc / DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
               End
               Else
               Begin
                  xPagLoc := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
                  xPagExt := FRound(xPagLoc / DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
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
                  If DM1.cdsMovCxC2.FieldByName('DOCID').AsString = sLet Then // SI ES LETRA LE CAMBIA LA SITUACION
                     DM1.cdsMovCxC2.FieldByName('SITID').AsString := sCancelada;
               End;
            End
            Else
            Begin
               If DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat > 0 Then
               Begin
                  xPagExt := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat, 15, 2);
                  xPagLoc := FRound(xPagExt * DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
               End
               Else
               Begin
                  xPagExt := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);
                  xPagLoc := FRound(xPagExt * DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
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
                  If DM1.cdsMovCxC2.FieldByName('DOCID').AsString = sLet Then // SI ES LETRA LE CAMBIA LA SITUACION
                  Begin
                     DM1.cdsMovCxC2.FieldByName('CCUSER').AsString := DM1.wUsuario;
                     DM1.cdsMovCxC2.FieldByName('CCFREG').AsDateTime := DateS;
                     DM1.cdsMovCxC2.FieldByName('CCHREG').AsDateTime := TimeS;
                     DM1.cdsMovCxC2.FieldByName('SITID').AsString := sCancelada;
                  End;
               End;
            End;
            DM1.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
         End;
         DM1.cdsDetPagoLiq.Next;
      End
      Else
      Begin
         DM1.cdsDetPagoLiq.Next;
      End;
   End;
   DM1.ControlTran(0, DM1.cdsMovCxC2, 'MovCxC2'); //DM1.AplicaDatos( DM1.cdsMovCxC2,'MovCxC2' );
   DM1.cdsMovCxC2.First;
   DM1.cdsMovCxC2.EnableControls;
   DM1.cdsDetPagoLiq.EnableControls;
End;

Procedure TFLiqCob.dbeTCLetExit(Sender: TObject);
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

Procedure TFLiqCob.bbtnBorraClick(Sender: TObject);
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

Procedure TFLiqCob.bbtnRegresaClick(Sender: TObject);
Begin
//   FSelCob.OnKeyPress:=FormKeyPress;
   EstadoDeForma(0, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   DM1.cdsCLiqCob1.Edit;
End;

Procedure TFLiqCob.Z2bbtnNuevoClick(Sender: TObject);
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

Procedure TFLiqCob.Z2bbtnAnulaClick(Sender: TObject);
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

Procedure TFLiqCob.Z2bbtnAceptaClick(Sender: TObject);
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
   If DM1.cdsDLiqCob1.RecordCount = 0 Then
      Raise exception.Create(' Error :  Falta registrar Documentos a Liquidar');
   If DM1.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If VerificaCaja(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' No se puede Crear un Liquidación ' + #13 + ' En caja ya fue trabajada.');
   End;

  // VERIFICA QUE TODOS TENGAN FORMA DE PAGO ASIGNADA
   DM1.cdsDLiqCob1.DisableControls;
   DM1.cdsDLiqCob1.First;
   sWhereDocs := '(';
   While Not DM1.cdsDLiqCob1.EOF Do
   Begin
      If (DM1.cdsDLiqCob1.FieldByName('FLAGVAR').IsNull) Or (DM1.cdsDLiqCob1.FieldByName('FLAGVAR').AsString <> 'X') Then
      Begin
         ShowMessage('Falta Ingresar la Forma de Pago de los Documentos a Liquidar');
         DM1.cdsDLiqCob1.EnableControls;
         exit;
      End;

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

   If MessageDlg('Aceptar Cobranza' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

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

   Errorcount := 0;
   DM1.DCOM1.AppServer.SOLStartTransaction;

   DM1.cdsDetPagoLiq.MasterSource := Nil;
   DM1.cdsDetPagoLiq.MasterFields := '';

// SI ES CHEQUE SE INSERTA EN EN CXC301 COMO DOCUMENTO PENDIENTE DE COBRANZA
// POR ORDEN DE JCC 19/04/2002
//  InsertaCheques;

   DM1.cdsDetPagoLiq.DisableControls;
   DM1.cdsDetPagoLiq.First;
   While Not DM1.cdsDetPagoLiq.EOF Do
   Begin
      If DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      Begin
         If DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat > 0 Then
         Begin
    //SE GENERA ANTICIPO EN CXC301
            DecodeDate(DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime, wAno, wMes, wDia);
            sAno := StrZero(IntToStr(wAno), 4);
            sMes := StrZero(IntToStr(wMes), 2);

            sClieRuc := DM1.BuscaQry2('dspTGE', 'TGE204', 'ZONVTAID,CLIERUC,CLIEDES', 'CLIEID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString), 'CLIERUC');
            sZona := DM1.cdsQry6.FieldByName('ZONVTAID').AsString;
            sClieDes := DM1.cdsQry6.FieldByName('CLIEDES').AsString;
            sCptoAnt := BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,CPTODES,CUENTAID', 'CIAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString) +
               ' AND TMONID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) +
               ' AND DOCID=' + QuotedStr(DM1.wsAnt) +
               ' AND TVTAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString), 'CPTOCAB');
            sCtaAnt := DM1.cdsQry.FieldByName('CUENTAID').AsString;

            xTAutoNum := DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', sTDiario);
            xxNoReg := DM1.UltimoRegistro(xTAutoNum, DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString, sTDiarioAnt, sAno, sMes);
            xxNoReg := Strzero(xxNoReg, 10);
            nNoReg := strtoint(xxNoReg);
     //determina último número de registro incrementado en 1
            xWhere := ' CIAID=' + QuotedStr(dblcCia.Text) +
               ' AND DOCID=' + QuotedStr(DM1.wsAnt) +
               ' AND CCSERIE=' + QuotedStr('000');
            sNumeroAnt := StrZero(DM1.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xWhere), 10);

            BuscaFecha('TGE114', 'Fecha', DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime);

            sSQL := ' INSERT INTO CXC301 (UBIID,CCPTOTOT,CTATOTAL,CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, ' +
               ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,TMONID,CCTCAMPR,CCTCAMAJ,CCESTADO, ' +
               ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, ' +
               ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG,CCHREG, ' +
               ' CLIEDES,TVTAID,ZVTAID,CCNLETBCO) VALUES(' +
               QuotedStr(DM1.wsOfi) + ',' + QuotedStr(sCptoAnt) + ',' + QuotedStr(sCtaAnt) + ',' +
               QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString) + ',' + // AÑOMES
               QuotedStr(sTDiarioAnt) + ',' + QuotedStr('000') + ',' + QuotedStr(xxNoReg) + ',' + DM1.wRepFecServi + ',' +
               QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString) + ',' +
               QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString) + ',' +
               QuotedStr(sClieRuc) + ',' + QuotedStr(DM1.wsAnt) + ',' + QuotedStr('000') + ',' +
               QuotedStr(sNumeroAnt) + ',' +
               QuotedStr(DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsString) + ',' +
               QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) + ',' +
               DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsString + ',' +
               DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsString + ',' +
               QuotedStr('P') + ',' +
               FloatToStr(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat) + ',' +
               FloatToStr(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat) + ',' +
               FloatToStr(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat) + ',0,0,0,' +
               FloatToStr(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat) + ',' +
               FloatToStr(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat) + ',' +
               FloatToStr(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECANO').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECMES').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECDIA').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECTRIM').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECSEM').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECSS').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECAATRI').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECAASEM').AsString) + ',' +
               QuotedStr(DM1.cdsQry2.FieldByName('FECAASS').AsString) + ',' +
               QuotedStr(DM1.cdsDetPagoLiq.FieldByName('BANCOID').AsString) + ',' + QuotedStr('.') + ',' +
               QuotedStr(DM1.wUsuario) + ',' + DM1.wRepFecServi + ',' + DM1.wRepTimeServi + ',' +
               QuotedStr(sClieDes) + ',' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString) + ',' + QuotedStr(sZona) + ',' + QuotedStr(edtCanje.text) + ')';
            Try
               DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
            Except
               DM1.ControlTran(1, Nil, ''); //ROLLBACK
            End;
            DM1.SaldosAuxiliarCLG(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString, sano + smes,
               DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString, DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString,
               '-', DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat, DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat, DM1.cdsDetPagoLiq.FieldByName('TMONID').AsString);
            If Not DM1.wSaldosAuxiliar Then
               DM1.ControlTran(1, Nil, ''); //ROLLBACK
            xxNoReg := DM1.GrabaUltimoRegistro(xTAutoNum, DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString, sTDiarioAnt, sAno, sMes, nNoReg);
            xxNoReg := StrZero(xxNoReg, 10);
            If Not DM1.wSaldosAuxiliar Then
               DM1.ControlTran(1, Nil, ''); //ROLLBACK

     ///LLENA CXC302
    // INSERTA EL REGISTRO DEL ANTICIPO EN EL HABER
            DM1.cdsDetCxC.Insert;
            LlenaDetCxC;
            BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) +
               ' AND TMONID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) +
               ' AND TVTAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString), 'CPTOCAB');
            DM1.cdsDetCxC.Edit;
            DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := xxNoReg;
            DM1.cdsDetCxC.FieldByName('TREGID').AsString := DM1.cdsQry.FieldByName('TREGID').AsString;
            DM1.cdsDetCxC.FieldByName('TIPDET').AsString := DM1.cdsQry.FieldByName('TIPDET').AsString;
            DM1.cdsDetCxC.FieldByName('CCDH').AsString := DM1.cdsQry.FieldByName('CCDH').AsString;
            DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.wsAnt;
            DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := '000';
            DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := sNumeroAnt;
            DM1.cdsDetCxC.FieldByName('CPTOID').AsString := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
            DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CUENTAID').AsString;
    //DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
            DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.BuscaQry2('dspTGE', 'TGE204', 'CLIEDES', 'CIAID=' + QuotedStr(dblcCia.text) +
               ' AND CLIEID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString), 'CLIEDES');
            DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
            DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat;
            DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat;
            DM1.cdsDetCxC.FieldByName('CCREG').AsInteger := DM1.cdsDetCxC.RecordCount + 1;
            DM1.cdsDetCxC.Post;
    // INSERTA EL REGISTRO DEL ANTICIPO EN EL DEBE

            DM1.cdsDetCxC.Insert;
            LlenaDetCxC;
            DM1.cdsDetCxC.Edit;
            If (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = sEFE) Or (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = sCHE) Then
            Begin
               BuscaQry('dspTGE', 'TGE105', 'REMESAID', 'BCOTIPCTA=''C''', 'REMESAID');
               DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('REMESAID').AsString;
               DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
               DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := 'Plla. ' + edtCanje.text + ' ' + DateToStr(dtpFEmis.Date); //DM1.cdsQry.FieldByName('CPTODES').AsString;
            End;

            If (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = sNDE) Then
            Begin
               BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND BANCOID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('BANCOID').AsString) +
                  ' AND CCBCOID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CCBCOID').AsString), 'CTAREMES');
               DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CTAREMES').AsString;
               DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
     //DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
               DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := 'Plla. ' + edtCanje.text + ' ' + DateToStr(dtpFEmis.Date); //DM1.cdsQry.FieldByName('CPTODES').AsString;
            End;
            DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := xxNoReg;
            DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.wsAnt;
            DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := '000';
            DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := sNumeroAnt;
            DM1.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
            DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
            DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat;
            DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat;
            DM1.cdsDetCxC.FieldByName('TIPDET').AsString := 'MN';
            DM1.cdsDetCxC.FieldByName('TREGID').AsString := BuscaQry('dspTGE', 'TGE128', 'TREGID,TIPDET', 'TIPDET=''MN''', 'TREGID');
            DM1.cdsDetCxC.FieldByName('CCREG').AsInteger := DM1.cdsDetCxC.RecordCount + 1;

            DM1.cdsDetCxC.Post;
         End;

   // INSERTAR EL PAGO EN LA CXC305
         DM1.cdsDetCanje.Insert;

         DM1.cdsDetCanje.FieldByName('CIAID').AsString := DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString;
         DM1.cdsDetCanje.FieldByName('CLIEID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString;
         DM1.cdsDetCanje.FieldByName('CLIERUC').AsString := DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DM1.cdsDetCanje.FieldByName('CLIEID').AsString);
         DM1.cdsDetCanje.FieldByName('DOCID').AsString := DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString;
         DM1.cdsDetCanje.FieldByName('CCSERIE').AsString := DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString;
         DM1.cdsDetCanje.FieldByName('CCNODOC').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString;
         DM1.cdsDetCanje.FieldByName('CCNOREG').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNOREG').AsString;
         DM1.cdsDetCanje.FieldByName('TCANJEID').AsString := 'CO';

         If BuscaFecha('TGE114', 'Fecha', DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime) Then
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

         DM1.cdsDetCanje.FieldByName('TMONID').AsString := DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString;
         DM1.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat;

         DM1.cdsDetCanje.FieldByName('DCCUSER').AsString := DM1.wUsuario;
         DM1.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DateS;
         DM1.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := TimeS;

         If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat >= 0 Then
            Begin
               DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat - DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat, 15, 2);
               DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound((DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat - DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat) / DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
            End
            Else
            Begin
               DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsString), 15, 2);
               DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsString) / DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
            End;
         End
         Else
            If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonExt Then
            Begin
               If DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat >= 0 Then
               Begin
                  DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound((DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat - DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat) * DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
                  DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').Asfloat - DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat, 15, 2);
               End
               Else
               Begin
                  DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsString) * DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat, 15, 2);
                  DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsString), 15, 2);
               End;
            End;

         If DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString = DM1.wTMonLoc Then
            DM1.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat
         Else
            DM1.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat;

   //ACTUALIZO LA CUENTA CORRIENTE DEL CLIENTE
   // SOLO PARA DOCUMENTOS DIFERENTES DE LETRAS
   //if (DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString<>sLet) then
         DM1.SaldosAuxiliarCLG(DM1.cdsDetCanje.FieldByName('CIAID').AsString, DM1.cdsDetCanje.FieldByName('DCCANOMM').AsString,
            DM1.cdsCLiqCob1.FieldByName('CLAUXID').AsString, DM1.cdsDetCanje.FieldByName('CLIEID').AsString,
            '-', DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat, DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat, DM1.cdsDetPagoLiq.FieldByName('TMONID').AsString);
         If Not DM1.wSaldosAuxiliar Then
            DM1.ControlTran(1, Nil, ''); //ROLLBACK
         DM1.cdsDetCanje.Post;

         DM1.cdsDetPagoLiq.Next;
      End
      Else
      Begin
  //ANTICIPOS
    // ACTUALIZA EL ANTICIPO A ACEPTADO
         sSQL := ' UPDATE CXC301 SET CCESTADO=''P'' WHERE ' +
            ' CIAID=' + QuotedStr(dblcCia.Text) + ' AND DOCID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString) +
            ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString);
         Try
            DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            DM1.ControlTran(1, Nil, ''); //ROLLBACK
         End;

    // INSERTA EL REGISTRO DEL ANTICIPO EN EL HABER
         DM1.cdsDetCxC.Insert;
         LlenaDetCxC;
         BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) +
            ' AND TMONID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) +
            ' AND TVTAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString), 'CPTOCAB');
         DM1.cdsDetCxC.Edit;
         DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNOREG').AsString;
         DM1.cdsDetCxC.FieldByName('TREGID').AsString := DM1.cdsQry.FieldByName('TREGID').AsString;
         DM1.cdsDetCxC.FieldByName('TIPDET').AsString := DM1.cdsQry.FieldByName('TIPDET').AsString;
         DM1.cdsDetCxC.FieldByName('CCDH').AsString := DM1.cdsQry.FieldByName('CCDH').AsString;
         DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString;
         DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString;
         DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString;
         DM1.cdsDetCxC.FieldByName('CPTOID').AsString := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
         DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CUENTAID').AsString;
    //DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
         DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.BuscaQry2('dspTGE', 'TGE204', 'CLIEDES', 'CIAID=' + QuotedStr(dblcCia.text) +
            ' AND CLIEID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString), 'CLIEDES');

         DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCREG').AsInteger := DM1.cdsDetCxC.RecordCount + 1;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat;
         DM1.cdsDetCxC.Post;
    // INSERTA EL REGISTRO DEL ANTICIPO EN EL DEBE

         DM1.cdsDetCxC.Insert;
         LlenaDetCxC;
         DM1.cdsDetCxC.Edit;
         DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNOREG').AsString;
         If (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = sEFE) Or (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = sCHE) Then
         Begin
            BuscaQry('dspTGE', 'TGE105', 'REMESAID', 'BCOTIPCTA=''C''', 'REMESAID');
            DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('REMESAID').AsString;
            DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
     //DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
            DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := 'Plla. ' + edtCanje.text + ' ' + DateToStr(dtpFEmis.Date); //DM1.cdsQry.FieldByName('CPTODES').AsString;
         End;

         If (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = sNDE) Then
         Begin
            BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND BANCOID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('BANCOID').AsString) +
               ' AND CCBCOID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CCBCOID').AsString), 'CTAREMES');
            DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CTAREMES').AsString;
            DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
     //DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
            DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := 'Plla. ' + edtCanje.text + ' ' + DateToStr(dtpFEmis.Date); //DM1.cdsQry.FieldByName('CPTODES').AsString;
         End;

         DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString;
         DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString;
         DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString;
         DM1.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
         DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat;
         DM1.cdsDetCxC.FieldByName('TIPDET').AsString := 'MN';
         DM1.cdsDetCxC.FieldByName('TREGID').AsString := BuscaQry('dspTGE', 'TGE128', 'TREGID,TIPDET', 'TIPDET=''MN''', 'TREGID');
         DM1.cdsDetCxC.FieldByName('CCREG').AsInteger := DM1.cdsDetCxC.RecordCount + 1;

         DM1.cdsDetCxC.Post;
         DM1.SaldosAuxiliarCLG(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString, DM1.cdsDetPagoLiq.FieldByName('LICOANOMM').AsString,
            DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString, DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString,
            '-', DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat, DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat, DM1.cdsDetPagoLiq.FieldByName('TMONID').AsString);

         DM1.cdsDetPagoLiq.Next;
      End;
   End;

  //ACTUALIZA LOS DOCUMENTOS EN LA CXC301
   ActualizaPagadoMovCxP;
   ActualizaDocumentosEncargados; //DLiqcob
   DM1.cdsDetPagoLiq.EnableControls;
   DM1.cdsDetPagoLiq.MasterSource := DM1.dsDLiqCob1;
   DM1.cdsDetPagoLiq.MasterFields := 'CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';

   DM1.cdsDLiqCob1.EnableControls;

   DM1.cdsCLiqCob1.Edit;
   DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString := 'P';
   DM1.cdsCLiqCob1.Post;
   DM1.cdsCLiqCob1.DataRequest('SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.ControlTran(0, DM1.cdsCLiqCob1, 'CLiqCob1'); //DM1.AplicaDatos( DM1.cdsCLiqCob1, 'CLiqCob1' );
   DM1.ControlTran(0, DM1.cdsDetCanje, 'DetCanje'); //DM1.AplicaDatos( DM1.cdsDetCanje, 'DetCanje' );
   DM1.ControlTran(0, DM1.cdsDLiqCobClone, 'DLiqCob'); //DM1.AplicaDatos(DM1.cdsDLiqCobClone,'DLiqCob');
   DM1.ControlTran(0, DM1.cdsDetCxC, 'DetCxC'); //DM1.AplicaDatos( DM1.cdsDetCxC, 'DetCxC' );

   EstadoDeForma(1, DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString, ' ');
   InsertaConsolidado;
  //DM1.ControlTran( 8, nil, '' );  //COMMIT

   DM1.ControlTran(8, DM1.cdsMovCxC2, 'MovCxC2'); //DM1.AplicaDatos( DM1.cdsMovCxC2,'MovCxC2' );
   DM1.ControlTran(8, DM1.cdsCLiqCob1, 'CLiqCob1'); //DM1.AplicaDatos( DM1.cdsCLiqCob1, 'CLiqCob1' );
   DM1.ControlTran(8, DM1.cdsDetCanje, 'DetCanje'); //DM1.AplicaDatos( DM1.cdsDetCanje, 'DetCanje' );
   DM1.ControlTran(8, DM1.cdsDLiqCobClone, 'DLiqCob'); //DM1.AplicaDatos(DM1.cdsDLiqCobClone,'DLiqCob');
   DM1.ControlTran(8, DM1.cdsDetCxC, 'DetCxC'); //DM1.AplicaDatos( DM1.cdsDetCxC, 'DetCxC' );

   ShowMessage(' Cobranza Aceptada ');
End;

Procedure TFLiqCob.dblcCiaExit(Sender: TObject);
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

Procedure TFLiqCob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFLiqCob.FormCreate(Sender: TObject);
Begin
{   If DM1.wAdmin='G' then begin
      DM1.wObjetoDesPr := Caption;
      FPrincipal.ListaComponentes(Self);
   end;}
//   FPrincipal.PropGrid( [dbgPendientes, dbgDocCanje] );
End;

Procedure TFLiqCob.dbgDocCanjeCalcCellColors2(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
{
   If DM1.wVRN_PagosParciales='S' then begin
      If (FIELD.FieldName='CCPTCCJE') or
         (FIELD.FieldName='CCPMOLOC') or
         (FIELD.FieldName='CCPMOEXT') then begin
         AFont.Color  := clBlack;
         ABrush.Color := clWindow;
      end;
   end;}
End;

Procedure TFLiqCob.dbgDocCanjeDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiqCob.dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
Var
   xWhere: String;
Begin
   If Target = dbgLiqCobranza Then
   Begin
//      DM1.cdsDLiqCob.Filtered:=False;
      xWhere := 'CIAID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CIAID').AsString) + ' AND ' +
         'DOCID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('DOCID').AsString) + ' AND ' +
         'CCSERIE=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString) + ' AND ' +
         'CCNODOC=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString) + ' AND ' +
         'CLIEID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CLIEID').AsString);

      BuscaQry('dspTGE', 'CXC301', 'COMPROMET,FLAGVAR,CCMTOORI,CCPAGORI,CCSALORI,CCMTOEXT,CCPAGEXT,CCSALEXT,CCMTOLOC,CCPAGLOC,CCSALLOC,TMONID', xWhere, 'FLAGVAR');
      If DM1.cdsQry.FieldByName('FLAGVAR').AsString = 'XX' Then
      Begin
         If DM1.cdsQry.FieldByName('COMPROMET').AsString = 'LC' Then
         Begin
            ShowMessage('El Documento está esta siendo Canjedado');
            exit;
         End
         Else
         Begin
            If DM1.cdsQry.FieldByName('COMPROMET').AsString = 'LR' Then
            Begin
               ShowMessage('El Documento está esta siendo Renovado');
               exit;
            End
            Else
            Begin
               If DM1.cdsQry.FieldByName('COMPROMET').AsString = 'NC' Then
               Begin
                  ShowMessage('El Documento está esta siendo Aplicado a una Nota de Crédito');
                  exit;
               End
               Else
               Begin
                  ShowMessage('El Documento está comprometido');
                  exit;
               End;
            End;
         End;
      End;

      DM1.cdsDLiqCob1.SetKey;
      DM1.cdsDLiqCob1.FieldByName('CIAID').AsString := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
      DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob.FieldByName('CLIEID').AsString;
      DM1.cdsDLiqCob1.FieldByName('DOCID').AsString := DM1.cdsDLiqCob.FieldByName('DOCID').AsString;
      DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString;
      DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString;

      If DM1.cdsDLiqCob1.RecordCount = 43 Then
      Begin
         ShowMessage('Solo se pueden aceptar 43 Documentos. Cree una nueva planilla');
         exit;
      End;

      If Not DM1.cdsDLiqCob1.GotoKey Then
      Begin
        //DM1.cdsDLiqCob1.Insert;
         DM1.cdsDLiqCob1.Append;
         DM1.cdsDLiqCob1.FieldByName('CIAID').AsString := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
         DM1.cdsDLiqCob1.FieldByName('LICOID').AsString := edtCanje.Text;
         DM1.cdsDLiqCob1.FieldByName('COID').AsString := dblcdCobrador.text;

{        DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat :=DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat;
        DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat :=DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat;
        DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat :=DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat;

        DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat :=DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat;
        DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat :=DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat;
        DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat :=DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat;

        DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat  := DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat;
        DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat  := DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat;
        DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat  := DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat;
 }
//CLG: 16/01/2003
         If DM1.cdsQry.FieldByName('TMONID').AsString = DM1.wTMonExt Then
         Begin
            DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat * DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat - DM1.cdsQry.FieldByName('CCPAGORI').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat - DM1.cdsQry.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := FRound((DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat - DM1.cdsQry.FieldByName('CCPAGEXT').AsFloat) * DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat - DM1.cdsQry.FieldByName('CCPAGORI').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat - DM1.cdsQry.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := FRound((DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat - DM1.cdsQry.FieldByName('CCPAGEXT').AsFloat) * DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat, 15, 2);
         End
         Else
         Begin
            DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat / DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat - DM1.cdsQry.FieldByName('CCPAGORI').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat - DM1.cdsQry.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := FRound((DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat - DM1.cdsQry.FieldByName('CCPAGLOC').AsFloat) / DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat, 15, 2);

            DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat - DM1.cdsQry.FieldByName('CCPAGORI').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := FRound(DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat - DM1.cdsQry.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := FRound((DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat - DM1.cdsQry.FieldByName('CCPAGLOC').AsFloat) / DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat, 15, 2);
         End;

         DM1.cdsDLiqCob1.FieldByName('TMONID').AsString := DM1.cdsDLiqCob.FieldByName('TMONID').AsString;
         DM1.cdsDLiqCob1.FieldByName('LICOTCAMBL').AsFloat := DM1.cdsDLiqCob.FieldByName('LICOTCAMBL').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat := StrToFloat(dbeTCLet.text);

         DM1.cdsDLiqCob1.FieldByName('LICOELABO').AsString := '';
         DM1.cdsDLiqCob1.FieldByName('LICOAPROB').AsString := '';
         DM1.cdsDLiqCob1.FieldByName('LICOESTADO').AsString := '';
         DM1.cdsDLiqCob1.FieldByName('LICOUSER').AsString := DM1.wUsuario;
         DM1.cdsDLiqCob1.FieldByName('LICOFREG').AsDateTime := dateS;
         DM1.cdsDLiqCob1.FieldByName('LICOHREG').AsDateTime := timeS;

         If BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
         Begin
            DM1.cdsDLiqCob1.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
            DM1.cdsDLiqCob1.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
            DM1.cdsDLiqCob1.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
            DM1.cdsDLiqCob1.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
            DM1.cdsDLiqCob1.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
            DM1.cdsDLiqCob1.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
            DM1.cdsDLiqCob1.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
            DM1.cdsDLiqCob1.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
            DM1.cdsDLiqCob1.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
            DM1.cdsDLiqCob1.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
         End;

         DM1.cdsDLiqCob1.FieldByName('DOCID').AsString := DM1.cdsDLiqCob.FieldByName('DOCID').AsString;
         DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString;
         DM1.cdsDLiqCob1.FieldByName('TDIARID').AsString := DM1.cdsDLiqCob.FieldByName('TDIARID').AsString;
         DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString := DM1.cdsDLiqCob.FieldByName('CLIEDES').AsString;
         DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob.FieldByName('CLIEID').AsString;
         DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString;
         DM1.cdsDLiqCob1.FieldByName('CCFEMIS').AsDateTime := DM1.cdsDLiqCob.FieldByName('CCFEMIS').AsDateTime;
         DM1.cdsDLiqCob1.FieldByName('CCFVCMTO').AsDateTime := DM1.cdsDLiqCob.FieldByName('CCFVCMTO').AsDateTime;
         DM1.cdsDLiqCob1.FieldByName('CUENTAID').AsString := DM1.cdsDLiqCob.FieldByName('CUENTAID').AsString;
         DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString := DM1.cdsDLiqCob.FieldByName('CLAUXID').AsString;
         DM1.cdsDLiqCob1.FieldByName('CONOMBRES').AsString := edtCobrador.text;
         DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString := DM1.cdsDLiqCob.FieldByName('TVTAID').AsString;
         DM1.cdsDLiqCob1.FieldByName('CCNORGE').AsString := edtCanje.text;
         DM1.cdsDLiqCob1.Post;

         DM1.cdsDLiqCobClone.SetKey;
         DM1.cdsDLiqCobClone.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
         DM1.cdsDLiqCobClone.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
         DM1.cdsDLiqCobClone.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
         DM1.cdsDLiqCobClone.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
         DM1.cdsDLiqCobClone.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;

         If DM1.cdsDLiqCobClone.GotoKey Then
         Begin
            DM1.cdsDLiqCobClone.Edit;
            DM1.cdsDLiqCobClone.FieldByName('FLAGVAR').AsString := 'XX';
            DM1.cdsDLiqCobClone.FieldByName('LICOID2').AsString := edtCanje.text;
            DM1.cdsDLiqCobClone.Post;
         End;

         DM1.cdsDLiqCob.Edit;
         DM1.cdsDLiqCob.FieldByName('FLAGVAR').AsString := 'XX';
         DM1.cdsDLiqCob.FieldByName('LICOID2').AsString := edtCanje.text;
         DM1.cdsDLiqCob.Post;
      End;

  //    DM1.cdsDLiqCob.Filtered:=True;
      dbgLiqCobranza.RefreshDisplay;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFLiqCob.dbgDocCanjeMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   If DM1.cdsDLiqCob.RecordCount > 0 Then
      dbgDocCanje.BeginDrag(False);
End;

Procedure TFLiqCob.dbgPendientesDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiqCob.dbgPendientesEndDrag2(Sender, Target: TObject; X,
   Y: Integer);
Var
   i: Integer;
Begin
   If Target = dbgDocCanje Then
   Begin
      DM1.cdsMovCxC2.DisableControls;
      // Verifica que Documentos No Esten Pendientes de Actualización
      For i := 0 To dbgLiqCobranza.SelectedList.Count - 1 Do
      Begin
         dbgLiqCobranza.datasource.dataset.GotoBookmark(dbgLiqCobranza.SelectedList.items[i]);
         If DM1.cdsMovCxC2.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2) <>
               FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgLiqCobranza.SelectedList.clear;
               DM1.cdsMovCxC2.First;
               DM1.cdsMovCxC2.EnableControls;
            End;
         End
         Else
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2) <>
               FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgLiqCobranza.SelectedList.clear;
               DM1.cdsMovCxC2.First;
               DM1.cdsMovCxC2.EnableControls;
            End;
         End;
      End; //FOR

      DM1.cdsDLiqCob.SetKey;
      DM1.cdsDLiqCob.FieldByName('CIAID').AsString := DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
      DM1.cdsDLiqCob.FieldByName('CLIEID').AsString := DM1.cdsMovCxC2.FieldByName('CLIEID').AsString;
      DM1.cdsDLiqCob.FieldByName('DOCID').AsString := DM1.cdsMovCxC2.FieldByName('DOCID').AsString;
      DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString := DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString;
      DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString := DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString;
      If Not DM1.cdsDLiqCob.GotoKey Then
      Begin
         DM1.cdsDLiqCob.Insert;
         DM1.cdsDLiqCob.FieldByName('CIAID').AsString := DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
         DM1.cdsDLiqCob.FieldByName('TDIARID').AsString := DM1.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DM1.cdsDLiqCob.FieldByName('CCNORGE').AsString := DM1.cdsMovCxC2.FieldByName('CCNOREG').AsString;

         If BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
         Begin
            DM1.cdsDLiqCob.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
            DM1.cdsDLiqCob.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
            DM1.cdsDLiqCob.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
            DM1.cdsDLiqCob.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
            DM1.cdsDLiqCob.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
            DM1.cdsDLiqCob.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
            DM1.cdsDLiqCob.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
            DM1.cdsDLiqCob.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
            DM1.cdsDLiqCob.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
            DM1.cdsDLiqCob.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
         End;

         DM1.cdsDLiqCob.FieldByName('CLAUXID').AsString := DM1.cdsMovCxC2.FieldByName('CLAUXID').AsString;
         DM1.cdsDLiqCob.FieldByName('TVTAID').AsString := DM1.cdsMovCxC2.FieldByName('TVTAID').AsString;
         DM1.cdsDLiqCob.FieldByName('COID').AsString := dblcdCobrador.text;
         DM1.cdsDLiqCob.FieldByName('CONOMBRES').AsString := edtCobrador.text;

         DM1.cdsDLiqCob.FieldByName('CLIEID').AsString := DM1.cdsMovCxC2.FieldByName('CLIEID').AsString;
//         DM1.cdsDLiqCob.FieldByName('CLIERUC').Value  := DM1.cdsMovCxC2.FieldByName('CLIERUC').Value;
         DM1.cdsDLiqCob.FieldByName('DOCID').AsString := DM1.cdsMovCxC2.FieldByName('DOCID').AsString;
         DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString := DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString := DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString;
//         DM1.cdsDLiqCob.FieldByName('TCANJEID').AsString := 'CO';
         DM1.cdsDLiqCob.FieldByName('LICOID').AsString := edtCanje.Text;
         DM1.cdsDLiqCob.FieldByName('CCFEMIS').AsDateTime := dtpFEmis.Date;
         DM1.cdsDLiqCob.FieldByName('TMONID').AsString := DM1.cdsMovCxC2.FieldByName('TMONID').AsString;
         DM1.cdsDLiqCob.FieldByName('LICOTCAMB').AsFloat := xxTCambio;
         DM1.cdsDLiqCob.FieldByName('LICOTCAMBL').AsFloat := DM1.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat;
         If dblcTMon.Text = DM1.wTMonLoc Then
         Begin
            DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat;
            DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound(DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat / xxTCambio, 15, 2);
         End
         Else
         Begin
            DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat;
            DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound(DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat * xxTCambio, 15, 2);
         End;
         DM1.xFlagCal := False;
         DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := 0; //DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat;
         DM1.xFlagCal := False;
         DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := 0; //DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat;

         DM1.cdsDLiqCob.FieldByName('LICOESTADO').AsString := 'P';
         DM1.cdsDLiqCob.FieldByName('LICOUSER').AsString := DM1.wUsuario;
         DM1.cdsDLiqCob.FieldByName('LICOFREG').AsDateTime := DateS;
         DM1.cdsDLiqCob.FieldByName('LICOHREG').AsDateTime := TimeS;
//         DM1.cdsDLiqCob.FieldByName('CPTOTOT').Value  := DM1.cdsMovCxC2.FieldByName('CCPTOTOT').Value;
//         DM1.cdsDLiqCob.FieldByName('CTATOTAL').Value := DM1.cdsMovCxC2.FieldByName('CTATOTAL').Value;
         DM1.cdsDLiqCob.Post;
         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
         DM1.cdsMovCxC2.Post;
      End;
      DM1.cdsMovCxC2.EnableControls;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFLiqCob.dbgPendientesMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgLiqCobranza.BeginDrag(False);
End;

Procedure TFLiqCob.InsertaCanjes(xxCds: TwwClientDataSet);
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
   DM1.cdsDLiqCob.FieldByName('CCFREG').AsDateTime := dateS;
   DM1.cdsDLiqCob.FieldByName('CCHREG').AsDateTime := timeS;
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

Procedure TFLiqCob.ppvTMonCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + QuotedStr(dm1.wTMonLoc);
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLiqCob.ppVariable2Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DM1.cdsDLiqCob.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLiqCob.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFLiqCob.Z2bbtnImprimeClick(Sender: TObject);
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
 {2}DM1.cdsQry4.MasterSource := Nil;
 {3}DM1.cdsQry4.MasterFields := '';
 {1}DM1.cdsQry4.IndexFieldNames := '';

   sSQL := 'SELECT CIAID,LICOID,FPAGOID,FPAGODES,TMONIDPAGO,''MONEDAMONEDA'' TMONABR,''DESCRIPCION LARGA DE MONEDA'' TMONDES, ' +
      ' ''TIPOCHEQUE'' TIPOCHEQUE, BANCOID, BANCODES,''000'' CCSERIE,LICONOCHQ CCNODOC,FECPAGO,FECEMICHQ,CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN SUM(LICOMTOABOLOC) ELSE SUM(LICOMTOABOEXT) END LICOMTOABOORI, ''C'' OPC, LICONOCHQ  ' +
      ' FROM CXC320 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) +
      ' AND (FPAGOID=' + QuotedStr(sCHE) + ' OR FPAGOID=' + QuotedStr(sNDE) + ' OR FPAGOID=' + QuotedStr(DM1.wsFeFe) + ') ' +
      ' GROUP BY CIAID,LICOID,FPAGOID,FPAGODES,TMONIDPAGO,BANCOID,BANCODES,LICONOCHQ,FECPAGO,FECEMICHQ ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(sSQL);
   DM1.cdsQry5.Open;
  //Filtracds( DM1.cdsQry5,sSQL);
   DM1.cdsQry5.IndexFieldNames := 'CIAID;LICOID;FPAGOID;TMONIDPAGO;LICONOCHQ';

   sSQL := 'SELECT CIAID,LICOID,FPAGOID,FPAGODES,TMONIDPAGO,''MONEDAMONEDA'' TMONABR,''DESCRIPCION LARGA DE MONEDA'' TMONDES, BANCOID, ' +
      ' BANCODES,''000'' CCSERIE,LICONOCHQ CCNODOC,FECPAGO,FECEMICHQ,CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN SUM(LICOMTOABOLOC) ELSE SUM(LICOMTOABOEXT) END LICOMTOABOORI, ''C'' OPC, LICONOCHQ,  ' +
      ' SUM(CASE WHEN DOCID=' + QuotedStr(DM1.wsAnt) + ' THEN LICOMTOANTORI ELSE CASE WHEN LICOMTOANTORI>0 THEN LICOMTOANTORI ELSE 0.00 END END) LICOMTOANTORI ' +
      ' FROM CXC320 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) +
      ' GROUP BY CIAID,LICOID,FPAGOID,FPAGODES,TMONIDPAGO,BANCOID,BANCODES,LICONOCHQ,FECPAGO,FECEMICHQ ';
  //Filtracds( DM1.cdsQry3,sSQL);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(sSQL);
   DM1.cdsQry3.Open;

   DM1.cdsQry3.IndexFieldNames := 'CIAID;LICOID;FPAGOID;TMONIDPAGO;LICONOCHQ';

   sSQL := 'SELECT CXC320.CIAID,LICOID,CXC320.CLAUXID,CXC320.CLIEID,FPAGOID,DOCID,''DOCUMENTODOCUMENTO'' DOCABR, TMONIDPAGO,TMONID,''MONEDAMONEDA'' TMONABR, ' +
      ' ''DESCRIPCION LARGA DE MONEDA'' TMONDES,BANCOID,CCSERIE,CCNODOC,FECPAGO,FECEMICHQ,CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE LICOMTOABOEXT END LICOMTOABOORI, ' +
      ' CASE WHEN DOCID=' + QuotedStr(DM1.wsAnt) + ' THEN LICOMTOANTORI ELSE CASE WHEN LICOMTOANTORI>0 THEN LICOMTOANTORI ELSE 0.00 END END LICOMTOANTORI,  ' +
      ' ''D'' OPC, LICONOCHQ, ''RAZON SOCIAL DEL CLIENTE RAZON SOCIAL DEL CLIENTE'' CLIEDES  ' +
      ' FROM CXC320 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text);
//         ' LEFT JOIN TGE202 C ON C.CIAID=CXC320.CIAID AND C.CLAUXID=CXC320.CLAUXID AND C.CLIEID=CXC320.CLIEID ';
  //Filtracds( DM1.cdsQry4,sSQL);
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

   DM1.cdsQry4.IndexFieldNames := 'CIAID;LICOID;FPAGOID;TMONIDPAGO;LICONOCHQ;CCSERIE;CCNODOC';
   DM1.cdsQry4.MasterSource := DM1.dsQry3;
   DM1.cdsQry4.MasterFields := 'CIAID;LICOID;FPAGOID;TMONIDPAGO;LICONOCHQ';

   ppdbCabecera.DataSource := DM1.dsQry3;
   ppdbDetalle.DataSource := DM1.dsQry4;
   ppdbCheBol.DataSource := DM1.dsQry5;
   ppdbResumen.DataSource := DM1.dsQry6;
   sSQL := ' SELECT MONEXT,MONLOC,TODOEXT,RTRIM(TGE112.FPAGODES)||DIF FPAGODES FROM (SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE 0 END) MONLOC, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) + SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC/LICOTCAMB ELSE 0 END) TODOEXT, ' +
      ' '''' DIF ' +
      ' FROM CXC320 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID<>' + QuotedStr(sCHE) +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE 0 END) MONLOC, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) + SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC/LICOTCAMB ELSE 0 END) TODOEXT, ' +
      ' '''' DIF ' +
      ' FROM CXC320 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID=' + QuotedStr(sCHE) + ' AND FECPAGO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + '''' + ') ' +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE 0 END) MONLOC, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) + SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC/LICOTCAMB ELSE 0 END) TODOEXT, ' +
      ' '' DIFERIDO'' DIF ' +
      ' FROM CXC320 WHERE ' +
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

   If DM1.cdsQry5.RecordCount > 0 Then
      pprCheBol.Print;
   If DM1.cdsQry3.RecordCount > 0 Then
      pprComposicion.Print;
   If DM1.cdsQry6.RecordCount > 0 Then
      pprResumen.Print;

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

Procedure TFLiqCob.dblcdClieEnter(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'CLIEDES';
End;

Procedure TFLiqCob.dblcdClieRucEnter(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'CLIEDES';
End;

Procedure TFLiqCob.ppvCptoCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'CptoId=' + '''' + DM1.cdsDLiqCob.FieldByName('CPTOID').AsString + '''';
   Value := BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOABR');
End;

Procedure TFLiqCob.dbgbtnRegClick(Sender: TObject);
Begin

   InsertaPago;
End;

Procedure TFLiqCob.InsertaPago;
Begin
{   DM1.cdsDPag.Insert;
   DM1.cdsDPag.FieldByName('CIAID').AsString   := dblcCia.Text;
   DM1.cdsDPag.FieldByName('NOTACOB').AsString:= edtCanje.Text;
   DM1.cdsDPag.FieldByName('CLAUXID').AsString := DM1.cdsCobranza.FieldByName('CLAUXID').AsString;
   DM1.cdsDPag.FieldByName('CLIEID').AsString  := DM1.cdsCobranza.FieldByName('CLIEID').AsString;
   DM1.cdsDPag.FieldByName('CLIERUC').AsString := DM1.cdsCobranza.FieldByName('CLIERUC').AsString;
   xModoL := 'A';}
End;

Procedure TFLiqCob.bbtnRegCancClick(Sender: TObject);
Begin
   If xModoL = 'A' Then
      DM1.cdsDPag.Delete
   Else
   Begin
      DM1.cdsDPag.Cancel;
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFLiqCob.bbtnRegOkClick(Sender: TObject);
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

Procedure TFLiqCob.ppvTMCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=''' + DM1.cdsDPag.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', 'TMONABR', xWhere, 'TMONABR');
End;

Procedure TFLiqCob.dblcCPTOExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcCPTO.Text) = 0 Then Exit;

   xWhere := 'CPTOID=''' + dblcCPTO.Text + ''' and OPCMENU=''C''';
   DM1.cdsDLiqCob.Edit;
   DM1.cdsDLiqCob.FieldByName('CPTODES').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOABR', xWhere, 'CPTOABR');
End;

Procedure TFLiqCob.dblcClAuxExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelAnticipo.Focused Then Exit;

   If length(dblcClAux.text) = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DM1.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClAux.Text));
End;

Procedure TFLiqCob.ppHeaderBand1BeforeGenerate(Sender: TObject);
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

Procedure TFLiqCob.ppDBText14Print(Sender: TObject);
Var
   xWhere: String;
Begin
//   xWhere:= 'TMonId='+''''+DM1.cdsDLiqCob.FieldByName('TMONID').AsString+'''';
//   ppDBText14.text := BuscaQry('dspTGE','TGE103','*',xWhere,'TMonAbr');
End;

Procedure TFLiqCob.dblcdCobradorExit(Sender: TObject);
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

Procedure TFLiqCob.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFLiqCob.dblcZonaExit(Sender: TObject);
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

Procedure TFLiqCob.dbgLiqCobranzaDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLiqCob.dbgLiqCobranzaMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   If DM1.cdsDLiqCob1.RecordCount > 0 Then
      dbgLiqCobranza.BeginDrag(False);
End;

Procedure TFLiqCob.dbgLiqCobranzaEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Var
   bmk: TBookMark;
Begin
   If Target = dbgDocCanje Then
   Begin
      If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsAnt Then
         exit;

      DM1.cdsDLiqCob.Filtered := False;
      DM1.cdsDLiqCobClone.Filtered := False;

      If DM1.cdsDLiqCob.IndexFieldNames <> 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC' Then
         DM1.cdsDLiqCob.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
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
         DM1.cdsDLiqCobClone.FieldByName('FLAGVAR').AsString := '.';
         DM1.cdsDLiqCobClone.FieldByName('LICOID2').Clear;
         DM1.cdsDLiqCobClone.Post;
      End;

      If DM1.cdsDLiqCob.GotoKey Then
      Begin
         DM1.cdsDLiqCob.Edit;
         DM1.cdsDLiqCob.FieldByName('FLAGVAR').AsString := '.';
         DM1.cdsDLiqCob.FieldByName('LICOID2').Clear;
      {  If DM1.cdsDLiqCob.FieldByName('TMONID').Value=DM1.wTMonLoc then
        begin
          DM1.cdsDLiqCob.FieldByName('CCSALLOC').AsFloat:=FRound(DM1.cdsDLiqCob.FieldByName('CCMTOLOC').AsFloat+DM1.cdsDLiqCob.FieldByName('CCPAGLOC').AsFloat,15,2);
          If DM1.cdsDLiqCob.FieldByName('CCTCAMPA').AsFloat>0 then
             DM1.cdsDLiqCob.FieldByName('CCSALEXT').AsFloat:=FRound(DM1.cdsDLiqCob.FieldByName('CCSALLOC').AsFloat/DM1.cdsDLiqCob.FieldByName('CCTCAMPA').AsFloat,15,2)
          else
             DM1.cdsDLiqCob.FieldByName('CCSALEXT').AsFloat:=FRound(DM1.cdsDLiqCob.FieldByName('CCSALLOC').AsFloat/DM1.cdsDLiqCob.FieldByName('CCTCAMPR').AsFloat,15,2);
        end
        else
        begin
          DM1.cdsDLiqCob.FieldByName('CCSALEXT').AsFloat:=FRound(DM1.cdsDLiqCob.FieldByName('CCMTOEXT').AsFloat+DM1.cdsDLiqCob.FieldByName('CCPAGEXT').AsFloat,15,2);
          If DM1.cdsDLiqCob.FieldByName('CCTCAMPA').AsFloat>0 then
             DM1.cdsDLiqCob.FieldByName('CCSALLOC').AsFloat:=FRound(DM1.cdsDLiqCob.FieldByName('CCSALEXT').AsFloat*DM1.cdsDLiqCob.FieldByName('CCTCAMPA').AsFloat,15,2)
          else
             DM1.cdsDLiqCob.FieldByName('CCSALLOC').AsFloat:=FRound(DM1.cdsDLiqCob.FieldByName('CCSALEXT').AsFloat*DM1.cdsDLiqCob.FieldByName('CCTCAMPR').AsFloat,15,2);
        end;}
         DM1.cdsDetPagoLiq.First;
         While Not DM1.cdsDetPagoLiq.EOF Do
         Begin
            DM1.cdsDetPagoLiq.Delete;
         End;

         DM1.cdsDLiqCob1.Delete;
      End;
      DM1.cdsDLiqCob.Filtered := True;
      DM1.cdsDLiqCobClone.Filtered := True;
      dbgLiqCobranza.RefreshDisplay;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFLiqCob.Z2OkDetalleClick(Sender: TObject);
Var
   xTCambio: double;
   cdsClone: TwwClientDataSet;
   sAdic, sCob, sSQL: String;
   dRecibido: double;
Begin
   sAdic := '';
   If dblcCCB.enabled Then
      If dblcCCB.text = '' Then
      Begin
         dblcCCB.SetFocus;
         Raise Exception.Create('Ingrese Cuenta Corriente');
      End;
   If (dbdtpFechaCheque.date > 0) And (dbdtpFecha.date > 0) And (dblcFormPago.text = DM1.wsChe) Then
   Begin
      Raise Exception.Create('La Fecha de Pago debe ser mayor o igual que la de emisión');
   End;

   dRecibido := FRound(StrTofloat(dbeRecibido.text), 15, 2);
   If dblcFormPago.text = DM1.wsFNDep Then
   Begin
      sCob := DM1.BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=' + QuotedStr('S') + ' AND CIAID=' + QuotedStr(dblcCia.text), 'COID');
      sSQL := ' SELECT LICOID,SUM(LICOMTOABOORI) MTO FROM CXC320 ' +
         ' WHERE FPAGOID=' + QuotedStr(dblcFormPago.text) + ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text) +
         ' AND COID<>' + QuotedStr(sCob) + ' AND LICONOCHQ=' + QuotedStr(dbeNoChq.text) +
         ' AND FECPAGO=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFecha.Date) + ''' )' +
         ' GROUP BY LICOID ';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         ShowMessage('Boleta de Depósito ya está registrada ' + #13 + 'Liquidación N°: ' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString) + ' Monto: ' + FloatToStr(DM1.cdsQry.FieldByName('MTO').AsFloat));
      End
      Else
      Begin
         cdsClone := TwwClientDataSet.create(Nil);
         cdsClone.CloneCursor(DM1.cdsDetPagoLiq, False, True);

         cdsClone.IndexFieldNames := 'FPAGOID;BANCOID;FECPAGO;LICOMTOABOORI';
         cdsClone.Setkey;
         cdsClone.FieldByName('FPAGOID').AsString := dblcFormPago.text;
         cdsClone.FieldByName('BANCOID').AsString := dblcBancoFPago.text;
         cdsClone.FieldByName('FECPAGO').AsDateTime := dbdtpFecha.Date;
         cdsClone.FieldByName('LICOMTOABOORI').AsString := FloatToStr(dRecibido);
         If cdsClone.gotokey Then
         Begin
            ShowMessage('Boleta de Depósito ya está registrada en un registro anterior');
         End;
         cdsClone.Free;
      End;
   End;

//
   If dblcFormPago.text = DM1.wsFChe Then
   Begin
      sCob := DM1.BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=' + QuotedStr('S') + ' AND CIAID=' + QuotedStr(dblcCia.text), 'COID');
      sSQL := ' SELECT LICOID,SUM(LICOMTOABOORI) MTO,FECPAGO,FECEMICHQ FROM CXC320 ' +
         ' WHERE FPAGOID=' + QuotedStr(dblcFormPago.text) + ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text) +
         ' AND TMONIDPAGO=' + QuotedStr(dblcTMonC.text) +
         ' AND COID<>' + QuotedStr(sCob) + ' AND LICONOCHQ=' + QuotedStr(dbeNoChq.text) +
         ' AND CLIEID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString) +
         ' GROUP BY LICOID,FECPAGO,FECEMICHQ ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         If (dbdtpFechaCheque.Date <> DM1.cdsQry.FieldByName('FECEMICHQ').AsDateTime) Or
            (dbdtpFecha.Date <> DM1.cdsQry.FieldByName('FECPAGO').AsDateTime) Then
            sAdic := 'ATENCION: ' + #13 +
               'FECHA DE EMISION:' + DateToStr(DM1.cdsQry.FieldByName('FECEMICHQ').AsDateTime) + #13 +
               'FECHA DE PAGO:' + DateToStr(DM1.cdsQry.FieldByName('FECPAGO').AsDateTime)
         Else
            sAdic := '';
         ShowMessage('Cheque ya está registrada ' + #13 + 'Liquidación N°: ' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString) + #13 +
            'Monto: ' + FloatToStr(DM1.cdsQry.FieldByName('MTO').AsFloat) + #13 + sAdic);
      End
      Else
      Begin
         cdsClone := TwwClientDataSet.create(Nil);
         cdsClone.CloneCursor(DM1.cdsDetPagoLiq, False, True);

         cdsClone.IndexFieldNames := 'FPAGOID;BANCOID;TMONIDPAGO;CLIEID';
         cdsClone.Setkey;
         cdsClone.FieldByName('FPAGOID').AsString := dblcFormPago.text;
         cdsClone.FieldByName('BANCOID').AsString := dblcBancoFPago.text;
         cdsClone.FieldByName('TMONIDPAGO').AsString := dblcTMonC.text;
         cdsClone.FieldByName('CLIEID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString;
         If cdsClone.gotokey Then
         Begin
            If (dbdtpFechaCheque.Date <> cdsClone.FieldByName('FECEMICHQ').AsDateTime) Or
               (dbdtpFecha.Date <> cdsClone.FieldByName('FECPAGO').AsDateTime) Then
               sAdic := 'ATENCION: ' + #13 +
                  'FECHA DE EMISION:' + DateToStr(cdsClone.FieldByName('FECEMICHQ').AsDateTime) + #13 +
                  'FECHA DE PAGO:' + DateToStr(cdsClone.FieldByName('FECPAGO').AsDateTime)
            Else
               sAdic := '';
            ShowMessage('Cheque ya está registrada en un registro anterior' + #13 +
               'Monto: ' + FloatToStr(DM1.cdsQry.FieldByName('MTO').AsFloat) + #13 + sAdic);
         End;
         cdsClone.Free;
      End;
   End;
//

   xTCambio := StrToFloat(EdtTCambio.text);
// SI EL DOCUMENTO Y EL PAGO SON DEL MISMO TIPO
//   01=01 (1)
//   02=02 (2)
   If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = dblcTMonC.text Then
   Begin
     // SI EL PAGO ES EN SOLES Y EL DOCUMENTO EN SOLES
      If dblcTMonC.text = DM1.wTMonLoc Then
      Begin
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat := FRound(dRecibido, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat := FRound(dRecibido, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat := FRound(dRecibido / xTCambio, 15, 2);
         If DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString <> DM1.wsAnt Then
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat - DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat
         Else
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat;
      End
     // SI EL PAGO ES EN DOLARES Y EL DOCUMENTO EN DOLARES
      Else
      Begin
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat := FRound(dRecibido, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat := FRound(dRecibido * xTCambio, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat := FRound(dRecibido, 15, 2);
         If DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString <> DM1.wsAnt Then
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat - DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat
         Else
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat;
      End;
   End
   Else
//   01=02 (3)
//   02=01 (4)
   Begin
     // SI EL PAGO ES EN DOLARES Y EL DOCUMENTO EN SOLES
      If dblcTMonC.text = DM1.wTMonExt Then
      Begin
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat := FRound(dRecibido * xTCambio, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat := FRound(dRecibido * xTCambio, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat := FRound(dRecibido, 15, 2);
         If DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString <> DM1.wsAnt Then
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat - (FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat / xTCambio, 15, 2))
         Else
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat;
      End
     // SI EL PAGO ES EN SOLES Y EL DOCUMENTO EN DOLARES
      Else
      Begin
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat := FRound(dRecibido, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOEXT').AsFloat := FRound(dRecibido / xTCambio, 15, 2);
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat := FRound(dRecibido / xTCambio, 15, 2);
         If DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString <> DM1.wsAnt Then
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat - (FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat * xTCambio, 15, 2))
         Else
            DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOLOC').AsFloat;
      End;
   End;

//   DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat:=DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat-DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat;
   If DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString = DM1.wTMonLoc Then
   Begin
      DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat / xTCambio, 15, 2);
      DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
   End
   Else
   Begin
      If DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString = DM1.wTMonExt Then
      Begin
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
         DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat := FRound(DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat * xTCambio, 15, 2);
      End
   End;

   DM1.cdsDetPagoLiq.FieldByName('FPAGODES').AsString := edtFormPago.text;
   DM1.cdsDetPagoLiq.FieldByName('BANCODES').AsString := edtBcoFPago.text;
   DM1.cdsDetPagoLiq.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsDetPagoLiq.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsDetPagoLiq.FieldByName('LICOHREG').AsDateTime := TimeS;

   DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString := dblcTMonC.text;
   DM1.cdsDetPagoLiq.FieldByName('LICOTCAMB').AsFloat := xTCambio;
   //CIM 16/08/2002 MAAAASSSSSSSS
   ///DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat  := xTCambio;
   DM1.cdsDetPagoLiq.FieldByName('FECPAGO').Value := dbdtpFecha.date;
                                   //
   If BuscaFecha('TGE114', 'Fecha', DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime) Then
   Begin
      DM1.cdsDetPagoLiq.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsDetPagoLiq.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
      DM1.cdsDetPagoLiq.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
      DM1.cdsDetPagoLiq.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DM1.cdsDetPagoLiq.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DM1.cdsDetPagoLiq.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
      DM1.cdsDetPagoLiq.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
      DM1.cdsDetPagoLiq.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DM1.cdsDetPagoLiq.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DM1.cdsDetPagoLiq.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DM1.cdsDetPagoLiq.Post;

   pnlFPago.Visible := False;
   bbtnSumatClick(Sender);
   DM1.cdsDLiqCob1.Edit;

   If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
   Begin
      DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := xxTFPagoLoc;
   End
   Else
   Begin
      If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonExt Then
      Begin
         DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := xxTFPagoExt;
      End
   End;

   DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xxTFPagoLoc;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xxTFPagoExt;

   DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;

   DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xxTFPagoExt;
   DM1.cdsDLiqCob1.FieldByName('FLAGVAR').AsString := 'X';
   DM1.cdsDLiqCob1.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsDLiqCob1.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsDLiqCob1.FieldByName('LICOHREG').AsDateTime := TimeS;
   DM1.cdsDLiqCob1.Post;

{   if (DM1.cdsDLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonLoc) then
     if (FRound(xxTFPagoLoc,15,2)<FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat,15,2)) then
     begin
       dbgDetPagoLiqIButtonClick(Sender);
     end
     else
     begin
       if (FRound(xxTFPagoLoc,15,2)>FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat,15,2)) then
         Raise Exception.Create('El Pago es Mayor que el Saldo');
     end;

   if (DM1.cdsDLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonExt) then
     if (FRound(xxTFPagoExt,15,2)<FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat,15,2)) then
     begin
       dbgDetPagoLiqIButtonClick(Sender);
     end
     else
     begin
       if (FRound(xxTFPagoExt,15,2)>FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat,15,2)) then
         Raise Exception.Create('El Pago es Mayor que el Saldo');
     end;}
End;

Procedure TFLiqCob.z2CancelDetalleClick(Sender: TObject);
Begin
   DM1.cdsDetPagoLiq.Cancel;
   pnlFPago.Visible := False;
   bbtnSumatClick(Sender);
End;

Procedure TFLiqCob.dblcFormPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.focused Then exit;

   edtFormPago.text := BuscaQry('dspTGE', 'TGE112', 'FPAGOID,FPAGODES,FPAGOBCO,FCHQ,FNDE', 'FPAGOID=' + QuotedStr(dblcFormPago.text), 'FPAGODES');
   If Length(edtFormPago.text) = 0 Then
   Begin
      ShowMessage('Ingrese Forma de Pago');
      dblcFormPago.SetFocus;
      exit;
   End;
   If Trim(DM1.cdsQry.FieldByName('FPAGOBCO').AsString) = 'S' Then
   Begin
      dbdtpFechaCheque.enabled := (DM1.cdsQry.FieldByName('FCHQ').AsString = '1');
      dblcCCB.enabled := (DM1.cdsQry.FieldByName('FNDE').AsString = '1');
      dblcBancoFPago.enabled := True;
      dbeNoChq.enabled := True;
      dblcBancoFPago.SetFocus;
   End
   Else
   Begin
      dblcBancoFPago.enabled := False;
      dbeNoChq.enabled := False;
      dbdtpFechaCheque.enabled := False;
      dblcCCB.enabled := False;
      dblcTMonC.SetFocus;
   End;

End;

Procedure TFLiqCob.dblcBancoFPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.focused Then exit;

   edtBcoFPago.text := DisplayDescrip('TGE105', 'BANCONOM', 'BANCOID', dblcBancoFPago.text);
   If Length(edtBcoFPago.text) = 0 Then
   Begin
      ShowMessage('Ingrese Banco');
      dblcBancoFPago.SetFocus;
      exit;
   End;
End;

Procedure TFLiqCob.dbeNoChqExit(Sender: TObject);
Begin
   If Length(dbeNoChq.text) = 0 Then
   Begin
      ShowMessage('Ingrese Documento');
      dbeNoChq.SetFocus;
      exit;
   End;
End;

Procedure TFLiqCob.dblcTMonCExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If z2CancelDetalle.focused Then exit;
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
      DM1.cdsCCBco.Filter := 'TMONID=' + QuotedStr(dblcTMonC.text) + ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text) + ' AND CIAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString);
      DM1.cdsCCBco.Filtered := True;
   End;

End;

Procedure TFLiqCob.edtTCambioExit(Sender: TObject);
Begin
   If StrToFloat(edtTCambio.text) = 0 Then
   Begin
      ShowMessage('Ingrese Tipo de cambio');
      edtTCambio.SetFocus;
      exit;
   End;
End;

Procedure TFLiqCob.dbeRecibidoExit(Sender: TObject);
Begin
   If StrToFloat(dbeRecibido.text) <= 0 Then
   Begin
      ShowMessage('Ingrese Monto Recibido');
      dbeRecibido.SetFocus;
      exit;
   End;

   If (DM1.cdsDetPagolIQ.FieldByName('FECPAGO').AsDateTime = 0) Or
      (DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime = 37180) Then
      DM1.cdsDetPagoLiq.FieldByName('FECPAGO').Value := dateS;

End;

Procedure TFLiqCob.dbdtpFechaExit(Sender: TObject);
Var
   xWhere: String;
Begin
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

Procedure TFLiqCob.ppVarMonAbrCalc(Sender: TObject; Var Value: Variant);
Begin
   Value := DisplayDescrip('TGE103', 'TMONABR', 'TMONID', DM1.cdsDLiqCob1.FieldByName('TMONID').AsString);
End;

Procedure TFLiqCob.ppVarMonPagCalc(Sender: TObject; Var Value: Variant);
Begin
//  Value:=DisplayDescrip('TGE103','TMONABR', 'TMonID',ppdbtMonPag.Text);
   Value := DisplayDescrip('TGE103', 'TMONABR', 'TMonID', DM1.cdsDLiqCob1.FieldByName('TMONID').AsString);
End;

Procedure TFLiqCob.dbgDetPagoLiqIButtonClick(Sender: TObject);
Begin
   If (DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsFac) And
      (ExisteNisaxAnulacionFactura(DM1.cdsDLiqCob1.FieldByName('CIAID').AsString,
      DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString,
      DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString)) Then
   Begin
      Raise Exception.Create('Existe una nota de Ingreso por Anulación de Factura' + #13 +
         'Coordine con Almacén');
   End;

   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   If DM1.cdsDLiqCob1.RecordCount = 0 Then
   Begin
      Raise Exception.Create('No hay seleccionado ningún documento');
   End;
   If DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat <= 0 Then
      Raise Exception.Create('El documento ya está cancelado');

   bbtnSumatClick(Sender);
   dblcFormPago.Clear;
   edtFormPago.Clear;
   dblcBancoFPago.Clear;
   edtBcoFPago.Clear;
   dbeNoChq.Clear;
   dblcTMonC.Clear;
   edtTMonC.Clear;
   dbeACobrar.Clear;
   dbeRecibido.Clear;

   dbdtpFecha.Date := DateS;
   dbdtpFechaCheque.Date := DateS;
   edtTCambio.text := '0.000';

   DM1.cdsDetPagoLiq.Insert;
   DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('TMONID').AsString := DM1.cdsDLiqCob1.FieldByName('TMONID').AsString;

   DM1.cdsDetPagoLiq.FieldByName('LICOID').AsString := DM1.cdsDLiqCob1.FieldByName('LICOID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString := DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
   DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
   DM1.cdsDetPagoLiq.FieldByName('CUENTAID').AsString := DM1.cdsDLiqCob1.FieldByName('CUENTAID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('CCFEMIS').AsDateTime := DM1.cdsDLiqCob1.FieldByName('CCFEMIS').AsDateTime;
   DM1.cdsDetPagoLiq.FieldByName('CCFVCMTO').AsDateTime := DM1.cdsDLiqCob1.FieldByName('CCFVCMTO').AsDateTime;

   DM1.cdsDetPagoLiq.FieldByName('CCNOREG').AsString := DM1.cdsDLiqCob1.FieldByName('CCNORGE').AsString;

  {DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat;
  DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat;
  DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat:=DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat;}

   DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat;
   DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat;
   DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat;

   DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOTCAMBL').AsFloat;
   DM1.cdsDetPagoLiq.FieldByName('COID').AsString := DM1.cdsDLiqCob1.FieldByName('COID').AsString;
   DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString := DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString;

{  if DM1.cdsDLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonLoc then
 begin
  DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat:=FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat-xxTFPagoLoc,15,2);
  dbeResta.text:=FloatToStr(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat-xxTFPagoLoc,15,2));
 end;
 if DM1.cdsDLiqCob1.FieldByName('TMONID').AsString=DM1.wTMonExt then
 begin
  DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat:=FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat-xxTFPagoExt,15,2);
  dbeResta.text:=FloatToStr(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat-xxTFPagoExt,15,2));
 end;}
   If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
   Begin
      DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat, 15, 2);
      dbeResta.text := FloatToStr(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat, 15, 2));
   End;
   If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonExt Then
   Begin
      DM1.cdsDetPagoLiq.FieldByName('LICOMTOABOORI').AsFloat := FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat, 15, 2);
      dbeResta.text := FloatToStr(FRound(DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat, 15, 2));
   End;
   PnlFPago.Visible := True;
   edtdocumento.text := BuscaQry('dspTGE', 'TGE110', 'DOCABR', 'DOCMOD=' + QuotedStr('CXC') + ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString), 'DOCABR');
   edtSerie.text := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
   edtCCNODOC.text := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
   edtCLIEDES.text := DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString;
   dblcFormPago.SetFocus;
End;

Procedure TFLiqCob.dbgDetPagoLiqDblClick(Sender: TObject);
Var
   xWhere: String;
Begin
   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   If DM1.cdsDetPagoLiq.RecordCount = 0 Then Exit;

   DM1.cdsDetPagoLiq.Edit;

   If dblcFormPago.text <> '' Then
      edtFormPago.text := BuscaQry('dspTGE', 'TGE112', 'FPAGOID,FPAGODES,FPAGOBCO', 'FPAGOID=' + QuotedStr(dblcFormPago.text), 'FPAGODES')
   Else
      edtFormPago.text := '';

   If dblcBancoFPago.text <> '' Then
      edtBcoFPago.text := DisplayDescrip('TGE105', 'BANCONOM', 'BANCOID', dblcBancoFPago.text)
   Else
      edtBcoFPago.text := '';

   If dblcTMonC.text <> '' Then
   Begin
      edtTMonC.text := DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMonC.text)
   End;

{  if dblcTMonC.text=DM1.wTMonLoc then
  begin
    dbeRecibido.text:=DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsString;
  end
  else
  begin
    if dblcTMonC.text=DM1.wTMonExt then
       dbeRecibido.text:=DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsString
    else
       dbeRecibido.text:='0.00';
  end;}
   PnlFPago.Visible := True;
   edtdocumento.text := BuscaQry('dspTGE', 'TGE110', 'DOCABR', 'DOCMOD=' + QuotedStr('CXC') + ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob1.FieldByName('DOCID').AsString), 'DOCABR');
   edtSerie.text := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
   edtCCNODOC.text := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
   edtCLIEDES.text := DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString;

   dblcFormPago.SetFocus;
End;

Procedure TFLiqCob.dbgDetPagoLiqKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('Desea Borrar el Archivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DM1.cdsDetPagoLiq.Delete;
         bbtnSumatClick(Sender);

         DM1.cdsDLiqCob1.Edit;
         DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := xxTFPagoLoc;
         DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := xxTFPagoExt;
         If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
            DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := xxTFPagoLoc
         Else
            If DM1.cdsDLiqCob1.FieldByName('TMONID').AsString = DM1.wTMonExt Then
               DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := xxTFPagoExt;

         DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat;
         DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat - DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat;

         If DM1.cdsDetPagoLiq.RecordCount = 0 Then
            DM1.cdsDLiqCob1.FieldByName('FLAGVAR').AsString := '.';
         DM1.cdsDLiqCob1.Post;
         bbtnSumatClick(Sender);
      End;
   End;
End;

Procedure TFLiqCob.MonedaExt(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + QuotedStr(dm1.wTMonExt);
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLiqCob.bbtnResumenClick(Sender: TObject);
Var
   sNDE, sEFE, sCHE, sSQL: String;
Begin
   sCHE := DisplayDescrip('TGE112', 'FPAGOID', 'FCHQ', '1');
   sSQL := ' SELECT MONEXT,MONLOC,X.FPAGOID,RTRIM(TGE112.FPAGODES)||DIF FPAGODES FROM (SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE 0 END) MONLOC,'''' DIF ' +
      ' FROM CXC320 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID<>' + QuotedStr(sCHE) +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE 0 END) MONLOC,'''' DIF ' +
      ' FROM CXC320 WHERE ' +
      ' LICOID=' + QuotedStr(edtCanje.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text) + ' AND CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND FPAGOID=' + QuotedStr(sCHE) + ' AND FECPAGO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFEmis.Date) + '''' + ') ' +
      ' GROUP BY FPAGOID UNION ALL ' +
      ' SELECT ' +
      ' FPAGOID,SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonExt) + ' THEN LICOMTOABOEXT ELSE 0 END) MONEXT, ' +
      ' SUM(CASE WHEN TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN LICOMTOABOLOC ELSE 0 END) MONLOC,'' DIFERIDO'' DIF ' +
      ' FROM CXC320 WHERE ' +
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

Procedure TFLiqCob.Button1Click(Sender: TObject);
Begin
   pnlResumen.Visible := false;
End;

Procedure TFLiqCob.ppVariable4Calc(Sender: TObject; Var Value: Variant);
Begin
   value := BuscaQry('dspTGE', 'TGE204', 'CLIEDES', 'CLIEID=' + quotedstr(DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString), 'CLIEDES');

End;

Procedure TFLiqCob.InsertaConsolidado;
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
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
      End;

  //INSERT DETALLE DE LA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC319 ' +
         ' (CUENTAID,CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
         ' LICOELABO,LICOAPROB,FECPAGO,LICOMM,LICODD,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOTRI, ' +
         ' LICOSEM,LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CCFEMIS,CCFVCMTO, ' +
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
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
      End;

  //INSERTA DETALLE DE LA FORMA DE PAGO
      sSQL := ' INSERT INTO CXC320 ' +
         ' (CIAID,LICOID,DOCID,CLAUXID,CCSERIE,CLIEID,CLIERUC,CCNODOC,FPAGOID, ' +
         ' FPAGODES,LICOTCAMB,LICOMTOORI,LICOMTOLOC,LICOMTOEXT,BANCOID,BANCODES,LICONOCHQ, ' +
         ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM, ' +
         ' LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM,LICOAATRI,LICOAASEM,LICOAASS, ' +
         ' FLAGVAR,TMONID,LICOTCAMBL,FECPAGO,TMONIDPAGO,LICOMTOABOORI,LICOMTOABOLOC, ' +
         ' LICOMTOABOEXT,CCNOREG,COID,TVTAID,FECEMICHQ,LICOMTOANTORI,LICOMTOANTLOC,LICOMTOANTEXT,CCBCOID,CUENTAID,CCFEMIS,CCFVCMTO) ' +
         ' SELECT ' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, PAG.DOCID, PAG.CLAUXID, PAG.CCSERIE, PAG.CLIEID, PAG.CLIERUC, PAG.CCNODOC, ' +
         ' PAG.FPAGOID, PAG.FPAGODES, PAG.LICOTCAMB, PAG.LICOMTOORI, PAG.LICOMTOLOC, PAG.LICOMTOEXT, PAG.BANCOID, ' +
         ' PAG.BANCODES, PAG.LICONOCHQ, PAG.LICOELABO, PAG.LICOAPROB, PAG.LICOESTADO, PAG.LICOUSER, PAG.LICOFREG, ' +
         ' PAG.LICOHREG, PAG.LICOANO, PAG.LICOMM, PAG.LICODD, PAG.LICOTRI, PAG.LICOSEM, PAG.LICOSS, PAG.LICOANOMM, ' +
         ' PAG.LICOAATRI, PAG.LICOAASEM, PAG.LICOAASS, PAG.FLAGVAR, PAG.TMONID, PAG.LICOTCAMBL, PAG.FECPAGO, ' +
         ' PAG.TMONIDPAGO, PAG.LICOMTOABOORI, PAG.LICOMTOABOLOC, PAG.LICOMTOABOEXT, PAG.CCNOREG, ' + QuotedStr(sCob) + ' COID, ' +
         ' PAG.TVTAID, PAG.FECEMICHQ, PAG.LICOMTOANTORI, PAG.LICOMTOANTLOC, PAG.LICOMTOANTEXT,PAG.CCBCOID,PAG.CUENTAID,PAG.CCFEMIS,PAG.CCFVCMTO ' +
         ' FROM CXC320 PAG ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
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
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
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
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=LIQ.CCFEMIS ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
      End;

  //INSERTA DETALLE DE LA FORMA DE PAGO

      sSQL := ' INSERT INTO CXC320 ' +
         ' (CIAID,LICOID,DOCID,CLAUXID,CCSERIE,CLIEID,CLIERUC,CCNODOC,FPAGOID, ' +
         ' FPAGODES,LICOTCAMB,LICOMTOORI,LICOMTOLOC,LICOMTOEXT,BANCOID,BANCODES,LICONOCHQ, ' +
         ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM, ' +
         ' LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM,LICOAATRI,LICOAASEM,LICOAASS, ' +
         ' FLAGVAR,TMONID,LICOTCAMBL,FECPAGO,TMONIDPAGO,LICOMTOABOORI,LICOMTOABOLOC, ' +
         ' LICOMTOABOEXT,CCNOREG,COID,TVTAID,FECEMICHQ,LICOMTOANTORI,LICOMTOANTLOC,LICOMTOANTEXT,CCBCOID,CUENTAID,CCFEMIS,CCFVCMTO) ' +
         ' SELECT ' + QuotedStr(dblcCia.text) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, PAG.DOCID, PAG.CLAUXID, PAG.CCSERIE, PAG.CLIEID, PAG.CLIERUC, PAG.CCNODOC, ' +
         ' PAG.FPAGOID, PAG.FPAGODES, PAG.LICOTCAMB, PAG.LICOMTOORI, PAG.LICOMTOLOC, PAG.LICOMTOEXT, PAG.BANCOID, ' +
         ' PAG.BANCODES, PAG.LICONOCHQ, PAG.LICOELABO, PAG.LICOAPROB, PAG.LICOESTADO, PAG.LICOUSER, PAG.LICOFREG, ' +
         ' PAG.LICOHREG, PAG.LICOANO, PAG.LICOMM, PAG.LICODD, PAG.LICOTRI, PAG.LICOSEM, PAG.LICOSS, PAG.LICOANOMM, ' +
         ' PAG.LICOAATRI, PAG.LICOAASEM, PAG.LICOAASS, PAG.FLAGVAR, PAG.TMONID, PAG.LICOTCAMBL, PAG.FECPAGO, ' +
         ' PAG.TMONIDPAGO, PAG.LICOMTOABOORI, PAG.LICOMTOABOLOC, PAG.LICOMTOABOEXT, PAG.CCNOREG, ' + QuotedStr(sCob) + ' COID, ' +
         ' PAG.TVTAID, PAG.FECEMICHQ, PAG.LICOMTOANTORI, PAG.LICOMTOANTLOC, PAG.LICOMTOANTEXT,PAG.CCBCOID,PAG.CUENTAID,PAG.CCFEMIS,PAG.CCFVCMTO ' +
         ' FROM CXC320 PAG ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
      End;

   End;

End;

Procedure TFLiqCob.dbgDocCanjeTitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   xFlag: Boolean;
Begin
   xFlag := False;
   If AfieldName = 'CCNODOC' Then
   Begin
      DM1.cdsMovCxC2.IndexFieldNames := 'CCNODOC';
      DM1.cdsDLiqCob.IndexFieldNames := 'CCNODOC';

      lblBusca.Caption := 'Busca por Nro. Doc:';
      isBusca.SearchField := 'CCNODOC';
      xFlag := True;
   End;

   If AfieldName = 'CLIEDES' Then
   Begin
      DM1.cdsMovCxC2.IndexFieldNames := 'CLIEDES';
      DM1.cdsDLiqCob.IndexFieldNames := 'CLIEDES';
      lblBusca.Caption := 'Busca por Cliente:';
      isBusca.SearchField := 'CLIEDES';
      xFlag := True;
   End;

   If xFlag Then
   Begin
      pnlOrden.Visible := True;
      isBusca.Text := '';
      isBusca.SetFocus;
      dbgDocCanje.Enabled := False;
   End;
End;

Procedure TFLiqCob.isBuscaKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      pnlOrden.Visible := False;
      dbgDocCanje.SetFocus;
   End;
End;

Procedure TFLiqCob.bbtnPasaClick(Sender: TObject);
Var
   sSIT, sUBI: String;
Begin
   If isBusca.text <> '' Then
   Begin
      If isBusca.text = DM1.cdsDLiqCob.FieldByName(iSBUSCA.SEARCHFIELD).AsString Then
      Begin
         dbgDocCanjeEndDrag2(dbgDocCanje, dbgLiqCobranza, 0, 0);
         isBusca.text := '';
      //pnlOrden.Visible := False;
      //dbgDocCanje.Enabled  := true ;
      End
      Else
      Begin
         BuscaQry('dspTGE', 'CXC317', 'LICOID,COID,CONOMBRES,CCFEMIS', 'CCNODOC=' + Quotedstr(isBusca.text) + ' AND FLAGVAR=''.''', 'LICOID');
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            ShowMessage('El Documento ha sido asignado al cobrador ' + #13 +
               DM1.cdsQry.FieldByName('COID').AsString + ' ' + DM1.cdsQry.FieldByName('CONOMBRES').AsString + ' ' + #13 +
               'Planilla N° ' + DM1.cdsQry.FieldByName('LICOID').AsString + ' del ' + DateToStr(DM1.cdsQry.FieldByName('CCFEMIS').AsDateTime));
            isBusca.SelectAll;
         End
         Else
         Begin
            ShowMessage('El Documento No esta asignado a Cobrador');
        {BuscaQry('dspTGE','CXC301','SITID,UBIID,DOCID,CCSERIE,CCNODOC,CLIEID,CCESTADO,CCPAGEXT,CCSALEXT,CCMTOEXT,CLIEDES','CCNODOC='+Quotedstr(isBusca.text),'CCESTADO');
        if DM1.cdsQry.RecordCount>0 then
        begin
          sSIT:=DM1.cdsQry.FieldByName('SITID').AsString;
          sUBI:=DM1.cdsQry.FieldByName('UBIID').AsString;

          if DM1.cdsQry.FieldByName('CCESTADO').AsString='C' then
          begin
            ShowMessage('El Documento Está Cancelado '+#13);
          end
          else
          begin
            if (DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat-DM1.cdsQry.FieldByName('CCPAGEXT').AsFloat<>DM1.cdsQry.FieldByName('CCSALEXT').AsFloat) then
            begin
              ShowMessage('El Documento Se encuentra en proceso de Canje');
            end
            else
            begin
              ShowMessage('El Documento Se encuentra en '+#13+'Situación: '+QuotedStr(BuscaQry('dspTGE','CXC104','SITUAID,SITUADES','SITUAID='+Quotedstr(sSIT),'SITUADES'))
                          +#13+'Ubicación: '+QuotedStr(BuscaQry('dspTGE','CXC105','UBICAID,UBICADES','UBICAID='+Quotedstr(sUBI),'UBICADES')));
            end;
          end;
          isBusca.SelectAll;
        end}
            isBusca.SelectAll;
         End;
      End;
   End;
End;

Procedure TFLiqCob.btnSalirClick(Sender: TObject);
Begin
   pnlOrden.Visible := False;
   dbgDocCanje.Enabled := true;
End;

Procedure TFLiqCob.InsertaCheques;
Var
   cdsClone: TwwClientDataSet;
   xTMN, xTME, xTOri: real;
   sFormaPago, sBanco, sNumeroCheque: String;
   sClieRuc, sZona, sClieDes, sAno, sMes: String;
   sSQL, xxNoReg: String;
   nNoReg: integer;
Begin
   xTMN := 0;
   xTME := 0;
   xTOri := 0;
   cdsClone := TwwClientDataSet.create(Nil);
   cdsClone.CloneCursor(DM1.cdsDetPagoLiq, False, True);
   cdsClone.Filter := 'FPAGOID=' + QuotedStr(sFPagCh);
   cdsClone.Filtered := True;
   cdsClone.IndexFieldNames := 'BANCOID;LICONOCHQ';
   cdsClone.First;
   While Not cdsClone.EOF Do
   Begin
      xTMN := 0;
      xTME := 0;
      xTOri := 0;
      sBanco := cdsClone.FieldByName('BANCOID').AsString;
      sNumeroCheque := cdsClone.FieldByName('LICONOCHQ').AsString;

      While (cdsClone.FieldByName('BANCOID').AsString = sBanco) And
         (cdsClone.FieldByName('LICONOCHQ').AsString = sNumeroCheque) And (Not cdsClone.EOF) Do
      Begin
         xTMN := xTMN + cdsClone.FieldByName('LICOMTOABOLOC').AsFloat;
         xTME := xTME + cdsClone.FieldByName('LICOMTOABOEXT').AsFloat;
         xTOri := xTOri + cdsClone.FieldByName('LICOMTOABOORI').AsFloat;

         cdsClone.Next;
      End;
      If Not cdsClone.EOF Then cdsClone.Prior;
      //INSERTAR CHEQUE
      DecodeDate(cdsClone.FieldByName('FECEMICHQ').AsDateTime, wAno, wMes, wDia);
      sAno := StrZero(IntToStr(wAno), 4);
      sMes := StrZero(IntToStr(wMes), 2);

      sClieRuc := DM1.BuscaQry2('dspTGE', 'TGE204', 'ZONVTAID,CLIERUC,CLIEDES', 'CLIEID=' + QuotedStr(cdsClone.FieldByName('CLIEID').AsString), 'CLIERUC');
      sZona := DM1.cdsQry6.FieldByName('ZONVTAID').AsString;
      sClieDes := DM1.cdsQry6.FieldByName('CLIEDES').AsString;

      xTAutoNum := DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', sTDiario);
      xxNoReg := DM1.UltimoRegistro(xTAutoNum, cdsClone.FieldByName('CIAID').AsString, sTDiario, sAno, sMes);
      xxNoReg := Strzero(xxNoReg, 10);
      nNoReg := strtoint(xxNoReg);

      BuscaFecha('TGE114', 'Fecha', cdsClone.FieldByName('FECEMICHQ').AsDateTime);

      sSQL := ' INSERT INTO CXC301 (CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, ' +
         ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,TMONID,CCTCAMPR,CCESTADO, ' +
         ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, ' +
         ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG,UBIID,SITID, ' +
         ' CLIEDES,TVTAID,ZVTAID) VALUES(' +
         QuotedStr(cdsClone.FieldByName('CIAID').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString) + ',' + // AÑOMES
         QuotedStr(sTDiario) + ',' + QuotedStr('000') + ',' + QuotedStr(xxNoReg) + ',' + DM1.wRepFecServi + ',' +
         QuotedStr(cdsClone.FieldByName('CLAUXID').AsString) + ',' +
         QuotedStr(cdsClone.FieldByName('CLIEID').AsString) + ',' +
         QuotedStr(sClieRuc) + ',' + QuotedStr(sTDocCh) + ',' + QuotedStr('000') + ',' +
         QuotedStr(cdsClone.FieldByName('LICONOCHQ').AsString) + ',' +
         QuotedStr(cdsClone.FieldByName('FECEMICHQ').AsString) + ',' +
         QuotedStr(cdsClone.FieldByName('TMONIDPAGO').AsString) + ',' +
         cdsClone.FieldByName('LICOTCAMBL').AsString + ',' + QuotedStr('P') + ',' +
         FloatToStr(xTOri) + ',' +
         FloatToStr(xTMN) + ',' +
         FloatToStr(xTME) + ',0,0,0,' +
         FloatToStr(xTOri) + ',' +
         FloatToStr(xTMN) + ',' +
         FloatToStr(xTME) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECANO').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECMES').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECDIA').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECTRIM').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECSEM').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECSS').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECAATRI').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECAASEM').AsString) + ',' +
         QuotedStr(DM1.cdsQry2.FieldByName('FECAASS').AsString) + ',' +
         QuotedStr(cdsClone.FieldByName('BANCOID').AsString) + ',' + QuotedStr('.') + ',' +
//           QuotedStr(DM1.wUsuario)+','+DM1.wRepFecServi+','+QuotedStr(sOficina)+','+QuotedStr(sCartera)+','+
      QuotedStr(DM1.wUsuario) + ',' + DM1.wRepFecServi + ',' + QuotedStr(sOficina) + ',' + QuotedStr(sChEnCob) + ',' +
         QuotedStr(sClieDes) + ',' + QuotedStr(cdsClone.FieldByName('TVTAID').AsString) + ',' + QuotedStr(sZona) + ')';
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
      xxNoReg := DM1.GrabaUltimoRegistro(xTAutoNum, cdsClone.FieldByName('CIAID').AsString, sTDiario, sAno, sMes, nNoReg);
      cdsClone.Next;
   End;
   cdsClone.Free;
End;

Procedure TFLiqCob.dblcNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFLiqCob.PageControl1Change(Sender: TObject);
Begin
   DM1.cdsDetPagoLiq.MasterSource := DM1.dsDLiqCob1;
   DM1.cdsDetPagoLiq.MasterFields := 'CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';
   DM1.cdsDetPagoLiq.IndexFieldNames := 'CIAID;LICOID;DOCID;CCSERIE;CCNODOC;CLIEID';
End;

Procedure TFLiqCob.ActualizaDocumentosEncargados;
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

Procedure TFLiqCob.dbgLiqCobranzaIButtonClick(Sender: TObject);
Var
   sNumFisico, sNumMem: String;
Begin
   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   If DM1.cdsDLiqCob1.RecordCount = 43 Then
   Begin
      ShowMessage('Solo se pueden aceptar 43 Documentos. Cree una nueva planilla');
      exit;
   End;

   wModoAnt := 'A';
   bbtnSumatClick(Sender);
  //LIMPIA LOS CONTROLES
   edtClie.clear;
   DM1.cdsMovCxC.Insert;
   DM1.cdsDLiqCob1.Append;
   DM1.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.text;
   DM1.cdsMovCxC.FieldByName('CCSERIE').AsString := '000';
   DM1.cdsMovCxC.FieldByName('UBIID').AsString := DM1.wsOfi;
   sNumFisico := DM1.BuscaUltNumero(dblcCia.Text, DM1.wsAnt, '000');
   sNumMem := DM1.BuscaUltNumeroEnMemoria(DM1.cdsMovCxC, dblcCia.Text, DM1.wsAnt, '000');
   If sNumFisico > sNumMem Then
      DM1.cdsMovCxC.FieldByName('CCNODOC').AsString := sNumFisico
   Else
      DM1.cdsMovCxC.FieldByName('CCNODOC').AsString := sNumMem;

   PnlAnticipo.Visible := True;
   dblcClauxAnt.setFocus;
End;

Procedure TFLiqCob.dtpFCompExit(Sender: TObject);
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
   DM1.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := xxTCambioAnt;
   DM1.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat := xxTCambioAnt;
   DM1.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := xxTCambioAnt;
End;

Procedure TFLiqCob.dblcdClieExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelAnticipo.Focused Then Exit;

   If (length(dblcdClie.text) = 0) And (dblcdClieRuc.Focused) Then
   Begin
      exit;
   End;

   If (Length(dblcdClie.Text) = 0) And (length(dblcdClieRuc.text) = 0) Then
   Begin
      dblcdClie.SetFocus;
      Raise Exception.Create('Ingrese Cliente');
   End;

   If DM1.cdsClie.IndexFieldNames <> 'CLIEID' Then
      DM1.cdsClie.IndexFieldNames := 'CLIEID';

   DM1.cdsClie.Setkey;
   DM1.cdsClie.FieldByName('CLIEID').AsString := dblcdClie.text;
   If DM1.cdsClie.Gotokey Then
   Begin
      edtClie.text := DM1.cdsClie.FieldByName('CLIEDES').AsString;
      DM1.cdsMovCxC.FieldByName('CLIEID').AsString := DM1.cdsClie.FieldByName('CLIEID').AsString;
      DM1.cdsMovCxC.FieldByName('CLIERUC').AsString := DM1.cdsClie.FieldByName('CLIERUC').AsString;
      DM1.cdsMovCxC.FieldByName('VEID').AsString := DM1.cdsClie.FieldByName('VEID').AsString;
      xSectorAnt := DM1.cdsClie.FieldByName('TVTAID').AsString;
      xZonaAnt := DM1.cdsClie.FieldByName('ZONVTAID').AsString;
      If xSectorAnt = '' Then
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
End;

Procedure TFLiqCob.dblcdClieRucExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelAnticipo.Focused Then Exit;
   If (Length(dblcdClieRuc.Text) = 0) And (dblcdClie.Focused) Then Exit;

   If (Length(dblcdClieRuc.text) = 0) And (Length(dblcdClie.text) = 0) Then
   Begin
      dblcdClieRuc.SetFocus;
      Raise Exception.Create('Ingrese RUC');
   End;

   If (Length(dblcdClieRuc.text) >= 0) And (Length(dblcdClie.text) = 0) Then
   Begin
      If DM1.cdsClie.IndexFieldNames <> 'CLIERUC' Then
         DM1.cdsClie.IndexFieldNames := 'CLIERUC';

      DM1.cdsClie.Setkey;
      DM1.cdsClie.FieldByName('CLIERUC').AsString := dblcdClieRuc.text;
      If DM1.cdsClie.Gotokey Then
      Begin
         edtClie.text := DM1.cdsClie.FieldByName('CLIEDES').AsString;
         DM1.cdsMovCxC.FieldByName('CLIERUC').AsString := DM1.cdsClie.FieldByName('CLIERUC').AsString;
         DM1.cdsMovCxC.FieldByName('CLIEID').AsString := DM1.cdsClie.FieldByName('CLIEID').AsString;
         DM1.cdsMovCxC.FieldByName('VEID').AsString := DM1.cdsClie.FieldByName('VEID').AsString;
         xSectorAnt := DM1.cdsClie.FieldByName('TVTAID').AsString;
         xZonaAnt := DM1.cdsClie.FieldByName('ZONVTAID').AsString;
         If xSectorAnt = '' Then
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

Procedure TFLiqCob.dblcdTipoOperaExit(Sender: TObject);
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

Procedure TFLiqCob.bbtnCancelAnticipoClick(Sender: TObject);
Begin
   DM1.cdsMovCxC.Cancel;
   DM1.cdsDLiqCob1.Cancel;
   pnlAnticipo.Visible := False;
   bbtnSumatClick(Sender);
End;

Procedure TFLiqCob.dblcClauxAntExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnCancelAnticipo.Focused Then Exit;

   If length(dblcClauxAnt.text) = 0 Then
   Begin
      dblcClauxAnt.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DM1.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClauxAnt.Text));
End;

Procedure TFLiqCob.bbtnOKAnticipoClick(Sender: TObject);
Var
   xWhere, xc1, xc2, xc3, wCje: String;
Begin
   If dbeMtoOri.text = '' Then
   Begin
      dbeMtoOri.setFocus;
      Raise Exception.Create('Ingrese Monto');
   End
   Else
   Begin
      Try
         If StrToFloat(dbeMtoOri.text) <= 0 Then
         Begin
            dbeMtoOri.setFocus;
            Raise Exception.Create('Ingreso Monto Mayor a Cero');
         End;
      Except
         dbeMtoOri.setFocus;
         Raise Exception.Create('Error en el Monto');
      End;

   End;

   If dblcTMonAnt.text = DM1.wTMonExt Then
   Begin
      DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat * xxTCambioAnt, 15, 2)
   End
   Else
   Begin
      DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat / xxTCambioAnt, 15, 2);
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
   DM1.cdsMovCxC.FieldByName('TVTAID').AsString := xSectorAnt;
   DM1.cdsMovCxC.FieldByName('ZVTAID').AsString := xZonaAnt;
   DM1.cdsMovCxC.FieldByName('CCNLETBCO').AsString := edtCanje.text;
   DM1.cdsMovCxC.FieldByName('TCANJEID').AsString := 'AN';
   xWhere := 'CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND TCANJEID=' + QuotedStr('AN');
   xc1 := StrZero(DM1.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', xWhere), 6);
   xc2 := StrZero(DM1.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', xWhere), 6);
   xc3 := StrZero(DM1.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', xWhere), 6);
   If xc1 > xc2 Then
      wCje := xc1
   Else
      wCje := xc2;

   If wCje < xc3 Then
      wCje := xc3;
   DM1.cdsMovCxC.FieldByName('CCCANJE').AsString := wCje;

   DM1.cdsMovCxC.Post;
//  DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

//  DM1.cdsDLiqCob1.Append;
   DM1.cdsDLiqCob1.FieldByName('CIAID').AsString := dblcCia.text;
   DM1.cdsDLiqCob1.FieldByName('LICOID').AsString := edtCanje.text;
   DM1.cdsDLiqCob1.FieldByName('COID').AsString := dblcdCobrador.text;
   DM1.cdsDLiqCob1.FieldByName('TMONID').AsString := dblcTMonAnt.text;
   DM1.cdsDLiqCob1.FieldByName('LICOTCAMB').AsFloat := xxTCambioAnt;
   DM1.cdsDLiqCob1.FieldByName('LICOTCAMBL').AsFloat := xxTCambioAnt;
   DM1.cdsDLiqCob1.FieldByName('CUENTAID').AsString := DM1.cdsCptoCab.FieldByName('CUENTAID').AsString;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOORI').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOEXT').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOLOC').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;

   DM1.cdsDLiqCob1.FieldByName('LICOMTOABOORI').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;

   DM1.cdsDLiqCob1.FieldByName('LICOSALORI').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOSALEXT').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsDLiqCob1.FieldByName('LICOSALLOC').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;

   DM1.cdsDLiqCob1.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsDLiqCob1.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsDLiqCob1.FieldByName('LICOHREG').AsDateTime := TimeS;
   DM1.cdsDLiqCob1.FieldByName('DOCID').AsString := DM1.wsAnt;
   DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString := edtNoDoc.text;
   DM1.cdsDLiqCob1.FieldByName('TDIARID').AsString := BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCID=' + QuotedStr(DM1.wsAnt) + ' AND DOCMOD=' + QuotedStr(DM1.wModulo), 'TDIARID');
   DM1.cdsDLiqCob1.FieldByName('CLIEID').AsString := dblcdClie.Text;
   DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString := edtClie.Text;
   DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString := '000';
   DM1.cdsDLiqCob1.FieldByName('CCFEMIS').AsDateTime := dtpFEmis.date;
   DM1.cdsDLiqCob1.FieldByName('CLAUXID').AsString := dblcClauxAnt.text;
   DM1.cdsDLiqCob1.FieldByName('CONOMBRES').AsString := edtCobrador.text;
   DM1.cdsDLiqCob1.FieldByName('TVTAID').AsString := xSectorAnt;
   DM1.cdsDLiqCob1.FieldByName('CCNORGE').AsString := dbeNoReg.text;

   If BuscaFecha('TGE114', 'Fecha', dtpFComp.Date) Then
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
   pnlAnticipo.Visible := False;
   bbtnSumatClick(Sender);
End;

Procedure TFLiqCob.dblcTMonAntExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If (Sender As TWincontrol).TabOrder > ActiveControl.TabOrder Then Exit;
   xWhere := 'TMonId=''' + dblcTMonAnt.Text + ''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
   edtTMonAnt.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

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

Procedure TFLiqCob.dbgLiqCobranzaKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Var
   sSQL: String;
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString = DM1.wsAnt Then
      Begin
         If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            DM1.cdsMovCxc.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
            DM1.cdsMovCxc.Setkey;
            DM1.cdsMovCxc.FieldByName('CIAID').AsString := DM1.cdsDLiqCob1.FieldByName('CIAID').AsString;
            DM1.cdsMovCxc.FieldByName('DOCID').AsString := DM1.cdsDLiqCob1.FieldByName('DOCID').AsString;
            DM1.cdsMovCxc.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob1.FieldByName('CCSERIE').AsString;
            DM1.cdsMovCxc.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString;
            If DM1.cdsMovCxc.Gotokey Then
            Begin
               DM1.cdsMovCxc.Delete;
            End;

         {sSQL:=' DELETE FROM CXC301 WHERE CIAID='+QuotedStr(dblcCia.text)+
               ' AND CCSERIE=''000'' AND DOCID='+QuotedStr(DM1.wsAnt)+' AND CCNODOC='+QuotedStr(DM1.cdsDLiqCob1.FieldByName('CCNODOC').AsString);
         try
           DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         except

         end;}
            DM1.cdsDetPagoLiq.First;
            While Not DM1.cdsDetPagoLiq.EOF Do
            Begin
               DM1.cdsDetPagoLiq.Delete;
            End;
            DM1.cdsDLiqCob1.Delete;
         End;
      End
   End;
End;

Procedure TFLiqCob.dbgLiqCobranzaDblClick(Sender: TObject);
Var
   xWhere: String;
Begin
   If DM1.cdsCLiqCob1.FieldByName('LICOESTADO').AsString = 'P' Then exit;
   If DM1.cdsDLiqCob1.RecordCount = 0 Then Exit;
   If DM1.cdsDLiqCob1.FieldByName('DOCID').AsString <> DM1.wsAnt Then
      wModoAnt := 'M';
   DM1.cdsMovCxC.Edit;
   DM1.cdsDLiqCob1.Edit;
   If dblcTMonAnt.text <> '' Then
   Begin
      edtTMonAnt.text := DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMonAnt.text)
   End;
   edtClie.text := DM1.cdsDLiqCob1.FieldByName('CLIEDES').AsString;
   edtTipoOpera.text := BuscaQry('dspTGE', 'CXC208', 'CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DM1.cdsMovCxC.FieldByName('CCPTOTOT').AsString), 'CPTODES');
   pnlAnticipo.Visible := True;

   dblcClauxAnt.SetFocus;
End;

Function TFLiqCob.WhereAnticipo: String;
Var
   sWhere: String;
Begin
   DM1.cdsDLiqCob1.Filter := 'DOCID=' + QuotedStr(DM1.wsAnt);
   DM1.cdsDLiqCob1.Filtered := True;

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
   result := sWhere;
End;

Procedure TFLiqCob.LlenaDetCxC;
Begin
   DM1.cdsDetCxC.Edit;
   DM1.cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DM1.cdsDetCxC.FieldByName('TDIARID').AsString := BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=' + QuotedStr(DM1.wModulo) + ' AND DOCID=' + QuotedStr(DM1.wsAnt), 'TDIARID');
   DM1.cdsDetCxC.FieldByName('CLAUXID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString;
   DM1.cdsDetCxC.FieldByName('CLIEID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString;
   DM1.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DateS;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := DateS;
   DM1.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DM1.cdsDetCxC.FieldByName('CCUSER').AsString := DM1.wUsuario;
   DM1.cdsDetCxC.FieldByName('CCFREG').AsDateTime := dateS;
   DM1.cdsDetCxC.FieldByName('CCHREG').AsDateTime := timeS;
   DM1.cdsDetCxC.FieldByName('TMONID').AsString := DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString;

   If BuscaFecha('TGE114', 'Fecha', DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime) Then
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

Procedure TFLiqCob.CreaReporte(Sender: TObject);
Begin
//	(sender as tppReport).PreviewForm.ClientHeight := 500;
//	(sender as tppReport).PreviewForm.ClientWidth := 650;
//	tppviewer((sender as tppReport).PreviewForm.Viewer).zoomSetting := zspageWidth;
   (sender As tppReport).PreviewForm.WindowState := wsMaximized;
   TppViewer((sender As tppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;
End;

Function TFLiqCob.ExisteNisaxAnulacionFactura(xCiaId, xSerie,
   xFactura: String): boolean;
Var
   sSQL: String;
Begin
   sSQL := ' SELECT FAC305.DOCID,LOG314.CIAID,FACSERIE,NFAC FROM LOG314,TGE208,FAC305 ' +
      ' WHERE ' +
      ' LOG314.CIAID=' + QuotedStr(xCiaId) + ' AND ' +
      ' LOG314.TRIID=TGE208.TRIID AND TRIINGDEV=''S'' AND ' +
      ' NISATIP=''INGRESO''  AND ' +
      ' LOG314.CIAID=FAC305.CIAID AND LOG314.NISNPED=FAC305.PEDIDO  AND ' +
      ' FAC305.DOCID=' + QuotedStr(DM1.wsFac) + ' AND FACSERIE=' + QuotedStr(xSerie) + ' AND NFAC=' + QuotedStr(xFactura);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   result := (DM1.cdsQry.RecordCount > 0);
End;

Function TFLiqCob.VerificaCaja(xCIA: String; xFecha: TDateTime): boolean;
Var
   sSQL, sCob: String;

Begin
   sCob := DM1.BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=' + QuotedStr('S') + ' AND CIAID=' + QuotedStr(dblcCia.text), 'COID');
   sSQL := ' SELECT * FROM CXC318 WHERE CIAID=' + QuotedStr(xCIA) + ' AND CCFEMIS=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, xFECHA) + ''' )' +
      ' AND COID=' + QuotedStr(sCob) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   result := ((DM1.cdsQry.FieldByName('LICOCAJA').AsString = 'S') Or (DM1.cdsQry.FieldByName('LICOCAJA').AsString = 'I'));
End;

End.

