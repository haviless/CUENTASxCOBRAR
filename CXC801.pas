Unit CxC801;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ExtCtrls, Wwdbdlg, Mask, wwdbedit, wwdblook;

Type
   TFGNDebito = Class(TForm)
      pnlNDebito: TPanel;
      lblSerie: TLabel;
      lblNoDoc: TLabel;
      Label29: TLabel;
      Label40: TLabel;
      dblcSerie: TwwDBLookupCombo;
      dbeNoDoc: TwwDBEdit;
      dblcNDDoc: TwwDBLookupCombo;
      dblcdConceptoND: TwwDBLookupComboDlg;
      Z1sbKardex: TBitBtn;
      Z2bbtnOk: TBitBtn;
      bbtnCancel: TBitBtn;
      rgdTipo: TRadioGroup;
      Label1: TLabel;
      edtMonto: TEdit;
      lblTMon: TLabel;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormActivate(Sender: TObject);
      Procedure dblcNDDocExit(Sender: TObject);
      Procedure Z2bbtnOkClick(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure bbtnCancelClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }

      xCia, xFecComp, xClax, xClie, xRUC, xTCamb, xMonto,
    {xIgvMO, xIgvMN, xIgvME,}xIscMO, {xMtoMo,}
    {xMtoMn, xMtoMe, xTotalMO, xTotalMN, xTotalME,}xClieDes,
         xSalMo, xSalMn, xSalMe: String;

      Procedure TransferenciaCXC(xCia, xFecComp, xClax, xClie, xRUC, xTMonid, xTCamb,
                               {xIgvMO, xIscMO, xMtoMo,}
                               {xMtoMn, xMtoMe, xTotalMO, xTotalMN, xTotalME,}xMonto, xClieDes: String);

      Procedure GeneraRegistroCxC301(xFecComp, xTMes, xTAno, xCia, xxCuenta, xxCpto, xxNDoc, xxSerie, xxClax, xxClie, xClieDes, xxRUC, xxNoReg,
         xxTDiar, xxTDoc, xxTMonid, xxTCamb, xxGravad, xxIgv, xxIsc, xxFlete,
         xMontoOri, xMontoNac, xMontoExt, xxSalMo, xxSalMn, xxSalMe,
                                   //xxMtoMo, xxMtoMn, xxMtoMe, xxSalMo, xxSalMn, xxSalMe,
                                   //xxCpTot, xxTot,
         xxDD, xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM: String);

      Procedure GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xxTipDet, xxTReg, xxMontoMO, xxMontoMN, xxMontoME, xxCuenta, xxCpto, xxNDoc,
         xxSerie, xxClie, xxRUC, xxDH, xxTDoc, xxTDiar, xxNoReg, xxClax, xxTMonid, xxTCamb,
         xxDD, xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM: String);
   End;

Var
   FGNDebito: TFGNDebito;
   xWhere, xNDTDiario: String;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFGNDebito.Z2bbtnOkClick(Sender: TObject);
Begin
   TransferenciaCXC(xCia, xFecComp, xClax, xClie, xRUC, dblcTMon.Text, xTCamb, {xIgvMO,
                   xIscMO, xMtoMo, xMtoMn, xMtoMe, xTotalMO, xTotalMN, xTotalME,}edtMonto.Text, xClieDes);
End;

Procedure TFGNDebito.TransferenciaCXC(
   xCia, xFecComp, xClax, xClie,
   xRUC, xTMonid, xTCamb, {xIgvMO,
  xIscMO, xMtoMo, xMtoMn, xMtoMe, xTotalMO,
  xTotalMN, xTotalME,}xMonto, xClieDes: String);
Var
   xFDa, xDD, xTri, xSem, xSS, xAAMM, xAA, xMM: String;
   xTDoc, xSerie, xNDoc: String; // Variables de Campo
   xFecD: TDate;
   xCuenta, xCPto, xTMEs, xTano, xCtaTot, xCPtoTot, xTipDet, xTReg: String;
   xDH: String;
   xTAutoNum, xTDiar, xWhere: String;
   wAno, wMes, wDia: Word;
   xMes, xNoReg, xSQL: String;
   nNoReg: integer;
   xMontoOri, xMontoNac, xMontoExt: String;
   xIGVMtoOr, xIGVMtoNa, xIGVMtoEx: String;
   xTasa: Double;
Begin
   Screen.Cursor := crHourGlass;
   xFecD := StrtoDate(xFecComp);
   DecodeDate(StrtoDate(xFecComp), wAno, wMes, wDia);
   If wMes < 10 Then
      xMes := '0' + IntToStr(wMes)
   Else
      xMes := IntToStr(wMes);

   xTMes := xMes;
   xTAno := IntToStr(wAno);
   xTDoc := dblcNDDoc.Text;
   xSerie := dblcSerie.Text;
   xNDoc := dbeNoDoc.Text;
   xTDiar := DM1.BuscaQry2('dspUltTGE', 'TGE110', 'TDIARID', 'DOCID=' + QuotedStr(xTDoc), 'TDIARID');
   xTAutoNum := DM1.BuscaQry2('dspUltTGE', 'TGE104', 'AUTONUM', 'TDIARID=' + quotedstr(xTDiar), 'AUTONUM');
   xNoReg := DM1.UltimoRegistro(xTAutoNum, xCia, xTDiar, xTAno, xTMes);
   nNoReg := StrToInt(xNoReg);
   xNoReg := dm1.GrabaUltimoRegistro(xTAutoNum, xCia, xTDiar, xTAno, xTMes, nNoReg);
   xNoReg := StrZero(xNoReg, 10);

  //xFDa      := DM1.wRepFuncDate+QuotedStr(FormatDateTime(DM1.wFormatFecha,xFecD))+')';
  //xFecS     := DatetoStr(xFecD);
   If BuscaFecha('TGE114', 'FECHA', xFecD) Then
   Begin
      xDD := DM1.cdsQry2.FieldByName('FECDIA').AsString;
      xTri := DM1.cdsQry2.FieldByName('FECTRIM').AsString;
      xSem := DM1.cdsQry2.FieldByName('FECSEM').AsString;
      xSS := DM1.cdsQry2.FieldByName('FECSS').AsString;
      xAAMM := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString;
      xAA := DM1.cdsQry2.FieldByName('FECANO').AsString;
      xMM := DM1.cdsQry2.FieldByName('FECMES').AsString;
   End;

   xSQL := 'CIAID=' + Quotedstr(xCia) + ' ' +
      'AND DOCID=' + Quotedstr(xTDoc) + ' ' +
      'AND TMONID=' + Quotedstr(xTMonid) + ' ' +
      'AND CPTOCAB=' + Quotedstr(dblcdConceptoND.Text);

   DM1.BuscaQry2('dspUltTGE', 'CXC208', 'CIAID, CPTOCAB, CUENTAID', xSQL, 'CPTOCAB');

   xCtaTot := DM1.cdsQry6.fieldbyname('CUENTAID').AsString;
   xCPtoTot := DM1.cdsQry6.fieldbyname('CPTOCAB').AsString;

 {GeneraRegistroCxC301(xFecComp, xTMes, xTAno, xCia, xCtaTot, xCptoTot, xNDoc, xSerie, xClax, xClie, xClieDes, xRUC, xNoreg, xTDiar,
                       xTDoc, xTMonid, xTCamb, xMtoMo, xIgvMO, xIscMO, '0',
                       xMtoMo, xMtoMn, xMtoMe, xSalMo, xSalMn, xSalMe,
                       xMtoMo, xTotalMO, xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);}

   xWhere := 'CIAID=' + Quotedstr(xCia) + ' ' +
      'AND CPTOCAB=' + Quotedstr(dblcdConceptoND.Text);
   DM1.BuscaQry2('dspUltTGE', 'CXC102', '*', xWhere, 'CPTOCAB');

   dm1.cdsQry6.First;
   While Not dm1.cdsQry6.Eof Do
   Begin
      If dm1.cdsQry6.FieldByName('TIPDET').AsString = 'I1' Then
      Begin
         xTasa := dm1.cdsQry6.FieldByName('TASA').AsFloat;
         Break;
      End;
      dm1.cdsQry6.Next;
   End;

   xTasa := (xTasa / 100) + 1;

   If rgdTipo.ItemIndex = 0 Then
   Begin
      xMontoOri := edtMonto.Text;
      xIGVMtoOr := FloattoStr(FRound((StrtoFloat(xMontoOri) * xTasa) - StrToFloat(xMontoOri), 15, 2));

      If dblcTMon.Text = dm1.wTMonLoc Then
      Begin
         xMontoNac := xMontoOri;
         xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2))
      End
      Else
      Begin
         xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
         xMontoExt := xMontoOri;
      End;
   End
   Else
      If rgdTipo.ItemIndex = 1 Then
      Begin
         xMontoOri := FloattoStr(FRound(StrtoFloat(edtMonto.Text) / xTasa, 15, 2));
         xIGVMtoOr := FloattoStr(FRound(StrtoFloat(edtMonto.Text) - StrtoFloat(xMontoOri), 15, 2));

         If dblcTMon.Text = dm1.wTMonLoc Then
         Begin
            xMontoNac := xMontoOri;
            xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2))
         End
         Else
         Begin
            xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
            xMontoExt := xMontoOri;
         End;
      End;

  {
  GeneraRegistroCxC301( xFecComp, xTMes, xTAno, xCia,
                        xxCuenta, xxCpto, xxNDoc, xxSerie, xxClax, xxClie, xClieDes, xxRUC, xxNoReg,
                        xxTDiar, xxTDoc, xxTMonid, xxTCamb, xxGravad, xxIgv, xxIsc, xxFlete,
                        xMontoOri, xMontoNac, xMontoExt, xxSalMo, xxSalMn, xxSalMe,
                        xxCpTot, xxTot,
                        xxDD, xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM : string);}

   GeneraRegistroCxC301(xFecComp, xTMes, xTAno, xCia,
      xCtaTot, xCptoTot, xNDoc, xSerie, xClax, xClie, xClieDes, xRUC, xNoreg,
      xTDiar, xTDoc, xTMonid, xTCamb, xMontoOri, xIGVMtoOr, xIscMO, '0',
      xMontoOri, xMontoNac, xMontoExt, xSalMo, xSalMn, xSalMe,
      xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);

 //Generacion de Linea para Monto Gravado

   xWhere := 'CIAID=' + Quotedstr(xCia) + ' ' +
      'AND CPTOCAB=' + Quotedstr(dblcdConceptoND.Text);
   DM1.BuscaQry2('dspUltTGE', 'CXC102', '*', xWhere, 'CPTOCAB');

   dm1.cdsQry6.First;
   While Not dm1.cdsQry6.Eof Do
   Begin
      xTipDet := dm1.cdsQry6.FieldByName('TIPDET').AsString;

    {DM1.cdsQry6.Filtered:= False;
    DM1.cdsQry6.Filter  := 'TIPDET='+Quotedstr(xTipDet);
    DM1.cdsQry6.Filtered:= True;}

      xCuenta := DM1.cdsQry6.FieldByName('CUENTAID').AsString;
      xCPto := DM1.cdsQry6.FieldByName('CPTOID').AsString;
      xDH := DM1.cdsQry6.FieldByName('CCDH').AsString;
      xTReg := DM1.cdsQry6.FieldByName('TREGID').AsString;

      If xTipDet = 'MG' Then
      Begin
         If rgdTipo.ItemIndex = 0 Then
         Begin
            xMontoOri := edtMonto.Text;

            If dblcTMon.Text = dm1.wTMonLoc Then
            Begin
               xMontoNac := FloattoStr(FRound((StrtoFloat(xMontoOri)), 15, 2));
               xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2));
            End
            Else
            Begin
               xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
               xMontoExt := xMontoOri;
            End;
         End
         Else
            If rgdTipo.ItemIndex = 1 Then
            Begin
               xMontoOri := FloattoStr(FRound(StrtoFloat(edtMonto.Text) / 1.18, 15, 2));

               If dblcTMon.Text = dm1.wTMonLoc Then
               Begin
                  xMontoNac := FloattoStr(FRound((StrtoFloat(xMontoOri)), 15, 2));
                  xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2));
               End
               Else
               Begin
                  xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
                  xMontoExt := xMontoOri;
               End;
            End;
         GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xMontoOri, xMontoNac, xMontoExt, xCuenta,
            xCpto, xNDoc, xSerie,
            xClie, xRUC, xDH, xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
            xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);
      End
      Else
         If xTipDet = 'I1' Then
         Begin
            If rgdTipo.ItemIndex = 0 Then
            Begin
               xMontoOri := FloattoStr(FRound(StrtoFloat(edtMonto.Text) - (StrtoFloat(edtMonto.Text) * 1.18), 15, 2));

               If dblcTMon.Text = dm1.wTMonLoc Then
               Begin
                  xMontoNac := FloattoStr(FRound((StrtoFloat(xMontoOri)), 15, 2));
                  xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2));
               End
               Else
               Begin
                  xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
                  xMontoExt := xMontoOri;
               End;
            End
            Else
               If rgdTipo.ItemIndex = 1 Then
               Begin
                  xMontoOri := FloattoStr(FRound(StrtoFloat(edtMonto.Text) - (StrtoFloat(edtMonto.Text) / 1.18), 15, 2));

                  If dblcTMon.Text = dm1.wTMonLoc Then
                  Begin
                     xMontoNac := FloattoStr(FRound((StrtoFloat(xMontoOri)), 15, 2));
                     xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2));
                  End
                  Else
                  Begin
                     xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
                     xMontoExt := xMontoOri;
                  End;
               End;

            GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xMontoOri, xMontoNac, xMontoExt, xCuenta, xCpto, xNDoc, xSerie,
               xClie, xRUC, xDH, xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
               xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);
         End
         Else
            If xTipDet = 'TO' Then
            Begin
               If rgdTipo.ItemIndex = 0 Then
               Begin
                  xMontoOri := edtMonto.Text;

                  If dblcTMon.Text = dm1.wTMonLoc Then
                  Begin
                     xMontoNac := FloattoStr(FRound((StrtoFloat(xMontoOri)), 15, 2));
                     xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2));
                  End
                  Else
                  Begin
                     xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
                     xMontoExt := xMontoOri;
                  End;
               End
               Else
                  If rgdTipo.ItemIndex = 1 Then
                  Begin
                     xMontoOri := FloattoStr(FRound((StrtoFloat(edtMonto.Text) / 1.18), 15, 2));

                     If dblcTMon.Text = dm1.wTMonLoc Then
                     Begin
                        xMontoNac := FloattoStr(FRound((StrtoFloat(xMontoOri)), 15, 2));
                        xMontoExt := FloattoStr(FRound(StrtoFloat(xMontoOri) / StrtoFloat(xTCamb), 15, 2));
                     End
                     Else
                     Begin
                        xMontoNac := FloattoStr(FRound(StrtoFloat(xMontoOri) * StrtoFloat(xTCamb), 15, 2));
                        xMontoExt := xMontoOri;
                     End;
                  End;

               GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xMontoOri, xMontoNac, xMontoExt, xCuenta, xCpto, xNDoc, xSerie,
                  xClie, xRUC, xDH, xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
                  xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);
            End;
      dm1.cdsQry6.Next;
   End;
   DM1.cdsQry6.Close;
   DM1.cdsQry6.Filter := '';
   Screen.Cursor := crDefault;

    {GeneraRegistroCxC302( xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xMontoOri, xMontoNac, xMontoExt, xCuenta ,xCpto, xNDoc, xSerie,
                          xClie, xRUC, xDH,xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
                          xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);
    xTipDet:=''; xTReg:=''; xDH:='';
    xTipDet :='I1';
    DM1.cdsQry6.Filtered :=false;
    DM1.cdsQry6.Filter := 'TIPDET='+Quotedstr('I1');
    DM1.cdsQry6.Filtered := true;
    xCuenta := DM1.cdsQry6.FieldByName('CUENTAID').AsString;
    xCPto   := DM1.cdsQry6.FieldByName('CPTOID').AsString;
    xDH     := DM1.cdsQry6.FieldByName('CCDH').AsString;
    xTReg   := DM1.cdsQry6.FieldByName('TREGID').AsString;

    if length(xIGVMtoOr) > 0 then
    begin
      //GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xIgvMO, xIgvMN, xIgvME, xCuenta, xCpto, xNDoc, xSerie,
      //                     xClie, xRUC, xDH, xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
      //                     xDD, xTri, xSem, xSS, xAAMM, xAA, xMM)//Lineas en CxC302

      GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xMontoOri, xMontoNac, xMontoExt, xCuenta ,xCpto, xNDoc, xSerie,
                           xClie, xRUC, xDH,xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
                           xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);
    end;//Igv

    xTipDet:=''; xTReg:=''; xDH:='';
    xTipDet :='TO';
    DM1.cdsQry6.Filtered :=false;
    DM1.cdsQry6.Filter := 'TIPDET='+Quotedstr('TO');
    DM1.cdsQry6.Filtered := true;
    xCuenta := DM1.cdsQry6.FieldByName('CUENTAID').AsString;
    xCPto   := DM1.cdsQry6.FieldByName('CPTOID').AsString;
    xDH     := DM1.cdsQry6.FieldByName('CCDH').AsString;
    xTReg   := DM1.cdsQry6.FieldByName('TREGID').AsString;

    if length(xMontoOri) >0 then
    begin
      //GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet,xTReg,xTotalMO,xTotalMN,xTotalME,xCuenta,xCpto,xNDoc,xSerie,
      //                     xClie, xRUC, xDH, xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
      //                     xDD, xTri, xSem, xSS, xAAMM, xAA, xMM)//Lineas en CxC302

      GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia, xTipDet, xTReg, xMontoOri, xMontoNac, xMontoExt, xCuenta ,xCpto, xNDoc, xSerie,
                           xClie, xRUC, xDH,xTDoc, xTDiar, xNoReg, xClax, xTMonid, xTCamb,
                           xDD, xTri, xSem, xSS, xAAMM, xAA, xMM);
    end;//Total}
End;

Procedure TFGNDebito.GeneraRegistroCxC301(xFecComp, xTMes, xTAno, xCia,
   xxCuenta, xxCpto, xxNDoc, xxSerie, xxClax, xxClie, xClieDes, xxRUC, xxNoReg,
   xxTDiar, xxTDoc, xxTMonid, xxTCamb, xxGravad, xxIgv, xxIsc, xxFlete,
   xMontoOri, xMontoNac, xMontoExt, xxSalMo, xxSalMn, xxSalMe,
  //xxCpTot, xxTot,
   xxDD, xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM: String);
Var
   xSQL, xAnoMes, xVeid: String;
Begin
   xAnoMes := xTAno + xTMes;

   xSQL := 'CLAUXID=' + Quotedstr(xxClax) + ' ' +
      'AND CLIEID=' + Quotedstr(xxClie);
   DM1.BuscaQry2('dspUltTGE', 'TGE204', 'VEID', xSQL, 'VEID');

   xVeid := DM1.cdsQry6.fieldbyname('VEID').AsString;

   xSQL := 'INSERT INTO CXC301 (CIAID, CCANOMES, TDIARID, CCNOREG, ' +
      'CCFCMPRB, CLAUXID, CLIEID, CLIERUC, DOCID, CCSERIE, ' +
      'CCNODOC, CCFEMIS, CCFVCMTO, TMONID, FLAGVAR, CCTCAMPR, ' +
      'CCESTADO, CC_CONTA, VEID, CCGRAVAD, TVTAID, ' +
      'CCPEDIDO, CCIGV, CCISC, CCFLETE, CCMTOORI, CCMTOLOC, CCMTOEXT, ' +
      'CCSALORI, CCSALLOC, CCSALEXT, ' +
      'CCAASEM, CCAAAA, CCMM, CCDD, CCTRI, CCSEM, CCSS, ' +
      'CCAATRI, CCAASS, CCUSER, CCFREG, CCHREG, CLIEDES, ' +
      'CCFLAGVTA, UBIID) ' +
      'VALUES (' +
      Quotedstr(xCia) + ', ' + Quotedstr(xAnoMes) + ', ' + Quotedstr(xxTDiar) + ', ' + Quotedstr(xxNoReg) + ', ' +
      Quotedstr(xFecComp) + ', ' + Quotedstr(xxClax) + ', ' + Quotedstr(xxClie) + ', ' + Quotedstr(xxRUC) + ', ' +
      Quotedstr(xxTDoc) + ', ' + Quotedstr(xxSerie) + ', ' + Quotedstr(xxNDoc) + ', ' + Quotedstr(xFecComp) + ', ' +
      Quotedstr(xFecComp) + ', ' + Quotedstr(xxTMonid) + ', ' + Quotedstr('') + ', ' +
      xxTCamb + ', ' + Quotedstr('P') + ', ' + Quotedstr('N') + ', ' +
      Quotedstr(xVeid) + ', ' + xxGravad + ', ' + Quotedstr('') + ', ' + Quotedstr('') + ', ' +
      xxIgv + ', ' + xxIsc + ', ' + xxFlete + ', ' + xMontoOri + ', ' + xMontoNac + ', ' + xMontoExt + ', ' +
      xxSalMo + ', ' + xxSalMn + ', ' + xxSalMe + ', ' +
          //xxCpTot+', '+xxTot+', '+
   Quotedstr(xTAno + xxSem) + ', ' + Quotedstr(xTAno) + ', ' + Quotedstr(xTMes) + ', ' + Quotedstr(xxDD) + ', ' +
      Quotedstr(xxTri) + ', ' + Quotedstr(xxSem) + ', ' + Quotedstr(xxSS) + ', ' + Quotedstr(xTAno + xxTri) + ', ' +
      Quotedstr(xTAno + xxSS) + ', ' + Quotedstr(dm1.wUsuario) + ', ' +
      Quotedstr(FormatDateTime(DM1.wFormatFecha, StrtoDate(xFec_Sis))) + ', ' +
      DM1.wRepTimeServi + ', ' +
      Quotedstr(xClieDes) + ', ' + Quotedstr('') + ', ' + Quotedstr('') +
      ')';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;
End;

Procedure TFGNDebito.GeneraRegistroCxC302(xFecComp, xTMes, xTAno, xCia,
   xxTipDet, xxTReg, xxMontoMO, xxMontoMN, xxMontoME, xxCuenta, xxCpto,
   xxNDoc, xxSerie, xxClie, xxRUC, xxDH, xxTDoc, xxTDiar, xxNoReg, xxClax, xxTMonid, xxTCamb,
   xxDD, xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM: String);
Var
   xSQL, xxGlosa: String;
   xAnoMes, xmes: String;
   wano, wMes, wDia: word;
Begin
   xAnoMes := xTAno + xTMes;
   If Length(xxCuenta) > 0 Then
   Begin
      xSQL := 'CIAID=' + Quotedstr(xCia) + ' ' +
         'AND CPTOID=' + Quotedstr(xxCpto);
      BuscaQry('dspUltTGE', 'CXC201', 'CPTODES', xSQL, 'CPTODES');
      xxGlosa := DM1.cdsQry.fieldbyname('CPTODES').AsString;
   End
   Else
      xxGlosa := '';

   xSQL := 'INSERT INTO CXC302 (CIAID, CCANOMES, TDIARID, CCNOREG, ' +
      'CPTOID, CUENTAID, CLAUXID, CLIEID, CLIERUC, DOCID, ' +
      'CCSERIE, CCNODOC, CCGLOSA, CCDH, TMONID, CCTCAMPR, ' +
      'CCMTOORI, CCMTOLOC, CCMTOEXT, CCFEMIS, CCFCOMP, ' +
      'CCESTADO, CCAAAA, CCMM, CCDD, CCTRI, CCSEM, CCSS, ' +
      'CCAATRI, CCAASEM, CCUSER, CCFREG, CCHREG, ' +
      'TREGID, TIPDET) ' +
      'VALUES (' +
      Quotedstr(xCia) + ', ' + Quotedstr(xAnoMes) + ', ' + Quotedstr(xxTDiar) + ', ' + Quotedstr(xxNoReg) + ', ' +
      Quotedstr(xxCpTO) + ', ' + Quotedstr(xxCuenta) + ', ' + Quotedstr(xxClax) + ', ' + Quotedstr(xxClie) + ', ' + Quotedstr(xxRUC) + ', ' +
      Quotedstr(xxTDoc) + ', ' + Quotedstr(xxSerie) + ', ' + Quotedstr(xxNDoc) + ', ' + Quotedstr(xxGlosa) + ', ' + Quotedstr(xxDH) + ', ' +
      Quotedstr(xxTMonid) + ', ' + xxTCamb + ', ' + xxMONTOMO + ', ' + xxMONTOMN + ', ' + xxMONTOME + ', ' +
      Quotedstr(xFecComp) + ', ' + Quotedstr(xFecComp) + ', ' +
      Quotedstr('P') + ', ' +
      Quotedstr(xTAno) + ', ' + Quotedstr(xTMes) + ', ' + Quotedstr(xxDD) + ', ' +
      Quotedstr(xxTri) + ', ' + Quotedstr(xxSem) + ', ' + Quotedstr(xxSS) + ', ' + Quotedstr(xTAno + xxTri) + ', ' +
      Quotedstr(xTAno + xxSem) + ', ' + Quotedstr(dm1.wUsuario) + ', ' +
      Quotedstr(FormatDateTime(DM1.wFormatFecha, StrtoDate(xFec_Sis))) + ', ' +
      DM1.wRepTimeServi + ', ' + Quotedstr(xxTReg) + ', ' + Quotedstr(xxTipDet) +
      ')';
  //xSQL:=xSQL;
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
    //DM1.ControlTran( 1, nil, '' );
   End;
End;

Procedure TFGNDebito.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
  //if FGNDebito.ActiveControl is twwdbgrid then
    //Exit ;
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFGNDebito.FormActivate(Sender: TObject);
Begin
 //wsNDe   := DM1.BuscaQry2('dspTGE','TGE110','DOCID','DOCMOD=''CXC'' AND DOC_FREG=''P'' AND DOCTIPREG=''ND''','DOCID');
   xWhere := 'SELECT ' + dm1.wRepFuncChar + dm1.wRepFecServi + ', ' + QuotedStr(DM1.wFormatFServ) + ') "FECHA" FROM DUAL';
   DM1.cdsReporte.Close;
   dm1.cdsReporte.DataRequest(xWhere);
   dm1.cdsReporte.Open;
   xFec_Sis := dm1.cdsReporte.FieldByName('FECHA').AsString;

   Filtracds(DM1.cdsDoc, 'SELECT * FROM TGE110 WHERE DOCMOD=''CXC''');
   DM1.cdsDoc.Filter := 'DOCID=' + QuotedStr(DM1.wsNDe);
   DM1.cdsDoc.Filtered := True;

  {xWhere:='SELECT * FROM CXC208';

  DM1.cdsQry12.Close;
  DM1.cdsQry12.DataRequest(xWhere);
  DM1.cdsQry12.Open;

  if DM1.cdsQry12.RecordCount=0 then
    Raise Exception.Create('No Existen Conceptos de Notas de Debito de esta Moneda');

  DM1.cdsQry12.Filter:='CPTOREFIN=''S''';
  DM1.cdsQry12.Filtered:=True;

  dblcdConceptoND.LookupTable:=DM1.cdsQry12;
  dblcdConceptoND.LookupField:='CPTOCAB';

  if (DM1.cdsQry12.RecordCount=1) then
  begin
     dblcdConceptoND.text:=DM1.cdsQry12.FieldByName('CPTOCAB').AsString;
     dblcdConceptoND.enabled:=False;
  end
  else
  begin
    DM1.cdsQry12.Filter:='';
    DM1.cdsQry12.Filtered:=False;
    dblcdConceptoND.text:='';
    dblcdConceptoND.enabled:=True;
  end;
  dblcdConceptoND.Selected.Clear;
  dblcdConceptoND.Selected.Add('CPTOCAB'#9'12'#9'Concepto'#9'T');
  dblcdConceptoND.Selected.Add('CPTODES'#9'50'#9'Descripción'#9'T');
  dblcdConceptoND.Refresh;}

   edtMonto.Text := xMonto;
End;

Procedure TFGNDebito.dblcNDDocExit(Sender: TObject);
Begin
   xWhere := 'DOCID=' + '''' + dblcNDDoc.Text + '''' + ' AND ' +
      'DOCMOD=' + '''' + DM1.wModulo + '''';
   xNDTDiario := BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'TDIARID');
 //DM1.cdsSerie.Filter:='DOCID='+QuotedStr(dblcNDDoc.text);
   DM1.cdsSerie.Filtered := True;

End;

Procedure TFGNDebito.dblcTMonExit(Sender: TObject);
Begin
   xWhere := 'TMONID=' + QuotedStr(dblcTMon.Text) + ' ' +
      'AND (TMON_LOC=''L'' OR TMON_LOC=''E'')';

   edtTMon.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMON_LOC', xWhere, 'TMONDES');

   xWhere := 'SELECT * FROM CXC208 ' +
      'WHERE CIAID=' + QuotedStr(xCia) + ' ' +
      'AND DOCID=' + QuotedStr(dblcNDDoc.Text) + ' ' +
      'AND TMONID=' + QuotedStr(dblcTMon.Text);

   DM1.cdsQry12.Close;
   DM1.cdsQry12.DataRequest(xWhere);
   DM1.cdsQry12.Open;

   If DM1.cdsQry12.RecordCount = 0 Then
      Raise Exception.Create('No Existen Conceptos de Notas de Debito de esta Moneda');

   dblcdConceptoND.LookupTable := DM1.cdsQry12;
   dblcdConceptoND.LookupField := 'CPTOCAB';

   If (DM1.cdsQry12.RecordCount = 1) Then
   Begin
      dblcdConceptoND.text := DM1.cdsQry12.FieldByName('CPTOCAB').AsString;
      dblcdConceptoND.enabled := False;
   End
   Else
   Begin
      DM1.cdsQry12.Filter := '';
      DM1.cdsQry12.Filtered := False;
      dblcdConceptoND.text := '';
      dblcdConceptoND.enabled := True;
   End;
   dblcdConceptoND.Selected.Clear;
   dblcdConceptoND.Selected.Add('CPTOCAB'#9'12'#9'Concepto'#9'T');
   dblcdConceptoND.Selected.Add('CPTODES'#9'50'#9'Descripción'#9'T');
   dblcdConceptoND.Refresh;
End;

Procedure TFGNDebito.bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

procedur

