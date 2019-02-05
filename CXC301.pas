Unit CXC301;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CXC301
// Formulario           :   FRVentas
// Fecha de Creación    :   14/04/2010
// Autor                :   Hugo Noriega
// Objetivo             :   Imprimir reportes de Registro de Ventas.
//
// Actualizaciones      :
// SAR2010-0116   DAD-AS-2010-0009
// HPC_201102_CXC  09/08/2011  Poder cambiar la Fecha de Emisión del reporte del Registro de ventas.
// HPC_201204_CXC  28/08/2012  Permitir la visualización de las Notas de Débito
// HPC_201205_CXC  31/10/2012  Por el cambio del Tipo de Documento de Indentidad realizado
//                             en el maestro de Clientes.
// HPC_201301_CXC  09/04/2013  Se toma campo TDOC_ID_SUNAT de Maestro de clientes para Facturas
//                             si no tiene valor, se asume 06 Persona Jurídica.
// HPC_201309_CXC  10/12/2013  Condiciona para que tomo DNI o RUC como Nro de Documento
// HPC_201401_CXC  09/01/2014  Cambia Habilitación de Diseño de Reporte
//                             Incluye búsqueda Left Outer Join (+) al Maestro de Clientes
//                 29/03/2014  Botón de Validación de Registros FAC vs CXC vs CNT
// HPC_201405_CXC  24/10/2014  Realización de Reporte de Validación Cabecera Vs Detalle
//                             Comparación de Cuentas por Cobrar vs Asientos Contables.
// HPC_201601_CXC  15/01/2016  DAF_2016000019 Se define la variable wTMonLocDes para descripción de la Moneda Local
//                 30/06/2016  DAF_2016001414 Se adicionó botón de correlativo de número de documentos faltantes
// HPC_201602_CXC  03/01/2016  Registro de Ventas diarias para SUNAT
// HPC_201702_CXC : 30.06.2017 Adecuaciones para Facturación Electrónica

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit, ppviewr,
   wwdblook, Buttons, ppBands, ppClass, ppStrtch, ppRegion, ppVar, ppCtrls,
   ppPrnabl, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe,
   Grids, Wwdbigrd, Wwdbgrid, ppModule, daDatMod, ppEndUsr, pptypes,
   ppParameter, ComCtrls, StrContainer, DB, CXCUTIL, DBClient, wwclient;

Type
   TFRVentas = Class(TForm)
      pnlRegComp: TPanel;
      lblLetras: TLabel;
      bbtnOk: TBitBtn;
      bbtnBorra: TBitBtn;
      pnlDatos1: TPanel;
      lblCia: TLabel;
      Label2: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      dbeAnoMM: TwwDBEdit;
      pnlDatos2: TPanel;
      lblRango1: TLabel;
      lblRango2: TLabel;
      dbdtpFReg1: TwwDBDateTimePicker;
      dblcdProv1: TwwDBLookupComboDlg;
      dbeNoReg1: TwwDBEdit;
      dbdtpFReg2: TwwDBDateTimePicker;
      dblcdProv2: TwwDBLookupComboDlg;
      dbeNoReg2: TwwDBEdit;
      rgMoneda: TRadioGroup;
      rgOrden: TRadioGroup;
      ppdbMovCxC2: TppDBPipeline;
      ppRChico: TppReport;
      GroupBox1: TGroupBox;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      chqTodos: TCheckBox;
      ppd1: TppDesigner;
      Panel1: TPanel;
      rgFormato: TRadioGroup;
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
      rgEstado: TRadioGroup;
      ppParameterList1: TppParameterList;
      BitBtn1: TBitBtn;
      pbExp: TProgressBar;
      scFile: TStrContainer;
      sdGraba: TSaveDialog;
      wwClientDataSet1: TwwClientDataSet;
      gbFecRep: TGroupBox;
      dtpFecRep: TwwDBDateTimePicker;
      cbFecRep: TCheckBox;
      ppHeaderBand3: TppHeaderBand;
      pplblFecha: TppLabel;
      ppLabel128: TppLabel;
      ppLabel129: TppLabel;
      ppLabel131: TppLabel;
      ppLabel132: TppLabel;
      ppLabel135: TppLabel;
      ppLabel136: TppLabel;
      ppLabel137: TppLabel;
      ppLabel139: TppLabel;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      ppMon4: TppLabel;
      ppLabel145: TppLabel;
      ppLabel185: TppLabel;
      pplblCia: TppLabel;
      ppLabel187: TppLabel;
      ppLabel193: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable1: TppSystemVariable;
      ppLine2: TppLine;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel9: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel16: TppLabel;
      ppLabel1: TppLabel;
      ppLabel18: TppLabel;
      ppLabel2: TppLabel;
      pplblPeriodo: TppLabel;
      pplblTitulo: TppLabel;
      ppLabel51: TppLabel;
      ppLabel52: TppLabel;
      ppLine1: TppLine;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel32: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      ppLabel74: TppLabel;
      ppLabel73: TppLabel;
      ppLabel75: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLabel80: TppLabel;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppLabel85: TppLabel;
      ppLabel88: TppLabel;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppLabel5: TppLabel;
      ppLabel8: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel92: TppLabel;
      ppLabel93: TppLabel;
      ppLabel97: TppLabel;
      ppLabel98: TppLabel;
      ppLabel99: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel17: TppLabel;
      ppLabel28: TppLabel;
      ppLabel39: TppLabel;
      ppLabel43: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppLabel79: TppLabel;
      ppLabel101: TppLabel;
      ppLabel102: TppLabel;
      ppLabel100: TppLabel;
      ppLabel103: TppLabel;
      ppLabel104: TppLabel;
      ppLabel105: TppLabel;
      ppLabel106: TppLabel;
      ppLabel107: TppLabel;
      ppLabel86: TppLabel;
      ppLabel87: TppLabel;
      ppLabel108: TppLabel;
      ppMon1: TppLabel;
      ppMon2: TppLabel;
      ppMon3: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText19: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppDBText28: TppDBText;
      ppdbtCliente: TppDBText;
      varEstado: TppVariable;
      ppvGravado: TppDBText;
      ppvNGravado: TppDBText;
      ppvIGV: TppDBText;
      ppvTotal: TppDBText;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText7: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppDBCalc13: TppDBCalc;
      ppLine11: TppLine;
      ppDBCalc20: TppDBCalc;
      ppDBCalc24: TppDBCalc;
      ppSummaryBand3: TppSummaryBand;
      ppdbcGravado: TppDBCalc;
      ppdbcNGravado: TppDBCalc;
      ppdbcIGV: TppDBCalc;
      ppdbcTotal: TppDBCalc;
      ppVariable1: TppVariable;
      ppLabel44: TppLabel;
      ppLine9: TppLine;
      ppLine13: TppLine;
      ppDBCalc21: TppDBCalc;
      ppDBCalc25: TppDBCalc;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText20: TppDBText;
      ppDBText6: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLabel96: TppLabel;
      ppDBText27: TppDBText;
      ppLine12: TppLine;
      ppDBCalc5: TppDBCalc;
      ppDBCalc14: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppDBCalc16: TppDBCalc;
      ppDBCalc17: TppDBCalc;
      ppDBCalc19: TppDBCalc;
      ppDBCalc23: TppDBCalc;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLine3: TppLine;
      ppLabel45: TppLabel;
      ppDBCalc18: TppDBCalc;
      ppDBCalc22: TppDBCalc;
      ppsvFec: TppSystemVariable;
      pplFec: TppLabel;
      cbDisenoRep: TCheckBox;
      sbDisenoRep: TSpeedButton;
      bbtnValida: TBitBtn;
      gbValidaciones: TGroupBox;
      btnImprime1: TBitBtn;
      btnImprime2: TBitBtn;
      lblValidaciones: TLabel;
      pprV: TppReport;
   // Inicio HPC_201601_CXC
      bbtnCorrelFalt: TBitBtn;
      ppDBText32: TppDBText;
      ppDBCalc27: TppDBCalc;
      ppDBCalc29: TppDBCalc;
      ppDBCalc28: TppDBCalc;
      ppDBCalc26: TppDBCalc;
      ppParameterList2: TppParameterList;
      ppHeaderBand4: TppHeaderBand;
      ppDBText33: TppDBText;
      ppLabel109: TppLabel;
      ppLine14: TppLine;
      ppLabel110: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppLine16: TppLine;
      ppDBText37: TppDBText;
      ppImage1: TppImage;
      ppLabel114: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText34: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppDBText38: TppDBText;
      ppSummaryBand4: TppSummaryBand;
      ppLine15: TppLine;
      ppDBCalc30: TppDBCalc;
      ppLabel113: TppLabel;
      {
      ppHeaderBand6: TppHeaderBand;
      ppDetailBand6: TppDetailBand;
      ppFooterBand4: TppFooterBand;
      }
   // Final HPC_201601_CXC
      ppdbV: TppDBPipeline;
      ppdV: TppDesigner;
      ppDBText31: TppDBText;
      btnImprime3: TBitBtn;
    bbtnRegVtaDiaria: TBitBtn;
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure dbeAnoMMExit(Sender: TObject);
      Procedure rgOrdenClick(Sender: TObject);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure varEstadoCalc(Sender: TObject; Var Value: Variant);
      Procedure ppRChicoBeforePrint(Sender: TObject);
      Procedure ppVariable1Calc(Sender: TObject; Var Value: Variant);
      Procedure ppRChicoPreviewFormCreate(Sender: TObject);
      Procedure chqTodosClick(Sender: TObject);
      Procedure chqTodosExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure ppFooterBand1BeforePrint(Sender: TObject);
      Procedure ppHeaderBand3BeforePrint(Sender: TObject);
      Procedure ppGroupFooterBand2AfterPrint(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure cbFecRepClick(Sender: TObject);
      Procedure dblcCiaNotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure sbDisenoRepClick(Sender: TObject);
      Procedure bbtnValidaClick(Sender: TObject);
   // Inicio HPC_201601_CXC
      procedure btnImprime1Click(Sender: TObject);               // HPC_201405_CXC
      procedure btnImprime2Click(Sender: TObject);               // HPC_201405_CXC
      procedure btnImprime3Click(Sender: TObject);               // HPC_201405_CXC
      procedure bbtnCorrelFaltClick(Sender: TObject);
      Procedure CreaReporte(Sender: TObject);
      procedure bbtnRegVtaDiariaClick(Sender: TObject);
   // Final HPC_201601_CXC

// Función que genera TXT Resumen Diario para Sunat
      Procedure fg_RDCexportarFormato(wgRutaArchivo: String);

   Private
    { Private declarations }
      xImpTotalxPag: Boolean;
      Procedure CargaDataSources;
      Function RetornaDatos(cCampo: String): String;
      Procedure CompletarCamposRV(xxCds: TwwClientDataSet);
      Procedure PaginarReporte(xxCds: TwwClientDataSet; xxTipoRep: String);
   Public
    { Public declarations }
      Procedure IniciaDatos;
   End;

Var
   FRVentas: TFRVentas;
   xFiltroP1, xFiltroP2: String;
   Year, Month, Day: Word;
   wfechOk: boolean;
   anomm, wMes: String;
   xMoneda: String;
   sTDiarios: String;

Implementation

//Uses CXCDM;
Uses CXCDM, CXC330;

{$R *.DFM}

Procedure TFRVentas.dblcCiaExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCia.SetFocus;
   End;
End;

Procedure TFRVentas.dblcTDiarioExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;
   edtTDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDiarDES', 'TDiarID', dblcTDiario.Text);
   If length(edtTDiario.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiario.SetFocus;
      Exit;
   End;
   If DMCXC.RecuperaDatos('CXC301', 'COUNT(*) REGISTROS', 'TDIARID = ''' + TRIM(dblcTDiario.Text) + '''') Then
      If DMCXC.cdsqry2.FieldByName('REGISTROS').AsInteger = 0 Then
      Begin
         ShowMessage('El Diario que ha ingresado no tiene Movimientos');
         dblcTDiario.SetFocus;
         Exit;
      End;
End;

Procedure TFRVentas.dbeAnoMMExit(Sender: TObject);
Begin
   If bbtnBorra.Focused Then Exit;

   If length(TRIM(dbeAnoMM.Text)) = 0 Then
   Begin
      ShowMessage('Falta Ingresar Periodo');
      dbeAnoMM.SetFocus;
      Exit
   End;

   If length(TRIM(dbeAnoMM.Text)) <> 6 Then
   Begin
      ShowMessage('Periodo No Valido');
      dbeAnoMM.SetFocus;
      Exit
   End;

   If chqTodos.checked Then
   Begin
      xFiltroP1 := 'CXC301.CIAID    = ''' + dblcCia.Text + ''' '
         + ' and CXC301.TDIARID  ' + sTDiarios
         + ' and CXC301.CCANOMES = ''' + dbeAnoMM.Text + ''' ';
   End
   Else
   Begin
      xFiltroP1 := 'CXC301.CIAID    = ''' + dblcCia.Text + ''' '
         + ' and CXC301.TDIARID  = ''' + dblcTDiario.Text + ''' '
         + ' and CXC301.CCANOMES = ''' + dbeAnoMM.Text + ''' ';
   End;

   If DMCXC.RecuperaDatos('CXC301', 'COUNT(*) REGISTROS', 'CCANOMES = ''' + TRIM(dbeAnoMM.Text) + '''') Then
      If DMCXC.cdsqry2.FieldByName('REGISTROS').AsInteger = 0 Then
      Begin
         ShowMessage('El Periodo que ha ingresado no tiene Movimientos');
         dbeAnoMM.SetFocus;
         Exit
      End;

   pnlDatos1.Enabled := False;
   pnlDatos2.Enabled := True;
   rgOrden.SetFocus;
   rgOrden.ItemIndex := 0;
End;

Procedure TFRVentas.rgOrdenClick(Sender: TObject);
Begin
   If edtCia.Text = '' Then Raise exception.Create('Compañia no válida');
   If Not chqTodos.checked Then
      If edtTDiario.Text = '' Then Raise exception.Create('Diario no válido');
   If length(dbeAnoMM.Text) <> 6 Then Raise exception.Create('Periodo no válido');
   xFiltroP2 := '';
   Case rgOrden.ItemIndex Of
//   0 : begin // No. de Registro
//          dblcdProv1.Visible:=False;
//          dblcdProv2.Visible:=False;
//          dbdtpFReg1.Visible:=False;
//          dbdtpFReg2.Visible:=False;
//          dbeNoReg1.Visible:=True;
//          dbeNoReg2.Visible:=True;
//          //Código que halla el primer y el último registro
//          if DMCXC.RecuperaDatos('CXC301','MIN(CCNOREG) MINIMO',xFiltroP1) then
//             dbeNoReg1.Text:=DMCXC.cdsqry2.FieldByName('MINIMO').AsString ;
//          if DMCXC.RecuperaDatos('CXC301','MAX(CCNOREG) MAXIMO',xFiltroP1) then
//             dbeNoReg2.Text:=DMCXC.cdsqry2.FieldByName('MAXIMO').AsString ;
//
//{
//          DMCXC.cdsMovCxC2.IndexFieldNames:='CCNOREG';
//          DMCXC.cdsMovCxC2.First;
//          dbeNoReg1.Text:=DMCXC.cdsMovCxC2CCNOREG.AsString;
//          DMCXC.cdsMovCxC2.Last;
//          dbeNoReg2.Text:=DMCXC.cdsMovCxC2CCNOREG.Value;
//          xFiltroP2:=' and CCNOREG>='+''''+dbeNoReg1.Text+''''
//                    +' and CCNOREG<='+''''+dbeNoReg2.Text+'''';
//}
//       end;
//**

      0:
         Begin // Fecha Reg.
            dblcdProv1.Visible := False;
            dblcdProv2.Visible := False;
            dbeNoReg1.Visible := False;
            dbeNoReg2.Visible := False;
            dbdtpFReg1.Visible := True;
            dbdtpFReg2.Visible := True;
          //Código que halla el primer y el último fecha de registro
            If DMCXC.RecuperaDatos('CXC301', 'MIN(CCFCMPRB) MINIMO', xFiltroP1) Then
               dbdtpFReg1.Date := DMCXC.cdsqry2.FieldByName('MINIMO').AsDateTime;
            If DMCXC.RecuperaDatos('CXC301', 'MAX(CCFCMPRB) MAXIMO', xFiltroP1) Then
               dbdtpFReg2.Date := DMCXC.cdsqry2.FieldByName('MAXIMO').AsDateTime;

{
          DMCXC.cdsMovCxC2.IndexFieldNames:='CCFREG';
          DMCXC.cdsMovCxC2.First;
          dbdtpFReg1.Date:=DMCXC.cdsMovCxC2CCFREG.Value;
          DMCXC.cdsMovCxC2.Last;
          dbdtpFReg2.Date:=DMCXC.cdsMovCxC2CCFREG.Value;
          xFiltroP2:=' and CCFREG>=DATE('+''''+FORMATDATETIME('YYYY-MM-DD',dbdtpFReg1.Date)+''''+')'
                    +' and CCFREG<=DATE('+''''+FORMATDATETIME('YYYY-MM-DD',dbdtpFReg2.Date)+''''+')';
}
         End;
      1:
         Begin // Cliente
            dbeNoReg1.Visible := False;
            dbeNoReg2.Visible := False;
            dbdtpFReg1.Visible := False;
            dbdtpFReg2.Visible := False;
            dblcdProv1.Visible := True;
            dblcdProv2.Visible := True;
          //Código que halla el primer y el último cliente con movimientos
            If DMCXC.RecuperaDatos('CXC301', 'MIN(CLIEID) MINIMO', xFiltroP1) Then
               dblcdProv1.Text := DMCXC.cdsqry2.FieldByName('MINIMO').AsString;
            If DMCXC.RecuperaDatos('CXC301', 'MAX(CLIEID) MAXIMO', xFiltroP1) Then
               dblcdProv2.Text := DMCXC.cdsqry2.FieldByName('MAXIMO').AsString;

{
          DMCXC.cdsMovCxC2.IndexFieldNames:='CLIEID';
          DMCXC.cdsMovCxC2.First;
          dblcdProv1.Text:=DMCXC.cdsMovCxC2CLIEID.Value;
          DMCXC.cdsMovCxC2.Last;
          dblcdProv2.Text:=DMCXC.cdsMovCxC2CLIEID.Value;
          xFiltroP2:=' and CLIEID>='+''''+dblcdProv1.Text+''''
                    +' and CLIEID<='+''''+dblcdProv2.Text+'''';
}
         End;
   End;
End;

Procedure TFRVentas.bbtnOkClick(Sender: TObject);
Var
   flagFech: Boolean;
   xEstado, xWhere, sAbrMon, xSQL, xSQL1: String;
   xMenos: double;
Begin
   flagFech := False;
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');

   If chqTodos.Checked Then
   Begin

      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (((DOC_FREG=''P'' OR DOC_FREG=''F'') ' +
         ' OR (DOCTIPREG=''NC'')) ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';

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
   End
   Else
      If Length(dblcTDiario.Text) = 0 Then Raise exception.Create('Diario no válido');

   If length(dbeAnoMM.Text) <> 6 Then Raise exception.Create('Periodo no válido');
   Case rgOrden.ItemIndex Of
      0:
         Begin // Fecha Reg.
            flagFech := True;
            If (dbdtpFReg1.Date = 0) Or (dbdtpFReg1.Date = 0) Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
      1:
         Begin // Proveedor
            If (dblcdProv1.Text = '') Or (dblcdProv2.Text = '') Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
   End;

   If Not (wFechOk) Then Raise exception.Create('Fecha no coincide con el periodo');

   Case rgOrden.ItemIndex Of
      0: xFiltroP2 := ' AND CXC301.CCFCMPRB >= ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFReg1.Date) + '''' + ')  '
         + ' AND CXC301.CCFCMPRB <= ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFReg2.Date) + '''' + ')';
      1: xFiltroP2 := ' AND CXC301.CLIEID>=' + '''' + dblcdProv1.Text + ''''
         + ' AND CXC301.CLIEID<=' + '''' + dblcdProv2.Text + '''';
   End;

   //DETALLADO

   Case rgEstado.itemindex Of
      0: xEstado := ' AND (CXC301.CCESTADO=''I'') ';
      1: xEstado := ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'') ';
      2: xEstado := ' AND (CXC301.CCESTADO=''I'' OR CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' OR CXC301.CCESTADO=''A'') ';
   End;

   If rgFormato.ItemIndex = 0 Then
   Begin
   // Inicio HPC_201309_CXC
      xSQL := ' Select CXC301.TMONID, 0.0000 TOTEXT, TGE103.TMONABR, CXC301.CCNOREG, CXC301.CCFCMPRB, CXC301.CLIEID, '
         + '        CXC301.CIAID, CXC301.TDIARID, CXC301.TCANJEID, CXC301.CCCANJE, CXC301.CCANOMES, '
         + QuotedStr('          ') + ' DOC_FECHA,'
         + QuotedStr('  ') + '  DOC_DOCID, '
         + QuotedStr('     ') + ' DOC_CCSERIE, '
         + QuotedStr('                    ') + ' DOC_CCNODOC, CXC301.CCFVCMTO, 0 NUMPAGINA, '
         + '        TGE110.TDOC_SUNAT CODSUNAT, '
         + '        CXC301.CLAUXID, '
         + QuotedStr('  ') + ' DOC_ID_SUNAT, '
         + '        CXC301.CCFEMIS, CXC301.DOCID, CXC301.CCSERIE, '
         + '        CXC301.CCNODOC, (CASE WHEN TGE204.TIPPERID = ' + QuotedStr('00') + ' THEN TGE204.CLIEDNI ELSE CXC301.CLIERUC END) CLIERUC, CXC301.CCNOREG, '
         + '        CXC301.CLIEDES, CXC301.CCTCAMPR, CXC301.CCESTADO, TGE110.DOCDES, ';
   // Fin HPC_201309_CXC

      If rgMoneda.ItemIndex = 0 Then //SOLES
      Begin
         If (DMCXC.SRV_D = 'DB2NT') Or
            (DMCXC.SRV_D = 'DB2400') Then
         Begin
            xSQL := xSQL
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN '
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCGRAVAD,0) * (-1)'
               + '  ELSE COALESCE(CCGRAVAD,0) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL(((COALESCE(CCGRAVAD,0)*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL(((COALESCE(CCGRAVAD,0)*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCGRAVAD ,'
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCNOGRAV,0) * (-1)'
               + '  ELSE COALESCE(CCNOGRAV,0) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL(((COALESCE(CCNOGRAV,0)*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL(((COALESCE(CCNOGRAV,0)*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCNOGRAV ,'
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCIGV,0) * (-1)'
               + '  ELSE CCIGV * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL(((COALESCE(CCIGV,0)*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL(((COALESCE(CCIGV,0)*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCIGV ,'
               + 'CASE WHEN CCESTADO <> ''A'' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCMTOLOC,0) * (-1)'
               + '  ELSE COALESCE(CCMTOLOC,0) * (+1) END'
               + ' END CCMTOORI '
               + ' ,CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN '
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0)) * (-1)'
               + '  ELSE (COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0)) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL((((COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0))*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL((((COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0))*COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCGRAVADFLETE ,' //Gravado - flete
               + ' CCFLETE';
         End
         Else
            If (DMCXC.SRV_D = 'ORACLE') Then
            Begin
               xSQL := xSQL
                  + ' case when CCESTADO = ''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCGRAVAD * (-1) '
                  + '                          else CCGRAVAD * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCGRAVAD*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCGRAVAD*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCGRAVAD, '
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCNOGRAV * (-1) '
                  + '                          else CCNOGRAV * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCNOGRAV*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCNOGRAV*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCNOGRAV, '
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CXC_IMP_EXO * (-1) '
                  + '                          else CXC_IMP_EXO * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CXC_IMP_EXO*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CXC_IMP_EXO*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CXC_IMP_EXO ,'
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCIGV * (-1) '
                  + '                          else CCIGV * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCIGV*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCIGV*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           END '
                  + ' end CCIGV ,'
                  + ' case when CCESTADO = ''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonLoc)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCSERVIC * (-1) '
                  + '                          else CCSERVIC * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCSERVIC*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCSERVIC*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCSERVIC ,'
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when TGE110.DOCRESTA = ''S'' '
                  + '                then CCMTOLOC * (-1) '
                  + '                else CCMTOLOC * (+1) '
                  + '           end '
                  + '         + case when CCMTOLOC=0 THEN 0.0001 ELSE 0 END '
                  + ' end CCMTOORI, '
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCEXPORT * (-1) '
                  + '                          else CCEXPORT * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCEXPORT*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCEXPORT*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCEXPORT, '
                  + ' case when CCESTADO = ''A'' THEN 0 ELSE  '
                  + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonLoc) + ' THEN '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (CCGRAVAD-CCFLETE) * (-1) ELSE  (CCGRAVAD-CCFLETE) * (+1) END ELSE  '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC((((CCGRAVAD-CCFLETE)*CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
                  + '  (TRUNC((((CCGRAVAD-CCFLETE)*CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVADFLETE ,'
                  + ' CCFLETE';
            End
      End
      Else
      Begin
         If (DMCXC.SRV_D = 'DB2NT') Or
            (DMCXC.SRV_D = 'DB2400') Then
         Begin
            xSQL := xSQL
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCGRAVAD,0) * (-1)'
               + '  ELSE COALESCE(CCGRAVAD,0) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL(((COALESCE(CCGRAVAD,0)/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL(((COALESCE(CCGRAVAD,0)/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCGRAVAD ,'
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCNOGRAV,0) * (-1)'
               + '  ELSE COALESCE(CCNOGRAV,0) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL(((COALESCE(CCNOGRAV,0)/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL(((COALESCE(CCNOGRAV,0)/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCNOGRAV ,' //CIM 28/05/2001
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCIGV,0) * (-1)'
               + '  ELSE COALESCE(CCIGV,0) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL(((COALESCE(CCIGV,0)/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL(((COALESCE(CCIGV,0)/ COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCIGV ,' //CIM 28/05/2001
               + 'CASE WHEN CCESTADO <> ''A'' THEN  '
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN COALESCE(CCMTOEXT,0) * (-1)'
               + '  ELSE COALESCE(CCMTOEXT,0) * (+1) END'
               + ' END CCMTOORI '
               + ' ,CASE WHEN CCESTADO <> ''A'' THEN  '
               + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0)) * (-1)'
               + '  ELSE (COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0)) * (+1) END'
               + ' ELSE'
               + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (DECIMAL((((COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0))/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (-1)'
               + '  ELSE (DECIMAL((((COALESCE(CCGRAVAD,0)-COALESCE(CCFLETE,0))/COALESCE(CCTCAMPR,0) )*1000 + 5)/1000,15,2)) * (+1) END'
               + ' END END CCGRAVADFLETE ,'
               + ' CCFLETE '
         End
         Else
            If (DMCXC.SRV_D = 'ORACLE') Then
            Begin
            // Inicio HPC_201601_CXC
            // Ajustes a la impresión detallada en Moneda Extranjera
               {
               xSQL := xSQL
                  + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
                  + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCGRAVAD * (-1) ELSE CCGRAVAD * (+1) END ELSE '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCGRAVAD/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
                  + '  (TRUNC(((CCGRAVAD/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVAD, '
                  + ' CASE WHEN CCESTADO <> ''A'' THEN  '
                  + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCNOGRAV * (-1) ELSE  CCNOGRAV * (+1) END ELSE '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN ( TRUNC(((CCNOGRAV/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + ' ELSE (TRUNC(((CCNOGRAV/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
                  + ' END END CCNOGRAV ,'
                  + ' CASE WHEN CCESTADO <> ''A'' THEN  '
                  + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CXC_IMP_EXO * (-1) ELSE  CXC_IMP_EXO * (+1) END ELSE '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN ( TRUNC(((CXC_IMP_EXO/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + ' ELSE (TRUNC(((CXC_IMP_EXO/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
                  + ' END END CXC_IMP_EXO ,'
                  + ' CASE WHEN CCESTADO = ''A'' THEN  0 ELSE  '
                  + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
                  + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCIGV * (-1) ELSE CCIGV * (+1) END ELSE '
                  + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCIGV/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
                  + '  (TRUNC(((CCIGV/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCIGV ,'
                  + ' CASE WHEN CCESTADO = ''A'' THEN  0 ELSE  '
                  + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
                  + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCSERVIC * (-1) ELSE CCSERVIC * (+1) END ELSE '
                  + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCSERVIC/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
                  + '  (TRUNC(((CCSERVIC/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCSERVIC ,'
                  + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCMTOEXT * (-1) ELSE CCMTOEXT * (+1) END '
                  + ' + CASE WHEN CCMTOLOC=0 THEN 0.0001 ELSE 0 END '
                  + ' END  CCMTOORI, '
                  + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
                  + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (CCGRAVAD-CCFLETE) * (-1) ELSE  (CCGRAVAD-CCFLETE) * (+1) END ELSE '
                  + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC((((CCGRAVAD-CCFLETE)/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
                  + '  (TRUNC((((CCGRAVAD-CCFLETE)/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVADFLETE ,'
                  + ' CCFLETE ';
               }
               xSQL := xSQL
                  + ' case when CCESTADO = ''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCGRAVAD * (-1) '
                  + '                          else CCGRAVAD * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCGRAVAD/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCGRAVAD/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCGRAVAD, '
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCNOGRAV * (-1) '
                  + '                          else CCNOGRAV * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCNOGRAV/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCNOGRAV/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCNOGRAV, '
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CXC_IMP_EXO * (-1) '
                  + '                          else CXC_IMP_EXO * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CXC_IMP_EXO/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CXC_IMP_EXO/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CXC_IMP_EXO ,'
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCIGV * (-1) '
                  + '                          else CCIGV * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCIGV/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCIGV/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           END '
                  + ' end CCIGV ,'
                  + ' case when CCESTADO = ''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCSERVIC * (-1) '
                  + '                          else CCSERVIC * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCSERVIC/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCSERVIC/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + ' end CCSERVIC ,'
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when TGE110.DOCRESTA = ''S'' '
                  + '                then CCMTOLOC * (-1) '
                  + '                else CCMTOLOC * (+1) '
                  + '           end '
                  + '         + case when CCMTOLOC=0 THEN 0.0001 ELSE 0 END '
                  + ' end CCMTOORI, '
                  + ' case when CCESTADO=''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then CCEXPORT * (-1) '
                  + '                          else CCEXPORT * (+1) '
                  + '                     end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc(((CCEXPORT/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc(((CCEXPORT/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                     end '
                  + '           end '
                  + '  end CCEXPORT, '
                  + ' case when CCESTADO = ''A'' '
                  + '      then 0 '
                  + '      else case when CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt)
                  + '                then case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (CCGRAVAD-CCFLETE) * (-1) '
                  + '                          else (CCGRAVAD-CCFLETE) * (+1) '
                  + '                      end '
                  + '                else case when TGE110.DOCRESTA = ''S'' '
                  + '                          then (trunc((((CCGRAVAD-CCFLETE)/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
                  + '                          else (trunc((((CCGRAVAD-CCFLETE)/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) '
                  + '                      end '
                  + '            end '
                  + '  end CCGRAVADFLETE, '
                  + ' CCFLETE ';
            // Fin HPC_201601_CXC
            End
      End;
      If (DMCXC.SRV_D = 'DB2NT') Or
         (DMCXC.SRV_D = 'DB2400') Then
      Begin
         xSQL := xSQL + ' FROM CXC301 '
            + ' LEFT OUTER JOIN TGE110 ON (CXC301.DOCID = TGE110.DOCID AND TGE110.DOCMOD=''CXC'')'
            + ' LEFT JOIN TGE103 ON TGE103.TMONID=CXC301.TMONID '
            + ' WHERE '
            + xFiltroP1 + xFiltroP2
            + xEstado;
      End
      Else
         If (DMCXC.SRV_D = 'ORACLE') Then
         Begin
         // Inicio HPC_201401_CXC
            xSQL := xSQL + ' FROM CXC301, TGE110, TGE103, TGE204  '
               + ' WHERE '
               + ' CXC301.CIAID=TGE204.CIAID(+) AND '
               + ' CXC301.CLIEID=TGE204.CLIEID(+) AND '
               + ' CXC301.TMONID=TGE103.TMONID AND '
               + ' (CXC301.DOCID = TGE110.DOCID(+) AND TGE110.DOCMOD=''CXC'') AND '
               + xFiltroP1 + xFiltroP2
               + xEstado;
         // Fin HPC_201401_CXC

         End;
      Case rgOrden.ItemIndex Of
         0: xSQL := xSQL + ' ORDER BY CXC301.DOCID,CXC301.CCFCMPRB,CXC301.CCSERIE,CXC301.CCNODOC';
         1: xSQL := xSQL + ' ORDER BY CXC301.DOCID,CXC301.CLIEID,CXC301.CCSERIE,CXC301.CCNODOC  ';
         2: xSQL := xSQL + ' ORDER BY CXC301.DOCID,CXC301.CCSERIE,CXC301.CCNODOC,CXC301.CCFCMPRB';
      End;

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

      CompletarCamposRV(DMCXC.cdsqry);
      PaginarReporte(DMCXC.cdsqry, '');
      ppdbMovCxC2.DataSource := DMCXC.dsqry;
      ppRChico.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVenta.rtm';
      ppRChico.template.LoadFromFile;

   // llena campos del archivo de impresion
      pplblPeriodo.Caption := 'Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4);
      If flagFech Then
      Begin
      End;
      Case rgMoneda.ItemIndex Of
         0:
            Begin
               xMoneda := DMCXC.wTMonLoc;
               sAbrMon := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', xMoneda);
               ppMON1.Caption := sAbrMon;
               ppMON2.Caption := sAbrMon;
               ppMON3.Caption := sAbrMon;
               ppMON4.Caption := sAbrMon;
            End;
         1:
            Begin
               xMoneda := DMCXC.wTMonExt;
               sAbrMon := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', xMoneda);
               ppMON1.Caption := sAbrMon;
               ppMON2.Caption := sAbrMon;
               ppMON3.Caption := sAbrMon;
               ppMON4.Caption := sAbrMon;

            End;
      End;

      ppd1.Report := ppRChico;
      If cbDisenoRep.Checked Then
         ppd1.ShowModal
      Else
         ppRChico.Print;

      ppRChico.stop;
      ppdbMovCxC2.DataSource := Nil;
      ppd1.Report := Nil;

   End;

   If rgFormato.ItemIndex = 1 Then
   Begin
      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin
         XSQL := 'SELECT CUENTAID, DOCRESTA,  SUM( DEBE ) AS DEBE, SUM( HABER ) AS HABE'
            + ' FROM '
            + ' (SELECT A.CIAID, A.CUENTAID, A.CCDH, B.DOCRESTA, '
            + ' CASE WHEN B.DOCRESTA=''S'' THEN SUM( A.CCMTOLOC)*-1 ELSE SUM( A.CCMTOLOC) END MONTO, '
            + ' CASE WHEN B.DOCRESTA=''S'' THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
            + ' SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END ) END '
            + '   DEBE, '
            + ' CASE WHEN B.DOCRESTA= ''S'' THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
            + 'SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END ) '
            + 'END HABER '
            + ' FROM CXC302 A '
            + ' LEFT JOIN TGE110 B ON A.DOCID=B.DOCID AND B.DOCMOD=''CXC'' '
            + ' LEFT JOIN CXC301   ON A.CIAID=CXC301.CIAID AND A.TDIARID=CXC301.TDIARID AND A.CCNOREG=CXC301.CCNOREG '
            + ' WHERE ' + xFiltroP1 + xFiltroP2
            + xEstado
            + ' AND  A.CIAID=' + '''' + dblcCia.TEXT + '''';
         xSQL := xSQL + ' AND A.CCANOMES=' + '''' + dbeAnoMM.Text + ''''
            + '  '
            + ' GROUP BY A.CIAID, A.CUENTAID, A.CCDH, DOCRESTA ) X '
            + ' GROUP BY CUENTAID, DOCRESTA ';

      End;
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         If rgMoneda.ItemIndex = 0 Then
            XSQL := 'SELECT CUENTAID, DOCRESTA,  SUM( DEBE ) AS DEBE, SUM( HABER ) AS HABE, '
         // Inicio HPC_201601_CXC
         // Cambio de Denominación de Moneda
               + '''EXPRESADO EN ' + Uppercase(DMCXC.wTMonLocDes) + '''  MONEDA , '
               + ''' '+ edtCia.text + ''' CIADES, '
         //      + '''EXPRESADO EN NUEVOS SOLES'' MONEDA, ''' + edtCia.text + ''' CIADES, '
         // Fin HPC_201601_CXC
               + '''Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4) + ''' PERIODO '
               + 'FROM '
               + '( SELECT A.CIAID, A.CUENTAID, A.CCDH, B.DOCRESTA, '
               + 'CASE WHEN B.DOCRESTA=''S'' THEN SUM( A.CCMTOLOC)*-1 ELSE SUM( A.CCMTOLOC) END MONTO, '
               + 'CASE WHEN B.DOCRESTA=''S'' '
               + 'THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END )*-1 '
               + 'ELSE SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END ) END DEBE, '
               + 'CASE WHEN B.DOCRESTA= ''S'' '
               + 'THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END )*-1 '
               + 'ELSE SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END ) END HABER '
               + 'FROM CXC301, CXC302 A, TGE110 B '
               + 'WHERE ' + xFiltroP1 + xFiltroP2 + ' '
               + 'AND ( CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' ) '
               + 'AND (CXC301.CIAID=A.CIAID      AND CXC301.TDIARID=A.TDIARID '
               + 'AND CXC301.CCANOMES=A.CCANOMES AND CXC301.CCNOREG=A.CCNOREG )'
               + 'AND ( CXC301.DOCID=B.DOCID AND B.DOCMOD=''CXC'' ) '
               + 'GROUP BY A.CIAID, A.CUENTAID, A.CCDH, DOCRESTA ) X '
               + ' GROUP BY CUENTAID, DOCRESTA '
         Else
            XSQL := 'SELECT CUENTAID, DOCRESTA,  SUM( DEBE ) AS DEBE, SUM( HABER ) AS HABE, '
         // Inicio HPC_201601_CXC
         // Cambio de Denominación de Moneda
               + '''EXPRESADO EN ' + Uppercase(DMCXC.wTMonLocDes) + '''  MONEDA , '
               + ''' '+ edtCia.text + ''' CIADES, '
         //      + '''EXPRESADO EN DOLARES SOLES'' MONEDA, ''' + edtCia.text + ''' CIADES, '
         // Fin HPC_201601_CXC
               + '''Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4) + ''' PERIODO '
               + 'FROM '
               + '( SELECT A.CIAID, A.CUENTAID, A.CCDH, B.DOCRESTA, '
               + 'CASE WHEN B.DOCRESTA=''S'' THEN SUM( A.CCMTOEXT)*-1 ELSE SUM( A.CCMTOEXT) END MONTO, '
               + 'CASE WHEN B.DOCRESTA=''S'' '
               + 'THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOEXT ELSE 0 END )*-1 '
               + 'ELSE SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOEXT ELSE 0 END ) END DEBE, '
               + 'CASE WHEN B.DOCRESTA= ''S'' '
               + 'THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOEXT ELSE 0 END )*-1 '
               + 'ELSE SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOEXT ELSE 0 END ) END HABER '
               + 'FROM CXC301, CXC302 A, TGE110 B '
               + 'WHERE ' + xFiltroP1 + xFiltroP2 + ' '
               + 'AND ( CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' ) '
               + 'AND (CXC301.CIAID=A.CIAID      AND CXC301.TDIARID=A.TDIARID '
               + 'AND CXC301.CCANOMES=A.CCANOMES AND CXC301.CCNOREG=A.CCNOREG )'
               + 'AND ( CXC301.DOCID=B.DOCID AND B.DOCMOD=''CXC'' ) '
               + 'GROUP BY A.CIAID, A.CUENTAID, A.CCDH, DOCRESTA ) X '
               + ' GROUP BY CUENTAID, DOCRESTA';
      End;
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
      Begin
         Raise Exception.Create('No existen registros que mostrar');
      End
      Else
      Begin
         ppdbResumenCuenta.DataSource := DMCXC.dsqry;
         pprResumenCuenta.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVtaResCta.rtm';
         pprResumenCuenta.template.LoadFromFile;
         ppd1.Report := pprResumenCuenta;
         If cbDisenoRep.Checked Then
            ppd1.ShowModal
         Else
            pprResumenCuenta.Print;

         ppdbResumenCuenta.DataSource := Nil;
         ppd1.Report := Nil;
      End;
   End;

   If rgFormato.ItemIndex = 2 Then
   Begin
      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin
         xSQL := 'SELECT CUENTAID, AUXID AS DCPAUXID, SERIE AS CPSERIE, NODOC AS CPNODOC, '
            + '  max(femis) AS CPFEMIS, docresta, sum(debe) as DEBE, sum(haber) AS HABE '
            + ' from ( '
            + ' SELECT A.CIAID, A.CUENTAID, A.CCDH, '
            + ' CASE WHEN C.CTA_AUX=''S'' THEN A.CLIEID ELSE '' '' END AUXID, '
            + ' CASE WHEN C.CTA_AUX=''S'' THEN A.CCSERIE ELSE '' '' END SERIE, '
            + ' CASE WHEN C.CTA_AUX=''S'' THEN A.CCNODOC ELSE '' '' END NODOC, '
            + ' CASE WHEN C.CTA_AUX=''S'' THEN A.CCFEMIS ELSE A.CCFEMIS END FEMIS, '
            + ' B.DOCRESTA, '
            + ' CASE WHEN B.DOCRESTA= ''S'' THEN SUM( A.CCMTOLOC)*-1 ELSE SUM(A.CCMTOLOC) END MONTO, '
            + ' CASE WHEN B.DOCRESTA= ''S'' THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
            + '   SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END ) END DEBE, '
            + ' CASE WHEN B.DOCRESTA=''S'' THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END )*-1 ELSE '
            + '   SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END ) END HABER '
            + ' FROM CXC301 '
            + ' LEFT JOIN CXC302 A ON CXC301.CIAID=A.CIAID AND CXC301.TDIARID = A.TDIARID AND CXC301.CCNOREG = A.CCNOREG '
            + ' LEFT JOIN TGE110 B ON A.DOCID=B.DOCID '
            + ' LEFT JOIN TGE202 C ON A.CIAID=C.CIAID AND A.CUENTAID=C.CUENTAID '
            + ' WHERE ' + xFiltroP1 + xFiltroP2
            + xEstado
            + ' AND A.CIAID=' + '''' + dblcCia.Text + '''';
         xSQL := xSQL + ' AND A.CCANOMES=' + '''' + dbeAnoMM.Text + ''''
            + ' GROUP BY A.CIAID, A.CUENTAID, A.CCDH, C.CTA_AUX, C.CTA_DOC, '
            + ' A.CLIEID, A.CCSERIE, A.CCNODOC, A.CCFEMIS,  DOCRESTA ) X '
            + ' GROUP BY CUENTAID, AUXID, SERIE, NODOC, DOCRESTA ';
      End;
      If DMCXC.SRV_D = 'ORACLE' Then
      Begin
         If rgMoneda.ItemIndex = 0 Then
            xSQL := 'SELECT CUENTAID, AUXID DCPAUXID, SERIE CPSERIE, NODOC CPNODOC, '
               + 'max(femis) CPFEMIS, docresta, sum(debe) DEBE, sum(haber) HABE, '
               + '''EXPRESADO EN NUEVOS SOLES'' MONEDA, ''' + edtCia.text + ''' CIADES, '
               + '''Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4) + ''' PERIODO '
               + 'From ( '
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
               + 'AND ( CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' ) '
               + 'AND (CXC301.CIAID=A.CIAID AND CXC301.TDIARID = A.TDIARID '
               + 'AND CXC301.CCANOMES= A.CCANOMES AND CXC301.CCNOREG = A.CCNOREG )'
               + 'AND ( CXC301.DOCID=B.DOCID AND B.DOCMOD=''CXC'' ) '
               + 'AND ( A.CIAID=C.CIAID AND A.CUENTAID=C.CUENTAID ) '
               + 'GROUP BY A.CIAID, A.CUENTAID, CCDH, CTA_AUX, CTA_DOC, A.CLIEID, A.CCSERIE, A.CCNODOC, A.CCFEMIS, DOCRESTA ) X '
               + 'GROUP BY CUENTAID, AUXID, SERIE, NODOC, DOCRESTA '
         Else
            xSQL := 'SELECT CUENTAID, AUXID DCPAUXID, SERIE CPSERIE, NODOC CPNODOC, '
               + 'max(femis) CPFEMIS, docresta, sum(debe) DEBE, sum(haber) HABE, '
               + '''EXPRESADO EN DOLARES'' MONEDA, ''' + edtCia.text + ''' CIADES, '
               + '''Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4) + ''' PERIODO '
               + 'From ( '
               + 'SELECT A.CIAID, A.CUENTAID, A.CCDH, '
               + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CLIEID  ELSE '' '' END AUXID, '
               + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CCSERIE ELSE '' '' END SERIE, '
               + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CCNODOC ELSE '' '' END NODOC, '
               + 'CASE WHEN C.CTA_AUX=''S'' THEN A.CCFEMIS ELSE A.CCFEMIS END FEMIS, B.DOCRESTA, '
               + 'CASE WHEN B.DOCRESTA= ''S'' THEN SUM( A.CCMTOEXT)*-1 ELSE SUM(A.CCMTOEXT) END MONTO, '
               + 'CASE WHEN B.DOCRESTA= ''S'' THEN SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOEXT ELSE 0 END )*-1 ELSE '
               + 'SUM( CASE WHEN A.CCDH=''D'' THEN A.CCMTOEXT ELSE 0 END ) END DEBE, '
               + 'CASE WHEN B.DOCRESTA=''S'' THEN SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOEXT ELSE 0 END )*-1 ELSE '
               + 'SUM( CASE WHEN A.CCDH=''H'' THEN A.CCMTOEXT ELSE 0 END ) END HABER '
               + 'FROM CXC301, CXC302 A, TGE110 B, TGE202 C '
               + 'WHERE ' + xFiltroP1 + xFiltroP2
               + 'AND ( CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' ) '
               + 'AND (CXC301.CIAID=A.CIAID AND CXC301.TDIARID = A.TDIARID '
               + 'AND CXC301.CCANOMES= A.CCANOMES AND CXC301.CCNOREG = A.CCNOREG )'
               + 'AND ( CXC301.DOCID=B.DOCID AND B.DOCMOD=''CXC'' ) '
               + 'AND ( A.CIAID=C.CIAID AND A.CUENTAID=C.CUENTAID ) '
               + 'GROUP BY A.CIAID, A.CUENTAID, CCDH, CTA_AUX, CTA_DOC, A.CLIEID, A.CCSERIE, A.CCNODOC, A.CCFEMIS, DOCRESTA ) X '
               + 'GROUP BY CUENTAID, AUXID, SERIE, NODOC, DOCRESTA';
      End; // PARA ORACLE

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
      Begin
         Raise Exception.Create('No existen registros que mostrar');
      End
      Else
      Begin
         ppdbResumenCtbl.DataSource := DMCXC.dsqry;
         pprResumenCtbl.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVtaResCtbl.rtm';
         pprResumenCtbl.template.LoadFromFile;
         ppd1.Report := pprResumenCtbl;
         If cbDisenoRep.Checked Then
            ppd1.ShowModal
         Else
            pprResumenCtbl.Print;

         ppdbResumenCtbl.DataSource := Nil;
         ppd1.Report := Nil;
      End;
   End;
End;

Procedure TFRVentas.bbtnBorraClick(Sender: TObject);
Begin
   IniciaDatos;
   dblcCia.Setfocus;
End;

Procedure TFRVentas.IniciaDatos;
Begin
   pnlDatos1.Enabled := True;
   pnlDatos2.Enabled := False;
   RecuperarCiaUnica(dblcCia, edtCia);

   dblcTDiario.Text := '';
   edtTDiario.Text := '';
   rgOrden.ItemIndex := -1;
   dbeNoReg1.Text := '';
   dbeNoReg2.Text := '';
   dbdtpFReg1.Date := 0;
   dbdtpFReg2.Date := 0;
   dblcdProv1.Text := '';
   dblcdProv2.Text := '';
   rgMoneda.ItemIndex := 0;
   sTDiarios := '';

// Inicio HPC_201601_CXC
// Se inhabilita check de TODOS los Tipos de Diario para quer necesariamente escoja uno
   chqTodos.Checked := False;
   chqTodos.Visible := False;
   chqTodosClick(Self);
// Fin HPC_201601_CXC
End;

Procedure TFRVentas.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFRVentas.varEstadoCalc(Sender: TObject; Var Value: Variant);
Begin
   If DMCXC.CDSQRY.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Value := 'A       N       U       L       A       D       O';
      varEstado.Visible := true;
   End
   Else
      varEstado.Visible := false;
End;

Procedure TFRVentas.ppRChicoBeforePrint(Sender: TObject);
Begin
   pplblCia.Caption := 'Compañia : ' + edtCia.Text;
End;

Procedure TFRVentas.ppVariable1Calc(Sender: TObject; Var Value: Variant);
Begin
   value := DMCXC.cdsqry.RecordCount;
End;

Procedure TFRVentas.ppRChicoPreviewFormCreate(Sender: TObject);
Begin
   ppRChico.PreviewForm.ClientHeight := 550;
   ppRChico.PreviewForm.ClientWidth := 700;
   TppViewer(ppRChico.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
End;

Procedure TFRVentas.chqTodosClick(Sender: TObject);
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
         ' (((DOC_FREG=''P'' OR DOC_FREG=''F'') ' +
         ' OR (DOCTIPREG=''NC'')) ' +
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

Procedure TFRVentas.chqTodosExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If sTDiarios = '' Then
   Begin
      If chqTodos.Checked Then
      Begin
         dblcTDiario.Enabled := False;
      End
      Else
      Begin
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
            ' (((DOC_FREG=''P'' OR DOC_FREG=''F'') ' +
            ' OR (DOCTIPREG=''NC'')) ' +
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

Procedure TFRVentas.FormShow(Sender: TObject);
Begin
 // calcula valor de periodo aaaamm tomando como base la fecha del sistema
   wFechOk := True;
   DecodeDate(date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   dbeAnoMM.Text := IntToStr(Year) + wMes;
   If DMCXC.cdsTDiario.RecordCount = 0 Then
   Begin
      ShowMessage('Tipos de Diario no registra definición de Provisiones');
      exit;
   End;

   IniciaDatos;
End;

Procedure TFRVentas.FormCreate(Sender: TObject);
Begin
   CargaDataSources;
// Inicio HPC_201401_CXC
//   if DMCXC.wAdmin='S' then
//      cbDisenoRep.Visible:=True
//   else
   cbDisenoRep.Visible := False;
// Fin HPC_201401_CXC
End;

Procedure TFRVentas.CargaDataSources;
Begin
   dblcCia.LookupTable := DMCXC.cdsCia;
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
End;

Procedure TFRVentas.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   Action := caFree;
End;

Procedure TFRVentas.ppFooterBand1BeforePrint(Sender: TObject);
Begin
   If xImpTotalxPag Then
   Begin
      ppDBCalc10.visible := True;
      ppDBCalc11.visible := True;
      ppDBCalc12.visible := True;
      ppDBCalc13.visible := True;
      ppLine11.visible := True;
   End
   Else
   Begin
      ppDBCalc10.visible := False;
      ppDBCalc11.visible := False;
      ppDBCalc12.visible := False;
      ppDBCalc13.visible := False;
      ppLine11.visible := False;
   End;
End;

Procedure TFRVentas.ppHeaderBand3BeforePrint(Sender: TObject);
Begin
   pplFec.Visible := False;
   ppsvFec.Visible := False;
   If (cbFecRep.Checked) And (dtpFecRep.Date > 0) Then
   Begin
      pplFec.Text := Datetostr(dtpFecRep.Date);
      pplFec.Visible := True;
   End
   Else
      ppsvFec.Visible := True;

   xImpTotalxPag := True;
   ppDBCalc10.value := 0;
   ppDBCalc11.value := 0;
   ppDBCalc12.value := 0;
   ppDBCalc13.value := 0;

   If ppvGravado.Text = '' Then
      ppDBCalc10.value := 0.00
   Else
      ppDBCalc10.value := StringReplace(ppvGravado.Text, ',', '', [rfReplaceAll]);

   If ppvNGravado.Text = '' Then
      ppDBCalc11.value := 0.00
   Else
      ppDBCalc11.value := StringReplace(ppvNGravado.Text, ',', '', [rfReplaceAll]);

   If ppvIGV.Text = '' Then
      ppDBCalc12.value := 0.00
   Else
      ppDBCalc12.value := StringReplace(ppvIGV.Text, ',', '', [rfReplaceAll]);

   If ppvTotal.Text = '' Then
      ppDBCalc13.value := 0.00
   Else
      ppDBCalc13.value := StringReplace(ppvTotal.Text, ',', '', [rfReplaceAll]);

   ppDBCalc10.visible := True;
   ppDBCalc11.visible := True;
   ppDBCalc12.visible := True;
   ppDBCalc13.visible := True;
   ppLine11.Visible := True;
End;

Procedure TFRVentas.ppGroupFooterBand2AfterPrint(Sender: TObject);
Begin
   xImpTotalxPag := False;
End;

Procedure TFRVentas.BitBtn1Click(Sender: TObject);
Var
   flagFech: Boolean;
   xEstado, xWhere, sAbrMon, xSQL, xSQL1: String;
   xMenos: double;
   xBlanco, xCampo, xLinea: String;
   i, xSpace, xTem: Integer;
   bmk2: TBookMark;
Begin
   flagFech := False;
   If Length(edtCia.Text) = 0 Then Raise exception.Create('Compañia no válida');

   If chqTodos.Checked Then
   Begin
      xSQL := ' SELECT CXC301.TDIARID  DIARIO ' +
         ' FROM CXC301 ,TGE110   ' +
         ' WHERE CXC301.DOCID=TGE110.DOCID AND ' +
         ' (((DOC_FREG=''P'' OR DOC_FREG=''F'') ' +
         ' OR (DOCTIPREG=''NC'')) ' +
         ' AND DOCMOD=''CXC'')    ' +
         ' AND CIAID=' + Quotedstr(dblcCia.text) + ' AND ' + DMCXC.wReplacCeros + '(CXC301.TDIARID,''XX'')<>''XX''  ' +
         ' GROUP BY CXC301.TDIARID ';
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
   End
   Else
      If Length(dblcTDiario.Text) = 0 Then Raise exception.Create('Diario no válido');

   If length(dbeAnoMM.Text) <> 6 Then Raise exception.Create('Periodo no válido');

   Case rgOrden.ItemIndex Of
      0:
         Begin // Fecha Reg.
            flagFech := True;
            If (dbdtpFReg1.Date = 0) Or (dbdtpFReg2.Date = 0) Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
      1:
         Begin // Proveedor
            If (dblcdProv1.Text = '') Or (dblcdProv2.Text = '') Then Raise exception.Create('Ingrese rango inferior y superior');
         End;
   End;

   If Not (wFechOk) Then Raise exception.Create('Fecha no coincide con el periodo');

   Case rgOrden.ItemIndex Of
      0: xFiltroP2 := ' AND CXC301.CCFCMPRB >= ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFReg1.Date) + '''' + ')  '
         + ' AND CXC301.CCFCMPRB <= ' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbdtpFReg2.Date) + '''' + ')';
      1: xFiltroP2 := ' AND CXC301.CLIEID>=' + '''' + dblcdProv1.Text + ''''
         + ' AND CXC301.CLIEID<=' + '''' + dblcdProv2.Text + '''';
   End;

// DETALLADO
   Case rgEstado.itemindex Of
      0: xEstado := ' AND (CXC301.CCESTADO=''I'') ';
      1: xEstado := ' AND (CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'') ';
      2: xEstado := ' AND (CXC301.CCESTADO=''I'' OR CXC301.CCESTADO=''P'' OR CXC301.CCESTADO=''C'' OR CXC301.CCESTADO=''A'') ';
   End;

   xSQL := 'SELECT CXC301.CIAID, CXC301.CCANOMES, CXC301.TMONID, 0.0000 TOTEXT, TGE103.TMONABR,CXC301.CCNOREG , '
      + 'CXC301.CCFCMPRB , CXC301.CLIEID , CXC301.CCFEMIS, CXC301.DOCID , CXC301.CCSERIE , '
      + 'CXC301.CCNODOC ,CXC301.CLIERUC , CXC301.CCNOREG, CXC301.CLIERUC, CXC301.TDIARID, '
      + 'CXC301.CLIEDES , CXC301.CCTCAMPR , CXC301.CCESTADO, TGE110.DOCDES, ';

   If rgMoneda.ItemIndex = 0 Then //SOLES
   Begin
      xSQL := xSQL
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
         + ' CCFLETE';
   End
   Else
   Begin
      xSQL := xSQL
         + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
         + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCGRAVAD * (-1) ELSE CCGRAVAD * (+1) END ELSE '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCGRAVAD/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
         + '  (TRUNC(((CCGRAVAD/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVAD, '
         + ' CASE WHEN CCESTADO <> ''A'' THEN  '
         + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCNOGRAV * (-1) ELSE  CCNOGRAV * (+1) END ELSE '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN ( TRUNC(((CCNOGRAV/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) '
         + ' ELSE (TRUNC(((CCNOGRAV/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END '
         + ' END END CCNOGRAV ,'
         + ' CASE WHEN CCESTADO = ''A'' THEN  0 ELSE  '
         + ' CASE WHEN CXC301.TMONID = ' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
         + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCIGV * (-1) ELSE CCIGV * (+1) END ELSE '
         + '  CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC(((CCIGV/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
         + '  (TRUNC(((CCIGV/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCIGV ,'
         + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN CCMTOEXT * (-1) ELSE CCMTOEXT * (+1) END END  CCMTOORI, '
         + ' CASE WHEN CCESTADO = ''A'' THEN 0 ELSE  '
         + ' CASE WHEN CXC301.TMONID =' + QuotedStr(DMCXC.wTMonExt) + ' THEN '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (CCGRAVAD-CCFLETE) * (-1) ELSE  (CCGRAVAD-CCFLETE) * (+1) END ELSE '
         + ' CASE WHEN TGE110.DOCRESTA = ''S'' THEN (TRUNC((((CCGRAVAD-CCFLETE)/CCTCAMPR )*1000 + 5)/1000,2)) * (-1) ELSE '
         + '  (TRUNC((((CCGRAVAD-CCFLETE)/CCTCAMPR )*1000 + 5)/1000,2)) * (+1) END END END CCGRAVADFLETE ,'
         + ' CCFLETE ';
   End;

   xSQL := xSQL + ' FROM CXC301,TGE110,TGE103  '
      + ' WHERE '
      + ' CXC301.TMONID=TGE103.TMONID AND '
      + ' (CXC301.DOCID = TGE110.DOCID(+) AND TGE110.DOCMOD=''CXC'') AND '
      + xFiltroP1 + xFiltroP2
      + xEstado;

   xSQL := xSQL + ' ORDER BY CXC301.DOCID, CXC301.CCSERIE, CXC301.CCNODOC';

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

// llena campos del archivo de impresion
   pplblPeriodo.Caption := 'Periodo ' + DMCXC.DisplayDescrip('TGE181', 'MESDESL', 'MESIDR', copy(dbeAnoMM.Text, 5, 2)) + ' - ' + copy(dbeAnoMM.Text, 1, 4);

   Case rgMoneda.ItemIndex Of
      0:
         Begin
            xMoneda := DMCXC.wTMonLoc;
            sAbrMon := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', xMoneda);
         End;
      1:
         Begin
            xMoneda := DMCXC.wTMonExt;
            sAbrMon := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', xMoneda);
         End;
   End;

   If Not sdGraba.Execute Then Exit;

   Screen.Cursor := crHourGlass;

   pbExp.Max := 100;
   pbExp.Position := 5;

   xBlanco := '                                                                      ';
   xSpace := 0;

   scFile.Lines.Clear;

   DMCXC.cdsQry.DisableControls;

   bmk2 := DMCXC.cdsQry.GetBookmark;

   DMCXC.cdsQry.Last;

   xTem := Trunc(DMCXC.cdsQry.RecordCount / 20) * 2;

   pbExp.Max := DMCXC.cdsQry.RecordCount + (xTem * 3);

   pbExp.Position := (xTem * 2);

   pbExp.Position := xTem;

   pbExp.Position := pbExp.Position + xTem;

   xLinea := 'CIAID;PERIODO;ORIGEN;REGISTRO;FECHA;DOC;SERIE;NUMERO;CLIENTE;NOMBRE;RUC;MONEDA;GRAVADO;NO GRAVADO;I.G.V.;TOTAL';
   scFile.Lines.Add(xLinea);

   DMCXC.cdsQry.First;
   While Not DMCXC.cdsQry.Eof Do
   Begin
      xLinea := '';
      xLinea := xLinea + RetornaDatos('CIAID') + ';';
      xLinea := xLinea + RetornaDatos('CCANOMES') + ';';
      xLinea := xLinea + RetornaDatos('TDIARID') + ';';
      xLinea := xLinea + RetornaDatos('CCNOREG') + ';';

      xLinea := xLinea + RetornaDatos('CCFEMIS') + ';';
      xLinea := xLinea + RetornaDatos('DOCID') + ';';
      xLinea := xLinea + RetornaDatos('CCSERIE') + ';';
      xLinea := xLinea + RetornaDatos('CCNODOC') + ';';

      xLinea := xLinea + RetornaDatos('CLIEID') + ';';
      xLinea := xLinea + RetornaDatos('CLIEDES') + ';';
      xLinea := xLinea + RetornaDatos('CLIERUC') + ';';

      xLinea := xLinea + RetornaDatos('TMONID') + ';';

      xLinea := xLinea + RetornaDatos('CCGRAVAD') + ';';
      xLinea := xLinea + RetornaDatos('CCNOGRAV') + ';';
      xLinea := xLinea + RetornaDatos('CCIGV') + ';';
      xLinea := xLinea + RetornaDatos('CCMTOORI') + ';';
      pbExp.Position := pbExp.Position + 1;
      scFile.Lines.Add(xLinea);
      DMCXC.cdsQry.Next;
   End;

   scFile.Lines.SaveToFile(sdGraba.FileName);

   DMCXC.cdsQry.GotoBookmark(bmk2);
   DMCXC.cdsQry.FreeBookmark(bmk2);

   DMCXC.cdsQry.EnableControls;

   pbExp.Position := pbExp.Position + 1;

   DMCXC.cdsQry.IndexFieldNames := '';

   Screen.Cursor := crDefault;

   ShowMessage('Archivo Grabado');

   pbExp.Position := 0;

End;

Function TFRVentas.RetornaDatos(cCampo: String): String;
Var
   xBlanco: String;
   xSpace: Integer;
Begin
   xBlanco := '                                                                      ';
   If DMCXC.cdsQry.FieldByName(cCampo).Size > 0 Then
      xSpace := DMCXC.cdsQry.FieldByName(cCampo).Size - Length(DMCXC.cdsQry.FieldByName(cCampo).AsString)
   Else
      xSpace := 15 - Length(DMCXC.cdsQry.FieldByName(cCampo).AsString);

   Result := DMCXC.cdsQry.FieldByName(cCampo).AsString + Copy(xBlanco, 1, xSpace);
End;

Procedure TFRVentas.PaginarReporte(xxCds: TwwClientDataSet; xxTipoRep: String);
Var
   xRegxPag: Integer;
   xNumFila, xNumPagina: Integer;
   xDocId, xDocId_Ant: String;
Begin
   xRegxPag := 40;
   xNumFila := 0;
   xNumPagina := 1;
   If xxCds.recordcount = 0 Then
      exit
   Else
      xxCds.first;
   xDocId_Ant := xxCds.FieldByName('DOCID').asString;
   While Not xxCds.Eof Do
   Begin
      xxCds.Edit;
      xDocId := xxCds.FieldByName('DOCID').asString;
      If (xNumFila >= xRegxPag) Or (xDocId_Ant <> xDocId) Then
      Begin
         xNumPagina := xNumPagina + 1;
         xNumFila := 0
      End;

      xxCds.FieldByName('NUMPAGINA').asInteger := xNumPagina;
      xDocId_Ant := xDocId;
      xNumFila := xNumFila + 1;
      xxCds.Next;
   End;
End;

Procedure TFRVentas.CompletarCamposRV(xxCds: TwwClientDataSet);
Var
   xSql: String;
Begin
   If xxCds.recordcount = 0 Then
      exit
   Else
      xxCds.first;
   While Not xxCds.Eof Do
   Begin
      //Documentos Sunat
      If xxCds.FieldByName('DOCID').asString = '24' Then
      Begin
         xxCds.Edit;
         If length(xxCds.FieldByName('CLIERUC').asString) > 0 Then
         Begin
         // Inicio HPC_201301_CXC
            xxCds.FieldByName('DOC_ID_SUNAT').asString := '06';
            xSQL := 'Select nvl(TDOC_ID_SUNAT,''06'') TDOC_ID_SUNAT '
               + '  from TGE204 '
               + ' where CLIEID = ' + QuotedStr(xxCds.FieldByName('CLIEID').asString)
               + '   and CLAUXID = ' + QuotedStr(xxCds.FieldByName('CLAUXID').asString);
            Filtracds(DMCXC.cdsQry14, xSQL);
            If (DMCXC.cdsQry14.recordcount > 0) And (length(trim(DMCXC.cdsQry14.FieldByName('TDOC_ID_SUNAT').asString)) > 0) Then
               xxCds.FieldByName('DOC_ID_SUNAT').asString := DMCXC.cdsQry14.FieldByName('TDOC_ID_SUNAT').asString;
         // Fin HPC_201301_CXC
         End;
      End;
      If (xxCds.FieldByName('DOCID').asString = '27')
         Or (xxCds.FieldByName('DOCID').asString = '25')
         Or (xxCds.FieldByName('DOCID').asString = '26') Then
      Begin
         xxCds.Edit;
         xSql := 'Select TDOC_ID_SUNAT '
            + '  from TGE204 '
            + ' where CLIEID = ' + QuotedStr(xxCds.FieldByName('CLIEID').asString)
            + '   and CLAUXID = ' + QuotedStr(xxCds.FieldByName('CLAUXID').asString);
         Filtracds(DMCXC.cdsQry14, xSQL);
         If DMCXC.cdsQry14.recordcount > 0 Then
         Begin
            xxCds.FieldByName('DOC_ID_SUNAT').asString := DMCXC.cdsQry14.FieldByName('TDOC_ID_SUNAT').asString;
         End;
         //para completar los que no tienen tipo de documento sunat
         If (length(xxCds.FieldByName('DOC_ID_SUNAT').asString) = 0) And (length(xxCds.FieldByName('CLIERUC').asString) > 0) Then
         Begin
            xxCds.FieldByName('DOC_ID_SUNAT').asString := '01';
         End;
      // Inicio HPC_201301_CXC
//         If length(xxCds.FieldByName('CLIERUC').asString) = 0 Then
//         Begin
//            xxCds.FieldByName('DOC_ID_SUNAT').asString := '';
//         End;
      // Fin HPC_201301_CXC
      End;

      If (xxCds.FieldByName('DOCID').asString = '27') Or (xxCds.FieldByName('DOCID').asString = '26') Then
      Begin
         xSql := ' SELECT to_char(FACT.CCFEMIS,' + QuotedStr('dd/mm/yyyy') + ') CCFEMIS ,TGE110.TDOC_SUNAT ,CXC304.CCSERIE, CXC304.CCNODOC '
            + ' FROM CXC304 , CXC301 FACT, TGE110 '
            + ' WHERE CXC304.CIAID   = ' + QuotedStr(xxCds.FieldByName('CIAID').asString)
            + ' AND CXC304.TDIARID   = ' + QuotedStr(xxCds.FieldByName('TDIARID').asString)
            + ' AND CXC304.TCANJEID  = ' + QuotedStr(xxCds.FieldByName('TCANJEID').asString)
            + ' AND CXC304.CCCANJE   = ' + QuotedStr(xxCds.FieldByName('CCCANJE').asString)
            + ' AND CXC304.DOCID     = TGE110.DOCID '
            + ' AND TGE110.DOCMOD    = ' + QuotedStr('CXC')
            + ' AND CXC304.CIAID     = FACT.CIAID '
            + ' AND CXC304.TDIARID   = FACT.TDIARID '
            + ' AND CXC304.CCANOMM   = FACT.CCANOMES '
            + ' AND CXC304.CCNOREG   = FACT.CCNOREG '
            + ' AND CXC304.DOCID     = FACT.DOCID '
            + ' AND CXC304.CCSERIE   = FACT.CCSERIE '
            + ' AND CXC304.CCNODOC   = FACT.CCNODOC ';
         Filtracds(DMCXC.cdsQry15, xSQL);
         If DMCXC.cdsQry15.recordcount > 0 Then
         Begin
            xxCds.Edit;
            xxCds.FieldByName('DOC_FECHA').asString := DMCXC.cdsQry15.FieldByName('CCFEMIS').asString;
            xxCds.FieldByName('DOC_DOCID').asString := DMCXC.cdsQry15.FieldByName('TDOC_SUNAT').asString;
            xxCds.FieldByName('DOC_CCSERIE').asString := DMCXC.cdsQry15.FieldByName('CCSERIE').asString;
            xxCds.FieldByName('DOC_CCNODOC').asString := DMCXC.cdsQry15.FieldByName('CCNODOC').asString;
         End;
      End;
      xxCds.Next;
   End;
End;

Procedure TFRVentas.cbFecRepClick(Sender: TObject);
Begin
   If cbFecRep.Checked Then
      gbFecRep.Enabled := True
   Else
      gbFecRep.Enabled := False;
End;

Procedure TFRVentas.dblcCiaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFRVentas.sbDisenoRepClick(Sender: TObject);
Begin
   cbDisenoRep.Checked := Not cbDisenoRep.Checked;
End;

Procedure TFRVentas.bbtnValidaClick(Sender: TObject);
Begin
// Inicio HPC_201401_CXC
//        29/03/2014  Botón de Validación de Registros FAC vs CXC vs CNT
   If (dblcCia.text = '') Or
      (dblcTDiario.text = '') Or
      (dbeAnoMM.text = '') Then
   Begin
      ShowMessage('Debe seleccionar la Compañía, El Tipo de Diario y el Periodo');
      Exit;
   End;
   Try
      FRVentasValidacion := TFRVentasValidacion.Create(Self); // CXC330.pas
      FRVentasValidacion.xsCia := dblcCia.text;
      FRVentasValidacion.xsCiaDes := edtCia.text;
      FRVentasValidacion.xsTipoDiario := dblcTDiario.text;
      FRVentasValidacion.xsTipoDiarioDes := edtTDiario.text;
      FRVentasValidacion.xsPeriodo := dbeAnoMM.text;
      FRVentasValidacion.ShowModal;
   Finally
      FRVentasValidacion.Free;
   End;
// Fin HPC_201401_CXC
End;
// Inicio HPC_201405_CXC
procedure TFRVentas.btnImprime1Click(Sender: TObject);
Var
   xSQL: String;
   x10: Integer;
Begin

   xSQL := ' select CIAID, TDIARID, CCNOREG CPNOREG,'''+ dbeAnoMM.text +''' CPANOMES,CCESTADO CPESTADO,T.ESTDOCDES,CC_CONTA CP_CONTA, sum(MONTO301) MONTO301, sum(DEBE_CXC) DEBE302, sum(HABER_CXC) HABER302 '
         + '   from ( '
         + '       select CIAID, TDIARID, CCNOREG,CCESTADO,CC_CONTA, CCMTOLOC MONTO301, 0.00 DEBE_CXC, 0.00 HABER_CXC '
         + '         from CXC301 '
         + '        where CIAID='''+ dblcCia.text +''' and TDIARID='''+ dblcTDiario.text +''' and CCANOMES='''+ dbeAnoMM.text +''' and CCESTADO not in (''A'',''I'') '
         + '     union all '
         + '       select a.CIAID, a.TDIARID, a.CCNOREG,b.CCESTADO,b.CC_CONTA , 0.00 MONTO301, '
         + '               sum(case when a.CCDH=''D'' then a.CCMTOLOC else 0.00 end) DEBE_CXC, '
         + '               sum(case when a.CCDH=''H'' then a.CCMTOLOC else 0.00 end) HABER_CXC '
         + '         from CXC302 a inner join cxc301 b on a.ciaid = b.ciaid and a.tdiarid = b.tdiarid '
         + '              and a.ccnoreg = b.ccnoreg and a.ccanomes = b.ccanomes '
         + '        where a.CIAID='''+ dblcCia.text +''' and a.TDIARID='''+ dblcTDiario.text +''' and a.CCANOMES='''+ dbeAnoMM.text +''' and b.CCESTADO not in (''A'',''I'') '
         + '        group by a.CIAID, a.TDIARID, a.CCNOREG,b.CCESTADO,b.CC_CONTA ) INNER JOIN TGE115 T ON CCESTADO = T.ESTDOCID '
         + ' group by CIAID, TDIARID, CCNOREG,CCESTADO,T.ESTDOCDES,CC_CONTA '
         + '   having sum(MONTO301)<>sum(DEBE_CXC) or sum(MONTO301)<>sum(HABER_CXC) or sum(DEBE_CXC)<>sum(HABER_CXC) '
         + ' order by CIAID, TDIARID, CCNOREG ';
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(xSQL);
   DMCXC.cdsQry2.Open;

   pprV.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CompCXC301vsCXC302.rtm';
   pprV.Template.LoadFromFile;
   ppdbV.DataSource := DMCXC.dsQry2;

   Screen.Cursor := crDefault;
   If cbDisenoRep.Checked Then
   Begin
      ppdV.Report := pprV;
      ppdV.ShowModal;
   End
   Else
   Begin
      pprV.Print;
      pprV.Stop;
      ppdbV.DataSource := Nil;
      x10 := self.componentCount - 1;
      While x10 > 0 Do
      Begin
         If self.components[x10].classname = 'TppGroup' Then
         Begin
            self.components[x10].free;
         End;
         x10 := x10 - 1;
      End;
   End;
end;
// Fin HPC_201405_CXC
// Inicio HPC_201405_CXC
procedure TFRVentas.btnImprime2Click(Sender: TObject);
Var
   xSQL: String;
   x10: Integer;
Begin

   xSQL := '   select CIAID, TDIARID, CNTCOMPROB,'''+ dbeAnoMM.text +''' CPANOMES,CC_CONTA CP_CONTA,T.ESTDOCDES, sum(DEBE) DEBE, sum(HABER) HABER, '
         + '          sum(DEBE_CXC) DEBE_CXP, sum(HABER_CXC) HABER_CXP '
         + '     from ( '
         + '           select F.CIAID, F.TDIARID, F.CNTCOMPROB,G.CCESTADO,G.CC_CONTA, sum(CNTDEBEMN) DEBE, sum(CNTHABEMN) HABER, '
         + '                  0.00 DEBE_CXC, 0.00 HABER_CXC '
         + '             from CNT301 F INNER JOIN CXC301 G ON F.CIAID = G.CIAID AND F.TDIARID = G.TDIARID AND F.CNTANOMM = G.CCANOMES AND F.CNTCOMPROB = G.CCNOREG '
         + '            where F.CIAID='''+ dblcCia.text +''' and F.TDIARID='''+ dblcTDiario.text +''' and F.CNTANOMM='''+ dbeAnoMM.text +''' and F.CNTFAUTOM is null and G.CCESTADO not in (''A'',''I'',''E'')  '
         + '         group by F.CIAID, F.TDIARID, F.CNTCOMPROB,G.CCESTADO,G.CC_CONTA '
         + '        union all '
         + '           select D.CIAID, D.TDIARID, D.CCNOREG CNTCOMPROB,C.CCESTADO,C.CC_CONTA, 0.00 DEBE, 0.00 HABER, '
         + '                  sum(case when D.CCDH=''D'' then D.CCMTOLOC else 0.00 end) DEBE_CXC, '
         + '                  sum(case when D.CCDH=''H'' then D.CCMTOLOC else 0.00 end) HABER_CXC '
         + '             from CXC302 D inner join CXC301 C ON D.CIAID = C.CIAID AND D.TDIARID = C.TDIARID AND D.CCANOMES = C.CCANOMES AND D.CCNOREG = C.CCNOREG '
         + '            where D.CIAID='''+ dblcCia.text +''' and D.TDIARID='''+ dblcTDiario.text +''' and D.CCANOMES='''+ dbeAnoMM.text +''' and C.CCESTADO not in (''A'',''I'',''E'') '
         + '         group by D.CIAID, D.TDIARID, D.CCNOREG,C.CCESTADO,C.CC_CONTA )  INNER JOIN TGE115 T ON CCESTADO = T.ESTDOCID '
         + ' group by CIAID, TDIARID, CNTCOMPROB,CCESTADO,CC_CONTA,T.ESTDOCDES '
         + '   having sum(DEBE) <> sum(DEBE_CXC) '
         + ' order by CIAID, TDIARID, CNTCOMPROB ';
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(xSQL);
   DMCXC.cdsQry2.Open;

   pprV.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CompCXC301vsCNT301.rtm';
   pprV.Template.LoadFromFile;
   ppdbV.DataSource := DMCXC.dsQry2;

   Screen.Cursor := crDefault;
   If cbDisenoRep.Checked Then
   Begin
      ppdV.Report := pprV;
      ppdV.ShowModal;
   End
   Else
   Begin
      pprV.Print;
      pprV.Stop;
      ppdbV.DataSource := Nil;
      x10 := self.componentCount - 1;
      While x10 > 0 Do
      Begin
         If self.components[x10].classname = 'TppGroup' Then
         Begin
            self.components[x10].free;
         End;
         x10 := x10 - 1;
      End;
   End;
end;
// Fin HPC_201405_CXC	
// Inicio HPC_201405_CXC
procedure TFRVentas.btnImprime3Click(Sender: TObject);
Var
   xSQL: String;
   x10: Integer;
Begin

   xSQL := '   select '''+ dblcCia.text +''' CIAID, DOCID, FACSERIE, NFAC,'''+ dbeAnoMM.text +''' CPANOMES, TMONID, ESTADO CPESTADO,sum(FACTOTMO) FACTOTMO, sum(IMPORTE_CXC) IMPORTE_CXC '
         + '  from ( '
         + ' select DOCID, FACSERIE, NFAC, TMONID, '
         + ' case when FACESTADO=''ACEPTADO'' then ''P'' '
         + '      when FACESTADO=''ANULADO'' then ''A'' '
         + ' end ESTADO, '
         + ' FACTOTMO, 0.00 IMPORTE_CXC '
         + ' from FAC305 '
         + ' where CIAID='''+ dblcCia.text +''' and FACANOMES='''+ dbeAnoMM.text +''' and FACESTADO<>''INICIAL'' '
         + ' union all '
         + ' select DOCID, CCSERIE FACSERIE, CCNODOC NFAC, TMONID, CCESTADO ESTADO, 0.00 FACTOTMO, CCMTOLOC IMPORTE_CXC '
         + ' from CXC301 '
         + ' where CIAID='''+ dblcCia.text +''' and CCANOMES='''+ dbeAnoMM.text +''' and CCESTADO in (''P'',''C'') ) '
         + ' group by DOCID, FACSERIE, NFAC, TMONID, ESTADO '
         + ' having sum(FACTOTMO)<>sum(IMPORTE_CXC) '
         + ' order by DOCID, FACSERIE, NFAC ';
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(xSQL);
   DMCXC.cdsQry2.Open;

   pprV.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CompFAC305vsCXC301.rtm';
   pprV.Template.LoadFromFile;
   ppdbV.DataSource := DMCXC.dsQry2;

   Screen.Cursor := crDefault;
   If cbDisenoRep.Checked Then
   Begin
      ppdV.Report := pprV;
      ppdV.ShowModal;
   End
   Else
   Begin
      pprV.Print;
      pprV.Stop;
      ppdbV.DataSource := Nil;
      x10 := self.componentCount - 1;
      While x10 > 0 Do
      Begin
         If self.components[x10].classname = 'TppGroup' Then
         Begin
            self.components[x10].free;
         End;
         x10 := x10 - 1;
      End;
   End;
end;
// Fin HPC_201405_CXC

// Inicio HPC_201601_CXC
// Procedimiento que revisa correlativos faltantes
procedure TFRVentas.bbtnCorrelFaltClick(Sender: TObject);
var
   xDoc, xSerie, xSQL : String;
   xCorrelativo : Integer;
begin
   xSQL := 'select CCNOREG, CLIEID, '
      + '          DOCID, ''123456789012345678901234567890'' DOCDES, '
      + '          CCSERIE, CCNODOC, CCESTADO, '
      +            quotedstr(dblcCia.Text)+ ' CIAID, '
      +            quotedstr(edtCia.Text)+ ' CIADES, '
      +            quotedstr(dbeAnoMM.Text)+ ' AAAAMM '
      + '     from CXC301 '
      + '    where 1<>1';
   DMCXC.cdsQry4.Close;
   DMCXC.cdsQry4.DataRequest(xSQL);
   DMCXC.cdsQry4.Open;

   xSQL := 'select CXC301.CCNOREG, CXC301.CLIEID, '
      + '          CXC301.DOCID, TGE110.DOCDES, '
      + '          CXC301.CCSERIE, CXC301.CCNODOC, CXC301.CCESTADO, '
      +            quotedstr(dblcCia.Text)+ ' CIAID, '
      +            quotedstr(edtCia.Text)+ ' CIADES, '
      +            quotedstr(dbeAnoMM.Text)+ ' AAAAMM '
      + '     from CXC301, TGE110 '
      + '    where CXC301.CIAID='+quotedstr(dblcCia.text)
      + '      and CXC301.CCANOMES='+quotedstr(dbeAnoMM.text)
      + '      and CXC301.TDIARID='+quotedstr(dblcTDiario.Text)
      + '      and TGE110.DOCID=CXC301.DOCID and TGE110.DOCMOD=''CXC'' '
      + '    Order by CXC301.DOCID, CXC301.CCSERIE, CXC301.CCNODOC ';
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSQL);
   DMCXC.cdsQry3.Open;
   DMCXC.cdsQry3.IndexFieldNames := 'DOCID; CCSERIE; CCNODOC';
   DMCXC.cdsQry3.First;
   while not DMCXC.cdsQry3.Eof do
   begin
      xDoc := DMCXC.cdsQry3.FieldByName('DOCID').AsString;
      xSerie := DMCXC.cdsQry3.FieldByName('CCSERIE').AsString;
      xCorrelativo := strtoint(DMCXC.cdsQry3.FieldByName('CCNODOC').AsString)-1;
      while (not DMCXC.cdsQry3.Eof)
         and (DMCXC.cdsQry3.FieldByName('DOCID').AsString=xDoc)
         and (DMCXC.cdsQry3.FieldByName('CCSERIE').AsString=xSerie) do
      begin
         xCorrelativo := xCorrelativo+1;
         if strtoint(DMCXC.cdsQry3.FieldByName('CCNODOC').AsString)<>xCorrelativo then
         begin
            DMCXC.cdsQry4.Append;
            DMCXC.cdsQry4.FieldByName('CCNOREG').AsString := DMCXC.cdsQry3.FieldByName('CCNOREG').AsString;
            DMCXC.cdsQry4.FieldByName('CLIEID').AsString := DMCXC.cdsQry3.FieldByName('CLIEID').AsString;
            DMCXC.cdsQry4.FieldByName('DOCID').AsString := xDoc;
            DMCXC.cdsQry4.FieldByName('DOCDES').AsString := DMCXC.cdsQry3.FieldByName('DOCDES').AsString;
            DMCXC.cdsQry4.FieldByName('CCSERIE').AsString := xSerie;
            DMCXC.cdsQry4.FieldByName('CCNODOC').AsString := inttostr(xCorrelativo);
            DMCXC.cdsQry4.FieldByName('CCESTADO').AsString := DMCXC.cdsQry3.FieldByName('CCESTADO').AsString;
            DMCXC.cdsQry4.FieldByName('CIAID').AsString := DMCXC.cdsQry3.FieldByName('CIAID').AsString;
            DMCXC.cdsQry4.FieldByName('CIADES').AsString := edtCia.Text;
            DMCXC.cdsQry4.FieldByName('AAAAMM').AsString := dbeAnoMM.Text;
            DMCXC.cdsQry4.Post;
            xCorrelativo := xCorrelativo+1;
         end;
         DMCXC.cdsQry3.Next;
      end;
   end;
   DMCXC.cdsQry3.IndexFieldNames := '';
   if DMCXC.cdsQry4.RecordCount=0 then
   begin
      ShowMessage('No se encontraron documentos faltantes');
      exit;
   end;
   ppdbV.DataSource := DMCXC.dsQry4;
   pprV.DataPipeline := ppdbV;
   pprV.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVentaFalt.rtm';
   pprV.Template.LoadFromFile;

   If cbDisenoRep.Checked then
   begin
      ppd1.Report := pprV;
      ppd1.ShowModal
   end
   else
   begin
      pprV.Print;
      pprV.Stop;
   end;
end;
// Fin HPC_201601_CXC

// Inicio HPC_201601_CXC
// Procedimiento que maximiza visualización de reporte
procedure TFRVentas.CreaReporte(Sender: TObject);
begin
   (sender As tppReport).PreviewForm.WindowState := wsMaximized;
   TppViewer((sender As tppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;
// Fin HPC_201601_CXC

// Inicio HPC_201702_CXC
//        Registro de Ventas diarias para SUNAT
procedure TFRVentas.bbtnRegVtaDiariaClick(Sender: TObject);
Var
   xSQL: String;
   v_fecha, xsRuc, xsNombre:  String;
   xsfecha, xsDia, xsMes, xsAnio: String;
begin
   If length(dblccia.text) = 0 Then
   Begin
      Showmessage('Debe Seleccionar Compañía');
      dblccia.setfocus;
      Exit;
   End;
   If length(dblcTDiario.text) = 0 Then
   Begin
      Showmessage('Debe Seleccionar Tipo de Diario');
      dblcTDiario.setfocus;
      Exit;
   End;
   If length(dtpFecRep.text) = 0 Then
   Begin
      Showmessage('Debe Seleccionar Fecha para Resumen Diario');
      dtpFecRep.Visible := True;
      dtpFecRep.Enabled := True;
      cbFecRep.Checked := True;
      dtpFecRep.setfocus;
      Exit;
   End;
// Prepara Información para TXT
   Begin
      DMCXC.DCOM1.AppServer.IniciaTransaccion;
      xSQL :=  ' Declare v_err_num varchar2(2); v_err_msg varchar2(500);'
             + ' Begin db2admin.SP_FAC_FE_RESCOMP('
             + QuotedStr(dtpFecRep.text)   + ','
             + 'v_err_num, v_err_msg); End;' ;
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         ShowMessage('Error al Ejecutar Procedimiento de Extracción de Información');
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         Screen.Cursor := crDefault;
         exit;
      End;
   End;

// Validando Existencia de Registros
   xSQL := ' Select * '
         + '   From db2admin.FAC_FE_RESCOMP '
         + '   Where fec_emis = ' + QuotedStr(dtpFecRep.text)
         + '   Order by ciaid, tipo_comp, serie_comp, num_comp';

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;

   If DMCXC.cdsQry.RecordCount = 0 Then
      Raise Exception.Create('No hay registros que mostrar');

// Close;
   DMCXC.cdsQry.Close;

// Nomenclatura de Archivo
   xsRuc := '20136424867';
   xsfecha := dtpFecRep.text;
   xsDia   := copy(xsfecha,1,2);
   xsMes   := copy(xsfecha,4,2);
   xsAnio  := copy(xsfecha,7,4);
   xsfecha := xsDia  + xsMes + xsAnio ;

   xsNombre := xsRuc + '-' + 'RF' + '-' + xsfecha + '-' + '01' + '.txt';

// Invocando Función para generar Txt
   sdGraba.FileName := xsNombre;
   If Not sdGraba.Execute Then Exit;
   fg_RDCexportarFormato(sdGraba.FileName);

end;


// Función que Genera TXT Resumen Diario de Comprobantes SUNAT
Procedure TFRVentas.fg_RDCexportarFormato(wgRutaArchivo: String);
Var
   xsSql: String;
   xfArchivoTexto: TextFile;
   xsDelimitador: String;

   xsMotivo: String;
   xdFecEmi: String;
   xsTipoComp: String;
   xsSerieComp: String;
   xsNumeroComp: String;
   xsNumeroComF: String;

   xsTipoDocAdq: String;
   xsNumDocAdq: String;
   xsNombreAdq: String;

   xsTotGrav: String;
   xsTotExon: String;
   xsTotInaf: String;
   xsTotIsc: String;
   xsTotIgv: String;
   xsTotOtros: String;
   xsTotVenta: String;

   xsTipoMod: String;
   xsSerieMod: String;
   xsNumeroMod: String;
   xslendoc: Integer;

Begin
   xsDelimitador := '|';
   xsSql := ' Select MOTIVO, FEC_EMIS, TIPO_COMP  ,SERIE_COMP ,NUM_COMP   ,NUM_COMPF  ,DOCID_ADQ, '
          + '        NUMDOC_ADQ ,NOMBRE_ADQ ,TOT_GRAV   ,TOT_EXON   ,TOT_INAF   ,TOT_ISC    ,TOT_IGV,'
          + '        TOT_OTROS  ,TOT_VENTA  ,TIPDOC_MOD ,SERIE_MOD  ,NUMDOC_MOD '
          + '   From db2admin.FAC_FE_RESCOMP '
          + '  Where FEC_EMIS = ' + QuotedStr(dtpFecRep.text)
          + '  And Not (TIPO_COMP = ''01'' And TOT_IGV=0 And (TOT_EXON > 0 Or TOT_INAF > 0 ) And DOCID_ADQ IN (''7'', ''4'', ''0'', ''1'') '
          + '       Or (TIPO_COMP = ''01'' And TOT_IGV=0 And (TOT_EXON > 0 Or TOT_INAF > 0 ) And TRANSLATE(NUMDOC_ADQ, ''T 0123456789'', ''T'') IS NOT NULL )) '
          + '  And TIPO_COMP <> ''08'' '
          + '  Order by TIPO_COMP, SERIE_COMP, NUM_COMP';

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.Open;
//   DMCXC.cdsQry.IndexFieldNames := 'NUM_COMP';

   If DMCXC.cdsQry.RecordCount = 0 Then
      Raise Exception.Create('No hay registros que mostrar');

   AssignFile(xfArchivoTexto, wgRutaArchivo);
   Rewrite(xfArchivoTexto);
   While Not DMCXC.cdsQry.Eof Do
   Begin
      xsMotivo     := DMCXC.cdsQry.FieldByName('MOTIVO').AsString;
      xdFecEmi     := DMCXC.cdsQry.FieldByName('FEC_EMIS').AsString;
      xsTipoComp   := DMCXC.cdsQry.FieldByName('TIPO_COMP').AsString;
      xsSerieComp  := DMCXC.cdsQry.FieldByName('SERIE_COMP').AsString;
      xsNumeroComp := DMCXC.cdsQry.FieldByName('NUM_COMP').AsString;
      xsNumeroComF := DMCXC.cdsQry.FieldByName('NUM_COMPF').AsString;

      xsTipoDocAdq := DMCXC.cdsQry.FieldByName('DOCID_ADQ').AsString;

      xsNumDocAdq  := DMCXC.cdsQry.FieldByName('NUMDOC_ADQ').AsString;
      If  xsNumDocAdq = '000000000' Then xsNumDocAdq := '00000000' ;

      If xsTipoDocAdq = '1' Then
         If  (Length(TRIM(xsNumDocAdq)) <> 8) and (Length(TRIM(xsNumDocAdq)) <> 0) Then
             Showmessage('Error en Comprobante : '+xsTipoComp+'-'+xsSerieComp+'-'+xsNumeroComp+ ' : '+ 'DNI '+xsNumDocAdq+ ' Incorrecto, Revise Txt!!!');

      If xsTipoDocAdq = '6' Then
         If  Length(TRIM(xsNumDocAdq)) <> 11  Then
             Showmessage('Error en Comprobante : '+xsTipoComp+'-'+xsSerieComp+'-'+xsNumeroComp+ ' : '+'RUC '+xsNumDocAdq+ ' Incorrecto, Revise Txt!!!');


      xsNombreAdq  := DMCXC.cdsQry.FieldByName('NOMBRE_ADQ').AsString;

      xsTotGrav    := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_GRAV').AsFloat);
      xsTotExon    := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_EXON').AsFloat);
      xsTotInaf    := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_INAF').AsFloat);
      xsTotIsc     := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_ISC').AsFloat);
      xsTotIgv     := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_IGV').AsFloat);
      xsTotOtros   := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_OTROS').AsFloat);
      xsTotVenta   := FormatFloat('########0.00', DMCXC.cdsQry.FieldByName('TOT_VENTA').AsFloat);

      xsTipoMod    := DMCXC.cdsQry.FieldByName('TIPDOC_MOD').AsString;
      xsSerieMod   := DMCXC.cdsQry.FieldByName('SERIE_MOD').AsString;
      xsNumeroMod  := DMCXC.cdsQry.FieldByName('NUMDOC_MOD').AsString;



      WriteLn(xfArchivoTexto, xsMotivo+ xsDelimitador + // 1
         xdFecEmi + xsDelimitador +                     // 2
         xsTipoComp + xsDelimitador +                   // 3
         xsSerieComp + xsDelimitador +                  // 4
         xsNumeroComp + xsDelimitador +                 // 5
         xsNumeroComF + xsDelimitador +                 // 6
         xsTipoDocAdq + xsDelimitador +                 // 7
         xsNumDocAdq + xsDelimitador +                  // 8
         xsNombreAdq + xsDelimitador +                  // 9
         xsTotGrav + xsDelimitador +                    // 10
         xsTotExon + xsDelimitador +                    // 11
         xsTotInaf + xsDelimitador +                    // 12
         xsTotIsc + xsDelimitador +                     // 13
         xsTotIgv + xsDelimitador +                     // 14
         xsTotOtros + xsDelimitador +                   // 15
         xsTotVenta + xsDelimitador +                   // 16
         xsTipoMod + xsDelimitador +                    // 17
         xsSerieMod + xsDelimitador +                   // 18
         xsNumeroMod + xsDelimitador);                  // 19

      DMCXC.cdsQry.Next;
   End;
   CloseFile(xfArchivoTexto);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.IndexFieldNames := '';
   ShowMessage('Archivo '+wgRutaArchivo+#13+' generado correctamente');
end;
// Fin HPC_201702_CXC

End.

