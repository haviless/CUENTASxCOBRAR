Unit CxC208;

//

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, wwdbdatetimepicker, Buttons,
   Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, DB, ComCtrls, Tabnotbk, Menus,
   WWCLIENT, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass,
   ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, wwdatsrc,
   variants, CXCUtil;

Type
   TFNotasDCAplica = Class(TForm)
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
      lblComprob: TLabel;
      dbeNoReg: TwwDBEdit;
      lblFComprob: TLabel;
      dtpFComp: TwwDBDateTimePicker;
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
      ppHeaderBand2: TppHeaderBand;
      pplblNCRazon: TppLabel;
      pplblNCDIR: TppLabel;
      pplblNCRUC: TppLabel;
      pplblNCDIA1: TppLabel;
      pplblNCMES1: TppLabel;
      pplblNCANO1: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText8: TppDBText;
      ppDBMemo3: TppDBMemo;
      ppFooterBand2: TppFooterBand;
      ppDBCalc2: TppDBCalc;
      pplblNCIGV: TppLabel;
      lblNCTotal: TppLabel;
      pplblNCLetras: TppLabel;
      pplblNCSEUO: TppLabel;
      pplblNCFactura: TppLabel;
      pplblNCFacFecha: TppLabel;
      pplblNCConPagoID: TppLabel;
      pplblNCVendedor: TppLabel;
      lblNCClie: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppLabel1: TppLabel;
      dbeMtoOri: TwwDBEdit;
      Label4: TLabel;
      Label7: TLabel;
      dbeSalOri: TwwDBEdit;
      Panel1: TPanel;
      edtCambioCanje: TEdit;
      Label9: TLabel;
      Label10: TLabel;
      dtpFOpera: TwwDBDateTimePicker;
      Procedure bbtnOKClick(Sender: TObject);
      Procedure dbgCanjeDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure dbgCanjeEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgCanjeMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure LlenaDetCxC;
      Procedure CalculaTotalCje;
      Procedure CalculaTotalDetCje;
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
      Procedure dblcTMonChange(Sender: TObject);
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
      Procedure dtpFEmisKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnActRegClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbeDHExit(Sender: TObject);
      Procedure dbeImporteExit(Sender: TObject);
      Procedure dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgDetCxCDblClick(Sender: TObject);
      Procedure dbgDetCanjeCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FiltraGrids;
      Function Consistencia: Boolean;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDocCanjeCalcCellColors(Sender: TObject;
         Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
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
      Procedure dtpFOperaExit(Sender: TObject);
      Procedure dbgDocCanjeExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
      Procedure InsertaRegistro;
      Procedure GeneraRegistro;
      Procedure GrabaDetCanje;
      Procedure ActualizaCanje;
      Procedure EmiteDoc(xArchivoReporte: String);
    // para presupuestos - pjsv - 03/11/2000
      Procedure CalculoNivelSupe;
      Procedure inicializoCero(xcds: TwwClientDataSet);
      Procedure CreaSuperior;
      Procedure CalculoNivel;
      Procedure SaldosAuxiliarCLG(xxCia, xxAnoMes, xxClAux, xxAux,
         xxSigno: String; xxImpMN, xxImpME: Double; xxtmonid: String);
      Procedure GeneraDiferenciaCambio(xxDH: String);
      Procedure GrabaCabeceraCanje;
      Procedure CargaDataSource;
   Public
    { Public declarations }
      xVar: String;
      xxTCambio: Double;
   End;

Var
   xRegAct, xRegAct2, xRegMov: TBookMark;
   FNotasDCAplica: TFNotasDCAplica;
   wRegGrab, wCuadra, wNuevo: Boolean;
   wSimbMn, wTDoc, wTDiar, wCje, wEstadTem: String;
   fMtoLoc, fMtoExt, wTDev, wTDev2, wIgv: Double; // Cantidad IGV para restarle al saldo y tener MtoMax de Ingreso
   xMtoLoc, xMtoExt: double;
   xTDiar, xNoReg, xTAutoNum, xTAno, xTMes: String;
   xCrea: Boolean;
   xFlGrid: Boolean;
   xAAMM: String;
   sCanje: String;
   dDebe, dHaber: double;
Implementation

Uses CxCDM, oaCC2000, CxC202;
{$R *.DFM}

Procedure TFNotasDCAplica.InsertaRegistro;
Begin
   DMCXC.cdsMovCxC.Insert;
   DMCXC.cdsMovCxC.FieldByName('DOCID').AsString := wTDoc;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'X';
   DMCXC.cdsMovCxC.Post;
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

Procedure TFNotasDCAplica.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
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
   z2bbtnEmiteDoc.Enabled := fALSE;
   Z2bbtnContab.Enabled := False;
   Z2bbtnNuevo.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;

   If xxModo = 0 Then
   Begin

//        FNotasDC.OnKeyPress := FormKeyPress;

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

//WMC2211      FNotasDC.OnKeyPress := Nil;

      If xMovConta = 'S' Then
      Begin
         pnlDetalle.Enabled := True;
         dbgDocCanje.Enabled := True;
         dbgDetCxC.Enabled := True;

         lblContab.Visible := True;

         pnlPie.Enabled := True;
         Z2bbtnImprime.Enabled := True;
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

            lblActivo.Visible := True;
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            z2bbtnEmiteDoc.Enabled := True;
            Z2bbtnContab.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := False;
            z2bbtnEmiteDoc.Enabled := True;

            lblAnula.Visible := True;
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
      z2bbtnEmiteDoc.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
End;

Procedure TFNotasDCAplica.FiltraGrids;
Var
   xFiltro: String;

Begin
// Filtro para cdsLetras que se utilizará para Documentos Pendientes
{    xFiltro:=  '(CIAID='+QuotedStr(dblcCia.Text)+ ' AND CLIEID='+QuotedStr(dblcdClie.Text)+ ') and '+
               '(DOCID='+QuotedStr(DMCXC.wsFac)+' OR DOCID='+QuotedStr(DMCXC.wsChe)+' OR DOCID='+QuotedStr(DMCXC.wsBol)+' OR DOCID='+QuotedStr(DMCXC.wsNDe)+ ') AND '
               + ' (CCESTADO='+QuotedStr('P')+' OR CCESTADO='+QuotedStr('I')+') AND UBIID='+QuotedStr(DMCXC.wsOfi);}

   xFiltro := '(CIAID=' + QuotedStr(dblcCia.Text) + ' AND CLIEID=' + QuotedStr(dblcdClie.Text) + ') and ' +
      '(((DOCID=' + QuotedStr(DMCXC.wsFac) + ' OR DOCID=' + QuotedStr(DMCXC.wsChe) + ' OR DOCID=' + QuotedStr(DMCXC.wsBol) + ' OR DOCID=' + QuotedStr(DMCXC.wsNDe) + ') AND ' +
      '(CCESTADO=' + QuotedStr('P') + ') AND (UBIID=' + QuotedStr(DMCXC.wsOfi) + ')) OR ((DOCID=' + QuotedStr(DMCXC.wsLet) + ') AND (CCESTADO=' + QuotedStr('P') + ' OR CCESTADO=' + QuotedStr('I') + ') AND ' +
//CONSULTAR PARA DEMA
//              '(CCESTADO='+QuotedStr('P')+') ) OR ((DOCID='+QuotedStr(DMCXC.wsLet)+') AND (CCESTADO='+QuotedStr('P')+' OR CCESTADO='+QuotedStr('I')+') AND '+
   '((UBIID=' + QuotedStr(DMCXC.wsOfi) + ' OR ((UBIID<>' + QuotedStr(DMCXC.wsOfi) + ') AND CCFLAGPROT=''S'')))))';

   //Filtracds( DMCXC.cdsMovCxC2,'SELECT ''ABREVIATURA'' DOCABR,CXC301.* from CXC301 Where '+xFiltro);
   Filtracds(DMCXC.cdsMovCxC2, 'SELECT CXC301.* from CXC301 Where ' + xFiltro);

   DMCXC.cdsMovCxC2.DisableControls;
{   if DMCXC.cdsTDoc.IndexFieldNames<>'DOCID' then
     DMCXC.cdsTDoc.IndexFieldNames:='DOCID';

   DMCXC.cdsMovCxC2.First;
   while not DMCXC.cdsMovCxC2.EOF do
   begin
     DMCXC.cdsTDoc.Setkey;
     DMCXC.cdsTDoc.FieldByName('DOCID').AsString:=DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
     DMCXC.cdsMovCxC2.Edit;
     if DMCXC.cdsTDoc.Gotokey then
       DMCXC.cdsMovCxC2.FieldByName('DOCABR').AsString:=DMCXC.cdsTDoc.FieldByName('DOCABR').AsString
     else
      DMCXC.cdsMovCxC2.FieldByName('DOCABR').AsString:='N.A.';
     DMCXC.cdsMovCxC2.Post;
     DMCXC.cdsMovCxC2.Next;
   end;}
   DMCXC.cdsMovCxC2.Filter := 'FLAGVAR<>''XX''';
   DMCXC.cdsMovCxC2.Filtered := True;

   DMCXC.cdsMovCxC2.EnableControls;
{   if (rgDoc.ItemIndex = 0) then
    begin//TDocumento Pendiente
      DMCXC.cdsMovCxC2.Filter:='';
      DMCXC.cdsMovCxC2.Filter:='(CCSalLoc>0 or CCSalExt>0) '+' and Flagvar <>'+quotedstr('JJ')
                             + ' and CCESTADO='+quotedstr('P');
      DMCXC.cdsMovCxC2.Filtered:=True;
   end
   else
     if (rgDoc.ItemIndex = 1) then
     begin//TDocumento Pendiente
        DMCXC.cdsMovCxC2.Filter:='';

        DMCXC.cdsMovCxC2.Filter:='(CCSalLoc=0 or CCSalExt=0) '+' and Flagvar <>'+quotedstr('JJ')
        //** 14/08/2001 - pjsv
                                + ' AND CCESTADO='+quotedstr('C');
        //**
        DMCXC.cdsMovCxC2.Filtered:=True;
     end;}

// Filtro para Documentos escogidos para el Canje

   DMCXC.cdsCanjes.Close;
   DMCXC.cdsCanjes.DataRequest('Select CXC304.* from CXC304 Where '
{                        + 'CIAID='    +''''+ dblcCia.Text+''''+ ' and '
                        + 'TCANJEID=' +''''+xVar+''''+ ' and '
                        + 'CCCANJE='  +''''+ wCje        +'''');}
      + 'CIAID=' + QuotedStr('CLG') + ' and '
      + 'TCANJEID=' + QuotedStr('CLG') + ' and '
      + 'CCCANJE=' + QuotedStr('CLG'));
   DMCXC.cdsCanjes.Open;

{   Filtracds( DMCXC.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR,CXC304.* from CXC304 Where '
                        + 'CIAID='    +''''+ dblcCia.Text+''''+ ' and '
                        + 'TCANJEID=' +''''+ 'NC'        +''''+ ' and '
                        + 'CCCANJE='  +''''+ wCje        +'''' );}

   TNumericField(DMCXC.cdsMovCxC.FieldByName('CCMTOORI')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsMovCxC.FieldByName('CCMTOLOC')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsMovCxC.FieldByName('CCMTOEXT')).DisplayFormat := '###,###,#0.00';

// Filtra DetCxP para mostrar DetContable(dbgDetCxp) si NCredito Existe
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + '''' + 'CLG' + '''' + ' and '
      + 'CLIEID=' + '''' + 'CLG' + '''' + ' and '
      + 'DOCID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCSERIE=' + '''' + 'CLG' + '''' + ' and '
      + 'CCNODOC=' + '''' + 'CLG' + '''');

End;

Procedure TFNotasDCAplica.dblcCiaExit(Sender: TObject);
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
End;

Procedure TFNotasDCAplica.dblcdClieExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If length(dblcdClie.Text) > 0 Then
   Begin
      edtClie.Text := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'CLIEID', dblcdClie.Text);
      If length(edtClie.Text) = 0 Then
      Begin
         ShowMessage('Cliente no existe');
         dblcdClie.Text := '';
         dblcdClieRuc.Text := '';
         dblcdClie.SetFocus;
         exit;
      End;
      DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsQry2.FieldByName('CLIERUC').AsString;
      dblcTMon.SetFocus;
   End
   Else
   Begin
      edtClie.Text := '';
   End;
End;

Procedure TFNotasDCAplica.dblcdClieRucExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If length(dblcdClieRuc.Text) > 0 Then
   Begin
      edtClie.Text := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'CLIERUC', dblcdClieRuc.Text);
      If length(edtClie.Text) = 0 Then
      Begin
         ShowMessage('Cliente no existe');
         dblcdClie.Text := '';
         dblcdClieRuc.Text := '';
         dblcdClie.SetFocus;
         exit;
      End;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := DMCXC.cdsQry.FieldByName('CLIEID').AsString;
   End
   Else
   Begin
      edtClie.Text := '';
      dblcdClie.SetFocus;
   End;
End;

Procedure TFNotasDCAplica.InicializaVars;
Begin
   wCje := '';
   wSimbMn := '';
   wEstadTem := ''; // si regresa de Det a Pend (cuando existe N/C)
   wCuadra := False;
   wRegGrab := False;
   edtFinal.Text := '';
   edtSerie.Text := '';
   edtNoDoc.Text := '';
End;

Procedure TFNotasDCAplica.InicializaCds;
Begin
//   Filtracds( DMCXC.cdsMovCxC2,'Select ''ABREVIATURA'' DOCABR,CXC301.* from CXC301 Where CIAID=''''' );
   Filtracds(DMCXC.cdsMovCxC2, 'Select CXC301.* from CXC301 Where CIAID=''CLG''');
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where CIAID=''CLG''');
//   Filtracds( DMCXC.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR,CXC304.* from CXC304 Where CIAID=''''' );
   Filtracds(DMCXC.cdsCanjes, 'Select CXC304.* from CXC304 Where CIAID=''CLG''');
End;

Function TFNotasDCAplica.Consistencia: Boolean;
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

Procedure TFNotasDCAplica.bbtnOKClick(Sender: TObject);
Var
   xWhere: String;
Begin
   If Not Consistencia Then Exit;

   DMCXC.xFlagCal := True;

   If DMCXC.wModo = 'A' Then
   Begin
      xWhere := 'CiaId=' + '''' + dblcCia.Text + '''' + ' and TCanjeID=' + '''' + xVar + '''';
      wCje := DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCanje', xWhere);
      wCje := StrZero(wCje, 6);
      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T' Then GeneraRegistro;
   End;

   DatosCds;
   FiltraGrids;

   If (DMCXC.cdsMovCxC2.RecordCount = 0) And (DMCXC.cdsCanjes.RecordCount = 0) Then
   Begin
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'X';
      If (DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P') Then
         Raise Exception.Create('Cliente No tiene Documentos Pendientes de Pago')
      Else
         Raise Exception.Create('Cliente No tiene Documentos Cancelados')
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFNotasDCAplica.GeneraRegistro;
Var
   xMes, xNoReg: String;
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
   xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   nNoReg := StrToInt(xNoReg);
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
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
   DMCXC.cdsPost(DMCXC.cdsMovCxC);
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
End;

Procedure TFNotasDCAplica.DatosCds;
Begin
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').Asstring := wTDiar;
   DMCXC.cdsMovCxC.FieldByName('TCANJEID').AsString := xVar;
   DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString := wCje;
   DMCXC.cdsMovCxC.FieldByName('CCFCANJE').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDatetime := DMCXC.dateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDatetime := DMCXC.timeS;

   If DMCXC.wModo = 'A' Then

   Else
   Begin // si no es nuevo
      DMCXC.cdsCanjes.DisableControls;
      DMCXC.cdsCanjes.First;
      While Not DMCXC.cdsCanjes.Eof Do
      Begin // Recalcula saldos si NCredito ya existe
         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsMovCxC2.Setkey;
         DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;

         If DMCXC.cdsMovCxC2.GotoKey Then
         Begin
            DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         End;
         DMCXC.cdsCanjes.FieldByName('CJEANTMN').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CJEANTME').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsPost(DMCXC.cdsCanjes);
         DMCXC.cdsCanjes.Next;
      End;
      DMCXC.cdsCanjes.EnableControls;
   End; // si no es nuevo
End;

Procedure TFNotasDCAplica.dtpFCompExit(Sender: TObject);
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

   xWhere := 'TMonId=' + '''' + DMCXC.wTMonExt + '''' + ' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFComp.Date) + '''' + ')';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
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
   xWhere := 'TDiarId=' + '''' + wTDiar + '''' + ' and CCAnoMes=' + '''' + xAAMM + '''';
   wLote := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCLote', xWhere);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFEMIS').Value := dtpFComp.Date;
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').Value := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').Value := xTAno + xTMes;
End;

Procedure TFNotasDCAplica.DatosdeFecha;
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

Procedure TFNotasDCAplica.dbgPendientesMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgPendientes.BeginDrag(False);
End;

Procedure TFNotasDCAplica.dbgCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDCAplica.dbgCanjeEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = dbgPendientes Then
   Begin
      With DMCXC Do
      Begin
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsMovCxC2.Setkey;
         DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
         If cdsMovCxC2.GotoKey Then
         Begin
            cdsMovCxC2.Edit;
            If wEstadTem <> '' Then cdsMovCxC2.FieldByName('CCESTADO').AsString := wEstadTem;
            DMCXC.cdsPost(DMCXC.cdsMovCxC2);
            cdsCanjes.Delete;
         End;
      End;
   End;
   If (Target = bbtnDel1) And (DMCXC.cdsCanjes.RecordCount > 0) Then DMCXC.cdsCanjes.Delete;

End;

Procedure TFNotasDCAplica.dbgCanjeMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFNotasDCAplica.CalculaTotalCje;
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

Procedure TFNotasDCAplica.CalculaTotalDetCje;
Begin
     // Totales de Documentos de canje  (Cancelación)
   With DMCXC Do
   Begin // se puede usar CalculaTotalDetCje en lugar de
      wTDev2 := 0;
      fMtoLoc := 0;
      fMtoExt := 0;
      cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid
      xRegAct := cdsCanjes.GetBookmark; // marca reg. donde se quedo
     // Jsr
      If cdsCanjes.RecordCount > 0 Then
      Begin
         cdsCanjes.First;
         While Not cdsCanjes.Eof Do
         Begin
            If dblcTMon.Text = wTMonExt Then
               wTDev2 := wTDev2 + cdsCanjes.FieldByName('CCMTOEXT').AsFloat
            Else
               wTDev2 := wTDev2 + cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            fMtoExt := fMtoExt + cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            fMtoLoc := fMtoLoc + cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            cdsCanjes.Next;
         End;
         cdsCanjes.GotoBookmark(xRegAct);
         cdsCanjes.FreeBookmark(xRegAct);
      End;
      cdsCanjes.EnableControls;
   End;
End;

Procedure TFNotasDCAplica.LlenaDetCxC;
Begin
   With DMCXC Do
   Begin
      cdsDetCxC.Edit;
      cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
      cdsDetCxC.FieldByName('TDIARID').AsString := xTDiar;
      cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg;
      cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
      cdsDetCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
      cdsDetCxC.FieldByName('CLIERUC').AsString := dblcdClieRuc.Text;
      cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFOpera.Date;
      cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
      cdsDetCxC.FieldByName('CCUSER').AsString := wUsuario;
      cdsDetCxC.FieldByName('CCFREG').AsDateTime := dateS;
      cdsDetCxC.FieldByName('CCHREG').AsDateTime := timeS;
      cdsDetCxC.FieldByName('TCANJEID').AsString := xVar;
      cdsDetCxC.FieldByName('CCCANJE').AsString := wCje;

      If BuscaFecha('TGE114', 'Fecha', dtpFOpera.date) Then
      Begin
         cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString;
         cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
         cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
         cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
         cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
         cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
         cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
         cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
         cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
         cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
      End;
   End;
End;

Procedure TFNotasDCAplica.dbgPendientes2DragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDCAplica.dbgDetCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDCAplica.bbtnCancelaClick(Sender: TObject);
Begin
   // Cancela todas las modificaciones en los
   DMCXC.cdsDetCxC.CancelUpdates;
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsMovCxC.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;

//   EstadoDeForma(0,DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString,DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString );

End;

Procedure TFNotasDCAplica.dblcTipRegExit(Sender: TObject);
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
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := dblcTipReg.Text;
      xWhere := 'TRegId=' + '''' + dblcTipReg.Text + '''';
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', xWhere, 'TIPDET');
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').Value;
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
      DMCXC.cdsCpto.IndexFieldNames := 'CptoDes';
   End; // si no se apretó botón de cancelar

End;

Procedure TFNotasDCAplica.dblcdCnpEgrExit(Sender: TObject);
Var
   ssql, xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CPTOID=' + '''' + dblcdCnpEgr.Text + '''';
      If Length(DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOID')) > 0 Then
      Begin
         DMCXC.cdsDetCxC.edit;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         If Length(DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString) = 0 Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
         End;
         xWhere := 'CuentaId=' + '''' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + '''';
         If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
         Begin
            //** 20/12/2000 - pjsv
            If (DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S') Then //AND (wActuaPresu = true) then
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
              //** 14/08/2001 - pjsv
               dblcdCCosto.text := '';
               edtCCosto.text := '';
              //**
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
              //** 14/008/2001 - pjsv
               dbeTipPre.Text := '';
               dblcTipPre.Text := '';
               dblcdPresup.Text := '';
               edtPresup.Text := '';
              //**
               dblcdPresup.Enabled := false;
               lblTipPre.Enabled := false;
               lblPresu.Enabled := false;
            End;
            //**
         End;
      End
      Else
      Begin
         ShowMessage(' Concepto NO encontrado, reintente!');
         dblcdCnpEgr.SetFocus;
      End;

   End;
End;

///////// procedimientos para actulizar campos en cualquier momento... inicio

Procedure TFNotasDCAplica.dblcTMonChange(Sender: TObject);
Begin

End;

///////// procedimientos para actulizar campos en cualquier momento... fin

Procedure TFNotasDCAplica.bbtnBorraClick(Sender: TObject);
Var
   xFiltro: String;
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'X') Or
         (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T') Then
      Begin
         DMCXC.cdsDetCxC.CancelUpdates;
         DMCXC.cdsMovCxC2.CancelUpdates;
         DMCXC.cdsCanjes.CancelUpdates;
         DMCXC.cdsMovCxC.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
         //** 14/08/2001 - pjsv
         xFiltro := 'CIAID=' + quotedstr('');
         Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where ' + xFiltro);
         //**
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

Procedure TFNotasDCAplica.bbtnSumatClick(Sender: TObject);
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

Procedure TFNotasDCAplica.bbtnGen302Click(Sender: TObject);
Var
   I: Integer;
   wTasa, wSubT: Double;
Begin
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   If DMCXC.cdsCanjes.RecordCount > 0 Then
   Begin
      If (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat = 0) Or (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat = 0) Then
      Begin
         DMCXC.cdsCanjes.EnableControls;
         Raise Exception.Create('Ingrese Monto a Aplicar');
      End;
     // INSERTA LOS REGISTROS DE LOS DOCUMENTOS SELECCIONADOS EN EL HABER
      While Not DMCXC.cdsCanjes.EOF Do
      Begin
         DMCXC.cdsDetCxC.Insert;
         LlenaDetCxC;
         DMCXC.BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsCanjes.FieldByName('CPTOID').AsString), 'CPTOCAB');

         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsQry.FieldByName('TREGID').AsString;
         DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
         If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
            DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
         Else
            DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';

         DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
{       DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
       DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
       DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;}

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

         DMCXC.cdsDetCxC.Post;
         DMCXC.cdsCanjes.Next;
      End;
     // INSERTA EL REGISTRO DE LA NOTA DE CREDITO EN EL DEBE
      DMCXC.cdsCanjes.First;
      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC;
      DMCXC.BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString), 'CPTOCAB');

      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsQry.FieldByName('TREGID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
      If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
      Else
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';

      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := wTDoc;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := edtSerie.text;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := edtNoDoc.text;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime;
      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString; //DMCXC.cdsMovCxC.FieldByName('TMONID').AsString;

      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := fMtoLoc;
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := fMtoExt;
      If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := fMtoLoc;
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := fMtoExt;
      End;

      DMCXC.cdsDetCxC.Post;

      bbtnGen302.Enabled := False;
   End;
   DMCXC.cdsCanjes.EnableControls;

{   wSubT:=0;
   DMCXC.cdsCanjes.DisableControls;  // inhab. movim. de puntero pal grid
   if DMCXC.cdsCanjes.RecordCount>0 then
   begin
      if DMCXC.cdsDetCxC.RecordCount=0 then
      begin   // N.de Credito nueva
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').ReadOnly:=False;   //  por problems al crear
         DMCXC.cdsTipReg.SetKey;
         DMCXC.cdsTipReg.FieldByName('TIPDET').AsString:='I1';
         DMCXC.cdsTipReg.Gotokey;
         wTasa := DMCXC.cdsTipReg.FieldByName('TASA').Value;

         for I:=1 to 3 do
         begin      //llena el archivo contable (sugerido)
             DMCXC.cdsDetCxC.Insert;
             LlenaDetCxC;
             // VHN
             if I=1 then DMCXC.cdsTipReg.Locate('TIPDET;TIPDOC',VarArrayOf(['MG','NC']),[]);
             if I=2 then DMCXC.cdsTipReg.Locate('TIPDET;TIPDOC',VarArrayOf(['I1','NC']),[]);
             if I=3 then DMCXC.cdsTipReg.Locate('TIPDET;TIPDOC',VarArrayOf(['TO','NC']),[]);

             DMCXC.cdsDetCxC.Edit;
             DMCXC.cdsDetCxC.FieldByName('TREGID').AsString:=DMCXC.cdsTipReg.FieldByName('TREGID').AsString;
             DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString:=DMCXC.cdsTipReg.FieldByName('TIPDET').AsString;
             DMCXC.cdsDetCxC.FieldByName('CCDH').AsString  :=DMCXC.cdsTipReg.FieldByName('CCDH').AsString;

             if dblcTMon.Text = DMCXC.wTMonExt then begin
                DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString  := DMCXC.cdsTipReg.FieldByName('CPTOME').AsString;
                DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString:= DMCXC.cdsTipReg.FieldByName('CUENTAME').AsString;
                end
             else begin
                DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString  := DMCXC.cdsTipReg.FieldByName('CPTOMN').AsString;
                DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString:= DMCXC.cdsTipReg.FieldByName('CUENTAMN').AsString;
             end;
             DMCXC.cdsCpto.IndexFieldNames  :='CptoId';
             DMCXC.cdsCpto.SetKey;
             DMCXC.cdsCpto.FieldByName('CPTOID').AsString := DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString;
             if DMCXC.cdsCpto.Gotokey then
                DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsCpto.FieldByName('CPTODES').AsString;

             if I=1 then begin
                wSubT := FRound( wTDev2 / ((wTasa/100)+1), 15, 2);
                DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wSubT;
             end;
             if I=2 then begin
                DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(wTDev2-wSubT,15,2);
             end;
             if I=3 then begin
                DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;
             end;
         end;
         DMCXC.cdsPost( DMCXC.cdsDetCxC );
      end;
      bbtnGen302.Enabled:=False;
   end;
   DMCXC.cdsCanjes.EnableControls;}

   //SUMATORIA DE LOS MONTOS DEL ASIENTO

//   dbgDetCxC.ColumnByName('CCMTOLOC').FooterValue:=FloatToStrF(OperClientDataSet(DMCXC.cdsDetCxC,'SUM(CCMTOEXT)','CCDH=''D'''),ffNumber,15,2);
//   dbgDetCxC.ColumnByName('CCMTOLOC').FooterValue:=FloatToStrF(OperClientDataSet(DMCXC.cdsDetCxC,'SUM(CCMTOLOC)','CCDH=''H'''),ffNumber,15,2);
   dDebe := FRound(OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOLOC)', 'CCDH=''D'''), 15, 2);
   dHaber := FRound(OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOLOC)', 'CCDH=''H'''), 15, 2);
   If dDebe > dHaber Then
   Begin
     //HABER GANANCIA
      GeneraDiferenciaCambio('D1');
   End
   Else
   Begin
      If dDebe < dHaber Then
      Begin
       // DEBE PERDIDA
         GeneraDiferenciaCambio('D2');
      End;
   End;
End;

Procedure TFNotasDCAplica.dbgDetCxCEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = bbtnDel1 Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount > 0 Then DMCXC.cdsDetCxC.Delete;
      If (DMCXC.cdsDetCxC.RecordCount = 0) And (wTDev2 > 0) Then bbtnGen302.Enabled := True;
   End;
End;

Procedure TFNotasDCAplica.dbgDetCxCMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDetCxC.BeginDrag(False);
End;

Procedure TFNotasDCAplica.bbtnDel1DragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDCAplica.bbtnCalcClick(Sender: TObject);
Begin
   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación
End;

Procedure TFNotasDCAplica.edtNoDocExit(Sender: TObject);
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
   DMCXC.cdsMovCxC.Post;
End;

Procedure TFNotasDCAplica.InicializaPnlCab2;
Begin
   dtpFComp.date := 0;
   dbeNoReg.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCambio.Text := '';
   dtpFEmis.date := 0;
End;

Procedure TFNotasDCAplica.Z2bbtnContabClick(Sender: TObject);
Begin
   //** 12/09/2001 - pjsv
   If DMCXC.MesCerrado(xTMes, xTAno, dblcCia.text) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;
   //**

   If MessageDlg('Contabilizar Nota de Credito' + chr(13) + '       ¿Esta Seguro?       ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString := 'S';
   DMCXC.cdsMovCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
   DMCXC.cdsMovCxC.Post;

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

   DMCXC.GeneraContabilidad(dblcCia.Text, wTDiar, xAAMM, dbeNoReg.text, Self);

   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Contabilizado... Pulse Intro para continuar');
End;

Procedure TFNotasDCAplica.Z2bbtnNuevoClick(Sender: TObject);
Begin
   // si no es NC Contabilizada existente Ó Anulado ---> para evitar confirmacion
   If MessageDlg('Registra un Nuevo Documento' + chr(13) +
      '          ¿Esta Seguro?  ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   InicializaCds;
   InicializaVars;
   InsertaRegistro;
   pc1.ActivePage := ts1;
   dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := '';
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFNotasDCAplica.dbgCanjeColExit(Sender: TObject);
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

Procedure TFNotasDCAplica.Z2bbtnAnulaClick(Sender: TObject);
Begin
   If (DMCXC.cdsMovCxC.Modified) Or (DMCXC.cdsMovCxC.ChangeCount > 0) Then
      Raise exception.Create(' Debe Grabar primero ');

   If MessageDlg('Anular Nota de Credito' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'A';
   DMCXC.cdsMovCxC.Post;
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.First;
   While Not DMCXC.cdsMovCxC2.Eof Do
   Begin
      // Saldo = Monto - Pagado
      DMCXC.cdsMovCxC2.Edit;
      DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat;
      DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
      DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
      DMCXC.cdsMovCxC2.Post;
      DMCXC.cdsMovCxC2.ApplyUpdates(0);
      DMCXC.cdsMovCxC2.Next;
   End;
   DMCXC.cdsMovCxC2.EnableControls;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);

   ShowMessage('Registro Anulado... Pulse Intro para continuar');
End;

Procedure TFNotasDCAplica.Z2bbtnAceptaClick(Sender: TObject);
Var
   sSQL, xWhere: String;
   dd, mm, aa: word;
   aamm: String;
Begin
   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;CCSERIE;CCNODOC;CLIEID';
   DMCXC.cdsCanjes.IndexFieldNames := 'CIAID;CCSERIE;CCNODOC;CLIEID';
   If DMCXC.VerificaCierre(dblcCia.text, dtpFOpera.Date) Then
   Begin
      dtpFOpera.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If wTDev2 > DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat Then
      Raise exception.Create('El Total de las aplicaciones es mayor que el Documento de Abono.');

//   if wTDev2=0 then raise exception.Create('Información Incompleta en Cancelación');
// If rgDoc.itemindex = 0 then

//   if ( DMCXC.cdsMovCxC.Modified ) or ( DMCXC.cdsMovCxC.ChangeCount>0 ) then
//      raise exception.Create(' Debe Grabar primero ');
   If DMCXC.cdsDetCxC.RecordCount = 0 Then
      Raise exception.Create('No Existe Detalle Contable');

//   if not VerificaTotal then raise exception.Create('TOTAL Nota de Crédito no cuadra con Total de Documentos seleccionados');
//   if not CuadraDH then raise exception.Create('Error:  Asiento No Cuadra');

   If MessageDlg('Desea aplicar el Documento de Abono' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

 //**  20/12/2000 - pjsv

   Try
{  if DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString  = 'P' then  //Docs Pendientes
  begin}
     //CIM 21/08/2002
      Errorcount := 0;
      DMCXC.DCOM1.AppServer.SOLStartTransaction;
     //*

      Z2bbtnAcepta.enabled := False;
      DMCXC.cdsDetCxC.DisableControls;
      screen.Cursor := crHOURGLASS;
      pnlActuali.Visible := true;
      pnlActuali.Refresh;
     //**
      DMCXC.cdsMovCxC.Edit;
      DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'P';
      If dblcTMon.Text = DMCXC.wTMonExt Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat + fMtoExt, 15, 2);
         DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat;
      End
      Else
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat + fMtoLoc, 15, 2);
         DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat;
      End;

      If Abs(DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat) <= 0.01 Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;
         DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;

         DMCXC.cdsMovCxC.FieldByName('CCFCANCEL').AsDateTime := dtpFOpera.Date;
         DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'C';
      End
      Else
      Begin
         DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'P';
      End;

      DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat + fMtoLoc, 15, 2);
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat;

      DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat + fMtoExt, 15, 2);
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat;

      If DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString <> '' Then
         sCanje := DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString
      Else
      Begin
      {xWhere:='CIAID='+''''+dblcCia.Text+''''+' and TCANJEID='+''''+xVar+'''';
      sCanje  :=DMCXC.BuscaUltTGE('dspTGE','CXC301','CCCANJE',xWhere);
      sCanje  :=StrZero(sCanje,6);}
         sCanje := wCje;
      End;
      DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString := sCanje;

      DMCXC.cdsMovCxC.Post;

      DMCXC.cdsCanjes.DisableControls;
      DMCXC.cdsMovCxC2.Filtered := False;
      DMCXC.cdsCanjes.First;

     // Actualiza Montos Pagados y Saldos en CXC301 (Docs. a los k aplica la NC)
      While Not DMCXC.cdsCanjes.Eof Do
      Begin
         DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DMCXC.cdsMovCxC2.Setkey;
         DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
         DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;

         If DMCXC.cdsMovCxC2.GotoKey Then
         Begin
            If DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString = DMCXC.wsLet Then
               DMCXC.SetHyst(DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString, DMCXC.wsLet, DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString);
            DMCXC.cdsMovCxC2.Edit;

            DMCXC.cdsMovCxC2.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
            DMCXC.cdsMovCxC2.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
            DMCXC.cdsMovCxC2.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;

            If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then // SI EL CARGO ES EN SOLES
            Begin
               DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            End
            Else
            Begin
               DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            End;

//          if dblcTMon.Text = DMCXC.wTMonLoc then //SI EL ANTICIPO ES EN SOLES
            If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then //SI EL ANTICIPO ES EN SOLES
            Begin
               DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / strtofloat(dbeTCambio.Text), 15, 2);

               If Abs(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat) <= 0.01 Then
               Begin
                  DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := 0;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := 0;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := 0;
                  DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime := dtpFOpera.Date;
                  DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';
                  DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
               End
               Else
                  DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'P';
               DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
            End
            Else
            Begin
               DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * strtofloat(dbeTCambio.Text), 15, 2);
               If Abs(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat) <= 0.01 Then
               Begin
                  DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := 0;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := 0;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := 0;
                  DMCXC.cdsMovCxC2.FieldByName('CCFCANCEL').AsDateTime := dtpFOpera.Date;
                  DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'C';
                  DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX'
               End
               Else
                  DMCXC.cdsMovCxC2.FieldByName('CCESTADO').AsString := 'P';
               DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
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
         End
         Else
         Begin
            If DMCXC.cdsCanjes.FieldByName('FLAGVAR').AsString <> 'C' Then
            Begin
               DMCXC.cdsMovCxC2.Filtered := True;
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error inesperado al grabar registro');
            End;
         End;

         DMCXC.cdsCanjes.Next;
      End;
      DMCXC.cdsCanjes.EnableControls;

     {DMCXC.cdsMovCxC2.First;
     while not DMCXC.cdsMovCxC2.Eof do
     begin
        DMCXC.cdsMovCxC2.Edit;
        DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
        DMCXC.cdsPost( DMCXC.cdsMovCxC2 );
        DMCXC.cdsMovCxC2.Next;
     end;}

    //CIM 19/08/2002
      DMCXC.ControlTran(0, DMCXC.cdsMovCxC2, 'MovCxC2');
      DMCXC.ControlTran(0, DMCXC.cdsDLiqCob, 'DLiqCob');
    //DMCXC.AplicaDatos( DMCXC.cdsMovCxC2, 'MovCxC2' );

      DMCXC.cdsMovCxC2.Filtered := True;

      GrabaDetCanje;
//     ActualizaCanje;
      DecodeDate(dtpFOpera.Date, aa, mm, dd);
      aamm := IntToStr(aa) + StrZero(IntToStr(mm), 2);
      SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, aamm,
         DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').Asstring,
         '=', xMtoLoc, xMtoExt, DMCXC.cdsCanjes.FieldByName('TMONID').AsString);
                                              //DMCXC.cdsMovCxC.FieldByName('TMONID').AsString
      DMCXC.cdsCanjes.EnableControls;
      GrabaCabeceraCanje;

      DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
         + 'CIAID=''' + dblcCia.Text + ''' AND '
         + 'DOCID=''' + wTDoc + ''' AND '
         + 'CCSERIE=''' + edtSerie.Text + ''' AND '
         + 'CCNODOC=''' + edtNoDoc.Text + '''');
      DMCXC.ControlTran(0, DMCXC.cdsMovCxC, 'MovCxC');
      DMCXC.ControlTran(0, DMCXC.cdsDetCxC, 'DetCxC');
      DMCXC.ControlTran(0, DMCXC.cdsCanjes, 'Canjes');
      DMCXC.ControlTran(0, DMCXC.cdsCCanje, 'CCanje');

      DMCXC.ControlTran(8, Nil, ''); //COMMIT

{  end;}

  // HASTA AQUI
{  if DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString  = 'C' then  begin//Docs Pendientes
     DMCXC.cdsMovCxC.Edit;
     DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value:='P';
     DMCXC.cdsMovCxC.Post;
  end;
   EstadoDeForma(1,DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString,DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString );

   if wActuaPresu then CalculoNivel;}

      ShowMessage('Registro Aceptado... Pulse Intro para continuar');
   Finally
      DMCXC.cdsDetCxC.EnableControls;
      pnlActuali.Visible := false;
      screen.Cursor := crDEFAULT;
   End;
 //**
End;

Procedure TFNotasDCAplica.GrabaDetCanje;
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
      DMCXC.cdsDetCanje.FieldByName('CCCANJE').AsString := sCanje; //DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDatetime := dtpFOpera.Date; //DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime;
      DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC.FieldByName('TMONID').AsString; //DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.wUsuario;
      DMCXC.cdsDetCanje.FieldByName('DCCFREG').Value := DMCXC.DateS;
      DMCXC.cdsDetCanje.FieldByName('DCCHREG').Value := DMCXC.TimeS;
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsCanjes.FieldByName('CCMM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsCanjes.FieldByName('CCDD').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsCanjes.FieldByName('CCTRI').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsCanjes.FieldByName('CCSEM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsCanjes.FieldByName('CCSS').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsCanjes.FieldByName('CCAASS').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := StrToFloat(edtCambioCanje.text);

      If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / StrToFloat(edtCambioCanje.text), 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
      End
      Else
      Begin
         DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * StrToFloat(edtCambioCanje.text), 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
      End;

      DMCXC.cdsPost(DMCXC.cdsDetCanje);
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsDetCanje.First;
//   DMCXC.AplicaDatos( DMCXC.cdsDetCanje,'DetCanje' );
   DMCXC.ControlTran(0, DMCXC.cdsDetCanje, 'DetCanje');
   DMCXC.cdsCanjes.EnableControls;

End;

//////  F U N C I O N E S   //////

Procedure TFNotasDCAplica.CamposKEnabled(PVal: Boolean);
Begin
   dblcCia.Enabled := PVal;
   dblcdClie.Enabled := PVal;
   dblcdClieRuc.Enabled := PVal;
   edtSerie.Enabled := PVal;
   edtNoDoc.Enabled := PVal;
   dtpFComp.Enabled := PVal;
   dbeNoReg.Enabled := PVal;
End;

Function TFNotasDCAplica.VerificaTotal: Boolean;
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

Function TFNotasDCAplica.CuadraDH: Boolean;
Var
   wTotD, wTotH: Double;
   xDife, xdife1: Double; //** 05/12/2000 - pjsv
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
            wTotD := wTotD + cdsDetCxC.FieldByName('CCMTOORI').AsFloat
         Else
            wTotH := wTotH + cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         cdsDetCxC.Next;
      End;
      cdsDetCxC.First;
      cdsDetCxC.EnableControls;
   //** 05/12/2000 - pjsv - para que cuadre cuado la <> es <= 0.02
      xdife1 := FRound(wTotD, 15, 2) - FRound(wTotH, 15, 2);
      If FRound(wTotD, 15, 2) > FRound(wTotH, 15, 2) Then
         xdife := FRound(wTotD, 15, 2) - FRound(wTotH, 15, 2);
      If FRound(wTotH, 15, 2) > FRound(wTotD, 15, 2) Then
         xdife := FRound(wTotH, 15, 2) - FRound(wTotD, 15, 2);
      If xdife <= 0.02 Then
      Begin
         If FRound(wTotD, 15, 2) > FRound(wTotH, 15, 2) Then
            wTotH := FRound(wTotH, 15, 2) + xdife;
         If FRound(wTotH, 15, 2) > FRound(wTotD, 15, 2) Then
            wTotD := FRound(wTotD, 15, 2) + xdife;
         DMCXC.cdsDetCxC.First;
         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(cdsDetCxC.FieldByName('CCMTOORI').AsFloat, 15, 2) + xdife1;
         DMCXC.cdsDetCxC.FieldByName('CCFREG').Value := DateS;
         DMCXC.cdsDetCxC.FieldByName('CCHREG').Value := TimeS;
         DMCXC.cdsPost(DMCXC.cdsDetCxC);
         DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DETCXC');
      End;
   //**
      If Redondea(wTotD) = redondea(wTotH) Then
         result := True
      Else
         result := False;
   End;
End;
//////  F U N C I O N E S   //////

Procedure TFNotasDCAplica.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;

   xWhere := 'TMonId=''' + dblcTMon.Text + ''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
   edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMONDES');

   If length(edtTMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   End;
   wSimbMn := DMCXC.cdsQry.FieldByName('TMONABR').AsString;

   DMCXC.cdscpto.Close;
   If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
//                               +' and OPCMENU=''P'' '
         + ' and ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )');
      DMCXC.cdscpto.Open;
   End
   Else
   Begin
      DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
//                               +' and OPCMENU=''P'' '
         + ' and ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
      DMCXC.cdscpto.Open;
   End;

End;

Procedure TFNotasDCAplica.FormClose(Sender: TObject; Var Action: TCloseAction);
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
         DMCXC.cdsMovCxC.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
      End;
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') Then
      Begin
         DMCXC.cdsMovCxC.CancelUpdates;
      End;
   End
   Else
   Begin
      DMCXC.cdsMovCxC.CancelUpdates;
   End;
   DMCXC.cdsCpto.IndexFieldNames := '';
   DMCXC.cdsCpto.Filter := '';
   DMCXC.cdsMovCxC2.IndexFieldNames := '';
   DMCXC.cdsMovCxC2.Filter := '';
   DMCXC.cdsCanjes.IndexFieldNames := '';
   DMCXC.cdsCanjes.Filter := '';
   DMCXC.cdsClie.IndexFieldNames := '';
   DMCXC.cdsClie.Filter := '';
   DMCXC.cdsMovCxC.ReadOnly := False;
   DMCXC.cdsCanjes.ReadOnly := False;
   DMCXC.cdsMovCxC2.ReadOnly := False;
   DMCXC.cdsDetCxC.ReadOnly := False;

{   FVariables.w_Num_Formas:=FVariables.w_Num_Formas-1;
   FVariables.w_CC_Registro:=False;}
   Action := caFree;
End;

Procedure TFNotasDCAplica.bbtnRegresaClick(Sender: TObject);
Begin
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
End;

Procedure TFNotasDCAplica.dbeTCambioExit(Sender: TObject);
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

Procedure TFNotasDCAplica.edtSerieXExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;
   If length(edtSerie.Text) = 0 Then
   Begin
      ShowMessage('Falta No.Serie');
      edtSerie.SetFocus;
   End;
End;

Procedure TFNotasDCAplica.edtSerieXKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then edtNoDoc.setfocus;
End;

Procedure TFNotasDCAplica.dbeNoRegExit(Sender: TObject);
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

   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   FiltraGrids;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFNotasDCAplica.dblcdClieKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dblcdClieRuc.setfocus;
End;

Procedure TFNotasDCAplica.dblcdClieRucKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then edtSerie.setfocus;
End;

Procedure TFNotasDCAplica.edtNoDocKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dtpFComp.setfocus;
End;

Procedure TFNotasDCAplica.dtpFCompKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dbeNoReg.setfocus;
End;

Procedure TFNotasDCAplica.dbeLoteKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dblcTMon.setfocus;
End;

Procedure TFNotasDCAplica.dblcTMonKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dbeTCambio.setfocus;
End;

Procedure TFNotasDCAplica.dtpFEmisKeyPress(Sender: TObject; Var Key: Char);
Begin
//   If Key=#13 then bbtnOK.setfocus;
End;

Procedure TFNotasDCAplica.btnActRegClick(Sender: TObject);
Begin
   pnlDetCxC.Enabled := False;
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   DMCXC.cdsDetCxC.Insert;
   dblcTipReg.Enabled := True;
   dblcTipReg.Text := '';
   dblcTipReg.SetFocus;
End;

Procedure TFNotasDCAplica.bbtnRegOkClick(Sender: TObject);
Var
   xWhere: String;
Begin
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
      DMCXC.cdsPost(DMCXC.cdsDetCxC);
      DMCXC.cdsDetCxC.Insert;
      dblcTipReg.Text := '';
      dblcTipReg.Enabled := True;
      dblcTipReg.SetFocus;
   End
   Else
   Begin
      DMCXC.cdsPost(DMCXC.cdsDetCxC);
      pnlRegistro.Visible := False;
      pnlDetCxC.Enabled := True;
   End;
End;

Procedure TFNotasDCAplica.bbtnRegCancClick(Sender: TObject);
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

Procedure TFNotasDCAplica.dbeDHExit(Sender: TObject);
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

Procedure TFNotasDCAplica.dbeImporteExit(Sender: TObject);
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

Procedure TFNotasDCAplica.dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
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

Procedure TFNotasDCAplica.dbgDetCxCDblClick(Sender: TObject);
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

Procedure TFNotasDCAplica.dbgDetCanjeCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
{   If DMCXC.wVRN_PagosParciales='S' then begin
      If (FIELD.FieldName='CCPFCJE')  or
         (FIELD.FieldName='DCDTCAMB') or
         (FIELD.FieldName='DCDMOLOC') or
         (FIELD.FieldName='DCDMOEXT') then begin
         AFont.Color  := clBlack;
         ABrush.Color := clWindow;
      end;
   end;}
End;

Procedure TFNotasDCAplica.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If FNotasDCAplica.activecontrol Is twwdbgrid Then
      Exit;
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFNotasDCAplica.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFNotasDCAplica.dbgDocCanjeCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
{
   If DMCXC.wVRN_PagosParciales='S' then begin
      If (FIELD.FieldName='CCPTCCJE') or
         (FIELD.FieldName='CCPMOLOC') or
         (FIELD.FieldName='CCPMOEXT') then begin
         AFont.Color  := clBlack;
         ABrush.Color := clWindow;
      end;
   end;}
End;

Procedure TFNotasDCAplica.dbgDocCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDCAplica.dbgDocCanjeEndDrag(Sender, Target: TObject; X, Y: Integer);
Begin
   If Target = dbgpendientes Then
   Begin
      DMCXC.cdsMovCxC2.Filtered := False;

      DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
      DMCXC.cdsMovCxC2.Setkey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;

      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').Value := '.';
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat + DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
            If DMCXC.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat > 0 Then
               DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat, 15, 2)
            Else
            Begin
               DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            End;
         End
         Else
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat + DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
            If DMCXC.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat > 0 Then
               DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsMovCxC2.FieldByName('CCTCAMPA').AsFloat, 15, 2)
            Else
            Begin
               DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            End;
         End;
         DMCXC.cdsMovCxC2.Post;
         DMCXC.cdsCanjes.Delete;
      End
      Else
      Begin
         ShowMessage('No se puede retornar el Documento.' + #13 + 'Es el Doc. de Referencia de la Nota de Crédito.');
      End;
      DMCXC.cdsMovCxC2.Filtered := True;
      dbgPendientes.RefreshDisplay;
      dbgDocCanje.RefreshDisplay;
   End;
End;

Procedure TFNotasDCAplica.dbgDocCanjeKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      dbgDocCanjeColExit(Sender);
   End;
End;

Procedure TFNotasDCAplica.dbgDocCanjeMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFNotasDCAplica.dbgPendientesDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotasDCAplica.dbgPendientesEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = dbgDocCanje Then
   Begin
      DMCXC.cdsCanjes.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
      DMCXC.cdsCanjes.SetKey;
      DMCXC.cdsCanjes.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
      DMCXC.cdsCanjes.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
      DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
      DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
      DMCXC.cdsCanjes.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
      If Not DMCXC.cdsCanjes.GotoKey Then
      Begin
         DMCXC.cdsCanjes.Insert;
         DMCXC.cdsCanjes.FieldByName('CIAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString;
         DMCXC.cdsCanjes.FieldByName('TDIARID').AsString := xTDiar; //DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString := xNoReg; //DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;

         If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFOpera.date) Then
         Begin
            DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
            DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString;
            DMCXC.cdsCanjes.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
            DMCXC.cdsCanjes.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
            DMCXC.cdsCanjes.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
            DMCXC.cdsCanjes.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
            DMCXC.cdsCanjes.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
            DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
            DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
            DMCXC.cdsCanjes.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
         End;

         DMCXC.cdsCanjes.FieldByName('CLIEID').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
         DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString := DMCXC.cdsMovCxC2.FieldByName('CLIERUC').AsString;
         DMCXC.cdsCanjes.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC2.FieldByName('DOCID').AsString;
//       DMCXC.cdsCanjes.FieldByName('DOCABR').AsString    := DMCXC.cdsMovCxC2.FieldByName('DOCABR').AsString;
         DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').AsString;
         DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
         DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString := xVar;
         DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString := wCje;
         DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime := dtpFOpera.Date; // modif.
         DMCXC.cdsCanjes.FieldByName('TMONID').AsString := DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString; // T.mon del doc - no modif.
         DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat := strtofloat(dbeTCambio.Text); //strtofloat(edtCambioCanje.Text);   // modif.
         DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCTCAMAJ').AsFloat; //DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').AsFloat;
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
         DMCXC.cdsCanjes.FieldByName('CPTOID').AsString := DMCXC.cdsMovCxC2.FieldByName('CCPTOTOT').AsString;
         DMCXC.cdsCanjes.FieldByName('CUENTAID').AsString := DMCXC.cdsMovCxC2.FieldByName('CTATOTAL').AsString;
         DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsCanjes.FieldByName('CCFEMIS').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFEMIS').AsDateTime;
         DMCXC.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsMovCxC2.FieldByName('CCFVCMTO').AsDateTime;

         DMCXC.cdsCanjes.Post;
         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
         DMCXC.cdsMovCxC2.Post;
      End;
     //DMCXC.cdsCanjes.Filtered:=True;
      DMCXC.cdsMovCxC2.Filtered := True;
      dbgDocCanje.RefreshDisplay;
   End;
End;

Procedure TFNotasDCAplica.ModificaMontos;
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
         If DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat Then
            ShowMessage(' Error :  Monto excede a Saldo Actual ')
         Else
            ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');

         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DMCXC.cdsPost(DMCXC.cdsCanjes);
         dbgDocCanje.SelectedIndex := 8; // debería ser 9 pero no hace caso
         dbgDocCanje.SelectedIndex := 9; // debería ser 9 pero no hace caso
      End
      Else
      Begin
         If (DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat > DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat) Then
         Begin
            ShowMessage('Monto excede a Saldo de la Nota de Crédito');
         End
         Else
         Begin
            DMCXC.cdsCanjes.Edit;
            DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            DMCXC.cdsPost(DMCXC.cdsCanjes);
            bbtnSumatClick(Self);
            DMCXC.cdsDetCxC.EmptyDataSet;
         End;
      End;
   End;

   If dbgDocCanje.SelectedField.FieldName = 'CCMTOEXT' Then
   Begin
      If (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat) Or
         (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat < 0) Then
      Begin
         If DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat Then
            ShowMessage('Monto excede a Saldo Actual')
         Else
            ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');

         DMCXC.cdsCanjes.Edit;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DMCXC.cdsPost(DMCXC.cdsCanjes);
         dbgDocCanje.SelectedIndex := 9; // debería ser 9 pero no hace caso
         dbgDocCanje.SelectedIndex := 10; // debería ser 9 pero no hace caso
      End
      Else
      Begin
         If (DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat > DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat) Then
         Begin
            ShowMessage('Monto excede a Saldo de la Nota de Crédito');
         End
         Else
         Begin
            DMCXC.cdsCanjes.Edit;
            DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
            DMCXC.cdsPost(DMCXC.cdsCanjes);
            bbtnSumatClick(Self);
            DMCXC.cdsDetCxC.EmptyDataSet;
         End;
      End;
   End;
End;

Procedure TFNotasDCAplica.dbgDocCanjeColExit(Sender: TObject);
Begin
   ModificaMontos;
End;

Procedure TFNotasDCAplica.pc1Changing(Sender: TObject; Var AllowChange: Boolean);
Begin
   If pc1.ActivePage = ts1 Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount = 0 Then
         bbtnGen302.Enabled := True;
      If dblcTMon.Text = DMCXC.wTMonExt Then
         edtFinal.Text := ' LA APLICACION ES POR ' + dbgDocCanje.ColumnByName('CCMtoExt').FooterValue + ' ' + edtTmon.Text
      Else
         edtFinal.Text := ' LA APLICACION ES POR ' + dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue + ' ' + edtTmon.Text;

   End
   Else
   Begin
      bbtnGen302.Enabled := False;
      edtFinal.Text := '';
   End;
End;

Procedure TFNotasDCAplica.Z2bbtnImprimeClick(Sender: TObject);
Var
   Comprobante: RCabComprobante;
Begin
   With Comprobante Do
   Begin
      CIAID := dblcCia.Text;
      CiaDes := edtCia.Text;
      TDIARID := DMCXC.cdsDetCxC.FieldByName('TDIARID').Value; // Default(x ahora)
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
      Glosa := ''; //dbeGlosa.Text ;
      //nuevos
      Banco := ''; //edtBanco.text ;
      Cuenta := ''; //edtCuenta.Text ;
      NumChq := ''; //dbeNoChq.text ;
   End;
   FRegistros.ImprimirComprobante(Comprobante);
End;

Procedure TFNotasDCAplica.dtpFEmisEnter(Sender: TObject);
Begin
   dtpFEmis.Enabled := True;
End;

Procedure TFNotasDCAplica.dtpFEmisExit(Sender: TObject);
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

   xxTCambio := 0;
   xWhere := 'TMonId=' + '''' + DMCXC.wTMonExt + '''' + ' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFEmis.Date) + '''' + ')';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
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
   wLote := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCLote', xWhere);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := xTAno + xTMes;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := xxTCambio;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := xxTCambio;
End;

Procedure TFNotasDCAplica.dblcdClieEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

   DMCXC.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFNotasDCAplica.dblcdClieRucEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

   DMCXC.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFNotasDCAplica.dblcClAuxExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   xWhere := 'ClAuxId=''' + dblcClAux.Text + ''' and MODULO LIKE ''%' + DMCXC.wModulo + '%''';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE102', 'CLAUXDES', xWhere, 'CLAUXDES')) = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Clase de Auxiliar');
   End;

   Filtracds(DMCXC.cdsClie, 'Select * from TGE204 Where CLAUXID=''' + dblcClAux.Text + '''');

   If Length(dblcdClie.Text) > 0 Then
   Begin
      DMCXC.cdsMovCxC.Edit;
      xWhere := 'ClAuxId=''' + dblcClAux.Text + ''' and ClieId=''' + dblcdClie.Text + '''';
      If length(DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,CLIERUC,CLIEDES', xWhere, 'CLIEDES')) = 0 Then
      Begin
         DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := '';
         DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := '';
         edtClie.Text := '';
         dblcdClie.SetFocus;
      End
      Else
      Begin
         DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := DMCXC.cdsQry.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
         edtClie.Text := DMCXC.cdsQry.FieldByName('CLIEDES').AsString;
         ;
      End
   End
End;

Procedure TFNotasDCAplica.bbtnAceptaClick(Sender: TObject);
Begin
   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, edtSerie.Text, edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('Documento ya Fue Registrado');
   End;
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
   DMCXC.cdsPost(DMCXC.cdsMovCxC);
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=''' + edtSerie.Text + ''' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFNotasDCAplica.dblcdCCostoExit(Sender: TObject);
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

Procedure TFNotasDCAplica.edtSerieExit(Sender: TObject);
Begin
   edtNoDoc.Text := DMCXC.BuscaUltNumero(dblcCia.Text, wTDoc, edtSerie.Text);
End;

Procedure TFNotasDCAplica.z2bbtnEmiteDocClick(Sender: TObject);
Var
   xReporte,
      xCampoFlag: String;
Begin
   If DMCXC.RecuperaDatos('CXC108', '*', 'DOCID=''' + wTDoc + '''') Then
   Begin
      xReporte := DMCXC.cdsqry2.FieldByName('REPORTE').AsString;
      xCampoFlag := DMCXC.cdsqry2.FieldByName('CAMPOFLAG').AsString;
      If DMCXC.RecuperaDatos('CXC109', '*', xCampoFlag + ' = ''S'' ') Then
      Begin
         EmiteDoc(xReporte);
      End
      Else
         Application.MessageBox(
            'No se ha registrado datos a Imprimir' + #13 + 'Para este Tipo de Documento' +
            #13 + 'Imposible Imprimir',
            'Falta Registro de datos a Imprimir', MB_OK);
   End;
End;

Procedure TFNotasDCAplica.EmiteDoc(xArchivoReporte: String);
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
     //////////
      xSQL := 'SELECT * FROM CXC311 WHERE CIAID = '''' ';
      dsEmiDoc := TwwDataSource.create(self);
      cdsEmiDoc := TwwClientDataSet.create(self);
      cdsEmiDoc.RemoteServer := DMCXC.DCOM1;
      cdsEmiDoc.ProviderName := DMCXC.cdsQry.ProviderName;
      cdsEmiDoc.Close;
      cdsEmiDoc.DataRequest(xSQL);
      cdsEmiDoc.Open;
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
      dsEmiDoc.DataSet := cdsEmiDoc;
     //** 14/08/2001 - pjsv
      ppdbpNotaCred.DataSource := dsemidoc;
      pprptNotaCred.DataPipeline := ppdbpNotaCred;
     //**
      pprptNotaCred.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\' + xArchivoReporte;
      pprptNotaCred.template.LoadFromFile;
{     DMCXC.cdsQry2.First ;
     with DMCXC.cdsqry2 do
     begin
        while not Eof do
        begin
           if pprptNotaCred.ObjectByName(bANDA,Componente,fieldbyname('PPVAR').AsString)  then
              pprptNotaCred.Bands[Banda].Objects[Componente].Caption :=
                    DMCXC.cdsqry.FieldByName(fIELDBYNAME('CDSFIELD').AsString).AsString             ;
           DMCXC.cdsqry2.Next ;
        end;
     end ;
}
      If Application.MessageBox('Confirme Impresión de Documento',
         'Confirmación Impresión',
         MB_OKCANCEL + MB_DEFBUTTON1) = IDOK Then
         pprptNotaCred.Print;
   Finally
      cdsEmiDoc.free;
      dsEmiDoc.free;
   End;
End;

//**********************************************************************//
{ pjsv - para presupuestos }
{ 08/10/20000 pjsv. para actualizar el monto ejecutado, monto variación y
  y variación en porcentaje en el PPRES301, se debe de recorrer el cds del
 grid para ver si hay MG,MN,NG }

Procedure TFNotasDCAplica.CalculoNivel;
Var
   xmonto, xhora, xfecha, xEjecuMN, xEjecuME, xmes, ssql: String;
   xcambio: real;
   iX: integer;
  { xtotal[1] hasta xtotal[12] = EJMN01..EJMN12 --sumatoria por mes
    xtotal[13] hasta xtotal[24] = EJME01..EJME12 --sumatoria por mes
    xtotal[25] hasta xtotal[36] = VMMN01..VMME12 --sumatoria por mes
    xtotal[37] hasta xtotal[48] = VMME01..VMME12 --sumatoria por mes     }
   xtotal: Array[1..48] Of Real;
 { xtotg[1] = xtotal[1] hasta xtotal[12]
   xtotg[2] = xtotal[13] hasta xtotal[24]
   xtotg[3] = xtotal[23] hasta xtotal[36]
   xtotg[4] = xtotal[37] hasta xtotal[48]  }
   xtotG: Array[1..6] Of Real;
  { guarda los montos asignados del PPRES300}
   xasxmes: Array[1..24] Of Real;
  { guarda los montos modificados del PPRES300}
   xmoxmes: Array[1..24] Of Real;
  { xvpxmes[1] = (xtotal[1]/xasxmes[1]+xmoxmes[1])*100 para cada mes y MN,ME.
    xtotal[25] hasta xtotal[48] no se toma }
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
         xmes := xtmes; //copy(meAnoMM.Text,5,2);
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
         xFecha := formatdatetime(DMCXC.wFormatFecha, Date);
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
           { recorro la tabla PPRES301 para hallar los totales por mes y
             por campos( EJ, VM, VP ) y por mes }
         While Not DMCXC.cdsQry2.Eof Do
         Begin
             //** 03/11/2000 - pjsv
            ssql := '';
            ssql := 'PARPRESID=' + quotedstr(DMCXC.cdsQry2.FieldByName('PARPRESID').AsString);
            xIS := DMCXC.BuscaQRY('dspParPres', 'PPRES201', '*', ssql, 'PARPRES_IS');
             //**
            For iX := 1 To 24 Do
               Case iX Of
                { para DPREEJMN01..12 }
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
                     Begin
                        xmes := StrZero(IntToStr(iX), 2);
                    //** 03/11/2000 - pjsv, tiene que chequear si el PARPRES_IS
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
                    //** 03/11/2000 - pjsv, tiene que chequear si el PARPRES_IS
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
             // se agrega 17/10/2000 pjsv - para que solo calcule el mes
             // del periodo, si se quita el if calcula todos los meses
            If StrZero(IntToStr(iX), 2) = xtmes Then
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
         xFecha := formatdatetime(DMCXC.wFormatFecha, Date);
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

{ pjsv - para presupuestos }

Procedure TFNotasDCAplica.CreaSuperior;
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
            xmaxdigitoint := DMCXC.BuscaQRY('dspNivelPresu', 'PPRES103', '*', ssql, 'DIGITOS');
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

{ pjsv - para presupuestos }

Procedure TFNotasDCAplica.inicializoCero;
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

{ pjsv - para presupuestos }

Procedure TFNotasDCAplica.CalculoNivelSupe;
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
               xmaxdigitoint := DMCXC.buscaQry('dspNivelPresu', 'PPRES103', '*', ssql, 'DIGITOS');
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
                      //** 03/11/2000
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
// 03/11/2000
//                      xtotvmmn := xtotvmmn + StrToFloat(DMCXC.cdsDetallePres.FieldByName('DPREVMMN'+XMES).AsString);
//                      xtotvmme := xtotvmme + StrToFloat(DMCXC.cdsDetallePres.FieldByName('DPREVMME'+XMES).AsString);
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
                   //** 03/11/2000
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

//** 20/12/2000 - pjsv

Procedure TFNotasDCAplica.dblcTipPreExit(Sender: TObject);
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
//**

//** 20/12/2000 - pjsv

Procedure TFNotasDCAplica.dblcdPresupExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
//  if dblcdCnpEgr.Focused then exit;
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
//**

Procedure TFNotasDCAplica.rgDocClick(Sender: TObject);
Begin
   DMCXC.cdsMovCxC.Edit;
   If rgDoc.ItemIndex = 0 Then //Pendientes
      DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString := 'P'
   Else
      If rgDoc.ItemIndex = 1 Then //Cancelados
         DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString := 'C';

   DMCXC.cdsMovCxC.Post;

End;

Procedure TFNotasDCAplica.ppHeaderBand2BeforePrint(Sender: TObject);
Var
   sDocid, sSerie, sDocumento, sWhere, sCanje: String;
   sVendedor, sDesDoc, sComerid, sDesConPago: String;
Begin
   pplblNCRazon.text := DMCXC.cdsQry.FieldByName('PPRAZON').AsString;
   pplblNCDIR.text := DMCXC.cdsQry.FieldByName('PPDIRECCION').AsString;
   pplblNCRUC.text := DMCXC.cdsQry.FieldByName('PPRUC').AsString;
   pplblNCDIA1.text := DMCXC.cdsQry.FieldByName('PPDIA').AsString;
   pplblNCMES1.text := DMCXC.cdsQry.FieldByName('PPMES').AsString;
   pplblNCANO1.text := 'DEL  ' + DMCXC.cdsQry.FieldByName('PPANO').AsString;
   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CCSERIE=' + QuotedStr(edtSerie.text) +
      ' AND CCNODOC=' + QuotedStr(edtNoDoc.text);
   sCanje := DMCXC.BuscaQry2('dspTGE', 'CXC301', 'CCCANJE', sWhere, 'CCCANJE');
   lblNCClie.text := DMCXC.BuscaQry2('dspTGE', 'CXC304', 'CLIEID,DOCID,CCSERIE,CCNODOC', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CCCANJE=' + QuotedStr(sCanje), 'CLIEID');
   sDocid := DMCXC.cdsQry6.FieldByName('DOCID').AsString;
   sSerie := DMCXC.cdsQry6.FieldByName('CCSERIE').AsString;
   sDocumento := DMCXC.cdsQry6.FieldByName('CCNODOC').AsString;
   sDesDoc := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCDES', 'DOCMOD=''CXC'' AND DOCID=' + QuotedStr(sDocId), 'DOCDES');
   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CCSERIE=' + QuotedStr(sSerie) +
      ' AND CCNODOC=' + QuotedStr(sDocumento);
   pplblNCVendedor.text := DMCXC.BuscaQry2('dspTGE', 'CXC301', 'DOCID,CCFEMIS,VEID,CCOMERID', sWhere, 'VEID');
   sComerid := DMCXC.cdsQry6.FieldByName('CCOMERID').AsString;
   pplblNCFactura.text := sSerie + sDocumento;
   pplblNCFacFecha.text := DMCXC.cdsQry6.FieldByName('CCFEMIS').AsString;
   pplblNCConPagoID.text := DMCXC.BuscaQry2('dspTGE', 'CXC101', 'CCOMERDES', 'CCOMERID=' + QuotedStr(sComerId), 'CCOMERDES');
End;

Procedure TFNotasDCAplica.ppFooterBand2BeforePrint(Sender: TObject);
Var
   xIgv, xTotal: Double;
Begin
   pplblNCLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsQry.FieldByName('PPTOTAL').AsFloat) + '   ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text));
   xIgv := DMCXC.cdsQry.FieldByName('PPIGV').AsFloat;
   xTotal := DMCXC.cdsQry.FieldByName('PPTOTAL').AsFloat;
   pplblNCIGV.Caption := FloatToStrF(xIgv, ffFixed, 15, 2);
   lblNCTotal.Caption := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text) + ' ' + FloatToStrF(xTotal, ffFixed, 15, 2);
End;

Procedure TFNotasDCAplica.ActualizaCanje;
Begin
   DMCXC.cdsDetCanje.DisableControls;
   DMCXC.cdsDetCanje.First;
   While Not DMCXC.cdsDetCanje.Eof Do
   Begin
      DMCXC.cdsDetCanje.Edit;
      DMCXC.cdsDetCanje.FieldByName('CCCANJE').AsString := sCanje;
      DMCXC.cdsPost(DMCXC.cdsDetCanje);
      DMCXC.cdsDetCanje.Post;
      DMCXC.cdsDetCanje.Next;
   End;
   DMCXC.cdsDetCanje.First;
   DMCXC.cdsDetCanje.EnableControls;

End;

Procedure TFNotasDCAplica.dtpFOperaExit(Sender: TObject);
Var
   xWhere: String;
   a, m, d: word;
   nNoReg: integer;
   xc1, xc2, xc3: String;
Begin
   If DMCXC.VerificaCierre(dblcCia.text, dtpFOpera.Date) Then
   Begin
      dtpFOpera.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   xWhere := 'TMonId=' + '''' + DMCXC.wTMonExt + '''' + ' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFOpera.Date) + '''' + ')';
   If length(DMCXC.buscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
   Begin
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).AsFloat;
      edtCambioCanje.text := FloatToStrF(xxTCambio, ffNumber, 15, 4);
   End
   Else
   Begin
      xxTCambio := 0;
      edtCambioCanje.text := FloatToStrF(xxTCambio, ffNumber, 15, 4);
      dtpFOpera.SetFocus;
      Raise Exception.Create('No existe Tipo de Cambio');
   End;

   DecodeDate(dtpFOpera.Date, a, m, d);
   xTAno := StrZero(IntToStr(a), 4);
   xTMes := StrZero(IntToStr(m), 2);

   xTDiar := DMCXC.buscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCTIPREG=''AP'' AND DOCMOD=''CXC''', 'TDIARID');
   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AUTONUM', 'TDIARID', xTDiar);
   xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.text, xTDiar, xTAno, xTMes);
   nNoReg := StrToInt(xNoReg);
   xNoReg := '';
   While Length(xNoReg) = 0 Do
   Begin
      xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.text, xTDiar, xTAno, xTMes, nNoReg);
      xNoReg := StrZero(xNoReg, 10);
      If Not DMCXC.BuscaCxCReg(dblcCia.text, xTDiar, xTAno + xTMes, xNoReg) Then
      Begin
         xNoReg := StrZero(xNoReg, 10);
         Break;
      End;
      //xNoReg:='';
      nNoReg := nNoReg + 1;
   End;
   xWhere := 'CIAID=' + QuotedStr(dblcCia.Text) +
      ' AND TCANJEID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('TCANJEID').AsString);
   xVar := DMCXC.cdsMovCxC.FieldByName('TCANJEID').AsString;
   xc1 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', xWhere), 6);
   xc2 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', xWhere), 6);
   xc3 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', xWhere), 6);
   If xc1 > xc2 Then
      wCje := xc1
   Else
      wCje := xc2;

   If wCje < xc3 Then
      wCje := xc3;

End;
//temporalmente puesto hasta q se implemente a todas las formas starttransactio
//despues accesar  la rutina desde el servidor
//cim 21/08/2002

Procedure TFNotasDCAplica.SaldosAuxiliarCLG(xxCia, xxAnoMes, xxClAux, xxAux,
   xxSigno: String; xxImpMN, xxImpME: Double; xxtmonid: String);
Var
   xxAno, xxMes, xSQL, xxSaldo13: String;
   xxSaldo01, xxSaldo02, xxSaldo03, xxSaldo04, xxSaldo05, xxSaldo06: String;
   xxSaldo07, xxSaldo08, xxSaldo09, xxSaldo10, xxSaldo11, xxSaldo12: String;
   xxTotMN, xxTotME, xxToSMN, xxToSME: Double;
  //**03/01/2001 pjsv
   iX: integer;
   xmes, xMesA: String;
   ssql, sSQL1, sSQL2, sSQL3, sSQL4: widestring;
  //**
Begin
   xxAno := Copy(xxAnoMes, 1, 4);
   xxMes := Copy(xxAnoMes, 5, 2);
   xSQL := '';
   sSQL1 := '';
   sSQL2 := '';
   sSQL3 := '';
   sSQL4 := '';
  //CLG  *
   xSQL := 'Select CIAID from TGE401 where '
      + 'CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';
   xSQL := UpperCase(xSQL);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.ProviderName := 'dspTGE';
   DMCXC.cdsQry.DataRequest(xSQL); // Llamada remota al provider del servidor
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount = 0 Then
   Begin
      xSQL := 'Insert into TGE401(CIAID,ANO,CLAUXID,AUXID';
      If (xxSigno = '+') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + ', DEBETMN' + xxMes + ', DEBETME' + xxMes;
         If xxtmonid = DMCXC.wTMonLoc Then
            xSQL := xSQL + ', DEBESMN' + xxMes;
         If xxtmonid = DMCXC.wTMonExt Then
            xSQL := xSQL + ', DEBESME' + xxMes;
      End;
      If (xxSigno = '-') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + ', HABETMN' + xxMes + ', HABETME' + xxMes;
         If xxtmonid = DMCXC.wTMonLoc Then
            xSQL := xSQL + ', HABESMN' + xxMes;
         If xxtmonid = DMCXC.wTMonExt Then
            xSQL := xSQL + ', HABESME' + xxMes;
      End;
      xSQL := xSQL + ') Values (' + '''' + xxCia + '''' + ',' + '''' + xxAno + '''' + ','
         + '''' + xxClAux + '''' + ',' + '''' + xxAux + '''';
      xSQL := xSQL + ', ' + FloatToStr(xxImpMN) + ', ' + FloatToStr(xxImpME);
      If xxtmonid = DMCXC.wTMonLoc Then
         xSQL := xSQL + ', ' + FloatToStr(xxImpMN);
      If xxtmonid = DMCXC.wTMonExt Then
         xSQL := xSQL + ', ' + FloatToStr(xxImpME);

      If xxSigno = '=' Then
      Begin
         xSQL := xSQL + ', ' + FloatToStr(xxImpMN) + ', ' + FloatToStr(xxImpME);
         If xxtmonid = DMCXC.wTMonLoc Then
            xSQL := xSQL + ', ' + FloatToStr(xxImpMN);
         If xxtmonid = DMCXC.wTMonExt Then
            xSQL := xSQL + ', ' + FloatToStr(xxImpME);
      End;
      xSQL := UpperCase(xSQL + ' ) ');

      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
      End
   End
   Else
   Begin
    //** 15/02/2001 - pjsv, se quita porque duplicaba los montos
   //xxTotMN:= DMCXC.cdsQry.FieldByName('DEBETMN'+XXMES).AsFloat + xxImpMN;
    //xxTotME:= DMCXC.cdsQry.FieldByName('DEBETME'+XXMES).AsFloat + xxImpME;
   //xxToSMN:= DMCXC.cdsQry.FieldByName('DEBESMN'+XXMES).AsFloat + xxImpMN;
    //xxToSME:= DMCXC.cdsQry.FieldByName('DEBESME'+XXMES).AsFloat + xxImpME;
      xxTotMN := xxImpMN;
      xxTotME := xxImpME;
      xxToSMN := xxImpMN;
      xxToSME := xxImpME;
    //**

      xSQL := 'Update TGE401 Set ';
      If (xxSigno = '+') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + '  DEBETMN' + xxMes + '=' + DMCXC.wReplacCeros + '(DEBETMN' + xxMes + ' ,0)+ ' + FloatToStr(xxTotMN);
         xSQL := xSQL + ', DEBETME' + xxMes + '=' + DMCXC.wReplacCeros + '(DEBETME' + xxMes + ' ,0)+ ' + FloatToStr(xxTotME);
         If xxtmonid = DMCXC.wTMonLoc Then
            xSQL := xSQL + ', DEBESMN' + xxMes + '=' + DMCXC.wReplacCeros + '(DEBESMN' + xxMes + ' ,0)+ ' + FloatToStr(xxToSMN);
         If xxtmonid = DMCXC.wTMonExt Then
            xSQL := xSQL + ', DEBESME' + xxMes + '=' + DMCXC.wReplacCeros + '(DEBESME' + xxMes + ' ,0)+ ' + FloatToStr(xxToSME);
      End;

      If (xxSigno = '-') Or (xxSigno = '=') Then
      Begin
         If xxSigno = '=' Then
            xSQL := xSQL + ',';
         xSQL := xSQL + '  HABETMN' + xxMes + '=' + DMCXC.wReplacCeros + '(HABETMN' + xxMes + ' ,0)+ ' + FloatToStr(xxTotMN);
         xSQL := xSQL + ', HABETME' + xxMes + '=' + DMCXC.wReplacCeros + '(HABETME' + xxMes + ' ,0)+ ' + FloatToStr(xxTotME);
         If xxtmonid = DMCXC.wTMonLoc Then
            xSQL := xSQL + ', HABESMN' + xxMes + '=' + DMCXC.wReplacCeros + '(HABESMN' + xxMes + ' ,0)+ ' + FloatToStr(xxToSMN);
         If xxtmonid = DMCXC.wTMonExt Then
            xSQL := xSQL + ', HABESME' + xxMes + '=' + DMCXC.wReplacCeros + '(HABESME' + xxMes + ' ,0)+ ' + FloatToStr(xxToSME);
      End;
      xSQL := xSQL + ' Where CIAID=' + '''' + xxCia + '''' + ' and '
         + 'ANO=' + '''' + xxAno + '''' + ' and '
         + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
         + 'AUXID=' + '''' + xxAux + '''';
      xSQL := UpperCase(xSQL);
    //cim 21/08/2002
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
      End;
   End;
//////////////////////////////////////
//                                  //
//   Actualiza DebeTMN y HaberTME   //
//                                  //
//////////////////////////////////////
  //PARA MONEDA NACIONAL
   sSQL := ' Where CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';

   xSQL := ' UPDATE TGE401 SET ';

   For iX := 0 To 13 Do
   Begin
      xMes := strzero(IntToStr(iX), 2);

      If iX = 0 Then
      Begin
         sSQL1 := sSQL1 + '(' + DMCXC.wReplacCeros + '(SALDTMN' + xmes + ',0)+' + DMCXC.wReplacCeros + '(DEBETMN' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABETMN' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDTMN' + xmes + '=' + sSQL1 + ',';

         sSQL3 := sSQL3 + '(' + DMCXC.wReplacCeros + '(SALDSMN' + xmes + ',0)+' + DMCXC.wReplacCeros + '(DEBESMN' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABESMN' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDSMN' + xmes + '=' + sSQL3;
      End
      Else
      Begin
         sSQL1 := sSQL1 + '+ ' + DMCXC.wReplacCeros + '(DEBETMN' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABETMN' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDTMN' + xmes + '=' + sSQL1;

         sSQL3 := sSQL3 + '+ ' + DMCXC.wReplacCeros + '(DEBESMN' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABESMN' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDSMN' + xmes + '=' + sSQL3;
      End;
   End;
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL + ssql);
   Except
      DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
   End;

  //PARA MONEDA EXTRANJERA
   sSQL := ' Where CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';

   xSQL := ' UPDATE TGE401 SET ';

   For iX := 0 To 13 Do
   Begin
      xMes := strzero(IntToStr(iX), 2);

      If iX = 0 Then
      Begin
         sSQL2 := sSQL2 + '(' + DMCXC.wReplacCeros + '(SALDTME' + xmes + ',0)+' + DMCXC.wReplacCeros + '(DEBETME' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABETME' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDTME' + xmes + '=' + sSQL2 + ',';

         sSQL4 := sSQL4 + '(' + DMCXC.wReplacCeros + '(SALDSME' + xmes + ',0)+' + DMCXC.wReplacCeros + '(DEBESME' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABESME' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDSME' + xmes + '=' + sSQL4;
      End
      Else
      Begin
         sSQL2 := sSQL2 + '+ ' + DMCXC.wReplacCeros + '(DEBETME' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABETME' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDTME' + xmes + '=' + sSQL2;

         sSQL4 := sSQL4 + '+ ' + DMCXC.wReplacCeros + '(DEBESME' + xmes + ',0)-' + DMCXC.wReplacCeros + '(HABESME' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDSME' + xmes + '=' + sSQL4;
      End;
   End;
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL + ssql);
   Except
      DMCXC.ControlTran(1, Nil, ''); //ROLLBACK
   End;
End;

Procedure TFNotasDCAplica.dbgDocCanjeExit(Sender: TObject);
Begin
   ModificaMontos;
End;

Procedure TFNotasDCAplica.FormShow(Sender: TObject);
Var
   xsql, xWhere: String;
Begin
   xCrea := True;
   xFlGrid := True;
   dtpFOpera.Date := DMCXC.DateS;
 //** 05/04/2001 - pjsv
{	 xWhere:='TMonId='    +''''+DMCXC.wTMonExt            +''''+' and '
     +'Fecha='+DMCXC.wRepFuncDate+''''+FORMATDATETIME(DMCXC.wFormatFecha,dtpFOpera.Date)+''''+')';
  if length(DMCXC.buscaQry('dspTGE','TGE107','*',xWhere,'TMonId'))>0 then
  begin
   xxTCambio:=DMCXC.cdsQry.FieldByName('TCAM'+DMCXC.WVRN_TIPOCAMBIO).AsFloat;
   edtCambioCanje.text:=FloatToStrF(xxTCambio,ffNumber,15,2);
  end
  else
  begin
   xxTCambio:=0;
   edtCambioCanje.text:=FloatToStrF(xxTCambio,ffNumber,15,2);
   ShowMessage('No existe Tipo de Cambio');
   dtpFOpera.SetFocus;
  end;}

   xsql := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
   DMCXC.cdsCCosto.Close;
   DMCXC.cdsCCosto.DataRequest(xsql);
   DMCXC.cdsCCosto.open;
 //**

  //   Busca TDocId y TDiarId - Inicio
   If DMCXC.cdsTDoc.RecordCount > 0 Then
   Begin
      DMCXC.cdsTDoc.IndexFieldNames := 'DOCID';
      DMCXC.cdsTDoc.Setkey;
      DMCXC.cdsTDoc.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      If DMCXC.cdsTDoc.Gotokey Then
      Begin
         wTDoc := DMCXC.cdsTDoc.FieldByName('DOCID').AsString;
         If (DMCXC.cdsTDoc.FieldByName('TDIARID').AsString <> '') And (DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString <> '') Then
         Begin
            ShowMessage('Este Documento de Abono tiene más de un T/Diario');
      // Pide eleccion de TDiarID
         End;
         wTDiar := DMCXC.cdsTDoc.FieldByName('TDIARID').AsString; // Default(x ahora)
         xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
      End;
   End
   Else
   Begin
      ShowMessage('Tipos de Documento no registra definición de Abonos');
   // Forma de Registro (N) no definido en tabla TDocum(TGE110)     ¿?
   // Salir de N/Credito
   End;
  ///////////  Busca TDocId y TDiarId - Fin... Resultado: wTDoc y wTDiar

   InicializaCds; // Inicializa en Blanco (Filtra) Client Data Sets--> CiaId=''
   InicializaVars;

   If DMCXC.wModo = 'A' Then
   Begin
      pc1.ActivePage := ts1;
      InsertaRegistro;
   //** 14/08/2001 - pjsv
      rgDoc.ItemIndex := 0;
   //**
      rgDoc.Enabled := True;
   End
   Else
   Begin
      If DMCXC.cdsMovCxC.FieldByName('DOCID').AsString = DMCXC.wsNCre Then
      Begin
         xVar := 'NC'
      End
      Else
      Begin
         If DMCXC.cdsMovCxC.FieldByName('DOCID').AsString = DMCXC.wsAnt Then
         Begin
            xVar := 'AN'
         End
      End;

      pc1.ActivePage := ts1;
      dblcCia.Text := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
      dblcdClie.Text := DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString;
      dblcdClieRuc.Text := DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString;
      edtSerie.Text := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      edtNoDoc.Text := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      dbeTCambio.Text := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsString;
      edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
      edtClie.Text := DMCXC.cdsMovCxC.FieldByName('CLIEDES').AsString;
      edtTMon.Text := DMCXC.DisplayDescrip('TGE103', 'TmonDes', 'TmonId', dbeTCambio.Text);
      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P' Then
         rgDoc.ItemIndex := 0 //Pendientes
      Else
         If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'C' Then //Cancelados
            rgDoc.ItemIndex := 1;
      rgDoc.Enabled := False;
      rgDoc.ItemIndex := 0; //Pendientes
      TNumericField(DMCXC.cdsMovCxC.FieldByName('CCMTOORI')).DisplayFormat := '###,###,#0.00';
      TNumericField(DMCXC.cdsMovCxC.FieldByName('CCSALORI')).DisplayFormat := '###,###,#0.00';
      pnlCab1.enabled := False;
      pnlCab2.enabled := False;
//      pnlCabecera.enabled:=False;
   End;

{
   // Reglas de Negocio
   If DMCXC.wVRN_PagosParciales='S' then begin
      DMCXC.cdsDetCanje.FieldByName('CCPFCJE').ReadOnly  := False ;
      DMCXC.cdsDetCanje.FieldByName('DCDTCAMB').ReadOnly := False ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOLOC').ReadOnly := False ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOEXT').ReadOnly := False ;
      end
   else begin
      DMCXC.cdsDetCanje.FieldByName('CCPFCJE').ReadOnly  := True ;
      DMCXC.cdsDetCanje.FieldByName('DCDTCAMB').ReadOnly := True ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOLOC').ReadOnly := True ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOEXT').ReadOnly := True ;
   end;
}
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').ReadOnly := False;
   dbgDocCanje.ColumnByName('CCMtoLoc').ReadOnly := False;

   DMCXC.cdsTDoc.Filtered := False;

   If DMCXC.wModo = 'A' Then
   Begin
      EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      RecuperarCiaUnica(dblcCia, edtCia);
   End
   Else
   Begin
      wCje := DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString;
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + '''' + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.buscaQry('dspTGE', 'TGE103', 'TMONDES', xWhere, 'TMONDES');

{      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString='I' then
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ' )
      else
         EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString );}
//      EstadoDeForma(0, 'I', ' ' );
      FiltraGrids;
      bbtnSumatClick(Sender);
////// para que muestre el monto en el segundo tab en caso de edición

      If dblcTMon.Text = DMCXC.wTMonExt Then
      Begin
         edtFinal.Text := ' EL DOCUMENTO ES POR ' + dbgDocCanje.ColumnByName('CCMtoExt').FooterValue + ' ' + edtTmon.Text;
      End
      Else
      Begin
         edtFinal.Text := ' EL DOCUMENTO ES POR ' + dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue + ' ' + edtTmon.Text;
      End;

//////
   End;
   dtpFOperaExit(Nil);
   Z2bbtnAcepta.enabled := True;
   xCrea := False;
   dbgDocCanje.ReadOnly := False;
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsCanjes.ReadOnly := False;
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').ReadOnly := False;
   DMCXC.cdsCanjes.FieldByName('CCMTOEXT').ReadOnly := False;
End;

Procedure TFNotasDCAplica.GeneraDiferenciaCambio(xxDH: String);
Var
   xSQL, xCuenta: String;
   sTRegIdDes, sCtaDif, sCptoDif, sDifDH, sDifTRegId: String;
Begin
   sCtaDif := DMCXC.buscaQry('dspTGE', 'TGE128', '*', 'TIPDET=' + QuotedStr(xxDH), 'CUENTAMN');
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

   DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(Abs(dDebe - dHaber), 15, 2);

   DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sTRegIdDes;

   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := xTDiar;
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;

   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
   DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := dblcdClieRuc.Text;

   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFOpera.Date;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := dtpFOpera.Date;
   DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := dtpFOpera.Date;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCxC.FieldByName('TCANJEID').AsString := xVar;
   DMCXC.cdsDetCxC.FieldByName('CCCANJE').AsString := wCje;

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFOpera.date) Then
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
   DMCXC.cdsDetCxC.Post;
End;

Procedure TFNotasDCAplica.GrabaCabeceraCanje;
Var
   sSQL, xNCanje: String;
Begin
   sSQL := ' SELECT * FROM CXC307 WHERE CIAID=''CLG'' AND TCANJEID=''CLG'' AND CANJE=''CLG'' ';
   DMCXC.cdsCCanje.Close;
   DMCXC.cdsCCanje.DataRequest(sSQL);
   DMCXC.cdsCCanje.Open;

  //xNCanje:=DMCXC.BuscaUltTGE('dspTGE','CXC307','Canje','CIAID='+QuotedStr(dblcCia.Text)+' AND TCANJEID='+QuotedStr(xVar));

   DMCXC.cdsCCanje.Insert;
   DMCXC.cdsCCanje.FieldByName('CIAID').AsString := dblcCia.text;
   DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString := xVar;
   DMCXC.cdsCCanje.FieldByName('CANJE').AsString := wCje;
   DMCXC.cdsCCanje.FieldByName('CLIEID').AsString := dblcdClie.text;
   DMCXC.cdsCCanje.FieldByName('CLIERUC').AsString := dblcdClieRuc.text;
   DMCXC.cdsCCanje.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
   DMCXC.cdsCCanje.FieldByName('TDIARID').AsString := xTDiar;
   DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString := xNoreg;
   DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime := dtpFOpera.date;
   DMCXC.cdsCCanje.FieldByName('CJFVALOR').AsDateTime := dtpFOpera.date;
   DMCXC.cdsCCanje.FieldByName('CJFCOMP').AsDateTime := dtpFOpera.date;
   DMCXC.cdsCCanje.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
   DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsString := DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsString;
   DMCXC.cdsCCanje.FieldByName('CJLOTE').AsString := '';
   DMCXC.cdsCCanje.FieldByName('CPTOID').AsString := DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString;
   DMCXC.cdsCCanje.FieldByName('CUENTAID').AsString := DMCXC.cdsMovCxC.FieldByName('CTATOTAL').AsString;
   DMCXC.cdsCCanje.FieldByName('CJGLOSA').AsString := DMCXC.buscaQry('dspTGE', 'CXC208', 'CPTODES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCPTOTOT').AsString), 'CPTODES');
   DMCXC.cdsCCanje.FieldByName('CJNUMLET').AsInteger := 0;
   DMCXC.cdsCCanje.FieldByName('CJDIAS').AsInteger := 0;
   DMCXC.cdsCCanje.FieldByName('CJLETINI').AsString := '';
   DMCXC.cdsCCanje.FieldByName('CJUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCCanje.FieldByName('CJFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCCanje.FieldByName('CJFHOR').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCCanje.FieldByName('CJESTADO').AsString := 'P';
   DMCXC.cdsCCanje.FieldByName('CLAUXID').AsString := DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString;
   DMCXC.cdsCCanje.FieldByName('CJEGIRADO').AsString := DMCXC.cdsMovCxC.FieldByName('CLIEDES').AsString;

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFOpera.date) Then
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

   DMCXC.cdsCCanje.Post;

End;

Procedure TFNotasDCAplica.CargaDataSource;
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
   dbeSalOri.DataSource := DMCXC.dsMovCxC;
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
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcTipReg.LookupTable := DMCXC.cdsTipReg;
   dblcdCnpEgr.LookupTable := DMCXC.cdsCpto;
   dblcdCCosto.LookupTable := DMCXC.cdsCCosto;
   dblcdPresup.LookupTable := DMCXC.cdsPresup;
   dblcCia.LookupTable := DMCXC.cdsCia;
   edtSerie.LookupTable := DMCXC.cdsSerie;
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcTipReg.LookupTable := DMCXC.cdsTipReg;
   dblcdCnpEgr.LookupTable := DMCXC.cdsCpto;
   dblcdCCosto.LookupTable := DMCXC.cdsCCosto;
   dblcdPresup.LookupTable := DMCXC.cdsPresup;
End;

End.

