Unit Cxc601;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Wwdbdlg, wwdbdatetimepicker, StdCtrls, ExtCtrls, wwdblook, Buttons, Mask,
   wwdbedit, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB,
   ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, Spin, Db, Wwdatsrc,
   DBClient, wwclient, ppViewr;

Type
   TFCCuadreMovs = Class(TForm)
      pnlCuadreMovs: TPanel;
      lblCia: TLabel;
      bbtnOk: TBitBtn;
      bbtnCanc: TBitBtn;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      rgEstado: TRadioGroup;
      rgListado: TRadioGroup;
      ppdbMovCntD: TppDBPipeline;
      pprCuadreMovsR: TppReport;
      pprCuadreMovsD: TppReport;
      ppdbMovCntR: TppDBPipeline;
      GroupBox1: TGroupBox;
      ckTDiario: TCheckBox;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      dbeLote: TwwDBEdit;
      ckLote: TCheckBox;
      gbPer: TGroupBox;
      speAno: TSpinEdit;
      speMM: TSpinEdit;
      Label2: TLabel;
      dbdtpFReg1: TwwDBDateTimePicker;
      dbdtpFReg2: TwwDBDateTimePicker;
      cdsTmp: TwwClientDataSet;
      dsTmp: TwwDataSource;
      ppHeaderBand2: TppHeaderBand;
      ppLabel8: TppLabel;
      pplblDelD: TppLabel;
      pplblFecIniD: TppLabel;
      pplblAlD: TppLabel;
      pplblFecFinD: TppLabel;
      ppLabel20: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel21: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppLabel22: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      pplblCiaD: TppLabel;
      ppLabel9: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText9: TppDBText;
      ppDBText25: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppLabel34: TppLabel;
      TDIARID_D: TppDBText;
      ppDBText7: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppLabel52: TppLabel;
      ppDBText33: TppDBText;
      ppDBText1: TppDBText;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel38: TppLabel;
      ppLabel14: TppLabel;
      ppLabel25: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel23: TppLabel;
      ppLabel10: TppLabel;
      ppLabel41: TppLabel;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppLabel37: TppLabel;
      ppLine6: TppLine;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel26: TppLabel;
      ppLabel53: TppLabel;
      ppDBText35: TppDBText;
      ppDBText16: TppDBText;
      ppLabel24: TppLabel;
      ppDBText36: TppDBText;
      ppLine3: TppLine;
      ppLabel55: TppLabel;
      ppLabel39: TppLabel;
      ppdbperiodo: TppDBText;
      ppLabel35: TppLabel;
      ppDBText10: TppDBText;
      ppLabel33: TppLabel;
      ppDBText8: TppDBText;
      ppLabel45: TppLabel;
      ppDBText28: TppDBText;
      ppLabel12: TppLabel;
      ppDBText11: TppDBText;
      ppLabel36: TppLabel;
      ppDBText12: TppDBText;
      lblmoneda: TppLabel;
      ppLabel54: TppLabel;
      lblestado: TppLabel;
      lblperiodo: TppLabel;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      pplblDel: TppLabel;
      pplblFecini: TppLabel;
      pplblAl: TppLabel;
      pplblFecfin: TppLabel;
      ppLine1: TppLine;
      ppLabel18: TppLabel;
      ppLine2: TppLine;
      ppLabel6: TppLabel;
      ppLabel13: TppLabel;
      ppLabel19: TppLabel;
      ppLabel4: TppLabel;
      ppLabel3: TppLabel;
      ppLabel15: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable1: TppSystemVariable;
      ppLabel7: TppLabel;
      ppLabel2: TppLabel;
      ppLabel40: TppLabel;
      pplblCiaR: TppLabel;
      ppLabel42: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText24: TppDBText;
      ppDBText3: TppDBText;
      ppDBText6: TppDBText;
      ppVariable1: TppVariable;
      ppDBText4: TppDBText;
      ppDBText29: TppDBText;
      ppDBText5: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppLabel5: TppLabel;
      TDIARID: TppDBText;
      ppDBText34: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLabel46: TppLabel;
      ppLine5: TppLine;
      ppDBText32: TppDBText;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure ppVariable1Calc(Sender: TObject; Var Value: Variant);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeLoteExit(Sender: TObject);
      Procedure ckTDiarioClick(Sender: TObject);
      Procedure ckLoteClick(Sender: TObject);
      Procedure gbPerExit(Sender: TObject);
      Procedure dbdtpFReg1Exit(Sender: TObject);
      Procedure dbdtpFReg2Exit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure pprCuadreMovsDPreviewFormCreate(Sender: TObject);
      Procedure pprCuadreMovsRPreviewFormCreate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   vreal, TD, TH: Single;
   FCCuadreMovs: TFCCuadreMovs;
   vstr, xFiltro, xWhere: String;

Implementation
Uses CXCDM;
{$R *.DFM}

Procedure TFCCuadreMovs.dblcCiaExit(Sender: TObject);
Begin
   TD := 0;
   edtCia.Text := '';
   If dblcCia.Text <> '' Then edtCia.Text := DM1.cdsCia.FieldByName('CiaDes').Text;
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Definición de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFCCuadreMovs.dblcTDiarioExit(Sender: TObject);
Begin
   edtTDiario.Text := '';
   If dblcTDiario.Text <> '' Then edtTDiario.Text := DM1.cdsTDiario.FieldByName('TDIARABR').AsString;
End;

Procedure TFCCuadreMovs.bbtnOkClick(Sender: TObject);
Var
   estado, estado1, xSQL, mes, ano, mesdes: String;
   x10: integer;
Begin
   If edtCia.Text = '' Then
   Begin
   //ShowMessage('Compañia no válida');
      Raise exception.Create('Compañia no válida');
   End;

   If (dbdtpFReg1.Date = 0) Or (dbdtpFReg2.Date = 0) Then
   Begin
   //ShowMessage('Fecha no válida');
      Raise exception.Create('Fecha no válida');
   End;

   If (ckTDiario.Checked) And (edtTDiario.Text = '') Then
   Begin
   //ShowMessage('Seleccione un Tipo de Diario');
      Raise exception.Create('Seleccione un Tipo de Diario');
   End;

   If (ckLote.Checked) And (dbeLote.Text = '') Then
   Begin
   //showmessage('Seleccione Lote');
      Raise exception.Create('Seleccione Lote');
   End;
   Screen.Cursor := crHourGlass;
   xFiltro := 'CIAID=' + '''' + dblcCia.Text + ''''
      + ' and CNTFCOMP>=' + dm1.wRepFuncDate + '''' + formatdatetime(dm1.wFormatFecha, dbdtpFReg1.DateTime) + '''' + ')'
      + ' and CNTFCOMP<=' + dm1.wRepFuncDate + '''' + formatdatetime(dm1.wFormatFecha, dbdtpFReg2.DateTime) + '''' + ')';

   If dblcTDiario.Text <> '' Then
      xFiltro := xFiltro + ' and TDIARID=' + '''' + dblcTDiario.Text + '''';

   If dbeLote.Text <> '' Then xFiltro := xFiltro + ' and CNTLOTE=' + '''' + dbeLote.Text + '''';

   Case rgEstado.ItemIndex Of
      0:
         Begin // Activos
            xFiltro := xFiltro + ' and CNTESTADO=' + '''' + 'I' + '''';
         End;
      1:
         Begin // Aceptado
            xFiltro := xFiltro + ' and CNTESTADO=' + '''' + 'P' + '''' + ' and CNTCUADRE<>' + '''' + 'S' + '''';
         End;
      2:
         Begin // Contabilizado
            xFiltro := xFiltro + ' and CNTCUADRE=' + '''' + 'S' + ''' ';
         End;
   End;

   Case rgListado.ItemIndex Of
      0:
         Begin // Resumido
            pplblCiaR.Text := edtCia.Text;
            xSQL := 'Select CIAID, TDIARID, CNTANOMM, CNTCOMPROB,' +
               ' TMONID, CNTFCOMP, CNTLOTE, CNTUSER, CNTTCAMBIO, CNTCUADRE, CNTESTADO,' +
               ' CNTDEBEMN, CNTHABEMN, CNTDEBEME, CNTHABEME, TDIARDES' +
       //WMC' from CNT300 Where '+xFiltro+
            ' from CNT300 Where ' + xFiltro + ' AND DOCMOD = ''CXC'' ' +
               ' Order by TDIARID, CNTANOMM, CNTCOMPROB, CNTFCOMP';

            cdsTmp.Close;
            cdsTmp.DataRequest(xSQL);
            cdsTmp.Open;
            cdsTmp.First;
            ppdbMovCntR.DataSource := dsTmp;

            pprCuadreMovsR.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CXPCompontR.rtm';
            pprCuadreMovsR.Template.LoadFromFile;

            pplblFecIni.Caption := datetostr(dbdtpFReg1.Date);
            pplblFecFin.Caption := datetostr(dbdtpFReg2.Date);
            pplblCiaR.caption := edtcia.text;
            Screen.Cursor := crDefault;
            pprCuadreMovsR.Print;
            pprCuadreMovsR.Stop;
            x10 := self.componentCount - 1;
            While x10 > 0 Do
            Begin
               If self.components[x10].classname = 'TppGroup' Then
               Begin
                  self.components[x10].free;
                  x10 := x10 - 1;
               End;
               x10 := x10 - 1;
            End;
            ppdbMovCntD.DataSource := Nil;
            cdsTmp.CancelUpdates;
            ppdbMovCntR.DataSource := Nil;
         End;
      1:
         Begin // Detallado
            pplblCiaD.Text := edtCia.Text;
            xSQL := 'SELECT * FROM CNT301 WHERE ' + xFiltro + ' AND CNTMODDOC = ''CXC'' ' +
               'ORDER BY TDIARID, CNTANOMM, CNTCOMPROB, CNTFCOMP,CNTREG';
            cdsTmp.Close;
            cdsTmp.DataRequest(xSQL);
            cdsTmp.Open;
            ppdbMovCntD.DataSource := dsTmp;

            pprCuadreMovsD.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CXPCompontD.rtm';
            pprCuadreMovsD.template.LoadFromFile;

            pplblCiaD.caption := edtcia.text;
//				lblmoneda.caption:=DM1.DisplayDescrip('dspTGE','TGE103','TMONDES','TMONID='''+ppDBText28.caption+'''','TMONDES');
            lblmoneda.caption := BuscaQry('dspTGE', 'TGE103', 'TMONDES', 'TMONID=''' + ppDBText28.caption + '''', 'TMONDES');

            pplblFecIniD.Caption := datetostr(dbdtpFReg1.Date);
            pplblFecFinD.Caption := datetostr(dbdtpFReg2.Date);

            mes := copy(cdsTmp.fieldbyname('CNTANOMM').asstring, 5, 2);
            ano := copy(cdsTmp.fieldbyname('CNTANOMM').asstring, 1, 4);

            xWhere := 'MESIDR=''' + mes + '''';
            mesdes := BuscaQry('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
            lblperiodo.caption := mesdes + ' ' + ano;
            xWhere := 'TMONID=''' + cdsTmp.fieldbyname('TMONID').asstring + '''';
            lblmoneda.text := BuscaQry('dspTGE', 'TGE103', 'TMONDES', XWHERE, 'TMONDES');
            xWhere := 'CIAID=''' + cdsTmp.fieldbyname('CIAID').asstring + ''' AND TDIARID=''' +
               cdsTmp.fieldbyname('TDIARID').asstring + ''' AND CNTCOMPROB=''' +
               cdsTmp.fieldbyname('CNTCOMPROB').asstring + ''' AND CNTANOMM=''' + cdsTmp.fieldbyname('CNTANOMM').asstring + '''';
            Estado := BuscaQry('dspTGE', 'CNT300', 'CNTCUADRE,CNTESTADO', XWHERE, 'CNTCUADRE');
            estado1 := dm1.cdsqry.fieldbyname('CNTESTADO').asstring;
            If estado = 'S' Then
               lblestado.caption := 'Contabilizado'
            Else
            Begin
               If estado1 = 'P' Then
                  lblestado.caption := 'Aceptado';
               If estado1 = 'A' Then
                  lblestado.caption := 'Anulado';
               If estado1 = 'I' Then
                  lblestado.caption := 'Inicial';
            End;
            Screen.Cursor := crDefault;
            pprCuadreMovsD.Print;
            pprCuadreMovsD.stop;
            x10 := self.componentCount - 1;
            While x10 > 0 Do
            Begin
               If self.components[x10].classname = 'TppGroup' Then
               Begin
                  self.components[x10].free;
                  x10 := x10 - 1;
               End;
               x10 := x10 - 1;
            End;
            ppdbMovCntD.DataSource := Nil;
         End;
   End;
End;

Procedure TFCCuadreMovs.ppVariable1Calc(Sender: TObject;
   Var Value: Variant);
Begin
   With DM1 Do
   Begin
      ppVariable1.Font.Size := 8;
      ppVariable1.Font.Style := ppVariable1.Font.Style - [fsBold];
      If cdsTmp.FieldByName('CNTCUADRE').Value = 'S' Then
         ppVariable1.Text := ' CONTABILIZADO'
      Else
      Begin
         If cdsTmp.FieldByName('CNTESTADO').Value = 'I' Then
            ppVariable1.Text := '   ACTIVO';
         If cdsTmp.FieldByName('CNTESTADO').Value = 'P' Then
            ppVariable1.Text := ' ACEPTADO';
         If cdsTmp.FieldByName('CNTESTADO').Value = 'A' Then
         Begin
            ppVariable1.Font.Size := 10;
            ppVariable1.Font.Style := ppVariable1.Font.Style + [fsBold];
            ppVariable1.Text := ' A N U L A D O ';
         End;
      End;
   End;
End;

Procedure TFCCuadreMovs.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFCCuadreMovs.dbeLoteExit(Sender: TObject);
Begin
   If dbeLote.Text <> '' Then dbeLote.Text := strzero(dbeLote.Text, 4);
End;

Procedure TFCCuadreMovs.ckTDiarioClick(Sender: TObject);
Begin
   If Not (ckTDiario.Checked) Then
   Begin
      dblcTDiario.Text := '';
      edtTDiario.Text := '';
      dblcTDiario.Enabled := False;
   End
   Else
   Begin
      dblcTDiario.Enabled := True;
   End;
End;

Procedure TFCCuadreMovs.ckLoteClick(Sender: TObject);
Begin
   If Not (ckLote.Checked) Then
   Begin
      dbeLote.Text := '';
      dbeLote.Enabled := False;
   End
   Else
   Begin
      dbeLote.Enabled := True;
   End;
End;

Procedure TFCCuadreMovs.gbPerExit(Sender: TObject);
Var
   xFecha1, xFecha2: TDateTime;
Begin
   xFecha1 := strtodate('01/' + strZero(speMM.Text, 2) + '/' + speAno.Text);
   If strtofloat(speMM.Text) + 1 = 13 Then
   Begin
      speAno.Text := floattostr(strtofloat(speAno.Text) + 1);
      xFecha2 := strtodate('01/01/' + speAno.Text);
   End
   Else
   Begin
      xFecha2 := strtodate('01/' + strZero(floattostr(strtofloat(speMM.Text) + 1), 2) + '/' + speAno.Text);
   End;
   xFecha2 := xFecha2 - 1;
   dbdtpFReg1.date := xFecha1;
   dbdtpFReg2.date := xFecha2;
End;

Procedure TFCCuadreMovs.dbdtpFReg1Exit(Sender: TObject);
Begin
   If dbdtpFReg1.date = 0 Then
   Begin
      dbdtpFReg1.SetFocus;
      ShowMessage('Error : Falta Registrar Fecha');
      Raise Exception.Create('Error : Falta Registrar Fecha');
   End;
End;

Procedure TFCCuadreMovs.dbdtpFReg2Exit(Sender: TObject);
Begin
   If dbdtpFReg2.date = 0 Then
   Begin
      dbdtpFReg2.SetFocus;
      ShowMessage(' Error : Falta Registrar Fecha ');
      Raise Exception.Create(' Error : Falta Registrar Fecha ');
   End;
   If dbdtpFReg2.date < dbdtpFReg1.date Then
   Begin
      dbdtpFReg2.SetFocus;
      ShowMessage(' Error : Fecha debe ser Mayor');
      Raise Exception.Create(' Error : Fecha debe ser Mayor');
   End;

End;

Procedure TFCCuadreMovs.FormShow(Sender: TObject);
Var
   xSQL: String;
   xAno, xMes, xDia: Word;
Begin
   xSQL := ' Select * From TGE104';
   DM1.cdsTdiario.Close;
   DM1.cdsTdiario.DataRequest(xSQL);
   DM1.cdsTdiario.Open;

   DecodeDate(Date, xAno, xMes, xDia);
   speAno.Value := xAno;
   speMM.Value := xMes;
End;

Procedure TFCCuadreMovs.FormCreate(Sender: TObject);
Begin
   cdsTmp.RemoteServer := dm1.DCOM1;
   cdsTmp.ProviderName := 'dspUltTGE'
End;

Procedure TFCCuadreMovs.pprCuadreMovsDPreviewFormCreate(Sender: TObject);
Begin
   pprCuadreMovsD.PreviewForm.ClientHeight := 500;
   pprCuadreMovsD.PreviewForm.ClientWidth := 650; // ppViewr
   tppviewer(pprCuadreMovsD.PreviewForm.Viewer).zoomSetting := zspageWidth;
End;

Procedure TFCCuadreMovs.pprCuadreMovsRPreviewFormCreate(Sender: TObject);
Begin
   pprCuadreMovsR.PreviewForm.ClientHeight := 500;
   pprCuadreMovsR.PreviewForm.ClientWidth := 650; // ppViewr
   tppviewer(pprCuadreMovsR.PreviewForm.Viewer).zoomSetting := zspageWidth;
End;

End.

