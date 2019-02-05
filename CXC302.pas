Unit CXC302;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppProd, ppReport, ppDB,
   ppComm, ppRelatv, ppCache, ppDBPipe, StdCtrls, ExtCtrls,
   wwdbdatetimepicker, Wwdbdlg, Mask, wwdbedit, wwdblook, Buttons, Grids,
   Wwdbigrd, Wwdbgrid, ppModule, daDatMod, DB;

Type
   TFRLetras = Class(TForm)
      pnlRegComp: TPanel;
      lblLetras: TLabel;
      bbtnOk: TBitBtn;
      bbtnBorra: TBitBtn;
      pnlDatos1: TPanel;
      lblCia: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      edtTDoc: TEdit;
      dblcTDoc: TwwDBLookupCombo;
      dbeAnoMM: TwwDBEdit;
      pnlDatos2: TPanel;
      lblRango1: TLabel;
      lblRango2: TLabel;
      dblcdProv2: TwwDBLookupComboDlg;
      dbdtpFReg2: TwwDBDateTimePicker;
      dbdtpFReg1: TwwDBDateTimePicker;
      dblcdProv1: TwwDBLookupComboDlg;
      rgOrden: TRadioGroup;
      dbeNoReg1: TwwDBEdit;
      dbeNoReg2: TwwDBEdit;
      ppdbLetras: TppDBPipeline;
      pprLetras: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDBText1: TppDBText;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      pplblPeriodo: TppLabel;
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
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLine2: TppLine;
      ppLabel23: TppLabel;
      ppLabel21: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppVarEstado: TppVariable;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText6: TppDBText;
      ppDBText5: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppVarPlazo: TppVariable;
      ppSummaryBand1: TppSummaryBand;
      ppLabel22: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppLine3: TppLine;
      pprRLetras: TppReport;
      GroupBox1: TGroupBox;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      chqTodos: TCheckBox;
      ppHeaderBand2: TppHeaderBand;
      ppLabel24: TppLabel;
      pplCIA: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel26: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel31: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel68: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLabel79: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppLabel25: TppLabel;
      ppLabel30: TppLabel;
      ppLabel32: TppLabel;
      ppLabel35: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppDBText21: TppDBText;
      ppDetailBand2: TppDetailBand;
      ppDBText4: TppDBText;
      ppDBText13: TppDBText;
      ppDBText15: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText12: TppDBText;
      ppDBText14: TppDBText;
      ppDBText16: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel82: TppLabel;
      ppDBCalc5: TppDBCalc;
      ppLabel46: TppLabel;
      pplblPeriodo1: TppLabel;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure dbeAnoMMExit(Sender: TObject);
      Procedure rgOrdenClick(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure ppVdiaCalc(Sender: TObject; Var Value: Variant);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure chqTodosExit(Sender: TObject);
      Procedure dblcTDiarioClick(Sender: TObject);
      Procedure chqTodosClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dblcCiaNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
   Private
    { Private declarations }
      Procedure CargaDataSouces;
   Public
    { Public declarations }
      Procedure IniciaDatos;
   End;

Var
   FRLetras: TFRLetras;
   xFiltroP1, xFiltroP2: String;
   Year, Month, Day: Word;
   wfechOk: boolean;
   anomm, wMes: String;
   xMoneda: String;
   sTDiarios: String;
Implementation

Uses CXCDM;
{$R *.DFM}

Procedure TFRLetras.dblcCiaExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFRLetras.dblcTDocExit(Sender: TObject);
Var
   xx, xFiltro, xWhere: String;
Begin
   If bbtnBorra.Focused Then Exit;
   If dblcTDoc.Text = '' Then
   Begin
      dblcTDoc.SetFocus;
      exit;
   End;

   DMCXC.cdsTDoc.Filter := '';
   xFiltro := 'DOCID=' + quotedstr(dblcTDoc.Text);
   xFiltro := xFiltro + ' and DOC_FREG=' + '''' + 'L' + '''';
   DMCXC.cdsTDoc.Filter := xFiltro;
   DMCXC.cdsTDoc.Filtered := True;
   If DMCXC.cdsTDoc.RecordCount > 0 Then
   Begin
      edtTDoc.Text := DMCXC.cdsTDoc.FieldByName('DOCDES').AsString;
      xWhere := 'TDiarID=' + '''' + DMCXC.cdsTDoc.FieldByName('TDIARID').AsString + '''';
      If length(DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString) > 0 Then
      Begin
         xWhere := xWhere + ' or TDiarID=' + '''' + DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString + '''';
      End;
      xx := DMCXC.BuscaQry('dspTGE', 'TGE104', '*', xWhere, 'TDiarId');
      dblcTDiario.Enabled := False;
      If DMCXC.cdsQry.RecordCount > 1 Then
      Begin
         //dblcTDiario.Enabled:=True;
         dblcTDiario.LookUpTable := DMCXC.cdsQry;
         dblcTDiario.LookUpField := 'TDiarId';
      End;
//      else
      //dblcTDiario.Value:=xx;
      //edtTDiario.Text:=DMCXC.cdsQry.FieldByName('TDIARDES').AsString;
   End;
End;

Procedure TFRLetras.dblcTDiarioExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;

   DMCXC.cdsQry.IndexFieldNames := 'TDiarId';
   DMCXC.cdsQry.SetKey;
   DMCXC.cdsQry.FieldByName('TDIARID').AsString := dblcTDiario.Text;
   If DMCXC.cdsQry.GotoKey Then edtTDiario.Text := DMCXC.cdsQry.FieldByName('TDIARDES').AsString;
   DMCXC.cdsTDoc.Filter := 'DOC_FREG=' + '''' + 'L' + ''''; // TDocum Letras
   DMCXC.cdsTDoc.Filtered := True;
End;

Procedure TFRLetras.dbeAnoMMExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If bbtnBorra.Focused Then Exit;

   If Length(dbeAnoMM.Text) = 0 Then
   Begin
      ShowMessage('Falta Ingresar Periodo');
      dbeAnoMM.SetFocus;
      Exit;
   End;

   If Length(dbeAnoMM.Text) < 6 Then
   Begin
      ShowMessage('Periodo No Válido');
      dbeAnoMM.SetFocus;
      Exit;
   End;
   xFiltroP1 := '';

   If chqTodos.Checked Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (DOC_FREG=''L'' ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';

      DMCXC.cdsQry2.IndexFieldNames;
      DMCXC.cdsQry2.Filter := '';
      DMCXC.cdsQry2.Filtered := False;
      DMCXC.cdsQry2.Close;
      DMCXC.cdsQry2.DataRequest(xSQL);
      DMCXC.cdsQry2.Open;
      sTDiarios := '';
      DMCXC.cdsQry2.First;
      If DMCXC.cdsQry2.RecordCount > 0 Then
         While Not DMCXC.cdsQry2.Eof Do
         Begin
            If length(sTDiarios) = 0 Then
               sTDiarios := 'IN(' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + ''
            Else
               sTDiarios := sTDiarios + ''' ,' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + '';

            DMCXC.cdsQry2.Next;
            If DMCXC.cdsQry2.Eof Then
               sTDiarios := sTDiarios + ''') ';

         End
      Else
      Begin
         sTDiarios := 'IN(''XXX'') ';
      End;
   End;

   If chqTodos.checked Then
   Begin
      xFiltroP1 := 'CIAID=' + quotedstr(dblcCia.Text)
         + ' and DOCID=' + quotedstr(dblcTDoc.Text)
         + ' and TDIARID ' + sTDiarios
         + ' and CCANOMES=' + quotedstr(dbeAnoMM.Text)
         + ' and ' + DMCXC.wReplacCeros + '(CCNRENOVA,0)=0';
   End
   Else
   Begin
      xFiltroP1 := 'CIAID=' + quotedstr(dblcCia.Text)
         + ' and DOCID=' + quotedstr(dblcTDoc.Text)
         + ' and TDIARID=' + quotedstr(dblcTDiario.Text)
         + ' and CCANOMES=' + quotedstr(dbeAnoMM.Text)
         + ' and ' + DMCXC.wReplacCeros + '(CCNRENOVA,0)=0';
   End;

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      XSQL := 'SELECT CIAID, DOCID, TDIARID, CCANOMES, CCNOREG, CCNODOC, CCESTADO, CCFEMIS, CLIEID, CLIEDES, CCCANJE, '
         + ' CASE WHEN CCESTADO=''A'' THEN '' A  N  U  L  A  D  O '' ELSE CASE WHEN CCESTADO=''I'' THEN '' I N I C I A L '' ELSE TMONABR END END TMONABR,'
         + ' CASE WHEN CCESTADO=''A'' THEN NULL ELSE CASE WHEN CCESTADO=''I'' THEN NULL ELSE CCMTOEXT END END CCMTOEXT, '
         + ' CASE WHEN CCESTADO=''A'' THEN NULL ELSE CASE WHEN CCESTADO=''I'' THEN NULL ELSE CCMTOLOC END END CCMTOLOC, '
         + ' CASE WHEN CCESTADO=''A'' THEN NULL ELSE CASE WHEN CCESTADO=''I'' THEN NULL ELSE CCTCAMPR END END CCTCAMPR, '
         + ' CCFVCMTO, year(CCFEMIS) CCANO, CCFREG, '
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=1 then day(CCFVCMTO) else 0 end ENE,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=2 then day(CCFVCMTO) else 0 end FEB,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=3 then day(CCFVCMTO) else 0 end MAR,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=4 then day(CCFVCMTO) else 0 end ABR,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=5 then day(CCFVCMTO) else 0 end MAY,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=6 then day(CCFVCMTO) else 0 end JUN,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=7 then day(CCFVCMTO) else 0 end JUL,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=8 then day(CCFVCMTO) else 0 end AGO,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=9 then day(CCFVCMTO) else 0 end SET,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=10 then day(CCFVCMTO) else 0 end OCT,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=11 then day(CCFVCMTO) else 0 end NOV,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) and month(CCFVCMTO)=12 then day(CCFVCMTO) else 0 end DIC,'
         + ' case when year(CCFVCMTO)=year(CCFEMIS) then null else CCFVCMTO end OTROS'
         + ' from CXC301'
         + ' left outer join TGE103 on TGE103.TMONID=CXC301.TMONID '
         + ' where ' + xFiltroP1;
   End;
   If (DMCXC.SRV_D = 'ORACLE') Then
   Begin
      XSQL := 'SELECT CIAID, DOCID, TDIARID, CCANOMES, CCNOREG, CCNODOC, CCESTADO, CCFEMIS, CLIEID, CLIEDES, CCCANJE, '
         + ' CASE WHEN CCESTADO=''A'' THEN '' A  N  U  L  A  D  O '' ELSE CASE WHEN CCESTADO=''I'' THEN '' I N I C I A L '' ELSE TMONABR END END TMONABR,'
         + ' CASE WHEN CCESTADO=''A'' THEN NULL ELSE CASE WHEN CCESTADO=''I'' THEN NULL ELSE CCMTOEXT END END CCMTOEXT, '
         + ' CASE WHEN CCESTADO=''A'' THEN NULL ELSE CASE WHEN CCESTADO=''I'' THEN NULL ELSE CCMTOLOC END END CCMTOLOC, '
         + ' CASE WHEN CCESTADO=''A'' THEN NULL ELSE CASE WHEN CCESTADO=''I'' THEN NULL ELSE CCTCAMPR END END CCTCAMPR, '
         + ' CCFVCMTO, TO_CHAR(CCFEMIS,''YYYY'') CCANO, CCFREG, '
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''01'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end ENE,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''02'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end FEB,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''03'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end MAR,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''04'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end ABR,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''05'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end MAY,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''06'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end JUN,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''07'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end JUL,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''08'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end AGO,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''09'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end SETI,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''10'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end OCT,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''11'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end NOV,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') and TO_CHAR(CCFVCMTO,''MM'')=''12'' then TO_NUMBER(TO_CHAR(CCFVCMTO,''DD'')) else 0 end DIC,'
         + ' CASE WHEN TO_CHAR(CCFVCMTO,''YYYY'')=TO_CHAR(CCFEMIS,''YYYY'') then null else CCFVCMTO end OTROS'
         + ' FROM CXC301,TGE103 '
         + ' where ' + xFiltroP1
         + ' AND CXC301.TMONID=TGE103.TMONID(+) ';
   End;

   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.Filter := '';
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2.IndexFieldNames := '';
   DMCXC.cdsMovCxC2.DataRequest(xSQL);
   DMCXC.cdsMovCxC2.Open;

//	 Filtracds( DMCXC.cdsMovCxC2,'Select * from CXC301 Where '+xFiltroP1 );

   pnlDatos1.Enabled := False;
   pnlDatos2.Enabled := True;
   rgOrden.ItemIndex := 0;
   rgOrden.SetFocus;
End;

Procedure TFRLetras.rgOrdenClick(Sender: TObject);
Begin
   If edtCia.Text = '' Then Raise exception.Create('Compañia no válida');
   If edtTDoc.Text = '' Then Raise exception.Create('Documento no válido');

   If Not chqTodos.checked Then
      If edtTDiario.Text = '' Then
      Begin
         Raise exception.Create('Ingrese Diario');
      End;
   If length(dbeAnoMM.Text) <> 6 Then Raise exception.Create('Periodo no válido');
   xFiltroP2 := '';
   Case rgOrden.ItemIndex Of
      0:
         Begin // No. de Registro
            dblcdProv1.Visible := False;
            dblcdProv2.Visible := False;
            dbdtpFReg1.Visible := False;
            dbdtpFReg2.Visible := False;
            dbeNoReg1.Visible := True;
            dbeNoReg2.Visible := True;
            DMCXC.cdsMovCxC2.IndexFieldNames := 'CCNOREG';
            DMCXC.cdsMovCxC2.First;
            dbeNoReg1.Text := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;
            DMCXC.cdsMovCxC2.Last;
            dbeNoReg2.Text := DMCXC.cdsMovCxC2.FieldByName('CCNOREG').AsString;
            xFiltroP2 := 'CCNoReg>=' + '''' + dbeNoReg1.Text + '''' + ' and '
               + 'CCNoReg<=' + '''' + dbeNoReg2.Text + '''';
         End;
      1:
         Begin // Fecha Reg.
            dblcdProv1.Visible := False;
            dblcdProv2.Visible := False;
            dbeNoReg1.Visible := False;
            dbeNoReg2.Visible := False;
            dbdtpFReg1.Visible := True;
            dbdtpFReg2.Visible := True;
            DMCXC.cdsMovCxC2.IndexFieldNames := 'CCFREG';
            DMCXC.cdsMovCxC2.First;
            dbdtpFReg1.Date := DMCXC.cdsMovCxC2.FieldByName('CCFREG').AsDatetime;
            DMCXC.cdsMovCxC2.Last;
            dbdtpFReg2.Date := DMCXC.cdsMovCxC2.FieldByName('CCFREG').AsDatetime;
            xFiltroP2 := 'CCFREG>=' + '''' + datetostr(dbdtpFReg1.Date) + '''' + ' and '
               + 'CCFREG<=' + '''' + datetostr(dbdtpFReg2.Date) + '''';
         End;
      2:
         Begin // Proveedor
            dbeNoReg1.Visible := False;
            dbeNoReg2.Visible := False;
            dbdtpFReg1.Visible := False;
            dbdtpFReg2.Visible := False;
            dblcdProv1.Visible := True;
            dblcdProv2.Visible := True;
            DMCXC.cdsMovCxC2.IndexFieldNames := 'CLIEID';
            DMCXC.cdsMovCxC2.First;
            dblcdProv1.Text := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
            DMCXC.cdsMovCxC2.Last;
            dblcdProv2.Text := DMCXC.cdsMovCxC2.FieldByName('CLIEID').AsString;
            xFiltroP2 := 'CLIEID>=' + '''' + dblcdProv1.Text + '''' + ' and '
               + 'CLIEID<=' + '''' + dblcdProv2.Text + '''';
         End;
      3:
         Begin // No. de Letra
            dblcdProv1.Visible := False;
            dblcdProv2.Visible := False;
            dbdtpFReg1.Visible := False;
            dbdtpFReg2.Visible := False;
            dbeNoReg1.Visible := True;
            dbeNoReg2.Visible := True;
            DMCXC.cdsMovCxC2.IndexFieldNames := 'CCNODOC';
            DMCXC.cdsMovCxC2.First;
            dbeNoReg1.Text := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
            DMCXC.cdsMovCxC2.Last;
            dbeNoReg2.Text := DMCXC.cdsMovCxC2.FieldByName('CCNODOC').AsString;
            xFiltroP2 := 'CCNODOC>=' + '''' + dbeNoReg1.Text + '''' + ' and '
               + 'CCNODOC<=' + '''' + dbeNoReg2.Text + '''';
         End;
   End;
End;

Procedure TFRLetras.bbtnBorraClick(Sender: TObject);
Begin
   IniciaDatos;
   dblcCia.Setfocus;
End;

Procedure TFRLetras.bbtnOkClick(Sender: TObject);
Var
   flagFech: Boolean;
   xSQL: String;
Begin

   flagFech := False;
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');
   If Length(edtTDoc.Text) = 0 Then Raise exception.Create('Documento no válido');

   If chqTodos.Checked Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (DOC_FREG=''L'' ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';

      DMCXC.cdsQry2.IndexFieldNames;
      DMCXC.cdsQry2.Filter := '';
      DMCXC.cdsQry2.Filtered := False;
      DMCXC.cdsQry2.Close;
      DMCXC.cdsQry2.DataRequest(xSQL);
      DMCXC.cdsQry2.Open;
      sTDiarios := '';
      DMCXC.cdsQry2.First;
      While Not DMCXC.cdsQry2.Eof Do
      Begin
         If length(sTDiarios) = 0 Then
            sTDiarios := 'IN(' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + ''
         Else
            sTDiarios := sTDiarios + ''' ,' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + '';

         DMCXC.cdsQry2.Next;
         If DMCXC.cdsQry2.Eof Then
            sTDiarios := sTDiarios + ''') ';

      End;
   End
   Else
      If Length(dblcTDiario.Text) = 0 Then Raise exception.Create('Diario no válido');

   If length(dbeAnoMM.Text) <> 6 Then Raise exception.Create('Periodo no válido');

   Case rgOrden.ItemIndex Of
      0, 3:
         Begin // No. de Registro
            If (dbeNoReg1.Text = '') Or (dbeNoReg2.Text = '') Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
      1:
         Begin // Fecha Reg.
            flagFech := True;
            If (dbdtpFReg1.Date = 0) Or (dbdtpFReg1.Date = 0) Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
      2:
         Begin // Proveedor
            If (dblcdProv1.Text = '') Or (dblcdProv2.Text = '') Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
   End;

   If Not (wFechOk) Then Raise exception.Create('Fecha no coincide con el periodo');

   pprRLetras.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegLetras.Rtm';
   pprRLetras.template.LoadFromFile;

  // llena campos del archivo de impresion
   pplblPeriodo1.Caption := 'Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4);
   If flagFech Then
   Begin
      pplblDel.Visible := True;
      pplblFecIni.Visible := True;
      pplblFecIni.Caption := datetostr(dbdtpFReg1.Date);
      pplblAl.Visible := True;
      pplblFecFin.Visible := True;
      pplblFecFin.Caption := datetostr(dbdtpFReg2.Date);
   End;
   pplCia.Caption := EdtCia.text + ' - Créditos y Cobranzas';
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2.Filter := '';
   DMCXC.cdsMovCxC2.Filter := xFiltroP2;
   DMCXC.cdsMovCxC2.Filtered := True;

   If DMCXC.cdsMovCxC2.RecordCount > 0 Then
      pprRLetras.Print
   Else
      Raise Exception.Create('No existen registros que mostrar');

End;

Procedure TFRLetras.IniciaDatos;
Begin

   pnlDatos1.Enabled := True;
   pnlDatos2.Enabled := False;

{   dblcCia.Text      := '';
   edtCia.Text       := '';
   dblcTDoc.Text     := '';
   edtTDoc.Text      := '';
   dblcTDiario.Text  := '';
   edtTDiario.Text   := '';
   dbeAnoMM.Text     := ''; }
   rgOrden.ItemIndex := -1;
{   dbeNoReg1.Text    := '';
   dbeNoReg2.Text    := '';
   dbdtpFReg1.Date   := 0;
   dbdtpFReg2.Date   := 0;
   dblcdProv1.Text   := '';
   dblcdProv2.Text   := '';}
   sTDiarios := '';
End;

Procedure TFRLetras.ppVdiaCalc(Sender: TObject; Var Value: Variant);
//var
//	 xxMes : Integer;
Begin
{     xxMes := StrToInt(Copy(DMCXC.cdsMovCxC2.FieldByName('CCFVCMTO').AsString,4,2));
   Value := Copy(DMCXC.cdsMovCxC2.FieldByName('CCFVCMTO').AsString,1,2);
   case xxMes of
   1: ppvdia.Left:=267.759;
   2: ppvdia.Left:=273.58;
   3: ppvdia.Left:=279.136;
   4: ppvdia.Left:=285.486;
   5: ppvdia.Left:=292.365;
   6: ppvdia.Left:=298.715;
   7: ppvdia.Left:=304.007;
   8: ppvdia.Left:=309.299;
   9: ppvdia.Left:=315.119;
   10: ppvdia.Left:=320.411;
   11: ppvdia.Left:=325.967;
   12: ppvdia.Left:=330.994;
   end;
}
End;

Procedure TFRLetras.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFRLetras.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsQry.IndexFieldNames := '';
   //FVariables.w_Num_Formas :=FVariables.w_Num_Formas-1;
   Action := caFree;
End;

Procedure TFRLetras.chqTodosExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If sTDiarios = '' Then
   Begin
      If chqTodos.Checked Then
      Begin
         dblcTDiario.Enabled := False;
         dblcTDiario.Text := '';
         edtTDiario.Text := '';
      End
      Else
      Begin
         dblcTDiario.Enabled := True;
         If Not chqTodos.Checked Then
         Begin
            dblcTDiario.Text := '';
            edtTDiario.Text := '';
         End;
      End;

      If chqTodos.Checked Then
      Begin
         xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
            ' FROM CXC301 ,TGE110   ' +
            ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
            ' (DOC_FREG=''L'' ' +
            ' AND DOCMOD=''CXC'')    ' +
            ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
            ' GROUP BY CXC301.TDIARID ';

         DMCXC.cdsQry2.IndexFieldNames;
         DMCXC.cdsQry2.Filter := '';
         DMCXC.cdsQry2.Filtered := False;
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.DataRequest(xSQL);
         DMCXC.cdsQry2.Open;
         sTDiarios := '';
         DMCXC.cdsQry2.First;
         While Not DMCXC.cdsQry2.Eof Do
         Begin
            If length(sTDiarios) = 0 Then
               sTDiarios := 'IN(' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + ''
            Else
               sTDiarios := sTDiarios + ''' ,' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + '';

            DMCXC.cdsQry2.Next;
            If DMCXC.cdsQry2.Eof Then
               sTDiarios := sTDiarios + ''') ';

         End;
      End;
   End;
End;

Procedure TFRLetras.dblcTDiarioClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If chqTodos.Checked Then
   Begin
      dblcTDiario.Enabled := False;
   End
   Else
   Begin
      If Not chqTodos.Checked Then
      Begin
         dblcTDiario.Enabled := True;
         dblcTDiario.Text := '';
         edtTDiario.Text := '';
      End;
   End;

   If chqTodos.Checked Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (DOC_FREG=''L'' ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';

      DMCXC.cdsQry2.IndexFieldNames;
      DMCXC.cdsQry2.Filter := '';
      DMCXC.cdsQry2.Filtered := False;
      DMCXC.cdsQry2.Close;
      DMCXC.cdsQry2.DataRequest(xSQL);
      DMCXC.cdsQry2.Open;
      sTDiarios := '';
      DMCXC.cdsQry2.First;
      While Not DMCXC.cdsQry2.Eof Do
      Begin
         If length(sTDiarios) = 0 Then
            sTDiarios := 'IN(' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + ''
         Else
            sTDiarios := sTDiarios + ''' ,' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + '';

         DMCXC.cdsQry2.Next;
         If DMCXC.cdsQry2.Eof Then
            sTDiarios := sTDiarios + ''') ';

      End;
   End;
End;

Procedure TFRLetras.chqTodosClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If chqTodos.Checked Then
   Begin
      dblcTDiario.Enabled := False;
      dblcTDiario.Text := '';
      edtTDiario.Text := '';
   End
   Else
   Begin
      dblcTDiario.Enabled := True;
      If Not chqTodos.Checked Then
      Begin
         dblcTDiario.Text := '';
         edtTDiario.Text := '';
      End;
   End;

   If chqTodos.Checked Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (DOC_FREG=''L'' ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';

      DMCXC.cdsQry2.IndexFieldNames;
      DMCXC.cdsQry2.Filter := '';
      DMCXC.cdsQry2.Filtered := False;
      DMCXC.cdsQry2.Close;
      DMCXC.cdsQry2.DataRequest(xSQL);
      DMCXC.cdsQry2.Open;
      sTDiarios := '';
      DMCXC.cdsQry2.First;
      While Not DMCXC.cdsQry2.Eof Do
      Begin
         If length(sTDiarios) = 0 Then
            sTDiarios := 'IN(' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + ''
         Else
            sTDiarios := sTDiarios + ''' ,' + '''' + DMCXC.cdsQry2.fieldbyname('DIARIO').AsString + '';

         DMCXC.cdsQry2.Next;
         If DMCXC.cdsQry2.Eof Then
            sTDiarios := sTDiarios + ''') ';

      End;
   End;
End;

Procedure TFRLetras.FormShow(Sender: TObject);
Begin
   wFechOk := True;
   DecodeDate(DMCXC.dateS, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   dbeAnoMM.Text := IntToStr(Year) + wMes;
   dblcCia.SetFocus;

   Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where CIAID=''''');

   DMCXC.cdsTDoc.Filter := '';
   DMCXC.cdsTDoc.Filter := 'DOC_FREG=''L'' and DOCMOD=''CXC''';
   DMCXC.cdsTDoc.Filtered := True;
   If DMCXC.cdsTDoc.RecordCount = 0 Then
   Begin
      ShowMessage('Tipos de Documento no registra definicion de Letras');
      exit;
   End;

   IniciaDatos;
End;

Procedure TFRLetras.FormCreate(Sender: TObject);
Begin
   CargaDataSouces;
End;

Procedure TFRLetras.CargaDataSouces;
Begin
   ppdbLetras.DataSource := DMCXC.dsMovCxC2;
   dblcCia.LookupTable := DMCXC.cdsCia;
   dblcTDoc.LookupTable := DMCXC.cdsTDoc;
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
End;

Procedure TFRLetras.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

End.

