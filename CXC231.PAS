
Unit CxC231;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, Buttons, CXCUTIL;

Type
   TFRenoLetras = Class(TForm)
      dbdtpFEmis: TwwDBDateTimePicker;
      dbdtpFVcmto: TwwDBDateTimePicker;
      dbdtpFEmis2: TwwDBDateTimePicker;
      dbdtpFVcmto2: TwwDBDateTimePicker;
      dbeImporte: TwwDBEdit;
      GroupBox3: TGroupBox;
      dbeLetra: TwwDBEdit;
      dbeClieid: TwwDBEdit;
      dbeCliente: TwwDBEdit;
      dbeUbiID: TwwDBEdit;
      dbeUBIDes: TwwDBEdit;
      dbeSitId: TwwDBEdit;
      dbeSitDes: TwwDBEdit;
      dbeRenova: TwwDBEdit;
      dbeTMONDES: TwwDBEdit;
      dbeTMOn: TwwDBEdit;
      dbeIMporte2: TwwDBEdit;
      dbeTMOnDes2: TwwDBEdit;
      dbeTMon2: TwwDBEdit;
      rgCodRenovacion: TRadioGroup;
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      bbtnOk: TBitBtn;
      bbtnCancel: TBitBtn;
      Bevel1: TBevel;
      dbeTCamb: TwwDBEdit;
      dbeTCamb2: TwwDBEdit;
      Procedure bbtnOkClick(Sender: TObject);
      Procedure dbdtpFEmis2Exit(Sender: TObject);
      Procedure dbeIMporte2Exit(Sender: TObject);
      Procedure dbeIMporte2KeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeTCamb2Exit(Sender: TObject);
      Procedure bbtnCancelClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
      strTmp: String;
      xCIAID: String;
      Procedure Valida;
      Procedure GrabaHistorico;
   Public
    { Public declarations }
      Procedure RecibeDatos(xCIAID, xDOCID, xCCNODOC: String);
   End;

Var
   FRenoLetras: TFRenoLetras;

Implementation

Uses CxCDM, CxC001;

{$R *.DFM}

{ TFRenoLetras }

Procedure TFRenoLetras.RecibeDatos(xCIAID, xDOCID, xCCNODOC: String);
Var
   xSQL,
      xWhere: String;
Begin

   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
   Begin
      xSQL := 'SELECT CXC301.*,CNT201.AUXABR,TGE103.TMONABR,CXC104.SITUADES,CXC105.UBICAABR ' +
         'FROM CXC301                                                                 ' +
         'LEFT JOIN CNT201 ON (CXC301.CLAUXID = CNT201.CLAUXID                        ' +
         '                       AND CXC301.CLIEID = CNT201.AUXID)                      ' +
         'LEFT JOIN CXC105 ON (CXC301.UBIID = CXC105.UBICAID)                         ' +
         'LEFT JOIN CXC104 ON (CXC301.SITID = CXC104.SITUAID)                         ' +
         'LEFT JOIN TGE103 ON (CXC301.TMONID = TGE103.TMONID)                         ';

      xWhere := 'WHERE ' + FPrincipal.xSelDoc + ' AND CIAID=''' + xCIAID + ''' AND DOCID=''' + xDOCID + ''' AND '
         + 'CCNODOC=''' + xCCNODOC + '''';
   End
   Else
      If (DM1.SRV_D = 'ORACLE') Then
      Begin
         xSQL := 'SELECT CXC301.*,CNT201.AUXABR,TGE103.TMONABR,CXC104.SITUADES,CXC105.UBICAABR ' +
            'FROM CXC301,CNT201,CXC105,CXC104,TGE103                                     ';
         xWhere := 'WHERE ' + FPrincipal.xSelDoc + ' AND CIAID=''' + xCIAID + ''' AND DOCID=''' + xDOCID + ''' AND '
            + 'CCNODOC=''' + xCCNODOC + '''' +
            ' AND (CXC301.CLAUXID = CNT201.CLAUXID(+)                                     ' +
            ' AND CXC301.CLIEID = CNT201.AUXID(+))                                        ' +
            ' AND (CXC301.UBIID = CXC105.UBICAID(+))                                      ' +
            ' AND (CXC301.SITID = CXC104.SITUAID(+))                                      ' +
            ' AND (CXC301.TMONID = TGE103.TMONID(+))                                      ';
      End;

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL + xWhere);
   DM1.cdsQry3.Open;

{  dm1.cdsWMC.Active := False;
  dm1.cdsWMC.CommandText:= xSQL+xWhere;
  dm1.cdsWMC.Active := True;
 }
{  dbdtpFEmis.Date       :=  dm1.cdsWMC.fieldbyName('CCFEMIS').AsDateTime ;
  dbdtpFVcmto.Date      :=  dm1.cdsWMC.fieldbyName('CCFVCMTO').AsDateTime ;
  dbeImporte.Text       :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('CCMTOORI'))  ;
  dbeLetra.Text         :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('CCNODOC'))   ;
  dbeClieid.Text        :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('CLIEID'))    ;
  dbeCliente.Text       :=  FieldNoNulo( dm1.cdsWMC.fieldbyname('AUXABR'))    ;
  dbeUbiID.Text         :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('UBIID'))     ;
  dbeUBIDes.Text        :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('UBICAABR'))   ;
  dbeSitId.Text         :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('SITID'))     ;
  dbeSitDes.Text        :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('SITUADES'))   ;

  if FieldNoNulo(dm1.cdsWMC.fieldbyname('CCNRENOVA')) = '' then
     dbeRenova.Text     :=   '0'
  else
     dbeRenova.Text     :=   FieldNoNulo(dm1.cdsWMC.fieldbyname('CCNRENOVA')) ;

  dbeTMONDES.Text       :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('TMONABR'))    ;
  dbeTMOn.Text          :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('TMONID'))    ;

  dbeIMporte2.Text      :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('CCMTOORI'))  ;
  dbeTMOnDes2.Text      :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('TMONABR'))    ;
  dbeTMon2.Text         :=  FieldNoNulo(dm1.cdsWMC.fieldbyname('TMONID'))    ;

  self.xCIAID           := xCIAID  ;}

   dbdtpFEmis.Date := DM1.cdsQry3.fieldbyName('CCFEMIS').AsDateTime;
   dbdtpFVcmto.Date := DM1.cdsQry3.fieldbyName('CCFVCMTO').AsDateTime;
   dbeImporte.Text := FloatToStr(DM1.cdsQry3.fieldbyname('CCMTOORI').AsFloat);
   dbeLetra.Text := DM1.cdsQry3.fieldbyname('CCNODOC').AsString;
   dbeClieid.Text := DM1.cdsQry3.fieldbyname('CLIEID').AsString;
   dbeCliente.Text := DM1.cdsQry3.fieldbyname('AUXABR').AsString;
   dbeUbiID.Text := DM1.cdsQry3.fieldbyname('UBIID').AsString;
   dbeUBIDes.Text := DM1.cdsQry3.fieldbyname('UBICAABR').AsString;
   dbeSitId.Text := DM1.cdsQry3.fieldbyname('SITID').AsString;
   dbeSitDes.Text := DM1.cdsQry3.fieldbyname('SITUADES').AsString;

   If (DM1.cdsQry3.fieldbyname('CCNRENOVA').AsString = '') Or (DM1.cdsQry3.fieldbyname('CCNRENOVA').IsNull) Then
      dbeRenova.Text := '0'
   Else
      dbeRenova.Text := IntToStr(DM1.cdsQry3.fieldbyname('CCNRENOVA').AsInteger);

   dbeTMONDES.Text := DM1.cdsQry3.fieldbyname('TMONABR').AsString;
   dbeTMOn.Text := DM1.cdsQry3.fieldbyname('TMONID').AsString;

   dbeIMporte2.Text := DM1.cdsQry3.fieldbyname('CCMTOORI').AsString;
   dbeTMOnDes2.Text := DM1.cdsQry3.fieldbyname('TMONABR').AsString;
   dbeTMon2.Text := DM1.cdsQry3.fieldbyname('TMONID').AsString;

   self.xCIAID := xCIAID;
End;

Procedure TFRenoLetras.bbtnOkClick(Sender: TObject);
Var
   xTAutoNum, xxNoReg, sSQL, xWhere: String;
   xTC,
      xMtoOri: Currency;
   sSitOld, sSitNew, xGarantia,
      xDescuento, xCartera: String;
   fTCambio, fSaldo: real;
   wPos, wDia, wMes, wAno: word;
   sDia, sMes, sAno: String;
   sCIA, sTDO, sCND: String;
   nNoReg: integer;
   sTemp: String;
Begin
   DecodeDate(Now, wAno, wMes, wDia);
   sAno := StrZero(IntToStr(wAno), 4);
   sMes := StrZero(IntToStr(wMes), 2);
   fSaldo := 0;

   Valida;
   xWhere := 'SITUAFLAG=''R1'''; //DESCUENTO RENOVADA 22
   xDescuento := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   xWhere := 'SITUAFLAG=''R2'''; //DESCUENTO RENOVADA 22
   xGarantia := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   xWhere := 'SITUAFLAG=''1C'''; //DESCUENTO RENOVADA 22
   xCartera := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   If rgCodRenovacion.ItemIndex = 0 Then
   Begin
      sSitNew := xGarantia;
   End
   Else
   Begin
      If rgCodRenovacion.ItemIndex = 1 Then
      Begin
         sSitNew := xDescuento;
      End
      Else
      Begin
         sSitNew := xCartera;
      End;
   End;

   sSitOld := DM1.cdsQry3.FieldByName('SITID').AsString;
   sCIA := DM1.cdsQry3.FieldByName('CIAID').AsString;
   sTDO := DM1.cdsQry3.FieldByName('DOCID').AsString;
   sCND := DM1.cdsQry3.FieldByName('CCNODOC').AsString;
   wPos := Pos('-', sCND);
   If wPos = 0 Then
      wPos := length(sCND);

   fTCambio := DM1.cdsQry3.FieldByName('CCTCAMPR').AsFloat;
   fSaldo := DM1.cdsQry3.FieldByName('CCSALORI').AsFloat;
   fSaldo := fSaldo - StrToCurr(dbeIMporte2.text);

   If Not CambioSituacion(sSitOld, sSitNew) Then
   Begin
      Raise Exception.Create('La Letra no se puede Renovar');
   End;

{   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxC.FieldByName('SITID').AsString:=sSitNew;
   DM1.cdsMovCxC.Post;}

   UpdLET(sCIA, sTDO, sCND, '', sSitNew, '', '', '', '', Date, False, '', 0, 0);

   SetHyst(sCIA, sTDO, sCND);

//   GrabaHistorico ;

   //MODIFICA LOS NUEVOS IMPORTES DE LA LETRA

   sSQL := ' UPDATE CXC301 SET ' +
      ' CCPAGORI=CCPAGORI+' + dbeIMporte2.text + ',' +
      ' CCPAGLOC=CCPAGLOC+' + dbeIMporte2.text + '*' + FloatToStr(fTCambio) + ',' +
      ' CCPAGEXT=CCPAGEXT' + dbeIMporte2.text + ',' +
      ' CCSALORI=0, ' +
      ' CCSALLOC=0, ' +
      ' CCSALEXT=0, ' +
      ' CCESTADO=''C'' ' +
      ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) + ' AND CCNODOC=' + QuotedStr(sCND);

   Try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;
   // FALTA INSERTAR EL PAGO DE LA PRIMERA LETRA PARA QUE LA CANCELE

   //INSERTA LA NUEVA LETRA

   xTAutoNum := DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', DM1.cdsQry3.FieldByName('TDIARID').AsString);
   xxNoReg := DM1.UltimoRegistro(xTAutoNum, sCIA, DM1.cdsQry3.FieldByName('TDIARID').AsString, sAno, sMes);
   xxNoReg := Strzero(xxNoReg, 10);
   nNoReg := strtoint(xxNoReg);
   BuscaFecha('TGE114', 'Fecha', dbdtpFEmis.date);

   sSQL := ' INSERT INTO CXC301 (CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, ' +
      ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,TMONID,CCTCAMPR,CCESTADO,CCOMERID, ' +
      ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, ' +
      ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG,UBIID,SITID, ' +
      ' CLIEDES,TVTAID,ZVTAID) VALUES(' +
      QuotedStr(sCIA) + ',' + QuotedStr(DM1.cdsQry2.FieldByName('FecAno').AsString + DM1.cdsQry2.FieldByName('FecMes').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('TDIARID').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CCLOTE').AsString) + ',' + QuotedStr(xxNoReg) + ',' + DM1.wRepFecServi + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CLAUXID').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CLIEID').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CLIERUC').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('DOCID').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CCSERIE').AsString) + ',' +
      QuotedStr(copy(DM1.cdsQry3.FieldByName('CCNODOC').AsString, 1, wPos) + '-' + StrZero(IntToStr(StrToInt(dbeRenova.text) + 1), 2)) + ',' +
//         DM1.wRepFecServi+','+
   QuotedStr(FORMATDATETIME(DM1.wFormatFecha, dbdtpFEmis2.date)) + ',' +
      QuotedStr(FORMATDATETIME(DM1.wFormatFecha, dbdtpFVcmto2.date)) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('TMONID').AsString) + ',' +
      dbeTCamb2.text + ',' + QuotedStr('P') + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CCOMERID').AsString) + ',' +
      FloatToStr(fSaldo) + ',' + FloatToStr(fsaldo * fTCambio) + ',' + FloatToStr(fSaldo) + ',' +
      '0,0,0,' +
      FloatToStr(fSaldo) + ',' + FloatToStr(fsaldo * fTCambio) + ',' + FloatToStr(fSaldo) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecAno').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecMes').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecDia').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecTrim').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecSem').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecSS').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecAATri').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecAASem').AsString) + ',' +
      QuotedStr(DM1.cdsQry2.FieldByName('FecAASS').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('BANCOID').AsString) + ',' +
      QuotedStr('.') + ',' +
      QuotedStr(DM1.wUsuario) + ',' +
      DM1.wRepFecServi + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('UBIID').AsString) + ',' +
      QuotedStr(sSitOld) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('CLIEDES').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('TVTAID').AsString) + ',' +
      QuotedStr(DM1.cdsQry3.FieldByName('ZVTAID').AsString) + ')';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;
   xxNoReg := DM1.GrabaUltimoRegistro(xTAutoNum, sCIA, DM1.cdsQry3.FieldByName('TDIARID').AsString, sAno, sMes, nNoReg);
   ShowMessage('Se Generó la Renovación Satisfactoriamente.');
   FPrincipal.Mantc.RefreshFilter;
   Close;
End;

Procedure TFRenoLetras.dbdtpFEmis2Exit(Sender: TObject);
Var
   Tmp: String;
Begin
//    if dbdtpFEmis.
End;

Procedure TFRenoLetras.Valida;
Begin

   If dbdtpFEmis2.Date = 0 Then
   Begin
      dbdtpFEmis2.SetFocus;
      Raise Exception.create('Ingrese Fecha de Emisión de la Renovación');
   End;

   If dbdtpFVcmto2.Date = 0 Then
   Begin
      dbdtpFVcmto2.SetFocus;
      Raise Exception.create('Ingrese Fecha de Vencimiento de la Renovación');
   End;

   Try
      If (StrToFloat(dbeIMporte2.text) <= 0) Then
      Begin
         dbeImporte2.SetFocus;
         Raise Exception.create('Ingrese Importe de la Renovación');
      End;
   Except
      dbeImporte2.SetFocus;
      Raise Exception.create('Ingrese Importe de la Renovación');
   End;

   Try
      If (StrToFloat(dbeIMporte2.text) >= StrToFloat(dbeIMporte.text)) Then
      Begin
         dbeImporte2.SetFocus;
         Raise Exception.create('El Importe de la Renovación no puede ser mayor al original');
      End;
   Except
      dbeImporte2.SetFocus;
      Raise Exception.create('Ingrese Importe de la Renovación');
   End;

   If trim(dbeImporte2.Text) = '' Then
   Begin
      dbeImporte2.SetFocus;
      Raise Exception.create('Ingrese Importe de la Renovación');
   End;

   If trim(dbeTCamb2.Text) = '' Then
   Begin
      dbeTCamb2.SetFocus;
      Raise Exception.create('Ingrese Tipo de Cambio');
   End;

   If rgCodRenovacion.ItemIndex = -1 Then
   Begin
      rgCodRenovacion.SetFocus;
      Raise Exception.create('Ingrese Codigo de Renovación');
   End;

End;

Procedure TFRenoLetras.dbeIMporte2Exit(Sender: TObject);
Var
   Curr1, Curr2: Currency;
Begin
   If trim(dbeIMporte2.text) = '' Then
   Begin
      ShowMessage('Ingrese Importe ');
      dbeImporte2.SetFocus;
      exit;
   End;
   dbeimporte2.text := floattostrf(strtocurr(dbeimporte2.text), fffixed, 15, 2);
   Curr1 := strtocurr(dbeIMporte.text);
   Curr2 := strToCurr(dbeImporte2.text);
   If Curr2 > Curr1 Then
   Begin
      ShowMessage('El Importe de La Renovación debe ser Menor o Igual al Importe Anterior');
      dbeIMporte2.SetFocus;
      Exit;
   End;

End;

Procedure TFRenoLetras.dbeIMporte2KeyPress(Sender: TObject; Var Key: Char);
Var
   xStr: String;
Begin
   If Not (Key In ['0'..'9', '.', #8]) Then
   Begin
      Key := #0;
   End;
   xStr := TCustomEdit(self.ActiveControl).text;
   If key = '.' Then
      If pos('.', xSTR) <> 0 Then
         Key := #0;
End;

Procedure TFRenoLetras.dbeTCamb2Exit(Sender: TObject);
Var
   Curr1, Curr2: Currency;
Begin
   If trim(dbeTCamb2.text) = '' Then
   Begin
      ShowMessage('Ingrese Tipo de Cambio');
      dbeTCamb2.SetFocus;
      exit;
   End;
   dbeTCamb2.text := floattostrf(strtocurr(dbeTCamb2.text), fffixed, 15, 2);
End;

Procedure TFRenoLetras.GrabaHistorico;
Var
   xCorre, i: Integer;
   xWhere: String;
Begin

   xWhere := '    CIAID = ''' + xCIAID + ''' AND                                              ' +
      '    DOCID = ''' + dm1.wIdLetras + ''' AND                                       ' +
      '    CCNODOC = ''' + dbeLetra.Text + '''                                         ';
   If RecuperarDatos('CXC402', 'MAX(CCHIST) MAXIMO', xWhere) Then
   Begin
      xCorre := dm1.cdsRec.fieldbyName('MAXIMO').AsInteger;
   End
   Else
   Begin
      xCorre := 0;
   End;
   inc(xCorre);
   dm1.cdsGrab.Active := False;
   dm1.cdsGrab.CommandText := 'SELECT * FROM CXC402 WHERE CIAID='''' ';
   dm1.cdsGrab.Active := True;
   dm1.cdsgrab.Insert;
   For i := 0 To dm1.cdsGrab.fields.count - 1 Do
   Begin
      If dm1.cdsGrab.fields[i].FieldName <> 'CCHIST' Then
      Begin
         dm1.cdsGrab.FieldByName(dm1.cdsGrab.fields[i].FieldName).Value :=
            dm1.cdsWMC.fieldbyname(dm1.cdsGrab.fields[i].FieldName).Value;
      End
      Else
      Begin
         dm1.cdsGrab.FieldByName(dm1.cdsGrab.fields[i].FieldName).Value :=
            StrZero(inttostr(xCorre), 2)
      End;
   End;
   If dm1.cdsGrab.ApplyUpdates(0) <> 0 Then
   Begin
      ShowMessage('wmc : GrabaHistorico' + #13 + 'No grabó')
   End;

End;

Procedure TFRenoLetras.bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRenoLetras.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Initialization
   RegisterClasses([TLabel])
End.

