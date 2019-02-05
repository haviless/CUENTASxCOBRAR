Unit CXC324;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit, ppviewr,
   wwdblook, Buttons, ppBands, ppClass, ppStrtch, ppRegion, ppVar, ppCtrls,
   ppPrnabl, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe,
   Grids, Wwdbigrd, Wwdbgrid, ppModule, daDatMod, ppEndUsr, pptypes,
   ppParameter, CXCUTIL, DB;

Type
   TFConsistencia = Class(TForm)
      ppdbMovCxC2: TppDBPipeline;
      ppRChico: TppReport;
      ppd1: TppDesigner;
      pprResumenCuenta: TppReport;
      ppdbResumenCuenta: TppDBPipeline;
      ppdbResumenCtbl: TppDBPipeline;
      pprResumenCtbl: TppReport;
      ppHeaderBand2: TppHeaderBand;
      lblCiaCtabl: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable8: TppSystemVariable;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppSystemVariable9: TppSystemVariable;
      ppLabel31: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLine8: TppLine;
      pplblPeriodoCtabl: TppLabel;
      ppLine7: TppLine;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppVariable16: TppVariable;
      ppVariable17: TppVariable;
      ppDetailBand2: TppDetailBand;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText8: TppDBText;
      ppDBText5: TppDBText;
      ppFooterBand3: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLine10: TppLine;
      ppVariable18: TppVariable;
      ppVariable19: TppVariable;
      ppDBCalc8: TppDBCalc;
      ppDBCalc9: TppDBCalc;
      ppHeaderBand1: TppHeaderBand;
      pplblCiaCta: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLine4: TppLine;
      pplblPeriodoResCta: TppLabel;
      ppLine5: TppLine;
      ppDetailBand1: TppDetailBand;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText18: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppLine6: TppLine;
      ppParameterList1: TppParameterList;
      pnlInicial: TPanel;
      Label16: TLabel;
      dbgPeriodo: TwwDBGrid;
      BitBtn1: TBitBtn;
      BitBtn4: TBitBtn;
      BitBtn5: TBitBtn;
      Panel2: TPanel;
      Label1: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      bbtnMostrar: TBitBtn;
      bbtnSalir: TBitBtn;
      ppHeaderBand3: TppHeaderBand;
      pplblFecha: TppLabel;
      pplblComp: TppLabel;
      ppLabel32: TppLabel;
      ppLabel124: TppLabel;
      ppLabel130: TppLabel;
      ppLabel131: TppLabel;
      ppLabel135: TppLabel;
      ppLabel136: TppLabel;
      ppLabel137: TppLabel;
      ppLabel139: TppLabel;
      ppLabel143: TppLabel;
      ppLabel145: TppLabel;
      ppLabel146: TppLabel;
      ppLabel147: TppLabel;
      ppLabel153: TppLabel;
      ppLabel154: TppLabel;
      ppLabel155: TppLabel;
      ppLabel157: TppLabel;
      ppLabel158: TppLabel;
      ppLabel159: TppLabel;
      ppLabel165: TppLabel;
      ppLabel166: TppLabel;
      ppLabel167: TppLabel;
      ppLabel169: TppLabel;
      ppLabel170: TppLabel;
      ppLabel171: TppLabel;
      ppLabel173: TppLabel;
      ppLabel174: TppLabel;
      ppLabel175: TppLabel;
      ppLabel177: TppLabel;
      ppLabel178: TppLabel;
      ppLabel179: TppLabel;
      ppLabel181: TppLabel;
      ppLabel182: TppLabel;
      ppLabel183: TppLabel;
      pplblCia: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel187: TppLabel;
      ppLabel192: TppLabel;
      ppLabel193: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable1: TppSystemVariable;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLabel3: TppLabel;
      ppLabel16: TppLabel;
      ppLabel1: TppLabel;
      ppLabel17: TppLabel;
      ppLabel28: TppLabel;
      ppLabel39: TppLabel;
      pplblTitulo: TppLabel;
      ppDBText12: TppDBText;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel2: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppDetailBand3: TppDetailBand;
      varEstado: TppVariable;
      ppDBText19: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppdbtCliente: TppDBText;
      ppvGravado: TppDBText;
      ppvNGravado: TppDBText;
      ppvIGV: TppDBText;
      ppvTotal: TppDBText;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand3: TppSummaryBand;
      ppdbcGravado: TppDBCalc;
      ppdbcNGravado: TppDBCalc;
      ppdbcIGV: TppDBCalc;
      ppdbcTotal: TppDBCalc;
      ppLine9: TppLine;
      ppVariable1: TppVariable;
      ppLabel44: TppLabel;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText20: TppDBText;
      ppDBText6: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLine3: TppLine;
      ppLabel45: TppLabel;
      ppDBText7: TppDBText;
      ppDBCalc5: TppDBCalc;
      BitBtn2: TBitBtn;
      cbDisenoRep: TCheckBox;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure varEstadoCalc(Sender: TObject; Var Value: Variant);
      Procedure ppVariable1Calc(Sender: TObject; Var Value: Variant);
      Procedure ppRChicoPreviewFormCreate(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn4Click(Sender: TObject);
      Procedure BitBtn5Click(Sender: TObject);
      Procedure bbtnMostrarClick(Sender: TObject);
      Procedure bbtnSalirClick(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure dblcCiaNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);

   Private
    { Private declarations }
      xImpTotalxPag: Boolean;
      Procedure CargaDataSources;
   Public
    { Public declarations }
      Procedure IniciaDatos;
   End;

Var
   FConsistencia: TFConsistencia;
   xFiltroP1, xFiltroP2: String;
   Year, Month, Day: Word;
   anomm, wMes: String;
   xMoneda: String;
   sTDiarios: String;

Implementation

Uses CXCDM;

{$R *.DFM}

Procedure TFConsistencia.dblcCiaExit(Sender: TObject);
Begin
   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFConsistencia.IniciaDatos;
Begin
End;

Procedure TFConsistencia.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFConsistencia.varEstadoCalc(Sender: TObject; Var Value: Variant);
Begin
   If DMCXC.CDSQRY.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Value := 'A       N       U       L       A       D       O';
      varEstado.Visible := true;
   End
   Else
      varEstado.Visible := false;
End;

Procedure TFConsistencia.ppVariable1Calc(Sender: TObject; Var Value: Variant);
Begin
   value := DMCXC.cdsqry.RecordCount;
End;

Procedure TFConsistencia.ppRChicoPreviewFormCreate(Sender: TObject);
Begin
   ppRChico.PreviewForm.ClientHeight := 550;
   ppRChico.PreviewForm.ClientWidth := 700;
   TppViewer(ppRChico.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
End;

Procedure TFConsistencia.FormShow(Sender: TObject);
Begin
 // calcula valor de periodo aaaamm tomando como base la fecha del sistema
   DecodeDate(date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);

   If DMCXC.cdsTDiario.RecordCount = 0 Then
   Begin
      ShowMessage('Tipos de Diario no registra definición de Provisiones');
      exit;
   End;

End;

Procedure TFConsistencia.FormCreate(Sender: TObject);
Begin
   DMCXC.cdsMovCxC2.Close;
   CargaDataSources;
   If DMCXC.wAdmin = 'S' Then
      cbDisenoRep.Visible := True
   Else
      cbDisenoRep.Visible := False
End;

Procedure TFConsistencia.CargaDataSources;
Begin
   dblcCia.LookupTable := DMCXC.cdsCia;
   dbgPeriodo.DataSource := DMCXC.dsMovCxC2;
End;

Procedure TFConsistencia.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
//   FVariables.w_Num_Formas :=FVariables.w_Num_Formas-1;
   Action := caFree;
End;

Procedure TFConsistencia.BitBtn1Click(Sender: TObject);
Var
   xEstado, xWhere, sAbrMon, xSQL, xSQL1: String;
   xMenos: double;
Begin
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');

   xFiltroP1 := 'CXC301.CIAID=''' + dblcCia.Text + ''' ';

   xSQL := 'SELECT CXC301.TDIARID DIARIO '
      + 'FROM CXC301, TGE110 '
      + 'WHERE CXC301.DOCID=TGE110.DOCID '
      + 'AND (((DOC_FREG=''P'' OR DOC_FREG=''F'') OR (DOCTIPREG=''NC'')) '
      + 'AND DOCMOD=''CXC'') '
      + 'AND CIAID=' + Quotedstr(dblcCia.text) + ' AND NVL(CXC301.TDIARID,''XX'')<>''XX'' '
      + 'GROUP BY CXC301.TDIARID';

   DMCXC.cdsQry2.IndexFieldNames := '';
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

   xFiltroP2 := ' AND CXC301.CCFCMPRB>=''' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString + ''' '
      + ' AND CXC301.CCFCMPRB<=''' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + '''';

   xEstado := ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' OR CXC301.CCESTADO=''A'') ';

   xSQL := 'SELECT CXC301.TMONID, 0.0000 TOTEXT, TGE103.TMONABR, CXC301.CCNOREG, CXC301.CCFCMPRB, '
      + 'CXC301.CLIEID, CXC301.CCFEMIS, CXC301.DOCID, CXC301.CCSERIE, CXC301.CCNODOC, CXC301.CLIERUC, '
      + 'CXC301.CCNOREG, CXC301.CLIEDES, CXC301.CCTCAMPR, CXC301.CCESTADO, TGE110.DOCDES, '
      + '''DESDE ' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString
      + ' HASTA ' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + ''' RANGO, '
      + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CASE WHEN TGE110.DOCRESTA = ''S''  THEN CCGRAVAD * (-1) ELSE CCGRAVAD * (+1) END ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCGRAVAD*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
      + '  ELSE (TRUNC(((CCGRAVAD*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
      + ' END END CCGRAVAD ,'
      + ' CASE WHEN CCESTADO=''A'' THEN 0 ELSE '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CASE WHEN TGE110.DOCRESTA = ''S'' THEN  CCNOGRAV * (-1) ELSE CCNOGRAV * (+1) END ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCNOGRAV*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
      + '  ELSE (TRUNC(((CCNOGRAV*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
      + ' END END CCNOGRAV ,'
      + ' CASE WHEN CCESTADO=''A'' THEN 0 ELSE '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CASE WHEN TGE110.DOCRESTA = ''S''  THEN    CCIGV * (-1) ELSE    CCIGV * (+1) END ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((   CCIGV*CCTCAMPR )*1000 + 5)/1000,2)) * (-1)'
      + '  ELSE (TRUNC(((   CCIGV*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
      + ' END END CCIGV ,'
      + ' CASE WHEN CCESTADO=''A'' THEN 0 ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCMTOLOC * (-1) ELSE CCMTOLOC * (+1) END '
      + ' END CCMTOORI, '
      + ' CASE WHEN  CCESTADO = ''A'' THEN 0 ELSE  '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (CCGRAVAD-CCFLETE) * (-1) ELSE  (CCGRAVAD-CCFLETE) * (+1) END ELSE  '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC((((CCGRAVAD-CCFLETE)*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
      + '  (TRUNC((((CCGRAVAD-CCFLETE)*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVADFLETE ,'
      + ' CCFLETE, A.FPAGOID, B.DCCOMDES, ''' + edtCia.Text + ''' CIADES, CXC301.CIAID '
      + 'FROM CXC301, TGE110, TGE103, FAC305 A, TGE180 B '
      + 'WHERE CXC301.TMONID=TGE103.TMONID AND '
      + ' (CXC301.DOCID = TGE110.DOCID(+) AND TGE110.DOCMOD=''CXC'') AND '
      + xFiltroP1 + xFiltroP2 + xEstado;

   xSQL := xSQL + ' AND CXC301.CIAID=A.CIAID(+) AND CXC301.DOCID=A.DOCID(+) AND CXC301.CCSERIE=A.FACSERIE(+) '
      + ' AND CXC301.CCNODOC=A.NFAC(+) '
      + ' AND A.CIAID=B.CIAID(+) AND A.FPAGOID=B.CCOMERID(+) ';

   xSQL := xSQL + ' ORDER BY CXC301.DOCID,CXC301.CCFCMPRB,CXC301.CCSERIE,CXC301.CCNODOC';

   Filtracds(DMCXC.cdsQry, xSQL);
   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.EOF Do
   Begin
      DMCXC.cdsQry.Edit;
      If DMCXC.cdsQry.FieldByName('TMONID').AsString <> DMCXC.wTMonLoc Then
      Begin
         If (DMCXC.cdsQry.FieldByName('CCMTOORI').AsFloat <> 0) And (DMCXC.cdsQry.FieldByName('CCTCAMPR').AsFloat <> 0) Then
            DMCXC.cdsQry.FieldByName('TOTEXT').AsFloat := FRound(DMCXC.cdsQry.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsQry.FieldByName('CCTCAMPR').AsFloat, 15, 2)
         Else
            DMCXC.cdsQry.FieldByName('TOTEXT').AsFloat := 0;
      End
      Else
      Begin
         DMCXC.cdsQry.FieldByName('TMONABR').AsString := '';
      End;
      DMCXC.cdsQry.Post;
      DMCXC.cdsQry.Next;
   End;

   If DMCXC.cdsQry.RecordCount = 0 Then
      Raise Exception.create('No hay Datos para su Selección');

   ppdbMovCxC2.DataSource := DMCXC.dsqry;
   ppRChico.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVenta_Consis.rtm';
   ppRChico.template.LoadFromFile;
   ppd1.Report := ppRChico;

   If cbDisenoRep.Checked Then
      ppd1.ShowModal
   Else
      ppRChico.Print;

   ppRChico.stop;
   ppdbMovCxC2.DataSource := Nil;
   ppd1.Report := Nil;
End;

Procedure TFConsistencia.BitBtn4Click(Sender: TObject);
Var
   xEstado, xWhere, sAbrMon, xSQL, xSQL1: String;
   xMenos: double;
Begin
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');

   xFiltroP1 := 'CXC301.CIAID=''' + dblcCia.Text + ''' ';

   xSQL := 'SELECT CXC301.TDIARID DIARIO '
      + 'FROM CXC301, TGE110 '
      + 'WHERE CXC301.DOCID=TGE110.DOCID '
      + 'AND (((DOC_FREG=''P'' OR DOC_FREG=''F'') OR (DOCTIPREG=''NC'')) '
      + 'AND DOCMOD=''CXC'') '
      + 'AND CIAID=' + Quotedstr(dblcCia.text) + ' AND NVL(CXC301.TDIARID,''XX'')<>''XX'' '
      + 'GROUP BY CXC301.TDIARID';

   DMCXC.cdsQry2.IndexFieldNames := '';
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

   xFiltroP2 := ' AND CXC301.CCFCMPRB>=''' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString + ''' '
      + ' AND CXC301.CCFCMPRB<=''' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + '''';

   xEstado := ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' OR CXC301.CCESTADO=''A'') ';

   xSQL := 'SELECT X.CUENTAID, X.DOCRESTA,  SUM( DEBE ) AS DEBE, SUM( HABER ) AS HABE, '
      + '''DESDE ' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString
      + ' HASTA ' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + ''' RANGO, '
      + '''' + edtCia.Text + ''' CIADES, X.CIAID, B.CTADES '
      + 'FROM '
      + '( SELECT A.CIAID, A.CUENTAID, A.CCDH, B.DOCRESTA, '
      + 'CASE WHEN B.DOCRESTA=''S'' THEN SUM( A.CCMTOLOC)*-1 ELSE SUM( A.CCMTOLOC) END MONTO, '
      + 'CASE WHEN B.DOCRESTA=''S'' THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
      + 'SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END ) END DEBE, '
      + 'CASE WHEN B.DOCRESTA= ''S'' THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
      + 'SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END ) END HABER '
      + 'FROM CXC301, CXC302 A, TGE110 B '
      + 'WHERE ' + xFiltroP1 + xFiltroP2
      + ' AND ( CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' ) '
      + ' AND ( CXC301.CIAID = A.CIAID     AND CXC301.TDIARID=A.TDIARID '
      + ' AND   CXC301.CCANOMES=A.CCANOMES AND CXC301.CCNOREG=A.CCNOREG ) '
      + ' AND ( CXC301.DOCID=B.DOCID AND B.DOCMOD=''CXC'' ) '
      + 'GROUP BY A.CIAID, A.CUENTAID, A.CCDH, DOCRESTA ) X, TGE202 B '
      + 'WHERE X.CIAID=B.CIAID(+) AND X.CUENTAID=B.CUENTAID(+) '
      + 'GROUP BY X.CIAID, X.CUENTAID, B.CTADES, X.DOCRESTA '
      + 'ORDER BY X.CIAID, X.CUENTAID';

   Filtracds(DMCXC.cdsQry, xSQL);

   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.EOF Do
   Begin
      If (DMCXC.cdsQry.FieldByName('DEBE').AsFloat <> 0) And
         (DMCXC.cdsQry.FieldByName('HABE').AsFloat <> 0) Then
      Begin
         DMCXC.cdsQry.Edit;
         If DMCXC.cdsQry.FieldByName('DEBE').AsFloat > DMCXC.cdsQry.FieldByName('HABE').AsFloat Then
         Begin
            DMCXC.cdsQry.FieldByName('DEBE').AsFloat := DMCXC.cdsQry.FieldByName('DEBE').AsFloat - DMCXC.cdsQry.FieldByName('HABE').AsFloat;
            DMCXC.cdsQry.FieldByName('HABE').AsFloat := 0;
         End;
         If DMCXC.cdsQry.FieldByName('HABE').AsFloat > DMCXC.cdsQry.FieldByName('DEBE').AsFloat Then
         Begin
            DMCXC.cdsQry.FieldByName('HABE').AsFloat := DMCXC.cdsQry.FieldByName('HABE').AsFloat - DMCXC.cdsQry.FieldByName('DEBE').AsFloat;
            DMCXC.cdsQry.FieldByName('DEBE').AsFloat := 0;
         End;
         DMCXC.cdsQry.Post;
      End;
      DMCXC.cdsQry.Next;
   End;

   If DMCXC.cdsQry.RecordCount = 0 Then
      Raise Exception.Create('No existen registros que mostrar');

   ppdbResumenCuenta.DataSource := DMCXC.dsqry;
   pprResumenCuenta.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVtaResCta_consis.rtm';
   pprResumenCuenta.template.LoadFromFile;
   ppd1.Report := pprResumenCuenta;

   If cbDisenoRep.Checked Then
      ppd1.ShowModal
   Else
      pprResumenCuenta.Print;
   ppd1.Report := Nil;
End;

Procedure TFConsistencia.BitBtn5Click(Sender: TObject);
Var
   xEstado, xWhere, sAbrMon, xSQL, xSQL1: String;
   xMenos: double;
Begin
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');

   xFiltroP1 := 'CXC301.CIAID=''' + dblcCia.Text + ''' ';

   xSQL := 'SELECT CXC301.TDIARID DIARIO '
      + 'FROM CXC301, TGE110 '
      + 'WHERE CXC301.DOCID=TGE110.DOCID '
      + 'AND (((DOC_FREG=''P'' OR DOC_FREG=''F'') OR (DOCTIPREG=''NC'')) '
      + 'AND DOCMOD=''CXC'') '
      + 'AND CIAID=' + Quotedstr(dblcCia.text) + ' AND NVL(CXC301.TDIARID,''XX'')<>''XX'' '
      + 'GROUP BY CXC301.TDIARID';

   DMCXC.cdsQry2.IndexFieldNames := '';
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

   xFiltroP2 := ' AND CXC301.CCFCMPRB>=''' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString + ''' '
      + ' AND CXC301.CCFCMPRB<=''' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + '''';

   xEstado := ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' OR CXC301.CCESTADO=''A'') ';

   xSQL := 'SELECT X.CUENTAID, X.AUXID DCPAUXID, X.SERIE CPSERIE, X.NODOC CPNODOC, '
      + 'max(femis) AS CPFEMIS, docresta, sum(debe) as DEBE, sum(haber) AS HABE, '
      + '''DESDE ' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString
      + ' HASTA ' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + ''' RANGO, '
      + '''' + edtCia.Text + ''' CIADES, X.CIAID, B.CTADES '
      + 'from ( '
      + 'SELECT A.CIAID, A.CUENTAID, A.CCDH, '
      + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CLIEID  ELSE '' '' END AUXID, '
      + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CCSERIE ELSE '' '' END SERIE, '
      + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CCNODOC ELSE '' '' END NODOC, '
      + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CCFEMIS ELSE A.CCFEMIS END FEMIS, B.DOCRESTA, '
      + 'CASE WHEN B.DOCRESTA= ''S'' THEN SUM( A.CCMTOLOC)*-1 ELSE SUM(A.CCMTOLOC) END MONTO, '
      + 'CASE WHEN B.DOCRESTA= ''S'' THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
      + 'SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END ) END DEBE, '
      + 'CASE WHEN B.DOCRESTA=''S'' THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
      + 'SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END ) END HABER '
      + 'FROM CXC301, CXC302 A, TGE110 B, TGE202 C '
      + 'WHERE ' + xFiltroP1 + xFiltroP2
      + ' AND ( CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' ) '
      + ' AND (CXC301.CIAID = A.CIAID  AND CXC301.TDIARID = A.TDIARID '
      + ' AND CXC301.CCANOMES= A.CCANOMES AND CXC301.CCNOREG = A.CCNOREG )'
      + ' AND ( CXC301.DOCID=B.DOCID AND B.DOCMOD=''CXC'' ) '
      + ' AND ( A.CIAID=C.CIAID AND A.CUENTAID=C.CUENTAID ) '
      + 'GROUP BY A.CIAID, A.CUENTAID, A.CCDH, C.CTA_AUX, C.CTA_DOC, A.CLIEID, '
      + 'A.CCSERIE, A.CCNODOC, A.CCFEMIS,  DOCRESTA ) X, TGE202 B '
      + 'WHERE X.CIAID=B.CIAID(+) AND X.CUENTAID=B.CUENTAID(+) '
      + 'GROUP BY X.CIAID, X.CUENTAID, B.CTADES, X.AUXID, X.SERIE, X.NODOC, X.DOCRESTA '
      + 'ORDER BY X.CIAID, X.CUENTAID, B.CTADES, X.AUXID, X.SERIE, X.NODOC, X.DOCRESTA';
   Filtracds(DMCXC.cdsQry, xSQL);
   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.EOF Do
   Begin
      If (DMCXC.cdsQry.FieldByName('DEBE').AsFloat <> 0) And
         (DMCXC.cdsQry.FieldByName('HABE').AsFloat <> 0) Then
      Begin
         DMCXC.cdsQry.Edit;
         If DMCXC.cdsQry.FieldByName('DEBE').AsFloat > DMCXC.cdsQry.FieldByName('HABE').AsFloat Then
         Begin
            DMCXC.cdsQry.FieldByName('DEBE').AsFloat := DMCXC.cdsQry.FieldByName('DEBE').AsFloat - DMCXC.cdsQry.FieldByName('HABE').AsFloat;
            DMCXC.cdsQry.FieldByName('HABE').AsFloat := 0;
         End;
         If DMCXC.cdsQry.FieldByName('HABE').AsFloat > DMCXC.cdsQry.FieldByName('DEBE').AsFloat Then
         Begin
            DMCXC.cdsQry.FieldByName('HABE').AsFloat := DMCXC.cdsQry.FieldByName('HABE').AsFloat - DMCXC.cdsQry.FieldByName('DEBE').AsFloat;
            DMCXC.cdsQry.FieldByName('DEBE').AsFloat := 0;
         End;
         DMCXC.cdsQry.Post;
      End;
      DMCXC.cdsQry.Next;
   End;

   If DMCXC.cdsQry.RecordCount = 0 Then
      Raise Exception.Create('No existen registros que mostrar');

   ppdbResumenCtbl.DataSource := DMCXC.dsqry;
   pprResumenCtbl.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVtaResCtbl_consis.rtm';
   pprResumenCtbl.template.LoadFromFile;
   ppd1.Report := pprResumenCtbl;

   If cbDisenoRep.Checked Then
      ppd1.ShowModal
   Else
      pprResumenCtbl.Print;
   ppd1.Report := Nil;
End;

Procedure TFConsistencia.bbtnMostrarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'Select * from CXC312 where CIAID=''' + dblcCia.Text + ''' ORDER BY NOCIERRE DESC';
   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.IndexFieldNames := '';
   DMCXC.cdsMovCxC2.DataRequest(xSQL);
   DMCXC.cdsMovCxC2.Open;
End;

Procedure TFConsistencia.bbtnSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFConsistencia.BitBtn2Click(Sender: TObject);
Var
   xEstado, xWhere, sAbrMon, xSQL, xSQL1: String;
   xMenos: double;
Begin
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');

   xFiltroP1 := 'CXC301.CIAID=''' + dblcCia.Text + ''' ';

   xSQL := 'SELECT CXC301.TDIARID DIARIO '
      + 'FROM CXC301, TGE110 '
      + 'WHERE CXC301.DOCID=TGE110.DOCID '
      + 'AND (((DOC_FREG=''P'' OR DOC_FREG=''F'') OR (DOCTIPREG=''NC'')) '
      + 'AND DOCMOD=''CXC'') '
      + 'AND CIAID=' + Quotedstr(dblcCia.text) + ' AND NVL(CXC301.TDIARID,''XX'')<>''XX'' '
      + 'GROUP BY CXC301.TDIARID';

   DMCXC.cdsQry2.IndexFieldNames := '';
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

   xFiltroP2 := ' AND CXC301.CCFCMPRB>=''' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString + ''' '
      + ' AND CXC301.CCFCMPRB<=''' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + '''';

   xEstado := ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' OR CXC301.CCESTADO=''A'') ';

   xSQL := 'SELECT CXC301.TMONID, 0.0000 TOTEXT, TGE103.TMONABR, CXC301.CCNOREG, CXC301.CCFCMPRB, '
      + 'CXC301.CLIEID, CXC301.CCFEMIS, CXC301.DOCID, CXC301.CCSERIE, CXC301.CCNODOC, CXC301.CLIERUC, '
      + 'CXC301.CCNOREG, CXC301.CLIEDES, CXC301.CCTCAMPR, CXC301.CCESTADO, TGE110.DOCDES, '
      + '''DESDE ' + DMCXC.cdsMovCxC2.FieldByName('CNSPRICIE').AsString
      + ' HASTA ' + DMCXC.cdsMovCxC2.FieldByName('CNSULTCIE').AsString + ''' RANGO, '
      + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CASE WHEN TGE110.DOCRESTA = ''S''  THEN CCGRAVAD * (-1) ELSE CCGRAVAD * (+1) END ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCGRAVAD*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
      + '  ELSE (TRUNC(((CCGRAVAD*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
      + ' END END CCGRAVAD ,'
      + ' CASE WHEN CCESTADO=''A'' THEN 0 ELSE '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CASE WHEN TGE110.DOCRESTA = ''S'' THEN  CCNOGRAV * (-1) ELSE CCNOGRAV * (+1) END ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCNOGRAV*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
      + '  ELSE (TRUNC(((CCNOGRAV*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
      + ' END END CCNOGRAV ,'
      + ' CASE WHEN CCESTADO=''A'' THEN 0 ELSE '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CASE WHEN TGE110.DOCRESTA = ''S''  THEN    CCIGV * (-1) ELSE    CCIGV * (+1) END ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((   CCIGV*CCTCAMPR )*1000 + 5)/1000,2)) * (-1)'
      + '  ELSE (TRUNC(((   CCIGV*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
      + ' END END CCIGV ,'
      + ' CASE WHEN CCESTADO=''A'' THEN 0 ELSE '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCMTOLOC * (-1) ELSE CCMTOLOC * (+1) END '
      + ' END CCMTOORI, '
      + ' CASE WHEN  CCESTADO = ''A'' THEN 0 ELSE  '
      + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (CCGRAVAD-CCFLETE) * (-1) ELSE  (CCGRAVAD-CCFLETE) * (+1) END ELSE  '
      + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC((((CCGRAVAD-CCFLETE)*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
      + '  (TRUNC((((CCGRAVAD-CCFLETE)*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVADFLETE ,'
      + ' CCFLETE, A.FPAGOID, B.DCCOMDES, ''' + edtCia.Text + ''' CIADES, CXC301.CIAID, '
      + ' A.DOCPAG, NUMDOCPAG '
      + 'FROM CXC301, TGE110, TGE103, FAC305 A, TGE180 B '
      + 'WHERE CXC301.TMONID=TGE103.TMONID AND '
      + ' (CXC301.DOCID = TGE110.DOCID(+) AND TGE110.DOCMOD=''CXC'') AND '
      + xFiltroP1 + xFiltroP2 + xEstado;

   xSQL := xSQL + ' AND CXC301.CIAID=A.CIAID(+) AND CXC301.DOCID=A.DOCID(+) AND CXC301.CCSERIE=A.FACSERIE(+) '
      + ' AND CXC301.CCNODOC=A.NFAC(+) '
      + ' AND A.CIAID=B.CIAID(+) AND A.FPAGOID=B.CCOMERID(+) ';

   xSQL := xSQL + ' ORDER BY CXC301.DOCID,CXC301.CCFCMPRB,CXC301.CCSERIE,CXC301.CCNODOC';

   Filtracds(DMCXC.cdsQry, xSQL);
   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.EOF Do
   Begin
      DMCXC.cdsQry.Edit;
      If DMCXC.cdsQry.FieldByName('TMONID').AsString <> DMCXC.wTMonLoc Then
      Begin
         If (DMCXC.cdsQry.FieldByName('CCMTOORI').AsFloat <> 0) And (DMCXC.cdsQry.FieldByName('CCTCAMPR').AsFloat <> 0) Then
            DMCXC.cdsQry.FieldByName('TOTEXT').AsFloat := FRound(DMCXC.cdsQry.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsQry.FieldByName('CCTCAMPR').AsFloat, 15, 2)
         Else
            DMCXC.cdsQry.FieldByName('TOTEXT').AsFloat := 0;
      End
      Else
      Begin
         DMCXC.cdsQry.FieldByName('TMONABR').AsString := '';
      End;
      DMCXC.cdsQry.Post;
      DMCXC.cdsQry.Next;
   End;

   If DMCXC.cdsQry.RecordCount = 0 Then
      Raise Exception.create('No hay Datos para su Selección');

   ppdbMovCxC2.DataSource := DMCXC.dsqry;
   ppRChico.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVenta_Pago.rtm';
   ppRChico.template.LoadFromFile;
   ppd1.Report := ppRChico;

   If cbDisenoRep.Checked Then
      ppd1.ShowModal
   Else
      ppRChico.Print;

   ppRChico.stop;
   ppdbMovCxC2.DataSource := Nil;
   ppd1.Report := Nil;
End;

Procedure TFConsistencia.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

End.

