Unit CXC305;
// 07/11/2000 - pjsv
Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, wwdbdatetimepicker, Wwdbdlg, Mask, wwdbedit, oaVariables,
   wwdblook, Buttons, Spin, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
   ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, dB, ppEndUsr;

Type
   TFRDocu = Class(TForm)
      pnlRegComp: TPanel;
      Z2sbOK: TBitBtn;
      Z2sbNuevo: TBitBtn;
      pnlDatos1: TPanel;
      lblCia: TLabel;
      Label1: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      edtTDoc: TEdit;
      dblcTDoc: TwwDBLookupCombo;
      Label3: TLabel;
      dbdtpDesde: TwwDBDateTimePicker;
      Label4: TLabel;
      dbdtpHasta: TwwDBDateTimePicker;
      Label5: TLabel;
      dblcbTmon: TwwDBLookupCombo;
      edtTmon: TEdit;
      rgTmon: TRadioGroup;
      Label2: TLabel;
      edtTcam: TEdit;
      ppdbNLetras: TppDBPipeline;
      ppRNLetras: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppdbCia: TppDBText;
      pplblTitulo: TppLabel;
      pplblModulo: TppLabel;
      pplblDel: TppLabel;
      pplblAl: TppLabel;
      pplblFecini: TppLabel;
      pplblFecfin: TppLabel;
      pplblPag: TppLabel;
      pplblHora: TppLabel;
      pplblFecha: TppLabel;
      ppLine4: TppLine;
      ppsvPag: TppSystemVariable;
      ppsvHora: TppSystemVariable;
      ppsvFecha: TppSystemVariable;
      pplblEsta: TppLabel;
      pplblDEsta: TppLabel;
      Label6: TLabel;
      edtSitua: TEdit;
      pplblEmi: TppLabel;
      pplblLetra: TppLabel;
      pplblCliente: TppLabel;
      pplblSubT: TppLabel;
      pplblFVmto: TppLabel;
      ppLine1: TppLine;
      ppDBText1: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLine6: TppLine;
      pplbltot: TppLabel;
      ppdbtotext: TppDBCalc;
      ppdbtotloc: TppDBCalc;
      ppDBCalc1: TppDBCalc;
      pplblTitulo1: TppLabel;
      cbSitua: TComboBox;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppDBText2: TppDBText;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDesigner1: TppDesigner;
      Procedure seAnoExit(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcbTmonExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure rgTmonClick(Sender: TObject);
      Procedure Z2sbOKClick(Sender: TObject);
      Procedure ppRNLetrasPreviewFormCreate(Sender: TObject);
      Procedure Z2sbNuevoClick(Sender: TObject);
      Procedure Z2sbOKMouseUp(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure ppdbcSICalc(Sender: TObject);
      Procedure ppdbtotlocCalc(Sender: TObject);
      Procedure cbSituaExit(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure FormShow(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormCreate(Sender: TObject);
   Private
    { Private declarations }
      xperiodo: String;
      Procedure CargaPeriodo;
      Procedure CargaDataSource;
   Public
    { Public declarations }
   End;

Var
   FRDocu: TFRDocu;

Implementation
Uses CxCDM;
{$R *.DFM}

Procedure TFRDocu.seAnoExit(Sender: TObject);
Begin
   CargaPeriodo;
End;

Procedure TFRDocu.CargaPeriodo;
Var
   ssql: String;
Begin
   If Z2sbNuevo.Focused Then Exit;
   ssql := '';
   ssql := 'SELECT * FROM CXC301 WHERE' +
      ' CIAID =' + Trim(quotedstr(dblcCia.Text)) +
      ' AND DOCID =' + Trim(quotedstr(dblcTDoc.Text)) +
      ' AND CPANOMES =' + Trim(quotedstr(xperiodo));
   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.DataRequest(ssql);
   DMCXC.cdsMovCxC2.open;
   pnlDatos1.Enabled := False;
End;

Procedure TFRDocu.dblcCiaExit(Sender: TObject);
Var
   ssql: String;
Begin
   If Z2sbNuevo.Focused Then Exit;
   ssql := '';
   ssql := 'CIAID=' + trim(quotedstr(dblcCia.Text));
   edtCia.Text := DMCXC.BuscaQry2('dspCia', 'TGE101', '*', ssql, 'CIADES');
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFRDocu.dblcTDocExit(Sender: TObject);
Var
   ssql: String;
Begin
   If Z2sbNuevo.Focused Then Exit;
   ssql := '';
   ssql := 'DOCMOD=' + quotedstr('CXC') + ' AND DOCID=' + trim(quotedstr(dblcTDoc.Text));
   edtTDoc.Text := DMCXC.BuscaQry2('dspTDoc', 'TGE110', '*', ssql, 'DOCDES');
   If length(edtTDoc.text) = 0 Then
   Begin
      ShowMessage('Falta Documento');
      dblcTDoc.SetFocus;
   End;
End;

Procedure TFRDocu.dblcbTmonExit(Sender: TObject);
Var
   ssql: String;
Begin
   If Z2sbNuevo.Focused Then Exit;
   ssql := '';
   ssql := 'TMONID=' + trim(quotedstr(dblcbTmon.Text));
   edtTmon.Text := DMCXC.BuscaQry2('dspTMon', 'TGE103', '*', ssql, 'TMONABR');
   If length(edtTmon.text) = 0 Then
   Begin
      ShowMessage('Falta Moneda');
      dblcbTmon.SetFocus;
   End
   Else
   Begin
      rgTmon.Enabled := true;
      rgTMon.SetFocus;
   End;
End;

Procedure TFRDocu.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFRDocu.rgTmonClick(Sender: TObject);
Var
   tpCambio, sFecha, ssql: String;
   nfecha: Tdate;
Begin
   If (rgTmon.ItemIndex = 2) Or (rgTmon.ItemIndex = 3) Then
   Begin
      sFecha := formatdatetime(DMCXC.wFormatFecha, DMCXC.dateS);
      If DMCXC.wVRN_TipoCambio = '' Then
         tpCambio := 'TCAMVBC'
      Else
         tpCambio := 'TCAM' + DMCXC.wVRN_TipoCambio;
//    sSQL := 'SELECT '+ tpCambio +' FROM TGE107 WHERE FECHA=DATE(' +quotedStr(sFecha)+ ') AND TMONID='+ quotedStr(dblcbTmon.Text);
      sSQL := 'SELECT ' + tpCambio + ' FROM TGE107 WHERE FECHA=' + DMCXC.wRepFuncDate + quotedStr(sFecha) + ') AND TMONID=' + quotedStr(DMCXC.wTMonExt);
      DMCXC.cdsQry.close;
      DMCXC.cdsQry.DataRequest(ssql);
      DMCXC.cdsQry.Open;
      nfecha := DMCXC.dateS;
      If DMCXC.cdsQry.RecordCount = 0 Then
         Repeat
            nfecha := nfecha - 1;
            sFecha := formatdatetime(DMCXC.wFormatFecha, nfecha);
            sSQL := 'SELECT ' + tpCambio + ' FROM TGE107 WHERE FECHA=' + DMCXC.wRepFuncDate + quotedStr(sFecha) + ')'; // AND TMONID='+ quotedStr(dblcbTmon.Text);
            DMCXC.cdsQry.close;
            DMCXC.cdsQry.DataRequest(ssql);
            DMCXC.cdsQry.Open;
         Until DMCXC.cdsQry.RecordCount > 0;
      edtTcam.text := DMCXC.cdsQry.FieldByName(tPCAMBIO).AsString;
      edtTcam.Enabled := true;
      edtTcam.SetFocus;
   End;
End;

Procedure TFRDocu.Z2sbOKClick(Sender: TObject);
Var
   flagFech: Boolean;
   ssql: String;
   xFechaI, xFechaF: String;
Begin
   If edtCia.Text = '' Then Raise exception.Create('Compañia no válida');
   If edtTDoc.Text = '' Then Raise exception.Create('Documento no válido');
   If dbdtpDesde.Text = '' Then Raise exception.Create('Ingrese rango superior');
   If dbdtpHasta.Text = '' Then Raise exception.Create('Ingrese rango inferior');
//   if dblcbTmon.Text='' then  raise exception.Create('Ingrese Tipo Moneda');
   If rgTmon.ItemIndex = -1 Then Raise exception.Create('Ingrese tipo de Detalle');
   If (rgTmon.ItemIndex = 2) Or (rgTmon.ItemIndex = 3) Then
      If edtTcam.text = '' Then Raise exception.Create('Ingrese Cambio');
   ssql := '';
   SSQL := ' SELECT TGE101.CIADES AS CIADESC, CXC104.SITUAABR,CXC105.UBICADES, ' +
      ' CXC301.CCFEMIS,CXC301.CLIERUC,CXC301.CCSERIE,CXC301.CCNODOC,CXC301.CCFVCMTO';
   If rgTmon.ItemIndex = 0 Then
   Begin
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCMTOLOC,0) AS SUBT';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCIGV,0) AS IGV';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCMTOORI,0) AS TOT';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCSALORI,0) AS SAL';
   End;
   If rgTmon.ItemIndex = 1 Then
   Begin
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCMTOEXT,0) AS SUBT';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCIGV,0) AS IGV';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCMTOORI,0) AS TOT';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCSALORI,0) AS SAL';
   End;
   If rgTmon.ItemIndex = 2 Then
   Begin
      ssql := ssql + ',(' + DMCXC.wReplacCeros + '(CXC301.CCMTOLOC,0)/' + edtTcam.Text + ') AS SUBT';
      ssql := ssql + ',(' + DMCXC.wReplacCeros + '(CXC301.CCIGV,0) /' + edtTcam.Text + ') AS IGV';
      ssql := ssql + ',(' + DMCXC.wReplacCeros + '(CXC301.CCMTOORI,0) /' + edtTcam.Text + ') AS TOT';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCSALORI,0) AS SAL';
   End;
   If rgTmon.ItemIndex = 3 Then
   Begin
      ssql := ssql + ',(' + DMCXC.wReplacCeros + '(CXC301.CCMTOEXT,0) *' + edtTcam.Text + ') AS SUBT';
      ssql := ssql + ',(' + DMCXC.wReplacCeros + '(CXC301.CCIGV,0) *' + edtTcam.Text + ') AS IGV';
      ssql := ssql + ',(' + DMCXC.wReplacCeros + '(CXC301.CCMTOORI,0) *' + edtTcam.Text + ') AS TOT';
      ssql := ssql + ',' + DMCXC.wReplacCeros + '(CXC301.CCSALORI,0) AS SAL';
   End;
   xFechaI := formatdatetime(DMCXC.wFormatFecha, dbdtpDesde.date);
   xFechaF := formatdatetime(DMCXC.wFormatFecha, dbdtpHasta.date);

   //cim 2009/2002
   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
      ssql := ssql + ',CNT201.AUXNOMB'
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
         ssql := ssql + ',CXC301.CLIEDES AUXNOMB';

   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      ssql := ssql + ' from cxc301 ' +
         ' LEFT JOIN  CNT201 ON CXC301.CLAUXID=CNT201.CLAUXID AND CXC301.CLIEID=CNT201.AUXID ' +
         ' LEFT JOIN TGE101 ON CXC301.CIAID = TGE101.CIAID ' +
         ' LEFT JOIN CXC104 ON CXC301.SITID=CXC104.SITUAID ' +
         ' LEFT JOIN CXC105 ON CXC301.UBIID=CXC105.UBICAID' +
         ' where CXC301.ciaid=' + quotedstr(dblcCia.text) +
         ' and CXC301.docid =' + quotedstr(dblcTDoc.text) +
         ' AND (CXC301.CCFEMIS >=' + DMCXC.wRepFuncDate + quotedstr(xFEchaI) + ') AND CXC301.CCFEMIS <=' + DMCXC.wRepFuncDate + quotedstr(xFEchaF) + '))' +
         ' AND CXC301.CCESTADO =' + quotedstr(cbsitua.Text);
   End
   Else
   Begin
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         ssql := ssql + ' FROM CXC301, CNT201, TGE101, CXC104, CXC105' +
            ' WHERE CXC301.CIAID=' + quotedstr(dblcCia.text) +
            ' AND CXC301.DOCID =' + quotedstr(dblcTDoc.text) +
            ' AND (CXC301.CCFEMIS >=' + DMCXC.wRepFuncDate + quotedstr(xFEchaI) + ') AND CXC301.CCFEMIS <=' + DMCXC.wRepFuncDate + quotedstr(xFEchaF) + '))' +
            ' AND CXC301.CCESTADO =' + quotedstr(cbsitua.Text) +
            ' AND CXC301.CIAID = TGE101.CIAID(+) ' +
            ' AND CXC301.SITID=CXC104.SITUAID(+) ' +
            ' AND CXC301.UBIID=CXC105.UBICAID(+) ' +
            ' AND CXC301.CLAUXID=CNT201.CLAUXID(+) ' +
            ' AND CXC301.CLIEID=CNT201.AUXID(+) ';
      End;
   End;

   If rgTMon.ItemIndex = 0 Then
      ssql := ssql + ' and TMONID=' + '''' + DMCXC.wTMonLoc + '''';
   If rgTMon.ItemIndex = 1 Then
      ssql := ssql + ' and TMONID=' + '''' + DMCXC.wTMonExt + '''';

   sSQL := sSQL + ' ORDER BY CXC301.CLIERUC';
   DMCXC.cdsQry.close;
   DMCXC.cdsQry.DataRequest(ssql);
   DMCXC.cdsQry.open;
   If DMCXC.cdsQry.recordcount = 0 Then
      Raise exception.create('No existen datos para la consulta seleccionada');
   ppRNLetras.Print;
    //ppDesigner1.Show;
End;

Procedure TFRDocu.ppRNLetrasPreviewFormCreate(Sender: TObject);
Begin
   pplblTitulo.Text := UPPERCASE(Trim(edtTDoc.text)) + ' POR FECHA DE EMISION';
   If (rgTmon.ItemIndex = 0) Or (rgTmon.ItemIndex = 2) Then
      pplblTitulo1.Text := 'MOVIMIENTOS EN MONEDA NACIONAL';
   If (rgTmon.ItemIndex = 1) Or (rgTmon.ItemIndex = 3) Then
      pplblTitulo1.Text := 'MOVIMIENTOS EN MONEDA EXTRANJERA';
   pplblTitulo.Left := (ppRNLetras.PrinterSetup.PaperWidth / 2) - (pplblTitulo.Width / 2);
   pplblTitulo1.Left := (ppRNLetras.PrinterSetup.PaperWidth / 2) - (pplblTitulo1.Width / 2);
   pplblFecini.Text := dbdtpDesde.Text;
   pplblFecfin.Text := dbdtpHasta.Text;
   pplblDEsta.Text := edtSitua.text;
End;

Procedure TFRDocu.Z2sbNuevoClick(Sender: TObject);
Begin
   dblcCia.text := '';
   edtCia.text := '';
   dblcTDoc.text := '';
   edtTDoc.text := '';
   dbdtpDesde.text := '';
   dbdtpHasta.text := '';
   cbSitua.text := '';
   edtSitua.text := '';
   rgTmon.ItemIndex := 0;
   edtTcam.text := '';
   pnlDatos1.Enabled := true;
   dblcCia.SetFocus;
End;

Procedure TFRDocu.Z2sbOKMouseUp(Sender: TObject; Button: TMouseButton;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlDatos1.Enabled := false;
End;

Procedure TFRDocu.ppdbcSICalc(Sender: TObject);
Begin
//  ppdbcSI.Value := DMCXC.cdsQry.FieldByName('SUBT').value + DMCXC.cdsQry.FieldByName('IGV').value;
End;

Procedure TFRDocu.ppdbtotlocCalc(Sender: TObject);
Begin
//   ppdbtotloc.Value := ppdbtotloc.Value + ppdbcSI.Value;
End;

Procedure TFRDocu.cbSituaExit(Sender: TObject);
Begin
   If Z2sbNuevo.Focused Then Exit;
   If cbSitua.ItemIndex = 0 Then
      edtSitua.Text := 'Cancelada';
   If cbSitua.ItemIndex = 1 Then
      edtSitua.Text := 'Pendiente';
   If length(edtSitua.text) = 0 Then
   Begin
      ShowMessage('Falta situación');
      cbSitua.SetFocus;
   End;
End;

Procedure TFRDocu.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookuPField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFRDocu.FormShow(Sender: TObject);
Var
   ssql: String;
Begin
   //** 10/03/2001 - PJSV - xque se quedaba filtrado con la data de Registro de Letras
   DMCXC.cdsTDoc.Filter := '';
   DMCXC.cdsTDoc.Filtered := True;
   //**
   ssql := '';
   ssql := 'SELECT * FROM TGE110 WHERE DOCMOD=' + quotedstr('CXC');
   DMCXC.cdsTDoc.Close;
   DMCXC.cdsTDoc.DataRequest(ssql);
   DMCXC.cdsTDoc.Open;
   dblcCia.SetFocus;
   rgTmon.ItemIndex := 0;
End;

Procedure TFRDocu.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   Action := caFree;
End;

Procedure TFRDocu.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFRDocu.CargaDataSource;
Begin
   ppdbNLetras.DataSource := DMCXC.dsQry;
   dblcCia.LookupTable := DMCXC.cdsCia;
   dblcTDoc.LookupTable := DMCXC.cdsTDoc;
   dblcbTmon.LookupTable := DMCXC.cdsTMon;
End;

End.

