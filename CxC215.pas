Unit CxC215;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Mask, wwdbedit, StdCtrls, wwdblook, ExtCtrls, Buttons, Grids, Wwdbigrd,
   Wwdbgrid, Wwdbspin, db, DBClient, wwclient, ppCache, ppDB, ppDBPipe,
   ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppPrnabl, ppCtrls,
   ppVar, ppViewr, ppModule, daDatMod, Wwkeycb, Variants, ppTypes;

Type
   TFEstCtaCli = Class(TForm)
      pnlHEAD: TPanel;
      grBCIA: TGroupBox;
      Label11: TLabel;
      Label1: TLabel;
      dblcCIA: TwwDBLookupCombo;
      dbeCIA: TwwDBEdit;
      dbeMoneda: TwwDBEdit;
      dbclMoneda: TwwDBLookupCombo;
      rgImportes: TRadioGroup;
      pnlFOOT: TPanel;
      Z2bbtnCancel: TBitBtn;
      Z2bbtnAceptar: TBitBtn;
      dbgEst1: TwwDBGrid;
      GroupBox1: TGroupBox;
      dbSpAnno: TwwDBSpinEdit;
      cbMes: TComboBox;
      Label2: TLabel;
      Label3: TLabel;
      bbtnPrint: TBitBtn;
      ppReport: TppReport;
      ppDBPipeline: TppDBPipeline;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      pplblPERIODO: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppLabel12: TppLabel;
      pnlOrden: TPanel;
      lblBusca: TLabel;
      Bevel1: TBevel;
      isBusca: TwwIncrementalSearch;
      btnSalir: TBitBtn;
      pplCia: TppLabel;
      rgMoneda: TRadioGroup;
      dbeSaldoWhere: TwwDBEdit;
      Bevel2: TBevel;
      Label4: TLabel;
      ppDBText6: TppDBText;
      ppDBCalc7: TppDBCalc;
      ppLabel14: TppLabel;
      ppLabel4: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel13: TppLabel;
      ppLabel15: TppLabel;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel19: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      bbtnDetalle: TBitBtn;
      Procedure dblcCIAChange(Sender: TObject);
//    procedure d7blcExist(Sender: TObject);
      Procedure dblcNotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure FormCreate(Sender: TObject);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure dbclMonedaChange(Sender: TObject);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure cbMesChange(Sender: TObject);
      Procedure dbgEst1DblClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormDestroy(Sender: TObject);
      Procedure ppHeaderBand1BeforePrint(Sender: TObject);
      Procedure bbtnPrintClick(Sender: TObject);
      Procedure ppReportPreviewFormCreate(Sender: TObject);
      Procedure dbgEst1TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure btnSalirClick(Sender: TObject);
      Procedure isBuscaKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgEst1CalcTitleAttributes(Sender: TObject;
         AFieldName: String; AFont: TFont; ABrush: TBrush;
         Var ATitleAlignment: TAlignment);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure cbMesExit(Sender: TObject);
      Procedure dbSpAnnoKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbSpAnnoExit(Sender: TObject);
      Procedure cbMesEnter(Sender: TObject);
      Procedure dbgEst1CalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure rgImportesClick(Sender: TObject);
      Procedure dbeSaldoWhereKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeSaldoWhereExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);

   Private
    { Private declarations }
      Procedure cReport;
      Procedure Valida;
   Public
    { Public declarations }
      iYEAR, iMONTH: Integer;
      isMLOC: Boolean;
      sCIA, sMON, sSQL,
         sSACUM, sSAMES, sSAANT, sSAANTL, sSAANTE,
         sM, sMES, sMESA, sMesN, sGroupBy: String;

      san, sac, sal, TotalMn, TotalMe, AntLoc, AntExt, CheLoc, CheExt, LetNor, LetExt, NCreLoc, NCreExt: Double;
      sFechaEmision: String;
      Procedure dcCIA;
      Procedure dcMon;
      Procedure strGRID;
      Procedure cSQL;
      Procedure cFooter;
   End;

Var
   FEstCtaCli: TFEstCtaCli;

Implementation

Uses CxCDM, CxC216;

{$R *.DFM}

Function OperClientDataSet(ClientDataSet: TwwClientDataSet;
   Expression, Condicion: String): Double;
Var
   cdsClone: TwwClientDataSet;
//bmk         : TBookmark;
   Agg: TAggregate;
Begin
   result := 0;

   If trim(Expression) = '' Then Exit;

//  bmk:=ClientDataSet.GetBookmark;
   cdsClone := TwwClientDataSet.Create(Nil);
   Try

      With cdsClone Do
      Begin
         CloneCursor(ClientDataSet, True);
         Agg := Nil;
         Agg := Aggregates.Add;
         Agg.AggregateName := 'OPER';
         Agg.Expression := Expression;
         Agg.Active := True;

         If Trim(Condicion) <> '' Then
         Begin
            Filtered := False;
            Filter := Condicion;
            Filtered := True;
         End;

         If Aggregates.Items[Aggregates.IndexOf('OPER')].Value <> NULL Then
            result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;

         Aggregates.Clear;

      End;
//    ClientDataSet.GotoBookmark(bmk);
//    ClientDataSet.FreeBookmark(bmk);
   Finally
      cdsClone.Free;
   End;
End;

Procedure TFEstCtaCli.dblcCIAChange(Sender: TObject);
Begin
   sCIA := dblcCIA.Text;
   dbeCIA.Text := DMCXC.cdsCia.FieldByName('CIADES').AsString;
End;

{procedure TFEstCtaCli.dblcExist(Sender: TObject);
begin
end;}

Procedure TFEstCtaCli.dblcNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFEstCtaCli.FormCreate(Sender: TObject);
Var
   i: Integer;
   y, m, d: word;
Begin

   For i := 1 To 12 Do
   Begin
      cbMes.Items.Add(UpperCase(LongMonthNames[i]));
   End;
   DecodeDate(DMCXC.DateS, y, m, d);
   cbMes.ItemIndex := m - 1;
   dbSpAnno.Value := y;

   iYEAR := y;
   sMES := StrZero(FloatToStr(m), 2);

   dcCIA;
   dcMon;

   cSQL;

   dbgEst1.Selected.Clear;
   dbgEst1.Selected.Add('CLIECREMAX'#9'10'#9'Línea de~Crédito'#9'F');

   dbgEst1.Selected.Add('CLIEID'#9'11'#9'Código'#9'F');
   dbgEst1.Selected.Add('CLIERUC'#9'11'#9'RUC'#9'F');
   dbgEst1.Selected.Add('CLIEDES'#9'28'#9'Descripción'#9'F');

   dbgEst1.Selected.Add('SALANTMN'#9'10'#9'S. Ant.~(MN)'#9'F');
   dbgEst1.Selected.Add('CARGOSMN'#9'10'#9'Cargos ~(MN)'#9'F');
   dbgEst1.Selected.Add('ABONOSMN'#9'10'#9'Abonos ~(MN)'#9'F');
   dbgEst1.Selected.Add('SALACUMMN'#9'10'#9'Saldo~(MN)'#9'F');
   dbgEst1.Selected.Add('LETNORLOC'#9'10'#9'Letras~(MN)'#9'F');
   dbgEst1.Selected.Add('CHENORLOC'#9'10'#9'Cheques~(MN)'#9'F');
   dbgEst1.Selected.Add('SALTOTALMN'#9'10'#9'Saldo~Total(MN)'#9'F');

   dbgEst1.Selected.Add('SALANTME'#9'10'#9'S. Ant.~(ME)'#9'F');
   dbgEst1.Selected.Add('CARGOSME'#9'10'#9'Cargos~(ME)'#9'F');
   dbgEst1.Selected.Add('ABONOSME'#9'10'#9'Abonos~(ME)'#9'F');
   dbgEst1.Selected.Add('SALACUMME'#9'10'#9'Saldo~(ME)'#9'F');
   dbgEst1.Selected.Add('LETNOREXT'#9'10'#9'Letras~(ME)'#9'F');
   dbgEst1.Selected.Add('CHENOREXT'#9'10'#9'Cheques~(ME)'#9'F');
   dbgEst1.Selected.Add('SALTOTALME'#9'10'#9'Saldo~Total(ME)'#9'F');

   san := 0;
   sac := 0;
   sal := 0;
   LetNor := 0;
   LetExt := 0;
   CheLoc := 0;
   CheExt := 0;
   TotalMn := 0;
   TotalMe := 0;

   Application.CreateForm(TFEstCxCli, FEstCxCli);
   Z2bbtnAceptarClick(Nil);
//  cFooter;

   dbgEst1.DataSource := DMCXC.dsQRY;
End;

Procedure TFEstCtaCli.Z2bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFEstCtaCli.dcCIA;
Begin
   DMCXC.cdsCIA.First;
   sCIA := trim(DMCXC.cdsCIA.FieldByName('CIAID').AsString);
   dblcCIA.Text := sCIA;
   dblcCIA.Enabled := DMCXC.cdsCIA.RecordCount > 1;
End;

Procedure TFEstCtaCli.dbclMonedaChange(Sender: TObject);
Begin
   sMON := dbclMoneda.Text;
   dbeMoneda.Text := DMCXC.cdsTMon.FieldByName('TMONDES').AsString;
   isMLOC := trim(DMCXC.cdsTMon.FieldByName('TMON_LOC').AsString) = 'L';
   If isMLOC Then // moneda local
   Begin
      sM := 'N';
   End
   Else
   Begin // moneda extranjera
      sM := 'E';
   End;
End;

Procedure TFEstCtaCli.dcMon;
Begin
   DMCXC.cdsTMon.First;
   sMON := trim(DMCXC.cdsTMon.FieldByName('TMONID').AsString);
   dbclMoneda.Text := sMON;
   isMLOC := trim(DMCXC.cdsTMon.FieldByName('TMON_LOC').AsString) = 'L';
   dbclMoneda.Enabled := DMCXC.cdsTMon.RecordCount > 1;
   If isMLOC Then // moneda local
   Begin
      sM := 'N';
   End
   Else
   Begin // moneda extranjera
      sM := 'E';
   End;
End;

Procedure TFEstCtaCli.strGRID;
Begin
End;

Procedure TFEstCtaCli.Z2bbtnAceptarClick(Sender: TObject);
Var
   sXSQL: String;
   sMoneda: String;
Begin
   Valida;
   iYEAR := Trunc(dbSpAnno.Value);
   sMES := StrZero(FloatToStr(cbMes.ItemIndex + 1), 2);
   sMESN := StrZero(FloatToStr(cbMes.ItemIndex + 2), 2);
   sMESA := StrZero(FloatToStr(cbMes.ItemIndex), 2);
   dcCIA;
   dcMon;

   If sMes <> '12' Then
      sFechaEmision := '01' + '/' + sMesN + '/' + IntToStr(iYEAR)
   Else
      sFechaEmision := '01' + '/' + '01' + '/' + IntToStr(iYEAR + 1);

   cSQL;
   If rgMoneda.ItemIndex = 0 Then
      sMoneda := 'MN'
   Else
      sMoneda := 'ME';

   Case rgImportes.ItemIndex Of
      0:
         Begin //>
            sXSQL := 'AND (' + DMCXC.wReplacCeros + '(SAL.SALDS' + sMoneda + sMES + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBES' + sMoneda + sMES + ',0)'
               + '- ' + DMCXC.wReplacCeros + '(HABES' + sMoneda + sMES + ',0))> ' + dbeSaldoWhere.Text;
         End;
      1:
         Begin //>=
            sXSQL := 'AND (' + DMCXC.wReplacCeros + '(SAL.SALDS' + sMoneda + sMES + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBES' + sMoneda + sMES + ',0)'
               + '- ' + DMCXC.wReplacCeros + '(HABES' + sMoneda + sMES + ',0)) >= ' + dbeSaldoWhere.Text;
         End;
      2:
         Begin //=
            sXSQL := 'AND (' + DMCXC.wReplacCeros + '(SAL.SALDS' + sMoneda + sMES + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBES' + sMoneda + sMES + ',0)'
               + '- ' + DMCXC.wReplacCeros + '(HABES' + sMoneda + sMES + ',0)) = ' + dbeSaldoWhere.Text;
         End;
      3:
         Begin //<=
            sXSQL := 'AND (' + DMCXC.wReplacCeros + '(SAL.SALDS' + sMoneda + sMES + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBES' + sMoneda + sMES + ',0)'
               + '- ' + DMCXC.wReplacCeros + '(HABES' + sMoneda + sMES + ',0)) <= ' + dbeSaldoWhere.Text;
         End;
      4:
         Begin //<
            sXSQL := 'AND (' + DMCXC.wReplacCeros + '(SAL.SALDS' + sMoneda + sMES + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBES' + sMoneda + sMES + ',0)'
               + '- ' + DMCXC.wReplacCeros + '(HABES' + sMoneda + sMES + ',0)) < ' + dbeSaldoWhere.Text;
         End;
      5:
         Begin //<>
            sXSQL := 'AND (' + DMCXC.wReplacCeros + '(SAL.SALDS' + sMoneda + sMES + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBES' + sMoneda + sMES + ',0)'
               + '- ' + DMCXC.wReplacCeros + '(HABES' + sMoneda + sMES + ',0)) <> ' + dbeSaldoWhere.Text;
         End;
      6:
         Begin //Todos
            sXSQL := '';
         End;
   End;
   sSQL := sSQL + sXSQL + sGroupBy;
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;
   cFooter;
End;

Procedure TFEstCtaCli.cSQL;
Var
   sFPagCh, sDisp, sClie, sAnt, sLet, sNCre, sChe, sCarAbo, sTotal: String;

Begin
   sChe := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''H''', 'DOCID');
   sAnt := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'DOCID');
   sLet := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');
   sNCre := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''N''', 'DOCID');
   sFPagCh := DMCXC.BuscaQry2('dspTGE', 'TGE112', 'FPAGOID', 'FCHQ=''1''', 'FPAGOID');

   sClie := DMCXC.BuscaQry2('dspTGE', 'TGE102', 'CLAUXID', 'CLAUXCP=''C''', 'CLAUXID');
   sGroupBy := ' GROUP BY CLI.CLIECREMAX, SAL.CLAUXID, SAL.AUXID,CLI.CLAUXID, CLI.CLIEID, CLI.CLIERUC,CLI.CLIEDES, ' +
      ' SAL.SALDSMN' + sMESA + ',SAL.SALDSME' + sMESA + ',SAL.DEBESMN' + sMES + ',SAL.DEBESME' + sMES + ',SAL.HABESMN' + sMES + ',SAL.HABESME' + sMES + ' ';

   sSACUM := 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + sMES + ',0.00),0) AS SALACUMMN, '
      + 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00),0) AS SALACUMME';

{ sTotal:='NULLIF('+DMCXC.wReplacCeros+'(SAL.SALDSMN'+sMESA+',0.00)+ '+DMCXC.wReplacCeros+'(SAL.DEBESMN'+sMES+',0.00)'
        +'  - '+DMCXC.wReplacCeros+'(HABESMN'+sMES+',0.00) + SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN DOCS.LETSALLOC ELSE 0 END) '
        +'+ SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN DOCS.CHESALLOC ELSE 0 END) - SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN DOCS.ANTSALLOC ELSE 0 END)- SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN DOCS.NCRESALLOC ELSE 0 END) ,0) AS SALTOTALMN, '
        +'NULLIF('+DMCXC.wReplacCeros+'(SAL.SALDSME'+sMESA+',0.00)+ '+DMCXC.wReplacCeros+'(SAL.DEBESME'+sMES+',0.00)'
        +'  - '+DMCXC.wReplacCeros+'(HABESME'+sMES+',0.00) + SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN DOCS.LETSALEXT ELSE 0 END) '
        +'+ SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN DOCS.CHESALEXT ELSE 0 END) - SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN DOCS.ANTSALEXT ELSE 0 END)- SUM(CASE WHEN DOCS.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN DOCS.NCRESALEXT ELSE 0 END) ,0) AS SALTOTALME ';
 }

   sTotal := 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + sMES + ',0.00),0) AS SALTOTALMN, '
      + 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00),0) AS SALTOTALME ';

   sDisp := 'NULLIF(' + DMCXC.wReplacCeros + '(CLI.CLIECREMAX,0)-(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00)),0) DISPONIBLE';

   sCarAbo := 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00),0) AS CARGOSMN , NULLIF(' + DMCXC.wReplacCeros + '(SAL.HABESMN' + sMES + ',0.00),0) AS ABONOSMN, '
      + 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00),0) AS CARGOSME , NULLIF(' + DMCXC.wReplacCeros + '(SAL.HABESME' + sMES + ',0.00),0) AS ABONOSME ';

   sSAANT := 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00),0) AS SALANTMN, '
      + 'NULLIF(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00),0) AS SALANTME';

   sSQL := ' SELECT NULLIF(' + DMCXC.wReplacCeros + '(CLI.CLIECREMAX,0),0) CLIECREMAX, CLI.CLIERUC,SAL.CLAUXID, SAL.AUXID,' + sDisp + ',' + sSACUM + ',' + sTotal + ',' + sCarAbo + ', ' + sSAANT + ', '
      + ' CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN DOCS.LETSALLOC ELSE 0 END),0.00) LETNORLOC, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN DOCS.LETSALEXT ELSE 0 END),0.00) LETNOREXT, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN DOCS.CHESALLOC ELSE 0 END)+SUM(CASE WHEN CHES.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CHES.CHE1SALLOC ELSE 0 END),0.00) CHENORLOC, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN DOCS.CHESALEXT ELSE 0 END)+SUM(CASE WHEN CHES.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CHES.CHE1SALEXT ELSE 0 END),0.00) CHENOREXT, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN DOCS.ANTSALLOC ELSE 0 END),0.00) ANTNORLOC, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN DOCS.ANTSALEXT ELSE 0 END),0.00) ANTNOREXT, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN DOCS.NCRESALLOC ELSE 0 END),0.00) NCRENORLOC, '
      + ' NULLIF(SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN DOCS.NCRESALEXT ELSE 0 END),0.00) NCRENOREXT '
      + ' FROM TGE401 SAL '
      + ' LEFT JOIN TGE204 CLI ON CLI.CIAID=''01'' AND CLI.CLAUXID=SAL.CLAUXID AND CLI.CLIEID=SAL.AUXID '
      + ' LEFT JOIN (SELECT CLIEID,TMONID TMONID, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sLet) + ' THEN CCSALLOC ELSE 0 END) LETSALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sLet) + ' THEN CCSALEXT ELSE 0 END) LETSALEXT, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sNcre) + ' THEN CCSALLOC ELSE 0 END ) NCRESALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sNCre) + ' THEN CCSALEXT ELSE 0 END) NCRESALEXT, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sChe) + ' THEN CCSALLOC ELSE 0 END) CHESALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sChe) + ' THEN CCSALEXT ELSE 0 END) CHESALEXT, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sAnt) + ' THEN CCSALLOC ELSE 0 END) ANTSALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sAnt) + ' THEN CCSALEXT ELSE 0 END) ANTSALEXT  '
      + ' FROM CXC301 CXC '
      + ' WHERE CXC.CCFEMIS<DATE(' + QuotedStr(sFechaEmision) + ') AND CXC.CCESTADO=' + QuotedStr('P')
      + ' AND CXC.DOCID IN (' + QuotedStr(sLet) + ',' + QuotedStr(sAnt) + ',' + QuotedStr(sChe) + ',' + QuotedStr(sNcre) + ')'
      + ' GROUP BY CLIEID,TMONID) DOCS ON DOCS.CLIEID=SAL.AUXID '
      + ' LEFT JOIN (SELECT CLIEID,TMONID TMONID, '
      + ' SUM(TXMTOLOC) CHE1SALLOC, '
      + ' SUM(TXMTOEXT) CHE1SALEXT '
      + ' FROM CAJA305 CAJA '
      + ' WHERE CAJA.FPAGOID=' + QuotedStr(sFPagCh) + ' AND CAJA.CHQ_FECEMI<DATE(' + QuotedStr(sFechaEmision) + ') AND (CAJA.CHQ_ESTADO=''PEND.COB'')'
      + ' GROUP BY CLIEID,TMONID) CHES ON CHES.CLIEID=SAL.AUXID '
      + ' WHERE SAL.CIAID=''' + sCIA + ''' AND SAL.CLAUXID=' + QuotedStr(sClie)
      + '       AND SAL.ANO=''' + IntToStr(iYEAR) + ''' ';
End;

Procedure TFEstCtaCli.cbMesChange(Sender: TObject);
Begin
   sMES := StrZero(FloatToStr(cbMes.ItemIndex + 1), 2);
End;

Procedure TFEstCtaCli.dbgEst1DblClick(Sender: TObject);
Begin
   Cursor := crHourGlass;
   Try
      FEstCxCli.ClAux := DMCXC.cdsQRY.FieldByName('CLAUXID').AsString;
      FEstCxCli.Cliente := DMCXC.cdsQRY.FieldByName('CLIEID').AsString;
      FEstCxCli.ClienteDes := DMCXC.cdsQRY.FieldByName('CLIEDES').AsString;
      FEstCxCli.CiaID := dblcCIA.text;
      FEstCxCli.Moneda := dbclMoneda.Text;
      FEstCxCli.Activar := False;
      FEstCxCli.MonLoc := isMLOC;
      FEstCxCli.Internal := True;
      FEstCxCli.SaldoIni := DMCXC.cdsQry.FieldByName('SALANTMN').AsFloat;
      FEstCxCli.SaldoIniL := DMCXC.cdsQry.FieldByName('SALANTMN').AsFloat;
      FEstCxCli.SaldoIniE := DMCXC.cdsQry.FieldByName('SALANTME').AsFloat;
      FEstCxCli.Anio := Trunc(dbSpAnno.Value);
      FEstCxCli.Mes := cbMes.ItemIndex + 1;
      ShowWindow(FEstCxCli.Handle, SW_HIDE);

      FEstCxCli.ShowModal;
   Finally

   End;
   Screen.Cursor := crDefault;
End;

Procedure TFEstCtaCli.cFooter;
Var
   sCargos, sAbonos: Currency;
Begin
//   TNumericField( DMCXC.cdsQry.FieldByName('SALMENMN')  ).DisplayFormat:='### ### ##0.00';

   dbgEst1.Selected.Clear;
   dbgEst1.Selected.Add('CLIECREMAX'#9'9'#9'Línea de~Crédito'#9'F');
   If rgMoneda.ItemIndex = 0 Then
   Begin
      dbgEst1.Selected.Add('SALTOTALMN'#9'9'#9'Saldo~Total(MN)'#9'F');
   End
   Else
   Begin
      dbgEst1.Selected.Add('SALTOTALME'#9'9'#9'Saldo~Total(ME)'#9'F');
   End;
   dbgEst1.Selected.Add('DISPONIBLE'#9'9'#9'Disponible'#9'F');

   dbgEst1.Selected.Add('CLIEID'#9'11'#9'Código'#9'F');
   dbgEst1.Selected.Add('CLIERUC'#9'11'#9'RUC'#9'F');
   dbgEst1.Selected.Add('CLIEDES'#9'30'#9'Descripción'#9'F');

   If rgMoneda.ItemIndex = 0 Then
   Begin
      dbgEst1.Selected.Add('SALANTMN'#9'12'#9'S. Ant.~(MN)'#9'F');
      dbgEst1.Selected.Add('CARGOSMN'#9'12'#9'Cargos ~(MN)'#9'F');
      dbgEst1.Selected.Add('ABONOSMN'#9'12'#9'Abonos ~(MN)'#9'F');
      dbgEst1.Selected.Add('SALACUMMN'#9'12'#9'Saldo~(MN)'#9'F');
      dbgEst1.Selected.Add('LETNORLOC'#9'12'#9'Letras~(MN)'#9'F');
      dbgEst1.Selected.Add('CHENORLOC'#9'12'#9'Cheques~(MN)'#9'F');
      dbgEst1.Selected.Add('ANTNORLOC'#9'12'#9'Anticipos~(MN)'#9'F');
      dbgEst1.Selected.Add('NCRENORLOC'#9'12'#9'N. Crédito~con Saldo(MN)'#9'F');
   End
   Else
   Begin
      dbgEst1.Selected.Add('SALANTME'#9'12'#9'S. Ant.~(ME)'#9'F');
      dbgEst1.Selected.Add('CARGOSME'#9'12'#9'Cargos~(ME)'#9'F');
      dbgEst1.Selected.Add('ABONOSME'#9'12'#9'Abonos~(ME)'#9'F');
      dbgEst1.Selected.Add('SALACUMME'#9'12'#9'Saldo~(ME)'#9'F');
      dbgEst1.Selected.Add('LETNOREXT'#9'12'#9'Letras~(ME)'#9'F');
      dbgEst1.Selected.Add('CHENOREXT'#9'12'#9'Cheques~(ME)'#9'F');
      dbgEst1.Selected.Add('ANTNOREXT'#9'12'#9'Anticipos~(ME)'#9'F');
      dbgEst1.Selected.Add('NCRENOREXT'#9'12'#9'N. Crédito~con Saldo(ME)'#9'F');
   End;
   TNumericField(DMCXC.cdsQry.FieldByName('CLIECREMAX')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('DISPONIBLE')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('SALACUMMN')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('SALANTMN')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('SALACUMME')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('SALANTME')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('LETNORLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('LETNOREXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('CHENORLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('CHENOREXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('ANTNORLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('ANTNOREXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('NCRENORLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('NCRENOREXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('SALTOTALMN')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('SALTOTALME')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('CARGOSMN')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('ABONOSMN')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('CARGOSME')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry.FieldByName('ABONOSME')).DisplayFormat := '###,###,##0.00';

   sal := OperClientDataSet(DMCXC.cdsQry, 'SUM(SALANTMN)', '');
   LetNor := OperClientDataSet(DMCXC.cdsQry, 'SUM(LETNORLOC)', '');
   LetExt := OperClientDataSet(DMCXC.cdsQry, 'SUM(LETNOREXT)', '');
   CheLoc := OperClientDataSet(DMCXC.cdsQry, 'SUM(CHENORLOC)', '');
   CheExt := OperClientDataSet(DMCXC.cdsQry, 'SUM(CHENOREXT)', '');
   AntLoc := OperClientDataSet(DMCXC.cdsQry, 'SUM(ANTNORLOC)', '');
   AntExt := OperClientDataSet(DMCXC.cdsQry, 'SUM(ANTNOREXT)', '');
   NCreLoc := OperClientDataSet(DMCXC.cdsQry, 'SUM(NCRENORLOC)', '');
   NCreExt := OperClientDataSet(DMCXC.cdsQry, 'SUM(NCRENOREXT)', '');
   TotalMn := OperClientDataSet(DMCXC.cdsQry, 'SUM(SALTOTALMN)', '');
   TotalMe := OperClientDataSet(DMCXC.cdsQry, 'SUM(SALTOTALME)', '');
   sCargos := OperClientDataSet(DMCXC.cdsQry, 'SUM(CARGOSMN)', '');
   sAbonos := OperClientDataSet(DMCXC.cdsQry, 'SUM(ABONOSMN)', '');
   sac := OperClientDataSet(DMCXC.cdsQry, 'SUM(SALACUMMN)', '');

//wmc2403   dbgEst1.ColumnByName('SALMENMN' ).FooterValue:=floattostrf(san, ffNumber, 15, 2);
   dbgEst1.ColumnByName('LETNORLOC').FooterValue := floattostrf(LetNor, ffNumber, 15, 2);
   dbgEst1.ColumnByName('LETNOREXT').FooterValue := floattostrf(LetExt, ffNumber, 15, 2);
   dbgEst1.ColumnByName('CHENORLOC').FooterValue := floattostrf(CheLoc, ffNumber, 15, 2);
   dbgEst1.ColumnByName('CHENOREXT').FooterValue := floattostrf(CheExt, ffNumber, 15, 2);
   dbgEst1.ColumnByName('ANTNORLOC').FooterValue := floattostrf(AntLoc, ffNumber, 15, 2);
   dbgEst1.ColumnByName('ANTNOREXT').FooterValue := floattostrf(AntExt, ffNumber, 15, 2);
   dbgEst1.ColumnByName('NCRENORLOC').FooterValue := floattostrf(NCreLoc, ffNumber, 15, 2);
   dbgEst1.ColumnByName('NCRENOREXT').FooterValue := floattostrf(NCreExt, ffNumber, 15, 2);
   dbgEst1.ColumnByName('SALTOTALMN').FooterValue := floattostrf(TotalMn, ffNumber, 15, 2);
   dbgEst1.ColumnByName('SALTOTALME').FooterValue := floattostrf(TotalMe, ffNumber, 15, 2);
   dbgEst1.ColumnByName('SALANTMN').FooterValue := floattostrf(sal, ffNumber, 15, 2);
   dbgEst1.ColumnByName('CARGOSMN').FooterValue := floattostrf(sCargos, ffNumber, 15, 2);
   dbgEst1.ColumnByName('ABONOSMN').FooterValue := floattostrf(sAbonos, ffNumber, 15, 2);
   dbgEst1.ColumnByName('SALACUMMN').FooterValue := floattostrf(sac, ffNumber, 15, 2);

//wmc2403   san := OperClientDataSet( DMCXC.cdsQry , 'SUM(SALMENME)' , '');
   sal := OperClientDataSet(DMCXC.cdsQry, 'SUM(SALANTME)', '');
   sCargos := OperClientDataSet(DMCXC.cdsQry, 'SUM(CARGOSME)', '');
   sAbonos := OperClientDataSet(DMCXC.cdsQry, 'SUM(ABONOSME)', '');
   sac := OperClientDataSet(DMCXC.cdsQry, 'SUM(SALACUMME)', '');

//wmc2403   dbgEst1.ColumnByName('SALMENME' ).FooterValue:=floattostrf(san, ffNumber, 15, 2);
   dbgEst1.ColumnByName('SALANTME').FooterValue := floattostrf(sal, ffNumber, 15, 2);
   dbgEst1.ColumnByName('CARGOSME').FooterValue := floattostrf(sCargos, ffNumber, 15, 2);
   dbgEst1.ColumnByName('ABONOSME').FooterValue := floattostrf(sAbonos, ffNumber, 15, 2);
   dbgEst1.ColumnByName('SALACUMME').FooterValue := floattostrf(sac, ffNumber, 15, 2);

   dbgEst1.FooterCellColor := clInfoBk;
   dbgEst1.RedrawGrid;

End;

Procedure TFEstCtaCli.FormShow(Sender: TObject);
Begin
//quitar  cFooter;
End;

Procedure TFEstCtaCli.FormDestroy(Sender: TObject);
Begin
   FEstCxCli.Free;
   FEstCxCli := Nil;
   DMCXC.cdsQry.IndexFieldNames := '';
End;

Procedure TFEstCtaCli.cReport;
Begin
   ppDBPipeline.DataSource := DMCXC.dsQRY;
End;

Procedure TFEstCtaCli.ppHeaderBand1BeforePrint(Sender: TObject);
Begin
   pplblPERIODO.Caption := 'PERIODO :' + cbMes.Text + ' ' + dbSpAnno.Text;
   pplCia.Caption := dbeCia.Text;
End;

Procedure TFEstCtaCli.bbtnPrintClick(Sender: TObject);
Begin
   cReport;
   ppReport.Print;
End;

Procedure TFEstCtaCli.ppReportPreviewFormCreate(Sender: TObject);
Begin
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
End;

Procedure TFEstCtaCli.dbgEst1TitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   xFlag: Boolean;
Begin
   xFlag := False;
   If AfieldName = 'CLIEID' Then
   Begin
      DMCXC.cdsQry.IndexFieldNames := 'CLIEID';
      lblBusca.Caption := 'Busca por Código:';
      isBusca.SearchField := 'CLIEID';
      xFlag := True;
   End;
   If AfieldName = 'CLIEDES' Then
   Begin
      DMCXC.cdsQry.IndexFieldNames := 'CLIEDES';
      lblBusca.Caption := 'Busca por Descripción:';
      isBusca.SearchField := 'CLIEDES';
      xFlag := true;
   End;
   If AfieldName = 'CLIERUC' Then
   Begin
      DMCXC.cdsQry.IndexFieldNames := 'CLIERUC';
      lblBusca.Caption := 'Busca por RUC:';
      isBusca.SearchField := 'CLIERUC';
      xFlag := true;
   End;
   If xFlag Then
   Begin
      pnlOrden.Visible := True;
      isBusca.Text := '';
      isBusca.SetFocus;
      pnlFOOT.Enabled := False;
      pnlHEAD.Enabled := False;
      dbgEst1.Enabled := False;
   End;
End;

Procedure TFEstCtaCli.btnSalirClick(Sender: TObject);
Begin
   pnlOrden.Visible := False;
   pnlFOOT.Enabled := True;
   pnlHEAD.Enabled := True;
   dbgEst1.Enabled := true;
End;

Procedure TFEstCtaCli.isBuscaKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      pnlOrden.Visible := False;
      dbgEst1.SetFocus;
   End;
End;

Procedure TFEstCtaCli.dbgEst1CalcTitleAttributes(Sender: TObject;
   AFieldName: String; AFont: TFont; ABrush: TBrush;
   Var ATitleAlignment: TAlignment);
Begin
   If (AFieldName = 'CLIERUC') Or (AFieldName = 'CLIEID') Or (AFieldName = 'CLIEDES') Then Afont.Color := clRed;
End;

Procedure TFEstCtaCli.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFEstCtaCli.cbMesExit(Sender: TObject);
Begin
   cbmes.Text := AnsiUpperCase(trim(cbmes.Text));
   If cbMes.Text = '' Then
   Begin
      Showmessage('Ingrese Mes Para Consulta de Saldos');
      cbmes.SetFocus;
      Exit;
   End;
   If cbmes.items.IndexOf(cbmes.Text) = -1 Then
   Begin
      Showmessage('Escoja un Mes de La Lista');
      cbmes.SetFocus;
      Exit;
   End;
   If strtoint(dbSpAnno.Text) = DMCXC.wAnoHoy Then
      If (cbmes.items.IndexOf(cbmes.Text) + 1) > DMCXC.wMesHoy Then
      Begin
         Showmessage('El Mes No puede ser Posterior Al Mes Actual');
         cbmes.SetFocus;
         Exit;
      End;

End;

Procedure TFEstCtaCli.dbSpAnnoKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Not (key In ['0'..'9', #8]) Then
      key := #0;
End;

Procedure TFEstCtaCli.dbSpAnnoExit(Sender: TObject);
Var
   xAno: Integer;
Begin
   dbSpAnno.Text := trim(dbSpAnno.Text);
   If trim(dbSpAnno.Text) = '' Then
   Begin
      Showmessage('Ingrese Año');
      dbSpAnno.SetFocus;
      Exit;
   End;
   If StrToInt(dbSpAnno.Text) = 0 Then
   Begin
      Showmessage('Ingrese Año diferente de Cero');
      dbSpAnno.SetFocus;
      Exit;
   End;
   xAno := strtoint(dbSpAnno.Text);
   dbSpAnno.Text := inttostr(xAno);
   If (length(dbSpAnno.Text) <> 2) And (length(dbSpAnno.Text) <> 4)
      And (length(dbSpAnno.Text) <> 1) Then
   Begin
      Showmessage('Ingrese Año de 2 ó 4 Caracteres');
      dbSpAnno.SetFocus;
      Exit;
   End
   Else
   Begin
      If length(dbSpAnno.Text) <= 2 Then
      Begin
         If xAno < 50 Then
         Begin
            If xano >= 10 Then
               dbSpAnno.Text := '20' + dbSpAnno.Text
            Else
               dbSpAnno.Text := '200' + dbSpAnno.Text
         End
         Else
            dbSpAnno.Text := '19' + dbSpAnno.Text
      End;
   End;
   xAno := strtoint(dbSpAnno.Text);
   If xano > DMCXC.wAnoHoy Then
   Begin
      Showmessage('Año No puede Ser Mayor Al Año Actual');
      dbSpAnno.SetFocus;
      Exit;
   End;
End;

Procedure TFEstCtaCli.cbMesEnter(Sender: TObject);
Begin
//   cbmes.DroppedDown := true ;
End;

Procedure TFEstCtaCli.dbgEst1CalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
//////////////
   If (Field.FieldName = 'SALANTMN') Or (Field.FieldName = 'CARGOSMN')
      Or (Field.FieldName = 'ABONOSMN') Or (Field.FieldName = 'SALACUMMN') Or (Field.FieldName = 'LETNORLOC') Then
   Begin
      If (Not Highlight) Then
         AFont.Color := clBlue
      Else
         AFont.Color := clHighlightText;
      Exit;
   End;
   If (Field.FieldName = 'SALANTME') Or (Field.FieldName = 'CARGOSME')
      Or (Field.FieldName = 'ABONOSME') Or (Field.FieldName = 'SALACUMME') Or (Field.FieldName = 'LETNOREXT') Then
   Begin
      If (Not Highlight) Then
         AFont.Color := $00004000
      Else
         AFont.Color := clHighlightText;
      Exit;
   End;

   If (Field.FieldName = 'DISPONIBLE') Then
   Begin
      If (Not Highlight) Then
         If DMCXC.cdsQry.FieldByName('DISPONIBLE').AsFloat < 0 Then
            AFont.Color := clRed
         Else
            AFont.Color := clBlack
      Else
         AFont.Color := clHighlightText;
      Exit;
   End;

//////////////
End;

Procedure TFEstCtaCli.rgImportesClick(Sender: TObject);
Begin
   If FEstCtaCli = Nil Then
      Exit;
   If Not FEstCtaCli.Showing Then
      Exit;
   If rgImportes.ItemIndex = 6 Then
   Begin
      dbeSaldoWhere.Enabled := False;
      dbeSaldoWhere.Text := '';
   End
   Else
   Begin
      dbeSaldoWhere.Enabled := True;
      If trim(dbeSaldoWhere.Text) = '' Then
         dbeSaldoWhere.Text := '0.00';
   End;
End;

Procedure TFEstCtaCli.dbeSaldoWhereKeyPress(Sender: TObject;
   Var Key: Char);
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

Procedure TFEstCtaCli.Valida;
Begin
   If (dbeSaldoWhere.Enabled) And (Trim(dbeSaldoWhere.Text) = '') Then
   Begin
      dbeSaldoWhere.SetFocus;
      Raise Exception.Create('Ingrese Saldo de Recuperacion');
   End;
End;

Procedure TFEstCtaCli.dbeSaldoWhereExit(Sender: TObject);
Begin
   dbeSaldoWhere.Text := trim(dbeSaldoWhere.Text);
   If trim(dbeSaldoWhere.Text) = '' Then
   Begin
      ShowMessage('Ingrese Saldo de Recuperacion');
      dbeSaldoWhere.SetFocus;
      Exit;
   End;
End;

Procedure TFEstCtaCli.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsQry.IndexFieldNames := '';
End;

End.

