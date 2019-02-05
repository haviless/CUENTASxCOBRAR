Unit CxC240;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, Spin, StdCtrls, wwdblook, ExtCtrls, Buttons,
   Mask, wwdbedit, ppVar, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands, Db,
   DBTables, Wwdatsrc, Wwquery, ppProd, ppReport, ppComm, ppRelatv, ppCache,
   ppDBPipe, ComCtrls;

Type
   TFContaLetras = Class(TForm)
      Panel1: TPanel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label1: TLabel;
      seAno: TSpinEdit;
      seMes: TSpinEdit;
      Label2: TLabel;
      Label3: TLabel;
      dbgLetras: TwwDBGrid;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      bbtnSelec: TBitBtn;
      pnlConta: TPanel;
      Label34: TLabel;
      Label35: TLabel;
      bbtnCont: TBitBtn;
      bbtnCanc2: TBitBtn;
      Label4: TLabel;
      dblcCia2: TwwDBLookupCombo;
      edtCia2: TEdit;
      edtPeriodo: TEdit;
      lblTDiario: TLabel;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      Label5: TLabel;
      dbeNoReg: TwwDBEdit;
      z2bbtnContab: TBitBtn;
      z2bbtnCancel: TBitBtn;
      z2bbtImprime: TBitBtn;
      pnlImprime: TPanel;
      Label6: TLabel;
      dblcTDiarioImp: TwwDBLookupCombo;
      edtTDiarDesImp: TEdit;
      z2bbtOK: TBitBtn;
      z1bbtCancela: TBitBtn;
      dbplAsientos: TppDBPipeline;
      pprAsientos: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppLabel1: TppLabel;
      ppdbtCIA: TppDBText;
      pplCIA: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppdbtTDiarID: TppDBText;
      ppLabel7: TppLabel;
      pplTDiarDes: TppLabel;
      ppLabel2: TppLabel;
      ppDBText1: TppDBText;
      ppdbtTMonId: TppDBText;
      pplTMonDes: TppLabel;
      ppdbtCliente: TppDBText;
      pplClieDes: TppLabel;
      ppLabel11: TppLabel;
      ppDBText3: TppDBText;
      ppLabel12: TppLabel;
      ppDBText4: TppDBText;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppField1: TppField;
      ppField2: TppField;
      ppField3: TppField;
      ppField4: TppField;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppField5: TppField;
      CCGLOSA: TppField;
      ppField6: TppField;
      ppLabel8: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppDBText9: TppDBText;
      ppField7: TppField;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      pnlCnt: TPanel;
      dtmCnt: TDateTimePicker;
      bbtnCnt: TBitBtn;
      bbtnCancelCnt: TBitBtn;
      Label7: TLabel;
      rgTipo: TRadioGroup;
      ppField8: TppField;
      ppLabel19: TppLabel;
      ppDBText2: TppDBText;
      Procedure bbtnSelecClick(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure dbeCompExit(Sender: TObject);
      Procedure bbtnContClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure dbeNoRegExit(Sender: TObject);
      Procedure bbtnCanc2Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure dblcTDiarioImpExit(Sender: TObject);
      Procedure z1bbtCancelaClick(Sender: TObject);
      Procedure z2bbtImprimeClick(Sender: TObject);
      Procedure z2bbtOKClick(Sender: TObject);
      Procedure ppHeaderBand1BeforePrint(Sender: TObject);
      Procedure ppDetailBand1BeforePrint(Sender: TObject);
      Procedure bbtnCntClick(Sender: TObject);
      Procedure bbtnCancelCntClick(Sender: TObject);
      Procedure z2bbtnContabClick(Sender: TObject);
      Procedure z2bbtnCancelClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Function ExisteCierre(PCia, PPe: String): Boolean;
   End;

Var
   FContaLetras: TFContaLetras;
   sCia: String;
   sPe: String;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFContaLetras.bbtnSelecClick(Sender: TObject);
Var
   xSQL: String;
Begin

   sCia := dblcCia.Text;
   sPe := seAno.Text + StrZero(seMes.Text, 2);

{     xSQL:='SELECT CLIEID,CLIERUC,CCNODOC,CCFEMIS,CCFVCMTO,TMONID,CCTCAMPR,CCMTOORI,CCCANJE,CCFSITUA,CCNLETBCO,UBIID,SITID,CCOENV '+
           'FROM CXC301 '+
           'WHERE CIAID='+QuotedStr(sCia)+' and '+
                 'CCANOMES='+QuotedStr(sPe)+' and '+
                 'TCANJEID=''LC'' '+
           ' ORDER BY CCOENV,CCFSITUA ';}
   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT TMONID,CIAID,TDIARID, CCANOMES, CCNODOC, ' +
         ' CPTOID, CUENTAID,ORDEN, ' +
         ' (CASE WHEN CCDH=''D'' THEN CCMTOLOC ELSE 0 END) AS DEBEMN, ' +
         ' (CASE WHEN CCDH=''H'' THEN CCMTOLOC ELSE 0 END) AS HABEMN, ' +
         ' (CASE WHEN CCDH=''D'' THEN CCMTOEXT ELSE 0 END) AS DEBEME, ' +
         ' (CASE WHEN CCDH=''H'' THEN CCMTOEXT ELSE 0 END) AS HABEME,CCFLCDR,CCGLOSA,CLIEID ' +
         ' FROM CXC302 ' +
         ' WHERE CIAID=''' + sCia + ''' and ' +
         ' CCANOMES=''' + sPe + ''' and ';
      If rgTipo.ItemIndex = 0 Then
         xSQL := xSQL + ' COALESCE(CCFLCDR,''NULO'')=''NULO'' AND ';
      xSQL := xSQL + ' TCANJEID=''TL'' ' +
         ' ORDER BY TDIARID,CCNODOC,ORDEN ';
   End
   Else
      If (DM1.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT TMONID,CIAID,TDIARID, CCANOMES, CCNODOC, ' +
            ' CPTOID, CUENTAID,ORDEN, ' +
            ' (DECODE(CCDH,''D'',CCMTOLOC,0)) AS DEBEMN, ' +
            ' (DECODE(CCDH,''H'',CCMTOLOC,0)) AS HABEMN, ' +
            ' (DECODE(CCDH,''D'',CCMTOEXT,0)) AS DEBEME, ' +
            ' (DECODE(CCDH,''H'',CCMTOEXT,0)) AS HABEME,CCFLCDR,CCGLOSA,CLIEID ' +
            ' FROM CXC302 ' +
            ' WHERE CIAID=''' + sCia + ''' and ' +
            ' CCANOMES=''' + sPe + ''' and ';
         If rgTipo.ItemIndex = 0 Then
            xSQL := xSQL + ' NVL(CCFLCDR,''NULO'')=''NULO'' and ';
         xSQL := xSQL + ' TCANJEID=''TL'' ' +
            ' ORDER BY TDIARID,CCNODOC,ORDEN ';
      End;

   DM1.cdsQRY3.ProviderName := 'dspTGE';
   DM1.cdsQRY3.Close;
   DM1.cdsQRY3.DataRequest(xSQL);
   DM1.cdsQRY3.Open;
   dbgLetras.Selected.Clear;

   dbgLetras.Selected.Add('TDIARID'#9'12'#9'Tipo de~Diario'#9'T');
   dbgLetras.Selected.Add('CCANOMES'#9'15'#9'Periodo'#9'F');
   dbgLetras.Selected.Add('CCNODOC'#9'14'#9'N° de Letra'#9'T');
   dbgLetras.Selected.Add('CPTOID'#9'8'#9'Concepto'#9'T');
   dbgLetras.Selected.Add('CUENTAID'#9'10'#9'Cuenta~Contable'#9'T');
   dbgLetras.Selected.Add('DEBEMN'#9'12'#9'Debe~Mon. Nac.'#9'T');
   dbgLetras.Selected.Add('HABEMN'#9'12'#9'Haber~Mon. Nac.'#9'T');
   dbgLetras.Selected.Add('DEBEME'#9'12'#9'Debe~Mon. Ext.'#9'T');
   dbgLetras.Selected.Add('HABEME'#9'12'#9'Haber~Mon. Ext.'#9'T');
   dbgLetras.RedrawGrid;

   If DM1.cdsQRY3.Recordcount > 0 Then
   Begin
      z2bbtnContab.enabled := True;
   End
   Else
   Begin
      z2bbtnContab.enabled := False;
   End;
End;

Procedure TFContaLetras.dblcCiaExit(Sender: TObject);
Begin
   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);

   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
   End;
End;

Procedure TFContaLetras.dblcTDiarioExit(Sender: TObject);
Begin
   edtTDiario.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);

   If length(edtTDiario.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiario.SetFocus;
   End;
End;

Procedure TFContaLetras.dbeCompExit(Sender: TObject);
Begin
   dbeNoReg.Text := StrZero(dbeNoReg.Text, DM1.cdsMovCxC.FieldByName('CCNOREG').Size);

   If BuscaCxCReg(sCia, dblcTDiario.Text, sPe, dbeNoReg.Text) Then
   Begin
      dbeNoReg.SetFocus;
      Raise Exception.Create('No.de Registro Duplicado');
   End;
End;

Procedure TFContaLetras.bbtnContClick(Sender: TObject);
Var
   xSQL, sTD, sNR: String;
   sNumCom: String;
Begin
   If MessageDlg('Contabilizar Letras' + chr(13) + '  ¿ Esta Seguro ?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   sTD := dblcTDiario.Text;

   xSQL := ' SELECT MAX(CNTCOMPROB) NUMERO FROM CNT301 ' +
      ' WHERE CIAID=' + QuotedStr(sCia) + ' AND TDIARID=' + QuotedStr(sTD) + ' AND CNTANOMM=' + QuotedStr(sPe);
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.FieldByName('NUMERO').isNull Then
   Begin
      sNR := '0000000001';
   End
   Else
   Begin
      sNR := StrZero(IntToStr(StrToInt(DM1.cdsQry2.FieldByName('NUMERO').AsString) + 1), 10)
   End;

//   if Length( dbeNoReg.Text )=0 then Exit;
//   sNR  := dbeNoReg.Text;

//   if BuscaDetCxCReg( sCia, sTD, sPe, sNR ) then
//      Raise Exception.Create( 'Comprobante Existe' );

   xSQL := 'Update CXC302 SET CCNOREG=''' + sNR + ''', '
      + 'TDIARID=''' + sTD + ''', '
      + 'CCCMPRB=''' + sNR + ''' '
      + 'WHERE CIAID=''' + sCia + ''' and '
      + 'CCANOMES=''' + sPe + ''' and '
      + 'TCANJEID=''TL''';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   DM1.GeneraContabilidad(sCia, sTD, sPe, sNR, Self);

   pnlConta.Visible := False;

   ShowMessage('Registro Contabilizado');
End;

Function TFContaLetras.ExisteCierre(PCia, PPe: String): Boolean;
Var
   xSQL: String;
Begin

   xSQL := 'Select * FROM CXC302 '
      + 'WHERE CIAID=''' + PCia + ''' and '
      + 'CCANOMES=''' + PPe + ''' and ';
   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
   Begin
      xSQL := xSQL + ' COALESCE(CCCMPRB,'''')<>'''' and '
         + ' TCANJEID=''TL'''
   End
   Else
      If (DM1.SRV_D = 'ORACLE') Then
      Begin
         xSQL := xSQL + 'NVL(CCCMPRB,'''')<>'''' and '
            + 'TCANJEID=''TL'''
      End;

   xSQL := UpperCase(xSQL);
   DM1.cdsQry.Close;
   DM1.cdsQry.ProviderName := 'dspTGE';
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Procedure TFContaLetras.BitBtn1Click(Sender: TObject);
Begin
   dblcCia2.Text := sCia;
   edtPeriodo.Text := sPe;
   bbtnCont.Enabled := True;
   dblcTDiario.Enabled := True;
   dbeNoReg.Enabled := True;
   If ExisteCierre(sCia, sPe) Then
   Begin
      dblcTDiario.Text := DM1.cdsQry.FieldByName('TDIARID').AsString;
      dbeNoReg.Text := DM1.cdsQry.FieldByName('CCNOREG').AsString;
      edtTDiario.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      bbtnCont.Enabled := False;
      dblcTDiario.Enabled := False;
      dbeNoReg.Enabled := False;
   End;
   pnlConta.Visible := True;
End;

Procedure TFContaLetras.dbeNoRegExit(Sender: TObject);
Begin
   If BuscaDetCxCReg(sCia, dblcTDiario.Text, sPe, dbeNoReg.Text) Then
      Raise Exception.Create('Comprobante Existe');
End;

Procedure TFContaLetras.bbtnCanc2Click(Sender: TObject);
Begin
   pnlConta.Visible := False;
End;

Procedure TFContaLetras.FormCreate(Sender: TObject);
Begin
   DM1.cdsQry3.Close;
End;

Procedure TFContaLetras.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsQry3.Close;
End;

Procedure TFContaLetras.FormActivate(Sender: TObject);
Var
   Present: TDateTime;
   Year, Month, Day: Word;
Begin
   Present := Now;
   DecodeDate(Present, Year, Month, Day);
   seAno.Value := Year;
   seMes.Value := Month;
   z2bbtnContab.enabled := False;
   DM1.cdsCia.First;
   dblcCia.text := DM1.cdsCia.FieldByName('CIAID').AsString;
   dblcCiaExit(dblcCia);
   dblcCia.enabled := (DM1.cdsCia.RecordCount > 1);

End;

Procedure TFContaLetras.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFContaLetras.BitBtn2Click(Sender: TObject);
Begin
   Close;
End;

Procedure TFContaLetras.dblcTDiarioImpExit(Sender: TObject);
Begin
   If z1bbtCancela.Focused Then
      exit;

   edtTDiarDesImp.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiarioImp.Text);

   If length(edtTDiarDesImp.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiarioImp.SetFocus;
   End;
End;

Procedure TFContaLetras.z1bbtCancelaClick(Sender: TObject);
Begin
   pnlImprime.visible := False;
End;

Procedure TFContaLetras.z2bbtImprimeClick(Sender: TObject);
Begin
   pnlImprime.visible := True;
   dblcTDiarioImp.Setfocus;
End;

Procedure TFContaLetras.z2bbtOKClick(Sender: TObject);
Var
   sCia, sPe: String;
   xSQL: String;
Begin
   DM1.cdsQry3.DisableControls;
{   sCia := dblcCia.Text;
   sPe  := seAno.Text+StrZero( seMes.Text,2 );
     xSQL:='SELECT DISTINCT CIAID,CCGLOSA,CCANOMES,TDIARID,CLAUXID,CLIEID,CCNODOC,TMONID,CCMTOLOC,CCMTOEXT FROM CXC302 '+
           'WHERE CIAID='''   + sCia +''' and '+
                 'CCANOMES='''+ sPe  +''' and '+
                 'TDIARID='''+dblcTDiarioImp.text+''' AND '+
                 'TCANJEID=''TL'' '+
           'ORDER BY TDIARID,CCNODOC,TMONID ';
   DM1.cdsQRY3.ProviderName:='dspTGE';
   DM1.cdsQRY3.Close;
   DM1.cdsQRY3.DataRequest( xSQL );
   DM1.cdsQRY3.Open;
   if DM1.cdsQRY3.RecordCount=0 then
   begin
     Raise Exception.Create('No hay Registros que mostrar');
   end;}
   DM1.cdsQry3.Filter := ' TDIARID=' + QuotedStr(dblcTDiarioImp.text);
   DM1.cdsQry3.Filtered := True;
   pprAsientos.Print;
   DM1.cdsQry3.Filter := '';
   DM1.cdsQry3.Filtered := False;
   DM1.cdsQry3.EnableControls;
End;

Procedure TFContaLetras.ppHeaderBand1BeforePrint(Sender: TObject);
Begin
   pplTDiarDes.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', ppdbtTDiarID.text);
   pplCIA.Text := DisplayDescrip('TGE101', 'CIADES', 'CIAID', ppdbtCIA.text);
End;

Procedure TFContaLetras.ppDetailBand1BeforePrint(Sender: TObject);
Begin
   pplTMonDes.Text := DisplayDescrip('TGE103', 'TMONABR', 'TMONID', ppdbtTMonId.text);
   pplClieDes.Text := DisplayDescrip('TGE204', 'CLIEDES', 'CLIEID', ppdbtCliente.text);
End;

Procedure TFContaLetras.bbtnCntClick(Sender: TObject);
Var
   xSQL, sTD, sNR: String;
   sNumCom: String;
Begin

   DM1.cdsQRY3.First;
   While Not DM1.cdsQRY3.EOF Do
   Begin
      If (Not DM1.cdsQry3.FieldByName('CCFLCDR').IsNull) Or (DM1.cdsQry3.FieldByName('CCFLCDR').AsString <> '') Then
     // VALIDAR LO QUE SEA NECESARIO
         Raise Exception.Create('Existen Registros ya contabilizados');
      DM1.cdsQRY3.Next;
   End;

   If MessageDlg('Contabilizar Letras' + chr(13) + '  ¿ Esta Seguro ?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   Ajusta(dblcCia.text, dtmCnt.date);

   xSQL := ' SELECT DISTINCT CIAID,CCANOMES,TDIARID FROM CXC302 ' +
      ' WHERE CIAID=' + QuotedStr(sCia) + ' AND CCANOMES=' + QuotedStr(sPe) + ' AND TCANJEID=''TL'' AND ' + DM1.wReplacCeros + '(CCFLCDR,''NULO'')=''NULO''';

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   DM1.cdsQRY4.First;
   While Not DM1.cdsQry4.EOF Do
   Begin
      sTD := DM1.cdsQry4.FieldByName('TDIARID').AsString;

     // GENERA EL NUMERO SIGUIENTE POR COMPAÑIA+TDIARID+CNTANOMM
      xSQL := ' SELECT MAX(CNTCOMPROB) NUMERO FROM CNT301 ' +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND TDIARID=' + QuotedStr(sTD) + ' AND CNTANOMM=' + QuotedStr(sPe);
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;

      If DM1.cdsQry2.FieldByName('NUMERO').isNull Then
      Begin
         sNR := '0000000001';
      End
      Else
      Begin
         sNR := StrZero(IntToStr(StrToInt(DM1.cdsQry2.FieldByName('NUMERO').AsString) + 1), 10)
      End;

      xSQL := 'Update CXC302 SET CCNOREG=''' + sNR + ''', '
         + 'CCCMPRB=''' + sNR + ''' '
         + 'WHERE CIAID=''' + sCia + ''' and '
         + 'CCANOMES=''' + sPe + ''' and '
         + 'TCANJEID=''TL'' AND TDIARID=' + QuotedStr(sTD);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;

      DM1.GeneraContabilidad(sCia, sTD, sPe, sNR, Self);
      xSQL := 'Update CXC302 SET CCFLCDR=''S'' '
         + 'WHERE CIAID=''' + sCia + ''' and '
         + 'CCANOMES=''' + sPe + ''' and '
         + 'TDIARID=''' + sTD + ''' and '
         + 'CCCMPRB=''' + sNR + ''' and '
         + 'CCNOREG=''' + sNR + ''' and '
         + 'TCANJEID=''TL''';
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
      DM1.cdsQry4.Next;
   End;
   ShowMessage('Registros Contabilizado');
   bbtnSelec.Click;
End;

Procedure TFContaLetras.bbtnCancelCntClick(Sender: TObject);
Begin
   pnlCnt.Visible := False;
End;

Procedure TFContaLetras.z2bbtnContabClick(Sender: TObject);
Var
   wDia, wMes, wAno: word;
Begin
   DecodeDate(Now, wAno, wMes, wDia);
   wDia := 1;
   If wMes <> 12 Then
      wMes := wMes + 1
   Else
   Begin
      wMes := 1;
      wAno := wAno + 1;
   End;
   dtmcnt.Date := (EncodeDate(wAno, wMes, wDia) - 1);
   pnlCnt.Visible := True;
End;

Procedure TFContaLetras.z2bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

End.

