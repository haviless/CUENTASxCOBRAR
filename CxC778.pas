Unit CxC778;

//

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
   ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
   ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, ControlGridDisp, ppVar, ppviewr,
   StdCtrls, ppTypes, oaVariables, msgdlgs;

Type
   TFToolCont = Class(TForm)
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
      sbtImprimir: TSpeedButton;
      sbtNC: TSpeedButton;
      Button2: TButton;
      Button4: TButton;
      sbtInicial: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
      Procedure sbtABlClick(Sender: TObject);
      Procedure sbtCBlClick(Sender: TObject);
      Procedure sbtEliminarClick(Sender: TObject);
      Procedure ppHBCabBeforePrint(Sender: TObject);
      Procedure ppReporteBeforePrint(Sender: TObject);
      Procedure ppReportePreviewFormCreate(Sender: TObject);
      Procedure sbtImprimirClick(Sender: TObject);
      Procedure sbtNCClick(Sender: TObject);
      Procedure Button2Click(Sender: TObject);
      Procedure Button4Click(Sender: TObject);
      Procedure sbtInicialClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

   Private
    { Private declarations }
      xCont: String;
      cdsGProv: TwwClientDataSet;
      MProv: TMant;
   //** 15/02/2001 - PJSV - COPIA DE LO QUE HAY EN CXP
      Procedure EliminaAnticipo;
      Procedure PasarInicial;
      Procedure EliminaProvision;
      Procedure EliminaNotaCredito;
      Procedure AplicaNotaCredito; //27/07
      Procedure LlenaDetCxC;
      Function Valida_Cuenta_y_CCosto: Boolean;

   Public
    { Public declarations }
      xSQL: String;
   End;

Var
   FToolCont: TFToolCont;

Implementation

Uses oaCC2000, CxCDM, CxC201, CxC404;

{$R *.DFM}

Procedure TFToolCont.sbtABlClick(Sender: TObject);
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

   If FRegistros.xTipoProv = 'P' Then
   Begin
      cdsGProv := GProvision.FMant.cds2; //Provisiones
      MProv := GProvision;
      sSigno := '+';
   End
   Else
      If FRegistros.xTipoProv = 'N' Then
      Begin
         cdsGProv := GNCredito.FMant.cds2; //Nota Credito
         MProv := GNCredito;
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

         FiltraCds( DMCXC.cdsDetCxC,  'Select * from CXC302 Where '+xFiltro );

         /////////////////////////////////////////////////
         if not AsientoCuadra then
            raise exception.Create(' Error:  Asiento NO Cuadra ');}

         xSQL := 'Update CXC301 Set CCESTADO=''P'',CCFREG=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, DATE) + ''')'
            + ',CCHREG= ' + DMCXC.wRepTimeServi;
         xSQL := xSQL + ' Where CIAID=''' + xCia + ''' and TDIARID=''' + xDiar + ''' and '
            + 'CCANOMES=''' + xPer + ''' and CCNOREG=''' + xNReg + ''' and DOCID=''' + xDoc + '''';

         //CLG: 04/03/2002
         If DMCXC.VerificaCierre(cdsGProv.FieldByName('CIAID').AsString, cdsGProv.FieldByName('CCFEMIS').AsDateTime) Then
         Begin
            ShowMessage('NO SE PUDO ACEPTAR EL DOCUMENTO ' + xDoc + ' ' + cdsGProv.FieldByName('CCSERIE').AsString + ' ' + cdsGProv.FieldByName('CCNODOC').AsString +
               ' PORQUE EL PERIODO YA ESTA CERRADO.' + #13 + ' SE CONTINUARA CON LOS SIGUIENTES ');
         End
         Else
         Begin
            Try
               DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
            End;
            DMCXC.SaldosAuxiliarCLG(xCia, xPer, xClAuxId, xClie, sSigno,
               xCPMtoLoc, xCPMtoExt, xTMonid);
            xA := xA + 1;
         End;
         /////////////////////////////////////////////////
      End
      Else
         If P <> T Then //  Compara si los periodos son iguales
         Begin
            cdsGprov.Enablecontrols;
            Showmessage(' Debe Aceptar sólo Registros con periodos iguales');
            xCont := 'N';
            exit
         End;

      // validación de  los estados
      If (E = 'P') Or (E = 'C') Then //Pendiente  o Contabilizado
      Begin
         cdsGprov.Enablecontrols;
         Showmessage(' Debe Aceptar sólo Incompletos');
         xCont := 'N';
         Exit
      End;

      cdsGProv.Next;
   End;
   MProv.RefreshFilter;
   cdsGprov.Enablecontrols;
   ShowMessage('Registros Aceptados =  ' + inttostr(xA) + '');
End;

Procedure TFToolCont.sbtCBlClick(Sender: TObject);
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

   If FRegistros.xTipoProv = 'P' Then
   Begin
      cdsGProv := GProvision.Fmant.cds2; //Provisiones
      MProv := GProvision;
   End
   Else
      If FRegistros.xTipoProv = 'N' Then
      Begin
         cdsGProv := GNCredito.Fmant.cds2; //Nota Credito
         MProv := GNCredito;
      End;

   Screen.Cursor := crHourGlass;

   //cdsGprov.disablecontrols;  //
   cdsGProv.First;
   While Not cdsGProv.EOF Do
   Begin
      Screen.Cursor := crHourGlass;
      xCia := cdsGProv.FieldByName('CIAID').Asstring;
      xPer := cdsGProv.FieldByName('CCANOMES').Asstring;
      xDiar := cdsGProv.FieldByName('TDIARID').Asstring;
      xNReg := cdsGProv.FieldByName('CCNOREG').Asstring;
      xEst := cdsGProv.FieldByName('CCESTADO').Asstring;
      xConta := cdsGProv.FieldByName('CC_CONTA').Asstring;

      If DMCXC.MesCerrado(Copy(xper, 5, 2), Copy(xper, 1, 4), xCia) Then
      Begin
         Screen.Cursor := crDefault;
         ShowMessage('Periodo Cerrado');
         Exit;
      End
      Else
      Begin
         If ((xEst = 'P') Or (xEst = 'C')) And ((xConta = 'N') Or (xConta = '')) Then
         Begin
            If DMCXC.wAdmin = 'G' Then Exit;

            DMCXC.GeneraContab(xCIa, xDiar, xPer, xNReg, Self, 'C');

            xSQL := 'Update CXC301 Set CC_CONTA=''S''';
            xSQL := xSQL + 'Where CiaID=' + '''' + xCia + '''' + ' and TDIARID=' + '''' + xDiar +
               '''' + ' and ' + ' CCANOMES=' + '''' + xPer + '''' + ' and ' +
               'CCNOREG=' + '''' + xNReg + '''';
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);

            xSQL := 'Update CXC302 Set CCCMPRB=' + '''' + xNReg + ''' ';
            xSQL := xSQL + 'Where CIAID=' + '''' + xCia + '''' + ' and TDIARID=' + '''' + xDiar +
               '''' + ' and ' + ' CCANOMES=' + '''' + xPer + '''' + ' and ' +
               'CCNOREG=' + '''' + xNReg + '''';
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);

            xA := xA + 1;
         End
         Else
            xR := xR + 1; //Registros no contabilizados
      End;
      cdsGProv.Next;
   End;
   MProv.RefreshFilter;
   Screen.Cursor := crDefault;
   ShowMessage('Registros Contabilizados = ' + inttostr(xA) + '' + chr(13) + 'Registros No Contabilizados = ' + inttostr(xR) + '');
End;

Function TFToolCont.Valida_Cuenta_y_CCosto: Boolean;
Var
   xSQL: String;
Begin
   Result := False;
   {
   DMCNT.cdsMovCnt1.DisableControls;
   DMCNT.cdsMovCnt1.First ;
   while not DMCNT.cdsMovCnt1.eof do
   begin
      // revisar si cuenta contable esta activa
      xSQL:='Select CIAID, CUENTAID, CTAACT from TGE202 '
           +'WHERE CIAID='''   +DMCNT.cdsMovCnt1.FieldByName('CIAID').AsString   +''''
           +  'AND CUENTAID='''+DMCNT.cdsMovCnt1.FieldByName('CUENTAID').AsString+''''
           +  'AND CTAACT=''S''';
      DMCNT.cdsSQL.Close;
      DMCNT.cdsSQL.DataRequest(xSQL);
      DMCNT.cdsSQL.Open;
      if DMCNT.cdsSQL.Recordcount<=0 then
      begin
         Exit;
      end;

      if DMCNT.cdsMovCnt1.FieldByName('CCOSID').AsString<>'' then
      begin
         // revisar si centro de costo esta activo
         xSQL:='Select CCOSID, CCOSACT from TGE203 '
              +'WHERE CUENTAID='''+DMCNT.cdsMovCnt1.FieldByName('CCOSID').AsString+''''
              +  'AND CCOSACT=''S''';
         DMCNT.cdsSQL.Close;
         DMCNT.cdsSQL.DataRequest(xSQL);
         DMCNT.cdsSQL.Open;
         if DMCNT.cdsSQL.Recordcount<=0 then
         begin
            Exit;
         end;
      end;

      DMCNT.cdsMovCnt1.Next;
   end;
   DMCNT.cdsMovCnt1.First;
   DMCNT.cdsMovCnt1.EnableControls;
   }
   Result := True;
End;

Procedure TFToolCont.sbtEliminarClick(Sender: TObject);
Var
   P, E, T, xFiltro: String;
   xClAuxId, xProv: String;
   xCPMtoLoc, xCPMtoExt: double;
   xCia, xPer, xDiar, xNReg: String;
Begin

   If FRegistros.xTipoProv = 'P' Then
   Begin
      // vhndema 20051222
      xSQL := 'SELECT * FROM CXC301 '
         + 'WHERE CIAID=''' + GProvision.FMant.cds2.fieldbyname('CIAID').AsString + ''' '
         + 'AND DOCID=''' + GProvision.FMant.cds2.fieldbyname('DOCID').AsString + ''' '
         + 'AND CCSERIE=''' + GProvision.FMant.cds2.fieldbyname('CCSERIE').AsString + ''' '
         + 'AND CCNODOC=''' + GProvision.FMant.cds2.fieldbyname('CCNODOC').AsString + ''' ';
      DMCXC.cdsMovCxC.Close;
      DMCXC.cdsMovCxC.DataRequest(xSQL);
      DMCXC.cdsMovCxC.Open;

      xSQL := 'SELECT * FROM CXC301 '
         + 'WHERE CIAID=''' + GProvision.FMant.cds2.fieldbyname('CIAID').AsString + ''' '
         + 'AND DOCID=''' + GProvision.FMant.cds2.fieldbyname('DOCID').AsString + ''' '
         + 'AND CCSERIE=''' + GProvision.FMant.cds2.fieldbyname('CCSERIE').AsString + ''' '
         + 'AND CCNODOC=''' + GProvision.FMant.cds2.fieldbyname('CCNODOC').AsString + ''' ';
      DMCXC.cdsqry.Close;
      DMCXC.cdsQry.DataRequest(xSQL);
      DMCXC.cdsQry.Open;

      cdsGProv := DMCXC.cdsQry; //Provisiones
      MProv := GProvision;
      EliminaProvision;
   End
   Else
      If FRegistros.xTipoProv = 'N' Then
      Begin
         ShowMessage('Tiene que entrar a N.Crédito para anular');
         Exit;
         {
         xSQL:='SELECT * FROM CXC301 '
              +'WHERE CIAID='''  +GNCredito.FMant.cds2.fieldbyname('CIAID').AsString   +''' '
              +  'AND DOCID='''  +GNCredito.FMant.cds2.fieldbyname('DOCID').AsString   +''' '
              +  'AND CCSERIE='''+GNCredito.FMant.cds2.fieldbyname('CCSERIE').AsString +''' '
              +  'AND CCNODOC='''+GNCredito.FMant.cds2.fieldbyname('CCNODOC').AsString +''' '
         DMCXC.cdsqry.Close ;
         DMCXC.cdsQry.DataRequest(xSQL);
         DMCXC.cdsQry.Open;

         cdsGProv:=  DMCXC.cdsQry;               //Nota Credito
         MProv   :=  GNCredito;
         EliminaNotaCredito;
         }
      End
      Else
         If FRegistros.xTipoProv = 'A' Then
         Begin
            xSQL := 'SELECT * FROM CXC301 '
               + 'WHERE CIAID=''' + GProvision.FMant.cds2.fieldbyname('CIAID').AsString + ''' '
               + 'AND DOCID=''' + GProvision.FMant.cds2.fieldbyname('DOCID').AsString + ''' '
               + 'AND CCSERIE=''' + GProvision.FMant.cds2.fieldbyname('CCSERIE').AsString + ''' '
               + 'AND CCNODOC=''' + GProvision.FMant.cds2.fieldbyname('CCNODOC').AsString + ''' ';
            DMCXC.cdsqry.Close;
            DMCXC.cdsQry.DataRequest(xSQL);
            DMCXC.cdsQry.Open;

            cdsGProv := DMCXC.cdsQry; //Nota Credito
            MProv := GAnticipo;
            EliminaAnticipo;
         End
         Else
            If FRegistros.xTipoProv = 'O' Then
            Begin
               xSQL := 'SELECT * FROM CXC301 '
                  + 'WHERE CIAID=''' + GProvision.FMant.cds2.fieldbyname('CIAID').AsString + ''' '
                  + 'AND DOCID=''' + GProvision.FMant.cds2.fieldbyname('DOCID').AsString + ''' '
                  + 'AND CCSERIE=''' + GProvision.FMant.cds2.fieldbyname('CCSERIE').AsString + ''' '
                  + 'AND CCNODOC=''' + GProvision.FMant.cds2.fieldbyname('CCNODOC').AsString + ''' ';
               DMCXC.cdsqry.Close;
               DMCXC.cdsQry.DataRequest(xSQL);
               DMCXC.cdsQry.Open;

               cdsGProv := DMCXC.cdsQry; //Otras Obligaciones
               MProv := GProvision;
            End;
   cdsGprov.EnableControls;
   //
End;

Procedure TFToolCont.EliminaProvision;
Var
   sDocId, sMensaje, xWhere: String;
   xSQL,
      xMes,
      xAno, xNmes, xtmonid, ssql: String;
   iX: integer;
Begin
   sDocId := DMCXC.displayDescrip('TGE110', 'DOCDES', 'DocID', DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString);
   sMensaje := 'Cliente  : ' + DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString + #13 +
      'Nombre   : ' + DMCXC.cdsMovCxC.fieldbyname('CLIEDES').AsString + #13 +
      'Tipo Doc : ' + sDocid + #13 +
      'Serie    : ' + DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString + #13 +
      'N° Doc.  : ' + DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString + #13 +
      'F.Emisión: ' + DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsString + #13;

   If Not DMCXC.VerificaCierre(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString, DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsDateTime) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

    //1ra Validación
   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Anulada');
   End;

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular la Provision' + #13 + sMensaje +
         ' pues el Periodo ya está cerrado');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Contabilizada');
   End;

   If (DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat) Or
      (DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat) Then
      Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Canje.');

   If Not DMCXC.cdsMovCxC.FieldByName('CCPAGORI').IsNull Then
   Begin
      If DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsCurrency <> 0 Then
         Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
            'ya tiene Cancelaciones')
      Else
         If DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
            Raise Exception.create('No se puede Anular la Provisión' + #13 + sMensaje +
               'Debe Anular la Cancelación Pendiente en Caja');
   End
   Else
      If DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
         Raise Exception.create('No se puede Anular la Provisión' + #13 + sMensaje +
            'Debe Anular la Cancelación Pendiente en Caja');

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
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
   If (DMCXC.cdsMovCxC.fieldbyname('CCESTADO').asstring = 'P') Then
   Begin
      If DMCXC.cdsMovCxC.FieldByName('CCFLAGVTA').AsString = 'S' Then
      Begin
         xSQL := ' UPDATE FAC305 SET FACESTADO=''ANULADO'', ' +
            ' USERANUL=' + QuotedStr(DMCXC.wUsuario) + ',' +
            ' FECANUL=' + DMCXC.wRepFecServi + ',' +
            ' HORANUL=' + DMCXC.wRepTimeServi +
            ' WHERE DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString) +
            ' AND FACSERIE=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString) +
            ' AND NFAC=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString);
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
         End;
      End;
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CiaId').Asstring, DMCXC.cdsMovCxC.FieldByName('CCAnoMes').Asstring,
         DMCXC.cdsMovCxC.FieldByName('ClAuxId').AsString, DMCXC.cdsMovCxC.FieldByName('ClieId').AsString,
         '+', (-1) * DMCXC.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat, (-1) * DMCXC.cdsMovCxC.FieldByName('CCMtoExt').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMonid').AsString);

      DMCXC.cdsMovCxC.edit;
      DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat := DMCXC.cdsMovCxC.fieldbyname('CCMTOORI').AsFloat - DMCXC.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat;
      DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat := DMCXC.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat;
      DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat := DMCXC.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat;
      DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString := 'A';
      DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString := DMCXC.wUsuario;
      DMCXC.cdsMovCxC.fieldbyname('FECANUL').AsDateTime := DMCXC.DateS;
      DMCXC.cdsMovCxC.fieldbyname('HORANUL').AsDateTime := DMCXC.TimeS;
      DMCXC.cdsMovCxC.Post;
      DMCXC.cdsMovCxC.DataRequest(' SELECT * FROM CXC301 WHERE ' +
         ' CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString) +
         ' AND DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString) +
         ' AND CCSERIE=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString) +
         ' AND CCNODOC=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString));

      DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

        //** 17/11/2000 pjsv
      xSQL := 'UPDATE CXC302 SET CCESTADO = ''A'' ';
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString + '''';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
        //**
        //**
   End
   Else
      errormsg(Caption, 'Sólo se Anulan Registros Aceptados');

End;

Procedure TFToolCont.EliminaNotaCredito;
Var
   xWhere: String;
   xSQL,
      xMes,
      sMensaje, xAno: String;

Begin
  // VHNDEMA 20051222
  //comprobación sobre Notas der crédito
   sMensaje := 'Cliente  : ' + cdsGProv.fieldbyname('CLIEID').AsString + #13 +
      'Serie    : ' + cdsGProv.fieldbyname('CCSERIE').AsString + #13 +
      'N° Doc.  : ' + cdsGProv.fieldbyname('CCNODOC').AsString + #13 +
      'F.Emisión: ' + cdsGProv.fieldbyname('CCFEMIS').AsString + #13;

   If DMCXC.VerificaCierre(cdsGProv.fieldbyname('CIAID').AsString, cdsGProv.fieldbyname('CCFEMIS').AsDateTime) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If cdsGProv.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito' + #13 + sMensaje + 'ya se encuentra Anulada');
   End;

   xAno := Copy(cdsGProv.FieldByName('CCANOMES').AsString, 1, 4);
   xMes := Copy(cdsGProv.FieldByName('CCANOMES').AsString, 5, 2);

   If DMCXC.MesCerrado(xMes, xAno, cdsGProv.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular La Nota de Crédigo' + #13 + sMensaje + 'pues el Periodo ya está cerrado');
   End;

   If DMCXC.cdsQry.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Nota de Crédito' + #13 + sMensaje + 'ya se encuentra contabilizada');
   End;

   If Application.MessageBox(PChar('¿Confirme Anulación?' + #13 + #13 + sMensaje), 'Anular', MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK Then
   Begin
      Exit;
   End;

  //Comprobación sobre detalles de Nota de Crédito
   xWhere := ' CIAID    = ''' + cdsGProv.fieldbyname('CIAID').AsString + ''' ' +
      ' AND TCANJEID  = ''NC'' ' +
      ' AND CCCANJE  = ''' + cdsGProv.fieldbyname('CCCANJE').AsString + ''' ';

  // NOTAS DE CREDITO SOBRE DOCUMENTOS PENDIENTE (APLICA)
   If (DMCXC.RecuperarDatos('CXC304', '*', xWhere)) And (cdsGProv.fieldbyname('CCFLAGTDOC').AsString = 'P') Then
   Begin
    //Realizar Comprobaciones sobre documentos subyacentes
      DMCXC.cdsUltTGE.First;
      While Not DMCXC.cdsUltTGE.Eof Do
      Begin
         xSQL := 'SELECT * FROM CXC301 ';
         xWhere := ' WHERE CIAID = ''' + DMCXC.cdsUltTGE.fieldbyname('CIAID').AsString + ''' ' +
            'AND DOCID   = ''' + DMCXC.cdsUltTGE.fieldbyname('DOCID').AsString + ''' ' +
            'AND CCSERIE = ''' + DMCXC.cdsUltTGE.fieldbyname('CCSERIE').AsString + ''' ' +
            'AND CCNODOC = ''' + DMCXC.cdsUltTGE.fieldbyname('CCNODOC').AsString + ''' ' +
            'AND CCESTADO <> ''A'' ' +
            'AND CLIEID    = ''' + DMCXC.cdsUltTGE.fieldbyname('CLIEID').AsString + ''' ';
         xSQL := xSQL + xWhere;
         DMCXC.cdsqry.Close;
         DMCXC.cdsQry.DataRequest(xSQL);
         DMCXC.cdsQry.Open;
         If Not DMCXC.cdsQry.FieldByName('CCPAGLOC').IsNull Then
         Begin
            If DMCXC.cdsQry.FieldByName('CCPAGLOC').AsCurrency <> 0 Then
            Begin
           //poner código que comprueba si la unica cancelación es de la nota de crédito
               If ((DMCXC.cdsUltTGE.FieldByName('TMONID').AsString = DMCXC.wTMonLoc) And
                  (DMCXC.cdsUltTGE.FieldByName('CCMTOORI').AsCurrency <> DMCXC.cdsqry.FieldByName('CCPAGLOC').AsCurrency)) Then
                  Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + 'ya tiene Cancelaciones');

               If ((DMCXC.cdsUltTGE.FieldByName('TMONID').AsString = DMCXC.wTMonExt) And
                  (DMCXC.cdsUltTGE.FieldByName('CCMTOORI').AsCurrency <> DMCXC.cdsqry.FieldByName('CCPAGEXT').AsCurrency)) Then
                  Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + 'ya tiene Cancelaciones');
            End
            Else
            Begin
               If DMCXC.cdsQry.FieldByName('CCSALLOC').AsCurrency <> DMCXC.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
                  Raise Exception.create('No se puede Anular, Debe Anular ' + #13 + 'la Cancelación Pendiente en Caja');
            End;
         End
         Else
         Begin
            If DMCXC.cdsQry.FieldByName('CCSALLOC').AsCurrency <> DMCXC.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
               Raise Exception.create('No se puede Anular, Debe Anular ' + #13 + 'la Cancelación Pendiente en Caja');
         End;
         DMCXC.cdsUltTGE.Next;
      End; //DEL WHILE

    //Aqui empieza reversión de documentos afectos a nota de credito
      DMCXC.cdsUltTGE.First;
      While Not DMCXC.cdsUltTGE.Eof Do
      Begin
         xSQL := 'SELECT * FROM CXC301 ';
         xWhere := ' WHERE CIAID       = ''' + DMCXC.cdsUltTGE.fieldbyname('CIAID').AsString + ''' ' +
            'AND DOCID   = ''' + DMCXC.cdsUltTGE.fieldbyname('DOCID').AsString + ''' ' +
            'AND CCSERIE = ''' + DMCXC.cdsUltTGE.fieldbyname('CCSERIE').AsString + ''' ' +
            'AND CCNODOC = ''' + DMCXC.cdsUltTGE.fieldbyname('CCNODOC').AsString + ''' ' +
            'AND CCESTADO <> ''A'' ' +
            'AND CLIEID    = ''' + DMCXC.cdsUltTGE.fieldbyname('CLIEID').AsString + ''' ';
         xSQL := xSQL + xWhere;
         DMCXC.cdsGrab.Close;
         DMCXC.cdsGrab.DataRequest(xSQL);
         DMCXC.cdsGrab.Open;
         DMCXC.cdsGrab.Edit;
         If DMCXC.cdsGrab.fieldbyname('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency := DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency - DMCXC.cdsUltTGE.FieldByName('CCMTOORI').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency := FRound(DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency / DMCXC.cdsgrab.FieldByName('CCTCAMPR').AsCurrency, 15, 2);
            DMCXC.cdsgrab.FieldByName('CCSALLOC').AsCurrency := DMCXC.cdsgrab.FieldByName('CCMTOLOC').AsCurrency - DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCSALEXT').AsCurrency := DMCXC.cdsgrab.FieldByName('CCMTOEXT').AsCurrency - DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCPAGORI').AsCurrency := DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCSALORI').AsCurrency := DMCXC.cdsgrab.FieldByName('CCSALLOC').AsCurrency;
         End
         Else
         Begin
            DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency := DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency - DMCXC.cdsUltTGE.FieldByName('CCMTOORI').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency := FRound(DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency * DMCXC.cdsgrab.FieldByName('CCTCAMPR').AsCurrency, 15, 2);
            DMCXC.cdsgrab.FieldByName('CCSALLOC').AsCurrency := DMCXC.cdsgrab.FieldByName('CCMTOLOC').AsCurrency - DMCXC.cdsgrab.FieldByName('CCPAGLOC').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCSALEXT').AsCurrency := DMCXC.cdsgrab.FieldByName('CCMTOEXT').AsCurrency - DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCPAGORI').AsCurrency := DMCXC.cdsgrab.FieldByName('CCPAGEXT').AsCurrency;
            DMCXC.cdsgrab.FieldByName('CCSALORI').AsCurrency := DMCXC.cdsgrab.FieldByName('CCSALEXT').AsCurrency;
         End;
         If DMCXC.cdsGrab.FieldByName('CCESTADO').AsString = 'C' Then
            DMCXC.cdsGrab.FieldByName('CCESTADO').AsString := 'P';
         DMCXC.cdsgrab.Post;
         DMCXC.AplicaDatos(DMCXC.cdsgrab, '');

         DMCXC.cdsUltTGE.Next;
      End; //del while
   End //del if
   Else
   Begin
      If cdsGProv.fieldbyname('CCFLAGTDOC').AsString = 'P' Then
         Raise Exception.create('Error : No se encuentran los Detalles de la Nota de Crédito');
   End;

  //procedimientos de Eliminación
  //I. Reversión de Saldos en tge401
   If (cdsGProv.fieldbyname('CCESTADO').asstring = 'P') Or
      (cdsGProv.fieldbyname('CCESTADO').asstring = 'C') Then
   Begin
      xMes := strMes(cdsGProv.fieldbyname('CCFCMPRB').AsDateTime);
      xAno := strAno(cdsGProv.fieldbyname('CCFCMPRB').AsDateTime);

      DMCXC.SaldosAuxiliarCLG(cdsGProv.fieldbyname('CIAID').AsString, cdsGProv.fieldbyname('CCANOMES').AsString,
         cdsGProv.fieldbyname('CLAUXID').AsString, cdsGProv.fieldbyname('CLIEID').AsString, '-',
         cdsGProv.fieldbyname('CCMTOLOC').AsFloat, cdsGProv.fieldbyname('CCMTOEXT').AsFloat, cdsGProv.fieldbyname('TMONID').AsString);

    //III. Cambio del Flag en cxC301
      xSQL := 'UPDATE CXC301 SET CCESTADO = ''A'' ';
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + cdsGProv.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + cdsGProv.fieldbyname('CCANOMES').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + cdsGProv.fieldbyname('TDIARID').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + cdsGProv.fieldbyname('CCNOREG').AsString + '''';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
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
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
    //**
      ShowMessage('Nota de Credito Anulada');
   End
   Else
      errormsg(Caption, 'Sólo se Anulan Registros Aceptados');
  // END VHNDEMA
End;

Procedure TFToolCont.ppHBCabBeforePrint(Sender: TObject);
Begin
   pplblPagina.Caption := 'PAGINA: ' + ppsvPagina.Text;
End;

Procedure TFToolCont.ppReporteBeforePrint(Sender: TObject);
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

Procedure TFToolCont.ppReportePreviewFormCreate(Sender: TObject);
Begin
   (sender As tppReport).PreviewForm.ClientHeight := 500;
   (sender As tppReport).PreviewForm.ClientWidth := 650;
   tppviewer((sender As tppReport).PreviewForm.Viewer).zoomSetting := zspageWidth;
End;

Procedure TFToolCont.sbtImprimirClick(Sender: TObject);
Var
   sSQL: String;
   sWhere: String;

Begin
   If DMCXC.cdsMovCxC.recordcount = 0 Then
      exit;

   sWhere := DMCXC.GetWhereFromSQL(GProvision.FMant.SQL);

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := 'SELECT CXC301.CIAID, CXC301.DOCID, CXC301.CCNODOC, CXC301.CCSERIE'
         + ', CXC301.CCFEMIS, CXC301.CLAUXID, CXC301.CLIEDES, CXC301.CCOMERID'
         + ', CXC301.TDIARID, CXC301.TMONID'
         + ', CASE WHEN CXC302.CCDH = ' + quotedStr('D') + ' THEN CXC302.CCMTOORI ELSE 0 END MONTOD'
         + ', CASE WHEN CXC302.CCDH = ' + quotedStr('D') + ' THEN 0 ELSE CXC302.CCMTOORI END MONTOH'
         + ', CXC302.TREGID, CXC302.CPTOID, CXC302.CUENTAID, CXC302.CCGLOSA'
         + ', CXC101.CCOMERDES, TGE102.CLAUXDES'
         + ', TGE104.TDIARABR, TGE103.TMONDES, TGE110.DOCABR, TGE113.TREGDES'
         + ' FROM CXC302'
         + ' LEFT JOIN CXC301 ON (CXC302.CIAID = CXC301.CIAID AND CXC302.DOCID = CXC301.DOCID AND CXC302.CCNODOC = CXC301.CCNODOC AND CXC302.CCSERIE = CXC301.CCSERIE)'
         + ' LEFT JOIN TGE110 ON (CXC301.DOCID = TGE110.DOCID AND TGE110.DOCMOD=' + quotedStr('CXC') + ')'
         + ' LEFT JOIN TGE102 ON (CXC301.CLAUXID = TGE102.CLAUXID)'
         + ' LEFT JOIN TGE104 ON (CXC301.TDIARID = TGE104.TDIARID)'
         + ' LEFT JOIN TGE103 ON (CXC301.TMONID = TGE103.TMONID)'
         + ' LEFT JOIN CXC101 ON (CXC301.CCOMERID = CXC101.CCOMERID)'
         + ' LEFT JOIN TGE113 ON (CXC302.TREGID = TGE113.TREGID)';
      If sWhere <> '' Then
         sSQL := sSQL + ' WHERE ' + sWhere;

      sSQL := sSQL + ' ORDER BY CXC301.CIAID, CXC301.DOCID, CXC301.CCNODOC, CXC301.CCSERIE, CXC302.TREGID';
   End;

   If DMCXC.SRV_D = 'ORACLE' Then
   Begin
      sSQL := 'SELECT CXC301.CIAID, CXC301.DOCID, CXC301.CCNODOC, CXC301.CCSERIE, CXC301.CCFEMIS, '
         + 'CXC301.CLAUXID, CXC301.CLIEDES, CXC301.CCOMERID, CXC301.TDIARID, CXC301.TMONID, '
         + 'DECODE( CXC302.CCDH, ''D'', CXC302.CCMTOORI, 0 ) MONTOD, '
         + 'DECODE( CXC302.CCDH, ''D'', 0, CXC302.CCMTOORI ) MONTOH, '
         + 'CXC302.TREGID, CXC302.CPTOID, CXC302.CUENTAID, CXC302.CCGLOSA, CXC101.CCOMERDES, '
         + 'TGE102.CLAUXDES, TGE104.TDIARABR, TGE103.TMONDES, TGE110.DOCABR, TGE113.TREGDES '
         + 'FROM CXC302, CXC301, TGE110, TGE102, TGE104, TGE103, CXC101, TGE113 ';
      If sWhere <> '' Then
         sSQL := sSQL + ' WHERE ' + sWhere + ' and '
      Else
         sSQL := sSQL + ' WHERE ';

      sSQL := sSQL
         + '( CXC302.CIAID=CXC301.CIAID AND CXC302.DOCID = CXC301.DOCID AND '
         + '  CXC302.CCNODOC=CXC301.CCNODOC AND CXC302.CCSERIE=CXC301.CCSERIE ) AND '
         + '( CXC301.DOCID    = TGE110.DOCID(+)      AND ''CXC''=TGE110.DOCMOD(+) ) AND '
         + '( CXC301.CLAUXID  = TGE102.CLAUXID(+)  ) AND '
         + '( CXC301.TDIARID  = TGE104.TDIARID(+)  ) AND '
         + '( CXC301.TMONID   = TGE103.TMONID(+)   ) AND '
         + '( CXC301.CCOMERID = CXC101.CCOMERID(+) ) AND '
         + '( CXC302.TREGID   = TGE113.TREGID(+)   ) '
         + 'ORDER BY CXC301.CIAID, CXC301.DOCID, CXC301.CCNODOC, CXC301.CCSERIE, CXC302.TREGID '
   End;

   pplblSistema.text := 'CUENTA POR COBRAR';
   pplblTitulo.text := 'PROVISIONES CON DETALLE';

   Try
      DMCXC.cdsReporte.close;
      DMCXC.cdsReporte.dataRequest(sSQL);
      DMCXC.cdsReporte.open;

      ppReporte.print;
   Except
   End;

End;

Procedure TFToolCont.sbtNCClick(Sender: TObject);
Begin
   If FRegistros.xTipoProv = 'P' Then
      exit
   Else
      If FRegistros.xTipoProv = 'N' Then
      Begin
         cdsGProv := GNCredito.FMant.cds2; //Nota Credito
         MProv := GNCredito;
         AplicaNotaCredito;
      End
      Else
         If FRegistros.xTipoProv = 'O' Then
            exit;

   cdsGprov.EnableControls;

End;

Procedure TFToolCont.AplicaNotaCredito;
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

   If DMCXC.RecuperarDatos('CXC304', '*', xWhere) Then
   Begin
       //Realizar Comprobaciones sobre documentos subyacentes
      With DMCXC.cdsUltTGE Do
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
            DMCXC.cdsqry.Close;
            DMCXC.cdsQry.DataRequest(xSQL);
            DMCXC.cdsQry.Open;
            If DMCXC.cdsqry.FieldByName('CC_CONTA').AsString = 'S' Then
            Begin
               Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
                                       //'Clase    : '+ fieldbyname('CLAUXID').AsString  + #13+
                  'Cliente  : ' + fieldbyname('CLIEID').AsString + #13 +
                  'Tipo Doc : ' + fieldbyname('DOCID').AsString + #13 +
                  'Serie    : ' + fieldbyname('CCSERIE').AsString + #13 +
                  'N° Doc.  : ' + fieldbyname('CCNODOC').AsString + #13 +
                  'ya se encuentra contabilizada');
            End;
            If Not DMCXC.cdsQry.FieldByName('CCPAGLOC').IsNull Then
            Begin
               If DMCXC.cdsQry.FieldByName('CCPAGLOC').AsCurrency <> 0 Then
               Begin
                   //poner código que comprueba si la unica cancelación es de la nota de crédito
                  If (FieldByName('CCMTOLOC').AsCurrency <> DMCXC.cdsqry.FieldByName('CCPAGLOC').AsCurrency) And
                     (FieldByName('CCMTOEXT').AsCurrency <> DMCXC.cdsqry.FieldByName('CCPAGEXT').AsCurrency) Then
                     Raise Exception.create('No se puede Anular, pues la Provisión' + #13 +
                        'ya tiene Cancelaciones')
               End
               Else
                  If DMCXC.cdsQry.FieldByName('CCSALLOC').AsCurrency <> DMCXC.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
                     Raise Exception.create('No se puede Anular, Debe Anular ' + #13 +
                        'la Cancelación Pendiente en Caja');
            End
            Else
               If DMCXC.cdsQry.FieldByName('CCSALLOC').AsCurrency <> DMCXC.cdsQry.FieldByName('CCMTOLOC').AsCurrency Then
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

Procedure TFToolCont.EliminaAnticipo;
Var
   sDocId, sMensaje, xWhere: String;
   xSQL,
      xMes,
      xAno, xNmes, xtmonid, ssql: String;
   iX: integer;
Begin
   sDocId := DMCXC.displayDescrip('TGE110', 'DOCDES', 'DocID', DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString);
   sMensaje := 'Cliente  : ' + DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString + #13 +
      'Nombre   : ' + DMCXC.cdsMovCxC.fieldbyname('CLIEDES').AsString + #13 +
      'Tipo Doc : ' + sDocid + #13 +
      'Serie    : ' + DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString + #13 +
      'N° Doc.  : ' + DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString + #13 +
      'F.Emisión: ' + DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsString + #13;

   If DMCXC.VerificaCierre(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString, DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsDateTime) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

    //1ra Validación
   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Anulada');
   End;

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede Anular la Provision' + #13 + sMensaje +
         ' pues el Periodo ya está cerrado');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Contabilizada');
   End;

   If (DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat) Or
      (DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat) Then
      Raise Exception.Create('No se puede anular porque la provisión esta en proceso de Canje.');

   If Not DMCXC.cdsMovCxC.FieldByName('CCPAGORI').IsNull Then
   Begin
      If DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsCurrency <> 0 Then
         Raise Exception.create('No se puede Anular, pues la Provisión' + #13 + sMensaje +
            'ya tiene Cancelaciones')
      Else
         If DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
            Raise Exception.create('No se puede Anular la Provisión' + #13 + sMensaje +
               'Debe Anular la Cancelación Pendiente en Caja');
   End
   Else
      If DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
         Raise Exception.create('No se puede Anular la Provisión' + #13 + sMensaje +
            'Debe Anular la Cancelación Pendiente en Caja');

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
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
   If (DMCXC.cdsMovCxC.fieldbyname('CCESTADO').asstring = 'P') Then
   Begin
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CiaId').Asstring, DMCXC.cdsMovCxC.FieldByName('CCAnoMes').Asstring,
         DMCXC.cdsMovCxC.FieldByName('ClAuxId').AsString, DMCXC.cdsMovCxC.FieldByName('ClieId').AsString,
         '-', (-1) * DMCXC.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat, (-1) * DMCXC.cdsMovCxC.FieldByName('CCMtoExt').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMonid').AsString);
   End;
   DMCXC.cdsMovCxC.edit;
   DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString := 'A';
   DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.fieldbyname('FECANUL').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.fieldbyname('HORANUL').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.Post;
   DMCXC.cdsMovCxC.DataRequest(' SELECT * FROM CXC301 WHERE ' +
      ' CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString) +
      ' AND DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString) +
      ' AND CCSERIE=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString) +
      ' AND CCNODOC=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString));

   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
End;

Procedure TFToolCont.Button2Click(Sender: TObject);
Var
   sSQL: String;
Begin
{   Filtracds( DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
                        + 'CIAID='   +''''+'01'+''''+ ' and '
                        + 'CLIEID='  +''''+DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString+''''+ ' and '
                        + 'DOCID='   +''''+'24'+''''+ ' and '
                        + 'CCSERIE=' +''''+'000'+''''+ ' and '
                        + 'TDIARID=' +''''+'61'+''''+ ' and '
                        + 'CCNODOC=' +''''+DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString+'''');
   DMCXC.cdsDetCxC.First;
   while not DMCXC.cdsDetCxC.EOF DO
    DMCXC.cdsDetCxC.delete;                                                                      }
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + '''' + 'CLG' + '''' + ' and '
      + 'CLIEID=' + '''' + 'CLG' + '''' + ' and '
      + 'DOCID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCSERIE=' + '''' + 'CLG' + '''' + ' and '
      + 'TDIARID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCNODOC=' + '''' + 'CLG' + '''');

   Filtracds(DMCXC.cdsDetPagoLiq, 'Select * from CXC320 Where '
      + 'CIAID=' + '''' + '01' + '''' + ' and '
      + 'LICOID=' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNLETBCO').AsString + '''' + ' and '
      + 'CLIEID=' + '''' + DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString + '''' + ' and '
      + 'TMONIDPAGO=' + '''' + DMCXC.cdsMovCxC.FieldByName('TMONID').AsString + '''' + ' and '
      + 'LICOMTOANTEXT=' + DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsString + ' and '
      + 'LICOMTOANTORI>0');

   If DMCXC.cdsDetPagoLiq.RecordCount > 1 Then
      Raise Exception.Create('mAS DE 1');
   If DMCXC.cdsDetPagoLiq.RecordCount = 0 Then
      Raise Exception.Create('nada');

   DMCXC.cdsDetPagoLiq.First;

   While Not DMCXC.cdsDetPagoLiq.EOF Do
   Begin
      Application.ProcessMessages;
     //lblContador.caption:=IntToStr(DMCXC.cdsDetPagoLiq.Recno)+' de '+IntToStr(DMCXC.cdsDetPagoLiq.RecordCount);

     // INSERTA EL REGISTRO DEL ANTICIPO EN EL HABER
      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC;
      DMCXC.BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DMCXC.wsAnt) +
         ' AND TMONID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) +
         ' AND TVTAID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('TVTAID').AsString), 'CPTOCAB');
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsQry.FieldByName('TREGID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').AsString;
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat;
      DMCXC.cdsDetCxC.Post;
     // INSERTA EL REGISTRO DEL ANTICIPO EN EL DEBE

      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC;
      DMCXC.cdsDetCxC.Edit;
      If (DMCXC.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DMCXC.wsFeFe) Or (DMCXC.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DMCXC.wsFChe) Then
      Begin
         DMCXC.BuscaQry('dspTGE', 'TGE105', 'REMESAID', 'BCOTIPCTA=''C''', 'REMESAID');
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('REMESAID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      End;

      If (DMCXC.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DMCXC.wsFNDep) Then
      Begin
         DMCXC.BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'CIAID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ' AND BANCOID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('BANCOID').AsString) +
            ' AND CCBCOID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('CCBCOID').AsString), 'CTAREMES');
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CTAREMES').AsString;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      End;

      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := 'MN';
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', 'TREGID,TIPDET', 'TIPDET=''MN''', 'TREGID');

      DMCXC.cdsDetCxC.Post;
      DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

      DMCXC.cdsDetPagoLiq.Next;
   End;
End;

Procedure TFToolCont.LlenaDetCxC;
Begin
   DMCXC.cdsDetCxC.Edit;
   DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := DMCXC.cdsDetPagoLiq.FieldByName('CIAID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := DMCXC.BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=' + QuotedStr(DMCXC.wModulo) + ' AND DOCID=' + QuotedStr(DMCXC.wsAnt), 'TDIARID');
   DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := DMCXC.cdsDetPagoLiq.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := DMCXC.cdsDetPagoLiq.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat;
   DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.cdsDetPagoLiq.FieldByName('LICOUSER').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCFREG').Value := DMCXC.cdsDetPagoLiq.FieldByName('LICOFREG').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('CCHREG').Value := DMCXC.cdsDetPagoLiq.FieldByName('LICOHREG').AsDateTime;
   DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := DMCXC.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString;

   If DMCXC.BuscaFecha('TGE114', 'Fecha', DMCXC.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime) Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString;
   End;
End;

Procedure TFToolCont.Button4Click(Sender: TObject);
Var
   sSQL: String;
Begin
{   Filtracds( DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
                        + 'CIAID='   +''''+'01'+''''+ ' and '
                        + 'CLIEID='  +''''+DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString+''''+ ' and '
                        + 'DOCID='   +''''+'24'+''''+ ' and '
                        + 'CCSERIE=' +''''+'000'+''''+ ' and '
                        + 'TDIARID=' +''''+'61'+''''+ ' and '
                        + 'CCNODOC=' +''''+DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString+'''');
   DMCXC.cdsDetCxC.First;
   while not DMCXC.cdsDetCxC.EOF DO
    DMCXC.cdsDetCxC.delete;                                                                      }
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + '''' + 'CLG' + '''' + ' and '
      + 'CLIEID=' + '''' + 'CLG' + '''' + ' and '
      + 'DOCID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCSERIE=' + '''' + 'CLG' + '''' + ' and '
      + 'TDIARID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCNODOC=' + '''' + 'CLG' + '''');

   Filtracds(DMCXC.cdsDetPagoLiq, 'Select * from CXC320 Where '
      + 'CIAID=' + '''' + '01' + '''' + ' and '
      + 'LICOID=' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNLETBCO').AsString + '''' + ' and '
      + 'CLIEID=' + '''' + DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString + '''' + ' and '
      + 'TMONIDPAGO=' + '''' + DMCXC.cdsMovCxC.FieldByName('TMONID').AsString + '''' + ' and '
      + 'LICOMTOANTLOC=' + DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsString + ' and '
      + 'LICOMTOANTORI>0');

   If DMCXC.cdsDetPagoLiq.RecordCount > 1 Then
      Raise Exception.Create('mAS DE 1');
   If DMCXC.cdsDetPagoLiq.RecordCount = 0 Then
      Raise Exception.Create('nada');

   DMCXC.cdsDetPagoLiq.First;

   While Not DMCXC.cdsDetPagoLiq.EOF Do
   Begin
      Application.ProcessMessages;
     //lblContador.caption:=IntToStr(DMCXC.cdsDetPagoLiq.Recno)+' de '+IntToStr(DMCXC.cdsDetPagoLiq.RecordCount);

     // INSERTA EL REGISTRO DEL ANTICIPO EN EL HABER
      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC;
      DMCXC.BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DMCXC.wsAnt) +
         ' AND TMONID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) +
         ' AND TVTAID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('TVTAID').AsString), 'CPTOCAB');
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsQry.FieldByName('TREGID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').AsString;
      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat;
      DMCXC.cdsDetCxC.Post;
     // INSERTA EL REGISTRO DEL ANTICIPO EN EL DEBE

      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC;
      DMCXC.cdsDetCxC.Edit;
      If (DMCXC.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DMCXC.wsFeFe) Or (DMCXC.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DMCXC.wsFChe) Then
      Begin
         DMCXC.BuscaQry('dspTGE', 'TGE105', 'REMESAID', 'BCOTIPCTA=''C''', 'REMESAID');
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('REMESAID').AsString;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      End;

      If (DMCXC.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DMCXC.wsFNDep) Then
      Begin
         DMCXC.BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'CIAID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ' AND BANCOID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('BANCOID').AsString) +
            ' AND CCBCOID=' + QuotedStr(DMCXC.cdsDetPagoLiq.FieldByName('CCBCOID').AsString), 'CTAREMES');
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CTAREMES').AsString;
         DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
         DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
      End;

      DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
      DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsFloat;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := 'MN';
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', 'TREGID,TIPDET', 'TIPDET=''MN''', 'TREGID');

      DMCXC.cdsDetCxC.Post;
      DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

      DMCXC.cdsDetPagoLiq.Next;
   End;
End;

//INICIO PASAR A INICIAL

Procedure TFToolCont.sbtInicialClick(Sender: TObject);
Begin
   If FRegistros.xTipoProv = 'P' Then
   Begin
      xSQL := 'SELECT * FROM CXC301 '
         + 'WHERE CIAID=''' + GProvision.FMant.cds2.fieldbyname('CIAID').AsString + ''' '
         + 'AND DOCID=''' + GProvision.FMant.cds2.fieldbyname('DOCID').AsString + ''' '
         + 'AND CCSERIE=''' + GProvision.FMant.cds2.fieldbyname('CCSERIE').AsString + ''' '
         + 'AND CCNODOC=''' + GProvision.FMant.cds2.fieldbyname('CCNODOC').AsString + ''' ';
      DMCXC.cdsqry.Close;
      DMCXC.cdsQry.DataRequest(xSQL);
      DMCXC.cdsQry.Open;

      cdsGProv := DMCXC.cdsQry; //Provisiones
      MProv := GProvision;
      PasarInicial;
   End
   Else
   Begin
      ShowMessage('No se puede pasar a estado Inicial');
   End
End;

Procedure TFToolCont.PasarInicial;
Var
   sDocId, sMensaje, xWhere: String;
   xSQL,
      xMes,
      xAno, xNmes, xtmonid, ssql: String;
   iX: integer;
Begin

   xSQL := 'Select * from CXC301';
   xSQL := xSQL + ' WHERE CIAID    = ' + '''' + GProvision.FMant.cds2.fieldbyname('CIAID').AsString + '''' + ' AND '
      + ' TDIARID  = ' + '''' + GProvision.FMant.cds2.fieldbyname('TDIARID').AsString + '''' + ' AND '
      + ' CCANOMES = ' + '''' + GProvision.FMant.cds2.fieldbyname('CCANOMES').AsString + '''' + ' AND '
      + ' CCNOREG  = ' + '''' + GProvision.FMant.cds2.fieldbyname('CCNOREG').AsString + '''';
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

   sDocId := DMCXC.displayDescrip('TGE110', 'DOCDES', 'DOCID', DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString);
   sMensaje := 'Cliente  : ' + DMCXC.cdsMovCxC.fieldbyname('CLIEID').AsString + #13 +
      'Nombre   : ' + DMCXC.cdsMovCxC.fieldbyname('CLIEDES').AsString + #13 +
      'Tipo Doc : ' + sDocid + #13 +
      'Serie    : ' + DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString + #13 +
      'N° Doc.  : ' + DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString + #13 +
      'F.Emisión: ' + DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsString + #13;

   If DMCXC.VerificaCierre(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString, DMCXC.cdsMovCxC.fieldbyname('CCFEMIS').AsDateTime) = false Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

    //1ra Validación
   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede pasar a estado Inicial, pues la Provisión' + #13 + sMensaje +
         'ya se encuentra Anulada');
   End;

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede pasar a estado Inicial la Provision' + #13 + sMensaje +
         ' pues el Periodo ya está cerrado');
   End;

    (*if DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' then
    begin
       Raise Exception.create('No se puede Elimnar, pues la Provisión'+#13+sMensaje+
                              'ya se encuentra Contabilizada' ) ;
    end ; *)

   If (DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat) Or
      (DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat) Then
      Raise Exception.Create('No se puede pasar a estado Inicial porque la provisión esta en proceso de Canje.');

   If Not DMCXC.cdsMovCxC.FieldByName('CCPAGORI').IsNull Then
   Begin
      If DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsCurrency <> 0 Then
         Raise Exception.create('No se puede pasar a estado Inicial, pues la Provisión' + #13 + sMensaje +
            'ya tiene Cancelaciones')
      Else
         If DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
            Raise Exception.create('No se puede pasar a estado Inicial la Provisión' + #13 + sMensaje +
               'Debe Anular la Cancelación Pendiente en Caja');
   End
   Else
      If DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsCurrency <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsCurrency Then
         Raise Exception.create('No se puede pasar a estado Inicial la Provisión' + #13 + sMensaje +
            'Debe Anular la Cancelación Pendiente en Caja');

   xAno := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
   xNMes := Copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   If DMCXC.MesCerrado(xNMes, xAno, DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) Then
   Begin
      Raise Exception.create('No se puede pasar a estado Inicial la Provision' + #13 +
         ' pues el Periodo ya está cerrado');
   End;

   If Application.MessageBox(Pchar('¿Confirme pasar a estado Inicial?' + #13 + #13 + sMensaje),
      'Inicial',
      MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK Then
      Exit;

   xSQL := 'select * from CNT300  WHERE CIAID    = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) +
      ' AND TDIARID    = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString) +
      ' AND CNTANOMM = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) +
      ' AND CNTCOMPROB = ' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      Raise Exception.create('No se puede pasar a estado Inicial la Provisión' + #13 + sMensaje +
         'Debe eliminar el Asiento contable asociado');
   End;

    //procedimientos de pase a Inicial
    //I. Reversión de Saldos en tge401
   If (DMCXC.cdsMovCxC.fieldbyname('CCESTADO').asstring = 'P') Then
   Begin
        //if DMCXC.cdsMovCxC.FieldByName('CCFLAGVTA').AsString='S' then
        (*begin
          xSQL:=' UPDATE FAC305 SET FACESTADO='+ QuotedStr('INICIAL')  +
                ' WHERE DOCID='+QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString)+
                ' AND FACSERIE='+QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString)+
                ' AND NFAC='+QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString);
          try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
          except
          end;
        end;
        DMCXC.SaldosAuxiliarCLG( DMCXC.cdsMovCxC.FieldByName('CiaId').Asstring,   DMCXC.cdsMovCxC.FieldByName('CCAnoMes').Asstring,
                       DMCXC.cdsMovCxC.FieldByName('ClAuxId').AsString, DMCXC.cdsMovCxC.FieldByName('ClieId').AsString,
                   '+',(-1)*DMCXC.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat,(-1)*DMCXC.cdsMovCxC.FieldByName('CCMtoExt').AsFloat,DMCXC.CdsMovCxC.FieldByName('TMonid').AsString);

       DMCXC.cdsMovCxC.edit ;
       DMCXC.cdsMovCxC.fieldbyname('CCSALORI').AsFloat := DMCXC.cdsMovCxC.fieldbyname('CCMTOORI').AsFloat-DMCXC.cdsMovCxC.fieldbyname('CCPAGORI').AsFloat;
       DMCXC.cdsMovCxC.fieldbyname('CCSALEXT').AsFloat := DMCXC.cdsMovCxC.fieldbyname('CCMTOEXT').AsFloat-DMCXC.cdsMovCxC.fieldbyname('CCPAGEXT').AsFloat;
       DMCXC.cdsMovCxC.fieldbyname('CCSALLOC').AsFloat := DMCXC.cdsMovCxC.fieldbyname('CCMTOLOC').AsFloat-DMCXC.cdsMovCxC.fieldbyname('CCPAGLOC').AsFloat;
       DMCXC.cdsMovCxC.fieldbyname('CCESTADO').AsString :='A';
       DMCXC.cdsMovCxC.fieldbyname('USERANUL').AsString :=DMCXC.wUsuario;
       DMCXC.cdsMovCxC.fieldbyname('FECANUL').AsDateTime:=DMCXC.DateS;
       DMCXC.cdsMovCxC.fieldbyname('HORANUL').AsDateTime:=DMCXC.TimeS;
       DMCXC.cdsMovCxC.Post ;
       DMCXC.cdsMovCxC.DataRequest(' SELECT * FROM CXC301 WHERE '+
                                 ' CIAID='+Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)+
                                 ' AND DOCID='+Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)+
                                 ' AND CCSERIE='+Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)+
                                 ' AND CCNODOC='+Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString));

       DMCXC.AplicaDatos(DMCXC.cdsMovCxC,'MovCxC');      *)

        //** 17/11/2000 pjsv
      xSQL := 'UPDATE CXC302 SET CCESTADO = ' + Quotedstr('I');
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString + '''';
      Try

         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
      xSQL := 'UPDATE CXC301 SET CCESTADO = ' + Quotedstr('I') + ', CC_CONTA = ' + Quotedstr('N');
      xSQL := xSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString + '''' + ' AND '
         + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('TDIARID').AsString + '''' + ' AND '
         + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString + '''' + ' AND '
         + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.fieldbyname('CCNOREG').AsString + '''';
      Try

         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;

        //**
      ShowMessage('La cuenta por Cobrar Pasó a estado Iniciao');
        //**
   End
   Else
      errormsg(Caption, 'Sólo se Pasan a Inicial Registros Aceptados');

End;
//FIN PASAR A INICIAL
procedure TFToolCont.BitBtn1Click(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := 'insert into TGE204(CLIEID, CLIERUC, PAISID, CLIEDIR, CLIECZIP, '
          +'                   CLIETELF, CLAUXID, VEID, DPTOID, CIUDID, CIAID, '
          +'                   ZONVTAID, CLIEDES, CLIECODAUX, USEID, CLIECODMOD, CLIEDNI, '
          +'                   TVTAID, CLIEAPEPAT, CLIEAPEMAT, ACTIVO, TDOC_ID_SUNAT) '
          +'select ASOID CLIEID, ASODNI CLIERUC, ''01'' PAISID, substr(ASODIR,1,100) CLIEDIR, ZIPID CLIECZIP, '
          +'       ASOTELF1 CLIETELF, ''AS'' CLAUXID, ''001'' VEID, ASODPTO DPTOID, CIUDID, ''04'' CIAID, '
          +'       ''01001'' ZONVTAID, substr(ASOAPENOM,1,100) CLIEDES, ''02'' CLIECODAUX, USEID, '
          +'       ASOCODMOD CLIECODMOD, ASODNI CLIEDNI, '
          +'       ''01'' TVTAID, '
          +'       ASOAPEPAT CLIEAPEPAT, ASOAPEMAT CLIEAPEMAT, ''S'' ACTIVO, ''01'' TDOC_ID_SUNAT '
          +'  from APO201 '
          +' where ASOID '
          +'   in (select distinct CLIEID '
          +'         from FAC305 '
          +'        where to_char(FACFECHA,''YYYYMM'')=''201410'' '
          +'          and CLAUXID||CLIEID not in (select CLAUXID||CLIEID from TGE204) '
          +'          and CLAUXID=''AS'' '
          +'          and CLIEID is not null)';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('No se pudo actualizar los Clientes');
   End;
   ShowMessage('ok');
end;

End.

