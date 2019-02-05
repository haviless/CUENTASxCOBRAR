Unit CXC312;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
   ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
   ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, ControlGridDisp, ppVar, ppviewr,
   StdCtrls, msgdlgs;

Type
   TFToolPlanilla = Class(TForm)
      pnGLT: TPanel;
      sbtABl: TSpeedButton;
      sbtCBl: TSpeedButton;
      sbtEliminar: TSpeedButton;
      ppdbFuente: TppDBPipeline;
      ppReporte: TppReport;
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
      pplblGuionBase: TppLabel;
      ppDBDet: TppDetailBand;
      ppFBPie: TppFooterBand;
      pplblLin2: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppDBText1: TppDBText;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppGroup5: TppGroup;
      ppGroupHeaderBand5: TppGroupHeaderBand;
      ppGroupFooterBand5: TppGroupFooterBand;
      sbtImprimirPlanilla: TSpeedButton;
      sbtNC: TSpeedButton;
      sbtEntregaDocs: TSpeedButton;
      Procedure sbtABlClick(Sender: TObject);
      Procedure sbtCBlClick(Sender: TObject);
      Procedure sbtEliminarClick(Sender: TObject);
      Procedure ppHBCabBeforePrint(Sender: TObject);
      Procedure ppReporteBeforePrint(Sender: TObject);
      Procedure ppReportePreviewFormCreate(Sender: TObject);
      Procedure sbtNCClick(Sender: TObject);
      Procedure sbtImprimirPlanillaClick(Sender: TObject);
      Procedure sbtEntregaDocsClick(Sender: TObject);

   Private
    { Private declarations }
      xCont: String;
      cdsGProv: TwwClientDataSet;
      MProv: TMant;
      grid: TwwDBGrid;
   //** 15/02/2001 - PJSV - COPIA DE LO QUE HAY EN CXP
      Procedure EliminaProvision;
      Procedure EliminaNotaCredito;
      Procedure AplicaNotaCredito; //27/07
   Public
    { Public declarations }
      xSQL: String;
      Function AsientoCuadra: Boolean;
      Procedure GetData;
   End;

Var
   FToolPlanilla: TFToolPlanilla;

Implementation

Uses CxC001, CxCDM, CxC201, CxC404, Cxc313, CxC224;

{$R *.DFM}

Procedure TFToolPlanilla.sbtABlClick(Sender: TObject);
Var
   P, E, T, xFiltro, xTMonid: String;
   xClAuxId, xcLIE: String;
   xCPMtoLoc, xCPMtoExt: double;
   sSigno, xDoc, xCia, xPer, xDiar, xNReg: String;
   xA: integer; // Contador de  Aceptados, Rechazados
Begin
   If MessageDlg('Aceptar Todos los Registros' + chr(13) + '      ¿ Esta Seguro ?      ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

 ////////////////////
   xA := 0;

   If FPrincipal.xTipoProv = 'P' Then
   Begin
      cdsGProv := FPrincipal.GProvision.FMant.cds2; //Provisiones
      MProv := FPrincipal.GProvision;
      sSigno := '+';
   End
   Else
      If FPrincipal.xTipoProv = 'N' Then
      Begin
         cdsGProv := FPrincipal.GNCredito.FMant.cds2; //Nota Credito
         MProv := FPrincipal.GNCredito;
         sSigno := '-';
      End;
//////////////////////////////////////////////////

   cdsGProv.Close;
   cdsGProv.Open;
   cdsGprov.disablecontrols;
//////////////////////////////////////////////////
   If cdsGProv.RecordCount = 0 Then Exit;
   cdsGProv.First;
//CLG

   While Not cdsGProv.EOF Do
   Begin
      P := cdsGProv.FieldByName('CCANOMES').AsString;
      E := cdsGProv.FieldByName('CCESTADO').AsString;
      T := cdsGProv.FieldByName('CCANOMES').AsString;

      If (P = T) And (E = 'I') Then
      Begin
         xCont := 'S';
         xCia := cdsGProv.FieldByName('CIAID').Asstring;
         xPer := cdsGProv.FieldByName('CCANOMES').Asstring;
         xDiar := cdsGProv.FieldByName('TDIARID').Asstring;
         xNReg := cdsGProv.FieldByName('CCNOREG').Asstring;
         xDoc := cdsGProv.FieldByName('DOCID').Asstring;
         /////////////////////////////////////////////////
         xClAuxId := cdsGProv.FieldByName('CLAUXID').Asstring;
         xClie := cdsGProv.FieldByName('CLIEID').Asstring;

//CLG
         xCPMtoLoc := cdsGProv.FieldByName('CCSALLOC').value;
         xCPMtoExt := cdsGProv.FieldByName('CCSALEXT').value;

         xTMonid := cdsGProv.FieldByName('TMONID').value;
         /////////////////////////////////////////////////
{         xFiltro:='CIAID='   +''''+xCia    +''''+' and '+
                  'TDIARID=' +''''+xDiar+''''+' and '+
                  'CCANOMES='+''''+xPer+''''+' and '+
                  'CCNOREG=' +''''+xNReg+'''';

         FiltraCds( DM1.cdsDetCxC,  'Select * from CXC302 Where '+xFiltro );

         /////////////////////////////////////////////////
         if not AsientoCuadra then
            raise exception.Create(' Error:  Asiento NO Cuadra ');}

         xSQL := 'Update CXC301 Set CCESTADO=''P'',CCFREG=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, DATE) + ''')'
            + ',CCHREG= ' + DM1.wRepTimeServi;
         xSQL := xSQL + ' Where CIAID=''' + xCia + ''' and TDIARID=''' + xDiar + ''' and '
            + 'CCANOMES=''' + xPer + ''' and CCNOREG=''' + xNReg + ''' and DOCID=''' + xDoc + '''';

         Dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.SaldosAuxiliarCLG(xCia, xPer, xClAuxId, xClie, sSigno,
            xCPMtoLoc, xCPMtoExt, xTMonid);
         xA := xA + 1;
         /////////////////////////////////////////////////
      End
      Else
         If P <> T Then //  Compara si los periodos son iguales
         Begin
            Showmessage(' Debe Aceptar solo Registros con periodos iguales');
            xCont := 'N';
            exit
         End;

      // validación de  los estados
      If (E = 'P') Or (E = 'C') Then //Pendiente  o Contabilizado
      Begin
         Showmessage(' Debe Aceptar solo Incompletos');
         xCont := 'N';
         Exit
      End;

      cdsGProv.Next;
   End;
   MProv.RefreshFilter;
   ShowMessage('Registros Contabilizados =  ' + inttostr(xA) + '');
End;

Procedure TFToolPlanilla.sbtCBlClick(Sender: TObject);
Var
   xEst: String; // Flag de Estado, Aceptados, Rechazados
   xConta, xTipDet: String; //Flag de Contabilizacion,  Tipo de IGV
   xCia, xPer, xDiar, xNReg: String;
   xA, xR: integer; // Contador de  Aceptados, Rechazados
Begin
   If MessageDlg('Contabilizar Todos los Registros' + chr(13) + '      ¿ Esta Seguro ?      ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   xA := 0;
   xR := 0;
   ///////////////////////////////////////////////
   If FPrincipal.xTipoProv = 'P' Then
   Begin
      cdsGProv := FPrincipal.GProvision.FMant.cds2; //Provisiones
      MProv := FPrincipal.GProvision;
   End
   Else
      If FPrincipal.xTipoProv = 'N' Then
      Begin
         cdsGProv := FPrincipal.GNCredito.FMant.cds2; //Nota Credito
         MProv := FPrincipal.GNCredito;
      End;
   //////////////////////////////////////////////
   cdsGprov.disablecontrols; //
   cdsGProv.First;
   While Not cdsGProv.EOF Do
   Begin
      xCia := cdsGProv.FieldByName('CIAID').Asstring;
      xPer := cdsGProv.FieldByName('CCANOMES').Asstring;
      xDiar := cdsGProv.FieldByName('TDIARID').Asstring;
      xNReg := cdsGProv.FieldByName('CCNOREG').Asstring;
      xEst := cdsGProv.FieldByName('CCESTADO').Asstring;
      xConta := cdsGProv.FieldByName('CC_CONTA').Asstring;
     //** 12/09/2001 - pjsv
      If dm1.MesCerrado(Copy(xper, 5, 2), Copy(xper, 1, 4), xCia) Then
      //** no se emite ningún mensaje
      Else
      Begin
         If (xEst = 'P') And ((xConta = 'N') Or (xConta = '')) Then
         Begin
            If DM1.wAdmin = 'S' Then Exit;

            If cdsGProv.FieldByName('CC_CONTA').value = 'S' Then
               Raise exception.Create('Error:  Asiento ya fue Contabilizado');

            DM1.GeneraContabilidad(xCIa, xDiar, xPer, xNReg, Self);
            xSQL := 'Update CXC301 Set CC_CONTA=''S''';
            xSQL := xSQL + 'Where CiaID=' + '''' + xCia + '''' + ' and TDIARID=' + '''' + xDiar +
               '''' + ' and ' + ' CCANOMES=' + '''' + xPer + '''' + ' and ' +
               'CCNOREG=' + '''' + xNReg + '''';
            Dm1.DCOM1.AppServer.EjecutaSQL(xSQL);

            xSQL := ' ';

            xSQL := 'Update CXC302 Set CCCMPRB=' + '''' + xNReg + ''' ';
            xSQL := xSQL + 'Where CIAID=' + '''' + xCia + '''' + ' and TDIARID=' + '''' + xDiar +
               '''' + ' and ' + ' CCANOMES=' + '''' + xPer + '''' + ' and ' +
               'CCNOREG=' + '''' + xNReg + '''';
            Dm1.DCOM1.AppServer.EjecutaSQL(xSQL);

            xA := xA + 1;
            MProv.RefreshFilter;
         End
         Else
            xR := xR + 1; //Registros no contabilizados
      End;
      cdsGProv.Next;
   End;
   ShowMessage('Registros Contabilizados = ' + inttostr(xA) + '' + chr(13) + 'Registros No Contabilizados = ' + inttostr(xR) + '');
End;

Function TFToolPlanilla.AsientoCuadra: Boolean;
Var
   xTotDebe, xTotHaber: Real;
Begin
   Result := False;
   xTotDebe := 0;
   xTotHaber := 0;
{   if cdsGProv.FieldByName('TMONID').value=DM1.wTMonLoc then
      xCampo:= 'DCPMOLOC'
   else
      xCampo:= 'DCPMOEXT';}
   While Not DM1.cdsDetCxC.Eof Do
   Begin
      If DM1.cdsDetCxC.FieldByName('CCDH').Value = 'D' Then
         xTotDebe := xTotDebe + FRound(DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value, 15, 2)
      Else
      Begin
         xTotHaber := xTotHaber + FRound(DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value, 15, 2);
      End;
      DM1.cdsDetCxC.Next;
   End;

   DM1.cdsDetCxC.First;
   DM1.cdsDetCxC.EnableControls;

   If FRound(xTotDebe, 15, 2) = FRound(xTotHaber, 15, 2) Then
      Result := True;
End;

Procedure TFToolPlanilla.sbtEliminarClick(Sender: TObject);
Var
   P, E, T, xFiltro: String;
   xClAuxId, xProv: String;
   xCPMtoLoc, xCPMtoExt: double;
   xCia, xPer, xDiar, xNReg: String;
Begin
   If FPrincipal.xTipoProv = 'P' Then
   Begin
      cdsGProv := FPrincipal.GProvision.FMant.cds2; //Provisiones
      MProv := FPrincipal.GProvision;
      EliminaProvision;
   End
   Else
      If FPrincipal.xTipoProv = 'N' Then
      Begin
         cdsGProv := FPrincipal.GNCredito.FMant.cds2; //Nota Credito
         MProv := FPrincipal.GNCredito;
         EliminaNotaCredito;
      End
      Else
         If FPrincipal.xTipoProv = 'O' Then
         Begin
            cdsGProv := FPrincipal.GProvision.FMant.cds2; //Otras Obligaciones
            MProv := FPrincipal.GProvision;
         End;
   cdsGprov.EnableControls;
End;

Procedure TFToolPlanilla.EliminaProvision;
Var
   sDocId, sMensaje, xWhere: String;
   xSQL,
      xMes,
      xAno, xNmes, xtmonid, ssql: String;
   iX: integer;
Begin
   sDocId := DisplayDescrip('TGE110', 'DOCDES', 'DocID', DM1.cdsMovCxC.fieldbyname('DOCID').AsString);
   sMensaje := 'Cliente  : ' + DM1.cdsMovCxC.fieldbyname('CLIEID').AsString + #13 +
      'Nombre   : ' + DM1.cdsMovCxC.fieldbyname('CLIEDES').AsString + #13 +
      'Tipo Doc : ' + sDocid + #13 +
      'Serie    : ' + DM1.cdsMovCxC.fieldbyname('CCSERIE').AsString + #13 +
      'N° Doc.  : ' + DM1.cdsMovCxC.fieldbyname('CCNODOC').AsString + #13 +
      'F.Emisión: ' + DM1.cdsMovCxC.fieldbyname('CCFEMIS').AsString + #13;

    //1ra Validación
   If DM1.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Anulada');
   End;

   xAno := Copy(DM1.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DM1.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DM1.MesCerrado(xNMes, xAno, DM1.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular la Provision' + #13 + sMensaje +
         ' pues el Periodo ya está cerrado');
   End;

   If DM1.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Contabilizada');
   End;

   If (DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DM1.cdsMovCxC.FieldByName('CCSALLOC').AsFloat <> DM1.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat) Or
      (DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DM1.cdsMovCxC.FieldByName('CCSALEXT').AsFloat <> DM1.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat) Then
      Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Canje.');

   If Not DM1.cdsMovCxC.FieldByName('CCPAGORI').IsNull Then
   Begin
      If DM1.cdsMovCxC.FieldByName('CCPAGORI').AsCurrency <> 0 Then
         Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
            'ya tiene Cancelaciones')
      Else
         If DM1.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DM1.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
            Raise Exception.create('No se puede Anular la Provisión' + #13 + sMensaje +
               'Debe Anular la Cancelación Pendiente en Caja');
   End
   Else
      If DM1.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DM1.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
         Raise Exception.create('No se puede Anular la Provisión' + #13 + sMensaje +
            'Debe Anular la Cancelación Pendiente en Caja');

   xAno := Copy(DM1.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DM1.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DM1.MesCerrado(xNMes, xAno, DM1.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular la Provision' + #13 +
         ' pues el Periodo ya está cerrado');
   End;

   If Application.MessageBox(Pchar('¿Confirme Anulación?' + #13 + #13 + sMensaje),
      'Anular',
      MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK Then
      Exit;

    //procedimientos de Eliminación
    //I. Reversión de Saldos en tge401
   If (DM1.cdsMovCxC.fieldbyname('CCESTADO').asstring = 'P') Then
   Begin
      sSQL := xSQL + 'SELECT * FROM TGE401 WHERE CIAID=' + '''' + DM1.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
                 //** 15/02/2001 - PJSV
      + ' ANO=' + '''' + COPY(DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString, 1, 4) + '''' + ' AND '
                 //**
      + ' CLAUXID=' + '''' + DM1.cdsMovCxC.fieldbyname('CLAUXID').AsString + '''' + ' AND '
         + ' AUXID=' + '''' + DM1.cdsMovCxC.fieldbyname('CLIEID').AsString + '''';
      dm1.cdsQry.close;
      dm1.cdsQry.DataRequest(ssql);
      dm1.cdsQry.open;
      If dm1.cdsQry.RecordCount >= 1 Then
      Begin
         xMes := strMes(DM1.cdsMovCxC.fieldbyname('CCFCMPRB').AsDateTime);
         xAno := StrAno(DM1.cdsMovCxC.fieldbyname('CCFCMPRB').AsDateTime);
         xSQL := 'UPDATE TGE401 SET DEBETMN' + xMes + ' = DEBETMN' + xMes + '- ' +
            DM1.cdsMovCxC.fieldbyname('CCMTOLOC').AsString + ',' +
            'DEBETME' + xMes + ' = DEBETME' + xMes + '- ' +
            DM1.cdsMovCxC.fieldbyname('CCMTOEXT').AsString;
       //** 17/11/2000 pjsv, para que actualice en el TGE401 los campos
       // saldos de los meses posteriores al del registro eliminado
       // si la moneda fue en '02' se actualiza los campos
                  //SALDTMExx,SALDSMExx,SALDSMNxx
       // si la moneda fue en '01' se actualiza los campos
                  //SALDTMNxx,SALDSMNxx,SALDSMExx
       // OJO - Esta forma lo Aprobo Martin
         xtmonid := DM1.cdsMovCxC.fieldbyname('TMONID').AsString;
           //** 15/02/2001 - PJSV
           //for iX := StrToInt(xMes) to 12 do
         For iX := StrToInt(xMes) To 13 Do
           //**
         Begin
            xNmes := StrZero(IntToStr(iX), 2);
            If DM1.cdsMovCxC.fieldbyname('TMONID').AsString = dm1.wTMonExt Then
               xsql := xsql + ' ,SALDTME' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + ' = ''' + dm1.wTMonExt + '''' +
                  ' THEN  SALDTME' + xNmes + '- ' +
                  DM1.cdsMovCxC.fieldbyname('CCMTOEXT').AsString +
                  ' END),' +
                  ' SALDSME' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + ' = ''' + dm1.wTMonExt + '''' +
                  ' THEN SALDSME' + xNmes + '- ' +
                  DM1.cdsMovCxC.fieldbyname('CCMTOEXT').AsString +
                  ' END),' +
                              //** 15/02/2001 - PJSV
               ' SALDTMN' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + ' = ''' + dm1.wTMonExt + '''' +
                  ' THEN SALDTMN' + xNmes + '- ' +
                  DM1.cdsMovCxC.fieldbyname('CCMTOLOC').AsString +
                  ' END)';
                              //**
            If DM1.cdsMovCxC.fieldbyname('TMONID').AsString = dm1.wTMonLoc Then
               xsql := xsql + ' ,SALDTMN' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + ' = ''' + dm1.wTMonLoc + '''' +
                  ' THEN  SALDTMN' + xNmes + '- ' +
                  DM1.cdsMovCxC.fieldbyname('CCMTOLOC').AsString +
                  ' END),' +
                  ' SALDSMN' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + ' = ''' + dm1.wTMonLoc + '''' +
                  ' THEN SALDSMN' + xNmes + '- ' +
                  DM1.cdsMovCxC.fieldbyname('CCMTOLOC').AsString +
                  ' END),' +
                              //** 15/02/2001 - PJSV
               ' SALDTME' + xNmes + ' = (CASE WHEN ' + quotedstr(xtmonid) + ' = ''' + dm1.wTMonLoc + '''' +
                  ' THEN SALDTME' + xNmes + '- ' +
                  DM1.cdsMovCxC.fieldbyname('CCMTOEXT').AsString +
                  ' END)';
                              //**
         End;
           //**
           //** 15/02/2001 - PJSV
         If DM1.cdsMovCxC.fieldbyname('TMONID').AsString = dm1.wTMonLoc Then
            xSQL := xSQL + ' ,DEBESMN' + COPY(DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString, 5, 2) +
               '  = DEBESMN' + COPY(DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString, 5, 2) + '- ' +
               DM1.cdsMovCxC.fieldbyname('CCMTOLOC').AsString;
         If DM1.cdsMovCxC.fieldbyname('TMONID').AsString = dm1.wTMonExt Then
            xSQL := xSQL + ' ,DEBESME' + COPY(DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString, 5, 2) +
               '  = DEBESME' + COPY(DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString, 5, 2) + '- ' +
               DM1.cdsMovCxC.fieldbyname('CCMTOEXT').AsString;
           //**

         xSQL := xSQL + ' WHERE CIAID=' + '''' + DM1.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
            + ' ANO=' + '''' + xAno + '''' + ' AND '
            + ' CLAUXID=' + '''' + DM1.cdsMovCxC.fieldbyname('CLAUXID').AsString + '''' + ' AND '
            + ' AUXID=' + '''' + DM1.cdsMovCxC.fieldbyname('CLIEID').AsString + '''';

         Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
         End;
        //** 15/02/2001 - PJSV, ESTE BLOQUE SE ENCONTRABA AFUERA Y SE EJECUTABA
        // NO CUMPLIENDO CON LOS REQUISITOS
        //II. Cambio del Flag en cxC301
        {xSQL := 'UPDATE CXC301 SET CCESTADO = ''A'', ' +
                ' USERANUL='+QuotedStr(DM1.wUsuario)+','+
                ' FECANUL='+DM1.wRepFecServi+','+
                ' HORANUL='+DM1.wRepTimeServi;
        xSQL := xSQL + ' WHERE CIAID    = ' +''''+ DM1.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
                     +       ' CCANOMES = ' +''''+ DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString + '''' + ' AND '
                     +       ' TDIARID  = ' +''''+ DM1.cdsMovCxC.fieldbyname('TDIARID').AsString + '''' + ' AND '
                     +       ' CCNOREG  = ' +''''+ DM1.cdsMovCxC.fieldbyname('CCNOREG').AsString + '''' ;
       try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL) ;
       except
       end;}

         If DM1.cdsMovCxC.FieldByName('CCFLAGVTA').AsString = 'S' Then
         Begin
            xSQL := ' UPDATE FAC305 SET FACESTADO=''ANULADO'', ' +
               ' USERANUL=' + QuotedStr(DM1.wUsuario) + ',' +
               ' FECANUL=' + DM1.wRepFecServi + ',' +
               ' HORANUL=' + DM1.wRepTimeServi +
               ' WHERE DOCID=' + QuotedStr(DM1.cdsMovCxC.FieldByName('DOCID').AsString) +
               ' AND FACSERIE=' + QuotedStr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString) +
               ' AND NFAC=' + QuotedStr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString);
            Try
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
            End;
         End;

         DM1.cdsMovCxC.edit;
         DM1.cdsMovCxC.fieldbyname('CCSALORI').AsFloat := DM1.cdsMovCxC.fieldbyname('CCMTOORI').AsFloat - DM1.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat;
         DM1.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat := DM1.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat - DM1.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat;
         DM1.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat := DM1.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat - DM1.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat;
         DM1.cdsMovCxC.fieldbyname('CCESTADO').AsString := 'A';
         DM1.cdsMovCxC.fieldbyname('USERANUL').AsString := DM1.wUsuario;
         DM1.cdsMovCxC.fieldbyname('FECANUL').AsDateTime := DateS;
         DM1.cdsMovCxC.fieldbyname('HORANUL').AsDateTime := TimeS;
         DM1.cdsMovCxC.Post;
         DM1.cdsMovCxC.DataRequest(' SELECT * FROM CXC301 WHERE ' +
            ' CIAID=' + Quotedstr(DM1.cdsMovCxC.fieldbyname('CIAID').AsString) +
            ' AND DOCID=' + Quotedstr(DM1.cdsMovCxC.fieldbyname('DOCID').AsString) +
            ' AND CCSERIE=' + Quotedstr(DM1.cdsMovCxC.fieldbyname('CCSERIE').AsString) +
            ' AND CCNODOC=' + Quotedstr(DM1.cdsMovCxC.fieldbyname('CCNODOC').AsString));

         DM1.AplicaDatos(DM1.cdsMovCxC, 'MovCxC');

        //** 17/11/2000 pjsv
         xSQL := 'UPDATE CXC302 SET CCESTADO = ''A'' ';
         xSQL := xSQL + ' WHERE CIAID    = ' + '''' + DM1.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
            + ' CCANOMES = ' + '''' + DM1.cdsMovCxC.fieldbyname('CCANOMES').AsString + '''' + ' AND '
            + ' TDIARID  = ' + '''' + DM1.cdsMovCxC.fieldbyname('TDIARID').AsString + '''' + ' AND '
            + ' CCNOREG  = ' + '''' + DM1.cdsMovCxC.fieldbyname('CCNOREG').AsString + '''';
         Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
         End;
        //**
        //**
      End
      Else
         errormsg(Caption, 'No Existe Registros para Actualizar');
   End
   Else
      errormsg(Caption, 'Sólo se Anulan Registros Aceptados');

End;

Procedure TFToolPlanilla.EliminaNotaCredito;
Var
   xWhere: String;
   xSQL,
      xMes,
      sMensaje, xAno: String;

Begin
    //comprobación sobre Notas der crédito
   sMensaje := 'Cliente  : ' + DM1.cdsMovCxC.fieldbyname('CLIEID').AsString + #13 +
// 'Tipo Doc : '+ DM1.cdsMovCxC.fieldbyname('DOCID').AsString  + #13+
   'Serie    : ' + DM1.cdsMovCxC.fieldbyname('CCSERIE').AsString + #13 +
      'N° Doc.  : ' + DM1.cdsMovCxC.fieldbyname('CCNODOC').AsString + #13 +
      'F.Emisión: ' + DM1.cdsMovCxC.fieldbyname('CCFEMIS').AsString + #13;

   If cdsGProv.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito' + #13 + sMensaje +
         'ya se encuentra Anulada');
   End;

   xAno := Copy(cdsGProv.FieldByName('CCANOMES').AsString, 1, 4);
   xMes := Copy(cdsGProv.FieldByName('CCANOMES').AsString, 5, 2);
   If DM1.MesCerrado(xMes, xAno, cdsGProv.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular La Nota de Crédigo' + #13 + sMensaje +
         'pues el Periodo ya está cerrado');
   End;

   If cdsGProv.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito' + #13 + sMensaje +
         'ya se encuentra contabilizada');
   End;
    //Comprobación sobre detalles de Nota de Crédito
   xWhere := ' CIAID    = ''' + cdsGProv.fieldbyname('CIAID').AsString + ''' ' +
      'AND TCANJEID  = ''NC'' ' +
      'AND CCCANJE  = ''' + cdsGProv.fieldbyname('CCCANJE').AsString + ''' ';

   If dm1.RecuperarDatos('CXC304', '*', xWhere) Then
   Begin
       //Realizar Comprobaciones sobre documentos subyacentes
      With dm1.cdsUltTGE Do
      Begin
         First;
         While Not Eof Do
         Begin
            xSQL := 'SELECT * FROM CXC301 ';
            xWhere := ' WHERE CIAID = ''' + fieldbyname('CIAID').AsString + ''' ' +
               'AND DOCID   = ''' + fieldbyname('DOCID').AsString + ''' ' +
               'AND CCSERIE = ''' + fieldbyname('CCSERIE').AsString + ''' ' +
               'AND CCNODOC = ''' + fieldbyname('CCNODOC').AsString + ''' ' +
                       //'AND CLAUXID = ''' + fieldbyname('CLAUXID').AsString + ''' ' +
            'AND CCESTADO <> ''A'' ' +
               'AND CLIEID    = ''' + fieldbyname('CLIEID').AsString + ''' ';
            xSQL := xSQL + xWhere;
            dm1.cdsqry.Close;
            dm1.cdsQry.DataRequest(xSQL);
            dm1.cdsQry.Open;
            If dm1.cdsqry.FieldByName('CC_CONTA').AsString = 'S' Then
            Begin
               Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
                                       //'Clase    : '+ fieldbyname('CLAUXID').AsString  + #13+
                  'Cliente  : ' + fieldbyname('CLIEID').AsString + #13 +
                  'Tipo Doc : ' + fieldbyname('DOCID').AsString + #13 +
                  'Serie    : ' + fieldbyname('CCSERIE').AsString + #13 +
                  'N° Doc.  : ' + fieldbyname('CCNODOC').AsString + #13 +
                  'ya se encuentra contabilizada');
            End;
            If Not dm1.cdsQry.FieldByName('CCPAGLOC').IsNull Then
            Begin
               If dm1.cdsQry.FieldByName('CCPAGLOC').AsCurrency <> 0 Then
               Begin
                   //poner código que comprueba si la unica cancelación es de la nota de crédito
                  If (FieldByName('CCMTOLOC').AsCurrency <> dm1.cdsqry.FieldByName('CCPAGLOC').AsCurrency) And
                     (FieldByName('CCMTOEXT').AsCurrency <> dm1.cdsqry.FieldByName('CCPAGEXT').AsCurrency) Then
                     Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
                        'ya tiene Cancelaciones')
               End
               Else
                  If dm1.cdsQry.FieldByName('CCSALLOC').AsCurrency <> dm1.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
                     Raise Exception.create('No se puede Anular, Debe Anular ' + #13 +
                        'la Cancelación Pendiente en Caja');
            End
            Else
               If dm1.cdsQry.FieldByName('CCSALLOC').AsCurrency <> dm1.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
                  Raise Exception.create('No se puede Anular, Debe Anular ' + #13 +
                     'la Cancelación Pendiente en Caja');

            Next;
         End; //del while
      End; //del with

      If Application.MessageBox(PChar('¿Confirme Anulación?' + #13 + #13 + sMensaje),
         'Anular',
         MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK Then
         Exit;

       //Aqui empieza reversión de documentos afectos a nota de credito
      With dm1.cdsUltTGE Do
      Begin
         First;
         While Not Eof Do
         Begin
            xSQL := 'SELECT * FROM CXC301 ';
            xWhere := ' WHERE CIAID       = ''' + fieldbyname('CIAID').AsString + ''' ' +
               'AND DOCID   = ''' + fieldbyname('DOCID').AsString + ''' ' +
               'AND CCSERIE = ''' + fieldbyname('CCSERIE').AsString + ''' ' +
               'AND CCNODOC = ''' + fieldbyname('CCNODOC').AsString + ''' ' +
                       //'AND CLAUXID = ''' + fieldbyname('CLAUXID').AsString + ''' ' +
            'AND CCESTADO <> ''A'' ' +
               'AND CLIEID    = ''' + fieldbyname('CLIEID').AsString + ''' ';
            xSQL := xSQL + xWhere;
            dm1.cdsGrab.Close;
            dm1.cdsGrab.DataRequest(xSQL);
            dm1.cdsGrab.Open;
            dm1.cdsGrab.Edit;
            dm1.cdsgrab.FieldByName('CCPAGLOC').AsCurrency := dm1.cdsgrab.FieldByName('CCPAGLOC').AsCurrency -
               FieldByName('CCMTOLOC').AsCurrency;
            dm1.cdsgrab.FieldByName('CCPAGEXT').AsCurrency := dm1.cdsgrab.FieldByName('CCPAGEXT').AsCurrency -
               FieldByName('CCMTOEXT').AsCurrency;
            dm1.cdsgrab.FieldByName('CCSALLOC').AsCurrency := dm1.cdsgrab.FieldByName('CCSALLOC').AsCurrency +
               FieldByName('CCMTOLOC').AsCurrency;
            dm1.cdsgrab.FieldByName('CCSALEXT').AsCurrency := dm1.cdsgrab.FieldByName('CCSALEXT').AsCurrency +
               FieldByName('CCMTOEXT').AsCurrency;
            If dm1.cdsGrab.fieldbyname('TMONID').AsString = dm1.wTMonLoc Then
            Begin
               dm1.cdsgrab.FieldByName('CCPAGORI').AsCurrency := dm1.cdsgrab.FieldByName('CCPAGLOC').AsCurrency;
               dm1.cdsgrab.FieldByName('CCSALORI').AsCurrency := dm1.cdsgrab.FieldByName('CCSALLOC').AsCurrency;
            End
            Else
            Begin
               dm1.cdsgrab.FieldByName('CCPAGORI').AsCurrency := dm1.cdsgrab.FieldByName('CCPAGEXT').AsCurrency;
               dm1.cdsgrab.FieldByName('CCSALORI').AsCurrency := dm1.cdsgrab.FieldByName('CCSALEXT').AsCurrency;
            End;
            If dm1.cdsGrab.FieldByName('CCESTADO').AsString = 'C' Then
               dm1.cdsGrab.FieldByName('CCESTADO').AsString := 'P';
            dm1.cdsgrab.Post;
            dm1.AplicaDatos(dm1.cdsgrab, '');

            Next;
         End; //del while
      End; //del with
   End //del if
   Else
      Raise Exception.create('Error : No se encuentran los Detalles de la Nota de Crédito');

    //procedimientos de Eliminación
    //I. Reversión de Saldos en tge401
   If (cdsGProv.fieldbyname('CCESTADO').asstring = 'P') Then
   Begin
      xMes := strMes(cdsGProv.fieldbyname('CCFCMPRB').AsDateTime);
      xAno := strAno(cdsGProv.fieldbyname('CCFCMPRB').AsDateTime);
      xSQL := 'UPDATE TGE401 SET HABETMN' + xMes + ' = HABETMN' + xMes + '- ' +
         cdsGProv.fieldbyname('CCMTOLOC').AsString + ',' +
         'HABETME' + xMes + ' = HABETME' + xMes + '- ' +
         cdsGProv.fieldbyname('CCMTOEXT').AsString;
//
      xSQL := xSQL + ' WHERE CIAID=' + '''' + cdsGProv.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' ANO=' + '''' + xAno + '''' + ' AND '
         + ' CLAUXID=' + '''' + cdsGProv.fieldbyname('CLAUXID').AsString + '''' + ' AND '
         + ' AUXID=' + '''' + cdsGProv.fieldbyname('CLIEID').AsString + '''';
//
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;

      //III. Cambio del Flag en cxC301
      xSQL := 'UPDATE CXC301 SET CCESTADO = ''A'' ';
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + cdsGProv.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + cdsGProv.fieldbyname('CCANOMES').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + cdsGProv.fieldbyname('TDIARID').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + cdsGProv.fieldbyname('CCNOREG').AsString + '''';
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
      cdsGProv.edit;
      cdsGProv.fieldbyname('CCESTADO').AsString := 'A';
      cdsGProv.Post;

      //** 17/11/2000 pjsv
      xSQL := 'UPDATE CXC302 SET CCESTADO = ''A'' ';
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + cdsGProv.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + cdsGProv.fieldbyname('CCANOMES').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + cdsGProv.fieldbyname('TDIARID').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + cdsGProv.fieldbyname('CCNOREG').AsString + '''';
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
      //**
   End
   Else
      errormsg(Caption, 'Sólo se Anulan Registros Aceptados');
End;

Procedure TFToolPlanilla.ppHBCabBeforePrint(Sender: TObject);
Begin
   pplblPagina.Caption := 'PAGINA: ' + ppsvPagina.Text;
End;

Procedure TFToolPlanilla.ppReporteBeforePrint(Sender: TObject);
Var
   nTemp: single;
   nTotCar, i: word;
   sCadena: String;
Begin
   pplblFecha.Caption := 'FECHA : ' + ppsvFecha.Text;
   pplblHora.Caption := 'HORA  : ' + ppsvHora.Text;

   nTemp := ppReporte.PrinterSetup.PaperWidth - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft - pplblHora.Width - 40;
           //ancho de pagina - ancho de la hora (por ser el de mayor ancho) + 3
   pplblPagina.Left := nTemp;
   pplblFecha.Left := nTemp;
   pplblHora.Left := nTemp;

   sCadena := '';
   nTotCar := trunc((ppReporte.PrinterSetup.PaperWidth - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft) / pplblGuionBase.Width);
   For i := 1 To nTotCar Do
      sCadena := sCadena + '-';
   pplblLin0.Caption := sCadena;
   pplblLin1.Caption := sCadena;
   pplblLin2.Caption := sCadena;

   pplblLin0.AutoSize := false;
   nTemp := pplblHora.Width + pplblHora.Left + 15;
   pplblLin0.width := nTemp;
   pplblLin1.width := nTemp;
   pplblLin2.width := nTemp;

   pplblTitulo.Left := 40;
   pplblTitulo.Width := ppReporte.PrinterSetup.PaperWidth - 80 - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft;
End;

Procedure TFToolPlanilla.ppReportePreviewFormCreate(Sender: TObject);
Begin
   (sender As tppReport).PreviewForm.ClientHeight := 500;
   (sender As tppReport).PreviewForm.ClientWidth := 650;
   tppviewer((sender As tppReport).PreviewForm.Viewer).zoomSetting := zspageWidth;
End;

Procedure TFToolPlanilla.sbtNCClick(Sender: TObject);
Begin
   If FPrincipal.xTipoProv = 'P' Then
      exit
   Else
      If FPrincipal.xTipoProv = 'N' Then
      Begin
         cdsGProv := FPrincipal.GNCredito.FMant.cds2; //Nota Credito
         MProv := FPrincipal.GNCredito;
         AplicaNotaCredito;
      End
      Else
         If FPrincipal.xTipoProv = 'O' Then
            exit;

   cdsGprov.EnableControls;

End;

Procedure TFToolPlanilla.AplicaNotaCredito;
Var
   xWhere: String;
   xSQL,
      xMes,
      xAno: String;

Begin
   If Application.MessageBox('¿Aplicar Nota Crédito a Documento?',
      '',
      MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK Then
      Exit;

    //comprobación sobre Notas der crédito
   If cdsGProv.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito' + #13 +
         'ya se encuentra Anulada');
   End;

   If cdsGProv.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito' + #13 +
         'ya se encuentra contabilizada');
   End;
    //Comprobación sobre detalles de Nota de Crédito
   xWhere := ' CIAID    = ''' + cdsGProv.fieldbyname('CIAID').AsString + ''' ' +
      'AND TCANJEID  = ''NC'' ' +
      'AND CCCANJE  = ''' + cdsGProv.fieldbyname('CCCANJE').AsString + ''' ';

   If dm1.RecuperarDatos('CXC304', '*', xWhere) Then
   Begin
       //Realizar Comprobaciones sobre documentos subyacentes
      With dm1.cdsUltTGE Do
      Begin
         First;
         While Not Eof Do
         Begin
            xSQL := 'SELECT * FROM CXC301 ';
            xWhere := ' WHERE CIAID = ''' + fieldbyname('CIAID').AsString + ''' ' +
               'AND DOCID   = ''' + fieldbyname('DOCID').AsString + ''' ' +
               'AND CCSERIE = ''' + fieldbyname('CCSERIE').AsString + ''' ' +
               'AND CCNODOC = ''' + fieldbyname('CCNODOC').AsString + ''' ' +
                       //'AND CLAUXID = ''' + fieldbyname('CLAUXID').AsString + ''' ' +
            'AND CCESTADO <> ''A'' ' +
               'AND CLIEID    = ''' + fieldbyname('CLIEID').AsString + ''' ';
            xSQL := xSQL + xWhere;
            dm1.cdsqry.Close;
            dm1.cdsQry.DataRequest(xSQL);
            dm1.cdsQry.Open;
            If dm1.cdsqry.FieldByName('CC_CONTA').AsString = 'S' Then
            Begin
               Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
                                       //'Clase    : '+ fieldbyname('CLAUXID').AsString  + #13+
                  'Cliente  : ' + fieldbyname('CLIEID').AsString + #13 +
                  'Tipo Doc : ' + fieldbyname('DOCID').AsString + #13 +
                  'Serie    : ' + fieldbyname('CCSERIE').AsString + #13 +
                  'N° Doc.  : ' + fieldbyname('CCNODOC').AsString + #13 +
                  'ya se encuentra contabilizada');
            End;
            If Not dm1.cdsQry.FieldByName('CCPAGLOC').IsNull Then
            Begin
               If dm1.cdsQry.FieldByName('CCPAGLOC').AsCurrency <> 0 Then
               Begin
                   //poner código que comprueba si la unica cancelación es de la nota de crédito
                  If (FieldByName('CCMTOLOC').AsCurrency <> dm1.cdsqry.FieldByName('CCPAGLOC').AsCurrency) And
                     (FieldByName('CCMTOEXT').AsCurrency <> dm1.cdsqry.FieldByName('CCPAGEXT').AsCurrency) Then
                     Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
                        'ya tiene Cancelaciones')
               End
               Else
                  If dm1.cdsQry.FieldByName('CCSALLOC').AsCurrency <> dm1.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
                     Raise Exception.create('No se puede Anular, Debe Anular ' + #13 +
                        'la Cancelación Pendiente en Caja');
            End
            Else
               If dm1.cdsQry.FieldByName('CCSALLOC').AsCurrency <> dm1.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
                  Raise Exception.create('No se puede Anular, Debe Anular ' + #13 +
                     'la Cancelación Pendiente en Caja');

            Next;
         End; //del while
      End; //del with
       //Aqui empieza reversión de documentos afectos a nota de credito
   End
   Else
      Raise Exception.create('Error : No se encuentran los Detalles de la Nota de Crédito');

   If (cdsGProv.fieldbyname('CCESTADO').asstring = 'P') Then
   Begin
      FAplicaNC := TFAplicaNC.Create(Self);
      FAplicaNC.showmodal;
   End
   Else
      errormsg(Caption, 'Sólo se Aplican a Registros Aceptados');
End;

Procedure TFToolPlanilla.sbtImprimirPlanillaClick(Sender: TObject);
Begin
   FDocCobra := TFDocCobra.Create(Self);
   With FDocCobra Do
   Try
      ShowModal;
   Finally
      Free;
   End;
End;

Procedure TFToolPlanilla.GetData;
Var
   sSQL, cad, cad1: String;
   i: Integer;
   sCia, sCoid: String;
Begin
   grid := FPrincipal.GDetalle.FMant.dbgFiltro;
   cad := '';
   cad1 := '';

   If grid.DataSource.DataSet.RecordCount = 0 Then
   Begin
      Raise Exception.Create('No existen registros...');
   End;

   If grid.SelectedList.Count = 0 Then
   Begin
      Raise Exception.Create('No existen registros seleccionados...');
   End;

   For i := 0 To grid.SelectedList.Count - 1 Do
   Begin
      grid.DataSource.DataSet.GotoBookmark(grid.SelectedList.Items[i]);
      cad := ' ( C.CIAID=' + QuotedStr(grid.DataSource.DataSet.FieldByName('CIAID').AsString) + ' ' +
         ' AND C.LICOID=' + QuotedStr(grid.DataSource.DataSet.FieldByName('LICOID').AsString) + ' ' +
         ' AND C.DOCID=' + QuotedStr(grid.DataSource.DataSet.FieldByName('DOCID').AsString) + ' ' +
         ' AND C.CCSERIE=' + QuotedStr(grid.DataSource.DataSet.FieldByName('CCSERIE').AsString) + ' ' +
         ' AND C.CCNODOC=' + QuotedStr(grid.DataSource.DataSet.FieldByName('CCNODOC').AsString) + ' ) ';
      If i = 0 Then
         cad1 := cad1 + cad
      Else
         cad1 := cad1 + ' OR ' + cad;
   End;

   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT C.*,UPPER(F6.ZVTAABREV) ZVTAABREV,D.DOCABR FROM CXC317 C ' +
         ' LEFT JOIN FAC106 F6 ON F6.TVTAID=C.TVTAID AND C.ZVTAID=F6.ZVTAID ' +
         ' LEFT JOIN TGE110 D ON D.DOCMOD=''CXC'' AND D.DOCID=C.DOCID ' +
         ' WHERE FLAGVAR<>''XX'' AND (' + cad1 + ')';
   End
   Else
   Begin
      If DM1.SRV_D = 'ORACLE' Then
      Begin
         sSQL := ' ';
      End;
   End;
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(sSQL);
   DM1.cdsQry7.Open;
   If DM1.cdsQry7.RecordCount > 0 Then
   Begin
      DM1.cdsQry7.First;
      sCia := DM1.cdsQry7.FieldByName('CIAID').AsString;
      sCoid := DM1.cdsQry7.FieldByName('COID').AsString;
      While Not DM1.cdsQry7.EOF Do
      Begin
         If sCia <> DM1.cdsQry7.FieldByName('CIAID').AsString Then
         Begin
            Raise Exception.Create('Existe Documentos de Diferente Compañía');
         End;
         If sCoid <> DM1.cdsQry7.FieldByName('COID').AsString Then
         Begin
            Raise Exception.Create('Existe Documentos de Diferente Cobrador');
         End;
         DM1.cdsQry7.Next;
      End;
   End;
End;

Procedure TFToolPlanilla.sbtEntregaDocsClick(Sender: TObject);
Begin
   GetData;
   FEntregaCobrador.ShowModal;
End;

End.

