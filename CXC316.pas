Unit CXC316;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ppDB, ppDBPipe, ppEndUsr, ppBands, ppReport, ppStrtch, ppSubRpt, ppClass,
   ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, Wwdbdlg,
   wwdbdatetimepicker, StdCtrls, ExtCtrls, Buttons, wwdblook, DB, Grids,
   DBGrids;

Type
   TFConsistencias = Class(TForm)
      Label3: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      bbtnOK: TBitBtn;
      bbtnCancela: TBitBtn;
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label4: TLabel;
      dbdtpInicio: TwwDBDateTimePicker;
      dbdtpFin: TwwDBDateTimePicker;
      ppReport1: TppReport;
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
      ppDesigner1: TppDesigner;
      ppdbReporte: TppDBPipeline;
      ppdbSubReporte: TppDBPipeline;
      DBGrid1: TDBGrid;
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormShow(Sender: TObject);
      Procedure bbtnOKClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FConsistencias: TFConsistencias;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFConsistencias.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFConsistencias.dblcCiaExit(Sender: TObject);
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

Procedure TFConsistencias.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
{ DM1.cdsReporte.IndexFieldNames:='';
 DM1.cdsQry4.MasterSource:=NIL;
 DM1.cdsQry4.IndexFieldNames:='';}
End;

Procedure TFConsistencias.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFConsistencias.FormShow(Sender: TObject);
Begin
   dbdtpInicio.Date := DateS;
   dbdtpFin.Date := DateS;
End;

Procedure TFConsistencias.bbtnOKClick(Sender: TObject);
Var
   sCon, sSQL: String;
Begin
   sCon := BuscaQry('dspTGE', 'CXC206', 'COID', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND COCONS=''S''', 'COID');
   sSQL := ' SELECT C.CLAUXID,C.CIAID,DOCID,CCSERIE,CCNODOC,C.CLIEID,C.LICOID,FPAGODES,LICONOCHQ,C.TVTAID,L.CCFEMIS, ' +
      ' CASE WHEN DOCID=' + QuotedStr(DM1.wsLet) + ' THEN ''S'' ELSE ''N'' END LETPROT,''               '' CLIERUC, ' +
      ' ''                                   '' CLIEDES,''               '' DOCDES, ''               '' TVTADES, ' +
      ' CASE WHEN C.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' AND TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN ROUND(C.LICOMTOABOLOC,2) ELSE ROUND(C.LICOMTOABOEXT*C.LICOTCAMBL,2) END  PROV, ' +
      ' CASE WHEN C.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' AND TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN ROUND(C.LICOMTOABOLOC,2) ELSE ROUND(C.LICOMTOABOEXT*C.LICOTCAMB,2) END PAGO, ' +
      ' CASE WHEN C.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' AND TMONIDPAGO=' + QuotedStr(DM1.wTMonLoc) + ' THEN 0 ELSE ROUND((C.LICOMTOABOEXT*LICOTCAMBL)-(C.LICOMTOABOEXT*C.LICOTCAMB),2) END DIFE ' +
      ' FROM CXC320 C ' +
      ' LEFT JOIN CXC318 L ON L.CIAID=C.CIAID AND L.LICOID=C.LICOID ' +
      ' WHERE L.CIAID=' + QuotedStr(dblcCia.text) + ' AND L.COID<>' + QuotedStr(sCon) +
      ' AND L.CCFEMIS>=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpInicio.Date) + '''' + ' AND L.CCFEMIS<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFin.Date) + '''';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;

   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.EOF Do
   Begin
      DM1.cdsReporte.Edit;
      DM1.cdsReporte.FieldByName('CLIERUC').AsString := BuscaQry('dspTGE', 'TGE204', 'CLIERUC,CLIEDES', 'CLAUXID=' + QuotedStr(DM1.cdsReporte.FieldByName('CLAUXID').AsString) + ' AND CLIEID=' + QuotedStr(DM1.cdsReporte.FieldByName('CLIEID').AsString), 'CLIERUC');
      DM1.cdsReporte.FieldByName('CLIEDES').AsString := DM1.cdsQry.FieldByName('CLIEDES').AsString;
      DM1.cdsReporte.FieldByName('DOCDES').AsString := BuscaQry('dspTGE', 'TGE110', 'DOCABR', 'DOCID=' + QuotedStr(DM1.cdsReporte.FieldByName('DOCID').AsString) + ' AND DOCMOD=' + QuotedStr('CXC'), 'DOCABR');
      DM1.cdsReporte.FieldByName('TVTADES').AsString := BuscaQry('dspTGE', 'FAC105', 'TVTADES', 'TVTAID=' + QuotedStr(DM1.cdsReporte.FieldByName('TVTAID').AsString), 'TVTADES');

      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
   End;
End;

End.

