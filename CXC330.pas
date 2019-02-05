Unit CXC330;

// Validación de Registros FAC vs CXC vs CNT

// Actualizaciones:
// HPC_201401_CXC  29/03/2014  Creación de Formulario

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ppCtrls, ppBands, ppReport, ppPrnabl,
   ppClass, ppStrtch, ppSubRpt, ppCache, ppEndUsr, ppComm, ppRelatv, ppProd,
   wwExport, shellapi,
   ppDB, ppDBPipe, ppParameter, ppVar, Grids, Wwdbigrd, Wwdbgrid;

Type
   TFRVentasValidacion = Class(TForm)
      chb_ValidaFacturacion: TCheckBox;
      chb_ValidaProvision: TCheckBox;
      chb_ValidaContabilizacion: TCheckBox;
      chb_ValidaAsiento: TCheckBox;
      edt_Cia: TEdit;
      Label1: TLabel;
      Label2: TLabel;
      edt_TipoDiario: TEdit;
      edt_CiaDes: TEdit;
      edt_TipoDiarioDes: TEdit;
      Label3: TLabel;
      edt_Periodo: TEdit;
      btn_Validar: TBitBtn;
      ppr_Validar: TppReport;
      ppd_validar: TppDesigner;
      ppdb_ValidaFacturacion: TppDBPipeline;
      ppdb_ValidaProvision: TppDBPipeline;
      ppdb_ValidaContabilizacion: TppDBPipeline;
      ppdb_ValidaAsiento: TppDBPipeline;
      ppParameterList1: TppParameterList;
      btnExportarExcel: TBitBtn;
      dbgValidaRegVentas: TwwDBGrid;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel12: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel13: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppLabel29: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppDetailBand1: TppDetailBand;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppShape2: TppShape;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLabel9: TppLabel;
      ppLine11: TppLine;
      ppLabel21: TppLabel;
      ppLabel17: TppLabel;
      ppLine12: TppLine;
      ppLine13: TppLine;
      ppLabel22: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppSubReport3: TppSubReport;
      ppChildReport3: TppChildReport;
      ppTitleBand3: TppTitleBand;
      ppShape3: TppShape;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLine14: TppLine;
      ppLine15: TppLine;
      ppLine18: TppLine;
      ppLabel30: TppLabel;
      ppLine19: TppLine;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLine20: TppLine;
      ppLine21: TppLine;
      ppLabel33: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppFooterBand3: TppFooterBand;
      ppSubReport4: TppSubReport;
      ppChildReport4: TppChildReport;
      ppTitleBand4: TppTitleBand;
      ppShape4: TppShape;
      ppLabel10: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel34: TppLabel;
      ppLine16: TppLine;
      ppLine17: TppLine;
      ppLine22: TppLine;
      ppLabel35: TppLabel;
      ppLine23: TppLine;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLine24: TppLine;
      ppLine25: TppLine;
      ppLabel38: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBText23: TppDBText;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppFooterBand4: TppFooterBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppShape1: TppShape;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppDetailBand2: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppFooterBand1: TppFooterBand;
      Procedure FormShow(Sender: TObject);
      Procedure btn_ValidarClick(Sender: TObject);
      Procedure btnExportarExcelClick(Sender: TObject);
   Private
    { Private declarations }
      xbExportarExcel: Boolean;
      Procedure fg_RecuperaValidFacturacion(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_RecuperaValidProvision(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_RecuperaValidContabilizacion(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_RecuperaValidAsiento(wgCia, wgTipoDiario, wgPeriodo: String);
      Function fg_VerificaDatosReporte(): String;
      Procedure fg_ExportarExcel(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_ExportarValidFacturacion(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_ExportarValidProvision(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_ExportarValidContabilizacion(wgCia, wgTipoDiario, wgPeriodo: String);
      Procedure fg_ExportarValidAsiento(wgCia, wgTipoDiario, wgPeriodo: String);
   Public
    { Public declarations }
      xsCia: String;
      xsCiaDes: String;
      xsTipoDiario: String;
      xsTipoDiarioDes: String;
      xsPeriodo: String;
   End;

Var
   FRVentasValidacion: TFRVentasValidacion;
   XSQL: String;

Implementation

Uses CXCDM;
{$R *.dfm}

Procedure TFRVentasValidacion.FormShow(Sender: TObject);
Begin
   edt_Cia.text := xsCia;
   edt_CiaDes.Text := xsCiaDes;
   edt_TipoDiario.Text := xsTipoDiario;
   edt_TipoDiarioDes.Text := xsTipoDiarioDes;
   edt_Periodo.Text := xsPeriodo;
End;

Procedure TFRVentasValidacion.btn_ValidarClick(Sender: TObject);
Var
   ls_CiaId: String;
   ls_TipoDiario: String;
   ls_Periodo: String;
   ls_validacion: String;
Begin
   ls_CiaId := xsCia;
   ls_TipoDiario := xsTipoDiario;
   ls_Periodo := xsPeriodo;

   ls_validacion := fg_VerificaDatosReporte;
   If ls_validacion <> 'OK' Then
   Begin
      ShowMessage(ls_validacion);
      Exit;
   End;
   // limpiando cds
   DMCXC.cdsValidaFacturacion.Close;
   DMCXC.cdsValidaProvision.Close;
   DMCXC.cdsValidaContabilizacion.Close;
   DMCXC.cdsValidaAsiento.Close;
   //cargando los cds
   fg_RecuperaValidFacturacion(ls_CiaId, ls_TipoDiario, ls_Periodo);
   fg_RecuperaValidProvision(ls_CiaId, ls_TipoDiario, ls_Periodo);
   fg_RecuperaValidContabilizacion(ls_CiaId, ls_TipoDiario, ls_Periodo);
   fg_RecuperaValidAsiento(ls_CiaId, ls_TipoDiario, ls_Periodo);

   If (DMCXC.cdsValidaFacturacion.RecordCount = 0) And
      (DMCXC.cdsValidaProvision.RecordCount = 0) And
      (DMCXC.cdsValidaContabilizacion.RecordCount = 0) And
      (DMCXC.cdsValidaAsiento.RecordCount = 0) Then
   Begin
      ShowMessage('No se recuperó ningún documento con el criterio seleccionado');
      Exit;
   End;

   If xbExportarExcel Then
   Begin
      fg_ExportarExcel(ls_CiaId, ls_TipoDiario, ls_Periodo);
      Exit;
   End;

   ppr_Validar.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\VALIDAREGVENTAS.RTM';
   ppr_Validar.Template.LoadFromFile;

   ppd_validar.Report := ppr_Validar;
   //ppd_validar.ShowModal;
   ppr_Validar.Print;
End;

Procedure TFRVentasValidacion.fg_RecuperaValidFacturacion(wgCia, wgTipoDiario, wgPeriodo: String);
Var
   xsSql: String;
   ls_checked: String;
Begin
   If chb_ValidaFacturacion.checked Then
      ls_checked := 'SI'
   Else
      ls_checked := 'NO';

   //compara los totales de las facturas con los totales de la cxc, y muestra aquellos
   //documentos que son distintos. solo se compara cabeceras
   xsSql := ' SELECT DOCID, FACSERIE, NFAC, TMONID, sum(FACTOTMO) FACTOTMO, sum(IMPORTE_CXC) IMPORTE_CXC '
      + '   FROM ( SELECT FAC305.DOCID, FAC305.FACSERIE, '
      + '                 FAC305.NFAC, FAC305.TMONID, FAC305.FACTOTMO, '
      + '                 0.00 IMPORTE_CXC '
      + '            FROM FAC305 '
      + '           WHERE CIAID= ' + QuotedStr(wgCia)
      + '             AND FACANOMES= ' + QuotedStr(wgPeriodo)
      + '             AND FACESTADO= ' + QuotedStr('ACEPTADO')
      + '  UNION ALL '
      + ' SELECT CXC301.DOCID, CXC301.CCSERIE FACSERIE, '
      + '        CXC301.CCNODOC NFAC, CXC301.TMONID, 0.00 FACTOTMO, '
      + '        CXC301.CCMTOLOC IMPORTE_CXC '
      + '   FROM CXC301 '
      + '  WHERE CIAID= ' + QuotedStr(wgCia)
      + '    AND CCANOMES= ' + QuotedStr(wgPeriodo)
      + '    AND CCESTADO in (' + QuotedStr('P') + ',' + QuotedStr('C') + ') '
      + '        ) '
      + ' WHERE ' + Quotedstr('SI') + ' = ' + QuotedStr(ls_Checked)
      + ' GROUP BY DOCID, FACSERIE, NFAC, TMONID '
      + 'HAVING sum(FACTOTMO)<>sum(IMPORTE_CXC) '
      + ' ORDER BY DOCID, FACSERIE, NFAC ';
   DMCXC.cdsValidaFacturacion.Close;
   DMCXC.cdsValidaFacturacion.DataRequest(xsSql);
   DMCXC.cdsValidaFacturacion.Open;
   ppdb_ValidaFacturacion.DataSource := DMCXC.dsValidaFacturacion;
End;

Procedure TFRVentasValidacion.fg_RecuperaValidProvision(wgCia, wgTipoDiario, wgPeriodo: String);
Var
   xsSql: String;
   ls_Checked: String;
Begin
   If chb_ValidaProvision.checked Then
      ls_checked := 'SI'
   Else
      ls_checked := 'NO';
// verifica en la cabecera y el detalle que la sumatoria del Debe y el Haber sea igual a la cabecera
   xsSql := ' SELECT CIAID, TDIARID, CCNOREG, DOCID, CCSERIE, CCNODOC, '
      + '        sum(MONTO301) MONTO301, sum(DEBE_CXC) DEBE302, sum(HABER_CXC) HABER302 '
      + '   FROM ( SELECT CXC301.CIAID, CXC301.TDIARID, CXC301.CCNOREG, '
      + '                 CXC301.DOCID, CXC301.CCSERIE, CXC301.CCNODOC, '
      + '                 CXC301.CCMTOLOC MONTO301, 0.00 DEBE_CXC, 0.00 HABER_CXC '
      + '            FROM CXC301 '
      + '           WHERE CXC301.CIAID= ' + QuotedStr(wgCia)
      + '             AND CXC301.TDIARID= ' + QuotedStr(wgTipoDiario)
      + '             AND CXC301.CCANOMES= ' + Quotedstr(wgPeriodo)
      + '             AND CXC301.CCESTADO NOT IN (' + Quotedstr('A') + ',' + QuotedStr('I') + ') '
      + '          UNION ALL '
      + '          SELECT CXC302.CIAID, CXC302.TDIARID, CXC302.CCNOREG, '
      + '                 CXC302.DOCID, CXC302.CCSERIE, CXC302.CCNODOC, '
      + '                 0.00 MONTO301, '
      + '                 sum(case when CXC302.CCDH=' + QuotedStr('D') + ' then CXC302.CCMTOLOC else 0.00 end) DEBE_CXC, '
      + '                 sum(case when CXC302.CCDH=' + QuotedStr('H') + ' then CXC302.CCMTOLOC else 0.00 end) HABER_CXC '
      + '            FROM CXC302 '
      + '           WHERE CXC302.CIAID= ' + QuotedStr(wgCia)
      + '             AND CXC302.TDIARID= ' + QuotedStr(wgTipoDiario)
      + '             AND CXC302.CCANOMES= ' + Quotedstr(wgPeriodo)
      + '             AND CXC302.CCESTADO NOT IN (' + QuotedStr('A') + ',' + QuotedStr('I') + ') '
      + '           GROUP BY CXC302.CIAID, CXC302.TDIARID, CXC302.CCNOREG, '
      + '                 CXC302.DOCID, CXC302.CCSERIE, CXC302.CCNODOC '
      + '        ) '
      + ' WHERE ' + Quotedstr('SI') + ' = ' + QuotedStr(ls_Checked)
      + ' GROUP BY CIAID, TDIARID, CCNOREG, DOCID, CCSERIE, CCNODOC '
      + 'HAVING sum(MONTO301)<>sum(DEBE_CXC) or sum(MONTO301)<>sum(HABER_CXC) or sum(DEBE_CXC)<>sum(HABER_CXC) '
      + ' ORDER BY CIAID, TDIARID, CCNOREG ';
   DMCXC.cdsValidaProvision.Close;
   DMCXC.cdsValidaProvision.DataRequest(xsSql);
   DMCXC.cdsValidaProvision.Open;
   ppdb_ValidaProvision.DataSource := DMCXC.dsValidaProvision;
End;

Procedure TFRVentasValidacion.fg_RecuperaValidContabilizacion(wgCia, wgTipoDiario, wgPeriodo: String);
Var
   xsSql: String;
   ls_Checked: String;
Begin
   If chb_ValidaContabilizacion.checked Then
      ls_checked := 'SI'
   Else
      ls_checked := 'NO';
// compara el detalle de la provision con el detalle del asiento contable
   xsSql := ' SELECT CIAID, TDIARID, CNTCOMPROB, sum(DEBE) DEBE, sum(HABER) HABER, '
      + '        sum(DEBE_CXC) DEBE_CXC, sum(HABER_CXC) HABER_CXC '
      + '   FROM ( SELECT CNT301.CIAID, CNT301.TDIARID, CNT301.CNTCOMPROB,  '
      + '                 sum(CNT301.CNTDEBEMN) DEBE, sum(CNT301.CNTHABEMN) HABER, '
      + '                 0.00 DEBE_CXC, 0.00 HABER_CXC '
      + '            FROM CNT301 '
      + '           WHERE CNT301.CIAID= ' + QuotedStr(wgCia)
      + '             AND CNT301.TDIARID= ' + QuotedStr(wgTipoDiario)
      + '             AND CNT301.CNTANOMM= ' + Quotedstr(wgPeriodo)
      + '           GROUP BY CNT301.CIAID, CNT301.TDIARID, CNT301.CNTCOMPROB '
      + '          UNION ALL '
      + '          SELECT CXC302.CIAID, CXC302.TDIARID, CXC302.CCNOREG CNTCOMPROB, 0.00 DEBE, 0.00 HABER, '
      + '                 sum(case when CXC302.CCDH=' + QuotedStr('D') + ' then CXC302.CCMTOLOC else 0.00 end) DEBE_CXC, '
      + '                 sum(case when CXC302.CCDH=' + QuotedStr('H') + ' then CXC302.CCMTOLOC else 0.00 end) HABER_CXC '
      + '            FROM CXC302 '
      + '           WHERE CXC302.CIAID= ' + QuotedStr(wgCia)
      + '             AND CXC302.TDIARID= ' + QuotedStr(wgTipoDiario)
      + '             AND CXC302.CCANOMES= ' + Quotedstr(wgPeriodo)
      + '             AND CXC302.CCESTADO not in (' + QuotedStr('A') + ',' + QuotedStr('I') + ') '
      + '           GROUP BY CXC302.CIAID, CXC302.TDIARID, CXC302.CCNOREG '
      + '        ) '
      + ' WHERE ' + Quotedstr('SI') + ' = ' + QuotedStr(ls_Checked)
      + ' GROUP BY CIAID, TDIARID, CNTCOMPROB '
      + 'HAVING sum(DEBE) <> sum(DEBE_CXC) '
      + ' ORDER BY CIAID, TDIARID, CNTCOMPROB ';
   DMCXC.cdsValidaContabilizacion.Close;
   DMCXC.cdsValidaContabilizacion.DataRequest(xsSql);
   DMCXC.cdsValidaContabilizacion.Open;
   ppdb_ValidaContabilizacion.DataSource := DMCXC.dsValidaContabilizacion;
End;

Procedure TFRVentasValidacion.fg_RecuperaValidAsiento(wgCia, wgTipoDiario, wgPeriodo: String);
Var
   xsSql: String;
   ls_Checked: String;
Begin
   If chb_ValidaAsiento.checked Then
      ls_checked := 'SI'
   Else
      ls_checked := 'NO';
// Verificando que el detalle del asiento contable cuadre con la cabecera
   xsSql := ' SELECT CIAID, TDIARID, CNTCOMPROB, '
      + '        sum(DEBE_CAB) DEBE_CAB, sum(HABER_CAB) HABER_CAB, '
      + '        sum(DEBE_MOV) DEBE_MOV, sum(HABER_MOV) HABER_MOV '
      + '   FROM ( SELECT CNT300.CIAID, CNT300.TDIARID, CNT300.CNTCOMPROB, 0.00 DEBE_MOV, 0.00 HABER_MOV, '
      + '                 CNT300.CNTDEBEMN DEBE_CAB, CNT300.CNTHABEMN HABER_CAB '
      + '            FROM CNT300 '
      + '           WHERE CNT300.CIAID= ' + QuotedStr(wgCia)
      + '             AND CNT300.TDIARID= ' + QuotedStr(wgTipoDiario)
      + '             AND CNT300.CNTANOMM= ' + Quotedstr(wgPeriodo)
      + '          UNION ALL '
      + '          SELECT CNT301.CIAID, CNT301.TDIARID, CNT301.CNTCOMPROB, '
      + '                 sum(CNT301.CNTDEBEMN) DEBE_MOV, sum(CNT301.CNTHABEMN) HABER_MOV, '
      + '                 0.00 DEBE_CAB, 0.00 HABER_CAB '
      + '            FROM CNT301 '
      + '           WHERE CNT301.CIAID= ' + QuotedStr(wgCia)
      + '             AND CNT301.TDIARID= ' + QuotedStr(wgTipoDiario)
      + '             AND CNT301.CNTANOMM= ' + Quotedstr(wgPeriodo)
      + '           GROUP BY CNT301.CIAID, CNT301.TDIARID, CNT301.CNTCOMPROB '
      + '         ) '
      + ' WHERE ' + Quotedstr('SI') + ' = ' + QuotedStr(ls_Checked)
      + '  GROUP BY CIAID, TDIARID, CNTCOMPROB '
      + ' HAVING sum(DEBE_MOV) <> sum(DEBE_CAB) '
      + ' ORDER BY CIAID, TDIARID, CNTCOMPROB ';
   DMCXC.cdsValidaAsiento.Close;
   DMCXC.cdsValidaAsiento.DataRequest(xsSql);
   DMCXC.cdsValidaAsiento.Open;
   ppdb_ValidaAsiento.DataSource := DMCXC.dsValidaAsiento;
End;

Function TFRVentasValidacion.fg_VerificaDatosReporte: String;
Var
   ls_resultado: String;
Begin
   ls_resultado := 'OK';
   If (chb_ValidaFacturacion.Checked = False) And
      (chb_ValidaProvision.Checked = False) And
      (chb_ValidaContabilizacion.Checked = False) And
      (chb_ValidaAsiento.Checked = False) Then
   Begin
      ls_resultado := 'Debe seleccionar un criterio de validación';
   End;
   Result := ls_resultado;
End;

Procedure TFRVentasValidacion.btnExportarExcelClick(Sender: TObject);
Begin
   xbExportarExcel := True;
   btn_ValidarClick(Self);
   xbExportarExcel := False;
End;

Procedure TFRVentasValidacion.fg_ExportarExcel(wgCia, wgTipoDiario, wgPeriodo: String);
Begin
   If (chb_ValidaFacturacion.checked) And (DMCXC.cdsValidaFacturacion.RecordCount > 0) Then
      fg_ExportarValidFacturacion(wgCia, wgTipoDiario, wgPeriodo);
   If (chb_ValidaProvision.checked) And (DMCXC.cdsValidaProvision.RecordCount > 0) Then
      fg_ExportarValidProvision(wgCia, wgTipoDiario, wgPeriodo);
   If (chb_ValidaContabilizacion.checked) And (DMCXC.cdsValidaContabilizacion.RecordCount > 0) Then
      fg_ExportarValidContabilizacion(wgCia, wgTipoDiario, wgPeriodo);
   If (chb_ValidaAsiento.checked) And (DMCXC.cdsValidaAsiento.RecordCount > 0) Then
      fg_ExportarValidAsiento(wgCia, wgTipoDiario, wgPeriodo);
End;

Procedure TFRVentasValidacion.fg_ExportarValidFacturacion(wgCia, wgTipoDiario, wgPeriodo: String);
Begin
   dbgValidaRegVentas.Selected.Clear;
   dbgValidaRegVentas.Selected.Add('DOCID'#9'8'#9'TipoDocumento'#9'F');
   dbgValidaRegVentas.Selected.Add('FACSERIE'#9'8'#9'Serie'#9'F');
   dbgValidaRegVentas.Selected.Add('NFAC'#9'8'#9'NºDoc'#9'F');
   dbgValidaRegVentas.Selected.Add('TMONID'#9'6'#9'Moneda'#9'F');
   dbgValidaRegVentas.Selected.Add('FACTOTMO'#9'8'#9'MontoFacturado'#9'F');
   dbgValidaRegVentas.Selected.Add('IMPORTE_CXC'#9'4'#9'MontoProvisionado'#9'F');
   dbgValidaRegVentas.DataSource := DMCXC.dsValidaFacturacion;
   Try
      Screen.Cursor := crHourGlass;
      dbgValidaRegVentas.ExportOptions.ExportType := wwgetSYLK;
      dbgValidaRegVentas.ExportOptions.FileName := 'ValidFacturacion_' + wgPeriodo + '.slk';
      dbgValidaRegVentas.ExportOptions.Save; //el primero genera error
      dbgValidaRegVentas.ExportOptions.Save;
      ShellExecute(Handle, 'Open', PChar(dbgValidaRegVentas.ExportOptions.Filename), Nil, Nil, sw_shownormal);
      Screen.Cursor := crDefault;
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
End;

Procedure TFRVentasValidacion.fg_ExportarValidProvision(wgCia, wgTipoDiario, wgPeriodo: String);
Begin
   dbgValidaRegVentas.Selected.Clear;
   dbgValidaRegVentas.Selected.Add('CIAID'#9'8'#9'Compañia'#9'F');
   dbgValidaRegVentas.Selected.Add('TDIARID'#9'8'#9'TipoDiario'#9'F');
   dbgValidaRegVentas.Selected.Add('DOCID'#9'8'#9'TipoDocumento'#9'F');
   dbgValidaRegVentas.Selected.Add('CCSERIE'#9'6'#9'Serie'#9'F');
   dbgValidaRegVentas.Selected.Add('CCNODOC'#9'8'#9'N°Documento'#9'F');
   dbgValidaRegVentas.Selected.Add('CCNOREG'#9'4'#9'N°Registro'#9'F');
   dbgValidaRegVentas.Selected.Add('MONTO301'#9'4'#9'MontoDocumento'#9'F');
   dbgValidaRegVentas.Selected.Add('DEBE302'#9'4'#9'SumDebe'#9'F');
   dbgValidaRegVentas.Selected.Add('HABER302'#9'4'#9'SumHaber'#9'F');
   dbgValidaRegVentas.DataSource := DMCXC.dsValidaProvision;
   Try
      Screen.Cursor := crHourGlass;
      dbgValidaRegVentas.ExportOptions.ExportType := wwgetSYLK;
      dbgValidaRegVentas.ExportOptions.FileName := 'ValidProvision_' + wgPeriodo + '.slk';
      dbgValidaRegVentas.ExportOptions.Save; //el primero genera error
      dbgValidaRegVentas.ExportOptions.Save;
      ShellExecute(Handle, 'Open', PChar(dbgValidaRegVentas.ExportOptions.Filename), Nil, Nil, sw_shownormal);
      Screen.Cursor := crDefault;
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
End;

Procedure TFRVentasValidacion.fg_ExportarValidContabilizacion(wgCia, wgTipoDiario, wgPeriodo: String);
Begin
   dbgValidaRegVentas.Selected.Clear;
   dbgValidaRegVentas.Selected.Add('CIAID'#9'8'#9'Compañia'#9'F');
   dbgValidaRegVentas.Selected.Add('TDIARID'#9'8'#9'TipoDiario'#9'F');
   dbgValidaRegVentas.Selected.Add('CNTCOMPROB'#9'8'#9'N°Comprobante'#9'F');
   dbgValidaRegVentas.Selected.Add('DEBE'#9'6'#9'SumDebeCNT'#9'F');
   dbgValidaRegVentas.Selected.Add('HABER'#9'8'#9'SumHaberCNT'#9'F');
   dbgValidaRegVentas.Selected.Add('DEBE_CXC'#9'4'#9'SumDebeCxC'#9'F');
   dbgValidaRegVentas.Selected.Add('HABER_CXC'#9'4'#9'SumHaberCxC'#9'F');
   dbgValidaRegVentas.DataSource := DMCXC.dsValidaContabilizacion;
   Try
      Screen.Cursor := crHourGlass;
      dbgValidaRegVentas.ExportOptions.ExportType := wwgetSYLK;
      dbgValidaRegVentas.ExportOptions.FileName := 'ValidContabilizacion_' + wgPeriodo + '.slk';
      dbgValidaRegVentas.ExportOptions.Save; //el primero genera error
      dbgValidaRegVentas.ExportOptions.Save;
      ShellExecute(Handle, 'Open', PChar(dbgValidaRegVentas.ExportOptions.Filename), Nil, Nil, sw_shownormal);
      Screen.Cursor := crDefault;
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
End;

Procedure TFRVentasValidacion.fg_ExportarValidAsiento(wgCia, wgTipoDiario, wgPeriodo: String);
Begin
   dbgValidaRegVentas.Selected.Clear;
   dbgValidaRegVentas.Selected.Add('CIAID'#9'8'#9'Compañia'#9'F');
   dbgValidaRegVentas.Selected.Add('TDIARID'#9'8'#9'TipoDiario'#9'F');
   dbgValidaRegVentas.Selected.Add('CNTCOMPROB'#9'8'#9'N°Comprobante'#9'F');
   dbgValidaRegVentas.Selected.Add('DEBE_CAB'#9'6'#9'Debe'#9'F');
   dbgValidaRegVentas.Selected.Add('HABER_CAB'#9'8'#9'Haber'#9'F');
   dbgValidaRegVentas.Selected.Add('DEBE_MOV'#9'4'#9'SumDebeDetalle'#9'F');
   dbgValidaRegVentas.Selected.Add('HABER_MOV'#9'4'#9'SumHaberDetalle'#9'F');
   dbgValidaRegVentas.DataSource := DMCXC.dsValidaAsiento;
   Try
      Screen.Cursor := crHourGlass;
      dbgValidaRegVentas.ExportOptions.ExportType := wwgetSYLK;
      dbgValidaRegVentas.ExportOptions.FileName := 'ValidAsiento_' + wgPeriodo + '.slk';
      dbgValidaRegVentas.ExportOptions.Save; //el primero genera error
      dbgValidaRegVentas.ExportOptions.Save;
      ShellExecute(Handle, 'Open', PChar(dbgValidaRegVentas.ExportOptions.Filename), Nil, Nil, sw_shownormal);
      Screen.Cursor := crDefault;
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
End;

End.

