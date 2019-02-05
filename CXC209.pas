Unit CxC209;

//

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, wwdbdatetimepicker, Buttons,
   Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, DB, ComCtrls, Tabnotbk, Menus
   , WWCLIENT, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass,
   ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppEndUsr,
   ppVar, wwdatsrc, Variants, oaVariables;

Type
   TFAnticipo = Class(TForm)
      pnlCabecera: TPanel;
      pnlDetalle: TPanel;
      pnlPie: TPanel;
      Z2bbtnGraba: TBitBtn;
      bbtnCancela: TBitBtn;
      bbtnCalc: TBitBtn;
      Z2bbtnContab: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnDel1: TBitBtn;
      bbtnSumat: TBitBtn;
      bbtnGen302: TBitBtn;
      Label6: TLabel;
      bbtnRegresa: TBitBtn;
      pnlCab1: TPanel;
      pnlCab2: TPanel;
      lblCia: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      lblNoDoc: TLabel;
      lblTMon: TLabel;
      dblcTMon: TwwDBLookupCombo;
      lblTCam: TLabel;
      dbeTCambio: TwwDBEdit;
      lblFEmis: TLabel;
      bbtnBorra: TBitBtn;
      bbtnOK: TBitBtn;
      edtTMon: TEdit;
      edtNoDoc: TwwDBEdit;
      pnlEstado: TPanel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      lblContab: TLabel;
      lblAcepta: TLabel;
      Label12: TLabel;
      pc1: TPageControl;
      ts2: TTabSheet;
      pnlDetCxC: TPanel;
      Label5: TLabel;
      dbgDetCxC: TwwDBGrid;
      btnActReg: TwwIButton;
      pnlRegistro: TPanel;
      lblTipReg: TLabel;
      lblCnpEgr: TLabel;
      lblDH: TLabel;
      lblImporte: TLabel;
      lblGlosa: TLabel;
      lblCuenta: TLabel;
      edtTipReg: TEdit;
      dbeImporte: TwwDBEdit;
      dbeDH: TwwDBEdit;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      dbeCuenta: TwwDBEdit;
      dbeGlosa: TwwDBEdit;
      dblcTipReg: TwwDBLookupCombo;
      dblcdCnpEgr: TwwDBLookupComboDlg;
      edtFinal: TEdit;
      StaticText1: TStaticText;
      dtpFEmis: TwwDBDateTimePicker;
      Label8: TLabel;
      dblcClAux: TwwDBLookupCombo;
      lblprov: TLabel;
      dblcdClie: TwwDBLookupComboDlg;
      lblRuc: TLabel;
      dblcdClieRuc: TwwDBLookupComboDlg;
      lblProvNom: TLabel;
      edtClie: TEdit;
      lblComprob: TLabel;
      dbeNoReg: TwwDBEdit;
      lblFComprob: TLabel;
      dtpFComp: TwwDBDateTimePicker;
      bbtnAcepta: TBitBtn;
      lblCCosto: TLabel;
      dblcdCCosto: TwwDBLookupComboDlg;
      edtCCosto: TEdit;
      z2bbtnEmiteDoc: TBitBtn;
      lblTipPre: TLabel;
      dblcTipPre: TwwDBLookupCombo;
      dbeTipPre: TwwDBEdit;
      lblPresu: TLabel;
      dblcdPresup: TwwDBLookupComboDlg;
      edtPresup: TEdit;
      pnlActuali: TPanel;
      lblActuali: TLabel;
      pprptNotaCred: TppReport;
      ppdbpNotaCred: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      pplblNCRazon: TppLabel;
      pplblNCDIR: TppLabel;
      pplblNCRUC: TppLabel;
      pplblNCFactura: TppLabel;
      pplblNCFacFecha: TppLabel;
      pplblNCConPagoID: TppLabel;
      pplblNCVendedor: TppLabel;
      pplblNCClie: TppLabel;
      pplblNCDescrip: TppLabel;
      pplblAno: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppdbtMtoOri: TppDBText;
      ppdbtGlosa: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppdbcMtoOri: TppDBCalc;
      pplblNCIGV: TppLabel;
      pplblNCTotal: TppLabel;
      pplblNCLetras: TppLabel;
      pplblNCSEUO: TppLabel;
      pplblNCDIA1: TppLabel;
      pplblNCMES1: TppLabel;
      pplblNCANO1: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppDesigner1: TppDesigner;
      Label4: TLabel;
      dbeMtoOri: TwwDBEdit;
      dblcdTipoOpera: TwwDBLookupComboDlg;
      lblTipoOpera: TLabel;
      edtTipoOpera: TEdit;
      Label1: TLabel;
      wwDBEdit1: TwwDBEdit;
      Z2bbtnPreview: TBitBtn;
      ppdbpPreview: TppDBPipeline;
      pprPreview: TppReport;
      ppHeaderBand5: TppHeaderBand;
      lblVCiaDes: TppLabel;
      ppsV4: TppSystemVariable;
      lblV30: TppLabel;
      ppsV5: TppSystemVariable;
      lblV1: TppLabel;
      lblV2: TppLabel;
      lblV25: TppLabel;
      lblV26: TppLabel;
      lblVTD: TppLabel;
      lblVDiario: TppLabel;
      lblVPeriodo: TppLabel;
      lblVNoCompro: TppLabel;
      lblV27: TppLabel;
      lblVProveedor: TppLabel;
      lblV28: TppLabel;
      lblVmoneda: TppLabel;
      lblV29: TppLabel;
      lblVTipoCamb: TppLabel;
      lblV31: TppLabel;
      lblVGlosa: TppLabel;
      lblV32: TppLabel;
      lblV33: TppLabel;
      lblV34: TppLabel;
      lblV3: TppLabel;
      lblV4: TppLabel;
      lblV5: TppLabel;
      lblV6: TppLabel;
      lblV7: TppLabel;
      lblV8: TppLabel;
      lblV9: TppLabel;
      lblV10: TppLabel;
      lblVauxiliar: TppLabel;
      ppDBVText30: TppDBText;
      lblV11: TppLabel;
      ppDBVText31: TppDBText;
      lblV12: TppLabel;
      lblVMesDia: TppLabel;
      ppDBVText32: TppDBText;
      lblV13: TppLabel;
      lblVEstado: TppLabel;
      lblV14: TppLabel;
      lblV47: TppLabel;
      lblV48: TppLabel;
      lblV49: TppLabel;
      lblV50: TppLabel;
      lblB15: TppLabel;
      lblV16: TppLabel;
      lblV17: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBVText33: TppDBText;
      ppDBVText34: TppDBText;
      ppDBVText35: TppDBText;
      ppDBVText36: TppDBText;
      ppDBVText4: TppDBText;
      ppVtDesc: TppDBText;
      ppDBVText5: TppDBText;
      ppDBVText6: TppDBText;
      ppDBVText8: TppDBText;
      ppDBVText9: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppDBVCalc6: TppDBCalc;
      ppDBVCalc7: TppDBCalc;
      lblV18: TppLabel;
      dblcTDiario: TwwDBLookupCombo;
      lblTDiario: TLabel;
      edtTDiario: TEdit;
      Z2bbtnElimina: TBitBtn;
      lblElimina: TLabel;
      Procedure bbtnOKClick(Sender: TObject);
      Procedure dbgCanjeDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure LlenaDetCxC;
      Procedure CalculaTotalCje;
      Procedure CalculaTotalDetCje;
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure dbgPendientes2DragOver(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgDetCanjeDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure dblcTipRegExit(Sender: TObject);
      Procedure dblcdCnpEgrExit(Sender: TObject);
      Procedure InicializaVars;
      Procedure InicializaCds;
      Procedure DatosCds;
      Procedure DatosdeFecha;
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcTMonChange(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure CamposKEnabled(PVal: Boolean);
      Function VerificaTotal: Boolean;
      Function CuadraDH: Boolean;
      Procedure bbtnGen302Click(Sender: TObject);
      Procedure dbgDetCxCEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgDetCxCMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure bbtnDel1DragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure edtNoDocExit(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure dbeTCambioExit(Sender: TObject);
      Procedure edtSerieXKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeNoRegExit(Sender: TObject);
      Procedure dblcdClieKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtNoDocKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtpFCompKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeLoteKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcTMonKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtpFEmisKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnActRegClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbeDHExit(Sender: TObject);
      Procedure dbeImporteExit(Sender: TObject);
      Procedure dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgDetCxCDblClick(Sender: TObject);
      Procedure dbgDetCanjeCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FiltraGrids;
      Function Consistencia: Boolean;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDocCanjeDragOver(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure ActualizaSaldosMovCxC;
      Procedure InicializaPnlCab2;
      Procedure dblcdPresupExit(Sender: TObject);
      Procedure dtpFEmisEnter(Sender: TObject);
      Procedure dtpFEmisExit(Sender: TObject);
      Procedure dblcdClieEnter(Sender: TObject);
      Procedure dblcdClieRucEnter(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure bbtnAceptaClick(Sender: TObject);
      Procedure dblcdCCostoExit(Sender: TObject);
      Procedure z2bbtnEmiteDocClick(Sender: TObject);
      Procedure dblcTipPreExit(Sender: TObject);
      Procedure Z2bbtnImprimeClick(Sender: TObject);
      Procedure ppHeaderBand2BeforePrint(Sender: TObject);
      Procedure ppFooterBand2BeforePrint(Sender: TObject);
      Procedure dblcdTipoOperaExit(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure Z2bbtnPreviewClick(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure Z2bbtnEliminaClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
      StrTmp: String;
      xDesMon: String; // para la descripcion de la moneda
      Procedure InsertaRegistro;
      Procedure GeneraRegistro;
      Procedure GrabaDetCanje;
      Procedure EmiteDoc(xArchivoReporte: String);
    // para presupuestos - pjsv - 03/11/2000
      Procedure CalculoNivelSupe;
      Procedure inicializoCero(xcds: TwwClientDataSet);
      Procedure CreaSuperior;
      Procedure CalculoNivel;
      Procedure CargaDataSource;
   Public
    { Public declarations }
      xxTCambio: Double;
   End;

Var
   xRegAct, xRegAct2, xRegMov: TBookMark;
   FAnticipo: TFAnticipo;
   wRegGrab, wCuadra, wNuevo: Boolean;
   wSimbMn, wTDoc, wTDiar, wCje, wEstadTem: String;
   wTDev, wTDev2, wIgv: Double; // Cantidad IGV para restarle al saldo y tener MtoMax de Ingreso
   xTAutoNum, xTAno, xTMes: String;
   xCrea: Boolean;
   xFlGrid: Boolean;
   xAAMM: String;
   xVeID: String;
   xSector: String;
   xZona: String;

Implementation

//uses CxCDM, CxC001 , CXCUtil,wwdatsrc ;
Uses CxCDM, oaCC2000, CXCUtil;
{$R *.DFM}

Procedure TFAnticipo.InsertaRegistro;
Begin
   DMCXC.cdsMovCxC.Insert;
   DMCXC.cdsMovCxC.FieldByName('DOCID').AsString := wTDoc;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'X';
   DMCXC.cdsMovCxC.Post;
   dblcCia.Text := '';
   dblcdClie.Text := '';
   dblcdClieRuc.Text := '';
   edtNoDoc.text := '';
   edtCia.Text := '';
   edtClie.text := '';
   RecuperarCiaUnica(dblcCia, edtCia);
End;

Procedure TFAnticipo.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   pnlCab1.Enabled := False;
   pnlCab2.Enabled := False;
   dtpFEmis.Enabled := False;
   dblcClAux.Enabled := False;
   dblcdClie.Enabled := False;
   dblcdClieRuc.Enabled := False;
   dbeNoReg.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;

   dbgDetCxC.Enabled := False;
   dbgDetCxC.ReadOnly := True;
   btnActReg.Enabled := False;

   pnlPie.Refresh;
   pnlPie.Enabled := False;
   bbtnRegresa.Enabled := False;
   bbtnCancela.Enabled := False;
   Z2bbtnGraba.Enabled := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled := False;
   Z2bbtnImprime.Enabled := False;
   z2bbtnEmiteDoc.Enabled := fALSE;
   Z2bbtnContab.Enabled := False;
   Z2bbtnPreview.Enabled := False;
   Z2bbtnNuevo.Enabled := False;
   Z2bbtnElimina.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;
   lblElimina.Visible := False;

   If xxModo = 0 Then
   Begin

//        FNotasDC.OnKeyPress := FormKeyPress;

      If xMovEstado = 'X' Then
      Begin
         pnlCab1.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         pnlCab1.SetFocus;
         perform(CM_DialogKey, VK_TAB, 0);
      End;
      If xMovEstado = 'T' Then
      Begin
         pnlCab2.Enabled := True;
         dtpFEmis.Enabled := True;
         dblcClAux.Enabled := True;
         dblcdClie.Enabled := True;
         dblcdClieRuc.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dtpFEmis.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
         pnlCab2.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := True;
         dblcTMon.SetFocus;
      End
   End
   Else
   Begin

//WMC2211      FNotasDC.OnKeyPress := Nil;

      If xMovConta = 'S' Then
      Begin
         pnlDetalle.Enabled := True;
         dbgDetCxC.Enabled := True;

         lblContab.Visible := True;

         pnlPie.Enabled := True;
         Z2bbtnImprime.Enabled := True;
         z2bbtnEmiteDoc.Enabled := True;
         Z2bbtnPreview.Enabled := True;
      End
      Else
      Begin
         If xMovEstado = 'T' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.Enabled := True;
            dbgDetCxC.ReadOnly := False;
            btnActReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;

            lblActivo.Visible := True;
         End;
         If xMovEstado = 'I' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.Enabled := True;
            dbgDetCxC.ReadOnly := False;
            btnActReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnElimina.Enabled := True;
            Z2bbtnNuevo.Enabled := True;

            lblActivo.Visible := True;
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            z2bbtnEmiteDoc.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            Z2bbtnContab.Enabled := True;
            Z2bbtnPreview.Enabled := True;
            Z2bbtnElimina.Enabled := True;
            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := False;
            z2bbtnEmiteDoc.Enabled := True;

            lblAnula.Visible := True;
         End;
         If xMovEstado = 'E' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDetCxC.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := False;
            z2bbtnEmiteDoc.Enabled := True;

            lblElimina.Visible := True;
         End;
      End;
   End;

   If DMCXC.wModo = 'C' Then
   Begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled := False;
      pnlCab2.Enabled := False;

      bbtnOK.Enabled := False;
      bbtnBorra.Enabled := False;

      dbgDetCxC.Enabled := False;
      dbgDetCxC.ReadOnly := True;
      btnActReg.Enabled := False;

      pnlPie.Refresh;
      pnlPie.Enabled := False;
      bbtnRegresa.Enabled := False;
      bbtnCancela.Enabled := False;
      Z2bbtnGraba.Enabled := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled := False;
      Z2bbtnImprime.Enabled := False;
      z2bbtnEmiteDoc.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnPreview.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
End;

Procedure TFAnticipo.FiltraGrids;
Var
   xFiltro: String;
Begin
// Filtra DetCxP para mostrar DetContable(dbgDetCxp) si NCredito Existe
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + QuotedStr(dblcCia.Text) + ' and '
      + 'CLIEID=' + QuotedStr(dblcdClie.Text) + ' and '
      + 'DOCID=' + QuotedStr(wTDoc) + ' and '
      + 'CCSERIE=' + QuotedStr('000') + ' and '
      + 'CCNODOC=' + QuotedStr(edtNoDoc.Text) + ' AND '
      + 'CCNOREG=' + QuotedStr(dbeNoReg.text));
   TNumericField(DMCXC.cdsDetCxC.FieldByName('CCMTOORI')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsDetCxC.FieldByName('CCMTOORI')).EditFormat := '#######0.00';
   TNumericField(DMCXC.cdsDetCxC.FieldByName('CCMTOLOC')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsDetCxC.FieldByName('CCMTOLOC')).EditFormat := '#######0.00';
   TNumericField(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsDetCxC.FieldByName('CCMTOEXT')).EditFormat := '#######0.00';
End;

Procedure TFAnticipo.dblcCiaExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
      exit;
   End;
   edtNoDoc.Text := DMCXC.BuscaUltNumero(dblcCia.Text, wTDoc, '000');

End;

Procedure TFAnticipo.dblcdClieExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If (length(dblcdClie.text) = 0) And (dblcdClieRuc.Focused) Then
   Begin
      exit;
   End;

   If (Length(dblcdClie.Text) = 0) And (length(dblcdClieRuc.text) = 0) Then
   Begin
      dblcdClie.SetFocus;
      Raise Exception.Create('Ingrese Cliente');
   End;

   If DMCXC.cdsClie.IndexFieldNames <> 'CLIEID' Then
      DMCXC.cdsClie.IndexFieldNames := 'CLIEID';

   DMCXC.cdsClie.Setkey;
   DMCXC.cdsClie.FieldByName('CLIEID').AsString := dblcdClie.text;
   If DMCXC.cdsClie.Gotokey Then
   Begin
      edtClie.text := DMCXC.cdsClie.FieldByName('CLIEDES').AsString;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := DMCXC.cdsClie.FieldByName('CLIEID').AsString;
      DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsClie.FieldByName('CLIERUC').AsString;
      DMCXC.cdsMovCxC.FieldByName('VEID').AsString := DMCXC.cdsClie.FieldByName('VEID').AsString;
      xSector := DMCXC.cdsClie.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;
      If xSector = '' Then
      Begin
         Raise Exception.Create('Atencion: Cliente No Tiene Asignado Sector Comercial. Revise Maestro de Clientes');
      End;
   End
   Else
   Begin
      dblcdClieRuc.Clear;
      edtClie.Clear;
      dblcdClie.SetFocus;
      Raise Exception.Create('Cliente no Existe');
   End;
End;

Procedure TFAnticipo.dblcdClieRucExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;
   If (Length(dblcdClieRuc.Text) = 0) And (dblcdClie.Focused) Then Exit;

   If (Length(dblcdClieRuc.text) = 0) And (Length(dblcdClie.text) > 0) Then
   Begin
      dblcdClieRuc.SetFocus;
      Raise Exception.Create('Ingrese RUC');
   End;

   If (Length(dblcdClieRuc.text) >= 0) And (Length(dblcdClie.text) = 0) Then
   Begin

      If DMCXC.cdsClie.IndexFieldNames <> 'CLIERUC' Then
         DMCXC.cdsClie.IndexFieldNames := 'CLIERUC';

      DMCXC.cdsClie.Setkey;
      DMCXC.cdsClie.FieldByName('CLIERUC').AsString := dblcdClieRuc.text;
      If DMCXC.cdsClie.Gotokey Then
      Begin
         edtClie.text := DMCXC.cdsClie.FieldByName('CLIEDES').AsString;
         DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := DMCXC.cdsClie.FieldByName('CLIERUC').AsString;
         DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := DMCXC.cdsClie.FieldByName('CLIEID').AsString;
         DMCXC.cdsMovCxC.FieldByName('VEID').AsString := DMCXC.cdsClie.FieldByName('VEID').AsString;
         xSector := DMCXC.cdsClie.FieldByName('TVTAID').AsString;
         xZona := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;
         If xSector = '' Then
         Begin
            Raise Exception.Create('Atencion: Cliente No Tiene Asignado Sector Comercial. Revise Maestro de Clientes');
         End;
      End
      Else
      Begin
         dblcdClie.Clear;
         edtClie.Clear;
         dblcdClie.SetFocus;
         Raise Exception.Create('RUC de Cliente no Existe');
      End;
   End;

{   if length(dblcdClieRuc.Text)>0 then
   begin
      edtClie.Text:=DMCXC.DisplayDescrip('TGE204','CLIEDES','CLIERUC',dblcdClieRuc.Text);
      if length(edtClie.Text)=0 then begin
          ShowMessage('Cliente no existe');
          dblcdClie.Text:='';
          dblcdClieRuc.Text:='';
          dblcdClie.SetFocus;
          exit;
      end;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString:=DMCXC.cdsQry.FieldByName('CLIEID').AsString;
      end
   else begin
      edtClie.Text:='';
      dblcdClie.SetFocus;
   end;}
End;

Procedure TFAnticipo.InicializaVars;
Begin
   wCje := '';
   wSimbMn := '';
   wEstadTem := ''; // si regresa de Det a Pend (cuando existe N/C)
   wCuadra := False;
   wRegGrab := False;
   edtFinal.Text := '';
   edtNoDoc.Text := '';
   edtTipoOpera.Clear;
End;

Procedure TFAnticipo.InicializaCds;
Begin
   Filtracds(DMCXC.cdsMovCxC2, 'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where CIAID=''''');
   Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where CIAID=''''');
   Filtracds(DMCXC.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where CIAID=''''');
End;

Function TFAnticipo.Consistencia: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then
      Raise exception.Create('Ingrese Compañía');
   If length(dblcdClie.Text) = 0 Then
      Raise exception.Create('Ingrese Cliente');
   If length(edtNoDoc.Text) = 0 Then
      Raise exception.Create('Ingrese Número del Documento');
   If dtpFComp.Date = 0 Then
      Raise exception.Create('Ingrese Fecha del comprobante');
   If length(dbeNoReg.Text) = 0 Then
      Raise exception.Create('Ingrese Número del comprobante');
   If length(dblcTMon.Text) = 0 Then
      Raise exception.Create('Ingrese Moneda');
   If length(dbeTCambio.Text) = 0 Then
      Raise exception.Create('Ingrese Tipo de Cambio');
   If dtpFEmis.Date = 0 Then
      Raise exception.Create('Ingrese Fecha de Emisión del Documento');
   Result := true;
End;

Procedure TFAnticipo.bbtnOKClick(Sender: TObject);
Var
   xWhere: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdCnpEgr.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdCnpEgr.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   // jcc 29/04/2002
// revisar càlculo de anticipo, no està generando bien IGV y Monto Gravado

   If DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat <= 0 Then
   Begin
      Raise Exception.Create('Ingrese Monto Total del Anticipo');
   End;

   If dblcdTipoOpera.text = '' Then
   Begin
      dblcdTipoOpera.SetFocus;
      Raise Exception.Create('Ingrese Tipo de Operación');
   End;

   If Not Consistencia Then Exit;
   If DMCXC.cdsMovCxC.state = dsBrowse Then
      DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('TVTAID').AsString := xSector;
   DMCXC.cdsMovCxC.FieldByName('ZVTAID').AsString := xZona;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
   edtFinal.Text := ' El Monto Total del Anticipo es por ' + FloatToStrF(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2) + ' ' + edtTmon.Text;
   DMCXC.xFlagCal := True;

   If DMCXC.wModo = 'A' Then
   Begin
{     xWhere:='CiaId='+''''+dblcCia.Text+''''+' and TCanjeID='+''''+'NC'+'''';
     wCje  :=DMCXC.BuscaUltTGE('dspTGE','CXC304','CCCanje',xWhere);
     wCje  :=StrZero(wCje,6);}
      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T' Then
         GeneraRegistro;
   End;

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');

   DatosCds;
   FiltraGrids;
   Filtracds(DMCXC.cdsModelo, 'select * from CXC102 where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CPTOCAB=' + QuotedStr(dblcdTipoOpera.text) + ' ORDER BY TREGID ');

{   if DMCXC.cdsDetCxC.RecordCount=0 then
      bbtnGen302Click(Sender)
   else}
   bbtnGen302.Enabled := True;
//   bbtnSumatClick(Sender);
End;

Procedure TFAnticipo.GeneraRegistro;
Var
   xMes, xNoReg: String;
   wAno, wMes, wDia: Word;
   nNoReg: Integer;
Begin
   DecodeDate(dtpFEmis.Date, wAno, wMes, wDia);

   If wMes < 10 Then
      xMes := '0' + inttostr(wMes)
   Else
      xMes := inttostr(wMes);
   xTMes := xMes;
   xTAno := IntToStr(wAno);

   If Length(wTDiar) = 0 Then
      Raise Exception.Create('Error Documento no Tiene Tipo Diario');

   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
   xNoReg := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   nNoReg := StrToInt(xNoReg);
   xNoReg := '';
   While Length(xNoReg) = 0 Do
   Begin
      xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, nNoReg);
      xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
      If Not DMCXC.BuscaCxCReg(dblcCia.Text, wTDiar, xTAno + xTMes, xNoReg) Then
      Begin
         xNoReg := StrZero(xNoReg, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
         Break;
      End;
      xNoReg := '';
      nNoReg := nNoReg + 1;
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CPTOID').AsString := dblcdTipoOpera.text;
   DMCXC.cdsMovCxC.FieldByName('CCLOTE').AsString := '';
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := xNoReg;
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := IntToStr(wAno) + xMes;
   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFComp.date) Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsMovCxC.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsMovCxC.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsMovCxC.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsMovCxC.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsMovCxC.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsMovCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsMovCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsMovCxC.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
   DMCXC.cdsPost(DMCXC.cdsMovCxC);
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(dblcCia.text) +
      ' AND DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString) + ' AND CCSERIE=' + QuotedStr('000') +
      ' AND CCNODOC=' + QuotedStr(edtNoDoc.text));
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
End;

Procedure TFAnticipo.DatosCds;
Begin
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').Asstring := wTDiar;
   DMCXC.cdsMovCxC.FieldByName('TCANJEID').AsString := 'AN';
   DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString := wCje;
   DMCXC.cdsMovCxC.FieldByName('CCFCANJE').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDatetime := DMCXC.dateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDatetime := DMCXC.TimeS;
End;

Procedure TFAnticipo.dtpFCompExit(Sender: TObject);
Var
   wLote, wMes, xWhere: String;
   Year, Month, Day: Word;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If dtpFComp.date = 0 Then
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Fecha ');
   End;

   xWhere := 'TMonId=' + '''' + DMCXC.wTMonExt + '''' + ' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFComp.Date) + '''' + ')';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DMCXC.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
   Else
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   DecodeDate(dtpFComp.Date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   xAAMM := IntToStr(Year) + wMes;
   xTAno := IntToStr(Year);
   xTMes := wMes;
   dbeNoReg.Text := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   xWhere := 'TDiarId=' + '''' + wTDiar + '''' + ' and CCAnoMes=' + '''' + xAAMM + '''';
   wLote := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCLote', xWhere);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFEMIS').Value := dtpFComp.Date;
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').Value := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').Value := xTAno + xTMes;
End;

Procedure TFAnticipo.DatosdeFecha;
Begin
   If DMCXC.BuscaFecha('TGE114', 'Fecha', dtpFEmis.date) Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString; // ANO
      DMCXC.cdsMovCxC.FieldByName('CCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsMovCxC.FieldByName('CCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsMovCxC.FieldByName('CCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsMovCxC.FieldByName('CCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsMovCxC.FieldByName('CCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsMovCxC.FieldByName('CCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsMovCxC.FieldByName('CCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsMovCxC.FieldByName('CCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;
End;

Procedure TFAnticipo.dbgCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFAnticipo.CalculaTotalCje;
Begin
     // Totales de Documentos de canje  (Referencia)
   With DMCXC Do
   Begin
      wTDev := 0;
      cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid
      xRegAct := cdsCanjes.GetBookmark; // marca reg. donde se quedo
      cdsCanjes.First;
      While Not cdsCanjes.Eof Do
      Begin
         If dblcTMon.Text = wTMonExt Then
            wTDev := wTDev + cdsCanjes.FieldByName('CCMTOEXT').AsFloat
         Else
            wTDev := wTDev + cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         cdsCanjes.Next;
      End;
      cdsCanjes.GotoBookmark(xRegAct);
      cdsCanjes.FreeBookmark(xRegAct);
      cdsCanjes.EnableControls;
   End;

End;

Procedure TFAnticipo.CalculaTotalDetCje;
Begin
     // Totales de Documentos de canje  (Cancelación)
   With DMCXC Do
   Begin // se puede usar CalculaTotalDetCje en lugar de
      wTDev2 := 0;
      cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid
      xRegAct := cdsCanjes.GetBookmark; // marca reg. donde se quedo
     // Jsr
      If cdsCanjes.RecordCount > 0 Then
      Begin
         cdsCanjes.First;
         While Not cdsCanjes.Eof Do
         Begin
            If dblcTMon.Text = wTMonExt Then
               wTDev2 := wTDev2 + cdsCanjes.FieldByName('CCMTOEXT').AsFloat
            Else
               wTDev2 := wTDev2 + cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            cdsCanjes.Next;
         End;
         cdsCanjes.GotoBookmark(xRegAct);
         cdsCanjes.FreeBookmark(xRegAct);
      End;
      cdsCanjes.EnableControls;
   End;
End;

Procedure TFAnticipo.LlenaDetCxC;
Begin
   With DMCXC Do
   Begin
      cdsDetCxC.Edit;
      cdsDetCxC.FieldByName('CIAID').AsString := dblcCia.Text;
      cdsDetCxC.FieldByName('TDIARID').AsString := wTDiar;
      cdsDetCxC.FieldByName('CCNOREG').AsString := dbeNoReg.Text;
      cdsDetCxC.FieldByName('CCAAAA').AsString := copy(cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);
      cdsDetCxC.FieldByName('CCANOMES').AsString := cdsMovCxC.FieldByName('CCANOMES').AsString;
      cdsDetCxC.FieldByName('CLAUXID').AsString := dblcClAux.Text;
      cdsDetCxC.FieldByName('CLIEID').AsString := dblcdClie.Text;
      cdsDetCxC.FieldByName('DOCID').AsString := wTDoc;
      cdsDetCxC.FieldByName('CCSERIE').AsString := '000';
      cdsDetCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
      cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := cdsMovCxC.FieldByName('CCTCAMPR').AsFloat;
      cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := dtpFEmis.Date;
      cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := dtpFComp.Date;
      cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
      cdsDetCxC.FieldByName('CCUSER').AsString := wUsuario;
      cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
      cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
      cdsDetCxC.FieldByName('CCMM').AsString := cdsMovCxC.FieldByName('CCMM').AsString;
      cdsDetCxC.FieldByName('CCDD').AsString := cdsMovCxC.FieldByName('CCDD').AsString;
      cdsDetCxC.FieldByName('CCTRI').AsString := cdsMovCxC.FieldByName('CCTRI').AsString;
      cdsDetCxC.FieldByName('CCSEM').AsString := cdsMovCxC.FieldByName('CCSEM').AsString;
      cdsDetCxC.FieldByName('CCSS').AsString := cdsMovCxC.FieldByName('CCSS').AsString;
      cdsDetCxC.FieldByName('CCAATRI').AsString := cdsMovCxC.FieldByName('CCAATRI').AsString;
      cdsDetCxC.FieldByName('CCAASEM').AsString := cdsMovCxC.FieldByName('CCAASEM').AsString;
      cdsDetCxC.FieldByName('CCAASS').AsString := cdsMovCxC.FieldByName('CCAASS').AsString;
      cdsDetCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
   End;
End;

Procedure TFAnticipo.dbgPendientes2DragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFAnticipo.dbgDetCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFAnticipo.Z2bbtnGrabaClick(Sender: TObject);
Var
   xWhere: String;
Begin
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      // consistencia Tipo de Registro
      If Length(DMCXC.cdsDetCxC.FieldByName('TREGID').AsString) = 0 Then
         Raise exception.Create('Falta Tipo de Registro');
      // consistencia Concepto
      If Length(DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString) = 0 Then
      Begin
         dblcTipRegExit(self); // toma las propiedades del registro
         Raise exception.Create('Falta Concepto');
      End;
      // Presupuesto
      xWhere := 'CuentaId=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' AND CIAID=' + QuotedStr(dblcCia.text);
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
      Begin
         If DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S' Then
         Begin
            If Length(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) = 0 Then
            Begin
               Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Partida Presupuestal');
            End;
         End;
      End;
      // consistencia Debe Haber
      If Length(DMCXC.cdsDetCxC.FieldByName('CCDH').AsString) = 0 Then
      Begin
         Raise exception.Create('Falta Debe/Haber');
      End;
      // consistencia Importe de Detalle
      If DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value <= 0 Then
         Raise exception.Create('Falta Importe');

      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'TO' Then
         If DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat <> DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat Then
            Raise Exception.Create('Regenere en Asiento.');
      DMCXC.cdsDetCxC.Next;
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('UBIID').AsString := DMCXC.wsOfi;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'I';
   DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCISC').AsFloat := 0; // En Nota de Credito??
   DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := 0;

   DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;

   DMCXC.cdsmovcxc.FieldByName('CLIEDES').AsString := edtClie.Text;
   DMCXC.cdsmovcxc.FieldByName('CCPTOTOT').AsString := dblcdTipoOpera.text;
   DMCXC.cdsmovcxc.FieldByName('CTATOTAL').AsString := DMCXC.DisplayDescrip('CXC208', 'CUENTAID', 'CPTOCAB', dblcdTipoOpera.Text);

   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG' Then
         DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN' Then
         DMCXC.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;

      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'I1' Then
         DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCIGV').AsFloat + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'TO' Then
         DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat; // Actualiza Montos en Moneda L y E
      DMCXC.cdsDetCxC.Edit;
      //DMCXC.cdsDetCxCCCLote.Value :=dbeLote.Text;
      DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
      If dblcTMon.Text = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
      End
      Else
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
      End;

      DMCXC.cdsPost(DMCXC.cdsDetCxC);
      DMCXC.cdsDetCxC.Next;
   End;

   DMCXC.cdsDetCxC.EnableControls;
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   // ya k pueden cambiar en cualquier momento se asignan aqui
   DMCXC.cdsMovCxC.FieldByName('TMONID').AsString := dblcTMon.Text;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := strtofloat(dbeTCambio.Text);
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := strtofloat(dbeTCambio.Text);
   DMCXC.cdsMovCxC.FieldByName('CCFEMIS').value := dtpFEmis.Date;

   If dblcTMon.Text = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
   End
   Else
   Begin
      DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat, 15, 2);
   End;

{   if rgDoc.itemindex=2 then
   begin
      DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat:=DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat:=DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat:=DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   end;}
   DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
   DMCXC.cdsMovCxC.FieldByName('CCSALORI').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
   DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;

   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.FieldByName('VEID').AsString := xVeId;

   DMCXC.cdsPost(DMCXC.cdsMovCxC);

   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=' + QuotedStr('000') + ' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Grabado con Exito... Pulse Intro para continuar');

   wRegGrab := True;
End;

Procedure TFAnticipo.ActualizaSaldosMovCxC;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
Begin
   // Actualiza Saldo de MovCxP
   DMCXC.cdsMovCxC2.DisableControls;
   DMCXC.cdsMovCxC2.Filtered := False;
   DMCXC.cdsMovCxC2Clone.Filtered := False;
   DMCXC.cdsCanjes.DisableControls;
   xRegAct := DMCXC.cdsCanjes.GetBookmark;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsCanjes.Edit;
      DMCXC.cdsMovCxC2.Setkey;
      DMCXC.cdsMovCxC2.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2.GotoKey Then
      Begin
         xVeID := DMCXC.cdsMovCxC2.FieldByName('VEID').AsString;
         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
         DMCXC.cdsMovCxC2.edit;

         If DMCXC.cdsMovCxC2.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            xPagLoc := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DMCXC.cdsMovCxC2.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;
           //Por ordenes de JCC 01/08/2001
         DMCXC.cdsMovCxC2.FieldByName('FLAGVAR').Value := 'JJ';
         DMCXC.cdsPost(DMCXC.cdsMovCxC2);
      End;
      DMCXC.cdsCanjes.Next;
   End;

   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsMovCxC2Clone.Setkey;
      DMCXC.cdsMovCxC2Clone.FieldByName('CIAID').Value := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('TDIARID').Value := DMCXC.cdsCanjes.FieldByName('TDIARID').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('CCANOMES').Value := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsMovCxC2Clone.FieldByName('CCNOREG').Value := DMCXC.cdsCanjes.FieldByName('CCNOREG').AsString;
      If DMCXC.cdsMovCxC2Clone.GotoKey Then
      Begin
         xVeID := DMCXC.cdsMovCxC2Clone.FieldByName('VEID').AsString;
         If DMCXC.cdsMovCxC2Clone.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            If FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2)
               > FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat, 15, 2) Then
            Begin
               DMCXC.cdsCanjes.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
         DMCXC.cdsMovCxC2Clone.edit;

         If DMCXC.cdsMovCxC2Clone.FieldByName('TMONID').Value = DMCXC.wTMonLoc Then
         Begin
            xPagLoc := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGLOC').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOLOC').AsFloat - xPagLoc, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat / DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCPAGEXT').AsFloat + DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALORI').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCMTOEXT').AsFloat - xPagExt, 15, 2);
            DMCXC.cdsMovCxC2Clone.FieldByName('CCSALLOC').AsFloat := FRound(DMCXC.cdsMovCxC2Clone.FieldByName('CCSALEXT').AsFloat * DMCXC.cdsCanjes.FieldByName('CCTCAMCJE').AsFloat, 15, 2);
         End;
           //Por ordenes de JCC 01/08/2001
         DMCXC.cdsMovCxC2Clone.FieldByName('FLAGVAR').Value := 'JJ';
         DMCXC.cdsPost(DMCXC.cdsMovCxC2Clone);
      End;
      DMCXC.cdsCanjes.Next;
   End;

   DMCXC.cdsCanjes.GotoBookmark(xRegAct);
   DMCXC.cdsCanjes.FreeBookmark(xRegAct);
   DMCXC.cdsCanjes.EnableControls;
   DMCXC.cdsMovCxC2.Filtered := True;
   DMCXC.cdsMovCxC2Clone.Filtered := True;
   DMCXC.cdsMovCxC2.EnableControls;
End;

Procedure TFAnticipo.bbtnCancelaClick(Sender: TObject);
Begin
   // Cancela todas las modificaciones en los
   DMCXC.cdsDetCxC.CancelUpDates;
   DMCXC.cdsMovCxC.CancelUpDates;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
End;

Procedure TFAnticipo.dblcTipRegExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      edtTipReg.Text := DMCXC.DisplayDescrip('TGE128', 'TREGDES', 'TRegID', dblcTipReg.Text);
      If length(edtTipReg.Text) = 0 Then
      Begin
         ShowMessage('Debe Ingresar Tipo de Registro');
         dblcTipReg.SetFocus;
         exit;
      End;
      If DMCXC.cdsDetCxC.State = dsInsert Then
      Begin
         LlenaDetCxC;
      End;
      If DMCXC.cdsDetCxC.State = dsBrowse Then
         DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := dblcTipReg.Text;
      xWhere := 'TRegId=' + '''' + dblcTipReg.Text + '''';
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.BuscaQry('dspTGE', 'TGE128', '*', xWhere, 'TIPDET');
      If DMCXC.cdsQry.FieldByName('CCDH').AsString = 'D' Then
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'H'
      Else
         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
      If DMCXC.cdsDetCxC.State = dsInsert Then
      Begin
         If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then // si es en moneda local
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOMN').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAMN').AsString;
         End
         Else
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOME').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAME').AsString;
         End;
         If Length(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) > 0 Then
         Begin
            dblcdCnpEgrExit(sender);
         End;
      End;
      dblcdCnpEgr.Enabled := True;
      DMCXC.cdsCpto.IndexFieldNames := 'CptoDes';
   End; // si no se apretó botón de cancelar

End;

Procedure TFAnticipo.dblcdCnpEgrExit(Sender: TObject);
Var
   ssql, xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CIAID=' + quotedStr(dblcCia.text) + ' and CPTOID=' + '''' + dblcdCnpEgr.Text + '''';
      If Length(DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xWhere, 'CPTOID')) > 0 Then
      Begin
         DMCXC.cdsDetCxC.edit;
         DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
         If Length(DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString) = 0 Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
         End;
         xWhere := 'CIAID=' + quotedStr(dblcCia.text)
            + ' AND CUENTAID=' + '''' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + '''';
         If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
         Begin
            //** 20/12/2000 - pjsv
            If (DMCXC.cdsQry.FieldByName('CTA_CCOS').AsString = 'S') Then //AND (wActuaPresu = true) then
            Begin
               ssql := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
               DMCXC.cdsCCosto.Close;
               DMCXC.cdsCCosto.DataRequest(ssql);
               DMCXC.cdsCCosto.open;
               dblcdCCosto.Enabled := true;
               dblcdCCosto.Enabled := true
            End
            Else
            Begin
               dblcdCCosto.Enabled := false;
              //** 14/08/2001 - pjsv
               dblcdCCosto.text := '';
               edtCCosto.text := '';
              //**
            End;
            If (DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S') And (wActuaPresu = true) Then
            Begin
               dblcTipPre.Enabled := true;
               dblcdPresup.Enabled := true;
               lblPresu.Enabled := true;
               lblTipPre.Enabled := true;
            End
            Else
            Begin
               dblcTipPre.Enabled := false;
              //** 14/008/2001 - pjsv
               dbeTipPre.Text := '';
               dblcTipPre.Text := '';
               dblcdPresup.Text := '';
               edtPresup.Text := '';
              //**
               dblcdPresup.Enabled := false;
               lblTipPre.Enabled := false;
               lblPresu.Enabled := false;
            End;
            //**
         End;
      End
      Else
      Begin
         ShowMessage(' Concepto NO encontrado, reintente!');
         dblcdCnpEgr.SetFocus;
      End;

   End;
End;

///////// procedimientos para actulizar campos en cualquier momento... inicio

Procedure TFAnticipo.dblcTMonChange(Sender: TObject);
Begin
End;

///////// procedimientos para actulizar campos en cualquier momento... fin

Procedure TFAnticipo.bbtnBorraClick(Sender: TObject);
Var
   xFiltro: String;
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'X') Or
         (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T') Then
      Begin
         DMCXC.cdsDetCxC.CancelUpdates;
         DMCXC.cdsMovCxC2.CancelUpdates;
         DMCXC.cdsCanjes.CancelUpdates;
         DMCXC.cdsMovCxC.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
         //** 14/08/2001 - pjsv
         xFiltro := 'CIAID=' + quotedstr('');
         Filtracds(DMCXC.cdsMovCxC2, 'Select * from CXC301 Where ' + xFiltro);
         //**
         InsertaRegistro;
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      End;
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') Then
      Begin
         DMCXC.cdsMovCxC.CancelUpDateS;
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      End;
   End
   Else
   Begin
      DMCXC.cdsMovCxC.CancelUpDateS;
      EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
   End;
End;

Procedure TFAnticipo.bbtnGen302Click(Sender: TObject);
Var
   I: Integer;
   wTasa, wSubT: Double;
Begin
//*---------------------------------------->

   If DMCXC.cdsDetCxC.RecordCount > 0 Then
   Begin
      If MessageDlg('Recalcular Detalle de Anticipo' + chr(13) + '       ¿Esta Seguro?       ',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
         exit;
   End;
   //DMCXC.cdsDetCxC.EmptyDataSet;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.EOF Do
   Begin
      DMCXC.cdsDetCxC.Delete;
   End;

   wSubT := 0;
   DMCXC.cdsCanjes.DisableControls; // inhab. movim. de puntero pal grid

   DMCXC.cdsTipReg.SetKey;
   DMCXC.cdsTipReg.FieldByName('TIPDET').AsString := 'I1';
   DMCXC.cdsTipReg.Gotokey;
   wTasa := DMCXC.cdsTipReg.FieldByName('TASA').Value;
   //
   //for I:=1 to 3 do
   DMCXC.cdsModelo.First;
   While Not DMCXC.cdsModelo.EOF Do
   Begin //llena el archivo contable (sugerido)
      DMCXC.cdsDetCxC.Insert;
      LlenaDetCxC;
       // VHN
       {if I=1 then DMCXC.cdsTipReg.Locate('TIPDET',VarArrayOf(['MG']),[]);
       if I=2 then DMCXC.cdsTipReg.Locate('TIPDET',VarArrayOf(['I1']),[]);
       if I=3 then DMCXC.cdsTipReg.Locate('TIPDET',VarArrayOf(['TO']),[]);}

      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsModelo.FieldByName('TREGID').AsString;
      DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsModelo.FieldByName('TIPDET').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsModelo.FieldByName('CCDH').AsString;

      DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsModelo.FieldByName('CPTOID').AsString;
      DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsModelo.FieldByName('CUENTAID').AsString;

       //DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsModelo.FieldByName('TREGDES').AsString;
      DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := edtClie.text;

      wTDev2 := DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'MN' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;
      End;
      If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'MG' Then
      Begin
         wSubT := FRound(wTDev2 / ((wTasa / 100) + 1), 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wSubT;
      End;
      If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'I1' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(wTDev2 - wSubT, 15, 2);
      End;
      If DMCXC.cdsModelo.FieldByName('TIPDET').AsString = 'TO' Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;
      End;
      DMCXC.cdsModelo.Next
   End;
   //CLG: 26/02/2002
   // INSERTA EL TOTAL
   DMCXC.cdsDetCxC.Insert;
   LlenaDetCxC;
   // VHN
   {if I=1 then DMCXC.cdsTipReg.Locate('TIPDET',VarArrayOf(['MG']),[]);
   if I=2 then DMCXC.cdsTipReg.Locate('TIPDET',VarArrayOf(['I1']),[]);
   if I=3 then DMCXC.cdsTipReg.Locate('TIPDET',VarArrayOf(['TO']),[]);}

   DMCXC.cdsDetCxC.Edit;
   DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.cdsCptoCab.FieldByName('TREGID').AsString;
   DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := DMCXC.cdsCptoCab.FieldByName('TIPDET').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsCptoCab.FieldByName('CCDH').AsString;

   DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsCptoCab.FieldByName('CPTOCAB').AsString;
   DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsCptoCab.FieldByName('CUENTAID').AsString;

   {DMCXC.cdsCpto.IndexFieldNames  :='CptoId';
   DMCXC.cdsCpto.SetKey;
   DMCXC.cdsCpto.FieldByName('CPTOID').AsString := DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString;
   if DMCXC.cdsCpto.Gotokey then}
   DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.cdsCptoCab.FieldByName('CPTODES').AsString;
   DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := wTDev2;

   // INSERTA EL TOTAL

   DMCXC.cdsPost(DMCXC.cdsDetCxC);
   DMCXC.cdsDetCxC.Post;
End;

Procedure TFAnticipo.dbgDetCxCEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = bbtnDel1 Then
   Begin
      If DMCXC.cdsDetCxC.RecordCount > 0 Then DMCXC.cdsDetCxC.Delete;
      If (DMCXC.cdsDetCxC.RecordCount = 0) And (wTDev2 > 0) Then bbtnGen302.Enabled := True;
   End;
End;

Procedure TFAnticipo.dbgDetCxCMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDetCxC.BeginDrag(False);
End;

Procedure TFAnticipo.bbtnDel1DragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFAnticipo.bbtnCalcClick(Sender: TObject);
Begin
   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación
End;

Procedure TFAnticipo.edtNoDocExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;

   If edtNoDoc.Text = '' Then
   Begin
      ShowMessage('Falta No. de Documento');
      edtNoDoc.SetFocus;
      exit;
   End;

   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, '000', edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('Documento ya Fue Registrado');
   End;
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := '000';
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
   InicializaPnlCab2;
   DMCXC.cdsMovCxC.Post;
End;

Procedure TFAnticipo.InicializaPnlCab2;
Begin
   dtpFComp.date := 0;
   dbeNoReg.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCambio.Text := '';
   dtpFEmis.date := 0;
End;

Procedure TFAnticipo.Z2bbtnContabClick(Sender: TObject);
Begin
   xTMes := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
   xTAno := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);

   //** 12/09/2001 - pjsv
   If DMCXC.MesCerrado(xTMes, xTAno, dblcCia.text) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;
   //**

   If MessageDlg('Contabilización de Anticipo ' + chr(13) + '       ¿Esta Seguro?       ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString := 'S';
   DMCXC.cdsMovCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
   DMCXC.cdsMovCxC.Post;

   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.ReadOnly := False;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.Eof Do
   Begin
      DMCXC.cdsDetCxC.Edit;
      DMCXC.cdsDetCxC.FieldByName('CCFLCDR').Value := 'S';
//      DMCXC.cdsMovCxCCCCmprb.AsString:=dbeNoReg.text;
//wmc 0311
      DMCXC.cdsDetCxC.FieldByName('CCCMPRB').AsString := dbeNoReg.text;
      DMCXC.cdsDetCxC.Next;
   End;
   DMCXC.cdsDetCxC.ReadOnly := True;
   DMCXC.cdsDetCxC.EnableControls;

 //  DMCXC.GeneraContabilidad(dblcCia.Text,wTDiar,xAAMM,dbeNoReg.text, Self );
   DMCXC.GeneraContab(dblcCia.Text, DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString, Self, 'C');

   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=' + QuotedStr('000') + ' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   ShowMessage('Registro Contabilizado... Pulse Intro para continuar');
End;

Procedure TFAnticipo.Z2bbtnNuevoClick(Sender: TObject);
Begin
   // si no es NC Contabilizada existente Ó Anulado ---> para evitar confirmacion
   If MessageDlg('Registra un Nuevo Documento' + chr(13) +
      '          ¿Esta Seguro?  ', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   InicializaCds;
   InicializaVars;
   edtTipoOpera.Text := '';
   dblcdTipoOpera.Text := '';

   InsertaRegistro;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFAnticipo.Z2bbtnAnulaClick(Sender: TObject);
Begin
   If (DMCXC.cdsMovCxC.Modified) Or (DMCXC.cdsMovCxC.ChangeCount > 0) Then
      Raise exception.Create(' Debe Grabar primero ');

   If (FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat, 15, 2) <> FRound(DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat, 15, 2)) Or
      (FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat, 15, 2) <> FRound(DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat, 15, 2)) Then
   Begin
      Raise Exception.create('No se puede Anular, porque se encuentra en proceso de canje');
   End;

   If (DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat > 0) Or (DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat > 0) Then
   Begin
      Raise Exception.create('No se puede Anular, pues el Anticipo se ha aplicado');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Anular, pues el Anticipo ya se encuentra Anulada');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Anular, pues el Anticipo ya se encuentra Contabilizado');
   End;

   If DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If MessageDlg('Anular el Anticipo' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').Asstring = 'P' Then
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').Asstring, DMCXC.cdsMovCxC.FieldByName('CCANOMES').Asstring,
         DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString,
         '-', (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMONID').AsString);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'A';
   DMCXC.cdsMovCxC.Post;
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=' + QuotedStr('000') + ' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);

   ShowMessage('Registro Anulado... Pulse Intro para continuar');
End;

Procedure TFAnticipo.Z2bbtnAceptaClick(Sender: TObject);
Begin

   If (DMCXC.cdsMovCxC.Modified) Or (DMCXC.cdsMovCxC.ChangeCount > 0) Then
      Raise exception.Create(' Debe Grabar primero ');
   If DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If DMCXC.cdsDetCxC.RecordCount = 0 Then
      Raise exception.Create('Ingrese Detalle Contable');

//   if (not VerificaTotal) then
//     raise exception.Create('Monto Total del Anticipo no cuadra con Total de Documentos seleccionados');

   If Not CuadraDH Then Raise exception.Create('Error: Asiento No Cuadra');

   If MessageDlg('Aceptar El Anticipo' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   DMCXC.cdsDetCxC.DisableControls;
   screen.Cursor := crHOURGLASS;
   pnlActuali.Visible := true;
   pnlActuali.Refresh;
     //**
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').Value := 'P';
   DMCXC.cdsMovCxC.FieldByName('FLAGVAR').AsString := '.';
   DMCXC.cdsMovCxC.FieldByName('CCPAGORI').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := 0;
   DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := 0;
   DMCXC.cdsMovCxC.Post;

   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=' + QuotedStr('000') + ' AND '
      + 'CCNODOC=' + QuotedStr(edtNoDoc.Text));
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString,
      DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').Asstring,
      '-', DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').Asfloat, DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

   If wActuaPresu Then CalculoNivel;

   ShowMessage('Registro Aceptado... Pulse Intro para continuar');
   DMCXC.cdsDetCxC.EnableControls;
   pnlActuali.Visible := false;
   screen.Cursor := crDEFAULT;
 //**
End;

Procedure TFAnticipo.GrabaDetCanje;
Begin
   Filtracds(DMCXC.cdsDetCanje, 'Select * from CXC305 Where CIAID=''''');

   DMCXC.cdsDetCanje.First;
   DMCXC.cdsDetCanje.EmptyDataSet;

   DMCXC.cdsCanjes.DisableControls;
   DMCXC.cdsCanjes.First;
   While Not DMCXC.cdsCanjes.Eof Do
   Begin
      DMCXC.cdsDetCanje.Insert;
      DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := DMCXC.cdsCanjes.FieldByName('CIAID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsCanjes.FieldByName('CLIEID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.cdsCanjes.FieldByName('CLIERUC').AsString;
      DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsCanjes.FieldByName('CCANOMM').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
      DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := DMCXC.cdsCanjes.FieldByName('TCANJEID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCCANJE').AsString := DMCXC.cdsCanjes.FieldByName('CCCANJE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDatetime := DMCXC.cdsCanjes.FieldByName('CCFCANJE').AsDatetime;
      DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.cdsMovCxC.FieldByName('DOCID').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString;
      DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsCanjes.FieldByName('TMONID').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.cdsCanjes.FieldByName('CCUSER').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCFREG').Value := DMCXC.cdsCanjes.FieldByName('CCFREG').AsDatetime;
      DMCXC.cdsDetCanje.FieldByName('DCCHREG').Value := DMCXC.cdsCanjes.FieldByName('CCHREG').Value;
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsCanjes.FieldByName('CCAAAA').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsCanjes.FieldByName('CCMM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsCanjes.FieldByName('CCDD').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsCanjes.FieldByName('CCTRI').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsCanjes.FieldByName('CCSEM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsCanjes.FieldByName('CCSS').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsCanjes.FieldByName('CCAATRI').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsCanjes.FieldByName('CCAASEM').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsCanjes.FieldByName('CCAASS').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOORI').AsFloat, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOLOC').AsFloat, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsCanjes.FieldByName('CCMTOEXT').AsFloat, 15, 2);
      DMCXC.cdsPost(DMCXC.cdsDetCanje);
      DMCXC.cdsCanjes.Next;
   End;
   DMCXC.cdsDetCanje.First;
   DMCXC.cdsCanjes.EnableControls;

   DMCXC.AplicaDatos(DMCXC.cdsDetCanje, 'DetCanje');
End;

//////  F U N C I O N E S   //////

Procedure TFAnticipo.CamposKEnabled(PVal: Boolean);
Begin
   dblcCia.Enabled := PVal;
   dblcdClie.Enabled := PVal;
   dblcdClieRuc.Enabled := PVal;
   edtNoDoc.Enabled := PVal;
   dtpFComp.Enabled := PVal;
   dbeNoReg.Enabled := PVal;
End;

Function TFAnticipo.VerificaTotal: Boolean;
Var
   xSQL: String;
   wTDev22: Double;
Begin
   wTDev22 := 0;
   xSQL := ' Select * From CXC302' +
      ' Where CIAID=' + '''' + dblcCia.Text + '''' +
      ' and TDIARID=' + '''' + wTDiar + '''' +
      ' and CCNOREG=' + '''' + dbeNoReg.Text + '''' +
      ' and CCANOMES=' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' +
      ' and TIPDET=' + '''' + 'TO' + '''';
   DMCXC.cdsDetCxC2.Close;
   DMCXC.cdsDetCxC2.DataRequest(xSQL);
   DMCXC.cdsDetCXC2.Open;
   DMCXC.cdsDetCXC2.First;
   If DMCXC.cdsDetCXC2.RecordCount = 0 Then
      Raise exception.Create('No hay documentos para Totalizar')
   Else
   Begin
      While Not DMCXC.cdsDetCXC2.Eof Do
      Begin
         wTdev22 := wTdev22 + DMCXC.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
         DMCXC.cdsDetCXC2.Next;
      End;
      If FRound(wTDev2, 15, 2) <> FRound(wTdev22, 15, 2) Then
         result := False
      Else
         result := True;
   End;
End;

Function TFAnticipo.CuadraDH: Boolean;
Var
   wTotD, wTotH: Double;
   xDife, xdife1: Double; //** 05/12/2000 - pjsv
Begin
   With DMCXC Do
   Begin
      wTotD := 0;
      wTotH := 0;
      cdsDetCxC.DisableControls;
      cdsDetCxC.First;
      While Not cdsDetCxC.Eof Do
      Begin
         If cdsDetCxC.FieldByName('CCDH').Value = 'D' Then
            wTotD := wTotD + cdsDetCxC.FieldByName('CCMTOORI').AsFloat
         Else
            wTotH := wTotH + cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         cdsDetCxC.Next;
      End;
      cdsDetCxC.First;
      cdsDetCxC.EnableControls;
   //** 05/12/2000 - pjsv - para que cuadre cuado la <> es <= 0.02
      xdife1 := FRound(wTotD, 15, 2) - FRound(wTotH, 15, 2);
      If FRound(wTotD, 15, 2) > FRound(wTotH, 15, 2) Then
         xdife := FRound(wTotD, 15, 2) - FRound(wTotH, 15, 2);
      If FRound(wTotH, 15, 2) > FRound(wTotD, 15, 2) Then
         xdife := FRound(wTotH, 15, 2) - FRound(wTotD, 15, 2);
      If xdife <= 0.02 Then
      Begin
         If FRound(wTotD, 15, 2) > FRound(wTotH, 15, 2) Then
            wTotH := FRound(wTotH, 15, 2) + xdife;
         If FRound(wTotH, 15, 2) > FRound(wTotD, 15, 2) Then
            wTotD := FRound(wTotD, 15, 2) + xdife;
         DMCXC.cdsDetCxC.First;
         DMCXC.cdsDetCxC.Edit;
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(cdsDetCxC.FieldByName('CCMTOORI').AsFloat, 15, 2) + xdife1;
         DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
         DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
         DMCXC.cdsPost(DMCXC.cdsDetCxC);
         DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DETCXC');
      End;
   //**
      If Redondea(wTotD) = redondea(wTotH) Then
         result := True
      Else
         result := False;
   End;
End;
//////  F U N C I O N E S   //////

Procedure TFAnticipo.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
   Tmp: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   Tmp := StrTmp;
   dblcdTipoOpera.Enabled := False;
   If DMCXC.cdsMovCxC.state In [dsInsert, dsedit] Then
      DMCXC.cdsMovCxC.FieldByName('TMONID').AsString := trim(DMCXC.cdsMovCxC.FieldByName('TMONID').AsString);

   If trim(dblcTMon.Text) = '' Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      StrTmp := Tmp;
      exit;
   End;

   //if trim( dblcTMon.Text ) <> StrTmp then
   Begin
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + ''''
         + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONABR,TMONDES', xWhere, 'TMONDES');
      xdesmon := DMCXC.cdsQry.FieldByName('TMONDES').AsString;
      wSimbMn := DMCXC.cdsQry.FieldByName('TMONABR').AsString;
      If length(edtTMon.Text) = 0 Then
      Begin
         ShowMessage('Tipo de Moneda Equivocada');
         dblcTMon.SetFocus;
         StrTmp := Tmp;
         exit;
      End
      Else
      Begin
         DMCXC.cdscpto.Close;
         If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
               + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )');
            DMCXC.cdscpto.Open;
         End
         Else
         Begin
            DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
               + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
            DMCXC.cdscpto.Open;
         End;
         DMCXC.cdscptoCab.Close;
         DMCXC.cdscptoCab.DataRequest('SELECT * FROM CXC208 WHERE OPCMENU=''P'' AND DOCID=' + QuotedStr(wtDoc) +
            ' AND TMONID=' + QuotedStr(dblcTMon.text) + ' AND TVTAID=' + QuotedStr(xSector) +
            ' AND CIAID=' + QuotedStr(dblcCia.text));
         DMCXC.cdscptoCab.Open;
         If DMCXC.wModo = 'A' Then
            If DMCXC.cdscptoCab.RecordCount = 1 Then
            Begin
               DMCXC.cdscptoCab.First;
               dblcdTipoOpera.text := DMCXC.cdscptoCab.FieldByName('CPTOCAB').AsString;
            End;
         dblcdTipoOpera.Enabled := True;
      End;
   End;

{   xWhere:='TMonId='''+dblcTMon.Text+''' and (TMon_Loc=''L'' or TMon_Loc=''E'')';
   edtTMon.Text:=DMCXC.BuscaQry('dspTGE','TGE103','*',xWhere,'TMONDES');

   if length(edtTMon.Text)=0 then begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   end;}

End;

Procedure TFAnticipo.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsTDoc.Filtered := True;

   DMCXC.cdsDetCxC.CancelUpDateS;
   DMCXC.cdsMovCxC2.CancelUpDateS;
   DMCXC.cdsCanjes.CancelUpDateS;

   If DMCXC.wModo = 'A' Then
   Begin
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'X') Or
         (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'T') Then
      Begin
         DMCXC.cdsMovCxC.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
      End;
      If (DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I') Then
      Begin
         DMCXC.cdsMovCxC.CancelUpDateS;
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      End;
   End
   Else
   Begin
      DMCXC.cdsMovCxC.CancelUpDateS;
      EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
   End;

   DMCXC.cdsMovCxC.ReadOnly := False;
   DMCXC.cdsCanjes.ReadOnly := False;
   DMCXC.cdsMovCxC2.ReadOnly := False;
   DMCXC.cdsDetCxC.ReadOnly := False;

   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := caFree;
End;

Procedure TFAnticipo.bbtnRegresaClick(Sender: TObject);
Begin
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);
End;

Procedure TFAnticipo.dbeTCambioExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;
   If length(dbeTCambio.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Cambio');
      dbeTCambio.SetFocus;
      exit;
   End;
   dbeTCambio.Text := floattostr(strtofloat(dbeTCambio.Text));
   If strtofloat(dbeTCambio.Text) < 0 Then
   Begin
      ShowMessage('Tipo de Cambio debe ser Mayor a 0');
      dbeTCambio.Text := '';
      dbeTCambio.SetFocus;
      exit;
   End;
End;

Procedure TFAnticipo.edtSerieXKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then edtNoDoc.setfocus;
End;

Procedure TFAnticipo.dbeNoRegExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If (bbtnBorra.Focused) Or (dtpFComp.Focused) Then Exit;

   dbeNoReg.Text := dbeNoReg.Text;
   dbeNoReg.Text := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);

   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, '000', edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('No.de Documento Duplicado');
   End;
   If DMCXC.BuscaCxCReg(dblcCia.Text, wTDiar, xAAMM, dbeNoReg.Text) Then
   Begin
      dbeNoReg.SetFocus;
      Raise Exception.Create('No.de Registro Duplicado');
   End;

   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := dbeNoReg.Text;
   dbeNoReg.Text := DMCXC.GrabaUltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes, StrToInt(dbeNoReg.Text));
   dbeNoReg.Text := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString := wTDiar;
   DMCXC.cdsMovCxC.FieldByName('CCSERIE').AsString := '000';
   DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString := edtNoDoc.Text;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';

   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   FiltraGrids;
   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFAnticipo.dblcdClieKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dblcdClieRuc.setfocus;
End;

Procedure TFAnticipo.edtNoDocKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dtpFComp.setfocus;
End;

Procedure TFAnticipo.dtpFCompKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dbeNoReg.setfocus;
End;

Procedure TFAnticipo.dbeLoteKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dblcTMon.setfocus;
End;

Procedure TFAnticipo.dblcTMonKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then dbeTCambio.setfocus;
End;

Procedure TFAnticipo.dtpFEmisKeyPress(Sender: TObject; Var Key: Char);
Begin
//   If Key=#13 then bbtnOK.setfocus;
End;

Procedure TFAnticipo.btnActRegClick(Sender: TObject);
Begin
   pnlDetCxC.Enabled := False;
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   DMCXC.cdsDetCxC.Insert;
   dblcTipReg.Enabled := True;
   dblcTipReg.Text := '';
   dblcTipReg.SetFocus;
End;

Procedure TFAnticipo.bbtnRegOkClick(Sender: TObject);
Var
   xWhere: String;
Begin
   // VALIDA LA CUENTA DEL CONCEPTO
   If (DMCXC.LaCuentaSeRegistraSoloEnME(dblcCia.text, dblcdCnpEgr.text, '')) And (dblcTMon.text = DMCXC.wTMonLoc) Then
   Begin
      Raise Exception.Create('La cuenta ' + DMCXC.cdsQry.FieldByName('CUENTAID').AsString + ' del Concepto ' + dblcdCnpEgr.text + ' Se registra sólo en Moneda Extranjera.');
   End;

   //
   If length(DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Concepto');
   End;
   // Presupuesto
   xWhere := 'CuentaId=' + '''' + DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString + '''';
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE202', '*', xWhere, 'CuentaId')) > 0 Then
   Begin
      If DMCXC.cdsQry.FieldByName('CTA_PRES').AsString = 'S' Then
      Begin
         If Length(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) = 0 Then
         Begin
            Raise exception.Create('Cuenta ' + Trim(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) + ' Obliga Partida Presupuestal');
         End;
      End;
   End;
   // consistencia Debe Haber
   If length(DMCXC.cdsDetCxC.FieldByName('CCDH').AsString) = 0 Then
   Begin
      dblcTipRegExit(self); // toma las propiedades del registro
      Raise exception.Create('Falta Debe/Haber');
   End;

   If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
      If DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat > 0 Then
      Begin
         DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      End;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
      DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
   End;

   If DMCXC.cdsDetCxC.State = dsInsert Then
   Begin
      DMCXC.cdsPost(DMCXC.cdsDetCxC);
      DMCXC.cdsDetCxC.Post;
      DMCXC.cdsDetCxC.Insert;
      dblcTipReg.Text := '';
      dblcTipReg.Enabled := True;
      dblcTipReg.SetFocus;
   End
   Else
   Begin
      DMCXC.cdsPost(DMCXC.cdsDetCxC);
      DMCXC.cdsDetCxC.Post;
      pnlRegistro.Visible := False;
      pnlDetCxC.Enabled := True;
   End;
End;

Procedure TFAnticipo.bbtnRegCancClick(Sender: TObject);
Begin
   If DMCXC.cdsDetCxC.State = dsInsert Then
      DMCXC.cdsDetCxC.Delete
   Else
   Begin
      DMCXC.cdsDetCxC.Cancel;
   End;
   pnlRegistro.Visible := False;
   pnlDetCxC.Enabled := True;
   dbgDetCxC.SetFocus;
End;

Procedure TFAnticipo.dbeDHExit(Sender: TObject);
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      If (dbeDH.Text <> 'D') And (dbeDH.Text <> 'H') Then
      Begin
         ShowMessage('Digite sólo D(para Debe) o H(para Haber)');
         DMCXC.cdsDetCxC.FieldByName('CCDH').Value := '';
         dbeDH.SetFocus;
      End;
   End;
End;

Procedure TFAnticipo.dbeImporteExit(Sender: TObject);
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      If length(dbeImporte.Text) = 0 Then
         dbeImporte.Text := '0';
      If strtofloat(dbeImporte.Text) <= 0 Then
      Begin
         ShowMessage('Importe debe ser mayor que 0');
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value := 0;
         dbeImporte.SetFocus;
      End;
   End;
End;

Procedure TFAnticipo.dbgDetCxCKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsDetCxC.Delete;
      End;
   End;
End;

Procedure TFAnticipo.dbgDetCxCDblClick(Sender: TObject);
Begin
   If btnActReg.Enabled Then
   Begin
      pnlDetCxC.Enabled := False;
      pnlRegistro.Visible := True;
      pnlRegistro.SetFocus;
      DMCXC.cdsDetCxC.Edit;
      dblcTipReg.Text := DMCXC.cdsDetCxC.FieldByName('TREGID').AsString;
      dblcTipRegExit(Sender);
      dblcTipReg.Enabled := False;
      dblcdCnPEgr.SetFocus;
   End;
End;

Procedure TFAnticipo.dbgDetCanjeCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
{   If DMCXC.wVRN_PagosParciales='S' then begin
      If (FIELD.FieldName='CCPFCJE')  or
         (FIELD.FieldName='DCDTCAMB') or
         (FIELD.FieldName='DCDMOLOC') or
         (FIELD.FieldName='DCDMOEXT') then begin
         AFont.Color  := clBlack;
         ABrush.Color := clWindow;
      end;
   end;}
End;

Procedure TFAnticipo.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If FAnticipo.activecontrol Is twwdbgrid Then
      Exit;
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFAnticipo.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFAnticipo.dbgDocCanjeDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFAnticipo.Z2bbtnImprimeClick(Sender: TObject);
Var
   Comprobante: RCabComprobante;
Begin
   With Comprobante Do
   Begin
      CIAID := dblcCia.Text;
      CiaDes := edtCia.Text;
      TDIARID := DMCXC.cdsDetCxC.FieldByName('TDIARID').Value; // Default(x ahora)
      Diario := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDiarID', TDIARID);
      Periodo := copy(datetostr(dtpFComp.date), 7, 4)
         + copy(datetostr(dtpFComp.date), 4, 2);
      NoComp := dbeNoReg.Text;
      TipoDoc := DMCXC.DisplayDescrip('TGE110', 'DOCDES', 'DOCID', wTDoc);
      NoDoc := edtNoDoc.Text;
      TipoCamb := dbeTCambio.Text;
      Proveedor := edtClie.Text;
      Lote := '';
      Moneda := edtTMon.text;
      Glosa := ''; //dbeGlosa.Text ;
      //nuevos
      Banco := ''; //edtBanco.text ;
      Cuenta := ''; //edtCuenta.Text ;
      NumChq := ''; //dbeNoChq.text ;
   End;
   FRegistros.ImprimirComprobante(Comprobante);
End;

Procedure TFAnticipo.dtpFEmisEnter(Sender: TObject);
Begin
   dtpFEmis.Enabled := True;
End;

Procedure TFAnticipo.dtpFEmisExit(Sender: TObject);
Var
   wLote, wMes, xWhere: String;
   Year, Month, Day: Word;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If dtpFEmis.date = 0 Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Fecha ');
   End;
   If DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   xxTCambio := 0;
   xWhere := 'TMonId=' + '''' + DMCXC.wTMonExt + '''' + ' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dtpFEmis.Date) + '''' + ')';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', 'TMONID,TCAM' + DMCXC.wVRN_TipoCambio, xWhere, 'TMonId')) > 0 Then
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
   Else
   Begin
      dtpFEmis.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   DecodeDate(dtpFEmis.Date, Year, Month, Day);
   wMes := inttostr(Month);
   If Month < 10 Then wMes := '0' + inttostr(Month);
   xAAMM := IntToStr(Year) + wMes;
   xTAno := IntToStr(Year);
   xTMes := wMes;
   dbeNoReg.Text := DMCXC.UltimoRegistro(xTAutoNum, dblcCia.Text, wTDiar, xTAno, xTMes);
   xWhere := 'TDiarId=' + '''' + wTDiar + '''' + ' and CCAnoMes=' + '''' + xAAMM + '''';
   wLote := DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCLote', xWhere);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFCMPRB').AsDatetime := dtpFEmis.Date;
   DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString := StrZero(dbeNoReg.Text, DMCXC.cdsMovCxC.FieldByName('CCNOREG').Size);
   DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString := xTAno + xTMes;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat := xxTCambio;
   DMCXC.cdsMovCxC.FieldByName('CCTCAMPA').AsFloat := xxTCambio;
End;

Procedure TFAnticipo.dblcdClieEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

//   DMCXC.cdsClie.IndexFieldNames:='ClieDes';
End;

Procedure TFAnticipo.dblcdClieRucEnter(Sender: TObject);
Begin
   If dblcClAux.Text = '' Then
      dblcClAux.SetFocus;

//   DMCXC.cdsClie.IndexFieldNames:='ClieDes';
End;

Procedure TFAnticipo.dblcClAuxExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   If length(dblcClAux.text) = 0 Then
   Begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   End;

   Filtracds(DMCXC.cdsClie, 'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID=' + QuotedStr(dblcCia.text) + ' AND CLAUXID=' + QuotedStr(dblcClAux.Text));
End;

Procedure TFAnticipo.bbtnAceptaClick(Sender: TObject);
Var
   xWhere, xc1, xc2, xc3: String;
Begin
   If DMCXC.BuscaCxCDoc(dblcCia.Text, wTDoc, '000', edtNoDoc.Text) Then
   Begin
      edtNoDoc.SetFocus;
      Raise Exception.Create('Documento ya Fue Registrado');
   End;
   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'T';
   DMCXC.cdsPost(DMCXC.cdsMovCxC);
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=' + QuotedStr('000') + ' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   If DMCXC.wModo = 'A' Then
   Begin
      xWhere := 'CIAID=' + QuotedStr(dblcCia.Text) + ' AND TCANJEID=' + QuotedStr('AN');
      xc1 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', xWhere), 6);
      xc2 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', xWhere), 6);
      xc3 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', xWhere), 6);
      If xc1 > xc2 Then
         wCje := xc1
      Else
         wCje := xc2;

      If wCje < xc3 Then
         wCje := xc3;
   End;

   EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
End;

Procedure TFAnticipo.dblcdCCostoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Not bbtnRegCanc.Focused Then
   Begin
      xWhere := 'CCOSID=''' + dblcdCCosto.Text + '''';
      edtCCosto.Text := DMCXC.BuscaQry('dspTGE', 'TGE203', 'CCOSDES', xWhere, 'CCOSDES');
      If Length(edtCCosto.Text) = 0 Then
      Begin
         dblcdCCosto.SetFocus;
         Raise exception.Create('Centro de Costo Errado');
      End;
   End;
End;

Procedure TFAnticipo.z2bbtnEmiteDocClick(Sender: TObject);
Var
   xReporte, xCampoFlag, xWhere: String;
   dd, mm, aa: word;
   sComerid, sDocumento, sSerie, sDocid, sCanje, sWhere: String;
   xIGV, xTotal: real;
Begin
   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CCSERIE=' + QuotedStr('000') +
      ' AND CCNODOC=' + QuotedStr(edtNoDoc.text);
//  sCanje:=DMCXC.BuscaQry2('dspTGE','CXC301','CCCANJE',sWhere,'CCCANJE');
   sCanje := DMCXC.cdsMovCxc.FieldByName('CCCANJE').AsString;
   sDocid := DMCXC.cdsCanjes.FieldByName('DOCID').AsString;
   sSerie := DMCXC.cdsCanjes.FieldByName('CCSERIE').AsString;
   sDocumento := DMCXC.cdsCanjes.FieldByName('CCNODOC').AsString;

   pprptNotaCred.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\ANTICIPOS.RTM';
   pprptNotaCred.template.LoadFromFile;
   ppdbpNotaCred.DataSource := DMCXC.dsDetCxC;
   pprptNotaCred.DataPipeline := ppdbpNotaCred;

   DMCXC.cdsDetCxC.DisableControls;
   DMCXC.cdsDetCxC.filter := ' TIPDET = ''MN'' OR TIPDET = ''MG'' ';
   DMCXC.cdsDetCxC.filtered := true;

   pplblNCRazon.text := DMCXC.BuscaQry2('dspTGE', 'TGE204', 'CLIERUC,CLIEDIR,CLIEDES', 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + QuotedStr(dblcdClie.text), 'CLIEDES');
   pplblNCDIR.text := DMCXC.cdsQry6.FieldByName('CLIEDIR').AsString;
   pplblNCRUC.text := DMCXC.cdsQry6.FieldByName('CLIERUC').AsString;
   pplblNCClie.text := dblcdClie.text;
   pplblNCFactura.text := sSerie + sDocumento;

   sWhere := 'CIAID=' + QuotedStr(dblcCia.text) +
      ' AND CCSERIE=' + QuotedStr(sSerie) +
      ' AND CCNODOC=' + QuotedStr(sDocumento);
   pplblNCVendedor.text := DMCXC.BuscaQry2('dspTGE', 'CXC301', 'DOCID,CCFEMIS,VEID,CCOMERID', sWhere, 'VEID');
   pplblNCFacFecha.text := DMCXC.cdsQry6.FieldByName('CCFEMIS').AsString;
   sComerid := DMCXC.cdsQry6.FieldByName('CCOMERID').AsString;
   pplblNCConPagoID.text := DMCXC.BuscaQry2('dspTGE', 'CXC101', 'CCOMERDES', 'CCOMERID=' + QuotedStr(sComerId), 'CCOMERDES');

   decodeDate(dtpFEmis.date, aa, mm, dd);
   pplblNCDIA1.text := IntToStr(dd);
   pplblNCMES1.text := DMCXC.NombreMes(mm);
   pplblNCANO1.text := 'DEL  ' + IntToStr(aa);
   pplblAno.text := DMCXC.DisplayDescrip('TGE185', 'GLOSA', 'ANIO', IntToStr(aa));

   pplblNCLetras.Caption := 'SON:' + Trim(strNum(DMCXC.cdsMovCxc.FieldByName('CCMTOORI').AsFloat) + '   ' + DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text));
   xIgv := DMCXC.cdsMovCxc.FieldByName('CCIGV').AsFloat;
   xTotal := DMCXC.cdsMovCxc.FieldByName('CCMTOORI').AsFloat;
   pplblNCIGV.Caption := FloatToStrF(xIgv, ffFixed, 15, 2);
   pplblNCTotal.Caption := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMon.text) + ' ' + FloatToStrF(xTotal, ffFixed, 15, 2);
   pprptNotaCred.Print;
  //ppDesigner1.ShowModal;
   DMCXC.cdsDetCxC.filtered := False;
   DMCXC.cdsDetCxC.EnableControls;
End;

Procedure TFAnticipo.EmiteDoc(xArchivoReporte: String);
Var
   i,
      Banda,
      Componente: Integer;
   PPREPORT1: TppReport;
   ppdbpipeline1: Tppdbpipeline;
   xSQL,

   xFiltro: String;
   cdsEmiDoc: TwwclientDataset;
   dsEmiDoc: TwwDataSource;
   cdsClone: TwwClientDataset;
   j: Integer;
Begin
   Try
      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin
         xSQL :=
            '    SELECT CNT201.AUXNOMB PPRAZON, CNT201.AUXDIR PPDIRECCION,CXC301.CLIERUC PPRUC,                                                       '
            + '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIA,             '
            + '           CASE WHEN LENGTH(RTRIM(CHAR(MONTH(CCFEMIS))))< 2 THEN ''0''||CHAR(MONTH(CCFEMIS)) ELSE CHAR(MONTH(CCFEMIS)) END PPMES,       '
            + '           CHAR(YEAR(CCFEMIS)) PPANO,                                                                                                   '
            + '           CCIGV PPIGV,CCMTOORI PPTOTAL,                                                                                                '
            + '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIAN,            '
            + '           CASE WHEN MONTH(CCFEMIS)= 1 THEN ''Enero''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 2 THEN ''Febrero''                                                                                 '
            + '                WHEN MONTH(CCFEMIS)= 3 THEN ''Marzo''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 4 THEN ''Abril''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 5 THEN ''Mayo''                                                                                    '
            + '                WHEN MONTH(CCFEMIS)= 6 THEN ''Junio''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 7 THEN ''Julio''                                                                                   '
            + '                WHEN MONTH(CCFEMIS)= 8 THEN ''Agosto''                                                                                  '
            + '                WHEN MONTH(CCFEMIS)= 9 THEN ''Septiembre''                                                                              '
            + '                WHEN MONTH(CCFEMIS)= 10 THEN ''Octubre''                                                                                '
            + '                WHEN MONTH(CCFEMIS)= 11 THEN ''Noviembre''                                                                              '
            + '                WHEN MONTH(CCFEMIS)= 12 THEN ''Diciembre''                                                                              '
            + '           END PPMESN,                                                                                                                  '
            + '           CHAR(YEAR(CCFEMIS)) PPANON,                                                                                                  '
            + '           CCFEMIS                                                                                                                      '
            + '    FROM CXC301                                                                                                                         '
            + '    INNER JOIN                                                                                                                          '
            + '    CNT201                                                                                                                              '
            + '    ON (CNT201.CLAUXID = CXC301.CLAUXID AND CNT201.AUXID = CXC301.CLIEID)                                                               ';
         With DMCXC.cdsmovcxc Do
            xFiltro := ' CIAID = ''' + fieldbyname('CIAID').AsString + ''' '
               + ' AND CCANOMES = ''' + fieldbyname('CCANOMES').AsString + ''' '
               + ' AND TDIARID  = ''' + fieldbyname('TDIARID').AsString + ''' '
               + ' AND CCNOREG  = ''' + fieldbyname('CCNOREG').AsString + ''' ';
         xSQL := xSQL + ' WHERE ' + xFiltro;
      End
      Else
         If (DMCXC.SRV_D = 'ORACLE') Then
         Begin
            xSQL :=
               '    SELECT CNT201.AUXNOMB PPRAZON, CNT201.AUXDIR PPDIRECCION,CXC301.CLIERUC PPRUC,                                                       '
               + '           DECODE(LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIA,             '
               + '           CASE WHEN LENGTH(RTRIM(CHAR(MONTH(CCFEMIS))))< 2 THEN ''0''||CHAR(MONTH(CCFEMIS)) ELSE CHAR(MONTH(CCFEMIS)) END PPMES,       '
               + '           CHAR(YEAR(CCFEMIS)) PPANO,                                                                                                   '
               + '           CCIGV PPIGV,CCMTOORI PPTOTAL,                                                                                                '
               + '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIAN,            '
               + '           DECODE(MONTH(CCFEMIS),1,''Enero''                                                                                   '
               + '                ,MONTH(CCFEMIS),2,''Febrero''                                                                                 '
               + '                ,MONTH(CCFEMIS),3,''Marzo''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 4 THEN ''Abril''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 5 THEN ''Mayo''                                                                                    '
               + '                ,MONTH(CCFEMIS)= 6 THEN ''Junio''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 7 THEN ''Julio''                                                                                   '
               + '                ,MONTH(CCFEMIS)= 8 THEN ''Agosto''                                                                                  '
               + '                ,MONTH(CCFEMIS)= 9 THEN ''Septiembre''                                                                              '
               + '                ,MONTH(CCFEMIS)= 10 THEN ''Octubre''                                                                                '
               + '                ,MONTH(CCFEMIS)= 11 THEN ''Noviembre''                                                                              '
               + '                ,MONTH(CCFEMIS)= 12 THEN ''Diciembre''                                                                              '
               + '           END PPMESN,                                                                                                                  '
               + '           CHAR(YEAR(CCFEMIS)) PPANON,                                                                                                  '
               + '           CCFEMIS                                                                                                                      '
               + '    FROM CXC301                                                                                                                         '
               + '    INNER JOIN                                                                                                                          '
               + '    CNT201                                                                                                                              '
               + '    ON (CNT201.CLAUXID = CXC301.CLAUXID AND CNT201.AUXID = CXC301.CLIEID)                                                               ';
            With DMCXC.cdsmovcxc Do
               xFiltro := ' CIAID = ''' + fieldbyname('CIAID').AsString + ''' '
                  + ' AND CCANOMES = ''' + fieldbyname('CCANOMES').AsString + ''' '
                  + ' AND TDIARID  = ''' + fieldbyname('TDIARID').AsString + ''' '
                  + ' AND CCNOREG  = ''' + fieldbyname('CCNOREG').AsString + ''' ';
            xSQL := xSQL + ' WHERE ' + xFiltro;

         End;
      DMCXC.cdsQry.Close;
      DMCXC.cdsQry.DataRequest(xSQL);
      DMCXC.cdsQry.Open;
     //////////
     //** 14/08/2001 - pjsv

      xSQL := 'SELECT * FROM CXC311 WHERE CIAID = '''' ';
      dsEmiDoc := TwwDataSource.create(self);
      cdsEmiDoc := TwwClientDataSet.create(self);
      cdsEmiDoc.RemoteServer := DMCXC.DCOM1;
      cdsEmiDoc.ProviderName := DMCXC.cdsQry.ProviderName;
      cdsEmiDoc.Close;
      cdsEmiDoc.DataRequest(xSQL);
      cdsEmiDoc.Open;
      dsEmiDoc.DataSet := cdsEmiDoc;

      cdsEmiDoc.Insert;
      cdsclone := TwwClientDataSet.create(self);
      cdsClone.CloneCursor(DMCXC.cdsDetCxC, False);
      cdsClone.Filter := ' TIPDET = ''MN'' OR TIPDET = ''MG'' ';
      cdsClone.Filtered := True;
      If cdsClone.RecordCount <> 0 Then
      Begin
         cdsClone.First;
         cdsEmiDoc.FieldByName('DDEDES').AsString := cdsClone.FieldByName('CCGLOSA').AsString;
         cdsEmiDoc.FieldByName('DDEPT').AsCurrency :=
            OperClientDataSet(DMCXC.cdsDetCxC, 'SUM(CCMTOORI)', cdsClone.Filter);
      End
      Else
      Begin
         cdsEmiDoc.FieldByName('DDEDES').AsString := '';
         cdsEmiDoc.FieldByName('DDEPT').AsCurrency := 0;
      End;
      cdsEmiDoc.Post;
      ppdbpNotaCred.DataSource := dsemidoc;
      pprptNotaCred.DataPipeline := ppdbpNotaCred;
     //**
      pprptNotaCred.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\' + xArchivoReporte;
      pprptNotaCred.template.LoadFromFile;

{     DMCXC.cds Qry2.First ;
     with DMCXC.cdsqry2 do
     begin
        while not Eof do
        begin
           if pprptNotaCred.ObjectByName(bANDA,Componente,fieldbyname('PPVAR').AsString)  then
              pprptNotaCred.Bands[Banda].Objects[Componente].Caption :=
                    DMCXC.cdsqry.FieldByName(fIELDBYNAME('CDSFIELD').AsString).AsString             ;
           DMCXC.cdsqry2.Next ;
        end;
     end ;
}
      If Application.MessageBox('Confirme Impresión de Documento',
         'Confirmación Impresión',
         MB_OKCANCEL + MB_DEFBUTTON1) = IDOK Then
     //pprptNotaCred.Print ;
   Finally
      cdsEmiDoc.free;
      dsEmiDoc.free;
   End;
End;

//**********************************************************************//
{ pjsv - para presupuestos }
{ 08/10/20000 pjsv. para actualizar el monto ejecutado, monto variación y
  y variación en porcentaje en el PPRES301, se debe de recorrer el cds del
 grid para ver si hay MG,MN,NG }

Procedure TFAnticipo.CalculoNivel;
Var
   xmonto, xhora, xfecha, xEjecuMN, xEjecuME, xmes, ssql: String;
   xcambio: real;
   iX: integer;
  { xtotal[1] hasta xtotal[12] = EJMN01..EJMN12 --sumatoria por mes
    xtotal[13] hasta xtotal[24] = EJME01..EJME12 --sumatoria por mes
    xtotal[25] hasta xtotal[36] = VMMN01..VMME12 --sumatoria por mes
    xtotal[37] hasta xtotal[48] = VMME01..VMME12 --sumatoria por mes     }
   xtotal: Array[1..48] Of Real;
 { xtotg[1] = xtotal[1] hasta xtotal[12]
   xtotg[2] = xtotal[13] hasta xtotal[24]
   xtotg[3] = xtotal[23] hasta xtotal[36]
   xtotg[4] = xtotal[37] hasta xtotal[48]  }
   xtotG: Array[1..6] Of Real;
  { guarda los montos asignados del PPRES300}
   xasxmes: Array[1..24] Of Real;
  { guarda los montos modificados del PPRES300}
   xmoxmes: Array[1..24] Of Real;
  { xvpxmes[1] = (xtotal[1]/xasxmes[1]+xmoxmes[1])*100 para cada mes y MN,ME.
    xtotal[25] hasta xtotal[48] no se toma }
   xvpxmes: Array[1..24] Of Real;
   xestado: bool;
   xIS: String;
Begin
   { crea los niveles superiores si no tuviera }
   CreaSuperior;
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      { registros que tienen las pp}
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN') Then
      Begin
         xmes := xtmes; //copy(meAnoMM.Text,5,2);
         ssql := '';
         ssql := 'Update PPRES301 Set ';
         If dblcTMon.Text = '01' Then
         Begin
            xCambio := StrToFloat(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString) / StrToFloat(dbeTCambio.text);
            xEjecuME := '(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0) - ' + FloatToStr(xcambio) + ')';
            xEjecuMN := '(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0) - ' + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString + ')';
            xmonto := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString;
         End
         Else
         Begin
            xCambio := StrToFloat(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString) * StrToFloat(dbeTCambio.text);
            xEjecuME := '(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0) - ' + DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString + ')';
            xEjecuMN := '(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0) - ' + FloatToStr(xcambio) + ')';
            xmonto := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsString;
         End;
         ssql := ssql + 'DPREEJMN' + xmes + '= DEC(' + xEjecuMN + ',15,2), ';
         ssql := ssql + 'DPREEJME' + xmes + '= DEC(' + xEjecuME + ',15,2), ';
         If dblcTMon.Text = '01' Then
         Begin
            ssql := ssql + 'DPREVMMN' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + xmonto + '),15,2), ';
            ssql := ssql + 'DPREVMME' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2), ';
            ssql := ssql + 'DPREVPMN' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPREVPME' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+' + DMCXC.wReplacCeros + '(DPRETOMOME,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJMN=DEC(' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)-' +
               xmonto + ',15,2),';
            ssql := ssql + 'DPRETOVMMN=DEC(' + DMCXC.wReplacCeros + '(DPREVMMN01,0)+' + DMCXC.wReplacCeros + '(DPREVMMN02,0)+' + DMCXC.wReplacCeros + '(DPREVMMN03,0)+' + DMCXC.wReplacCeros + '(DPREVMMN04,0)+' + DMCXC.wReplacCeros + '(DPREVMMN05,0)+' + DMCXC.wReplacCeros + '(DPREVMMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMMN07,0)+' + DMCXC.wReplacCeros + '(DPREVMMN08,0)+' + DMCXC.wReplacCeros + '(DPREVMMN09,0)+' + DMCXC.wReplacCeros + '(DPREVMMN10,0)+' + DMCXC.wReplacCeros + '(DPREVMMN11,0)+' + DMCXC.wReplacCeros + '(DPREVMMN12,0)+' +
               DMCXC.wReplacCeros + '(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + xmonto + '),15,2),';

            ssql := ssql + 'DPRETOVPMN=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)-' +
               xmonto + ')/((' + DMCXC.wReplacCeros + '(DPRETOASMN,0) )+(' + DMCXC.wReplacCeros + '(DPRETOMOMN,0))))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJME=DEC(' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               FloatToStr(xcambio) + ',15,2),';
            ssql := ssql + 'DPRETOVMME=DEC(' + DMCXC.wReplacCeros + '(DPREVMME01,0)+' + DMCXC.wReplacCeros + '(DPREVMME02,0)+' + DMCXC.wReplacCeros + '(DPREVMME03,0)+' + DMCXC.wReplacCeros + '(DPREVMME04,0)+' + DMCXC.wReplacCeros + '(DPREVMME05,0)+' + DMCXC.wReplacCeros + '(DPREVMME06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMME07,0)+' + DMCXC.wReplacCeros + '(DPREVMME08,0)+' + DMCXC.wReplacCeros + '(DPREVMME09,0)+' + DMCXC.wReplacCeros + '(DPREVMME10,0)+' + DMCXC.wReplacCeros + '(DPREVMME11,0)+' + DMCXC.wReplacCeros + '(DPREVMME12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2),';
            ssql := ssql + 'DPRETOVPME=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+' + DMCXC.wReplacCeros + '(DPRETOMOME,0)=0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               FloatToStr(xcambio) + ')/((' + DMCXC.wReplacCeros + '(DPRETOASME,0) )+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0))))*100,15,2)END),';
         End
         Else
         Begin
            ssql := ssql + 'DPREVMMN' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2), ';
            ssql := ssql + 'DPREVMME' + xmes + '= DEC((' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + '),15,2), ';
            ssql := ssql + 'DPREVPMN' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0) = 0' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + FloatToSTr(xcambio) + ')/(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) +' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0)))*100,15,2)END), ';
            ssql := ssql + 'DPREVPME' + xmes + '= (CASE WHEN ' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0) = 0 ' +
               ' THEN 200' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + ')/(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0)))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJME=DEC(' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               xmonto + ',15,2),';
            ssql := ssql + 'DPRETOVMME=DEC(' + DMCXC.wReplacCeros + '(DPREVMME01,0)+' + DMCXC.wReplacCeros + '(DPREVMME02,0)+' + DMCXC.wReplacCeros + '(DPREVMME03,0)+' + DMCXC.wReplacCeros + '(DPREVMME04,0)+' + DMCXC.wReplacCeros + '(DPREVMME05,0)+' + DMCXC.wReplacCeros + '(DPREVMME06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMME07,0)+' + DMCXC.wReplacCeros + '(DPREVMME08,0)+' + DMCXC.wReplacCeros + '(DPREVMME09,0)+' + DMCXC.wReplacCeros + '(DPREVMME10,0)+' + DMCXC.wReplacCeros + '(DPREVMME11,0)+' + DMCXC.wReplacCeros + '(DPREVMME12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASME' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOME' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJME' + xmes + ',0)-' + xmonto + '),15,2),';
            ssql := ssql + 'DPRETOVPME=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASME,0)+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0) = 0 ' +
               ' THEN 200 ' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJME01,0)+' + DMCXC.wReplacCeros + '(DPREEJME02,0)+' + DMCXC.wReplacCeros + '(DPREEJME03,0)+' + DMCXC.wReplacCeros + '(DPREEJME04,0)+' + DMCXC.wReplacCeros + '(DPREEJME05,0)+' + DMCXC.wReplacCeros + '(DPREEJME06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJME07,0)+' + DMCXC.wReplacCeros + '(DPREEJME08,0)+' + DMCXC.wReplacCeros + '(DPREEJME09,0)+' + DMCXC.wReplacCeros + '(DPREEJME10,0)+' + DMCXC.wReplacCeros + '(DPREEJME11,0)+' + DMCXC.wReplacCeros + '(DPREEJME12,0)-' +
               xmonto + ')/((' + DMCXC.wReplacCeros + '(DPRETOASME,0))+(' + DMCXC.wReplacCeros + '(DPRETOMOME,0))))*100,15,2)END),';
            ssql := ssql + 'DPRETOEJMN=DEC(' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)-' +
               FloatToStr(xcambio) + ',15,2),';
            ssql := ssql + 'DPRETOVMMN=DEC(' + DMCXC.wReplacCeros + '(DPREVMMN01,0)+' + DMCXC.wReplacCeros + '(DPREVMMN02,0)+' + DMCXC.wReplacCeros + '(DPREVMMN03,0)+' + DMCXC.wReplacCeros + '(DPREVMMN04,0)+' + DMCXC.wReplacCeros + '(DPREVMMN05,0)+' + DMCXC.wReplacCeros + '(DPREVMMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREVMMN07,0)+' + DMCXC.wReplacCeros + '(DPREVMMN08,0)+' + DMCXC.wReplacCeros + '(DPREVMMN09,0)+' + DMCXC.wReplacCeros + '(DPREVMMN10,0)+' + DMCXC.wReplacCeros + '(DPREVMMN11,0)+' + DMCXC.wReplacCeros + '(DPREVMMN12,0)+' +
               '(' + DMCXC.wReplacCeros + '(DPREASMN' + xmes + ',0) + ' + DMCXC.wReplacCeros + '(DPREMOMN' + xmes + ',0))-(' + DMCXC.wReplacCeros + '(DPREEJMN' + xmes + ',0)-' + FloatToStr(xcambio) + '),15,2),';

            ssql := ssql + 'DPRETOVPMN=(CASE WHEN ' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0) = 0' +
               ' THEN 200 ' +
               ' ELSE DEC(((' + DMCXC.wReplacCeros + '(DPREEJMN01,0)+' + DMCXC.wReplacCeros + '(DPREEJMN02,0)+' + DMCXC.wReplacCeros + '(DPREEJMN03,0)+' + DMCXC.wReplacCeros + '(DPREEJMN04,0)+' + DMCXC.wReplacCeros + '(DPREEJMN05,0)+' + DMCXC.wReplacCeros + '(DPREEJMN06,0)+' +
               DMCXC.wReplacCeros + '(DPREEJMN07,0)+' + DMCXC.wReplacCeros + '(DPREEJMN08,0)+' + DMCXC.wReplacCeros + '(DPREEJMN09,0)+' + DMCXC.wReplacCeros + '(DPREEJMN10,0)+' + DMCXC.wReplacCeros + '(DPREEJMN11,0)+' + DMCXC.wReplacCeros + '(DPREEJMN12,0)+' +
               FloatToStr(xcambio) + ')/(' + DMCXC.wReplacCeros + '(DPRETOASMN,0)+' + DMCXC.wReplacCeros + '(DPRETOMOMN,0)))*100,15,2)END),';
         End;
         ssql := ssql + 'RQPARTUSER=' + quotedstr(DMCXC.wUsuario);
         xFecha := formatdatetime(DMCXC.wFormatFecha, DMCXC.DateS);
         ssql := ssql + ',RQPARTFREG =Date(' + quotedstr(xfecha) + ')';
         xhora := formatdatetime('hh:mm:ss', DMCXC.TimeS);
         ssql := ssql + ',RQPARTHREG =time(' + quotedstr(xhora) + ')' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND TIPPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString) +
            ' AND PARPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            Raise exception.Create('No se pudo actualizar Presupuesto');
         End;
           // se inicia la actualización de la cabecera
           { inicializo en cero el arreglo }
         For iX := 1 To 48 Do
            xTotal[iX] := 0;
         For iX := 1 To 6 Do
            xTotg[iX] := 0;
         For iX := 1 To 24 Do
            xasxmes[iX] := 0;
         For iX := 1 To 24 Do
            xmoxmes[iX] := 0;
         For iX := 1 To 24 Do
            xvpxmes[iX] := 0;
           { para cargar los AS y MO de cada mes }
         ssql := '';
         ssql := 'SELECT * FROM PPRES300' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.ProviderName := 'dspCxC';
         DMCXC.cdsQry2.DataRequest(ssql);
         DMCXC.cdsQry2.open;
         DMCXC.cdsQry2.First;
         While Not DMCXC.cdsQry2.Eof Do
         Begin
            For iX := 1 To 12 Do
            Begin
               xmes := StrZero(IntToStr(iX), 2);
               xasxmes[iX] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREASMN' + XMES).AsString);
               xasxmes[iX + 12] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREASME' + XMES).AsString);
               xmoxmes[iX] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREMOMN' + XMES).AsString);
               xmoxmes[iX + 12] := StrToFloat(DMCXC.cdsQry2.FieldByName('DPREMOME' + XMES).AsString);
            End;
            DMCXC.cdsQry2.Next;
         End;

           { actualiza la cabecera de Presupuesto PPRES300, toma del PPRES301
             los EJ,VM y VP por mes para un mismo centro de costo y los sumariza
             para cargarlos a los campos respectivos del PPRES300 }
         ssql := '';
         ssql := 'SELECT * FROM PPRES301' +
            ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
         DMCXC.cdsQry2.Close;
         DMCXC.cdsQry2.ProviderName := 'dspCxC';
         DMCXC.cdsQry2.DataRequest(ssql);
         DMCXC.cdsQry2.open;
         DMCXC.cdsQry2.First;
           { recorro la tabla PPRES301 para hallar los totales por mes y
             por campos( EJ, VM, VP ) y por mes }
         While Not DMCXC.cdsQry2.Eof Do
         Begin
             //** 03/11/2000 - pjsv
            ssql := '';
            ssql := 'PARPRESID=' + quotedstr(DMCXC.cdsQry2.FieldByName('PARPRESID').AsString);
            xIS := DMCXC.BuscaQry('dspParPres', 'PPRES201', '*', ssql, 'PARPRES_IS');
             //**
            For iX := 1 To 24 Do
               Case iX Of
                { para DPREEJMN01..12 }
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
                     Begin
                        xmes := StrZero(IntToStr(iX), 2);
                    //** 03/11/2000 - pjsv, tiene que chequear si el PARPRES_IS
                    // del PPRES201 es I = resta,  o S = suma
                        If xIS = 'S' Then
                           xTotal[iX] := xTotal[iX] + StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJMN' + XMES).AsString)
                        Else
                           xTotal[iX] := xTotal[iX] - StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJMN' + XMES).AsString)
                     End;
               { para DPREEJME01..12 }
                  13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24:
                     Begin
                        xmes := StrZero(IntToStr(iX - 12), 2);
                    //** 03/11/2000 - pjsv, tiene que chequear si el PARPRES_IS
                    // del PPRES201 es I = resta,  o S = suma
                        If xIS = 'S' Then
                           xTotal[iX] := xTotal[iX] + StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJME' + XMES).AsString)
                        Else
                           xTotal[iX] := xTotal[iX] - StrToFloat(DMCXC.cdsQry2.FieldByName('DPREEJME' + XMES).AsString)
                     End;
               End;
            DMCXC.cdsQry2.next;
         End;
           // para controlar el error del INFINITO
         xestado := false;
         For ix := 1 To 12 Do
            If (xasxmes[ix] <> 0) Or (xmoxmes[ix] <> 0) Then
            Begin
               xestado := true;
               Break;
            End;
           { hallo el total por mes de VP }
         For ix := 1 To 12 Do
         Begin
             // se agrega 17/10/2000 pjsv - para que solo calcule el mes
             // del periodo, si se quita el if calcula todos los meses
            If StrZero(IntToStr(iX), 2) = xtmes Then
            Begin
                { para DPREVMMN01..12 }
               xTotal[iX + 24] := (xasxmes[iX] + xmoxmes[iX]) - xTotal[iX];
                { para DPREVMME01..12 }
               xTotal[iX + 36] := (xasxmes[iX + 12] + xmoxmes[iX + 12]) - xTotal[iX + 12];
                // se agrego el 23/10/200 pjsv
               If xestado = False Then
               Begin
                   // los igualo a cero
                  xvpxmes[iX] := 0;
                   { para VPME }
                  xvpxmes[iX + 12] := 0;
               End
               Else
               Begin
                  { para VPMN }
                  xvpxmes[iX] := (xtotal[ix] / (xasxmes[iX] + xmoxmes[iX])) * 100;
                  { para VPME }
                  xvpxmes[iX + 12] := (xtotal[ix + 12] / (xasxmes[iX + 12] + xmoxmes[iX + 12])) * 100;
               End;
            End;
         End;
         ssql := '';
         ssql := 'Update PPRES300 Set ';
         For iX := 1 To 12 Do
         Begin
            xmes := StrZero(IntToStr(iX), 2);
             { carga para cada mes y campo el valor hallado en las lineas de
               arriba }
            ssql := ssql + ' DPREEJMN' + xmes + '=DEC(' + FloatToStr(xtotal[iX]) + ',15,2),';
            ssql := ssql + ' DPREEJME' + xmes + '=DEC(' + FloatToStr(xtotal[iX + 12]) + ',15,2),';
            ssql := ssql + ' DPREVMMN' + xmes + '=DEC(' + FloatToStr(xtotal[iX + 24]) + ',15,2),';
            ssql := ssql + ' DPREVMME' + xmes + '=DEC(' + FloatToStr(xtotal[iX + 36]) + ',15,2),';
            ssql := ssql + ' DPREVPMN' + xmes + '=DEC(' + FloatToStr(xvpxmes[iX]) + ',15,2),';
            ssql := ssql + ' DPREVPME' + xmes + '=DEC(' + FloatToStr(xvpxmes[iX + 12]) + ',15,2),';
         End;
           { SUMATORIA DE LOS EJMN, LOS DOCE MESES }
         For iX := 1 To 12 Do
            xtotG[1] := xtotG[1] + xtotal[iX];
           { SUMATORIA DE LOS EJME, LOS DOCE MESES }
         For iX := 13 To 24 Do
            xtotG[2] := xtotG[2] + xtotal[iX];
           { SUMATORIA DE LOS MOMN, LOS DOCE MESES }
         For iX := 25 To 36 Do
            xtotG[3] := xtotG[3] + xtotal[iX];
           { SUMATORIA DE LOS MOME, LOS DOCE MESES }
         For iX := 37 To 48 Do
            xtotG[4] := xtotG[4] + xtotal[iX];
         If xestado = False Then
         Begin
             // los igualo a cero
            xtotG[5] := 0;
            xtotG[6] := 0;
         End
         Else
         Begin
             {  calculo del total VPMN }
            xtotG[5] := (xtotG[1] / ((xasxmes[1] + xasxmes[2] + xasxmes[3] + xasxmes[4] + xasxmes[5] + xasxmes[6] +
               xasxmes[7] + xasxmes[8] + xasxmes[9] + xasxmes[10] + xasxmes[11] + xasxmes[12]) +
               (xmoxmes[1] + xmoxmes[2] + xmoxmes[3] + xmoxmes[4] + xmoxmes[5] + xmoxmes[6] +
               xmoxmes[7] + xmoxmes[8] + xmoxmes[9] + xmoxmes[10] + xmoxmes[11] + xmoxmes[12]))) * 100;
             { calculo del total VPME }
            xtotG[6] := (xtotG[2] / ((xasxmes[13] + xasxmes[14] + xasxmes[15] + xasxmes[16] + xasxmes[17] + xasxmes[18] +
               xasxmes[19] + xasxmes[20] + xasxmes[21] + xasxmes[22] + xasxmes[23] + xasxmes[24]) +
               (xmoxmes[13] + xmoxmes[14] + xmoxmes[15] + xmoxmes[16] + xmoxmes[17] + xmoxmes[18] +
               xmoxmes[19] + xmoxmes[20] + xmoxmes[21] + xmoxmes[22] + xmoxmes[23] + xmoxmes[24]))) * 100;
         End;
           { asigno los totales para EJ,VM y VP en MN y ME }
         ssql := ssql + ' DPRETOEJMN=DEC(' + FloatToStr(xtotg[1]) + ',15,2),';
         ssql := ssql + ' DPRETOEJME=DEC(' + FloatToStr(xtotg[2]) + ',15,2),';
         ssql := ssql + ' DPRETOVMMN=DEC(' + FloatToStr(xtotg[3]) + ',15,2),';
         ssql := ssql + ' DPRETOVMME=DEC(' + FloatToStr(xtotg[4]) + ',15,2),';
         ssql := ssql + ' DPRETOVPMN=DEC(' + FloatToStr(xtotg[5]) + ',15,2),';
         ssql := ssql + ' DPRETOVPME=DEC(' + FloatToStr(xtotg[6]) + ',15,2),';
           { otros campos a actualizar }
         ssql := ssql + 'RQPARTUSER=' + quotedstr(DMCXC.wUsuario);
         xFecha := formatdatetime(DMCXC.wFormatFecha, DMCXC.DateS);
         ssql := ssql + ',RQPARTFREG =Date(' + quotedstr(xfecha) + ')';
         xhora := formatdatetime('hh:mm:ss', DMCXC.TimeS);
         ssql := ssql + ',RQPARTHREG =time(' + quotedstr(xhora) + ')' +
           { condicional }
         ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
            ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
            ' AND RQPARTANO=' + quotedstr(xtano);
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            Raise exception.Create('No se pudo actualizar Presupuesto');
         End;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
   { ahora para los niveles speriores }
   CalculoNivelSupe;
End;

{ pjsv - para presupuestos }

Procedure TFAnticipo.CreaSuperior;
Var
   xppcomun, ssql, xcc: String;
   xmaxdigitosup, xmaxnivelsup, xmaxnivelinf: String;
   xpp, xmaxdigitoint, xmaxnivelint, xmaxdigitoinf: String;
   xcontador: Integer;
   xcia, xccosid, xtippresid, xano: String;
Begin
   { tabla de niveles}
   ssql := '';
   ssql := 'SELECT * FROM PPRES103 ORDER BY PARPRESNIV';
   DMCXC.cdsNivelPresu.close;
   DMCXC.cdsNivelPresu.DataRequest(ssql);
   DMCXC.cdsNivelPresu.Open;
   { se recorre el client del detalle, por lo que en este se encuentran
     las P.P. a actualizar}
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN') Then
      Begin
         If xcc <> DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString Then
         Begin
          { tabla de detalle del presupuesto }
            ssql := '';
            ssql := 'SELECT * FROM PPRES301' +
               ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
               ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
               ' AND RQPARTANO=' + quotedstr(xtano);
            DMCXC.cdsDetallePres.Close;
            DMCXC.cdsDetallePres.DataRequest(ssql);
            DMCXC.cdsDetallePres.open;
            xcc := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
         End;
         ssql := '';
         ssql := 'SELECT * FROM PPRES201';
         DMCXC.cdsParPres.Close;
         DMCXC.cdsParPres.DataRequest(ssql);
         DMCXC.cdsParPres.open;
          { se toma 01 por defecto para el nivel máximo superior }
         xmaxnivelsup := '01';
         DMCXC.cdsNivelPresu.First;
          { se jala el máximo digito superior }
         xmaxdigitosup := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { se carga a partir de la P.P. digitada el digito en común
            ejmp. si se digito 10101 --> el digito comuún es 1
                  si se digito 20501 --> el digito común es 2  }
         xppcomun := copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitosup));
         DMCXC.cdsNivelPresu.Last;
          { jalo el máximo nivel inferior de la tabla de niveles }
         xmaxnivelinf := DMCXC.cdsNivelPresu.FieldByName('PARPRESNIV').AsString;
          { se jala el máximo digito inferior }
         xmaxdigitoinf := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { este proceso se repite hasta que la variable xmaxnivelint se iguale
            a la xmaxnivelsup. Esto me permite generar los niveles superiores
            que cuyo primer digito sea igual a la variable xppcomun }
         xcontador := 0;
         Repeat
           { ejemp. si el xmaxnivelinf = 03 ==>  xmaxnivelint = 02. }
            xmaxnivelint := StrZero(IntToStr(StrToInt(xmaxnivelinf) - xcontador), 2);
            xcontador := 1;
            ssql := '';
            ssql := 'PARPRESNIV=' + quotedstr(xmaxnivelint);
            xcia := Trim(dblcCia.Text);
            xccosid := Trim(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString);
            xtippresid := Trim(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString);
            xano := Trim(xtano);
            xmaxdigitoint := DMCXC.BuscaQry('dspNivelPresu', 'PPRES103', '*', ssql, 'DIGITOS');
            xpp := Trim(copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitoint)));
            If DMCXC.cdsParPres.Locate('PARPRESID', VarArrayOf([xpp]), [loCaseInsensitive]) Then
               If Not DMCXC.cdsDetallePres.Locate('CIAID;CCOSID;TIPPRESID;PARPRESID;RQPARTANO', VarArrayOf([xcia, xccosid, xtippresid, xpp, xano]), [loCaseInsensitive]) Then
                  DMCXC.cdsDetallePres.insert;
            If DMCXC.cdsDetallePres.State = dsInsert Then
            Begin
               DMCXC.cdsDetallePres.FieldByName('CIAID').AsString := dblcCia.Text;
               DMCXC.cdsDetallePres.FieldByName('CCOSID').AsString := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
               DMCXC.cdsDetallePres.FieldByName('TIPPRESID').AsString := DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString;
               DMCXC.cdsDetallePres.FieldByName('RQPARTANO').AsString := xtano;
               DMCXC.cdsDetallePres.FieldByName('PARPRESID').AsString := DMCXC.cdsParPres.FieldByName('PARPRESID').AsString;
               DMCXC.cdsDetallePres.FieldByName('PARPREDES').AsString := DMCXC.cdsParPres.FieldByName('PARPRESDES').AsString;
               DMCXC.cdsDetallePres.FieldByName('TMONID').AsString := dblcTMon.Text;
               DMCXC.cdsDetallePres.FieldByName('RQPARTUSER').AsString := DMCXC.wusuario;
               DMCXC.cdsDetallePres.FieldByName('RQPARTFREG').AsDateTime := DMCXC.DateS;
               DMCXC.cdsDetallePres.FieldByName('RQPARTHREG').AsDateTime := DMCXC.TimeS;
               DMCXC.cdsDetallePres.FieldByName('RQPARTIS').AsString := DMCXC.cdsParPres.FieldByName('PARPRES_IS').AsString;
               DMCXC.cdsDetallePres.FieldByName('PARPRESNIV').AsString := DMCXC.cdsParPres.FieldByName('PARPRESNIV').AsString;
               // inicializo en cero todos los montos
               inicializoCero(DMCXC.cdsDetallePres);
               DMCXC.cdsDetallePres.Post;
               DMCXC.cdsDetallePres.ApplyUpdates(0);
            End;
            xmaxnivelinf := xmaxnivelint;
         Until xmaxnivelsup = xmaxnivelint;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
End;

{ pjsv - para presupuestos }

Procedure TFAnticipo.inicializoCero;
Var
   iX: integer;
   xmes: String;
Begin
    { inicializo los demás campos en cero }
   For iX := 1 To 12 Do
   Begin
      xmes := StrZero(IntToStr(iX), 2);
      xcds.FieldByName('DPRERQMN' + XMES).AsString := '0';
      xcds.FieldByName('DPRERQME' + XMES).AsString := '0';
      xcds.FieldByName('DPRERMME' + XMES).AsString := '0';
      xcds.FieldByName('DPRERMMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREASMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREASME' + XMES).AsString := '0';
      xcds.FieldByName('DPREMOMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREMOME' + XMES).AsString := '0';
      xcds.FieldByName('DPREEJMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREEJME' + XMES).AsString := '0';
      xcds.FieldByName('DPREVMMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREVMME' + XMES).AsString := '0';
      xcds.FieldByName('DPREVPMN' + XMES).AsString := '0';
      xcds.FieldByName('DPREVPME' + XMES).AsString := '0';
   End;
   xcds.FieldByName('DPRETORQMN').AsString := '0';
   xcds.FieldByName('DPRETORQME').AsString := '0';
   xcds.FieldByName('DPRETORMMN').AsString := '0';
   xcds.FieldByName('DPRETORMME').AsString := '0';
   xcds.FieldByName('DPRETOASMN').AsString := '0';
   xcds.FieldByName('DPRETOASME').AsString := '0';
   xcds.FieldByName('DPRETOMOMN').AsString := '0';
   xcds.FieldByName('DPRETOMOME').AsString := '0';
   xcds.FieldByName('DPRETOEJMN').AsString := '0';
   xcds.FieldByName('DPRETOEJME').AsString := '0';
   xcds.FieldByName('DPRETOVMMN').AsString := '0';
   xcds.FieldByName('DPRETOVMME').AsString := '0';
   xcds.FieldByName('DPRETOVPMN').AsString := '0';
   xcds.FieldByName('DPRETOVPME').AsString := '0';
End;

{ pjsv - para presupuestos }

Procedure TFAnticipo.CalculoNivelSupe;
Var
   xppcomun, xmaxdigitosup, xmaxnivelsup, xmaxnivelinf, ssql: String;
   xcc, xmes, xmaxdigitoint, xmaxnivelint, xmaxdigitoinf: String;
   ix: integer;
   xestado, xestado1: bool;
  { para los EJMN y EJME del mes 01 al mes 12 }
   xmontos: Array[1..24] Of Real;
  { para los ASMN y ASME del mes 01 al mes 12 }
   xmontosas: Array[1..24] Of Real;
  { para los MOMN y MOME del mes 01 al mes 12 }
   xmontosmo: Array[1..24] Of Real;
   xtotvmmn, xtotvmme, xtotejmn, xtotejme: real;
Begin
   xestado := False;
   xestado1 := False;
   { tabla de niveles, se ordena por el nivel }
   ssql := '';
   ssql := 'SELECT * FROM PPRES103 ORDER BY PARPRESNIV';
   DMCXC.cdsNivelPresu.close;
   DMCXC.cdsNivelPresu.DataRequest(ssql);
   DMCXC.cdsNivelPresu.open;
   DMCXC.cdsNivelPresu.First;
   { se inicializa en cero }
   xtotvmmn := 0;
   xtotvmme := 0;
   { se recorre el client del detalle, por lo que en este se encuentran
     las P.P. a actualizar}
   DMCXC.cdsDetCxC.First;
   While Not DMCXC.cdsDetCxC.eof Do
   Begin
      If (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MG') Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'NG')
         Or (DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString = 'MN') Then
      Begin
        { solo si se cambia de centro de costo }
         If xcc <> DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString Then
         Begin
          { tabla de detalle del presupuesto }
            ssql := '';
            ssql := 'SELECT * FROM PPRES301' +
               ' WHERE CIAID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CIAID').AsString) +
               ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
               ' AND RQPARTANO=' + quotedstr(xtano);
            DMCXC.cdsDetallePres.Close;
            DMCXC.cdsDetallePres.DataRequest(ssql);
            DMCXC.cdsDetallePres.open;
          { se carga la variable }
            xcc := DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString;
         End;
         If xppcomun <> copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, 1) Then
         Begin
          //////////// poceso para genera los niveles superiores ////////////
            ssql := '';
            ssql := 'SELECT * FROM PPRES201';
            DMCXC.cdsParPres.Close;
            DMCXC.cdsParPres.DataRequest(ssql);
            DMCXC.cdsParPres.open;
          { se toma 01 por defecto para el nivel máximo superior }
            xmaxnivelsup := '01';
            DMCXC.cdsNivelPresu.First;
          { se jala el máximo digito superior }
            xmaxdigitosup := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;
          { se carga a partir de la P.P. digitada el digito en común
            ejmp. si se digito 10101 --> el digito comuún es 1
                  si se digito 20501 --> el digito común es 2  }
            xppcomun := copy(DMCXC.cdsDetCxC.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitosup));
            DMCXC.cdsNivelPresu.Last;
          { jalo el máximo nivel inferior de la tabla de niveles }
            xmaxnivelinf := DMCXC.cdsNivelPresu.FieldByName('PARPRESNIV').AsString;
          { se jala el máximo digito inferior }
            xmaxdigitoinf := DMCXC.cdsNivelPresu.FieldByName('DIGITOS').AsString;

          { se filtra la tabla por CIA, TIPPRESID RQPARTANO y PARPRESID cuyo digito
            sustraido se igual al xppcomun }
            ssql := '';
            ssql := 'SELECT PARPRESID,PARPREDES,RQPARTIS,TMONID,' +
               'DPREEJMN01,DPREEJMN02,DPREEJMN03,DPREEJMN04,DPREEJMN05,DPREEJMN06,' +
               'DPREEJMN07,DPREEJMN08,DPREEJMN09,DPREEJMN10,DPREEJMN11,DPREEJMN12,' +
               'DPREEJME01,DPREEJME02,DPREEJME03,DPREEJME04,DPREEJME05,DPREEJME06,' +
               'DPREEJME07,DPREEJME08,DPREEJME09,DPREEJME10,DPREEJME11,DPREEJME12,' +

            'DPREVMMN01,DPREVMMN02,DPREVMMN03,DPREVMMN04,DPREVMMN05,DPREVMMN06,' +
               'DPREVMMN07,DPREVMMN08,DPREVMMN09,DPREVMMN10,DPREVMMN11,DPREVMMN12,' +
               'DPREVMME01,DPREVMME02,DPREVMME03,DPREVMME04,DPREVMME05,DPREVMME06,' +
               'DPREVMME07,DPREVMME08,DPREVMME09,DPREVMME10,DPREVMME11,DPREVMME12,' +

            'DPREVPMN01,DPREVPMN02,DPREVPMN03,DPREVPMN04,DPREVPMN05,DPREVPMN06,' +
               'DPREVPMN07,DPREVPMN08,DPREVPMN09,DPREVPMN10,DPREVPMN11,DPREVPMN12,' +
               'DPREVPME01,DPREVPME02,DPREVPME03,DPREVPME04,DPREVPME05,DPREVPME06,' +
               'DPREVPME07,DPREVPME08,DPREVPME09,DPREVPME10,DPREVPME11,DPREVPME12,' +

            'DPREASMN01,DPREASMN02,DPREASMN03,DPREASMN04,DPREASMN05,DPREASMN06,' +
               'DPREASMN07,DPREASMN08,DPREASMN09,DPREASMN10,DPREASMN11,DPREASMN12,' +
               'DPREASME01,DPREASME02,DPREASME03,DPREASME04,DPREASME05,DPREASME06,' +
               'DPREASME07,DPREASME08,DPREASME09,DPREASME10,DPREASME11,DPREASME12,' +

            'DPREMOMN01,DPREMOMN02,DPREMOMN03,DPREMOMN04,DPREMOMN05,DPREMOMN06,' +
               'DPREMOMN07,DPREMOMN08,DPREMOMN09,DPREMOMN10,DPREMOMN11,DPREMOMN12,' +
               'DPREMOME01,DPREMOME02,DPREMOME03,DPREMOME04,DPREMOME05,DPREMOME06,' +
               'DPREMOME07,DPREMOME08,DPREMOME09,DPREMOME10,DPREMOME11,DPREMOME12' +

            ' FROM PPRES301 WHERE CIAID=' + quotedstr(dblcCia.Text) +
               ' AND CCOSID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('CCOSID').AsString) +
               ' AND TIPPRESID=' + quotedstr(DMCXC.cdsDetCxC.FieldByName('TIPPRESID').AsString) +
               ' AND SUBSTR(PARPRESID,1,' + xmaxdigitosup + ')=' + quotedstr(xppcomun) +
               ' AND RQPARTANO=' + quotedstr(xtano);
            DMCXC.cdsSQL.Close;
            DMCXC.cdsSQL.DataRequest(ssql);
            DMCXC.cdsSQL.Open;
            DMCXC.cdsSQL.first;
          { este proceso se repite hasta que la variable xmaxnivelint se iguale
            a la xmaxnivelsup. Esto me permite generar los niveles superiores
            que cuyo primer digito sea igual a la variable xppcomun }
            Repeat
            { ejemp. si el xmaxnivelinf = 03 ==>  xmaxnivelint = 02. }
               xmaxnivelint := StrZero(IntToStr(StrToInt(xmaxnivelinf) - 1), 2);
               ssql := '';
               ssql := 'PARPRESNIV=' + quotedstr(xmaxnivelint);
               xmaxdigitoint := DMCXC.BuscaQry('dspNivelPresu', 'PPRES103', '*', ssql, 'DIGITOS');
            { filtra la tabla de P.P.P. por todas aquellas cuyo digito sean igual al del
              xmaxdigitoint }
               ssql := '';
               ssql := 'SELECT * FROM PPRES201 WHERE LENGTH(PARPRESID)=' + xmaxdigitoint +
                  ' ORDER BY PARPRESID';
               DMCXC.cdsParPres.Close;
               DMCXC.cdsParPres.DataRequest(ssql);
               DMCXC.cdsParPres.Open;
            { se recorre la tabla }
               While Not DMCXC.cdsParPres.Eof Do
               Begin
                  DMCXC.cdsSQL.First;
               { se blanquea }
                  For iX := 1 To 24 Do
                  Begin
                     xmontos[iX] := 0;
                     xmontosas[iX] := 0;
                     xmontosmo[iX] := 0;
                  End;
                { se recorre el clon del detalle }
                  While Not DMCXC.cdsSQL.Eof Do
                  Begin
                  { si el # de digitos es = al # maximo de digitos inferior }
                     If length(DMCXC.cdsSQL.FieldByName('PARPRESID').AsString) = StrToInt(xmaxdigitoinf) Then
                   { si la sustracción es = al nivel de la P.P..}
                        If copy(DMCXC.cdsSQL.FieldByName('PARPRESID').AsString, 1, StrToInt(xmaxdigitoint)) =
                           DMCXC.cdsParPres.FieldByName('PARPRESID').AsString Then
                           For iX := 1 To 12 Do
                           Begin
                      // se halla los montos para las 2 monesa y los 12 meses
                     {se agrego esta linea 17/10/2000 para que sólo actualice el mes del periodo
                      y ya no los 12 meses }
//                     if StrZero(IntToStr(iX),2) = xtmes then
//                       begin
                              xmes := StrZero(IntToStr(iX), 2);
                              xmontos[iX] := xmontos[iX] + DMCXC.cdsSQL.FieldByName('DPREEJMN' + XMES).value;
                              xmontos[iX + 12] := xmontos[iX + 12] + DMCXC.cdsSQL.FieldByName('DPREEJME' + XMES).value;
                              xmontosas[iX] := xmontosas[iX] + DMCXC.cdsSQL.FieldByName('DPREASMN' + XMES).value;
                              xmontosas[iX + 12] := xmontosas[iX + 12] + DMCXC.cdsSQL.FieldByName('DPREASME' + XMES).value;
                              xmontosmo[iX] := xmontosmo[iX] + DMCXC.cdsSQL.FieldByName('DPREMOMN' + XMES).value;
                              xmontosmo[iX + 12] := xmontosmo[iX + 12] + DMCXC.cdsSQL.FieldByName('DPREMOME' + XMES).value;
//                       end;
                           End;
                     DMCXC.cdsSQL.next;
                  End;
                 { si hubiera montos }
                  For iX := 1 To 12 Do
                     If xmontos[iX] <> 0 Then
                     Begin
                        xestado := true;
                        break;
                     End;
                 { si es true, me indica que al menos hay una cantidad a actualizar }
                  If xestado = true Then
                  Begin
                     xtotejmn := 0;
                     xtotejme := 0;
                   { para posicionarme sobre el nivel en el clon }
                     If DMCXC.cdsSQL.Locate('PARPRESID', DMCXC.cdsParPres.FieldByName('PARPRESID').AsString, [loCaseInsensitive]) Then
                        DMCXC.cdsSQL.Edit;
                   { para posicionarme sobre el nivel en el detalle }
                     If DMCXC.cdsDetallePres.Locate('PARPRESID', DMCXC.cdsParPres.FieldByName('PARPRESID').AsString, [loCaseInsensitive]) Then
                        DMCXC.cdsDetallePres.Edit;
                     For iX := 1 To 12 Do
                     Begin
                        xmes := StrZero(IntToStr(iX), 2);
                      { para el cdsSQL }
                        DMCXC.cdsSQL.FieldByName('DPREEJMN' + XMES).AsString := FloatToStr(xmontos[iX]);
                        DMCXC.cdsSQL.FieldByName('DPREEJME' + XMES).AsString := FloatToStr(xmontos[iX + 12]);
                      { para el detalle }
                        DMCXC.cdsDetallePres.FieldByName('DPREEJMN' + XMES).AsString := FloatToStr(xmontos[iX]);
                        DMCXC.cdsDetallePres.FieldByName('DPREEJME' + XMES).AsString := FloatToStr(xmontos[iX + 12]);
                      //** 03/11/2000
                        If xmontos[iX] > 0 Then
                        Begin
                           DMCXC.cdsDetallePres.FieldByName('DPREVMMN' + XMES).AsString := FloatToStr((xmontosas[iX] + xmontosmo[iX]) - xmontos[iX]);
                           DMCXC.cdsDetallePres.FieldByName('DPREVMME' + XMES).AsString := FloatToStr((xmontosas[iX + 12] + xmontosmo[iX + 12]) - xmontos[iX + 12]);
                        End;
                      //**
                        If xmontos[iX] <> 0 Then
                           If (xmontosas[iX] <> 0) Or (xmontosmo[iX] <> 0) Then
                              DMCXC.cdsDetallePres.FieldByName('DPREVPMN' + XMES).AsString :=
                                 FloatToStr((xmontos[iX] / (xmontosas[iX] + xmontosmo[iX])) * 100)
                           Else
                              DMCXC.cdsDetallePres.FieldByName('DPREVPMN' + XMES).value := 200;
                        If xmontos[iX + 12] <> 0 Then
                           If (xmontosas[iX + 12] <> 0) Or (xmontosmo[iX + 12] <> 0) Then
                              DMCXC.cdsDetallePres.FieldByName('DPREVPME' + XMES).AsString :=
                                 FloatToStr((xmontos[iX + 12] / (xmontosas[iX + 12] + xmontosmo[iX + 12])) * 100)
                           Else
                              DMCXC.cdsDetallePres.FieldByName('DPREVPME' + XMES).value := 200;
// 03/11/2000
//                      xtotvmmn := xtotvmmn + StrToFloat(DMCXC.cdsDetallePres.FieldByName('DPREVMMN'+XMES).AsString);
//                      xtotvmme := xtotvmme + StrToFloat(DMCXC.cdsDetallePres.FieldByName('DPREVMME'+XMES).AsString);
                     End;
                     xtotvmmn := (xmontosas[1] + xmontosas[2] + xmontosas[3] + xmontosas[4] + xmontosas[5] + xmontosas[6] +
                        xmontosas[7] + xmontosas[8] + xmontosas[9] + xmontosas[10] + xmontosas[11] + xmontosas[12] +
                        xmontosmo[1] + xmontosmo[2] + xmontosmo[3] + xmontosmo[4] + xmontosmo[5] + xmontosmo[6] +
                        xmontosmo[7] + xmontosmo[8] + xmontosmo[9] + xmontosmo[10] + xmontosmo[11] + xmontosmo[12]) -
                        (xmontos[1] + xmontos[2] + xmontos[3] + xmontos[4] + xmontos[5] + xmontos[6] +
                        xmontos[7] + xmontos[8] + xmontos[9] + xmontos[10] + xmontos[11] + xmontos[12]);
                     xtotvmme := (xmontosas[13] + xmontosas[14] + xmontosas[15] + xmontosas[16] + xmontosas[17] + xmontosas[18] +
                        xmontosas[19] + xmontosas[20] + xmontosas[21] + xmontosas[22] + xmontosas[23] + xmontosas[24] +
                        xmontosmo[13] + xmontosmo[14] + xmontosmo[15] + xmontosmo[16] + xmontosmo[17] + xmontosmo[18] +
                        xmontosmo[19] + xmontosmo[20] + xmontosmo[21] + xmontosmo[22] + xmontosmo[23] + xmontosmo[24]) -
                        (xmontos[13] + xmontos[14] + xmontos[15] + xmontos[16] + xmontos[17] + xmontos[18] +
                        xmontos[19] + xmontos[20] + xmontos[21] + xmontos[22] + xmontos[23] + xmontos[24]);
                   //** 03/11/2000
                     For iX := 1 To 12 Do
                     Begin
                     { totales de EJ y VM }
                        xtotejmn := xtotejmn + xmontos[iX];
                        xtotejme := xtotejme + xmontos[iX + 12];
                     End;
                    //**
                    { para el detalle, se asignan los totales }
                     DMCXC.cdsDetallePres.FieldByName('DPRETOEJMN').AsString := FloatToStr(xtotejmn);
                     DMCXC.cdsDetallePres.FieldByName('DPRETOEJME').AsString := FloatToStr(xtotejme);
                     DMCXC.cdsDetallePres.FieldByName('DPRETOVMMN').AsString := FloatToStr(xtotvmmn);
                     DMCXC.cdsDetallePres.FieldByName('DPRETOVMME').AsString := FloatToStr(xtotvmme);
                     { si hubiera montos }
                     For iX := 1 To 12 Do
                        If (xmontosas[iX] <> 0) Or (xmontosmo[iX] <> 0) Then
                        Begin
                           xestado1 := true;
                           break;
                        End;
                     { me indica que hay que actualizar los VP }
                     If xEstado1 = true Then
                     Begin
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPMN').AsString :=
                           FloatToStr(((xmontos[1] + xmontos[2] + xmontos[3] + xmontos[4] + xmontos[5] + xmontos[6] +
                           xmontos[7] + xmontos[8] + xmontos[9] + xmontos[10] + xmontos[11] + xmontos[12]) /
                           (xmontosas[1] + xmontosas[2] + xmontosas[3] + xmontosas[4] + xmontosas[5] + xmontosas[6] +
                           xmontosas[7] + xmontosas[8] + xmontosas[9] + xmontosas[10] + xmontosas[11] + xmontosas[12] +
                           xmontosmo[1] + xmontosmo[2] + xmontosmo[3] + xmontosmo[4] + xmontosmo[5] + xmontosmo[6] +
                           xmontosmo[7] + xmontosmo[8] + xmontosmo[9] + xmontosmo[10] + xmontosmo[11] + xmontosmo[12])) * 100);
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPME').AsString :=
                           FloatToStr(((xmontos[13] + xmontos[14] + xmontos[15] + xmontos[16] + xmontos[17] + xmontos[18] +
                           xmontos[19] + xmontos[20] + xmontos[21] + xmontos[22] + xmontos[23] + xmontos[24]) /
                           (xmontosas[13] + xmontosas[14] + xmontosas[15] + xmontosas[16] + xmontosas[17] + xmontosas[18] +
                           xmontosas[19] + xmontosas[20] + xmontosas[21] + xmontosas[22] + xmontosas[23] + xmontosas[24] +
                           xmontosmo[13] + xmontosmo[14] + xmontosmo[15] + xmontosmo[16] + xmontosmo[17] + xmontosmo[18] +
                           xmontosmo[19] + xmontosmo[20] + xmontosmo[21] + xmontosmo[22] + xmontosmo[23] + xmontosmo[24])) * 100);
                        xestado1 := false;
                     End
                     Else
                     Begin
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPMN').AsString := FloatToStr(200);
                        DMCXC.cdsDetallePres.FieldByName('DPRETOVPME').AsString := FloatToStr(200);
                     End;
                     DMCXC.cdsSQL.Post;
                     DMCXC.cdsDetallePres.Post;
                     DMCXC.cdsDetallePres.ApplyUpdates(0);
                     xEstado := false;
                  End;
                  DMCXC.cdsParPres.next;
               End;
                 { se igualan variables }
               xmaxnivelinf := xmaxnivelint;
               xmaxdigitoinf := xmaxdigitoint;
            Until xmaxnivelsup = xmaxnivelint;
         End;
      End;
      DMCXC.cdsDetCxC.Next;
   End;
End;

//** 20/12/2000 - pjsv

Procedure TFAnticipo.dblcTipPreExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
//  if dblcdCnpEgr.Focused then exit;
   If dblcTipReg.Focused Then exit;
   If Length(dblcTipPre.Text) = 0 Then
   Begin
      Raise exception.Create('Falta Tipo de Presupuesto');
      dblcTipPre.SetFocus;
   End;
End;
//**

//** 20/12/2000 - pjsv

Procedure TFAnticipo.dblcdPresupExit(Sender: TObject);
Begin
   If xCrea = true Then exit;
   If bbtnRegCanc.Focused Then exit;
   If dblcdCCosto.Focused Then exit;
//  if dblcdCnpEgr.Focused then exit;
   If dblcTipReg.Focused Then exit;
  //** 20/12/2000 - pjsv
  //edtPresup.Text:=DMCXC.DMCXC.DisplayDescrip('TGE216','PARPRESDES','PARPRESID',dblcdPresup.Text);
   edtPresup.Text := DMCXC.DisplayDescrip('PPRES201', 'PARPRESDES', 'PARPRESID', dblcdPresup.Text);
  //**
   If Length(edtPresup.text) = 0 Then
   Begin
      Raise exception.Create('Falta Partida Presupuestal');
      dblcdPresup.SetFocus;
   End;
End;
//**

Procedure TFAnticipo.ppHeaderBand2BeforePrint(Sender: TObject);
Var
   sDocid, sSerie, sDocumento, sWhere, sCanje: String;
   sVendedor, sDesDoc, sComerid, sDesConPago: String;
Begin
End;

Procedure TFAnticipo.ppFooterBand2BeforePrint(Sender: TObject);
Var
   xIgv, xTotal: Double;
Begin
End;

Procedure TFAnticipo.dblcdTipoOperaExit(Sender: TObject);
Var
   sSQL: String;
Begin
   sSQL := 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CPTOCAB=' + QuotedStr(dblcdTipoOpera.text);
   If length(dblcdTipoOpera.Text) > 0 Then
   Begin
      //if edtTipoOpera.Text='' then
      edtTipoOpera.Text := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTODES', sSQL, 'CPTODES');
      ;
      If Length(Trim(edtTipoOpera.text)) = 0 Then
      Begin
         ShowMessage('Debe Ingresar Tipo de Registro');
         dblcdTipoOpera.SetFocus;
      End;
   End
   Else
   Begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcdTipoOpera.SetFocus;
      exit;
   End
End;

Procedure TFAnticipo.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFAnticipo.Z2bbtnPreviewClick(Sender: TObject);
Var
   xSQL, mes, ano, xWhere, mesdes, tMoneda, MONABR: String;
   xTotHaber: double;
Begin
   If DMCXC.wAdmin = 'S' Then Exit;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString <> 'S' Then
   Begin
      {if not AsientoCuadra then
         raise exception.Create('Error:  Asiento No Cuadra');}

      DMCXC.GeneraContab(dblcCia.Text, DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString, DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString, Self, 'P');

      // Se Transfiere la Data Generada en el SOLContabiliza
      DMCXC.cdsCXC.Data := DMCXC.cdsMovCnt.data;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      lblVEstado.caption := 'Previo';
      lblVProveedor.Caption := edtClie.text;
      xSQL := 'SELECT CNTGLOSA FROM CNT310 WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString);
      DMCXC.cdsQry5.close;
      DMCXC.cdsQry5.ProviderName := 'dspTGE';
      DMCXC.cdsQry5.DataRequest(xsql);
      DMCXC.cdsQry5.Open;

      lblVTipoCamb.Caption := FloatToStrF(StrToFloat(dbeTCambio.text), ffNumber, 10, 3);

      //lblPeriodo.Caption  := meAnoMM.text ;  reemplazado por
      mes := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 5, 2);
      ano := copy(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.BuscaQry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      lblVNoCompro.Caption := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;

      tMoneda := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMON_LOC', 'TMONID=' + quotedstr(dblcTMon.text), 'TMON_LOC');
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONABR');
      lblVMesDia.caption := DateToStr(dtpFEmis.date);

      DMCXC.CdsDetCxC.first;
      While Not DMCXC.CdsDetCxC.EOF Do
      Begin
         If DMCXC.CdsDetCxC.FieldByName('TIPDET').Asstring = 'TO' Then
         Begin
            lblV12.Caption := MONABR + FloatToStrF(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);
            break;
         End;
         DMCXC.CdsDetCxC.next;
      End;
      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      xsql := 'SELECT * FROM CNT301 '
         + 'WHERE CIAID=' + quotedstr(dblcCia.text) + ' AND '
         + 'CNTANOMM=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString)
         + ' order by CNT301.CNTREG';
      DMCXC.cdsCxC.Close;
      DMCXC.cdsCxC.DataRequest(xSQL);
      DMCXC.cdsCxC.Open;

      ppdbpPreview.DataSource := DMCXC.dsCxC;

      pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
      pprPreview.template.LoadFromFile;

      mes := copy(DMCXC.cdsCxC.FieldByName('CNTANOMM').asstring, 5, 2);
      ano := copy(DMCXC.cdsCxC.FieldByName('CNTANOMM').asstring, 1, 4);

      xWhere := 'MESIDR=''' + mes + '''';
      mesdes := DMCXC.Buscaqry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
      lblVPeriodo.Caption := mesdes + ' ' + ano;
      MONABR := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONABR');
      lblVMesDia.caption := DateToStr(dtpFEmis.date);

      lblVestado.caption := 'Contabilizado';
      xTotHaber := 0;

      // DMCXC.cdsDetCxP.DisableControls;
      DMCXC.cdsDetCxC.First;
      While Not DMCXC.cdsDetCxC.Eof Do
      Begin
         If DMCXC.cdsDetCxC.FieldByName('CCDH').AsString = 'H' Then
            xTotHaber := xTotHaber + FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').Value, 15, 2);
         DMCXC.cdsDetCxC.Next;
      End;
      DMCXC.cdsDetCxC.First;
      lblV8.caption := MONABR;
      lblV8.visible := Not (TMoneda = 'L');
      ppDBVText6.Visible := Not (TMoneda = 'L');

      lblV12.Caption := MONABR + FloatToStrF(xTotHaber, ffNumber, 15, 2);

   End;

   lblVCiades.Caption := edtCia.text;
   lblVauxiliar.Caption := dblcdClie.Text;
   lblVDiario.Caption := DMCXC.BuscaQry2('dspTGE', 'TGE104', 'TDIARDES', 'TDIARID=' + quotedstr(DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString), 'TDIARDES');
   lblVTD.Caption := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;
   lblVTipoCamb.Caption := FloatToStrF(StrToFloat(dbeTCambio.text), ffNumber, 10, 3);
   lblVNoCompro.Caption := DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString;
   lblVProveedor.Caption := edtClie.text;
   lblVmoneda.caption := DMCXC.BuscaQry2('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + quotedstr(dblcTMon.text), 'TMONDES');
   lblVGlosa.caption := DMCXC.cdsCxC.FieldByName('CNTGLOSA').asstring;

   DMCXC.cdsCxC.IndexFieldNames := 'CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := Nil;
   DMCXC.cdsCxC.IndexFieldNames := '';
End;

Procedure TFAnticipo.dblcTDiarioExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   edtTDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
   If length(edtTDiario.Text) = 0 Then
   Begin
      Raise Exception.Create('Falta Tipo de Diario');
      dblcTDiario.SetFocus;
   End;
   wTDiar := DMCXC.cdsTDoc.FieldByName('TDIARID').AsString; // Default(x ahora)
   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);

End;

Procedure TFAnticipo.Z2bbtnEliminaClick(Sender: TObject);
Var
   sSQL: String;
Begin
   If (DMCXC.cdsMovCxC.Modified) Or (DMCXC.cdsMovCxC.ChangeCount > 0) Then
      Raise exception.Create(' Debe Grabar primero ');

   If (FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat, 15, 2) <> FRound(DMCXC.cdsMovCxC.FieldByName('CCSALEXT').AsFloat, 15, 2)) Or
      (FRound(DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat - DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat, 15, 2) <> FRound(DMCXC.cdsMovCxC.FieldByName('CCSALLOC').AsFloat, 15, 2)) Then
   Begin
      Raise Exception.create('No se puede Eliminar, porque se encuentra en proceso de canje');
   End;

   If (DMCXC.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat > 0) Or (DMCXC.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat > 0) Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues el Anticipo se ha aplicado');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'A' Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues el Anticipo ya se encuentra Anulada');
   End;

   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString = 'S' Then
   Begin
      Raise Exception.create('No se puede Eliminar, pues el Anticipo ya se encuentra Contabilizado');
   End;

   If DMCXC.VerificaCierre(dblcCia.text, dtpFEmis.Date) Then
   Begin
      Raise Exception.Create(' PERIODO CERRADO ');
   End;

   If MessageDlg('Eliminar el Anticipo' + chr(13) + '     ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If DMCXC.cdsMovCxC.FieldByName('CCESTADO').Asstring = 'P' Then
      DMCXC.SaldosAuxiliarCLG(DMCXC.cdsMovCxC.FieldByName('CIAID').Asstring, DMCXC.cdsMovCxC.FieldByName('CCANOMES').Asstring,
         DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString, DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString,
         '-', (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat, (-1) * DMCXC.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat, DMCXC.CdsMovCxC.FieldByName('TMONID').AsString);

   sSQL := 'UPDATE CXC302 SET CCESTADO = ''E'' ';
   sSQL := sSQL + ' WHERE CIAID    = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + '''' + ' AND '
      + ' TDIARID  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString + '''' + ' AND '
      + ' CCANOMES = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCANOMES').AsString + '''' + ' AND '
      + ' CCNOREG  = ' + '''' + DMCXC.cdsMovCxC.FieldByName('CCNOREG').AsString + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString := 'E';
   DMCXC.cdsMovCxC.FieldByName('USERANUL').AsString := DMCXC.wUsuario;
   DMCXC.cdsMovCxC.FieldByName('FECANUL').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('HORANUL').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.Post;
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE '
      + 'CIAID=''' + dblcCia.Text + ''' AND '
      + 'DOCID=''' + wTDoc + ''' AND '
      + 'CCSERIE=' + QuotedStr('000') + ' AND '
      + 'CCNODOC=''' + edtNoDoc.Text + '''');
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');

   EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Asstring);

   ShowMessage('Registro Eliminado... Pulse Intro para continuar');
End;

Procedure TFAnticipo.FormShow(Sender: TObject);
Var
   xsql, xWhere: String;
Begin
   xCrea := True;
   xFlGrid := True;
  //** 05/04/2001 - pjsv
   xsql := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
   DMCXC.cdsCCosto.Close;
   DMCXC.cdsCCosto.DataRequest(xsql);
   DMCXC.cdsCCosto.open;
  //**

   //   Busca TDocId y TDiarId - Inicio
   If DMCXC.cdsTDoc.RecordCount > 0 Then
   Begin
      If DMCXC.cdsTDoc.RecordCount > 1 Then
      Begin
         ShowMessage('Ojo: Existe más de un registro tipo de Anticipo');
         // Pide eleccion de FReg 'N' que existan en TDoc (TGE110)
      End;
      wTDoc := DMCXC.cdsTDoc.FieldByName('DOCID').AsString;
      dblcTDiario.Enabled := False;
      If (DMCXC.cdsTDoc.FieldByName('TDIARID').AsString <> '') And (DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString <> '') Then
      Begin
         dblcTDiario.Enabled := True;
         DMCXC.cdsTDiario.Filter := 'TDIARID=' + QuotedStr(DMCXC.cdsTDoc.FieldByName('TDIARID').AsString) + ' OR TDIARID=' + QuotedStr(DMCXC.cdsTDoc.FieldByName('TDIARID2').AsString);
         DMCXC.cdsTDiario.Filtered := True;
          //ShowMessage('Ojo: Este Tipo de Documento tiene más de un T/Diario');
         // Pide eleccion de TDiarID
      End
      Else
      Begin
         DMCXC.cdsTDiario.Filter := 'TDIARID=' + QuotedStr(DMCXC.cdsTDoc.FieldByName('TDIARID').AsString);
         DMCXC.cdsTDiario.Filtered := True;

         dblcTDiario.text := DMCXC.cdsTDoc.FieldByName('TDIARID').AsString;
         edtTDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
         wTDiar := DMCXC.cdsTDoc.FieldByName('TDIARID').AsString; // Default(x ahora)
         xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', wTDiar);
      End;

   End
   Else
   Begin
      ShowMessage('Tipos de Documento no registra definición de Anticipo');
      // Forma de Registro (N) no definido en tabla TDocum(TGE110)     ¿?
      // Salir de N/Credito
   End;
   ///////////  Busca TDocId y TDiarId - Fin... Resultado: wTDoc y wTDiar

   InicializaCds; // Inicializa en Blanco (Filtra) Client Data Sets--> CiaId=''
   InicializaVars;

   If DMCXC.wModo = 'A' Then
   Begin
      InsertaRegistro;
   End
   Else
   Begin
      dblcCia.Text := DMCXC.cdsMovCxC.FieldByName('CIAID').AsString;
      dblcdClie.Text := DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString;
      dblcdClieRuc.Text := DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString;
      dblcTDiario.TEXT := DMCXC.cdsMovCxC.FieldByName('TDIARID').AsString;

      edtTDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      edtNoDoc.Text := DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString;
      dbeTCambio.Text := DMCXC.cdsMovCxC.FieldByName('CCTCAMPR').AsString;
      xSector := DMCXC.cdsMovCxC.FieldByName('TVTAID').AsString;
      xZona := DMCXC.cdsMovCxC.FieldByName('ZVTAID').AsString;

      edtCia.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);
      edtClie.Text := DMCXC.DisplayDescrip('TGE204', 'ClieDes', 'ClieRUC', dblcdClieRuc.Text);
      edtTMon.Text := DMCXC.DisplayDescrip('TGE103', 'TmonDes', 'TmonId', dbeTCambio.Text);

      If DMCXC.cdsMovCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
      Begin
         DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
            + ' and OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )');
         DMCXC.cdscpto.Open;
      End
      Else
      Begin
         DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE CIAID=' + QuotedStr(dblcCia.text)
            + ' and OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )');
         DMCXC.cdscpto.Open;
      End;
   End;

{
   // Reglas de Negocio
   If DMCXC.wVRN_PagosParciales='S' then begin
      DMCXC.cdsDetCanje.FieldByName('CCPFCJE').ReadOnly  := False ;
      DMCXC.cdsDetCanje.FieldByName('DCDTCAMB').ReadOnly := False ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOLOC').ReadOnly := False ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOEXT').ReadOnly := False ;
      end
   else begin
      DMCXC.cdsDetCanje.FieldByName('CCPFCJE').ReadOnly  := True ;
      DMCXC.cdsDetCanje.FieldByName('DCDTCAMB').ReadOnly := True ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOLOC').ReadOnly := True ;
      DMCXC.cdsDetCanje.FieldByName('DCDMOEXT').ReadOnly := True ;
   end;
}
   DMCXC.cdsCanjes.FieldByName('CCMTOLOC').ReadOnly := False;

   DMCXC.cdsTDoc.Filtered := False;

   If DMCXC.wModo = 'A' Then
   Begin
      EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ');
      RecuperarCiaUnica(dblcCia, edtCia);
   End
   Else
   Begin
      wCje := DMCXC.cdsMovCxC.FieldByName('CCCANJE').AsString;
      xWhere := 'TMonId=' + '''' + dblcTMon.Text + '''' + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';
      edtTMon.Text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES', xWhere, 'TMONDES');

      If DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString = 'I' Then
         EstadoDeForma(0, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, ' ')
      Else
         EstadoDeForma(1, DMCXC.cdsMovCxC.FieldByName('CCESTADO').AsString, DMCXC.cdsMovCxC.FieldByName('CC_CONTA').AsString);

      FiltraGrids;
//      bbtnSumatClick(Sender);
////// para que muestre el monto en el segundo tab en caso de edición

      edtFinal.Text := ' El Monto Total del Anticipo es por ' + FloatToStrF(DMCXC.cdsMovCxC.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2) + ' ' + edtTmon.Text;

      dblcdTipoOpera.text := DMCXC.cdsMovCxC.FieldByName('CPTOID').AsString;
      edtTipoOpera.text := DMCXC.DisplayDescrip('CXC208', 'CPTODES', 'CPTOCAB', dblcdTipoOpera.Text);

//////
   End;

   xCrea := False;
End;

Procedure TFAnticipo.CargaDataSource;
Begin
   dblcTMon.DataSource := DMCXC.dsMovCxC;
   dbeTCambio.DataSource := DMCXC.dsMovCxC;
   dtpFEmis.DataSource := DMCXC.dsMovCxC;
   dblcClAux.DataSource := DMCXC.dsMovCxC;
   dblcdClie.DataSource := DMCXC.dsMovCxC;
   dblcdClieRuc.DataSource := DMCXC.dsMovCxC;
   dbeNoReg.DataSource := DMCXC.dsMovCxC;
   dtpFComp.DataSource := DMCXC.dsMovCxC;
   dbeMtoOri.DataSource := DMCXC.dsMovCxC;
   dblcdTipoOpera.DataSource := DMCXC.dsMovCxC;
   wwDBEdit1.DataSource := DMCXC.dsMovCxC;
   dbgDetCxC.DataSource := DMCXC.dsDetCxC;
   dbeImporte.DataSource := DMCXC.dsDetCxC;
   dbeDH.DataSource := DMCXC.dsDetCxC;
   dbeCuenta.DataSource := DMCXC.dsDetCxC;
   dbeGlosa.DataSource := DMCXC.dsDetCxC;
   dblcdCnpEgr.DataSource := DMCXC.dsDetCxC;
   dblcdCCosto.DataSource := DMCXC.dsDetCxC;
   dblcCia.LookupTable := DMCXC.cdsCia;
   dblcTDiario.LookupTable := DMCXC.cdsTDiario;
   dblcTMon.LookupTable := DMCXC.cdsTMon;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcdClie.LookupTable := DMCXC.cdsClie;
   dblcdClieRuc.LookupTable := DMCXC.cdsClie;
   dblcdTipoOpera.LookupTable := DMCXC.cdsCptoCab;
   dblcTipReg.LookupTable := DMCXC.cdsTipReg;
   dblcdCnpEgr.LookupTable := DMCXC.cdsCpto;
   dblcdCCosto.LookupTable := DMCXC.cdsCCosto;
   dblcdPresup.LookupTable := DMCXC.cdsPresup;
End;

End.

