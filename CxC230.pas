Unit CxC230;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Mask, wwdbedit, wwdblook, StdCtrls,
   Wwdbdlg, Buttons, Db, DBClient, wwclient, Wwdatsrc, wwdbdatetimepicker,
   DBTables, wwDialog, wwidlg, variants, CXCUTIL;

Type

   TFEnvioBancos = Class(TForm)
      pnlCab: TPanel;
      pnlBotones: TPanel;
      Label1: TLabel;
      dblcdNEnvio: TwwDBLookupComboDlg;
      dblcUbicacion: TwwDBLookupCombo;
      dblcCtaCte: TwwDBLookupCombo;
      dbeUbicacion: TwwDBEdit;
      dbeCtaCte: TwwDBEdit;
      Label2: TLabel;
      Label4: TLabel;
      pnlGrid: TPanel;
      dbgLetras: TwwDBGrid;
      Label3: TLabel;
      Label7: TLabel;
      Label9: TLabel;
      bbtnOk: TBitBtn;
      bbtnCancel: TBitBtn;
      stLetras: TStaticText;
      stMtoLoc: TStaticText;
      stMtoExt: TStaticText;
      Bevel1: TBevel;
      dsDetOEnvioE: TwwDataSource;
      dbgLetrasIButton: TwwIButton;
      dbdtpFOEnvio: TwwDBDateTimePicker;
      Label5: TLabel;
      bbtnSalir: TBitBtn;
      cdsDetOEnvioE: TwwClientDataSet;
      cdsDetOEnvioECCNODOC: TStringField;
      cdsDetOEnvioECLIEID: TStringField;
      cdsDetOEnvioECLIEDES: TStringField;
      cdsDetOEnvioETMONID: TStringField;
      cdsDetOEnvioECCMTOORI: TCurrencyField;
      cdsDetOEnvioECCFVCMTO: TDateField;
      cdsDetOEnvioESITID: TStringField;
      cdsDetOEnvioESITDES: TStringField;
      cdsDetOEnvioEFGRAB: TStringField;
      cdsDetOEnvioECIAID: TStringField;
      cdsDetOEnvioD: TwwClientDataSet;
      cdsDetOEnvioDCIAID: TStringField;
      cdsDetOEnvioDCCNODOC: TStringField;
      cdsDetOEnvioDCLIEID: TStringField;
      cdsDetOEnvioDCLIEDES: TStringField;
      cdsDetOEnvioDTMONID: TStringField;
      cdsDetOEnvioDCCMTOORI: TCurrencyField;
      cdsDetOEnvioDCCFVCMTO: TDateField;
      cdsDetOEnvioDSITID: TStringField;
      cdsDetOEnvioDSITDES: TStringField;
      cdsDetOEnvioDFGRAB: TStringField;
      ldlgLetras: TwwLookupDialog;
      lblCia: TLabel;
      edtCia: TEdit;
      dblcCia: TwwDBLookupCombo;
      cdsDetOEnvioEDOCID: TStringField;
      Label6: TLabel;
      dblcSIT: TwwDBLookupCombo;
      dbeSIT: TwwDBEdit;
      Procedure bbtnOkClick(Sender: TObject);
      Procedure dbgLetrasIButtonClick(Sender: TObject);
      Procedure dblcdNEnvioExit(Sender: TObject);
      Procedure dbgLetrasKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure FormCreate(Sender: TObject);
      Procedure dblcUbicacionChange(Sender: TObject);
      Procedure dblcCtaCteChange(Sender: TObject);
      Procedure dblcCtaCteExit(Sender: TObject);
      Procedure dblcUbicacionExit(Sender: TObject);
      Procedure cdsDetOEnvioEBeforeDelete(DataSet: TDataSet);
      Procedure FormShow(Sender: TObject);
      Procedure dbdtpFOEnvioExit(Sender: TObject);
      Procedure bbtnSalirClick(Sender: TObject);
      Procedure dblcdNEnvioEnter(Sender: TObject);
      Procedure dbdtpFOEnvioChange(Sender: TObject);
      Procedure ldlgLetrasCloseDialog(Dialog: TwwLookupDlg);
      Procedure ldlgLetrasUserButton1Click(Sender: TObject;
         LookupTable: TDataSet);
      Procedure ldlgLetrasUserButton2Click(Sender: TObject;
         LookupTable: TDataSet);
      Procedure cdsDetOEnvioEAfterDelete(DataSet: TDataSet);
      Procedure dblcUbicacionEnter(Sender: TObject);
      Procedure dblcCiaChange(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
      FModo: Char;
      strTmp: String;
      cdsUbicacion,
         cdsLetrasDisp,
         cdsOEnvio,
         cdsCtaCte: TwwClientDataset;
      dsLetrasDisp: TwwDataSource;
      FModificable: Boolean;
      wModifica: Boolean;
      Procedure ValidaCab;
      Procedure ConfiguraPantalla;
      Procedure RecuperaOEnvio(xOEnvio: String);
      Procedure LlenaCabecera;
      Procedure Graba;
      Procedure GrabaCabecera;
      Procedure GrabaDetalle;
      Procedure Borra;
      Procedure CalculaMontos;
      Procedure ValidaLetras;
      Procedure ValidaRepetidos(cds: TWWClientDataset);
   Public
    { Public declarations }
      Procedure Adiciona(grid: TwwDBGrid);
      Procedure Edita;
   End;

Var
   FEnvioBancos: TFEnvioBancos;
   nMtoLoc: Double;
   nMtoExt: Double;

Implementation

Uses CxCDM, oaCC2000;

{$R *.DFM}

{ TFEnvioBancos }

Procedure TFEnvioBancos.Adiciona(grid: TwwDBGrid);
Var
   i, j: Integer;
   Campo, xCliente, xSitua: String;
   SumaSoles, SumaDolares: Double;
Begin

   SumaSoles := 0;
   SumaDolares := 0;

   FModo := 'A';
   //borrado de buffer principal
   cdsDetOEnvioE.Active := False;
   cdsDetOEnvioE.CreateDataSet;
   //borrado de buffer de borrado
   cdsDetOEnvioD.Active := False;
   cdsDetOEnvioD.CreateDataSet;

   For i := 0 To grid.SelectedList.Count - 1 Do
   Begin
      grid.datasource.dataset.GotoBookmark(grid.SelectedList.items[i]);
      cdsDetOEnvioE.Insert;
      For j := 0 To cdsDetOEnvioE.Fields.Count - 1 Do
      Begin
         Campo := cdsDetOEnvioE.Fields[J].FieldName;
         If cdsDetOEnvioE.Fields[J].Tag <> 1 Then
         Begin
            If Campo <> 'TMONID' Then
               cdsDetOEnvioE.FieldByName(CAMPO).Value := grid.Datasource.Dataset.FieldByName(CAMPO).Value
            Else
            Begin
               If grid.Datasource.Dataset.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                  cdsDetOEnvioE.FieldByName(CAMPO).Value := 'S/.'
               Else
                  cdsDetOEnvioE.FieldByName(CAMPO).Value := 'us$';

            End;
         End;

      End;
      xSitua := grid.Datasource.Dataset.FieldByName('SITID').AsString;
      cdsDetOEnvioE.FieldByName('SITDES').AsString := DMCXC.DisplayDescrip('CXC104', 'SITUADES', 'SITUAID', xSitua);
      xCliente := grid.Datasource.Dataset.FieldByName('CLIEID').AsString;
      cdsDetOEnvioE.FieldByName('CLIEDES').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'ClieId', xCliente);
      cdsDetOEnvioE.FieldByName('FGRAB').AsString := 'A';
      cdsDetOEnvioE.Post;

      If grid.Datasource.Dataset.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         SumaSoles := SumaSoles + grid.Datasource.Dataset.FieldByName('CCMTOORI').AsFloat
      Else
         SumaDolares := SumaDolares + grid.Datasource.Dataset.FieldByName('CCMTOORI').AsFloat;
   End;

   stLetras.Caption := inttostr(cdsDetOEnvioE.RecordCount) + ' ';
   stMtoLoc.Caption := floattostrf(SumaSoles, ffNumber, 15, 2) + ' ';
   stMtoExt.Caption := floattostrf(SumaDolares, ffNumber, 15, 2) + ' ';
   nMtoLoc := SumaSoles;
   nMtoExt := SumaDolares;

   BlanqueaEdits(pnlCab);
   ConfiguraPantalla;
End;

Procedure TFEnvioBancos.Edita;
Begin
   FModo := 'E';
   BlanqueaEdits(pnlCab);
   cdsDetOEnvioE.Active := False;
   cdsDetOEnvioE.CreateDataSet;
   cdsDetOEnvioD.Active := False;
   cdsDetOEnvioD.CreateDataSet;
End;

Procedure TFEnvioBancos.bbtnOkClick(Sender: TObject);
Begin
   ValidaCab;
   ValidaLetras;
   If FModo = 'A' Then //Caso de Adición
   Begin
      If cdsDetOEnvioE.RecordCount = 0 Then
         Raise Exception.Create('No Hay Letras por Asignar a esta Orden de Envio')
      Else
      Begin
         Graba;
         FModo := 'E';
      End;
   End
   Else
   Begin //Caso de Edición
      If cdsDetOEnvioE.RecordCount = 0 Then
      Begin
         If MessageDlg('Confirme Borrado de Orden de Envio', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Borra //procedimiento para borrar la orden de envío
         Else
            Exit;
      End
      Else
      Begin
         If (cdsDetOEnvioE.ChangeCount >= 1) Or (wModifica) Then
            Graba;
      End
   End;
End;

Procedure TFEnvioBancos.ValidaCab;
Begin
   If trim(dblcUbicacion.Text) = '' Then
   Begin
      dblcUbicacion.SetFocus;
      Raise Exception.Create('Ingrese Ubicación');
   End;

   If trim(dblcCtaCte.Text) = '' Then
   Begin
      dblcCtaCte.SetFocus;
      Raise Exception.Create('Ingrese Cta. Cte.');
   End;
End;

Procedure TFEnvioBancos.dbgLetrasIButtonClick(Sender: TObject);
Begin

   dbgLetras.SetFocus;

   If Not dbgletras.Focused Then
      Exit;

   If Not cdsLetrasDisp.Active Then
   Begin
      cdsLetrasDisp.Active := True;
   End;
   ldlgLetras.Execute;

End;

Procedure TFEnvioBancos.dblcdNEnvioExit(Sender: TObject);
Var
   Tmp: String;
Begin

   If Trim(dblcdNEnvio.Text) = '' Then
   Begin
      Tmp := StrTmp;
      ShowMessage('Ingrese Orden');
      dblcdNEnvio.SetFocus;
      StrTmp := Tmp;
      Exit;
   End;

   dblcdNEnvio.Text := StrZero(dblcdNEnvio.Text, 6);

   If strTmp <> dblcdNEnvio.Text Then
   Begin
     //Validar el Cambio de orden de envío
      If trim(strTmp) <> '' Then
      Begin
         If (cdsDetOEnvioE.ChangeCount >= 1) Or wmodifica Then
         Begin
            If MessageDlg('Desea Grabar los Cambios' + #13 +
               'a la Orden :' + strTmp, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               Try
                  Tmp := StrTmp;
                  bbtnOkClick(Nil);
               Except
                  StrTmp := Tmp;
                  Raise;
               End;
            End;
         End;
      End;
     //verificar la existencia la orden de envio
      If RecuperarDatos('CXC306', '*', 'OENUM=''' + dblcdNEnvio.Text + '''') Then
      Begin
         If Not DMCXC.cdsRec.FieldByName('OEFMTBCO').isNUll Then
         Begin
            If trim(DMCXC.cdsRec.FieldByName('OEFMTBCO').AsString) <> '' Then
            Begin
               FModificable := False;
            End
            Else
            Begin
               FModificable := True;
            End;
         End
         Else
         Begin
            FModificable := True;
         End;
        //LLenado de Datos
         LlenaCabecera;
         RecuperaOEnvio(dblcdNEnvio.Text);
        //fin de llenado de datos
         ConfiguraPantalla;
         dblcSIT.Enabled := False;
         dbeSIT.Enabled := False;
         dblcCtaCteExit(Sender);
      End
      Else
      Begin
         Tmp := StrTmp;
         ShowMessage('La Orden digitada No Existe');
         dblcdNEnvio.SetFocus;
         StrTmp := Tmp;
      End;
   End;

End;

Procedure TFEnvioBancos.dbgLetrasKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin

   If (dbgLetrasIButton.Enabled = True) And (key = VK_DELETE) And (ssCtrl In Shift) Then
   Begin

      If (cdsdetOEnvioE.RecordCount = 0) Then
         ShowMessage('No hay registros')
      Else
      Begin
         If MessageDlg('¿Eliminar Registro?', mtconfirmation, [mbYes, mbNo], 0) = mrYes Then
            cdsdetOEnvioE.Delete; // Borro en el original..
      End;
   End;

End;

Procedure TFEnvioBancos.FormCreate(Sender: TObject);
Var
   xSQL: String;
Begin

   cdsCtaCte := TwwClientDataset.Create(self);
   cdsCtaCte.Name := 'cdsCtaCte';
   cdsCtaCte.RemoteServer := DMCXC.DCOM1;
   cdsCtaCte.providerName := DMCXC.cdsWMC.ProviderName;
   cdsCtaCte.CommandText := 'SELECT * FROM CXC401';
   cdsCtaCte.Active := True;
   dblcCtaCte.LookupTable := cdsCtaCte;

   cdsUbicacion := TwwClientDataset.Create(self);
   cdsUbicacion.Name := 'cdsUbicacion';
   cdsUbicacion.RemoteServer := DMCXC.DCOM1;
   cdsUbicacion.providerName := DMCXC.cdsWMC.ProviderName;
   cdsUbicacion.CommandText := 'SELECT * FROM CXC105 WHERE BANCO=''S''';
   cdsUbicacion.Active := True;
   dblcUbicacion.LookupTable := cdsUbicacion;

   cdsLetrasDisp := TwwClientDataset.Create(self);
   cdsLetrasDisp.Name := 'cdsLetrasDisp';
   cdsLetrasDisp.RemoteServer := DMCXC.DCOM1;
   cdsLetrasDisp.providerName := DMCXC.cdsWMC.ProviderName;
   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := 'SELECT TGE204.CLIEDES, CXC301.CLIEID, CXC301.TMONID, TGE103.TMONABR, '
         + 'CXC301.CCMTOORI, CXC301.CCNODOC,CXC301.CIAID,  CXC301.CCFVCMTO, '
         + 'CXC301.SITID, COALESCE(CXC104.SITUADES,'''') SITDES, CXC301.CCOENV '
         + 'FROM CXC301 '
         + 'LEFT JOIN TGE204  ON  (CXC301.CLIEID=TGE204.CLIEID) '
         + 'LEFT JOIN CXC104  ON  (CXC301.SITID =CXC104.SITUAID) '
         + 'INNER JOIN TGE103 ON  (CXC301.TMONID=TGE103.TMONID) '
         + 'WHERE COALESCE(CXC301.CCOENV,'''')= '''' and '
         + xSelDoc + ' '
//       +      'CXC301.DOCID = ''' + DMCXC.wIdLetras + ''' '
      + 'ORDER BY CXC301.CCNODOC';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := 'SELECT TGE204.CLIEDES, CXC301.CLIEID, CXC301.TMONID, TGE103.TMONABR, '
            + 'CXC301.CCMTOORI, CXC301.CCNODOC,CXC301.CIAID,  CXC301.CCFVCMTO, '
            + 'CXC301.SITID, COALESCE(CXC104.SITUADES,'''') SITDES, CXC301.CCOENV '
            + 'FROM CXC301,TGE204,CXC104,TGE103 '
            + ' WHERE (CXC301.CLIEID=TGE204.CLIEID(+)) '
            + ' AND  (CXC301.SITID =CXC104.SITUAID(+)) '
            + ' AND  (CXC301.TMONID=TGE103.TMONID) '
            + ' AND NVL(CXC301.CCOENV,'''')= '''' and '
            + xSelDoc + ' '
  //       +      'CXC301.DOCID = ''' + DMCXC.wIdLetras + ''' '
         + 'ORDER BY CXC301.CCNODOC';
      End;
   cdsLetrasDisp.CommandText := xSQL;

   LdlgLetras.LookupTable := cdsLetrasDisp;

   cdsOEnvio := TwwClientDataset.Create(self);
   cdsOEnvio.Name := 'cdsOEnvio';
   cdsOEnvio.RemoteServer := DMCXC.DCOM1;
   cdsOEnvio.providerName := DMCXC.cdsWMC.ProviderName;
   cdsOEnvio.CommandText := ' SELECT CXC306.OENUM, CXC306.OEFECHA,CXC306.UBICAID, CXC306.CCBCOID, ' +
      '        CXC105.UBICAABR,CXC306.OEMTOLOC, CXC306.OEMTOEXT,            ' +
      '        CXC306.OEFMTBCO, CXC306.OENUMLETRAS ,CXC401.CCBCOABR         ' +
      ' FROM CXC306 , CXC401 , CXC105                                       ' +
      ' WHERE  (CXC306.UBICAID = CXC105.UBICAID)                            ' +
      '    AND  (CXC306.UBICAID = CXC401.BANCOID)                           ' +
      '    AND  (CXC306.CCBCOID = CXC401.CCBCOID)                           ' +
      ' ORDER BY CXC306.OENUM                                               ';
   cdsOEnvio.IndexFieldNames := 'OENUM';
   cdsOEnvio.Active := True;
   dblcdNEnvio.LookupTable := cdsOEnvio;

   wModifica := False;
End;

Procedure TFEnvioBancos.ConfiguraPantalla;
Begin
//    BlanqueaEdits( pnlCab ) ;
   If FModo = 'A' Then
   Begin
      dblcdNEnvio.Text := 'Nuevo';
      dblcdNEnvio.Enabled := False;
      dblcCtaCte.Enabled := False;
      bbtnOk.Enabled := True;
      bbtnCancel.Enabled := False;
      dbgLetrasIButton.Enabled := True;
   End
   Else
   Begin
      If FModificable Then
      Begin
         CXCUtil.HabilitaEdits(pnlCab, True);
         If DMCXC.cdscia.RecordCount = 1 Then
         Begin
            dblcCia.Enabled := False;
         End;
         edtCia.Enabled := FALSE;
         dbeUbicacion.Enabled := FALSE;
         dbeCtaCte.Enabled := FALSE;
         bbtnOk.Enabled := TRUE;
         bbtnCancel.Enabled := TRUE;
         dbgLetrasIButton.Enabled := TRUE;
      End
      Else
      Begin
         CXCUtil.HabilitaEdits(pnlCab, False);
         bbtnOk.Enabled := False;
         bbtnCancel.Enabled := False;
         dbgLetrasIButton.Enabled := False;
      End;
      dblcdNEnvio.Enabled := True;
   End;
End;

Procedure TFEnvioBancos.dblcUbicacionChange(Sender: TObject);
Begin
   If Not TCustomEdit(Sender).focused Then
      Exit;
   EncuentraDescripcion(dblcUbicacion, dbeUbicacion);
   dblcCtaCte.Enabled := True;
   wModifica := True;

End;

Procedure TFEnvioBancos.dblcCtaCteChange(Sender: TObject);
Begin
   If Not TCustomEdit(Sender).focused Then
      Exit;
   EncuentraDescCampos(dblcCtaCte, dbeCtaCte, dblcUbicacion.Text);
   wModifica := True;
End;

Procedure TFEnvioBancos.dblcCtaCteExit(Sender: TObject);
Var
   xWhere: String;
   xTipo: String;
Begin
   xWhere := 'CCBCOID=''' + dblcCtaCte.Text + ''' and BANCOID=''' + dblcUbicacion.Text + '''';
   xTipo := DMCXC.BuscaQry('dspTGE', 'CXC401', '*', xWhere, 'CCBTIPO');
   xWhere := 'SITUAFLAG=''A' + xTipo + '''';
   dblcSIT.Text := DMCXC.BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');
   dbeSIT.Text := DMCXC.cdsQry.FieldByName('SITUAABR').AsString;
End;

Procedure TFEnvioBancos.dblcUbicacionExit(Sender: TObject);
Var
   Tmp: String;
Begin
   Tmp := strTmp;
   xxExit(dblcUbicacion, dbeUbicacion, [], 'Ubicación', 'A');
   StrTmp := Tmp;
   If trim(dblcUbicacion.text) = '' Then
      Exit;
   If (strTmp = '') Or (strTmp <> dblcUbicacion.text) Then
   Begin
      dblcCtaCte.Text := '';
      dbeCtaCte.Text := '';
      cdsCtaCte.Filter := 'BANCOID = ''' + dblcUbicacion.Text + '''';
      cdsCtaCte.Filtered := True;
   End;
End;

Procedure TFEnvioBancos.cdsDetOEnvioEBeforeDelete(DataSet: TDataSet);
Var
   J: Integer;
   Campo: String;
Begin
   cdsDetOEnvioD.Insert;
   For J := 0 To Dataset.Fields.Count - 1 Do
   Begin
      Campo := cdsDetOEnvioE.Fields[J].FieldName;
      cdsDetOEnvioD.FieldByName(CAMPO).Value := Dataset.FieldByName(CAMPO).Value;
   End;
   cdsDetOEnvioD.Post;
End;

Procedure TFEnvioBancos.FormShow(Sender: TObject);
Begin
   dbdtpFOEnvio.Date := Date;
   RecuperarCiaUnica(dblcCia, edtCia);
End;

Procedure TFEnvioBancos.dbdtpFOEnvioExit(Sender: TObject);
Begin
   If dbdtpFOEnvio.Date = 0 Then
   Begin
      dbdtpFOEnvio.SetFocus;
      ShowMessage('Ingrese Fecha de Orden');
      Exit;
   End;
   If dbdtpFOEnvio.Date < Date Then
   Begin
      dbdtpFOEnvio.SetFocus;
      Raise Exception.Create('Fecha debe ser Mayor o Igual a ' + DateToStr(Date));
   End;
End;

Procedure TFEnvioBancos.bbtnSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFEnvioBancos.RecuperaOEnvio(xOEnvio: String);
Var
   xWhere,
      Campo, xCliente, xSitua: String;
   J: Integer;
   SumaSoles, SumaDolares: Double;
Begin
   xWhere := 'CCOENV = ''' + xOEnvio + '''';
   If CXCUtil.RecuperarDatos('CXC301', '*', xWhere) Then
   Begin
      //borrado de buffer principal
      cdsDetOEnvioE.Active := False;
      cdsDetOEnvioE.CreateDataSet;
      //borrado de buffer de borrado
      cdsDetOEnvioD.Active := False;
      cdsDetOEnvioD.CreateDataSet;

      cdsDetOEnvioE.DisableControls;
      DMCXC.cdsRec.First;
      While Not DMCXC.cdsRec.Eof Do
      Begin
         cdsDetOEnvioE.Insert;
         For J := 0 To cdsDetOEnvioE.Fields.Count - 1 Do
         Begin
            Campo := cdsDetOEnvioE.Fields[J].FieldName;

            If cdsDetOEnvioE.Fields[J].Tag <> 1 Then
            Begin
               If Campo <> 'TMONID' Then
                  cdsDetOEnvioE.FieldByName(CAMPO).Value := DMCXC.cdsRec.FieldByName(CAMPO).Value
               Else
               Begin
                  If DMCXC.cdsRec.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                     cdsDetOEnvioE.FieldByName(CAMPO).Value := 'S/.'
                  Else
                     cdsDetOEnvioE.FieldByName(CAMPO).Value := 'us$';

               End;
            End;

         End;

         xSitua := DMCXC.cdsRec.FieldByName('SITID').Value;
         cdsDetOEnvioE.FieldByName('SITDES').AsString := DMCXC.DisplayDescrip('CXC104', 'SITUADES', 'SITUAID', xSitua);
         xCliente := DMCXC.cdsRec.FieldByName('CLIEID').Value;
         cdsDetOEnvioE.FieldByName('CLIEDES').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'ClieId', xCliente);
         cdsDetOEnvioE.FieldByName('FGRAB').AsString := 'E';

         If DMCXC.cdsRec.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            SumaSoles := SumaSoles + DMCXC.cdsRec.FieldByName('CCMTOORI').AsFloat
         Else
            SumaDolares := SumaDolares + DMCXC.cdsRec.FieldByName('CCMTOORI').AsFloat;

         cdsDetOEnvioE.Post;
         DMCXC.cdsRec.Next;
      End;

      stLetras.Caption := IntToStr(cdsDetOEnvioE.RecordCount) + ' ';
      stMtoLoc.Caption := floattostrf(SumaSoles, ffNumber, 15, 2) + ' ';
      stMtoExt.Caption := floattostrf(SumaDolares, ffNumber, 15, 2) + ' ';
      nMtoLoc := SumaSoles;
      nMtoExt := SumaDolares;

      cdsDetOEnvioE.First;
      cdsDetOEnvioE.EnableControls;
      cdsDetOEnvioE.MergeChangeLog;

   End
   Else
   Begin
      ShowMessage('Error : No se pudo recuperar las letras');
   End;
End;

Procedure TFEnvioBancos.LlenaCabecera;
Begin
   dbdtpFOEnvio.Date := DMCXC.cdsRec.FieldByName('OEFECHA').AsDateTime;
   dblcUbicacion.text := DMCXC.cdsRec.FieldByName('UBICAID').AsString;
   dblcCtacTe.Text := DMCXC.cdsRec.FieldByName('CCBCOID').AsString;
   If cdsUbicacion.Locate('UBICAID', VarArrayOf([dblcUbicacion.text]), []) Then
      dbeUbicacion.Text := cdsUbicacion.FieldByName('UBICAABR').AsString
   Else
   Begin
      ShowMessage('Error Ubicación : WMC');
   End;
   cdsCTaCte.Filter := 'BANCOID = ''' + dblcUbicacion.Text + ''' ';
   cdsCtaCte.Filtered := True;
   If cdsCtaCte.Locate('BANCOID;CCBCOID', VarArrayOf([dblcUbicacion.text, dblcCtaCte.text]), []) Then
      dbeCtacte.Text := cdsCtaCte.FieldByName('CCBCOABR').AsString
   Else
   Begin
      ShowMessage('Error Cta Cte : WMC');
   End;
   wModifica := False;
End;

Procedure TFEnvioBancos.dblcdNEnvioEnter(Sender: TObject);
Begin
   strTmp := dblcdNEnvio.Text;
End;

Procedure TFEnvioBancos.Borra;
Begin
   //Borrar
   DMCXC.cdsGrab.Active := False;
   DMCXC.cdsGrab.CommandText :=
      ' SELECT * FROM CXC301 WHERE CIAID = ''01'' AND CCOENV = ''' + dblcdNenvio.Text + ''' ';
   DMCXC.cdsGrab.Active := True;
   DMCXC.cdsGrab.First;
   While Not DMCXC.cdsGrab.Eof Do
   Begin
      DMCXC.cdsGrab.edit;
      DMCXC.cdsGrab.FieldByName('CCOENV').Clear;
      DMCXC.cdsGrab.Post;
      DMCXC.cdsGrab.Next;
   End;
   If DMCXC.cdsGrab.ApplyUpdates(0) <> 0 Then
   Begin
      ShowMessage('Error borrado del detalle');
   End;

   DMCXC.cdsGrab.Active := False;
   DMCXC.cdsGrab.CommandText :=
      ' SELECT * FROM CXC306 WHERE CIAID = ''01'' AND OENUM = ''' + dblcdNenvio.Text + ''' ';
   DMCXC.cdsGrab.Active := True;
   DMCXC.cdsGrab.delete;
   If DMCXC.cdsGrab.ApplyUpdates(0) <> 0 Then
   Begin
      ShowMessage('Error borrado de la cabecera');
   End;

End;

Procedure TFEnvioBancos.Graba;
Begin
   GrabaCabecera;
   GrabaDetalle;
   wModifica := False;
   FModo := 'E';
End;

Procedure TFEnvioBancos.dbdtpFOEnvioChange(Sender: TObject);
Begin
   wModifica := True;
End;

Procedure TFEnvioBancos.GrabaCabecera;
Var
   NuevoNum: String;
Begin
   With DMCXC.cdsGrab Do
   Begin
      If FModo = 'A' Then
      Begin
       //Graba Cabecera
         NuevoNum := StrZero('1', 6);
         RecuperarDatos('CXC306', 'MAX(OENUM) OENUM', '');
         If (DMCXC.cdsRec.RecordCount <> 0) And Not (DMCXC.cdsRec.FieldByName('OENUM').Isnull) Then
         Begin
            NuevoNum := StrZero(inttostr((DMCXC.cdsrec.FieldByName('OENUM').AsInteger + 1)), 6);
         End;
         active := False;
         CommandText := 'SELECT * FROM CXC306 WHERE CIAID = ''''';
         active := True;
         dblcdNEnvio.Text := NuevoNum;
         Insert;
         FieldByName('OENUM').AsString := dblcdNEnvio.Text;
         FieldByName('UBICAID').AsString := dblcUbicacion.Text;
         FieldByName('SITUAID').AsString := dblcSIT.Text;
         FieldByName('CCBCOID').AsString := dblcCtaCte.Text;
         FieldByName('OEFECHA').AsDateTime := dbdtpFOEnvio.Date;
         FieldByName('OEMTOLOC').AsFloat := nMtoLoc;
         FieldByName('OEMTOEXT').AsFloat := nMtoExt;
         FieldByName('OENUMLETRAS').AsInteger := cdsDetOenvioE.RecordCount;
         FieldBYName('CIAID').AsString := dblcCia.text;
         Post;
         ApplyUpdates(0);
      End
      Else
      Begin
       //Actualiza Cabecera ante Posibles Cambios
         If wModifica Then
         Begin
            active := False;
            CommandText := 'SELECT * FROM CXC306 '
               + 'WHERE  CIAID=''' + dblcCia.Text + ''' and '
               + 'OENUM=''' + dblcdNEnvio.Text + ''' ';
            active := True;
            If Recordcount <> 1 Then
               ShowMessage('Error para WMC en actualización de Cabecera');
            Edit;
            FieldByName('UBICAID').AsString := dblcUbicacion.Text;
            FieldByName('SITUAID').AsString := dblcSIT.Text;
            FieldByName('CCBCOID').AsString := dblcCtaCte.Text;
            FieldByName('OEFECHA').AsDateTime := dbdtpFOEnvio.Date;
            FieldByName('OEMTOLOC').AsFloat := nMtoLoc;
            FieldByName('OEMTOEXT').AsFloat := nMtoExt;
            FieldByName('OENUMLETRAS').AsInteger := cdsDetOenvioE.RecordCount;
            Post;
            ApplyUpdates(0);
         End;
      End;
   End;
End;

Procedure TFEnvioBancos.GrabaDetalle;
Begin
   With cdsDetOEnvioE Do
   Begin
      If FModo = 'A' Then
      Begin
         cdsDetOEnvioE.First;
         While Not Eof Do
         Begin
            DMCXC.cdsGrab.Active := False;
            DMCXC.cdsGrab.CommandText :=
               'SELECT * FROM CXC301 '
               + 'WHERE CIAID= ''' + dblcCia.Text + ''' AND '
               + ' CCNODOC=''' + FieldBYName('CCNODOC').AsString + ''' AND '
               + ' DOCID= ''' + FieldBYName('DOCID').AsString + ''' ';
            DMCXC.cdsGrab.Active := True;
            DMCXC.cdsGrab.edit;
            DMCXC.cdsGrab.FieldByName('CCOENV').AsString := dblcdNenvio.Text;
//            DMCXC.cdsGrab.FieldByName('UBIID').AsString  := dblcUbicacion.Text ;
//            DMCXC.cdsGrab.FieldByName('SITID').AsString  := dblcSIT.Text ;
            DMCXC.cdsGrab.FieldByName('CCFREG').Value := DATE;
            DMCXC.cdsGrab.FieldByName('CCHREG').Value := TIME;
//            DMCXC.cdsGrab.FieldByName('CCFSITUA').Value  := dbdtpFOEnvio.Date;
            DMCXC.cdsGrab.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
            DMCXC.cdsGrab.Post;
            DMCXC.cdsGrab.ApplyUpdates(0);
            Next;
         End;
      End
      Else
      Begin
         //Validar Borrados
         //Borrar
         DMCXC.cdsGrab.Active := False;
         DMCXC.cdsGrab.CommandText := 'SELECT * FROM CXC301 WHERE CIAID=''01'' '
            + ' AND CCOENV=''' + dblcdNenvio.Text + ''' ';
         DMCXC.cdsGrab.Active := True;
         DMCXC.cdsGrab.First;
         While Not DMCXC.cdsGrab.Eof Do
         Begin
            DMCXC.cdsGrab.edit;
            DMCXC.cdsGrab.FieldByName('CCOENV').Clear;
//            DMCXC.cdsGrab.FieldByName('UBIID').Clear  ;
//            DMCXC.cdsGrab.FieldByName('SITID').Clear ;
            DMCXC.cdsGrab.Post;
            DMCXC.cdsGrab.Next;
         End;
         If DMCXC.cdsGrab.ApplyUpdates(0) <> 0 Then
         Begin
            ShowMessage('Error borrado del detalle');
         End;

         //Añadir
         cdsDetOEnvioE.First;
         While Not Eof Do
         Begin

            DMCXC.cdsGrab.Active := False;
            DMCXC.cdsGrab.CommandText :=
               'SELECT * FROM CXC301 '
               + 'WHERE CIAID = ''' + dblcCia.Text + ''' AND '
               + ' CCNODOC =''' + FieldBYName('CCNODOC').AsString + ''' AND '
               + ' DOCID = ''' + FieldBYName('DOCID').AsString + ''' ';

            DMCXC.cdsGrab.Active := True;
            If DMCXC.cdsGrab.RecordCount = 0 Then
            Begin
               ShowMessage(DMCXC.cdsGrab.CommandText);
            End;
            DMCXC.cdsGrab.edit;
            DMCXC.cdsGrab.FieldByName('CCOENV').AsString := dblcdNenvio.Text;
//            DMCXC.cdsGrab.FieldByName('UBIID').AsString  := dblcUbicacion.Text ;
//            DMCXC.cdsGrab.FieldByName('SITID').AsString  := dblcSIT.Text ;
            DMCXC.cdsGrab.FieldByName('CCFREG').Value := DATE;
            DMCXC.cdsGrab.FieldByName('CCHREG').Value := TIME;
//            DMCXC.cdsGrab.FieldByName('CCFSITUA').Value  := dbdtpFOEnvio.Date;
            DMCXC.cdsGrab.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
            DMCXC.cdsGrab.Post;
            DMCXC.cdsGrab.ApplyUpdates(0);

            Next;
         End;

      End;
   End;
   //Sincronizar Clientdatasets
   cdsDetOEnvioE.MergeChangeLog;
   cdsDetOEnvioD.Active := False;
   cdsDetOEnvioD.CreateDataSet;
   //fin de sincronizaciones
End;

Procedure TFEnvioBancos.ldlgLetrasCloseDialog(Dialog: TwwLookupDlg);
Var
   J: Integer;
   Campo: String;
Begin
   If (dialog.ModalResult = mrOk) Then
   Begin
      If (Dialog.DataSource1.DataSet.RecordCount <> 0) Then
      Begin
         ValidaRepetidos(twwClientdataset(Dialog.DataSource1.DataSet));
         cdsDetOEnvioE.Insert;
         For j := 0 To cdsDetOEnvioE.Fields.Count - 1 Do
         Begin
            Campo := cdsDetOEnvioE.Fields[J].FieldName;
            If cdsDetOEnvioE.Fields[J].Tag <> 1 Then
               cdsDetOEnvioE.FieldByName(CAMPO).Value := dialog.DataSource1.Dataset.FieldByName(CAMPO).Value;
         End;
         cdsDetOEnvioE.FieldByName('FGRAB').AsString := 'A';
         cdsDetOEnvioE.Post;
      End
      Else
      Begin
         ShowMessage('No Hay Movimientos por Extornar');
      End;
   End;
End;

Procedure TFEnvioBancos.ldlgLetrasUserButton1Click(Sender: TObject;
   LookupTable: TDataSet);
Begin
   (Sender As TForm).ModalResult := mrOK;
End;

Procedure TFEnvioBancos.ldlgLetrasUserButton2Click(Sender: TObject;
   LookupTable: TDataSet);
Begin
   (Sender As TForm).ModalResult := mrCancel;
End;

Procedure TFEnvioBancos.cdsDetOEnvioEAfterDelete(DataSet: TDataSet);
Begin
   If Dataset.RecordCount = 0 Then
   Begin
      stLetras.Caption := '0 ';
      stMtoLoc.Caption := '0.00 ';
      stMtoExt.Caption := '0.00 ';
   End
   Else
   Begin
      CalculaMontos;
   End;
End;

Procedure TFEnvioBancos.CalculaMontos;
Var
   SumaSol, SumaDol: Double;
Begin
   SumaSol := OperClientDataSet(cdsDetOEnvioE, 'SUM(CCMTOORI)', 'TMONID=''' + DMCXC.wTMonLoc + ''' ');
   SumaDol := OperClientDataSet(cdsDetOEnvioE, 'SUM(CCMTOORI)', 'TMONID=''' + DMCXC.wTMonExt + ''' ');

   stLetras.Caption := IntToStr(cdsDetOEnvioE.RecordCount) + ' ';
   stMtoLoc.Caption := floattostrf(SumaSol, ffNumber, 15, 2) + ' ';
   stMtoExt.Caption := floattostrf(SumaDol, ffNumber, 15, 2) + ' ';
   nMtoLoc := SumaSol;
   nMtoExt := SumaDol;
End;

Procedure TFEnvioBancos.dblcUbicacionEnter(Sender: TObject);
Begin
   strTMP := dblcUbicacion.Text;
End;

Procedure TFEnvioBancos.dblcCiaChange(Sender: TObject);
Begin
   EncuentraDescripcion(DBLCCIA, EDTCIA);
End;

Procedure TFEnvioBancos.dblcCiaExit(Sender: TObject);
Begin
   xxExit(dblcCia, edtCia, [], 'Compañía');
End;

Procedure TFEnvioBancos.ValidaLetras;
Begin
   If cdsCtaCte.Locate('BANCOID;CCBCOID', varArrayOf([dblcUbicacion.text, dblcCtaCte.text]), []) Then
   Begin
      If Not cdsCtaCte.FieldByName('LETRASXFMT').IsNull Then
      Begin
         If cdsCtaCte.FieldByName('LETRASXFMT').AsInteger > 0 Then
         Begin
            If cdsDetOEnvioE.RecordCount > cdsCtaCte.FieldByName('LETRASXFMT').AsInteger Then
            Begin
               Raise Exception.Create('Esta Orden tiene ' + inttostr(cdsDetOEnvioE.RecordCount) + ' Letras' + #13 +
                  'Pero El Formato de Bancos de esta Cta Cte ' + #13 +
                  'Solo permite ' + cdsCtaCte.FieldByName('LETRASXFMT').AsString + 'Letras');
            End;
         End;
      End;
   End
   Else
   Begin
      ShowMessage('Error : No se encuentran datos de Cta. Cte.');
   End;
End;

Procedure TFEnvioBancos.ValidaRepetidos(cds: TWWClientDataset);
Var
   bmk: Tbookmark;
Begin
   cdsDetOEnvioE.DisableControls;
   bmk := cdsDetOEnvioE.GetBookmark;
   Try
      If cdsDetOEnvioE.Locate('CIAID;CCNODOC',
         VarArrayOf([cds.FieldByName('CIAID').AsString,
         cds.FieldByName('CCNODOC').AsString]), []) Then
      Begin
         Raise Exception.Create('Esta Letra Ya Se Encuentra en la Orden de Envío');
      End;
   Finally
      cdsDetOEnvioE.GotoBookmark(bmk);
      cdsDetOEnvioE.FreeBookmark(bmk);
      cdsDetOEnvioE.EnableControls;
   End;
End;

Procedure TFEnvioBancos.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

End.

