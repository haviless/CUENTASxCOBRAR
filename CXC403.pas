Unit CXC403;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ppBands, ppVar, ppPrnabl, ppClass, ppCtrls, ppProd, ppReport, oaVariables,
   ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, StdCtrls, Buttons, ExtCtrls,
   wwdblook, ComCtrls, wwdbdatetimepicker, ppParameter, DB;

Type
   TFCRepMovClie = Class(TForm)
      Label1: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label2: TLabel;
      edtTCam: TEdit;
      cboOrdenar: TComboBox;
      Label4: TLabel;
      gbRango: TGroupBox;
      lvTipoClie: TListView;
      rbProvTodos: TRadioButton;
      rbProvEscoger: TRadioButton;
      rgbFechas: TGroupBox;
      Label3: TLabel;
      Label5: TLabel;
      dbdtpFReg1: TwwDBDateTimePicker;
      dbdtpFReg2: TwwDBDateTimePicker;
      Z2bbtnSalir: TBitBtn;
      Z2bbtnImprimir: TBitBtn;
      ppdbFuente: TppDBPipeline;
      ppReporte: TppReport;
      ppParameterList1: TppParameterList;
      ppHBCab: TppHeaderBand;
      pplblEmpresa: TppLabel;
      pplblSistema: TppLabel;
      pplblPagina: TppLabel;
      pplblFecha: TppLabel;
      pplblHora: TppLabel;
      pplblTitulo: TppLabel;
      pplblLin0: TppLabel;
      pplblLin1: TppLabel;
      ppsvPagina: TppSystemVariable;
      ppsvFecha: TppSystemVariable;
      ppsvHora: TppSystemVariable;
      ppLabel1: TppLabel;
      ppLblTCam: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel14: TppLabel;
      ppDBDet: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppFBPie: TppFooterBand;
      pplblLin2: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppDBExt: TppDBCalc;
      ppDBLoc: TppDBCalc;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppImpME: TppVariable;
      ppLabel15: TppLabel;
      ppDiferencia: TppVariable;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText11: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;

      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure rbProvTodosClick(Sender: TObject);
      Procedure rbProvEscogerClick(Sender: TObject);
      Procedure edtTCamExit(Sender: TObject);
      Procedure ppSummaryBand1BeforePrint(Sender: TObject);
      Procedure dbdtpFReg1Exit(Sender: TObject);
      Procedure dbdtpFReg2Exit(Sender: TObject);
      Procedure edtTCamKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure Z2bbtnImprimirClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcCiaNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Function FechaDB2(Fecha: TDateTime): String;
   End;

Var
   FCRepMovClie: TFCRepMovClie;
   xxTcam: double;
Implementation

{$R *.DFM}
Uses CXCDM;

Function TFCRepMovClie.FechaDB2(Fecha: TDateTime): String;
Begin
   Result := formatdatetime(DMCXC.wFormatFecha, Fecha);
End;

Procedure TFCRepMovClie.dblcCiaExit(Sender: TObject);
Begin
   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
      Exit;
   End;
   edtTCam.SetFocus;

End;

Procedure TFCRepMovClie.FormShow(Sender: TObject);
Var
   i: integer;
   xCampo,
      xMonExt,
      xSQL: String;

Begin
   xCampo := 'TCAM' + DMCXC.wVRN_TipoCambio;
   xMonExt := DMCXC.DisplayDescrip('TGE103', 'TMONID', 'TMON_LOC', 'E');
   xSQL := 'SELECT ' + xCampo + ' FROM TGE107';
   xSQL := xSQL + ' WHERE TMONID=' + quotedstr(xMonExt);
   xSQL := xSQL + ' AND FECHA=' + DMCXC.wRepFuncDate + '''' + formatdatetime(DMCXC.wFormatFecha, now) + '''' + ')';
   FiltraCDS(DMCXC.cdsQry, xSQL);
   If DMCXC.cdsQry.RecordCount = 0 Then
   Begin
      xSQL := 'SELECT MAX(' + xCampo + ') ' + xCampo + ' FROM TGE107';
      xSQL := xSQL + ' WHERE TMONID=' + quotedstr(xMonExt);
      FiltraCDS(DMCXC.cdsQry, xSQL);
   End;
   edtTCam.Text := DMCXC.cdsQry.fieldbyName(xCampo).asString;
   DMCXC.cdsQry.close;
   dbdtpFReg1.Date := DMCXC.DateS;
   dbdtpFReg2.Date := DMCXC.DateS;

   DMCXC.cdsClie.close;
   DMCXC.cdsClie.DataRequest('SELECT * FROM TGE204');
   DMCXC.cdsClie.Open;
   lvTipoClie.Items.Clear;
   i := 0;
   DMCXC.cdsClie.first;
   While (Not DMCXC.cdsClie.Eof) Do
   Begin
      lvTipoClie.Items.Add;
      lvTipoClie.Items[i].Caption := DMCXC.cdsClie.fieldbyname('CLIEID').asString;
      lvTipoClie.Items[i].SubItems.Add(DMCXC.cdsClie.fieldbyname('CLIEDES').asString);
      DMCXC.cdsClie.Next;
      i := i + 1;
   End;

   cboOrdenar.ItemIndex := 0;

End;

Procedure TFCRepMovClie.rbProvTodosClick(Sender: TObject);
Begin
   lvTipoClie.Enabled := False;
End;

Procedure TFCRepMovClie.rbProvEscogerClick(Sender: TObject);
Begin
   lvTipoClie.Enabled := True;
End;

Procedure TFCRepMovClie.edtTCamExit(Sender: TObject);
Begin
   Try
      xxTCam := strtofloat(edtTCam.text);
      cboOrdenar.setfocus;
   Except
      Showmessage('Ingrese Tipo de Cambio');
      edtTCam.SetFocus;
   End;
End;

Procedure TFCRepMovClie.ppSummaryBand1BeforePrint(Sender: TObject);
Var
   xTCam: double;
Begin
   xTCam := Fround(strtofloat(pplblTCam.text), 8, 4);
   ppImpMe.value := FRound((ppDBLoc.value / xTCam), 15, 2);
   ppDiferencia.value := FRound((strtofloat(ppDBExt.value) - strtofloat(ppImpMe.value)), 15, 2);

End;

Procedure TFCRepMovClie.dbdtpFReg1Exit(Sender: TObject);
Begin
   If dbdtpFReg1.date = 0 Then
   Begin
      ShowMessage('Ingrese Fecha Inicial');
      dbdtpFReg1.SetFocus;
   End
   Else
      If dbdtpFReg1.date > dbdtpFReg2.date Then
      Begin
         dbdtpFReg2.Date := dbdtpFReg1.date;
      End;

End;

Procedure TFCRepMovClie.dbdtpFReg2Exit(Sender: TObject);
Begin
   If dbdtpFReg2.date = 0 Then
   Begin
      ShowMessage('Ingrese Fecha Final');
      dbdtpFReg2.SetFocus;
   End
   Else
      If dbdtpFReg2.date < dbdtpFReg1.Date Then
      Begin
         dbdtpFReg1.Date := dbdtpFReg2.date;
      End;
End;

Procedure TFCRepMovClie.edtTCamKeyPress(Sender: TObject; Var Key: Char);
Var
   xStr: String;
Begin
   If Not (Key In ['0'..'9', '.', #8]) Then
   Begin
      Key := #0;
   End;
   xStr := TCustomEdit(self.ActiveControl).text;
   If key = '.' Then
      If pos('.', xSTR) <> 0 Then
         Key := #0;
End;

Procedure TFCRepMovClie.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFCRepMovClie.Z2bbtnImprimirClick(Sender: TObject);
Var
   xSQL, xWhere, xAdic: String;
   Bandera: boolean;
   i: integer;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID, CXC301.CCNOREG, TGE110.DOCABR,CCESTADO ,                      '
         + '      CXC301.CCSERIE,CXC301.CCNODOC,CXC301.CLIEID,CCMTOORI,                         '
         + '      CXC301.TMONID,CXC301.DOCID,CCSALORI,CCFEMIS,CCFVCMTO,                         '
         + '      TGE204.CLIEID,TGE204.CLIEDES,CXC301.CCTCAMPR, XX.FPAGO,                       '
         + '      (CASE WHEN (CXC301.TMONID= ' + '''' + DMCXC.wTMonLoc + '''' + ') THEN CXC301.CCMTOORI/' + FloatToStr(xxTCam)
         + '      else CXC301.CCMTOORI END) AS MTOEXT,                                          '
         + '      (CASE WHEN (CXC301.TMONID= ' + '''' + DMCXC.wTMonExt + '''' + ') THEN CXC301.CCMTOORI*CXC301.CCTCAMPR ELSE CXC301.CCMTOORI END) AS MTOLOC'
         + '  FROM CXC301                                                                       '
         + '  INNER JOIN TGE110                                                                 '
         + '  ON (CXC301.DOCID = TGE110.DOCID AND TGE110.DOCMOD = ''CXC'')                      '
         + '  INNER JOIN TGE204                                                                 '
         + '  ON (CXC301.CLIEID = TGE204.CLIEID AND CXC301.CLAUXID = TGE204.CLAUXID)            '
         + ' LEFT JOIN (SELECT CIAID,CLIEID,DOCID,CCNODOC ,MAX(CXC305.CCFCANJE ) FPAGO          '
         + '                    FROM CXC305 GROUP BY CIAID,CLIEID,DOCID,CCNODOC  ) AS XX ON  (CXC301.CIAID = XX.CIAID '
         + '                                           AND  CXC301.CLIEID = XX.CLIEID                                 '
         + '                                           AND CXC301.DOCID = XX.DOCID                                    '
         + '                                           AND CXC301.CCNODOC = XX.CCNODOC)                               ';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin //falta
         xSQL := ' SELECT CXC301.TDIARID, CXC301.CCNOREG, TGE110.DOCABR,CCESTADO ,                      '
            + '      CXC301.CCSERIE,CXC301.CCNODOC,CXC301.CLIEID,CCMTOORI,                         '
            + '      CXC301.TMONID,CXC301.DOCID,CCSALORI,CCFEMIS,CCFVCMTO,                         '
            + '      TGE204.CLIEID,CXC301.CLIEDES,CXC301.CCTCAMPR, XX.FPAGO,                       '
            + '      (DECODE (CXC301.TMONID,' + '''' + DMCXC.wTMonLoc + '''' + ', CXC301.CCMTOORI/' + FloatToStr(xxTCam)
            + '      , CXC301.CCMTOORI ) ) AS MTOEXT,                                          '
            + '      (DECODE(CXC301.TMONID, ' + '''' + DMCXC.wTMonExt + '''' + ', CXC301.CCMTOORI*CXC301.CCTCAMPR , CXC301.CCMTOORI ) ) AS MTOLOC'
            + '  FROM CXC301,TGE110,TGE204,(SELECT CIAID,CLIEID,DOCID,CCNODOC ,MAX(CXC305.CCFCANJE ) FPAGO          '
            + '                    FROM CXC305 GROUP BY CIAID,CLIEID,DOCID,CCNODOC  ) XX                                                                       '
            + ' WHERE (CXC301.DOCID = TGE110.DOCID AND TGE110.DOCMOD = ''CXC'') AND '
            + ' (CXC301.CLIEID = TGE204.CLIEID(+) AND CXC301.CLAUXID = TGE204.CLAUXID(+)) '
            + ' AND (CXC301.CIAID = XX.CIAID(+) '
            + '                                           AND  CXC301.CLIEID = XX.CLIEID(+)                                 '
            + '                                           AND CXC301.DOCID = XX.DOCID(+)                                    '
            + '                                           AND CXC301.CCNODOC = XX.CCNODOC(+))                               ';

      End;

   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
      xWhere := '  WHERE CXC301.CIAID =''' + dblcCia.Text + ''' '
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
         xWhere := '  AND CXC301.CIAID =''' + dblcCia.Text + ''' ';

   If rbProvEscoger.Checked Then
   Begin
      Bandera := False;
      xAdic := '';
      xWhere := xWhere + ' AND CXC301.CLIEID IN (''';
      For i := 0 To lvTipoClie.items.Count - 1 Do
      Begin
         If lvTipoClie.items[i].Checked Then
         Begin
            Bandera := True;
            xAdic := xAdic + lvTipoClie.items[i].Caption + ''',''';
         End;
      End;
      xAdic := copy(xAdic, 1, length(xAdic) - 2) + ')';
      xWhere := xWhere + xAdic;
      If Not Bandera Then
         Raise Exception.create('Seleccione Cliente');
   End;
 //CIM 20/09/2002
   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then

      xWhere := xWhere + ' AND CCFEMIS >=''' + FechaDB2(dbdtpFReg1.date) + ''' ' +
         ' AND CCFEMIS <=''' + FechaDB2(dbdtpFReg2.date) + ''' '
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
         xWhere := xWhere + ' AND CCFCMPRB >=''' + FechaDB2(dbdtpFReg1.date) + ''' ' +
            ' AND CCFCMPRB <=''' + FechaDB2(dbdtpFReg2.date) + ''' ';

   xsql := xSQL + xWhere;
   Case cboOrdenar.ItemIndex Of
      0:
         Begin
            xSQL := xSQL + ' ORDER BY CXC301.CLIEID'
         End;
      1:
         Begin
            xSQL := xSQL + ' ORDER BY CXC301.CCFEMIS'
         End;
   End;

   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.DataRequest(xSQL);
   DMCXC.cdsReporte.Open;
   pplblEmpresa.text := edtCia.text;
   ppLblTCam.text := edtTCam.text;
   If DMCXC.cdsReporte.RecordCount = 0 Then
      Raise exception.create('No hay Datos Para el Rango Seleccionado');
   ppdbFuente.DataSource := DMCXC.dsReporte;
   ppReporte.Print;
   ppdbFuente.DataSource := Nil;
End;

Procedure TFCRepMovClie.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   action := cafree;
End;

Procedure TFCRepMovClie.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

End.

