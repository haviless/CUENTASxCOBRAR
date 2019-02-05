Unit Cxc313;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ppCache, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppBands, Buttons, wwdbdatetimepicker, ExtCtrls,
   ppCtrls, ppVar, ppPrnabl, wwdblook, Wwdbdlg;

Type
   TFDocCobra = Class(TForm)
      ppReporte: TppReport;
      ppDesigner1: TppDesigner;
      ppdbReporte: TppDBPipeline;
      pnlDetalle: TPanel;
      bbtnOK: TBitBtn;
      Label1: TLabel;
      bbtnCancela: TBitBtn;
      dblcdCobrador: TwwDBLookupComboDlg;
      edtCobrador: TEdit;
      Label2: TLabel;
      dblcdCia: TwwDBLookupComboDlg;
      edtCia: TEdit;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      lblCIA: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormShow(Sender: TObject);
      Procedure dblcdCobradorExit(Sender: TObject);
      Procedure dblcdCiaExit(Sender: TObject);
      Procedure bbtnOKClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure CalculaTotales;
   Public
    { Public declarations }
   End;

Var
   FDocCobra: TFDocCobra;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFDocCobra.CalculaTotales;
Var
   xLocLim, xLocPro, xLocOtr, xExtLim, xExtPro, xExtOtr: Real;
Begin

   xLocLim := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'LOCLIM' + ')', '');
   xLocPro := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'LOCPRO' + ')', '');
   xLocOtr := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'LOCOTR' + ')', '');
   xExtLim := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'EXTLIM' + ')', '');
   xExtPro := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'EXTPRO' + ')', '');
   xExtOtr := OperClientDataSet(DM1.cdsReporte, 'SUM(' + 'EXTOTR' + ')', '');

   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.EOF Do
   Begin
      DM1.cdsReporte.Edit;
      If xLocLim <> 0 Then
         DM1.cdsReporte.FieldByName('PORLOCLIM').AsFloat := FRound(DM1.cdsReporte.FieldByName('LOCLIM').AsFloat / xLocLim * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('PORLOCLIM').AsFloat := 0;

      If xLocPro <> 0 Then
         DM1.cdsReporte.FieldByName('PORLOCPRO').AsFloat := FRound(DM1.cdsReporte.FieldByName('LOCPRO').AsFloat / xLocPro * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('PORLOCPRO').AsFloat := 0;

      If xLocOtr <> 0 Then
         DM1.cdsReporte.FieldByName('PORLOCOTR').AsFloat := FRound(DM1.cdsReporte.FieldByName('LOCOTR').AsFloat / xLocOtr * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('PORLOCOTR').AsFloat := 0;

      If xExtLim <> 0 Then
         DM1.cdsReporte.FieldByName('POREXTLIM').AsFloat := FRound(DM1.cdsReporte.FieldByName('EXTLIM').AsFloat / xExtLim * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('POREXTLIM').AsFloat := 0;

      If xExtPro <> 0 Then
         DM1.cdsReporte.FieldByName('POREXTPRO').AsFloat := FRound(DM1.cdsReporte.FieldByName('EXTPRO').AsFloat / xExtPro * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('POREXTPRO').AsFloat := 0;

      If xExtOtr <> 0 Then
         DM1.cdsReporte.FieldByName('POREXTOTR').AsFloat := FRound(DM1.cdsReporte.FieldByName('EXTOTR').AsFloat / xExtOtr * 100, 15, 3)
      Else
         DM1.cdsReporte.FieldByName('POREXTOTR').AsFloat := 0;

      DM1.cdsReporte.FieldByName('TOTLOC').AsFloat := DM1.cdsReporte.FieldByName('LOCLIM').AsFloat + DM1.cdsReporte.FieldByName('LOCPRO').AsFloat;
      DM1.cdsReporte.FieldByName('TOTPORLOC').AsFloat := FRound(DM1.cdsReporte.FieldByName('TOTLOC').AsFloat / (xLocLim + xLocPro) * 100, 15, 3);

      DM1.cdsReporte.FieldByName('TOTEXT').AsFloat := DM1.cdsReporte.FieldByName('EXTLIM').AsFloat + DM1.cdsReporte.FieldByName('EXTPRO').AsFloat;
      DM1.cdsReporte.FieldByName('TOTPOREXT').AsFloat := FRound(DM1.cdsReporte.FieldByName('TOTEXT').AsFloat / (xExtLim + xExtPro) * 100, 15, 3);

      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
   End;

End;

Procedure TFDocCobra.bbtnCancelaClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFDocCobra.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFDocCobra.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsCobrador.Filter := '';
   DM1.cdsCobrador.Filtered := False;
   ppdbReporte.DataSource := Nil;
End;

Procedure TFDocCobra.FormShow(Sender: TObject);
Begin
   edtCobrador.text := '';
   dblcdCia.text := '';
   edtCia.text := '';
   dblcdCobrador.text := '';
   DM1.cdsCia.First;
   dblcdCia.text := DM1.cdsCia.FieldByName('CIAID').AsString;
End;

Procedure TFDocCobra.dblcdCobradorExit(Sender: TObject);
Var
   sWhere: String;
Begin
   If bbtnCancela.focused Then exit;
   sWhere := 'CIAID=' + QuotedStr(dblcdCia.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text);
   If BuscaQry('dspTGE', 'CXC206', 'COID,CONOMBRES', sWhere, 'COID') = '' Then
   Begin
      dblcdCobrador.SetFocus;
      Raise Exception.Create('No existe Cobrador');
   End;
   edtCobrador.text := DM1.cdsQry.FieldByName('CONOMBRES').AsString;
End;

Procedure TFDocCobra.dblcdCiaExit(Sender: TObject);
Var
   sWhere: String;
Begin
   If bbtnCancela.focused Then exit;
   sWhere := 'CIAID=' + QuotedStr(dblcdCia.text);
   If BuscaQry('dspTGE', 'TGE101', 'CIAID,CIADES', sWhere, 'CIAID') = '' Then
   Begin
      dblcdCia.SetFocus;
      Raise Exception.Create('No existe Compañía');
   End;

   edtCia.text := DM1.cdsQry.FieldByName('CIADES').AsString;
   DM1.cdsCobrador.Close;
   DM1.cdsCobrador.DataRequest('SELECT CIAID,COID,CONOMBRES FROM CXC206 WHERE ' + sWhere);
   DM1.cdsCobrador.Open;

{  DM1.cdsCobrador.Filter:='CIAID='+QuotedStr(dblcdCia.text);
  DM1.cdsCobrador.Filtered:=True;}
End;

Procedure TFDocCobra.bbtnOKClick(Sender: TObject);
Var
   sSQL: String;
Begin
   sSQL := ' SELECT CXC317.*,TGE110.DOCABR FROM CXC317 ' +
      ' LEFT JOIN TGE110 ON  DOCMOD=''CXC'' AND CXC317.DOCID=TGE110.DOCID ' +
      ' LEFT JOIN CXC301 ON CXC301.CIAID=CXC317.CIAID AND CXC301.DOCID=CXC317.DOCID AND CXC301.CCSERIE=CXC317.CCSERIE AND CXC301.CCNODOC=CXC317.CCNODOC ' +
      ' WHERE CXC317.CIAID=' + QuotedStr(dblcdCia.text) + ' AND COID=' + QuotedStr(dblcdCobrador.text);
   ppdbReporte.DataSource := DM1.dsReporte;

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   DM1.cdsReporte.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
      Raise Exception.Create('El Cobrador no tiene documentos asignados');
   End;

   ppReporte.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\DocumentosCobrador.Rtm';
   ppReporte.template.LoadFromFile;
   lblCia.caption := edtCia.text;

//  ppReporte.Print;
//  ppReporte.Stop;
   ppDesigner1.Show;
End;

End.

