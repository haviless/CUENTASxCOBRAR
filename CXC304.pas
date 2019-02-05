Unit CXC304;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, wwdblook, Mask, ppBands, ppVar, oaVariables,
   ppPrnabl, ppClass, ppCtrls, ppProd, ppReport, ppComm, ppRelatv, ppCache,
   ppDB, ppDBPipe, Buttons, ExtCtrls, Spin, ppEndUsr, ppParameter, DB;

Type
   TFcrCliSaldos = Class(TForm)
      gbPeriodo: TGroupBox;
      cbMes: TComboBox;
      dblcCIA: TwwDBLookupCombo;
      edtCia: TEdit;
      speAnyo: TSpinEdit;
      meTipCamb: TEdit;
      Z2bbtnSalir: TBitBtn;
      Z2bbtnImprimir: TBitBtn;
      ppdbFuente: TppDBPipeline;
      ppReporte: TppReport;
      ppDesigner1: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHBCab: TppHeaderBand;
      pplblEmpresa: TppLabel;
      pplblSistema: TppLabel;
      pplblPagina: TppLabel;
      pplblFecha: TppLabel;
      pplblHora: TppLabel;
      pplblTitulo: TppLabel;
      pplblLin0: TppLabel;
      pplblLin1: TppLabel;
      ppsvPagina: TppSystemVariable;
      ppsvFecha: TppSystemVariable;
      ppsvHora: TppSystemVariable;
      ppDBDet: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText1: TppDBText;
      ppFBPie: TppFooterBand;
      pplblLin2: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppLabel1: TppLabel;

      Procedure bbtnImprimirClick(Sender: TObject);
      Procedure dblcCIAExit(Sender: TObject);
      Procedure speAnyoExit(Sender: TObject);
      Procedure ppReporteBeforePrint(Sender: TObject);
      Procedure cbMesExit(Sender: TObject);
      Procedure speAnyoKeyPress(Sender: TObject; Var Key: Char);
      Procedure meTipCambKeyPress(Sender: TObject; Var Key: Char);
      Procedure meTipCambExit(Sender: TObject);
      Procedure Z2bbtnImprimirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormShow(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcCIANotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure ExecPrint(wAnyo, wMes, wCia, wTipCamb: String);
   End;

Var
   FcrCliSaldos: TFcrCliSaldos;

Implementation

{$R *.DFM}
Uses CXCDM;

Procedure TFcrCliSaldos.dblcCIAExit(Sender: TObject);
Begin
   If dblcCia.Enabled Then
      edtCia.text := DMCXC.BuscaQry2('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + quotedstr(dblcCia.text), 'CIADES');
End;

Procedure TFcrCliSaldos.speAnyoExit(Sender: TObject);
Var
   sCampo: String;
   sMonExt: String;
   sSQL: String;
Begin
   sCampo := 'TCAM' + DMCXC.wVRN_TipoCambio;
   sMonExt := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONID', 'TMON_LOC=' + quotedstr('E'), 'TMONID');
   sSQL := 'SELECT ' + sCampo + ' FROM TGE107';
   sSQL := sSQL + ' WHERE TMONID=' + quotedstr(sMonExt);
   sSQL := sSQL + ' AND FECHA=' + DMCXC.wRepFuncDate + '''' + formatdatetime(DMCXC.wFormatFecha, now) + '''' + ')';
   FiltraCDS(DMCXC.cdsQry, sSQL);
   If DMCXC.cdsQry.RecordCount = 0 Then
   Begin
      sSQL := 'SELECT MAX(' + sCampo + ') ' + sCampo + ' FROM TGE107';
      sSQL := sSQL + ' WHERE TMONID=' + quotedstr(sMonExt);
      FiltraCDS(DMCXC.cdsQry, sSQL);
   End;
   meTipCamb.Text := DMCXC.cdsQry.FieldByName(sCAMPO).asString;
   DMCXC.cdsQry.close;
End;

Procedure TFcrCliSaldos.bbtnImprimirClick(Sender: TObject);
Var
   sMes, sAnyo, sTipCamb: String;
Begin
   sMes := StrZero(FloatToStr(cbMes.ItemIndex + 1), 2);
   sAnyo := speAnyo.text;
   sTipCamb := meTipCamb.text;
   ExecPrint(sAnyo, sMes, dblcCia.text, sTipCamb);
End;

Procedure TFcrCliSaldos.ExecPrint(wAnyo, wMes, wCia, wTipCamb: String);
Var
   sSAcum,
      sSQL: String;
Begin
   sSACUM := '(' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + wMes + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + wMes + ',0)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + wMes + ',0)  ) AS SALACUMMN, '
      + '(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + wMes + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + wMes + ',0)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + wMes + ',0)  ) AS SALACUMME, '
      + '((' + DMCXC.wReplacCeros + '(SAL.SALDSME' + wMes + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + wMes + ',0)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + wMes + ',0) )*' + wTipCamb
      + '+ ' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + wMes + ',0)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + wMes + ',0)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + wMes + ',0)  ) AS SALACUMTOT ';
   If (DMCXC.SRV_D = 'DB2NT') Or
      (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := 'SELECT ' + sSACUM + ', CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES ';
      sSQL := sSQL + ' FROM TGE401 SAL LEFT JOIN TGE204 CLI ON (CLI.CIAID=''01'' AND CLI.CLAUXID=SAL.CLAUXID AND CLI.CLIEID=SAL.AUXID) ';
      sSQL := sSQL + ' WHERE SAL.CIAID=' + quotedstr(wCIA) + ' AND ';
      sSQL := sSQL + ' SAL.CLAUXID=' + quotedstr('03') + ' AND';
      sSQL := sSQL + ' SAL.ANO=' + quotedstr(wAnyo);
    //  sSQL := sSQL +' GROUP BY CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES ';
      sSQL := sSQL + ' ORDER BY CLI.CLIEDES';
   End
   Else
   Begin
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         sSQL := 'SELECT ' + sSACUM + ', CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES ';
         sSQL := sSQL + ' FROM TGE401 SAL,TGE204 CLI';
         sSQL := sSQL + ' WHERE SAL.CIAID=' + quotedstr(wCIA) + ' AND ';
         sSQL := sSQL + ' SAL.ANO=' + quotedstr(wAnyo);
         sSQL := sSQL + ' AND (CLI.CIAID=SAL.CIAID(+) AND CLI.CLAUXID=SAL.CLAUXID(+) AND CLI.CLIEID=SAL.AUXID(+)) ';
         sSQL := sSQL + ' ORDER BY CLI.CLIEDES';
      End;
   End;
   Try
      FiltraCDS(DMCXC.cdsReporte, 'SELECT DISTINCT * FROM (' + sSQL + ')SOLVISTA');
      If DMCXC.cdsReporte.FieldByName('CLAUXID').asString = '' Then
         Raise exception.create('Esta consulta no tiene registros');
      pplblTitulo.Caption := 'REPORTE DE CLIENTES CON SALDOS' + #10#13 + 'TIPO DE CAMBIO: ' + wTipCamb;
      ppdbFuente.DataSource := DMCXC.dsReporte;
      ppReporte.datapipeline := ppdbFuente;
      ppReporte.print;
      //ppReporte.Template.SaveToFile;
      //ppDesigner1.show;
      ppdbFuente.DataSource := Nil;
   Finally
      DMCXC.cdsReporte.close;
   End;
End;

Procedure TFcrCliSaldos.ppReporteBeforePrint(Sender: TObject);
Var
   nIzq: single;
   nTotCar: word;
   sCadena: String;
   i: word;
Begin
   pplblEmpresa.Caption := DMCXC.BuscaQry2('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + quotedStr(dblcCIA.text), 'CIADES');
   pplblFecha.Caption := 'FECHA : ' + ppsvFecha.Text;
   pplblHora.Caption := 'HORA  : ' + ppsvHora.Text;
   pplblSistema.Caption := 'Cuentas x Cobrar';
   nIzq := ppReporte.PrinterSetup.PaperWidth - ppReporte.PrinterSetup.MarginRight - pplblHora.Width - 10; ////ancho de pagina - ancho de la hora (por ser el de mayor ancho) + 3
   pplblPagina.Left := nIzq;
   pplblFecha.Left := nIzq;
   pplblHora.Left := nIzq;

   sCadena := '';
   pplblLin0.Caption := '-';
   nTotCar := trunc(((ppReporte.PrinterSetup.PaperWidth - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft) / pplblLin0.Width) + 1);
   For i := 1 To nTotCar Do
      sCadena := sCadena + '-';
   pplblLin0.Caption := sCadena;
   pplblLin1.Caption := sCadena;
   pplblLin2.Caption := sCadena;

   pplblTitulo.Left := 40;
   pplblTitulo.Width := ppReporte.PrinterSetup.PaperWidth - 80 - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft;

End;

Procedure TFcrCliSaldos.cbMesExit(Sender: TObject);
Begin
   If (cbmes.Items.IndexOf(cbmes.Text) = -1) Then
   Begin
      Showmessage('Ingrese Mes');
      cbmes.SetFocus;
   End;

End;

Procedure TFcrCliSaldos.speAnyoKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Not (Key In ['0'..'9', #8]) Then
   Begin
      Key := #0;
   End;

End;

Procedure TFcrCliSaldos.meTipCambKeyPress(Sender: TObject; Var Key: Char);
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

Procedure TFcrCliSaldos.meTipCambExit(Sender: TObject);
Var
   xTCamWMC: Currency;
Begin
   Try
      xTCamWMC := strtofloat(meTipCamb.text);
   Except
      Showmessage('Ingrese Tipo de Cambio');
      meTipCamb.SetFocus;
   End;
End;

Procedure TFcrCliSaldos.Z2bbtnImprimirClick(Sender: TObject);
Var
   sMes, sAnyo, sTipCamb: String;
Begin
   sMes := StrZero(FloatToStr(cbMes.ItemIndex + 1), 2);
   sAnyo := speAnyo.text;
   sTipCamb := meTipCamb.text;
   ExecPrint(sAnyo, sMes, dblcCia.text, sTipCamb);
End;

Procedure TFcrCliSaldos.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFcrCliSaldos.FormShow(Sender: TObject);
Var
   i: byte;
   y, m, d: word;
Begin
   For i := 1 To 12 Do
      cbMes.Items.Add(UpperCase(LongMonthNames[i]));

   decodeDate(Now, y, m, d);
   cbMes.ItemIndex := m - 1;
   speAnyo.Value := y;

   DMCXC.cdsCia.Open;
   dblcCia.text := DMCXC.cdsCia.FieldByName('CIAID').asString;
   dblcCia.OnExit(sender);
   dblcCia.enabled := (DMCXC.cdsCia.RecordCount > 1);

   speAnyo.OnExit(sender);
End;

Procedure TFcrCliSaldos.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   Action := caFree;
End;

Procedure TFcrCliSaldos.dblcCIANotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Initialization
   registerclasses([TLabel]);
End.

