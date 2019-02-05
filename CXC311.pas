Unit CXC311;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ppCache, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppBands, Buttons, wwdbdatetimepicker, ExtCtrls,
   ppCtrls, ppVar, ppPrnabl, wwdblook, db;

Type
   TFCheDif = Class(TForm)
      ppReporte: TppReport;
      ppDesigner1: TppDesigner;
      ppdbReporte: TppDBPipeline;
      pnlDetalle: TPanel;
      bbtnOK: TBitBtn;
      Label1: TLabel;
      dbdtpFecha1: TwwDBDateTimePicker;
      bbtnCancela: TBitBtn;
      dbdtpFecha2: TwwDBDateTimePicker;
      Label2: TLabel;
      ppHeaderBand1: TppHeaderBand;
      pplblCia: TppLabel;
      ppLabel2: TppLabel;
      pplblTitulo: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLabel18: TppLabel;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppLabel14: TppLabel;
      ppDBText1: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLabel15: TppLabel;
      ppDBText10: TppDBText;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      Label3: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Procedure bbtnOKClick(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcCiaNotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
      Procedure CalculaTotales;
   Public
    { Public declarations }
   End;

Var
   FCheDif: TFCheDif;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFCheDif.CalculaTotales;
Var
   xLocLim, xLocPro, xLocOtr, xExtLim, xExtPro, xExtOtr: Real;
Begin

   xLocLim := OperClientDataSet(DMCXC.cdsReporte, 'SUM(' + 'LOCLIM' + ')', '');
   xLocPro := OperClientDataSet(DMCXC.cdsReporte, 'SUM(' + 'LOCPRO' + ')', '');
   xLocOtr := OperClientDataSet(DMCXC.cdsReporte, 'SUM(' + 'LOCOTR' + ')', '');
   xExtLim := OperClientDataSet(DMCXC.cdsReporte, 'SUM(' + 'EXTLIM' + ')', '');
   xExtPro := OperClientDataSet(DMCXC.cdsReporte, 'SUM(' + 'EXTPRO' + ')', '');
   xExtOtr := OperClientDataSet(DMCXC.cdsReporte, 'SUM(' + 'EXTOTR' + ')', '');

   DMCXC.cdsReporte.First;
   While Not DMCXC.cdsReporte.EOF Do
   Begin
      DMCXC.cdsReporte.Edit;
      If xLocLim <> 0 Then
         DMCXC.cdsReporte.FieldByName('PORLOCLIM').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('LOCLIM').AsFloat / xLocLim * 100, 15, 3)
      Else
         DMCXC.cdsReporte.FieldByName('PORLOCLIM').AsFloat := 0;

      If xLocPro <> 0 Then
         DMCXC.cdsReporte.FieldByName('PORLOCPRO').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('LOCPRO').AsFloat / xLocPro * 100, 15, 3)
      Else
         DMCXC.cdsReporte.FieldByName('PORLOCPRO').AsFloat := 0;

      If xLocOtr <> 0 Then
         DMCXC.cdsReporte.FieldByName('PORLOCOTR').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('LOCOTR').AsFloat / xLocOtr * 100, 15, 3)
      Else
         DMCXC.cdsReporte.FieldByName('PORLOCOTR').AsFloat := 0;

      If xExtLim <> 0 Then
         DMCXC.cdsReporte.FieldByName('POREXTLIM').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('EXTLIM').AsFloat / xExtLim * 100, 15, 3)
      Else
         DMCXC.cdsReporte.FieldByName('POREXTLIM').AsFloat := 0;

      If xExtPro <> 0 Then
         DMCXC.cdsReporte.FieldByName('POREXTPRO').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('EXTPRO').AsFloat / xExtPro * 100, 15, 3)
      Else
         DMCXC.cdsReporte.FieldByName('POREXTPRO').AsFloat := 0;

      If xExtOtr <> 0 Then
         DMCXC.cdsReporte.FieldByName('POREXTOTR').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('EXTOTR').AsFloat / xExtOtr * 100, 15, 3)
      Else
         DMCXC.cdsReporte.FieldByName('POREXTOTR').AsFloat := 0;

      DMCXC.cdsReporte.FieldByName('TOTLOC').AsFloat := DMCXC.cdsReporte.FieldByName('LOCLIM').AsFloat + DMCXC.cdsReporte.FieldByName('LOCPRO').AsFloat;
      DMCXC.cdsReporte.FieldByName('TOTPORLOC').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('TOTLOC').AsFloat / (xLocLim + xLocPro) * 100, 15, 3);

      DMCXC.cdsReporte.FieldByName('TOTEXT').AsFloat := DMCXC.cdsReporte.FieldByName('EXTLIM').AsFloat + DMCXC.cdsReporte.FieldByName('EXTPRO').AsFloat;
      DMCXC.cdsReporte.FieldByName('TOTPOREXT').AsFloat := FRound(DMCXC.cdsReporte.FieldByName('TOTEXT').AsFloat / (xExtLim + xExtPro) * 100, 15, 3);

      DMCXC.cdsReporte.Post;
      DMCXC.cdsReporte.Next;
   End;

End;

Procedure TFCheDif.bbtnOKClick(Sender: TObject);
Var
   sSQL: String;
Begin
   If Length(edtCia.text) = 0 Then
   Begin
      dblcCia.SetFocus;
      Raise Exception.Create('Ingrese Compañía');
   End;
   If dbdtpFecha1.date = 0 Then
   Begin
      dbdtpFecha1.SetFocus;
      Raise Exception.Create('Ingrese Fecha Inicial');
   End;

   If dbdtpFecha2.date = 0 Then
   Begin
      dbdtpFecha2.SetFocus;
      Raise Exception.Create('Ingrese Fecha Final');
   End;

   Screen.Cursor := crHourGlass;
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      sSQL :=
         ' SELECT CIAID,CCFEMIS,CCFVCMTO,CCNODOC,CCFREG,CLIEID,CLIEDES,CXC301.BANCOID,BANCOABR,BANCONOM,CXC301.TMONID,CCUSER,CCMTOEXT,CCMTOLOC,TMONABR,TMONDES FROM CXC301 ' +
         ' LEFT JOIN TGE105 ON CXC301.BANCOID=TGE105.BANCOID ' +
         ' LEFT JOIN TGE103 ON CXC301.TMONID=TGE103.TMONID ' +
         ' WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DMCXC.wsChe) + ' AND CCFVCMTO BETWEEN ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFecha1.date) + '''' + ')' +
         ' AND ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFecha2.date) + '''' + ')';

   If (DMCXC.SRV_D = 'ORACLE') Then
      sSQL :=
         ' SELECT CIAID,CCFEMIS,CCFVCMTO,CCNODOC,CCFREG,CLIEID,CLIEDES,CXC301.BANCOID,BANCOABR,BANCONOM,CXC301.TMONID,CCUSER,CCMTOEXT,CCMTOLOC,TMONABR,TMONDES FROM CXC301 ' +
         ' ,TGE105,TGE103 ' +
         ' WHERE CXC301.TMONID=TGE103.TMONID(+) AND CXC301.BANCOID=TGE105.BANCOID(+) AND CIAID=' + QuotedStr(dblcCia.text) + ' AND DOCID=' + QuotedStr(DMCXC.wsChe) + ' AND CCFVCMTO BETWEEN ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFecha1.date) + '''' + ')' +
         ' AND ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFecha2.date) + '''' + ')';

   DMCXC.cdsReporte.close;
   DMCXC.cdsReporte.DataRequest(sSQL);
   DMCXC.cdsReporte.Open;
   DMCXC.cdsReporte.IndexFieldNames := 'TMONID;CCFVCMTO';
   DMCXC.cdsReporte.First;

   ppdbReporte.DataSource := DMCXC.dsReporte;
   ppReporte.template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\ChequeDiferido.rtm';
   ppReporte.template.LoadFromFile;
   pplblTitulo.caption := 'DEL ' + DateToStr(dbdtpFecha1.date) + ' AL ' + DateToStr(dbdtpFecha2.date);
   pplblCia.caption := edtCia.text;
   Screen.Cursor := crDefault;
  //ppDesigner1.Show;
   If DMCXC.cdsReporte.RecordCount > 0 Then
      ppReporte.Print
   Else
      Raise Exception.Create('No existen registros que mostrar');
End;

Procedure TFCheDif.bbtnCancelaClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFCheDif.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFCheDif.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsReporte.IndexFieldNames := '';
End;

Procedure TFCheDif.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFCheDif.dblcCiaExit(Sender: TObject);
Begin
   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
      exit;
   End;
End;

Procedure TFCheDif.FormShow(Sender: TObject);
Begin
   dblcCia.text := '';
   edtCia.text := '';
   dbdtpFecha1.date := DMCXC.DateS;
   dbdtpFecha2.date := DMCXC.DateS;
End;

End.

