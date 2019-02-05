Unit CxC777;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
   ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
   ppProd, ppReport, Wwdbigrd, Wwdbgrid, ppVar, ppEndUsr;

Type
   TFToolLetras = Class(TForm)
      pgGLt: TPageControl;
      tsMovLt: TTabSheet;
      Z2sbtn7: TSpeedButton;
      Z2ImpMasivo: TSpeedButton;
      Z2sbtn6: TSpeedButton;
      Z2bbtn5: TSpeedButton;
      pprLetras: TppReport;
      ppdbpLetras: TppDBPipeline;
      cdsX: TwwClientDataSet;
      cdsXBANCOID: TStringField;
      uu: TStringField;
      cdsXCCAAAA: TStringField;
      cdsXCCAASEM: TStringField;
      cdsXCCAASS: TStringField;
      cdsXCCAATRI: TStringField;
      cdsXCCACEPTA: TStringField;
      cdsXCCANOMES: TStringField;
      cdsXCCAVAL: TStringField;
      cdsXCCBCOID: TStringField;
      cdsXCCCANJE: TStringField;
      cdsXCCDCTO: TFloatField;
      cdsXCCDD: TStringField;
      cdsXCCESTADO: TStringField;
      cdsXCCESTCJE: TStringField;
      cdsXCCFCANJE: TDateField;
      cdsXCCFCMPRB: TDateField;
      cdsXCCFEMIS: TDateField;
      cdsXCCFLCRED: TStringField;
      cdsXCCFLETE: TFloatField;
      cdsXCCFPLABCO: TDateField;
      cdsXCCFRECEP: TDateField;
      cdsXCCFREG: TDateField;
      cdsXCCFSITUA: TDateField;
      cdsXCCFVALOR: TDateField;
      cdsXCCFVCMTO: TDateField;
      cdsXCCFVENLREAL: TDateField;
      cdsXCCGASFIN: TFloatField;
      cdsXCCGRAVAD: TFloatField;
      cdsXCCHREG: TTimeField;
      cdsXCCIGV: TFloatField;
      cdsXCCISC: TFloatField;
      cdsXCCLOTE: TStringField;
      cdsXCCMM: TStringField;
      cdsXCCMTOEXT: TFloatField;
      cdsXCCMTOLOC: TFloatField;
      cdsXCCMTOORI: TFloatField;
      cdsXCCNFACTURA: TStringField;
      cdsXCCNLETBCO: TStringField;
      cdsXCCNODOC: TStringField;
      cdsXCCNOGRAV: TFloatField;
      cdsXCCNOREG: TStringField;
      cdsXCCNPLABCO: TStringField;
      cdsXCCNREFINA: TStringField;
      cdsXCCNRENOV: TIntegerField;
      cdsXCCNSERFACTL: TStringField;
      cdsXCCNVECPRT: TIntegerField;
      cdsXCCOENV: TStringField;
      cdsXCCOMERID: TStringField;
      cdsXCCPAGEXT: TFloatField;
      cdsXCCPAGLOC: TFloatField;
      cdsXCCPAGORI: TFloatField;
      cdsXCCPEDIDO: TStringField;
      cdsXCCPTOTOT: TStringField;
      cdsXCCSALEXT: TFloatField;
      cdsXCCSALLOC: TFloatField;
      cdsXCCSALORI: TFloatField;
      cdsXCCSEM: TStringField;
      cdsXCCSERIE: TStringField;
      cdsXCCSERVIC: TFloatField;
      cdsXCCSS: TStringField;
      cdsXCCTCAMPA: TFloatField;
      cdsXCCTCAMPR: TFloatField;
      cdsXCCTRI: TStringField;
      cdsXCCUSER: TStringField;
      cdsXCIAID: TStringField;
      cdsXCLAUXID: TStringField;
      cdsXCLIEID: TStringField;
      cdsXCLIENDES: TStringField;
      cdsXCLIERUC: TStringField;
      cdsXCTATOTAL: TStringField;
      cdsXDOCID: TStringField;
      cdsXDOCSIT: TStringField;
      cdsXFLAGVAR: TStringField;
      cdsXFLAGVAR2: TStringField;
      cdsXNODOCSIT: TStringField;
      cdsXRAZSOCDES: TStringField;
      cdsXSITDES: TStringField;
      cdsXSITID: TStringField;
      cdsXSITUACION: TStringField;
      cdsXTCANJEID: TStringField;
      cdsXTDIARID: TStringField;
      cdsXTMONDES: TStringField;
      cdsXTMONID: TStringField;
      cdsXUBICACION: TStringField;
      cdsXUBICADES: TStringField;
      cdsXUBIID: TStringField;
      cdsXVEID: TStringField;
      dsX: TwwDataSource;
      ppdbLetraCanje: TppDBPipeline;
      pprLetraCanje: TppReport;
      cdsXCLIEDIR: TStringField;
      cdsXCLIETELF: TStringField;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText10: TppDBText;
      ppDBText12: TppDBText;
      ppLabel1: TppLabel;
      ppLabel3: TppLabel;
      ppDBText14: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
      Z1sbtCambiaVcmto: TSpeedButton;
      Z2sbtNumeroBanco: TSpeedButton;
      ppDetailBand4: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText17: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText23: TppDBText;
      ppDBText2: TppDBText;
      ppDBText11: TppDBText;
      ppDBText22: TppDBText;
      ppDBText24: TppDBText;
      pplLetras: TppLabel;
      ppLabel2: TppLabel;
      ppDBText9: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDesigner1: TppDesigner;
      sbtn2: TSpeedButton;
      sbtn1: TSpeedButton;
      pprNumerosUnicos: TppReport;
      ppdbNumerosUnicos: TppDBPipeline;
      SpeedButton1: TSpeedButton;
      Procedure sbtn1Click(Sender: TObject);
      Procedure Z2sbtn7Click(Sender: TObject);
      Procedure Z2sbtn6Click(Sender: TObject);
      Procedure sbtn2Click(Sender: TObject);
      Procedure ppDetailBand4BeforePrint(Sender: TObject);
      Procedure Z2bbtn5Click(Sender: TObject);
      Procedure pprLetrasPrintingComplete(Sender: TObject);
      Procedure Z2ImpMasivoClick(Sender: TObject);
      Procedure ppHeaderBand1BeforePrint(Sender: TObject);
      Procedure Z1sbtCambiaVcmtoClick(Sender: TObject);
      Procedure Z2sbtNumeroBancoClick(Sender: TObject);
      Procedure SpeedButton1Click(Sender: TObject);
   Private
    { Private declarations }
      grid: TwwDBGrid;
      Procedure ValidacionOEnv;
      Procedure Validacion;
      Procedure ValidacionNumeroBanco;
      Function FindFields(F: TFields; Const Field: String): Integer;
   Public
    { Public declarations }
      xFlagP: Boolean;
      Procedure GetData;
   End;

Var
   FToolLetras: TFToolLetras;

Implementation

//uses CxC001, CxC218, CxCDM, CxC230 , CXC308, CXC309, CxC223 ;
Uses oaCC2000, CxC218, CxCDM, CxC230, CXC308, CXC309, CxC223, CXC226;
// CXC226.pas   FENVIALETBCO   Envío de Letras al Banco

{$R *.DFM}

Procedure TFToolLetras.sbtn1Click(Sender: TObject);
Var
   i: Integer;
   sSIT, xSitua, xWhere, xTLetr: String;
Begin
   ValidacionOEnv;
   FEnvioBancos := TFEnvioBancos.Create(self);
   If Mantc.FMant.dbgFiltro.SelectedList.Count = 0 Then
      Raise exception.create('Debe Seleccionar por lo menos un Documento');

   xWhere := 'SITUAFLAG=''5''';
   sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   For i := 0 To Mantc.FMant.dbgFiltro.SelectedList.Count - 1 Do
   Begin
      Mantc.FMant.dbgFiltro.datasource.dataset.GotoBookmark(Mantc.FMant.dbgFiltro.SelectedList.items[i]);
      xSitua := Mantc.FMant.dbgFiltro.Datasource.Dataset.FieldByName('SITID').AsString;
      xTLetr := Mantc.FMant.dbgFiltro.Datasource.Dataset.FieldByName('CCNODOC').AsString;
      If sSIT <> xSitua Then
         Raise Exception.Create('Letra ' + xTLetr + ' Tiene Situación Errada');

   End;

   FEnviobancos.Adiciona(Mantc.FMant.dbgFiltro);

   Try
      FEnvioBancos.ShowModal;
   Finally
      FEnvioBancos.Free;
   End;
   Mantc.FMant.dbgFiltro.SelectedList.Clear;
   Mantc.FMant.dbgFiltro.RefreshDisplay;
End;

Procedure TFToolLetras.ValidacionOEnv;
Var
   grid: TwwDbGrid;
   i: Integer;
Begin

   grid := Mantc.FMant.dbgFiltro;
   If grid.SelectedList.Count <= 1 Then
      Exit;
   For i := grid.SelectedList.Count - 1 Downto 0 Do
   Begin
      grid.datasource.dataset.GotoBookmark(grid.SelectedList.items[i]);
      If Not grid.Datasource.Dataset.FieldByName('CCOENV').IsNull Then
      Begin
         If Trim(grid.Datasource.Dataset.FieldByName('CCOENV').AsString) <> '' Then
         Begin
            grid.SelectedList.Delete(i);
         End;
      End;
   End;
   If grid.SelectedList.Count = 0 Then
   Begin
      Raise exception.Create('Las Letras escogidas ' + #13 +
         'ya tienen asignada una Orden de Envío');
   End;

End;

Procedure TFToolLetras.Validacion;
Var
   sImpresa: String;
Begin
   sImpresa := DMCXC.DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '2');
   If sImpresa = '' Then
      Raise Exception.Create('Error en la Tabla de Situaciones de Letras');
   If DMCXC.cdsMovCxC.FieldByName('SITID').AsString <> sImpresa Then
      Raise Exception.Create('No se puede cambiar fecha de vencimiento a la letra');
End;

Procedure TFToolLetras.Z2sbtn7Click(Sender: TObject);
Var
   sSQL, sWhere: String;
Begin
   If MessageDlg('Está seguro de Actualizar las letras?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   sSQL := ' SELECT * FROM CXC503 ';
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(sSQL);
   DMCXC.cdsQry2.Open;
   DMCXC.cdsQry2.IndexFieldNames := 'NUMLET';
   DMCXC.cdsQry2.First;

   sSQL := ' SELECT ''AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'' DESCRIPCION FROM TGE901 ';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(sSQL);
   DMCXC.cdsQry3.Open;
   DMCXC.cdsQry3.EmptyDataSet;

// PARA EL BANCO DE CREDITO
   If (DMCXC.cdsQry2.RecordCount > 0) And (DMCXC.cdsQry2.FieldByName('BANCOID').AsString = '01') Then
   Begin
      While Not DMCXC.cdsQry2.EOF Do
      Begin
         sWhere :=
            ' DOCID=' + QuotedStr(DMCXC.wsLet) + ' AND CCSERIE=''000'' ' +
            ' AND CCNODOC=' + QuotedStr(DMCXC.cdsQry2.FieldByName('NUMLET').AsString) +
            ' AND CCFVCMTO=' + QuotedStr(DMCXC.cdsQry2.FieldByName('FVCMTO').AsString) +
            ' AND CCSALORI=' + FloatToStr(DMCXC.cdsQry2.FieldByName('IMPORTE').AsFloat) +
            ' AND CLIERUC=' + QuotedStr(DMCXC.cdsQry2.FieldByName('CLIERUC').AsString);

         DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC,CCNLETBCO,UBIID,CLIEID,CLIERUC,CCFVCMTO,CCSALORI', sWhere, 'CCNLETBCO');
         If DMCXC.cdsQry.RecordCount = 0 Then
         Begin
            sWhere :=
               ' DOCID=' + QuotedStr(DMCXC.wsLet) + ' AND CCSERIE=''000'' ' +
               ' AND CCNODOC=' + QuotedStr(DMCXC.cdsQry2.FieldByName('NUMLET').AsString);
            DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC,CCNLETBCO,UBIID,CLIEID,CLIERUC,CCFVCMTO,CCSALORI', sWhere, 'CCNLETBCO');
            If DMCXC.cdsQry.FieldByName('CLIERUC').AsString <> DMCXC.cdsQry2.FieldByName('CLIERUC').AsString Then
            Begin
               DMCXC.cdsQry3.Insert;
               DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' CLIENTE DIFERENTE: ' + QuotedStr(DMCXC.cdsQry.FieldByName('CLIERUC').AsString);
               DMCXC.cdsQry3.Post;
            End;
            If DMCXC.cdsQry.FieldByName('CCFVCMTO').AsDateTime <> DMCXC.cdsQry2.FieldByName('FVCMTO').AsDateTime Then
            Begin
               DMCXC.cdsQry3.Insert;
               DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' F. VENCIMIENTO DIFERENTE: ' + QuotedStr(DMCXC.cdsQry.FieldByName('CCFVCMTO').AsString);
               DMCXC.cdsQry3.Post;
            End;
            If DMCXC.cdsQry.FieldByName('CCSALORI').AsFloat <> DMCXC.cdsQry2.FieldByName('IMPORTE').AsFloat Then
            Begin
               DMCXC.cdsQry3.Insert;
               DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' SALDO DIFERENTE: ' + QuotedStr(DMCXC.cdsQry.FieldByName('CCSALORI').AsString);
               DMCXC.cdsQry3.Post;
            End;
            DMCXC.cdsQry2.Next;
         End
         Else
         Begin
            If DMCXC.cdsQry.FieldByName('UBIID').AsString = DMCXC.wsOfi Then
            Begin
               DMCXC.cdsQry3.Insert;
               DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' SE ENCUENTRA EN OFICINA';
               DMCXC.cdsQry3.Post;
            End
            Else
               If Length(DMCXC.cdsQry.FieldByName('CCNLETBCO').AsString) > 0 Then
               Begin
                  DMCXC.cdsQry3.Insert;
                  DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' CON NUMERO ' + DMCXC.cdsQry.FieldByName('CCNLETBCO').AsString;
                  DMCXC.cdsQry3.Post;
               End
               Else
                  If Length(DMCXC.cdsQry.FieldByName('CCNLETBCO').AsString) <= 0 Then
                  Begin
                     sSQL := 'UPDATE CXC301 SET CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepTimeServi + ', ' +
                        ' CCNLETBCO=' + QuotedStr(DMCXC.cdsQry2.FieldByName('NUMUNI').AsString) + ' WHERE ' + sWhere;
                     Try
                        DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
                     Except
                        DMCXC.cdsQry3.Insert;
                        DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' NO SE ACTUALIZO';
                        DMCXC.cdsQry3.Post;
                     End;
                  End;
            DMCXC.cdsQry2.Next;
         End;
      End;
      DMCXC.cdsQry2.ApplyUpdates(-1);
      DMCXC.cdsQry2.IndexFieldNames := '';
      ppdbNumerosUnicos.DataSource := DMCXC.dsQry3;
      pprNumerosUnicos.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NumerosUnicos.Rtm';
      pprNumerosUnicos.template.LoadFromFile;
      If DMCXC.cdsQry3.RecordCount > 0 Then
      Begin
         pprNumerosUnicos.Print;
      End
      Else
      Begin
         showMessage('No hay registros que imprimir');
      End;
      showMessage('Proceso realizado satisfactoriamente');
      ppdbNumerosUnicos.DataSource := Nil;
   End;

  //  PARA EL BANCO DE CONTINENTAL
   If (DMCXC.cdsQry2.RecordCount > 0) And (DMCXC.cdsQry2.FieldByName('BANCOID').AsString = '02') Then
   Begin
      While Not DMCXC.cdsQry2.EOF Do
      Begin
         sWhere :=
            ' DOCID=' + QuotedStr(DMCXC.wsLet) + ' AND CCSERIE=''000'' ' +
            ' AND UBIID=' + QuotedStr(DMCXC.cdsQry2.FieldByName('BANCOID').AsString) +
            ' AND CCFVCMTO=' + QuotedStr(DMCXC.cdsQry2.FieldByName('FVCMTO').AsString) +
            ' AND CCSALORI=' + FloatToStr(DMCXC.cdsQry2.FieldByName('IMPORTE').AsFloat);
//            ' AND CLIERUC='+QuotedStr(DMCXC.cdsQry2.FieldByName('CLIERUC').AsString);

         DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC,CCNLETBCO,UBIID,CLIEID,CLIERUC,CCFVCMTO,CCSALORI', sWhere, 'CCNLETBCO');
         If DMCXC.cdsQry.RecordCount = 0 Then
         Begin
            DMCXC.cdsQry3.Insert;
            DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMUNI').AsString + ' FEC. VENCIM.: ' + QuotedStr(DateToStr(DMCXC.cdsQry2.FieldByName('FVCMTO').AsDateTime)) + ' MONTO: ' + FloatToStr(DMCXC.cdsQry2.FieldByName('IMPORTE').AsFloat) + '  NO SE ENCUENTRA ';
            DMCXC.cdsQry3.Post;
            DMCXC.cdsQry2.Next;
         End
         Else
         Begin
            If (DMCXC.cdsQry.RecordCount = 1) Then
            Begin
               If Length(DMCXC.cdsQry.FieldByName('CCNLETBCO').AsString) <= 0 Then
               Begin
                  sSQL := 'UPDATE CXC301 SET CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepTimeServi + ', ' +
                     ' CCNLETBCO=' + QuotedStr(DMCXC.cdsQry2.FieldByName('NUMUNI').AsString) + ' WHERE ' + sWhere;
                  Try
                     DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
                  Except
                     DMCXC.cdsQry3.Insert;
                     DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMLET').AsString + ' NO SE ACTUALIZO';
                     DMCXC.cdsQry3.Post;
                  End;
               End;
               DMCXC.cdsQry2.Next;
            End
            Else
            Begin
               If (DMCXC.cdsQry.RecordCount > 1) Then
               Begin
                  DMCXC.cdsQry3.Insert;
                  DMCXC.cdsQry3.FieldByName('DESCRIPCION').AsString := 'LETRA: ' + DMCXC.cdsQry2.FieldByName('NUMUNI').AsString + ' FEC. VENCIM.: ' + QuotedStr(DateToStr(DMCXC.cdsQry2.FieldByName('FVCMTO').AsDateTime)) + ' MONTO: ' + FloatToStr(DMCXC.cdsQry2.FieldByName('IMPORTE').AsFloat) + '  SE ENCUETRA ' + IntToStr(DMCXC.cdsQry.RecordCount) + ' VECES';
                  DMCXC.cdsQry3.Post;
                  DMCXC.cdsQry2.Next;
               End;
            End;
         End;
      End;
      DMCXC.cdsQry2.ApplyUpdates(-1);
      DMCXC.cdsQry2.IndexFieldNames := '';
      ppdbNumerosUnicos.DataSource := DMCXC.dsQry3;
      pprNumerosUnicos.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\NumerosUnicos.Rtm';
      pprNumerosUnicos.template.LoadFromFile;
      If DMCXC.cdsQry3.RecordCount > 0 Then
      Begin
         pprNumerosUnicos.Print;
      End
      Else
      Begin
         showMessage('No hay registros que imprimir');
      End;
      showMessage('Proceso realizado satisfactoriamente');
      ppdbNumerosUnicos.DataSource := Nil;
   End;
   DMCXC.cdsQry2.IndexFieldNames := '';
End;

Procedure TFToolLetras.Z2sbtn6Click(Sender: TObject);
Begin
// CXC218.pas   FUBISIT   Cambio de Ubicación y Situación de Letras
   FUBISIT := TFUBISIT.Create(Self);
   Try
      FUBISIT.GetData;
      FUBISIT.ShowModal;
   Finally
      FUBISIT.dbgUBISIT.dataSource := DMCXC.dsQry7;
      FUBISIT.Free;
   End;
End;

Procedure TFToolLetras.sbtn2Click(Sender: TObject);
Begin
   ValidacionOEnv;
   FEnvioBancos := TFEnvioBancos.Create(self);
   If Mantc.FMant.dbgFiltro.SelectedList.Count > 0 Then
      Raise exception.create('Para Editar No Debe Seleccionar Documentos');

   FEnvioBancos.Edita;
   Try
      FEnvioBancos.ShowModal;
   Finally
      FEnvioBancos.Free;
   End;
   Mantc.FMant.dbgFiltro.SelectedList.Clear;
   Mantc.FMant.dbgFiltro.RefreshDisplay;
End;

Procedure TFToolLetras.ppDetailBand4BeforePrint(Sender: TObject);
Var
   sMON: String;
Begin
//   sCIA:=cdsX.Fields.FieldByName('CIAID').AsString;
//   sCLI:=cdsX.Fields.FieldByName('CLIEID').AsString;
//   sAval:=cdsX.Fields.FieldByName('CCAVAL').AsString;
 //  sMON:=cdsX.Fields.FieldByName('TMONID').AsString;
//   sMON:=DMCXC.cdsQry7.FieldByName('TMONID').AsString;

//   pplLetras.Caption:=StrNum( cdsX.FieldByName( 'CCMTOORI').Value )+' '+DisplayDescrip( 'TGE103','TMONDES', 'TMONID',sMON );
//   pplLetras.Caption:=StrNum( DMCXC.cdsQry7.FieldByName('CCSALORI').AsFloat)+' '+DisplayDescrip( 'TGE103','TMONDES', 'TMONID',sMON );
   //+' '+DisplayDescrip( 'TGE103','TMONDES', 'TMONID',sMON );
//   pplCia2.Caption  :=DisplayDescrip( 'TGE101','CIADES', 'CIAID', sCIA );
//   pplClie2.Caption :=DisplayDescrip( 'TGE204','CLIEDES','ClieId',sCLI );
//   pplAval2.Caption :=DisplayDescrip( 'TGE204','CLIEDES','ClieId',sAval );

//   pplClie3.Caption :=pplClie2.Caption;
//   pplMon1.Caption   :=DisplayDescrip( 'TGE103','TMONABR', 'TMONID',sMON );

End;

Procedure TFToolLetras.Z2bbtn5Click(Sender: TObject);
Var
   xWhere, sSIT, sUBI, sCIA, sTDO, sCND: String;
Begin
   xFlagP := False;
   GetData;
   ppdbpLetras.DataSource := DMCXC.dsQry7;

   xFlagP := False;
   pprLetras.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Letras.Rtm';
   pprLetras.template.LoadFromFile;
   pprLetras.Print;
//   ppDesigner1.Show;

   If xFlagP Then
   Begin
      DMCXC.cdsQry7.First;

      xWhere := 'SITUAFLAG=''2''';
      sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');
//     sUBI  :='';
      xWhere := 'UBICAFLAG=''O''';
      sUBI := DMCXC.BuscaQry('dspTGE', 'CXC105', '*', xWhere, 'UBICAID');

      While Not DMCXC.cdsQry7.eof Do
      Begin
         sCIA := DMCXC.cdsQry7.FieldByName('CIAID').AsString;
         sTDO := DMCXC.cdsQry7.FieldByName('DOCID').AsString;
         sCND := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
         If DMCXC.CambioSituacion(DMCXC.cdsQry7.FieldByName('SITID').AsString, sSIT) Then
         Begin
            DMCXC.SetHyst(sCIA, sTDO, sCND);
            DMCXC.UpdLET(sCIA, sTDO, sCND, sUBI, sSIT, '', '', '', '', '', DMCXC.cdsQry7.FieldByName('CCNLETBCO').AsString, DMCXC.DateS, False, '', 0, 0);
         End;
         DMCXC.cdsQry7.Next;
      End;

      Mantc.RefreshFilter;

      ShowMessage('Letras Impresas');
   End;
End;

Procedure TFToolLetras.GetData;
Var
   sSQL, cad, cad1: String;
   i: Integer;
   sZona, sDir: String;
   sSQLsLetras: String;

Begin
   grid := Mantc.FMant.dbgFiltro;
   cad := '';
   cad1 := '';

   If grid.DataSource.DataSet.RecordCount = 0 Then
   Begin
  //  Application.MessageBox('No existen registros...',PChar(Caption),MB_OK);
      Raise Exception.Create('No existen registros...');
//    Exit;
   End;

   If grid.SelectedList.Count = 0 Then
   Begin
//    Application.MessageBox('No existen registros seleccionados...',PChar(Caption),MB_OK);
      Raise Exception.Create('No existen registros seleccionados...');
//    Exit;
   End;

   For i := 0 To grid.SelectedList.Count - 1 Do
   Begin
      grid.DataSource.DataSet.GotoBookmark(grid.SelectedList.Items[i]);

{    cad:=' (CXC301.CCNODOC='+QuotedStr(grid.DataSource.DataSet.FieldByName('CCNODOC').AsString)+' '+
                   '  AND CXC301.CCANOMES='+QuotedStr(grid.DataSource.DataSet.FieldByName('CCANOMES').AsString)+' '+
                   '  AND CXC301.TDIARID='+QuotedStr(grid.DataSource.DataSet.FieldByName('TDIARID').AsString)+' '+
                   '  AND CXC301.CLIEID='+QuotedStr(grid.DataSource.DataSet.FieldByName('CLIEID').AsString)+' ) ';}
      cad := ' (CXC301.CCSERIE=' + QuotedStr(grid.DataSource.DataSet.FieldByName('CCSERIE').AsString) + ' ' +
         '  AND CXC301.CCNODOC=' + QuotedStr(grid.DataSource.DataSet.FieldByName('CCNODOC').AsString) + ' ) ';
      If i = 0 Then
         cad1 := cad1 + cad
      Else
         cad1 := cad1 + ' OR ' + cad;
   End;

   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
//     sSQL:=' SELECT S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||RTRIM(UPPER(COALESCE(Z.ZVTAABREV,'''')))||'' - ''||COALESCE(T.TVTADES,''''))) '+
//     sSQL:=' SELECT S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||COALESCE(C.CLIECZIP,''''))) '+
//           ' CLIEDIRINC, '+
      sSQL := ' SELECT ''                                                                                          '' LETRAS ,' +
         ' C.AVALNOMB,C.AVALTELF,C.AVALDIR,C.AVALDOC,S.SITUADES, CASE WHEN COALESCE(Z.ZIPID,'''')<>'''' THEN COALESCE(C.CLIEDIR,'''') || '' - '' || RTRIM(UPPER(Z.ZIPID)) ' +
         ' ELSE COALESCE(C.CLIEDIR,'''') || '' - '' || RTRIM(UPPER(COALESCE(Z.ZVTAABREV,''''))) ||'' - ''|| COALESCE(T.TVTADES,'''') END CLIEDIRINC, ' +
         ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* ' +
         ' FROM CXC301 ' +
         ' LEFT JOIN TGE103 M ON M.TMONID=CXC301.TMONID ' +
         ' LEFT JOIN CXC105 U ON U.UBICAID=CXC301.UBIID ' +
         ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID  ' +
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID ' +
         ' LEFT JOIN FAC105 T ON T.TVTAID=CXC301.TVTAID ' +
         ' LEFT JOIN CXC104 S ON S.SITUAID=CXC301.SITID ' +
         ' WHERE ' + xSelDoc + ' AND (' + cad1 + ')';
   End
   Else
   //REVISAR EN DERRAMA
   // 04/10/2001
   Begin
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         sSQL := ' SELECT ''                                                                                          '' LETRAS ,' +
            ' S.SITUADES,LTRIM(RTRIM(NVL(C.CLIEDIR,'''')||'' - ''||NVL(Z.ZVTADES,'''')||'' - ''||NVL(T.TVTADES,''''))) ' +
            ' CLIEDIRINC, ' +
            ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* ' +
            ' FROM CXC301,TGE103 M,CXC105 U,TGE204 C,FAC106 Z,FAC105 T,CXC104 S ' +
            ' WHERE ' +
            ' M.TMONID(+)=CXC301.TMONID AND U.UBICAID(+)=CXC301.UBIID AND C.CLIEID(+)=CXC301.CLIEID  ' +
            ' AND Z.ZVTAID(+)=C.ZONVTAID AND T.TVTAID(+)=CXC301.TVTAID AND S.SITUAID(+)=CXC301.SITID ' +
            ' AND ' + xSelDoc + ' AND (' + cad1 + ')';
      End;
   End;
   DMCXC.cdsQry7.Close;
   DMCXC.cdsQry7.DataRequest(sSQL);
   DMCXC.cdsQry7.Open;
   DMCXC.cdsQry7.First;
   While Not DMCXC.cdsQry7.EOF Do
   Begin
      DMCXC.cdsQry7.Edit;
      DMCXC.cdsQry7.FieldByName('LETRAS').AsString := StrNum(DMCXC.cdsQry7.FieldByName('CCSALORI').AsFloat) + ' ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', DMCXC.cdsQry7.FieldByName('TMONID').AsString);
      DMCXC.cdsQry7.Post;
      DMCXC.cdsQry7.Next;
   End;
   DMCXC.cdsQry7.First;
End;

Function TFToolLetras.FindFields(F: TFields; Const Field: String): Integer;
Var
   i: Integer;
Begin
   result := -1;
   For i := 0 To F.Count - 1 Do
   Begin
      If F.Fields[i].FieldName = Field Then
      Begin
         Result := i;
         exit;
      End;
   End;
End;

Procedure TFToolLetras.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFToolLetras.Z2ImpMasivoClick(Sender: TObject);
Var
   sSQL: String;
   sSit, sUbi: String;
   xWhere, sCIA, sTDO, sCND: String;
   i, f, j: Integer;
   sDir, sZona, sLugar: String;
Begin
   sSit := DMCXC.DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '1');

   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT ''                                                                                          '' LETRAS ,' +
         ' C.AVALNOMB,C.AVALTELF,C.AVALDIR,C.AVALDOC,S.SITUADES, CASE WHEN COALESCE(Z.ZIPID,'''')<>'''' THEN COALESCE(C.CLIEDIR,'''') || '' - '' || RTRIM(UPPER(Z.ZIPID)) ' +
         ' ELSE COALESCE(C.CLIEDIR,'''') || '' - '' || RTRIM(UPPER(COALESCE(Z.ZVTAABREV,''''))) ||'' - ''|| COALESCE(T.TVTADES,'''') END CLIEDIRINC, ' +
         ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* ' +
         ' FROM CXC301 ' +
         ' LEFT JOIN TGE103 M ON M.TMONID=CXC301.TMONID ' +
         ' LEFT JOIN CXC105 U ON U.UBICAID=CXC301.UBIID ' +
         ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID  ' +
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID ' +
         ' LEFT JOIN FAC105 T ON T.TVTAID=CXC301.TVTAID ' +
         ' LEFT JOIN CXC104 S ON S.SITUAID=CXC301.SITID ' +
         ' WHERE CCFLAGVTA=''S'' AND SITID=' + QuotedStr(sSit) + ' AND ' + xSelDoc +
         ' ORDER BY CXC301.CCNODOC ';
   End
   Else
   //REVISAR EN DERRAMA
   // 04/10/2001
   Begin
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         sSQL := ' SELECT S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(T.TVTADES,''''))) ' +
            ' CLIEDIRINC, ' +
            ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* ' +
            ' FROM CXC301,TGE103 M,CXC105 U,TGE204 C,FAC106 Z,FAC105 T,CXC104 S ' +
            ' WHERE CCFLAGVTA=''S'' AND SITID=' + QuotedStr(sSit) +
            ' M.TMONID(+)=CXC301.TMONID AND U.UBICAID(+)=CXC301.UBIID AND C.CLIEID(+)=CXC301.CLIEID  ' +
            ' Z.ZVTAID(+)=C.ZONVTAID(+) AND T.TVTAID(+)=CXC301.TVTAID AND S.SITUAID(+)=CXC301.SITID ' +
            ' AND ' + xSelDoc;
      End;
   End;
   DMCXC.cdsQry7.Close;
   DMCXC.cdsQry7.DataRequest(sSQL);
   DMCXC.cdsQry7.Open;
   DMCXC.cdsQry7.First;
   While Not DMCXC.cdsQry7.EOF Do
   Begin
      DMCXC.cdsQry7.Edit;
      DMCXC.cdsQry7.FieldByName('LETRAS').AsString := StrNum(DMCXC.cdsQry7.FieldByName('CCSALORI').AsFloat) + ' ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', DMCXC.cdsQry7.FieldByName('TMONID').AsString);
      DMCXC.cdsQry7.Post;
      DMCXC.cdsQry7.Next;
   End;
   DMCXC.cdsQry7.First;

   If DMCXC.cdsQry7.Recordcount = 0 Then
   Begin
      showMessage('No hay letras pendientes de impresión');
      exit;
   End;

   ppdbpLetras.DataSource := DMCXC.dsQry7;

   pprLetras.template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Letras.rtm';
   pprLetras.template.LoadFromFile;
   pprLetras.Print;

//    ShowMessage('Prepare el Papel para imprimir el Reporte de Letras por Canje.'+#13);
//    pprLetraCanje.Print;

   If xFlagP Then
   Begin

      DMCXC.cdsQry7.First;

      xWhere := 'UBICAFLAG=''O''';
      sUBI := DMCXC.BuscaQry('dspTGE', 'CXC105', '*', xWhere, 'UBICAID');

      xWhere := 'SITUAFLAG=''2''';
      sSIT := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');
//      sUBI  :='';

      While Not DMCXC.cdsQry7.eof Do
      Begin
         sCIA := DMCXC.cdsQry7.FieldByName('CIAID').AsString;
         sTDO := DMCXC.cdsQry7.FieldByName('DOCID').AsString;
         sCND := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
         If DMCXC.CambioSituacion(DMCXC.cdsQry7.FieldByName('SITID').AsString, sSIT) Then
         Begin
            DMCXC.SetHyst(sCIA, sTDO, sCND);
            DMCXC.UpdLET(sCIA, sTDO, sCND, sUBI, sSIT, '', '', '', '', '', DMCXC.cdsQry7.Fields.FieldByName('CCNLETBCO').AsString, DMCXC.DateS, False, '', 0, 0);
         End;
         DMCXC.cdsQry7.Next;
      End;

      Mantc.RefreshFilter;

      ShowMessage('Letras Impresas');
   End;

   ppdbpLetras.DataSource := Nil;

End;

Procedure TFToolLetras.ppHeaderBand1BeforePrint(Sender: TObject);
Begin
//  lblCIA.text:=DisplayDescrip('TGE101','CIADES','CIAID',ppDBText8.Text);
End;

Procedure TFToolLetras.Z1sbtCambiaVcmtoClick(Sender: TObject);
Begin
   Validacion;
   FCambiaVcmto := TFCambiaVcmto.Create(Self);
   Try
      FCambiaVcmto.RecibeDatos(Mantc.FMant.cds2.FieldByName('CIAID').AsString,
         Mantc.FMant.cds2.FieldByName('DOCID').AsString,
         Mantc.FMant.cds2.FieldByName('CCNODOC').AsString);
      FCambiaVcmto.ShowModal;
   Finally
      FCambiaVcmto.Free;
   End;
End;

Procedure TFToolLetras.Z2sbtNumeroBancoClick(Sender: TObject);
Begin
   ValidacionNumeroBanco;
   FCambiaNumeroBanco := TFCambiaNumeroBanco.Create(Self);
   Try
      FCambiaNumeroBanco.RecibeDatos(Mantc.FMant.cds2.FieldByName('CIAID').AsString,
         Mantc.FMant.cds2.FieldByName('DOCID').AsString,
         Mantc.FMant.cds2.FieldByName('CCNODOC').AsString);
      FCambiaNumeroBanco.ShowModal;
   Finally
      FCambiaNumeroBanco.Free;
   End;
End;

Procedure TFToolLetras.ValidacionNumeroBanco;
Begin
   If DMCXC.BuscaQry('dspTGE', 'CXC105', 'BANCOID', 'UBICAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('UBIID').AsString), 'BANCOID') = '' Then
      Raise Exception.Create('La Letra ' + DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString + ' no está en Bancos');

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'C' Then
      Raise Exception.Create('La Letra ' + DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString + ' está cancelada');
End;

Procedure TFToolLetras.SpeedButton1Click(Sender: TObject);
Begin
// CXC226.pas   FENVIALETBCO   Envío de Letras al Banco
   FENVIALETBCO := TFENVIALETBCO.Create(Self);
   Try
      FENVIALETBCO.GetData;
      FENVIALETBCO.ShowModal;
   Finally
      FENVIALETBCO.dbgUBISIT.dataSource := DMCXC.dsQry7;
      FENVIALETBCO.Free;
   End;
End;

End.

