Unit CxC206;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB, wwSpeedButton,
   wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
   ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
   ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod,
   Wwkeycb, Menus, ppEndUsr;

Type
   TFSelCob = Class(TForm)
      ppdbCob: TppDBPipeline;
      ppdbCanje: TppDBPipeline;
      pprCobra: TppReport;
      ppdbDPag: TppDBPipeline;
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
      rgZona: TRadioGroup;
      pnlOrden: TPanel;
      lblBusca: TLabel;
      Bevel1: TBevel;
      isBusca: TwwIncrementalSearch;
      btnSalir: TBitBtn;
      bbtnPasa: TBitBtn;
      edtZona1: TEdit;
      pnlPendientes: TPanel;
      Label5: TLabel;
      dbgPendientes: TwwDBGrid;
      pnlDocCanje: TPanel;
      Label6: TLabel;
      dblcCPTO: TwwDBLookupCombo;
      dbgDocCanje: TwwDBGrid;
      edtCobranza: TLabel;
      dblcZona1: TwwDBLookupComboDlg;
      ppHeaderBand1: TppHeaderBand;
      ppLine4: TppLine;
      pplblCobrador: TppLabel;
      ppLabel12: TppLabel;
      ppLabel14: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      lblImporte: TppLabel;
      ppLabel6: TppLabel;
      ppLine5: TppLine;
      ppLabel8: TppLabel;
      ppLabel16: TppLabel;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel15: TppLabel;
      ppLabel17: TppLabel;
      ppLabel7: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText16: TppDBText;
      ppDBText1: TppDBText;
      ppLine1: TppLine;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppLine13: TppLine;
      ppLabel30: TppLabel;
      ppLine14: TppLine;
      ppLabel31: TppLabel;
      pplblLetras: TppLabel;
      ppSummaryBand4: TppSummaryBand;
      ppLabel11: TppLabel;
      ppLine2: TppLine;
      pplblCopia: TppLabel;
      pplblTitulo1: TppLabel;
      pplblTitulo2: TppLabel;
      pplblTitulo3: TppLabel;
      ppLabel9: TppLabel;
      ppDBText4: TppDBText;
      pplblFecha: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBText5: TppDBText;
      ppLabel5: TppLabel;
      ppLabel10: TppLabel;
      ppDBText6: TppDBText;
      ppLabel13: TppLabel;
      ppDesigner1: TppDesigner;
      ppvarTotalExt: TppVariable;
      pnlDocEnc: TPanel;
      Label3: TLabel;
      dbgDocEnc: TwwDBGrid;
      bbtnOKDocEnc: TBitBtn;
      bbtnCancelDocEnc: TBitBtn;
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
      Procedure dbgPendientesTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure btnSalirClick(Sender: TObject);
      Procedure isBuscaKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgPendientesCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure bbtnPasaClick(Sender: TObject);
      Procedure rgZonaExit(Sender: TObject);
      Procedure dblcZona1Exit(Sender: TObject);
      Procedure dblcZona1DropDown(Sender: TObject);
      Procedure dblcdCobradorDropDown(Sender: TObject);
      Procedure ppvarTotalExtCalc(Sender: TObject; Var Value: Variant);
      Procedure bbtnCancelDocEncClick(Sender: TObject);
   Private
    { Private declarations }
      xmoneda: String;
      xmonedaR: String;
      xdiferencia: bool;
      sFlagCobrador: String;
      Procedure ArrastreAutomatico(Sender: TObject);
   Public
    { Public declarations }
      xxTotalLoc, xxTotalExt: Double;
      Procedure InicializaPies;
      Procedure FiltraCanje(xModo: String);
      Procedure InicializaDatos;
      Procedure InicializaClientDataSet;
      Procedure ActualizaSaldosMovCxP;
      Procedure ActualizaPagadoMovCxP;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure InsertaCanjes(xxCds: TwwClientDataSet);
      Function VerificaTotal: Boolean;
      Function ValidaCabecera: Boolean;
      Function ExisteMovCxC(xxCia, xxTDiario, xxAAMM, xxNoReg: String): Boolean;
      Procedure InsertaPago;
      Procedure ReasignaDocumento;
      Procedure ActualizaTransferencias;
   End;

Var
   wAno, wMes, wDia: Word;
   sPe: String;
   FSelCob: TFSelCob;
   xNDTDiario: String;
   xSQL: String;
   xTAutoNum: String;
   xCtaDif, xGloDif, xCptoDif: String;
   xGlosa, xLote, xCuenta, xConcepto, xDH: String;
   xDifCam, xPagAnt, xDifCLoc, xDifCExt: Double;
   xTotLoc, xTotExt: Double;
   xxTCambio: Double;
   xCrea: Boolean;
   xFlagGr: Boolean;
   xModoL: String;
   xFlagP: Boolean;

Implementation

Uses CxCDM, CxC001, CxC205;

{$R *.DFM}

Procedure TFSelCob.FormActivate(Sender: TObject);
Begin
   xCrea := True;
   If DM1.wModo = 'A' Then
   Begin
      DM1.cdsCLiqCob.Insert;
      edtCobranza.Caption := 'Cobranza';
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
   End
   Else
   Begin
      xFlagGr := False;
      xxTCambio := DM1.cdsCLiqCob.FieldByName('LICOTCAMB').AsFloat;
      edtCobranza.Caption := 'Cobranza' + ' ' + DM1.cdsCLiqCob.FieldByName('LICOID').AsString;
      dblcCia.Text := DM1.cdsCLiqCob.FieldByName('CIAID').AsString;
      edtCanje.Text := DM1.cdsCLiqCob.FieldByName('LICOID').AsString;
      dblcClAux.text := DM1.cdsCLiqCob.FieldByName('CLAUXID').AsString;
      dblcZona.text := DM1.cdsCLiqCob.FieldByName('TVTAID').AsString;
      dblcZona1.text := DM1.cdsCLiqCob.FieldByName('ZVTAID').AsString;
      If dblcZona1.text <> '' Then
         rgZona.itemindex := 0
      Else
         rgZona.itemindex := 1;

      dbeTCLet.text := DM1.cdsCLiqCob.FieldByName('LICOTCAMB').AsString;
      dblcTMon.text := DM1.cdsCLiqCob.FieldByName('TMONID').AsString;
      dtpFEmis.date := DM1.cdsCLiqCob.FieldByName('CCFEMIS').AsDateTime;
      dblcdCobrador.text := DM1.cdsCLiqCob.FieldByName('COID').AsString;

      FiltraCanje(DM1.wModo);
      dbgPendientes.RedrawGrid;
      dbgDocCanje.RedrawGrid;

      edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
      edtZona.Text := DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcZona.text);
      edtZona1.Text := BuscaQry('dspTGE', 'FAC106', 'ZVTADES', 'ZVTAID=' + QuotedStr(dblcZona1.text) + ' AND TVTAID=' + Quotedstr(dblcZona.text), 'ZVTADES');
      edtCobrador.Text := BuscaQry('prvCobrador', 'CXC206', 'CONOMBRES', 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND COID=' + QuotedStr(dblcdCobrador.text), 'CONOMBRES');
      edtTMon.Text := DisplayDescrip('TGE103', 'TMONDES', 'TMonID', dblcTMon.Text);

      If DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString = 'I' Then
         EstadoDeForma(0, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ')
      Else
         EstadoDeForma(1, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ');
      bbtnSumatClick(Sender);
   End;
//   PageControl1.ActivePage := TabSheet1;
   xCrea := False;
End;

Procedure TFSelCob.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   dblcCia.Enabled := False;
   dblcZona.Enabled := False;
   dblcdCobrador.Enabled := False;
   dblcClAux.Enabled := False;
   dtpFEmis.Enabled := False;
   edtCanje.Enabled := False;

   pnlCab1.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgPendientes.Enabled := False;
   dbgDocCanje.Enabled := False;
   dbgPendientes.ReadOnly := True;
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

   If xxModo = 0 Then
   Begin
      If xMovEstado = ' ' Then
      Begin
         pnlCab1.Enabled := True;
         dblcCia.Enabled := True;
         dblcZona.Enabled := True;
         dblcdCobrador.Enabled := True;
         dblcClAux.Enabled := True;
         dtpFEmis.Enabled := True;
         dblcZona.Enabled := True;
         edtCanje.Enabled := False;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         If DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString = 'I' Then
            lblActivo.Visible := True;
         dblcCia.SetFocus;
      End;
      If xMovEstado = 'X' Then
      Begin
         pnlCab1.Enabled := False;
         pnlDetalle.Enabled := True;
//            pnlCab2.Enabled     := True;
         dblcClAux.Enabled := True;
         dblcZona.Enabled := True;
         dblcdCobrador.Enabled := True;
         dtpFEmis.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         pnlDetalle.Enabled := True;
         dbgPendientes.Enabled := True;
         dbgDocCanje.Enabled := True;
         dbgPendientes.ReadOnly := False;
         dbgDocCanje.ReadOnly := False;

         pnlPie.Enabled := True;
         bbtnRegresa.Enabled := True;
         bbtnCancela.Enabled := True;
         Z2bbtnGraba.Enabled := True;
         lblActivo.Visible := True;

//            dblcClAux.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
//            pnlCab2.Enabled    := True;
         pnlCab1.Enabled := False;
         pnlDetalle.Enabled := True;
         dbgPendientes.Enabled := True;
         dbgDocCanje.Enabled := True;
         dbgPendientes.ReadOnly := False;
         dbgDocCanje.ReadOnly := False;

         pnlPie.Enabled := True;
         bbtnRegresa.Enabled := True;
         bbtnCancela.Enabled := True;
         Z2bbtnGraba.Enabled := True;
         Z2bbtnImprime.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         lblActivo.Visible := True;
//            dblcTMon.SetFocus;
      End;
   End
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
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;

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
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            lblActivo.Visible := True;
         End;
         If xMovEstado = 'P' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnImprime.Enabled := True;

            lblAcepta.Visible := True;
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

      dbgPendientes.Enabled := False;
      dbgDocCanje.Enabled := False;
      dbgPendientes.ReadOnly := True;
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

Procedure TFSelCob.InicializaPies;
Begin
   dbgDocCanje.ColumnByName('CPNoDoc').FooterValue := 'Totales';
   dbgDocCanje.ColumnByName('CPSalLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CPSalExt').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoExt').FooterValue := '';
End;

Procedure TFSelCob.InicializaDatos;
Begin
   xFlagGr := false;

   dblcCia.Text := '';
   edtCia.Text := '';
   dblcClAux.text := '';
   dblcdCobrador.text := '';
   edtCobrador.text := '';
   dtpFEmis.Date := DateS;
   dblcZona.text := '';
   edtZona.text := '';
   dbeTCLet.text := '';
   edtCanje.Text := '(Nuevo)';
   edtCobranza.caption := '';
   dblcTMon.text := '';
   edtTMon.text := '';
   dblcZona1.text := '';
   dblcZona1.enabled := False;
   edtZona1.text := '';
End;

Procedure TFSelCob.InicializaClientDataSet;
Var
   sSQL, sWhere: String;
Begin
   sWhere := ' WHERE CIAID=' + QuotedStr('CLG');
{   sSQL:=' CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, '+
         ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM, '+
         ' LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CCFEMIS,CCFVCMTO,CUENTAID,CLAUXID, '+
         ' CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,LICOSALEXT,FLAGVAR,LICOID2,CLIEDES,CCFVCMTO,ZVTAID,LICOMTOABOORI,STATUS ';}
   sSQL := ' * ';

   Filtracds(DM1.cdsDLiqCob, 'Select ' + sSQL + ' from CXC317 ' + sWhere);
   Filtracds(DM1.cdsCobrador, 'Select CIAID,COID,CONOMBRES,COFLAG,CVTAID,COCONS from CXC206');
   Filtracds(DM1.cdsMovCxC2, 'Select * from CXC301 Where CIAID=' + QuotedStr('CLG') + ' AND CCSERIE=' + QuotedStr('CLG') + ' AND CCNODOC=' + QuotedStr('CLG'));
End;

Procedure TFSelCob.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   // Cancela todas las modificaciones en los cds.
   DM1.cdsMovCxC2.CancelUpdates;
   DM1.cdsDLiqCob.CancelUpdates;
//   DM1.cdsDPag.CancelUpdates;

   If (DM1.wModo = 'A') And (xFlagGr) Then
   Begin
      DM1.cdsCLiqCob.Delete;
      DM1.AplicaDatos(DM1.cdsCLiqCob, 'CLiqCob');
   End
   Else
   Begin
      DM1.cdsCLiqCob.CancelUpdates;
   End;
   // Eliminar Filtros
   DM1.cdsDLiqCob.Filtered := False;
   DM1.cdsTMon.Filtered := False;
   DM1.cdsMovCxC2.IndexFieldNames := '';
   DM1.cdsMovCxC2.Filter := '';
   DM1.cdsMovCxCClone.IndexFieldNames := '';
   DM1.cdsMovCxCClone.Filter := '';
   DM1.cdsClie.IndexFieldNames := '';
   DM1.cdsClie.Filter := '';
   DM1.cdsCobrador.IndexFieldNames := '';
   DM1.cdsCobrador.Filter := '';
   DM1.cdsZona1.IndexFieldNames := '';
   DM1.cdsZona1.Filter := '';
End;

Procedure TFSelCob.FiltraCanje(xModo: String);
Var
   xSelDoc, sCartera: String;
   sSQL, sZona: String;
   sContado: String;
   bPrimero: Boolean;
Begin
   sContado := '';
   bPrimero := False;
   sCartera := DisplayDescrip('CXC105', 'UBICAID', 'UBICAFLAG', 'O'); //CODIGO DE LETRAS EN CARTERA
   DM1.cdsTDoc.Filter := '( DOC_FREG=''L'' or '
      + '  DOC_FREG=''P'' or DOC_FREG=''H'' ) and DOCMOD=''CXC''';

   DM1.cdsTDoc.Filtered := true;

   xSelDoc := '';
   DM1.cdsTDoc.First;
   While Not DM1.cdsTDoc.Eof Do
   Begin
      If Length(xSelDoc) = 0 Then
         xSelDoc := '(CXC301.DOCID=' + '''' + DM1.cdsTDoc.FieldByName('DOCID').AsString + ''''
      Else
         xSelDoc := xSelDoc + ' OR CXC301.DOCID=' + '''' + DM1.cdsTDoc.FieldByName('DOCID').AsString + '''';
      DM1.cdsTDoc.Next;
   End;
   xSelDoc := xSelDoc + ' ) ';
   xSelDoc := xSelDoc + ' AND (UBIID=' + QuotedStr(sCartera) + ' OR UBIID IS NULL) ';

   If rgZona.ItemIndex = 0 Then
   Begin
      sZona := ' AND CXC301.ZVTAID=' + QuotedStr(dblcZona1.text);
   End
   Else
   Begin
      sZona := '';
   End;

   sSQL := 'Select CIAID,DOCID,CCSERIE,CCNODOC,CLIEID,FLAGVAR,COMPROMET from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + sZona + ' and '
      + 'TVTAID=' + '''' + dblcZona.text + '''' + ' and '
      + '(CCESTADO=''P'' OR CCESTADO=''I'') AND ' + xSelDoc;

{  if sFlagCobrador='M' then
  begin
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest('SELECT CCOMERID FROM CXC101 WHERE CCOMERCTDO=''S'' AND CIAID='+QuotedStr(dblcCia.text));
    DM1.cdsQry.Open;

    if DM1.cdsQry.RecordCount>0 then
    begin
      sContado:= sContado+' (CCOMERID='+QuotedStr(DM1.cdsQry.FieldByName('CCOMERID').AsString)+') ';
      while not DM1.cdsQry.EOF do
      begin
         DM1.cdsQry.Next;
         if DM1.cdsQry.EOF then
         begin
           break;
         end
         else
         begin
           sContado:= sContado+' OR ( CCOMERID='+QuotedStr(DM1.cdsQry.FieldByName('CCOMERID').AsString)+') ';
         end;
      end;
    end;

    sSQL:=sSQL+' AND ('+sContado+' ) AND CCFEMIS='+QuotedStr(FORMATDATETIME(DM1.wFormatFecha,dtpFEmis.date));
  end;}

   Filtracds(DM1.cdsMovCxCClone, sSQL);

   DM1.cdsMovCxCClone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';

{  sSQL:='Select CXC301.COMPROMET, CXC301.CCCANJE,CXC301.CTATOTAL,CXC301.TCANJEID,CXC301.CCESTADO,CXC301.CLIEDES,CXC301.CCSERIE,CXC301.CCNODOC,CXC301.CCFEMIS,CXC301.CCTCAMPR,CXC301.TMONID,CXC301.CCMTOORI,CXC301.CCSALLOC, '
        +' CXC301.CCSALEXT,CXC301.DOCID,CXC301.ZVTAID,CXC301.FLAGVAR,CXC301.CCMTOEXT,CXC301.CCPAGEXT,CXC301.CCMTOLOC,CXC301.CCPAGLOC, '
        +' CXC301.CIAID,CXC301.CLIEID,CXC301.TDIARID,CXC301.CCNOREG,CXC301.TVTAID,CXC301.CCANOMES,CXC301.CCMM,CXC301.CCDD,CXC301.CCTRI, '
        +' CXC301.CCSEM,CXC301.CCSS,CXC301.CCAATRI,CXC301.CCAASEM,CXC301.CCAASS,CXC301.CCAAAA,CXC301.CLIERUC,CXC301.CCFVCMTO, '
        +' FAC106.ZVTADES,TGE110.DOCABR,TGE103.TMONABR from CXC301 '
        +' LEFT JOIN TGE110 ON CXC301.DOCID=TGE110.DOCID AND TGE110.DOCMOD=''CXC'' '
        +' LEFT JOIN TGE103 ON CXC301.TMONID=TGE103.TMONID '
        +' LEFT JOIN FAC106 ON CXC301.ZVTAID=FAC106.ZVTAID AND FAC106.TVTAID=CXC301.TVTAID '
                         + ' WHERE CIAID='     +''''+dblcCia.Text  +''''+sZona+' and '
                         + 'CXC301.TVTAID='    +''''+dblcZona.text+''''+' and '
                         + '(CCESTADO=''P'' OR CCESTADO=''I'') AND '+xSelDoc;}
   sSQL := 'Select CXC301.*, '
      + ' FAC106.ZVTADES,TGE110.DOCABR,TGE103.TMONABR from CXC301 '
      + ' LEFT JOIN TGE110 ON CXC301.DOCID=TGE110.DOCID AND TGE110.DOCMOD=''CXC'' '
      + ' LEFT JOIN TGE103 ON CXC301.TMONID=TGE103.TMONID '
      + ' LEFT JOIN FAC106 ON CXC301.ZVTAID=FAC106.ZVTAID AND FAC106.TVTAID=CXC301.TVTAID '
      + ' WHERE CIAID=' + '''' + dblcCia.Text + '''' + sZona + ' and '
      + 'CXC301.TVTAID=' + '''' + dblcZona.text + '''' + ' and '
      + '(CCESTADO=''P'' OR CCESTADO=''I'') AND ' + xSelDoc;
{  if sFlagCobrador='M' then
  sSQL:=sSQL+' AND ('+sContado+' ) AND CCFEMIS='+QuotedStr(FORMATDATETIME(DM1.wFormatFecha,dtpFEmis.date));
 }
   Filtracds(DM1.cdsMovCxC2, sSQL);

   dbgPendientes.Selected.Clear;
   dbgPendientes.Selected.Add('CLIEDES'#9'35'#9'Cliente'#9'F');
   dbgPendientes.Selected.Add('DOCABR'#9'5'#9'Docum.'#9'F');
   dbgPendientes.Selected.Add('CCSERIE'#9'5'#9'Serie'#9'F');
   dbgPendientes.Selected.Add('CCNODOC'#9'12'#9'No.Documento'#9'F');
   dbgPendientes.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión'#9'F');
   dbgPendientes.Selected.Add('CCTCAMPR'#9'9'#9'T.Cambio~Provisión'#9'F');
   dbgPendientes.Selected.Add('TMONABR'#9'3'#9'Tip.de~Mon.'#9'F');
   dbgPendientes.Selected.Add('CCMTOORI'#9'10'#9'Total'#9'F');
   dbgPendientes.Selected.Add('CCSALLOC'#9'10'#9'Saldo~Mon.Loc.'#9'F');
   dbgPendientes.Selected.Add('CCSALEXT'#9'10'#9'Saldo~Mon.Ext.'#9'F');
   dbgPendientes.Selected.Add('DOCID'#9'2'#9'Doc'#9'F');
//  dbgPendientes.Selected.Add('CCANOMES'#9'8'#9'Periodo~Año-Mes'#9'F');
   dbgPendientes.Selected.Add('ZVTAID'#9'8'#9'Código~Zona'#9'F');
   dbgPendientes.Selected.Add('ZVTADES'#9'15'#9'Desc. Zona'#9'F');
   dbgPendientes.Selected.Add('CLIERUC'#9'12'#9'RUC'#9'F');
//  dbgPendientes.Selected.Add('CCNOREG'#9'10'#9'No.Reg'#9'F');
   dbgPendientes.RedrawGrid;

   If DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString = 'P' Then
      sSQL := 'SELECT * FROM CXC301 WHERE CIAID=''CESAR''';

   TNumericField(DM1.cdsMovCxC2.FieldByName('CCMTOORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsMovCxC2.FieldByName('CCSALLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsMovCxC2.FieldByName('CCSALEXT')).displayFormat := '###,###,###0.00';
//      dbgPendientes.RedrawGrid;

   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsMovCxC2.Filter := '';

//CLG:29/10/2002   DM1.cdsMovCxC2.Filter  := ' FLAGVAR<>'+QuotedStr('XX');
   DM1.cdsMovCxC2.Filter := ' FLAGVAR<>' + QuotedStr('XX') + ' AND COMPROMET<>' + QuotedStr('CO');
   DM1.cdsMovCxC2.Filtered := True;

   DM1.cdsMovCxCClone.Filtered := False;
   DM1.cdsMovCxCClone.Filter := '';

//CLG:29/10/2002   DM1.cdsMovCxCClone.Filter  := ' FLAGVAR<>'+QuotedStr('XX');
   DM1.cdsMovCxCClone.Filter := ' FLAGVAR<>' + QuotedStr('XX') + ' AND COMPROMET<>' + QuotedStr('CO');
   DM1.cdsMovCxCClone.Filtered := True;

   Filtracds(DM1.cdsDLiqCob, 'Select '
      + ' CUENTAID,CIAID,TDIARID,CCNORGE,LICOANO,LICOANOMM,CLAUXID, '
      + ' TVTAID,COID,CONOMBRES,CLIEID,DOCID,CCSERIE, '
      + ' CCNODOC,LICOID,CCFEMIS,LICOTCAMB,LICOTCAMBL,TMONID, '
      + ' LICOSALORI,LICOSALLOC,LICOSALEXT,LICOMTOORI,LICOMTOLOC,LICOMTOEXT, '
      + ' LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOMM,LICODD,LICOTRI,LICOSEM, '
      + ' LICOSS,LICOAATRI,LICOAASEM,LICOAASS,FLAGVAR,CLIEDES,CCFVCMTO,ZVTAID,LICOMTOABOORI,LICOMTOABOLOC,LICOMTOABOEXT,STATUS '
      + ' from CXC317 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' CLAUXID=' + '''' + dblcClAux.text + '''' + ' and '
      + ' TVTAID=' + '''' + dblcZona.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');
   DM1.cdsDLiqCob.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
   TNumericField(DM1.cdsDLiqCob.FieldByName('LICOMTOORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob.FieldByName('LICOMTOLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob.FieldByName('LICOMTOEXT')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob.FieldByName('LICOSALORI')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob.FieldByName('LICOSALLOC')).displayFormat := '###,###,###0.00';
   TNumericField(DM1.cdsDLiqCob.FieldByName('LICOSALEXT')).displayFormat := '###,###,###0.00';

   dbgDocCanje.RedrawGrid;

{   Filtracds( DM1.cdsDPag, 'Select * from CXC310 Where '
                        + 'CIAID='  +''''+dblcCia.Text +''''+' and '
                        + 'NOTACOB='+''''+edtCanje.text+'''' );
 }
End;

Procedure TFSelCob.bbtnBasuraDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Function TFSelCob.ValidaCabecera: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then Raise exception.Create('Falta Código de Compañía');
   If length(edtCia.Text) = 0 Then Raise exception.Create('Código de Compañía Errado');
   If length(edtCanje.Text) = 0 Then Raise exception.Create('Falta No. de Canje');
   If length(dblcClAux.Text) = 0 Then Raise exception.Create('Falta Registrar Clase de Auxiliar');
   If length(dblcdCobrador.Text) = 0 Then Raise exception.Create('Falta Registrar Cobrador');
   If length(edtCobrador.Text) = 0 Then Raise exception.Create('Cobrador Errado');
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
//   if length(dblcTMon.Text)=0  then raise exception.Create('Falta Tipo de Moneda');
//   if length(edtTMon.Text)=0   then raise exception.Create('Código de Moneda Errado');
   If length(dbeTCLet.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   Result := true;
End;

Function TFSelCob.ExisteMovCxC(xxCia, xxTDiario, xxAAMM, xxNoReg: String): Boolean;
Begin
   DM1.cdsMovCxC2.Setkey;
   DM1.cdsMovCxC2.FieldByName('CIAID').Value := xxCia;
   DM1.cdsMovCxC2.FieldByName('TDIARID').Value := xxTDiario;
   DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := xxAAMM;
   DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := xxNoReg;
   If DM1.cdsMovCxC2.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Procedure TFSelCob.bbtnOkClick(Sender: TObject);
Var
   xWhere: String;
Begin
   DM1.xFlagCal := True;
   Screen.Cursor := crHourGlass;
   If Not ValidaCabecera Then Exit; // Valida Datos Cabecera

   If DM1.wModo = 'A' Then
   Begin
      FiltraCanje(DM1.wModo);
      dbgPendientes.RedrawGrid;
   End;

{   if (DM1.cdsMovCxC2.RecordCount=0) and (DM1.cdsDLiqCob.RecordCount=0) then
   begin
      DM1.cdsCobranza.Edit;
      DM1.cdsCobranza.FieldByName('NCOESTADO').AsString:='X';
      EstadoDeForma( 0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ' );
      raise Exception.Create('Proveedor No tiene Documentos Pendientes de Pago');
   end;}

   DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);
   sPe := InttoStr(wAno) + StrZero(IntToStr(wMes), 2);

   If length(edtCia.Text) > 0 Then
   Begin
      If UpperCase(edtCanje.text) = '(NUEVO)' Then
      Begin
      //determina último número de registro incrementado en 1
         xWhere := ' CIAID=' + QuotedStr(dblcCia.Text) +
            ' AND CLAUXID=' + QuotedStr(dblcClAux.Text);
//              ' AND COID='+QuotedStr(dblcdCobrador.Text);
//              ' AND LICOANOMM='+QuotedStr(sPe);
         edtCanje.Text := StrZero(DM1.BuscaUltTGE('dspTGE', 'CXC316', 'LICOID', xWhere), 6);
      End;
   End;
   edtCobranza.Caption := 'Cobranza' + ' ' + edtCanje.text;
   If BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
   Begin
      DM1.cdsCLiqCob.FieldByName('LICOANO').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsCLiqCob.FieldByName('LICOMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
      DM1.cdsCLiqCob.FieldByName('LICODD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString; // día
      DM1.cdsCLiqCob.FieldByName('LICOTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DM1.cdsCLiqCob.FieldByName('LICOSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DM1.cdsCLiqCob.FieldByName('LICOSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString; // semana
      DM1.cdsCLiqCob.FieldByName('LICOANOMM').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString; // mes
      DM1.cdsCLiqCob.FieldByName('LICOAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DM1.cdsCLiqCob.FieldByName('LICOAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DM1.cdsCLiqCob.FieldByName('LICOAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DM1.cdsCLiqCob.FieldByName('CIAID').ASString := dblcCia.Text;
   DM1.cdsCLiqCob.FieldByName('TMONID').ASString := dblcTMon.Text;
   DM1.cdsCLiqCob.FieldByName('CLAUXID').ASString := dblcClAux.Text;
   DM1.cdsCLiqCob.FieldByName('COID').ASString := dblcdCobrador.Text;
   DM1.cdsCLiqCob.FieldByName('CCONOMBRES').ASString := edtCobrador.Text;
   DM1.cdsCLiqCob.FieldByName('CCFEMIS').AsDateTime := dtpFEmis.Date;
   DM1.cdsCLiqCob.FieldByName('LICOID').AsString := edtCanje.Text;
   DM1.cdsCLiqCob.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsCLiqCob.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsCLiqCob.FieldByName('LICOHREG').AsDateTime := TimeS;
   DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString := 'X';
   DM1.cdsCLiqCob.FieldByName('TVTAID').AsString := dblcZona.text;
   DM1.cdsCLiqCob.FieldByName('ZVTAID').AsString := dblcZona1.text;
   DM1.cdsCLiqCob.FieldByName('LICOTCAMB').Value := xxTCambio;

   DM1.cdsCLiqCob.DataRequest('SELECT * FROM CXC316 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND LICOID=' + QuotedStr(edtCanje.text));
   DM1.AplicaDatos(DM1.cdsCLiqCob, 'CLiqCob');

//   bbtnSumatClick(Sender);

   EstadoDeForma(0, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ');
   xFlagGr := True;

//  if sFlagCobrador='M' then
//     ArrastreAutomatico(Sender);

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
   Screen.Cursor := crDefault;
End;

Procedure TFSelCob.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
   State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFSelCob.bbtnSumatClick(Sender: TObject);
Var
   xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xxTotal: Double;
Begin
//   xTPagLoc := OperClientDataSet( DM1.cdsDPag,'SUM('+'NCOMTOLOC'+')','');
//   xTPagExt := OperClientDataSet( DM1.cdsDPag,'SUM('+'NCOMTOEXT'+')','');
//   dbgPago.ColumnByName('NCOMtoLoc').FooterValue:=floattostrf(xTPagLoc, ffNumber, 10, 2);
//   dbgPago.ColumnByName('NCOMtoExt').FooterValue:=floattostrf(xTPagExt, ffNumber, 10, 2);

   xTSalLoc := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOSALLOC' + ')', 'LICOESTADO<>''I''');
   xTSalExt := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOSALEXT' + ')', 'LICOESTADO<>''I''');
   xTPagLoc := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOMTOLOC' + ')', 'LICOESTADO<>''I''');
   xTPagExt := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOMTOEXT' + ')', 'LICOESTADO<>''I''');
//   xxTotalLoc:= xTPagLoc;
//   xxTotalExt:= xTPagExt;
   xxTotalLoc := xTSalLoc;
   xxTotalExt := xTSalExt;

   dbgDocCanje.ColumnByName('LICOSalLoc').FooterValue := floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('LICOSalExt').FooterValue := floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('LICOMtoLoc').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('LICOMtoExt').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);

   If DM1.cdsCLiqCob.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      xxTotal := xTPagLoc
   Else
   Begin
      xxTotal := xTPagExt;
   End;

//   edtFinal.Text :='Cobranza se deberan Generar por la suma de '+edtTMon.Text;
//   edtTotal1.Text:=floattostrf( xxToTal ,ffNumber,15,2);
//   edtTotal.Text :=floattostr( FRound(xxToTal,15,2) );
End;

Procedure TFSelCob.Z2bbtnGrabaClick(Sender: TObject);
Var
   xmoneda, xWhere: String;
   xentero: integer;
Begin
   If DM1.cdsDLiqCob.RecordCount = 0 Then
      Raise exception.Create('Falta Registrar Documentos a Canjear');

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
   DM1.cdsCLiqCob.Edit;
   If DM1.cdsCLiqCob.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      DM1.cdsCLiqCob.FieldByName('LICOMTOORI').Value := xxTotalLoc
   Else
   Begin
      DM1.cdsCLiqCob.FieldByName('LICOMTOORI').Value := xxTotalExt;
   End;
   DM1.cdsCLiqCob.FieldByName('LICOMTOLOC').Value := xxTotalLoc;
   DM1.cdsCLiqCob.FieldByName('LICOMTOEXT').Value := xxTotalExt;
   DM1.cdsCLiqCob.FieldByName('LICOUSER').AsString := DM1.wUsuario;
   DM1.cdsCLiqCob.FieldByName('LICOFREG').AsDateTime := DateS;
   DM1.cdsCLiqCob.FieldByName('LICOHREG').AsDateTime := TimeS;

   DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString := 'I';

   DM1.AplicaDatos(DM1.cdsCLiqCob, 'CLiqCob');
//   DM1.AplicaDatos( DM1.cdsMovCxC2, 'MovCxC2' );
   DM1.AplicaDatos(DM1.cdsMovCxCClone, 'MovCxC2');

//   DM1.AplicaDatos( DM1.cdsCobranza,'Cobranza');
   ActualizaTransferencias;
   DM1.AplicaDatos(DM1.cdsDLiqCob, 'DLiqCob');
//   DM1.AplicaDatos( DM1.cdsDPag,    'DPag'  );
   xFlagGr := False;
   EstadoDeForma(1, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ');
   ShowMessage('Registro de Cobranza Grabado ');
End;

Procedure TFSelCob.ActualizaSaldosMovCxP;
{var
   xRegAct : TBookMark;
   xPagLoc, xPagExt : Double;}
Begin
{   // Actualiza Saldo de MovCxP
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsDLiqCob.DisableControls;
   xRegAct := DM1.cdsDLiqCob.GetBookmark;
   DM1.cdsDLiqCob.First;
   while not DM1.cdsDLiqCob.Eof do begin
      DM1.cdsDLiqCob.Edit;
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.FieldByName('CIAID').Value    := DM1.cdsDLiqCob.FieldByName('CIAID').Value;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value  := DM1.cdsDLiqCob.FieldByName('TDIARID').Value;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsDLiqCob.FieldByName('CCANOMM').Value;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value  := DM1.cdsDLiqCob.FieldByName('CCNOREG').Value;
      if DM1.cdsMovCxC2.GotoKey then
      begin
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value=DM1.wTMonLoc then
         begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat+DM1.cdsDLiqCob.FieldByName('CCMTOLOC').AsFloat,15,2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat,15,2) then begin
               DM1.cdsDLiqCob.GotoBookmark(xRegAct);
               DM1.cdsDLiqCob.FreeBookmark(xRegAct);
               DM1.cdsDLiqCob.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            end;
         end
         else
         begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat+DM1.cdsDLiqCob.FieldByName('CCMTOEXT').AsFloat,15,2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat,15,2) Then
            begin
               DM1.cdsDLiqCob.GotoBookmark(xRegAct);
               DM1.cdsDLiqCob.FreeBookmark(xRegAct);
               DM1.cdsDLiqCob.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         end;       //06/07/2001
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value=DM1.wTMonLoc then begin
            xPagLoc := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat+DM1.cdsDLiqCob.FieldByName('CCMTOLOC').AsFloat,15,2);
            DM1.cdsMovCxC2.FieldByName('CCSALORI').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat-xPagLoc,15,2);
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat-xPagLoc,15,2);
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat/DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').AsFloat,15,2);
         end
         else
         begin
            xPagExt := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat+DM1.cdsDLiqCob.FieldByName('CCMTOEXT').AsFloat,15,2);
            DM1.cdsMovCxC2.FieldByName('CCSALORI').AsFloat:=FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat-xPagExt,15,2);
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat:=FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat-xPagExt,15,2);
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat:=FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat*DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').AsFloat,15,2);
         end;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString:= '';
         DM1.cdsMovCxC2.Post;
      end;
      DM1.cdsDLiqCob.Next;
   end;
   DM1.AplicaDatos( DM1.cdsMovCxC2,'MovCxC2' );
   DM1.cdsDLiqCob.GotoBookmark(xRegAct);
   DM1.cdsDLiqCob.FreeBookmark(xRegAct);
   DM1.cdsDLiqCob.EnableControls;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2.EnableControls;}
End;

Function TFSelCob.VerificaTotal: Boolean;
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
      DM1.cdsMovCxC2.FieldByName('CIAID').Value := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value := DM1.cdsDLiqCob.FieldByName('TDIARID').AsString;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsDLiqCob.FieldByName('CCANOMM').AsString;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := DM1.cdsDLiqCob.FieldByName('CCNOREG').AsString;
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

Procedure TFSelCob.bbtnCalcClick(Sender: TObject);
Begin

   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación

End;

Procedure TFSelCob.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   xWhere := 'TMonId=''' + dblcTMon.Text + ''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
   edtTMon.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   End;
End;

Procedure TFSelCob.bbtnCancelaClick(Sender: TObject);
Begin
   DM1.cdsMovCxC2.CancelUpdates;
   DM1.cdsDPag.CancelUpdates;
   DM1.cdsDLiqCob.CancelUpdates;
   FSelCob.OnKeyPress := FormKeyPress;
   EstadoDeForma(0, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ');
End;

Procedure TFSelCob.dtpFEmisExit(Sender: TObject);
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
   If length(BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DM1.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
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

Procedure TFSelCob.ActualizaPagadoMovCxP;
Begin
{   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsDLiqCob.DisableControls;
   DM1.cdsDLiqCob.First;
   While not DM1.cdsDLiqCob.Eof do Begin
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.FieldByName('CIAID').Value    := DM1.cdsDLiqCob.FieldByName('CIAID').Value;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value  := DM1.cdsDLiqCob.FieldByName('TDIARID').Value;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsDLiqCob.FieldByName('CCANOMM').Value;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value  := DM1.cdsDLiqCob.FieldByName('CCNOREG').Value;
      if DM1.cdsMovCxC2.GotoKey then begin
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value=DM1.wTMonLoc then begin
            DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value+DM1.cdsDLiqCob.FieldByName('CCMTOLOC').Value,15,2);
            DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value/DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').Value,15,2);
            If DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value<=0 then
               DM1.cdsMovCxC2.FieldByName('CCESTADO').Value:='C';
            end
         else begin
            DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value+DM1.cdsDLiqCob.FieldByName('CCMTOEXT').Value,15,2);
            DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value:=FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value*DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').Value,15,2);
            If DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value<=0 then
               DM1.cdsMovCxC2.FieldByName('CCESTADO').Value:='C';
         end;
         DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value:=FRound(DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').Value,15,2);
      end;
      DM1.cdsDLiqCob.Next;
   end;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.AplicaDatos( DM1.cdsMovCxC2,'MovCxC2' );
   DM1.cdsMovCxC2.First;
   DM1.cdsMovCxC2.EnableControls;
   DM1.cdsDLiqCob.EnableControls;}
End;

Procedure TFSelCob.dbeTCLetExit(Sender: TObject);
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

Procedure TFSelCob.bbtnBorraClick(Sender: TObject);
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

Procedure TFSelCob.bbtnRegresaClick(Sender: TObject);
Begin
   FSelCob.OnKeyPress := FormKeyPress;
//   DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString:=' ';
  // EstadoDeForma(0,DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ' );

   If (DM1.cdsDLiqCob.Modified) Or (DM1.cdsDLiqCob.ChangeCount > 0) Then
   Begin
      If Application.MessageBox('Los registros asignados no grabados se perderán.',
         'Aviso', MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK Then
      Begin
         exit;
      End
      Else
//       Z2bbtnGrabaClick(Nil);

   End;
   EstadoDeForma(0, ' ', ' ');
   DM1.cdsCLiqCob.Edit;

   dblcCia.enabled := False;
   dblcClAux.enabled := False;
   dblcdCobrador.enabled := False;
   edtCanje.enabled := False;
End;

Procedure TFSelCob.Z2bbtnNuevoClick(Sender: TObject);
Begin
   If MessageDlg('Ingresar Nueva Planilla deCobranza' + chr(13) + chr(13) + '   ¿ Esta Seguro ?  ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      DM1.cdsCLiqCob.CancelUpdates;

      If (DM1.wModo = 'A') And (xFlagGr) Then
      Begin
         DM1.cdsCLiqCob.Delete;
         DM1.AplicaDatos(DM1.cdsCLiqCob, 'CLiqCob');
      End;
      DM1.cdsCLiqCob.Insert;
      InicializaClientDataSet;
      InicializaPies;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
      bbtnSumatClick(Nil);
   End;
End;

Procedure TFSelCob.Z2bbtnAnulaClick(Sender: TObject);
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
      If ExisteMovCxC(DM1.cdsDLiqCob.FieldByName('CIAID').Value, DM1.cdsDLiqCob.FieldByName('TDIARID').Value,
         DM1.cdsDLiqCob.FieldByName('CCANOMM').Value, DM1.cdsDLiqCob.FieldByName('CCNOREG').Value) Then
      Begin
         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.FieldByName('CCSALORI').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOORI').Value - DM1.cdsMovCxC2.FieldByName('CCPAGORI').Value, 15, 2);
         DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value, 15, 2);
         DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value, 15, 2);
         DM1.cdsMovCxC2.Post;
      End;
      DM1.cdsDLiqCob.Next;
   End;
   DM1.cdsDLiqCob.EnableControls;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxC2.EnableControls;
   /////////////
   DM1.cdsCLiqCob.Edit;
   DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString := 'A';
   DM1.AplicaDatos(DM1.cdsCLiqCob, 'CLiqCob');
//   DM1.AplicaDatos( DM1.cdsMovCxC2,'MovCxC2' );
   DM1.AplicaDatos(DM1.cdsMovCxCClone, 'MovCxC2');

   EstadoDeForma(1, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ');

   ShowMessage('Cobranza Anulada');
End;

Procedure TFSelCob.Z2bbtnAceptaClick(Sender: TObject);
Begin
   If DM1.cdsDLiqCob.RecordCount = 0 Then Raise exception.Create(' Error :  Falta registrar Documentos a Cobrar');
{   if not VerificaTotal then Raise Exception.Create('Total a Cobrar es Diferente Pagos');
}
   If MessageDlg('Aceptar Cobranza' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DM1.cdsDLiqCob.DisableControls;
   DM1.cdsDLiqCob.First;
   While Not DM1.cdsDLiqCob.EOF Do
   Begin
      DM1.cdsDLiqCob.Edit;
      DM1.cdsDLiqCob.FieldByName('LICOESTADO').AsString := 'P';
      DM1.cdsDLiqCob.Post;
      DM1.cdsDLiqCob.Next;
   End;
   DM1.cdsDLiqCob.EnableControls;

   DM1.cdsCLiqCob.Edit;
   DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString := 'P';
   DM1.cdsCLiqCob.Post;
   DM1.AplicaDatos(DM1.cdsCLiqCob, 'CLiqCob');
   DM1.cdsDLiqCob.DataRequest('Select '
      + ' CIAID,TDIARID,CCNORGE,LICOANO,LICOANOMM,CLAUXID, '
      + ' TVTAID,COID,CONOMBRES,CLIEID,DOCID,CCSERIE, '
      + ' CCNODOC,LICOID,CUENTAID,CCFEMIS,LICOTCAMB,LICOTCAMBL,TMONID, '
      + ' LICOSALORI,LICOSALLOC,LICOSALEXT,LICOMTOORI,LICOMTOLOC,LICOMTOEXT, '
      + ' LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOMM,LICODD,LICOTRI,LICOSEM, '
      + ' LICOSS,LICOAATRI,LICOAASEM,LICOAASS,FLAGVAR,CLIEDES,CCFVCMTO,ZVTAID,LICOMTOABOORI,LICOMTOABOLOC,LICOMTOABOEXT,STATUS '
      + ' from CXC317 Where '
      + ' CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + ' LICOID=' + '''' + edtCanje.text + '''' + ' and '
      + ' CLAUXID=' + '''' + dblcClAux.text + '''' + ' and '
      + ' TVTAID=' + '''' + dblcZona.text + '''' + ' and '
      + ' COID=' + '''' + dblcdCobrador.text + '''');
   DM1.AplicaDatos(DM1.cdsDLiqCob, 'DLiqCob');

   EstadoDeForma(1, DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString, ' ');
   ShowMessage(' Cobranza Aceptada ');
End;

Procedure TFSelCob.dblcCiaExit(Sender: TObject);
Var
   xWhere: String;
Begin
{   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   edtCia.Text:=DisplayDescrip('TGE101','CIADES','CiaID',dblcCia.Text);

   if length(edtCia.Text)=0 then
   begin
      ShowMessage('Compañía no existe');
      dblcCia.Text:='';
      dblcCia.SetFocus;
   end;

   DM1.cdsCobrador.Filter:='CIAID='+QuotedStr(dblcCia.Text);

   dblcClAux.text:=DisplayDescrip('TGE102','CLAUXID','CLAUXCP','C')}
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   edtCia.Text := DM1.cdsCia.FieldByName('CIADES').AsString;

   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
   End;

   DM1.cdsCobrador.Filter := 'CIAID=' + QuotedStr(dblcCia.Text);

   dblcClAux.text := DisplayDescrip('TGE102', 'CLAUXID', 'CLAUXCP', 'C')

End;

Procedure TFSelCob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFSelCob.FormCreate(Sender: TObject);
Begin
{   If DM1.wAdmin='G' then begin
      DM1.wObjetoDesPr := Caption;
      FPrincipal.ListaComponentes(Self);
   end;}
//   FPrincipal.PropGrid( [dbgPendientes, dbgDocCanje] );
End;

Procedure TFSelCob.dbgDocCanjeCalcCellColors2(Sender: TObject;
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

Procedure TFSelCob.dbgDocCanjeDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFSelCob.dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
Begin
   If Target = dbgPendientes Then
   Begin
      If DM1.cdsMovCxC2.IndexFieldNames <> 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID' Then
         DM1.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';

      If DM1.cdsMovCxCClone.IndexFieldNames <> 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID' Then
         DM1.cdsMovCxCClone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';

      DM1.cdsMovCxC2.Filtered := False;
      DM1.cdsMovCxCClone.Filtered := False;

      DM1.cdsMovCxC2.SetKey;
      DM1.cdsMovCxC2.FieldByName('CIAID').AsString := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
      DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob.FieldByName('CLIEID').AsString;
      DM1.cdsMovCxC2.FieldByName('DOCID').AsString := DM1.cdsDLiqCob.FieldByName('DOCID').AsString;
      DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString;
      DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString;

      DM1.cdsMovCxCClone.SetKey;
      DM1.cdsMovCxCClone.FieldByName('CIAID').AsString := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
      DM1.cdsMovCxCClone.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob.FieldByName('CLIEID').AsString;
      DM1.cdsMovCxCClone.FieldByName('DOCID').AsString := DM1.cdsDLiqCob.FieldByName('DOCID').AsString;
      DM1.cdsMovCxCClone.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString;
      DM1.cdsMovCxCClone.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString;

      If DM1.cdsMovCxCClone.GotoKey Then
      Begin
         DM1.cdsMovCxCClone.Edit;
         DM1.cdsMovCxCClone.FieldByName('FLAGVAR').AsString := '.';
         DM1.cdsMovCxCClone.FieldByName('COMPROMET').AsString := 'NA';
         DM1.cdsMovCxCClone.Post;
      End;

      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         DM1.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'NA';
         DM1.cdsDLiqCob.Delete;
      End;
      DM1.cdsMovCxC2.Filtered := True;
      DM1.cdsMovCxCClone.Filtered := True;
      dbgPendientes.RefreshDisplay;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFSelCob.dbgDocCanjeMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   If DM1.cdsDLiqCob.RecordCount > 0 Then
      dbgDocCanje.BeginDrag(False);
End;

Procedure TFSelCob.dbgPendientesDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFSelCob.dbgPendientesEndDrag2(Sender, Target: TObject; X,
   Y: Integer);
Var
   i: Integer;
Begin
   If Target = dbgDocCanje Then
   Begin
      DM1.cdsMovCxC2.DisableControls;
      // Verifica que Documentos No Esten Pendientes de Actualización
      If dbgPendientes.SelectedList.Count = 0 Then
         dbgpendientes.SelectRecord;
      For i := 0 To dbgPendientes.SelectedList.Count - 1 Do
      Begin
         dbgPendientes.datasource.dataset.GotoBookmark(dbgPendientes.SelectedList.items[i]);
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2) <>
               FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgPendientes.SelectedList.clear;
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
               dbgPendientes.SelectedList.clear;
               DM1.cdsMovCxC2.First;
               DM1.cdsMovCxC2.EnableControls;
            End;
         End;
         DM1.cdsDLiqCob.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
         DM1.cdsDLiqCob.SetKey;
         DM1.cdsDLiqCob.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
         DM1.cdsDLiqCob.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
         DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
         DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
         DM1.cdsDLiqCob.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;

         If Not DM1.cdsDLiqCob.GotoKey Then
         Begin
            DM1.cdsDLiqCob.Insert;
            DM1.cdsDLiqCob.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
            DM1.cdsDLiqCob.FieldByName('TDIARID').Value := DM1.cdsMovCxC2.FieldByName('TDIARID').Value;
            DM1.cdsDLiqCob.FieldByName('CCNORGE').Value := DM1.cdsMovCxC2.FieldByName('CCNOREG').Value;
            DM1.cdsDLiqCob.FieldByName('LICOANO').Value := DM1.cdsMovCxC2.FieldByName('CCAAAA').Value;
            DM1.cdsDLiqCob.FieldByName('LICOANOMM').Value := DM1.cdsMovCxC2.FieldByName('CCANOMES').Value;
            DM1.cdsDLiqCob.FieldByName('CLAUXID').Value := dblcClAux.text;
            DM1.cdsDLiqCob.FieldByName('TVTAID').Value := DM1.cdsMovCxC2.FieldByName('TVTAID').Value;
            DM1.cdsDLiqCob.FieldByName('ZVTAID').Value := DM1.cdsMovCxC2.FieldByName('ZVTAID').Value;
            DM1.cdsDLiqCob.FieldByName('COID').Value := dblcdCobrador.text;
            DM1.cdsDLiqCob.FieldByName('CONOMBRES').Value := edtCobrador.text;

            DM1.cdsDLiqCob.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
            DM1.cdsDLiqCob.FieldByName('CLIEDES').AsString := DM1.cdsMovCxC2.FieldByName('CLIEDES').AsString;
            DM1.cdsDLiqCob.FieldByName('CCFVCMTO').AsDateTime := DM1.cdsMovCxC2.FieldByName('CCFVCMTO').AsDateTime;
            DM1.cdsDLiqCob.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
            DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
            DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
            DM1.cdsDLiqCob.FieldByName('LICOID').Value := edtCanje.Text;
            DM1.cdsDLiqCob.FieldByName('CCFEMIS').AsDateTime := DM1.cdsMovCxC2.FieldByName('CCFEMIS').AsDateTime;
            DM1.cdsDLiqCob.FieldByName('TMONID').Value := DM1.cdsMovCxC2.FieldByName('TMONID').Value;
            DM1.cdsDLiqCob.FieldByName('LICOTCAMB').Value := xxTCambio;
            DM1.cdsDLiqCob.FieldByName('LICOTCAMBL').Value := DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value;

            If DM1.cdsDLiqCob.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
            Begin
               DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / xxTCambio, 15, 2);

               DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / xxTCambio, 15, 2);

            End
            Else
            Begin
               DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * xxTCambio, 15, 2);

               DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * xxTCambio, 15, 2);
            End;
            DM1.cdsDLiqCob.FieldByName('LICOMTOABOORI').AsFloat := 0;
            DM1.cdsDLiqCob.FieldByName('LICOMTOABOLOC').AsFloat := 0;
            DM1.cdsDLiqCob.FieldByName('LICOMTOABOEXT').AsFloat := 0;

            DM1.cdsDLiqCob.FieldByName('LICOESTADO').AsString := DM1.cdsMovCxC2.FieldByName('CCESTADO').AsString;
            DM1.cdsDLiqCob.FieldByName('LICOUSER').Value := DM1.wUsuario;
            DM1.cdsDLiqCob.FieldByName('LICOFREG').AsDateTime := DateS;
            DM1.cdsDLiqCob.FieldByName('LICOHREG').AsDateTime := TimeS;
            DM1.cdsDLiqCob.FieldByName('LICOMM').Value := DM1.cdsMovCxC2.FieldByName('CCMM').Value;
            DM1.cdsDLiqCob.FieldByName('LICODD').Value := DM1.cdsMovCxC2.FieldByName('CCDD').Value;
            DM1.cdsDLiqCob.FieldByName('LICOTRI').Value := DM1.cdsMovCxC2.FieldByName('CCTRI').Value;
            DM1.cdsDLiqCob.FieldByName('LICOSEM').Value := DM1.cdsMovCxC2.FieldByName('CCSEM').Value;
            DM1.cdsDLiqCob.FieldByName('LICOSS').Value := DM1.cdsMovCxC2.FieldByName('CCSS').Value;
            DM1.cdsDLiqCob.FieldByName('LICOAATRI').Value := DM1.cdsMovCxC2.FieldByName('CCAATRI').Value;
            DM1.cdsDLiqCob.FieldByName('LICOAASEM').Value := DM1.cdsMovCxC2.FieldByName('CCAASEM').Value;
            DM1.cdsDLiqCob.FieldByName('LICOAASS').Value := DM1.cdsMovCxC2.FieldByName('CCAASS').Value;
            DM1.cdsDLiqCob.FieldByName('CUENTAID').AsString := DM1.cdsMovCxC2.FieldByName('CTATOTAL').AsString;
            DM1.cdsDLiqCob.FieldByName('FLAGVAR').AsString := '.';

    //         DM1.cdsDLiqCob.FieldByName('CPTOTOT').Value  := DM1.cdsMovCxC2.FieldByName('CCPTOTOT').Value;
    //         DM1.cdsDLiqCob.FieldByName('CTATOTAL').Value := DM1.cdsMovCxC2.FieldByName('CTATOTAL').Value;
            DM1.cdsDLiqCob.Post;

            DM1.cdsMovCxCClone.Setkey;
            DM1.cdsMovCxCClone.FieldByName('CIAID').AsString := DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
            DM1.cdsMovCxCClone.FieldByName('DOCID').AsString := DM1.cdsMovCxC2.FieldByName('DOCID').AsString;
            DM1.cdsMovCxCClone.FieldByName('CCSERIE').AsString := DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString;
            DM1.cdsMovCxCClone.FieldByName('CCNODOC').AsString := DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString;
            DM1.cdsMovCxCClone.FieldByName('CLIEID').AsString := DM1.cdsMovCxC2.FieldByName('CLIEID').AsString;
            If DM1.cdsMovCxCClone.gotokey Then
            Begin
               DM1.cdsMovCxCClone.Edit;
               DM1.cdsMovCxCClone.FieldByName('FLAGVAR').AsString := '.';
               DM1.cdsMovCxCClone.FieldByName('COMPROMET').AsString := 'CO';
               DM1.cdsMovCxCClone.Post;
            End;

            DM1.cdsMovCxC2.Edit;
            DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
            DM1.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO';
            DM1.cdsMovCxC2.Post;
         End;
      End; //FOR
      DM1.cdsMovCxC2.EnableControls;
      dbgPendientes.SelectedList.Clear;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFSelCob.dbgPendientesMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   If DM1.cdsMovCxC2.RecordCount > 0 Then
      dbgPendientes.BeginDrag(False);
End;

Procedure TFSelCob.InsertaCanjes(xxCds: TwwClientDataSet);
Begin
   DM1.cdsDLiqCob.Insert;
   DM1.cdsDLiqCob.FieldByName('CIAID').Value := xxCds.FieldByName('CIAID').AsString;
   DM1.cdsDLiqCob.FieldByName('TDIARID').Value := xxCds.FieldByName('TDIARID').AsString;
   DM1.cdsDLiqCob.FieldByName('CCNOREG').Value := xxCds.FieldByName('CCNOREG').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAAAA').Value := xxCds.FieldByName('CCAAAA').AsString;
   DM1.cdsDLiqCob.FieldByName('CCANOMM').Value := xxCds.FieldByName('CCANOMES').AsString;
   DM1.cdsDLiqCob.FieldByName('CLIEID').Value := xxCds.FieldByName('CLIEID').AsString;
   DM1.cdsDLiqCob.FieldByName('CLIERUC').Value := xxCds.FieldByName('CLIERUC').AsString;
   DM1.cdsDLiqCob.FieldByName('DOCID').Value := xxCds.FieldByName('DOCID').AsString;
   DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := xxCds.FieldByName('CCSERIE').AsString;
   DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := xxCds.FieldByName('CCNODOC').AsString;
   DM1.cdsDLiqCob.FieldByName('TCANJEID').Value := 'CO';
   DM1.cdsDLiqCob.FieldByName('CCCANJE').Value := edtCanje.Text;
   DM1.cdsDLiqCob.FieldByName('CCFCANJE').Value := xxCds.FieldByName('CCFCMPRB').AsDateTime;
   DM1.cdsDLiqCob.FieldByName('TMONID').Value := xxCds.FieldByName('TMONID').AsString;
   DM1.cdsDLiqCob.FieldByName('CCTCAMCJE').Value := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCTCAMDOC').Value := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCSALLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCSALEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DM1.xFlagCal := False;
   DM1.cdsDLiqCob.FieldByName('CCMTOLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DM1.xFlagCal := False;
   DM1.cdsDLiqCob.FieldByName('CCMTOEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsDLiqCob.FieldByName('CCESTADO').Value := 'P';
   DM1.cdsDLiqCob.FieldByName('CCUSER').Value := DM1.wUsuario;
   DM1.cdsDLiqCob.FieldByName('CCFREG').AsDateTime := DateS;
   DM1.cdsDLiqCob.FieldByName('CCHREG').AsDateTime := TimeS;
   DM1.cdsDLiqCob.FieldByName('CCMM').Value := xxCds.FieldByName('CCMM').AsString;
   DM1.cdsDLiqCob.FieldByName('CCDD').Value := xxCds.FieldByName('CCDD').AsString;
   DM1.cdsDLiqCob.FieldByName('CCTRI').Value := xxCds.FieldByName('CCTRI').AsString;
   DM1.cdsDLiqCob.FieldByName('CCSEM').Value := xxCds.FieldByName('CCSEM').AsString;
   DM1.cdsDLiqCob.FieldByName('CCSS').Value := xxCds.FieldByName('CCSS').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAATRI').Value := xxCds.FieldByName('CCAATRI').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAASEM').Value := xxCds.FieldByName('CCAASEM').AsString;
   DM1.cdsDLiqCob.FieldByName('CCAASS').Value := xxCds.FieldByName('CCAASS').AsString;
   DM1.cdsDLiqCob.FieldByName('CPTOTOT').Value := xxCds.FieldByName('CCPTOTOT').AsString;
   DM1.cdsDLiqCob.FieldByName('CTATOTAL').Value := xxCds.FieldByName('CTATOTAL').AsString;
   DM1.cdsDLiqCob.Post;
End;

Procedure TFSelCob.ppVariable2Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DM1.cdsDLiqCob.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFSelCob.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFSelCob.Z2bbtnImprimeClick(Sender: TObject);
Var
   sSQL: String;
Begin
   If DM1.cdsDLiqCob.RecordCount = 0 Then
   Begin
      ShowMessage('No Hay Documentos Asignados');
      exit;
   End;

   ppdbCob.dataSource := DM1.dsReporte;

   sSQL := ' SELECT 1 ITEM, ''01'' CIAID,''13'' DOCID,''FACTURA'' DOCDES, ''000'' CCSERIE,''0183659'' CCNODOC, ' +
      ' CURRENT DATE CCFVCMTO, ''1018214213'' CLIEID, ''CLIENTE DE PRUEBA CLIENTE DE PRUEBA'' CLIEDES, ' +
      ' 0.00 LICOMTOEXT,0.00 LICOMTOLOC,''LIMALIMALIMALIMALIMALIMA'' ZVTADES FROM TGE901 ';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   DM1.cdsReporte.EmptyDataSet;

   DM1.cdsDLiqCob.DisableControls;
   DM1.cdsDLiqCob.First;
   While Not DM1.cdsDLiqCob.EOF Do
   Begin
      DM1.cdsReporte.Append;
      DM1.cdsReporte.FieldByName('ITEM').AsInteger := DM1.cdsReporte.RecordCount + 1;
      DM1.cdsReporte.FieldByName('CIAID').AsString := DM1.cdsDLiqCob.FieldByName('CIAID').AsString;
      DM1.cdsReporte.FieldByName('DOCID').AsString := DM1.cdsDLiqCob.FieldByName('DOCID').AsString;
      DM1.cdsReporte.FieldByName('DOCDES').AsString := BuscaQry('dspTGE', 'TGE110', 'DOCABR', 'DOCMOD=''CXC'' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('DOCID').AsString), 'DOCABR');
      DM1.cdsReporte.FieldByName('ZVTADES').AsString := BuscaQry('dspTGE', 'FAC106', 'ZVTADES', 'ZVTAID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('ZVTAID').AsString) + ' AND TVTAID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('TVTAID').AsString), 'ZVTADES');
      DM1.cdsReporte.FieldByName('CCSERIE').AsString := DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString;
      DM1.cdsReporte.FieldByName('CCNODOC').AsString := DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString;
      DM1.cdsReporte.FieldByName('CCFVCMTO').AsString := DM1.cdsDLiqCob.FieldByName('CCFVCMTO').AsString;
      DM1.cdsReporte.FieldByName('CLIEID').AsString := DM1.cdsDLiqCob.FieldByName('CLIEID').AsString;
      DM1.cdsReporte.FieldByName('CLIEDES').AsString := DM1.cdsDLiqCob.FieldByName('CLIEDES').AsString;
      DM1.cdsReporte.FieldByName('LICOMTOEXT').AsString := DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsString;
      DM1.cdsReporte.FieldByName('LICOMTOLOC').AsString := DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsString;

      DM1.cdsReporte.Post;
      DM1.cdsDLiqCob.Next;
   End;
   DM1.cdsDLiqCob.EnableControls;
{   if DM1.wmodo ='M' Then
    Filtracds( DM1.cdsCLiqCob,'Select * from CXC316 Where '
                         + 'CIAID='     +''''+dblcCia.Text  +''''+' and '
                         + 'COID='    +''''+dblcdCobrador.Text+''''+' and '
                         + 'CLAUXID='    +''''+dblcClAux.Text+''''+' and '
                         + 'TVTAID='    +''''+dblcZona.Text+''''+' and '
                         + 'TMONID='    +''''+dblcTMon.Text+''''+' and '
                         + 'NCOESTADO='  +''''+'P'+''' and '
                         + 'LICOID =' +''''+edtCanje.Text+'''');}

   pprCobra.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\PlanillaCobranzaEntrega.Rtm';
   pprCobra.template.LoadFromFile;

   pplblTitulo1.caption := 'Planilla de Cobranza N°. ' + edtCanje.Text;
   pplblTitulo2.caption := 'Relación de Documentos por Cobrar';
   pplblTitulo3.caption := 'Zona: ' + edtZona1.text;
   pplblTitulo3.visible := (edtZona1.text <> '');
   pplblCobrador.caption := 'Cobrador : ' + dblcdCobrador.Text + ' ' + edtCobrador.Text;
   pplblCopia.visible := Not (DM1.cdsCLiqCob.FieldByName('LICOESTADO').AsString = 'P');
   pplblFecha.caption := DateToStr(dtpFEmis.Date);
   pprCobra.Print;
//   ppDesigner1.Showmodal;
End;

Procedure TFSelCob.dblcdClieEnter(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFSelCob.dblcdClieRucEnter(Sender: TObject);
Begin
   DM1.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFSelCob.ppvCptoCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'CptoId=' + '''' + DM1.cdsDLiqCob.FieldByName('CPTOID').AsString + '''';
   Value := BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOABR');
End;

Procedure TFSelCob.dbgbtnRegClick(Sender: TObject);
Begin

   InsertaPago;
End;

Procedure TFSelCob.InsertaPago;
Begin
{   DM1.cdsDPag.Insert;
   DM1.cdsDPag.FieldByName('CIAID').AsString   := dblcCia.Text;
   DM1.cdsDPag.FieldByName('NOTACOB').AsString:= edtCanje.Text;
   DM1.cdsDPag.FieldByName('CLAUXID').AsString := DM1.cdsCobranza.FieldByName('CLAUXID').AsString;
   DM1.cdsDPag.FieldByName('CLIEID').AsString  := DM1.cdsCobranza.FieldByName('CLIEID').AsString;
   DM1.cdsDPag.FieldByName('CLIERUC').AsString := DM1.cdsCobranza.FieldByName('CLIERUC').AsString;
   xModoL := 'A';}
End;

Procedure TFSelCob.bbtnRegCancClick(Sender: TObject);
Begin
   If xModoL = 'A' Then
      DM1.cdsDPag.Delete
   Else
   Begin
      DM1.cdsDPag.Cancel;
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFSelCob.bbtnRegOkClick(Sender: TObject);
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

Procedure TFSelCob.ppvTMCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=''' + DM1.cdsDPag.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', 'TMONABR', xWhere, 'TMONABR');
End;

Procedure TFSelCob.dblcCPTOExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcCPTO.Text) = 0 Then Exit;

   xWhere := 'CPTOID=''' + dblcCPTO.Text + ''' and OPCMENU=''C''';
   DM1.cdsDLiqCob.Edit;
   DM1.cdsDLiqCob.FieldByName('CPTODES').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOABR', xWhere, 'CPTOABR');
End;

Procedure TFSelCob.dblcClAuxExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If length(dblcClAux.Text) = 0 Then
   Begin
      ShowMessage('Seleccione Clase Auxiliar');
      dblcClAux.Text := '';
      dblcClAux.SetFocus;
   End;

End;

Procedure TFSelCob.ppHeaderBand1BeforeGenerate(Sender: TObject);
{var
   xsimbolo,xMoneda,xWhere : String;}
Begin
{   xWhere:= 'TMonId='+''''+DM1.cdsCLiqCob.FieldByName('TMONID').AsString+'''';
   xmoneda := BuscaQry('dspTGE','TGE103','*',xWhere,'TMON_LOC');
   xsimbolo := DM1.cdsQry.FieldByName('TMONDES').AsString;
   if xmoneda = 'L' then
    begin
     lblCantidad.text:=DM1.cdsCLiqCob.FieldByName('LICOMTOLOC').AsString;
     lblImporte.text :=DM1.cdsCLiqCob.FieldByName('LICOMTOLOC').AsString;
     pplblLetras.Text := 'LA CANTIDAD DE : ' +Trim(strNum(DM1.cdsCLiqCob.FieldByName('LICOMTOLOC').AsFloat)+'   '+xsimbolo);
    end
   else
    begin
     lblImporte.text :=DM1.cdsCLiqCob.FieldByName('LICOMTOEXT').AsString;
     lblCantidad.text:=DM1.cdsCLiqCob.FieldByName('LICOMTOEXT').AsString;
     pplblLetras.Text := 'LA CANTIDAD DE : ' +Trim(strNum(DM1.cdsCLiqCob.FieldByName('LICOMTOEXT').AsFloat)+'   '+xsimbolo);
    end;}
End;

Procedure TFSelCob.ppDBText14Print(Sender: TObject);
Var
   xWhere: String;
Begin
//   xWhere:= 'TMonId='+''''+DM1.cdsDLiqCob.FieldByName('TMONID').AsString+'''';
//   ppDBText14.text := BuscaQry('dspTGE','TGE103','*',xWhere,'TMonAbr');
End;

Procedure TFSelCob.dblcdCobradorExit(Sender: TObject);
Begin
   If length(dblcdCobrador.Text) > 0 Then
   Begin
      edtCobrador.Text := DisplayDescrip('CXC206', 'CONOMBRES', 'COID', dblcdCobrador.Text);
      sFlagCobrador := DM1.cdsQry2.FieldByName('COFLAG').AsString;
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

Procedure TFSelCob.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFSelCob.dblcZonaExit(Sender: TObject);
Var
   sSQL: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   edtZona.Text := DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcZona.Text);
   If length(edtZona.Text) = 0 Then
   Begin
      ShowMessage('Ingrese Sector');
      dblcZona.Text := '';
      dblcZona.SetFocus;
   End;
   sSQL := 'SELECT ZVTAID,ZVTADES,TVTAID,COID FROM FAC106 WHERE TVTAID=' + QuotedStr(dblcZona.text);
   DM1.cdsZona1.Close;
   DM1.cdsZona1.DataRequest(sSQL);
   DM1.cdsZona1.Open;
End;

Procedure TFSelCob.dbgPendientesTitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   xFlag: Boolean;
Begin
   xFlag := False;
   If AfieldName = 'CCNODOC' Then
   Begin
      DM1.cdsMovCxC2.IndexFieldNames := 'CCNODOC';
      lblBusca.Caption := 'Busca por Nro. Doc:';
      isBusca.SearchField := 'CCNODOC';
      xFlag := True;
   End;

   If AfieldName = 'CLIEDES' Then
   Begin
      DM1.cdsMovCxC2.IndexFieldNames := 'CLIEDES';
      lblBusca.Caption := 'Busca por Cliente:';
      isBusca.SearchField := 'CLIEDES';
      xFlag := True;
   End;

   If xFlag Then
   Begin
      pnlOrden.Visible := True;
      isBusca.Text := '';
      isBusca.SetFocus;
      dbgPendientes.Enabled := False;
   End;

End;

Procedure TFSelCob.btnSalirClick(Sender: TObject);
Begin
   pnlOrden.Visible := False;
   dbgPendientes.Enabled := true;
End;

Procedure TFSelCob.isBuscaKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      pnlOrden.Visible := False;
      dbgPendientes.SetFocus;
   End;
End;

Procedure TFSelCob.dbgPendientesCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
{  if (Field.FieldName='CCSERIE') OR
     (Field.FieldName='CCNODOC') then
  begin
  AFont.Style:=[fsBold];
  AFont.Color := clBlack;
  end;}
End;

Procedure TFSelCob.ArrastreAutomatico(Sender: Tobject);
Var
   i: integer;
Begin
   If DM1.cdsMovCxC2.RecordCount > 0 Then
   Begin
      DM1.cdsMovCxC2.DisableControls;
      DM1.cdsMovCxC2.First;
      While Not DM1.cdsMovCxC2.EOF Do
      Begin
         DM1.cdsDLiqCob.SetKey;
         DM1.cdsDLiqCob.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
         DM1.cdsDLiqCob.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
         DM1.cdsDLiqCob.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
         DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
         DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
         If Not DM1.cdsDLiqCob.GotoKey Then
         Begin
            DM1.cdsDLiqCob.Insert;
            DM1.cdsDLiqCob.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
            DM1.cdsDLiqCob.FieldByName('TDIARID').Value := DM1.cdsMovCxC2.FieldByName('TDIARID').Value;
            DM1.cdsDLiqCob.FieldByName('CCNORGE').Value := DM1.cdsMovCxC2.FieldByName('CCNOREG').Value;
            DM1.cdsDLiqCob.FieldByName('LICOANO').Value := DM1.cdsMovCxC2.FieldByName('CCAAAA').Value;
            DM1.cdsDLiqCob.FieldByName('LICOANOMM').Value := DM1.cdsMovCxC2.FieldByName('CCANOMES').Value;
            DM1.cdsDLiqCob.FieldByName('CLAUXID').Value := dblcClAux.text;
            DM1.cdsDLiqCob.FieldByName('TVTAID').Value := DM1.cdsMovCxC2.FieldByName('TVTAID').Value;
            DM1.cdsDLiqCob.FieldByName('COID').Value := dblcdCobrador.text;
            DM1.cdsDLiqCob.FieldByName('CONOMBRES').Value := edtCobrador.text;

            DM1.cdsDLiqCob.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
            DM1.cdsDLiqCob.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
            DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
            DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
            DM1.cdsDLiqCob.FieldByName('LICOID').Value := edtCanje.Text;
            DM1.cdsDLiqCob.FieldByName('CCFEMIS').Value := dtpFEmis.Date;
            DM1.cdsDLiqCob.FieldByName('TMONID').Value := DM1.cdsMovCxC2.FieldByName('TMONID').Value;
            DM1.cdsDLiqCob.FieldByName('LICOTCAMB').Value := xxTCambio;
            DM1.cdsDLiqCob.FieldByName('LICOTCAMBL').Value := DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value;
//         If dblcTMon.Text=DM1.wTMonLoc then
            If DM1.cdsDLiqCob.FieldByName('TMONID').AsString = DM1.wTMonLoc Then

            Begin
               DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / xxTCambio, 15, 2);

               DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / xxTCambio, 15, 2);
            End
            Else
            Begin
               DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * xxTCambio, 15, 2);

               DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DM1.xFlagCal := False;
               DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * xxTCambio, 15, 2);
            End;

            DM1.cdsDLiqCob.FieldByName('LICOESTADO').Value := 'P';
            DM1.cdsDLiqCob.FieldByName('LICOUSER').Value := DM1.wUsuario;
            DM1.cdsDLiqCob.FieldByName('LICOFREG').AsDateTime := DateS;
            DM1.cdsDLiqCob.FieldByName('LICOHREG').AsDateTime := TimeS;
            DM1.cdsDLiqCob.FieldByName('LICOMM').Value := DM1.cdsMovCxC2.FieldByName('CCMM').Value;
            DM1.cdsDLiqCob.FieldByName('LICODD').Value := DM1.cdsMovCxC2.FieldByName('CCDD').Value;
            DM1.cdsDLiqCob.FieldByName('LICOTRI').Value := DM1.cdsMovCxC2.FieldByName('CCTRI').Value;
            DM1.cdsDLiqCob.FieldByName('LICOSEM').Value := DM1.cdsMovCxC2.FieldByName('CCSEM').Value;
            DM1.cdsDLiqCob.FieldByName('LICOSS').Value := DM1.cdsMovCxC2.FieldByName('CCSS').Value;
            DM1.cdsDLiqCob.FieldByName('LICOAATRI').Value := DM1.cdsMovCxC2.FieldByName('CCAATRI').Value;
            DM1.cdsDLiqCob.FieldByName('LICOAASEM').Value := DM1.cdsMovCxC2.FieldByName('CCAASEM').Value;
            DM1.cdsDLiqCob.FieldByName('LICOAASS').Value := DM1.cdsMovCxC2.FieldByName('CCAASS').Value;
            DM1.cdsDLiqCob.FieldByName('FLAGVAR').AsString := '.';

            DM1.cdsDLiqCob.Post;
            DM1.cdsMovCxC2.Edit;
            DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
            DM1.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO';
            DM1.cdsMovCxC2.Post;
         End;
         Next;
      End;
      DM1.cdsMovCxC2.EnableControls;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFSelCob.bbtnPasaClick(Sender: TObject);
Var
   sSIT, sUBI: String;
   sFiltro: String;
   mrRespuesta: word;
   xDifSaldo: Double;
Begin
   If isBusca.text <> '' Then
   Begin
      If isBusca.text = DM1.cdsMovCxC2.FieldByName(iSBUSCA.SEARCHFIELD).AsString Then
      Begin
         dbgPendientesEndDrag2(dbgPendientes, dbgDocCanje, 0, 0);
         isBusca.text := '';
      //pnlOrden.Visible := False;
      //dbgPendientes.Enabled  := true ;
      End
      Else
      Begin
         DM1.cdsQry3.Close;
         DM1.cdsQry3.DataRequest('SELECT CIAID,CLIEID,CLIEDES,DOCID,''ABREVIATURA'' DOCABR,CCSERIE,CCNODOC,LICOID,COID,CONOMBRES,CCFEMIS FROM CXC317 WHERE FLAGVAR<>''XX'' AND CCNODOC=' + Quotedstr(isBusca.text));
         DM1.cdsQry3.Open;
      //BuscaQry('dspTGE','CXC317','DOCID,CCSERIE,LICOID,COID,CONOMBRES,CCFEMIS','CCNODOC='+Quotedstr(isBusca.text),'LICOID');
         If DM1.cdsQry3.RecordCount > 0 Then
         Begin
            If DM1.cdsQry3.RecordCount > 1 Then
            Begin
               sFiltro := DM1.cdsTDoc.Filter;
               DM1.cdsTDoc.Filter := 'DOCMOD=''CXC''';
               DM1.cdsTDoc.Filtered := True;
               DM1.cdsTDoc.IndexFieldNames := 'DOCID';
               DM1.cdsQry3.First;
               While Not DM1.cdsQry3.EOF Do
               Begin
                  DM1.cdsQry3.Edit;

                  DM1.cdsTDoc.Setkey;
                  DM1.cdsTDoc.FieldByName('DOCID').AsString := DM1.cdsQry3.FieldByName('DOCID').AsString;

                  If DM1.cdsTDoc.Gotokey Then
                  Begin
                     DM1.cdsQry3.FieldByName('DOCABR').AsString := DM1.cdsTDoc.FieldByName('DOCABR').AsString;
                  End
                  Else
                  Begin
                     DM1.cdsQry3.FieldByName('DOCABR').AsString := 'N.A.';
                  End;
                  DM1.cdsQry3.Post;
                  DM1.cdsQry3.Next;
               End;
               DM1.cdsTDoc.Filter := sFiltro;
               DM1.cdsTDoc.Filtered := True;

               dbgDocEnc.DataSource := DM1.dsQry3;
               dbgDocEnc.Selected.Clear;

               dbgDocEnc.Selected.Add('DOCABR'#9'5'#9'Docum.'#9'F');
               dbgDocEnc.Selected.Add('CCSERIE'#9'5'#9'Serie'#9'F');
               dbgDocEnc.Selected.Add('CCNODOC'#9'12'#9'No.Documento'#9'F');
               dbgDocEnc.Selected.Add('CLIEDES'#9'35'#9'Cliente'#9'F');

               dbgDocEnc.RedrawGrid;

               pnlDocEnc.visible := True;
               dbgDocEnc.SetFocus;
            End
            Else
            Begin
               mrRespuesta := MessageDlg('El Documento ha sido asignado al cobrador ' + #13 +
                  DM1.cdsQry3.FieldByName('COID').AsString + ' ' + DM1.cdsQry3.FieldByName('CONOMBRES').AsString + ' ' + #13 +
                  'Planilla N° ' + DM1.cdsQry3.FieldByName('LICOID').AsString + ' del ' + DateToStr(DM1.cdsQry3.FieldByName('CCFEMIS').AsDateTime) + #13 + 'Desea Liberar Documento?',
                  mtConfirmation, [mbYes, mbNo], 0);
               If mrRespuesta = mrNo Then
               Begin
                  isBusca.SelectAll;
                  Exit;
               End;
               If mrRespuesta = mrYes Then
               Begin
                  ReasignaDocumento;
               End;
            End;
         End
         Else
         Begin
            BuscaQry('dspTGE', 'CXC301', 'SITID,UBIID,DOCID,CCSERIE,CCNODOC,CLIEID,CCESTADO,CCPAGEXT,CCSALEXT,CCMTOEXT,CLIEDES,TVTAID', 'CCNODOC=' + Quotedstr(isBusca.text), 'CCESTADO');
            If DM1.cdsQry.RecordCount > 0 Then
            Begin
               sSIT := DM1.cdsQry.FieldByName('SITID').AsString;
               sUBI := DM1.cdsQry.FieldByName('UBIID').AsString;

               If DM1.cdsQry.FieldByName('CCESTADO').AsString = 'C' Then
               Begin
                  ShowMessage('El Documento Está Cancelado ' + #13);
               End
               Else
               Begin
                  xDifSaldo := (FRound(DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat, 15, 2)
                     - FRound(DM1.cdsQry.FieldByName('CCPAGEXT').AsFloat, 15, 2)
                     - FRound(DM1.cdsQry.FieldByName('CCSALEXT').AsFloat, 15, 2));
                  xDifSaldo := FRound(xDifSaldo, 15, 2);
                  If xDifSaldo > 0 Then
                  Begin
                     ShowMessage('El Documento Se encuentra en proceso de Canje');
                  End
                  Else
                  Begin
                     If DM1.cdsQry.FieldByName('TVTAID').AsString <> dblcZona.text Then
                     Begin
                        ShowMessage('El Documento pertenece al otro Sector Comercial');
                     End
                     Else
                     Begin
                        ShowMessage('El Documento Se encuentra en ' + #13 + 'Situación: ' + QuotedStr(BuscaQry('dspTGE', 'CXC104', 'SITUAID,SITUADES', 'SITUAID=' + Quotedstr(sSIT), 'SITUADES'))
                           + #13 + 'Ubicación: ' + QuotedStr(BuscaQry('dspTGE', 'CXC105', 'UBICAID,UBICADES', 'UBICAID=' + Quotedstr(sUBI), 'UBICADES')));
                     End;
                  End;
               End;
               isBusca.SelectAll;
            End
         End;
      End;
   End;
End;

Procedure TFSelCob.rgZonaExit(Sender: TObject);
Begin
   If rgZona.itemindex = 0 Then
   Begin
      dblcZona1.Enabled := True;
      dblcZona1.SetFocus;
   End
   Else
   Begin
      dblcZona1.text := '';
      edtZona1.text := '';
      dblcZona1.Enabled := False;
   End;
End;

Procedure TFSelCob.dblcZona1Exit(Sender: TObject);
Begin
   If bbtnCancela.focused Then
      exit;

   edtZona1.text := BuscaQry('dspTGE', 'FAC106', 'ZVTADES', 'ZVTAID=' + QuotedStr(dblcZona1.text) + ' AND TVTAID=' + Quotedstr(dblcZona.text), 'ZVTADES');
   If edtZona1.text = '' Then
      Raise Exception.Create('Ingrese Zona');
End;

Procedure TFSelCob.dblcZona1DropDown(Sender: TObject);
Begin
   DM1.cdsZona1.IndexFieldNames := 'ZVTADES';
End;

Procedure TFSelCob.dblcdCobradorDropDown(Sender: TObject);
Begin
   DM1.cdsCobrador.IndexFieldNames := 'CONOMBRES';
End;

Procedure TFSelCob.ppvarTotalExtCalc(Sender: TObject; Var Value: Variant);
Begin
   value := OperClientDataSet(DM1.cdsDLiqCob, 'SUM(' + 'LICOMTOEXT' + ')', 'LICOESTADO<>''I''');
End;

Procedure TFSelCob.ReasignaDocumento;
Begin
   Screen.Cursor := crHourGlass;
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';
   DM1.cdsMovCxCClone.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC;CLIEID';

   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsMovCxCClone.Filtered := False;

   DM1.cdsMovCxC2.SetKey;
   DM1.cdsMovCxC2.FieldByName('CIAID').AsString := DM1.cdsQry3.FieldByName('CIAID').AsString;
   DM1.cdsMovCxC2.FieldByName('CLIEID').AsString := DM1.cdsQry3.FieldByName('CLIEID').AsString;
   DM1.cdsMovCxC2.FieldByName('DOCID').AsString := DM1.cdsQry3.FieldByName('DOCID').AsString;
   DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString := DM1.cdsQry3.FieldByName('CCSERIE').AsString;
   DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString := DM1.cdsQry3.FieldByName('CCNODOC').AsString;

   DM1.cdsMovCxCClone.SetKey;
   DM1.cdsMovCxCClone.FieldByName('CIAID').AsString := DM1.cdsQry3.FieldByName('CIAID').AsString;
   DM1.cdsMovCxCClone.FieldByName('CLIEID').AsString := DM1.cdsQry3.FieldByName('CLIEID').AsString;
   DM1.cdsMovCxCClone.FieldByName('DOCID').AsString := DM1.cdsQry3.FieldByName('DOCID').AsString;
   DM1.cdsMovCxCClone.FieldByName('CCSERIE').AsString := DM1.cdsQry3.FieldByName('CCSERIE').AsString;
   DM1.cdsMovCxCClone.FieldByName('CCNODOC').AsString := DM1.cdsQry3.FieldByName('CCNODOC').AsString;

   If DM1.cdsMovCxCClone.GotoKey Then
   Begin
      DM1.cdsMovCxCClone.Edit;
      DM1.cdsMovCxCClone.FieldByName('FLAGVAR').AsString := '.';
      DM1.cdsMovCxCClone.FieldByName('COMPROMET').AsString := 'NA';

      DM1.cdsMovCxCClone.Post;
   End;

   If DM1.cdsMovCxC2.GotoKey Then
   Begin
      DM1.cdsMovCxC2.Edit;
      DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
      DM1.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'NA';
      DM1.cdsMovCxC2.Post;
   End;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxCClone.Filtered := True;
   DM1.cdsMovCxC2.GotoKey;
   DM1.cdsMovCxCClone.GotoKey;

   DM1.cdsDLiqCob.SetKey;
   DM1.cdsDLiqCob.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
   DM1.cdsDLiqCob.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
   DM1.cdsDLiqCob.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
   DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
   DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
   If Not DM1.cdsDLiqCob.GotoKey Then
   Begin
      DM1.cdsDLiqCob.Insert;
      DM1.cdsDLiqCob.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
      DM1.cdsDLiqCob.FieldByName('TDIARID').Value := DM1.cdsMovCxC2.FieldByName('TDIARID').Value;
      DM1.cdsDLiqCob.FieldByName('CCNORGE').Value := DM1.cdsMovCxC2.FieldByName('CCNOREG').Value;
      DM1.cdsDLiqCob.FieldByName('LICOANO').Value := DM1.cdsMovCxC2.FieldByName('CCAAAA').Value;
      DM1.cdsDLiqCob.FieldByName('LICOANOMM').Value := DM1.cdsMovCxC2.FieldByName('CCANOMES').Value;
      DM1.cdsDLiqCob.FieldByName('CLAUXID').Value := dblcClAux.text;
      DM1.cdsDLiqCob.FieldByName('TVTAID').Value := DM1.cdsMovCxC2.FieldByName('TVTAID').Value;
      DM1.cdsDLiqCob.FieldByName('ZVTAID').Value := DM1.cdsMovCxC2.FieldByName('ZVTAID').Value;
      DM1.cdsDLiqCob.FieldByName('COID').Value := dblcdCobrador.text;
      DM1.cdsDLiqCob.FieldByName('CONOMBRES').Value := edtCobrador.text;

      DM1.cdsDLiqCob.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
      DM1.cdsDLiqCob.FieldByName('CLIEDES').AsString := DM1.cdsMovCxC2.FieldByName('CLIEDES').AsString;
      DM1.cdsDLiqCob.FieldByName('CCFVCMTO').AsDateTime := DM1.cdsMovCxC2.FieldByName('CCFVCMTO').AsDateTime;
      DM1.cdsDLiqCob.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
      DM1.cdsDLiqCob.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
      DM1.cdsDLiqCob.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
      DM1.cdsDLiqCob.FieldByName('LICOID').Value := edtCanje.Text;
      DM1.cdsDLiqCob.FieldByName('CCFEMIS').Value := dtpFEmis.Date;
      DM1.cdsDLiqCob.FieldByName('TMONID').Value := DM1.cdsMovCxC2.FieldByName('TMONID').Value;
      DM1.cdsDLiqCob.FieldByName('LICOTCAMB').Value := xxTCambio;
      DM1.cdsDLiqCob.FieldByName('LICOTCAMBL').Value := DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value;

      If DM1.cdsDLiqCob.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      Begin
         DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / xxTCambio, 15, 2);

         DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DM1.xFlagCal := False;
         DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
         DM1.xFlagCal := False;
         DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / xxTCambio, 15, 2);

      End
      Else
      Begin
         DM1.cdsDLiqCob.FieldByName('LICOSALORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         DM1.cdsDLiqCob.FieldByName('LICOSALEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         DM1.cdsDLiqCob.FieldByName('LICOSALLOC').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * xxTCambio, 15, 2);

         DM1.cdsDLiqCob.FieldByName('LICOMTOORI').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         DM1.xFlagCal := False;
         DM1.cdsDLiqCob.FieldByName('LICOMTOEXT').AsFloat := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
         DM1.xFlagCal := False;
         DM1.cdsDLiqCob.FieldByName('LICOMTOLOC').AsFloat := FRound((DM1.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * xxTCambio, 15, 2);
      End;
      DM1.cdsDLiqCob.FieldByName('LICOMTOABOORI').AsFloat := 0;
      DM1.cdsDLiqCob.FieldByName('LICOMTOABOLOC').AsFloat := 0;
      DM1.cdsDLiqCob.FieldByName('LICOMTOABOEXT').AsFloat := 0;

      DM1.cdsDLiqCob.FieldByName('LICOESTADO').AsString := DM1.cdsMovCxC2.FieldByName('CCESTADO').AsString;
      DM1.cdsDLiqCob.FieldByName('LICOUSER').Value := DM1.wUsuario;
      DM1.cdsDLiqCob.FieldByName('LICOFREG').AsDateTime := DateS;
      DM1.cdsDLiqCob.FieldByName('LICOHREG').AsDateTime := TimeS;

      DM1.cdsDLiqCob.FieldByName('LICOMM').Value := DM1.cdsMovCxC2.FieldByName('CCMM').Value;
      DM1.cdsDLiqCob.FieldByName('LICODD').Value := DM1.cdsMovCxC2.FieldByName('CCDD').Value;
      DM1.cdsDLiqCob.FieldByName('LICOTRI').Value := DM1.cdsMovCxC2.FieldByName('CCTRI').Value;
      DM1.cdsDLiqCob.FieldByName('LICOSEM').Value := DM1.cdsMovCxC2.FieldByName('CCSEM').Value;
      DM1.cdsDLiqCob.FieldByName('LICOSS').Value := DM1.cdsMovCxC2.FieldByName('CCSS').Value;
      DM1.cdsDLiqCob.FieldByName('LICOAATRI').Value := DM1.cdsMovCxC2.FieldByName('CCAATRI').Value;
      DM1.cdsDLiqCob.FieldByName('LICOAASEM').Value := DM1.cdsMovCxC2.FieldByName('CCAASEM').Value;
      DM1.cdsDLiqCob.FieldByName('LICOAASS').Value := DM1.cdsMovCxC2.FieldByName('CCAASS').Value;
      DM1.cdsDLiqCob.FieldByName('CUENTAID').AsString := DM1.cdsMovCxC2.FieldByName('CTATOTAL').AsString;
      DM1.cdsDLiqCob.FieldByName('FLAGVAR').AsString := '.';
      DM1.cdsDLiqCob.FieldByName('STATUS').AsString := 'TM';

//         DM1.cdsDLiqCob.FieldByName('CPTOTOT').Value  := DM1.cdsMovCxC2.FieldByName('CCPTOTOT').Value;
//         DM1.cdsDLiqCob.FieldByName('CTATOTAL').Value := DM1.cdsMovCxC2.FieldByName('CTATOTAL').Value;
      DM1.cdsDLiqCob.Post;

      DM1.cdsMovCxCClone.Setkey;
      DM1.cdsMovCxCClone.FieldByName('CIAID').AsString := DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
      DM1.cdsMovCxCClone.FieldByName('DOCID').AsString := DM1.cdsMovCxC2.FieldByName('DOCID').AsString;
      DM1.cdsMovCxCClone.FieldByName('CCSERIE').AsString := DM1.cdsMovCxC2.FieldByName('CCSERIE').AsString;
      DM1.cdsMovCxCClone.FieldByName('CCNODOC').AsString := DM1.cdsMovCxC2.FieldByName('CCNODOC').AsString;
      DM1.cdsMovCxCClone.FieldByName('CLIEID').AsString := DM1.cdsMovCxC2.FieldByName('CLIEID').AsString;
      If DM1.cdsMovCxCClone.gotokey Then
      Begin
         DM1.cdsMovCxCClone.Edit;
         DM1.cdsMovCxCClone.FieldByName('FLAGVAR').AsString := '.';
         DM1.cdsMovCxCClone.FieldByName('COMPROMET').AsString := 'CO';
         DM1.cdsMovCxCClone.Post;
      End;

      DM1.cdsMovCxC2.Edit;
      DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
      DM1.cdsMovCxC2.FieldByName('COMPROMET').AsString := 'CO';
      DM1.cdsMovCxC2.Post;
   End;
   DM1.cdsMovCxC2.EnableControls;
   isBusca.SelectAll;
   Screen.Cursor := crDefault;
End;

Procedure TFSelCob.bbtnCancelDocEncClick(Sender: TObject);
Begin
   pnlDocEnc.visible := False;
End;

Procedure TFSelCob.ActualizaTransferencias;
Var
   xFiltro: String;
   sSQL: String;
Begin
   DM1.cdsDLiqCob.DisableControls;
   xFiltro := DM1.cdsDLiqCob.Filter;
   DM1.cdsDLiqCob.Filter := 'STATUS=''TM''';
   DM1.cdsDLiqCob.Filtered := True;
   If DM1.cdsDLiqCob.RecordCount > 0 Then
   Begin
      DM1.cdsDLiqCob.First;
      While Not DM1.cdsDLiqCob.EOF Do
      Begin
         sSQL := ' UPDATE CXC317 SET FLAGVAR=''XX'', STATUS=''TX'' ' +
            ' WHERE CIAID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CIAID').AsString) +
            ' AND DOCID=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('DOCID').AsString) +
            ' AND CCSERIE=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CCSERIE').AsString) +
            ' AND CCNODOC=' + QuotedStr(DM1.cdsDLiqCob.FieldByName('CCNODOC').AsString) + ' AND LICOID<>' + QuotedStr(edtCanje.text);
         Try
            DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except

         End;
         DM1.cdsDLiqCob.Next;
      End
   End;

   DM1.cdsDLiqCob.Filter := xFiltro;
   DM1.cdsDLiqCob.EnableControls;
End;

End.

