Unit CxC218;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Buttons, Mask, wwdbedit,
   wwdblook, db, Wwdatsrc, DBClient, wwclient, ComCtrls, ppVar, ppCtrls,
   ppPrnabl, ppClass, ppDB, ppBands, ppProd, ppReport, ppComm, ppRelatv,
   ppCache, ppDBPipe, wwdbdatetimepicker, ActnList;

Type
   TFUBISIT = Class(TForm)
      pnlUBISIT: TPanel;
      Z2bbtnAceptar: TBitBtn;
      Z2bbtnCancel: TBitBtn;
      Bevel1: TBevel;
      dblcUBI: TwwDBLookupCombo;
      dbeUBI: TwwDBEdit;
      dblcSIT: TwwDBLookupCombo;
      dbeSIT: TwwDBEdit;
      dbgUBISIT: TwwDBGrid;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      ppDBPipeline1: TppDBPipeline;
      pprCambio: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppDBText1: TppDBText;
      pptUbica: TppDBText;
      pptsitua: TppDBText;
      ppTclien: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      pplCia: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel8: TppLabel;
      pplUbica: TppLabel;
      ppLSITUA: TppLabel;
      Z2bbtnImprimir: TBitBtn;
      pplNPlanilla: TppLabel;
      lNPlanilla: TppLabel;
      pplFReg: TppLabel;
      lFReg: TppLabel;
      ppLabel9: TppLabel;
      ppDBText2: TppDBText;
      ppLabel1: TppLabel;
      pplTituloLetra: TppLabel;
      ppLabel2: TppLabel;
      ppLabel10: TppLabel;
      ppLabel7: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppSummaryBand1: TppSummaryBand;
      Z2bbtnSuma: TBitBtn;
      dtpFOper: TwwDBDateTimePicker;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ActionList1: TActionList;
      edtNumPlla: TEdit;
      Procedure dblcUBIChange(Sender: TObject);
      Procedure dblcExist(Sender: TObject);
      Procedure dblcNotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure dblcSITChange(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure ppHeaderBand1BeforePrint(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure Z2bbtnImprimirClick(Sender: TObject);
      Procedure dblcUBIExit(Sender: TObject);
      Procedure dblcSITExit(Sender: TObject);
      Procedure Z2bbtnSumaClick(Sender: TObject);
   Private
    { Private declarations }

      grid: TwwDBGrid;
      sUBI, sSIT: String;
   Public
    { Public declarations }
      Procedure GetData;
   End;

Var
   FUBISIT: TFUBISIT;

Implementation

//uses CxCDM, CxC001;
Uses CxCDM, oaCC2000;

{$R *.DFM}

Function FindFields(F: TFields; Const Field: String): Integer;
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

Procedure TFUBISIT.dblcUBIChange(Sender: TObject);
Begin
   sUBI := dblcUBI.Text;
   dbeUBI.Text := DMCXC.cdsUbica.FieldByName('UBICADES').AsString;
End;

Procedure TFUBISIT.dblcExist(Sender: TObject);
Var
   bRq: Boolean;
   cSitOri, cSit2, xWhere: String;
Begin
   If TwwDBCustomLookupCombo(Sender).DataSource <> Nil Then
      bRq := TwwDBCustomLookupCombo(Sender).DataSource.DataSet.FieldByName(TwwDBCustomLookupCombo(Sender).DataField).Required;
   If (bRq) And (trim(TwwDBCustomLookupCombo(Sender).Text) = '') Then
      TwwDBCustomLookupCombo(Sender).DropDown;
                         //3
//   xWhere:= 'SITUAFLAG=''5''';
//   cSit2  := DMCXC.BuscaQry('dspTGE','CXC104','SITUAID',xWhere,'SITUAID');

//   if (cSit2=dblcSIT.Text) then begin
//      Raise Exception.Create('Esta Situación solo se actualiza por Canje');
//   end;
End;

Procedure TFUBISIT.dblcNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFUBISIT.Z2bbtnCancelClick(Sender: TObject);
Begin
   close;
End;

Procedure TFUBISIT.dblcSITChange(Sender: TObject);
Begin
   sSIT := dblcSIT.Text;
   dbeSIT.Text := DMCXC.cdsSitua.FieldByName('SITUADES').AsString;
End;

Procedure TFUBISIT.FormShow(Sender: TObject);
Begin
   DMCXC.cdsUbica.Open;
   DMCXC.cdsSitua.Open;
//  cdsX.Open;

   With dbgUBISIT Do
   Begin
      dataSource := DMCXC.dsQry7;
      Selected.Clear;

      Selected.Add('CCNODOC'#9'12'#9'Nº de~Letra'#9'T');
      Selected.Add('CCNLETBCO'#9'15'#9'Nº de~Letra Banco'#9'F');
      Selected.Add('CCFVCMTO'#9'11'#9'Fecha de~Vencimiento'#9'T');
      Selected.Add('TMONABR'#9'4'#9'TM'#9'T');
      Selected.Add('CCMTOEXT'#9'12'#9'Importe~Original US$'#9'T');
      Selected.Add('CCPAGEXT'#9'12'#9'Importe~Pagado US$'#9'T');
      Selected.Add('CCSALEXT'#9'12'#9'Importe~Saldo US$'#9'T');
      Selected.Add('CCMTOLOC'#9'12'#9'Importe~Original S/.'#9'T');
      Selected.Add('CCPAGLOC'#9'12'#9'Importe~Pagado S/.'#9'T');
      Selected.Add('CCSALLOC'#9'12'#9'Importe~Saldo S/.'#9'T');
      Selected.Add('UBICADES'#9'15'#9'Ubicación'#9'T');
      Selected.Add('SITUADES'#9'15'#9'Situación'#9'T');
      Selected.Add('CLIENDES'#9'30'#9'Cliente'#9'T');
      Selected.Add('CCNPLABCO'#9'15'#9'Nº de Planilla'#9'T');
      Selected.Add('CCFPLABCO'#9'12'#9'Fecha de~Planilla'#9'T');
      Selected.Add('CCUSER'#9'12'#9'Usuario'#9'T');
      Selected.Add('CCFREG'#9'12'#9'Fecha de~Registro'#9'T');
      Selected.Add('CCHREG'#9'12'#9'Hora de~Registro'#9'T');
      Selected.Add('CCFEMIS'#9'10'#9'Fecha de~Giro'#9'T');

      RedrawGrid;
   End;

   dtpFOper.Date := DMCXC.DateS;
   dtpFOper.Enabled := True;

End;

Procedure TFUBISIT.FormCreate(Sender: TObject);
Begin
//  cdsX.Close;
//  cdsX.CreateDataSet;
End;

Procedure TFUBISIT.GetData;
{var
   i, f, j : Integer;}
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
      Raise Exception.Create('No existen registros...');
   End;

   If grid.SelectedList.Count = 0 Then
   Begin
      Raise Exception.Create('No existen registros seleccionados...');
   End;

   For i := 0 To grid.SelectedList.Count - 1 Do
   Begin
      grid.DataSource.DataSet.GotoBookmark(grid.SelectedList.Items[i]);

{    cad:=' (CXC301.CCNODOC='+QuotedStr(grid.DataSource.DataSet.FieldByName('CCNODOC').AsString)+' '+
                   '  AND CXC301.CCANOMES='+QuotedStr(grid.DataSource.DataSet.FieldByName('CCANOMES').AsString)+' '+
                   '  AND CXC301.TDIARID='+QuotedStr(grid.DataSource.DataSet.FieldByName('TDIARID').AsString)+' '+
                   '  AND CXC301.CLIEID='+QuotedStr(grid.DataSource.DataSet.FieldByName('CLIEID').AsString)+' ) ';}
      cad := ' (CXC301.CCNODOC=' + QuotedStr(grid.DataSource.DataSet.FieldByName('CCNODOC').AsString) + ' ) ';

      If i = 0 Then
         cad1 := cad1 + cad
      Else
         cad1 := cad1 + ' OR ' + cad;
   End;

   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT S.SITUADES SITDES, S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(T.TVTADES,''''))) ' +
         ' CLIEDIRINC, ' +
         ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,Z.ZIPID,CXC301.* ' +
         ' FROM CXC301 ' +
         ' LEFT JOIN TGE103 M ON M.TMONID=CXC301.TMONID ' +
         ' LEFT JOIN CXC105 U ON U.UBICAID=CXC301.UBIID ' +
         ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID  ' +
         ' LEFT JOIN FAC106 Z ON Z.TVTAID = C.TVTAID AND Z.ZVTAID=C.ZONVTAID ' +
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
         sSQL := ' SELECT S.SITUADES SITDES, S.SITUADES,LTRIM(RTRIM(NVL(C.CLIEDIR,'''')||'' - ''||NVL(Z.ZVTADES,'''')||'' - ''||NVL(T.TVTADES,''''))) ' +
            ' CLIEDIRINC, ' +
            ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,Z.ZIPID,CXC301.* ' +
            ' FROM CXC301,TGE103 M,CXC105 U,TGE204 C,FAC106 Z,FAC105 T,CXC104 S ' +
            ' WHERE ' +
            ' CXC301.TMONID=M.TMONID(+) AND CXC301.UBIID=U.UBICAID(+) ' +
            ' AND CXC301.CIAID=C.CIAID AND CXC301.CLAUXID=C.CLAUXID AND CXC301.CLIEID=C.CLIEID(+) ' +
            ' AND Z.ZVTAID(+)=C.ZONVTAID AND T.TVTAID(+)=CXC301.TVTAID AND S.SITUAID(+)=CXC301.SITID ' +
            ' AND ' + xSelDoc + ' AND (' + cad1 + ')';
      End;
   End;
   DMCXC.cdsQry7.Close;
   DMCXC.cdsQry7.DataRequest(sSQL);
   DMCXC.cdsQry7.Open;
End;

Procedure TFUBISIT.Z2bbtnAceptarClick(Sender: TObject);
Var
   xWhere, sSQL, sMONEDA, sZONA, sUBICA, sSITUA, sCIA, sTDO, sCND, sCPTO, sCTA: String;
   sSitManda, sNEnv, xNoDoc, xSitAnt, cSit2, cSit3: String;
   dFSIT: TDate;
   bProtesto, bFaltaNLetra: boolean;
   sSitPen1, sSitPen2, sSitOriAce: String;
Begin
   If (Length(dblcUBI.Text) = 0) And (Length(dblcSIT.Text) = 0) Then Exit;

   If DMCXC.VerificaCierre(DMCXC.cdsQry7.FieldByName('CIAID').AsString, dtpFOper.Date) Then
   Begin
      dtpFOper.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   bFaltaNLetra := False;

   xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFOper.Date) + ''' )';
   If (length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) <= 0) And (dblcSIT.text <> '') Then
   Begin
      Raise Exception.Create(' Error :  La Fecha de Operación NO tiene Tipo de Cambio  ');
   End;

   xWhere := 'SITUAFLAG=''6''';
   sSitPen1 := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUAID', xWhere, 'SITUAID'); //ENVIADA A BANCOS COBRANZA

   xWhere := 'SITUAFLAG=''7''';
   sSitPen2 := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUAID', xWhere, 'SITUAID'); //ENVIADA A BANCOS DESCUENTO

   xWhere := 'SITUAFLAG=''5''';
   cSit2 := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUAID', xWhere, 'SITUAID'); //LETRA ACEPTADA

   xWhere := 'SITUAFLAG=''3''';
   cSit3 := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUAID', xWhere, 'SITUAID'); //LETRA EN CARTERA

   sUBICA := dblcUBI.Text;
   sSITUA := dblcSIT.Text;
   dFSIT := dtpFOper.Date;
   xSitAnt := '';
   If Length(dblcSIT.Text) > 0 Then
   Begin
      DMCXC.cdsQry7.DisableControls;
      DMCXC.cdsQry7.First;
      sSitManda := DMCXC.cdsQry7.FieldByName('SITID').AsString;
      While Not DMCXC.cdsQry7.Eof Do
      Begin
         xSitAnt := DMCXC.cdsQry7.FieldByName('SITID').AsString;

         //SE QUITA ESTA PARTE PORQUE SE VA A ACEPTAR LA LETRA POR SITUACION
         {if ((cSit2=dblcSIT.Text) OR (cSit3=dblcSIT.Text)) and ((DMCXC.cdsQry7.FieldByName('SITID').AsString<>sSitPen1) and (DMCXC.cdsQry7.FieldByName('SITID').AsString<>sSitPen2)) then
         begin
            DMCXC.cdsQry7.EnableControls;
            Raise Exception.Create('Esta Situación solo se actualiza por Canje');
         end;}

         If DMCXC.cdsQry7.FieldByName('CCESTADO').AsString = 'I' Then
         Begin
            xNoDoc := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
            DMCXC.cdsQry7.EnableControls;
            Raise Exception.Create('No se ha aceptado el Canje de la Letra:' + xNoDoc);
         End;

         If xSitAnt <> sSitManda Then
         Begin
            xNoDoc := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
            DMCXC.cdsQry7.EnableControls;
            Raise Exception.Create('Existen letras de diferente Situación');
         End;

         If Not DMCXC.CambioSituacion(xSitAnt, sSITUA) Then
         Begin
            xNoDoc := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
            DMCXC.cdsQry7.EnableControls;
            Raise Exception.Create('Letra ' + xNoDoc + ', La Nueva SITUACION NO corresponde');
         End;

         If (Length(DMCXC.cdsQry7.FieldByName('CCOENV').AsString) <> 0) And ((DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString = '6') Or (DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString = '7')) Then
         Begin
            xNoDoc := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
            DMCXC.cdsQry7.EnableControls;
            Raise Exception.Create('Letra ' + xNoDoc + ', ya fue enviada a Banco');
         End;

         If (DMCXC.cdsQry7.FieldByName('CCNLETBCO').AsString = '') Then
         Begin
            bFaltaNLetra := True;
         End;

         DMCXC.cdsQry7.Next;
      End;
   End
   Else
   Begin
      DMCXC.cdsQry7.DisableControls;
      DMCXC.cdsQry7.First;
      While Not DMCXC.cdsQry7.Eof Do
      Begin
         If DMCXC.cdsQry7.FieldByName('CCESTADO').AsString = 'C' Then
         Begin
            DMCXC.cdsQry7.EnableControls;
            Raise Exception.Create('Existen Letras Canceladas');
         End;
         DMCXC.cdsQry7.Next;
      End;
      DMCXC.cdsQry7.EnableControls;
   End;

   // SI ES ACEPTADA POR EL BANCO Y LE FALTA NUMERO DE LETRA
{   if (DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString='A1') and (bFaltaNLetra) then
   begin
     //xNoDoc:=cdsX.Fields.FieldByName('CCNODOC').AsString;
     xNoDoc:=DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
     Raise Exception.Create('Letra '+xNoDoc+', No tiene Número Bancario') ;
   end;}

   // SI ES ENVIO A BANCOS
   If (DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString = '6') Or (DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString = '7') Then
   Begin
      sSQL := 'SELECT MAX(RTRIM(CCOENV)) NUMERO FROM CXC301';
      DMCXC.cdsQry.Close;
      DMCXC.cdsQry.DataRequest(sSQL);
      DMCXC.cdsQry.Open;
      If (DMCXC.cdsQry.FieldByName('NUMERO').IsNull) Or (DMCXC.cdsQry.FieldByName('NUMERO').AsString = '') Then
         sNEnv := '000001'
      Else
         sNEnv := StrZero(IntToStr(StrToInt(DMCXC.cdsQry.FieldByName('NUMERO').AsString) + 1), 6)
   End
   Else
   Begin
      sNEnv := '';
   End;

   DMCXC.cdsQry7.First;

   sCIA := DMCXC.cdsQry7.FieldByName('CIAID').AsString;
   sTDO := DMCXC.cdsQry7.FieldByName('DOCID').AsString;

   While Not DMCXC.cdsQry7.Eof Do
   Begin
      bProtesto := False;
      sCND := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
      sMONEDA := DMCXC.cdsQry7.FieldByName('TMONID').AsString;
      sZONA := DMCXC.cdsQry7.FieldByName('TVTAID').AsString;
      xWhere := ' SELECT * FROM CXC205 WHERE CIAID=' + QuotedStr(sCIA) +
         ' AND SITUAID=' + QuotedStr(sSitua) + ' AND UBICAID=' + QuotedStr(sUBICA) + ' AND TMONID=' + QuotedStr(sMONEDA) +
         ' AND ZONA=' + QuotedStr(sZona) + ' AND TIPCTA<>''D'' ORDER BY ORDEN';

      DMCXC.SetHyst(sCIA, sTDO, sCND);
      sCPTO := '';
      sCTA := '';
      If Length(sSitua) > 0 Then
      Begin
         DMCXC.cdsPlantilla.close;
         DMCXC.cdsPlantilla.DataRequest(xWhere);
         DMCXC.cdsPlantilla.Open;
         DMCXC.cdsPlantilla.Filter := 'TIPDEST=''D''';
         DMCXC.cdsPlantilla.Filtered := True;
         If DMCXC.cdsPlantilla.RecordCount > 0 Then
         Begin
            sCPTO := DMCXC.cdsQry7.FieldByName('CCPTOTOT').AsString;
            sCTA := DMCXC.cdsPlantilla.FieldByName('CUENTAID').AsString;
         End
         Else
         Begin
            sCPTO := DMCXC.cdsQry7.FieldByName('CCPTOTOT').AsString;
            sCTA := DMCXC.cdsQry7.FieldByName('CTATOTAL').AsString;
         End;
         DMCXC.cdsPlantilla.Filter := '';
         DMCXC.cdsPlantilla.Filtered := False;

         If (DMCXC.cdsSitua.FieldByName('FLAGPROTESTO').AsString = 'S') Then
            bProtesto := True;
      End;

      DMCXC.UpdLET(sCIA, sTDO, sCND, sUBICA, sSITUA, sCPTO, sCTA, sCPTO, DMCXC.cdsQry7.FieldByName('CTATOTAL').AsString,
         sNENV, DMCXC.cdsQry7.FieldByName('CCNLETBCO').AsString, dFSIT, bProtesto, '', 0, 0);

      If (DMCXC.cdsSitua.FieldByName('SITCONTA').AsString = 'S') Then
        //UpdCont(sCIA, sTDO, sCND, sUBICA, sSITUA, sMONEDA, sZONA, dFSIT );
         DMCXC.UpdContPlantilla(sCIA, sTDO, sCND, sUBICA, sSITUA, sMONEDA, sZONA, dFSIT);

      DMCXC.cdsQry7.Edit;
      If Length(dblcUBI.Text) > 0 Then
         DMCXC.cdsQry7.FieldByName('UBIID').AsString := dblcUBI.Text;
      If Length(dblcSIT.Text) > 0 Then
         DMCXC.cdsQry7.FieldByName('SITID').AsString := dblcSIT.Text;
      DMCXC.cdsQry7.Post;
      DMCXC.cdsQry7.Next;
   End;

   If (DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString = '6') Or (DMCXC.cdsSitua.FieldByName('SITUAFLAG').AsString = '7') Then
   Begin
      lFReg.visible := True;
      lNPlanilla.visible := True;
      pplFReg.visible := True;
      pplNPlanilla.visible := True;

      lFReg.text := DateToStr(dtpFOper.date);
      lNPlanilla.text := sNEnv;
   End
   Else
   Begin
      lFReg.visible := False;
      lNPlanilla.visible := False;
      pplFReg.visible := False;
      pplNPlanilla.visible := False;

      lFReg.text := '';
      lNPlanilla.text := '';
   End;
   If dblcSIT.text <> '' Then
   Begin
      pplTituloLetra.text := UpperCase(DMCXC.cdsQry7.FieldByName('SITDES').AsString + ' ==> ' + dbeSIT.text);
   End
   Else
   Begin
      pplTituloLetra.text := UpperCase(DMCXC.cdsQry7.FieldByName('UBICADES').AsString + ' ==> ' + dbeUBI.text);
   End;

   pprCambio.Print;
   DMCXC.cdsQry7.EnableControls;
   Close;
   Mantc.RefreshFilter;

End;

Procedure TFUBISIT.ppHeaderBand1BeforePrint(Sender: TObject);
Var
   sCIA: String;
Begin
   sCIA := DMCXC.cdsQry7.FieldByName('CIAID').AsString;
   pplCia.Caption := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CIAID', sCia);
End;

Procedure TFUBISIT.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFUBISIT.Z2bbtnImprimirClick(Sender: TObject);
Begin
   pprCambio.print;
End;

Procedure TFUBISIT.dblcUBIExit(Sender: TObject);
Begin
   If Length(dblcUBI.text) = 0 Then
   Begin
      Raise Exception.Create('Ingrese Nueva Ubicación');
   End;

   sUBI := dblcUBI.text;
   dbeUBI.text := DMCXC.cdsUbica.FieldByName('UBICADES').AsString;
End;

Procedure TFUBISIT.dblcSITExit(Sender: TObject);
Begin
{  if Length(dblcSIT.text)=0 then
  begin
    Raise Exception.Create('Ingrese Nueva Situación');
  end;}

   sSIT := dblcSIT.text;
   dbeSIT.text := DMCXC.cdsSitua.FieldByName('SITUADES').AsString;
End;

Procedure TFUBISIT.Z2bbtnSumaClick(Sender: TObject);
Var
   xTMto, xTPag, xTSal: double;
Begin
   xTMto := 0;
   xTPag := 0;
   xTSal := 0;

//   xTMto := OperClientDataSet( DMCXC.cdsQry7,'SUM('+'CCMTOEXT'+')','');
//   xTPag := OperClientDataSet( DMCXC.cdsQry7,'SUM('+'CCPAGEXT'+')','');
   xTSal := OperClientDataSet(DMCXC.cdsQry7, 'SUM(' + 'CCSALEXT' + ')', '');

//   dbgUBISIT.ColumnByName('CCMTOEXT').FooterValue:=floattostrf(xTMto, ffNumber, 10, 2);
//   dbgUBISIT.ColumnByName('CCPAGEXT').FooterValue:=floattostrf(xTPag, ffNumber, 10, 2);
   dbgUBISIT.ColumnByName('CCSALEXT').FooterValue := floattostrf(xTSal, ffNumber, 10, 2);
End;

End.

