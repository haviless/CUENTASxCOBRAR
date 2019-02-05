Unit CXC204;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
   ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB, wwSpeedButton,
   wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
   ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
   ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod;

Type
   TFLetrasTerceros = Class(TForm)
      pnlPie: TPanel;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnContab: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      Z2bbtnAnula: TBitBtn;
      bbtnRegresa: TBitBtn;
      bbtnCancela: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Label8: TLabel;
      pnlCabecera: TPanel;
      pnlCab2: TPanel;
      lblTDoc: TLabel;
      lblTDiario: TLabel;
      lblFCanje: TLabel;
      lblFRecep: TLabel;
      lblTMon: TLabel;
      lblTCambio: TLabel;
      Label7: TLabel;
      lblCnpEgr: TLabel;
      Label13: TLabel;
      lblGlosa: TLabel;
      dblcTDoc: TwwDBLookupCombo;
      edtTDoc: TEdit;
      dblcTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      dtpFEmis: TwwDBDateTimePicker;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      dbeTCLet: TwwDBEdit;
      dtpFComp: TwwDBDateTimePicker;
      dblcdCnpEgr: TwwDBLookupComboDlg;
      dbeCuenta: TwwDBEdit;
      dbeGlosa: TwwDBEdit;
      pnlCab1: TPanel;
      Label1: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      Label2: TLabel;
      edtCanje: TwwDBEdit;
      dblcdClie: TwwDBLookupComboDlg;
      Label3: TLabel;
      Label4: TLabel;
      dblcdClieRuc: TwwDBLookupComboDlg;
      edtClie: TEdit;
      pnlEstado: TPanel;
      lblAnula: TLabel;
      lblActivo: TLabel;
      lblContab: TLabel;
      lblAcepta: TLabel;
      Label9: TLabel;
      bbtnCalc: TBitBtn;
      bbtnSumat: TBitBtn;
      pnlDetalle: TPanel;
      pc1: TPageControl;
      ts1: TTabSheet;
      TabSheet2: TTabSheet;
      pnlLetras: TPanel;
      Label14: TLabel;
      dbgLetras: TwwDBGrid;
      btnActReg: TwwIButton;
      pnlRegistro: TPanel;
      Label11: TLabel;
      lblTipReg: TLabel;
      Label12: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      dbeNoReg: TwwDBEdit;
      dbeLetra: TwwDBEdit;
      dtpFVcmto: TwwDBDateTimePicker;
      dbeTotal: TwwDBEdit;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      dbeMon: TwwDBEdit;
      dtpFValor: TwwDBDateTimePicker;
      pnlPendientes: TPanel;
      Label5: TLabel;
      dbgPendientes: TwwDBGrid;
      pnlDocCanje: TPanel;
      Label6: TLabel;
      dbgDocCanje: TwwDBGrid;
      edtFinal: TEdit;
      pnlDatos: TPanel;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      dbeLetIni: TwwDBEdit;
      bbtnDatos: TBitBtn;
      edtToTal1: TEdit;
      edtTotal: TEdit;
      bbtnCreaL: TBitBtn;
      dbeDias: TwwDBEdit;
      dbeNLet: TwwDBEdit;
      dblcdAval: TwwDBLookupComboDlg;
      Label22: TLabel;
      Label30: TLabel;
      dblcClAux: TwwDBLookupCombo;
      bbtnBorra: TBitBtn;
      bbtnOk: TBitBtn;
      dbeImp: TwwDBEdit;
      dbeGas: TwwDBEdit;
      dbeIGV: TwwDBEdit;
      Label10: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label33: TLabel;
      dbeInt: TwwDBEdit;
      pnlConta: TPanel;
      Label34: TLabel;
      dbeComp: TwwDBEdit;
      bbtnCont: TBitBtn;
      bbtnCanc2: TBitBtn;
      Label35: TLabel;
      ppdbpCanje: TppDBPipeline;
      pprCanje: TppReport;
      ppdbpDCanje: TppDBPipeline;
      ppdbpLetras: TppDBPipeline;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppDetailBand2: TppDetailBand;
      ppSummaryBand1: TppSummaryBand;
      ppTitleBand2: TppTitleBand;
      ppDetailBand3: TppDetailBand;
      ppSummaryBand2: TppSummaryBand;
      pplCia: TppLabel;
      ppDBText1: TppDBText;
      ppDBText3: TppDBText;
      ppDBText5: TppDBText;
      bbtnImpCanje: TBitBtn;
      pptCliente: TppDBText;
      pplTitulo: TppLabel;
      ppLine1: TppLine;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppDBText7: TppDBText;
      ppLabel7: TppLabel;
      pplClie: TppLabel;
      ppLabel1: TppLabel;
      ppDBText6: TppDBText;
      ppLabel2: TppLabel;
      pplMon: TppLabel;
      ppLabel8: TppLabel;
      ppDBText8: TppDBText;
      ppLabel9: TppLabel;
      ppDBText9: TppDBText;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLabel10: TppLabel;
      ppDBText10: TppDBText;
      ppDBText12: TppDBText;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel14: TppLabel;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLine6: TppLine;
      ppLine5: TppLine;
      ppLabel17: TppLabel;
      ppDBText16: TppDBText;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppDBCalc3: TppDBCalc;
      ppLine4: TppLine;
      ppLabel20: TppLabel;
      ppLine7: TppLine;
      ppDBText4: TppDBText;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppVariable1: TppVariable;
      ppVariable2: TppVariable;
      pprLetras: TppReport;
      ppDetailBand4: TppDetailBand;
      ppFooterBand2: TppFooterBand;
      ppDBText13: TppDBText;
      ppDBText17: TppDBText;
      pplLetras: TppLabel;
      bbtnImpLet: TBitBtn;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppLabel24: TppLabel;
      pplClie3: TppLabel;
      pplClie2: TppLabel;
      ppDBText23: TppDBText;
      pplCia2: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      Procedure FormActivate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure edtCanjeExit(Sender: TObject);
      Procedure bbtnBasuraDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure bbtnSumatClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure dblcdCnpEgrExit(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure bbtnCancelaClick(Sender: TObject);
      Procedure dtpFCompExit(Sender: TObject);
      Procedure dtpFEmisExit(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure dbgLetrasMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure dbeTCLetExit(Sender: TObject);
      Procedure bbtnBorraClick(Sender: TObject);
      Procedure bbtnRegresaClick(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure Z2bbtnAnulaClick(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure tnbDetalleChange(Sender: TObject; NewTab: Integer;
         Var AllowChange: Boolean);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcdClieExit(Sender: TObject);
      Procedure dblcdClieRucExit(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcTDiarioExit(Sender: TObject);
      Procedure btnActRegClick(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbgLetrasDblClick(Sender: TObject);
      Procedure dbgLetrasKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure bbtnRegresaEnter(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dbgDocCanjeCalcCellColors2(Sender: TObject;
         Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure dbgDocCanjeColExit2(Sender: TObject);
      Procedure dbgDocCanjeDragOver2(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
      Procedure dbgDocCanjeKeyPress2(Sender: TObject; Var Key: Char);
      Procedure dbgDocCanjeMouseDown2(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure dbgPendientesDragOver2(Sender, Source: TObject; X,
         Y: Integer; State: TDragState; Var Accept: Boolean);
      Procedure dbgPendientesEndDrag2(Sender, Target: TObject; X,
         Y: Integer);
      Procedure dbgPendientesMouseDown2(Sender: TObject;
         Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      Procedure TabSheet2Enter(Sender: TObject);
      Procedure bbtnDatosClick(Sender: TObject);
      Procedure bbtnCreaLClick(Sender: TObject);
      Procedure pc1Change(Sender: TObject);
      Procedure bbtnCalculaClick(Sender: TObject);
      Procedure pnlDatosEnter(Sender: TObject);
      Procedure dbeDiasExit(Sender: TObject);
      Procedure dbeNLetExit(Sender: TObject);
      Procedure dbeLetraExit(Sender: TObject);
      Procedure dbeImpExit(Sender: TObject);
      Procedure dbeGasExit(Sender: TObject);
      Procedure dbeIGVExit(Sender: TObject);
      Procedure dbeIntExit(Sender: TObject);
      Procedure bbtnContClick(Sender: TObject);
      Procedure bbtnCanc2Click(Sender: TObject);
      Procedure ppHeaderBand1BeforePrint(Sender: TObject);
      Procedure ppVariable1Calc(Sender: TObject; Var Value: Variant);
      Procedure ppVariable2Calc(Sender: TObject; Var Value: Variant);
      Procedure ppDetailBand4BeforePrint(Sender: TObject);
      Procedure bbtnImpLetClick(Sender: TObject);
      Procedure pprLetrasPrintingComplete(Sender: TObject);
      Procedure dtpFVcmtoExit(Sender: TObject);
      Procedure bbtnImpCanjeClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure InicializaPies;
      Procedure FiltraCanje(xModo: String);
      Procedure DetCxCUsuario;
      Procedure DetCxC2Usuario;
      Procedure InicializaDatos;
      Procedure InicializaClientDataSet;
      Procedure GrabaDetCanje;
      Procedure GrabaRegCxP305;
      Procedure ActualizaSaldosMovCxP;
      Procedure ActualizaPagadoMovCxP;
      Procedure EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
      Procedure GrabaContabilidadDocumentos;
      Procedure GrabaContabilidadLetra;
      Procedure GeneraDiferenciaCambio;
      Procedure GrabaDiferenciaCambio;
      Procedure DetalleLetra;
      Procedure GeneraDetalle;
      Procedure RegistroDetalle(xTipDet, xTipCar: String; xMonto: Double);
      Procedure EstadoNDebito(xxEstado: String);
      Procedure InsertaCanjes(xxCds: TwwClientDataSet);
      Function VerificaTotal: Boolean;
      Function GeneraAsientoCanje: Boolean;
      Function ValidaCabecera: Boolean;
      Function ExisteMovCxC(xxCia, xxTDiario, xxAAMM, xxNoReg: String): Boolean;
      Function ExisteLetras(xxCia, xxTCanje, xxCanje: String): Boolean;
      Function VerificaDocumentosPendientes: Boolean;
      Function NGeneraAsiento: Boolean;
      Procedure NDetalleContable;
      Procedure NGeneraDiferenciaCambio;
      Procedure NGrabaDiferenciaCambio;
      Procedure NContabilidadCanje;
      Procedure InsertaLetra;
   End;

Var
   FLetrasTerceros: TFLetrasTerceros;
   xNDTDiario: String;
   xSQL: String;
   xTAutoNum, xTAno, xTMes: String;
   xCtaDif, xGloDif, xCptoDif: String;
   xGlosa, xLote, xCuenta, xConcepto, xDH: String;
   xDifCam, xPagAnt, xDifCLoc, xDifCExt: Double;
   xTotLoc, xTotExt: Double;
   xxTCambio: Double;
   xCrea: Boolean;
   xFlagGr: Boolean;
   xModoL: String;
   xFlagP: Boolean;

Implementation

Uses CxCDM, CxC001;

{$R *.DFM}

Procedure TFLetrasTerceros.dblcdClieExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If length(dblcdClie.Text) > 0 Then
   Begin
      edtClie.Text := DisplayDescrip('TGE204', 'CLIEDES', 'CLIEID', dblcdClie.Text);
      If length(edtClie.Text) = 0 Then
      Begin
         ShowMessage('Proveedor no existe');
         dblcdClie.Text := '';
         dblcdClieRuc.Text := '';
         dblcdClie.SetFocus;
         exit;
      End;
      dblcdClieRuc.Text := DM1.cdsQry2.FieldByName('CLIERUC').AsString;
      dblcClAux.Text := DM1.cdsQry2.FieldByName('CLAUXID').AsString;

      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'T';
      DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');
      EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   End
   Else
   Begin
      edtClie.Text := '';
   End;
End;

Procedure TFLetrasTerceros.FormActivate(Sender: TObject);
Begin
   xCrea := True;

//   DM1.AccesosUsuarios( DM1.wModulo,DM1.wUsuario,'2',Screen.ActiveForm.Name );

   // Reglas de Negocio
{   If DM1.wVRN_PagosParciales='S' then begin
      DM1.cdsCanje.FieldByName('CCPTCCJE').ReadOnly := False;
      DM1.cdsCanje.FieldByName('CCPMOLOC').ReadOnly := False;
      DM1.cdsCanje.FieldByName('CCPMOEXT').ReadOnly := False;
      end
   else begin
      DM1.cdsCanje.FieldByName('CCPTCCJE').ReadOnly := True;
      DM1.cdsCanje.FieldByName('CCPMOLOC').ReadOnly := True;
      DM1.cdsCanje.FieldByName('CCPMOEXT').ReadOnly := True;
   end;
}

   DM1.cdsLetras.IndexFieldNames := 'CIAID;DOCID;CCNODOC';

   pc1.ActivePage := ts1;

   If DM1.wModo = 'A' Then
   Begin
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma(0, ' ', ' ');
   End
   Else
   Begin
      xFlagGr := False;
      dblcCia.Text := DM1.cdsCCanje.FieldByName('CIAID').AsString;
      edtCanje.Text := DM1.cdsCCanje.FieldByName('CANJE').AsString;

      FiltraCanje(DM1.wModo);

      edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
      edtClie.text := DisplayDescrip('TGE204', 'CLIEDES', 'CLIERUC', dblcdClieRuc.Text);
      edtTDoc.Text := DisplayDescrip('TGE110', 'DOCDES', 'DocID', dblcTDoc.Text);
      edtTDiario.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
      edtTMon.Text := DisplayDescrip('TGE103', 'TMONDES', 'TMonID', dblcTMon.Text);

      If DM1.cdsCCanje.FieldByName('CJESTADO').AsString = 'I' Then
         EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ')
      Else
      Begin
         EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString);
      End;
      bbtnSumatClick(Sender);
   End;

   xCrea := False;
End;

Procedure TFLetrasTerceros.EstadoDeForma(xxModo: Integer; xMovEstado, xMovConta: String);
Begin
   dblcCia.Enabled := False;
   dblcdClie.Enabled := False;
   dblcdClieRuc.Enabled := False;
   edtCanje.Enabled := False;
   dblcTDoc.Enabled := False;
   dblcTDiario.Enabled := False;
   dtpFComp.Enabled := False;
   pnlCab1.Enabled := False;
   pnlCab2.Enabled := False;

   bbtnOK.Enabled := False;
   bbtnBorra.Enabled := False;

   pnlDetalle.Enabled := False;
   dbgPendientes.Enabled := False;
   dbgDocCanje.Enabled := False;
   dbgLetras.Enabled := False;
   dbgPendientes.ReadOnly := True;
   dbgDocCanje.ReadOnly := True;
   dbgLetras.ReadOnly := True;
   btnActReg.Enabled := False;

   pnlPie.Refresh;
   pnlPie.Enabled := False;
   bbtnRegresa.Enabled := False;
   bbtnCancela.Enabled := False;
   Z2bbtnGraba.Enabled := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled := False;
   Z2bbtnImprime.Enabled := False;
   Z2bbtnContab.Enabled := False;
   Z2bbtnNuevo.Enabled := False;

   lblActivo.Visible := False;
   lblAcepta.Visible := False;
   lblAnula.Visible := False;
   lblContab.Visible := False;
   EstadoNDebito('S');

   If xxModo = 0 Then
   Begin
      If xMovEstado = ' ' Then
      Begin
         pnlCab1.Enabled := True;
         dblcCia.Enabled := True;
         edtCanje.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         dblcCia.SetFocus;
      End;
      If xMovEstado = 'X' Then
      Begin
         pnlCab1.Enabled := True;
         dblcdClie.Enabled := True;
         dblcdClieRuc.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;
         dblcdClie.SetFocus;
      End;
      If xMovEstado = 'T' Then
      Begin
         pnlCab1.Enabled := True;
         pnlCab2.Enabled := True;
         dblcTDoc.Enabled := True;
         dblcTDiario.Enabled := True;
         dtpFComp.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := False;
         dblcTDoc.SetFocus;
      End;
      If xMovEstado = 'I' Then
      Begin
         pnlCab2.Enabled := True;
         bbtnOK.Enabled := True;
         bbtnBorra.Enabled := True;

         lblActivo.Visible := True;
         dtpFEmis.SetFocus;
      End;
   End
   Else
   Begin
      If xMovConta = 'S' Then
      Begin
         pnlDetalle.Enabled := True;
         dbgDocCanje.Enabled := True;
         dbgLetras.Enabled := True;

         lblContab.Visible := True;
      End
      Else
      Begin
         If xMovEstado = 'T' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgLetras.ReadOnly := False;
            btnActReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            lblActivo.Visible := True;
            EstadoNDebito(DM1.cdsCCanje.FieldByName('NDEBITO').AsString);
         End;
         If xMovEstado = 'I' Then
         Begin
            pnlDetalle.Enabled := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;
            dbgPendientes.ReadOnly := False;
            dbgDocCanje.ReadOnly := False;
            dbgLetras.ReadOnly := False;
            btnActReg.Enabled := True;

            pnlPie.Enabled := True;
            bbtnRegresa.Enabled := True;
            bbtnCancela.Enabled := True;
            Z2bbtnGraba.Enabled := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled := True;
            lblActivo.Visible := True;
            EstadoNDebito(DM1.cdsCCanje.FieldByName('NDEBITO').AsString);
         End;
         If (xMovEstado = 'P') Or (xMovEstado = 'C') Then
         Begin
            pnlDetalle.Enabled := True;
            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;
            Z2bbtnContab.Enabled := True;

            lblAcepta.Visible := True;
         End;
         If xMovEstado = 'A' Then
         Begin
            pnlDetalle.Enabled := True;

            dbgDocCanje.Enabled := True;
            dbgLetras.Enabled := True;

            pnlPie.Enabled := True;
            Z2bbtnImprime.Enabled := True;

            lblAnula.Visible := True;
         End;
      End;
   End;

   If DM1.wModo = 'A' Then
   Begin
      Z2bbtnNuevo.Enabled := True;
   End;

   If DM1.wModo = 'C' Then
   Begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled := False;
      pnlCab2.Enabled := False;

      bbtnOK.Enabled := False;
      bbtnBorra.Enabled := False;

      dbgPendientes.Enabled := False;
      dbgDocCanje.Enabled := False;
      dbgLetras.Enabled := False;
      dbgPendientes.ReadOnly := True;
      dbgDocCanje.ReadOnly := True;
      dbgLetras.ReadOnly := True;
      btnActReg.Enabled := False;
      pnlDatos.Enabled := False;

      pnlPie.Refresh;
      pnlPie.Enabled := False;
      bbtnRegresa.Enabled := False;
      bbtnCancela.Enabled := False;
      Z2bbtnGraba.Enabled := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled := False;
      Z2bbtnImprime.Enabled := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled := False;
   End;
End;

Procedure TFLetrasTerceros.EstadoNDebito(xxEstado: String);
Begin
   If (xxEstado = 'N') Or (Length(xxEstado) = 0) Then
   Begin
      pnlDatos.Enabled := True;
   End;
   If xxEstado = 'S' Then
   Begin
      pnlDatos.Enabled := False;
      btnActReg.Enabled := False;
   End;
End;

Procedure TFLetrasTerceros.InicializaPies;
Begin
   dbgDocCanje.ColumnByName('CPNoDoc').FooterValue := 'Totales';
   dbgDocCanje.ColumnByName('CPSalLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CPSalExt').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoLoc').FooterValue := '';
   dbgDocCanje.ColumnByName('CCPMoExt').FooterValue := '';

   dbgLetras.ColumnByName('CPNoDoc').FooterValue := 'Totales';
//   dbgLetras.ColumnByName('lkTMonID').FooterValue:=DM1.cdsLetraslkTMon.Value;
   dbgLetras.ColumnByName('CPMtoOri').FooterValue := '';
   dbgLetras.ColumnByName('CPMtoLoc').FooterValue := '';
   dbgLetras.ColumnByName('CPMtoExt').FooterValue := '';
End;

Procedure TFLetrasTerceros.InicializaDatos;
Begin
   xFlagGr := false;
   dtpFValor.Date := date;
   dtpFEmis.Date := date;
   dtpFComp.Date := date;
   dblcdClieRuc.Text := '';
   dblcdClie.Text := '';
   dblcTMon.Text := '';
   edtTMon.Text := '';
   dbeTCLet.Text := '';
   dbeCuenta.Text := '';
   dbeGlosa.Text := '';
   edtClie.Text := '';
   dblcCia.Text := '';
   edtCia.Text := '';
   edtCanje.Text := '';
   dblcTDoc.Text := '';
   edtTDoc.Text := '';
   dblcTDiario.Text := '';
   edtTDiario.Text := '';
End;

Procedure TFLetrasTerceros.InicializaClientDataSet;
Begin
   Filtracds(DM1.cdsDetCxC, 'Select * from CXC302 Where CIAID=''''');
   Filtracds(DM1.cdsMovCxC2, 'Select * from CXC301 Where CIAID=''''');
   Filtracds(DM1.cdsDetCanje, 'Select * from CXC305 Where CIAID=''''');
   Filtracds(DM1.cdsCanjes, 'Select * from CXC304 Where CIAID=''''');
   Filtracds(DM1.cdsLetras, 'Select * from CXC301 Where CIAID=''''');
   Filtracds(DM1.cdsMovCxC, 'Select * from CXC301 Where CIAID=''''');
End;

Procedure TFLetrasTerceros.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   // Cancela todas las modificaciones en los cds.
   DM1.cdsLetras.CancelUpdates;
   DM1.cdsDetCxC.CancelUpdates;
   DM1.cdsMovCxC2.CancelUpdates;
   DM1.cdsCanjes.CancelUpdates;
   DM1.cdsDetCanje.CancelUpdates;

   If (DM1.wModo = 'A') And (xFlagGr) Then
   Begin
      DM1.cdsCCanje.Delete;
      DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');
      DM1.cdsLetras.First;
      While Not DM1.cdsLetras.Eof Do
      Begin
         DM1.cdsLetras.Delete;
      End;
      DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
   End
   Else
   Begin
      DM1.cdsCCanje.CancelUpdates;
   End;
   // Eliminar Filtros
   DM1.cdsDetCxC.Filtered := False;
   DM1.cdsTDoc.Filtered := False;
   DM1.cdsCanjes.Filtered := False;
   DM1.cdsLetras.Filtered := False;
   DM1.cdsTMon.Filtered := False;
End;

Procedure TFLetrasTerceros.FiltraCanje(xModo: String);
Begin
   Filtracds(DM1.cdsMovCxC2, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'CLIEID=' + '''' + dblcdClie.Text + '''' + ' and '
      + 'CCESTADO=' + '''' + 'P' + '''');

   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsMovCxC2.Filter := '';
   DM1.cdsMovCxC2.Filter := 'FlagVar<>' + '''' + 'XX' + '''' + ' and CCSALLOC>0 and '
      + 'CCCANJE<>' + '''' + edtCanje.Text + '''';

   DM1.cdsMovCxC2.Filtered := True;

   Filtracds(DM1.cdsCanjes, 'Select * from CXC304 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   Filtracds(DM1.cdsDetCanje, 'Select * from CXC305 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');

   Filtracds(DM1.cdsLetras, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');
   If xModo <> 'A' Then
   Begin
      Filtracds(DM1.cdsDetCxC, 'Select * from CXC302 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');
      DM1.cdsDetCxC.First;
   End;
   If DM1.cdsCCanje.FieldByName('NDEBITO').AsString = 'S' Then
   Begin
      Filtracds(DM1.cdsMovCxC, 'Select * from CXC301 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' AND '
         + 'DOCID=' + '''' + DM1.cdsCCanje.FieldByName('NDDOC').AsString + '''' + ' AND '
         + 'CCSERIE=' + '''' + DM1.cdsCCanje.FieldByName('NDSERIE').AsString + '''' + ' AND '
         + 'CCNODOC=' + '''' + DM1.cdsCCanje.FieldByName('NDNUMERO').AsString + '''');
   End;
End;

Procedure TFLetrasTerceros.edtCanjeExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If bbtnBorra.Focused Then Exit;

   edtCanje.Text := StrZero(edtCanje.Text, DM1.cdsCCanje.FieldByName('CANJE').Size);

   If edtCanje.text = '000000' Then
   Begin
      edtcanje.SetFocus;
      Raise exception.Create('Error :  Falta Registrar Número de Canje');
   End;
   If DM1.BuscaCanje(dblcCia.Text, 'LC', edtCanje.Text) Then
   Begin
      edtcanje.SetFocus;
      Raise Exception.Create('Error :  Canje Ya Existe');
   End;

   // Si No Existe Canje Se Inserta Registro
   DM1.cdsCCanje.Insert;
   DM1.cdsCCanje.FieldByName('CIAID').AsString := dblcCia.Text;
   DM1.cdsCCanje.FieldByName('TCANJEID').AsString := 'LC';
   DM1.cdsCCanje.FieldByName('CANJE').AsString := edtCanje.Text;
   DM1.cdsCCanje.FieldByName('DOCID').AsString := '  ';
   DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'X';

   DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');
   Filtracds(DM1.cdsCCanje, 'Select * from CXC307 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CANJE=' + '''' + edtCanje.Text + '''');

   DM1.cdsTDoc.Filtered := true;

   bbtnSumatClick(Sender);

   EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   xFlagGr := True;
End;

Procedure TFLetrasTerceros.bbtnBasuraDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Function TFLetrasTerceros.ValidaCabecera: Boolean;
Begin
   If length(dblcCia.Text) = 0 Then Raise exception.Create('Falta Código de Compañía');
   If length(edtCia.Text) = 0 Then Raise exception.Create('Código de Compañía Errado');
   If length(edtCanje.Text) = 0 Then Raise exception.Create('Falta No. de Canje');
   If length(dblcdClie.Text) = 0 Then Raise exception.Create('Falta Registrar Proveedor');
   If length(dblcTMon.Text) = 0 Then Raise exception.Create('Falta Tipo de Moneda');
   If length(edtTMon.Text) = 0 Then Raise exception.Create('Código de Moneda Errado');
   If length(dbeTCLet.Text) = 0 Then Raise exception.Create('Falta Tipo de Cambio');
   If length(dbeCuenta.Text) = 0 Then Raise exception.Create('Falta Registrar Cuenta');
   If length(dbeGlosa.Text) = 0 Then Raise exception.Create('Código de Cuenta Errado');
   If length(edtClie.Text) = 0 Then Raise exception.Create('Proveedor Errado');
   If dtpFEmis.Date = 0 Then Raise exception.Create('Falta Fecha de Canje');
   If dtpFComp.Date = 0 Then Raise exception.Create('Falta Fecha de Comprobante');
   If length(dblcdClieRuc.Text) = 0 Then Raise exception.Create('Falta Registrar RUC de Proveedor');
   Result := true;
End;

Function TFLetrasTerceros.ExisteMovCxC(xxCia, xxTDiario, xxAAMM, xxNoReg: String): Boolean;
Begin
   DM1.cdsMovCxC2.Setkey;
   DM1.cdsMovCxC2.FieldByName('CIAID').Value := xxCia;
   DM1.cdsMovCxC2.FieldByName('TDIARID').Value := xxTDiario;
   DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := xxAAMM;
   DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := xxNoReg;
   If DM1.cdsMovCxC2.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Function TFLetrasTerceros.ExisteLetras(xxCia, xxTCanje, xxCanje: String): Boolean;
Begin
   DM1.cdsLetras.SetKey;
   DM1.cdsLetras.FieldByName('CIAID').Value := xxCia;
   DM1.cdsLetras.FieldByName('TCANJEID').Value := xxTCanje;
   DM1.cdsLetras.FieldByName('CCCANJE').Value := xxCanje;
   If DM1.cdsLetras.GotoKey Then
      Result := True
   Else
      Result := False;
End;

Procedure TFLetrasTerceros.bbtnOkClick(Sender: TObject);
Begin
   DM1.xFlagCal := True;

   If Not ValidaCabecera Then Exit; // Valida Datos Cabecera

   DM1.cdsTDoc.Filtered := false;

   If DM1.wModo = 'A' Then
   Begin
      FiltraCanje(DM1.wModo);
   End;

   If (DM1.cdsMovCxC2.RecordCount = 0) And (DM1.cdsCanjes.RecordCount = 0) Then
   Begin
      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'X';
      EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
      Raise Exception.Create('Proveedor No tiene Documentos Pendientes de Pago');
   End;

   xTAno := Copy(DM1.cdsDetCxC.FieldByName('CCANOMES').Value, 1, 4);
   xTMes := Copy(DM1.cdsDetCxC.FieldByName('CCANOMES').Value, 5, 2);

   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      DM1.cdsCanjes.Edit;
      If ExisteMovCxC(DM1.cdsCanjes.FieldByName('CIAID').Value, DM1.cdsCanjes.FieldByName('TDIARID').Value,
         DM1.cdsCanjes.FieldByName('CCANOMM').Value, DM1.cdsCanjes.FieldByName('CCNOREG').Value) Then
      Begin
         DM1.cdsCanjes.FieldByName('CCSALLOC').Value := DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value + DM1.cdsCanjes.FieldByName('CCMTOLOC').Value;
         DM1.cdsCanjes.FieldByName('CCSALEXT').Value := DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value + DM1.cdsCanjes.FieldByName('CCMTOEXT').Value;
      End;
      DM1.cdsCanjes.FieldByName('CJEANTMN').Value := DM1.cdsCanjes.FieldByName('CCMTOLOC').Value;
      DM1.cdsCanjes.FieldByName('CJEANTME').Value := DM1.cdsCanjes.FieldByName('CCMTOEXT').Value;
      DM1.cdsCanjes.Next;
   End;
   DM1.cdsCanjes.EnableControls;

   EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');

   bbtnSumatClick(Sender);
End;

Procedure TFLetrasTerceros.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
   State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLetrasTerceros.bbtnSumatClick(Sender: TObject);
Var
   xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xTTotLet, xTTotIGV: Double;
   xTTotGra, xTTotGas, xTTotInt, xxTotal: Double;
   xTMonID: String;
Begin
   xTSalLoc := OperClientDataSet(DM1.cdsCanjes, 'SUM(' + 'CCSALLOC' + ')', '');
   xTSalExt := OperClientDataSet(DM1.cdsCanjes, 'SUM(' + 'CCSALEXT' + ')', '');
   xTPagLoc := OperClientDataSet(DM1.cdsCanjes, 'SUM(' + 'CCMTOLOC' + ')', '');
   xTPagExt := OperClientDataSet(DM1.cdsCanjes, 'SUM(' + 'CCMTOEXT' + ')', '');
   dbgDocCanje.ColumnByName('CCSalLoc').FooterValue := floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCSalExt').FooterValue := floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue := floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoExt').FooterValue := floattostrf(xTPagExt, ffNumber, 10, 2);

   xTTotGra := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'CCGRAVAD' + ')', '');
   xTTotGas := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'CCGASFIN' + ')', '');
   xTTotInt := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'INTERES' + ')', '');
   xTTotIGV := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'CCIGV' + ')', '');
   xTTotLet := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'CCMTOORI' + ')', '');
   dbgLetras.ColumnByName('CCGRAVAD').FooterValue := floattostrf(xTTotGra, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCGASFIN').FooterValue := floattostrf(xTTotGas, ffNumber, 10, 2);
   dbgLetras.ColumnByName('INTERES').FooterValue := floattostrf(xTTotInt, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCIGV').FooterValue := floattostrf(xTTotIGV, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCMTOORI').FooterValue := floattostrf(xTTotLet, ffNumber, 10, 2);
//   dbgLetras.ColumnByName('lkTMonID').FooterValue:= xTMonID;

   If DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      xxTotal := xTPagLoc
   Else
   Begin
      xxTotal := xTPagExt;
   End;

//   xTMonID  := DM1.cdsLetraslkTMon.Value;

{   edtFinal.Text := 'Letras se deberan Generar por la suma de '
                  +  DM1.cdsDetCxClkTMon.AsString;}
   edtFinal.Text := 'Letras se deberan Generar por la suma de ';

   edtTotal1.Text := floattostrf(xxToTal, ffNumber, 15, 2);
   edtTotal.Text := floattostr(FRound(xxToTal, 15, 2));
End;

Procedure TFLetrasTerceros.Z2bbtnGrabaClick(Sender: TObject);
Var
   xNumRegT: Integer;
   xxNoReg, sSIT, xWhere: String;
   fFlag: Boolean;
Begin
   If DM1.cdsCanjes.RecordCount = 0 Then Raise exception.Create('Falta Registrar Documentos a Canjear');
   If DM1.cdsLetras.RecordCount = 0 Then Raise exception.Create('Falta Registrar Letras');
   // Verifica que Totales Cuadren

   fFlag := True;
   If Not VerificaTotal Then
   Begin
      fFlag := False;
      ShowMessage('Total Documentos a Canjear y Total Letras NO Cuadran');
   End;

   // Al Grabar se Poner la 1ra. Situación de Letras
   sSIT := '';
   If fFlag Then
   Begin
      xWhere := 'SITUAFLAG=''1''';
      sSIT := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');
   End;

   // Actualiza Letras
   xxNoReg := DM1.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
   xNumRegT := StrToInt(xxNoReg);

   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.eof Do
   Begin

      DM1.cdsLetras.Edit;
      If Length(DM1.cdsLetras.FieldByName('CCESTADO').AsString) = 0 Then
      Begin
         xxNoReg := GrabaRegistroLetra(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes, xNumRegT);
         xxNoReg := StrZero(xxNoReg, DM1.cdsLetras.FieldByName('CCNOREG').Size);
         DM1.cdsLetras.FieldByName('CCNOREG').AsString := xxNoReg;
      End;
      DM1.cdsLetras.FieldByName('CCESTADO').AsString := 'I';

      If (Length(DM1.cdsLetras.FieldByName('SITID').AsString) = 0) Or (Not fFlag) Then
      Begin
         DM1.cdsLetras.FieldByName('UBIID').AsString := '';
         DM1.cdsLetras.FieldByName('SITID').AsString := sSit;
         DM1.cdsLetras.FieldByName('CCFSITUA').Value := Date;
      End
      Else
      Begin
         If CambioSituacion(DM1.cdsLetras.FieldByName('SITID').AsString, sSIT) Then
         Begin
            SetHyst(dblcCia.Text, dblcTDoc.Text, DM1.cdsLetras.FieldByName('CCNODOC').AsString);
            DM1.cdsLetras.FieldByName('UBIID').AsString := '';
            DM1.cdsLetras.FieldByName('SITID').AsString := sSIT;
            DM1.cdsLetras.FieldByName('CCFSITUA').Value := Date;
         End;
      End;

      DM1.cdsLetras.FieldByName('CCFEMIS').Value := dtpFEmis.Date;
      DM1.cdsLetras.FieldByName('CCFCMPRB').Value := dtpFComp.Date;
      DM1.cdsLetras.FieldByName('CCPTOTOT').AsString := dblcdCnpEgr.Text;
      DM1.cdsLetras.FieldByName('CTATOTAL').AsString := dbeCuenta.Text;
      DM1.cdsLetras.FieldByName('CCUSER').AsString := DM1.wUsuario;
      DM1.cdsLetras.FieldByName('CCFREG').Value := Date;
      DM1.cdsLetras.FieldByName('CCHREG').Value := Time;
      DM1.cdsLetras.Next;
   End;

   ActualizaSaldosMovCxP;

   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJNUMLET').AsInteger := DM1.cdsLetras.RecordCount;
   DM1.cdsCCanje.FieldByName('CJUSER').Value := DM1.wUsuario;
   DM1.cdsCCanje.FieldByName('CJFREG').Value := date;
   DM1.cdsCCanje.FieldByName('CJFHOR').Value := Time;
   DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'I';

   DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');
   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
   DM1.AplicaDatos(DM1.cdsCanjes, 'Canjes');

   If xFlagGr Then
   Begin
      Filtracds(DM1.cdsLetras, 'Select * from CXC301 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CCCANJE=' + '''' + edtCanje.text + '''');
      Filtracds(DM1.cdsCCanje, 'Select * from CXC307 Where '
         + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
         + 'CANJE=' + '''' + edtCanje.Text + '''');
   End;

   xFlagGr := False;

   EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage(' Registro de Canje Grabado ');
End;

Procedure TFLetrasTerceros.ActualizaSaldosMovCxP;
Var
   xRegAct: TBookMark;
   xPagLoc, xPagExt: Double;
Begin
   // Actualiza Saldo de MovCxP
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsCanjeS.DisableControls;
   xRegAct := DM1.cdsCanjes.GetBookmark;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      DM1.cdsCanjes.Edit;
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.FieldByName('CIAID').Value := DM1.cdsCanjes.FieldByName('CIAID').Value;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value := DM1.cdsCanjes.FieldByName('TDIARID').Value;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsCanjes.FieldByName('CCANOMM').Value;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := DM1.cdsCanjes.FieldByName('CCNOREG').Value;
      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value + DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value, 15, 2) Then
            Begin
               DM1.cdsCanjes.GotoBookmark(xRegAct);
               DM1.cdsCanjes.FreeBookmark(xRegAct);
               DM1.cdsCanjes.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value + DM1.cdsCanjes.FieldByName('CCMTOEXT').Value, 15, 2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value, 15, 2) Then
            Begin
               DM1.cdsCanjes.GotoBookmark(xRegAct);
               DM1.cdsCanjes.FreeBookmark(xRegAct);
               DM1.cdsCanjes.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            xPagLoc := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value + DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value - xPagLoc, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value / DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
         End
         Else
         Begin
            xPagExt := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value + DM1.cdsCanjes.FieldByName('CCMTOEXT').Value, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value - xPagExt, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value * DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
         End;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').Value := '.';
         DM1.cdsMovCxC2.Post;
      End;
      DM1.cdsCanjes.Next;
   End;
   DM1.AplicaDatos(DM1.cdsMovCxC2, 'MovCxC2');
   DM1.cdsCanjes.GotoBookmark(xRegAct);
   DM1.cdsCanjes.FreeBookmark(xRegAct);
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.EnableControls;
End;

Procedure TFLetrasTerceros.GrabaDetCanje;
Var
   xSalLoc, xSalExt, xSaldoC, xSaldoL: Double;
Begin
   DM1.cdsDetCanje.First;
   While (Not DM1.cdsDetCanje.Eof) And (DM1.cdsDetCanje.RecordCount > 0) Do
      DM1.cdsDetCanje.Delete;

   DM1.cdsLetras.First;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      If DM1.cdsCanjes.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         xSaldoC := DM1.cdsCanjes.FieldByName('CCMTOLOC').Value
      Else
      Begin
         xSaldoC := DM1.cdsCanjes.FieldByName('CCMTOEXT').Value;
      End;
      xSalLoc := DM1.cdsCanjes.FieldByName('CCMTOLOC').Value;
      xSalExt := DM1.cdsCanjes.FieldByName('CCMTOEXT').Value;
      While xSaldoC > 0 Do
      Begin
         While (Not DM1.cdsLetras.Eof) And (xSaldoC > 0) Do
         Begin
            If DM1.cdsCanjes.FieldByName('TMONID').Value = DM1.wTMonLoc Then
               xSaldoL := DM1.cdsLetras.FieldByName('CCMTOLOC').Value
            Else
            Begin
               xSaldoL := DM1.cdsLetras.FieldByName('CCMTOEXT').Value;
            End;

            DM1.cdsDetCanje.Insert;
            If xSaldoL <= xSaldoC Then
            Begin

               // Grabar en cxp305 en monto = a la letra
               GrabaRegCxP305;
               If DM1.cdsDetCanje.FieldByName('TMONID').Value = DM1.wTMonLoc Then
               Begin
                  DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value, 15, 2);
                  DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value / DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
                  xSalLoc := xSalLoc - FRound(DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value, 15, 2);
                  xSalExt := xSalExt - FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value, 15, 2);
                  xSaldoC := xSalLoc;
               End
               Else
               Begin
                  DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value, 15, 2);
                  DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value * DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
                  xSalExt := xSalExt - FRound(DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value, 15, 2);
                  xSalLoc := xSalLoc - FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value, 15, 2);
                  xSaldoC := xSalExt;
               End;

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.FieldByName('CCMTOLOC').Value := 0;
               DM1.cdsLetras.Delete;
            End
            Else
            Begin
               // Grabar en cxp305 en monto = xSalLoc
               GrabaRegCxP305;
               If DM1.cdsDetCanje.FieldByName('TMONID').Value = DM1.wTMonLoc Then
               Begin
                  DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value := FRound(xSalLoc, 15, 2);
                  DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value := FRound(xSalLoc / DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
               End
               Else
               Begin
                  DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value := FRound(xSalExt, 15, 2);
                  DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value := FRound(xSalExt * DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
               End;
               DM1.cdsLetras.Edit;
               DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value - xSalLoc, 15, 2);
               DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value - xSalExt, 15, 2);
               xSalLoc := 0;
               xSalExt := 0;
               xSaldoC := 0;
            End;
         End;
      End;
      DM1.cdsCanjes.Next;
   End;
   DM1.cdsLetras.CancelUpdates;
   DM1.cdsDetCanje.First;
   DM1.cdsLetras.EnableControls;
   DM1.cdsCanjes.EnableControls;

   DM1.AplicaDatos(DM1.cdsDetCanje, 'DetCanje');
End;

Procedure TFLetrasTerceros.GrabaRegCxP305;
Begin
   DM1.cdsDetCanje.FieldByName('CIAID').Value := DM1.cdsCanjes.FieldByName('CIAID').Value;
   DM1.cdsDetCanje.FieldByName('CLIEID').Value := DM1.cdsCanjes.FieldByName('CLIEID').Value;
   DM1.cdsDetCanje.FieldByName('CLIERUC').Value := DM1.cdsCanjes.FieldByName('CLIERUC').Value;
   DM1.cdsDetCanje.FieldByName('DOCID').Value := DM1.cdsCanjes.FieldByName('DOCID').Value;
   DM1.cdsDetCanje.FieldByName('CCSERIE').Value := DM1.cdsCanjes.FieldByName('CCSERIE').Value;
   DM1.cdsDetCanje.FieldByName('CCNODOC').Value := DM1.cdsCanjes.FieldByName('CCNODOC').Value;
   DM1.cdsDetCanje.FieldByName('CCNOREG').Value := DM1.cdsLetras.FieldByName('CCNOREG').Value;
   DM1.cdsDetCanje.FieldByName('TCANJEID').Value := DM1.cdsCanjes.FieldByName('TCANJEID').Value;
   DM1.cdsDetCanje.FieldByName('CCCANJE').Value := DM1.cdsCanjes.FieldByName('CCCANJE').Value;
   DM1.cdsDetCanje.FieldByName('CCFCANJE').Value := DM1.cdsCanjes.FieldByName('CCFCANJE').Value;
   DM1.cdsDetCanje.FieldByName('DOCID2').Value := DM1.cdsLetras.FieldByName('DOCID').Value;
   DM1.cdsDetCanje.FieldByName('CCSERIE2').Value := DM1.cdsLetras.FieldByName('CCSERIE').Value;
   DM1.cdsDetCanje.FieldByName('CCNODOC2').Value := DM1.cdsLetras.FieldByName('CCNODOC').Value;
   DM1.cdsDetCanje.FieldByName('TMONID').Value := DM1.cdsCanjes.FieldByName('TMONID').Value;
   DM1.cdsDetCanje.FieldByName('DCCUSER').Value := DM1.cdsCanjes.FieldByName('CCUSER').Value;
   DM1.cdsDetCanje.FieldByName('DCCFREG').Value := DM1.cdsCanjes.FieldByName('CCFREG').Value;
   DM1.cdsDetCanje.FieldByName('DCCHREG').Value := DM1.cdsCanjes.FieldByName('CCHREG').Value;
   DM1.cdsDetCanje.FieldByName('DCCAAAA').Value := DM1.cdsCanjes.FieldByName('CCAAAA').Value;
   DM1.cdsDetCanje.FieldByName('DCCMM').Value := DM1.cdsCanjes.FieldByName('CCMM').Value;
   DM1.cdsDetCanje.FieldByName('DCCDD').Value := DM1.cdsCanjes.FieldByName('CCDD').Value;
   DM1.cdsDetCanje.FieldByName('DCCTRI').Value := DM1.cdsCanjes.FieldByName('CCTRI').Value;
   DM1.cdsDetCanje.FieldByName('DCCSEM').Value := DM1.cdsCanjes.FieldByName('CCSEM').Value;
   DM1.cdsDetCanje.FieldByName('DCCSS').Value := DM1.cdsCanjes.FieldByName('CCSS').Value;
   DM1.cdsDetCanje.FieldByName('DCCANOMM').Value := DM1.cdsCanjes.FieldByName('CCANOMM').Value;
   DM1.cdsDetCanje.FieldByName('DCCAATRI').Value := DM1.cdsCanjes.FieldByName('CCAATRI').Value;
   DM1.cdsDetCanje.FieldByName('DCCAASEM').Value := DM1.cdsCanjes.FieldByName('CCAASEM').Value;
   DM1.cdsDetCanje.FieldByName('DCCAASS').Value := DM1.cdsCanjes.FieldByName('CCAASS').Value;
End;

Procedure TFLetrasTerceros.Z2bbtnContabClick(Sender: TObject);
Begin
   EstadoDeForma(1, 'P', 'S');
   pnlConta.Visible := True;
End;

Function TFLetrasTerceros.GeneraAsientoCanje: Boolean;
Var
   xRegAct: TBookMark;
Begin
   DM1.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';

   DM1.cdsDetCxC.First;
   While Not dm1.cdsDetCxC.Eof Do
      DM1.cdsDetCxC.Delete;

   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;

   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin

      GrabaContabilidadLetra;
      GrabaContabilidadDocumentos;
      DM1.cdsLetras.Next;
   End;
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
   DM1.cdsCanjes.EnableControls;

   DM1.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;TDiarID;CCAnoMM;CCNoReg';

   Result := True;
End;

Procedure TFLetrasTerceros.GrabaContabilidadLetra;
Begin
   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('CIAID').Value := DM1.cdsLetras.FieldByName('CIAID').Value;
   DM1.cdsDetCxC.FieldByName('TCANJEID').Value := DM1.cdsLetras.FieldByName('TCANJEID').Value;
   DM1.cdsDetCxC.FieldByName('CCCANJE').Value := DM1.cdsLetras.FieldByName('CCCANJE').Value;
   DM1.cdsDetCxC.FieldByName('TDIARID').Value := DM1.cdsLetras.FieldByName('TDIARID').Value;
   DM1.cdsDetCxC.FieldByName('CCNOREG').Value := DM1.cdsLetras.FieldByName('CCNOREG').Value;
   DM1.cdsDetCxC.FieldByName('CCAAAA').Value := DM1.cdsLetras.FieldByName('CCAAAA').Value;
   DM1.cdsDetCxC.FieldByName('CCANOMES').Value := DM1.cdsLetras.FieldByName('CCANOMES').Value;
   DM1.cdsDetCxC.FieldByName('CPTOID').Value := DM1.cdsCCanje.FieldByName('CPTOID').AsString;
   DM1.cdsDetCxC.FieldByName('CUENTAID').value := DM1.cdsCCanje.FieldByName('CUENTAID').AsString;
   DM1.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
   DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIEID').Value;
   DM1.cdsDetCxC.FieldByName('CLIERUC').Value := DM1.cdsCCanje.FieldByName('CLIERUC').Value;
   DM1.cdsDetCxC.FieldByName('DOCID').Value := DM1.cdsCCanje.FieldByName('DOCID').Value;
   DM1.cdsDetCxC.FieldByName('CCSERIE').Value := '00000';
   DM1.cdsDetCxC.FieldByName('CCNODOC').Value := DM1.cdsLetras.FieldByName('CCNODOC').Value;
   DM1.cdsDetCxC.FieldByName('CCGLOSA').Value := DM1.cdsCCanje.FieldByName('CJGLOSA').AsString;
   DM1.cdsDetCxC.FieldByName('CCDH').Value := 'H';
   DM1.cdsDetCxC.FieldByName('CCTCAMPR').Value := DM1.cdsLetras.FieldByName('CCTCAMPR').Value;
   DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := DM1.cdsLetras.FieldByName('CCMTOORI').Value;
   DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := DM1.cdsLetras.FieldByName('CCMTOLOC').Value;
   DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := DM1.cdsLetras.FieldByName('CCMTOEXT').Value;
   DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsLetras.FieldByName('CCFEMIS').Value;
   DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsLetras.FieldByName('CCFVCMTO').Value;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := dtpFComp.Date;
   DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
   DM1.cdsDetCxC.FieldByName('TMONID').Value := DM1.cdsLetras.FieldByName('TMONID').Value;
   DM1.cdsDetCxC.FieldByName('CCMM').Value := DM1.cdsLetras.FieldByName('CCMM').Value;
   DM1.cdsDetCxC.FieldByName('CCDD').Value := DM1.cdsLetras.FieldByName('CCDD').Value;
   DM1.cdsDetCxC.FieldByName('CCTRI').Value := DM1.cdsLetras.FieldByName('CCTRI').Value;
   DM1.cdsDetCxC.FieldByName('CCSEM').Value := DM1.cdsLetras.FieldByName('CCSEM').Value;
   DM1.cdsDetCxC.FieldByName('CCSS').Value := DM1.cdsLetras.FieldByName('CCSS').Value;
   DM1.cdsDetCxC.FieldByName('CCAATRI').Value := DM1.cdsLetras.FieldByName('CCAATRI').Value;
   DM1.cdsDetCxC.FieldByName('CCAASEM').Value := DM1.cdsLetras.FieldByName('CCAASEM').Value;
   DM1.cdsDetCxC.FieldByName('CCAASS').Value := DM1.cdsLetras.FieldByName('CCAASS').Value;
   DetCxCUsuario; // Graba Usuario, Fecha y Hora
End;

Procedure TFLetrasTerceros.GrabaContabilidadDocumentos;
Begin

   DM1.cdsDetCanje.Filter := '';
   DM1.cdsDetCanje.Filter := 'CiaId=' + '''' + dblcCia.Text + '''' + ' and ' +
      'TCanjeID=' + '''' + 'LC' + '''' + ' and ' +
      'CCCanje=' + '''' + edtCanje.text + '''' + ' and ' +
      'DocID2=' + '''' + DM1.cdsLetras.FieldByName('DOCID').Value + '''' + ' and ' +
      'CCSerie2=' + '''' + DM1.cdsLetras.FieldByName('CCSERIE').Value + '''' + ' and ' +
      'CCNoDoc2=' + '''' + DM1.cdsLetras.FieldByName('CCNODOC').Value + '''';
   DM1.cdsDetCanje.Filtered := True;

   DM1.cdsDetCanje.First;
   While Not DM1.cdsDetCanje.Eof Do
   Begin

      DM1.cdsCanjes.SetKey;
      DM1.cdsCanjes.FieldByName('CIAID').Value := DM1.cdsLetras.FieldByName('CIAID').Value;
      DM1.cdsCanjes.FieldByName('TCANJEID').Value := DM1.cdsLetras.FieldByName('TCANJEID').Value;
      DM1.cdsCanjes.FieldByName('CCCANJE').Value := DM1.cdsLetras.FieldByName('CCCANJE').Value;
      DM1.cdsCanjes.FieldByName('DOCID').Value := DM1.cdsDetCanje.FieldByName('DOCID').Value;
      DM1.cdsCanjes.FieldByName('CCSERIE').Value := DM1.cdsDetCanje.FieldByName('CCSERIE').Value;
      DM1.cdsCanjes.FieldByName('CCNODOC').Value := DM1.cdsDetCanje.FieldByName('CCNODOC').Value;
      If DM1.cdsCanjes.GotoKey Then
      Begin

         GeneraDiferenciaCambio;

         DM1.cdsDetCxC.Insert;
         DM1.cdsDetCxC.FieldByName('CIAID').Value := DM1.cdsLetras.FieldByName('CIAID').Value;
         DM1.cdsDetCxC.FieldByName('TCANJEID').Value := DM1.cdsLetras.FieldByName('TCANJEID').Value;
         DM1.cdsDetCxC.FieldByName('CCCANJE').Value := DM1.cdsLetras.FieldByName('CCCANJE').Value;
         DM1.cdsDetCxC.FieldByName('TDIARID').Value := DM1.cdsLetras.FieldByName('TDIARID').Value;
         DM1.cdsDetCxC.FieldByName('CCNOREG').Value := DM1.cdsLetras.FieldByName('CCNOREG').Value;
         DM1.cdsDetCxC.FieldByName('CCANOMES').Value := DM1.cdsLetras.FieldByName('CCANOMES').Value;
         DM1.cdsDetCxC.FieldByName('CCAAAA').Value := DM1.cdsLetras.FieldByName('CCAAAA').Value;
//         DM1.cdsDetCxCCCLote.Value   := DM1.cdsCCanjeCJLote.AsString;
         DM1.cdsDetCxC.FieldByName('CUENTAID').value := DM1.cdsCanjes.FieldByName('CTATOTAL').Value;
         DM1.cdsDetCxC.FieldByName('CPTOID').value := DM1.cdsCanjes.FieldByName('CPTOTOT').Value;
         DM1.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
         DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCanjes.FieldByName('CLIEID').Value;
         DM1.cdsDetCxC.FieldByName('CLIERUC').Value := DM1.cdsCanjes.FieldByName('CLIERUC').Value;
         DM1.cdsDetCxC.FieldByName('DOCID').Value := DM1.cdsCanjes.FieldByName('DOCID').Value;
         DM1.cdsDetCxC.FieldByName('CCSERIE').Value := DM1.cdsCanjes.FieldByName('CCSERIE').Value;
         DM1.cdsDetCxC.FieldByName('CCNODOC').Value := DM1.cdsCanjes.FieldByName('CCNODOC').Value;
         DM1.cdsDetCxC.FieldByName('CCGLOSA').Value := DM1.cdsCCanje.FieldByName('CJGLOSA').AsString;
         DM1.cdsDetCxC.FieldByName('CCDH').Value := 'D';
         DM1.cdsDetCxC.FieldByName('CCTCAMPR').Value := DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value;
         DM1.cdsDetCxC.FieldByName('TMONID').Value := DM1.cdsCanjes.FieldByName('TMONID').Value;
         If DM1.cdsCanjes.FieldByName('TMONID').Value = dm1.wTMonExt Then
            DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value
         Else
         Begin
            DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value;
         End;
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value + xDifCLoc, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value + xDifCExt, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsCanjes.FieldByName('CCFEMIS').Value;
         DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsCanjes.FieldByName('CCFVCMTO').Value;
         DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := dtpFComp.Date;
         DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
         DM1.cdsDetCxC.FieldByName('CCMM').Value := DM1.cdsLetras.FieldByName('CCMM').Value;
         DM1.cdsDetCxC.FieldByName('CCDD').Value := DM1.cdsLetras.FieldByName('CCDD').Value;
         DM1.cdsDetCxC.FieldByName('CCTRI').Value := DM1.cdsLetras.FieldByName('CCTRI').Value;
         DM1.cdsDetCxC.FieldByName('CCSEM').Value := DM1.cdsLetras.FieldByName('CCSEM').Value;
         DM1.cdsDetCxC.FieldByName('CCSS').Value := DM1.cdsLetras.FieldByName('CCSS').Value;
         DM1.cdsDetCxC.FieldByName('CCAATRI').Value := DM1.cdsLetras.FieldByName('CCAATRI').Value;
         DM1.cdsDetCxC.FieldByName('CCAASEM').Value := DM1.cdsLetras.FieldByName('CCAASEM').Value;
         DM1.cdsDetCxC.FieldByName('CCAASS').Value := DM1.cdsLetras.FieldByName('CCAASS').value;
         DetCxCUsuario; // Graba Usuario, Fecha y Hora

         GrabaDiferenciaCambio;

      End;
      DM1.cdsDetCanje.Next;
   End;
End;

Procedure TFLetrasTerceros.GeneraDiferenciaCambio;
Begin
   xDifCLoc := 0;
   xDifCExt := 0;
   If DM1.cdsCanjes.FieldByName('TMONID').Value = dm1.wTMonExt Then
   Begin
      xPagAnt := FRound(DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value * DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
      If DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value > xPagAnt Then
      Begin
         xDifCam := FRound(DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value - xPagAnt, 15, 2);
         xDifCLoc := FRound((-1) * (DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value - xPagAnt), 15, 2);
         xCtaDif := DM1.wDifAjuP;
         xCptoDif := dm1.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End
      Else
      Begin
         xDifCam := FRound(xPagAnt - DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value, 15, 2);
         xDifCLoc := FRound(xPagAnt - DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value, 15, 2);
         xCtaDif := DM1.wDifAjuG;
         xCptoDif := dm1.wCptoAjG;
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH := 'H'
      End;
   End
   Else
   Begin
      xPagAnt := FRound(DM1.cdsDetCanje.FieldByName('DCCMTOLOC').Value / DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
      If DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value > xPagAnt Then
      Begin
         xDifCam := FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').Value - xPagAnt, 15, 2);
         xDifCExt := FRound((-1) * (DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value - xPagAnt), 15, 2);
         xCtaDif := dm1.wDifAjuP;
         xCptoDif := dm1.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End
      Else
      Begin
         xDifCam := xPagAnt - DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value;
         xDifCExt := xPagAnt - DM1.cdsDetCanje.FieldByName('DCCMTOEXT').Value;
         xCtaDif := dm1.wDifAjuG;
         xCptoDif := dm1.wCptoAjG;
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH := 'H'
      End;
   End;
End;

Procedure TFLetrasTerceros.GrabaDiferenciaCambio;
Begin
   If xDifCam > 0 Then
   Begin
      DM1.cdsDetCxC.Insert;
      DM1.cdsDetCxC.FieldByName('CIAID').Value := DM1.cdsCanjes.FieldByName('CIAID').Value;
      DM1.cdsDetCxC.FieldByName('TCANJEID').Value := DM1.cdsLetras.FieldByName('TCANJEID').Value;
      DM1.cdsDetCxC.FieldByName('CCCANJE').Value := DM1.cdsLetras.FieldByName('CCCANJE').Value;
      DM1.cdsDetCxC.FieldByName('TDIARID').Value := DM1.cdsLetras.FieldByName('TDIARID').Value;
      DM1.cdsDetCxC.FieldByName('CCNOREG').Value := DM1.cdsLetras.FieldByName('CCNOREG').Value;
      DM1.cdsDetCxC.FieldByName('CCANOMES').Value := DM1.cdsLetras.FieldByName('CCANOMES').Value;
      DM1.cdsDetCxC.FieldByName('CCAAAA').Value := DM1.cdsLetras.FieldByName('CCAAAA').Value;
      DM1.cdsDetCxC.FieldByName('CUENTAID').value := xCtaDif;
      DM1.cdsDetCxC.FieldByName('CPTOID').value := xCptoDif;
      DM1.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
      DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIEID').Value;
      DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIERUC').Value;
      DM1.cdsDetCxC.FieldByName('DOCID').Value := DM1.cdsCanjes.FieldByName('DOCID').Value;
      DM1.cdsDetCxC.FieldByName('CCSERIE').Value := DM1.cdsCanjes.FieldByName('CCSERIE').Value;
      DM1.cdsDetCxC.FieldByName('CCNODOC').Value := DM1.cdsCanjes.FieldByName('CCNODOC').Value;
      DM1.cdsDetCxC.FieldByName('CCGLOSA').Value := xGloDif;
      DM1.cdsDetCxC.FieldByName('CCDH').Value := xDH;
      DM1.cdsDetCxC.FieldByName('CCTCAMPR').Value := DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value;
      DM1.cdsDetCxC.FieldByName('CCTCAMPA').Value := DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value;
      //
      If DM1.cdsCanjes.FieldByName('TMONID').Value = dm1.wTMonExt Then
      Begin
         DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := FRound(xDifCam, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := FRound(xDifCam, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := 0;
      End
      Else
      Begin
         DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := FRound(xDifCam, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := 0;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := FRound(xDifCam, 15, 2);
      End;
      //
      DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsLetras.FieldByName('CCFEMIS').Value;
      DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsCanjes.FieldByName('CCFVCMTO').Value;
      DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := dtpFComp.Date;
      DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
      DM1.cdsDetCxC.FieldByName('TMONID').Value := DM1.wTMonLoc;
      DM1.cdsDetCxC.FieldByName('CCMM').Value := DM1.cdsLetras.FieldByName('CCMM').Value;
      DM1.cdsDetCxC.FieldByName('CCDD').Value := DM1.cdsLetras.FieldByName('CCDD').Value;
      DM1.cdsDetCxC.FieldByName('CCTRI').Value := DM1.cdsLetras.FieldByName('CCTRI').Value;
      DM1.cdsDetCxC.FieldByName('CCSEM').Value := DM1.cdsLetras.FieldByName('CCSEM').Value;
      DM1.cdsDetCxC.FieldByName('CCSS').Value := DM1.cdsLetras.FieldByName('CCSS').Value;
      DM1.cdsDetCxC.FieldByName('CCAATRI').Value := DM1.cdsLetras.FieldByName('CCAATRI').Value;
      DM1.cdsDetCxC.FieldByName('CCAASEM').Value := DM1.cdsLetras.FieldByName('CCAASEM').Value;
      DM1.cdsDetCxC.FieldByName('CCAASS').Value := DM1.cdsLetras.FieldByName('CCAASS').Value;
      DetCxCUsuario; // Graba Usuario, Fecha y Hora
   End;
End;

Procedure TFLetrasTerceros.DetCxCUsuario;
Begin
   DM1.cdsDetCxC.FieldByName('CCUSER').Value := DM1.wUsuario;
   DM1.cdsDetCxC.FieldByName('CCFREG').Value := Date;
   DM1.cdsDetCxC.FieldByName('CCHREG').Value := time;
End;

Procedure TFLetrasTerceros.DetCxC2Usuario;
Begin
   DM1.cdsDetCxC2.FieldByName('CCUSER').Value := DM1.wUsuario;
   DM1.cdsDetCxC2.FieldByName('CCFREG').Value := Date;
   DM1.cdsDetCxC2.FieldByName('CCHREG').Value := time;
End;

Function TFLetrasTerceros.VerificaTotal: Boolean;
Var
   xTPagLoc, xTPagExt, xTLetOri, xTLetLoc, xTLetExt, xDifLoc, xDifExt: Double;
   xRegAct: TBookMark;
Begin
   Result := False;

   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsCanjes.DisableControls;
   xRegAct := DM1.cdsCanjes.GetBookmark;
   xTPagLoc := 0;
   xTPagExt := 0;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      DM1.cdsCanjes.Edit;
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.FieldByName('CIAID').Value := DM1.cdsCanjes.FieldByName('CIAID').Value;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value := DM1.cdsCanjes.FieldByName('TDIARID').Value;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsCanjes.FieldByName('CCANOMM').Value;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := DM1.cdsCanjes.FieldByName('CCNOREG').Value;
      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value + DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value, 15, 2) Then
            Begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End
         Else
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value + DM1.cdsCanjes.FieldByName('CCMTOEXT').Value, 15, 2)
               > FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value, 15, 2) Then
            Begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         End;
      End;
      xTPagLoc := xTPagLoc + FRound(DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
      xTPagExt := xTPagExt + FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').Value, 15, 2);
      DM1.cdsCanjes.Next;
   End;
   DM1.cdsCanjes.GotoBookmark(xRegAct);
   DM1.cdsCanjes.FreeBookmark(xRegAct);
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxC2.EnableControls;

   // Totales de Letras por Pagar
   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;
   xTLetOri := 0;
   xTLetLoc := 0;
   xTLetExt := 0;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin
      xTLetOri := xTLetOri + FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      xTLetLoc := xTLetLoc + FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value, 15, 2);
      xTLetExt := xTLetExt + FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value, 15, 2);
      DM1.cdsLetras.Next;
   End;

   If DM1.cdsLetras.FieldByName('TMONID').Value = DM1.wTMonLoc Then
   Begin
      If FRound(xTLetLoc, 15, 2) = FRound(xTPagLoc, 15, 2) Then
         Result := True;
   End
   Else
   Begin
      If DM1.cdsLetras.FieldByName('TMONID').Value = DM1.wTMonExt Then
      Begin
         If FRound(xTLetExt, 15, 2) = FRound(xTPagExt, 15, 2) Then
            Result := True
      End;
   End;

   xDifLoc := 0;
   xDifExt := 0;

   If Result Then
   Begin
      If xTLetLoc <> xTPagLoc Then
      Begin
         xDifLoc := FRound(xTPagLoc - xTLetLoc, 5, 2);
      End;
      If xTLetExt <> xTPagExt Then
      Begin
         xDifExt := FRound(xTPagExt - xTLetExt, 5, 2);
      End;
   End;

   DM1.cdsLetras.Last;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value + xDifLoc, 15, 2);
   DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value + xDifExt, 15, 2);
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
End;

Procedure TFLetrasTerceros.bbtnCalcClick(Sender: TObject);
Begin

   WinExec('C:\windows\calc.exe', 1); // Executa Aplicación

End;

Procedure TFLetrasTerceros.dblcdCnpEgrExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   DM1.cdsCCanje.FieldByName('CUENTAID').Value := DM1.cdsCpto.FieldByName('CUENTAID').AsString;
   If length(dbeGlosa.Text) = 0 Then
      DM1.cdsCCanje.FieldByName('CJGLOSA').Value := DM1.cdsCpto.FieldByName('CPTODES').AsString;
End;

Procedure TFLetrasTerceros.dblcTMonExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   xWhere := 'TMonId=' + '''' + dblcTMon.Text + ''''
      + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';

   edtTMon.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMon.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   End;
   If Length(dbeTCLet.Text) > 0 Then
   Begin
      DM1.cdsLetras.First;
      If (DM1.cdsLetras.FieldByName('TMONID').Value <> dblcTMon.Text) Then
      Begin
         While Not DM1.cdsLetras.eof Do
         Begin
            DM1.cdsLetras.Edit;
            DM1.cdsLetras.FieldByName('TMONID').Value := dblcTMon.Text;
            If DM1.cdsLetras.FieldByName('TMONID').Value = DM1.wTMonLoc Then
            Begin
               DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
            End
            Else
            Begin
               DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
               DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
            End;
            DM1.cdsLetras.Next;
         End;
         DM1.cdsLetras.First;
      End;
   End;

End;

Procedure TFLetrasTerceros.bbtnCancelaClick(Sender: TObject);
Begin

   DM1.cdsCanjes.CancelUpdates;
   DM1.cdsLetras.CancelUpdates;

   EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString);
End;

Procedure TFLetrasTerceros.dtpFCompExit(Sender: TObject);
Var
   xWhere, xFecStr: String;
   xFCierre: TDate;
Begin
   If xCrea Then Exit;

   xWhere := 'CiaId=' + '''' + dblcCia.Text + '''';
   xFCierre := DM1.BuscaUltFecha('dspTGE', 'CXP202', 'FCierre', xWhere);

   If dtpFComp.Date <= xFCierre Then
   Begin
      ShowMessage(' Error :  Última Fecha de Cierre ' + DateToStr(xFCierre));
      dtpFComp.SetFocus;
      exit;
   End;

   // Tipo de Cambio
   xWhere := 'TMonId=' + '''' + DM1.wTMonExt + '''' + ' and '
      + 'Fecha=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dtpFComp.Date) + '''' + ')';
   xxTCambio := 0;
   If length(BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
      xxTCambio := DM1.cdsQry.FieldByName('TCAM' + DM1.WVRN_TIPOCAMBIO).Value
   Else
   Begin
      dtpFComp.SetFocus;
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   dbeTCLet.Text := FloatToStr(FRound(xxTCambio, 7, 3));
   DM1.cdsCCanje.FieldByName('CJTCAMBIO').Value := FRound(xxTCambio, 7, 3);
   DM1.cdsCCanje.FieldByName('CJFCOMP').Value := dtpFComp.date;
   xFecStr := DateToStr(dtpFComp.date);
   DM1.cdsCCanje.FieldByName('CJAAMM').AsString := Copy(xFecStr, 7, 4) + Copy(xFecStr, 4, 2);
   If BuscaFecha('TGE114', 'Fecha', dtpFComp.date) Then
   Begin
      DM1.cdsCCanje.FieldByName('CJAA').Value := DM1.cdsQry2.FieldByName('FECANO').Value;
      DM1.cdsCCanje.FieldByName('CJMM').Value := DM1.cdsQry2.FieldByName('FECMES').Value; // mes
      DM1.cdsCCanje.FieldByName('CJDD').Value := DM1.cdsQry2.FieldByName('FECDIA').Value; // día
      DM1.cdsCCanje.FieldByName('CJTRI').Value := DM1.cdsQry2.FieldByName('FECTRIM').Value; // trimestre
      DM1.cdsCCanje.FieldByName('CJSEM').Value := DM1.cdsQry2.FieldByName('FECSEM').Value; // semestre
      DM1.cdsCCanje.FieldByName('CJSS').Value := DM1.cdsQry2.FieldByName('FECSS').Value; // semana
      DM1.cdsCCanje.FieldByName('CJAATRI').Value := DM1.cdsQry2.FieldByName('FECAATRI').Value; // año+trimestre
      DM1.cdsCCanje.FieldByName('CJAASEM').Value := DM1.cdsQry2.FieldByName('FECAASEM').Value; // año+semestre
      DM1.cdsCCanje.FieldByName('CJAASS').Value := DM1.cdsQry2.FieldByName('FECAASS').Value; // año+semana
   End;
   {
   xWhere := 'CiaId='+''''+dblcCia.Text+''''+' and TDiarId='+''''+dblcTDiario.Text+''''+' and CCAnoMes='+''''+DM1.cdsCCanjeCJAAMM.Value+'''';
   DM1.cdsCCanjeCJLote.Value:=DM1.BuscaUltTGE('dspTGE','CXC302','CCLote',xWhere);
   DM1.cdsCCanjeCJLote.Value:=Strzero(DM1.cdsCCanjeCJLote.Value,DM1.cdsCCanjeCJLote.DisplayWidth);
  }
End;

Procedure TFLetrasTerceros.dtpFEmisExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
End;

Procedure TFLetrasTerceros.ActualizaPagadoMovCxP;
Begin
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.FieldByName('CIAID').Value := DM1.cdsCanjes.FieldByName('CIAID').Value;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value := DM1.cdsCanjes.FieldByName('TDIARID').Value;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsCanjes.FieldByName('CCANOMM').Value;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := DM1.cdsCanjes.FieldByName('CCNOREG').Value;
      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value + DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value / DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
            If DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value <= 0 Then
               DM1.cdsMovCxC2.FieldByName('CCESTADO').Value := 'C';
         End
         Else
         Begin
            DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value + DM1.cdsCanjes.FieldByName('CCMTOEXT').Value, 15, 2);
            DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value * DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
            If DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value <= 0 Then
               DM1.cdsMovCxC2.FieldByName('CCESTADO').Value := 'C';
         End;
         DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value := FRound(DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value, 15, 2);
      End;
      DM1.cdsCanjes.Next;
   End;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.AplicaDatos(DM1.cdsMovCxC2, 'MovCxC2');
   DM1.cdsMovCxC2.First;
   DM1.cdsMovCxC2.EnableControls;
   DM1.cdsCanjes.EnableControls;
End;

Procedure TFLetrasTerceros.dbgLetrasMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgLetras.BeginDrag(False);
End;

Procedure TFLetrasTerceros.dbeTCLetExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If length(dbeTCLet.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Cambio');
      dbeTCLet.SetFocus;
      exit;
   End;

   dbeTCLet.Text := floattostr(strtofloat(dbeTCLet.Text));
   If strtofloat(dbeTCLet.Text) < 0 Then
   Begin
      ShowMessage('Tipo de Cambio debe ser Mayor a 0');
      dbeTCLet.Text := '';
      dbeTCLet.SetFocus;
      exit;
   End;
   DM1.cdsLetras.First;
   If FRound(DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 8, 3) <> FRound(strtofloat(dbeTCLet.Text), 8, 3) Then
   Begin
      While Not DM1.cdsLetras.eof Do
      Begin
         DM1.cdsLetras.Edit;
         DM1.cdsLetras.FieldByName('CCTCAMPR').Value := FRound(strtofloat(dbeTCLet.Text), 8, 3);
         If DM1.cdsLetras.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         End
         Else
         Begin
            DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
            DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         End;
         DM1.cdsLetras.Next;
      End;
      DM1.cdsLetras.First;
   End;
End;

Procedure TFLetrasTerceros.bbtnBorraClick(Sender: TObject);
Begin
   If DM1.wModo = 'A' Then
   Begin
      If xFlagGr Then
      Begin
         DM1.cdsLetras.CancelUpdates;
         DM1.cdsDetCxC.CancelUpdates;
         DM1.cdsCanjes.CancelUpdates;
         DM1.cdsDetCanje.CancelUpdates;

         DM1.cdsCCanje.Delete;
         DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');

         DM1.cdsLetras.First;
         While Not DM1.cdsLetras.Eof Do
         Begin
            DM1.cdsLetras.Delete;
         End;
         DM1.AplicaDatos(DM1.cdsLetras, 'Letras');

         InicializaClientDataSet;
         InicializaPies;
         InicializaDatos;
         EstadoDeForma(0, ' ', ' ');
      End
      Else
      Begin
         If Length(DM1.cdsCCanje.FieldByName('CJESTADO').AsString) = 0 Then
         Begin
            DM1.cdsCCanje.CancelUpdates;
            InicializaClientDataSet;
            InicializaPies;
            InicializaDatos;
         End
         Else
         Begin
            DM1.cdsCCanje.CancelUpdates;
         End;
         EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
      End;
   End
   Else
   Begin
      DM1.cdsCCanje.CancelUpdates;
      EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   End;
End;

Procedure TFLetrasTerceros.bbtnRegresaClick(Sender: TObject);
Begin
   EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString);
End;

Procedure TFLetrasTerceros.Z2bbtnNuevoClick(Sender: TObject);
Begin
   If MessageDlg('Ingresar Nuevo Canje' + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?  ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      DM1.cdsLetras.CancelUpdates;
      DM1.cdsDetCxC.CancelUpdates;
      DM1.cdsCanjes.CancelUpdates;
      DM1.cdsDetCanje.CancelUpdates;
      DM1.cdsCCanje.CancelUpdates;

      If (DM1.wModo = 'A') And (xFlagGr) Then
      Begin
         DM1.cdsCCanje.Delete;
         DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');

         DM1.cdsLetras.First;
         While Not DM1.cdsLetras.Eof Do
         Begin
            DM1.cdsLetras.Delete;
         End;
         DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
      End;
      InicializaClientDataSet;
      InicializaPies;
      InicializaDatos;
      pc1.ActivePage := ts1;
      EstadoDeForma(0, ' ', ' ');
   End;
End;

Procedure TFLetrasTerceros.Z2bbtnAnulaClick(Sender: TObject);
Var
   xRegAct: TBookMark;
Begin
   If Not VerificaDocumentosPendientes Then
      Raise exception.Create(' Error :  Letras ya han sido Amortizadas ');

   If MessageDlg('Anular Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   // Anula todas Las letras del canje
   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.FieldByName('CCESTADO').Value := 'A';
      DM1.cdsLetras.Next;
   End;
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
   /////////////
   // Actualiza los Saldos de los Documentos Canjeados
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered := False;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      DM1.cdsCanjes.Edit;
      If ExisteMovCxC(DM1.cdsCanjes.FieldByName('CIAID').AsString, DM1.cdsCanjes.FieldByName('TDIARID').AsString,
         DM1.cdsCanjes.FieldByName('CCANOMM').AsString, DM1.cdsCanjes.FieldByName('CCNOREG').Value) Then
      Begin
         DM1.cdsMovCxC2.Edit;
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value, 15, 2);
            If DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value > 0 Then
               DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value / DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value, 15, 2)
            Else
            Begin
               DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value / DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value, 15, 2);
            End;
         End
         Else
         Begin
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value, 15, 2);
            If DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value > 0 Then
               DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value * DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value, 15, 2)
            Else
            Begin
               DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value * DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value, 15, 2);
            End;
         End;
      End;
      DM1.cdsCanjes.Next;
   End;
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.Filtered := True;
   DM1.cdsMovCxC2.EnableControls;
   /////////////
   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'A';
   DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');
   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
   DM1.AplicaDatos(DM1.cdsMovCxC2, 'MovCxC2');

   EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage(' Canje de Letras Anulado ');
End;

Function TFLetrasTerceros.VerificaDocumentosPendientes: Boolean;
Begin
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin
      If DM1.cdsLetras.FieldByName('TMONID').Value = DM1.wTMonLoc Then
      Begin
         If FRound(DM1.cdsLetras.FieldByName('CCMTOLOC').Value - DM1.cdsLetras.FieldByName('CCPAGLOC').Value, 15, 2) <>
            FRound(DM1.cdsLetras.FieldByName('CCSALLOC').Value, 15, 2) Then
         Begin
            Result := False;
            Exit;
         End;
      End
      Else
      Begin
         If FRound(DM1.cdsLetras.FieldByName('CCMTOEXT').Value - DM1.cdsLetras.FieldByName('CCPAGEXT').Value, 15, 2) <>
            FRound(DM1.cdsLetras.FieldByName('CCSALEXT').Value, 15, 2) Then
         Begin
            Result := False;
            Exit;
         End;
      End;
      DM1.cdsLetras.Next;
   End;
   Result := True;
End;

Procedure TFLetrasTerceros.Z2bbtnAceptaClick(Sender: TObject);
Var
   xRegAct: TBookMark;
   xTotMN, xTotME: Double;
   xWhere, sSIT, xSitAnt, xNoDoc: String;
Begin
   If DM1.cdsCCanje.FieldByName('CJESTADO').AsString = 'P' Then Raise exception.Create('Error: Canje ya fue Aceptado');
   If DM1.cdsCanjes.RecordCount = 0 Then Raise exception.Create(' Error :  Falta registrar Documentos a Canjear');
   If DM1.cdsLetras.RecordCount = 0 Then Raise Exception.Create(' Error :  Falta registrar Letras');
   If Not VerificaTotal Then Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');
                         //3
   xWhere := 'SITUAFLAG=''5''';
   sSIT := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;

   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.eof Do
   Begin
      xSitAnt := DM1.cdsLetras.Fields.FieldByName('SITID').AsString;
      If Not CambioSituacion(xSitAnt, sSIT) Then
      Begin
         xNoDoc := DM1.cdsLetras.Fields.FieldByName('CCNODOC').AsString;
         DM1.cdsLetras.GotoBookmark(xRegAct);
         DM1.cdsLetras.FreeBookmark(xRegAct);
         DM1.cdsLetras.EnableControls;
         Raise Exception.Create('Letra ' + xNoDoc + ', No Se Puede Cambiar de Situació ');
      End;
      DM1.cdsLetras.Next;
   End;

   If MessageDlg('Aceptar Documento' + chr(13) + '  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      DM1.cdsLetras.GotoBookmark(xRegAct);
      DM1.cdsLetras.FreeBookmark(xRegAct);
      DM1.cdsLetras.EnableControls;
      exit;
   End;

   xTotMN := 0;
   xTotME := 0;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.eof Do
   Begin
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.FieldByName('SITID').AsString := sSIT;
      DM1.cdsLetras.FieldByName('CCFSITUA').Value := Date;
      DM1.cdsLetras.FieldByName('CCESTADO').Value := 'P';
      DM1.cdsLetras.FieldByName('CCUSER').Value := DM1.wUsuario;
      DM1.cdsLetras.FieldByName('CCFREG').Value := date;
      DM1.cdsLetras.FieldByName('CCHREG').Value := Time;
      xTotMN := xTotMN + DM1.cdsLetras.FieldByName('CCMTOLOC').Value;
      xTotME := xTotME + DM1.cdsLetras.FieldByName('CCMTOEXT').Value;
      DM1.cdsLetras.Next;
   End;
   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');

   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'P';
   DM1.cdsCCanje.Post;
   DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');

   ActualizaPagadoMovCxP;

   GrabaDetCanje;

   Filtracds(DM1.cdsMovCxC, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + DM1.cdsCCanje.FieldByName('NDDOC').AsString + '''' + ' and '
      + 'CCSERIE=' + '''' + DM1.cdsCCanje.FieldByName('NDSERIE').AsString + '''' + ' and '
      + 'CCNODOC=' + '''' + DM1.cdsCCanje.FieldByName('NDNUMERO').AsString + '''');

   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat;
   DM1.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat := DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsMovCxC.FieldByName('CCSALLOC').AsFloat := 0;
   DM1.cdsMovCxC.FieldByName('CCSALEXT').AsFloat := 0;
   DM1.AplicaDatos(DM1.cdsMovCxC, 'MovCxC');

   DM1.SaldosAuxiliar(DM1.cdsLetras.FieldByName('CIAID').Value, DM1.cdsLetras.FieldByName('CCANOMES').Value,
      DM1.cdsLetras.FieldByName('CLAUXID').Value, DM1.cdsLetras.FieldByName('CLIEID').Value,
      '=', xTotMN, xTotME, DM1.cdsCCanje.FieldByName('TMONID').AsString);

   EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString);

   ShowMessage(' Canje de Letras Aceptado ');
End;

Procedure TFLetrasTerceros.tnbDetalleChange(Sender: TObject; NewTab: Integer;
   Var AllowChange: Boolean);
Begin
{
   If tnbDetalle.ActivePage='  Documentos de Canje  ' then begin
      If DM1.cdsCanje.RecordCount=0 then begin
         tnbDetalle.ActivePage := '  Documentos de Canje  ';
         tnbDetalle.PageIndex  := 0;
         Raise Exception.Create(' No se han registrado Documentos ');
      end;

   end;

   bbtnSumatClick(Sender);
}
End;

Procedure TFLetrasTerceros.dblcCiaExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If xCrea Then Exit;

   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCia.Text);

   If length(edtCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía no existe');
      dblcCia.Text := '';
      dblcCia.SetFocus;
   End;
   If length(edtCia.Text) > 0 Then
   Begin
      //determina último número de registro incrementado en 1
      xWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and TCANJEID=' + '''' + 'LC' + '''';
      edtCanje.Text := DM1.BuscaUltTGE('dspTGE', 'CXC307', 'Canje', xWhere);
   End;
End;

Procedure TFLetrasTerceros.dblcdClieRucExit(Sender: TObject);
Begin
   If xCrea Then Exit;

   If bbtnBorra.Focused Then Exit;

   If length(dblcdClieRuc.Text) > 0 Then
   Begin
      edtClie.Text := DisplayDescrip('TGE204', 'CLIEDES', 'CLIERUC', dblcdClieRuc.Text);
      If length(edtClie.Text) = 0 Then
      Begin
         ShowMessage('Proveedor no existe');
         dblcdClie.Text := '';
         dblcdClieRuc.Text := '';
         dblcdClie.SetFocus;
         exit;
      End;
      dblcdClie.Text := DM1.cdsQry2.FieldByName('CLIEID').AsString;
      dblcClAux.Text := DM1.cdsQry2.FieldByName('CLAUXID').Asstring;

      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.FieldByName('CJESTADO').AsString := 'T';
      DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');
      EstadoDeForma(0, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, ' ');
   End
   Else
   Begin
      edtClie.Text := '';
      dblcdClie.SetFocus;
   End;
End;

Procedure TFLetrasTerceros.dblcTDocExit(Sender: TObject);
Var
   xFiltro, xWhere: String;
Begin
   If xCrea Then Exit;

   xWhere := 'DocId=' + '''' + dblcTDoc.Text + ''''
      + ' and DOC_FREG=' + '''' + FPrincipal.xTipoProv + '''';
   edtTDoc.Text := BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'DocDes');
   If length(edtTDoc.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Documento');
      dblcTDoc.SetFocus;
      Exit;
   End;

   If length(edtTDoc.Text) > 0 Then
   Begin
      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.FieldByName('TDIARID').Asstring := DM1.cdsQry.FieldByName('TDIARID').Value;
      edtTDiario.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);
   // Filtra Tipo de Diario específico
      xFiltro := 'TDiarID=' + DM1.cdsTDoc.FieldByName('TDIARID').AsString;
      If length(DM1.cdsTDoc.FieldByName('TDIARID2').AsString) > 0 Then
      Begin
         xFiltro := xFiltro + 'or TDiarID=' + '''' + DM1.cdsTDoc.FieldByName('TDIARID2').AsString + '''';
      End;
      DM1.cdsTDiario.Filter := '';
      DM1.cdsTDiario.Filter := xFiltro;
      DM1.cdsTDiario.Filtered := true;
      If DM1.cdsTDiario.Recordcount = 1 Then
      Begin
         If dblcTDiario.Enabled Then perform(CM_DialogKey, VK_TAB, 0);
         dblcTDiario.Enabled := false;
      End
      Else
      Begin
         dblcTDiario.Enabled := true;
      End;
   End;
End;

Procedure TFLetrasTerceros.dblcTDiarioExit(Sender: TObject);
Begin
   edtTDiario.Text := DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcTDiario.Text);

   If length(edtTDiario.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiario.SetFocus;
   End;
End;

Procedure TFLetrasTerceros.btnActRegClick(Sender: TObject);
Begin
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   InsertaLetra;
   xModoL := 'A';
End;

Procedure TFLetrasTerceros.InsertaLetra;
Var
   xxWhere: String;
   xxNoReg: String;
Begin
   xTAutoNum := DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', dblcTDiario.Text);
   xxNoReg := DM1.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
   xxNoReg := Strzero(xxNoReg, DM1.cdsLetras.FieldByName('CCNOREG').Size);

   DM1.cdsLetras.Insert;
   DM1.cdsLetras.FieldByName('CIAID').AsString := DM1.cdsCCanje.FieldByName('CIAID').AsString;
   DM1.cdsLetras.FieldByName('TCANJEID').AsString := 'LC';
   DM1.cdsLetras.FieldByName('CCCANJE').AsString := edtCanje.Text;
   DM1.cdsLetras.FieldByName('DOCID').AsString := DM1.cdsCCanje.FieldByName('DOCID').AsString;
   xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'DOCID=' + '''' + dblcTDoc.Text + '''';
   DM1.cdsLetras.FieldByName('CCNODOC').AsString := DM1.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   DM1.cdsLetras.FieldByName('CCNOREG').AsString := xxNoReg;
   DM1.cdsLetras.FieldByName('CCANOMES').AsString := DM1.cdsCCanje.FieldByName('CJAAMM').AsString;
   DM1.cdsLetras.FieldByName('TDIARID').AsString := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
   DM1.cdsLetras.FieldByName('CLAUXID').AsString := DM1.cdsCCanje.FieldByName('CLAUXID').AsString;
   DM1.cdsLetras.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIEID').AsString;
   DM1.cdsLetras.FieldByName('CLIERUC').Value := DM1.cdsCCanje.FieldByName('CLIERUC').AsString;
   DM1.cdsLetras.FieldByName('CCSERIE').Value := '000';
   dbeLetra.Enabled := True;
   dbeLetra.SetFocus;
End;

Procedure TFLetrasTerceros.bbtnRegOkClick(Sender: TObject);
Var
   xTotal: Double;
   xxTotGas, xxTotInt, xxTotIGV, xxTotal: Double;

Begin
   If Length(dbeLetra.Text) = 0 Then
   Begin
      dbeLetra.SetFocus;
      Raise Exception.Create('Error :  Falta Registrar Número de Letra');
   End;
   If dtpFVcmto.Date = 0 Then
   Begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Error :  Falta Registrar Fecha de Vencimiento');
   End;
   If dtpFVcmto.Date > dtpFValor.Date Then
   Begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Error :  Fecha de Vencimiento' + chr(13)
         + 'no puede ser mayor que Fecha de Giro');
   End;
   xTotal := DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat
      + DM1.cdsLetras.FieldByName('INTERES').AsFloat
      + DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat
      + DM1.cdsLetras.FieldByName('CCIGV').AsFloat;
   If xTotal <= 0 Then
   Begin
      dbeImp.SetFocus;
      Raise Exception.Create('Error :  Falta Registar Montos');
   End;

   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('CCTCAMPR').AsFloat := DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
   If DM1.cdsLetras.FieldByName('TMONID').Value = DM1.wTMonLoc Then
   Begin
      DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
   End
   Else
   Begin
      DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
      DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
   End;

   DM1.cdsLetras.FieldByName('CC_CONTA').AsString := 'N';
   DM1.cdsLetras.FieldByName('CCFEMIS').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
   DM1.cdsLetras.FieldByName('CCFVALOR').Value := DM1.cdsCCanje.FieldByName('CJFVALOR').Value;
   DM1.cdsLetras.FieldByName('CCFCANJE').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
   DM1.cdsLetras.FieldByName('CTATOTAL').AsString := DM1.cdsCCanje.FieldByName('CUENTAID').AsString;
   DM1.cdsLetras.FieldByName('CCPTOTOT').AsString := DM1.cdsCCanje.FieldByName('CPTOID').AsString;
   DM1.cdsLetras.FieldByName('CCFCMPRB').Value := DM1.cdsDetCxC.FieldByName('CCFCOMP').Value;
   DM1.cdsLetras.FieldByName('CCAAAA').AsString := DM1.cdsCCanje.FieldByName('CJAA').AsString;
   DM1.cdsLetras.FieldByName('CCMM').AsString := DM1.cdsCCanje.FieldByName('CJMM').AsString;
   DM1.cdsLetras.FieldByName('CCDD').AsString := DM1.cdsCCanje.FieldByName('CJDD').AsString;
   DM1.cdsLetras.FieldByName('CCTRI').AsString := DM1.cdsCCanje.FieldByName('CJTRI').AsString;
   DM1.cdsLetras.FieldByName('CCSEM').AsString := DM1.cdsCCanje.FieldByName('CJSEM').AsString;
   DM1.cdsLetras.FieldByName('CCSS').AsString := DM1.cdsCCanje.FieldByName('CJSS').AsString;
   DM1.cdsLetras.FieldByName('CCAATRI').AsString := DM1.cdsCCanje.FieldByName('CJAATRI').AsString;
   DM1.cdsLetras.FieldByName('CCAASEM').AsString := DM1.cdsCCanje.FieldByName('CJAASEM').AsString;
   DM1.cdsLetras.FieldByName('CCAASS').AsString := DM1.cdsCCanje.FieldByName('CJAASS').AsString;
   DM1.cdsLetras.Post;

   xxTotGas := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'CCGASFIN' + ')', '');
   xxTotInt := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'INTERES' + ')', '');
   xxTotIGV := OperClientDataSet(DM1.cdsLetras, 'SUM(' + 'CCIGV' + ')', '');
   xxTotal := FRound((xxTotGas + xxTotInt + xxTotIGV), 15, 2);
   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJGASFIN').AsFloat := xxTotGas;
   DM1.cdsCCanje.FieldByName('CJINTERES').AsFloat := xxTotInt;
   DM1.cdsCCanje.FieldByName('CJIGV').AsFloat := xxTotIGV;
   DM1.cdsCCanje.FieldByName('CJTOTORI').AsFloat := xxTotal;
   dbgLetras.setFocus;
   If xModoL = 'A' Then
      InsertaLetra
   Else
   Begin
      pnlRegistro.Visible := False;
   End;
   bbtnSumatClick(Sender);
End;

Procedure TFLetrasTerceros.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFLetrasTerceros.bbtnRegCancClick(Sender: TObject);
Begin
   If xModoL = 'A' Then
   Begin
      DM1.cdsLetras.Delete;
      DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
   End
   Else
   Begin
      DM1.cdsLetras.Cancel;
   End;
   pnlRegistro.Visible := False;

   bbtnSumatClick(Sender);
   dbgLetras.setFocus;
End;

Procedure TFLetrasTerceros.dbgLetrasDblClick(Sender: TObject);
Begin
   If btnActReg.Enabled Then
   Begin
      xModoL := 'M';
      DM1.cdsLetras.Edit;
      pnlRegistro.Visible := True;
      dbeLetra.Enabled := False;
      dtpFVcmto.SetFocus;
   End;
End;

Procedure TFLetrasTerceros.dbgLetrasKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If Not btnActReg.Enabled Then Exit;

   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DM1.cdsLetras.Delete;
         DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
      End;
   End;
End;

Procedure TFLetrasTerceros.bbtnRegresaEnter(Sender: TObject);
Begin
   dbgDocCanjeColExit2(Sender);
End;

Procedure TFLetrasTerceros.FormCreate(Sender: TObject);
Begin
{   If DM1.wAdmin='G' then begin
      DM1.wObjetoDesPr := Caption;
      FPrincipal.ListaComponentes(Self);
   end;}
   FPrincipal.PropGrid([dbgPendientes, dbgDocCanje, dbgLetras]);
End;

Procedure TFLetrasTerceros.dbgDocCanjeCalcCellColors2(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
{
   If DM1.wVRN_PagosParciales='S' then begin
      If (FIELD.FieldName='CCPTCCJE') or
         (FIELD.FieldName='CCPMOLOC') or
         (FIELD.FieldName='CCPMOEXT') then begin
         AFont.Color  := clBlack;
         ABrush.Color := clWindow;
      end;
   end;}
End;

Procedure TFLetrasTerceros.dbgDocCanjeColExit2(Sender: TObject);
Begin
//   ModificaMontos;
End;

Procedure TFLetrasTerceros.dbgDocCanjeDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLetrasTerceros.dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
Begin
   If Target = dbgPendientes Then
   Begin
      DM1.cdsMovCxC2.Filtered := False;
      DM1.cdsMovCxC2.SetKey;
      DM1.cdsMovCxC2.FieldByName('CIAID').Value := DM1.cdsCanjes.FieldByName('CIAID').Value;
      DM1.cdsMovCxC2.FieldByName('TDIARID').Value := DM1.cdsCanjes.FieldByName('TDIARID').Value;
      DM1.cdsMovCxC2.FieldByName('CCANOMES').Value := DM1.cdsCanjes.FieldByName('CCANOMM').Value;
      DM1.cdsMovCxC2.FieldByName('CCNOREG').Value := DM1.cdsCanjes.FieldByName('CCNOREG').Value;
      If DM1.cdsMovCxC2.GotoKey Then
      Begin
         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := '.';
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value + DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value, 15, 2);
            If DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value > 0 Then
               DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value / DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value, 15, 2)
            Else
            Begin
               DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value / DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value, 15, 2);
            End;
         End
         Else
         Begin
            DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value + DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value, 15, 2);
            If DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value > 0 Then
               DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value * DM1.cdsMovCxC2.FieldByName('CCTCAMPA').Value, 15, 2)
            Else
            Begin
               DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value := FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value * DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value, 15, 2);
            End;
         End;
         DM1.cdsCanjes.Delete;
      End;
      DM1.cdsMovCxC2.Filtered := True;
      dbgPendientes.RefreshDisplay;
   End;
End;

Procedure TFLetrasTerceros.dbgDocCanjeKeyPress2(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      dbgDocCanjeColExit2(Sender);
   End;
End;

Procedure TFLetrasTerceros.dbgDocCanjeMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgDocCanje.BeginDrag(False);
End;

Procedure TFLetrasTerceros.dbgPendientesDragOver2(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFLetrasTerceros.dbgPendientesEndDrag2(Sender, Target: TObject; X,
   Y: Integer);
Var
   i: Integer;
Begin
   If Target = dbgDocCanje Then
   Begin
      DM1.cdsMovCxC2.DisableControls;
      // Verifica que Documentos No Esten Pendientes de Actualización
      For i := 0 To dbgPendientes.SelectedList.Count - 1 Do
      Begin
         dbgPendientes.datasource.dataset.GotoBookmark(dbgPendientes.SelectedList.items[i]);
         If DM1.cdsMovCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCMTOLOC').Value - DM1.cdsMovCxC2.FieldByName('CCPAGLOC').Value, 15, 2) <>
               FRound(DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgPendientes.SelectedList.clear;
               DM1.cdsMovCxC2.First;
               DM1.cdsMovCxC2.EnableControls;
               Exit;
            End;
         End
         Else
         Begin
            If FRound(DM1.cdsMovCxC2.FieldByName('CCMTOEXT').Value - DM1.cdsMovCxC2.FieldByName('CCPAGEXT').Value, 15, 2) <>
               FRound(DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value, 15, 2) Then
            Begin
               ShowMessage('Error : Documento esta en Proceso de cancelación');
               dbgPendientes.SelectedList.clear;
               DM1.cdsMovCxC2.First;
               DM1.cdsMovCxC2.EnableControls;
               Exit;
            End;
         End;
      End; //FOR

      DM1.cdsCanjes.SetKey;
      DM1.cdsCanjes.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
      DM1.cdsCanjes.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
      DM1.cdsCanjes.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
      DM1.cdsCanjes.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
      DM1.cdsCanjes.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
      If Not DM1.cdsCanjes.GotoKey Then
      Begin
         DM1.cdsCanjes.Insert;
         DM1.cdsCanjes.FieldByName('CIAID').Value := DM1.cdsMovCxC2.FieldByName('CIAID').Value;
         DM1.cdsCanjes.FieldByName('TDIARID').Value := DM1.cdsMovCxC2.FieldByName('TDIARID').Value;
         DM1.cdsCanjes.FieldByName('CCNOREG').Value := DM1.cdsMovCxC2.FieldByName('CCNOREG').Value;
         DM1.cdsCanjes.FieldByName('CCAAAA').Value := DM1.cdsMovCxC2.FieldByName('CCAAAA').Value;
         DM1.cdsCanjes.FieldByName('CCANOMM').Value := DM1.cdsMovCxC2.FieldByName('CCANOMES').Value;
         DM1.cdsCanjes.FieldByName('CLIEID').Value := DM1.cdsMovCxC2.FieldByName('CLIEID').Value;
         DM1.cdsCanjes.FieldByName('CLIERUC').Value := DM1.cdsMovCxC2.FieldByName('CLIERUC').Value;
         DM1.cdsCanjes.FieldByName('DOCID').Value := DM1.cdsMovCxC2.FieldByName('DOCID').Value;
         DM1.cdsCanjes.FieldByName('CCSERIE').Value := DM1.cdsMovCxC2.FieldByName('CCSERIE').Value;
         DM1.cdsCanjes.FieldByName('CCNODOC').Value := DM1.cdsMovCxC2.FieldByName('CCNODOC').Value;
         DM1.cdsCanjes.FieldByName('TCANJEID').Value := 'LC';
         DM1.cdsCanjes.FieldByName('CCCANJE').Value := edtCanje.Text;
         DM1.cdsCanjes.FieldByName('CCFCANJE').Value := dtpFComp.Date;
         DM1.cdsCanjes.FieldByName('TMONID').Value := DM1.cdsMovCxC2.FieldByName('TMONID').Value;
         DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value := strtofloat(dbeTCLet.Text);
         DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value := DM1.cdsMovCxC2.FieldByName('CCTCAMPR').Value;
         DM1.cdsCanjes.FieldByName('CCSALLOC').Value := DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value;
         DM1.cdsCanjes.FieldByName('CCSALEXT').Value := DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value;
         DM1.cdsCanjes.FieldByName('CJEANTMN').Value := 0;
         DM1.cdsCanjes.FieldByName('CJEANTME').Value := 0;
         DM1.xFlagCal := False;
         DM1.cdsCanjes.FieldByName('CCMTOLOC').Value := DM1.cdsMovCxC2.FieldByName('CCSALLOC').Value;
         DM1.xFlagCal := False;
         DM1.cdsCanjes.FieldByName('CCMTOEXT').Value := DM1.cdsMovCxC2.FieldByName('CCSALEXT').Value;
         DM1.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
         DM1.cdsCanjes.FieldByName('CCUSER').Value := DM1.wUsuario;
         DM1.cdsCanjes.FieldByName('CCFREG').Value := date;
         DM1.cdsCanjes.FieldByName('CCHREG').Value := time;
         DM1.cdsCanjes.FieldByName('CCMM').Value := DM1.cdsMovCxC2.FieldByName('CCMM').Value;
         DM1.cdsCanjes.FieldByName('CCDD').Value := DM1.cdsMovCxC2.FieldByName('CCDD').Value;
         DM1.cdsCanjes.FieldByName('CCTRI').Value := DM1.cdsMovCxC2.FieldByName('CCTRI').Value;
         DM1.cdsCanjes.FieldByName('CCSEM').Value := DM1.cdsMovCxC2.FieldByName('CCSEM').Value;
         DM1.cdsCanjes.FieldByName('CCSS').Value := DM1.cdsMovCxC2.FieldByName('CCSS').Value;
         DM1.cdsCanjes.FieldByName('CCAATRI').Value := DM1.cdsMovCxC2.FieldByName('CCAATRI').Value;
         DM1.cdsCanjes.FieldByName('CCAASEM').Value := DM1.cdsMovCxC2.FieldByName('CCAASEM').Value;
         DM1.cdsCanjes.FieldByName('CCAASS').Value := DM1.cdsMovCxC2.FieldByName('CCAASS').Value;
         DM1.cdsCanjes.FieldByName('CPTOTOT').Value := DM1.cdsMovCxC2.FieldByName('CCPTOTOT').Value;
         DM1.cdsCanjes.FieldByName('CTATOTAL').Value := DM1.cdsMovCxC2.FieldByName('CTATOTAL').Value;
         DM1.cdsCanjes.Post;
         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.FieldByName('FLAGVAR').AsString := 'XX';
         DM1.cdsMovCxC2.Post;
      End;
      DM1.cdsMovCxC2.EnableControls;
   End;
End;

Procedure TFLetrasTerceros.dbgPendientesMouseDown2(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   dbgPendientes.BeginDrag(False);
End;

Procedure TFLetrasTerceros.TabSheet2Enter(Sender: TObject);
Begin
   If pnlDatos.Enabled Then
      dbeNLet.SetFocus;
End;

Procedure TFLetrasTerceros.bbtnDatosClick(Sender: TObject);
Begin
   If Not pnlDatos.Visible Then
   Begin
      pnlDatos.Visible := True;
      dbeNLet.SetFocus;
   End;
End;

Procedure TFLetrasTerceros.DetalleLetra;
Begin
   DM1.cdsLetras.FieldByName('TMONID').Value := DM1.cdsCCanje.FieldByName('TMONID').AsString;
   DM1.cdsLetras.FieldByName('CIAID').Value := DM1.cdsCCanje.FieldByName('CIAID').AsString;
   DM1.cdsLetras.FieldByName('TCANJEID').Value := 'LC';
   DM1.cdsLetras.FieldByName('CCCANJE').Value := edtCanje.Text;
   DM1.cdsLetras.FieldByName('CCANOMES').Value := DM1.cdsCCanje.FieldByName('CJAAMM').Asstring;
   DM1.cdsLetras.FieldByName('TDIARID').Value := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
   DM1.cdsLetras.FieldByName('CCNOREG').Value := dbeNoReg.Text;
   DM1.cdsLetras.FieldByName('CLAUXID').AsString := DM1.cdsCCanje.FieldByName('CLAUXID').AsString;
   DM1.cdsLetras.FieldByName('CLIEID').AsString := DM1.cdsCCanje.FieldByName('CLIEID').AsString;
   DM1.cdsLetras.FieldByName('CLIERUC').AsString := DM1.cdsCCanje.FieldByName('CLIERUC').AsString;
   DM1.cdsLetras.FieldByName('DOCID').Value := DM1.cdsCCanje.FieldByName('DOCID').AsString;
   DM1.cdsLetras.FieldByName('CCSERIE').Value := '000';
   DM1.cdsLetras.FieldByName('CCFEMIS').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
   DM1.cdsLetras.FieldByName('CCFVALOR').Value := DM1.cdsCCanje.FieldByName('CJFVALOR').Value;
   DM1.cdsLetras.FieldByName('TMONID').Value := DM1.cdsCCanje.FieldByName('TMONID').AsString;
   DM1.cdsLetras.FieldByName('CCTCAMPR').Value := DM1.cdsCCanje.FieldByName('CJTCAMBIO').Value;
//   DM1.cdsLetrasCCEstado.Value  := 'I';
   DM1.cdsLetras.FieldByName('CC_CONTA').Value := 'N';

   DM1.cdsLetras.FieldByName('CCFCANJE').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
   DM1.cdsLetras.FieldByName('CTATOTAL').Value := DM1.cdsCCanje.FieldByName('CUENTAID').Value;
   DM1.cdsLetras.FieldByName('CCPTOTOT').Value := DM1.cdsCCanje.FieldByName('CPTOID').Value;
   DM1.cdsLetras.FieldByName('CCFCMPRB').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').Value;
   DM1.cdsLetras.FieldByName('CCAAAA').Value := DM1.cdsCCanje.FieldByName('CJAA').AsString;
   DM1.cdsLetras.FieldByName('CCMM').Value := DM1.cdsCCanje.FieldByName('CJMM').AsString;
   DM1.cdsLetras.FieldByName('CCDD').Value := DM1.cdsCCanje.FieldByName('CJDD').AsString;
   DM1.cdsLetras.FieldByName('CCTRI').Value := DM1.cdsCCanje.FieldByName('CJTRI').Value;
   DM1.cdsLetras.FieldByName('CCSEM').Value := DM1.cdsCCanje.FieldByName('CJSEM').Value;
   DM1.cdsLetras.FieldByName('CCSS').Value := DM1.cdsCCanje.FieldByName('CJSS').Value;
   DM1.cdsLetras.FieldByName('CCAATRI').Value := DM1.cdsCCanje.FieldByName('CJAATRI').Value;
   DM1.cdsLetras.FieldByName('CCAASEM').Value := DM1.cdsCCanje.FieldByName('CJAASEM').Value;
   DM1.cdsLetras.FieldByName('CCAASS').Value := DM1.cdsCCanje.FieldByName('CJAASS').Value;
End;

Procedure TFLetrasTerceros.bbtnCreaLClick(Sender: TObject);
Var
   xMonto, xImporte, xTotAcum: Double;
   xxNTemLe: String;
   I, xNLet, xIncDia, xxNumLet: Integer;
   xDias: TDate;
   xxNoReg, xxNLetra: String;
Begin
   If Length(edtTotal.Text) = 0 Then Exit;
   If FRound(StrtoFloat(edtTotal.Text), 15, 2) <= 0 Then Exit;
   If Length(dbeDias.Text) = 0 Then Exit;

   If DM1.cdsLetras.RecordCount > 0 Then
      If MessageDlg(' Existen Letras Generadas ' + chr(13) + chr(13)
         + '¿ Desea Regenerar letras ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin
      DM1.cdsLetras.Delete;
   End;
   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');

   xMonto := FRound(StrtoFloat(edtTotal.Text), 15, 2);
   xDias := DM1.cdsCCanje.FieldByName('CJFVALOR').Value;
   xIncDia := StrtoInt(Trim(dbeDias.Text));
   xNLet := StrtoInt(Trim(dbeNlet.Text));
   xxNLetra := dbeLetIni.Text;

   xTotAcum := 0;
   xImporte := FRound((xMonto / xNLet), 15, 2);

   xxNoReg := DM1.UltimoRegistro(xTAutoNum, dblcCia.Text, dblcTDiario.Text, xTAno, xTMes);
   xxNoReg := StrZero(xxNoReg, DM1.cdsLetras.FieldByName('CCNOREG').Size);

   xxNumLet := StrToInt(Trim(dbeLetIni.Text));

   For I := 1 To xNLet Do
   Begin
      xxNLetra := '';
      While Length(xxNLetra) = 0 Do
      Begin
         xxNTemLe := IntToStr(xxNumLet);
         xxNLetra := StrZero(xxNTemLe, Length(xxNTemLe));
         xxNumLet := xxNumLet + 1;
         If Not BuscaCxCLet(dblcCia.Text, dblcTDoc.Text, xxNLetra) Then
         Begin
            Break;
         End;
         xxNLetra := '';
      End;

      xDias := xDias + xIncDia;
      DM1.cdsLetras.Insert;
      DetalleLetra;
      DM1.cdsLetras.FieldByName('CCNOREG').Value := xxNoReg;
      DM1.cdsLetras.FieldByName('CCFVCMTO').Value := xDias;
      DM1.cdsLetras.FieldByName('CCNODOC').Value := xxNLetra;
      If I = xNLet Then
         DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat := FRound(xMonto - xTotAcum, 15, 2)
      Else
      Begin
         DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat := xImporte;
      End;
      xTotAcum := FRound(xTotAcum + DM1.cdsLetras.FieldByName('CCGRAVAD').Value, 15, 2);
      xxNoReg := StrZero(IntToStr(StrToInt(xxNoReg) + 1), DM1.cdsLetras.FieldByName('CCNOREG').Size);

      DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat;
      If DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      Begin
         DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
      End
      Else
      Begin
         DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      End;

      DM1.cdsLetras.Post;
   End;

   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');

   Filtracds(DM1.cdsLetras, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');
End;

Procedure TFLetrasTerceros.pc1Change(Sender: TObject);
Begin
   bbtnSumatClick(Sender);
End;

Procedure TFLetrasTerceros.bbtnCalculaClick(Sender: TObject);
Var
   xInteres, xFactor, xTotLet, xTotInt, xAcumGas: Double;
   xNLet, xCont: Integer;
   xxNLetra: String;
   xDias, xIntLet, xIGVLet, xIGVGas, xGastos, xImpGas, xTotIGV: Double;
Begin
   If DM1.cdsLetras.RecordCount = 0 Then Exit;
   If FRound(StrtoFloat(edtTotal.Text), 15, 2) <= 0 Then Exit;

   DM1.cdsLetras.First;
   If DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat > 0 Then
      If MessageDlg(' Existen Letras Calculadas ' + chr(13) + chr(13)
         + '¿ Desea ReCalcular letras ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   xNLet := StrtoInt(Trim(dbeNlet.Text));
   xxNletra := dbeLetIni.Text;
   xInteres := 0;
   xAcumGas := 0;
   xTotInt := 0;
   xTotIGV := 0;
   xGastos := FRound((DM1.cdsCCanje.FieldByName('CJGASFIN').AsFloat + DM1.cdsCCanje.FieldByName('CJGASADM').AsFloat +
      DM1.cdsCCanje.FieldByName('CJMORA').AsFloat + DM1.cdsCCanje.FieldByName('CJOTROS').AsFloat), 15, 2);
   xImpGas := FRound((xGastos / xNLet), 15, 2);
   xCont := 0;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin
      xCont := xCont + 1;
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.FieldByName('INTERES').AsFloat := 0;
      DM1.cdsLetras.FieldByName('CCIGV').AsFloat := 0;

      If xInteres > 0 Then
      Begin
         xDias := DM1.cdsLetras.FieldByName('CCFVCMTO').Value - DM1.cdsLetras.FieldByName('CCFVALOR').Value;
         xIntLet := FRound(DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat * xFactor, 15, 2);
         xIGVLet := FRound((xIntLet * 0.18), 15, 2);
         DM1.cdsLetras.FieldByName('INTERES').AsFloat := FRound(xIntLet, 15, 2);
         DM1.cdsLetras.FieldByName('CCIGV').AsFloat := FRound((DM1.cdsLetras.FieldByName('CCIGV').AsFloat + xIGVLet), 15, 2);
      End;

      If xCont = DM1.cdsLetras.RecordCount Then
         DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat := FRound(xGastos - xAcumGas, 15, 2)
      Else
      Begin
         DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat := xImpGas;
      End;

      xIGVGas := FRound((DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat * 0.18), 15, 2);
      DM1.cdsLetras.FieldByName('CCIGV').AsFloat := FRound((DM1.cdsLetras.FieldByName('CCIGV').AsFloat + xIGVGas), 15, 2);

      xTotLet := FRound((DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat
         + DM1.cdsLetras.FieldByName('INTERES').AsFloat + DM1.cdsLetras.FieldByName('CCIGV').AsFloat), 15, 2);

      xTotInt := FRound((xTotInt + DM1.cdsLetras.FieldByName('INTERES').AsFloat), 15, 2);
      xTotIGV := FRound((xTotIGV + DM1.cdsLetras.FieldByName('CCIGV').AsFloat), 15, 2);

      xAcumGas := FRound(xAcumGas + DM1.cdsLetras.FieldByName('CCGASFIN').Value, 15, 2);

      DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := xTotLet;
      If DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      Begin
         DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value / DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
      End
      Else
      Begin
         DM1.cdsLetras.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALORI').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALLOC').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value * DM1.cdsLetras.FieldByName('CCTCAMPR').Value, 15, 2);
         DM1.cdsLetras.FieldByName('CCSALEXT').Value := FRound(DM1.cdsLetras.FieldByName('CCMTOORI').Value, 15, 2);
      End;
      DM1.cdsLetras.Next;
   End;

   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJINTERES').AsFloat := xTotInt;
   DM1.cdsCCanje.FieldByName('CJIGV').AsFloat := xTotIGV;
   DM1.cdsCCanje.FieldByName('CJTOTORI').AsFloat := xGastos + xTotInt + xTotIGV;
   If DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
   Begin
      DM1.cdsCCanje.FieldByName('CJTOTLOC').Value := FRound(DM1.cdsCCanje.FieldByName('CJTOTORI').Value, 15, 2);
      DM1.cdsCCanje.FieldByName('CJTOTEXT').Value := FRound(DM1.cdsCCanje.FieldByName('CJTOTORI').Value / DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End
   Else
   Begin
      DM1.cdsCCanje.FieldByName('CJTOTLOC').Value := FRound(DM1.cdsCCanje.FieldByName('CJTOTORI').Value * DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
      DM1.cdsCCanje.FieldByName('CJTOTEXT').Value := FRound(DM1.cdsCCanje.FieldByName('CJTOTORI').Value, 15, 2);
   End;

   bbtnSumatClick(Sender);
End;

Procedure TFLetrasTerceros.InsertaCanjes(xxCds: TwwClientDataSet);
Begin
   DM1.cdsCanjes.Insert;
   DM1.cdsCanjes.FieldByName('CIAID').Value := xxCds.FieldByName('CIAID').AsString;
   DM1.cdsCanjes.FieldByName('TDIARID').Value := xxCds.FieldByName('TDIARID').AsString;
   DM1.cdsCanjes.FieldByName('CCNOREG').Value := xxCds.FieldByName('CCNOREG').AsString;
   DM1.cdsCanjes.FieldByName('CCAAAA').Value := xxCds.FieldByName('CCAAAA').AsString;
   DM1.cdsCanjes.FieldByName('CCANOMM').Value := xxCds.FieldByName('CCANOMES').AsString;
   DM1.cdsCanjes.FieldByName('CLIEID').Value := xxCds.FieldByName('CLIEID').AsString;
   DM1.cdsCanjes.FieldByName('CLIERUC').Value := xxCds.FieldByName('CLIERUC').AsString;
   DM1.cdsCanjes.FieldByName('DOCID').Value := xxCds.FieldByName('DOCID').AsString;
   DM1.cdsCanjes.FieldByName('CCSERIE').Value := xxCds.FieldByName('CCSERIE').AsString;
   DM1.cdsCanjes.FieldByName('CCNODOC').Value := xxCds.FieldByName('CCNODOC').AsString;
   DM1.cdsCanjes.FieldByName('TCANJEID').Value := 'LC';
   DM1.cdsCanjes.FieldByName('CCCANJE').Value := edtCanje.Text;
   DM1.cdsCanjes.FieldByName('CCFCANJE').Value := xxCds.FieldByName('CCFCMPRB').AsDateTime;
   DM1.cdsCanjes.FieldByName('TMONID').Value := xxCds.FieldByName('TMONID').AsString;
   DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value := xxCds.FieldByName('CCTCAMPR').AsFloat;
   DM1.cdsCanjes.FieldByName('CCSALLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DM1.cdsCanjes.FieldByName('CCSALEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsCanjes.FieldByName('CJEANTMN').Value := 0;
   DM1.cdsCanjes.FieldByName('CJEANTME').Value := 0;
   DM1.xFlagCal := False;
   DM1.cdsCanjes.FieldByName('CCMTOLOC').Value := xxCds.FieldByName('CCMTOLOC').AsFloat;
   DM1.xFlagCal := False;
   DM1.cdsCanjes.FieldByName('CCMTOEXT').Value := xxCds.FieldByName('CCMTOEXT').AsFloat;
   DM1.cdsCanjes.FieldByName('CCESTADO').Value := 'P';
   DM1.cdsCanjes.FieldByName('CCUSER').Value := DM1.wUsuario;
   DM1.cdsCanjes.FieldByName('CCFREG').Value := date;
   DM1.cdsCanjes.FieldByName('CCHREG').Value := time;
   DM1.cdsCanjes.FieldByName('CCMM').Value := xxCds.FieldByName('CCMM').AsString;
   DM1.cdsCanjes.FieldByName('CCDD').Value := xxCds.FieldByName('CCDD').AsString;
   DM1.cdsCanjes.FieldByName('CCTRI').Value := xxCds.FieldByName('CCTRI').AsString;
   DM1.cdsCanjes.FieldByName('CCSEM').Value := xxCds.FieldByName('CCSEM').AsString;
   DM1.cdsCanjes.FieldByName('CCSS').Value := xxCds.FieldByName('CCSS').AsString;
   DM1.cdsCanjes.FieldByName('CCAATRI').Value := xxCds.FieldByName('CCAATRI').AsString;
   DM1.cdsCanjes.FieldByName('CCAASEM').Value := xxCds.FieldByName('CCAASEM').AsString;
   DM1.cdsCanjes.FieldByName('CCAASS').Value := xxCds.FieldByName('CCAASS').AsString;
   DM1.cdsCanjes.FieldByName('CPTOTOT').Value := xxCds.FieldByName('CCPTOTOT').AsString;
   DM1.cdsCanjes.FieldByName('CTATOTAL').Value := xxCds.FieldByName('CTATOTAL').AsString;
   DM1.cdsCanjes.Post;
End;

Procedure TFLetrasTerceros.GeneraDetalle;
Begin
   If DM1.cdsDetCxC2.RecordCount > 0 Then
   Begin
      While Not DM1.cdsDetCxC2.Eof Do
      Begin
         DM1.cdsDetCxC2.delete;
      End;
   End;
   If DM1.cdsCCanje.FieldByName('CJGASADM').AsFloat > 0 Then
   Begin
      RegistroDetalle('MG', 'GAD', DM1.cdsCCanje.FieldByName('CJGASADM').AsFloat);
   End;
   If DM1.cdsCCanje.FieldByName('CJGASFIN').AsFloat > 0 Then
   Begin
      RegistroDetalle('MG', 'GFI', DM1.cdsCCanje.FieldByName('CJGASFIN').AsFloat);
   End;
   If DM1.cdsCCanje.FieldByName('CJMORA').AsFloat > 0 Then
   Begin
      RegistroDetalle('MG', 'MOR', DM1.cdsCCanje.FieldByName('CJMORA').AsFloat);
   End;
   If DM1.cdsCCanje.FieldByName('CJOTROS').AsFloat > 0 Then
   Begin
      RegistroDetalle('MG', 'OTR', DM1.cdsCCanje.FieldByName('CJOTROS').AsFloat);
   End;
   If DM1.cdsCCanje.FieldByName('CJINTERES').AsFloat > 0 Then
   Begin
      RegistroDetalle('MG', 'INT', DM1.cdsCCanje.FieldByName('CJINTERES').AsFloat);
   End;
   If DM1.cdsCCanje.FieldByName('CJIGV').AsFloat > 0 Then
   Begin
      RegistroDetalle('I1', '', DM1.cdsCCanje.FieldByName('CJIGV').AsFloat);
   End;
   If DM1.cdsCCanje.FieldByName('CJTOTORI').AsFloat > 0 Then
   Begin
      RegistroDetalle('TO', '', DM1.cdsCCanje.FieldByName('CJTOTORI').AsFloat);
   End;
End;

Procedure TFLetrasTerceros.RegistroDetalle(xTipDet, xTipCar: String; xMonto: Double);
Var
   xWhere, xTReg, xDH, xCpto, xCta: String;
Begin

   xWhere := 'TIPDET=' + '''' + xTipDet + '''';
   xTReg := BuscaQry('dspTGE', 'TGE128', '*', xWhere, 'TREGID');
   xDH := DM1.cdsQry.FieldByName('CCDH').Value;

   If Length(xTipCar) = 0 Then
   Begin
      If DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
      Begin
         xCpto := DM1.cdsQry.FieldByName('CPTOMN').AsString;
         xCta := DM1.cdsQry.FieldByName('CUENTAMN').AsString;
      End
      Else
      Begin
         xCpto := DM1.cdsQry.FieldByName('CPTOME').AsString;
         xCta := DM1.cdsQry.FieldByName('CUENTAME').AsString;
      End;
   End
   Else
   Begin
      xWhere := 'CJECARGO=' + '''' + xTipCar + '''';
      xCpto := BuscaQry('dspTGE', 'CXC106', '*', xWhere, 'CPTOMN');
      If DM1.cdsCCanje.FieldByName('TMONID').AsString = DM1.wTMonLoc Then
         xCta := DM1.cdsQry.FieldByName('CTAMN').AsString
      Else
      Begin
         xCpto := DM1.cdsQry.FieldByName('CPTOME').AsString;
         xCta := DM1.cdsQry.FieldByName('CTAME').AsString;
      End;
   End;

   DM1.cdsDetCxC2.Insert;
   DM1.cdsDetCxC2.FieldByName('TIPDET').Value := xTipDet;
   DM1.cdsDetCxC2.FieldByName('CCMTOORI').Value := xMonto;
   DM1.cdsDetCxC2.FieldByName('TREGID').Value := xTReg;
   DM1.cdsDetCxC2.FieldByName('CCDH').Value := xDH;
   DM1.cdsDetCxC2.FieldByName('TMONID').Value := DM1.cdsCCanje.FieldByName('TMONID').AsString;
   DM1.cdsDetCxC2.FieldByName('CPTOID').Value := xCpto;
   DM1.cdsDetCxC2.FieldByName('CUENTAID').Value := xCta;

   If DM1.cdsDetCxC2.FieldByName('TMONID').Value = DM1.wTMonLoc Then
   Begin
      DM1.cdsDetCxC2.FieldByName('CCMTOLOC').Value := DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      DM1.cdsDetCxC2.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat / DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End
   Else
   Begin
      DM1.cdsDetCxC2.FieldByName('CCMTOEXT').Value := DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;
      DM1.cdsDetCxC2.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat * DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 15, 2);
   End;

   If Length(DM1.cdsDetCxC2.FieldByName('CUENTAID').Value) > 0 Then
   Begin
      xWhere := 'CPTOID=' + '''' + DM1.cdsDetCxC2.FieldByName('CPTOID').Value + '''';
      DM1.cdsDetCxC2.FieldByName('CCGLOSA').Value := BuscaQry('dspTGE', 'CXP201', '*', xWhere, 'CPTODES')
   End;

   DM1.cdsDetCxC2.FieldByName('CIAID').Value := DM1.cdsMovCxC.FieldByName('CIAID').AsString;
   DM1.cdsDetCxC2.FieldByName('TDIARID').Value := DM1.cdsMovCxC.FieldByName('TDIARID').AsString;
   DM1.cdsDetCxC2.FieldByName('CCNOREG').Value := DM1.cdsMovCxC.FieldByName('CCNOREG').AsString;
   DM1.cdsDetCxC2.FieldByName('CCAAAA').Value := DM1.cdsCCanje.FieldByName('CJAA').AsString;
   DM1.cdsDetCxC2.FieldByName('CCANOMES').Value := DM1.cdsCCanje.FieldByName('CJAAMM').AsString;
   DM1.cdsDetCxC2.FieldByName('CLAUXID').Value := DM1.cdsCCanje.FieldByName('CLAUXID').AsString;
   DM1.cdsDetCxC2.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIEID').AsString;
   DM1.cdsDetCxC2.FieldByName('CLIERUC').Value := DM1.cdsCCanje.FieldByName('CLIERUC').AsString;
   DM1.cdsDetCxC2.FieldByName('DOCID').Value := DM1.cdsCCanje.FieldByName('DOCID').AsString;
//   DM1.cdsDetCxC2CCSerie.Value := dblcSerie.Text;
//   DM1.cdsDetCxC2CCNoDoc.Value := dbeNoDoc.Text;
   DM1.cdsDetCxC2.FieldByName('CCTCAMPR').Value := FRound(DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat, 7, 3);
   DM1.cdsDetCxC2.FieldByName('CCFEMIS').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').AsDateTime;
   DM1.cdsDetCxC2.FieldByName('CCFVCMTO').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').AsDateTime;
   DM1.cdsDetCxC2.FieldByName('CCFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').AsDateTime;
   DM1.cdsDetCxC2.FieldByName('CCESTADO').Value := 'I'; // Activo
   DM1.cdsDetCxC2.FieldByName('CCUSER').Value := DM1.wUsuario;
   DM1.cdsDetCxC2.FieldByName('CCFREG').Value := Date;
   DM1.cdsDetCxC2.FieldByName('CCHREG').Value := Time;
   DM1.cdsDetCxC2.FieldByName('CCMM').Value := DM1.cdsCCanje.FieldByName('CJMM').AsString;
   DM1.cdsDetCxC2.FieldByName('CCDD').Value := DM1.cdsCCanje.FieldByName('CJDD').AsString;
   DM1.cdsDetCxC2.FieldByName('CCTRI').Value := DM1.cdsCCanje.FieldByName('CJTRI').AsString;
   DM1.cdsDetCxC2.FieldByName('CCSEM').Value := DM1.cdsCCanje.FieldByName('CJSEM').AsString;
   DM1.cdsDetCxC2.FieldByName('CCSS').Value := DM1.cdsCCanje.FieldByName('CJSS').AsString;
   DM1.cdsDetCxC2.FieldByName('CCAATRI').Value := DM1.cdsCCanje.FieldByName('CJAATRI').AsString;
   DM1.cdsDetCxC2.FieldByName('CCAASEM').Value := DM1.cdsCCanje.FieldByName('CJAASEM').AsString;
   DM1.cdsDetCxC2.FieldByName('CCAASS').Value := DM1.cdsCCanje.FieldByName('CJAASS').AsString;
   DM1.cdsDetCxC2.Post;
End;

Procedure TFLetrasTerceros.pnlDatosEnter(Sender: TObject);
Var
   xxWhere: String;
Begin
   If Length(dbeletIni.Text) = 0 Then
   Begin
      xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'DOCID=' + '''' + dblcTDoc.Text + '''';
      DM1.cdsCCanje.FieldByName('CJLETINI').AsString := DM1.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   End;
End;

Procedure TFLetrasTerceros.dbeDiasExit(Sender: TObject);
Var
   xxWhere: String;
Begin
   If Length(dbeletIni.Text) = 0 Then
   Begin
      xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'DOCID=' + '''' + dblcTDoc.Text + '''';
      DM1.cdsCCanje.FieldByName('CJLETINI').AsString := DM1.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   End;
End;

Procedure TFLetrasTerceros.dbeNLetExit(Sender: TObject);
Var
   xxWhere: String;
Begin
   If Length(dbeletIni.Text) = 0 Then
   Begin
      xxWhere := 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
         + 'DOCID=' + '''' + dblcTDoc.Text + '''';
      DM1.cdsCCanje.FieldByName('CJLETINI').AsString := DM1.BuscaUltTGE('dspTGE', 'CXC301', 'CCNODOC', xxWhere);
   End;
End;

Procedure TFLetrasTerceros.dbeLetraExit(Sender: TObject);
Var
   xxRecno: Integer;
Begin
   If BuscaCxCLet(dblcCia.Text, dblcTDoc.Text, dbeLetra.Text) Then
   Begin
      dbeLetra.SetFocus;
      Raise Exception.Create('Número de Letra Existe');
   End;
   dbeLetra.Enabled := False;
   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');

   xxRecno := DM1.cdsLetras.RecNo;

   Filtracds(DM1.cdsLetras, 'Select * from CXC301 Where '
      + 'CIAID=' + '''' + dblcCia.Text + '''' + ' and '
      + 'TCANJEID=' + '''' + 'LC' + '''' + ' and '
      + 'CCCANJE=' + '''' + edtCanje.text + '''');
   DM1.cdsLetras.RecNo := xxRecno;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('TMONID').AsString := DM1.cdsCCanje.FieldByName('TMONID').AsString;
End;

Procedure TFLetrasTerceros.dbeImpExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat < 0 Then
   Begin
      dbeImp.SetFocus;
      Raise Exception.Create('Importe debe Ser >= a Cero');
   End;

   xTotal := DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DM1.cdsLetras.FieldByName('INTERES').AsFloat
      + DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat + DM1.cdsLetras.FieldByName('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetrasTerceros.dbeGasExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat < 0 Then
   Begin
      dbeGas.SetFocus;
      Raise Exception.Create('Gastos debe Ser >= a Cero');
   End;

   xTotal := DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DM1.cdsLetras.FieldByName('INTERES').AsFloat
      + DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat + DM1.cdsLetras.FieldByName('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetrasTerceros.dbeIGVExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DM1.cdsLetras.FieldByName('CCIGV').AsFloat < 0 Then
   Begin
      dbeIGV.SetFocus;
      Raise Exception.Create('I.G.V. debe Ser >= a Cero');
   End;

   xTotal := DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DM1.cdsLetras.FieldByName('INTERES').AsFloat
      + DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat + DM1.cdsLetras.FieldByName('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetrasTerceros.dbeIntExit(Sender: TObject);
Var
   xTotal: Double;
Begin
   If DM1.cdsLetras.FieldByName('INTERES').AsFloat < 0 Then
   Begin
      dbeInt.SetFocus;
      Raise Exception.Create('Interes debe ser >= a Cero');
   End;
   xTotal := DM1.cdsLetras.FieldByName('CCGRAVAD').AsFloat + DM1.cdsLetras.FieldByName('INTERES').AsFloat
      + DM1.cdsLetras.FieldByName('CCGASFIN').AsFloat + DM1.cdsLetras.FieldByName('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := FRound(xTotal, 15, 2);
End;

Procedure TFLetrasTerceros.bbtnContClick(Sender: TObject);
Var
   xRegAct: TBookMark;
Begin
   If Length(dbeComp.text) = 0 Then Raise exception.create('Falta Numero de Comprobante');

   If MessageDlg('Contabilizar Documento' + chr(13) + '    ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

   If Not NGeneraAsiento Then
   Begin
      pnlConta.Visible := False;
      Raise Exception.Create('Error:  Asiento No Terminado');
   End;

   DM1.AplicaDatos(DM1.cdsDetCxC, 'DetCxC');

   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.Eof Do
   Begin
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.FieldByName('CC_CONTA').AsString := 'S';
      DM1.cdsLetras.FieldByName('CCCMPRB').AsString := DM1.cdsCCanje.FieldByName('CCCMPRB').AsString;
      DM1.cdsLetras.Next;
   End;
   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.FieldByName('CJ_CONTA').AsString := 'S';
   DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
   DM1.AplicaDatos(DM1.cdsCCanje, 'CCanje');

   DM1.GeneraContabilidad(dblcCia.Text, dblcTDiario.Text, DM1.cdsCCanje.FieldByName('CJAAMM').AsString, DM1.cdsCCanje.FieldByName('CCCMPRB').AsString, Self);

   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;

   EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').Asstring);

   pnlConta.Visible := False;
   ShowMessage('Registro Contabilizado');
End;

Procedure TFLetrasTerceros.bbtnCanc2Click(Sender: TObject);
Begin
   EstadoDeForma(1, DM1.cdsCCanje.FieldByName('CJESTADO').AsString, DM1.cdsCCanje.FieldByName('CJ_CONTA').Asstring);
   pnlConta.Visible := False;
End;

Function TFLetrasTerceros.NGeneraAsiento: Boolean;
Begin
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';

   DM1.cdsDetCxC.First;
   While Not DM1.cdsDetCxC.Eof Do
      DM1.cdsDetCxC.Delete;

   //  Detalle Debe
   DM1.cdsCanjes.First;
   While Not DM1.cdsCanjes.Eof Do
   Begin
      NDetalleContable;
      DM1.cdsCanjes.Next;
   End;

   //  Total Haber
   xTotLoc := 0;
   xTotExt := 0;
   DM1.cdsLetras.First;
   While Not DM1.cdsLetras.eof Do
   Begin
      xTotLoc := xTotLoc + DM1.cdsLetras.FieldByName('CCMTOLOC').Value;
      xTotExt := xTotExt + DM1.cdsLetras.FieldByName('CCMTOEXT').Value;
      DM1.cdsLetras.Next;
   End;
   NContabilidadCanje;

   DM1.cdsCanjes.EnableControls;

   DM1.cdsCanjes.IndexFieldNames := 'CiaId;TCanjeID;CCCanje;TDiarID;CCAnoMM;CCNoReg';

   Result := True;
End;

Procedure TFLetrasTerceros.NContabilidadCanje;
Begin
   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('CIAID').Value := DM1.cdsCCanje.FieldByName('CIAID').AsString;
   DM1.cdsDetCxC.FieldByName('TCANJEID').Value := DM1.cdsCCanje.FieldByName('TCANJEID').Value;
   DM1.cdsDetCxC.FieldByName('CCCANJE').Value := DM1.cdsCCanje.FieldByName('CANJE').Value;
   DM1.cdsDetCxC.FieldByName('TDIARID').Value := DM1.cdsCCanje.FieldByName('TDIARID').Value;
   DM1.cdsDetCxC.FieldByName('CCNOREG').Value := DM1.cdsCCanje.FieldByName('CCCMPRB').Value;
   DM1.cdsDetCxC.FieldByName('CCCMPRB').Value := DM1.cdsCCanje.FieldByName('CCCMPRB').Value;
   DM1.cdsDetCxC.FieldByName('CCAAAA').Value := DM1.cdsCCanje.FieldByName('CJAA').Value;
   DM1.cdsDetCxC.FieldByName('CCANOMES').Value := DM1.cdsCCanje.FieldByName('CJAAMM').Value;
   DM1.cdsDetCxC.FieldByName('CPTOID').Value := DM1.cdsCCanje.FieldByName('CPTOID').AsString;
   DM1.cdsDetCxC.FieldByName('CUENTAID').value := DM1.cdsCCanje.FieldByName('CUENTAID').AsString;
   DM1.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
   DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIEID').Value;
   DM1.cdsDetCxC.FieldByName('CLIERUC').Value := DM1.cdsCCanje.FieldByName('CLIERUC').Value;
   DM1.cdsDetCxC.FieldByName('DOCID').Value := DM1.cdsCCanje.FieldByName('DOCID').Value;
   DM1.cdsDetCxC.FieldByName('CCSERIE').Value := '00000';
   DM1.cdsDetCxC.FieldByName('CCNODOC').Value := DM1.cdsCCanje.FieldByName('CANJE').Value;
   DM1.cdsDetCxC.FieldByName('CCGLOSA').Value := DM1.cdsCCanje.FieldByName('CJGLOSA').AsString;
   DM1.cdsDetCxC.FieldByName('CCDH').Value := 'D';
   DM1.cdsDetCxC.FieldByName('CCTCAMPR').Value := DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCTCAMPA').Value := DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DM1.cdsDetCxC.FieldByName('TMONID').Value := DM1.cdsCCanje.FieldByName('TMONID').AsString;
   If DM1.cdsCCanje.FieldByName('TMONID').AsString = dm1.wTMonExt Then
      DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := xTotExt
   Else
      DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := xTotLoc;

   DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := xTotLoc;
   DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := xTotExt;

   DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
   DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').Value;
   DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
   DM1.cdsDetCxC.FieldByName('TIPDET').Value := 'TO';
   DM1.cdsDetCxC.FieldByName('CCMM').Value := DM1.cdsCCanje.FieldByName('CJMM').Value;
   DM1.cdsDetCxC.FieldByName('CCDD').Value := DM1.cdsCCanje.FieldByName('CJDD').Value;
   DM1.cdsDetCxC.FieldByName('CCTRI').Value := DM1.cdsCCanje.FieldByName('CJTRI').Value;
   DM1.cdsDetCxC.FieldByName('CCSEM').Value := DM1.cdsCCanje.FieldByName('CJSEM').Value;
   DM1.cdsDetCxC.FieldByName('CCSS').Value := DM1.cdsCCanje.FieldByName('CJSS').Value;
   DM1.cdsDetCxC.FieldByName('CCAATRI').Value := DM1.cdsCCanje.FieldByName('CJAATRI').Value;
   DM1.cdsDetCxC.FieldByName('CCAASEM').Value := DM1.cdsCCanje.FieldByName('CJAASEM').Value;
   DM1.cdsDetCxC.FieldByName('CCAASS').Value := DM1.cdsCCanje.FieldByName('CJAASS').Value;
   DetCxCUsuario; // Graba Usuario, Fecha y Hora
End;

Procedure TFLetrasTerceros.NDetalleContable;
Begin

   NGeneraDiferenciaCambio;

   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('CIAID').Value := DM1.cdsCCanje.FieldByName('CIAID').AsString;
   DM1.cdsDetCxC.FieldByName('TCANJEID').Value := DM1.cdsCCanje.FieldByName('TCANJEID').AsString;
   DM1.cdsDetCxC.FieldByName('CCCANJE').Value := DM1.cdsCCanje.FieldByName('CANJE').AsString;
   DM1.cdsDetCxC.FieldByName('TDIARID').Value := DM1.cdsCCanje.FieldByName('TDIARID').AsString;
   DM1.cdsDetCxC.FieldByName('CCNOREG').Value := DM1.cdsCCanje.FieldByName('CCCMPRB').AsString;
   DM1.cdsDetCxC.FieldByName('CCCMPRB').Value := DM1.cdsCCanje.FieldByName('CCCMPRB').AsString;
   DM1.cdsDetCxC.FieldByName('CCANOMES').Value := DM1.cdsCCanje.FieldByName('CJAAMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCAAAA').Value := DM1.cdsCCanje.FieldByName('CJAA').AsString;
   DM1.cdsDetCxC.FieldByName('CUENTAID').value := DM1.cdsCanjes.FieldByName('CTATOTAL').Value;
   DM1.cdsDetCxC.FieldByName('CPTOID').value := DM1.cdsCanjes.FieldByName('CPTOTOT').Value;
   DM1.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
   DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCanjes.FieldByName('CLIEID').Value;
   DM1.cdsDetCxC.FieldByName('CLIERUC').Value := DM1.cdsCanjes.FieldByName('CLIERUC').Value;
   DM1.cdsDetCxC.FieldByName('DOCID').Value := DM1.cdsCanjes.FieldByName('DOCID').Value;
   DM1.cdsDetCxC.FieldByName('CCSERIE').Value := DM1.cdsCanjes.FieldByName('CCSERIE').Value;
   DM1.cdsDetCxC.FieldByName('CCNODOC').Value := DM1.cdsCanjes.FieldByName('CCNODOC').Value;
   DM1.cdsDetCxC.FieldByName('CCGLOSA').Value := DM1.cdsCCanje.FieldByName('CJGLOSA').AsString;
   DM1.cdsDetCxC.FieldByName('CCDH').Value := 'H';
   DM1.cdsDetCxC.FieldByName('CCTCAMPR').Value := DM1.cdsCanjes.FieldByName('CCTCAMCJE').Value;
   DM1.cdsDetCxC.FieldByName('CCTCAMPA').Value := DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
   DM1.cdsDetCxC.FieldByName('TMONID').Value := DM1.cdsCanjes.FieldByName('TMONID').Value;
   If DM1.cdsCanjes.FieldByName('TMONID').Value = dm1.wTMonExt Then
      DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := DM1.cdsCanjes.FieldByName('CCMTOEXT').Value
   Else
   Begin
      DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := DM1.cdsCanjes.FieldByName('CCMTOLOC').Value;
   End;
   DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := FRound(DM1.cdsCanjes.FieldByName('CCMTOLOC').Value + xDifCLoc, 15, 2);
   DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').Value + xDifCExt, 15, 2);
   DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsCanjes.FieldByName('CCFEMIS').Value;
   DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsCanjes.FieldByName('CCFVCMTO').Value;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := dtpFComp.Date;
   DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
   DM1.cdsDetCxC.FieldByName('CCMM').Value := DM1.cdsCCanje.FieldByName('CJMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCDD').Value := DM1.cdsCCanje.FieldByName('CJDD').Value;
   DM1.cdsDetCxC.FieldByName('CCTRI').Value := DM1.cdsCCanje.FieldByName('CJTRI').Value;
   DM1.cdsDetCxC.FieldByName('CCSEM').Value := DM1.cdsCCanje.FieldByName('CJSEM').Value;
   DM1.cdsDetCxC.FieldByName('CCSS').Value := DM1.cdsCCanje.FieldByName('CJSS').Value;
   DM1.cdsDetCxC.FieldByName('CCAATRI').Value := DM1.cdsCCanje.FieldByName('CJAATRI').Value;
   DM1.cdsDetCxC.FieldByName('CCAASEM').Value := DM1.cdsCCanje.FieldByName('CJAASEM').Value;
   DM1.cdsDetCxC.FieldByName('CCAASS').Value := DM1.cdsCCanje.FieldByName('CJAASS').Value;
   DetCxCUsuario; // Graba Usuario, Fecha y Hora

   NGrabaDiferenciaCambio;
End;

Procedure TFLetrasTerceros.NGeneraDiferenciaCambio;
Begin
   xDifCLoc := 0;
   xDifCExt := 0;
   If DM1.cdsCanjes.FieldByName('TMONID').Value = dm1.wTMonExt Then
   Begin
      xPagAnt := FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').Value * DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
      If DM1.cdsCanjes.FieldByName('CCMTOLOC').Value > xPagAnt Then
      Begin
         xDifCam := FRound(DM1.cdsCanjes.FieldByName('CCMTOLOC').Value - xPagAnt, 15, 2);
         xDifCLoc := FRound((-1) * (DM1.cdsCanjes.FieldByName('CCMTOLOC').Value - xPagAnt), 15, 2);
         xCtaDif := DM1.wDifAjuG;
         xCptoDif := DM1.wCptoAjG;
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH := 'H'
      End
      Else
      Begin
         xDifCam := FRound(xPagAnt - DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
         xDifCLoc := FRound(xPagAnt - DM1.cdsCanjes.FieldByName('CCMTOLOC').Value, 15, 2);
         xCtaDif := DM1.wDifAjuP;
         xCptoDif := DM1.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End;
   End
   Else
   Begin
      xPagAnt := FRound(DM1.cdsCanjes.FieldByName('CCMTOLOC').Value / DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value, 15, 2);
      If DM1.cdsCanjes.FieldByName('CCMTOEXT').Value > xPagAnt Then
      Begin
         xDifCam := FRound(DM1.cdsCanjes.FieldByName('CCMTOEXT').Value - xPagAnt, 15, 2);
         xDifCExt := FRound((-1) * (DM1.cdsCanjes.FieldByName('CCMTOEXT').Value - xPagAnt), 15, 2);
         xGloDif := 'Ganancia - Ajuste por Diferencia de Cambio';
         xCtaDif := DM1.wDifAjuG;
         xCptoDif := DM1.wCptoAjG;
         xDH := 'H'
      End
      Else
      Begin
         xDifCam := xPagAnt - DM1.cdsCanjes.FieldByName('CCMTOEXT').Value;
         xDifCExt := xPagAnt - DM1.cdsCanjes.FieldByName('CCMTOEXT').Value;
         xCtaDif := DM1.wDifAjuP;
         xCptoDif := DM1.wCptoAjP;
         xGloDif := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH := 'D'
      End;
   End;
End;

Procedure TFLetrasTerceros.NGrabaDiferenciaCambio;
Begin
   If xDifCam > 0 Then
   Begin
      DM1.cdsDetCxC.Insert;
      DM1.cdsDetCxC.FieldByName('CIAID').Value := DM1.cdsCCanje.FieldByName('CIAID').Value;
      DM1.cdsDetCxC.FieldByName('TCANJEID').Value := DM1.cdsCCanje.FieldByName('TCANJEID').Value;
      DM1.cdsDetCxC.FieldByName('CCCANJE').Value := DM1.cdsCCanje.FieldByName('CANJE').Value;
      DM1.cdsDetCxC.FieldByName('TDIARID').Value := DM1.cdsCCanje.FieldByName('TDIARID').Value;
      DM1.cdsDetCxC.FieldByName('CCNOREG').Value := DM1.cdsCCanje.FieldByName('CCCMPRB').Value;
      DM1.cdsDetCxC.FieldByName('CCCMPRB').Value := DM1.cdsCCanje.FieldByName('CCCMPRB').Value;
      DM1.cdsDetCxC.FieldByName('CCANOMES').Value := DM1.cdsCCanje.FieldByName('CJAAMM').Value;
      DM1.cdsDetCxC.FieldByName('CCAAAA').Value := DM1.cdsCCanje.FieldByName('CJAA').Value;
      DM1.cdsDetCxC.FieldByName('CUENTAID').value := xCtaDif;
      DM1.cdsDetCxC.FieldByName('CPTOID').value := xCptoDif;
      DM1.cdsDetCxC.FieldByName('CLAUXID').Value := dblcClAux.Text;
      DM1.cdsDetCxC.FieldByName('CLIEID').Value := DM1.cdsCCanje.FieldByName('CLIEID').Value;
      DM1.cdsDetCxC.FieldByName('CLIERUC').Value := DM1.cdsCCanje.FieldByName('CLIERUC').Value;
      DM1.cdsDetCxC.FieldByName('DOCID').Value := DM1.cdsCanjes.FieldByName('DOCID').Value;
      DM1.cdsDetCxC.FieldByName('CCSERIE').Value := DM1.cdsCanjes.FieldByName('CCSERIE').Value;
      DM1.cdsDetCxC.FieldByName('CCNODOC').Value := DM1.cdsCanjes.FieldByName('CCNODOC').Value;
      DM1.cdsDetCxC.FieldByName('CCGLOSA').Value := xGloDif;
      DM1.cdsDetCxC.FieldByName('CCDH').Value := xDH;
      DM1.cdsDetCxC.FieldByName('CCTCAMPR').Value := DM1.cdsCanjes.FieldByName('CCTCAMDOC').Value;
      DM1.cdsDetCxC.FieldByName('CCTCAMPA').Value := DM1.cdsCCanje.FieldByName('CJTCAMBIO').AsFloat;
      //
      If DM1.cdsCanjes.FieldByName('TMONID').Value = dm1.wTMonExt Then
      Begin
         DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := FRound(xDifCam, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := FRound(xDifCam, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := 0;
      End
      Else
      Begin
         DM1.cdsDetCxC.FieldByName('CCMTOORI').Value := FRound(xDifCam, 15, 2);
         DM1.cdsDetCxC.FieldByName('CCMTOLOC').Value := 0;
         DM1.cdsDetCxC.FieldByName('CCMTOEXT').Value := FRound(xDifCam, 15, 2);
      End;
      //
      DM1.cdsDetCxC.FieldByName('CCFEMIS').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
      DM1.cdsDetCxC.FieldByName('CCFVCMTO').Value := DM1.cdsCCanje.FieldByName('CJFCANJE').Value;
      DM1.cdsDetCxC.FieldByName('CCFCOMP').Value := DM1.cdsCCanje.FieldByName('CJFCOMP').Value;
      DM1.cdsDetCxC.FieldByName('CCESTADO').Value := 'P';
      DM1.cdsDetCxC.FieldByName('TMONID').Value := DM1.cdsCCanje.FieldByName('TMONID').AsString;
      DM1.cdsDetCxC.FieldByName('CCMM').Value := DM1.cdsCCanje.FieldByName('CJMM').Value;
      DM1.cdsDetCxC.FieldByName('CCDD').Value := DM1.cdsCCanje.FieldByName('CJDD').Value;
      DM1.cdsDetCxC.FieldByName('CCTRI').Value := DM1.cdsCCanje.FieldByName('CJTRI').Value;
      DM1.cdsDetCxC.FieldByName('CCSEM').Value := DM1.cdsCCanje.FieldByName('CJSEM').Value;
      DM1.cdsDetCxC.FieldByName('CCSS').Value := DM1.cdsCCanje.FieldByName('CJSS').Value;
      DM1.cdsDetCxC.FieldByName('CCAATRI').Value := DM1.cdsCCanje.FieldByName('CJAATRI').Value;
      DM1.cdsDetCxC.FieldByName('CCAASEM').Value := DM1.cdsCCanje.FieldByName('CJAASEM').Value;
      DM1.cdsDetCxC.FieldByName('CCAASS').Value := DM1.cdsCCanje.FieldByName('CJAASS').Value;
      DM1.cdsDetCxC.FieldByName('CCFREG').Value := Date;
      DM1.cdsDetCxC.FieldByName('CCHREG').Value := Time;
      DM1.cdsDetCxC.FieldByName('CCUSER').Value := DM1.wUsuario;
   End;
End;

Procedure TFLetrasTerceros.ppHeaderBand1BeforePrint(Sender: TObject);
Begin
   pplCia.Caption := edtCia.Text;
   pplMon.Caption := edtTMon.Text;
   pplClie.Caption := edtClie.Text;
End;

Procedure TFLetrasTerceros.ppVariable1Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'DocId=' + '''' + DM1.cdsCanjes.FieldByName('DOCID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE110', '*', xWhere, 'DocDes');
End;

Procedure TFLetrasTerceros.ppVariable2Calc(Sender: TObject; Var Value: Variant);
Var
   xWhere: String;
Begin
   xWhere := 'TMonId=' + '''' + DM1.cdsCanjes.FieldByName('TMONID').AsString + '''';
   Value := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonAbr');
End;

Procedure TFLetrasTerceros.ppDetailBand4BeforePrint(Sender: TObject);
Begin
   pplLetras.Caption := StrNum(DM1.cdsLetras.FieldByName('CCMTOORI').Value);
   pplCia2.Caption := edtCia.Text;
   pplClie2.Caption := edtClie.Text;
   pplClie3.Caption := edtClie.Text;
//   pplMon2.Caption :=edtTMon.Text;
End;

Procedure TFLetrasTerceros.bbtnImpLetClick(Sender: TObject);
Var
   xRegAct: TBookMark;
   sSIT, xWhere: String;
Begin
   If Not VerificaTotal Then Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');

   xFlagP := False;

   pprLetras.Print;

   If xFlagP Then
   Begin
      DM1.cdsLetras.DisableControls;
      xRegAct := DM1.cdsLetras.GetBookmark;
      DM1.cdsLetras.First;

      xWhere := 'SITUAFLAG=''2''';
      sSIT := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

      While Not DM1.cdsLetras.eof Do
      Begin

         DM1.cdsLetras.Edit;
         If CambioSituacion(DM1.cdsLetras.FieldByName('SITID').AsString, sSIT) Then
         Begin
            SetHyst(dblcCia.Text, dblcTDoc.Text, DM1.cdsLetras.FieldByName('CCNODOC').AsString);
            DM1.cdsLetras.FieldByName('UBIID').AsString := '';
            DM1.cdsLetras.FieldByName('SITID').AsString := sSIT;
            DM1.cdsLetras.FieldByName('CCFSITUA').Value := Date;
         End;
         DM1.cdsLetras.FieldByName('CCESTADO').Value := 'I';
         DM1.cdsLetras.FieldByName('CCUSER').Value := DM1.wUsuario;
         DM1.cdsLetras.FieldByName('CCFREG').Value := date;
         DM1.cdsLetras.FieldByName('CCHREG').Value := Time;
         DM1.cdsLetras.Next;
      End;
      DM1.AplicaDatos(DM1.cdsLetras, 'Letras');
      DM1.cdsLetras.GotoBookmark(xRegAct);
      DM1.cdsLetras.FreeBookmark(xRegAct);
      DM1.cdsLetras.EnableControls;
   End;
End;

Procedure TFLetrasTerceros.pprLetrasPrintingComplete(Sender: TObject);
Begin
   xFlagP := True;
End;

Procedure TFLetrasTerceros.dtpFVcmtoExit(Sender: TObject);
Begin
   If dtpFVcmto.Date <= dtpFValor.Date Then
   Begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Fecha de Vencimiento debe Ser Mayor a ' + DateToStr(dtpFValor.Date));
   End;
End;

Procedure TFLetrasTerceros.bbtnImpCanjeClick(Sender: TObject);
Begin
   pprCanje.Print
End;

End.

