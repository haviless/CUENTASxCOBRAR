Unit CxC205;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB, wwSpeedButton,
   wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
   ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
   ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod, oaVariables;

Type
   TFNotaCob = Class(TForm)
      pnlPie: TPanel;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnRegresa: TBitBtn;
      bbtnCancela: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      pnlCabecera: TPanel;
      pnlCab2: TPanel;
      lblFCanje: TLabel;
      lblTMon: TLabel;
      lblTCambio: TLabel;
      dtpFEmis: TwwDBDateTimePicker;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      dbeTCLet: TwwDBEdit;
      pnlCab1: TPanel;
      Label1: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label2: TLabel;
      edtCanje: TwwDBEdit;
      pnlEstado: TPanel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      lblContab: TLabel;
      lblAcepta: TLabel;
      Label9: TLabel;
      bbtnCalc: TBitBtn;
      bbtnSumat: TBitBtn;
      pnlDetalle: TPanel;
      bbtnBorra: TBitBtn;
      bbtnOk: TBitBtn;
      Label3: TLabel;
      dblcdClie: TwwDBLookupComboDlg;
      dblcdClieRuc: TwwDBLookupComboDlg;
      Label4: TLabel;
      edtClie: TEdit;
      dblcClAux: TwwDBLookupCombo;
      Label30: TLabel;
      Z2bbtnImprime: TBitBtn;
      ppdbCob: TppDBPipeline;
      ppdbCanje: TppDBPipeline;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      pnlPendientes: TPanel;
      Label5: TLabel;
      dbgPendientes: TwwDBGrid;
      pnlDocCanje: TPanel;
      Label6: TLabel;
      dbgDocCanje: TwwDBGrid;
      TabSheet2: TTabSheet;
      Panel1: TPanel;
      dbgPago: TwwDBGrid;
      pnlRegistro: TPanel;
      Label11: TLabel;
      lblTipReg: TLabel;
      Label12: TLabel;
      Label15: TLabel;
      Label33: TLabel;
      dbeImp: TwwDBEdit;
      dbeFPago: TwwDBEdit;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      dbeCheque: TwwDBEdit;
      dbgbtnReg: TwwIButton;
      Label7: TLabel;
      dblcFPago: TwwDBLookupCombo;
      dblcBanco: TwwDBLookupCombo;
      dblcMon: TwwDBLookupCombo;
      dbeBanco: TwwDBEdit;
      dbeMon: TwwDBEdit;
      pprCobra: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppVariable1: TppVariable;
      ppVariable2: TppVariable;
      ppLine4: TppLine;
      ppLabel9: TppLabel;
      ppDBText5: TppDBText;
      ppLabel10: TppLabel;
      ppDBText6: TppDBText;
      ppVariable3: TppVariable;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel14: TppLabel;
      ppVariable4: TppVariable;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppdbDPag: TppDBPipeline;
      ppTitleBand1: TppTitleBand;
      ppDetailBand2: TppDetailBand;
      ppSummaryBand2: TppSummaryBand;
      ppDBText9: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppTitleBand2: TppTitleBand;
      ppDetailBand3: TppDetailBand;
      ppSummaryBand3: TppSummaryBand;
      ppDBText18: TppDBText;
      ppLabel17: TppLabel;
      ppDBText19: TppDBText;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppDBText31: TppDBText;
      ppvTM: TppVariable;
      ppDBText23: TppDBText;
      ppDBText32: TppDBText;
      ppLine11: TppLine;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLine3: TppLine;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLine5: TppLine;
      ppLine12: TppLine;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppSummaryBand4: TppSummaryBand;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLine13: TppLine;
      ppLine14: TppLine;
      ppvDoc: TppVariable;
      edtFinal: TEdit;
      edtToTal1: TEdit;
      edtTotal: TEdit;
      pplblLetras: TppLabel;
      ppLabel1: TppLabel;
      dbeLoc: TwwDBEdit;
      dbeExt: TwwDBEdit;
      pprNCob: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppnNombre: TppLabel;
      ppLbDescrip: TppLabel;
      pplbFecha: TppLabel;
      ppLabel5: TppLabel;
      ppLabel2: TppLabel;
      ppLbDescrip1: TppLabel;
      ppShape1: TppShape;
      pplbValor: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText4: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLine1: TppLine;
      ppLabel13: TppLabel;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      pplCaja: TppLabel;
      pplCia: TppLabel;
      pplNo: TppLabel;
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
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormCreate(Sender: TObject);
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
      Procedure ppvTituloCalc(Sender: TObject; Var Value: Variant);
      Procedure ppvCiaCalc(Sender: TObject; Var Value: Variant);
      Procedure ppvNombreCalc(Sender: TObject; Var Value: Variant);
      Procedure ppvCptoCalc(Sender: TObject; Var Value: Variant);
      Procedure dbgbtnRegClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure dblcMonExit(Sender: TObject);
      Procedure dblcFPagoExit(Sender: TObject);
      Procedure dblcBancoExit(Sender: TObject);
      Procedure ppvTMCalc(Sender: TObject; Var Value: Variant);
      Procedure ppvDocCalc(Sender: TObject; Var Value: Variant);
      Procedure dbgPagoDblClick(Sender: TObject);
      Procedure dbgPagoKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbeImpExit(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure ppHeaderBand1BeforeGenerate(Sender: TObject);
      Procedure ppDBText14Print(Sender: TObject);
      Procedure dbeLocExit(Sender: TObject);
      Procedure dbeExtExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
      xmoneda: String;
      xmonedaR: String;
      xdiferencia: bool;
      Procedure CargaDataSource;
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
   End;

Var
   FNotaCob: TFNotaCob;
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

//Uses CxCDM, CxC001;
Uses CxCDM, oaCC2000;

{$R *.DFM}

Procedure TFNotaCob.dblcdClieExit(Sender: TObject);
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
      dblcdClieRuc.Text := DMCXC.cdsQry2.FieldByName('CLIERUC').AsString;
      dblcClAux.Text := DMCXC.cdsQry2.FieldByName('CLAUXID').AsString;
      dtpFEmis.SetFocus;
   End
   Else
   Begin
      edtClie.Text := '';
   End;
End;

Procedure TFNotaCob.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   dblcCia.Enabled := False;
   dblcClAux.Enabled := False;
   dblcdClie.Enabled := False;
   dblcdClieRuc.Enabled := False;
   dtpFEmis.Enabled := False;
   edtCanje.Enabled := False;
   pnlCab1.Enabled := False;
   pnlCab2.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgPendientes.Enabled := False;
   dbgDocCanje.Enabled := False;
   dbgPago.Enabled := False;
   dbgPendientes.ReadOnly := True;
   dbgDocCanje.ReadOnly := True;
   dbgPago.ReadOnly := True;
   dbgbtnReg.Enabled := False;

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
         edtCanje.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcCia.SetFocus;
      End;
      If xMovEstado = 'X' Then
      Begin
         pnlCab1.Enabled := True;
         pnlCab2.Enabled := True;
         dblcClAux.Enabled := True;
         dblcdClie.Enabled := True;
         dblcdClieRuc.Enabled := True;
         dtpFEmis.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcClAux.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
         pnlCab2.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := True;
         dblcTMon.SetFocus;
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
            dbgPago.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgPago.ReadOnly := False;
            dbgbtnReg.Enabled := True;

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
            dbgPago.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgPago.ReadOnly := False;
            dbgbtnReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            lblActivo.Visible := True;
         End;
         If xMovEstado = 'P' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgPago.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnImprime.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'C' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgPago.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;

            dbgDocCanje.Enabled := True;
            dbgPago.Enabled := True;

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
      dbgPago.Enabled := False;
      dbgPendientes.ReadOnly := True;
      dbgDocCanje.ReadOnly := True;
      dbgPago.ReadOnly := False;

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

Procedure TFNotaCob.InicializaPies;
Begin
   dbgDocCanje.ColumnByName('CPNODOC').FooterValue := 'Totales';
   dbgDocCanje.ColumnByName('CPSALLOC').FooterValue := '';
   dbgDocCanje.ColumnByName('CPSALEXT').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMOLOC').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMOEXT').FooterValue := '';
End;

Procedure TFNotaCob.InicializaDatos;
Begin
   xFlagGr := false;
   dtpFEmis.Date := DMCXC.dateS;
   dblcdClieRuc.Text := '';
   dblcdClie.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCLet.Text := '';
   edtClie.Text := '';
   dblcCia.Text := '';
   edtCia.Text := '';
   edtCanje.Text := '';
End;

Procedure TFNotaCob.InicializaClientDataSet;
Begin
   Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where CIAID=''''');
   Filtracds(DMCXC.cdsCanjes, 'Select * from CXC304 Where CIAID=''''');
   Filtracds(DMCXC.cdsDPag, 'Select * from CXC310 Where CIAID=''''');
End;

Procedure TFNotaCob.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   // Cancela todas las modificaciones en los cds.
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;
   DMCXC.cdsDPag.CancelUpdates;

   If (DMCXC.wModo = 'A') And (xFlagGr) Then
   Begin
      DMCXC.cdsCobranza.Delete;
      DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');
   End
   Else
   Begin
      DMCXC.cdsCobranza.CancelUpdates;
   End;
   // Eliminar Filtros
   pnlRegistro.Visible := False;
   DMCXC.cdsCanjes.Filtered := False;
   DMCXC.cdsTMon.Filtered := False;

   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := caFree;
End;

Procedure TFNotaCob.FiltraCanje(xModo: String);
Begin
   Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');

   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2.Filter := '';
   DMCXC.cdsMovCxC2.Filter := 'FLAGVAR<>' + '''' + 'XX' + '''' + ' and CCSALLOC>0 and '
      + 'CCCANJE<>' + '''' + edtCanje.Text + '''';

   DMCXC.cdsMovCxC2.Filtered := True;

   Filtracds(DMCXC.cdsCanjes, 'Select * from CXC304 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'CO' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');
   Filtracds(DMCXC.cdsDPag, 'Select * from CXC310 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'NOTACOB=' + '''' + edtCanje.text + '''');

End;

Procedure TFNotaCob.edtCanjeExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If Length(edtCanje.text) = 0 Then
   Begin
      edtcanje.SetFocus;
      Raise exception.Create('Error :  Falta Registrar Número de Canje');
   End;

   edtCanje.Text := StrZero(edtCanje.Text, DMCXC.cdsCobranza.FieldByName('NOTACOB').Size);

   If DMCXC.BuscaNotaCob(dblcCia.Text, edtCanje.Text) Then
   Begin
      edtcanje.SetFocus;
      Raise Exception.Create('Error :  Nota de Cobranza Ya Existe');
   End;

   // Si No Existe Canje Se Inserta Registro
   DMCXC.cdsCobranza.Insert;
   DMCXC.cdsCobranza.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsCobranza.FieldByName('CCTREC').AsString := 'CO';
   DMCXC.cdsCobranza.FieldByName('NOTACOB').AsString := edtCanje.Text;
   DMCXC.cdsCobranza.FieldByName('NCOUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCobranza.FieldByName('NCOFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCobranza.FieldByName('NCOHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString := 'X';

   DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');

   bbtnSumatClick(Sender);

   EstadoDeForma(0, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');
   xFlagGr := True;
End;

Procedure TFNotaCob.bbtnBasuraDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Function TFNotaCob.ValidaCabecera: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then Raise exception.Create('Falta Código de Compañía');
   If length(edtCia.Text) = 0 Then Raise exception.Create('Código de Compañía Errado');
   If length(edtCanje.Text) = 0 Then Raise exception.Create('Falta No. de Canje');
   If length(dblcClAux.Text) = 0 Then Raise exception.Create('Falta Registrar Clase de Auxiliar');
   If length(dblcdClie.Text) = 0 Then Raise exception.Create('Falta Registrar Cliente');
   If length(edtClie.Text) = 0 Then Raise exception.Create('Cliente Errado');
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
   If length(dblcTMon.Text) = 0 Then Raise exception.Create('Falta Tipo de Moneda');
   If length(edtTMon.Text) = 0 Then Raise exception.Create('Código de Moneda Errado');
   If length(dbeTCLet.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   Result := true;
End;

Function TFNotaCob.ExisteMovCxC(xxCia, xxTDiario, xxAAMM, xxNoReg: String): Boolean;
Begin
   DMCXC.cdsMovCxC2.Setkey;
   DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := xxCia;
   DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := xxTDiario;
   DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := xxAAMM;
   DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := xxNoReg;
   If DMCXC.cdsMovCxC2.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Procedure TFNotaCob.bbtnOkClick(Sender: TObject);
Begin
   DMCXC.xFlagCal := True;

   If Not ValidaCabecera Then Exit; // Valida Datos Cabecera

   If DMCXC.wModo = 'A' Then
   Begin
      FiltraCanje(DMCXC.wModo);
   End;

   If (DMCXC.cdsMovCxC2.RecordCount = 0) And (DMCXC.cdsCanjes.RecordCount = 0) Then
   Begin
      DMCXC.cdsCobranza.Edit;
      DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString := 'X';
      EstadoDeForma(0, DMCXC.cdsCanjes.FieldByName('CCESTADO').AsString, ' ');
      Raise Exception.Create('Cliente No tiene Documentos Pendientes de Pago');
   End;

   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      If ExisteMovCxC(DMCXC.cdsCanjes.FieldByName('CIAID').Value, DMCXC.cdsCanjes.FieldByName('TDIARID').Value,
         DMCXC.cdsCanjes.FieldByName('CCANOMM').Value, DMCXC.cdsCanjes.FieldByName('CCNOREG').Value) Then
      Begin
         DMCXC.cdsCanjes.FieldByName('CCSALLOC').Value := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').Value + DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value;
         DMCXC.cdsCanjes.FieldByName('CCSALEXT').Value := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').Value + DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value;
         If FRound(DMCXC.cdsCobranza.FieldByName('NCOTCAMB').Value, 15, 3) <>
            FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 3) Then
         Begin

            If dblcTMon.Text = DMCXC.wTMonLoc Then
            Begin
               DMCXC.cdsCanjes.FieldByName('CCSALORI').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value, 15, 2);
               DMCXC.cdsCanjes.FieldByName('CCSALLOC').Value := DMCXC.cdsCanjes.FieldByName('CCSALORI').Value;
               DMCXC.cdsCanjes.FieldByName('CCSALEXT').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').Value / DMCXC.cdsCobranza.FieldByName('NCOTCAMB').Value, 15, 2);
               DMCXC.xFlagCal := False;
               DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value / DMCXC.cdsCobranza.FieldByName('NCOTCAMB').Value, 15, 2);

            End
            Else
            Begin
               DMCXC.cdsCanjes.FieldByName('CCSALORI').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value, 15, 2);
               DMCXC.cdsCanjes.FieldByName('CCSALEXT').Value := DMCXC.cdsCanjes.FieldByName('CCSALORI').Value;
               DMCXC.cdsCanjes.FieldByName('CCSALLOC').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').Value * DMCXC.cdsCobranza.FieldByName('NCOTCAMB').Value, 15, 2);
               DMCXC.xFlagCal := False;
               DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value * DMCXC.cdsCobranza.FieldByName('NCOTCAMB').Value, 15, 2);
            End;
         End;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;

   DMCXC.cdsDPag.DisableControls;
   DMCXC.cdsDPag.First;
   While Not DMCXC.cdsDPag.Eof Do
   Begin
      DMCXC.cdsDPag.Edit;
      If dblcTMon.Text = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDPag.FieldByName('NCOMTOLOC').AsFloat := DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat;
         DMCXC.cdsDPag.FieldByName('NCOMTOEXT').AsFloat := FRound(DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat / DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat, 15, 2);
      End
      Else
      Begin
         DMCXC.cdsDPag.FieldByName('NCOMTOEXT').AsFloat := DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat;
         DMCXC.cdsDPag.FieldByName('NCOMTOLOC').AsFloat := FRound(DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat * DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat, 15, 2);
      End;
      DMCXC.cdsDPag.Next;
   End;
   DMCXC.cdsDPag.EnableControls;

   EstadoDeForma(1, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');

   FNotaCob.OnKeyPress := Nil;

   bbtnSumatClick(Sender);
End;

Procedure TFNotaCob.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
   State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotaCob.bbtnSumatClick(Sender: TObject);
Var
   xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xxTotal: Double;
Begin
   xTPagLoc := OperClientDataSet(DMCXC.cdsDPag, 'SUM(' + 'NCOMTOLOC' + ')', '');
   xTPagExt := OperClientDataSet(DMCXC.cdsDPag, 'SUM(' + 'NCOMTOEXT' + ')', '');
   dbgPago.ColumnByName('NCOMtoLoc').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgPago.ColumnByName('NCOMtoExt').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);

   xTSalLoc := OperClientDataSet(DMCXC.cdsCanjes, 'SUM(' + 'CCSALLOC' + ')', '');
   xTSalExt := OperClientDataSet(DMCXC.cdsCanjes, 'SUM(' + 'CCSALEXT' + ')', '');
   xTPagLoc := OperClientDataSet(DMCXC.cdsCanjes, 'SUM(' + 'CCMTOLOC' + ')', '');
   xTPagExt := OperClientDataSet(DMCXC.cdsCanjes, 'SUM(' + 'CCMTOEXT' + ')', '');
   xxTotalLoc := xTPagLoc;
   xxTotalExt := xTPagExt;
   dbgDocCanje.ColumnByName('CCSalLoc').FooterValue := floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCSalExt').FooterValue := floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);

   If DMCXC.cdsCobranza.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      xxTotal := xTPagLoc
   Else
   Begin
      xxTotal := xTPagExt;
   End;

   edtFinal.Text := 'Cobranza se deberan Generar por la suma de ' + edtTMon.Text;
   edtTotal1.Text := floattostrf(xxToTal, ffNumber, 15, 2);
   edtTotal.Text := floattostr(FRound(xxToTal, 15, 2));
End;

Procedure TFNotaCob.Z2bbtnGrabaClick(Sender: TObject);
Var
   xmoneda, xWhere: String;
   xentero: integer;
Begin
   If DMCXC.cdsCanjes.RecordCount = 0 Then
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

   ActualizaSaldosMovCxP;
   DMCXC.cdsCobranza.Edit;
   If DMCXC.cdsCobranza.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      DMCXC.cdsCobranza.FieldByName('NCOMTOORI').Value := xxTotalLoc
   Else
   Begin
      DMCXC.cdsCobranza.FieldByName('NCOMTOORI').Value := xxTotalExt;
   End;
   DMCXC.cdsCobranza.FieldByName('NCOMTOLOC').Value := xxTotalLoc;
   DMCXC.cdsCobranza.FieldByName('NCOMTOEXT').Value := xxTotalExt;
   DMCXC.cdsCobranza.FieldByName('NCOUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCobranza.FieldByName('NCOFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCobranza.FieldByName('NCOHREG').AsDateTime := DMCXC.TimeS;

   DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString := 'I';

   DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');
   DMCXC.AplicaDatos(DMCXC.cdsCanjes, 'Canjes');
   DMCXC.AplicaDatos(DMCXC.cdsDPag, 'DPag');

   xFlagGr := False;

   EstadoDeForma(1, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');

   ShowMessage('Registro de Cobranza Grabado ');
End;

Procedure TFNotaCob.ActualizaSaldosMovCxP;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
Begin
   // Actualiza Saldo de MovCxP
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjeS.DisableControls;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      DMCXC.cdsMovCxC2.Setkey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').Value;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').Value;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').Value;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').Value;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
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
         End; //06/07/2001
         DMCXC.cdsMovCxC2.edit;
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            xPagLoc := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         DMCXC.cdsMovCxC2.Post;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2, 'MovCxC2');
   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;
End;

Function TFNotaCob.VerificaTotal: Boolean;
Var
   xTPagLoc, xTPagExt: Double;
   xTPagOri2, xTPagLoc2, xTPagExt2: Double;
   xRegAct: TBookMark;
Begin
   Result := False;

   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   xTPagLoc := 0;
   xTPagExt := 0;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsMovCxC2.Setkey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            If DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat
               > DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               DMCXC.cdsMovCxC2.Filtered := True;
               DMCXC.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat
               > DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               DMCXC.cdsMovCxC2.Filtered := True;
               DMCXC.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
      End;
      xTPagLoc := xTPagLoc + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
      xTPagExt := xTPagExt + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;

   If (xTPagLoc > 0) And (xTPagExt > 0) Then
      Result := True
   Else
      Result := False
End;

Procedure TFNotaCob.bbtnCalcClick(Sender: TObject);
Begin
   WinExec('calc.exe', 1); // Executa Aplicación
End;

Procedure TFNotaCob.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   xWhere := 'TMonId=''' + dblcTMon.Text + ''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
   edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   End;
End;

Procedure TFNotaCob.bbtnCancelaClick(Sender: TObject);
Begin
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsDPag.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;
   FNotaCob.OnKeyPress := FormKeyPress;
   EstadoDeForma(0, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');
End;

Procedure TFNotaCob.dtpFEmisExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If dblcClAux.Focused And (dtpFEmis.Date = 0) Then Exit;
   If dblcdClie.Focused And (dtpFEmis.Date = 0) Then Exit;
   If dblcdClieRuc.Focused And (dtpFEmis.Date = 0) Then Exit;

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

   DMCXC.cdsCobranza.Edit;
   DMCXC.cdsCobranza.FieldByName('NCOTCAMB').Value := FRound(xxTCambio, 7, 3);
End;

Procedure TFNotaCob.ActualizaPagadoMovCxP;
Begin
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsMovCxC2.Setkey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').Value;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').Value;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').Value;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').Value;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2.edit;
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
            If DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').Value <= 0 Then
               DMCXC.cdsMovCxC2.FieldByName('CCESTADO').Value := 'C';
         End
         Else
         Begin
            DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
            If DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').Value <= 0 Then
               DMCXC.cdsMovCxC2.FieldByName('CCESTADO').Value := 'C';
         End;
         DMCXC.cdsMovCxC2.FieldByName('CCTCAMPA').Value := FRound(DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2, 'MovCxC2');
   DMCXC.cdsMovCxC2.First;
   DMCXC.cdsMovCxC2.EnableControls;
   DMCXC.cdsCanjes.EnableControls;
End;

Procedure TFNotaCob.dbeTCLetExit(Sender: TObject);
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

Procedure TFNotaCob.bbtnBorraClick(Sender: TObject);
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      If xFlagGr Then
      Begin
         DMCXC.cdsCanjes.CancelUpdates;
         DMCXC.cdsMovCxC2.CancelUpdates;
         DMCXC.cdsDPag.CancelUpdates;
         DMCXC.cdsCobranza.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');

         InicializaClientDataSet;
         InicializaPies;
         InicializaDatos;
         EstadoDeForma(0, ' ', ' ');
      End
      Else
      Begin
         If Length(DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString) = 0 Then
         Begin
            DMCXC.cdsCobranza.CancelUpdates;
            InicializaClientDataSet;
            InicializaPies;
            InicializaDatos;
         End
         Else
         Begin
            DMCXC.cdsCobranza.CancelUpdates;
         End;
         EstadoDeForma(0, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');
      End;
   End
   Else
   Begin
      DMCXC.cdsCobranza.CancelUpdates;
      EstadoDeForma(0, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');
   End;
End;

Procedure TFNotaCob.bbtnRegresaClick(Sender: TObject);
Begin
   FNotaCob.OnKeyPress := FormKeyPress;
   EstadoDeForma(0, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');
End;

Procedure TFNotaCob.Z2bbtnNuevoClick(Sender: TObject);
Begin
   If MessageDlg('Ingresar Nuevo Canje' + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?  ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      DMCXC.cdsCobranza.CancelUpdates;

      If (DMCXC.wModo = 'A') And (xFlagGr) Then
      Begin
         DMCXC.cdsCobranza.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');

      End;
      InicializaClientDataSet;
      InicializaPies;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
   End;
End;

Procedure TFNotaCob.Z2bbtnAnulaClick(Sender: TObject);
Begin

   If MessageDlg('Anular Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   // Actualiza los Saldos de los Documentos Canjeados
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      If ExisteMovCxC(DMCXC.cdsCanjes.FieldByName('CIAID').Value, DMCXC.cdsCanjes.FieldByName('TDIARID').Value,
         DMCXC.cdsCanjes.FieldByName('CCANOMM').Value, DMCXC.cdsCanjes.FieldByName('CCNOREG').Value) Then
      Begin
         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('CCSALORI').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOORI').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').Value, 15, 2);
         DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').Value, 15, 2);
         DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').Value, 15, 2);
         DMCXC.cdsMovCxC2.Post;
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;

   DMCXC.cdsCobranza.Edit;
   DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString := 'A';
   DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2, 'MovCxC2');

   EstadoDeForma(1, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');

   ShowMessage('Cobranza Anulada');
End;

Procedure TFNotaCob.Z2bbtnAceptaClick(Sender: TObject);
Begin
   If DMCXC.cdsCanjes.RecordCount = 0 Then Raise exception.Create(' Error :  Falta registrar Documentos a Cobrar');
   If Not VerificaTotal Then Raise Exception.Create('Total a Cobrar Tiene que ser Mayor a Cero');

   If MessageDlg('Aceptar Cobranza' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DMCXC.cdsCobranza.Edit;
   DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString := 'P';
   DMCXC.cdsCobranza.Post;
   DMCXC.AplicaDatos(DMCXC.cdsCobranza, 'Cobranza');

   EstadoDeForma(1, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');

   ShowMessage(' Cobranza Aceptada ');
End;

Procedure TFNotaCob.dblcCiaExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

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
      xWhere := 'CIAID=''' + dblcCia.Text + '''';
      edtCanje.Text := DMCXC.BuscaUltTGE('dspTGE', 'CXC303', 'NotaCob', xWhere);
   End;
End;

Procedure TFNotaCob.dblcdClieRucExit(Sender: TObject);
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
      dblcdClie.Text := DMCXC.cdsQry2.FieldByName('CLIEID').AsString;
      dblcClAux.Text := DMCXC.cdsQry2.FieldByName('CLAUXID').Asstring;
   End
   Else
   Begin
      edtClie.Text := '';
      dblcdClie.SetFocus;
   End;
End;

Procedure TFNotaCob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFNotaCob.FormCreate(Sender: TObject);
Begin
{   If DMCXC.wAdmin='G' then begin
      DMCXC.wObjetoDesPr := Caption;
      FPrincipal.ListaComponentes(Self);
   end;}
//   FPrincipal.PropGrid( [dbgPendientes, dbgDocCanje] );
   CargaDataSource;
End;

Procedure TFNotaCob.dbgDocCanjeDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotaCob.dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
Begin
   If Target = dbgPendientes Then
   Begin
      DMCXC.cdsMovCxC2.Filtered := False;
      DMCXC.cdsMovCxC2.SetKey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').Value;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').Value;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').Value;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').Value;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
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
         DMCXC.cdsCanjes.Delete;
      End;
      DMCXC.cdsMovCxC2.Filtered := True;
      dbgPendientes.RefreshDisplay;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFNotaCob.dbgDocCanjeMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFNotaCob.dbgPendientesDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFNotaCob.dbgPendientesEndDrag2(Sender, Target: TObject; X,
   Y: Integer);
Var
   i: Integer;
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
//** 20/12/2000 - pjsv - para que solo avise, Esto es Temporal, hasta que
// se habilite la opcion de cancelación de N. de cobranza en caja
//                Exit;
//**
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
//** 20/12/2000 - pjsv - para que solo avise, Esto es Temporal, hasta que
// se habilite la opcion de cancelación de N. de cobranza en caja
//                Exit;
//**
            End;
         End;
      End; //FOR

      DMCXC.cdsCanjes.SetKey;
      DMCXC.cdsCanjes.FieldByName('CIAID').Value := DMCXC.cdsMovCxC2.FieldByName('CIAID').Value;
      DMCXC.cdsCanjes.FieldByName('CLIEID').Value := DMCXC.cdsMovCxC2.FieldByName('CLIEID').Value;
      DMCXC.cdsCanjes.FieldByName('DOCID').Value := DMCXC.cdsMovCxC2.FieldByName('DOCID').Value;
      DMCXC.cdsCanjes.FieldByName('CCSERIE').Value := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').Value;
      DMCXC.cdsCanjes.FieldByName('CCNODOC').Value := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').Value;
      If Not DMCXC.cdsCanjes.GotoKey Then
      Begin
         DMCXC.cdsCanjes.Insert;
         DMCXC.cdsCanjes.FieldByName('CIAID').Value := DMCXC.cdsMovCxC2.FieldByName('CIAID').Value;
         DMCXC.cdsCanjes.FieldByName('TDIARID').Value := DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value;
         DMCXC.cdsCanjes.FieldByName('CCNOREG').Value := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value;
         DMCXC.cdsCanjes.FieldByName('CCAAAA').Value := DMCXC.cdsMovCxC2.FieldByName('CCAAAA').Value;
         DMCXC.cdsCanjes.FieldByName('CCANOMM').Value := DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value;
         DMCXC.cdsCanjes.FieldByName('CLIEID').Value := DMCXC.cdsMovCxC2.FieldByName('CLIEID').Value;
         DMCXC.cdsCanjes.FieldByName('CLIERUC').Value := DMCXC.cdsMovCxC2.FieldByName('CLIERUC').Value;
         DMCXC.cdsCanjes.FieldByName('DOCID').Value := DMCXC.cdsMovCxC2.FieldByName('DOCID').Value;
         DMCXC.cdsCanjes.FieldByName('CCSERIE').Value := DMCXC.cdsMovCxC2.FieldByName('CCSERIE').Value;
         DMCXC.cdsCanjes.FieldByName('CCNODOC').Value := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').Value;
         DMCXC.cdsCanjes.FieldByName('TCANJEID').Value := 'CO';
         DMCXC.cdsCanjes.FieldByName('CCCANJE').Value := edtCanje.Text;
         DMCXC.cdsCanjes.FieldByName('CCFCANJE').Value := dtpFEmis.Date;
         DMCXC.cdsCanjes.FieldByName('TMONID').Value := DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString;
         DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value := strtofloat(dbeTCLet.Text);
         DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').Value := DMCXC.cdsMovCxC2.FieldByName('CCTCAMPR').Value;
         If dblcTMon.Text = DMCXC.wTMonLoc Then
         Begin
            If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            Begin
               DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat, 15, 2);
               DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
               DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat / DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat, 15, 2);
            End
            Else
            Begin
               DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound((DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat) * DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat, 15, 2);
               DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
               DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat;
            End;
         End
         Else
         Begin
            If DMCXC.cdsMovCxC2.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
            Begin
               DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat, 15, 2);
               DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
               DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat * DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat, 15, 2);
            End
            Else
            Begin
               DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat := FRound((DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat) / DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat, 15, 2);
               DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat;
               DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALORI').AsFloat;
            End;
         End;
         DMCXC.xFlagCal := False;
         DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALLOC').AsFloat;
         DMCXC.xFlagCal := False;
         DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsCanjes.FieldByName('CCSALEXT').AsFloat;

         DMCXC.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsCanjes.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
         DMCXC.cdsCanjes.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
         DMCXC.cdsCanjes.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
         DMCXC.cdsCanjes.FieldByName('CCMM').Value := DMCXC.cdsMovCxC2.FieldByName('CCMM').Value;
         DMCXC.cdsCanjes.FieldByName('CCDD').Value := DMCXC.cdsMovCxC2.FieldByName('CCDD').Value;
         DMCXC.cdsCanjes.FieldByName('CCTRI').Value := DMCXC.cdsMovCxC2.FieldByName('CCTRI').Value;
         DMCXC.cdsCanjes.FieldByName('CCSEM').Value := DMCXC.cdsMovCxC2.FieldByName('CCSEM').Value;
         DMCXC.cdsCanjes.FieldByName('CCSS').Value := DMCXC.cdsMovCxC2.FieldByName('CCSS').Value;
         DMCXC.cdsCanjes.FieldByName('CCAATRI').Value := DMCXC.cdsMovCxC2.FieldByName('CCAATRI').Value;
         DMCXC.cdsCanjes.FieldByName('CCAASEM').Value := DMCXC.cdsMovCxC2.FieldByName('CCAASEM').Value;
         DMCXC.cdsCanjes.FieldByName('CCAASS').Value := DMCXC.cdsMovCxC2.FieldByName('CCAASS').Value;
         DMCXC.cdsCanjes.FieldByName('CPTOTOT').Value := DMCXC.cdsMovCxC2.FieldByName('CCPTOTOT').Value;
         DMCXC.cdsCanjes.FieldByName('CTATOTAL').Value := DMCXC.cdsMovCxC2.FieldByName('CTATOTAL').Value;
         DMCXC.cdsCanjes.Post;
         DMCXC.cdsMovCxC2.Edit;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
         DMCXC.cdsMovCxC2.Post;
      End;
      DMCXC.cdsMovCxC2.EnableControls;
      bbtnSumatClick(Sender);
   End;
End;

Procedure TFNotaCob.dbgPendientesMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgPendientes.BeginDrag(False);
End;

Procedure TFNotaCob.InsertaCanjes(xxCds: TwwClientDataSet);
Begin
   DMCXC.cdsCanjes.Insert;
   DMCXC.cdsCanjes.FieldByName('CIAID').Value := xxCds.FieldByName('CIAID').AsString;
   DMCXC.cdsCanjes.FieldByName('TDIARID').Value := xxCds.FieldByName('TDIARID').AsString;
   DMCXC.cdsCanjes.FieldByName('CCNOREG').Value := xxCds.FieldByName('CCNOREG').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAAAA').Value := xxCds.FieldByName('CCAAAA').AsString;
   DMCXC.cdsCanjes.FieldByName('CCANOMM').Value := xxCds.FieldByName('CCANOMES').AsString;
   DMCXC.cdsCanjes.FieldByName('CLIEID').Value := xxCds.FieldByName('CLIEID').AsString;
   DMCXC.cdsCanjes.FieldByName('CLIERUC').Value := xxCds.FieldByName('CLIERUC').AsString;
   DMCXC.cdsCanjes.FieldByName('DOCID').Value := xxCds.FieldByName('DOCID').AsString;
   DMCXC.cdsCanjes.FieldByName('CCSERIE').Value := xxCds.FieldByName('CCSERIE').AsString;
   DMCXC.cdsCanjes.FieldByName('CCNODOC').Value := xxCds.FieldByName('CCNODOC').AsString;
   DMCXC.cdsCanjes.FieldByName('TCANJEID').Value := 'CO';
   DMCXC.cdsCanjes.FieldByName('CCCANJE').Value := edtCanje.Text;
   DMCXC.cdsCanjes.FieldByName('CCFCANJE').Value := xxCds.FieldByName('CCFCMPRB').AsDateTime;
   DMCXC.cdsCanjes.FieldByName('TMONID').Value := xxCds.FieldByName('TMONID').AsString;
   DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').Value := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCTCAMDOC').Value := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCSALLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCSALEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.xFlagCal := False;
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.xFlagCal := False;
   DMCXC.cdsCanjes.FieldByName('CCMTOEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DMCXC.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
   DMCXC.cdsCanjes.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsCanjes.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCanjes.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsCanjes.FieldByName('CCMM').Value := xxCds.FieldByName('CCMM').AsString;
   DMCXC.cdsCanjes.FieldByName('CCDD').Value := xxCds.FieldByName('CCDD').AsString;
   DMCXC.cdsCanjes.FieldByName('CCTRI').Value := xxCds.FieldByName('CCTRI').AsString;
   DMCXC.cdsCanjes.FieldByName('CCSEM').Value := xxCds.FieldByName('CCSEM').AsString;
   DMCXC.cdsCanjes.FieldByName('CCSS').Value := xxCds.FieldByName('CCSS').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAATRI').Value := xxCds.FieldByName('CCAATRI').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAASEM').Value := xxCds.FieldByName('CCAASEM').AsString;
   DMCXC.cdsCanjes.FieldByName('CCAASS').Value := xxCds.FieldByName('CCAASS').AsString;
   DMCXC.cdsCanjes.FieldByName('CPTOTOT').Value := xxCds.FieldByName('CCPTOTOT').AsString;
   DMCXC.cdsCanjes.FieldByName('CTATOTAL').Value := xxCds.FieldByName('CTATOTAL').AsString;
   DMCXC.cdsCanjes.Post;
End;

Procedure TFNotaCob.ppvTMonCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DMCXC.cdsCanjes.FieldByName('TMONID').AsString + '''';
   Value := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFNotaCob.ppVariable2Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DMCXC.cdsCanjes.FieldByName('TMONID').AsString + '''';
   Value := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFNotaCob.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFNotaCob.Z2bbtnImprimeClick(Sender: TObject);
Var
   sMes, sMoneda: String;
   a, m, d: word;
Begin
   If DMCXC.wmodo = 'M' Then

      sMoneda := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text);

   DecodeDate(dtpFEmis.Date, a, m, d);
   If m = 1 Then smes := 'ENERO';
   If m = 2 Then smes := 'FEBRERO';
   If m = 3 Then smes := 'MARZO';
   If m = 4 Then smes := 'ABRIL';
   If m = 5 Then smes := 'MAYO';
   If m = 6 Then smes := 'JUNIO';
   If m = 7 Then smes := 'JULIO';
   If m = 8 Then smes := 'AGOSTO';
   If m = 9 Then smes := 'SETIEMBRE';
   If m = 10 Then smes := 'OCTUBRE';
   If m = 11 Then smes := 'NOVIEMBRE';
   If m = 12 Then smes := 'DICIEMBRE';
   //
   pplNo.Caption := edtCanje.text;
   ppLbDescrip.Caption := edtClie.text;
   pplCia.caption := edtCia.text;
   pplCaja.Caption := 'Cuentas por Cobrar';
   ppLbDescrip1.caption := 'La cantidad de ' + Trim(strNum(DMCXC.cdsCobranza.FieldByName('NCOMTOORI').AsFloat)) + ' ' + edtTMon.Text;
   pplbFecha.Caption := StrZero(IntToStr(d), 2) + ' de ' + sMes + ' del ' + StrZero(IntToStr(a), 4);
   pplbValor.caption := sMoneda + FloatToStrF(DMCXC.cdsCobranza.FieldByName('NCOMTOORI').AsFloat, ffFixed, 15, 2);

   pprNCob.print;
   pprNCob.Stop;

//   pprCobra.Print;
End;

Procedure TFNotaCob.dblcdClieEnter(Sender: TObject);
Begin
   DMCXC.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFNotaCob.dblcdClieRucEnter(Sender: TObject);
Begin
   DMCXC.cdsClie.IndexFieldNames := 'ClieDes';
End;

Procedure TFNotaCob.ppvTituloCalc(Sender: TObject; Var Value: Variant);
Begin
   Value := 'Cobranza No. ' + edtCanje.Text;
End;

Procedure TFNotaCob.ppvCiaCalc(Sender: TObject; Var Value: Variant);
Begin
   Value := edtCia.Text;
End;

Procedure TFNotaCob.ppvNombreCalc(Sender: TObject; Var Value: Variant);
Begin
   Value := edtClie.Text;
End;

Procedure TFNotaCob.ppvCptoCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'CptoId=' + '''' + DMCXC.cdsCanjes.FieldByName('CPTOID').AsString + '''';
   Value := DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOABR');
End;

Procedure TFNotaCob.dbgbtnRegClick(Sender: TObject);
Begin
   pnlRegistro.Visible := True;
   dblcFPago.Enabled := True;
   dblcBanco.Enabled := False;
   dbeCheque.Enabled := False;
   pnlRegistro.SetFocus;
   InsertaPago;
End;

Procedure TFNotaCob.InsertaPago;
Begin
   DMCXC.cdsDPag.Insert;
   DMCXC.cdsDPag.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsDPag.FieldByName('NOTACOB').AsString := edtCanje.Text;
   DMCXC.cdsDPag.FieldByName('CLAUXID').AsString := DMCXC.cdsCobranza.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDPag.FieldByName('CLIEID').AsString := DMCXC.cdsCobranza.FieldByName('CLIEID').AsString;
   DMCXC.cdsDPag.FieldByName('CLIERUC').AsString := DMCXC.cdsCobranza.FieldByName('CLIERUC').AsString;
   xModoL := 'A';
End;

Procedure TFNotaCob.bbtnRegCancClick(Sender: TObject);
Begin
   If xModoL = 'A' Then
      DMCXC.cdsDPag.Delete
   Else
   Begin
      DMCXC.cdsDPag.Cancel;
   End;
   pnlRegistro.Visible := False;

   bbtnSumatClick(Sender);
End;

Procedure TFNotaCob.bbtnRegOkClick(Sender: TObject);
Begin
   If Length(dblcFPago.Text) = 0 Then
   Begin
      dblcFpago.SetFocus;
      Raise Exception.Create('Error :  Falta Forma de Pago');
   End;
   If Length(dblcMon.Text) = 0 Then
   Begin
      dblcMon.SetFocus;
      Raise Exception.Create('Error :  Falta Tipo de Moneda');
   End;
   If DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat <= 0 Then
   Begin
      dbeImp.SetFocus;
      Raise Exception.Create('Error :  Falta Registar Monto');
   End;

   DMCXC.cdsDPag.Edit;
   DMCXC.cdsDPag.FieldByName('NCOTCAMB').AsFloat := DMCXC.cdsCobranza.FieldByName('NCOTCAMB').AsFloat;
   If DMCXC.cdsDPag.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDPag.FieldByName('NCOMTOLOC').AsFloat := FRound(DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat, 15, 2);
      DMCXC.cdsDPag.FieldByName('NCOMTOEXT').AsFloat := FRound(DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat / DMCXC.cdsDPag.FieldByName('NCOTCAMB').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsDPag.FieldByName('NCOMTOEXT').AsFloat := FRound(DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat, 15, 2);
      DMCXC.cdsDPag.FieldByName('NCOMTOLOC').AsFloat := FRound(DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat * DMCXC.cdsDPag.FieldByName('NCOTCAMB').AsFloat, 15, 2);
   End;

   DMCXC.cdsDPag.FieldByName('NCOANO').AsString := DMCXC.cdsCobranza.FieldByName('NCOANO').AsString;
   DMCXC.cdsDPag.FieldByName('NCOMM').AsString := DMCXC.cdsCobranza.FieldByName('NCOMM').AsString;
   DMCXC.cdsDPag.FieldByName('NCODD').AsString := DMCXC.cdsCobranza.FieldByName('NCODD').AsString;
   DMCXC.cdsDPag.FieldByName('NCOTRI').AsString := DMCXC.cdsCobranza.FieldByName('NCOTRI').AsString;
   DMCXC.cdsDPag.FieldByName('NCOSEM').AsString := DMCXC.cdsCobranza.FieldByName('NCOSEM').AsString;
   DMCXC.cdsDPag.FieldByName('NCOSS').AsString := DMCXC.cdsCobranza.FieldByName('NCOSS').AsString;
   DMCXC.cdsDPag.FieldByName('NCOANOMM').AsString := DMCXC.cdsCobranza.FieldByName('NCOANOMM').AsString;
   DMCXC.cdsDPag.FieldByName('NCOAATRI').AsString := DMCXC.cdsCobranza.FieldByName('NCOAATRI').AsString;
   DMCXC.cdsDPag.FieldByName('NCOAASEM').AsString := DMCXC.cdsCobranza.FieldByName('NCOAASEM').AsString;
   DMCXC.cdsDPag.FieldByName('NCOAASS').AsString := DMCXC.cdsCobranza.FieldByName('NCOAASS').AsString;
   DMCXC.cdsDPag.Post;

   If xModoL = 'A' Then
      InsertaPago
   Else
   Begin
      pnlRegistro.Visible := False;
   End;
   bbtnSumatClick(Sender);
End;

Procedure TFNotaCob.dblcMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnRegCanc.Focused Then Exit;

   xWhere := 'TMonId=''' + dblcMon.Text + '''';
   dbeMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES', xWhere, 'TMONDES');

   If length(dbeMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcMon.SetFocus;
   End;
End;

Procedure TFNotaCob.dblcFPagoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnRegCanc.Focused Then Exit;

   xWhere := 'FPagoId=''' + dblcFPago.Text + ''' and FPagoMod=''CAJA''';
   dbeFPago.Text := DMCXC.BuscaQry('dspTGE', 'TGE112', '*', xWhere, 'FPAGODES');
   If length(dbeFPago.Text) = 0 Then
   Begin
      dblcFPago.SetFocus;
      Raise Exception.Create('Falta Tipo de Pago');
   End;

   DMCXC.cdsDPag.FieldByName('FPAGODES').AsString := dbeFPago.Text;

   If DMCXC.cdsQry.FieldByName('FPAGOBCO').AsString = 'S' Then
   Begin
      dblcBanco.Enabled := True;
      dbeCheque.Enabled := True;
   End
   Else
   Begin
      dblcBanco.Enabled := False;
      dbeCheque.Enabled := False;
   End;
End;

Procedure TFNotaCob.dblcBancoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnRegCanc.Focused Then Exit;

   xWhere := 'BancoId=''' + dblcBanco.Text + '''';
   dbeBanco.Text := DMCXC.BuscaQry('dspTGE', 'TGE105', 'BANCONOM', xWhere, 'BANCONOM');

   If length(dbeBanco.Text) = 0 Then
   Begin
      dblcBanco.SetFocus;
      Raise Exception.Create('Falta Banco');
   End;

   DMCXC.cdsDPag.FieldByName('BANCODES').AsString := dbeBanco.Text;

End;

Procedure TFNotaCob.ppvTMCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=''' + DMCXC.cdsDPag.FieldByName('TMONID').AsString + '''';
   Value := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR', xWhere, 'TMONABR');
End;

Procedure TFNotaCob.ppvDocCalc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'DocId=''' + DMCXC.cdsCanjes.FieldByName('DOCID').AsString + ''' and DocMod=''CXC''';
   Value := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCABR', xWhere, 'DOCABR');
End;

Procedure TFNotaCob.dbgPagoDblClick(Sender: TObject);
Begin
   If dbgbtnReg.Enabled Then
   Begin
      xModoL := 'M';
      DMCXC.cdsDPag.Edit;
      pnlRegistro.Visible := True;
      dblcFPago.Enabled := False;
      dblcBanco.Enabled := False;
      dbeCheque.Enabled := False;
      dblcMon.SetFocus;
   End;
End;

Procedure TFNotaCob.dbgPagoKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If Not dbgbtnReg.Enabled Then Exit;

   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsDpag.Delete;
      End;
   End;
End;

Procedure TFNotaCob.dbeImpExit(Sender: TObject);
Begin
   If bbtnRegCanc.Focused Then Exit;

   If DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat <= 0 Then
   Begin
      DMCXC.cdsDPag.Edit;
      DMCXC.cdsDPag.FieldByName('NCOMTOORI').AsFloat := 0;
      Raise Exception.Create('Importe debe Ser Mayor a Cero')
   End
End;

Procedure TFNotaCob.dblcClAuxExit(Sender: TObject);
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

   If DMCXC.cdsClie.RecordCount = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('No Existen Clientes Para Clase de Auxiliar');
   End;

   If Length(dblcdClie.Text) > 0 Then
   Begin
      xWhere := 'ClAuxId=''' + dblcClAux.Text + ''' and ClieId=''' + dblcdClie.Text + '''';
      DMCXC.cdsCobranza.Edit;
      If length(DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,CLIERUC,CLIEDES', xWhere, 'CLIEDES')) = 0 Then
      Begin
         DMCXC.cdsCobranza.FieldByName('CLIEID').AsString := '';
         DMCXC.cdsCobranza.FieldByName('CLIERUC').AsString := '';
         edtClie.Text := '';
         dblcdClie.SetFocus;
      End
      Else
      Begin
         DMCXC.cdsCobranza.FieldByName('CLIEID').AsString := DMCXC.cdsQry.FieldByName('CLIEID').AsString;
         DMCXC.cdsCobranza.FieldByName('CLIERUC').AsString := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
         edtClie.Text := DMCXC.cdsQry.FieldByName('CLIEDES').AsString;
         ;
      End
   End
End;

Procedure TFNotaCob.ppHeaderBand1BeforeGenerate(Sender: TObject);
Var
   xsimbolo, xMoneda, xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DMCXC.cdsCanjes.FieldByName('TMONID').AsString + '''';
   xmoneda := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMON_LOC');
   xsimbolo := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMONDES');
   If xmoneda = 'L' Then
   Begin
      ppDBText7.DataField := 'NCOMTOLOC';
      pplblLetras.Text := 'LA CANTIDAD DE : ' + Trim(strNum(DMCXC.cdsCobranza.FieldByName('NCOMTOLOC').AsFloat) + '   ' + xsimbolo);
   End
   Else
   Begin
      ppDBText7.DataField := 'NCOMTOEXT';
      pplblLetras.Text := 'LA CANTIDAD DE : ' + Trim(strNum(DMCXC.cdsCobranza.FieldByName('NCOMTOEXT').AsFloat) + '   ' + xsimbolo);
   End;
End;

Procedure TFNotaCob.ppDBText14Print(Sender: TObject);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DMCXC.cdsCanjes.FieldByName('TMONID').AsString + '''';
   ppDBText14.text := DMCXC.BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFNotaCob.dbeLocExit(Sender: TObject);
Begin
   DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat /
      DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
   bbtnSumatClick(Sender);
End;

Procedure TFNotaCob.dbeExtExit(Sender: TObject);
Begin
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat *
      DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
   bbtnSumatClick(Sender);
End;

Procedure TFNotaCob.FormShow(Sender: TObject);
Begin
   xCrea := True;
   If DMCXC.wModo = 'A' Then
   Begin
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
   End
   Else
   Begin
      xFlagGr := False;
      dblcCia.Text := DMCXC.cdsCobranza.FieldByName('CIAID').AsString;
      edtCanje.Text := DMCXC.cdsCobranza.FieldByName('NOTACOB').AsString;

      FiltraCanje(DMCXC.wModo);

      edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
      edtClie.text := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'CLIERUC', dblcdClieRuc.Text);
      edtTMon.Text := DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMonID', dblcTMon.Text);

      If DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString = 'I' Then
         EstadoDeForma(0, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ')
      Else
         EstadoDeForma(1, DMCXC.cdsCobranza.FieldByName('NCOESTADO').AsString, ' ');
      bbtnSumatClick(Sender);
   End;
   PageControl1.ActivePage := TabSheet1;
   xCrea := False;
End;

Procedure TFNotaCob.CargaDataSource;
Begin
   dtpFEmis.DataSource := DMCXC.dsCobranza;
   dblcTMon.DataSource := DMCXC.dsCobranza;
   dbeTCLet.DataSource := DMCXC.dsCobranza;
   dblcdClie.DataSource := DMCXC.dsCobranza;
   dblcdClieRuc.DataSource := DMCXC.dsCobranza;
   dblcClAux.DataSource := DMCXC.dsCobranza;
   dbgPendientes.DataSource := DMCXC.dsMovCxC2;
   dbgDocCanje.DataSource := DMCXC.dsCanjes;
   dbgPago.DataSource := DMCXC.dsDPag;
   dbeImp.DataSource := DMCXC.dsDPag;
   dbeFPago.DataSource := DMCXC.dsDPag;
   dbeCheque.DataSource := DMCXC.dsDPag;
   dblcFPago.DataSource := DMCXC.dsDPag;
   dblcBanco.DataSource := DMCXC.dsDPag;
   dblcMon.DataSource := DMCXC.dsDPag;
   dbeBanco.DataSource := DMCXC.dsDPag;
   dbeMon.DataSource := DMCXC.dsLetras;
   ppdbCob.DataSource := DMCXC.dsCobranza;
   ppdbCanje.DataSource := DMCXC.dsCanjes;
   ppdbDPag.DataSource := DMCXC.dsDPag;
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcCia.LookupTable := DMCXC.cdsCia;
   dblcFPago.LookupTable := DMCXC.cdsFPago;
   dblcBanco.LookupTable := DMCXC.cdsBanco;
   dblcMon.LookupTable := DMCXC.cdsTMon;
End;

End.

