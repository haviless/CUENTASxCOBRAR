Unit CXC202B;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CxC202
// Formulario           :   FNotasDC
// Fecha de Creación    :
// Autor                :   Equipo de desarrollo
// Objetivo             :   Ventana donde se registra las Notas de Crédito
//

// Actualizaciones:
// HPC_201306_CXC  15/05/2013  Se crea la función fg_TCDocOrigen que obtiene el tc
//                             del documento de referencia.
// HPC_201402_CXC 17/02/2014  Modificar los ControlTrans, AplicaDato y los ApplyUpdates.
// HPC_201402_CXC 05/06/2014  Filtra la Serie de Documentos de la Cía
// HPC_201405_CXC  21/10/2014  Actualización del control transaccional en el módulo de cuentas por cobrar
//                             Notas de Crédito.


Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, wwdbdatetimepicker, Buttons,
   Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, DB, ComCtrls, Tabnotbk, Menus,
   wwCLIENT, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass,
   ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppEndUsr,
   ppVar, variants, wwdatsrc, ppParameter, CXCUTIL, oaVariables;

Type
   TFNotasDC = Class(TForm)
      pnlCabecera: TPanel;
      pnlDetalle: TPanel;
      pnlPie: TPanel;
      Z2bbtnGraba: TBitBtn;
      bbtnCancela: TBitBtn;
      bbtnCalc: TBitBtn;
      Z2bbtnContab: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnDel1: TBitBtn;
      bbtnSumat: TBitBtn;
      bbtnGen302: TBitBtn;
      Label6: TLabel;
      bbtnRegresa: TBitBtn;
      pnlCab1: TPanel;
      pnlCab2: TPanel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      lblNoDoc: TLabel;
      lblTMon: TLabel;
      dblcTMon: TwwDBLookupCombo;
      lblTCam: TLabel;
      dbeTCambio: TwwDBEdit;
      lblFEmis: TLabel;
      bbtnBorra: TBitBtn;
      bbtnOK: TBitBtn;
      edtTMon: TEdit;
      edtNoDoc: TwwDBEdit;
      pnlEstado: TPanel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      lblContab: TLabel;
      lblAcepta: TLabel;
      Label12: TLabel;
      pc1: TPageControl;
      ts1: TTabSheet;
      ts2: TTabSheet;
      pnlDetCxC: TPanel;
      Label5: TLabel;
      dbgDetCxC: TwwDBGrid;
      btnActReg: TwwIButton;
      pnlRegistro: TPanel;
      lblTipReg: TLabel;
      lblCnpEgr: TLabel;
      lblDH: TLabel;
      lblImporte: TLabel;
      lblGlosa: TLabel;
      lblCuenta: TLabel;
      edtTipReg: TEdit;
      dbeImporte: TwwDBEdit;
      dbeDH: TwwDBEdit;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      dbeCuenta: TwwDBEdit;
      dbeGlosa: TwwDBEdit;
      dblcTipReg: TwwDBLookupCombo;
      dblcdCnpEgr: TwwDBLookupComboDlg;
      edtFinal: TEdit;
      pnlPendientes: TPanel;
      Label1: TLabel;
      dbgPendientes: TwwDBGrid;
      pnlDocCanje: TPanel;
      Label2: TLabel;
      dbgDocCanje: TwwDBGrid;
      StaticText1: TStaticText;
      dtpFEmis: TwwDBDateTimePicker;
      Label8: TLabel;
      dblcClAux: TwwDBLookupCombo;
      lblprov: TLabel;
      dblcdClie: TwwDBLookupComboDlg;
      lblRuc: TLabel;
      dblcdClieRuc: TwwDBLookupComboDlg;
      lblProvNom: TLabel;
      edtClie: TEdit;
      bbtnAcepta: TBitBtn;
      lblCCosto: TLabel;
      dblcdCCosto: TwwDBLookupComboDlg;
      edtCCosto: TEdit;
      edtSerie: TwwDBLookupCombo;
      Label3: TLabel;
      z2bbtnEmiteDoc: TBitBtn;
      lblTipPre: TLabel;
      dblcTipPre: TwwDBLookupCombo;
      dbeTipPre: TwwDBEdit;
      lblPresu: TLabel;
      dblcdPresup: TwwDBLookupComboDlg;
      edtPresup: TEdit;
      pnlActuali: TPanel;
      lblActuali: TLabel;
      rgDoc: TRadioGroup;
      pprptNotaCred: TppReport;
      ppdbpNotaCred: TppDBPipeline;
      ppDesigner1: TppDesigner;
      Label4: TLabel;
      dbeMtoOri: TwwDBEdit;
      dblcdTipoOpera: TwwDBLookupComboDlg;
      lblTipoOpera: TLabel;
      edtTipoOpera: TEdit;
      Label7: TLabel;
      dblcdNisa: TwwDBLookupComboDlg;
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
      pprRNCD: TppReport;
      ppdbpNCD: TppDBPipeline;
      ppHeaderBand1: TppHeaderBand;
      pplblNCDRazon: TppLabel;
      pplblNCDDir: TppLabel;
      pplblNCDRUC: TppLabel;
      pplblNCDFactura: TppLabel;
      pplblNCDFacFecha: TppLabel;
      pplblNCDConPagoId: TppLabel;
      pplblNCDVendedor: TppLabel;
      pplblNCDClie: TppLabel;
      pplblNCDAno: TppLabel;
      pplblNCDFEmision: TppLabel;
      pplblNCDNumero: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppFooterBand1: TppFooterBand;
      pplblNCDIGV: TppLabel;
      pplblNCDTotal: TppLabel;
      pplblNCDLetras: TppLabel;
      ppLabel50: TppLabel;
      pplblNCDDIA: TppLabel;
      pplblNCDMes: TppLabel;
      pplblNCDAno1: TppLabel;
      pplblNCDNETO: TppLabel;
      ppSummaryBand3: TppSummaryBand;
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
      ppSummaryBand2: TppSummaryBand;
      ppDBVCalc6: TppDBCalc;
      ppDBVCalc7: TppDBCalc;
      lblV18: TppLabel;
      lblTDiario: TLabel;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      Z2bbtnElimina: TBitBtn;
      lblElimina: TLabel;
      ppParameterList1: TppParameterList;
      bbtnST: TBitBtn;
      lblFComprob: TLabel;
      dtpFComp: TwwDBDateTimePicker;
      dbeNoReg: TwwDBEdit;
      lblComprob: TLabel;
      ppHeaderBand2: TppHeaderBand;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText14: TppDBText;
      ppDetailBand2: TppDetailBand;
      ppdbtGlosa: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppdbcMtoOri: TppDBCalc;
      pplblNCSEUO: TppLabel;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      cbDisenoRep: TCheckBox;
      Procedure bbtnOKClick(Sender: TObject);
      Procedure dbgCanjeDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure dbgCanjeEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgCanjeMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure LlenaDetCxC;
      Procedure LlenaDetCxC1(xxNReg: String);
      Procedure GeneraDiferenciaCambio(xxDH: String);
      Procedure CalculaTotalCje;
      Procedure CalculaTotalDetCje;
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure dbgPendientes2DragOver(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgDetCanjeDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure dblcTipRegExit(Sender: TObject);
      Procedure dblcdCnpEgrExit(Sender: TObject);
      Procedure InicializaVars;
      Procedure InicializaCds;
      Procedure DatosCds;
      Procedure DatosdeFecha;
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure CamposKEnabled(PVal: Boolean);
      Function VerificaTotal: Boolean;
      Function CuadraDH: Boolean;
      Procedure bbtnSumatClick(Sender: TObject);
      Procedure bbtnGen302Click(Sender: TObject);
      Procedure dbgDetCxCEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgDetCxCMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure bbtnDel1DragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure edtNoDocExit(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure dbgCanjeColExit(Sender: TObject);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure dbeTCambioExit(Sender: TObject);
      Procedure edtSerieXExit(Sender: TObject);
      Procedure edtSerieXKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeNoRegExit(Sender: TObject);
      Procedure dblcdClieKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdClieRucKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtNoDocKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtpFCompKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeLoteKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcTMonKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnActRegClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbeDHExit(Sender: TObject);
      Procedure dbeImporteExit(Sender: TObject);
      Procedure dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgDetCxCDblClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FiltraGrids;
      Function Consistencia: Boolean;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDocCanjeDragOver(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgDocCanjeEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgDocCanjeKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgDocCanjeMouseDown(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure dbgPendientesMouseDown(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure dbgPendientesDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure dbgPendientesEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure ModificaMontos;
      Procedure dbgDocCanjeColExit(Sender: TObject);
      Procedure ActualizaSaldosMovCxC;
      Procedure pc1Changing(Sender: TObject; Var AllowChange: Boolean);
      Procedure InicializaPnlCab2;
      Procedure dblcdPresupExit(Sender: TObject);
      Procedure dtpFEmisEnter(Sender: TObject);
      Procedure dtpFEmisExit(Sender: TObject);
      Procedure dblcdClieEnter(Sender: TObject);
      Procedure dblcdClieRucEnter(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure bbtnAceptaClick(Sender: TObject);
      Procedure dblcdCCostoExit(Sender: TObject);
      Procedure edtSerieExit(Sender: TObject);
      Procedure z2bbtnEmiteDocClick(Sender: TObject);
      Procedure dblcTipPreExit(Sender: TObject);
      Procedure rgDocClick(Sender: TObject);
      Procedure Z2bbtnImprimeClick(Sender: TObject);
      Procedure ppHeaderBand2BeforePrint(Sender: TObject);
      Procedure ppFooterBand2BeforePrint(Sender: TObject);
      Procedure dblcdTipoOperaExit(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcdNisaExit(Sender: TObject);
      Procedure Z2bbtnPreviewClick(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
//    Procedure Button1Click(Sender: TObject);            HPC_201405_CXC
      Procedure Z2bbtnEliminaClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure bbtnSTClick(Sender: TObject);
      Procedure edtSerieNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcCiaNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
   Private
    { Private declarations }
      StrTmp: String;
      xDesMon: String; // para la descripcion de la moneda
      cFlagNI: Boolean;
      Procedure InsertaRegistro;
      Procedure GeneraRegistro;
      Procedure GrabaDetCanje;
      Procedure EmiteDoc(xArchivoReporte: String);

      Procedure CalculoNivelSupe;
      Procedure inicializoCero(xcds: TwwClientDataSet);
      Procedure CreaSuperior;
      Procedure CalculoNivel;
//    Procedure GrabaCabeceraCanje;            HPC_201405_CXC
//    Procedure GrabaDetalleCanje;             HPC_201405_CXC
      Procedure CargaDataSource;

      Procedure GeneraNotaIngresoAlmacen(cFlag: String);
      Procedure ActualizaLOG316(cAlm, xxArticulo, xxCant, cFlagIS: String);
      Function fg_TCDocOrigen: Boolean;
    

   Public
    { Public declarations }
      xxTCambio: Double;
      xTDA: String;
   End;

Var
   xRegAct, xRegAct2, xRegMov: TBookMark;
   FNotasDC: TFNotasDC;
   wRegGrab, wCuadra, wNuevo: Boolean;
   wSimbMn, wTDoc, wTDiar, wCje, wEstadTem: String;
   wTDev, wTDev2, wIgv: Double; // Cantidad IGV para restarle al saldo y tener MtoMax de Ingreso
   xTAutoNum, xTAno, xTMes: String;
   xCrea: Boolean;
   xFlGrid: Boolean;
   xAAMM: String;
   xVeID, xVeIdMaes: String;
   xSector: String;
   xZona: String;
   xNoReg: String;
   dDebe, dHabe: double;

Implementation

Uses CxCDM, oaCC2000;
{$R *.DFM}

Procedure TFNotasDC.InsertaRegistro;
Begin
   DMCXC.cdsMovCxC.Insert;
   DMCXC.cdsMovCxC.FieldByName('DOCID').AsString := wTDoc;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'X';
   dblcCia.Text := '';
   dblcdClie.Text := '';
   dblcdClieRuc.Text := '';
   edtSerie.Text := '';
   edtNoDoc.text := '';
   edtCia.Text := '';
   edtClie.text := '';
   rgDoc.ItemIndex := -1;
   RecuperarCiaUnica(dblcCia, edtCia);
End;

Procedure TFNotasDC.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   pnlCab1.Enabled := False;
   pnlCab2.Enabled := False;
   dtpFEmis.Enabled := False;
   dblcClAux.Enabled := False;
   dblcdClie.Enabled := False;
   dblcdClieRuc.Enabled := False;
   dbeNoReg.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;

   dbgPendientes.Enabled := False;
   dbgDocCanje.Enabled := False;
   dbgDetCxC.Enabled := False;
   dbgPendientes.ReadOnly := True;
   dbgDocCanje.ReadOnly := True;
   dbgDetCxC.ReadOnly := True;
   btnActReg.Enabled := False;

   pnlPie.Refresh;
   pnlPie.Enabled := False;
   bbtnRegresa.Enabled := False;
   bbtnCancela.Enabled := False;
   Z2bbtnGraba.Enabled := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled := False;
   Z2bbtnImprime.Enabled := False;
   Z2bbtnPreview.Enabled := False;
   Z2bbtnEmiteDoc.Enabled := fALSE;
   Z2bbtnContab.Enabled := False;
   Z2bbtnNuevo.Enabled := False;
   Z2bbtnElimina.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;
   lblElimina.Visible := False;

   If xxModo = 0 Then
   Begin
      If xMovEstado = 'X' Then
      Begin
         pnlCab1.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         pnlCab1.SetFocus;
         perform(CM_DialogKey, VK_TAB, 0);
      End;
      If xMovEstado = 'T' Then
      Begin
         pnlCab2.Enabled := True;
         dtpFEmis.Enabled := True;
         dblcClAux.Enabled := True;
         dblcdClie.Enabled := True;
         dblcdClieRuc.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dtpFEmis.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
         pnlCab2.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := True;
         dblcTMon.SetFocus;
      End
   End
   Else
   Begin
      If xMovConta = 'S' Then
      Begin
         pnlDetalle.Enabled := True;
         dbgDocCanje.Enabled := True;
         dbgDetCxC.Enabled := True;

         lblContab.Visible := True;

         pnlPie.Enabled := True;
         Z2bbtnImprime.Enabled := True;
         Z2bbtnPreview.Enabled := True;
         z2bbtnEmiteDoc.Enabled := True;
      End
      Else
      Begin
         If xMovEstado = 'T' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgDetCxC.ReadOnly := False;
            btnActReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAnula.Enabled := True;

            lblActivo.Visible := True;
         End;
         If xMovEstado = 'I' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgDetCxC.ReadOnly := False;
            btnActReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnNuevo.Enabled := True;
            Z2bbtnElimina.Enabled := True;

            lblActivo.Visible := True;
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            Z2bbtnPreview.Enabled := True;
            z2bbtnEmiteDoc.Enabled := True;
            Z2bbtnContab.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnElimina.Enabled := True;
            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := False;
            Z2bbtnPreview.Enabled := False;
            z2bbtnEmiteDoc.Enabled := True;
            lblAnula.Visible := True;
         End;
         If xMovEstado = 'E' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := False;
            Z2bbtnPreview.Enabled := False;
            z2bbtnEmiteDoc.Enabled := True;
            lblElimina.Visible := True;
         End;

      End;
   End;

   If DMCXC.wModo = 'C' Then
   Begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled := False;
      pnlCab2.Enabled := False;

      bbtnOK.Enabled := False;
      bbtnBorra.Enabled := False;

      dbgPendientes.Enabled := False;
      dbgDocCanje.Enabled := False;
      dbgDetCxC.Enabled := False;
      dbgPendientes.ReadOnly := True;
      dbgDocCanje.ReadOnly := True;
      dbgDetCxC.ReadOnly := True;
      btnActReg.Enabled := False;

      pnlPie.Refresh;
      pnlPie.Enabled := False;
      bbtnRegresa.Enabled := False;
      bbtnCancela.Enabled := False;
      Z2bbtnGraba.Enabled := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled := False;
      Z2bbtnImprime.Enabled := False;
      Z2bbtnPreview.Enabled := False;
      z2bbtnEmiteDoc.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
End;

Procedure TFNotasDC.FiltraGrids;
Var
   xFiltro: String;
Begin
// Filtro para cdsLetras que se utilizará para Documentos Pendientes

// Inicio HPC_201405_CXC
   xFiltro := 'CIAID='+quotedstr(dblcCia.Text)
      + ' and CLIEID='+quotedstr(dblcdClie.Text)
      + ' and DOCID<>'+quotedstr(wTDoc);

   If (rgDoc.ItemIndex <> 2) Then
   Begin //TDocumento Pendiente
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I')
            Or (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T') Then
      Begin
         Filtracds(DMCXC.cdsMovCxC2Clone,
                       'Select CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CCTCAMPR, '
                      +'       CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, '
                      +'       CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, '
                      +'       CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ '
                      +'  from CXC301 '
                      +' where ' + xFiltro);
         Filtracds(DMCXC.cdsMovCxC2,
                       'Select ''ABREVIATURA'' DOCABR,CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS, CCFVCMTO,CCTCAMPR, '
                      +'       CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, '
                      +'       CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, '
                      +'       CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ '
                      +'  from CXC301 '
                      +' where ' + xFiltro);
      End
      Else
      Begin
         Filtracds(DMCXC.cdsMovCxC2Clone,'Select * FROM CXC301 WHERE CIAID=''CLG''');
         Filtracds(DMCXC.cdsMovCxC2,
                       'Select ''ABREVIATURA'' DOCABR,CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CCTCAMPR, '
                      +'       CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, '
                      +'       CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, '
                      +'       CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ '
                      +'  from CXC301 '
                      +' where CIAID=''CLG'' ');
      End;
// Fin HPC_201405_CXC
      If (rgDoc.ItemIndex = 0) Then //TDocumento Pendiente
      Begin			
// Inicio HPC_201405_CXC
         DMCXC.cdsMovCxC2.Filter := '';
         DMCXC.cdsMovCxC2.Filter := '(CCSALLOC>0 OR CCSALEXT>0) '
                                  + ' and FLAGVAR <>' + quotedstr('XX')
                                  + ' and CCESTADO=' + quotedstr('P');
         DMCXC.cdsMovCxC2.Filtered := True;

         DMCXC.cdsMovCxC2Clone.Filter := '';
         DMCXC.cdsMovCxC2Clone.Filter := '(CCSALLOC>0 or CCSALEXT>0) '
                                  + ' and FLAGVAR <>' + quotedstr('XX')
                                  + ' and CCESTADO=' + quotedstr('P');
         DMCXC.cdsMovCxC2Clone.Filtered := True;
// Fin HPC_201405_CXC
      End
      Else
         If (rgDoc.ItemIndex = 1) Then //TDocumento Cancelado
         Begin
            DMCXC.cdsMovCxC2.Filter := '';
            DMCXC.cdsMovCxC2.Filter := 'Flagvar <>' + quotedstr('XX');
            DMCXC.cdsMovCxC2.Filtered := True;

            DMCXC.cdsMovCxC2Clone.Filter := '';
            DMCXC.cdsMovCxC2Clone.Filter := 'Flagvar <>' + quotedstr('XX');
            DMCXC.cdsMovCxC2Clone.Filtered := True;
         End;
      DMCXC.cdsMovCxC2.DisableControls;
      If DMCXC.cdsTDoc.IndexFieldNames <> 'DOCID' Then
         DMCXC.cdsTDoc.IndexFieldNames := 'DOCID';

      DMCXC.cdsMovCxC2.First;
      While Not DMCXC.cdsMovCxC2.EOF Do
      Begin
         DMCXC.cdsTDoc.Setkey;
         DMCXC.cdsTDoc.FieldByName('DOCID').AsString := DMCXC.cdsMovCxc2.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxc2.Edit;
         If DMCXC.cdsTDoc.Gotokey Then
            DMCXC.cdsMovCxc2.FieldByName('DOCABR').AsString := DMCXC.cdsTDoc.FieldByName('DOCABR').AsString
         Else
            DMCXC.cdsMovCxc2.FieldByName('DOCABR').AsString := 'N.A.';
         DMCXC.cdsMovCxc2.Post;                                                
         DMCXC.cdsMovCxC2.Next;
      End;
      DMCXC.cdsMovCxC2.EnableControls;
   End;
// Inicio HPC_201405_CXC
   wCje := TRIM(DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString);
// Filtro para Documentos escogidos para el Canje
   Filtracds(DMCXC.cdsCanjesClone,
                 'Select ''ABREVIATURA'' DOCABR,DOCID,CCSERIE,CCNODOC,CCMTOORI,CCTCAMCJE, '
                +'       CCSALORI,CCSALLOC,CCSALEXT,CCMTOLOC,CCMTOEXT,CJEANTMN,CJEANTME,CIAID,TDIARID,CCANOMM, '
                +'       CCNOREG,CLIEID,CLIERUC,TCANJEID,CCCANJE,CCFCANJE,TMONID,CCUSER,CCFREG,CCHREG, '
                +'       CCAAAA,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,CCTCAMDOC,CCESTADO,CPTOID,'
                +'       CUENTAID,FLAGVAR,CCFEMIS,CCFVCMTO '
                +'  from CXC304 '
                +' Where CIAID='+quotedstr(dblcCia.Text)
                +'   and TCANJEID='+quotedstr('NC')
                +'   and CCCANJE='+quotedstr(wCje));
   Filtracds(DMCXC.cdsCanjes,
                 'Select ''ABREVIATURA'' DOCABR, DOCID,CCSERIE,CCNODOC,CCMTOORI,CCTCAMCJE, '
                +'       CCSALORI,CCSALLOC,CCSALEXT,CCMTOLOC,CCMTOEXT,CJEANTMN,CJEANTME,CIAID,TDIARID,CCANOMM, '
                +'       CCNOREG,CLIEID,CLIERUC,TCANJEID,CCCANJE,CCFCANJE,TMONID,CCUSER,CCFREG,CCHREG, '
                +'       CCAAAA,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,CCTCAMDOC,CCESTADO,CPTOID, '
                +'       CUENTAID,FLAGVAR,CCFEMIS,CCFVCMTO '
                +'  from CXC304 '
                +' Where CIAID='+quotedstr(dblcCia.Text)
                +'   and TCANJEID='+quotedstr('NC')
                +'   and CCCANJE='+quotedstr(wCje));
// Fin HPC_201405_CXC
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.EOF Do
   Begin
      DMCXC.cdsTDoc.Setkey;
      DMCXC.cdsTDoc.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsCanjes.Edit;
      If DMCXC.cdsTDoc.Gotokey Then
         DMCXC.cdsCanjes.FieldByName('DOCABR').AsString := DMCXC.cdsTDoc.FieldByName('DOCABR').AsString
      Else
         DMCXC.cdsCanjes.FieldByName('DOCABR').AsString := 'N.A.';
      DMCXC.cdsCanjes.Post;                                                      
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;

// Filtra DetCxP para mostrar DetContable(dbgDetCxp) si NCredito Existe
// Inicio HPC_201405_CXC
   Filtracds(DMCXC.cdsDetCxC,
                 'Select * '
                +'  from CXC302 '
                +' Where CIAID='+quotedstr(dblcCia.Text)
                +'   and CLIEID='+quotedstr(dblcdClie.Text)
                +'   and DOCID='+quotedstr(wTDoc)
                +'   and CCSERIE='+quotedstr(edtSerie.Text)
                +'   and CCNODOC='+quotedstr(edtNoDoc.Text)
                +'   and CCNOREG='+QuotedsTr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString)+' ORDER BY TREGID');
// Fin HPC_201405_CXC
End;

Procedure TFNotasDC.dblcCiaExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
      exit;
   End;
// Filtra la Serie de Documentos de la Cía
   DMCXC.cdsSerie.Filter := 'CIAID=' + QuotedStr(dblcCia.Text);
   DMCXC.cdsSerie.Filtered := True;
End;

Procedure TFNotasDC.dblcdClieExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;
   If (length(dblcdClie.text) = 0) And (dblcdClieRuc.Focused) Then exit;
   If (Length(dblcdClie.Text) = 0) And (Length(dblcdClieRuc.text) > 0) Then Exit;

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
      xVeidMaes := DMCXC.cdsClie.FieldByName('VEID').AsString;
      xSector := DMCXC.cdsClie.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;

      If dblcCia.Text = '15' Then
      Begin
         xSQL := 'Select * from APO201 WHERE ASOID=''' + DMCXC.cdsClie.FieldByName('CLIEID').AsString + '''';
         DMCXC.cdsQry.Close;
         DMCXC.cdsQry.DataRequest(xSQL);
         DMCXC.cdsQry.Open;
         If DMCXC.cdsQry.RecordCount > 0 Then
         Begin
            DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsQry.FieldByName('ASODNI').AsString;
         End;
      End;

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
End;

Procedure TFNotasDC.dblcdClieRucExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;
   If (Length(dblcdClieRuc.Text) = 0) And (dblcdClie.Focused) Then Exit;
   If (Length(dblcdClieRuc.Text) = 0) And (Length(dblcdClie.text) > 0) Then Exit;

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
         xVeidMaes := DMCXC.cdsClie.FieldByName('VEID').AsString;
         xSector := DMCXC.cdsClie.FieldByName('TVTAID').AsString;
         xZona := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;
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

Procedure TFNotasDC.InicializaVars;
Begin
   wCje := '';
   wSimbMn := '';
   wEstadTem := ''; // si regresa de Det a Pend (cuando existe N/C)
   wCuadra := False;
   wRegGrab := False;
   edtFinal.Text := '';
   edtSerie.Text := '';
   edtNoDoc.Text := '';
   edtTipoOpera.Clear;

End;

Procedure TFNotasDC.InicializaCds;
Begin
   Filtracds(DMCXC.cdsMovCxC2, 'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where CIAID=''''');
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where CIAID=''CLG''');
   Filtracds(DMCXC.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where CIAID=''''');
End;

Function TFNotasDC.Consistencia: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then
      Raise exception.Create('Ingrese Compañía');
   If length(dblcdClie.Text) = 0 Then
      Raise exception.Create('Ingrese Cliente');
   If length(edtSerie.Text) = 0 Then
      Raise exception.Create('Ingrese Serie del Documento');
   If length(edtNoDoc.Text) = 0 Then
      Raise exception.Create('Ingrese Número del Documento');
   If dtpFComp.Date = 0 Then
      Raise exception.Create('Ingrese Fecha del comprobante');
   If length(dbeNoReg.Text) = 0 Then
      Raise exception.Create('Ingrese Número del comprobante');
   If length(dblcTMon.Text) = 0 Then
      Raise exception.Create('Ingrese Moneda');
   If length(dbeTCambio.Text) = 0 Then
      Raise exception.Create('Ingrese Tipo de Cambio');
   If dtpFEmis.Date = 0 Then
      Raise exception.Create('Ingrese Fecha de Emisión del Documento');
   If rgDoc.ItemIndex = -1 Then
      Raise exception.Create('Seleccione un tipo Documento');
   Result := true;
End;

Procedure TFNotasDC.bbtnOKClick(Sender: TObject);
Var
   xWhere, xc1, xc2, xc3: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdTipoOpera.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdTipoOpera.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   If rgDoc.itemindex = 1 Then
   Begin
      If DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat <= 0 Then
      Begin
         Raise Exception.Create('Ingrese Total de Nota de Crédito');
      End;
   End;

   If dblcdTipoOpera.text = '' Then
   Begin
      dblcdTipoOpera.SetFocus;
      Raise Exception.Create('Ingrese Tipo de Operación');
   End;

   If cFlagNI Then
   Begin
      If length(dblcdNisa.Text) <= 0 Then
      Begin
         ShowMessage('Para hacer la Nota de Crédito por Devolución, Debe Registrar la Nota de Ingreso a Almacén');
         Exit;
      End;
   End;

   If Not Consistencia Then Exit;
   If DMCXC.cdsMovCxC.state = dsBrowse Then
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('TVTAID').AsString := xSector;
      DMCXC.cdsMovCxC.FieldByName('ZVTAID').AsString := xZona;
      DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString := DMCXC.cdscptoCab.FieldByName('CPTOCAB').AsString;
      DMCXC.cdsMovCxC.FieldByName('CTATOTAL').AsString := DMCXC.cdscptoCab.FieldByName('CUENTAID').AsString;

      DMCXC.xFlagCal := True;

   If DMCXC.wModo = 'A' Then
   Begin
      xWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and TCANJEID=' + '''' + 'NC' + '''';
      xc1 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', xWhere), 6);
      xc2 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', xWhere), 6);
      xc3 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', xWhere), 6);
      If xc1 > xc2 Then
         wCje := xc1
      Else
         wCje := xc2;

      If wCje < xc3 Then
         wCje := xc3;

      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T' Then
         GeneraRegistro;
   End;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');

   DatosCds;
   FiltraGrids;
   Filtracds(DMCXC.cdsModelo, 'SELECT * FROM CXC102 WHERE '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CPTOCAB=' + QuotedStr(dblcdTipoOpera.text) + ' ORDER BY TREGID ');

   If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = '' Then rgDocClick(Self);

   If rgDoc.itemindex <> 2 Then //PENDIENTES O CANCELADOS
   Begin
      If (DMCXC.cdsMovCxC2.RecordCount = 0) And (DMCXC.cdsCanjes.RecordCount = 0) Then
      Begin
         DMCXC.cdsMovCxC.Edit;
         DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'X';
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
         If (DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P') Then
            Raise Exception.Create('Cliente No tiene Documentos Pendientes de Pago')
         Else
            Raise Exception.Create('Cliente No tiene Documentos Cancelados')
      End;
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFNotasDC.GeneraRegistro;
Var
   xMes, xSQL: String;
   wAno, wMes, wDia: Word;
   nNoReg: Integer;
Begin
   DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);

   If wMes < 10 Then
      xMes := '0' + inttostr(wMes)
   Else
      xMes := inttostr(wMes);
   xTMes := xMes;
   xTAno := IntToStr(wAno);

   If Length(wTDiar) = 0 Then
      Raise Exception.Create('Error Documento no Tiene Tipo Diario');

   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
// Inicio HPC_201405_CXC   
   if length(dbeNoReg.text)= 0 then
   begin
      xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   end
   else
   begin
      xNoReg := dbeNoReg.text;
   end;
   nNoReg := StrToInt(xNoReg);
   {
   xNoReg := '';
   While Length(xNoReg) = 0 Do
   Begin
      xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, nNoReg);
      xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
      If Not DMCXC.BuscaCxCReg(dblcCia.Text, wTDiar, xTAno + xTMes, xNoReg) Then
      Begin
         xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
         Break;
      End;
      xNoReg := '';
      nNoReg := nNoReg + 1;
   End;
   }
// Fin HPC_201405_CXC
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CPTOID').AsString := dblcdTipoOpera.text;
   DMCXC.cdsMovCxC.FieldByName('CCLOTE').AsString := '';
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
// Inicio HPC_201405_CXC
   // DMCXC.cdsPost(DMCXC.cdsMovCxC);                                                
   DMCXC.cdsMovCxC.Post;
// Fin HPC_201405_CXC

// DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                                 
// Inicio HPC_201405_CXC
   xSQL := ' Update CXC301 '
         + '    set CCTCAMAJ = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCTCAMAJ').AsFloat)+','
         + '        TVTAID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TVTAID').AsString)+','
         + '        ZVTAID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('ZVTAID').AsString)+','
         + '        CCPTOTOT = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCPTOTOT').AsString)+','
         + '        CTATOTAL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CTATOTAL').AsString)+','
         + '        CPTOID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CPTOID').AsString)+','
         + '        CLAUXID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLAUXID').AsString)+','
         + '        CLIEID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString)+','
         + '        CLIERUC = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIERUC').AsString)+','
         + '        CCLOTE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCLOTE').AsString)+','
         + '        CCAAAA = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAAAA').AsString)+','
         + '        CCMM = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCMM').AsString)+','
         + '        CCDD = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCDD').AsString)+','
         + '        CCTRI = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCTRI').AsString)+','
         + '        CCSEM = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSEM').AsString)+','
         + '        CCSS = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSS').AsString)+','
         + '        CCAATRI = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAATRI').AsString)+','
         + '        CCAASEM = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAASEM').AsString)+','
         + '        CCAASS = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCAASS').AsString)+','
         + '        CCUSER = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCUSER').AsString)+','
         + '        CCFREG = trunc(sysdate), '
         + '        CCHREG = sysdate, '
         + '        CCESTADO = '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString)+' '
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
{
   xSQL := 'SELECT * FROM CXC301 '
        + '  WHERE CIAID=' + QuotedStr(dblcCia.text)
        + '    AND DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString)
        + '    AND CCSERIE=' + QuotedStr(edtSerie.text) + ' AND CCNODOC=' + QuotedStr(edtNoDoc.text);
   DMCXC.cdsMovCxC.DataRequest(xSQL);
 //DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   If DMCXC.cdsMovCxC.ApplyUpdates(0) > 0 Then
   Begin
      ShowMessage('Error, No se puede consultar...');
      exit;
   End;
}
// Fin HPC_201405_CXC
End;

Procedure TFNotasDC.DatosCds;
var xSQL : String;										  // HPC_201405_CXC
Begin
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').Asstring := wTDiar;
   DMCXC.cdsMovCxC.FieldByName('TCANJEID').AsString := 'NC';
   DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString := wCje;
   DMCXC.cdsMovCxC.FieldByName('CCFCANJE').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDatetime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDatetime := DMCXC.TimeS;

   If DMCXC.wModo = 'A' Then
   Begin

   End
   Else
   Begin // si no es nuevo
      DMCXC.cdsCanjes.DisableControls;
      DMCXC.cdsCanjes.First;
      While Not DMCXC.cdsCanjes.Eof Do
      Begin // Recalcula saldos si NCredito ya existe
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
         DMCXC.cdsMovCxC2.Setkey;
         DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
         If DMCXC.cdsMovCxC2.GotoKey Then
         Begin
            DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         End;
         DMCXC.cdsCanjes.FieldByName('CJEANTMN').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CJEANTME').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;

         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CJEANTMN').AsFloat := DMCXC.cdsCanjes.FieldByName('CJEANTMN').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CJEANTME').AsFloat := DMCXC.cdsCanjes.FieldByName('CJEANTME').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat;
// Inicio HPC_201405_CXC
   //       DMCXC.cdsPost(DMCXC.cdsCanjesClone);                                 // 2 cdsPost
            DMCXC.cdsCanjesClone.Post;
            xSQL := ' Update CXC304 '
                  + '    set CJEANTMN = ' + floattostr(DMCXC.cdsCanjes.fieldbyname('CJEANTMN').AsFloat)+','
                  + '        CJEANTME = ' + floattostr(DMCXC.cdsCanjes.fieldbyname('CJEANTME').AsFloat)+','
                  + '        CCSALLOC = ' + floattostr(DMCXC.cdsCanjes.fieldbyname('CCSALLOC').AsFloat)+','
                  + '        CCSALEXT = ' + floattostr(DMCXC.cdsCanjes.fieldbyname('CCSALEXT').AsFloat)+''
                  + '  Where CIAID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString)
                  + '    and TDIARID=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('TDIARID').AsString)
                  + '    and CCANOMM=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString)
                  + '    and CCNOREG=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('CCNOREG').AsString);
            Try
               DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
               DMCXC.DCOM1.AppServer.RetornaTransaccion;
               ShowMessage('No se puede actualizar los datos de la cabecera');
               exit;
            End;
// Fin HPC_201405_CXC
         End;
// Inicio HPC_201405_CXC
   //    DMCXC.cdsPost(DMCXC.cdsCanjes);                                         // 3 cdsPost
         DMCXC.cdsCanjes.Post;
// Fin HPC_201405_CXC
         DMCXC.cdsCanjes.Next;
      End;
      DMCXC.cdsCanjes.EnableControls;
   End; // si no es nuevo
End;

Procedure TFNotasDC.dtpFCompExit(Sender: TObject);
Var
   wLote, wMes, xWhere: String;
   Year, Month, Day: Word;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If dtpFComp.date = 0 Then
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Fecha ');
   End;

   If Not DMCXC.VerificaPeriodoVentas(dblcCia.text, dtpFComp.date) Then
   Begin
      dtpFComp.SetFocus;
      Exit;
   End;

// Inicio HPC_201405_CXC
   xWhere := 'TMONID='+quotedstr(DMCXC.wTMonExt)
     + ' and FECHA=' + DMCXC.wRepFuncDate+quotedstr(FORMATDATETIME(DMCXC.wFormatFecha, dtpFComp.Date))+ ')';
// Fin HPC_201405_CXC
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DMCXC.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).AsFloat
   Else
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   DecodeDate(dtpFComp.Date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   xAAMM := IntToStr(Year) + wMes;
   xTAno := IntToStr(Year);
   xTMes := wMes;
   dbeNoReg.Text := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   xWhere := 'CIAID=''' + dblcCia.Text + ''' AND TDiarId=' + '''' + wTDiar + '''' + ' and CCAnoMes=' + '''' + xAAMM + '''';
   Try
      wLote := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCLote', xWhere);
   Except
      wLote := '0000';
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFEMIS').Value := dtpFComp.Date;
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').Value := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').Value := xTAno + xTMes;
End;

Procedure TFNotasDC.DatosdeFecha;
Begin
   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString; // ANO
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

Procedure TFNotasDC.dbgPendientesMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgPendientes.BeginDrag(False);
End;

Procedure TFNotasDC.dbgCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDC.dbgCanjeEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = dbgPendientes Then
   Begin
      With DMCXC Do
      Begin
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
         cdsMovCxC2.SetKey;
         DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
         If cdsMovCxC2.GotoKey Then
         Begin
            cdsMovCxC2.Edit;
            If wEstadTem <> '' Then
               cdsMovCxC2.FieldByName('CCESTADO').AsString := wEstadTem;
   //       DMCXC.cdsPost(DMCXC.cdsMovCxC2);                                     // 4 cdsPost
            DMCXC.cdsMovCxC2.Post;
            cdsCanjes.Delete;
         End;
      End;
   End;
   If (Target = bbtnDel1) And (DMCXC.cdsCanjes.RecordCount > 0) Then DMCXC.cdsCanjes.Delete;

End;

Procedure TFNotasDC.dbgCanjeMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFNotasDC.CalculaTotalCje;
Begin
// Totales de Documentos de canje  (Referencia)
   With DMCXC Do
   Begin
      wTDev := 0;
      cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid
      xRegAct := cdsCanjes.GetBookmark; // marca reg. donde se quedo
      cdsCanjes.First;
      While Not cdsCanjes.Eof Do
      Begin
         If dblcTMon.Text = wTMonExt Then
            wTDev := wTDev + cdsCanjes.FieldByName('CCMTOEXT').AsFloat
         Else
            wTDev := wTDev + cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         cdsCanjes.Next;
      End;
      cdsCanjes.GotoBookmark(xRegAct);
      cdsCanjes.FreeBookmark(xRegAct);
      cdsCanjes.EnableControls;
   End;

End;

Procedure TFNotasDC.CalculaTotalDetCje;
Begin
// Totales de Documentos de canje  (Cancelación)
   With DMCXC Do
   Begin // se puede usar CalculaTotalDetCje en lugar de
      wTDev2 := 0;
      cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid
      xRegAct := cdsCanjes.GetBookmark; // marca reg. donde se quedo
      If cdsCanjes.RecordCount > 0 Then
      Begin
         cdsCanjes.First;
         While Not cdsCanjes.Eof Do
         Begin
            If dblcTMon.Text = wTMonExt Then
               wTDev2 := wTDev2 + cdsCanjes.FieldByName('CCMTOEXT').AsFloat
            Else
               wTDev2 := wTDev2 + cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            cdsCanjes.Next;
         End;
         cdsCanjes.GotoBookmark(xRegAct);
         cdsCanjes.FreeBookmark(xRegAct);
      End;
      cdsCanjes.EnableControls;
   End;
End;

Procedure TFNotasDC.LlenaDetCxC;
Begin
   With DMCXC Do
   Begin
      cdsDetCxC.Edit;
      cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
      cdsDetCxC.FieldByName('TDIARID').AsString := wTDiar;
      cdsDetCxC.FieldByName('CCNOREG').AsString := dbeNoReg.Text;
      cdsDetCxC.FieldByName('CCAAAA').AsString := copy(cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
      cdsDetCxC.FieldByName('CCANOMES').AsString := cdsMovCxC.FieldByName('CCANOMES').AsString;
      cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
      cdsDetCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
      cdsDetCxC.FieldByName('DOCID').AsString := wTDoc;
      cdsDetCxC.FieldByName('CCSERIE').AsString := edtSerie.Text;
      cdsDetCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
      cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := dtpFEmis.Date;
      cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFComp.Date;
      cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
      cdsDetCxC.FieldByName('CCUSER').AsString := wUsuario;
      cdsDetCxC.FieldByName('CCFREG').AsDateTime := DateS;
      cdsDetCxC.FieldByName('CCHREG').AsDateTime := TimeS;
      cdsDetCxC.FieldByName('CCMM').AsString := cdsMovCxC.FieldByName('CCMM').AsString;
      cdsDetCxC.FieldByName('CCDD').AsString := cdsMovCxC.FieldByName('CCDD').AsString;
      cdsDetCxC.FieldByName('CCTRI').AsString := cdsMovCxC.FieldByName('CCTRI').AsString;
      cdsDetCxC.FieldByName('CCSEM').AsString := cdsMovCxC.FieldByName('CCSEM').AsString;
      cdsDetCxC.FieldByName('CCSS').AsString := cdsMovCxC.FieldByName('CCSS').AsString;
      cdsDetCxC.FieldByName('CCAATRI').AsString := cdsMovCxC.FieldByName('CCAATRI').AsString;
      cdsDetCxC.FieldByName('CCAASEM').AsString := cdsMovCxC.FieldByName('CCAASEM').AsString;
      cdsDetCxC.FieldByName('CCAASS').AsString := cdsMovCxC.FieldByName('CCAASS').AsString;
      cdsDetCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
   End;
End;

Procedure TFNotasDC.dbgPendientes2DragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDC.dbgDetCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDC.Z2bbtnGrabaClick(Sender: TObject);
Var
   xWhere, xSQL: String;						   // HPC_201405_CXC
   dloc: double;
Begin
   If (DMCXC.cdsCanjes.RecordCount <= 0) And (rgDoc.itemindex <> 2) Then
      Raise exception.create('No hay Registros para el Detalle!');

   If (DMCXC.cdsDetCxC.RecordCount <= 0) Then
      Raise exception.create('No existe Asiento Contable');

   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      // consistencia Tipo de Registro
      If Length(DMCXC.cdsDetCxC.FieldByName('TREGID').AsString) = 0 Then
         Raise exception.Create('Falta Tipo de Registro');
      // consistencia Concepto
      If Length(DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString) = 0 Then
      Begin
         dblcTipRegExit(self); // toma las propiedades del registro
         Raise exception.Create('Falta Concepto');
      End;
      // Presupuesto
      xWhere := 'CuentaId=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' AND CIAID=' + QuotedStr(dblcCia.text);
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
      Begin
         If DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S' Then
         Begin
            If Length(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) = 0 Then
            Begin
               Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Partida Presupuestal');
            End;
         End;
      End;
      // consistencia Debe Haber
      If Length(DMCXC.cdsDetCxC.FieldByName('CCDH').AsString) = 0 Then
      Begin
         Raise exception.Create('Falta Debe/Haber');
      End;
      // consistencia Importe de Detalle
      If DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat <= 0 Then
         Raise exception.Create('Falta Importe');
      DMCXC.cdsDetCxC.Next;
   End;

// calcula sumatorias del detalle
   If rgDoc.itemindex = 0 Then
      ActualizaSaldosMovCxC;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'I';
   DMCXC.cdsMovCxC.FieldByName('UBIID').AsString := DMCXC.wsOfi;
   DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat := 0; // En Nota de Credito??
   DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('BANCOID').AsString := xTDA;

   If rgDoc.ItemIndex = 0 Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := 0;
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;
   End
   Else
      If rgDoc.ItemIndex = 1 Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;
      End
      Else
         If rgDoc.ItemIndex = 2 Then
         Begin
            DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := 0;
            DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;
            DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;
         End;

   DMCXC.cdsmovcxc.FieldByName('CLIEDES').AsString := edtClie.Text;
// Inicio HPC_201405_CXC

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
// Fin HPC_201405_CXC
   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG' Then
         DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN' Then
         DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'I1' Then
         DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'TO' Then
         DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat; // Actualiza Montos en Moneda L y E
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
      If dblcTMon.Text = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
      End
      Else
      Begin
         If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString <> 'TO' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
         End
         Else
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsDetCxC.Post;                                               
            dloc := FRound(OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOLOC)', 'TIPDET<>''TO'''), 15, 2);
            DMCXC.cdsDetCxC.Edit;
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := dloc;
         End;
      End;
// Inicio HPC_201405_CXC
  //  DMCXC.cdsPost(DMCXC.cdsDetCxC);                                        

      DMCXC.cdsDetCxC.Post;
      xSQL := ' Insert into CXC302( ciaid, ccanomes, tdiarid, cclote, ccnoreg, cptoid, cuentaid, clauxid, clieid, clieruc, docid, ccserie, ccnodoc, ccglosa, ccdh, '
            + ' ccosid, tmonid, cctcampr, ccmtoori, ccmtoloc, ccmtoext, ccfemis, ccfcomp, ccestado, ccaaaa, ccmm, ccdd, cctri, ccsem, ccss, ccaatri, ccaasem, ccaass, ccuser, ccfreg, cchreg, tregid, tipdet, cctcampa, ccflcdr, cccmprb ) '
            + ' Values( '+quotedstr(DMCXC.cdsDetCxC.fieldbyname('CIAID').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccanomes').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('tdiarid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('cclote').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccnoreg').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('cptoid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('cuentaid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('clauxid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('clieid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('clieruc').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('docid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccserie').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccnodoc').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccglosa').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccdh').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccosid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('tmonid').AsString)+', '
            +             floattostr(DMCXC.cdsDetCxC.fieldbyname('cctcampr').AsFloat)+','
            +             floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoori').AsFloat)+','
            +             floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoloc').AsFloat)+','
            +             floattostr(DMCXC.cdsDetCxC.fieldbyname('ccmtoext').AsFloat)+','
            + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('CCFEMIS').AsDateTime))+', '
            + quotedstr(datetostr(DMCXC.cdsDetCxC.fieldbyname('ccfcomp').AsDateTime))+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccestado').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaaaa').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccmm').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccdd').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('cctri').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccsem').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccss').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaatri').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaasem').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccaass').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccuser').AsString)+', '
            + '           trunc(sysdate),  '
            + '           sysdate, '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('tregid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('tipdet').AsString)+', '
            +             floattostr(DMCXC.cdsDetCxC.fieldbyname('cctcampa').AsFloat)+','
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('ccflcdr').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCxC.fieldbyname('cccmprb').AsString)+' )';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('No se pudo insertar el detalle de la nota de crédito');
         exit;
      End;

      DMCXC.cdsDetCxC.Next;
   End;

   DMCXC.cdsDetCxC.EnableControls;
//   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');                                   
{   
   If DMCXC.cdsDetCxC.ApplyUpdates(0) > 0 Then
   Begin
      ShowMessage('Error, No se puede Actualizar...');
      exit;
   End;
}
// Fin HPC_201405_CXC
// ya k pueden cambiar en cualquier momento se asignan aqui
   DMCXC.cdsMovCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := strtofloat(dbeTCambio.Text);
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := strtofloat(dbeTCambio.Text);
   DMCXC.cdsMovCxC.FieldByName('CCFEMIS').value := dtpFEmis.Date;

   If dblcTMon.Text = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
   End;

   Begin
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   End;

   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime;
   xVeid := DMCXC.BuscaQry('dspTGE', 'CXC301', 'VEID', 'CIAID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) + ' AND CCSERIE=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString) + ' AND CCNODOC=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString), 'VEID');
   If xVeid = '' Then
      DMCXC.cdsMovCxC.FieldByName('VEID').AsString := xVeIdMaes
   Else
      DMCXC.cdsMovCxC.FieldByName('VEID').AsString := xVeId;
// Inicio HPC_201405_CXC
//    DMCXC.cdsPost(DMCXC.cdsMovCxC);                                              // 6 cdsPost
      DMCXC.cdsMovCxC.Post;
// Fin HPC_201405_CXC

// Inicio HPC_201405_CXC
{
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');

   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                                
}
   xSQL := ' Update CXC301 '
         + '    set CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString)+','
         + '        UBIID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('UBIID').AsString)+','
         + '        CCGRAVAD = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCGRAVAD').AsFloat)+','
         + '        CCIGV = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCIGV').AsFloat)+','
         + '        CCISC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCISC').AsFloat)+','
         + '        BANCOID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('BANCOID').AsString)+','
         + '        CLIEDES = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIEDES').AsString)+','
         + '        TMONID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TMONID').AsString)+','
         + '        TCANJEID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('TCANJEID').AsString)+','
         + '        CCCANJE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCCANJE').AsString)+','
         + '        CCFCANJE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCFCANJE').AsString)+','
         + '        CCCMPRB = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCCMPRB').AsString)+','
         + '        CCFLAGTDOC = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCFLAGTDOC').AsString)+','
         + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('COMPROMET').AsString)+','
         + '        CCTCAMPR = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCTCAMPR').AsFloat)+','
         + '        CCTCAMPA = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCTCAMPA').AsFloat)+','
         + '        CCFEMIS = '+quotedstr(datetostr(DMCXC.cdsMovCxC.FieldByname('CCFEMIS').AsDateTime))+','
         + '        CCFCMPRB = '+quotedstr(datetostr(DMCXC.cdsMovCxC.FieldByname('CCFCMPRB').AsDateTime))+','         
         + '        CCMTOORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCMTOORI').AsFloat)+','
         + '        CCMTOLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat)+','
         + '        CCMTOEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat)+','
         + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat)+','
         + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat)+','
         + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat)+','
         + '        CCPAGORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat)+','
         + '        CCPAGLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat)+','
         + '        CCPAGEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat)+','
         + '        CCUSER = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCUSER').AsString)+','
         + '        CCFREG = trunc(sysdate), '
         + '        CCHREG = sysdate, '
         + '        CCFVCMTO = '+quotedstr(datetostr(DMCXC.cdsMovCxC.FieldByname('CCFVCMTO').AsDateTime))+','
         + '        VEID = '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('VEID').AsString)+', '
         + '        CCTCAMAJ = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCTCAMAJ').AsFloat)+','         
         + '        TVTAID = '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('TVTAID').AsString)+', '
         + '        ZVTAID = '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('ZVTAID').AsString)+', '
         + '        CCPTOTOT = '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCPTOTOT').AsString)+', '
         + '        CTATOTAL = '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('CTATOTAL').AsString)+', '
         + '        CCPEDIDO = '+quotedstr(dblcdNisa.Text)+' '
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
// Finaliza HPC_201405_CXC

// Inicio HPC_201405_CXC
{
   DMCXC.cdsMovCxC2Clone.DataRequest('Select CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CCTCAMPR, ' +
      ' CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, ' +
      ' CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, ' +
      ' CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ FROM CXC301 WHERE '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
      + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
      + 'DOCID<>' + QuotedStr(wTDoc));

   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');

   DMCXC.cdsCanjesClone.DataRequest('Select DOCID,CCSERIE,CCNODOC,CCMTOORI,CCTCAMCJE, ' +
      ' CCSALORI,CCSALLOC,CCSALEXT,CCMTOLOC,CCMTOEXT,CJEANTMN,CJEANTME,CIAID,TDIARID,CCANOMM, ' +
      ' CCNOREG,CLIEID,CLIERUC,TCANJEID,CCCANJE,CCFCANJE,TMONID,CCUSER,CCFREG,CCHREG, ' +
      ' CCAAAA,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,CCTCAMDOC,CCESTADO,CPTOID,CUENTAID,FLAGVAR,CCFEMIS,CCFVCMTO from CXC304 Where '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
      + 'TCANJEID=' + QuotedStr('NC') + ' and '
      + 'CCCANJE=' + QuotedStr(wCje));
   DMCXC.AplicaDatos(DMCXC.cdsCanjesClone, 'Canjes');
}
// Fin HPC_201405_CXC
   If Length(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString) > 0 Then
   Begin
      Try
         xWhere := ' UPDATE LOG314 SET FLAGNC=''I'' WHERE CIAID=' + QuotedStr(dblcCia.text) +
            ' AND NISAID=' + QuotedStr(dblcdNisa.text) + ' AND NISATIP=''INGRESO'' ';
         DMCXC.DCOM1.AppServer.EjecutaSQL(xWhere);
      Except
      End;
   End;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Grabado con Éxito... Pulse Intro para continuar');

   wRegGrab := True;

End;

Procedure TFNotasDC.ActualizaSaldosMovCxC;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
   xSQL: String;												   // HPC_201405_CXC
Begin
// Actualiza Saldo de MovCxP
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2Clone.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
      DMCXC.cdsMovCxC2.Setkey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin

         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
         DMCXC.cdsMovCxC2.edit;

         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            xPagLoc := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;

         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').Value := 'XX';
// Inicio HPC_201405_CXC
     //  DMCXC.cdsPost(DMCXC.cdsMovCxC2);                                         // 7 cdsPost
         DMCXC.cdsMovCxC2.Post;
// Fin HPC_201405_CXC
      End;
// Inicio HPC_201405_CXC
      xSQL := ' Update CXC301 '
            + '    set FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC2.fieldbyname('FLAGVAR').AsString)+','
            + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC2.fieldbyname('CCPAGORI').AsFloat)+','
            + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC2.fieldbyname('CCPAGLOC').AsFloat)+','
            + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC2.fieldbyname('CCPAGEXT').AsFloat)+''
            + '  Where CIAID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString)
            + '    and TDIARID=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('TDIARID').AsString)
            + '    and CCANOMES=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString)
            + '    and CCNOREG=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
// Fin HPC_201405_CXC

      DMCXC.cdsCanjes.Next;
   End;

   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
      DMCXC.cdsMovCxC2Clone.Setkey;
      DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2Clone.GotoKey Then
      Begin
         If DMCXC.cdsMovCxC2Clone.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
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

         DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').Value := 'XX';
// Inicio HPC_201405_CXC
     //  DMCXC.cdsPost(DMCXC.cdsMovCxC2Clone);                                    // 8 cdsPost
         DMCXC.cdsMovCxC2Clone.Post;
// Fin HPC_201405_CXC
      End;
// Inicio HPC_201405_CXC
      xSQL := ' Update CXC301 '
            + '    set FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('FLAGVAR').AsString)+','
            + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCPAGORI').AsFloat)+','
            + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCPAGLOC').AsFloat)+','
            + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCPAGEXT').AsFloat)+''
            + '  Where CIAID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString)
            + '    and TDIARID=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('TDIARID').AsString)
            + '    and CCANOMES=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString)
            + '    and CCNOREG=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
// Fin HPC_201405_CXC


      DMCXC.cdsCanjes.Next;
   End;

   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2Clone.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;
End;

Procedure TFNotasDC.bbtnCancelaClick(Sender: TObject);
Begin
// Cancela todas las modificaciones en los
   DMCXC.cdsDetCxC.CancelUpdates;
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsMovCxC2Clone.CancelUpdates;
   DMCXC.cdsMovCxC.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;
   DMCXC.cdsCanjesClone.CancelUpdates;

   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

End;

Procedure TFNotasDC.dblcTipRegExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      edtTipReg.Text := DMCXC.DisplayDescrip('TGE128', 'TREGDES', 'TRegID', dblcTipReg.Text);
      If length(edtTipReg.Text) = 0 Then
      Begin
         ShowMessage('Debe Ingresar Tipo de Registro');
         dblcTipReg.SetFocus;
         exit;
      End;
      If DMCXC.cdsDetCxC.State = dsInsert Then
      Begin
         LlenaDetCxC;
      End;
      If DMCXC.cdsDetCxC.State = dsBrowse Then
         DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := dblcTipReg.Text;
      xWhere := 'TRegId=' + '''' + dblcTipReg.Text + '''';
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', xWhere, 'TIPDET');
      If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
      Else
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
      If DMCXC.cdsDetCxC.State = dsInsert Then
      Begin
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
            dblcdCnpEgrExit(sender);
         End;
      End;
      dblcdCnpEgr.Enabled := True;
      DMCXC.cdsCpto.IndexFieldNames := 'CPTODES';
   End; // si no se apretó botón de cancelar

End;

Procedure TFNotasDC.dblcdCnpEgrExit(Sender: TObject);
Var
   ssql, xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CIAID=' + quotedStr(dblcCia.text) + ' and CPTOID=' + '''' + dblcdCnpEgr.Text + '''';
      If Length(DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOID')) > 0 Then
      Begin
         DMCXC.cdsDetCxC.edit;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         If Length(DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString) = 0 Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
         End;
         xWhere := 'CIAID=' + quotedStr(dblcCia.text)
            + ' AND CUENTAID=' + '''' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + '''';
         If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CUENTAID')) > 0 Then
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
            Begin
               dblcdCCosto.Enabled := false;
               dblcdCCosto.text := '';
               edtCCosto.text := '';
            End;
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
               dblcTipPre.Text := '';
               dblcdPresup.Text := '';
               edtPresup.Text := '';

               dblcdPresup.Enabled := false;
               lblTipPre.Enabled := false;
               lblPresu.Enabled := false;
            End;

         End;
      End
      Else
      Begin
         ShowMessage(' Concepto NO encontrado, reintente!');
         dblcdCnpEgr.SetFocus;
      End;

   End;
End;

Procedure TFNotasDC.bbtnBorraClick(Sender: TObject);
Var
   xFiltro,xSQL: String;									// HPC_201405_CXC
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'X') Or
         (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T') Then
      Begin
         DMCXC.cdsDetCxC.CancelUpdates;
         DMCXC.cdsMovCxC2.CancelUpdates;
         DMCXC.cdsCanjes.CancelUpdates;
// Inicio HPC_201405_CXC
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
//       DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                           
// Fin HPC_201405_CXC
         xFiltro := 'CIAID=' + quotedstr('');
         Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where ' + xFiltro);

         InsertaRegistro;
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      End;
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') Then
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

Procedure TFNotasDC.bbtnSumatClick(Sender: TObject);
Begin
   With DMCXC Do
   Begin
      CalculaTotalDetCje;
      dbgDocCanje.ColumnByName('CPNoDoc').FooterValue := 'Totales';

      If dblcTMon.Text = wTMonExt Then
      Begin
         dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := floattostrf(wTDev2, ffNumber, 15, 2);
         dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := '';
      End
      Else
      Begin
         dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := floattostrf(wTDev2, ffNumber, 15, 2);
         dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := '';
      End;
   End;
End;

Procedure TFNotasDC.bbtnGen302Click(Sender: TObject);
Var
   I: Integer;
   wTasa, wSubT: Double;
Begin
// validando que se haya ingresado el monto a cancelar
   If wTDev2 = 0 Then
   Begin
      showmessage('Debe ingresar monto a cancelar');
      exit;
   End;

   wSubT := 0;
   DMCXC.cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid

// obteniendo la Tasa de IGV de la dinámica contable
   DMCXC.cdsModelo.Locate('TIPDET', VarArrayOf(['I1']), []);
   wTasa := DMCXC.cdsModelo.FieldByName('TASA').AsFloat;

   If rgDoc.itemindex = 0 Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount = 0 Then
      Begin // N.de Credito nueva
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').ReadOnly := False; //  por problems al crear

         DMCXC.cdsModelo.First;
         While Not DMCXC.cdsModelo.EOF Do
         Begin
            DMCXC.cdsDetCxC.Insert;
            LlenaDetCxC;

            DMCXC.cdsDetCxC.Edit;
            DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsModelo.FieldByName('TREGID').AsString;
            DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsModelo.FieldByName('TIPDET').AsString;
            DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsModelo.FieldByName('CCDH').AsString;

            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsModelo.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsModelo.FieldByName('CUENTAID').AsString;

            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := 'N/Créd ' + trim(edtClie.text)
               + ' ' + copy(DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCABR', 'DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) + ' AND DOCMOD=''CXC''', 'DOCABR'), 1, 3)
               + ' ' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
               + '-' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

            If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'MG' Then
            Begin
               wSubT := FRound(wTDev2 / ((wTasa / 100) + 1), 15, 2);
               DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wSubT;
            End;
            If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'I1' Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(wTDev2 - wSubT, 15, 2);
            End;
            If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'TO' Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;
            End;

            DMCXC.cdsModelo.Next;

         End;

         // INSERTA EL TOTAL
         DMCXC.cdsDetCxC.Insert;
         LlenaDetCxC;

         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsCptoCab.FieldByName('TREGID').AsString;
         DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsCptoCab.FieldByName('TIPDET').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsCptoCab.FieldByName('CCDH').AsString;

         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsCptoCab.FieldByName('CPTOCAB').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsCptoCab.FieldByName('CUENTAID').AsString;

         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsCptoCab.FieldByName('CPTODES').AsString;
         If DMCXC.cdsCanjes.RecordCount > 0 Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString :=
               DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCDES', 'DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) + ' AND DOCMOD=''CXC''', 'DOCDES')
               + ' ' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
               + '-' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         End;
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;
// Inicio HPC_201405_CXC
    //   DMCXC.cdsPost(DMCXC.cdsDetCxC);                                        // 9 cdsPost
         DMCXC.cdsDetCxC.Post;
// Fin HPC_201405_CXC
      End;
      bbtnGen302.Enabled := False;
   End
   Else
   Begin // NOTA DE CREDITO DOCUMENTOS CANCELADOS
      If DMCXC.cdsDetCxC.RecordCount = 0 Then
      Begin // N.de Credito nueva
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').ReadOnly := False; //  por problems al crear
         DMCXC.cdsModelo.First;
         While Not DMCXC.cdsModelo.EOF Do
         Begin //llena el archivo contable (sugerido)
            DMCXC.cdsDetCxC.Insert;
            LlenaDetCxC;

            DMCXC.cdsDetCxC.Edit;
            DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsModelo.FieldByName('TREGID').AsString;
            DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsModelo.FieldByName('TIPDET').AsString;
            DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsModelo.FieldByName('CCDH').AsString;

            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsModelo.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsModelo.FieldByName('CUENTAID').AsString;

            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsModelo.FieldByName('TREGDES').AsString;
            If (DMCXC.cdsCanjes.RecordCount > 0) And (DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'MG') Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString + ' ' + DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCDES', 'DOCID=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString) + ' AND DOCMOD=''CXC''', 'DOCDES') + ' ' +
                  DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
            End;

            wTDev2 := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
            If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'MG' Then
            Begin
               wSubT := FRound(wTDev2 / ((wTasa / 100) + 1), 15, 2);
               DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wSubT;
            End;
            If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'I1' Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(wTDev2 - wSubT, 15, 2);
            End;
            If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'TO' Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;
            End;
            DMCXC.cdsModelo.Next
         End;

         // INSERTA EL TOTAL
         DMCXC.cdsDetCxC.Insert;
         LlenaDetCxC;

         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsCptoCab.FieldByName('TREGID').AsString;
         DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsCptoCab.FieldByName('TIPDET').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsCptoCab.FieldByName('CCDH').AsString;

         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsCptoCab.FieldByName('CPTOCAB').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsCptoCab.FieldByName('CUENTAID').AsString;

         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;

         // INSERTA EL TOTAL
// Inicio HPC_201405_CXC
    //   DMCXC.cdsPost(DMCXC.cdsDetCxC);                                         // 10 cdsPost
         DMCXC.cdsDetCxC.Post;
// Fin HPC_201405_CXC
      End;
      bbtnGen302.Enabled := False;
   End;
   DMCXC.cdsCanjes.EnableControls;
End;

Procedure TFNotasDC.dbgDetCxCEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = bbtnDel1 Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount > 0 Then DMCXC.cdsDetCxC.Delete;
      If (DMCXC.cdsDetCxC.RecordCount = 0) And (wTDev2 > 0) Then bbtnGen302.Enabled := True;
   End;
End;

Procedure TFNotasDC.dbgDetCxCMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDetCxC.BeginDrag(False);
End;

Procedure TFNotasDC.bbtnDel1DragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDC.bbtnCalcClick(Sender: TObject);
Begin
   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación
End;

Procedure TFNotasDC.edtNoDocExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;

   If edtNoDoc.Text = '' Then
   Begin
      ShowMessage('Falta No. de Documento');
      edtNoDoc.SetFocus;
      exit;
   End;

   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, edtSerie.Text, edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('Documento ya Fue Registrado');
   End;
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := edtSerie.Text;
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
   InicializaPnlCab2;
End;

Procedure TFNotasDC.InicializaPnlCab2;
Begin
   dtpFComp.date := 0;
   dbeNoReg.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCambio.Text := '';
   dtpFEmis.date := 0;
End;

Procedure TFNotasDC.Z2bbtnContabClick(Sender: TObject);
var xSQL : String;                                   // HPC_201405_CXC
Begin
   If DMCXC.MesCerrado(xTMes, xTAno, dblcCia.text) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;

   If MessageDlg('Contabilizar Nota de Credito' + chr(13) + '       ¿Esta Seguro?       ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   xAAMM := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString := 'S';
   DMCXC.cdsMovCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
   DMCXC.cdsMovCxC.Post;                                                        
// Inicio HPC_201405_CXC
   xSQL := ' Update CXC301 '
        + '    set CC_CONTA = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CC_CONTA').AsString)+','
        + '        CCCMPRB = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCCMPRB').AsString)+''
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
// Fin HPC_201405_CXC
   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.ReadOnly := False;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('CCFLCDR').Value := 'S';
      DMCXC.cdsDetCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
      DMCXC.cdsDetCxC.Next;
   End;
   DMCXC.cdsDetCxC.ReadOnly := True;
   DMCXC.cdsDetCxC.EnableControls;
// Inicio HPC_201405_CXC
   xSQL := ' Update CXC302 '
         + '    set CCFLCDR = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCFLCDR').AsString)+','
         + '        CCCMPRB = ' + quotedstr(DMCXC.cdsDetCxC.fieldbyname('CCCMPRB').AsString)+''
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
// Fin HPC_201405_CXC


   DMCXC.GeneraContab(dblcCia.Text, wTDiar, xAAMM, dbeNoReg.text, Self, 'C');
// Inicio HPC_201405_CXC
{
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');

   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                               
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');
}
// Fin HPC_201405_CXC

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Contabilizado... Pulse Intro para continuar');
End;

Procedure TFNotasDC.Z2bbtnNuevoClick(Sender: TObject);
Begin
// si no es NC Contabilizada existente Ó Anulado ---> para evitar confirmacion
   If MessageDlg('Registra un Nuevo Documento' + chr(13) +
      '          ¿Esta Seguro?  ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   InicializaCds;
   InicializaVars;
   edtTipoOpera.Text := '';
   dblcdTipoOpera.Text := '';

   InsertaRegistro;
   pc1.ActivePage := ts1;
   dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := '';
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFNotasDC.dbgCanjeColExit(Sender: TObject);
Begin
   If dbgDocCanje.SelectedField.FieldName = 'CCCTCCJE' Then
   Begin
      dbgDocCanje.RefreshDisplay;
   End;

   If (dbgDocCanje.SelectedField.FieldName = 'CCMTOLOC') And (DMCXC.cdsCanjes.FieldByName('CIAID').AsString <> '') Then
   Begin
      If DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat >= DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat Then
      Begin
         ShowMessage('Precaución: Monto no debería ser mayor o igual al Saldo');
      End;
   End;
   If (dbgDocCanje.SelectedField.FieldName = 'CCPMOEXT') And (DMCXC.cdsCanjes.FieldByName('CIAID').AsString <> '') Then
   Begin
      If DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat >= DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat Then
      Begin
         ShowMessage('Precaución: Monto no debería ser mayor o igual al Saldo');
      End;
   End;
End;

Procedure TFNotasDC.Z2bbtnAnulaClick(Sender: TObject);
Var
   sSQL, xSQL: String;									   // HPC_201405_CXC
Begin
   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString <> 'T' Then
   Begin
      If Not DMCXC.VerificaPeriodoVentas(dblcCia.text, DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime) Then
      Begin
         Screen.Cursor := crDefault;
         Exit;
      End;
   End;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString <> 'T' Then
   Begin
      If DMCXC.VerificaCierre(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString, DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsDateTime) Then
      Begin

      End;
   End;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito ya se encuentra Anulada');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito ya se encuentra contabilizada');
   End;

   If MessageDlg('Anular Nota de Credito' + chr(13) + '     ¿Esta Seguro?     ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      If (DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString <> 'P') And (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'P') Then
      Begin
         DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString, DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString,
            DMCXC.cdsMovCxC.fieldbyname('CLAUXID').AsString, DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString, '-',
            DMCXC.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat, DMCXC.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat,
            DMCXC.cdsMovCxC.fieldbyname('TMONID').AsString);
      End;

      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'A';
      DMCXC.cdsMovCxC.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
      DMCXC.cdsMovCxC.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
      DMCXC.cdsMovCxC.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;

      DMCXC.cdsMovCxC.Post;                                                     
// Inicio HPC_201405_CXC
{
      DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
         + 'CIAID=''' + dblcCia.Text + ''' AND '
         + 'DOCID=''' + wTDoc + ''' AND '
         + 'CCSERIE=''' + edtSerie.Text + ''' AND '
         + 'CCNODOC=''' + edtNoDoc.Text + '''');

      DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                              
}
       xSQL := ' Update CXC301 '
          + '    set CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString)+','
          + '        USERANUL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString)+', '
          + '        FECANUL = trunc(sysdate),'
          + '        HORANUL = sysdate '
          + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString)
          + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString)
          + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString)
          + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
       Try
          DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
       Except
          DMCXC.DCOM1.AppServer.RetornaTransaccion;
          ShowMessage('No se puede actualizar los datos de la cabecera');
          exit;
       End;
// Fin HPC_201405_CXC

   //(APLICA)
      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P' Then
      Begin
         DMCXC.cdsMovCxC2.DisableControls;
         DMCXC.cdsMovCxC2.Filtered := False;
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsMovCxC2Clone.Filtered := False;
         DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsCanjes.DisableControls;
         DMCXC.cdsCanjes.First;
         While Not DMCXC.cdsCanjes.EOF Do
         Begin
            Try
               sSQL := 'update CXC301 set CCSALORI=CCMTOORI, CCSALLOC=CCMTOLOC, CCSALEXT=CCMTOEXT, '
                  + 'CCPAGORI=0, CCPAGLOC=0, CCPAGEXT=0, FLAGVAR=''.'' '
                  + 'Where CIAID=''' + DMCXC.cdsCanjes.FieldByName('CIAID').AsString + ''' '
                  + ' and DOCID=''' + DMCXC.cdsCanjes.FieldByName('DOCID').AsString + ''' '
                  + ' and CCSERIE=''' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString + ''' '
                  + ' and CCNODOC=''' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString + ''' '
                  + ' and CLIEID=''' + DMCXC.cdsCanjes.FieldByName('CLIEID').AsString + ''' ';
               DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
            Except
               ShowMessage('No se pudo actualizar el Saldo del Documento' + #13 +
                  'Doc: ' + DMCXC.cdsCanjes.FieldByName('DOCID').AsString + ' Serie: ' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString +
                  'Nro: ' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString);
            End;
            DMCXC.cdsCanjes.Next;
         End;
         DMCXC.cdsCanjes.EnableControls;
         DMCXC.cdsMovCxC2Clone.Filtered := True;
         DMCXC.cdsMovCxC2Clone.Filtered := True;
         DMCXC.cdsMovCxC2.EnableControls;
// Inicio HPC_201405_CXC
{
         DMCXC.cdsMovCxC2Clone.DataRequest('Select * from CXC301 Where '
            + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
            + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
            + 'DOCID<>' + QuotedStr(wTDoc));
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');                   
}
// Fin HPC_201405_CXC
      End;

      If Length(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString) > 0 Then
      Begin	
// Inicio HPC_201405_CXC
         sSQL := ' UPDATE LOG314 '
               + '    SET FLAGNC=NULL '
               + '  WHERE CIAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString)
               + '    AND NISATIP=''INGRESO'' '
               + '    AND NISAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString);
// Fin HPC_201405_CXC
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            ShowMessage('No se actualizó Nota de Crédito');
         End;

      End;

      EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);

      ShowMessage('Registro Anulado... Pulse Intro para continuar');

   End;

End;

Procedure TFNotasDC.Z2bbtnAceptaClick(Sender: TObject);
Var
   sSQL, xSQL: String;									   // HPC_201405_CXC
Begin
   If DMCXC.wVRN_VTAPED = 'S' Then
      If (xVeid = '') And (xVeidMaes = '') Then
         Raise exception.Create('No existe Vendedor Asignado para este Cliente');

   If rgDoc.itemindex = 0 Then
      If wTDev2 = 0 Then
         Raise exception.Create('Información Incompleta en Cancelación');
// Inicio HPC_201405_CXC
//   If (DMCXC.cdsMovCxC.Modified) Or (DMCXC.cdsMovCxC.ChangeCount > 0) Then
//      Raise exception.Create(' Debe Grabar primero ');
     If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString ='T') Then
      Raise exception.Create(' Debe Grabar primero ');

// Fin HPC_201405_CXC

   If DMCXC.cdsDetCxC.RecordCount = 0 Then
      Raise exception.Create('Ingrese Detalle Contable');

   If (Not VerificaTotal) And (rgDoc.itemindex = 0) Then
      Raise exception.Create('TOTAL Nota de Crédito no cuadra con Total de Documentos seleccionados');

   If Not CuadraDH Then
      Raise exception.Create('Error:  Asiento No Cuadra');

   If Not DMCXC.VerificaPeriodoVentas(dblcCia.text, DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime) Then
   Begin
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;

   End;

   If MessageDlg('Aceptar Nota de Credito' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      exit;

   Try

      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'P';
      DMCXC.cdsMovCxC.FieldByName('FLAGVAR').AsString := '.';
      DMCXC.cdsMovCxC.FieldByName('COMPROMET').AsString := 'NA';

      If (rgDoc.itemindex = 0) Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'C';
         DMCXC.cdsMovCxC.FieldByName('CCFCANCEL').AsDateTime := dtpFEmis.date;
         DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, 15, 2);
         DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2);
         DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, 15, 2);
      End
      Else
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := 0;
      End;

      DMCXC.cdsMovCxC.Post;

      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P' Then //Docs Pendientes
      Begin
         DMCXC.cdsDetCxC.DisableControls;
         screen.Cursor := crHOURGLASS;
         pnlActuali.Visible := true;
         pnlActuali.Refresh;


         If (rgDoc.itemindex = 0) Then
         Begin
            DMCXC.cdsMovCxC2.Filtered := False;
            DMCXC.cdsMovCxC2Clone.Filtered := False;
            DMCXC.cdsCanjes.DisableControls;
            DMCXC.cdsCanjes.First;
         // Actualiza Montos Pagados y Saldos en CXC301 (Docs. a los k aplica la NC)
            While Not DMCXC.cdsCanjes.Eof Do
            Begin
               DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
               DMCXC.cdsMovCxC2.Setkey;
               DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
               DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
               DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
               DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
               If DMCXC.cdsMovCxC2.GotoKey Then
               Begin
                  DMCXC.cdsMovCxC2.Edit;
// Inicio HPC_201405_CXC
                  DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat,15,2);
                  DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat,15, 2);
                  DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat,15, 2);
// Fin HPC_201405_CXC
                  DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';

                  If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString,
                     DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString,
                     DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString) Then
                     DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO'
                  Else
                     DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'NA';
// Inicio HPC_201405_CXC
                  If dblcTMon.Text = DMCXC.wTMonLoc Then
                  Begin
                     DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
                     DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / strtofloat(dbeTCambio.Text), 15, 2);
                  End
                  Else
                  Begin
                     DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
                     DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * strtofloat(dbeTCambio.Text), 15, 2);
                  End;
// Fin HPC_201405_CXC
                  If (Abs(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat) <= 0.01) Or (Abs(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat) <= 0.01) Then
                  Begin
                     DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime := dtpFEmis.date;
                     DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';
                  End
                  Else
                  Begin
                     DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').Clear;
                     DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'P';
                  End;
                  DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
                  DMCXC.cdsMovCxC2Clone.Setkey;
                  DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
                  DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
                  DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
                  DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;

                  If DMCXC.cdsMovCxC2Clone.GotoKey Then
                  Begin
                     DMCXC.cdsMovCxC2Clone.Edit;
                     DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := '.';
                     DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString;
                     If DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime > 0 Then
                        DMCXC.cdsMovCxC2Clone.FieldByName('CCFCANCEL').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime
                     Else
                        DMCXC.cdsMovCxC2Clone.FieldByName('CCFCANCEL').Clear;
// Inicio HPC_201405_CXC
                     DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat;
                     DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
                     DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
                     DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat;
                     DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat;
// Fin HPC_201405_CXC
                     DMCXC.cdsMovCxC2Clone.FieldByName('CCESTADO').AsString := DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString;
                  End;
               End
               Else
               Begin
                  DMCXC.cdsMovCxC2.Filtered := True;
                  DMCXC.cdsMovCxC2Clone.Filtered := True;
                  DMCXC.cdsCanjes.EnableControls;
                  Raise exception.Create('Error inesperado al grabar registro');
               End;
// Inicio HPC_201405_CXC
               xSQL := ' Update CXC301 '
                  + '    set FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('FLAGVAR').AsString)+','
                  + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('COMPROMET').AsString)+', '
                  + '        CCFCANCEL = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCFCANCEL').AsString)+','
                  + '        CCPAGORI = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCPAGORI').AsFloat)+','
                  + '        CCPAGLOC = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCPAGLOC').AsFloat)+','
                  + '        CCPAGEXT = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCPAGEXT').AsFloat)+','
                  + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCSALORI').AsFloat)+','
                  + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCSALEXT').AsFloat)+','
                  + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCSALLOC').AsFloat)+','
                  + '        CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCESTADO').AsString)+' '
                  + '  Where CIAID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString)
                  + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString)
                  + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString)
                  + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString);
               Try
                  DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
               Except
                  DMCXC.DCOM1.AppServer.RetornaTransaccion;
                  ShowMessage('No se puede actualizar los datos de la cabecera');
                  exit;
               End;
// Fin HPC_201405_CXC
               DMCXC.cdsCanjes.Next;
            End;
            DMCXC.cdsCanjes.EnableControls;
// Inicio HPC_201405_CXC
{
            DMCXC.cdsMovCxC2Clone.DataRequest('Select CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CCTCAMPR, ' +
               ' CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, ' +
               ' CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, ' +
               ' CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ FROM CXC301 WHERE '
               + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
               + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
               + 'DOCID<>' + QuotedStr(wTDoc));

            DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');                  
}
// Fin HPC_201405_CXC
            DMCXC.cdsMovCxC2.Filtered := True;
            DMCXC.cdsMovCxC2Clone.Filtered := True;
            GrabaDetCanje;

         End;

         DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString,
            DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').Asstring,
            '-', DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').Asfloat, DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);

         DMCXC.cdsCanjes.EnableControls;
// Inicio HPC_201405_CXC
{
         DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
            + 'CIAID=''' + dblcCia.Text + ''' AND '
            + 'DOCID=''' + wTDoc + ''' AND '
            + 'CCSERIE=''' + edtSerie.Text + ''' AND '
            + 'CCNODOC=''' + edtNoDoc.Text + '''');
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                         
}
         xSQL := ' Update CXC301 '
               + '    set CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString)+','
               + '        FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('FLAGVAR').AsString)+','
               + '        CCFCANCEL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCFCANCEL').AsString)+','
               + '        CCSERIE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)+','
               + '        CLIEID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString)+','
               + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('COMPROMET').AsString)+','
               + '        CCPAGORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat)+','
               + '        CCPAGLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat)+','
               + '        CCPAGEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat)+','
               + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat)+','
               + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat)+','
               + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat)+''
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

// Fin HPC_201405_CXC
      End
      Else
      Begin
         DMCXC.cdsMovCxC2.Filtered := False;
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsCanjes.First;

         While Not DMCXC.cdsCanjes.Eof Do
         Begin
            DMCXC.cdsMovCxC2.SetKey;
            DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
            DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
            DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
            DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
            DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
            If DMCXC.cdsMovCxC2.Gotokey Then
            Begin
               DMCXC.cdsMovCxC2.Edit;
               DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
               If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString,
                  DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString,
                  DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString) Then
                  DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO'
               Else
                  DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'NA';
               DMCXC.cdsMovCxC2.Post;                                            
            End;
            DMCXC.cdsCanjes.Next;
         End;
// Inicio HPC_201405_CXC
{
         DMCXC.cdsMovCxC2Clone.DataRequest('Select CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CCTCAMPR, ' +
            ' CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, ' +
            ' CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, ' +
            ' CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ FROM CXC301 WHERE '
            + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
            + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
            + 'DOCID<>' + QuotedStr(wTDoc));

         DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');                      
}
// Fin HPC_201405_CXC
         DMCXC.cdsMovCxC2.Filtered := True;

         DMCXC.cdsMovCxC2Clone.Filtered := False;
         DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsCanjes.First;

         While Not DMCXC.cdsCanjes.Eof Do
         Begin
            DMCXC.cdsMovCxC2Clone.SetKey;
            DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
            If DMCXC.cdsMovCxC2Clone.Gotokey Then
            Begin
               DMCXC.cdsMovCxC2Clone.Edit;
               DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := '.';
               If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString,
                  DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString,
                  DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString) Then
                  DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := 'CO'
               Else
                  DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := 'NA';
               DMCXC.cdsMovCxC2Clone.Post;                                        // 8 Post
            End;
// Inicio HPC_201405_CXC
            xSQL := ' Update CXC301 '
               + '    set FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('FLAGVAR').AsString)+','
               + '        CCSERIE = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('CCSERIE').AsString)+','
               + '        CLIEID = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('CLIEID').AsString)+','
               + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC2Clone.fieldbyname('COMPROMET').AsString)+' '
               + '  Where CIAID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CIAID').AsString)
               + '    and DOCID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString)
               + '    and CCSERIE=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('CCSERIE').AsString)
               + '    and CCNODOC=' + quotedstr(DMCXC.cdsCanjes.fieldbyname('CCNODOC').AsString)
               + '    and CLIEID=' + quotedstr(DMCXC.cdsCanjes.FieldByName('CLIEID').AsString);

            Try
               DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
               DMCXC.DCOM1.AppServer.RetornaTransaccion;
               ShowMessage('No se puede actualizar los datos de la cabecera');
               exit;
            End;
// Fin HPC_201405_CXC
            DMCXC.cdsCanjes.Next;
         End;

         DMCXC.SaldosAuxiliar(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString,
            DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').Asstring,
            '-', DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').Asfloat, DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);
// Inicio HPC_201405_CXC
{
         DMCXC.cdsMovCxC2Clone.DataRequest('Select CIAID,TDIARID,CCANOMES,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CCTCAMPR, ' +
            ' CCMTOORI,CCSALLOC,CCSALEXT,CCNOREG,CCESTADO,TMONID,CCPAGLOC,CCPAGEXT,CCSALORI,FLAGVAR, ' +
            ' CCPAGORI,VEID,CCMTOEXT,CCMTOLOC,CCAAAA,CLIEID,CLIERUC,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI, ' +
            ' CCAASEM,CCAASS,CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANCEL,COMPROMET,UBIID,CCTCAMAJ FROM CXC301 WHERE '
            + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
            + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
            + 'DOCID<>' + QuotedStr(wTDoc));

         DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');                   
}
// Fin HPC_201405_CXC
         DMCXC.cdsMovCxC2Clone.Filtered := True;
      End;

      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'C' Then
      Begin //Docs Pendientes
         DMCXC.cdsMovCxC.Edit;
         DMCXC.cdsMovCxC.FieldByName('FLAGVAR').AsString := '.';
         If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC.FieldByName('DOCID').AsString,
            DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString,
            DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString) Then
            DMCXC.cdsMovCxC.FieldByName('COMPROMET').AsString := 'CO'
         Else
            DMCXC.cdsMovCxC.FieldByName('COMPROMET').AsString := 'NA';

         DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := 0;

         DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;

         DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsMovCxC.Post;
 // Inicio HPC_201405_CXC
{
         DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
            + 'CIAID=''' + dblcCia.Text + ''' AND '
            + 'DOCID=''' + wTDoc + ''' AND '
            + 'CCSERIE=''' + edtSerie.Text + ''' AND '
            + 'CCNODOC=''' + edtNoDoc.Text + '''');

         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
}
         xSQL := ' Update CXC301 '
               + '    set CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString)+','
               + '        FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('FLAGVAR').AsString)+','
               + '        CCSERIE = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)+','
               + '        CLIEID = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString)+','
               + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('COMPROMET').AsString)+','
               + '        CCPAGORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat)+','
               + '        CCPAGLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat)+','
               + '        CCPAGEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat)+','
               + '        CCSALORI = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat)+','
               + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat)+','
               + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat)+''
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
// Fin HPC_201405_CXC
      End;

      If Length(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString) > 0 Then
      Begin
         Try
            sSQL := ' UPDATE LOG314 SET FLAGNC=''P'' WHERE CIAID=' + QuotedStr(dblcCia.text) +
               ' AND NISAID=' + QuotedStr(dblcdNisa.text) + ' AND NISATIP=''INGRESO'' ';
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
         End;
      End;

      If DMCXC.DisplayDescrip('TGE101', 'NOTINGAUT', 'CiaID', dblcCia.Text) = 'S' Then
         GeneraNotaIngresoAlmacen('I');

      EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

      If wActuaPresu Then CalculoNivel;

      ShowMessage('Registro Aceptado... Pulse Intro para continuar');
   Finally
      DMCXC.cdsDetCxC.EnableControls;
      pnlActuali.Visible := false;
      screen.Cursor := crDEFAULT;
   End;

End;

Procedure TFNotasDC.GeneraNotaIngresoAlmacen(cFlag: String);
Var
   xSQL, xMes, cNum, cTDA, cAlm, cUser: String;
Begin

   xMes := Copy(dtpFEmis.Text, 7, 4) + Copy(dtpFEmis.Text, 4, 2);

   xSQL := 'Select TDAID, TDADES, TDADEVFACT From TGE157 '
      + 'Where TDADEVFACT=''S'' ';
   DMCXC.cdsQry15.Close;
   DMCXC.cdsQry15.DataRequest(xSQL);
   DMCXC.cdsQry15.Open;

   cTDA := DMCXC.cdsQry15.FieldByName('TDAID').AsString;

// Inicio HPC_201405_CXC
   xSQL := 'Select CIAID, ALMID, TDAID, LOCID, TINID, NISAUSER '
          +'  From LOG314 '
          +' Where CIAID='+quotedstr(dblcCia.Text)
          +'   and NISAID='+quotedstr(DMCXC.cdsCanjes.FieldByName('DOCID').AsString
                           +DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
                           +DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString)
          +'   and CLIEID='+quotedstr(dblcdClie.Text);
// Fin HPC_201405_CXC
   DMCXC.cdsQry15.Close;
   DMCXC.cdsQry15.DataRequest(xSQL);
   DMCXC.cdsQry15.Open;

   cAlm := DMCXC.cdsQry15.FieldByName('ALMID').AsString;
   cUser := DMCXC.cdsQry15.FieldByName('NISAUSER').AsString;

   If cFlag = 'I' Then
   Begin
   // Inicio HPC_201405_CXC
      xSQL := 'Select max(nvl(NISAID,''0'')) NISAID '
             +'  from LOG314 '
             +' Where CIAID='+quotedstr(dblcCia.Text)
             +'   and TDAID='+quotedstr(cTDA)
             +'   and ALMID='+quotedstr(DMCXC.cdsQry15.FieldByName('ALMID').AsString)
             +'   and NISATIP='+quotedstr('INGRESO')
             +'   and LOCID='+quotedstr(DMCXC.cdsQry15.FieldByName('LOCID').AsString)
             +'   and TINID='+quotedstr(DMCXC.cdsQry15.FieldByName('TINID').AsString);
   // Fin HPC_201405_CXC
      DMCXC.cdsQry15.Close;
      DMCXC.cdsQry15.DataRequest(xSQL);
      DMCXC.cdsQry15.Open;

      cNum := StrZero(IntToStr(DMCXC.cdsQry15.FieldByName('NISAID').AsInteger + 1), 8);

      DMCXC.cdsCanjes.First;
      While Not DMCXC.cdsCanjes.Eof Do
      Begin
      // Inicio HPC_201405_CXC
         xSQL := 'INSERT INTO LOG314(CIAID, LOCID, ALMID, NISAID, TDAID, DOCID, TRIID, NISAFDOC, '
               + '                   NISATIP, NISAFREG, NISAHREG, TINID, NISSIT, CLIEDES, '
               + '                   NISAUSER, NISANOMM, CLIEID, TMONID, NISAOBS, NISANDOC ) '
               + 'select CIAID, LOCID, ALMID, ''' + cNum + ''', ''' + cTDA + ''', ''07'', ''15'', ''' + dtpFEmis.Text + ''', '
               + '       ''INGRESO'', sysdate, SYSDATE, '
               + '       TINID, ''ACEPTADO'', ''' + edtClie.Text + ''', ''' + DMCXC.wUsuario + ''', '
               + '       ''' + xMes + ''', ''' + dblcdClie.Text + ''', TMONID, '
               +         Quotedstr('Nota de Crédito Nro: ' + edtSerie.Text + ' - ' + edtNoDoc.Text + #13
               +                   'Factura/Boleta  Nro: ' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
               +         DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString) + ', '
               +         Quotedstr(edtSerie.Text + '-' + edtNoDoc.Text) + ' '
               + '  From LOG314 '
               + ' Where CIAID=''' + dblcCia.Text + ''' '
               + '   and NISAID=''' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
               +                      DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString + ''' '
               + '   and CLIEID=''' + dblcdClie.Text + ''' '
               + '   and ALMID=''' + cAlm + ''' and NISATIP=''SALIDA''';
         DMCXC.cdsQry15.Close;
         DMCXC.cdsQry15.DataRequest(xSQL);
         DMCXC.cdsQry15.Execute;

         xSQL := 'INSERT INTO LOG315(CIAID, LOCID, TINID, ALMID, TDAID, NISAID, NISATIP, KDXID, '
               + '                   NISSIT, TRIID, ARTID, ARTPCG, KDXCNTG, UNMIDG, GRARID, ARTSPRO, ARTFUC, '
               + '                   TMONID, ARTACTIVO, NISAFREG, NISANDOC, NISAFDOC, KDXUSER, KDXFREG, KDXHREG, '
               + '                   KDXANO, KDXMM, KDXANOMM, ARTDES, FAMID, SFAMID, CUENTA2ID, ARTMORIPCG, '
               + '                   TCAMB, FNSERIE, ARTTOTALG, ARTTOTAL, KDXCNTU ) '
               + 'select CIAID, LOCID, TINID, ALMID, ''' + cTDA + ''', ''' + cNum + ''', ''INGRESO'', '
               + '       KDXID, ''ACEPTADO'', ''15'', ARTID, ARTPCG, KDXCNTG, UNMIDG, GRARID, ARTSPRO, '
               + '       ARTFUC, TMONID, ARTACTIVO, SYSDATE, ' + Quotedstr(edtSerie.Text + '-' + edtNoDoc.Text) + ', '
               + '       ''' + dtpFEmis.Text + ''', ''' + DMCXC.wUsuario + ''', sysdate, SYSDATE, '
               + '       ''' + Copy(xMes, 1, 4) + ''', ''' + Copy(xMes, 5, 2) + ''', ''' + xMes + ''', ARTDES, FAMID, '
               + '       SFAMID, CUENTA2ID, ARTMORIPCG, TCAMB, FNSERIE, ARTTOTALG, ARTTOTAL, 0 '
               + '  From LOG315 '
               + ' Where CIAID=''' + dblcCia.Text + ''' '
               + '   and NISAID=''' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
               +                      DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString + ''' '
               + '   and ALMID=''' + cAlm + ''' and NISATIP=''SALIDA'' AND KDXUSER=''' + cUser + '''';
      // Fin HPC_201405_CXC
         DMCXC.cdsQry15.Close;
         DMCXC.cdsQry15.DataRequest(xSQL);
         DMCXC.cdsQry15.Execute;

      // Inicio HPC_201405_CXC
         xSQL := 'Select ARTID, KDXCNTG '
                +'  FROM LOG315 '
                +' Where CIAID=''' + dblcCia.Text + ''' '
                +'   and NISAID=''' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString
                +                     DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString + ''' '
                +'   and ALMID=''' + cAlm + ''' and NISATIP=''SALIDA'' AND KDXUSER=''' + cUser + '''';
      // Fin HPC_201405_CXC
         DMCXC.cdsQry15.Close;
         DMCXC.cdsQry15.DataRequest(xSQL);
         DMCXC.cdsQry15.Open;

         DMCXC.cdsQry15.First;
         While Not DMCXC.cdsQry15.Eof Do
         Begin
            ActualizaLOG316(cAlm, DMCXC.cdsQry15.FieldByName('ARTID').AsString, DMCXC.cdsQry15.FieldByName('KDXCNTG').AsString, cFlag);
            DMCXC.cdsQry15.Next;
         End;

         DMCXC.cdsMovCxC.Edit;
         DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').Value := cNum;
         DMCXC.cdsMovCxC.Post;                                                   // 10 Post
// Inicio HPC_201405_CXC
//         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
         xSQL := ' Update CXC301 '
               + '    set CCPEDIDO = ' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').Value)+''
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
// Fin HPC_201405_CXC
         DMCXC.cdsCanjes.Next;
      End;

   End
   Else
   Begin
      xSQL := 'Update LOG314 SET NISSIT=''ANULADO'' '
            + ' Where CIAID=''' + dblcCia.Text + ''' '
            + '   and NISAID=''' + DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString + ''' '
            + '   and ALMID=''' + cAlm + ''' and NISATIP=''INGRESO''';
      DMCXC.cdsQry15.Close;
      DMCXC.cdsQry15.DataRequest(xSQL);
      DMCXC.cdsQry15.Execute;

      xSQL := 'Update LOG315 SET NISSIT=''ANULADO'' '
            + ' Where CIAID=''' + dblcCia.Text + ''' '
            + '   and NISAID=''' + DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString + ''' '
            + '   and ALMID=''' + cAlm + ''' and NISATIP=''INGRESO''';
      DMCXC.cdsQry15.Close;
      DMCXC.cdsQry15.DataRequest(xSQL);
      DMCXC.cdsQry15.Execute;

      xSQL := 'Select ARTID, KDXCNTG FROM LOG315 '
            + ' Where CIAID=''' + dblcCia.Text + ''' '
            + '   and NISAID=''' + DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString + ''' '
            + '   and ALMID=''' + cAlm + ''' and NISATIP=''INGRESO''';
      DMCXC.cdsQry15.Close;
      DMCXC.cdsQry15.DataRequest(xSQL);
      DMCXC.cdsQry15.Open;

      DMCXC.cdsQry15.First;
      While Not DMCXC.cdsQry15.Eof Do
      Begin
         ActualizaLOG316(cAlm, DMCXC.cdsQry15.FieldByName('ARTID').AsString, DMCXC.cdsQry15.FieldByName('KDXCNTG').AsString, cFlag);
         DMCXC.cdsQry15.Next;
      End;

   End;
End;

Procedure TFNotasDC.ActualizaLOG316(cAlm, xxArticulo, xxCant, cFlagIS: String);
Var
   Y, M, D: word;
   xFiltro, xSQL, Ano, Mes2, Mes, AnoMes, xFecha, cSigno: String;
   i: integer;
Begin
   DecodeDate(dtpFEmis.date, Y, M, D);
   Ano := IntToStr(Y);
   Mes := StrZero(IntToStr(M), 2);
   Mes2 := StrZero(IntToStr(M + 1), 2);
   AnoMes := Ano + Mes;

   If cFlagIS = 'I' Then
      cSigno := '+'
   Else
      cSigno := '-';

// Inicio HPC_201405_CXC
   xSQL := 'UPDATE LOG316 A '
         + '   SET USUARIO=' + QuotedStr('A' + DMCXC.wUsuario) + ', FREG=' + DMCXC.wRepFecServi + ', HREG=' + DMCXC.wRepFecServi + ', '
         + '       STKSACTG=' + DMCXC.wReplacCeros + '(STKSACTG,0)' + cSigno + '(' + xxCant + '), '
         + '       STKMACTG=' + DMCXC.wReplacCeros + '(STKMACTG,0) ' + cSigno
         + '                   (SELECT ' + DMCXC.wReplacCeros + '(ARTCPROG,0) FROM TGE205 C '
         + '                     WHERE A.CIAID=C.CIAID AND A.TINID=C.TINID AND A.ARTID=C.ARTID)*(' + xxCant + '), '
         + '       STKISG' + MES + '=' + DMCXC.wReplacCeros + '(STKISG' + MES + ',0)' + cSigno + '(' + xxCant + '), '
         + '       STKIMG' + MES + '=' + DMCXC.wReplacCeros + '(STKIMG' + MES + ',0) ' + cSigno
         + '               ( SELECT ' + DMCXC.wReplacCeros + '(ARTCPROG,0) FROM TGE205 C '
         + '                  WHERE A.CIAID=C.CIAID AND A.TINID=C.TINID AND A.ARTID=C.ARTID)*(' + xxCant + ')';
// Fin HPC_201405_CXC
   If Mes2 <> '13' Then
   Begin
      For i := StrToInt(Mes2) To 12 Do
      Begin
         Mes2 := StrZero(IntToStr(i), 2);
         xSQL := xSQL
            + ',STKTSG' + MES2 + '=' + DMCXC.wReplacCeros + '(STKTSG' + MES + ',0)+' + DMCXC.wReplacCeros + '(STKISG' + MES + ',0)-' + DMCXC.wReplacCeros + '(STKSSG' + MES + ',0)' + cSigno + '(' + xxCant + ')'
            + ',STKTMG' + MES2 + '=' + DMCXC.wReplacCeros + '(STKTMG' + MES + ',0)+' + DMCXC.wReplacCeros + '(STKIMG' + MES + ',0)-' + DMCXC.wReplacCeros + '(STKSMG' + MES + ',0)' + cSigno + '(SELECT ' + DMCXC.wReplacCeros + '(ARTCPROG,0) FROM TGE205 C '
            + 'WHERE A.CIAID =C.CIAID AND A.TINID=C.TINID AND A.ARTID =C.ARTID)*(' + xxCant + ')';
      End;
   End;
   xSQL := xSQL
      + ' WHERE A.CIAID=' + Quotedstr(dblcCia.Text)
      + ' AND A.STKANO=' + Quotedstr(Ano)
      + ' AND A.ALMID=' + Quotedstr(cAlm)
      + ' AND A.ARTID=' + Quotedstr(xxArticulo);

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   xFecha := FormatDateTime(DMCXC.wformatfecha, dtpFEmis.date);

   xSQL := 'UPDATE TGE205 A SET CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepFecServi + ', '
      + 'ARTCNTG=' + DMCXC.wReplacCeros + '(ARTCNTG,0)' + cSigno + '(' + xxCant + '), '
      + 'ARTMNTG=' + DMCXC.wReplacCeros + '(ARTCPROG,0)*(' + DMCXC.wReplacCeros + '(ARTCNTG,0)' + cSigno + '(' + xxCant + ') ), '
      + 'ARTFUMV=' + QuotedStr(xFecha)
      + 'WHERE A.CIAID=' + Quotedstr(dblcCia.Text)
      + ' AND a.ARTID=' + Quotedstr(xxArticulo);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;
End;

Procedure TFNotasDC.GrabaDetCanje;
var xSQL: String;										  // HPC_201405_CXC
Begin
   Filtracds(DMCXC.cdsDetCanje, 'Select * from CXC305 Where CIAID=''''');

   DMCXC.cdsDetCanje.First;
   While (Not DMCXC.cdsDetCanje.Eof) And (DMCXC.cdsDetCanje.RecordCount > 0) Do
      DMCXC.cdsDetCanje.Delete;

   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsDetCanje.Insert;
      DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
      DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCCANJE').AsString := DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime;
      DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.cdsCanjes.FieldByName('CCUSER').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCFREG').Value := DMCXC.cdsCanjes.FieldByName('CCFREG').AsDatetime;
      DMCXC.cdsDetCanje.FieldByName('DCCHREG').Value := DMCXC.cdsCanjes.FieldByName('CCHREG').Value;
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsCanjes.FieldByName('CCMM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsCanjes.FieldByName('CCDD').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsCanjes.FieldByName('CCTRI').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsCanjes.FieldByName('CCSEM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsCanjes.FieldByName('CCSS').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsCanjes.FieldByName('CCAASS').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := StrToFloat(dbeTCambio.text);
// Inicio HPC_201405_CXC
 //   DMCXC.cdsPost(DMCXC.cdsDetCanje);                                          // 11 cdsPost
      DMCXC.cdsDetCanje.Post;

      xSQL := 'Insert into CXC305(CIAID, CLIEID, CLIERUC, DOCID, CCSERIE, CCNODOC, '
             +'                   DCCANOMM, CCNOREG, TCANJEID, CCCANJE, CCFCANJE, DOCID2, '
             +'                   CCSERIE2, CCNODOC2, TMONID, DCCUSER, DCCFREG, DCCHREG, '
             +'                   DCCAAAA, DCCMM, DCCDD, DCCTRI, DCCSEM, DCCSS, DCCAATRI, '
             +'                   DCCAASEM, DCCAASS, DCCMTOORI, DCCMTOLOC, DCCMTOEXT, DCCTCAMB) '
             +'values('
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CIAID').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DOCID').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CCCANJE').AsString)+','
             +         quotedstr(datetostr(DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDatetime))+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('TMONID').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString)+','
             +         quotedstr(datetostr(DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsdateTime))+','
             +         quotedstr(datetostr(DMCXC.cdsDetCanje.FieldByName('DCCHREG').Asdatetime))+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString)+','
             +         quotedstr(DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString)+','
             +         floattostr(DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat)+','
             +         floattostr(DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat)+','
             +         floattostr(DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat)+','
             +         floattostr(DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat)+' )';
{
      xSQL := ' Insert into CXC304( ciaid, ccanomm, tdiarid, ccnoreg, clieid, clieruc, docid, ccserie, ccnodoc, DCCANOMM, TCANJEID, '
            + ' CCCANJE, CCFCANJE, DOCID2, CCSERIE2, CCNODOC2, TMONID, DCCUSER, DCCFREG, DCCHREG, dccaaaa, dccmm, dccdd, dcctri, dccsem, dccss, dccaatri, dccaasem, dccaass, DCCMTOORI, DCCMTOLOC, DCCMTOEXT, DCCTCAMB ) '
            + ' Values( '+quotedstr(DMCXC.cdsDetCanje.fieldbyname('CIAID').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('DCCANOMM').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('tdiarid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('ccnoreg').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('clieid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('clieruc').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('docid').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('ccserie').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('ccnodoc').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('DCCANOMM').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('TCANJEID').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('CCCANJE').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('CCFCANJE').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('DOCID2').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('CCSERIE2').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('CCNODOC2').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('TMONID').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('DCCUSER').AsString)+', '
            + '           trunc(sysdate), '
            + '           sysdate, '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccaaaa').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccmm').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccdd').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dcctri').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccsem').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccss').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccaatri').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccaasem').AsString)+', '
            +             quotedstr(DMCXC.cdsDetCanje.fieldbyname('dccaass').AsString)+', '
            +             floattostr(DMCXC.cdsDetCanje.fieldbyname('DCCMTOORI').AsFloat)+','
            +             floattostr(DMCXC.cdsDetCanje.fieldbyname('DCCMTOLOC').AsFloat)+','
            +             floattostr(DMCXC.cdsDetCanje.fieldbyname('DCCMTOEXT').AsFloat)+','
            +             floattostr(DMCXC.cdsDetCanje.fieldbyname('DCCTCAMB').AsFloat)+' )';
}
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('No se pudo insertar el detalle de la nota de crédito');
         exit;
      End;

      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsDetCanje.First;
   DMCXC.cdsCanjes.EnableControls;

//   DMCXC.AplicaDatos(DMCXC.cdsDetCanje, 'DetCanje');                              
// Fin HPC_201405_CXC

End;

//////  F U N C I O N E S   //////

Procedure TFNotasDC.CamposKEnabled(PVal: Boolean);
Begin
   dblcCia.Enabled := PVal;
   dblcdClie.Enabled := PVal;
   dblcdClieRuc.Enabled := PVal;
   edtSerie.Enabled := PVal;
   edtNoDoc.Enabled := PVal;
   dtpFComp.Enabled := PVal;
   dbeNoReg.Enabled := PVal;
End;

Function TFNotasDC.VerificaTotal: Boolean;
Var
   xSQL: String;
   wTDev22: Double;
Begin
   wTDev22 := 0;
   xSQL := ' Select * From CXC302' +
      ' Where CIAID=' + '''' + dblcCia.Text + '''' +
      ' and TDIARID=' + '''' + wTDiar + '''' +
      ' and CCNOREG=' + '''' + dbeNoReg.Text + '''' +
      ' and CCANOMES=' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' +
      ' and TIPDET=' + '''' + 'TO' + '''';
   DMCXC.cdsDetCxC2.Close;
   DMCXC.cdsDetCxC2.DataRequest(xSQL);
   DMCXC.cdsDetCXC2.Open;
   DMCXC.cdsDetCXC2.First;
   If DMCXC.cdsDetCXC2.RecordCount = 0 Then
      Raise exception.Create('No hay documentos para Totalizar')
   Else
   Begin
      While Not DMCXC.cdsDetCXC2.Eof Do
      Begin
         wTdev22 := wTdev22 + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCXC2.Next;
      End;
      If FRound(wTDev2, 15, 2) <> FRound(wTdev22, 15, 2) Then
         result := False
      Else
         result := True;
   End;
End;

Function TFNotasDC.CuadraDH: Boolean;
Var
   wTotD, wTotH: Double;
   xDife, xdife1: Double;
Begin
   With DMCXC Do
   Begin
      wTotD := 0;
      wTotH := 0;
      cdsDetCxC.DisableControls;
      cdsDetCxC.First;
      While Not cdsDetCxC.Eof Do
      Begin
         If cdsDetCxC.FieldByName('CCDH').Value = 'D' Then
            wTotD := wTotD + cdsDetCxC.FieldByName('CCMTOLOC').AsFloat
         Else
            wTotH := wTotH + cdsDetCxC.FieldByName('CCMTOLOC').AsFloat;
         cdsDetCxC.Next;
      End;
      cdsDetCxC.First;
      cdsDetCxC.EnableControls;
   //para que cuadre cuado la <> es <= 0.02
      xdife1 := FRound(wTotH, 15, 2) - FRound(wTotD, 15, 2);
      If FRound(wTotD, 15, 2) > FRound(wTotH, 15, 2) Then
         xdife := FRound(wTotD, 15, 2) - FRound(wTotH, 15, 2);
      If FRound(wTotH, 15, 2) > FRound(wTotD, 15, 2) Then
         xdife := FRound(wTotH, 15, 2) - FRound(wTotD, 15, 2);
      If FRound(xdife, 15, 2) <= FRound(0.02, 15, 2) Then
      Begin
         If FRound(wTotD, 15, 2) > FRound(wTotH, 15, 2) Then
            wTotH := FRound(wTotH, 15, 2) + xdife;
         If FRound(wTotH, 15, 2) > FRound(wTotD, 15, 2) Then
            wTotD := FRound(wTotD, 15, 2) + xdife;
         DMCXC.cdsDetCxC.First;
         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(cdsDetCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2) + xdife1;
         DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DateS;
         DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := TimeS;
// Inicio HPC_201405_CXC
   //    DMCXC.cdsPost(DMCXC.cdsDetCxC);                                          
         DMCXC.cdsDetCxC.Post;

//         DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DETCXC');
// Fin HPC_201405_CXC
      End;
      If FRound(wTotD, 15, 2) = FRound(wTotH, 15, 2) Then
         result := True
      Else
         result := False;
   End;
End;
//////  F U N C I O N E S   //////

Procedure TFNotasDC.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
   Tmp: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   Tmp := StrTmp;
   dblcdTipoOpera.Enabled := False;
   If DMCXC.cdsMovCxC.state In [dsInsert, dsedit] Then
      DMCXC.cdsMovCxC.FieldByName('TMONID').AsString := trim(DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);

   If trim(dblcTMon.Text) = '' Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      StrTmp := Tmp;
      exit;
   End;

   Begin
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + ''''
         + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR,TMONDES', xWhere, 'TMONABR');
      xdesmon := DMCXC.cdsQry.FieldByName('TMONDES').AsString;
      wSimbMn := DMCXC.cdsQry.FieldByName('TMONABR').AsString;
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

         xWhere := 'OPCMENU=''P'' AND DOCID=' + QuotedStr(DMCXC.wsNCre) + ' AND TMONID=' + QuotedStr(dblcTMon.text)
            + ' AND TVTAID=' + QuotedStr(xSector) + ' AND CIAID=' + QuotedStr(dblcCia.text);
         DMCXC.FiltraTabla(DMCXC.cdscptoCab, 'CXC208', 'CPTOCAB', xWhere);

         If DMCXC.wModo = 'A' Then
            If DMCXC.cdscptoCab.RecordCount = 1 Then
            Begin
               DMCXC.cdscptoCab.First;
               dblcdTipoOpera.text := DMCXC.cdscptoCab.FieldByName('CPTOCAB').AsString;
            End;
         dblcdTipoOpera.Enabled := True;
      End;
   End;

End;

Procedure TFNotasDC.FormClose(Sender: TObject; Var Action: TCloseAction);
var mnum : Integer;												 // HPC_201405_CXC
    xSQL : String;												 // HPC_201405_CXC
Begin
   DMCXC.cdsTDoc.Filtered := True;

   DMCXC.cdsDetCxC.CancelUpdates;
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;

   If DMCXC.wModo = 'A' Then
   Begin
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'X') Or
         (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T') Then
      Begin
          If length(dbeNoReg.Text) > 0 then
          Begin
            mnum :=  (StrToInt(dbeNoReg.text) - 1);
            DMCXC.ActualizaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, mnum);
          End;
// Inicio HPC_201405_CXC
       // DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
         xSQL := ' Delete CXC301 '
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
         DMCXC.cdsMovCxC.Delete;
// Fin HPC_201405_CXC
      End;
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') Then
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

   DMCXC.cdsMovCxC.ReadOnly := False;
   DMCXC.cdsCanjes.ReadOnly := False;
   DMCXC.cdsMovCxC2.ReadOnly := False;
   DMCXC.cdsDetCxC.ReadOnly := False;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := caFree;
End;

Procedure TFNotasDC.bbtnRegresaClick(Sender: TObject);
Begin
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
End;

Procedure TFNotasDC.dbeTCambioExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;
   If length(dbeTCambio.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Cambio');
      dbeTCambio.SetFocus;
      exit;
   End;
   dbeTCambio.Text := floattostr(strtofloat(dbeTCambio.Text));
   If strtofloat(dbeTCambio.Text) < 0 Then
   Begin
      ShowMessage('Tipo de Cambio debe ser Mayor a 0');
      dbeTCambio.Text := '';
      dbeTCambio.SetFocus;
      exit;
   End;
End;

Procedure TFNotasDC.edtSerieXExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;
   If length(edtSerie.Text) = 0 Then
   Begin
      ShowMessage('Falta No.Serie');
      edtSerie.SetFocus;
   End;
End;

Procedure TFNotasDC.edtSerieXKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then edtNoDoc.setfocus;
End;

Procedure TFNotasDC.dbeNoRegExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If (bbtnBorra.Focused) Or (dtpFComp.Focused) Then Exit;

   dbeNoReg.Text := dbeNoReg.Text;
   dbeNoReg.Text := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);

   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, edtSerie.Text, edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('No.de Documento Duplicado');
   End;
   If DMCXC.BuscaCxCReg(dblcCia.Text, wTDiar, xAAMM, dbeNoReg.Text) Then
   Begin
      dbeNoReg.SetFocus;
      Raise Exception.Create('No.de Registro Duplicado');
   End;

   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := dbeNoReg.Text;
   dbeNoReg.Text := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, StrToInt(dbeNoReg.Text));
   dbeNoReg.Text := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString := wTDiar;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := edtSerie.Text;
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';

   FiltraGrids;

End;

Procedure TFNotasDC.dblcdClieKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dblcdClieRuc.setfocus;
End;

Procedure TFNotasDC.dblcdClieRucKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then edtSerie.setfocus;
End;

Procedure TFNotasDC.edtNoDocKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dtpFComp.setfocus;
End;

Procedure TFNotasDC.dtpFCompKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dbeNoReg.setfocus;
End;

Procedure TFNotasDC.dbeLoteKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dblcTMon.setfocus;
End;

Procedure TFNotasDC.dblcTMonKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dbeTCambio.setfocus;
End;

Procedure TFNotasDC.btnActRegClick(Sender: TObject);
Begin
   pnlDetCxC.Enabled := False;
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   DMCXC.cdsDetCxC.Insert;
   dblcTipReg.Enabled := True;
   dblcTipReg.Text := '';
   dblcTipReg.SetFocus;
End;

Procedure TFNotasDC.bbtnRegOkClick(Sender: TObject);
Var
   xWhere: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdCnpEgr.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdCnpEgr.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   //
   If length(DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Concepto');
   End;
   // Presupuesto
   xWhere := 'CuentaId=' + '''' + DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString + '''';
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
   Begin
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
// Inicio HPC_201405_CXC
   // DMCXC.cdsPost(DMCXC.cdsDetCxC);                                           
      DMCXC.cdsDetCxC.Post;
// Fin HPC_201405_CXC
      DMCXC.cdsDetCxC.Insert;
      dblcTipReg.Text := '';
      dblcTipReg.Enabled := True;
      dblcTipReg.SetFocus;
   End
   Else
   Begin
// Inicio HPC_201405_CXC
   // DMCXC.cdsPost(DMCXC.cdsDetCxC);                                            
      DMCXC.cdsDetCxC.Post;
// Fin HPC_201405_CXC
      pnlRegistro.Visible := False;
      pnlDetCxC.Enabled := True;
   End;
End;

Procedure TFNotasDC.bbtnRegCancClick(Sender: TObject);
Begin
   If DMCXC.cdsDetCxC.State = dsInsert Then
      DMCXC.cdsDetCxC.Delete
   Else
   Begin
      DMCXC.cdsDetCxC.Cancel;
   End;
   pnlRegistro.Visible := False;
   pnlDetCxC.Enabled := True;
   dbgDetCxC.SetFocus;
End;

Procedure TFNotasDC.dbeDHExit(Sender: TObject);
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      If (dbeDH.Text <> 'D') And (dbeDH.Text <> 'H') Then
      Begin
         ShowMessage('Digite sólo D(para Debe) o H(para Haber)');
         DMCXC.cdsDetCxC.FieldByName('CCDH').Value := '';
         dbeDH.SetFocus;
      End;
   End;
End;

Procedure TFNotasDC.dbeImporteExit(Sender: TObject);
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      If length(dbeImporte.Text) = 0 Then
         dbeImporte.Text := '0';
      If strtofloat(dbeImporte.Text) <= 0 Then
      Begin
         ShowMessage('Importe debe ser mayor que 0');
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value := 0;
         dbeImporte.SetFocus;
      End;
   End;
End;

Procedure TFNotasDC.dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsDetCxC.Delete;
      End;
   End;
End;

Procedure TFNotasDC.dbgDetCxCDblClick(Sender: TObject);
Begin
   If btnActReg.Enabled Then
   Begin
      pnlDetCxC.Enabled := False;
      pnlRegistro.Visible := True;
      pnlRegistro.SetFocus;
      DMCXC.cdsDetCxC.Edit;
      dblcTipReg.Text := DMCXC.cdsDetCxC.FieldByName('TREGID').AsString;
      dblcTipRegExit(Sender);
      dblcTipReg.Enabled := False;
      dblcdCnPEgr.SetFocus;
   End;
End;

Procedure TFNotasDC.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If FNotasDC.activecontrol Is twwdbgrid Then
      Exit;
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFNotasDC.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
// Inicio HPC_201405_CXC
   bbtnST.Visible := True;
   cbDisenoRep.Visible := True;
// Fin HPC_201405_CXC
End;

Procedure TFNotasDC.dbgDocCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDC.dbgDocCanjeEndDrag(Sender, Target: TObject; X, Y: Integer);
Begin
   If Target = dbgpendientes Then
   Begin
      DMCXC.cdsMovCxC2Clone.Filtered := False;
      DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
      DMCXC.cdsMovCxC2Clone.SetKey;
      DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2Clone.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2Clone.Edit;
         DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').Value := '.';
         If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString,
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString,
            DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString) Then
            DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := 'CO'
         Else
            DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString := 'NA';

         DMCXC.cdsMovCxC2Clone.Post;                                           

         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Delete;
         End;
      End;
      DMCXC.cdsMovCxC2Clone.Filtered := True;

      DMCXC.cdsMovCxC2.Filtered := False;
      DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
      DMCXC.cdsMovCxC2.SetKey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString,
            DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString,
            DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString) Then
            DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO'
         Else
            DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'NA';

         DMCXC.cdsMovCxC2.Post;                                                  
         DMCXC.cdsCanjes.Delete;
      End;

      DMCXC.cdsMovCxC2.Filtered := True;

      dbgPendientes.RefreshDisplay;
      dbgDocCanje.RefreshDisplay;
   End;
End;

Procedure TFNotasDC.dbgDocCanjeKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      dbgDocCanjeColExit(Sender);
   End;
End;

Procedure TFNotasDC.dbgDocCanjeMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFNotasDC.dbgPendientesDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDC.dbgPendientesEndDrag(Sender, Target: TObject; X,
   Y: Integer);
var xSQL : String;												   // HPC_201405_CXC

Begin
   If Target = dbgDocCanje Then
   Begin
      DMCXC.cdsCanjes.SetKey;
      DMCXC.cdsCanjes.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
      DMCXC.cdsCanjes.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
      DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
      DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;
      fg_TCDocOrigen;
      If Not DMCXC.cdsCanjes.GotoKey Then
      Begin
         DMCXC.cdsCanjes.Insert;
         If rgDoc.itemindex = 0 Then
            DMCXC.cdsCanjes.FieldByName('FLAGVAR').AsString := '.'
         Else
            DMCXC.cdsCanjes.FieldByName('FLAGVAR').AsString := 'C';

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
         DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString := 'NC';
         DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString := wCje;
         DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime := dtpFComp.Date; // modif.
         DMCXC.cdsCanjes.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString; // T.mon del doc - no modif.
         DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat := strtofloat(dbeTCambio.Text); // modif.
         DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCTCAMAJ').AsFloat; //DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CJEANTMN').Value := 0;
         DMCXC.cdsCanjes.FieldByName('CJEANTME').Value := 0;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value := 0; // modificable
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value := 0; // modif.
         DMCXC.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsCanjes.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
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
         DMCXC.cdsCanjes.FieldByName('CPTOID').AsString := DMCXC.cdsMovCxC2.FieldByName('CCPTOTOT').AsString;
         DMCXC.cdsCanjes.FieldByName('CUENTAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CTATOTAL').AsString;
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFEMIS').AsDateTime;
         DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFVCMTO').AsDateTime;
         DMCXC.cdsCanjes.Post;                                                  

         DMCXC.cdsCanjesClone.Insert;
         If rgDoc.itemindex = 0 Then
            DMCXC.cdsCanjesClone.FieldByName('FLAGVAR').AsString := '.'
         Else
            DMCXC.cdsCanjesClone.FieldByName('FLAGVAR').AsString := 'C';

         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAAAA').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAAAA').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CLIERUC').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIERUC').AsString;
         DMCXC.cdsCanjesClone.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TCANJEID').AsString := 'NC';
         DMCXC.cdsCanjesClone.FieldByName('CCCANJE').AsString := wCje;
         DMCXC.cdsCanjesClone.FieldByName('CCFCANJE').AsDatetime := dtpFComp.Date; // modif.
         DMCXC.cdsCanjesClone.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString; // T.mon del doc - no modif.
         DMCXC.cdsCanjesClone.FieldByName('CCTCAMCJE').AsFloat := strtofloat(dbeTCambio.Text); // modif.
         DMCXC.cdsCanjesClone.FieldByName('CCTCAMDOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCTCAMAJ').AsFloat; //DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CJEANTMN').Value := 0;
         DMCXC.cdsCanjesClone.FieldByName('CJEANTME').Value := 0;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').Value := 0; // modificable
         DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').Value := 0; // modif.
         DMCXC.cdsCanjesClone.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsCanjesClone.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
         DMCXC.cdsCanjesClone.FieldByName('CCFREG').AsDateTime := DMCXC.dateS;
         DMCXC.cdsCanjesClone.FieldByName('CCHREG').AsDateTime := DMCXC.timeS;
         DMCXC.cdsCanjesClone.FieldByName('CCMM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCDD').AsString := DMCXC.cdsMovCxC2.FieldByName('CCDD').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCTRI').AsString := DMCXC.cdsMovCxC2.FieldByName('CCTRI').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSEM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSEM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCSS').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSS').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAATRI').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAATRI').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAASEM').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAASEM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCAASS').AsString := DMCXC.cdsMovCxC2.FieldByName('CCAASS').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CPTOID').AsString := DMCXC.cdsMovCxC2.FieldByName('CCPTOTOT').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CUENTAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CTATOTAL').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCFEMIS').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFEMIS').AsFloat;
         DMCXC.cdsCanjesClone.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFVCMTO').AsFloat;
         DMCXC.cdsCanjesClone.Post;                                              
// Inicio HPC_201405_CXC
         xSQL  := ' Insert into CXC304( ciaid, TDIARID, CCNOREG, CCANOMM, CLIEID, CLIERUC, docid, ccserie, ccnodoc, TCANJEID, CCCANJE, CCFCANJE, tmonid, CCTCAMCJE,CCTCAMDOC,CCSALORI,CCSALLOC,CCSALEXT,CJEANTMN,CJEANTME,ccmtoori, '
                + ' ccmtoloc, ccmtoext, ccestado,ccuser, ccfreg,cchreg, CCAAAA,ccmm, ccdd, cctri, ccsem, ccss, ccaatri, ccaasem, ccaass, CPTOID, CUENTAID, FLAGVAR, CCFEMIS, CCFVCMTO ) '
                + ' Values( '+quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CIAID').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('TDIARID').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CCNOREG').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CCANOMM').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CLIEID').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CLIERUC').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('docid').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccserie').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccnodoc').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('TCANJEID').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CCCANJE').AsString)+', '
                +             quotedstr(datetostr(DMCXC.cdsCanjesClone.fieldbyname('CCFCANJE').AsDateTime))+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('tmonid').AsString)+', '
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CCTCAMCJE').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CCTCAMDOC').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CCSALORI').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CCSALLOC').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CCSALEXT').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CJEANTMN').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('CJEANTME').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('ccmtoori').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('ccmtoloc').AsFloat)+','
                +             floattostr(DMCXC.cdsCanjesClone.fieldbyname('ccmtoext').AsFloat)+','
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccestado').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccuser').AsString)+', '
                + '           trunc(sysdate),  '
                + '           sysdate, '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccaaaa').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccmm').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccdd').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('cctri').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccsem').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccss').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccaatri').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccaasem').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('ccaass').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('CPTOID').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('cuentaid').AsString)+', '
                +             quotedstr(DMCXC.cdsCanjesClone.fieldbyname('FLAGVAR').AsString)+', '
                +             quotedstr(datetostr(DMCXC.cdsCanjesClone.fieldbyname('CCFEMIS').AsDateTime))+', '
                +             quotedstr(datetostr(DMCXC.cdsCanjesClone.fieldbyname('CCFVCMTO').AsDateTime))+' )';
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('No se pudo insertar el detalle de la nota de crédito');
            exit;
         End;
// Fin HPC_201405_CXC
         DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';

         DMCXC.cdsMovCxC2Clone.Setkey;
         DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString := DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;
         If DMCXC.cdsMovCxC2Clone.Gotokey Then
         Begin
            DMCXC.cdsMovCxC2Clone.Edit;
            DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString := 'XX';
// Inicio HPC_201405_CXC
            xSQL := ' Update CXC301 '
                + '      set FLAGVAR = ' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').AsString)+' '
                + '    Where CIAID=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString)
                + '      and TDIARID=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString)
                + '      and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString)
                + '      and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString);
            Try
               DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
               DMCXC.DCOM1.AppServer.RetornaTransaccion;
               ShowMessage('No se puede actualizar los datos de la cabecera');
               exit;
            End;
// Fin HPC_201405_CXC
            DMCXC.cdsMovCxC2Clone.Post;                                          // 15 Post

         End;

         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';

         DMCXC.cdsMovCxC2.Post;                                                  

      End;

      dbgDocCanje.RefreshDisplay;
   End;
End;

Procedure TFNotasDC.ModificaMontos;
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
         If rgDoc.itemindex = 0 Then
         Begin
            If (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat) Then
               ShowMessage(' Error :  Monto excede a Saldo Actual ')
            Else
               ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');
         End
         Else
         Begin

         End;

         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CJEANTMN').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
// Inicio HPC_201405_CXC
   //    DMCXC.cdsPost(DMCXC.cdsCanjes);                                        
         DMCXC.cdsCanjes.Post;
// Fin HPC_201405_CXC
         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
// Inicio HPC_201405_CXC
      //    DMCXC.cdsPost(DMCXC.cdsCanjesClone);                                  
            DMCXC.cdsCanjesClone.Post;
// Fin HPC_201405_CXC
         End;

         dbgDocCanje.SelectedIndex := 8; // debería ser 9 pero no hace caso
         dbgDocCanje.SelectedIndex := 9; // debería ser 9 pero no hace caso
      End
      Else
      Begin
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
// Inicio HPC_201405_CXC
    //   DMCXC.cdsPost(DMCXC.cdsCanjes);                                         
         DMCXC.cdsCanjes.Post;
// Fin HPC_201405_CXC
         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;

         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
// Inicio HPC_201405_CXC
    //      DMCXC.cdsPost(DMCXC.cdsCanjesClone);                               
            DMCXC.cdsCanjesClone.Post;
// Fin HPC_201405_CXC
         End;
         bbtnSumatClick(Self);
      End;
   End;

   If dbgDocCanje.SelectedField.FieldName = 'CCMTOEXT' Then
   Begin
      If (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat) Or
         (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat < 0) Then
      Begin
         If (rgDoc.itemindex = 0) Then
         Begin
            If (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat) And (rgDoc.itemindex = 0) Then
               ShowMessage('Monto excede a Saldo Actual')
            Else
               ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');
         End
         Else
         Begin

         End;

         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
// Inicio HPC_201405_CXC
     //  DMCXC.cdsPost(DMCXC.cdsCanjes);                                       
         DMCXC.cdsCanjes.Post;
// Fin HPC_201405_CXC
         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;

         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
// Inicio HPC_201405_CXC
      //    DMCXC.cdsPost(DMCXC.cdsCanjesClone);                                 
            DMCXC.cdsCanjesClone.Post;
// Fin HPC_201405_CXC
         End;

         dbgDocCanje.SelectedIndex := 9; // debería ser 9 pero no hace caso
         dbgDocCanje.SelectedIndex := 10; // debería ser 9 pero no hace caso
      End
      Else
      Begin
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
// Inicio HPC_201405_CXC
//       DMCXC.cdsPost(DMCXC.cdsCanjes);                                       
         DMCXC.cdsCanjes.Post;
// Fin HPC_201405_CXC
         DMCXC.cdsCanjesClone.Setkey;
         DMCXC.cdsCanjesClone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
         DMCXC.cdsCanjesClone.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;

         If DMCXC.cdsCanjesClone.Gotokey Then
         Begin
            DMCXC.cdsCanjesClone.Edit;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
// Inicio HPC_201405_CXC
   //       DMCXC.cdsPost(DMCXC.cdsCanjesClone);                             
            DMCXC.cdsCanjesClone.Post;
// Fin HPC_201405_CXC
         End;

         bbtnSumatClick(Self);
      End;
   End;
End;

Procedure TFNotasDC.dbgDocCanjeColExit(Sender: TObject);
Begin
   ModificaMontos;
End;

Procedure TFNotasDC.pc1Changing(Sender: TObject; Var AllowChange: Boolean);
Begin
   If pc1.ActivePage = ts1 Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount = 0 Then
         bbtnGen302.Enabled := True;
      If rgDoc.itemindex = 0 Then
      Begin
         If dblcTMon.Text = DMCXC.wTMonExt Then
            edtFinal.Text := ' LA NOTA DE CREDITO ES POR ' + dbgDocCanje.ColumnByName('CCMtoExt').FooterValue + ' ' + edtTmon.Text
         Else
            edtFinal.Text := ' LA NOTA DE CREDITO ES POR ' + dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue + ' ' + edtTmon.Text;
      End
      Else
      Begin
         edtFinal.Text := ' LA NOTA DE CREDITO ES POR ' + FloatToStrF(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2) + ' ' + edtTmon.Text;
      End;
   End
   Else
   Begin
      bbtnGen302.Enabled := False;
      edtFinal.Text := '';
   End;
End;

Procedure TFNotasDC.Z2bbtnImprimeClick(Sender: TObject);
Var
   Comprobante: RCabComprobante;
Begin
   With Comprobante Do
   Begin
      CIAID := dblcCia.Text;
      CiaDes := edtCia.Text;
      TDIARID := DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString; // Default(x ahora)
      Diario := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDiarID', TDIARID);
      Periodo := copy(datetostr(dtpFComp.date), 7, 4)
         + copy(datetostr(dtpFComp.date), 4, 2);
      NoComp := dbeNoReg.Text;
      TipoDoc := DMCXC.DisplayDescrip('TGE110', 'DOCDES', 'DOCID', wTDoc);
      NoDoc := edtNoDoc.Text;
      TipoCamb := dbeTCambio.Text;
      Proveedor := edtClie.Text;
      Lote := '';
      Moneda := edtTMon.text;
      Glosa := '';
      //nuevos
      Banco := '';
      Cuenta := '';
      NumChq := '';
   End;
   FRegistros.ImprimirComprobante(Comprobante);
End;

Procedure TFNotasDC.dtpFEmisEnter(Sender: TObject);
Begin
   dtpFEmis.Enabled := True;
End;

Procedure TFNotasDC.dtpFEmisExit(Sender: TObject);
Var
   wLote, wMes, xWhere: String;
   Year, Month, Day: Word;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If dtpFEmis.date = 0 Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Fecha ');
   End;

   If Not DMCXC.VerificaPeriodoVentas(dblcCia.text, DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime) Then
   Begin
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Not DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Fecha no está dentro del rango definido de Operatividad ');
   End;

   xxTCambio := 0;
   xWhere := 'TMonId=' + '''' + DMCXC.wTMonExt + '''' + ' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFEmis.Date) + '''' + ')';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DMCXC.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
   Else
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   DecodeDate(dtpFEmis.Date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   xAAMM := IntToStr(Year) + wMes;
   xTAno := IntToStr(Year);
   xTMes := wMes;
   dbeNoReg.Text := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   xWhere := 'TDiarId=' + '''' + wTDiar + '''' + ' and CCAnoMes=' + '''' + xAAMM + '''';

   wLote := '000';

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := xTAno + xTMes;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := xxTCambio;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := xxTCambio;
End;

Procedure TFNotasDC.dblcdClieEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

End;

Procedure TFNotasDC.dblcdClieRucEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

End;

Procedure TFNotasDC.dblcClAuxExit(Sender: TObject);
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

   Filtracds(DMCXC.cdsClie, 'Select CLIEID, CLIEDES, CLIERUC, VEID, TVTAID, ZONVTAID '
      + 'from TGE204 '
      + 'Where CLAUXID=' + QuotedStr(dblcClAux.Text));
End;

Procedure TFNotasDC.bbtnAceptaClick(Sender: TObject);
var xSQL : String;											// HPC_201405_CXC
Begin

   If Not DMCXC.VerificaPeriodoVentas(dblcCia.text, dtpFComp.date) Then
   Begin
      dtpFComp.SetFocus;
      Exit;
   End;

   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, edtSerie.Text, edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('Documento ya Fue Registrado');
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := edtSerie.Text;
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString := dblcTDiario.Text;

   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.dateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.timeS;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
// Inicio HPC_201405_CXC
//   DMCXC.cdsPost(DMCXC.cdsMovCxC);                                              
   DMCXC.cdsMovCxC.Post;
// Fin HPC_201405_CXC
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');

   DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, StrToInt(dbeNoReg.Text));

   ErrorCount := 0;
// Inicio HPC_201405_CXC
   //DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');                             
   xSQL := ' Insert into CXC301( CIAID, DOCID,CCSERIE, CCNODOC, TDIARID, CCFEMIS,CCFCMPRB, CCNOREG, CCANOMES, CCUSER, CCFREG, CCHREG, CCESTADO ) '
               + ' Values( '+quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString)+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString)+', '
               + quotedstr(datetostr(DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsDateTime))+', '
               + quotedstr(datetostr(DMCXC.cdsMovCxC.fieldbyname('CCFCMPRB').AsDateTime))+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString)+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString)+', '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCUSER').AsString)+', '
               + '           trunc(sysdate),  '
               + '           sysdate, '
               +             quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString)+' )';
    Try
       DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
    Except
       ShowMessage('No se pudo insertar la nota de crédito');
       bbtnBorraClick(Self);;
       exit;
    End;
// Fin HPC_201405_CXC
   If ErrorCount > 0 Then
   Begin
      Close;

   End;

   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFNotasDC.dblcdCCostoExit(Sender: TObject);
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

Procedure TFNotasDC.edtSerieExit(Sender: TObject);
Begin
   edtNoDoc.Text := DMCXC.BuscaUltNumero(dblcCia.Text, wTDoc, edtSerie.Text);
End;

Procedure TFNotasDC.z2bbtnEmiteDocClick(Sender: TObject);
Var
   xReporte, xCampoFlag, xWhere, xSQL: String;
   dd, mm, aa: word;
   sComerid, sDocumento, sSerie, sDocid, sCanje, sWhere: String;
   xIGV, xTotal, xNeto: double;
   NCRazon, NCRUC, NCDIR, NCClie, NCFactura, NCNumero, NCVendedor, NCFEmision, NCFacFecha: String;
   NCConPagoID, NCDIA1, NCMES1, NCANO1, NCANO, NCLETRAS, NCIGV, NCTotal: String;
Begin

   DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,CPTODEVALM', 'CPTOCAB=' + Quotedstr(dblcdTipoOpera.text), 'CPTOCAB');
   If (DMCXC.cdsQry.FieldByName('CPTODEVALM').AsString = 'S') And ((DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400')) Then
   Begin
      xWhere := ' CIAID=' + Quotedstr(dblcCia.text) + ' AND CLIEID=' + Quotedstr(dblcdClie.text)
         + ' AND NISATIP=''INGRESO'' AND NISAID=' + Quotedstr(dblcdNisa.text);

      DMCXC.BuscaQry('dspTGE', 'LOG314', 'NISNPED,NISANDOC', xWhere, 'NISNPED');

      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
         xSQL := ' SELECT G.ARTID,I.KDXCNTG,G.ARTDES,I.UNMIDG,G.GREMPREUMO,G.GREMDCTO1,G.GREMDCTO2,I.KDXCNTG*G.GREMPREVME GREMMTOMO '
            + '  FROM FAC304 G ,LOG315 I '
            + '  WHERE I.NISATIP=''INGRESO''  AND I.NISAID=' + Quotedstr(dblcdNisa.text)
            + '  AND G.CIAID=' + Quotedstr(dblcCia.text) + ' AND G.CLIEID=' + Quotedstr(dblcdClie.text)
            + ' AND G.PEDIDO=' + Quotedstr(DMCXC.cdsQry.FieldByName('NISNPED').AsString)
            + ' AND I.CIAID=G.CIAID AND I.ARTID=G.ARTID'
      Else
         If (DMCXC.SRV_D = 'ORACLE') Then
            xSQL := ' SELECT G.ARTID,I.KDXCNTG,G.ARTDES,I.UNMIDG,G.DFACPREUMO GREMPREUMO,G.DFACDTOUMN GREMDCTO1,G.DFACDCTO2 GREMDCTO2,I.KDXCNTG*G.DFACPREUMN GREMMTOMO '
               + '  FROM FAC306 G ,LOG315 I '
               + '  WHERE I.NISATIP=''INGRESO''  AND I.NISAID=' + Quotedstr(dblcdNisa.text)
               + '  AND G.CIAID=' + Quotedstr(dblcCia.text) + ' AND G.CLIEID=' + Quotedstr(dblcdClie.text)
               + ' AND G.FACSERIE||G.NFAC=' + Quotedstr(DMCXC.cdsQry.FieldByName('NISANDOC').AsString)
               + ' AND I.CIAID=G.CIAID AND I.ARTID=G.ARTID';

      DMCXC.cdsReporte.IndexFieldNames := '';
      DMCXC.cdsReporte.Filter := '';
      DMCXC.cdsReporte.Close;
      DMCXC.cdsReporte.DataRequest(xSQL);
      DMCXC.cdsReporte.Open;
      If DMCXC.cdsReporte.RecordCount = 0 Then
      Begin
         xSQL := ' SELECT ARTID,KDXCNTG,ARTDES,UNMIDG,0 GREMPREUMO,0 GREMDCTO1,0 GREMDCTO2,0 GREMMTOMO  ' +
            '  FROM LOG315 ' +
            '  WHERE LOG315.CIAID=' + QuotedStr(dblcCia.text) + ' AND LOG315.NISATIP=''INGRESO'' AND LOG315.NISAID=' + QuotedStr(dblcdNisa.text) +
            ' AND LOG315.TDAID=' + QuotedStr(xTDA);
         DMCXC.cdsReporte.IndexFieldNames := '';
         DMCXC.cdsReporte.Filter := '';
         DMCXC.cdsReporte.Close;
         DMCXC.cdsReporte.DataRequest(xSQL);
         DMCXC.cdsReporte.Open;
         If DMCXC.cdsReporte.RecordCount = 0 Then
         Begin
            Raise Exception.Create('No se encuentran Registros para Imprimir');
         End;
      End;

      Begin
         pprRNCD.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NOTACREDITODET.RTM';
         pprRNCD.template.LoadFromFile;

         xSQL := 'SELECT * FROM CXC301'
            + ' WHERE CIAID=' + Quotedstr(dblcCia.text)
            + ' AND DOCID=' + Quotedstr(DMCXC.cdsMovCxc.FieldByName('DOCID').AsString)
            + ' AND CCNODOC=' + Quotedstr(edtNoDoc.text)
            + ' AND CLAUXID=' + Quotedstr(dblcClAux.text)
            + ' AND CLIEID=' + Quotedstr(dblcdClie.text);
         DMCXC.cdsQry4.IndexFieldNames := '';
         DMCXC.cdsQry4.Filter := '';
         DMCXC.cdsQry4.Close;
         DMCXC.cdsQry4.DataRequest(xSQL);
         DMCXC.cdsQry4.Open;

         ppdbpNCD.DataSource := DMCXC.dsReporte;
         pprRNCD.DataPipeline := ppdbpNCD;

         sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
            ' AND CCSERIE=' + QuotedStr(edtSerie.text) +
            ' AND CCNODOC=' + QuotedStr(edtNoDoc.text);

         sCanje := DMCXC.cdsMovCxc.FieldByName('CCCANJE').AsString;
         sDocid := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         sSerie := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;

         sDocumento := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

         pplblNCDRazon.text := DMCXC.BuscaQry2('dspTGE', 'TGE204', 'CLIERUC,CLIEDIR,CLIEDES,ZONVTAID', 'CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEDES');
         pplblNCDRUC.text := DMCXC.cdsQry6.FieldByName('CLIERUC').AsString;

         pplblNCDDIR.text := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString + ' - ' + DMCXC.BuscaQry2('dspTGE', 'FAC106', 'ZVTADES', 'ZVTAID=' + QuotedStr(DMCXC.cdsQry6.FieldByName('ZONVTAID').AsString), 'ZVTADES');
         pplblNCDClie.text := dblcdClie.text;
         pplblNCDFactura.text := sSerie + sDocumento;
         pplblNCDNumero.text := edtSerie.text + '-' + edtNoDoc.text;
         pplblNCDFEmision.text := DateToStr(dtpFEmis.date);

         sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
            ' AND CCSERIE=' + QuotedStr(sSerie) +
            ' AND CCNODOC=' + QuotedStr(sDocumento);
         pplblNCDVendedor.text := DMCXC.BuscaQry2('dspTGE', 'CXC301', 'DOCID,CCFEMIS,VEID,CCOMERID', sWhere, 'VEID');
         pplblNCDFacFecha.text := DMCXC.cdsQry6.FieldByName('CCFEMIS').AsString;
         sComerid := DMCXC.cdsQry6.FieldByName('CCOMERID').AsString;
         pplblNCDConPagoID.text := DMCXC.BuscaQry2('dspTGE', 'CXC101', 'CCOMERDES', 'CCOMERID=' + QuotedStr(sComerId), 'CCOMERDES');

         decodeDate(dtpFEmis.date, aa, mm, dd);
         pplblNCDDIA.text := IntToStr(dd);
         pplblNCDMES.text := DMCXC.NombreMes(mm);
         pplblNCDANO1.text := 'DEL  ' + IntToStr(aa);
         pplblNCDAno.text := DMCXC.DisplayDescrip('TGE185', 'GLOSA', 'ANIO', IntToStr(aa));

         pplblNCDLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsQry4.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text));
         xIgv := DMCXC.cdsQry4.FieldByName('CCIGV').AsFloat;

         If dblcTMon.Text = DMCXC.wTMonLoc Then
            xTotal := DMCXC.cdsQry4.FieldByName('CCMTOLOC').AsFloat
         Else
            If dblcTMon.Text = DMCXC.wTMonExt Then
               xTotal := DMCXC.cdsQry4.FieldByName('CCMTOEXT').AsFloat;
         xNeto := xTotal - xIGV;
         pplblNCDIGV.Caption := FloatToStrF(xIgv, ffFixed, 15, 2);
         pplblNCDNETO.Caption := FloatToStrF(xNeto, ffFixed, 15, 2);
         pplblNCDTotal.Caption := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text) + ' ' + FloatToStrF(xTotal, ffFixed, 15, 2);
         If cbDisenoRep.Checked Then
         Begin
            ppDesigner1.ShowModal;
         End
         Else
            pprRNCD.Print;
            pprRNCD.Stop;
         exit;
      End;
   End;
   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CCSERIE=' + QuotedStr(edtSerie.text) +
      ' AND CCNODOC=' + QuotedStr(edtNoDoc.text);
   sCanje := DMCXC.cdsMovCxc.FieldByName('CCCANJE').AsString;
   sDocid := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
   sSerie := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
   sDocumento := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.filter := ' TIPDET = ''MN'' OR TIPDET = ''MG'' ';
   DMCXC.cdsDetCxC.filtered := true;

   NCRazon := DMCXC.BuscaQry2('dspTGE', 'TGE204', 'CLIERUC,CLIEDIR,CLIEDES,ZONVTAID,CLIEDNI', 'CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEDES');

   NCRUC := DMCXC.cdsMovCxc.FieldByName('CLIERUC').AsString;

   NCDIR := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString + ' - ' + DMCXC.BuscaQry2('dspTGE', 'FAC106', 'ZVTADES', 'ZVTAID=' + QuotedStr(DMCXC.cdsQry6.FieldByName('ZONVTAID').AsString), 'ZVTADES');
   NCClie := dblcdClie.text;
   NCFactura := sSerie + sDocumento;
   NCNumero := edtSerie.text + '-' + edtNoDoc.text;
   NCFEmision := DateToStr(dtpFEmis.date);

   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CCSERIE=' + QuotedStr(sSerie) +
      ' AND CCNODOC=' + QuotedStr(sDocumento);
   NCVendedor := DMCXC.BuscaQry2('dspTGE', 'CXC301', 'DOCID,CCFEMIS,VEID,CCOMERID', sWhere, 'VEID');
   NCFacFecha := DMCXC.cdsQry6.FieldByName('CCFEMIS').AsString;
   sComerid := DMCXC.cdsQry6.FieldByName('CCOMERID').AsString;
   NCConPagoID := DMCXC.BuscaQry2('dspTGE', 'CXC101', 'CCOMERDES', 'CCOMERID=' + QuotedStr(sComerId), 'CCOMERDES');

   decodeDate(dtpFEmis.date, aa, mm, dd);
   NCDIA1 := IntToStr(dd);
   NCMES1 := DMCXC.NombreMes(mm);
   NCANO1 := 'DEL  ' + IntToStr(aa);
   NCAno := DMCXC.DisplayDescrip('TGE185', 'GLOSA', 'ANIO', IntToStr(aa));

   NCLetras := 'SON:' + Trim(strNum(DMCXC.cdsMovCxc.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text));
   xIgv := DMCXC.cdsMovCxc.FieldByName('CCIGV').AsFloat;
   xTotal := DMCXC.cdsMovCxc.FieldByName('CCMTOORI').AsFloat;
   NCIGV := FloatToStrF(xIgv, ffFixed, 15, 2);

   NCTotal := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text) + ' ' + FloatToStrF(xTotal, ffNumber, 15, 2);

   xSQL := ' SELECT ' +
      QuotedStr(NCRazon) + ' NCRAZON, ' +
      QuotedStr(NCRUC) + ' NCRUC, ' +
      QuotedStr(NCDIR) + ' NCDIR, ' +
      QuotedStr(NCClie) + ' NCCLIE, ' +
      QuotedStr(NCFactura) + ' NCFACTURA, ' +
      QuotedStr(NCNumero) + ' NCNUMERO, ' +
      QuotedStr(NCFEmision) + ' NCFEMISION, ' +
      QuotedStr(NCVendedor) + ' NCVENDEDOR, ' +
      QuotedStr(NCFacFecha) + ' NCFACFECHA, ' +
      QuotedStr(NCConPagoID) + ' NCCONPAGOID, ' +
      QuotedStr(NCDIA1) + ' NCDIA1, ' +
      QuotedStr(NCMES1) + ' NCMES1, ' +
      QuotedStr(NCANO1) + ' NCANO1, ' +
      QuotedStr(NCAno) + ' NCANO, ' +
      QuotedStr(NCLetras) + ' NCLETRAS, ' +
      QuotedStr(NCIGV) + ' NCIGV, ' +
      QuotedStr(TRIM(NCTotal)) + ' NCTOTAL,CXC302.* ' +
      ' FROM CXC302 WHERE ' +
      ' CIAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) +
      ' AND DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString) +
      ' AND CCSERIE=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString) +
      ' AND CCNODOC=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString) +
      ' AND CCNOREG=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString) +
      ' AND (TIPDET = ''MN'' OR TIPDET = ''MG'') ';

   FiltraCDS(DMCXC.cdsReporte, xSQL);

   ppdbpNotaCred.DataSource := DMCXC.dsReporte;
   pprptNotaCred.DataPipeline := ppdbpNotaCred;

   pprptNotaCred.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NOTACREDITO_' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '.RTM';
   pprptNotaCred.template.LoadFromFile;

   If cbDisenoRep.Checked Then
      ppDesigner1.ShowModal
   Else
      pprptNotaCred.Print;

   ppdbpNotaCred.DataSource := Nil;
   DMCXC.cdsDetCxC.filtered := False;
   DMCXC.cdsDetCxC.EnableControls;
End;

Procedure TFNotasDC.EmiteDoc(xArchivoReporte: String);
Var
   i,
      Banda,
      Componente: Integer;
   PPREPORT1: TppReport;
   ppdbpipeline1: Tppdbpipeline;
   xSQL,

   xFiltro: String;
   cdsEmiDoc: TwwclientDataset;
   dsEmiDoc: TwwDataSource;
   cdsClone: TwwClientDataset;
   j: Integer;
Begin
   Try
      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin
         xSQL :=
            '    SELECT CNT201.AUXNOMB PPRAZON, CNT201.AUXDIR PPDIRECCION,CXC301.CLIERUC PPRUC,                                                       '
            + '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIA,             '
            + '           CASE WHEN LENGTH(RTRIM(CHAR(MONTH(CCFEMIS))))< 2 THEN ''0''||CHAR(MONTH(CCFEMIS)) ELSE CHAR(MONTH(CCFEMIS)) END PPMES,       '
            + '           CHAR(YEAR(CCFEMIS)) PPANO,                                                                                                   '
            + '           CCIGV PPIGV,CCMTOORI PPTOTAL,                                                                                                '
            + '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIAN,            '
            + '           CASE WHEN MONTH(CCFEMIS)= 1 THEN ''Enero''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 2 THEN ''Febrero''                                                                                 '
            + '                WHEN MONTH(CCFEMIS)= 3 THEN ''Marzo''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 4 THEN ''Abril''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 5 THEN ''Mayo''                                                                                    '
            + '                WHEN MONTH(CCFEMIS)= 6 THEN ''Junio''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 7 THEN ''Julio''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 8 THEN ''Agosto''                                                                                  '
            + '                WHEN MONTH(CCFEMIS)= 9 THEN ''Septiembre''                                                                              '
            + '                WHEN MONTH(CCFEMIS)= 10 THEN ''Octubre''                                                                                '
            + '                WHEN MONTH(CCFEMIS)= 11 THEN ''Noviembre''                                                                              '
            + '                WHEN MONTH(CCFEMIS)= 12 THEN ''Diciembre''                                                                              '
            + '           END PPMESN,                                                                                                                  '
            + '           CHAR(YEAR(CCFEMIS)) PPANON,                                                                                                  '
            + '           CCFEMIS                                                                                                                      '
            + '    FROM CXC301                                                                                                                         '
            + '    INNER JOIN                                                                                                                          '
            + '    CNT201                                                                                                                              '
            + '    ON (CNT201.CLAUXID = CXC301.CLAUXID AND CNT201.AUXID = CXC301.CLIEID)                                                               ';
         With DMCXC.cdsmovcxc Do
            xFiltro := ' CIAID = ''' + fieldbyname('CIAID').AsString + ''' '
               + ' AND CCANOMES = ''' + fieldbyname('CCANOMES').AsString + ''' '
               + ' AND TDIARID  = ''' + fieldbyname('TDIARID').AsString + ''' '
               + ' AND CCNOREG  = ''' + fieldbyname('CCNOREG').AsString + ''' ';
         xSQL := xSQL + ' WHERE ' + xFiltro;
      End
      Else
         If (DMCXC.SRV_D = 'ORACLE') Then
         Begin
            xSQL :=
               '    SELECT CNT201.AUXNOMB PPRAZON, CNT201.AUXDIR PPDIRECCION,CXC301.CLIERUC PPRUC,                                                       '
               + '           DECODE(LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIA,             '
               + '           CASE WHEN LENGTH(RTRIM(CHAR(MONTH(CCFEMIS))))< 2 THEN ''0''||CHAR(MONTH(CCFEMIS)) ELSE CHAR(MONTH(CCFEMIS)) END PPMES,       '
               + '           CHAR(YEAR(CCFEMIS)) PPANO,                                                                                                   '
               + '           CCIGV PPIGV,CCMTOORI PPTOTAL,                                                                                                '
               + '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIAN,            '
               + '           DECODE(MONTH(CCFEMIS),1,''Enero''                                                                                   '
               + '                ,MONTH(CCFEMIS),2,''Febrero''                                                                                 '
               + '                ,MONTH(CCFEMIS),3,''Marzo''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 4 THEN ''Abril''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 5 THEN ''Mayo''                                                                                    '
               + '                ,MONTH(CCFEMIS)= 6 THEN ''Junio''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 7 THEN ''Julio''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 8 THEN ''Agosto''                                                                                  '
               + '                ,MONTH(CCFEMIS)= 9 THEN ''Septiembre''                                                                              '
               + '                ,MONTH(CCFEMIS)= 10 THEN ''Octubre''                                                                                '
               + '                ,MONTH(CCFEMIS)= 11 THEN ''Noviembre''                                                                              '
               + '                ,MONTH(CCFEMIS)= 12 THEN ''Diciembre''                                                                              '
               + '           END PPMESN,                                                                                                                  '
               + '           CHAR(YEAR(CCFEMIS)) PPANON,                                                                                                  '
               + '           CCFEMIS                                                                                                                      '
               + '    FROM CXC301                                                                                                                         '
               + '    INNER JOIN                                                                                                                          '
               + '    CNT201                                                                                                                              '
               + '    ON (CNT201.CLAUXID = CXC301.CLAUXID AND CNT201.AUXID = CXC301.CLIEID)                                                               ';
            With DMCXC.cdsmovcxc Do
               xFiltro := ' CIAID = ''' + fieldbyname('CIAID').AsString + ''' '
                  + ' AND CCANOMES = ''' + fieldbyname('CCANOMES').AsString + ''' '
                  + ' AND TDIARID  = ''' + fieldbyname('TDIARID').AsString + ''' '
                  + ' AND CCNOREG  = ''' + fieldbyname('CCNOREG').AsString + ''' ';
            xSQL := xSQL + ' WHERE ' + xFiltro;

         End;
      DMCXC.cdsQry.Close;
      DMCXC.cdsQry.DataRequest(xSQL);
      DMCXC.cdsQry.Open;

      xSQL := 'SELECT * FROM CXC311 WHERE CIAID = '''' ';
      dsEmiDoc := TwwDataSource.create(self);
      cdsEmiDoc := TwwClientDataSet.create(self);
      cdsEmiDoc.RemoteServer := DMCXC.DCOM1;
      cdsEmiDoc.ProviderName := DMCXC.cdsQry.ProviderName;
      cdsEmiDoc.Close;
      cdsEmiDoc.DataRequest(xSQL);
      cdsEmiDoc.Open;
      dsEmiDoc.DataSet := cdsEmiDoc;

      cdsEmiDoc.Insert;
      cdsclone := TwwClientDataSet.create(self);
      cdsClone.CloneCursor(DMCXC.cdsDetCxC, False);
      cdsClone.Filter := ' TIPDET = ''MN'' OR TIPDET = ''MG'' ';
      cdsClone.Filtered := True;
      If cdsClone.RecordCount <> 0 Then
      Begin
         cdsClone.First;
         cdsEmiDoc.FieldByName('DDEDES').AsString := cdsClone.FieldByName('CCGLOSA').AsString;
         cdsEmiDoc.FieldByName('DDEPT').AsCurrency :=
            OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOORI)', cdsClone.Filter);
      End
      Else
      Begin
         cdsEmiDoc.FieldByName('DDEDES').AsString := '';
         cdsEmiDoc.FieldByName('DDEPT').AsCurrency := 0;
      End;
      cdsEmiDoc.Post;                                                            
      ppdbpNotaCred.DataSource := dsemidoc;
      pprptNotaCred.DataPipeline := ppdbpNotaCred;
     //**
      pprptNotaCred.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\' + xArchivoReporte;
      pprptNotaCred.template.LoadFromFile;

      If Application.MessageBox('Confirme Impresión de Documento',
         'Confirmación Impresión',
         MB_OKCANCEL + MB_DEFBUTTON1) = IDOK Then

   Finally
      cdsEmiDoc.free;
      dsEmiDoc.free;
   End;
End;

//**********************************************************************//

{ para actualizar el monto ejecutado, monto variación y
  y variación en porcentaje en el PPRES301, se debe de recorrer el cds del
 grid para ver si hay MG,MN,NG }

Procedure TFNotasDC.CalculoNivel;
Var
   xmonto, xhora, xfecha, xEjecuMN, xEjecuME, xmes, ssql: String;
   xcambio: real;
   iX: integer;
   xtotal: Array[1..48] Of Real;
   xtotG: Array[1..6] Of Real;

   xasxmes: Array[1..24] Of Real;

   xmoxmes: Array[1..24] Of Real;

   xvpxmes: Array[1..24] Of Real;
   xestado: bool;
   xIS: String;
Begin
   { crea los niveles superiores si no tuviera }
   CreaSuperior;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      { registros que tienen las pp}
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN') Then
      Begin
         xmes := xtmes;
         ssql := '';
         ssql := 'Update PPRES301 Set ';
         If dblcTMon.Text = '01' Then
         Begin
            xCambio := StrToFloat(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString) / StrToFloat(dbeTCambio.text);
            xEjecuME := '(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0) - ' + FloatToStr(xcambio) + ')';
            xEjecuMN := '(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0) - ' + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString + ')';
            xmonto := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString;
         End
         Else
         Begin
            xCambio := StrToFloat(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString) * StrToFloat(dbeTCambio.text);
            xEjecuME := '(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0) - ' + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString + ')';
            xEjecuMN := '(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0) - ' + FloatToStr(xcambio) + ')';
            xmonto := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString;
         End;
         ssql := ssql + 'DPREEJMN' + xmes + '= DEC(' + xEjecuMN + ',15,2), ';
         ssql := ssql + 'DPREEJME' + xmes + '= DEC(' + xEjecuME + ',15,2), ';
         If dblcTMon.Text = '01' Then
         Begin
            ssql := ssql + 'DPREVMMN' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + xmonto + '),15,2), ';
            ssql := ssql + 'DPREVMME' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2), ';
            ssql := ssql + 'DPREVPMN' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPREVPME' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+' + DMCXC.wReplacCeros + '(DPRETOMOME,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJMN=DEC(' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)-' +
               xmonto + ',15,2),';
            ssql := ssql + 'DPRETOVMMN=DEC(' + DMCXC.wReplacCeros + '(DPREVMMN01,0)+' + DMCXC.wReplacCeros + '(DPREVMMN02,0)+' + DMCXC.wReplacCeros + '(DPREVMMN03,0)+' + DMCXC.wReplacCeros + '(DPREVMMN04,0)+' + DMCXC.wReplacCeros + '(DPREVMMN05,0)+' + DMCXC.wReplacCeros + '(DPREVMMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMMN07,0)+' + DMCXC.wReplacCeros + '(DPREVMMN08,0)+' + DMCXC.wReplacCeros + '(DPREVMMN09,0)+' + DMCXC.wReplacCeros + '(DPREVMMN10,0)+' + DMCXC.wReplacCeros + '(DPREVMMN11,0)+' + DMCXC.wReplacCeros + '(DPREVMMN12,0)+' +
               DMCXC.wReplacCeros + '(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + xmonto + '),15,2),';

            ssql := ssql + 'DPRETOVPMN=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)-' +
               xmonto + ')/((' + DMCXC.wReplacCeros + '(DPRETOASMN,0) )+(' + DMCXC.wReplacCeros + '(DPRETOMOMN,0))))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJME=DEC(' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               FloatToStr(xcambio) + ',15,2),';
            ssql := ssql + 'DPRETOVMME=DEC(' + DMCXC.wReplacCeros + '(DPREVMME01,0)+' + DMCXC.wReplacCeros + '(DPREVMME02,0)+' + DMCXC.wReplacCeros + '(DPREVMME03,0)+' + DMCXC.wReplacCeros + '(DPREVMME04,0)+' + DMCXC.wReplacCeros + '(DPREVMME05,0)+' + DMCXC.wReplacCeros + '(DPREVMME06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMME07,0)+' + DMCXC.wReplacCeros + '(DPREVMME08,0)+' + DMCXC.wReplacCeros + '(DPREVMME09,0)+' + DMCXC.wReplacCeros + '(DPREVMME10,0)+' + DMCXC.wReplacCeros + '(DPREVMME11,0)+' + DMCXC.wReplacCeros + '(DPREVMME12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2),';
            ssql := ssql + 'DPRETOVPME=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+' + DMCXC.wReplacCeros + '(DPRETOMOME,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               FloatToStr(xcambio) + ')/((' + DMCXC.wReplacCeros + '(DPRETOASME,0) )+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0))))*100,15,2)END),';
         End
         Else
         Begin
            ssql := ssql + 'DPREVMMN' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2), ';
            ssql := ssql + 'DPREVMME' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + '),15,2), ';
            ssql := ssql + 'DPREVPMN' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0) = 0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + FloatToSTr(xcambio) + ')/(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) +' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0)))*100,15,2)END), ';
            ssql := ssql + 'DPREVPME' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0) = 0 ' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJME=DEC(' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               xmonto + ',15,2),';
            ssql := ssql + 'DPRETOVMME=DEC(' + DMCXC.wReplacCeros + '(DPREVMME01,0)+' + DMCXC.wReplacCeros + '(DPREVMME02,0)+' + DMCXC.wReplacCeros + '(DPREVMME03,0)+' + DMCXC.wReplacCeros + '(DPREVMME04,0)+' + DMCXC.wReplacCeros + '(DPREVMME05,0)+' + DMCXC.wReplacCeros + '(DPREVMME06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMME07,0)+' + DMCXC.wReplacCeros + '(DPREVMME08,0)+' + DMCXC.wReplacCeros + '(DPREVMME09,0)+' + DMCXC.wReplacCeros + '(DPREVMME10,0)+' + DMCXC.wReplacCeros + '(DPREVMME11,0)+' + DMCXC.wReplacCeros + '(DPREVMME12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + '),15,2),';
            ssql := ssql + 'DPRETOVPME=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0) = 0 ' +
               ' THEN 200 ' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               xmonto + ')/((' + DMCXC.wReplacCeros + '(DPRETOASME,0))+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0))))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJMN=DEC(' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)-' +
               FloatToStr(xcambio) + ',15,2),';
            ssql := ssql + 'DPRETOVMMN=DEC(' + DMCXC.wReplacCeros + '(DPREVMMN01,0)+' + DMCXC.wReplacCeros + '(DPREVMMN02,0)+' + DMCXC.wReplacCeros + '(DPREVMMN03,0)+' + DMCXC.wReplacCeros + '(DPREVMMN04,0)+' + DMCXC.wReplacCeros + '(DPREVMMN05,0)+' + DMCXC.wReplacCeros + '(DPREVMMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMMN07,0)+' + DMCXC.wReplacCeros + '(DPREVMMN08,0)+' + DMCXC.wReplacCeros + '(DPREVMMN09,0)+' + DMCXC.wReplacCeros + '(DPREVMMN10,0)+' + DMCXC.wReplacCeros + '(DPREVMMN11,0)+' + DMCXC.wReplacCeros + '(DPREVMMN12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2),';

            ssql := ssql + 'DPRETOVPMN=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0) = 0' +
               ' THEN 200 ' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)+' +
               FloatToStr(xcambio) + ')/(' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)))*100,15,2)END),';
         End;
         ssql := ssql + 'RQPARTUSER=' + quotedstr(DMCXC.wUsuario);
         xFecha := formatdatetime(DMCXC.wFormatFecha, DMCXC.DateS);
         ssql := ssql + ',RQPARTFREG =Date(' + quotedstr(xfecha) + ')';
         xhora := formatdatetime('hh:mm:ss', DMCXC.timeS);
         ssql := ssql + ',RQPARTHREG =time(' + quotedstr(xhora) + ')' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND TIPPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString) +
            ' AND PARPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
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
            ' AND RQPARTANO=' + quotedstr(xtano);
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.ProviderName := 'dspCxC';
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

           { actualiza la cabecera de Presupuesto PPRES300, toma del PPRES301
             los EJ,VM y VP por mes para un mismo centro de costo y los sumariza
             para cargarlos a los campos respectivos del PPRES300 }
         ssql := '';
         ssql := 'SELECT * FROM PPRES301' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.ProviderName := 'dspCxC';
         DMCXC.cdsQry2.DataRequest(ssql);
         DMCXC.cdsQry2.open;
         DMCXC.cdsQry2.First;
         While Not DMCXC.cdsQry2.Eof Do
         Begin
            ssql := '';
            ssql := 'PARPRESID=' + quotedstr(DMCXC.cdsQry2.FieldByName('PARPRESID').AsString);
            xIS := DMCXC.BuscaQry('dspParPres', 'PPRES201', '*', ssql, 'PARPRES_IS');
             //**
            For iX := 1 To 24 Do
               Case iX Of
                { para DPREEJMN01..12 }
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
                     Begin
                        xmes := StrZero(IntToStr(iX), 2);
                    //tiene que chequear si el PARPRES_IS
                    // del PPRES201 es I = resta,  o S = suma
                        If xIS = 'S' Then
                           xTotal[iX] := xTotal[iX] + StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJMN' + XMES).AsString)
                        Else
                           xTotal[iX] := xTotal[iX] - StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJMN' + XMES).AsString)
                     End;
               { para DPREEJME01..12 }
                  13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24:
                     Begin
                        xmes := StrZero(IntToStr(iX - 12), 2);
                    //tiene que chequear si el PARPRES_IS
                    // del PPRES201 es I = resta,  o S = suma
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
             // para que solo calcule el mes
             // del periodo, si se quita el if calcula todos los meses
            If StrZero(IntToStr(iX), 2) = xtmes Then
            Begin
                { para DPREVMMN01..12 }
               xTotal[iX + 24] := (xasxmes[iX] + xmoxmes[iX]) - xTotal[iX];
                { para DPREVMME01..12 }
               xTotal[iX + 36] := (xasxmes[iX + 12] + xmoxmes[iX + 12]) - xTotal[iX + 12];
                // se agrego
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
         If xestado = False Then
         Begin
             // los igualo a cero
            xtotG[5] := 0;
            xtotG[6] := 0;
         End
         Else
         Begin
             {  calculo del total VPMN }
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
         ssql := ssql + ',RQPARTFREG =Date(' + quotedstr(xfecha) + ')';
         xhora := formatdatetime('hh:mm:ss', DMCXC.timeS);
         ssql := ssql + ',RQPARTHREG =time(' + quotedstr(xhora) + ')' +
           { condicional }
         ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
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

{ para presupuestos }

Procedure TFNotasDC.CreaSuperior;
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
               ' AND RQPARTANO=' + quotedstr(xtano);
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
            xano := Trim(xtano);
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
               DMCXC.cdsDetallePres.FieldByName('RQPARTANO').AsString := xtano;
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

{para presupuestos }

Procedure TFNotasDC.inicializoCero;
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
      xcds.FieldByName('DPRERMME' + XMES).AsString := '0';
      xcds.FieldByName('DPRERMMN' + XMES).AsString := '0';
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

{para presupuestos }

Procedure TFNotasDC.CalculoNivelSupe;
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
               ' AND RQPARTANO=' + quotedstr(xtano);
            DMCXC.cdsDetallePres.Close;
            DMCXC.cdsDetallePres.DataRequest(ssql);
            DMCXC.cdsDetallePres.open;
          { se carga la variable }
            xcc := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
         End;
         If xppcomun <> copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, 1) Then
         Begin
          //////////// proceso para genera los niveles superiores ////////////
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
               ' AND RQPARTANO=' + quotedstr(xtano);
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
//                     if StrZero(IntToStr(iX),2) = xtmes then
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
                      //**
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
                     End;
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

Procedure TFNotasDC.dblcTipPreExit(Sender: TObject);
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

Procedure TFNotasDC.dblcdPresupExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
   If dblcTipReg.Focused Then exit;

   edtPresup.Text := DMCXC.DisplayDescrip('PPRES201', 'PARPRESDES', 'PARPRESID', dblcdPresup.Text);

   If Length(edtPresup.text) = 0 Then
   Begin
      Raise exception.Create('Falta Partida Presupuestal');
      dblcdPresup.SetFocus;
   End;
End;

Procedure TFNotasDC.rgDocClick(Sender: TObject);
Begin
   If xCrea Then Exit;

   If DMCXC.wModo = 'A' Then
   Begin

      DMCXC.cdsMovCxC.Edit;
      If rgDoc.ItemIndex = 0 Then //Pendientes
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString := 'P';
         DMCXC.cdsMovCxC.FieldByName('CCMTOORI').Clear;
         dbeMtoOri.enabled := False;
      End
      Else
         If rgDoc.ItemIndex = 1 Then //Cancelados
         Begin

            DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString := 'C';
            dbeMtoOri.enabled := True;
         End
         Else

         Begin
            If rgDoc.ItemIndex = 2 Then //SIN DOCUMENTOS
            Begin
               DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString := 'S';
               dbeMtoOri.enabled := True;
            End;
         End;

      DMCXC.cdsMovCxC.Post;                                                    

   End;
End;

Procedure TFNotasDC.ppHeaderBand2BeforePrint(Sender: TObject);
Var
   sDocid, sSerie, sDocumento, sWhere, sCanje: String;
   sVendedor, sDesDoc, sComerid, sDesConPago: String;
Begin
End;

Procedure TFNotasDC.ppFooterBand2BeforePrint(Sender: TObject);
Var
   xIgv, xTotal: Double;
Begin
End;

Procedure TFNotasDC.dblcdTipoOperaExit(Sender: TObject);
Var
   sSQL: String;
Begin
   If length(dblcdTipoOpera.Text) > 0 Then
      edtTipoOpera.Text := DMCXC.cdsCptoCab.FieldByName('CPTODES').AsString
   Else
   Begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcdTipoOpera.SetFocus;
      exit;
   End;

   cFlagNI := False;
   If DMCXC.cdsCptoCab.FieldByName('CPTODEVALM').AsString = 'S' Then
   Begin
      dblcdNisa.enabled := True;
      sSQL := 'SELECT NISAID, NISAFREG FECHA, NISANDOC GUIA, NISNPED PEDIDO, LOG314.TDAID, TDADES '
         + 'FROM LOG314, TGE157, TGE208 '
         + 'WHERE TGE157.TDAID(+)=LOG314.TDAID '
         + ' AND CIAID=' + QuotedStr(dblcCia.text) + ' AND NISATIP=''INGRESO'' '
         + ' AND CLIEID=' + QuotedStr(dblcdClie.text)
         + ' AND NVL(FLAGNC,''XX'')<>''P'' AND NVL(FLAGNC,''XX'')<>''I'' '
         + ' AND TGE208.TRISGT=''I'' AND TGE208.TRIDEVFACT=''S'' AND LOG314.TRIID=TGE208.TRIID';

      DMCXC.cdsQry3.Close;
      DMCXC.cdsQry3.DataRequest(sSQL);
      DMCXC.cdsQry3.Open;
      dblcdNisa.LookupTable := DMCXC.cdsQry3;
      dblcdNisa.LookupField := 'NISAID';
      dblcdNisa.Selected.Clear;
      dblcdNisa.Selected.Add('NISAID'#9'10'#9'Nota~Ingreso'#9'F');
      dblcdNisa.Selected.Add('FECHA'#9'10'#9'Fecha'#9'F');
      dblcdNisa.Selected.Add('GUIA'#9'12'#9'Doc. Referen.'#9'F');
      dblcdNisa.Selected.Add('TDAID'#9'7'#9'Tipo Doc~Almacén'#9'F');
      dblcdNisa.Selected.Add('TDADES'#9'15'#9'Descripción'#9'F');
      dblcdNisa.Text := '';
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString := '';
      DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := 0;
      DMCXC.cdsMovCxC.Post;                                                   
      cFlagNI := True;
      dblcdNisa.SetFocus;
   End
   Else
      dblcdNisa.enabled := False;
End;

Procedure TFNotasDC.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFNotasDC.dblcdNisaExit(Sender: TObject);
Var
   sSQL: String;
   xIGV: double;
Begin
   If dblcdNisa.text = '' Then
      Raise Exception.Create('Registre Nota de Ingreso');

   If ((DMCXC.cdsQry3.RecordCount > 0) And (length(dblcdNisa.Text) > 0)) Then
      If Not DMCXC.cdsQry3.Locate('NISAID', VarArrayOf([dblcdNisa.text]), []) Then
      Begin
         dblcdNisa.Text := '';
         Raise exception.Create('Nota de Ingreso no válida...');
      End;

   xTDA := DMCXC.cdsQry3.FieldByName('TDAID').AsString;
   xIGV := 1 + (strtofloat(DMCXC.BuscaQry2('dspTGE', 'TGE128', 'TASA', 'TIPDET=''I1''', 'TASA')) / 100);
  //*
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT SUM(KDXCNTG*ROUND(CASE WHEN FAC304.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN GREMMTOMN ELSE GREMMTOME END /GREMCANTAT,4)) TOTAL ' +
         ' FROM FAC304,LOG315 ' +
         ' WHERE LOG315.NISATIP=''INGRESO'' AND LOG315.NISAID=' + QuotedStr(DMCXC.cdsQry3.FieldByName('NISAID').AsString) +
         ' AND FAC304.CIAID=' + QuotedStr(dblcCia.text) + ' AND FAC304.CLIEID=' + QuotedStr(dblcdClie.text) +
         ' AND FAC304.PEDIDO=' + QuotedStr(DMCXC.cdsQry3.FieldByName('PEDIDO').AsString) +
         ' AND LOG315.CIAID=FAC304.CIAID AND LOG315.ARTID=FAC304.ARTID AND LOG315.TDAID=' + QuotedStr(xTDA);
   End;
   If (DMCXC.SRV_D = 'ORACLE') Then
   Begin
      sSQL := 'SELECT SUM(KDXCNTG*ROUND(CASE WHEN FAC306.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN DFACPREUMN ELSE DFACPREUME END,4) '
         + ' - KDXCNTG*ROUND(CASE WHEN FAC306.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN DFACDTOMN2 ELSE DFACDTOME2 END/ DFACCANTG,4) ) TOTAL '
         + 'FROM FAC306, LOG315 '
         + 'WHERE LOG315.NISATIP=''INGRESO'' AND LOG315.NISAID=' + QuotedStr(DMCXC.cdsQry3.FieldByName('NISAID').AsString)
         + ' AND FAC306.CIAID=' + QuotedStr(dblcCia.text) + ' AND FAC306.CLIEID=' + QuotedStr(dblcdClie.text)
         + ' AND FAC306.FACSERIE||FAC306.NFAC=' + QuotedStr(DMCXC.cdsQry3.FieldByName('GUIA').AsString)
         + ' AND LOG315.CIAID=FAC306.CIAID AND LOG315.ARTID=FAC306.ARTID AND LOG315.TDAID=' + QuotedStr(xTDA);
   End;

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := FRound(DMCXC.cdsQry.FieldByName('TOTAL').AsFloat * xIGV, 15, 2);
   DMCXC.cdsMovCxC.Post;                                                         
   If DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat = 0 Then
   Begin
      ShowMessage('Documento de Referencia de Nota de Ingreso no se encontró' + #13 + 'Registrar el Valor de la Nota de Crédito en forma manual');
   End;
End;

Procedure TFNotasDC.Z2bbtnPreviewClick(Sender: TObject);
Var
   xSQL, mes, ano, xwhere, MONABR: String;
   TMoneda, mesdes: String;
   xTotHaber: DOUBLE;
Begin
   If DMCXC.wAdmin = 'S' Then Exit;

   xAAMM := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString <> 'S' Then
   Begin
      If Not CuadraDH Then Raise exception.Create('Error:  Asiento No Cuadra');

      DMCXC.GeneraContab(dblcCia.Text, wTDiar, xAAMM, dbeNoReg.text, Self, 'P');

      // Se Transfiere la Data Generada en el SOLContabiliza
      DMCXC.cdsCXC.Data := DMCXC.cdsMovCnt.data;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      lblVEstado.caption := 'Previo';
      lblVProveedor.Caption := edtClie.text;
      xSQL := 'SELECT CNTGLOSA FROM CNT310 WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(xAAMM) + ' AND '
         + 'TDIARID=' + quotedstr(wTDiar) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(dbeNoReg.text);
      DMCXC.cdsQry5.close;
      DMCXC.cdsQry5.ProviderName := 'dspTGE';
      DMCXC.cdsQry5.DataRequest(xsql);
      DMCXC.cdsQry5.Open;

      lblVTipoCamb.Caption := FloatToStrF(StrToFloat(dbeTCambio.text), ffNumber, 10, 3);

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
         + 'CNTANOMM=' + quotedstr(xAAMM) + ' AND '
         + 'TDIARID=' + quotedstr(wTDiar) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(dbeNoReg.text)
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

      DMCXC.cdsDetCxC.First;
      While Not DMCXC.cdsDetCxC.Eof Do
      Begin
         If DMCXC.cdsDetCxC.FieldByName('CCDH').AsString = 'H' Then
            xTotHaber := xTotHaber + FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value, 15, 2);
         DMCXC.cdsDetCxC.Next;
      End;
      DMCXC.cdsDetCxC.First;

      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');

      lblV12.Caption := MONABR + FloatToStrF(xTotHaber, ffNumber, 15, 2);

   End;

   lblVCiades.Caption := edtCia.text;
   lblVauxiliar.Caption := dblcdClie.Text;
   lblVDiario.Caption := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', wTDiar);
   lblVTD.Caption := wTDiar;
   lblVTipoCamb.Caption := FloatToStrF(StrToFloat(dbeTCambio.text), ffNumber, 10, 3);
   lblVNoCompro.Caption := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   lblVProveedor.Caption := edtClie.text;
   lblVmoneda.caption := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONDES');
   lblVglosa.caption := DMCXC.cdsCxC.FieldByName('CNTGLOSA').asstring;

   DMCXC.cdsCxC.IndexFieldNames := 'CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := Nil;
   DMCXC.cdsCxC.IndexFieldNames := '';
End;

Procedure TFNotasDC.dblcTDiarioExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   edtTDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
   If length(edtTDiario.Text) = 0 Then
   Begin
      ShowMessage('Tipo de Diario no existe');
      dblcTDiario.Text := '';
      If dblcTDiario.enabled Then
         dblcTDiario.SetFocus;
      exit;
   End;

   wTDiar := dblcTDiario.text;
   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
End;
// Inicio HPC_201405_CXC
{
Procedure TFNotasDC.GrabaCabeceraCanje;
Var
   sSQL, xNCanje: String;
   xxC1, xxC2, xxC3: String;
   a, m, d: word;
   xxTAno, xxTMes, xxTDiar: String;
   nNoReg: integer;
Begin
   DecodeDate(dtpFEmis.Date, a, m, d);
   xxTAno := StrZero(IntToStr(a), 4);
   xxTMes := StrZero(IntToStr(m), 2);

   xxTDiar := DMCXC.BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCTIPREG=''AP'' AND DOCMOD=''CXC''', 'TDIARID');
   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AUTONUM', 'TDIARID', xxTDiar);
   xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.text, xxTDiar, xxTAno, xxTMes);
   nNoReg := StrToInt(xNoReg);
   xNoReg := '';
   While Length(xNoReg) = 0 Do
   Begin
      xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.text, xxTDiar, xxTAno, xxTMes, nNoReg);
      xNoReg := StrZero(xNoReg, 10);
      If Not DMCXC.BuscaCxCReg(dblcCia.text, xxTDiar, xxTAno + xxTMes, xNoReg) Then
      Begin
         xNoReg := StrZero(xNoReg, 10);
         Break;
      End;
      nNoReg := nNoReg + 1;
   End;

   sSQL := 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND TCANJEID=' + QuotedStr('NC');
   xxc1 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', sSQL), 6);
   xxc2 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', sSQL), 6);
   xxc3 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', sSQL), 6);
   If xxc1 > xxc2 Then
      wCje := xxc1
   Else
      wCje := xxc2;

   If wCje < xxc3 Then
      wCje := xxc3;

   sSQL := ' SELECT * FROM CXC307 WHERE CIAID=''CLG'' AND TCANJEID=''CLG'' AND CANJE=''CLG'' ';
   DMCXC.cdsCCanje.Close;
   DMCXC.cdsCCanje.DataRequest(sSQL);
   DMCXC.cdsCCanje.Open;

   wTDiar := xxTDiar;
   DMCXC.cdsCCanje.Insert;
   DMCXC.cdsCCanje.FieldByName('CIAID').AsString := dblcCia.text;
   DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString := 'NC';
   DMCXC.cdsCCanje.FieldByName('CANJE').AsString := wCje;
   DMCXC.cdsCCanje.FieldByName('CLIEID').AsString := dblcdClie.text;
   DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString := dblcdClieRuc.text;
   DMCXC.cdsCCanje.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
   DMCXC.cdsCCanje.FieldByName('TDIARID').AsString := wTDiar;
   DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString := xNoreg;
   DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime := dtpFEmis.date;
   DMCXC.cdsCCanje.FieldByName('CJFVALOR').AsDateTime := dtpFEmis.date;
   DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime := dtpFEmis.date;
   DMCXC.cdsCCanje.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC.FieldByName('TMONID').AsString;
   DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsString := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsString;
   DMCXC.cdsCCanje.FieldByName('CJLOTE').AsString := '';
   DMCXC.cdsCCanje.FieldByName('CPTOID').AsString := DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString;
   DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString := DMCXC.cdsMovCxC.FieldByName('CTATOTAL').AsString;
   DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString), 'CPTODES');
   DMCXC.cdsCCanje.FieldByName('CJNUMLET').AsInteger := 0;
   DMCXC.cdsCCanje.FieldByName('CJDIAS').AsInteger := 0;
   DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := '';
   DMCXC.cdsCCanje.FieldByName('CJUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCCanje.FieldByName('CJFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCCanje.FieldByName('CJFHOR').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'P';
   DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString := DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString;
   DMCXC.cdsCCanje.FieldByName('CJEGIRADO').AsString := DMCXC.cdsMovCxC.FieldByName('CLIEDES').AsString;

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
   Begin
      DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // año+mes
      DMCXC.cdsCCanje.FieldByName('CJAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsCCanje.FieldByName('CJMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsCCanje.FieldByName('CJDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsCCanje.FieldByName('CJTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsCCanje.FieldByName('CJSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsCCanje.FieldByName('CJSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsCCanje.FieldByName('CJAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsCCanje.FieldByName('CJAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsCCanje.FieldByName('CJAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;
   DMCXC.cdsCCanje.Post;                                                         // 24 Post
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

   DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, xxTAno + xxTMes,
      DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').Asstring,
      '=', DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat,
      DMCXC.cdsCanjes.FieldByName('TMONID').AsString);

End;

Procedure TFNotasDC.GrabaDetalleCanje;
Var
   I: Integer;
   wTasa, wSubT: Double;
Begin
   DMCXC.cdsDetCxC.Filter := '';
   DMCXC.cdsDetCxC.Filtered := False;

   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   If DMCXC.cdsCanjes.RecordCount > 0 Then
   Begin
     // INSERTA LOS REGISTROS DE LOS DOCUMENTOS SELECCIONADOS EN EL HABER
      While Not DMCXC.cdsCanjes.EOF Do
      Begin
         DMCXC.cdsDetCxC.Append;
         LlenaDetCxC1(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
         DMCXC.BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CPTOID').AsString), 'CPTOCAB');

         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsQry.FieldByName('TREGID').AsString;
         DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
         If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
            DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
         Else
            DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';

         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;

         If DMCXC.cdsCanjes.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
            DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         End
         Else
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         End;

         DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime;
         DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime;
         DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecNo + 1;

         DMCXC.cdsDetCxC.Post;                                                   // 25 Post
         dDebe := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
         dHabe := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         If dDebe > dHabe Then
         Begin
         //HABER GANANCIA
            GeneraDiferenciaCambio('D1');
         End
         Else
         Begin
            If dDebe < dHabe Then
            Begin
           // DEBE PERDIDA
               GeneraDiferenciaCambio('D2');
            End;
         End;

         DMCXC.cdsCanjes.Next;
      End;
     // INSERTA EL REGISTRO DE LA NOTA DE CREDITO EN EL DEBE
      DMCXC.cdsCanjes.First;

      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC1(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
      DMCXC.BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString), 'CPTOCAB');

      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsQry.FieldByName('TREGID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
      If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
      Else
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';

      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := edtSerie.text;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := edtNoDoc.text;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString; //DMCXC.cdsMovCxC.FieldByName('TMONID').AsString;

      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
      If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
      End;
      DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecNo + 1;

      DMCXC.cdsDetCxC.Post;                                                     // 26 Post
   End;
   DMCXC.cdsCanjes.EnableControls;

   dDebe := FRound(OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOLOC)', 'CCDH=''D'''), 15, 2);
   dHabe := FRound(OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOLOC)', 'CCDH=''H'''), 15, 2);
   If dDebe > dHabe Then
   Begin
     //HABER GANANCIA
      GeneraDiferenciaCambio('D1');
   End
   Else
   Begin
      If dDebe < dHabe Then
      Begin
       // DEBE PERDIDA
         GeneraDiferenciaCambio('D2');
      End;
   End;
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');
End;
}
// Fin HPC_201405_CXC

Procedure TFNotasDC.LlenaDetCxC1(xxNReg: String);
Begin
   DMCXC.cdsDetCxC.Edit;
   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := wTDiar;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xxNReg;
   DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := dblcdClieRuc.Text;
   DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFComp.Date;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsMovCxC.FieldByName('CCMM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsMovCxC.FieldByName('CCDD').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsMovCxC.FieldByName('CCTRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsMovCxC.FieldByName('CCSEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsMovCxC.FieldByName('CCSS').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsMovCxC.FieldByName('CCAATRI').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsMovCxC.FieldByName('CCAASEM').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsMovCxC.FieldByName('CCAASS').AsString;
   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
   DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := 'NC';
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := wCje;
End;

Procedure TFNotasDC.GeneraDiferenciaCambio(xxDH: String);
Var
   xSQL, xCuenta: String;
   sTRegIdDes, sCtaDif, sCptoDif, sDifDH, sDifTRegId: String;
Begin
   sCtaDif := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', 'TIPDET=' + QuotedStr(xxDH), 'CUENTAMN');
   sCptoDif := DMCXC.cdsQry.FieldByName('CPTOMN').AsString;
   sDifDH := DMCXC.cdsQry.FieldByName('CCDH').AsString;
   sTRegIdDes := DMCXC.cdsQry.FieldByName('TREGDES').AsString;
   sDifTRegId := DMCXC.cdsQry.FieldByName('TREGID').AsString;

   If xxDH = 'D2' Then
      xSQL := 'SELECT * FROM TGE202 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND CTA_DIFGP=''P'''
   Else
      xSQL := 'SELECT * FROM TGE202 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND CTA_DIFGP=''G''';

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;

   DMCXC.cdsDetCxC.Insert;
   DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := xxDH;
   DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := 0;
   DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := sDifTRegId;
   DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := sDifDH;

   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := sCptoDif;
   DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := sCtaDif;

   DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := 0;

   DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(Abs(dDebe - dHabe), 15, 2);

   DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sTRegIdDes;

   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := wTDiar;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat;

   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := dblcdClieRuc.Text;

   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := 'NC';
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := wCje;

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;
   DMCXC.cdsDetCxC.FieldByName('CCREG').AsInteger := DMCXC.cdsDetCxC.RecNo + 1;
   DMCXC.cdsDetCxC.Post;                                                         
End;

// Inicio HPC_201405_CXC
{
Procedure TFNotasDC.Button1Click(Sender: TObject);
Begin
   GrabaCabeceraCanje;
   GrabaDetalleCanje;
End;
}
// Fin HPC_201405_CXC
Procedure TFNotasDC.Z2bbtnEliminaClick(Sender: TObject);
Var
   sSQL, xSQL: String;                                       // HPC_201405_CXC
Begin
   If Not DMCXC.VerificaPeriodoVentas(dblcCia.text, DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime) Then
   Begin
      Screen.Cursor := crDefault;
      Exit;
   End;
   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'E' Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues la Nota de Crédito ya se encuentra Eliminada');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues la Nota de Crédito ya se encuentra Anulada');
   End;

   If (DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat > 0) Or (DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat > 0) Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues la Nota de Crédito ya se encuentra Aplicada');
   End;

   If (FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat, 15, 2) <> FRound(DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat, 15, 2)) Or
      (FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat, 15, 2) <> FRound(DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat, 15, 2)) Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues la Nota de Crédito Se encuentra en proceso de Canje');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues la Nota de Crédito ya se encuentra contabilizada');
   End;

   If MessageDlg('Eliminar Nota de Credito' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If (DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString <> 'P') And (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'P') Then
   Begin
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString, DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString,
         DMCXC.cdsMovCxC.fieldbyname('CLAUXID').AsString, DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString, '-',
         (-1) * DMCXC.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat, (-1) * DMCXC.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat,
         DMCXC.cdsMovCxC.fieldbyname('TMONID').AsString);
   End;

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
// Inicio HPC_201405_CXC
{
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
}
          xSQL := ' Update CXC301 '
                + '    set CCESTADO = ' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString)+','
                + '        USERANUL = ' + quotedstr(DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString)+', '
                + '        FECANUL = trunc(sysdate),'
                + '        HORANUL = sysdate '
                + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString)
                + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString)
                + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString)
                + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
       Try
          DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
       Except
          DMCXC.DCOM1.AppServer.RetornaTransaccion;
          ShowMessage('No se puede actualizar los datos de la cabecera');
          exit;
       End;

// Fin HPC_201405_CXC

   //(APLICA)
   If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P' Then
   Begin
      DMCXC.cdsMovCxC2.DisableControls;
      DMCXC.cdsMovCxC2.Filtered := False;
      DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
      DMCXC.cdsMovCxC2Clone.Filtered := False;
      DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
      DMCXC.cdsCanjes.DisableControls;
      DMCXC.cdsCanjes.First;
      While Not DMCXC.cdsCanjes.EOF Do
      Begin
         DMCXC.cdsMovCxC2.SetKey;
         DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         If DMCXC.cdsMovCxC2.GotoKey Then
         Begin
            DMCXC.cdsMovCxC2.Edit;
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
            If DMCXC.EstaAsignadoACobrador(DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString,
               DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString, DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString,
               DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString) Then
               DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO'
            Else
               DMCXC.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'NA';
            DMCXC.cdsMovCxC2.Post;                                               

            DMCXC.cdsMovCxC2Clone.SetKey;
            DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
            DMCXC.cdsMovCxC2Clone.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
            If DMCXC.cdsMovCxC2Clone.GotoKey Then
            Begin
               DMCXC.cdsMovCxC2Clone.Edit;
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGORI').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat, 15, 2);
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
            ShowMessage('No se pudo actualizar el Saldo del Documento' + #13 +
               'Doc: ' + DMCXC.cdsCanjes.FieldByName('DOCID').AsString + ' Serie: ' + DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString +
               'Nro: ' + DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString);
         End;
         DMCXC.cdsCanjes.Next;
      End;
      DMCXC.cdsCanjes.EnableControls;
      DMCXC.cdsMovCxC2Clone.Filtered := True;
      DMCXC.cdsMovCxC2Clone.Filtered := True;
      DMCXC.cdsMovCxC2.EnableControls;
// Inicio HPC_201405_CXC
                xSQL := ' Update CXC301 '
                + '    set CCSALORI = ' + floattostr(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat)+','
                + '        CCSALLOC = ' + floattostr(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat)+', '
                + '        CCSALEXT = ' + floattostr(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat)+', '
                + '        COMPROMET = ' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('COMPROMET').AsString)+' '
                + '  Where CIAID=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').AsString)
                + '    and TDIARID=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').AsString)
                + '    and CCANOMES=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString)
                + '    and CCNOREG=' + quotedstr(DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se puede actualizar los datos de la cabecera');
         exit;
      End;
{
      DMCXC.cdsMovCxC2Clone.DataRequest('Select * from CXC301 Where '
         + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
         + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
         + 'DOCID<>' + QuotedStr(wTDoc));
      DMCXC.AplicaDatos(DMCXC.cdsMovCxC2Clone, 'MovCxC2');                        
}
// Fin HPC_201405_CXC
   End;

   If Length(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString) > 0 Then
   Begin
      sSQL := ' UPDATE LOG314 SET FLAGNC=NULL WHERE CIAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) +
         ' AND NISATIP=''INGRESO'' AND NISAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCPEDIDO').AsString) +
         ' AND TDAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('BANCOID').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
         ShowMessage('No se actualizó Nota de Crédito');
      End;

   End;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);

   ShowMessage('Registro Eliminado... Pulse Intro para continuar');
End;

Procedure TFNotasDC.FormShow(Sender: TObject);
Var
   xFiltro, xsql, xWhere, xc1, xc2, xc3: String;
Begin
   xCrea := True;
   xFlGrid := True;

   xSQL := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
   DMCXC.cdsCCosto.Close;
   DMCXC.cdsCCosto.DataRequest(xsql);
   DMCXC.cdsCCosto.open;

   // Busca TDocId y TDiarId - Inicio
   If DMCXC.cdsTDoc.RecordCount > 0 Then
   Begin
      If DMCXC.cdsTDoc.RecordCount > 1 Then
      Begin
         ShowMessage('Ojo: Existe más de un registro tipo N - N/Crédito');
         // Pide eleccion de FReg 'N' que existan en TDoc (TGE110)
      End;

      wTDoc := DMCXC.cdsTDoc.FieldByName('DOCID').AsString;
      If (DMCXC.cdsTDoc.FieldByName('TDIARID').AsString <> '') And (DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString <> '') Then
      Begin
         ShowMessage('Ojo: Esta N/Crédito tiene más de un T/Diario');
         // Pide eleccion de TDiarID
      End;

      xFiltro := 'TDiarID=' + quotedstr(DMCXC.cdsTDoc.FieldByName('TDIARID').AsString);
      If Length(DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString) > 0 Then
      Begin
         xFiltro := xFiltro + 'or TDiarID=' + '''' + DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString + '''';
      End;
      DMCXC.cdsTDiario.Filter := '';
      DMCXC.cdsTDiario.Filter := xFiltro;
      DMCXC.cdsTDiario.Filtered := true;
      If DMCXC.cdsTDiario.Recordcount = 1 Then
      Begin
         DMCXC.cdsTDiario.First;
         dblcTDiario.Enabled := false;
         wTDiar := DMCXC.cdsTDoc.FieldByName('TDIARID').AsString; // Default(x ahora)
         xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
         dblcTDiario.text := wTDiar;
         edtTDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      End
      Else
      Begin
         dblcTDiario.Enabled := true;
      End;
   End
   Else
   Begin
      ShowMessage('Tipos de Documento no registra definición de N/Crédito');
      // Forma de Registro (N) no definido en tabla TDocum(TGE110)     ¿?
      // Salir de N/Credito
   End;
   ///////////  Busca TDocId y TDiarId - Fin... Resultado: wTDoc y wTDiar

   InicializaCds; // Inicializa en Blanco (Filtra) Client Data Sets--> CiaId=''
   InicializaVars;

   cFlagNI := False;
   dbeMtoOri.enabled := True;
   If DMCXC.wModo = 'A' Then
   Begin
      pc1.ActivePage := ts1;
      InsertaRegistro;

      rgDoc.ItemIndex := 1;
      rgDoc.Enabled := True;
   End
   Else
   Begin
      pc1.ActivePage := ts1;
      dblcCia.Text := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
      dblcdClie.Text := DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString;
      dblcdClieRuc.Text := DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString;
      edtSerie.Text := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      edtNoDoc.Text := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      dbeTCambio.Text := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsString;
      dblcTDiario.Text := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;
      edtTDiario.text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      xSector := DMCXC.cdsMovCxC.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsMovCxC.FieldByName('ZVTAID').AsString;
      wTdiar := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;
      edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
      edtClie.Text := DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,CLIERUC,CLIEDES,VEID', 'CLIEID=' + QuotedStr(dblcdClie.Text), 'CLIEDES');
      xVeidMaes := DMCXC.cdsQry.FieldByName('VEID').AsString;
      edtTMon.Text := DMCXC.DisplayDescrip('TGE103', 'TmonDes', 'TmonId', dbeTCambio.Text);

      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P' Then
         rgDoc.ItemIndex := 0 //Pendientes
      Else
         If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'C' Then //Cancelados
            rgDoc.ItemIndex := 1
         Else
            If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'S' Then //SIN DOCUMENTOS
               rgDoc.ItemIndex := 2;

      rgDoc.Enabled := DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T';

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
// Inicio HPC_201405_CXC
      FiltraGrids;
      DatosCds;
      Filtracds(DMCXC.cdsModelo, 'SELECT * FROM CXC102 WHERE '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'CPTOCAB=' + QuotedStr(dblcdTipoOpera.text) + ' ORDER BY TREGID ');

      DMCXC.cdsCpto.Close;
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

      bbtnSumatClick(Sender);
   End;
// Fin HPC_201405_CXC
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').ReadOnly := False;
   dbgDocCanje.ColumnByName('CCMTOLOC').ReadOnly := False;
   DMCXC.cdsTDoc.Filtered := False;

   If DMCXC.wModo = 'A' Then
   Begin
      xWhere := 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND TCANJEID=' + QuotedStr('NC');
      xc1 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', xWhere), 6);
      xc2 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', xWhere), 6);
      xc3 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', xWhere), 6);
      If xc1 > xc2 Then
         wCje := xc1
      Else
         wCje := xc2;

      If wCje < xc3 Then
         wCje := xc3;

      EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      RecuperarCiaUnica(dblcCia, edtCia);
   End
   Else
   Begin
      xTDA := DMCXC.cdsMovCxC.FieldByName('BANCOID').AsString;
      xTMes := DMCXC.cdsMovCxC.FieldByName('CCMM').AsString;
      xTAno := DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString;

      wCje := DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString;
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + '''' + ' and (TMON_LOC=' + '''' + 'L' + '''' + ' or TMON_LOC=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES', xWhere, 'TMONDES');

      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I' Then
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ')
      Else
         EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

      FiltraGrids;
      bbtnSumatClick(Sender);
////// para que muestre el monto en el segundo tab en caso de edición

      If rgDoc.itemindex = 0 Then
      Begin
         If dblcTMon.Text = DMCXC.wTMonExt Then
         Begin
            edtFinal.Text := ' LA NOTA DE CREDITO ES POR ' + dbgDocCanje.ColumnByName('CCMtoExt').FooterValue + ' ' + edtTmon.Text;
         End
         Else
         Begin
            edtFinal.Text := ' LA NOTA DE CREDITO ES POR ' + dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue + ' ' + edtTmon.Text;
         End;
      End
      Else
      Begin
         edtFinal.Text := ' LA NOTA DE CREDITO ES POR ' + FloatToStrF(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2) + ' ' + edtTmon.Text;
      End;

      dblcdTipoOpera.text := DMCXC.cdsMovCxC.FieldByName('CPTOID').AsString;
      edtTipoOpera.text := DMCXC.DisplayDescrip('CXC208', 'CPTODES', 'CPTOCAB', dblcdTipoOpera.Text);

      If DMCXC.cdsQry2.FieldByname('CPTODEVALM').AsString = 'S' Then
         cFlagNI := True;

   End;

   xCrea := False;
End;

Procedure TFNotasDC.CargaDataSource;
Begin
   dblcTMon.DataSource := DMCXC.dsMovCxC;
   dbeTCambio.DataSource := DMCXC.dsMovCxC;
   dtpFEmis.DataSource := DMCXC.dsMovCxC;
   dblcClAux.DataSource := DMCXC.dsMovCxC;
   dblcdClie.DataSource := DMCXC.dsMovCxC;
   dblcdClieRuc.DataSource := DMCXC.dsMovCxC;
   dbeNoReg.DataSource := DMCXC.dsMovCxC;
   dtpFComp.DataSource := DMCXC.dsMovCxC;
   dbeMtoOri.DataSource := DMCXC.dsMovCxC;
   dblcdTipoOpera.DataSource := DMCXC.dsMovCxC;
   dblcdNisa.DataSource := DMCXC.dsMovCxC;
   dbgPendientes.DataSource := DMCXC.dsMovCxC2;
   dbgDocCanje.DataSource := DMCXC.dsCanjes;
   dbgDetCxC.DataSource := DMCXC.dsDetCxC;
   dbeImporte.DataSource := DMCXC.dsDetCxC;
   dbeDH.DataSource := DMCXC.dsDetCxC;
   dbeCuenta.DataSource := DMCXC.dsDetCxC;
   dbeGlosa.DataSource := DMCXC.dsDetCxC;
   dblcdCnpEgr.DataSource := DMCXC.dsDetCxC;
   dblcdCCosto.DataSource := DMCXC.dsDetCxC;
   dblcCia.LookupTable := DMCXC.cdsCia;
   edtSerie.LookupTable := DMCXC.cdsSerie;
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcdTipoOpera.LookupTable := DMCXC.cdsCptoCab;
   dblcTipReg.LookupTable := DMCXC.cdsTipReg;
   dblcdCnpEgr.LookupTable := DMCXC.cdsCpto;
   dblcdCCosto.LookupTable := DMCXC.cdsCCosto;
   dblcdPresup.LookupTable := DMCXC.cdsPresup;
End;

Procedure TFNotasDC.bbtnSTClick(Sender: TObject);
Begin
   GeneraNotaIngresoAlmacen('I');
End;

Procedure TFNotasDC.edtSerieNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFNotasDC.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Function TFNotasDC.fg_TCDocOrigen: Boolean;
Var
   xsSql: String;
   xdTipoCambio: Double;
Begin

   If DMCXC.cdsMovCxC.state = dsBrowse Then
   Begin
      DMCXC.cdsMovCxC.Edit;
   End;

   DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsString := DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsString;

End;

End.

