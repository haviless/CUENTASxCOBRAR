Unit CxC505;

//  Actualizaciones
//  SAR-2009-0051    HNORIEGA se añade función para exportar a Excel
//  sar2010-0051     HNORIEGA ExportaGridExcel
//  HPC_201301_CXC   RMEDINA  Reordenamiento de Opciones de DAOT, muestra de detalle por Cliente

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit, wwdblook, StrContainer,
   Grids, Wwdbigrd, Wwdbgrid, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
   ppProd, ppClass, ppReport, ppCtrls, ppBands, ppVar, ppPrnabl, dbclient, db, wwClient,
   ppEndUsr, wwSpeedButton, wwDBNavigator, wwclearpanel, Wwdbdlg, Variants,
   shellapi, wwexport, oaVariables, ppParameter, Wwdbspin;

Type
   TFTransfDAOT = Class(TForm)
      BitBtn2: TBitBtn;
      savdlg1: TSaveDialog;
      bbtnBorra: TBitBtn;
      bbtnGrabaTxt: TBitBtn;
      edtNomArch: TEdit;
      scFILES: TStrContainer;
      bbtnImprime: TBitBtn;
      ppReportePDT: TppReport;
      bbtnGrabaCds: TBitBtn;
      BitBtn1: TBitBtn;
      pprDetalle: TppReport;
      BitBtn3: TBitBtn;
      ppDesigner1: TppDesigner;
      ppDBReporteDAOT: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      pplblCiaDet: TppLabel;
      pplblTitDet: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText12: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc4: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppLine2: TppLine;
      ppDBCalc14: TppDBCalc;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDBCalc3: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppDBCalc13: TppDBCalc;
      ppLine1: TppLine;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppLine3: TppLine;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppDBText11: TppDBText;
      ppLabel26: TppLabel;
      Label5: TLabel;
      edtProv: TEdit;
      dblcdClie: TwwDBLookupComboDlg;
      ppDesigner2: TppDesigner;
      Label6: TLabel;
      cbSinRuc: TCheckBox;
      BitBtn4: TBitBtn;
      bbtnRenumerar: TBitBtn;
      ppParameterList1: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      pplblTit: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      pplblRUC: TppLabel;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel5: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLabel32: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppLabel34: TppLabel;
      ppLine6: TppLine;
      gbFiltro: TGroupBox;
      Label2: TLabel;
      dbeAno: TwwDBSpinEdit;
      lblCia: TLabel;
      dblcRUC: TwwDBLookupCombo;
      edtCia: TEdit;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      Label1: TLabel;
      dbeUITs: TwwDBEdit;
      Label3: TLabel;
      Panel1: TPanel;
      dbeValorUIT: TwwDBEdit;
      Label4: TLabel;
      bbtnGenerar: TBitBtn;
      bbtnRecuperar: TBitBtn;
      GroupBox1: TGroupBox;
      dbgObligaciones: TwwDBGrid;
      BitBtn5: TBitBtn;
      lblRegistros: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure IniciaDatos;
      Procedure dblcRUCExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure dbeAnoxExit(Sender: TObject);
      Procedure bbtnGenerarClick(Sender: TObject);
      Procedure bbtnRecuperarClick(Sender: TObject);
      Procedure bbtnImprimeClick(Sender: TObject);
      Procedure bbtnGrabaCdsClick(Sender: TObject);
      Procedure bbtnGrabaTxtClick(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn3Click(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure dblcdClieEnter(Sender: TObject);
      Procedure dblcdClieExit(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure BitBtn4Click(Sender: TObject);
      Procedure bbtnRenumerarClick(Sender: TObject);
      Procedure dbgObligacionesKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgObligacionesDblClick(Sender: TObject);
      Procedure dbeAnoExit(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure BitBtn5Click(Sender: TObject);
      Procedure dbgObligacionesTitleButtonClick(Sender: TObject;
         AFieldName: String);

   Private
  { Private declarations }
      Procedure CargaDataSource;
   Public
   // Inicio: HPC_201301_CXC
      xfindexo: String;
   // Fin: HPC_201301_CXC

  { Public declarations }
      Function OperClientDataSet(cdsOrigen: TwwClientDataSet; wExpresion, wCondicion: String): Double;
      Procedure ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);

   End;

Var
   FTransfDAOT: TFTransfDAOT;

Implementation

Uses CxCDM, CxC505A;

{$R *.DFM}

Procedure TFTransfDAOT.ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
Begin
   Screen.Cursor := crHourGlass;
   With xDataGrid, xDataGrid.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := xFileName + '.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(xDataGrid.exportoptions.Filename),
            Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFTransfDAOT.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFTransfDAOT.IniciaDatos;
Var
   XSQL: String;
Begin

   dbgObligaciones.DataSource := Nil;
// Inicio: HPC_201301_CXC
  //dblcRUC.Clear;
  //edtCia.Clear;
  //dbeAno.Clear;
  //dbeUITs.Text:='3';
   dbeUITs.Text := '2';
   dblcTDiario.Text := '09';
// Fin: HPC_201301_CXC
   dbeValorUIT.Clear;

   xSQL := 'Select ''  '' CORRELAT,'' '' TD_DECLAR, '' '' RUC_DECLAR,'
      + ' '' '' PERIODO,'' '' TIPPERID,'' '' TIPPERS, '' '' TD_CLIE, '
      + ' '' ''CLIERUC, 0 IMPORTE,'' '' CLIEAPEPAT, '' '' CLIEAPEMAT,'
      + ' '' '' CLIENOMBRE,'' '' CLIENOMBRE1,'' '' CLIEDES FROM DUAL ';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSqL);
   DMCXC.cdsQry3.Open;

   dbgObligaciones.Selected.clear;
   dbgObligaciones.Selected.Add('CORRELAT'#9'5'#9'Corr.');
   dbgObligaciones.Selected.Add('TD_DECLAR'#9'6'#9'T.Doc~Declar.');
   dbgObligaciones.Selected.Add('RUC_DECLAR'#9'12'#9'RUC~Declarante');
   dbgObligaciones.Selected.Add('PERIODO'#9'6'#9'Periodo');
   dbgObligaciones.Selected.Add('TIPPERID'#9'5'#9'Tipo~Persona');
   dbgObligaciones.Selected.Add('TD_CLIE'#9'6'#9'T.Doc~Cliente');
   dbgObligaciones.Selected.Add('CLIERUC'#9'12'#9'RUC/DNI');
   dbgObligaciones.Selected.Add('IMPORTE'#9'15'#9'Importe~Total');
   dbgObligaciones.Selected.Add('CLIEAPEPAT'#9'20'#9'Apellido Paterno');
   dbgObligaciones.Selected.Add('CLIEAPEMAT'#9'20'#9'Apellido Materno');
   dbgObligaciones.Selected.Add('CLIENOMBRE'#9'15'#9'Nombre');
   dbgObligaciones.Selected.Add('CLIENOMBRE1'#9'15'#9'Segundo Nombre');
   dbgObligaciones.Selected.Add('CLIEDES'#9'50'#9'Razón Social');
   dbgObligaciones.DataSource := DMCXC.dsQry3;
End;

Procedure TFTransfDAOT.dblcRUCExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   If length(trimleft(trimright(dblcRUC.Text))) = 0 Then
   Begin
      ShowMessage('Digite o Escoja RUC de Compañía');
      dblcRUC.SetFocus;
      exit;
   End;
   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CIARUC', dblcRUC.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('RUC de Compañía Inválido');
      dblcRUC.SetFocus;
      exit;
   End;
   dblcTDiario.DropDown;
End;

Procedure TFTransfDAOT.dblcTDiarioExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;

   DMCXC.cdsTDiario.SetKey;
   DMCXC.cdsTDiario.FieldByName('TDIARID').AsString := dblcTDiario.Text;
   If Not DMCXC.cdsTDiario.Gotokey Then
   Begin
      ShowMessage('Tipo de Diario no Permitido');
      dblcTDiario.SetFocus;
      exit;
   End;

   DMCXC.cdsTDoc.Filtered := False;
   DMCXC.cdsTDoc.Filter := '';
   DMCXC.cdsTDoc.Filter := 'TDIARID=''' + dblcTDiario.Text + ''' OR TDIARID2=''' + dblcTDiario.Text + '''';
   DMCXC.cdsTDoc.Filtered := True;

   edtTDiario.Text := DMCXC.cdsTDiario.FieldByName('TDIARDES').AsString;
End;

Procedure TFTransfDAOT.dbeAnoxExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
End;

Procedure TFTransfDAOT.bbtnGenerarClick(Sender: TObject);
Var
   xSQL, xSQL1, xSQL2, xSQL3, xNombre, xVar: String;
   xCorrel: integer;
   xMinimo: double;
Begin
// Inicio: HPC_201301_CXC
   xSQL := 'Select max(UITMONTO) UITMONTO From TGE188 Where UITANO =''' + dbeAno.Text + ''' ';
   DMCXC.cdsQry9.Close;
   DMCXC.cdsQry9.DataRequest(xSql);
   DMCXC.cdsQry9.Open;
   dbeValorUIT.Text := DMCXC.cdsQry9.FieldByname('UITMONTO').AsString;
// Final: HPC_201301_CXC

   If Length(dblcRUC.Text) = 0 Then
   Begin
      ShowMessage('Falta Seleccionar el RUC');
      dblcRUC.SetFocus;
      Exit;
   End;

   If length(dbeAno.Text) = 0 Then
   Begin
      ShowMessage('Falta Ingresar Periodo');
      dbeAno.SetFocus;
      Exit;
   End;

   If length(dbeAno.Text) < 4 Then
   Begin
      ShowMessage('Periodo No Valido');
      dbeAno.SetFocus;
      Exit;
   End;

   If dbeAno.Text < '1999' Then
   Begin
      ShowMessage('Año Inválido');
      dbeAno.SetFocus;
      Exit;
   End;

   DMCXC.cdsQry2.Close;
   xSQL := 'Select CORRELAT,TD_DECLAR, RUC_DECLAR, PERIODO, '
      + '       CXC404.TIPPERID, TD_CLIE, CLIERUC, '
      + '       CASE WHEN TIPPERS IS NOT NULL THEN TIPPERS ELSE ''S'' END TIPPERS, '
      + '       IMPORTE, CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, CLIEDES '
      + '  from CXC404, TGE109 '
      + ' where RUC_DECLAR=' + quotedstr(dblcRUC.Text)
      + '   and PERIODO=' + quotedstr(dbeAno.Text)
      + '   and TGE109.TIPPERID(+)=CXC404.TIPPERID '
      + ' order by CORRELAT';
   DMCXC.cdsQry2.filtered := false;
   DMCXC.cdsQry2.indexfieldnames := '';
   DMCXC.cdsQry2.ProviderName := 'dspTGE';
   DMCXC.cdsQry2.DataRequest(xSQL);
   DMCXC.cdsQry2.Open;
   If DMCXC.cdsQry2.Recordcount > 0 Then
   Begin
      DMCXC.cdsQry2.Close;
      If MessageDlg('¿Periodo ya ha sido anteriormente grabado, regenerar información?',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         bbtnRecuperarClick(Sender);
         ShowMessage('Se ha recuperado la información anterior');
         exit;
      End;
   End;
   DMCXC.cdsQry2.Close;

   Screen.Cursor := crHourGlass;
// Inicio: HPC_201301_CXC
  //xSQL:= 'Select 0 CORRELAT,''6'' TD_DECLAR,'
// Fin: HPC_201301_CXC
   xSQL := 'Select ''6'' TD_DECLAR,'
      + quotedstr(dblcRUC.Text) + ' RUC_DECLAR,'
      + quotedstr(dbeAno.Text) + ' PERIODO, '
      + '       CASE WHEN TGE204.TIPPERID IS NOT NULL THEN TGE204.TIPPERID ELSE ''01'' END TIPPERID, '
      + '       CASE WHEN TIPPERS IS NOT NULL THEN TIPPERS ELSE ''S'' END TIPPERS, '
      + '       CASE WHEN LENGTH(CXC301.CLIERUC)=11 THEN ''6'' ELSE ''1'' END TD_CLIE, '
      + '       CXC301.CLIERUC, '
      + '       SUM(CASE when DOCRESTA=''S'' '
      + '                then (CASE WHEN CXC301.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + '                           THEN (NVL(CCGRAVAD,0)*-1)+( NVL(CCNOGRAV,0)*-1) '
      + '                           ELSE ((NVL(CCGRAVAD,0)*CCTCAMPR)*-1)+((NVL(CCNOGRAV,0)*CCTCAMPR)*-1) END ) '
      + '                else (CASE WHEN CXC301.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + '                           THEN CASE WHEN DOCTIPREG in (''F'',''B'') '
      + '                                     THEN (NVL(CCGRAVAD,0)+ NVL(CCNOGRAV,0)) '
      + '                                     ELSE CCMTOLOC END '
      + '                           ELSE CASE WHEN DOCTIPREG in (''F'',''B'') '
      + '                                     THEN (NVL(CCGRAVAD,0)*CCTCAMPR)+(NVL(CCNOGRAV,0)*CCTCAMPR) '
      + '                                     ELSE CCMTOLOC END '
      + '                      END ) '
      + '           end ) IMPORTE, '
      + '       CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, TGE204.CLIEDES ' //DMCXC.wReplacCeros(
      + '  from CXC301, '
      + '       (SELECT CLIERUC, CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, CLIEDES, TIPPERID '
      + '          FROM TGE204 '
      + '         GROUP BY CLIERUC, CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, CLIEDES, TIPPERID ) TGE204, '
      + '       TGE110, TGE109 '
      + ' where CXC301.CIAID in (select CIAID from TGE101 where CIARUC=' + quotedstr(dblcRUC.Text) + ')';
   xSQL := xSQL + ' AND TO_CHAR(CCFEMIS,''YYYY'')=' + QuotedStr(dbeAno.Text);
   xSQL := xSQL + ' AND ( LENGTH(CXC301.CLIERUC)=11 OR LENGTH(CXC301.CLIERUC)=8 ) ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,2,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,3,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,4,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,5,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,6,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,7,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND SUBSTR(CXC301.CLIERUC,8,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ';
   xSQL := xSQL + ' AND NVL(SUBSTR(CXC301.CLIERUC,09,1),'' '') IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'','' '') ';
   xSQL := xSQL + ' AND NVL(SUBSTR(CXC301.CLIERUC,10,1),'' '') IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'','' '') ';

   xSQL := xSQL + '  AND CXC301.TDIARID=' + quotedstr(dblcTDiario.Text)
      + '  AND (CCESTADO=''P'' or CCESTADO=''C'')'
      + '  AND TGE204.CLIERUC(+)=CXC301.CLIERUC '
      + '  AND TGE110.DOCMOD=''CXC'' and TGE110.DOCID=CXC301.DOCID '
      + '  AND TGE109.TIPPERID(+)=TGE204.TIPPERID '
      + 'group by CXC301.CLIERUC, CASE WHEN TGE204.TIPPERID IS NOT NULL THEN TGE204.TIPPERID ELSE ''01'' END, '
      + '         CASE WHEN TIPPERS IS NOT NULL THEN TIPPERS ELSE ''S'' END, '
      + '         CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, TGE204.CLIEDES ';

// Inicio: HPC_201301_CXC
   xMinimo := strtofloat(dbeUITs.Text) * strtofloat(dbeValorUIT.Text);
   xSqL2 := 'Select rownum CORRELAT,A.* From (Select A.* From (' + xSQL + ') A Where Importe>=' + FloatToStr(xMinimo) + ' ORDER BY Importe ) A';
// Fin: HPC_201301_CXC

   DMCXC.cdsQry3.filtered := false;
   DMCXC.cdsQry3.indexfieldnames := '';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.ProviderName := 'dspTGE';
// Inicio: HPC_201301_CXC
    //DMCXC.cdsQry3.DataRequest(xSQL);
// Fin: HPC_201301_CXC
   DMCXC.cdsQry3.DataRequest(xSqL2);
   DMCXC.cdsQry3.Open;

   TNumericField(DMCXC.cdsQry3.FieldByName('IMPORTE')).DisplayFormat := '###,###,##0.00';
   lblRegistros.Caption := 'N°Registros :' + IntToStr(DMCXC.cdsQry3.RecordCount);

   DMCXC.cdsQry3.First;
   DMCXC.cdsQry3.EnableControls;
   dbgObligaciones.Selected.clear;
   dbgObligaciones.Selected.Add('CORRELAT'#9'5'#9'Corr.');
   dbgObligaciones.Selected.Add('TD_DECLAR'#9'6'#9'T.Doc~Declar.');
   dbgObligaciones.Selected.Add('RUC_DECLAR'#9'12'#9'RUC~Declarante');
   dbgObligaciones.Selected.Add('PERIODO'#9'6'#9'Periodo');
   dbgObligaciones.Selected.Add('TIPPERID'#9'5'#9'Tipo~Persona');
   dbgObligaciones.Selected.Add('TD_CLIE'#9'6'#9'T.Doc~Cliente');
   dbgObligaciones.Selected.Add('CLIERUC'#9'12'#9'RUC/DNI');
   dbgObligaciones.Selected.Add('IMPORTE'#9'15'#9'Importe~Total');
   dbgObligaciones.Selected.Add('CLIEAPEPAT'#9'20'#9'Apellido Paterno');
   dbgObligaciones.Selected.Add('CLIEAPEMAT'#9'20'#9'Apellido Materno');
   dbgObligaciones.Selected.Add('CLIENOMBRE'#9'15'#9'Nombre');
   dbgObligaciones.Selected.Add('CLIENOMBRE1'#9'15'#9'Segundo Nombre');
   dbgObligaciones.Selected.Add('CLIEDES'#9'50'#9'Razón Social');
   dbgObligaciones.DataSource := DMCXC.dsQry3;

   dbgObligaciones.ColumnByName('IMPORTE').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(IMPORTE)', DMCXC.cdsQry3.Filter), ffNumber, 15, 2);

   edtNomArch.Text := 'DAOT' + dblcRUC.Text + dbeAno.Text + '.txt';
   savdlg1.FileName := edtNomArch.Text;
   bbtnImprime.enabled := True;
   BitBtn3.enabled := False;
   BitBtn4.enabled := False;

   DMCXC.cdsQry3.EnableControls;
   DMCXC.cdsQry3.First;
   dbgObligaciones.SetFocus;
   Screen.Cursor := crDefault;
   gbFiltro.Enabled := False;
End;

Procedure TFTransfDAOT.bbtnImprimeClick(Sender: TObject);
Var
   x10: Integer;
Begin
   If DMCXC.cdsQry3.RecordCount = 0 Then
   Begin
      ShowMessage('No existe Detalle a Imprimir');
      exit;
   End;
   ppDBReporteDAOT.dataSource := DMCXC.dsQry3;

   If cbSinRuc.Checked Then
   Begin
      DMCXC.cdsQry3.Filtered := False;
      DMCXC.cdsQry3.Filter := '';
      DMCXC.cdsQry3.Filter := 'CLIERUC IS NOT NULL';
      DMCXC.cdsQry3.Filtered := True;
   End
   Else
   Begin
      DMCXC.cdsQry3.Filtered := False;
      DMCXC.cdsQry3.Filter := '';
   End;

   ppReportePDT.DataPipeline := ppDBReporteDAOT;
   DMCXC.cdsQry3.DisableControls;
  //ppReportePDT.Template.FileName := ExtractFilePath( application.ExeName ) + wRutaRpt+'\ReporteDAOT.rtm' ;
  //ppReportePDT.Template.LoadFromFile;

   pplblTit.Caption := 'DECLARACION ANUAL DE OPERACIONES CON TERCEROS - EJERCICIO ' + dbeAno.Text;
   pplblRUC.Caption := 'RUC : ' + dblcRUC.Text;
  //ppDesigner1.ShowModal;
   ppReportePDT.Print;
   ppReportePDT.Stop;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 Do
   Begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
      Begin
         Self.Components[x10].Free;
      End;
      x10 := x10 - 1;
   End;
   ppDBReporteDAOT.dataSource := Nil;
   ppReportePDT.DataPipeline := Nil;

   DMCXC.cdsQry3.EnableControls;
End;

Procedure TFTransfDAOT.bbtnGrabaTxtClick(Sender: TObject);
Var
   xLinea, xWhere: String;
Begin
   If length(trimleft(trimright(edtNomArch.Text))) = 0 Then
   Begin
      ShowMessage('Falta Archivo Destino');
      exit;
   End;

// verificacion de datos
   DMCXC.cdsQry3.DisableControls;
   DMCXC.cdsQry3.First;
   While Not DMCXC.cdsQry3.EOF Do
   Begin
      If length(trim(DMCXC.cdsQry3.fieldbyname('CLIERUC').AsString)) = 0 Then
      Begin
         ShowMessage('Falta RUC para Cliente ' + DMCXC.cdsQry3.fieldbyname('CLIEDES').AsString);
         //+chr(13)+' Registro:'+DMCXC.cdsQry3.fieldbyname('CPNOREG').AsString);
         DMCXC.cdsQry3.EnableControls;
         exit;
      End;

      xWhere := 'TIPPERID=' + quotedstr(DMCXC.cdsQry3.fieldbyname('TIPPERID').AsString);
      If DMCXC.Buscaqry('dspUltTGE', 'TGE109', 'TIPPERS', xWhere, 'TIPPERS') = 'S' Then
      Begin
      End
      Else
         If length(trim(DMCXC.cdsQry3.fieldbyname('CLIEDES').AsString)) = 0 Then
         Begin
            ShowMessage('Falta Razón Social para Cliente con RUC ' + DMCXC.cdsQry3.fieldbyname('CLIERUC').AsString);
            DMCXC.cdsQry3.EnableControls;
            exit;
         End;
      DMCXC.cdsQry3.Next;
   End;

   Screen.Cursor := crHourGlass;
   DMCXC.cdsQry3.First;
   scFILES.Lines.Clear;
   While Not DMCXC.cdsQry3.EOF Do
   Begin
      xLinea := '';
      xLinea := DMCXC.cdsQry3.fieldbyname('CORRELAT').AsString; //1
      xLinea := xLinea + '|' + DMCXC.cdsQry3.fieldbyname('TD_DECLAR').AsString; // 2
      xLinea := xLinea + '|' + DMCXC.cdsQry3.fieldbyname('RUC_DECLAR').AsString; // 2
      xLinea := xLinea + '|' + DMCXC.cdsQry3.fieldbyname('PERIODO').AsString; // 2
      xLinea := xLinea + '|' + DMCXC.cdsQry3.fieldbyname('TIPPERID').AsString; // 2
      xLinea := xLinea + '|' + DMCXC.cdsQry3.fieldbyname('TD_CLIE').AsString; // 2
      xLinea := xLinea + '|' + DMCXC.cdsQry3.fieldbyname('CLIERUC').AsString; // 2
      xLinea := xLinea + '|' + FloatToStr(Int(FRound(DMCXC.cdsQry3.fieldbyname('IMPORTE').AsFloat, 20, 0))); // 8
      xLinea := xLinea + '|' + Trim(DMCXC.cdsQry3.fieldbyname('CLIEAPEPAT').AsString); // 2
      xLinea := xLinea + '|' + Trim(DMCXC.cdsQry3.fieldbyname('CLIEAPEMAT').AsString); // 3
      xLinea := xLinea + '|' + Trim(DMCXC.cdsQry3.fieldbyname('CLIENOMBRE').AsString); // 4
      xLinea := xLinea + '|' + Trim(DMCXC.cdsQry3.fieldbyname('CLIENOMBRE1').AsString); // 4
      If DMCXC.cdsQry3.fieldbyname('TIPPERS').AsString <> 'S' Then
         xLinea := xLinea + '|' + Trim(DMCXC.cdsQry3.fieldbyname('CLIEDES').AsString) // 4
      Else
         xLinea := xLinea + '|';
      xLinea := xLinea + '|';
      scFILES.Lines.Add(xLinea);
      DMCXC.cdsQry3.Next;
   End;
   Screen.Cursor := crDefault;
   If savdlg1.Execute Then
   Begin
      edtNomArch.Text := savdlg1.FileName;
      scFILES.Lines.SaveToFile(edtNomArch.Text);
   End;
   DMCXC.cdsQry3.EnableControls;
   ShowMessage('Transferencia Realizada');
End;

Procedure TFTransfDAOT.bbtnBorraClick(Sender: TObject);
Begin
   IniciaDatos;
   gbFiltro.Enabled := True;
   DMCXC.cdsQry3.EmptyDataSet;
   dbeAno.Setfocus;
End;

Procedure TFTransfDAOT.bbtnGrabaCdsClick(Sender: TObject);
Var
   xSQL, wSQL: String;
   xComprobante: String;
Begin
   If Not DMCXC.cdsQry3.Active Then ShowMessage('No hay datos que Guardar!!!');

   If Not DMCXC.cdsQry3.RecordCount = 0 Then ShowMessage('No hay datos que Guardar!!!');

   xSQL := 'Select CORRELAT,TD_DECLAR, RUC_DECLAR, PERIODO, '
      + '       TIPPERID, TD_CLIE, CLIERUC, '
      + '       IMPORTE, CLIEAPEPAT,CLIEAPEMAT,CLIENOMBRE,CLIENOMBRE1,CLIEDES '
      + '  from CXC404 '
      + ' where RUC_DECLAR=' + quotedstr(dblcRUC.Text)
      + '   and PERIODO=' + quotedstr(dbeAno.Text);
   DMCXC.cdsQry4.filtered := false;
   DMCXC.cdsQry4.indexfieldnames := '';
   DMCXC.cdsQry4.ProviderName := 'dspTGE';
   DMCXC.cdsQry4.DataRequest(xSQL);
   DMCXC.cdsQry4.Open;

   If DMCXC.cdsQry4.recordcount > 0 Then
   Begin
      If MessageDlg('¿Reemplazar los Registros Guardados Anteriormente?',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
         exit;
      End
      Else
      Begin
         xSQL := 'delete from CXC404 '
            + ' where RUC_DECLAR=' + quotedstr(dblcRUC.Text)
            + '   and PERIODO=' + quotedstr(dbeAno.Text);
         DMCXC.cdsQry.Close;
         DMCXC.cdsQry.ProviderName := 'dspTGE';
         DMCXC.cdsQry.DataRequest(xSQL);
         DMCXC.cdsQry.Execute;

         xSQL := 'Select CORRELAT,TD_DECLAR, RUC_DECLAR, PERIODO, '
            + '       TIPPERID, TD_CLIE, CLIERUC, '
            + '       IMPORTE, CLIEAPEPAT,CLIEAPEMAT,CLIENOMBRE,CLIENOMBRE1,CLIEDES '
            + '  from CXC404 '
            + ' where RUC_DECLAR=' + quotedstr(dblcRUC.Text)
            + '   and PERIODO=' + quotedstr(dbeAno.Text);
         DMCXC.cdsQry4.filtered := false;
         DMCXC.cdsQry4.indexfieldnames := '';
         DMCXC.cdsQry4.ProviderName := 'dspTGE';
         DMCXC.cdsQry4.DataRequest(xSQL);
         DMCXC.cdsQry4.Open;
      End;
   End;

   DMCXC.cdsQry3.DisableControls;
   Screen.Cursor := crHourGlass;
   DMCXC.cdsQry3.First;
   While Not DMCXC.cdsQry3.EOF Do
   Begin
      DMCXC.cdsQry4.Append;
      DMCXC.cdsQry4.FieldByName('CORRELAT').AsInteger := DMCXC.cdsQry3.fieldbyname('CORRELAT').AsInteger;
      DMCXC.cdsQry4.FieldByName('TD_DECLAR').AsString := DMCXC.cdsQry3.fieldbyname('TD_DECLAR').AsString;
      DMCXC.cdsQry4.FieldByName('RUC_DECLAR').AsString := DMCXC.cdsQry3.fieldbyname('RUC_DECLAR').AsString;
      DMCXC.cdsQry4.FieldByName('PERIODO').AsString := DMCXC.cdsQry3.fieldbyname('PERIODO').AsString;
      DMCXC.cdsQry4.FieldByName('TIPPERID').AsString := DMCXC.cdsQry3.fieldbyname('TIPPERID').AsString;
      DMCXC.cdsQry4.FieldByName('TD_CLIE').AsString := DMCXC.cdsQry3.fieldbyname('TD_CLIE').AsString;
      DMCXC.cdsQry4.FieldByName('CLIERUC').AsString := DMCXC.cdsQry3.fieldbyname('CLIERUC').AsString;
      DMCXC.cdsQry4.FieldByName('CLIEAPEPAT').AsString := DMCXC.cdsQry3.fieldbyname('CLIEAPEPAT').AsString;
      DMCXC.cdsQry4.FieldByName('CLIEAPEMAT').AsString := DMCXC.cdsQry3.fieldbyname('CLIEAPEMAT').AsString;
      DMCXC.cdsQry4.FieldByName('CLIENOMBRE').AsString := DMCXC.cdsQry3.fieldbyname('CLIENOMBRE').AsString;
      DMCXC.cdsQry4.FieldByName('CLIENOMBRE1').AsString := DMCXC.cdsQry3.fieldbyname('CLIENOMBRE1').AsString;
      DMCXC.cdsQry4.FieldByName('IMPORTE').AsFloat := DMCXC.cdsQry3.fieldbyname('IMPORTE').AsFloat;
      DMCXC.cdsQry4.FieldByName('CLIEDES').AsString := DMCXC.cdsQry3.fieldbyname('CLIEDES').AsString;
      DMCXC.cdsQry3.Next;
   End;
   DMCXC.cdsQry4.Post;

   If DMCXC.cdsQry4.ApplyUpdates(-1) > 0 Then
   Begin
      ShowMessage('Error al grabar');
      Exit;
   End;

   Screen.Cursor := crDefault;
   ShowMessage('Registros Grabados');
   DMCXC.cdsQry3.EnableControls;
   Screen.Cursor := crDefault;
End;

Procedure TFTransfDAOT.bbtnRecuperarClick(Sender: TObject);
Var
   xSQL, xFecha: String;
Begin
   Screen.Cursor := crHourGlass;
   DMCXC.cdsQry3.DisableControls;
   dbgObligaciones.DataSource := Nil;

   DMCXC.cdsQry3.Close;
   xSQL := 'Select CORRELAT,TD_DECLAR, RUC_DECLAR, PERIODO, '
      + '       CXC404.TIPPERID, TD_CLIE, CLIERUC, '
      + '       CASE WHEN TIPPERS IS NOT NULL THEN TIPPERS ELSE ''S'' END TIPPERS, '
      + '       IMPORTE, CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, CLIEDES '
      + '  from CXC404, TGE109 '
      + ' where RUC_DECLAR=' + quotedstr(dblcRUC.Text)
      + '   and PERIODO=' + quotedstr(dbeAno.Text)
      + '   and TGE109.TIPPERID(+)=CXC404.TIPPERID '
      + ' order by CORRELAT';
   DMCXC.cdsQry3.filtered := false;
   DMCXC.cdsQry3.indexfieldnames := '';
   DMCXC.cdsQry3.ProviderName := 'dspTGE';
   DMCXC.cdsQry3.DataRequest(xSQL);
   DMCXC.cdsQry3.Open;
   TNumericField(DMCXC.cdsQry3.FieldByName('IMPORTE')).DisplayFormat := '###,###,##0.00';
    // Inicio: HPC_201301_CXC
   lblRegistros.Caption := 'N°Registros :' + IntToStr(DMCXC.cdsQry3.RecordCount);
    // Fin: HPC_201301_CXC

   dbgObligaciones.Selected.clear;
   dbgObligaciones.Selected.Add('CORRELAT'#9'5'#9'Corr.');
   dbgObligaciones.Selected.Add('TD_DECLAR'#9'6'#9'T.Doc~Declar.');
   dbgObligaciones.Selected.Add('RUC_DECLAR'#9'12'#9'RUC~Declarante');
   dbgObligaciones.Selected.Add('PERIODO'#9'6'#9'Periodo');
   dbgObligaciones.Selected.Add('TIPPERID'#9'5'#9'Tipo~Persona');
   dbgObligaciones.Selected.Add('TD_CLIE'#9'6'#9'T.Doc~Cliente');
   dbgObligaciones.Selected.Add('CLIERUC'#9'12'#9'RUC/DNI');
   dbgObligaciones.Selected.Add('IMPORTE'#9'15'#9'Importe~Total');
   dbgObligaciones.Selected.Add('CLIEAPEPAT'#9'20'#9'Apellido Paterno');
   dbgObligaciones.Selected.Add('CLIEAPEMAT'#9'20'#9'Apellido Materno');
   dbgObligaciones.Selected.Add('CLIENOMBRE'#9'15'#9'Nombre');
   dbgObligaciones.Selected.Add('CLIENOMBRE1'#9'15'#9'Segundo Nombre');
   dbgObligaciones.Selected.Add('CLIEDES'#9'50'#9'Razón Social');
   dbgObligaciones.DataSource := DMCXC.dsQry3;

   dbgObligaciones.ColumnByName('IMPORTE').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(IMPORTE)', ''), ffNumber, 15, 2);

   edtNomArch.Text := 'DAOT' + dblcRUC.Text + dbeAno.Text + '.txt';

   DMCXC.cdsQry3.EnableControls;
   bbtnImprime.enabled := True;
   Screen.Cursor := crDefault;
   gbFiltro.Enabled := False;
End;

Procedure TFTransfDAOT.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsTDoc.Filtered := False;
   DMCXC.cdsTDoc.Filter := '';
   DMCXC.cdsQry3.close;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   Action := caFree;
End;

Function TFTransfDAOT.OperClientDataSet(cdsOrigen: TwwClientDataSet; wExpresion, wCondicion: String): Double;
Var
   cdsClone: TwwClientDataSet;
   bmk: TBookmark;
   Agg: TAggregate;
Begin
   result := 0;

   If trim(wExpresion) = '' Then Exit;

   bmk := cdsOrigen.GetBookmark;
   cdsClone := TwwClientDataSet.Create(Nil);
   Try

      With cdsClone Do
      Begin
         CloneCursor(cdsOrigen, True);

         Agg := Aggregates.Add;
         Agg.AggregateName := 'OPER';
         Agg.Expression := wExpresion;
         Agg.Active := True;

         If Trim(wCondicion) <> '' Then
         Begin
            Filtered := False;
            Filter := wCondicion;
            Filtered := True;
         End;

         If Aggregates.Items[Aggregates.IndexOf('OPER')].Value <> NULL Then
            result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;

         Aggregates.Clear;

      End;

      cdsOrigen.GotoBookmark(bmk);
      cdsOrigen.FreeBookmark(bmk);

   Finally
      cdsClone.Free;
   End;
End;

Procedure TFTransfDAOT.BitBtn1Click(Sender: TObject);
Var
   xProv, xSQL: String;
   xBorra: Boolean;
   xCliente: String;
Begin

   xCliente := '';
   xSQL := 'Select NVL(TIPPERID,''01'') TIPPERID FROM TGE204 WHERE CLIEID=''' + dblcdClie.Text + '''';
   DMCXC.cdsQry13.Close;
   DMCXC.cdsQry13.DataRequest(xSQL);
   DMCXC.cdsQry13.Open;

   If DMCXC.cdsQry13.Recordcount > 0 Then
      xCliente := DMCXC.cdsClie.FieldByName('CLIEDNI').AsString;

   xSQL := 'Select CLIEID, CLIERUC, MTOANUAL '
      + '  From (select T.CLIEID, T.CLIERUC, '
      + '               sum(case when S.DOCRESTA=''S'' '
      + '                        then (case when T.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + '                                   then (NVL(CCGRAVAD,0)*-1)+( NVL(CCNOGRAV,0)*-1) '
      + '                                   else ((NVL(CCGRAVAD,0)*CCTCAMPR)*-1)+((NVL(CCNOGRAV,0)*CCTCAMPR)*-1) '
      + '                              end) '
      + '                        else (case when T.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + '                                   then case when DOCTIPREG in (''F'',''B'') '
      + '                                             then nvl(CCGRAVAD,0)+NVL(CCNOGRAV,0) '
      + '                                             else CCMTOLOC '
      + '                                        end '
      + '                                   else case when DOCTIPREG in (''F'',''B'') '
      + '                                             then (nvl(CCGRAVAD,0)*CCTCAMPR)+(NVL(CCNOGRAV,0)*CCTCAMPR) '
      + '                                             else CCMTOLOC '
      + '                                        end '
      + '                              end) '
      + '                   end ) MTOANUAL '
      + '          From CXC301 T, TGE110 S '
      + '         Where T.CIAID in (select CIAID from TGE101 where CIARUC=' + quotedstr(dblcRUC.Text) + ') ';
   xSQL := xSQL + ' and TO_CHAR(CCFEMIS,''YYYY'')=' + QuotedStr(dbeAno.Text);

   If Length(trim(dblcdClie.text)) > 0 Then
   Begin
      //PERSONA NATURAL
      If (DMCXC.Buscaqry('dspUltTGE', 'TGE109', 'TIPPERS', 'TIPPERID=' + quotedstr(DMCXC.cdsQry13.fieldbyname('TIPPERID').AsString), 'TIPPERS') = 'S') Or
         (DMCXC.Buscaqry('dspUltTGE', 'TGE109', 'TIPPERS', 'TIPPERID=' + quotedstr(DMCXC.cdsQry13.fieldbyname('TIPPERID').AsString), 'TIPPERS') = '') Then
      Begin
         xSQL := xSQL + ' AND (T.CLIEID IN ( SELECT CLIEID FROM TGE204 WHERE CLIEDNI=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLIEDNI').AsString) + ')) ';
      End
      Else
      Begin
         xSQL := xSQL + ' AND (T.CLIEID IN ( SELECT CLIEID FROM TGE204 WHERE CLIERUC=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLIERUC').AsString) + ')) ';
      End;
   End;

   xSQL := xSQL + ' and T.TDIARID=' + quotedstr(dblcTDiario.Text)
      + ' and (T.CCESTADO=''P'' or T.CCESTADO=''C'')'
      + ' and S.DOCMOD=''CXC'' and S.DOCID=T.DOCID'
      + ' group by T.CLIEID,T.CLIERUC '
      + ' ) XX '
      + 'where MTOANUAL>(' + dbeUITs.Text + '*' + dbeValorUIT.Text + ')';

   DMCXC.cdsQry4.filtered := false;
   DMCXC.cdsQry4.indexfieldnames := '';
   DMCXC.cdsQry4.Close;
   DMCXC.cdsQry4.ProviderName := 'dspTGE';
   DMCXC.cdsQry4.DataRequest(xSQL);
   DMCXC.cdsQry4.Open;
   DMCXC.cdsQry4.indexfieldnames := 'CLIEID';

   xSQL := 'SELECT A.CIAID, A.CCAAAA,A.CCANOMES,A.CCFEMIS, A.CLIEID, A.CLIERUC,  B.CLIEDES, '
      + 'A.DOCID, C.DOCDES, A.CCSERIE, A.CCNODOC, A.TMONID, D.TMONABR, '
      + 'A.CCMTOLOC, A.CCMTOEXT, '
      + ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + ' THEN ( case when C.DOCRESTA=''S'' '
      + ' then (NVL(A.CCGRAVAD,0)*-1)+(NVL(A.CCNOGRAV,0)*-1) '
      + ' else CASE WHEN DOCTIPREG in (''F'',''B'') then NVL(A.CCGRAVAD,0)+NVL(A.CCNOGRAV,0) else CCMTOLOC END '
      + ' end ) '
      + ' ELSE ( case when C.DOCRESTA=''S'' '
      + ' then (NVL(A.CCGRAVAD,0)*(-1)*A.CCTCAMPR)+(NVL(A.CCNOGRAV,0)*(-1)*A.CCTCAMPR) '
      + ' else CASE WHEN DOCTIPREG in (''F'',''B'') then (NVL(A.CCGRAVAD,0)*A.CCTCAMPR)+(NVL(A.CCNOGRAV,0)*A.CCTCAMPR) ELSE CCMTOLOC END '
      + ' end ) END MONTOMN, '
      + ' ROUND( CASE WHEN A.TMONID<>' + QuotedStr(DMCXC.wTMonLoc)
      + ' THEN ( case when C.DOCRESTA=''S'' then (NVL(A.CCGRAVAD,0)*-1)+(NVL(A.CCNOGRAV,0)*-1) else CASE WHEN DOCTIPREG in (''F'',''B'') then NVL(A.CCGRAVAD,0)+NVL(A.CCNOGRAV,0) else CCMTOLOC/A.CCTCAMPR END end) '
      + ' ELSE ( case when C.DOCRESTA=''S'' then (NVL(A.CCGRAVAD,0)*(-1)/A.CCTCAMPR)+(NVL(A.CCNOGRAV,0)*(-1)/A.CCTCAMPR) else '
      + ' CASE WHEN DOCTIPREG in (''F'',''B'') then (NVL(A.CCGRAVAD,0)/A.CCTCAMPR)+(NVL(A.CCNOGRAV,0)/A.CCTCAMPR) ELSE CCMTOLOC/A.CCTCAMPR END end ) END ,2) MONTOME, '

   + ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN (case when C.DOCRESTA=''S'' then (NVL(A.CCGRAVAD,0)*-1)+(NVL(A.CCNOGRAV,0)*-1) else CASE WHEN DOCTIPREG in (''F'',''B'') then NVL(A.CCGRAVAD,0)+NVL(A.CCNOGRAV,0) else CCMTOLOC END end) ELSE 0 END MTOLOC, '
      + ' CASE WHEN A.TMONID<>' + QuotedStr(DMCXC.wTMonLoc) + ' THEN (case when C.DOCRESTA=''S'' then (NVL(A.CCGRAVAD,0)*-1)+(NVL(A.CCNOGRAV,0)*-1) else CASE WHEN DOCTIPREG in (''F'',''B'') then NVL(A.CCGRAVAD,0)+NVL(A.CCNOGRAV,0) else CCMTOEXT END end) ELSE 0 END MTOEXT '
      + ' FROM CXC301 A, '
      + '( SELECT CLIERUC, CLIEAPEPAT, CLIEAPEMAT, CLIENOMBRE, CLIENOMBRE1, CLIEDES, TIPPERID '
      + 'FROM CXC404 WHERE PERIODO=' + QuotedStr(dbeAno.Text) + ' ) B, TGE110 C, TGE103 D '

   + ' WHERE A.CIAID IN (SELECT CIAID FROM TGE101 where CIARUC=' + quotedstr(dblcRUC.Text) + ') ';

   xSQL := xSQL + ' AND TO_CHAR(CCFEMIS,''YYYY'')=' + QuotedStr(dbeAno.Text);

   If Length(trim(dblcdClie.text)) > 0 Then
   Begin
      //PERSONA NATURAL
      If (DMCXC.Buscaqry('dspUltTGE', 'TGE109', 'TIPPERS', 'TIPPERID=' + quotedstr(DMCXC.cdsQry13.fieldbyname('TIPPERID').AsString), 'TIPPERS') = 'S') Or
         (DMCXC.Buscaqry('dspUltTGE', 'TGE109', 'TIPPERS', 'TIPPERID=' + quotedstr(DMCXC.cdsQry13.fieldbyname('TIPPERID').AsString), 'TIPPERS') = '') Then
      Begin
         xSQL := xSQL + ' AND B.CLIERUC=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLIEDNI').AsString);
      End
      Else
      Begin
         xSQL := xSQL + ' AND B.CLIERUC=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLIERUC').AsString);
      End;
   End;

   xSQL := xSQL + ' AND A.TDIARID=' + quotedstr(dblcTDiario.Text)
      + ' AND (A.CCESTADO=''P'' OR A.CCESTADO=''C'') '
      + ' AND B.CLIERUC=A.CLIERUC '
      + ' AND C.DOCMOD=''CXC'' AND C.DOCID=A.DOCID '
      + ' AND D.TMONID=A.TMONID '
      + ' AND A.CLIERUC IN ( SELECT CLIERUC FROM CXC404 WHERE PERIODO=' + QuotedStr(dbeAno.Text) + ' )';

   DMCXC.cdsQry3.filtered := false;
   DMCXC.cdsQry3.indexfieldnames := '';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.ProviderName := 'dspTGE';
   DMCXC.cdsQry3.DataRequest(xSQL);
   DMCXC.cdsQry3.Open;
   DMCXC.cdsQry3.indexfieldnames := 'CLIERUC';

   TNumericField(DMCXC.cdsQry3.FieldByName('CCMTOLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry3.FieldByName('CCMTOEXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry3.FieldByName('MONTOMN')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry3.FieldByName('MONTOME')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry3.FieldByName('MTOLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry3.FieldByName('MTOEXT')).DisplayFormat := '###,###,##0.00';

   DMCXC.cdsQry3.indexfieldnames := 'CLIERUC';
   DMCXC.cdsQry3.First;

   dbgObligaciones.Selected.clear;
   dbgObligaciones.Selected.Add('CIAID'#9'3'#9'Cía');
   dbgObligaciones.Selected.Add('CCAAAA'#9'5'#9'Año');
   dbgObligaciones.Selected.Add('CCANOMES'#9'6'#9'Año+Mes');
   dbgObligaciones.Selected.Add('CCFEMIS'#9'11'#9'Fecha~Emisión');
   dbgObligaciones.Selected.Add('CLIEID'#9'12'#9'Código~Cliente');
   dbgObligaciones.Selected.Add('CLIERUC'#9'12'#9'R.U.C./DNI');
   dbgObligaciones.Selected.Add('CLIEDES'#9'40'#9'Razón Social');
   dbgObligaciones.Selected.Add('DOCID'#9'5'#9'T.Doc');
   dbgObligaciones.Selected.Add('DOCDES'#9'15'#9'Documento');
   dbgObligaciones.Selected.Add('CCSERIE'#9'5'#9'Serie');
   dbgObligaciones.Selected.Add('CCNODOC'#9'15'#9'No.Doc.');
   dbgObligaciones.Selected.Add('TMONID'#9'5'#9'T.Mon');
   dbgObligaciones.Selected.Add('TMONABR'#9'7'#9'Moneda');
   dbgObligaciones.Selected.Add('CCMTOLOC'#9'15'#9'Monto Total~MN');
   dbgObligaciones.Selected.Add('CCMTOEXT'#9'15'#9'Monto Total~ME');
   dbgObligaciones.Selected.Add('MONTOMN'#9'15'#9'Importe MN~Sin IGV');
   dbgObligaciones.Selected.Add('MONTOME'#9'15'#9'Importe ME~Sin IGV');
   dbgObligaciones.Selected.Add('MTOLOC'#9'15'#9'Importe~Solo MN');
   dbgObligaciones.Selected.Add('MTOEXT'#9'15'#9'Importe~Solo ME');

   dbgObligaciones.DataSource := DMCXC.dsQry3;

   dbgObligaciones.ColumnByName('CCMTOLOC').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(CCMTOLOC)', ''), ffNumber, 15, 2);
   dbgObligaciones.ColumnByName('CCMTOEXT').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(CCMTOEXT)', ''), ffNumber, 15, 2);
   dbgObligaciones.ColumnByName('MONTOMN').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(MONTOMN)', ''), ffNumber, 15, 2);
   dbgObligaciones.ColumnByName('MONTOME').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(MONTOME)', ''), ffNumber, 15, 2);
   dbgObligaciones.ColumnByName('MTOLOC').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(MTOLOC)', ''), ffNumber, 15, 2);
   dbgObligaciones.ColumnByName('MTOEXT').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(MTOEXT)', ''), ffNumber, 15, 2);
   dbgObligaciones.RedrawGrid;
   bbtnImprime.enabled := False;
   BitBtn3.enabled := True;
   BitBtn4.enabled := True;
End;

Procedure TFTransfDAOT.BitBtn3Click(Sender: TObject);
Var
   x10: Integer;
Begin
   If DMCXC.cdsQry3.RecordCount = 0 Then
   Begin
      ShowMessage('No existe Detalle a Imprimir');
      exit;
   End;
   DMCXC.cdsQry3.DisableControls;
   ppDBReporteDAOT.dataSource := DMCXC.dsQry3;
   DMCXC.cdsQry3.indexfieldnames := 'CLIERUC;DOCID;CCFEMIS';
   pprDetalle.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\ReporteDAOTDet.rtm';
   pprDetalle.Template.LoadFromFile;

   pplblCiaDet.Caption := edtCia.Text;
   pplblTitDet.Caption := 'CONSISTENCIA DETALLADA PARA DECLARACION ANUAL DE OPERACIONES CON TERCEROS - EJERCICIO ' + dbeAno.Text;

  //ppDesigner1.ShowmODAL;
   pprDetalle.Print;
   pprDetalle.Stop;
   DMCXC.cdsQry3.EnableControls;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 Do
   Begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
      Begin
         Self.Components[x10].Free;
      End;
      x10 := x10 - 1;
   End;
   ppDBReporteDAOT.dataSource := Nil;
End;

Procedure TFTransfDAOT.FormShow(Sender: TObject);
Var
   xSQL: String;
Begin

   DMCXC.cdsQry1.Close;
   xSQL := 'SELECT CIAID, CIARUC, CIADES FROM TGE101 where CIARUC is not NULL and 1=1 GROUP BY CIAID, CIARUC, CIADES';
   DMCXC.cdsQry1.ProviderName := 'dspTGE';
   DMCXC.cdsQry1.DataRequest(xSQL);
   DMCXC.cdsQry1.Open;
   dblcRUC.Lookuptable := DMCXC.cdsQry1;

   xSQL := 'Select * from TGE104 where REGISTRO=' + quotedstr('V');
//   +' OR FLAGPDT='+QuotedStr('S');
   DMCXC.cdsTDiario.Close;
   DMCXC.cdsTDiario.DataRequest(xSQL);
   DMCXC.cdsTDiario.Open;

   If DMCXC.cdsTDiario.RecordCount = 0 Then
   Begin
      xSQL := 'Select * from TGE104';
      DMCXC.cdsTDiario.Close;
      DMCXC.cdsTDiario.DataRequest(xSQL);
      DMCXC.cdsTDiario.Open;
   End;
   DMCXC.cdsTDiario.IndexFieldNames := 'TDIARID';

   IniciaDatos;
End;

Procedure TFTransfDAOT.dblcdClieEnter(Sender: TObject);
Begin
   If Not DMCXC.cdsClie.Active Then
   Begin
      Screen.Cursor := crHourGlass;
      Filtracds(DMCXC.cdsClie, 'SELECT * FROM TGE204');
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFTransfDAOT.dblcdClieExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If (length(dblcdClie.Text) > 0) Then
   Begin
      xWhere := 'CLIEID=''' + dblcdClie.Text + '''';
      edtProv.Text := DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,CLIERUC,CLIEDES', xWhere, 'CLIEDES');
      If length(edtProv.Text) = 0 Then
      Begin
         exit;
      End;
   End
   Else
   Begin
      edtProv.Text := '';
      dblcdClie.Clear;
      exit;
   End;
End;

Procedure TFTransfDAOT.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFTransfDAOT.CargaDataSource;
Begin
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
   dblcdClie.LookupTable := DMCXC.cdsClie;
End;

Procedure TFTransfDAOT.BitBtn4Click(Sender: TObject);
Begin
   ExportaGridExcel(dbgObligaciones, 'Proveedor');
End;

Procedure TFTransfDAOT.bbtnRenumerarClick(Sender: TObject);
Var
   nCont: integer;
Begin
   DMCXC.cdsQry3.First;
   nCont := 0;
   While Not DMCXC.cdsQry3.EOF Do
   Begin
      Inc(nCont);
      DMCXC.cdsQry3.Edit;
      DMCXC.cdsQry3.FieldByname('CORRELAT').AsInteger := nCont;
      DMCXC.cdsQry3.Post;
      DMCXC.cdsQry3.Next;
   End;
// Inicio: HPC_201301_CXC
   lblRegistros.Caption := 'N°Registros :' + IntToStr(DMCXC.cdsQry3.RecordCount);
// Fin: HPC_201301_CXC
End;

Procedure TFTransfDAOT.dbgObligacionesKeyDown(Sender: TObject;
   Var Key: Word; Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsQry3.Delete;
      // Inicio: HPC_201301_CXC
         dbgObligaciones.ColumnByName('IMPORTE').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry3, 'SUM(IMPORTE)', DMCXC.cdsQry3.Filter), ffNumber, 15, 2);
         lblRegistros.Caption := 'N°Registros :' + IntToStr(DMCXC.cdsQry3.RecordCount);
      // Fin: HPC_201301_CXC
      End;
   End;
End;

Procedure TFTransfDAOT.dbgObligacionesDblClick(Sender: TObject);
Var
   xSQL: String;
   vImporte: Currency;
Begin
   xSQL := 'Select * From '
      + '       (Select A.CIAID, A.CLIEDES,A.DOCID,B.DOCABR,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO, '
      + '              (case when DOCRESTA=''S'' '
      + '                    then (case when A.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + '                               then (nvl(CCGRAVAD,0)*-1)+(nvl(CCNOGRAV,0)*-1) '
      + '                               else ((nvl(CCGRAVAD,0)*CCTCAMPR)*-1)+(( NVL(CCNOGRAV,0)*CCTCAMPR)*-1 ) '
      + '                          end)'
      + '                    else (case when A.TMONID=' + QuotedStr(DMCXC.wTMonLoc)
      + '                               then case when DOCTIPREG in (''F'',''B'') '
      + '                                         then (NVL(CCGRAVAD,0)+ NVL(CCNOGRAV,0)) '
      + '                                         else CCMTOLOC '
      + '                                    end '
      + '                               else case when DOCTIPREG in (''F'',''B'') '
      + '                                         then (nvl(CCGRAVAD,0)*CCTCAMPR)+(NVL(CCNOGRAV,0)*CCTCAMPR) '
      + '                                         else CCMTOLOC '
      + '                                    end '
      + '                          end)'
      + '                end ) IMPORTE, '
      + '                CCGRAVAD, CCNOGRAV, CCUSER, CCFREG '
      + '          from CXC301 A,TGE110 B,TGE204 C,TGE109 D '
      + '         where A.CIAID in (select CIAID '
      + '                             from TGE101 '
      + '                            where CIARUC=' + quotedstr(dblcRUC.Text) + ') '
      + '           and TO_CHAR(A.CCFEMIS,''YYYY'')=' + QuotedStr(dbeAno.Text)
      + '           and A.TDIARID=' + quotedstr(dblcTDiario.Text)
      + '           AND A.CLIERUC=' + quotedstr(DMCXC.CDSQRY3.FieldByname('CLIERUC').asstring)
      + '           AND (LENGTH(A.CLIERUC)=11 OR LENGTH(A.CLIERUC)=8 ) '
      + '           AND SUBSTR(A.CLIERUC,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,2,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,3,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,4,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,5,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,6,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,7,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND SUBSTR(A.CLIERUC,8,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') '
      + '           AND NVL(SUBSTR(A.CLIERUC,09,1),'' '') IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'','' '') '
      + '           AND NVL(SUBSTR(A.CLIERUC,10,1),'' '') IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'','' '') '
      + '           AND A.CLIERUC = C.CLIERUC(+) '
      + '           AND (A.CCESTADO=''P'' or A.CCESTADO=''C'') '
      + '           AND A.DOCID=B.DOCID(+) '
      + '           AND B.DOCID=A.DOCID '
      + '           AND B.DOCMOD=''CXC'' '
      + '           AND D.TIPPERID(+)= C.TIPPERID ) ORDER BY CCFEMIS ';
   DMCXC.cdsQry5.Close;
   DMCXC.cdsQry5.DataRequest(Xsql);
   DMCXC.cdsQry5.Open;

   DMCXC.cdsQry5.First;
   TNumericField(DMCXC.cdsQry5.FieldByName('CCGRAVAD')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry5.FieldByName('CCNOGRAV')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsQry5.FieldByName('IMPORTE')).DisplayFormat := '###,###,##0.00';

   FDetalleDaotCxC := TFDetalleDaotCxC.Create(Self);
   FDetalleDaotCxC.DbgDetalle.ColumnByName('IMPORTE').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry5, 'SUM(IMPORTE)', DMCXC.cdsQry5.Filter), ffNumber, 15, 2);
   FDetalleDaotCxC.CAPTION := 'Detalle por Cliente (DAOT) - ' + Trim(DMCXC.cdsQry5.FieldByName('CLIEDES').AsString);
   FDetalleDaotCxC.ShowModal;
End;

Procedure TFTransfDAOT.dbeAnoExit(Sender: TObject);
Var
   xsql: String;
Begin
   xSql := 'SELECT max(UITMONTO) UITMONTO FROM TGE188 WHERE UITANO =''' + dbeAno.Text + ''' ';
   DMCXC.cdsQry9.Close;
   DMCXC.cdsQry9.DataRequest(xSql);
   DMCXC.cdsQry9.Open;
   dbeValorUIT.Text := DMCXC.cdsQry9.FieldByname('UITMONTO').AsString;
   dblcRUC.DropDown;
End;

// Inicio: HPC_201301_CXC

Procedure TFTransfDAOT.FormActivate(Sender: TObject);
Begin
   dbeAno.SetFocus;
End;
// Fin: HPC_201301_CXC

// Inicio: HPC_201301_CXC

Procedure TFTransfDAOT.BitBtn5Click(Sender: TObject);
Begin
   ExportaGridExcel(dbgObligaciones, 'Cliente DAOT');
End;
// Fin: HPC_201301_CXC

// Inicio: HPC_201301_CXC

Procedure TFTransfDAOT.dbgObligacionesTitleButtonClick(Sender: TObject;
   AFieldName: String);
Begin
   If (AFieldName = 'CLIERUC') Or (AfieldName = 'IMPORTE') Or (AFieldName = 'CLIEDES') Then
      DMCXC.cdsQry3.IndexFieldNames := AfieldName;
End;
// Fin: HPC_201301_CXC

End.

