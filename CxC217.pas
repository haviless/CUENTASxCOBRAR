
Unit CxC217;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit,
   wwdblook, Wwdbdlg, db, CXCUTIL, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar,
   ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ComCtrls,
   ppEndUsr, Variants;

Type
   TFDetAmo = Class(TForm)
      pnlHEAD: TPanel;
      Z2bbtnAceptar: TBitBtn;
      pnlFOOT: TPanel;
      Z2bbtnCancel: TBitBtn;
      bbtnPrint: TBitBtn;
      dblcCLIE: TwwDBLookupComboDlg;
      Label11: TLabel;
      dbeCLIE: TwwDBEdit;
      lblTipCam: TLabel;
      stt1: TStaticText;
      stt2: TStaticText;
      Label4: TLabel;
      Bevel2: TBevel;
      dblcSER: TwwDBLookupCombo;
      dbeSER: TwwDBEdit;
      Label1: TLabel;
      dblcTDOC: TwwDBLookupCombo;
      Label2: TLabel;
      dbeTDOC: TwwDBEdit;
      dbeNDOC: TwwDBEdit;
      Label3: TLabel;
      stMoneda: TStaticText;
      Label5: TLabel;
      ppReport: TppReport;
      ppDBPipeline: TppDBPipeline;
      PageControl1: TPageControl;
      tsAmort: TTabSheet;
      Panel1: TPanel;
      dbgEst4: TwwDBGrid;
      ppDesigner1: TppDesigner;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      pplCia: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel19: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel12: TppLabel;
      pplblCliente: TppLabel;
      ppLabel15: TppLabel;
      pplblTDoc: TppLabel;
      ppLabel21: TppLabel;
      pplblSerie: TppLabel;
      ppLabel23: TppLabel;
      pplblNoDoc: TppLabel;
      ppLabel25: TppLabel;
      pplblMoneda: TppLabel;
      ppLabel27: TppLabel;
      pplblImporte: TppLabel;
      ppLabel29: TppLabel;
      pplblSaldo: TppLabel;
      pplblCodigo: TppLabel;
      ppLabel13: TppLabel;
      ppLabel20: TppLabel;
      ppLabel22: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel5: TppLabel;
      ppLabel4: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText6: TppDBText;
      ppDBText5: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc2: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppLabel18: TppLabel;
      Procedure dblcCLIEChange(Sender: TObject);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure dblcTDOCChange(Sender: TObject);
      Procedure dblcSERChange(Sender: TObject);
      Procedure dblcExit(Sender: TObject);
      Procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormDestroy(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure dbgEst4Enter(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnPrintClick(Sender: TObject);
   Private
    { Private declarations }
      sCIA, sCLI, sSER, sTDO, sSQL: String;

      Procedure dcCLI;
      Procedure dcSER;
      Procedure dcTDO;
      Procedure cSQL;
      Procedure cQRY;
      Procedure cGRID;
      Procedure cFOOTER;
      Procedure cSALDOS;
   Public
    { Public declarations }
      Hist, MonLoc: Boolean;
      Compania, Cliente, Documento, TDocumento,
         TDiario, NumReg, Periodo, Serie: String;
      DImporte, DSaldo: Double;
      Procedure Generate;
   End;

Var
   FDetAmo: TFDetAmo;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFDetAmo.dblcCLIEChange(Sender: TObject);
Begin
{
  sCLI := dblcCLIE.Text;
  dbeCLIE.Text := DM1.cdsClie.FieldByName('CLIEDES').AsString;
 }
End;

Procedure TFDetAmo.Z2bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFDetAmo.dblcTDOCChange(Sender: TObject);
Begin
{
  sTDO := dblcTDOC.Text;
  dbeTDOC.Text := DM1.cdsTDoc.FieldByName('DOCDES').AsString;
 }
End;

Procedure TFDetAmo.dblcSERChange(Sender: TObject);
Begin
//hALLAR LA DESCRIPCIÓN DE LA SERIE
{
  sSER := dblcSER.Text;
  dbeSER.Text := DM1.cdsSerie.FieldByName('SERIEDES').AsString;
}
   If cxcutil.RecuperarDatos('CXC103', '*', 'SERIEID=''' + dblcSER.Text + ''' AND DOCID=' + QuotedStr(dblcTDOC.text)) Then
      dbeser.Text := DMCXC.cdsRec.fieldbyname('SERIEDES').AsString
   Else
      dbeSER.Text := '';
End;

Procedure TFDetAmo.dblcExit(Sender: TObject);
Var
   bRq: Boolean;
Begin
   If TwwDBCustomLookupCombo(Sender).DataSource <> Nil Then
      bRq := TwwDBCustomLookupCombo(Sender).DataSource.DataSet.FieldByName(TwwDBCustomLookupCombo(Sender).DataField).Required;
   If (bRq) And (trim(TwwDBCustomLookupCombo(Sender).Text) = '') Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFDetAmo.dblcNotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFDetAmo.Z2bbtnAceptarClick(Sender: TObject);
Begin
//
End;

Procedure TFDetAmo.FormCreate(Sender: TObject);
Begin
   Cursor := crDefault;

   dblcCLIE.OnNotInList := dblcNotInList;
   sCIA := '';
   sCLI := '';
   sSER := '';
   sTDO := '';
{WMC2903
 DMCXC.cdsSerie.MasterFields    := 'CIAID';
 DMCXC.cdsSerie.IndexFieldNames := 'CIAID';
 DMCXC.cdsSerie.MasterSource    := DMCXC.dsCia;

 DMCXC.cdsSerie.Open;
 DMCXC.cdsClie.Open;
 DMCXC.cdsSerie.Open;

 DMCXC.cdsTDoc.Open;
}
   dcCLI;
   dcSER;
   dcTDO;

End;

Procedure TFDetAmo.FormDestroy(Sender: TObject);
Begin
{WMC2903
 DMCXC.cdsSerie.MasterFields    := '';
 DMCXC.cdsSerie.IndexFieldNames := '';
 DMCXC.cdsSerie.MasterSource    := nil;
 DMCXC.cdsSerie.Close;
}
End;

Procedure TFDetAmo.dcCLI;
Begin
   If trim(Cliente) = '' Then
   Begin
      dblcCLIE.Text := Cliente;
      dblcCLIE.Enabled := False;
      sCLI := Cliente;
      Exit;
   End;

{ DMCXC.cdsClie.First;
  sCLI := trim(DMCXC.cdsClie.FieldByName('CLIEID').AsString);
  dblcCLIE.Text := sCLI;
  dblcCLIE.Enabled := DMCXC.cdsClie.RecordCount > 1;}
End;

Procedure TFDetAmo.dcSER;
Begin
{  DMCXC.cdsSerie.First;
  sSER := trim(DMCXC.cdsSerie.FieldByName('SERIEID').AsString);
  dblcSER.Text := sSER;

  dblcSER.Enabled := DMCXC.cdsSerie.RecordCount > 1;}
End;

Procedure TFDetAmo.dcTDO;
Begin
   If trim(TDocumento) = '' Then
   Begin
      dblcTDOC.Text := TDocumento;
      dblcTDOC.Enabled := False;
      sTDO := TDocumento;
      Exit;
   End;

{ DMCXC.cdsTDoc.First;
  sSER := trim(DMCXC.cdsTDoc.FieldByName('DOCID').AsString);
  dblcTDOC.Text := sTDO;
  dblcTDOC.Enabled := DMCXC.cdsTDoc.RecordCount > 1;}
End;

Procedure TFDetAmo.cSQL;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT ' +
         '  H.SERIEDES , B.DOCABR , G.CLIEDES , E.TMONDES, E.TMONABR, E.TMON_LOC, F.CIADES, I.DOCABR DOCABR2, A.*' +
         ' FROM ' +
         ' CXC305 A ' +
         ' LEFT  JOIN TGE103 E ON (E.TMONID=A.TMONID)' +
    //wmc2803        ' LEFT  JOIN TGE110 B ON (B.DOCID=A.DOCID )'+
      ' LEFT  JOIN TGE110 B ON (B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' )' +
         ' LEFT  JOIN TGE101 F ON (F.CIAID=A.CIAID)' +
         ' LEFT  JOIN TGE204 G ON (G.CLIEID=A.CLIEID)' +
         ' LEFT  JOIN CXC103 H ON (H.CIAID=A.CIAID AND H.SERIEID=A.CCSERIE AND A.DOCID=H.DOCID)' +
         ' LEFT  JOIN TGE110 I ON (I.DOCID=A.DOCID2 AND I.DOCMOD = ''CXC'' )' +
         ' WHERE ' +
         ' A.CIAID = ''' + Compania + '''' +
         ' AND A.CLIEID = ''' + Cliente + '''';
      If (TDocumento = DMCXC.wsNCre) Or (TDocumento = DMCXC.wsAnt) Then
      Begin
         sSQL := sSQL + ' AND A.DOCID2 = ''' + TDocumento + '''' +
            ' AND A.CCSERIE2 = ''' + Serie + '''' +
            ' AND A.CCNODOC2 = ''' + Documento + '''' + ' ORDER BY CCFCANJE ';
      End
      Else
      Begin
         sSQL := sSQL + ' AND A.DOCID = ''' + TDocumento + '''' +
            ' AND A.CCSERIE = ''' + Serie + '''' +
            ' AND A.CCNODOC = ''' + Documento + '''' + ' ORDER BY CCFCANJE ';
      End;
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         sSQL := ' SELECT ' +
            '  H.SERIEDES , B.DOCABR , G.CLIEDES , E.TMONDES, E.TMONABR, E.TMON_LOC, F.CIADES, I.DOCABR DOCABR2, A.*' +
            ' FROM ' +
            ' CXC305 A,TGE103 E,TGE110 B,TGE101 F,TGE204 G,CXC103 H, TGE110 I ' +
            ' WHERE ' +
            ' A.CIAID = ''' + Compania + '''' +
            ' AND A.CLIEID = ''' + Cliente + '''' +
            ' AND A.DOCID = ''' + TDocumento + '''' +
            ' AND A.CCSERIE = ''' + Serie + '''' +
            ' AND A.CCNODOC = ''' + Documento + '''' +
            ' AND A.TMONID=E.TMONID(+)' +
            ' AND (A.DOCID=B.DOCID(+) AND B.DOCMOD = ''CXC'' )' +
            ' AND (A.CIAID=F.CIAID(+))' +
            ' AND (A.CLIEID=G.CLIEID(+))' +
            ' AND (A.CIAID=H.CIAID AND H.SERIEID(+)=A.CCSERIE AND A.DOCID=H.DOCID(+))' +
            ' AND (A.DOCID=I.DOCID(+) AND I.DOCMOD = ''CXC'' )' +
            ' ORDER BY CCFCANJE ';

      End;
End;

Procedure TFDetAmo.cQRY;
Begin
   DMCXC.cdsQry3.ProviderName := 'dspTGE';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(sSQL);
   DMCXC.cdsQry3.Open;
End;

Procedure TFDetAmo.Generate;
Begin

   cSQL;
   cQRY;
   cGRID;
//cFOOTER;
{WMC2803
 dblcCLIEChange(nil);
 dblcSERChange(nil);
 dblcTDOCChange(nil);
}
   cFOOTER;
   cSALDOS;

End;

Procedure TFDetAmo.FormShow(Sender: TObject);
Begin
   Generate;
   dblcCLIE.Text := Cliente;
   dblcSER.Text := Serie;
   dblcTDOC.Text := TDocumento;
   dbeNDOC.Text := Documento;

   If MonLoc Then
   Begin
      If DMCXC.cdsTMon.Locate('TMON_LOC', VarArrayOf(['L']), []) Then
         stMoneda.Caption := DMCXC.cdsTMon.fieldbyname('TMONABR').AsString;
   End
   Else
      If DMCXC.cdsTMon.Locate('TMON_LOC', VarArrayOf(['E']), []) Then
      Begin
         stMoneda.Caption := DMCXC.cdsTMon.fieldbyname('TMONABR').AsString;
      End;

End;

Procedure TFDetAmo.cFOOTER;
Begin
   With dbgEst4 Do
   Begin
      FooterCellColor := clInfoBk;
      If MonLoc Then
         ColumnByName('DCCMTOLOC').FooterValue := cAJADEC(FloatToStr(OperClientDataset(DMCXC.cdsQRY3, 'SUM(DCCMTOLOC)', '')))
      Else
         ColumnByName('DCCMTOEXT').FooterValue := cAJADEC(FloatToStr(OperClientDataset(DMCXC.cdsQRY3, 'SUM(DCCMTOEXT)', '')));
   End;
End;

Procedure TFDetAmo.cGRID;
Begin
   With dbgEst4.Selected Do
   Begin
      Clear;
      Add('CCFCANJE'#9'11'#9'Fecha de~Pago'#9'F');

      If (FDetAmo.TDocumento = DMCXC.wsAnt) Or (FDetAmo.TDocumento = DMCXC.wsNCre) Then
      Begin
         Add('DOCABR'#9'12'#9'Tipo~Doc Abo.'#9'F');
         Add('CCSERIE'#9'8'#9'Nº de~Serie'#9'F');
         Add('CCNODOC'#9'14'#9'Documento'#9'F');
      End
      Else
      Begin
         Add('DOCABR2'#9'12'#9'Tipo~Doc Abo.'#9'F');
         Add('CCSERIE2'#9'8'#9'Nº de~Serie'#9'F');
         Add('CCNODOC2'#9'14'#9'Documento'#9'F');
      End;

      Add('TCANJEID'#9'8'#9'Tipo de~Canje'#9'F');
      Add('CCCANJE'#9'10'#9'Nº'#9'F');
      Add('TMONABR'#9'4'#9'T.M.'#9'F');
      Add('DCCTCAMB'#9'15'#9'T.C.'#9'F');
//WMC2803    Add('CCCANJE'#9'10'#9'Nº de Nota~de Cobranza'#9'F');
      Add('DCCMTOLOC'#9'13'#9'Monto~(MN)'#9'F');
      Add('DCCMTOEXT'#9'13'#9'Monto~(ME)'#9'F');

   End;
   dbgEst4.RedrawGrid;

   TNumericField(DMCXC.cdsQry3.FieldByName('DCCMTOLOC')).DisplayFormat := '### ### ##0.00';
   TNumericField(DMCXC.cdsQry3.FieldByName('DCCMTOEXT')).DisplayFormat := '### ### ##0.00';

End;

Procedure TFDetAmo.cSALDOS;
Begin
   stt1.Caption := Format(' %15.2f', [DImporte]);
   stt2.Caption := Format(' %15.2f', [DSaldo]);
End;

Procedure TFDetAmo.dbgEst4Enter(Sender: TObject);
Begin
   cFOOTER;
End;

Procedure TFDetAmo.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFDetAmo.bbtnPrintClick(Sender: TObject);
Begin
  //previa

   If Not DMCXC.cdsCia.Active Then
      DMCXC.cdsCia.Open;
   ppReport.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Amortiza.rtm';
   ppReport.template.LoadFromFile;

   pplCia.Caption := DMCXC.cdsCia.fieldbyname('CIAABR').AsString;
   pplblCodigo.Caption := dblcCLIE.Text;
   pplblCliente.Caption := dbeCLIE.Text;
   pplblTDoc.Caption := dbeTDOC.Text;
   pplblSerie.Caption := dblcSER.Text;
   pplblNoDoc.Caption := dbeNDOC.Text;
   pplblMoneda.Caption := stMoneda.Caption;
   pplblImporte.Caption := TRIM(stt1.Caption);
   pplblSaldo.Caption := tRIM(stt2.Caption);
   If (dblcTDOC.text = DMCXC.wsNCre) Or (dblcTDOC.text = DMCXC.wsAnt) Then
      ppDBText4.DataField := 'CCNODOC'
   Else
      ppDBText4.DataField := 'CCNODOC2';

   ppReport.Print;
//ppDesigner1.show;

End;

End.

