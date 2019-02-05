Unit CxC404;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, ComCtrls, StdCtrls, ExtCtrls, Wwdbdlg,
   wwdbdatetimepicker, Buttons, Mask, wwdbedit, wwdblook, DB, CXCUtil;

Type
   TFAplicaNC = Class(TForm)
      pnlCabecera: TPanel;
      pnlCab1: TPanel;
      lblCia: TLabel;
      lblNoDoc: TLabel;
      Label3: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      bbtnAcepta: TBitBtn;
      edtSerie: TwwDBLookupCombo;
      pnlCab2: TPanel;
      lblTMon: TLabel;
      lblTCam: TLabel;
      lblFEmis: TLabel;
      Label8: TLabel;
      lblprov: TLabel;
      lblRuc: TLabel;
      lblProvNom: TLabel;
      lblComprob: TLabel;
      lblFComprob: TLabel;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      dbeTCambio: TwwDBEdit;
      bbtnBorra: TBitBtn;
      bbtnOK: TBitBtn;
      dtpFEmis: TwwDBDateTimePicker;
      dblcClAux: TwwDBLookupCombo;
      dblcdClie: TwwDBLookupComboDlg;
      dblcdClieRuc: TwwDBLookupComboDlg;
      edtClie: TEdit;
      dbeNoReg: TwwDBEdit;
      dtpFComp: TwwDBDateTimePicker;
      pnlDetalle: TPanel;
      pc1: TPageControl;
      ts1: TTabSheet;
      pnlPendientes: TPanel;
      Label1: TLabel;
      dbgPendientes: TwwDBGrid;
      pnlDocCanje: TPanel;
      Label2: TLabel;
      dbgDocCanje: TwwDBGrid;
      pnlPie: TPanel;
      Z2bbtnGraba: TBitBtn;
      bbtnCancela: TBitBtn;
      bbtnCalc: TBitBtn;
      Z2bbtnContab: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnGen302: TBitBtn;
      bbtnRegresa: TBitBtn;
      pnlEstado: TPanel;
      lblAcepta: TLabel;
      lblContab: TLabel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      Label12: TLabel;
      z2bbtnEmiteDoc: TBitBtn;
      dbeMonto: TwwDBEdit;
      Label4: TLabel;
      pnlActuali: TPanel;
      lblActuali: TLabel;
      dbeNoDoc: TwwDBEdit;
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure Z2bbtnImprimeClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure bbtnOKClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure ActualizaSaldosMovCxC;
      Procedure InicializaCds;
      Procedure InicializaVars;
      Procedure InsertaRegistro;
      Procedure GeneraRegistro;
   Public
    { Public declarations }
   End;

Var
   FAplicaNC: TFAplicaNC;
   xRegAct, xRegAct2, xRegMov: TBookMark;
   wRegGrab, wCuadra, wNuevo: Boolean;
   wSimbMn, wTDoc, wTDiar, wCje, wEstadTem: String;
   wTDev, wTDev2, wIgv: Double; // Cantidad IGV para restarle al saldo y tener MtoMax de Ingreso
   xTAutoNum, xTAno, xTMes: String;
   xCrea: Boolean;
   xFlGrid: Boolean;
   xAAMM: String;

Implementation

{$R *.DFM}

Uses CxCDM, oaCC2000;

Procedure TFAplicaNC.bbtnRegresaClick(Sender: TObject);
Begin
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
End;

Procedure TFAplicaNC.bbtnCancelaClick(Sender: TObject);
Begin
   DMCXC.cdsDetCxC.CancelUpdates;
   DMCXC.cdsMovCxC2.CancelUpdates;
   DMCXC.cdsMovCxC.CancelUpdates;
   DMCXC.cdsCanjes.CancelUpdates;

   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

End;

Procedure TFAplicaNC.Z2bbtnGrabaClick(Sender: TObject);
Begin
   If DMCXC.cdsCanjes.RecordCount <= 0 Then Raise exception.create('No hay Registros para el Detalle!');

// calcula sumatorias del detalle

   ActualizaSaldosMovCxC;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'I';
   DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').Value := 0;
   DMCXC.cdsMovCxC.FieldByName('CCIGV').Value := 0;
   DMCXC.cdsMovCxC.FieldByName('CCISC').Value := 0; // En Nota de Credito??
   DMCXC.cdsMovCxC.FieldByName('CCMTOORI').Value := 0;
   DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').Value := 0;
   DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').Value := 0;
   DMCXC.cdsMovCxC.FieldByName('CCSALLOC').Value := 0; // necesario?
   DMCXC.cdsMovCxC.FieldByName('CCSALEXT').Value := 0; // necesario?
   DMCXC.cdsmovcxc.FieldByName('CLIEDES').AsString
      := edtClie.Text;

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
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.Post;

   DMCXC.cdsMovCxC.DataRequest('Select * from CXC301');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC2, 'MovCxC2');
   DMCXC.AplicaDatos(DMCXC.cdsCanjes, 'Canjes');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Grabado con Exito... Pulse Intro para continuar');

   wRegGrab := True;

End;

Procedure TFAplicaNC.Z2bbtnAceptaClick(Sender: TObject);
Begin
   If wTDev2 = 0 Then Raise exception.Create('Información Incompleta en Cancelación');
// If rgDoc.itemindex = 0 then

{   if ( DMCXC.cdsMovCxC.Modified ) or ( DMCXC.cdsMovCxC.ChangeCount>0 ) then
      raise exception.Create(' Debe Grabar primero ');}//borrar

   If DMCXC.cdsDetCxC.RecordCount = 0 Then Raise exception.Create('Ingrese Detalle Contable');

//   if not VerificaTotal then raise exception.Create('TOTAL Nota de Crédito no cuadra con Total de Documentos seleccionados');

//   if not CuadraDH then raise exception.Create('Error:  Asiento No Cuadra');

   If MessageDlg('Aplicar Nota de Credito' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

 //**  20/12/2000 - pjsv
   Try
      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'P' Then //Docs Pendientes
      Begin
         DMCXC.cdsDetCxC.DisableControls;
         screen.Cursor := crHOURGLASS;
         pnlActuali.Visible := true;
         pnlActuali.Refresh;
     //**
         DMCXC.cdsMovCxC.Edit;
         DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsMovCxC.Post;

         DMCXC.cdsMovCxC2.Filtered := False;
         DMCXC.cdsCanjes.DisableControls;
         DMCXC.cdsCanjes.First;
     // Actualiza Montos Pagados y Saldos en CXC301 (Docs. a los k aplica la NC)
         While Not DMCXC.cdsCanjes.Eof Do
         Begin
            DMCXC.cdsMovCxC2.Setkey;
            DMCXC.cdsMovCxC2.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
            DMCXC.cdsMovCxC2.FieldByName('TDIARID').AsString := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
            DMCXC.cdsMovCxC2.FieldByName('CCANOMES').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
            DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;

            If DMCXC.cdsMovCxC2.GotoKey Then
            Begin
               DMCXC.cdsMovCxC2.Edit;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGORI').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
               If dblcTMon.Text = DMCXC.wTMonLoc Then
               Begin
                  DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / strtofloat(dbeTCambio.Text);
               End
               Else
               Begin
                  DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
                  DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * strtofloat(dbeTCambio.Text);
               End;
            End
            Else
            Begin
               DMCXC.cdsMovCxC2.Filtered := True;
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error inesperado al grabar registro');
            End;
            DMCXC.cdsCanjes.Next;
         End;
         DMCXC.cdsCanjes.EnableControls;
         DMCXC.cdsMovCxC2.First;
         While Not DMCXC.cdsMovCxC2.Eof Do
         Begin
            DMCXC.cdsMovCxC2.Edit;
            DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').AsString := ' ';
            DMCXC.cdsMovCxC2.Post;
            DMCXC.cdsMovCxC2.ApplyUpdates(0);
            DMCXC.cdsMovCxC2.Next;
         End;

         DMCXC.cdsMovCxC2.Filtered := True;

//     GrabaDetCanje;

         DMCXC.SaldosAuxiliar(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString,
            DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').Asstring,
            '-', DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').Asfloat, DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);

         DMCXC.cdsCanjes.EnableControls;

         DMCXC.cdsMovCxC.DataRequest('Select * from CXC301');
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
      End;

      If DMCXC.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString = 'C' Then
      Begin //Docs Pendientes
         DMCXC.cdsMovCxC.Edit;
         DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'P';
         DMCXC.cdsMovCxC.Post;
{     if dblcTMon.Text = DMCXC.wTMonLoc then begin
           DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat:=DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat-DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat;
           DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat:=DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat/strtofloat(dbeTCambio.Text);
     end
     else begin
               DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat:=DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat-DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat;
               DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat:=DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat*strtofloat(dbeTCambio.Text);
          end;  }
      End;
      EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

//   if wActuaPresu then CalculoNivel;

      ShowMessage('Registro Aceptado... Pulse Intro para continuar');
   Finally
      DMCXC.cdsDetCxC.EnableControls;
      pnlActuali.Visible := false;
      screen.Cursor := crDEFAULT;
   End;

End;

Procedure TFAplicaNC.Z2bbtnAnulaClick(Sender: TObject);
Begin
   If (DMCXC.cdsMovCxC.Modified) Or (DMCXC.cdsMovCxC.ChangeCount > 0) Then
      Raise exception.Create(' Debe Grabar primero ');

   If MessageDlg('Anular Nota de Credito' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'A';
   DMCXC.cdsMovCxC.Post;
   DMCXC.cdsMovCxC.DataRequest('Select * from CXC301');
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

Procedure TFAplicaNC.Z2bbtnContabClick(Sender: TObject);
Begin
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
//      DMCXC.cdsMovCxCCCCmprb.AsString:=dbeNoReg.text;
//wmc 0311
      DMCXC.cdsDetCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
      DMCXC.cdsDetCxC.Next;
   End;
   DMCXC.cdsDetCxC.ReadOnly := True;
   DMCXC.cdsDetCxC.EnableControls;

   DMCXC.GeneraContabilidad(dblcCia.Text, wTDiar, xAAMM, dbeNoReg.text, Self);

   DMCXC.cdsMovCxC.DataRequest('Select * from CXC301');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Contabilizado... Pulse Intro para continuar');
End;

Procedure TFAplicaNC.Z2bbtnImprimeClick(Sender: TObject);
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
      NoDoc := dbeNoDoc.Text;
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

Procedure TFAplicaNC.Z2bbtnNuevoClick(Sender: TObject);
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

Procedure TFAplicaNC.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
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
            Z2bbtnAnula.Enabled := True;
            Z2bbtnNuevo.Enabled := True;

            lblActivo.Visible := True;
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;

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
      z2bbtnEmiteDoc.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
End;

Procedure TFAplicaNC.ActualizaSaldosMovCxC;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
Begin
   // Actualiza Saldo de MovCxP
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
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
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').Value := '.';
      End;
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;
End;

Procedure TFAplicaNC.InicializaCds;
Begin
   Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where CIAID=''''');
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where CIAID=''''');
   Filtracds(DMCXC.cdsCanjes, 'Select * from CXC304 Where CIAID=''''');
End;

Procedure TFAplicaNC.InicializaVars;
Begin
   wCje := '';
   wSimbMn := '';
   wEstadTem := ''; // si regresa de Det a Pend (cuando existe N/C)
   wCuadra := False;
   wRegGrab := False;
   edtSerie.Text := '';
   dbeNoDoc.Text := '';
End;

Procedure TFAplicaNC.InsertaRegistro;
Begin
   DMCXC.cdsMovCxC.Insert;
   DMCXC.cdsMovCxC.FieldByName('DOCID').AsString := wTDoc;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'X';
   DMCXC.cdsMovCxC.Post;
   dblcCia.Text := '';
   dblcdClie.Text := '';
   dblcdClieRuc.Text := '';
   edtSerie.Text := '';
   dbeNoDoc.text := '';
   edtCia.Text := '';
   edtClie.text := '';
   RecuperarCiaUnica(dblcCia, edtCia);
End;

Procedure TFAplicaNC.bbtnOKClick(Sender: TObject);
Var
   xWhere: String;
Begin
//   if not Consistencia then Exit;

   DMCXC.xFlagCal := True;

   If DMCXC.wModo = 'A' Then
   Begin
      xWhere := 'CiaId=' + '''' + dblcCia.Text + '''' + ' and TCanjeID=' + '''' + 'NC' + '''';
      wCje := DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCanje', xWhere);
      wCje := StrZero(wCje, 6);
      //** 23/11/2000 PJSV
      //if DMCXC.cdsMovCxCCCEstado.AsString='X' then GeneraRegistro;
      // POR SUGERENCIA DE HUGO
      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T' Then GeneraRegistro;
      //**

   End;

//WMC2211   FNotasDC.OnKeyPress := Nil;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');

//   DatosCds;
//   FiltraGrids;
/////////////
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

////////////
//   bbtnSumatClick(Sender);

End;

Procedure TFAplicaNC.GeneraRegistro;
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

   xTAutoNum := DMCXC.displayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
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
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
End;

Procedure TFAplicaNC.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsMovCxC2.Filter := '';
End;

End.

