Unit CXC310;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ppCache, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppBands, Buttons, wwdbdatetimepicker, ExtCtrls,
   ppCtrls, ppVar, ppPrnabl, wwdblook;

Type
   TFDocVence = Class(TForm)
      ppReporte: TppReport;
      ppDesigner1: TppDesigner;
      ppdbReporte: TppDBPipeline;
      pnlDetalle: TPanel;
      bbtnOK: TBitBtn;
      Label1: TLabel;
      dbdtpFecha: TwwDBDateTimePicker;
      bbtnCancela: TBitBtn;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      Label11: TLabel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      pplblTitulo: TppLabel;
      pplblCia: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLine2: TppLine;
      pplblFecha: TppLabel;
      pplblObservacion: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel5: TppLabel;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText1: TppDBText;
      ppLine1: TppLine;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppLabel6: TppLabel;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppDBText9: TppDBText;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppLine3: TppLine;
      Procedure bbtnOKClick(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
   Private
    { Private declarations }
      Procedure CalculaTotales;
   Public
    { Public declarations }
   End;

Var
   FDocVence: TFDocVence;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFDocVence.CalculaTotales;
Var
   xLocLim, xLocPro, xLocOtr, xExtLim, xExtPro, xExtOtr: double;
   xMtoLim, xMtoPro, xMtoOtr: double;
Begin

   xMtoLim := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'MTOLIM' + ')', '');
   xMtoPro := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'MTOPRO' + ')', '');
   xMtoOtr := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'MTOOTR' + ')', '');
{  xExtLim:=OperClientDataSet( DM1.cdsReporte,'SUM('+'EXTLIM'+')','');
  xExtPro:=OperClientDataSet( DM1.cdsReporte,'SUM('+'EXTPRO'+')','');
  xExtOtr:=OperClientDataSet( DM1.cdsReporte,'SUM('+'EXTOTR'+')','');}

   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.EOF Do
   Begin
      DM1.cdsReporte.Edit;
      If xMtoLim <> 0 Then
         DM1.cdsReporte.FieldByName('PORMTOLIM').AsFloat := FRound(DM1.cdsReporte.FieldByName('MTOLIM').AsFloat / xMtoLim * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('PORMTOLIM').AsFloat := 0;

      If xMtoPro <> 0 Then
         DM1.cdsReporte.FieldByName('PORMTOPRO').AsFloat := FRound(DM1.cdsReporte.FieldByName('MTOPRO').AsFloat / xMtoPro * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('PORMTOPRO').AsFloat := 0;

      If xMtoOtr <> 0 Then
         DM1.cdsReporte.FieldByName('PORMTOOTR').AsFloat := FRound(DM1.cdsReporte.FieldByName('MTOOTR').AsFloat / xMtoOtr * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('PORMTOOTR').AsFloat := 0;

{    if xExtLim<>0 then
      DM1.cdsReporte.FieldByName('POREXTLIM').AsFloat:=FRound(DM1.cdsReporte.FieldByName('EXTLIM').AsFloat/xExtLim*100,15,3)
    else
      DM1.cdsReporte.FieldByName('POREXTLIM').AsFloat:=0;

    if xExtPro<>0 then
      DM1.cdsReporte.FieldByName('POREXTPRO').AsFloat:=FRound(DM1.cdsReporte.FieldByName('EXTPRO').AsFloat/xExtPro*100,15,3)
    else
      DM1.cdsReporte.FieldByName('POREXTPRO').AsFloat:=0;

    if xExtOtr<>0 then
      DM1.cdsReporte.FieldByName('POREXTOTR').AsFloat:=FRound(DM1.cdsReporte.FieldByName('EXTOTR').AsFloat/xExtOtr*100,15,3)
    else
      DM1.cdsReporte.FieldByName('POREXTOTR').AsFloat:=0;}

      DM1.cdsReporte.FieldByName('TOTMTO').AsFloat := DM1.cdsReporte.FieldByName('MTOLIM').AsFloat + DM1.cdsReporte.FieldByName('MTOPRO').AsFloat;
      DM1.cdsReporte.FieldByName('TOTPORMTO').AsFloat := FRound(DM1.cdsReporte.FieldByName('TOTMTO').AsFloat / (xMtoLim + xMtoPro) * 100, 15, 3);

{    DM1.cdsReporte.FieldByName('TOTEXT').AsFloat:=DM1.cdsReporte.FieldByName('EXTLIM').AsFloat+DM1.cdsReporte.FieldByName('EXTPRO').AsFloat;
    DM1.cdsReporte.FieldByName('TOTPOREXT').AsFloat:=FRound(DM1.cdsReporte.FieldByName('TOTEXT').AsFloat/(xExtLim+xExtPro)*100,15,3);}

      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
   End;

End;

Procedure TFDocVence.bbtnOKClick(Sender: TObject);
Var
   sVeid, sSQL, sCorporativa, sBco1, sBco2, sBco3: String;
   sSitJud, sSitIncob: String;
   sSitAceptada, sSitVencida: String;

   x10: integer;
Begin
   Screen.Cursor := crHourGlass;

   If length(dblcCia.Text) = 0 Then
      Raise exception.Create('Ingrese Compañia');

   If dbdtpFecha.Date = 0 Then
      Raise exception.Create('Ingrese Fecha');

   If length(dblcTMon.Text) = 0 Then
      Raise exception.Create('Ingrese Moneda');

   sCorporativa := '03';

   sSitJud := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5C');
   sSitIncob := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '6C');

   sSitAceptada := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5');
   sSitVencida := DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '2C');

   sVeid := DisplayDescrip('CXC203', 'VEID', 'VEFCORP', 'S');

   sSQL := ' SELECT DOCDES,CLIEABR,DOCID,CLIEID,PROT,CIAID,SUM(MTOLIM) MTOLIM,0.00 PORMTOLIM, SUM(MTOPRO) MTOPRO,0.000 PORMTOPRO, ' +
      ' SUM(MTOOTR) MTOOTR, 0.000 PORMTOOTR, ' +
      ' 0.00 TOTMTO,0.00 TOTPORMTO, ' +
      ' 0.00 TOTMTOOTR,0.00 TOTPORMTOOTR ' +
      ' FROM ( ';

  //LETRAS TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'' '' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' +
      ' INNER JOIN CXC105 ON CXC301.UBIID=CXC105.UBICAID AND CXC105.BANCO<>''S'' ' +
      ' INNER JOIN CXC104 ON (CXC301.SITID=CXC104.SITUAID AND COALESCE(CXC104.FLAGPROTESTO,'''')<>''S'' )' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0  ' +
      ' OR  ' + DM1.wReplacCeros + '(CCSALEXT,0)>0 )   ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsLet) +
      ' AND (SITID<>' + Quotedstr(sSitIncob) +
      ' AND  SITID<>' + Quotedstr(sSitJud) + ')' +
      ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''I'' ) ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';
//                 ' AND (CXC301.CCESTADO=''P''  ) '+
//                 ' AND UBIID='+Quotedstr(DM1.wsOfi)+

  //LETRAS CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' +
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID)' +
      ' INNER JOIN CXC105 ON CXC301.UBIID=CXC105.UBICAID AND CXC105.BANCO<>''S'' ' +
      ' INNER JOIN CXC104 ON (CXC301.SITID=CXC104.SITUAID AND COALESCE(CXC104.FLAGPROTESTO,'''')<>''S'' )' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0  ' +
      ' OR  ' + DM1.wReplacCeros + '(CCSALEXT,0)>0 )   ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsLet) +
      ' AND (SITID<>' + Quotedstr(sSitIncob) +
      ' AND  SITID<>' + Quotedstr(sSitJud) + ')' +
      ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''I'' ) ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';
//                 ' AND (CXC301.CCESTADO=''P''  ) '+
//                 ' AND UBIID='+Quotedstr(DM1.wsOfi)+

  //NOTA DE CREDITO TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'''' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //NOTA CREDITO
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsNCre) +
      ' AND CXC301.CCESTADO=''P''  ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //NOTA DE CREDITO CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //NOTA CREDITO
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR  ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsNCre) +
      ' AND CXC301.CCESTADO=''P''  ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';

  //NOTA DEBITO TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'' '' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //NOTA DEBITO
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsNDe) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //NOTA DEBITO CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //NOTA DEBITO
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsNDe) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';

  //FACTURA TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'''' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //NOTA DEBITO
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0 )' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsFac) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //FACTURA CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //NOTA DEBITO
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR  ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsFac) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';

  //BOLETA TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'''' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //BOLETA
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsBol) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //BOLETA CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //BOLETA
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsBol) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';

  //LETRAS PROTESTADAS TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''S'' PROT, CXC301.DOCID,'''' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';

   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  ' +
      ' INNER JOIN CXC104 ON (CXC301.SITID=CXC104.SITUAID AND COALESCE(CXC104.FLAGPROTESTO,'''')=''S'' )' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) + //05 letra
      ' AND  DATE(DAYS(CCFVCMTO)) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.date) + ''' )' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsLet) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //LETRAS PROTESTADAS CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''S'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';

   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //BOLETA
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' INNER JOIN CXC104 ON (CXC301.SITID=CXC104.SITUAID AND COALESCE(CXC104.FLAGPROTESTO,'''')=''S'' )' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) + //05 letra
      ' AND  DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.date) + ''' ) ' +
//                 ' AND '+DM1.wReplacCeros+'(CCFLAGPROT,''NULO'')=''S'' '+
   ' AND CXC301.DOCID=' + QuotedStr(DM1.wsLet) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';

  //ANTICIPOS TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'''' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND CXC301.CCFEMIS <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0 )' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsAnt) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //ANTICIPOS CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC)*-1 ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT)*-1 ELSE 0 END MTOOTR  ';

   sSQL := sSQL + ' FROM CXC301  LEFT JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' +
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) +
      ' AND CXC301.CCFEMIS <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.Date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND CXC301.DOCID=' + QuotedStr(DM1.wsAnt) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID ' +
      ' UNION ';

  //CHEQUES TERCEROS
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,'''' CLIEID,''TERCEROS'' CLIEABR,CIAID,TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR ';

   sSQL := sSQL + ' FROM CXC301  INNER JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //CHEQUES
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) + //05 letra
      ' AND  DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND ' + DM1.wReplacCeros + '(TCANJEID,''NULO'')=''DE'' AND CXC301.DOCID=' + QuotedStr(DM1.wsChe) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')<>' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CIAID,TVTAID ' +
      ' UNION ';

  //CHEQUES CORPORATIVA
   sSQL := sSQL + ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID, ';
   If dblcTMon.text = DM1.wTMonLoc Then
      sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOLIM, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOPRO, ' +
         ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALLOC) ELSE 0 END MTOOTR, '
   Else
      If dblcTMon.text = DM1.wTMonExt Then
         sSQL := sSQL + ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wLima) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOLIM, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(DM1.wProv) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOPRO, ' +
            ' CASE WHEN CXC301.TVTAID=' + QuotedStr(sCorporativa) + ' THEN SUM(CCSALEXT) ELSE 0 END MTOOTR ';

   sSQL := sSQL + ' FROM CXC301  INNER JOIN TGE110 ON (CXC301.DOCID=TGE110.DOCID)' + //CHEQUES
      ' LEFT JOIN TGE204 ON(TGE204.CIAID=CXC301.CIAID AND TGE204.CLIEID=CXC301.CLIEID) ' +
      ' WHERE CXC301.CIAID=' + Quotedstr(dblcCia.text) + //05 letra
      ' AND  DATE(DAYS(CCFVCMTO)+TGE110.GRACIAVCTO) <= ' + DM1.wRepFuncDate + '''' + FormatDateTime(DM1.wFormatFecha, dbdtpFecha.date) +
      ''' ) AND (' + DM1.wReplacCeros + '(CCSALLOC,0)>0 ' +
      ' OR ' + DM1.wReplacCeros + '(CCSALEXT,0)>0) ' +
      ' AND ' + DM1.wReplacCeros + '(TCANJEID,''NULO'')=''DE'' AND CXC301.DOCID=' + QuotedStr(DM1.wsChe) +
      ' AND CXC301.CCESTADO=''P'' ' +
      ' AND COALESCE(CXC301.VEID,'''')=' + Quotedstr(sVeid) +
      ' GROUP BY CXC301.DOCID,CXC301.CLIEID,TGE204.CLIEABR,CXC301.CIAID,CXC301.TVTAID )X' +
      ' GROUP BY DOCDES,CLIEABR,DOCID,CLIEID,PROT,CIAID ';

   DM1.cdsReporte.close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount = 0 Then
      Raise exception.Create('No se encontraron datos para imprimir');

   DM1.cdsReporte.IndexFieldNames := 'DOCID;CIAID;PROT';
   DM1.cdsReporte.First;
   DM1.cdsTDoc.Open;
   DM1.cdsTDoc.Filter := 'DOCMOD=''CXC'' ';
   DM1.cdsTDoc.Filtered := true;
   If DM1.cdsTDoc.IndexFieldNames <> 'DOCID' Then
      DM1.cdsTDoc.IndexFieldNames := 'DOCID';
   While Not DM1.cdsReporte.EOF Do
   Begin
      DM1.cdsTDoc.Setkey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString := DM1.cdsReporte.FieldByName('DOCID').AsString;
      DM1.cdsReporte.Edit;
      If DM1.cdsTDoc.Gotokey Then
      Begin
         DM1.cdsReporte.FieldByName('DOCDES').AsString := DM1.cdsTDoc.FieldByName('DOCDES').AsString;
         If DM1.cdsReporte.FieldByName('PROT').AsString = 'S' Then
         Begin
            DM1.cdsReporte.FieldByName('DOCDES').AsString := DM1.cdsReporte.FieldByName('DOCDES').AsString + ' PROTESTADAS';
         End;
      End
      Else
      Begin
         DM1.cdsReporte.FieldByName('DOCDES').AsString := 'N.A.';
      End;
      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
   End;
   CalculaTotales;

   ppdbReporte.DataSource := DM1.dsReporte;
   ppReporte.template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CarteraVencida.rtm';
   ppReporte.template.LoadFromFile;
   pplblTitulo.caption := 'INFORME GERENCIAL DE CARTERA VENCIDA ' + edtTMon.text;
   pplblObservacion.Caption := 'No Incluye Letras Incobrables y Judiciales';
   pplblFecha.Caption := ' AL: ' + DateToStr(dbdtpFecha.date);
   pplblCia.Caption := edtCia.Text;

   Screen.Cursor := crDefault;
//  ppDesigner1.Show;
   ppReporte.Print;
   ppReporte.Stop;
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

Procedure TFDocVence.bbtnCancelaClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFDocVence.FormActivate(Sender: TObject);
Begin
   dbdtpFecha.date := DateS;
End;

Procedure TFDocVence.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFDocVence.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsReporte.IndexFieldNames := '';
End;

Procedure TFDocVence.dblcCiaExit(Sender: TObject);
Begin
   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
End;

Procedure TFDocVence.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   xWhere := 'TMONID=' + '''' + dblcTMon.Text + '''';
   edtTMon.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

End;

End.

