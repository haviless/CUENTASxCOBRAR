Unit CXC307;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
   StdCtrls, Buttons, wwdbdatetimepicker, wwdblook, ExtCtrls, ppBands,
   ppVar, ppPrnabl, ppCtrls, CXCUtil;

Type
   TFRPlanillaBancos = Class(TForm)
      Panel1: TPanel;
      pnlDatos1: TPanel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label1: TLabel;
      Label2: TLabel;
      dtpFecha1: TwwDBDateTimePicker;
      dtpFecha2: TwwDBDateTimePicker;
      bbtnBorra: TBitBtn;
      bbtnOk: TBitBtn;
      ppdbPlanBco: TppDBPipeline;
      pprPlanBco: TppReport;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      lblTituloPeriodo: TppLabel;
      ppLabel7: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel8: TppLabel;
      ppdbtFecha: TppDBText;
      ppdbtBancoId: TppDBText;
      ppdbtSituacion: TppDBText;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLabel9: TppLabel;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppGroupFooterBand3: TppGroupFooterBand;
      lblDescripcionBanco: TppLabel;
      lblDescripcionSituacion: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
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
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      lblDescripcionSituacion1: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel32: TppLabel;
      lblDescripcionBanco1: TppLabel;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLabel34: TppLabel;
      ppDBText11: TppDBText;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
      Procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure IniciaDatos;
   End;

Var
   FRPlanillaBancos: TFRPlanillaBancos;

Implementation

Uses CXCDM;

{$R *.DFM}

Procedure TFRPlanillaBancos.bbtnBorraClick(Sender: TObject);
Begin
   IniciaDatos;
   dblcCia.Setfocus;
End;

Procedure TFRPlanillaBancos.IniciaDatos;
Begin
   edtCia.Clear;
   RecuperarCiaUnica(dblcCia, edtCia);
   dtpFecha1.Date := 0;
   dtpFecha2.Date := 0;
End;

Procedure TFRPlanillaBancos.dblcCiaExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFRPlanillaBancos.FormShow(Sender: TObject);
Begin
   IniciaDatos;
End;

Procedure TFRPlanillaBancos.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFRPlanillaBancos.bbtnOkClick(Sender: TObject);
Var
   sSQL: String;
Begin
   If dtpFecha2.date < dtpFecha1.date Then
      Raise Exception.Create('Error en las fechas');

   If (DM1.SRV_D = 'DB2NT') Then
   Begin
      sSQL := ' SELECT DET.CIAID,DET.BANCOID,DET.SITUACION,DET.PLBCFECHA,DET.LETRA,DET.CLIEID,CLI.CLIEDES,DET.PLBCID,CAB.USUARIO, ' +
         ' DET.LETIMPORTE IMPME,DET.LETIMPORTE*COALESCE(TCAM.TCAMVOC,1) IMPMN,DET.LETMTOORI*DET.CCTCAMPR MTOORIMN, ' +
         ' (DET.LETIMPORTE*COALESCE(TCAM.TCAMVOC,1))-(DET.LETMTOORI*DET.CCTCAMPR) DIFCAMBIO ' +
         ' FROM CXC309 DET ' +
         ' LEFT JOIN CXC308 CAB ON CAB.CIAID=DET.CIAID AND CAB.PLBCID=DET.PLBCID AND CAB.BANCOID=DET.BANCOID ' +
         ' LEFT JOIN TGE204 CLI ON CLI.CIAID=DET.CIAID AND CLI.CLIEID=DET.CLIEID ' +
         ' LEFT JOIN TGE107 TCAM ON TCAM.FECHA=DET.PLBCFECHA ' +
         ' WHERE DET.CIAID=' + QuotedStr(dblcCia.text) +
         ' AND DET.PLBCFECHA BETWEEN ' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFecha1.date) + ''' ) AND ' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFecha2.date) + ''' )' +
         ' ORDER BY DET.PLBCFECHA,DET.BANCOID,DET.SITUACION ';
   End;
   If (DM1.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT DET.CIAID,DET.BANCOID,DET.SITUACION,DET.PLBCFECHA,DET.LETRA,DET.CLIEID,CLI.CLIEDES,DET.PLBCID,CAB.USUARIO, ' +
         ' DET.LETIMPORTE IMPME,DET.LETIMPORTE*COALESCE(TCAM.TCAMVOC,1) IMPMN,DET.LETMTOORI*DET.CCTCAMPR MTOORIMN, ' +
         ' (DET.LETIMPORTE*COALESCE(TCAM.TCAMVOC,1))-(DET.LETMTOORI*DET.CCTCAMPR) DIFCAMBIO ' +
         ' FROM CXC309 DET ' +
         ' LEFT JOIN CXC308 CAB ON CAB.CIAID=DET.CIAID AND CAB.PLBCID=DET.PLBCID AND CAB.BANCOID=DET.BANCOID ' +
         ' LEFT JOIN TGE204 CLI ON CLI.CIAID=DET.CIAID AND CLI.CLIEID=DET.CLIEID ' +
         ' LEFT JOIN TGE107 TCAM ON TCAM.FECHA=DET.PLBCFECHA ' +
         ' WHERE DET.CIAID=' + QuotedStr(dblcCia.text) +
         ' AND COALESCE(DET.PLBCFECHA,''01/01/1900'')>=''' + FORMATDATETIME('DD/MM/YYYY', dtpFecha1.date) + ''' ' +
         ' AND COALESCE(DET.PLBCFECHA,''01/01/1900'')<=''' + FORMATDATETIME('DD/MM/YYYY', dtpFecha2.date) + ''' ' +
         ' ORDER BY DET.PLBCFECHA,DET.BANCOID,DET.SITUACION ';
   End;
   If (DM1.SRV_D = 'ORACLE') Then
   Begin

   End;

   DM1.cdsQry.Close;

   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
      Raise Exception.Create('No existen Registros que mostrar');

   ppdbPlanBco.DataSource := DM1.dsQry;
   pprPlanBco.DataPipeline := ppdbPlanBco;

   pprPlanBco.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\PlanillaBancos.rtm';
   pprPlanBco.template.LoadFromFile;

   lblTituloPeriodo.text := dtpFecha1.Text + ' AL ' + dtpFecha2.Text;

End;

Procedure TFRPlanillaBancos.ppGroupHeaderBand2BeforePrint(Sender: TObject);
Begin
   lblDescripcionBanco.text := DisplayDescrip('TGE105', 'BANCONOM', 'BANCOID', ppdbtBancoId.text);
   lblDescripcionBanco1.text := lblDescripcionBanco.text;
End;

Procedure TFRPlanillaBancos.ppGroupHeaderBand3BeforePrint(Sender: TObject);
Begin
   lblDescripcionSituacion.text := DisplayDescrip('CXC104', 'SITUADES', 'SITUAID', ppdbtSituacion.text);
   lblDescripcionSituacion1.text := UpperCase(lblDescripcionSituacion.text) + ' :';
End;

End.

