Unit CXC306;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ppCtrls, ppDB, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm,
   ppRelatv, ppCache, ppDBPipe, StdCtrls, ExtCtrls, wwdblook, Buttons, Mask,
   wwdbedit, ComCtrls, wwdbdatetimepicker, Wwdbdlg, ppVar, ppModule,
   daDatMod, ppviewr, Spin, ppEndUsr;

Type
   TFLetrasPendientes = Class(TForm)
      ppdbLetras: TppDBPipeline;
      pprLetras: TppReport;
      pnlRegComp: TPanel;
      lblLetras: TLabel;
      bbtnOk: TBitBtn;
      bbtnBorra: TBitBtn;
      pnlDatos1: TPanel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      edtTDoc: TEdit;
      dblcTDoc: TwwDBLookupCombo;
      Label1: TLabel;
      Label2: TLabel;
      pnlDatos2: TPanel;
      rgOrden: TRadioGroup;
      lblRango1: TLabel;
      dbeNoReg1: TwwDBEdit;
      dbdtpFReg1: TwwDBDateTimePicker;
      dblcdProv1: TwwDBLookupComboDlg;
      lblRango2: TLabel;
      dbeNoReg2: TwwDBEdit;
      dblcdProv2: TwwDBLookupComboDlg;
      dbdtpFReg2: TwwDBDateTimePicker;
      pprNLetras: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppDBText4: TppDBText;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel35: TppLabel;
      ppLabel37: TppLabel;
      ppLabel39: TppLabel;
      ppLabel41: TppLabel;
      ppLabel44: TppLabel;
      ppLabel46: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppVariable1: TppVariable;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppVariable2: TppVariable;
      ppSummaryBand2: TppSummaryBand;
      ppLabel51: TppLabel;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLine6: TppLine;
      seAno: TSpinEdit;
      seMes: TSpinEdit;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      pplblDel: TppLabel;
      pplblAl: TppLabel;
      pplblFecini: TppLabel;
      pplblFecfin: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLine1: TppLine;
      ppLabel7: TppLabel;
      ppLabel9: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel15: TppLabel;
      ppLabel18: TppLabel;
      ppLabel20: TppLabel;
      ppLine2: TppLine;
      ppLabel52: TppLabel;
      ppLabel3: TppLabel;
      pplblPeriodo: TppLabel;
      pplblDato: TppLabel;
      pplblCia: TppLabel;
      ppVarEstado: TppVariable;
      ppLabel14: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText3: TppDBText;
      ppDBText5: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText6: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLabel22: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppLine3: TppLine;
      ppDesigner1: TppDesigner;
      rgTodos: TGroupBox;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      chqTodos: TCheckBox;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure rgOrdenClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure dbdtpFReg1Exit(Sender: TObject);
      Procedure dbdtpFReg2Exit(Sender: TObject);
      Procedure ppVarPlazoCalc(Sender: TObject; Var Value: Variant);
      Procedure ppVarEstadoCalc(Sender: TObject; Var Value: Variant);
      Procedure ppVarEstadoPrint(Sender: TObject);
      Procedure pprLetrasPreviewFormCreate(Sender: TObject);
      Procedure IniciaDatos;
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdProv1Exit(Sender: TObject);
      Procedure seAnoExit(Sender: TObject);
      Procedure seMesExit(Sender: TObject);
      Procedure chqTodosClick(Sender: TObject);
      Procedure chqTodosExit(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FLetrasPendientes: TFLetrasPendientes;
   Year, Month, Day: Word;
   wfechOk: boolean;
   anomm, wMes: String;
   xFiltroP1, xFiltroP2: String;
   sTDiarios: String;

Implementation
Uses CxCDM;
{$R *.DFM}

Procedure TFLetrasPendientes.FormActivate(Sender: TObject);
Var
   xSelDoc: String;
Begin
//   DM1.cdsMovCxC2.DisableControls;
 // calcula valor de periodo aaaamm tomando como base la fecha del sistema
   DM1.cdsCia.open;
   DM1.cdsTDoc.open;
   wFechOk := True;
   DecodeDate(dateS, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := StrZero(inttostr(Month), 2);
   seAno.Text := IntToStr(Year);
   seMes.Text := wMes;
   dblcCia.SetFocus;

   DM1.cdsTDoc.Filter := '';
   DM1.cdsTDoc.Filter := 'DOC_FREG=''L'' and DOCMOD=''CXC''';
   DM1.cdsTDoc.Filtered := True;
   If DM1.cdsTDoc.RecordCount = 0 Then
   Begin
      ShowMessage('Tipos de Documento no registra definicion de Letras');
      // Forma de Registro (L) no definido en tabla TDocum(TGE110)     ¿?
      // Salir
      exit;
   End;

   xSelDoc := '';
   While Not DM1.cdsTDoc.Eof Do
   Begin
      If Length(xSelDoc) = 0 Then
         xSelDoc := 'DOCID=' + quotedstr(DM1.cdsTDoc.FieldByName('DOCID').AsString)
      Else
         xSelDoc := xSelDoc + ' or DOCID=' + quotedstr(DM1.cdsTDoc.FieldByName('DOCID').AsString);
      DM1.cdsTDoc.Next;
   End;
   If Length(xSelDoc) = 0 Then
      Raise Exception.Create('No Existen Tipos de Documentos Registrados para Esta Opcion');

   //Filtracds( DM1.cdsProv,   'Select * from TGE201' );
   Filtracds(DM1.cdsMovCxC2, 'Select * from CXC301 Where ' + xSelDoc);

   IniciaDatos;

End;

Procedure TFLetrasPendientes.IniciaDatos;
Begin

   pnlDatos1.Enabled := True;
   pnlDatos2.Enabled := False;

   dblcCia.Text := '';
   edtCia.Text := '';
   dblcTDoc.Text := '';
   edtTDoc.Text := '';
   dblcTDiario.Text := '';
   edtTDiario.Text := '';
   rgOrden.ItemIndex := -1;
   dbeNoReg1.Text := '';
   dbeNoReg2.Text := '';
   dbdtpFReg1.Date := 0;
   dbdtpFReg2.Date := 0;
   dblcdProv1.Text := '';
   dblcdProv2.Text := '';

End;

Procedure TFLetrasPendientes.dblcCiaExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFLetrasPendientes.dblcTDocExit(Sender: TObject);
Var
   xx, xFiltro, xWhere: String;
Begin
   If bbtnBorra.Focused Then Exit;
   With DM1 Do
   Begin
      If dblcTDoc.Text = '' Then
      Begin
         dblcTDoc.SetFocus;
         exit;
      End;
      DM1.cdsTDoc.Filter := '';
      xFiltro := 'DOCID=' + quotedstr(dblcTDoc.Text);
      xFiltro := xFiltro + ' and DOC_FREG=' + quotedstr('L');
      DM1.cdsTDoc.Filter := xFiltro;
      DM1.cdsTDoc.Filtered := True;
      If DM1.cdsTDoc.RecordCount > 0 Then
      Begin
         edtTDoc.Text := DM1.cdsTDoc.FieldByName('DOCDES').AsString;
         xWhere := 'TDiarID=' + quotedstr(DM1.cdsTDoc.FieldByName('TDIARID').AsString);
         If length(DM1.cdsTDoc.FieldByName('TDIARID2').AsString) > 0 Then
         Begin
            xWhere := xWhere + ' or TDiarID=' + quotedstr(DM1.cdsTDoc.FieldByName('TDIARID2').AsString);
         End;
         xx := BuscaQry('dspTGE', 'TGE104', '*', xWhere, 'TDiarId');
         dblcTDiario.Enabled := False;
         If DM1.cdsQry.RecordCount > 1 Then
         Begin
          //dblcTDiario.Enabled:=True;
            dblcTDiario.LookUpTable := DM1.cdsQry;
            dblcTDiario.LookUpField := 'TDiarId';
         End;
       //else
       //dblcTDiario.Value:=xx;
       //edtTDiario.Text:=DM1.cdsQry.FieldByName('TDIARDES').Value;
      End;
   End;
End;

Procedure TFLetrasPendientes.dblcTDiarioExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   With DM1 Do
   Begin
      DM1.cdsQry.IndexFieldNames := 'TDiarId';
      DM1.cdsQry.SetKey;
      DM1.cdsQry.FieldByName('TDIARID').Value := dblcTDiario.Text;
      If DM1.cdsQry.GotoKey Then edtTDiario.Text := DM1.cdsQry.FieldByName('TDIARDES').Value;
      DM1.cdsTDoc.Filter := 'DOC_FREG=' + quotedstr('L'); // TDocum Letras
      DM1.cdsTDoc.Filtered := True;
   End;
End;

Procedure TFLetrasPendientes.rgOrdenClick(Sender: TObject);
Var
   nfecha1, nfecha2, xmes: String;
Begin
   With DM1 Do
   Begin
      If edtCia.Text = '' Then Raise exception.Create('Compañía no válida');
      If edtTDoc.Text = '' Then Raise exception.Create('Documento no válido');
      If chqTodos.checked Then
      Begin
         If sTDiarios = '' Then Raise exception.Create('Diario no válido');
      End
      Else
      Begin
         If edtTDiario.Text = '' Then Raise exception.Create('Diario no válido');
      End;
      xmes := StrZero(seMes.text, 2);
//      if (length(seAno.Text)+length(xmes))<>6 then raise exception.Create('Periodo no válido');
      xFiltroP2 := '';
      Case rgOrden.ItemIndex Of
      {
      0 : begin // No. de Registro
             dblcdProv1.Visible:=False;
             dblcdProv2.Visible:=False;
             dbdtpFReg1.Visible:=False;
             dbdtpFReg2.Visible:=False;
             dbeNoReg1.Visible:=True;
             dbeNoReg2.Visible:=True;
             DM1.cdsMovCxC2.IndexFieldNames:='CCNOREG';
             DM1.cdsMovCxC2.First;
             dbeNoReg1.Text:=DM1.cdsMovCxC2CCNOREG.Value;
             DM1.cdsMovCxC2.Last;
             dbeNoReg2.Text:=DM1.cdsMovCxC2CCNOREG.Value;

             //xFiltroP2:=' and CCNOREG>='+quotedstr(dbeNoReg1.Text)
             //          +' and CCNOREG<='+quotedstr(dbeNoReg2.Text);

             xFiltroP2:=' and Cabecera.CCNOREG>='+quotedstr(dbeNoReg1.Text)
                       +' and Cabecera.CCNOREG<='+quotedstr(dbeNoReg2.Text);
          end;
      }
         0:
            Begin // Fecha Reg.
               dblcdProv1.Visible := False;
               dblcdProv2.Visible := False;
               dbeNoReg1.Visible := False;
               dbeNoReg2.Visible := False;
               dbdtpFReg1.Visible := True;
               dbdtpFReg2.Visible := True;
               DM1.cdsMovCxC2.IndexFieldNames := 'CCFREG';

               DM1.cdsMovCxC2.First;
               dbdtpFReg1.Date := DM1.cdsMovCxC2.FieldByName('CCFREG').AsDateTime;
               DM1.cdsMovCxC2.Last;
               dbdtpFReg2.Date := DM1.cdsMovCxC2.FieldByName('CCFREG').AsDateTime;
             {xFiltroP2:=' and CCFVCMTO>='+quotedstr(datetostr(dbdtpFReg1.Date))
                       +' and CCFVCMTO<='+quotedstr(datetostr(dbdtpFReg2.Date));}

               nfecha1 := FormatDateTime(DM1.wFormatFecha, dbdtpFReg1.Date);
               nfecha2 := FormatDateTime(DM1.wFormatFecha, dbdtpFReg2.Date);
               xFiltroP2 := ' and (Cabecera.CCFVCMTO>=' + quotedstr(nfecha1)
                  + ' or Cabecera.CCFVCMTO<=' + quotedstr(nfecha2) + ')';
            End;
         1:
            Begin // Proveedor
               dbeNoReg1.Visible := False;
               dbeNoReg2.Visible := False;
               dbdtpFReg1.Visible := False;
               dbdtpFReg2.Visible := False;
               dblcdProv1.Visible := True;
               dblcdProv2.Visible := True;
               DM1.cdsMovCxC2.IndexFieldNames := 'CLIEID';
               DM1.cdsMovCxC2.First;
               dblcdProv1.Text := DM1.cdsMovCxC2.FieldByName('CLIEID').AsString;
               DM1.cdsMovCxC2.Last;
               dblcdProv2.Text := DM1.cdsMovCxC2.FieldByName('CLIEID').AsString;
             {
             xFiltroP2:=' and CLIEID>='+quotedstr(dblcdProv1.value)
                       +' and CLIEID<='+quotedstr(dblcdProv2.value);
             }
               xFiltroP2 := ' and Cabecera.CLIEID>=' + quotedstr(dblcdProv1.value)
                  + ' and Cabecera.CLIEID<=' + quotedstr(dblcdProv2.value);
            End;
      End;
   End; // With DM1
End;

Procedure TFLetrasPendientes.dbdtpFReg1Exit(Sender: TObject);
Var
   xmes: String;
Begin
   /////////////////////////// JSR
   DecodeDate(dbdtpFReg1.date, Year, Month, Day);
   wMes := StrZero(inttostr(Month), 2);
   anomm := IntToStr(Year) + wMes;

   xmes := StrZero(seMes.text, 2);

   If anomm <> (trim(seAno.Text) + trim(xmes)) Then
      wFechOk := False
   Else
      wFechOk := True;
   ///////////////////////////
   rgOrden.OnClick(Nil);
End;

Procedure TFLetrasPendientes.dbdtpFReg2Exit(Sender: TObject);
Var
   xmes: String;
Begin
   /////////////////////////// JSR
   DecodeDate(dbdtpFReg2.date, Year, Month, Day);
   wMes := inttostr(Month);
   wMes := StrZero(inttostr(Month), 2);

   anomm := IntToStr(Year) + wMes;
   If seMes.Value < 10 Then
      xmes := StrZero(seMes.text, 2);
   If anomm <> (trim(seAno.Text) + trim(xmes)) Then
      wFechOk := False
   Else
      wFechOk := True;
   ///////////////////////////
   rgOrden.OnClick(Nil);
End;

Procedure TFLetrasPendientes.bbtnOkClick(Sender: TObject);
Var
   flagFech, flagNroReg, flagProov: Boolean;
   xmes, xSQL: String;
Begin
   flagFech := False;
   flagNroReg := False;
   flagProov := False;
   If edtCia.Text = '' Then Raise exception.Create('Compañía no válida');
   If edtTDoc.Text = '' Then Raise exception.Create('Documento no válido');
   If Not chqTodos.checked Then
      If dblcTDiario.Text = '' Then
         Raise exception.Create('Diario no válido')
      Else
         If sTDiarios = '' Then Raise exception.Create('Seleccione Diario');

   xmes := StrZero(seMes.text, 2);

   //**
   If length(trim(seAno.Text) + trim(xmes)) <> 6 Then Raise exception.Create('Periodo no válido');
   Case rgOrden.ItemIndex Of
      0:
         Begin // Fecha Reg.
            flagFech := True;
            If (dbdtpFReg1.Date = 0) Or (dbdtpFReg1.Date = 0) Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
      1:
         Begin // Proveedor
            flagProov := True;
            If (dblcdProv1.Text = '') Or (dblcdProv2.Text = '') Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
   End;
   //** 20/03/2001 - pjsv
   {xSQL:=' Select Cabecera.CCFEMIS,Cabecera.CCNODOC,Cabecera.CLIEID,'+
         'Cliente.CLIEDES as lkClieDes,Moneda.TMONABR as lkTMon,'+
               'CASE WHEN Cabecera.TMONID='+quotedstr('02')+' THEN Cabecera.CCMTOEXT ELSE 0 END as CCMTOEXT,'+
               'CASE WHEN Cabecera.TMONID='+quotedstr('01')+' THEN Cabecera.CCMTOLOC ELSE 0 END as CCMTOLOC,'+
         'Cabecera.CCFVCMTO'+
         ' From CXC301 as Cabecera,TGE204 as Cliente,TGE103 as Moneda'+
         ' where '+xFiltroP1+xFiltroP2+
         ' and Cabecera.CCMTOLOC>0'+
         ' and Cabecera.TMONID=Moneda.TMONID'+
         ' and Cabecera.CLIEID=Cliente.CLIEID';
   }
   xSQL := ' Select Cabecera.CCESTADO, Cabecera.CCFEMIS,Cabecera.CCNODOC,Cabecera.CLIEID,' +
      'Cliente.CLIEDES as lkClieDes,Moneda.TMONABR as lkTMon,' +
      DM1.wReplacCeros + '(Cabecera.CCMTOEXT,0) as CCMTOEXT,' +
      DM1.wReplacCeros + '(Cabecera.CCMTOLOC,0) as CCMTOLOC,' +
      'Cabecera.CCFVCMTO' +
      ' From CXC301  Cabecera,TGE204  Cliente,TGE103  Moneda' +
      ' where ' + xFiltroP1 + xFiltroP2 +
      ' and Cabecera.TMONID=Moneda.TMONID' +
      ' and Cabecera.CIAID=Cliente.CIAID and Cabecera.CLAUXID=Cliente.CLAUXID AND Cabecera.CLIEID=Cliente.CLIEID';
   //**
   DM1.cdsQry2.Close;
   DM1.cdsQry2.ProviderName := 'dspTGE';
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   If dm1.cdsQry2.RecordCount = 0 Then
      Raise exception.create('No hay Datos Para la consulta');
   //** 20/03/2001 - pjsv
   pprLetras.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\LetraPendiente.Rtm';
   pprLetras.template.LoadFromFile;
   //09/11/2000   if not(wFechOk) then raise exception.Create('Fecha no coincide con el periodo');
   pplblPeriodo.Caption := DM1.BuscaQry2('dspTGE', 'TGE181', '*', 'MESIDR=' + QuotedStr(xMes), 'MESDESL') + ' - ' + seAno.Text;
   // llena campos del archivo de impresion
   If flagFech Then
   Begin
      pplblDato.Caption := 'Fecha Vencimiento';
      pplblFecIni.Caption := datetostr(dbdtpFReg1.Date);
      pplblFecFin.Caption := datetostr(dbdtpFReg2.Date);
   End;
   If flagNroReg Then
   Begin
      pplblDato.Caption := 'Nº de Registro';
      pplblFecIni.Caption := dbeNoreg1.text;
      pplblFecFin.Caption := dbeNoreg2.text;
   End;
   If flagProov Then
   Begin
      pplblDato.Caption := 'Cliente';
      pplblFecIni.Caption := dblcdProv1.text;
      pplblFecFin.Caption := dblcdProv2.text;
   End;
   //**
   pplblCia.Caption := edtCia.Text;
   //pprLetras.Print;
   ppDesigner1.Show;
End;

Procedure TFLetrasPendientes.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsMovCxC2.Filter := '';
End;

// Calcula el plazo de la Letra.... para el informe

Procedure TFLetrasPendientes.ppVarPlazoCalc(Sender: TObject; Var Value: Variant);
Begin
  //ppVarPlazo.Value:=(DM1.cdsMovCxC2CCFVcmto.Value-DM1.cdsMovCxC2CCFEmis.Value);
End;

Procedure TFLetrasPendientes.ppVarEstadoCalc(Sender: TObject; Var Value: Variant);
Begin
   ppVarEstado.Visible := True;
   If DM1.cdsQry2.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      ppVarEstado.Text := '  A       N       U       L       A       D       O   ';
   End
   Else
   Begin
      ppVarEstado.Text := '  N     O            A       N       U       L       A       D       O   ';
   End;
End;

Procedure TFLetrasPendientes.ppVarEstadoPrint(Sender: TObject);
Begin
    //ppVarEstado.Visible:=False;
End;

Procedure TFLetrasPendientes.pprLetrasPreviewFormCreate(Sender: TObject);
Begin
   pprLetras.PreviewForm.WindowState := WsMaximized;
   TppViewer(pprLetras.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
End;

Procedure TFLetrasPendientes.bbtnBorraClick(Sender: TObject);
Begin
   IniciaDatos;
   dblcCia.Setfocus;
End;

Procedure TFLetrasPendientes.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFLetrasPendientes.dblcdProv1Exit(Sender: TObject);
Begin
   rgOrden.OnClick(Nil);
End;

Procedure TFLetrasPendientes.seAnoExit(Sender: TObject);
Begin
   seMes.SetFocus;
End;

Procedure TFLetrasPendientes.seMesExit(Sender: TObject);
Var
   xmes: String;
Begin
   xFiltroP1 := '';
   {
   xFiltroP1 :='CIAID='+quotedstr(dblcCia.Text)
                       +' and DOCID='+quotedstr(dblcTDoc.Text)
                       +' and TDIARID='+quotedstr(dblcTDiario.Text)
                       +' and CCANOMES='+quotedstr(trim(seAno.Text)+trim(seMes.Text));
   }
   xmes := StrZero(seMes.text, 2);
   xFiltroP1 := 'Cabecera.CIAID=' + quotedstr(dblcCia.Text)
      + ' and Cabecera.DOCID=' + quotedstr(dblcTDoc.Text);
   If chqTodos.checked Then
      xFiltroP1 := xFiltroP1 + ' AND TDIARID ' + sTDiarios
   Else
      xFiltroP1 := xFiltroP1 + ' AND TDIARID=' + quotedStr(dblcTDiario.Text);

   xFiltroP1 := xFiltroP1 + ' and Cabecera.CCANOMES=' + quotedstr(trim(seAno.Text) + trim(xmes));

   pnlDatos1.Enabled := False;
   pnlDatos2.Enabled := True;
//   rgOrden.SetFocus;
End;

Procedure TFLetrasPendientes.chqTodosClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If chqTodos.Checked Then
   Begin
      dblcTDiario.Enabled := False;
    //dblcTDiario.Visible := False;
    //edtTDiario.Visible  := False;
   End
   Else
   Begin
      If Not chqTodos.Checked Then
      Begin
      //dblcTDiario.Visible := True;
         dblcTDiario.Enabled := True;
         dblcTDiario.Text := '';
      //edtTDiario.Visible  := True;
         edtTDiario.Text := '';
      End;
   End;

   If chqTodos.Checked Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (((DOC_FREG=''P'' OR DOC_FREG=''F'') ' +
         ' OR (DOCTIPREG=''NC'')) ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DM1.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';

      DM1.cdsQry2.IndexFieldNames;
      DM1.cdsQry2.Filter := '';
      DM1.cdsQry2.Filtered := False;
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      sTDiarios := '';
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         If length(sTDiarios) = 0 Then
            sTDiarios := 'IN(' + '''' + DM1.cdsQry2.fieldbyname('DIARIO').AsString + ''
         Else
            sTDiarios := sTDiarios + ''' ,' + '''' + DM1.cdsQry2.fieldbyname('DIARIO').AsString + '';

         DM1.cdsQry2.Next;
         If DM1.cdsQry2.Eof Then
            sTDiarios := sTDiarios + ''') ';

      End;
   End;
End;

Procedure TFLetrasPendientes.chqTodosExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If sTDiarios = '' Then
   Begin
      If chqTodos.Checked Then
      Begin
         dblcTDiario.Enabled := False;
      //dblcTDiario.Visible := False;
      //edtTDiario.Visible  := False;
      End
      Else
      Begin
         If Not chqTodos.Checked Then
         Begin
        //dblcTDiario.Visible := True;
            dblcTDiario.Text := '';
        //edtTDiario.Visible  := True;
            edtTDiario.Text := '';
         End;
      End;

      If chqTodos.Checked Then
      Begin
         xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
            ' FROM CXC301 ,TGE110   ' +
            ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
            ' (((DOC_FREG=''P'' OR DOC_FREG=''F'') ' +
            ' OR (DOCTIPREG=''NC'')) ' +
            ' AND DOCMOD=''CXC'')    ' +
            ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DM1.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
            ' GROUP BY CXC301.TDIARID ';

         DM1.cdsQry2.IndexFieldNames;
         DM1.cdsQry2.Filter := '';
         DM1.cdsQry2.Filtered := False;
         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(xSQL);
         DM1.cdsQry2.Open;
         sTDiarios := '';
         DM1.cdsQry2.First;
         While Not DM1.cdsQry2.Eof Do
         Begin
            If length(sTDiarios) = 0 Then
               sTDiarios := 'IN(' + '''' + DM1.cdsQry2.fieldbyname('DIARIO').AsString + ''
            Else
               sTDiarios := sTDiarios + ''' ,' + '''' + DM1.cdsQry2.fieldbyname('DIARIO').AsString + '';

            DM1.cdsQry2.Next;
            If DM1.cdsQry2.Eof Then
               sTDiarios := sTDiarios + ''') ';

         End;
      End;
   End;
End;

End.

