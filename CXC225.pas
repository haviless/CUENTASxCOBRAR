Unit CxC225;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   wwdbdatetimepicker, Mask, wwdbedit, StdCtrls, wwdblook, ExtCtrls, Buttons,
   Grids, Wwdbigrd, Wwdbgrid, ppEndUsr, ppCache, ppDB, ppDBPipe, ppComm,
   ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCtrls, ppVar, ppPrnabl, db;

Type
   TFApeCieOpe = Class(TForm)
      bbtnSalir: TBitBtn;
      Panel1: TPanel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Panel2: TPanel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      dbeNoCierreU: TwwDBEdit;
      dtpFIniU: TwwDBDateTimePicker;
      dtpFCierreU: TwwDBDateTimePicker;
      dtpFRegU: TwwDBDateTimePicker;
      dtpHRegU: TwwDBDateTimePicker;
      dbeUserU: TwwDBEdit;
      pnlReg3: TPanel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      dbeNoCierre: TwwDBEdit;
      dtpFIni: TwwDBDateTimePicker;
      dtpFCierre: TwwDBDateTimePicker;
      dbeUser: TwwDBEdit;
      pnlInicial: TPanel;
      Label16: TLabel;
      dbgPeriodo: TwwDBGrid;
      bbtnGraba: TBitBtn;
      bbtnNuevo: TBitBtn;
      bbtnMostrar: TBitBtn;
      bbtnCerrar: TBitBtn;
      BitBtn1: TBitBtn;
      bbtnApertura: TBitBtn;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure bbtnSalirClick(Sender: TObject);
      Procedure dtpFCierreExit(Sender: TObject);
      Procedure dbeNoCierreExit(Sender: TObject);
      Procedure bbtnGrabaClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure CargaDataSources;
      Procedure dblcCiaEnter(Sender: TObject);
      Procedure bbtnNuevoClick(Sender: TObject);
      Procedure bbtnMostrarClick(Sender: TObject);
      Procedure bbtnCerrarClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure bbtnAperturaClick(Sender: TObject);
      Procedure dblcCiaNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
   Private
    { Private declarations }
   Public
  { Public declarations }
   End;

Var
   FApeCieOpe: TFApeCieOpe;
   xWhere, xSQL: String;

Implementation

Uses oaCC2000, CxCDM;

{$R *.DFM}

Procedure TFApeCieOpe.dblcCiaExit(Sender: TObject);
Begin

   If bbtnSalir.Focused Then Exit;

   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCIA.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      Raise Exception.Create('Falta Código de Compañía');
   End;

End;

Procedure TFApeCieOpe.bbtnGrabaClick(Sender: TObject);
Var
   xWhere, sSQL: String;
   d0, m0, a0, d, m, a, dd, mm, aa: word;
Begin
   If length(edtCia.Text) = 0 Then
   Begin
      Raise Exception.Create('Falta Código de Compañía');
   End;

   If Not DMCXC.cdsCierre.Active Then
   Begin
      ShowMessage('Debe Generar Nuevo Periodo');
      Exit;
   End;

   DecodeDate(dtpFCierreU.date, a0, m0, d0);
   DecodeDate(dtpFIni.Date, a, m, d);
   DecodeDate(dtpFCierre.date, aa, mm, dd);
   If aa <> a Then
   Begin
      dtpFCierre.setFocus;
      Raise Exception.Create('No puede incluir periodos de diferente año');
   End;

   xWhere := '';
   If (Length(Trim(edtCia.Text)) = 0) Then
   Begin
      ShowMessage('Error : Registro no valido');
      Exit;
   End;
  {
  xWhere:=DMCXC.wRepFuncDate+''''+ FormatDateTime(DMCXC.wFormatFecha,dtpFIniU.Date)+''''+')'+' AND '+
          DMCXC.wRepFuncDate+''''+ FormatDateTime(DMCXC.wFormatFecha,dtpFCierreU.Date)+''''+')';

   if (DMCXC.SRV_D = 'DB2NT') or (DMCXC.SRV_D = 'DB2400') then
   begin
     sSQL:='SELECT CIAID,CXC301.DOCID,TGE110.DOCABR,CCSERIE,CCNODOC,CCFEMIS,CCFCMPRB FROM CXC301 '+
            ' LEFT JOIN TGE110 ON TGE110.DOCMOD='+QuotedStr(DMCXC.wModulo)+' AND TGE110.DOCID=CXC301.DOCID WHERE CIAID='+QuotedStr(dblcCia.Text)+' AND (CCESTADO<>''P'' AND CCESTADO<>''A'' AND CCESTADO<>''C'') AND CCFCMPRB BETWEEN '+xWhere;
     sSQL:=sSQL+' UNION ALL SELECT CIAID,'+QuotedStr(DMCXC.wsCob)+' DOCID,TGE110.DOCABR,'''' CCSERIE,LICOID CCNODOC,CCFEMIS,CURRENT DATE CCFCMPRB FROM CXC318 '+
           ' LEFT JOIN TGE110 ON TGE110.DOCMOD='+QuotedStr(DMCXC.wModulo)+' AND TGE110.DOCID='+QuotedStr(DMCXC.wsCob)+' WHERE LICOESTADO<>''P'' AND CCFEMIS BETWEEN '+xWhere;
   end;

   if DMCXC.SRV_D='ORACLE' then
   begin
     sSQL:='SELECT CIAID,CXC301.DOCID,TGE110.DOCABR,CCSERIE,CCNODOC,CCFEMIS,CCFCMPRB FROM CXC301,TGE110 '+
            // VHN 20051201
            ' WHERE CIAID='+QuotedStr(dblcCia.Text)+' AND (CCESTADO<>''P'' AND CCESTADO<>''A'' AND CCESTADO<>''C'' AND CCESTADO<>''E'') AND CCFCMPRB BETWEEN '+xWhere+
            //' WHERE CIAID='+QuotedStr(dblcCia.Text)+' AND (CCESTADO<>''P'' AND CCESTADO<>''A'' AND CCESTADO<>''C'') AND CCFCMPRB BETWEEN '+xWhere+
            ' AND TGE110.DOCMOD(+)='+QuotedStr(DMCXC.wModulo)+' AND TGE110.DOCID(+)=CXC301.DOCID ';
     sSQL:=sSQL+' UNION ALL SELECT CIAID,'+QuotedStr(DMCXC.wsCob)+' DOCID,TGE110.DOCABR,'''' CCSERIE,LICOID CCNODOC,CCFEMIS,'+DMCXC.wRepFecServi+' CCFCMPRB FROM CXC318,TGE110 '+
           ' WHERE LICOESTADO<>''P'' AND CCFEMIS BETWEEN '+xWhere+
           ' AND TGE110.DOCMOD(+)='+QuotedStr(DMCXC.wModulo)+' AND TGE110.DOCID(+)='+QuotedStr(DMCXC.wsCob);
   end;

  DMCXC.cdsReporte.Close;
  DMCXC.cdsReporte.DataRequest(sSQL);
  DMCXC.cdsReporte.Open;
  DMCXC.cdsReporte.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC';

 if DMCXC.cdsReporte.RecordCount > 0 then
 begin
  Information(Caption, 'Existen Documentos en Estado ''INICIAL'' No Puede Cerrar el Periodo Actual');
 end
  else
  begin
   }
   If MessageDlg('Generar Nuevo Periodo de Ventas' + chr(13) + '          ¿Esta Seguro?    ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   DMCXC.cdsCierre.Edit;
   DMCXC.cdsCierre.FieldByname('ESTVEN').AsString := 'I';
   DMCXC.cdsCierre.FieldByName('CNSFRECU').AsFloat := dtpFCierre.Date - dtpFIni.Date + 1;
   DMCXC.cdsCierre.Post;
   DMCXC.AplicaDatos(DMCXC.cdsCierre, 'CIERRE');
   bbtnGraba.Enabled := False;
   DMCXC.cdsCierre.Close;
   bbtnMostrarClick(Self);
   ShowMessage('Periodo Grabado');
  {
  end;}
End;

Procedure TFApeCieOpe.bbtnSalirClick(Sender: TObject);
Begin
   bbtnGraba.Enabled := False;
   Close;
End;

Procedure TFApeCieOpe.dtpFCierreExit(Sender: TObject);
Begin
   If DMCXC.cdsCierre.FieldByName('CNSULTCIE').AsdateTime <= dtpFCierreU.Date Then
   Begin
      Raise Exception.Create('Error : Fecha debe Ser Mayor a Fecha de Cierre Anterior');
   End;
End;

Procedure TFApeCieOpe.dbeNoCierreExit(Sender: TObject);
Begin
   If DMCXC.cdsCierre.FieldByName('NOCIERRE').AsString <= dbeNoCierreU.Text Then
   Begin
      Raise Exception.Create('Error : Nº. Cierre debe Ser Mayor a Nº. Cierre de Cierre Anterior');
   End;

End;

Procedure TFApeCieOpe.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFApeCieOpe.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsReporte.IndexFieldNames := '';
   DMCXC.cdsMovCxC.Filter := '';
   DMCXC.cdsMovCxC.IndexFieldNames := '';
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsCierre.Close;
   DMCXC.cdsCierre.Filter := '';
   DMCXC.cdsCierre.IndexFieldNames := '';
   Action := caFree;
End;

Procedure TFApeCieOpe.FormShow(Sender: TObject);
Begin
   pnlReg3.Enabled := False;

   dblcCia.SetFocus;
End;

Procedure TFApeCieOpe.FormCreate(Sender: TObject);
Begin
   DMCXC.cdsMovCxC2.Close;
   CargaDataSources;
End;

Procedure TFApeCieOpe.CargaDataSources;
Begin
   dbeNoCierre.DataSource := DMCXC.dsCierre;
   dtpFIni.DataSource := DMCXC.dsCierre;
   dtpFCierre.DataSource := DMCXC.dsCierre;
   dbeUser.DataSource := DMCXC.dsCierre;
   dblcCia.LookupTable := DMCXC.cdsCia;
   dbgPeriodo.DataSource := DMCXC.dsMovCxC2;
End;

Procedure TFApeCieOpe.dblcCiaEnter(Sender: TObject);
Begin
   bbtnGraba.Enabled := True;
End;

Procedure TFApeCieOpe.bbtnNuevoClick(Sender: TObject);
Var
   xFrec: Double;
   Y, M, D: Word;
Begin

   If length(edtCia.Text) = 0 Then
   Begin
      Raise Exception.Create('Falta Código de Compañía');
   End;

   dtpFCierreU.Date := DMCXC.BuscaUltFecha('dspUltTGE', 'CXC312', 'CNSULTCIE', 'CIAID=' + quotedstr(dblcCIA.text));

   xWhere := 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND '
      + 'CNSULTCIE=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFCierreU.Date) + '''' + ')';
   DMCXC.BuscaQry('dspTGE', 'CXC312', '*', xWhere, 'CNSULTCIE');
   dbeNoCierreU.Text := DMCXC.cdsQry.FieldByName('NOCIERRE').AsString;
   If dbeNoCierreU.Text = '' Then
      dbeNoCierreU.Text := '000000';

   dtpFIniU.Date := DMCXC.cdsQry.FieldByName('CNSPRICIE').AsDateTime;
   dbeUserU.Text := DMCXC.cdsQry.FieldByName('USUARIO').AsString;
   dtpFRegU.Date := DMCXC.cdsQry.FieldByName('FREG').AsDateTime;

   xSQL := 'SELECT * FROM CXC312 WHERE CIAID=''' + dblcCia.Text + ''' '
      + ' ORDER BY CIAID, CNSULTCIE';
   DMCXC.cdsCierre.Close;
   DMCXC.cdsCierre.DataRequest(xSQL);
   DMCXC.cdsCierre.Open;

   DMCXC.cdsCierre.Insert;
   DMCXC.cdsCierre.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsCierre.FieldByName('NOCIERRE').AsString := StrZero(IntToStr(StrtoInt(dbeNoCierreU.Text) + 1), 6);
   DMCXC.cdsCierre.FieldByName('CNSPRICIE').AsDateTime := dtpFCierreU.Date + 1;

   DecodeDate(DMCXC.cdsCierre.FieldByName('CNSPRICIE').AsDateTime, Y, M, D);

   M := M + 1;
   If M = 13 Then
   Begin
      M := 1;
      Y := Y + 1;
   End;

   DMCXC.cdsCierre.FieldByName('CNSULTCIE').AsDateTime := StrtoDate('01/' + StrZero(IntToStr(M), 2) + '/' + IntToStr(Y)) - 1;

   DMCXC.cdsCierre.FieldByName('USUARIO').AsString := DMCXC.wUsuario;
   DMCXC.cdsCierre.FieldByName('FREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsCierre.Post;
   bbtnGraba.Enabled := True;
End;

Procedure TFApeCieOpe.bbtnMostrarClick(Sender: TObject);
Begin
   xSQL := 'Select * from CXC312 where CIAID=''' + dblcCia.Text + ''' ORDER BY NOCIERRE DESC';
   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.IndexFieldNames := '';
   DMCXC.cdsMovCxC2.DataRequest(xSQL);
   DMCXC.cdsMovCxC2.Open;

   DMCXC.cdsCierre.Close;
   bbtnGraba.Enabled := False;

   pnlReg3.Enabled := True;
End;

Procedure TFApeCieOpe.bbtnCerrarClick(Sender: TObject);
Var
   xSQL, cNum: String;
Begin
   bbtnGraba.Enabled := False;
   DMCXC.cdsCierre.Close;
   If DMCXC.cdsMovCxC2.FieldByname('ESTVEN').AsString = 'I' Then
   Begin
      cNum := StrZero(IntToStr(DMCXC.cdsMovCxC2.FieldByname('NOCIERRE').AsInteger - 1), 6);

      xSQL := 'Select * from CXC312 '
         + 'Where CIAID=''' + dblcCia.Text + ''' and NOCIERRE=''' + cNum + ''' '
         + 'and ESTVEN=''I''';
      DMCXC.cdsQry8.Close;
      DMCXC.cdsQry8.DataRequest(xSQL);
      DMCXC.cdsQry8.Open;

      If DMCXC.cdsQry8.RecordCount > 0 Then
      Begin
         ShowMessage('No se puede Cerrar periodo Actual. Periodo anterior NO FUE CERRADO, Verificar...');
         Exit;
      End;

      If MessageDlg('Cerrar Periodo de ventas' + chr(13) + '      ¿Esta Seguro?    ',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

      DMCXC.cdsMovCxC2.Edit;
      DMCXC.cdsMovCxC2.FieldByname('ESTVEN').AsString := 'C';
      DMCXC.cdsMovCxC2.FieldByname('FECCIE').AsDateTime := Date + SysUtils.Time;
      DMCXC.cdsMovCxC2.FieldByname('USUCIE').AsString := DMCXC.wUsuario;
      DMCXC.cdsMovCxC2.Post;
      If DMCXC.cdsMovCxC2.ApplyUpdates(0) > 0 Then
      Begin
         ShowMessage('Error al Grabar Cierre OK');
         Exit;
      End;
      ShowMessage('Cierre OK');
   End
   Else
   Begin
      ShowMessage('Periodo ya fue Cerrado');
      Exit;
   End;
End;

Procedure TFApeCieOpe.BitBtn1Click(Sender: TObject);
Begin
   bbtnGraba.Enabled := False;
   DMCXC.cdsCierre.Close;
End;

Procedure TFApeCieOpe.bbtnAperturaClick(Sender: TObject);
Var
   xSQL, cNum: String;
Begin
   bbtnGraba.Enabled := False;
   DMCXC.cdsCierre.Close;

   If DMCXC.cdsMovCxC2.FieldByname('ESTVEN').AsString = 'C' Then
   Begin

      cNum := StrZero(IntToStr(DMCXC.cdsMovCxC2.FieldByname('NOCIERRE').AsInteger + 1), 6);

      xSQL := 'Select * from CXC312 '
         + 'Where CIAID=''' + dblcCia.Text + ''' and NOCIERRE=''' + cNum + ''' '
         + 'and ESTVEN=''C''';
      DMCXC.cdsQry8.Close;
      DMCXC.cdsQry8.DataRequest(xSQL);
      DMCXC.cdsQry8.Open;

      If DMCXC.cdsQry8.RecordCount > 0 Then
      Begin
         ShowMessage('No se puede Aperturar periodo Actual. Solo se puede Aperturar el Ultimo Periodo CERRADO, Verificar...');
         Exit;
      End;

      If MessageDlg('Aperturar Periodo de ventas' + chr(13) + '      ¿Esta Seguro?    ',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

      DMCXC.cdsMovCxC2.Edit;
      DMCXC.cdsMovCxC2.FieldByname('ESTVEN').AsString := 'I';
      DMCXC.cdsMovCxC2.FieldByname('FECCIE').AsDateTime := Date + SysUtils.Time;
      DMCXC.cdsMovCxC2.FieldByname('USUCIE').AsString := DMCXC.wUsuario;
      DMCXC.cdsMovCxC2.Post;
      If DMCXC.cdsMovCxC2.ApplyUpdates(0) > 0 Then
      Begin
         ShowMessage('Error al Grabar Cierre OK');
         Exit;
      End;
      ShowMessage('Apertura OK');
   End
   Else
   Begin
      ShowMessage('Periodo esta Aperturado');
      Exit;
   End;
End;

Procedure TFApeCieOpe.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

End.

