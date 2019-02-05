Unit Cxc315;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdblook, Wwdbdlg, ExtCtrls, DB, ppCache, ppDB,
   ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
   ppCtrls, ppVar, ppPrnabl, ppStrtch, ppSubRpt, wwdbdatetimepicker;

Type
   TFMovCtaCte = Class(TForm)
      Label3: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label1: TLabel;
      dblcZona: TwwDBLookupCombo;
      edtZona: TEdit;
      bbtnOK: TBitBtn;
      bbtnCancela: TBitBtn;
      rgZona: TRadioGroup;
      ppReport1: TppReport;
      ppDesigner1: TppDesigner;
      ppdbReporte: TppDBPipeline;
      ppdbSubReporte: TppDBPipeline;
      GroupBox1: TGroupBox;
      dbdtpInicio: TwwDBDateTimePicker;
      Label2: TLabel;
      Label4: TLabel;
      dbdtpFin: TwwDBDateTimePicker;
      dblcZona1: TwwDBLookupComboDlg;
      edtZona1: TEdit;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      pplblCia: TppLabel;
      ppLabel15: TppLabel;
      ppLabel14: TppLabel;
      ppLabel17: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel18: TppLabel;
      ppLabel13: TppLabel;
      ppLabel8: TppLabel;
      ppLabel22: TppLabel;
      ppLabel25: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText11: TppDBText;
      ppDBCalc1: TppDBCalc;
      ppDBText17: TppDBText;
      ppDBText10: TppDBText;
      ppDBText24: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppLabel16: TppLabel;
      ppDBText1: TppDBText;
      ppDBText4: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppLabel19: TppLabel;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText19: TppDBText;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppLabel21: TppLabel;
      ppDBCalc3: TppDBCalc;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppDetailBand2: TppDetailBand;
      ppDBText16: TppDBText;
      ppDBText18: TppDBText;
      ppLabel20: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppGroupFooterBand3: TppGroupFooterBand;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcZonaExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcZona1DropDown(Sender: TObject);
      Procedure dblcZona1Exit(Sender: TObject);
      Procedure rgZonaClick(Sender: TObject);
      Procedure bbtnOKClick(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FMovCtaCte: TFMovCtaCte;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFMovCtaCte.dblcCiaExit(Sender: TObject);
Begin
   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
      exit;
   End;
End;

Procedure TFMovCtaCte.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFMovCtaCte.dblcZonaExit(Sender: TObject);
Var
   sSQL: String;
Begin
   If bbtnCancela.Focused Then Exit;

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

Procedure TFMovCtaCte.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFMovCtaCte.dblcZona1DropDown(Sender: TObject);
Begin
   DM1.cdsZona1.IndexFieldNames := 'ZVTADES';
End;

Procedure TFMovCtaCte.dblcZona1Exit(Sender: TObject);
Begin
   If bbtnCancela.focused Then exit;
   If rgZona.Focused Then exit;

   edtZona1.text := BuscaQry('dspTGE', 'FAC106', 'ZVTADES', 'ZVTAID=' + QuotedStr(dblcZona1.text) + ' AND TVTAID=' + Quotedstr(dblcZona.text), 'ZVTADES');
   If edtZona1.text = '' Then
      Raise Exception.Create('Ingrese Zona');
End;

Procedure TFMovCtaCte.rgZonaClick(Sender: TObject);
Begin
   If rgZona.itemindex = 0 Then
   Begin
      dblcZona1.Enabled := True;
      dblcZona1.SetFocus;
   End
   Else
   Begin
      dblcZona1.text := '';
      dblcZona1.Enabled := False;
   End;
End;

Procedure TFMovCtaCte.bbtnOKClick(Sender: TObject);
Var
   sSQL: String;
   x10: integer;
Begin
   sSQL := ' SELECT ''NOMBRE  DEL  COBRADOR'' CODES, 0 ITEM, CXC301.CLIEID,CXC301.CLIERUC,CXC301.CLIEDES,CXC301.TVTAID,CXC301.ZVTAID,''ABREVIATURAABREVIATURA'' ABR, ' +
      ' DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,0 EDAD,CASE WHEN COALESCE(CCFLAGPROT,'''')=''S'' THEN ''PROT'' ELSE '''' END CCFLAGPROT, ' +
      DM1.wReplacCeros + '(CCMTOEXT,0) CCMTOEXT, ' +
      DM1.wReplacCeros + '(CCPAGEXT,0) CCPAGEXT, ' +
      DM1.wReplacCeros + '(CCMTOEXT,0) - ' + DM1.wReplacCeros + '(CCPAGEXT,0) CCSALEXT, ' +
      ' SITID,UBIID,CCNLETBCO,CXC105.UBICAABR,CXC104.SITUAABR,FAC106.ZVTADES,C.CLIEDIRLEG,C.CLIETELF,C.CLIECREMAX,''CC: ''||TGE166.CONDPDES CONDPDES, ''S: ''||SITCLIEDES SITCLIEDES ' +
      ' FROM CXC301 ' +
      ' LEFT JOIN CXC105 ON CXC105.UBICAID=CXC301.UBIID ' +
      ' LEFT JOIN CXC104 ON CXC104.SITUAID=CXC301.SITID ' +
      ' LEFT JOIN FAC106 ON FAC106.TVTAID=CXC301.TVTAID AND FAC106.ZVTAID=CXC301.ZVTAID ' +
      ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID ' +
      ' LEFT JOIN TGE166 ON TGE166.CIAID=C.CIAID AND TGE166.CIAID=CXC301.CIAID AND TGE166.CONDPID=C.CLIECOND ' +
      ' LEFT JOIN CXC111 ON CXC111.SITCLIEID=C.SITCLIEID ' +
      ' WHERE CXC301.CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID<>' + QuotedStr(DM1.wsAnt) + ' AND (CCESTADO=''P'' OR CCESTADO=''I'') AND CXC301.TVTAID=' + QuotedStr(dblcZona.text);
   If (rgZona.itemindex = 0) And (dblcZona1.text <> '') Then
      sSQL := sSQL + ' AND CXC301.ZVTAID=' + QuotedStr(dblcZona1.text);
   sSQL := sSQL + ' AND CCFVCMTO>=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpInicio.Date) + '''' + ') AND CCFVCMTO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFin.Date) + '''' + ')';

   sSQL := sSQL + ' UNION ALL ' +
      ' SELECT ''NOMBRE  DEL  COBRADOR'' CODES,0 ITEM, CXC301.CLIEID,CXC301.CLIERUC,CXC301.CLIEDES,CXC301.TVTAID,CXC301.ZVTAID,''ABREVIATURAABREVIATURA'' ABR,  DOCID,CCSERIE,CCNODOC,CCFEMIS, ' +
      ' CCFVCMTO,0 EDAD,CCFLAGPROT, COALESCE(CCMTOEXT,0) CCMTOEXT, COALESCE(CCPAGEXT,0) CCPAGEXT, COALESCE(CCMTOEXT,0) - COALESCE(CCPAGEXT,0) CCSALEXT,  SITID,UBIID,CCNLETBCO,'''' UBICAABR,'''' SITUAABR,FAC106.ZVTADES,C.CLIEDIRLEG, ' +
      ' C.CLIETELF,C.CLIECREMAX,''CC: ''||TGE166.CONDPDES CONDPDES, ''S: ''||SITCLIEDES SITCLIEDES ' +
      ' FROM CXC301 ' +
      ' LEFT JOIN FAC106 ON FAC106.TVTAID=CXC301.TVTAID AND FAC106.ZVTAID=CXC301.ZVTAID ' +
      ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID ' +
      ' LEFT JOIN TGE166 ON TGE166.CIAID=C.CIAID AND TGE166.CIAID=CXC301.CIAID AND TGE166.CONDPID=C.CLIECOND ' +
      ' LEFT JOIN CXC111 ON CXC111.SITCLIEID=C.SITCLIEID ' +
      ' WHERE CXC301.CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) + ' AND CCFEMIS<=''01/03/2002'' AND CCESTADO=''P'' ';
   sSQL := sSQL + ' AND CXC301.ZVTAID=' + QuotedStr(dblcZona1.text);
   sSQL := sSQL + ' AND CCFVCMTO>=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpInicio.Date) + '''' + ') AND CCFVCMTO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFin.Date) + '''' + ')';

   sSQL := sSQL + ' ORDER BY ZVTAID,CLIEID,DOCID,CCSERIE,CCNODOC';

   DM1.cdsQry4.MasterSource := Nil;
   DM1.cdsQry4.IndexFieldNames := '';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;

   sSQL := ' SELECT ZVTAID,CLIEID,DOCID,''ABREVIATURAABR'' ABR, SUM(CCMTOEXT) CCMTOEXT, SUM(CCPAGEXT) CCPAGEXT, SUM(CCMTOEXT) - SUM(CCPAGEXT) CCSALEXT ' +
      ' FROM CXC301 ' +
      ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID<>' + QuotedStr(DM1.wsAnt) + ' AND (CCESTADO=''P'' OR CCESTADO=''I'') AND CXC301.TVTAID=' + QuotedStr(dblcZona.text);
   If (rgZona.itemindex = 0) And (dblcZona1.text <> '') Then
      sSQL := sSQL + ' AND CXC301.ZVTAID=' + QuotedStr(dblcZona1.text);
   sSQL := sSQL + ' AND CCFVCMTO>=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpInicio.Date) + '''' + ') AND CCFVCMTO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFin.Date) + '''' + ')';
   sSQL := sSQL + ' GROUP BY ZVTAID,CLIEID,DOCID ';
   sSQL := sSQL + ' UNION ALL ';
   sSQL := sSQL + ' SELECT ZVTAID,CLIEID,DOCID,''ABREVIATURAABR'' ABR, SUM(CCMTOEXT) CCMTOEXT, SUM(CCPAGEXT) CCPAGEXT, SUM(CCMTOEXT) - SUM(CCPAGEXT) CCSALEXT ' +
      ' FROM CXC301 ' +
      ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) + ' AND CCFEMIS<=''01/03/2002''  AND (CCESTADO=''P'') AND CXC301.TVTAID=' + QuotedStr(dblcZona.text);
   If (rgZona.itemindex = 0) And (dblcZona1.text <> '') Then
      sSQL := sSQL + ' AND CXC301.ZVTAID=' + QuotedStr(dblcZona1.text);
   sSQL := sSQL + ' AND CCFVCMTO>=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpInicio.Date) + '''' + ') AND CCFVCMTO<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFin.Date) + '''' + ')';
   sSQL := sSQL + ' GROUP BY ZVTAID,CLIEID,DOCID ';
   sSQL := sSQL + ' ORDER BY ZVTAID,CLIEID,DOCID';

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(sSQL);
   DM1.cdsQry4.Open;

   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest('SELECT * FROM TGE110');
   DM1.cdsTDoc.Open;
   If DM1.cdsTDoc.IndexFieldNames <> 'DOCID' Then
      DM1.cdsTDoc.IndexFieldNames := 'DOCID';

   DM1.cdsTDoc.Filter := ' DOCMOD=''CXC'' ';
   DM1.cdsTDoc.Filtered := True;
//   DM1.cdsReporte.IndexFieldNames:='ZVTAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DM1.cdsReporte.IndexFieldNames := 'ZVTAID;CLIEDES;CLIEID';

   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.EOF Do
   Begin
      DM1.cdsTDoc.Setkey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString := DM1.cdsReporte.FieldByName('DOCID').AsString;
      DM1.cdsReporte.Edit;
      If DM1.cdsTDoc.Gotokey Then
      Begin
         DM1.cdsReporte.FieldByName('ITEM').AsInteger := DM1.cdsReporte.Recno;
         DM1.cdsReporte.FieldByName('ABR').AsString := DM1.cdsTDoc.FieldByName('DOCABR').AsString;
         If DM1.cdsTDoc.FieldByName('DOCRESTA').AsString = 'S' Then
         Begin
            DM1.cdsReporte.FieldByName('CCMTOEXT').AsFloat := (-1) * DM1.cdsReporte.FieldByName('CCMTOEXT').AsFloat;
            DM1.cdsReporte.FieldByName('CCPAGEXT').AsFloat := (-1) * DM1.cdsReporte.FieldByName('CCPAGEXT').AsFloat;
            DM1.cdsReporte.FieldByName('CCSALEXT').AsFloat := (-1) * DM1.cdsReporte.FieldByName('CCSALEXT').AsFloat;
         End;
      End
      Else
         DM1.cdsReporte.FieldByName('ABR').AsString := 'N.A.';
      sSQL := ' DOCID=' + QuotedStr(DM1.cdsReporte.FieldByName('DOCID').AsString) +
         ' AND CCSERIE=' + QuotedStr(DM1.cdsReporte.FieldByName('CCSERIE').AsString) +
         ' AND CCNODOC=' + QuotedStr(DM1.cdsReporte.FieldByName('CCNODOC').AsString) +
         ' AND FLAGVAR=''.''';
      DM1.cdsReporte.FieldByName('CODES').AsString := DM1.BuscaQry2('dspTGE', 'CXC317', 'COID', sSQL, 'COID');
      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
   End;

   DM1.cdsQry4.First;
   While Not DM1.cdsQry4.EOF Do
   Begin
      DM1.cdsTDoc.Setkey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString := DM1.cdsQry4.FieldByName('DOCID').AsString;
      DM1.cdsQry4.Edit;
      If DM1.cdsTDoc.Gotokey Then
      Begin
         DM1.cdsQry4.FieldByName('ABR').AsString := DM1.cdsTDoc.FieldByName('DOCABR').AsString;
         If DM1.cdsTDoc.FieldByName('DOCRESTA').AsString = 'S' Then
         Begin
            DM1.cdsQry4.FieldByName('CCMTOEXT').AsFloat := (-1) * DM1.cdsQry4.FieldByName('CCMTOEXT').AsFloat;
            DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat := (-1) * DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat;
            DM1.cdsQry4.FieldByName('CCSALEXT').AsFloat := (-1) * DM1.cdsQry4.FieldByName('CCSALEXT').AsFloat;
         End;
      End
      Else
         DM1.cdsQry4.FieldByName('ABR').AsString := 'N.A.';
      DM1.cdsQry4.Post;
      DM1.cdsQry4.Next;
   End;

   DM1.cdsQry4.IndexFieldNames := 'ZVTAID;CLIEID';
   DM1.cdsQry4.MasterFields := 'ZVTAID;CLIEID';
   DM1.cdsQry4.MasterSource := DM1.dsReporte;

   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      ppdbReporte.DataSource := DM1.dsReporte;
      ppdbSubReporte.DataSource := DM1.dsQry4;

      ppReport1.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CtaCteZona.Rtm';
      ppReport1.template.LoadFromFile;
      pplblCia.caption := edtCia.text;
      ppReport1.Print;
    //ppDesigner1.Show;
      x10 := Self.ComponentCount - 1;
      While x10 >= 0 Do
      Begin
         If Self.Components[x10].ClassName = 'TppGroup' Then
         Begin
            Self.Components[x10].Free;
         End;
         x10 := x10 - 1;
      End;
   End
   Else
   Begin
      Raise Exception.Create('No existen Registros que Mostrar');
   End;
End;

Procedure TFMovCtaCte.bbtnCancelaClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFMovCtaCte.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsQry4.MasterSource := Nil;
   DM1.cdsQry4.IndexFieldNames := '';
End;

Procedure TFMovCtaCte.FormShow(Sender: TObject);
Begin
{	 dbdtpInicio.Date:=DateS;
  dbdtpFin.Date:=DateS;}
End;

End.

