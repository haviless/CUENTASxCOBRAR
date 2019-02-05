Unit CXC318;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ExtCtrls;

Type
   TFToolCanje = Class(TForm)
      pnGLT: TPanel;
      BitBtn1: TBitBtn;
      lblContador: TLabel;
      Procedure BitBtn1Click(Sender: TObject);
   Private
    { Private declarations }
      Procedure GeneraAsientoCxC302(xxNoReg: String);
      Procedure GeneraDiferenciaCambioCxC302(xReg, xTipDet: String; xxTotal: boolean);

   Public
    { Public declarations }
   End;

Var
   FToolCanje: TFToolCanje;
   sdblccia, sdblcTDiario, sedtCanje: String;
   xTAno, xTMes: String;
   dDebe, dHabe: double;
Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFToolCanje.BitBtn1Click(Sender: TObject);
Var
   sSQL, xnoreg: String;
Begin
   DM1.cdsCCanje.First;
   While Not DM1.cdsCCanje.EOF Do
   Begin
      lblContador.caption := IntToStr(DM1.cdsCCanje.RecNo) + ' de ' + IntToStr(DM1.cdsCCanje.RecordCount);
      Application.ProcessMessages;
      Filtracds(DM1.cdsCanjes, 'Select * from CXC304 WHERE '
         + ' CIAID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CIAID').AsString) + ' AND '
         + ' TCANJEID=' + '''' + 'LC' + '''' + ' AND '
         + ' CCCANJE=' + QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString) + ' AND '
         + ' CLIEID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CLIEID').AsString));

      Filtracds(DM1.cdsLetras, 'SELECT * FROM CXC301 WHERE '
         + ' CIAID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CIAID').AsString) + ' AND '
         + ' TCANJEID=' + '''' + 'LC' + '''' + ' AND '
         + ' CCCANJE=' + QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString) + ' AND '
         + ' CLIEID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CLIEID').AsString));

      Filtracds(DM1.cdsDetCxC, 'SELECT * FROM CXC302 WHERE '
         + ' CIAID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CIAID').AsString) + ' AND '
         + ' TCANJEID=' + '''' + 'LC' + '''' + ' AND '
         + ' CCCANJE=' + QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString) + ' AND '
         + ' CLIEID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CLIEID').AsString));

      DM1.cdsDetCxC.First;
      xnoreg := DM1.cdsDetCxC.FieldByName('CCNOREG').AsString;
      While Not DM1.cdsDetCxC.EOF Do
      Begin
         Application.ProcessMessages;
         DM1.cdsDetCxC.Delete;
      End;
      DM1.AplicaDatos(DM1.cdsDetCxC, 'DetCxC');
      GeneraAsientoCxC302(xnoreg);
      DM1.AplicaDatos(DM1.cdsDetCxC, 'DetCxC');
      sSQL := ' UPDATE CXC307 SET CJ_CONTA=''N'' WHERE ' +
         ' CIAID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CIAID').AsString) + ' AND ' +
         ' TCANJEID=' + QuotedStr(DM1.cdsCCanje.FieldByName('TCANJEID').AsString) + ' AND ' +
         ' CANJE=' + QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString) + ' AND ' +
         ' CLIEID=' + QuotedStr(DM1.cdsCCanje.FieldByName('CLIEID').AsString);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
      DM1.cdsCCanje.Next;
   End;

End;

Procedure TFToolCanje.GeneraAsientoCxC302(xxNoreg: String);
Var
   sSQL, xTReg, xDH, xCpto, xCta, xNoReg, xTAutoNum, xGlosa: String;
   bDifCambio: boolean;
   nNoReg: integer;
   a, m, d: word;
   dTCambCje: double;
Begin
   sdblccia := DM1.cdsCCanje.FieldByName('CIAID').AsString;
   sdblcTDiario := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
   sedtCanje := DM1.cdsCCanje.FieldByName('CANJE').AsString;

   DecodeDate(DM1.cdsCCanje.FieldByName('CJFCANJE').AsDateTime, a, m, d);
   xTAno := StrZero(IntToStr(a), 4);
   xTMes := StrZero(IntToStr(m), 2);

   DM1.cdsCanjes.First;
   dTCambCje := FRound(DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);

   xTAutoNum := DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', DM1.cdsCCanje.FieldByName('TDIARID').AsString);
   xNoReg := DM1.UltimoRegistro(xTAutoNum, sdblcCia, DM1.cdsCCanje.FieldByName('TDIARID').AsString, xTAno, xTMes);
   nNoReg := StrToInt(xNoReg);
   xNoReg := '';
   While Length(xNoReg) = 0 Do
   Begin
      xNoReg := DM1.GrabaUltimoRegistro(xTAutoNum, sdblcCia, sdblcTDiario, xTAno, xTMes, nNoReg);
      xNoReg := StrZero(xNoReg, 10);
      If Not BuscaCxCReg(sdblcCia, DM1.cdsCCanje.FieldByName('TDIARID').AsString, xTAno + xTMes, xNoReg) Then
      Begin
         xNoReg := StrZero(xNoReg, 10);
         Break;
      End;
      //xNoReg:='';
      nNoReg := nNoReg + 1;
   End;
   //xNoReg:=xxNoReg;

   bDifCambio := False;
   xCpto := BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,TREGID,CCDH,CUENTAID,TIPDET,CPTODES', 'CIAID=' + QuotedStr(sdblcCia) +
      ' AND CPTOCAB=' + QuotedStr(DM1.cdsCCanje.FieldByName('CPTOID').AsString), 'CPTOCAB');

   xTReg := DM1.cdsQry.FieldByName('TREGID').AsString;
   xDH := DM1.cdsQry.FieldByName('CCDH').AsString;
   xCpto := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
   xCta := DM1.cdsQry.FieldByName('CUENTAID').AsString;
   xGlosa := DM1.cdsQry.FieldByName('CPTODES').AsString;

   DM1.cdsLetras.DisableControls;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.EOF Do
   Begin
      Application.ProcessMessages;
      DM1.cdsDetCxC.Insert;
      DM1.cdsDetCxC.FieldByName('TIPDET').AsString := DM1.cdsQry.FieldByName('TIPDET').AsString;
      DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat;
      DM1.cdsDetCxC.FieldByName('TREGID').AsString := xTReg;
      DM1.cdsDetCxC.FieldByName('CCDH').AsString := xDH;

      DM1.cdsDetCxC.FieldByName('TMONID').AsString := DM1.cdsLetras.FieldByName('TMONID').AsString;
      DM1.cdsDetCxC.FieldByName('CPTOID').AsString := xCpto;
      DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := xCta;

      If DM1.cdsDetCxC.FieldByName('TMONID').Value = DM1.wTMonLoc Then
      Begin
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / dTCambCje, 15, 2);
      End
      Else
      Begin
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * dTCambCje, 15, 2);
      End;

      DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsCCanje.FieldByName('CJGLOSA').AsString;

      DM1.cdsDetCxC.FieldByName('CIAID').AsString := DM1.cdsLetras.FieldByName('CIAID').AsString;
      DM1.cdsDetCxC.FieldByName('TDIARID').AsString := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
      DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg; //DM1.cdsLetras.FieldByName('CCNOREG').AsString;
      DM1.cdsDetCxC.FieldByName('CCAAAA').AsString := DM1.cdsCCanje.FieldByName('CJAA').AsString;
      DM1.cdsDetCxC.FieldByName('CCANOMES').AsString := DM1.cdsCCanje.FieldByName('CJAAMM').AsString;
      DM1.cdsDetCxC.FieldByName('CLAUXID').AsString := DM1.cdsCCanje.FieldByName('CLAUXID').AsString;
      DM1.cdsDetCxC.FieldByName('CLIEID').AsString := DM1.cdsCCanje.FieldByName('CLIEID').AsString;
      DM1.cdsDetCxC.FieldByName('CLIERUC').AsString := DM1.cdsCCanje.FieldByName('CLIERUC').AsString;
      DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsLetras.FieldByName('DOCID').AsString;
      DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsLetras.FieldByName('CCSERIE').AsString;
      DM1.cdsDetCxC.FieldByName('TCANJEID').AsString := 'LC';
      DM1.cdsDetCxC.FieldByName('CCCANJE').AsString := sedtcanje;
      DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsLetras.FieldByName('CCNODOC').AsString;
      DM1.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := dTCambCje;
      DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsLetras.FieldByName('CCFEMIS').AsDateTime;
      DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsLetras.FieldByName('CCFEMIS').AsDateTime;
      DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
      DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
      DM1.cdsDetCxC.FieldByName('CCUSER').Value := DM1.cdsCCanje.FieldByName('CJUSER').AsString;
      DM1.cdsDetCxC.FieldByName('CCFREG').Value := DM1.cdsCCanje.FieldByName('CJFREG').AsDateTime;
      DM1.cdsDetCxC.FieldByName('CCHREG').Value := DM1.cdsCCanje.FieldByName('CJFHOR').AsDateTime;
      DM1.cdsDetCxC.FieldByName('CCMM').AsString := DM1.cdsCCanje.FieldByName('CJMM').AsString;
      DM1.cdsDetCxC.FieldByName('CCDD').AsString := DM1.cdsCCanje.FieldByName('CJDD').AsString;
      DM1.cdsDetCxC.FieldByName('CCTRI').AsString := DM1.cdsCCanje.FieldByName('CJTRI').AsString;
      DM1.cdsDetCxC.FieldByName('CCSEM').AsString := DM1.cdsCCanje.FieldByName('CJSEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCSS').AsString := DM1.cdsCCanje.FieldByName('CJSS').AsString;
      DM1.cdsDetCxC.FieldByName('CCAATRI').AsString := DM1.cdsCCanje.FieldByName('CJAATRI').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASEM').AsString := DM1.cdsCCanje.FieldByName('CJAASEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASS').AsString := DM1.cdsCCanje.FieldByName('CJAASS').AsString;
      DM1.cdsDetCxC.Post;
      DM1.cdsLetras.Next;
   End;
   DM1.cdsLetras.DisableControls;

   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.EOF Do
   Begin
      Application.ProcessMessages;
      xCpto := BuscaQry('dspTGE', 'CXC208', 'CPTOCAB,TREGID,CCDH,CUENTAID,TIPDET,CPTODES', 'CIAID=' + QuotedStr(sdblcCia) +
         ' AND CPTOCAB=' + QuotedStr(DM1.cdsCanjes.FieldByName('CPTOTOT').AsString), 'CPTOCAB');

      xTReg := DM1.cdsQry.FieldByName('TREGID').AsString;
      xDH := DM1.cdsQry.FieldByName('CCDH').AsString;
      xCpto := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
      xCta := DM1.cdsQry.FieldByName('CUENTAID').AsString;
      xGlosa := DM1.cdsQry.FieldByName('CPTODES').AsString;

      DM1.cdsDetCxC.Insert;
      DM1.cdsDetCxC.FieldByName('TIPDET').AsString := DM1.cdsQry.FieldByName('TIPDET').AsString;

      If DM1.cdsCanjes.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat
      Else
         DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;

      DM1.cdsDetCxC.FieldByName('TREGID').AsString := xTReg;
      If xDH = 'D' Then
         DM1.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
      Else
         DM1.cdsDetCxC.FieldByName('CCDH').AsString := 'D';

      DM1.cdsDetCxC.FieldByName('TMONID').AsString := DM1.cdsCanjes.FieldByName('TMONID').AsString;
      DM1.cdsDetCxC.FieldByName('CPTOID').AsString := xCpto;
      DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := xCta;
      If (DM1.cdsCanjes.FieldByName('TMONID').AsString = DM1.wTMonLoc) And (DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc) Then
      Begin
         If DM1.cdsDetCxC.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat / DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
         End;
         bDifCambio := False;
      End
      Else
      Begin
         bDifCambio := (FRound(DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 4) <> FRound(DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 4));
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2);
      End;

      BuscaQry('dspTGE', 'CXC301', 'CCNODOC,CCFEMIS,CCFVCMTO', 'CIAID=' + QuotedStr(sdblcCia) +
         ' AND DOCID=' + QuotedStr(DM1.cdsCanjes.FieldByName('DOCID').AsString) +
         ' AND CCSERIE=' + QuotedStr(DM1.cdsCanjes.FieldByName('CCSERIE').AsString) +
         ' AND CCNODOC=' + QuotedStr(DM1.cdsCanjes.FieldByName('CCNODOC').AsString) +
         ' AND CLIEID=' + QuotedStr(DM1.cdsCanjes.FieldByName('CLIEID').AsString), 'CCNODOC');
      DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
      DM1.cdsDetCxC.FieldByName('CIAID').AsString := DM1.cdsCanjes.FieldByName('CIAID').AsString;
      DM1.cdsDetCxC.FieldByName('TDIARID').AsString := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
      DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg; //DM1.cdsCanjes.FieldByName('CCNOREG').AsString;
      DM1.cdsDetCxC.FieldByName('CCAAAA').AsString := DM1.cdsCCanje.FieldByName('CJAA').AsString;
      DM1.cdsDetCxC.FieldByName('CCANOMES').AsString := DM1.cdsCCanje.FieldByName('CJAAMM').AsString;
      DM1.cdsDetCxC.FieldByName('CLAUXID').AsString := DM1.cdsCCanje.FieldByName('CLAUXID').AsString;
      DM1.cdsDetCxC.FieldByName('CLIEID').AsString := DM1.cdsCCanje.FieldByName('CLIEID').AsString;
      DM1.cdsDetCxC.FieldByName('CLIERUC').AsString := DM1.cdsCCanje.FieldByName('CLIERUC').AsString;
      DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsCanjes.FieldByName('DOCID').AsString;
      DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
      DM1.cdsDetCxC.FieldByName('TCANJEID').AsString := 'LC';
      DM1.cdsDetCxC.FieldByName('CCCANJE').AsString := sedtcanje;
      DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
      DM1.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := dTCambCje;
      DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsQry.FieldByName('CCFEMIS').AsDaTeTime;
      DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsQry.FieldByName('CCFVCMTO').AsDaTeTime;
      DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
      DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
      DM1.cdsDetCxC.FieldByName('CCUSER').Value := DM1.cdsCCanje.FieldByName('CJUSER').AsString;
      DM1.cdsDetCxC.FieldByName('CCFREG').Value := DM1.cdsCCanje.FieldByName('CJFREG').AsDaTeTime;
      DM1.cdsDetCxC.FieldByName('CCHREG').Value := DM1.cdsCCanje.FieldByName('CJFHOR').AsDaTeTime;
      DM1.cdsDetCxC.FieldByName('CCMM').AsString := DM1.cdsCCanje.FieldByName('CJMM').AsString;
      DM1.cdsDetCxC.FieldByName('CCDD').AsString := DM1.cdsCCanje.FieldByName('CJDD').AsString;
      DM1.cdsDetCxC.FieldByName('CCTRI').AsString := DM1.cdsCCanje.FieldByName('CJTRI').AsString;
      DM1.cdsDetCxC.FieldByName('CCSEM').AsString := DM1.cdsCCanje.FieldByName('CJSEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCSS').AsString := DM1.cdsCCanje.FieldByName('CJSS').AsString;
      DM1.cdsDetCxC.FieldByName('CCAATRI').AsString := DM1.cdsCCanje.FieldByName('CJAATRI').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASEM').AsString := DM1.cdsCCanje.FieldByName('CJAASEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASS').AsString := DM1.cdsCCanje.FieldByName('CJAASS').AsString;
      DM1.cdsDetCxC.Post;
      If bDifCambio Then
      Begin
         If xDH = 'D' Then
         Begin
            If FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) >
               FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D2', false);
            If FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) <
               FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D1', false);
         End
         Else
         Begin
            If FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) >
               FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D1', false);
            If FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2) <
               FRound(DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) Then
               GeneraDiferenciaCambioCxC302(xNoReg, 'D2', false);
         End;
      End;
      DM1.cdsCanjes.Next;
   End;
   DM1.cdsCanjes.DisableControls;

   dHabe := OperClientDataSet(DM1.cdsDetCxC, 'SUM(' + 'CCMTOLOC' + ')', 'CCDH=''H''');
   dDebe := OperClientDataSet(DM1.cdsDetCxC, 'SUM(' + 'CCMTOLOC' + ')', 'CCDH=''D''');

   If FRound(dHabe, 15, 2) > FRound(dDebe, 15, 2) Then
   Begin
      GeneraDiferenciaCambioCxC302(xNoReg, 'D2', true);
   End
   Else
   Begin
      If FRound(dHabe, 15, 2) < FRound(dDebe, 15, 2) Then
         GeneraDiferenciaCambioCxC302(xNoReg, 'D1', true);
   End;

End;

Procedure TFToolCanje.GeneraDiferenciaCambioCxC302(xReg, xTipDet: String; xxTotal: boolean);
Var
   sTRegIdDes, sCtaDif, sCptoDif, sDifDH, sDifTRegId: String;
Begin
   sCtaDif := BuscaQry('dspTGE', 'TGE128', '*', 'TIPDET=' + QuotedStr(xTipDet), 'CUENTAMN');
   sCptoDif := DM1.cdsQry.FieldByName('CPTOMN').AsString;
   sDifDH := DM1.cdsQry.FieldByName('CCDH').AsString;
   sTRegIdDes := DM1.cdsQry.FieldByName('TREGDES').AsString;
   sDifTRegId := DM1.cdsQry.FieldByName('TREGID').AsString;

   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('TIPDET').AsString := xTipDet;
   DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := 0;
   DM1.cdsDetCxC.FieldByName('TREGID').AsString := sDifTRegId;
   DM1.cdsDetCxC.FieldByName('CCDH').AsString := sDifDH;

   DM1.cdsDetCxC.FieldByName('TMONID').AsString := DM1.cdsCanjes.FieldByName('TMONID').AsString;
   DM1.cdsDetCxC.FieldByName('CPTOID').AsString := sCptoDif;
   DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := sCtaDif;

   DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := 0;

   If xxTotal Then
      DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(Abs(dDebe - dHabe), 15, 2)
   Else
      DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat :=
         Abs(FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2) -
         FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat * DM1.cdsCanjes.FieldByName('CCTCAMDOC').AsFloat, 15, 2));

   DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := sTRegIdDes;

   DM1.cdsDetCxC.FieldByName('CIAID').AsString := DM1.cdsCanjes.FieldByName('CIAID').AsString;
   DM1.cdsDetCxC.FieldByName('TDIARID').AsString := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
   DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := xReg;
   DM1.cdsDetCxC.FieldByName('CCAAAA').AsString := DM1.cdsCCanje.FieldByName('CJAA').AsString;
   DM1.cdsDetCxC.FieldByName('CCANOMES').AsString := DM1.cdsCCanje.FieldByName('CJAAMM').AsString;
   DM1.cdsDetCxC.FieldByName('CLAUXID').AsString := DM1.cdsCCanje.FieldByName('CLAUXID').AsString;
   DM1.cdsDetCxC.FieldByName('CLIEID').AsString := DM1.cdsCCanje.FieldByName('CLIEID').AsString;
   DM1.cdsDetCxC.FieldByName('CLIERUC').AsString := DM1.cdsCCanje.FieldByName('CLIERUC').AsString;

   If xxTotal Then
   Begin
      DM1.cdsDetCxC.FieldByName('DOCID').AsString := '';
      DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := '';
      DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := '';
      DM1.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := FRound(DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);
   End
   Else
   Begin
      DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsCanjes.FieldByName('DOCID').AsString;
      DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
      DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
      DM1.cdsDetCxC.FieldByName('CCTCAMPR').Asfloat := FRound(DM1.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 4);
   End;

   DM1.cdsDetCxC.FieldByName('TCANJEID').AsString := 'LC';
   DM1.cdsDetCxC.FieldByName('CCCANJE').AsString := sedtCanje;
   DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsCanjes.FieldByName('CCFEMIS').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsCanjes.FieldByName('CCFVCMTO').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
   DM1.cdsDetCxC.FieldByName('CCUSER').Value := DM1.cdsCCanje.FieldByName('CJUSER').AsString;
   DM1.cdsDetCxC.FieldByName('CCFREG').Value := DM1.cdsCCanje.FieldByName('CJFREG').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCHREG').Value := DM1.cdsCCanje.FieldByName('CJFHOR').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCMM').AsString := DM1.cdsCCanje.FieldByName('CJMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCDD').AsString := DM1.cdsCCanje.FieldByName('CJDD').AsString;
   DM1.cdsDetCxC.FieldByName('CCTRI').AsString := DM1.cdsCCanje.FieldByName('CJTRI').AsString;
   DM1.cdsDetCxC.FieldByName('CCSEM').AsString := DM1.cdsCCanje.FieldByName('CJSEM').AsString;
   DM1.cdsDetCxC.FieldByName('CCSS').AsString := DM1.cdsCCanje.FieldByName('CJSS').AsString;
   DM1.cdsDetCxC.FieldByName('CCAATRI').AsString := DM1.cdsCCanje.FieldByName('CJAATRI').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASEM').AsString := DM1.cdsCCanje.FieldByName('CJAASEM').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASS').AsString := DM1.cdsCCanje.FieldByName('CJAASS').AsString;
   DM1.cdsDetCxC.Post;
End;

End.

