Unit CxC224;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, ppEndUsr, ppProd, ppClass, ppReport, ppComm,
   ppRelatv, ppCache, ppDB, ppDBPipe, StdCtrls, Buttons, ppBands, ppCtrls,
   ppVar, ppPrnabl;

Type
   TFEntregaCobrador = Class(TForm)
      dbgDocumentos: TwwDBGrid;
      ppdbEntregaDocs: TppDBPipeline;
      pprEntregaDocs: TppReport;
      ppDesigner1: TppDesigner;
      bbtnOkEntragaDocs: TBitBtn;
      bbtnCancelEntragaDocs: TBitBtn;
      ppHeaderBand1: TppHeaderBand;
      pplblCia: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      pplblCobrador: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      pplblFecha: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBCalc2: TppDBCalc;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLabel20: TppLabel;
      ppDBCalc1: TppDBCalc;
      Procedure FormActivate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnOkEntragaDocsClick(Sender: TObject);
      Procedure bbtnCancelEntragaDocsClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FEntregaCobrador: TFEntregaCobrador;

Implementation

Uses CxCDM, CXC001;

{$R *.DFM}

Procedure TFEntregaCobrador.FormActivate(Sender: TObject);
Begin
   dbgDocumentos.DataSource := DM1.dsqry7;
   dbgDocumentos.Selected.Clear;
   dbgDocumentos.Selected.Add('DOCABR'#9'5'#9'Documento.'#9'T');
   dbgDocumentos.Selected.Add('CCSERIE'#9'5'#9'Serie.'#9'T');
   dbgDocumentos.Selected.Add('CCNODOC'#9'8'#9'Número.'#9'T');
   dbgDocumentos.Selected.Add('CLIEDID'#9'12'#9'Código~Cliente.'#9'T');
   dbgDocumentos.Selected.Add('CLIERUC'#9'12'#9'RUC~Cliente.'#9'T');
   dbgDocumentos.Selected.Add('CLIEDES'#9'40'#9'Nombre~Cliente.'#9'T');
   dbgDocumentos.Selected.Add('ZVTAABREV'#9'15'#9'Zona.'#9'T');
   dbgDocumentos.Selected.Add('LICOSALEXT'#9'10'#9'Monto Ext.'#9'T');

   dbgDocumentos.RedrawGrid;
End;

Procedure TFEntregaCobrador.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   dbgDocumentos.DataSource := Nil;
   FPrincipal.GDetalle.FMant.dbgFiltro.SelectedList.Clear;
   FPrincipal.GDetalle.FMant.dbgFiltro.RedrawGrid;
End;

Procedure TFEntregaCobrador.bbtnOkEntragaDocsClick(Sender: TObject);
Var
   sCia, sCoid, sCoNombres, sFecha, sSQL: String;
Begin
   pprEntregaDocs.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CobranzaDiaria.Rtm';
   pprEntregaDocs.template.LoadFromFile;

   DM1.cdsQry7.First;

   sCia := DM1.cdsQry7.FieldByName('CIAID').AsString;
   sCoid := DM1.cdsQry7.FieldByName('COID').AsString;
   sCoNombres := DM1.cdsQry7.FieldByName('CONOMBRES').AsString;
   sFecha := DateToStr(DateS);

   pplblCia.text := BuscaQry('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + QuotedStr(sCia), 'CIADES');
  //sCia;
   pplblFecha.text := 'FECHA : ' + sFecha;
   pplblCobrador.text := 'COBRADOR : ' + sCoid + ' ' + sCoNombres;

   pprEntregaDocs.Print;
  //ppDesigner1.Show;
   DM1.cdsQry7.DisableControls;
   DM1.cdsQry7.First;
   While Not DM1.cdsQry7.EOF Do
   Begin
      sSQL := ' UPDATE CXC317 SET LICONUMENT=' + DM1.wReplacCeros + '(LICONUMENT,0)+1 ' +
         ' WHERE CIAID=' + QuotedStr(DM1.cdsQry7.FieldByName('CIAID').AsString) +
         ' AND LICOID=' + QuotedStr(DM1.cdsQry7.FieldByName('LICOID').AsString) +
         ' AND DOCID=' + QuotedStr(DM1.cdsQry7.FieldByName('DOCID').AsString) +
         ' AND CCSERIE=' + QuotedStr(DM1.cdsQry7.FieldByName('CCSERIE').AsString) +
         ' AND CCNODOC=' + QuotedStr(DM1.cdsQry7.FieldByName('CCNODOC').AsString) +
         ' AND FLAGVAR<>''XX'' ';
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except

      End;

      DM1.cdsQry7.Next;
   End;
   DM1.cdsQry7.EnableControls;
End;

Procedure TFEntregaCobrador.bbtnCancelEntragaDocsClick(Sender: TObject);
Begin
   Close;
End;

End.

