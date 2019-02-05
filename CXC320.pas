Unit CXC320;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, Buttons, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
   ppProd, ppClass, ppReport, ppCtrls, ppBands, ppVar, ppPrnabl;

Type
   TFToolContabLetras = Class(TForm)
      pnGLT: TPanel;
      Z2bbtnPreview: TBitBtn;
      ppdbpPreview: TppDBPipeline;
      pprPreview: TppReport;
      ppHeaderBand5: TppHeaderBand;
      lblVCiaDes: TppLabel;
      ppsV4: TppSystemVariable;
      lblV30: TppLabel;
      ppsV5: TppSystemVariable;
      lblV1: TppLabel;
      lblV2: TppLabel;
      lblV25: TppLabel;
      lblV26: TppLabel;
      lblVTD: TppLabel;
      lblVDiario: TppLabel;
      lblVPeriodo: TppLabel;
      lblVNoCompro: TppLabel;
      lblV27: TppLabel;
      lblVProveedor: TppLabel;
      lblV28: TppLabel;
      lblVmoneda: TppLabel;
      lblV29: TppLabel;
      lblVTipoCamb: TppLabel;
      lblV31: TppLabel;
      lblVGlosa: TppLabel;
      lblV32: TppLabel;
      lblV33: TppLabel;
      lblV34: TppLabel;
      lblV3: TppLabel;
      lblV4: TppLabel;
      lblV5: TppLabel;
      lblV6: TppLabel;
      lblV7: TppLabel;
      lblV8: TppLabel;
      lblV9: TppLabel;
      lblV10: TppLabel;
      lblVauxiliar: TppLabel;
      ppDBVText30: TppDBText;
      lblV11: TppLabel;
      ppDBVText31: TppDBText;
      lblV12: TppLabel;
      lblVMesDia: TppLabel;
      ppDBVText32: TppDBText;
      lblV13: TppLabel;
      lblVEstado: TppLabel;
      lblV14: TppLabel;
      lblV47: TppLabel;
      lblV48: TppLabel;
      lblV49: TppLabel;
      lblV50: TppLabel;
      lblB15: TppLabel;
      lblV16: TppLabel;
      lblV17: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBVText33: TppDBText;
      ppDBVText34: TppDBText;
      ppDBVText35: TppDBText;
      ppDBVText36: TppDBText;
      ppDBVText4: TppDBText;
      ppVtDesc: TppDBText;
      ppDBVText5: TppDBText;
      ppDBVText6: TppDBText;
      ppDBVText8: TppDBText;
      ppDBVText9: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppDBVCalc6: TppDBCalc;
      ppDBVCalc7: TppDBCalc;
      lblV18: TppLabel;
      Z2bbtnContab: TBitBtn;
      Procedure Z2bbtnPreviewClick(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FToolContabLetras: TFToolContabLetras;

Implementation

Uses CxCDM, oaCC2000;

{$R *.DFM}

Procedure TFToolContabLetras.Z2bbtnPreviewClick(Sender: TObject);
Var
   xSQL, mes, ano, xWhere, mesdes, tMoneda, MONABR: String;
   xTotHaber: double;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   DMCXC.cdsCCanje.Data := GLetras.FMant.cds2.data;

   If DMCXC.cdsCCanje.RecordCount = 0 Then
   Begin
      Raise Exception.Create('No existen registros');
   End;

   If DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString <> 'S' Then
   Begin
      DMCXC.GeneraContab(DMCXC.cdsCCanje.FieldByName('CIAID').AsString,
         DMCXC.cdsCCanje.FieldByName('TDIARID').AsString,
         DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString,
         DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString, Self, 'P');

      DMCXC.cdsCXC.Data := DMCXC.cdsMovCnt.data;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      lblVestado.caption := 'Previo';
      lblVProveedor.Caption := DMCXC.cdsCCanje.FieldByName('CJEGIRADO').AsString;
      xSQL := 'SELECT CNTGLOSA FROM CNT310 WHERE CIAID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CIAID').AsString) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TDIARID').AsString) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString);
      DMCXC.cdsQry5.close;
      DMCXC.cdsQry5.ProviderName := 'dspTGE';
      DMCXC.cdsQry5.DataRequest(xsql);
      DMCXC.cdsQry5.Open;

      lblVTipoCamb.Caption := FloatToStrF(DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, ffNumber, 10, 4);

      //lblPeriodo.Caption  := meAnoMM.text ;  reemplazado por
      mes := copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 5, 2);
      ano := copy(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.BuscaQry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      lblVNoCompro.Caption := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
      lblVMesDia.caption := DateToStr(DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime);
      lblVestado.caption := 'Previo';
      tMoneda := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMON_LOC', 'TMONID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TMONID').AsString), 'TMON_LOC');
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TMONID').AsString), 'TMONABR');

      lblV12.visible := False;
      lblV26.visible := False;
   End;

   If DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString = 'S' Then
   Begin
      xsql := 'SELECT * FROM CNT301 '
         + 'WHERE CIAID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CIAID').AsString) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TDIARID').AsString) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString)
         + ' order by CNT301.CNTREG';
      DMCXC.cdsCxC.Close;
      DMCXC.cdsCxC.DataRequest(xSQL);
      DMCXC.cdsCxC.Open;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      mes := copy(DMCXC.cdsCxC.FieldByName('CNTANOMM').asstring, 5, 2);
      ano := copy(DMCXC.cdsCxC.FieldByName('CNTANOMM').asstring, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.Buscaqry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      lblVMesDia.caption := DateToStr(DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime);
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TMONID').AsString), 'TMONABR');

      lblVestado.caption := 'Contabilizado';
      xTotHaber := 0;

      lblV12.visible := False;
      lblV26.visible := False;
   End;

   lblVCiades.Caption := DMCXC.BuscaQry2('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('CIAID').AsString), 'CIADES');
   lblVauxiliar.Caption := DMCXC.cdsCCanje.FieldByName('CLIEID').AsString;
   lblVDiario.Caption := DMCXC.BuscaQry2('dspTGE', 'TGE104', 'TDIARDES', 'TDIARID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TDIARID').AsString), 'TDIARDES');
   lblVTD.Caption := DMCXC.cdsCCanje.FieldByName('TDIARID').AsString;
   lblVTipoCamb.Caption := FloatToStrF(DMCXC.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, ffNumber, 10, 4);
   lblVNoCompro.Caption := DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString;
   lblVProveedor.Caption := DMCXC.cdsCCanje.FieldByName('CJEGIRADO').AsString;
   lblVmoneda.caption := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + quotedstr(DMCXC.cdsCCanje.FieldByName('TMONID').AsString), 'TMONDES');
   lblVglosa.caption := DMCXC.cdsCxC.FieldByName('CNTGLOSA').asstring;

   DMCXC.cdsCxC.IndexFieldNames := 'CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := Nil;
   DMCXC.cdsCxC.IndexFieldNames := '';
End;

Procedure TFToolContabLetras.Z2bbtnContabClick(Sender: TObject);
Var
   xTMes, xTAno: String;
   a, m, d: word;
Begin
   If DMCXC.wAdmin = 'G' Then Exit;

   DMCXC.cdsCCanje.Data := GLetras.FMant.cds2.data;

   DecodeDate(DMCXC.cdsCCanje.FieldByName('CJFCANJE').AsDateTime, a, m, d);
   xTMes := StrZero(IntToStr(m), 2);
   xTAno := StrZero(IntToStr(a), 4);

   If DMCXC.MesCerrado(xTMes, xTAno, DMCXC.cdsCCanje.FieldByName('CIAID').AsString) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;
   //**
//   VerificaAsiento;

   If DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString = 'S' Then
      Raise exception.Create('Error: Asiento ya fue Contabilizado');

   If MessageDlg('Contabilizar Documento' + chr(13) + chr(13) +
      'Periodo         : ' + xTAno + xTMes + chr(13) +
      'Comprobante: ' + DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?    ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DMCXC.GeneraContab(DMCXC.cdsCCanje.FieldByName('CIAID').AsString,
      DMCXC.cdsCCanje.FieldByName('TDIARID').AsString,
      DMCXC.cdsCCanje.FieldByName('CJAAMM').AsString,
      DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString, Self, 'C');

   DMCXC.cdsCCanje.Edit;
   DMCXC.cdsCCanje.FieldByName('CJ_CONTA').AsString := 'S';
   DMCXC.cdsPost(DMCXC.cdsCCanje);

   DMCXC.cdsCCanje.DataRequest('SELECT * FROM CXC307 WHERE '
      + 'CIAID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CIAID').AsString) + ' AND '
      + 'TCANJEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('TCANJEID').AsString) + ' AND '
      + 'CCCMPRB=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString) + ' AND '
      + 'CANJE=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CANJE').AsString) + ' AND '
      + 'CLIEID=' + QuotedStr(DMCXC.cdsCCanje.FieldByName('CLIEID').AsString));
   DMCXC.AplicaDatos(DMCXC.cdsCCanje, 'MovCxC');

   ShowMessage('Registro Contabilizado' + chr(13) + chr(13) +
      'Periodo         : ' + xTAno + xTMes + chr(13) +
      'Comprobante: ' + DMCXC.cdsCCanje.FieldByName('CCCMPRB').AsString);

End;

End.

