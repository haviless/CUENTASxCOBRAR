Unit CxC200;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CxC200
// Formulario           :   FMaesClie
// Fecha de Creación    :
// Autor                :   Equipo de Desarrollo
// Objetivo             :   Mantenimiento de Clientes.
//
// Actualizaciones      :
// HPC_201205_CXC  31/10/2012  Modificación del tipo de documento de identidad
//                             en el maestro de Clientes.

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, ComCtrls, Mask, wwdbedit, wwdblook, DBCtrls, Grids,
   Wwdbigrd, Wwdbgrid, Buttons, DB, wwdbdatetimepicker, Wwdbdlg, Wwdatsrc,
   wwClient, oaVariables, wwcheckbox;

Type
   TFMaesClie = Class(TForm)
      pnlPrincipal: TPanel;
      Panel1: TPanel;
      pcMaestro: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      Panel3: TPanel;
      Label4: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      dbeTelef: TwwDBEdit;
      dbeFax: TwwDBEdit;
      dbeMail: TwwDBEdit;
      Panel5: TPanel;
      pnlCab: TPanel;
      Label46: TLabel;
      dblcClAux: TwwDBLookupCombo;
      dbeClAux: TwwDBEdit;
      dbeClie: TwwDBEdit;
      Label25: TLabel;
      Label17: TLabel;
      dblcTipPer: TwwDBLookupCombo;
      dbeTipPer: TwwDBEdit;
      Label47: TLabel;
      dblcCia: TwwDBLookupCombo;
      dbeCia: TwwDBEdit;
      tsDireccion: TTabSheet;
      pnlDireccion: TPanel;
      Label11: TLabel;
      dbeDirCom: TwwDBEdit;
      Label12: TLabel;
      dbeDirLeg: TwwDBEdit;
      Label29: TLabel;
      dblcPais: TwwDBLookupCombo;
      dbePais: TwwDBEdit;
      Label21: TLabel;
      dblcDeparta: TwwDBLookupCombo;
      dbeDeparta: TwwDBEdit;
      Label22: TLabel;
      dbeProvinc: TwwDBEdit;
      Label23: TLabel;
      dbeDistrito: TwwDBEdit;
      TabSheet4: TTabSheet;
      Panel4: TPanel;
      Label5: TLabel;
      dblcVende: TwwDBLookupCombo;
      dbeVende: TwwDBEdit;
      Label3: TLabel;
      dbeContac: TwwDBEdit;
      Label9: TLabel;
      dblcConPago: TwwDBLookupCombo;
      dbeCondPago: TwwDBEdit;
      Label20: TLabel;
      dbeCapSoc: TwwDBEdit;
      Label18: TLabel;
      dblcSecEco: TwwDBLookupCombo;
      dbeSecEco: TwwDBEdit;
      Label16: TLabel;
      dbeCIUU: TwwDBEdit;
      Label1: TLabel;
      dbeGarantias: TwwDBEdit;
      lblNombreCorto: TLabel;
      dbeAbr: TwwDBEdit;
      lblDocIdentidad: TLabel;
      dbeDocIdentidad: TwwDBEdit;
      pnlPie: TPanel;
      Z2bbtnOK: TBitBtn;
      Z2bbtnCancel: TBitBtn;
      Z2bbtnNuevo: TBitBtn;
      tsDireccionEntrega: TTabSheet;
      pnlLEntrega: TPanel;
      Label50: TLabel;
      Label51: TLabel;
      lblRuc: TLabel;
      dbeRuc: TwwDBEdit;
      lblRazonSocial: TLabel;
      dbeRazSoc: TwwDBEdit;
      lblGrupo: TLabel;
      Label28: TLabel;
      dbeGirador: TwwDBEdit;
      Label30: TLabel;
      dbeRepres: TwwDBEdit;
      Label19: TLabel;
      dblcVinculo: TwwDBLookupCombo;
      dbeVinculo: TwwDBEdit;
      Label6: TLabel;
      dblcGiro: TwwDBLookupCombo;
      dbeGiro: TwwDBEdit;
      Label2: TLabel;
      dblcClasif: TwwDBLookupCombo;
      dbeClasif: TwwDBEdit;
      edtSecNta: TEdit;
      edtZonNta: TEdit;
      dblcSecVta: TwwDBLookupCombo;
      dblcdGrupo: TwwDBLookupComboDlg;
      Label24: TLabel;
      pnlBienes: TPanel;
      Label40: TLabel;
      Label41: TLabel;
      Label42: TLabel;
      Label43: TLabel;
      Label44: TLabel;
      Label45: TLabel;
      dbeBien: TwwDBEdit;
      dbeDescripcion: TwwDBEdit;
      dblcTipoBien: TwwDBLookupCombo;
      dbeTipoBien: TwwDBEdit;
      dbeValorMiembro: TwwDBEdit;
      dbmDetalleBien: TDBMemo;
      Z2bbtnOK3: TBitBtn;
      Z2bbtnCancel3: TBitBtn;
      pnlMiembros: TPanel;
      Label31: TLabel;
      Label33: TLabel;
      Label34: TLabel;
      Label35: TLabel;
      Label36: TLabel;
      Label37: TLabel;
      Label38: TLabel;
      Label39: TLabel;
      dbeMiembro: TwwDBEdit;
      dbeNombre: TwwDBEdit;
      dblcOcupac: TwwDBLookupCombo;
      dbeOcupac: TwwDBEdit;
      dbeSueldo: TwwDBEdit;
      dbeDomicMiembro: TwwDBEdit;
      dbeTelfMiembro: TwwDBEdit;
      Z2bbtnCancel2: TBitBtn;
      Z2bbtnOK2: TBitBtn;
      dtpFecNacMiembro: TwwDBDateTimePicker;
      dbgMiembros: TwwDBGrid;
      wwDBGrid2IButton: TwwIButton;
      Label32: TLabel;
      dbgBienes: TwwDBGrid;
      wwDBGrid1IButton: TwwIButton;
      tsLineaCredito: TTabSheet;
      Panel6: TPanel;
      dbgLineaCredito: TwwDBGrid;
      ibInsertaLineaCredito: TwwIButton;
      pnlLineaCredito: TPanel;
      Label15: TLabel;
      Z2bbtnOKLC: TBitBtn;
      Z2bbtnCancelLC: TBitBtn;
      Label54: TLabel;
      dbeLineaCreditoMax: TwwDBEdit;
      Label55: TLabel;
      dbdtpUltFecha: TwwDBDateTimePicker;
      Label56: TLabel;
      dbeLineaCreditoMin: TwwDBEdit;
      Label57: TLabel;
      dblcTMonid: TwwDBLookupCombo;
      edtTMonId: TEdit;
      dblcdDistrito: TwwDBLookupComboDlg;
      dblcdProvinc: TwwDBLookupComboDlg;
      Label49: TLabel;
      dblcMoneda: TwwDBLookupCombo;
      edtMoneda: TEdit;
      Label7: TLabel;
      dbeCredMax: TwwDBEdit;
      dbeCredMin: TwwDBEdit;
      Label8: TLabel;
      Label53: TLabel;
      dblcLPrecio: TwwDBLookupCombo;
      edtLPrecio: TEdit;
      dbgLugarEntrega: TwwDBGrid;
      ibLugarEntrega: TwwIButton;
      dblcZonVta: TwwDBLookupComboDlg;
      dblcCIUU: TwwDBLookupComboDlg;
      dblcSituacion: TwwDBLookupCombo;
      dbeSitClie: TwwDBEdit;
      Label63: TLabel;
      Label64: TLabel;
      dbeAvalNomb: TwwDBEdit;
      Label65: TLabel;
      Label66: TLabel;
      Label67: TLabel;
      Label68: TLabel;
      dbeAvalDir: TwwDBEdit;
      dbeAvalDoc: TwwDBEdit;
      dbeAvalTelf: TwwDBEdit;
      TabSheet3: TTabSheet;
      Panel7: TPanel;
      Label69: TLabel;
      dbeComentario: TwwDBEdit;
      lblNombre: TLabel;
      dbeNombres: TwwDBEdit;
      lblNombre2: TLabel;
      dbesNombres: TwwDBEdit;
      lblApPaterno: TLabel;
      dbeapepat: TwwDBEdit;
      lblApMaterno: TLabel;
      dbeapemat: TwwDBEdit;
      pnlLugarEntrega: TPanel;
      Label58: TLabel;
      Label59: TLabel;
      Label60: TLabel;
      Label61: TLabel;
      Label62: TLabel;
      dbeIdDireccionEntrega: TwwDBEdit;
      dbeDirecionEntrega: TwwDBEdit;
      edtZonaLE: TEdit;
      dblcdDistritoLE: TwwDBLookupComboDlg;
      edtDistritoLE: TwwDBEdit;
      Z2bbtnOKLE: TBitBtn;
      Z2bbtnCancelLE: TBitBtn;
      dblcZonaLE: TwwDBLookupComboDlg;
      cbActivo: TwwCheckBox;
      dblcTDocIdentidad: TwwDBLookupCombo;
      edtTDocIdentidad: TwwDBEdit;
      lblTDocIdentidad: TLabel;
      Procedure wwDBGrid2IButtonClick(Sender: TObject);
      Procedure dbgMiembrosDblClick(Sender: TObject);
      Procedure Z2bbtnCancel2Click(Sender: TObject);
      Procedure Z2bbtnOK2Click(Sender: TObject);
      Procedure Regresa2;
      Procedure Regresa3;
      Procedure Regresa4;
      Procedure Regresa5;
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure Z2bbtnCancel3Click(Sender: TObject);
      Procedure Z2bbtnOK3Click(Sender: TObject);
      Procedure wwDBGrid1IButtonClick(Sender: TObject);
      Procedure dbgBienesDblClick(Sender: TObject);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure Z2bbtnOKClick(Sender: TObject);
      Procedure dblcOcupacChange(Sender: TObject);
      Procedure dblcOcupacExit(Sender: TObject);
      Procedure dblcTipoBienExit(Sender: TObject);
      Procedure dbeMiembroExit(Sender: TObject);
      Procedure dbeBienExit(Sender: TObject);
      Procedure dbeClieExit(Sender: TObject);
      Procedure dblcClAuxExit(Sender: TObject);
      Procedure dblcTipPerExit(Sender: TObject);
      Procedure dblcGiroExit(Sender: TObject);
      Procedure dblcClasifExit(Sender: TObject);
      Procedure dblcVinculoExit(Sender: TObject);
      Procedure dblcConPagoExit(Sender: TObject);
      Procedure dbgMiembrosKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgBienesKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dblcCiaExit(Sender: TObject);
      Procedure dblcPaisExit(Sender: TObject);
      Procedure dblcDepartaExit(Sender: TObject);
      Procedure dblcVendeExit(Sender: TObject);
      Procedure dblcSecEcoExit(Sender: TObject);
      Procedure Z2bbtnNuevoClick(Sender: TObject);
      Procedure dblcMonedaExit(Sender: TObject);
      Procedure dblcLPrecioExit(Sender: TObject);
      Procedure dblcSecVtaExit(Sender: TObject);
      Procedure dbeRazSocExit(Sender: TObject);
      Procedure ibInsertaLineaCreditoClick(Sender: TObject);
      Procedure Z2bbtnOKLCClick(Sender: TObject);
      Procedure Z2bbtnCancelLCClick(Sender: TObject);
      Procedure dbgLineaCreditoDblClick(Sender: TObject);
      Procedure dbgLineaCreditoKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbdtpUltFechaEnter(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcTMonidExit(Sender: TObject);
      Procedure dblcdDistritoExit(Sender: TObject);
      Procedure dblcdProvincExit(Sender: TObject);
      Procedure ibLugarEntregaClick(Sender: TObject);
      Procedure dblcdDistritoLEExit(Sender: TObject);
      Procedure dbgLugarEntregaKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgLugarEntregaDblClick(Sender: TObject);
      Procedure Z2bbtnOKLEClick(Sender: TObject);
      Procedure Z2bbtnCancelLEClick(Sender: TObject);
      Procedure dbeRucExit(Sender: TObject);
      Procedure dblcZonVtaExit(Sender: TObject);
      Procedure dblcCIUUExit(Sender: TObject);
      Procedure dblcZonaLEExit(Sender: TObject);
      Procedure dblcSituacionExit(Sender: TObject);
      Procedure dbeNombresExit(Sender: TObject);
      Procedure dbesNombresExit(Sender: TObject);
      Procedure dbeapepatExit(Sender: TObject);
      Procedure dbeapematExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure pcMaestroChanging(Sender: TObject; Var AllowChange: Boolean);
      Procedure dbeDocIdentidadExit(Sender: TObject);
      Procedure dblcTDocIdentidadExit(Sender: TObject);
   Private
    { Private declarations }
      wModif: String;
      sPerNat: String;
      xCliedes: String;
      Procedure LimpiaEdits;
      Function ValidaCliente: Boolean;
      Function ExisteDuplicado: Boolean;
      Procedure RegistroNuevo;
      Procedure ActualizaClieDes;
      Procedure CargaDataSource;
   //HPC_201205_CXC
      Function fg_ObtieneCodCliente: String;
      Procedure fg_HabilitaTipoPersona(wgTipoPersona: String);
      Procedure fg_DefaultCampos(wgTipoPersona: String);
      Function fg_ValidaDocIdentidad(wgTipoDoc: String): Boolean;
   //FIN HPC_201205_CXC
   Public
    { Public declarations }
   End;

Var
   FMaesClie: TFMaesClie;
   xErrorValida: boolean;

Implementation

{$R *.DFM}

Uses CxCDM, oaCC2000;

Procedure TFMaesClie.RegistroNuevo;
Var
   xSql: String;
Begin
  //INICIO HPC_201205_CXC
  //dbeClie.Enabled := True;
  //FIN HPC_201205_CXC
   dbeCia.Text := '';
   dbePais.Text := '';
   dbeDeparta.Text := '';
   dbeProvinc.Text := '';
   dbeDistrito.Text := '';
   dbeVende.Text := '';
   dbeCondPago.Text := '';
   dbeTipPer.Text := '';
   dbeGiro.Text := '';
   dbeClasif.Text := '';
   dbeVinculo.Text := '';
   dbeSecEco.Text := '';
   dbeCIUU.Text := '';
   dbeClaux.Text := '';

   DMCXC.cdsClie.Insert;
   DMCXC.cdsClie.FieldByName('ACTIVO').AsString := 'S';
   DMCXC.cdsClieComent.Close;
   DMCXC.cdsClieComent.DataRequest('SELECT * FROM TGE218 WHERE CLIEID=''XXX'' ');
   DMCXC.cdsClieComent.Open;
   DMCXC.cdsClieComent.Insert;
   wModif := 'N';

  // Sector Comercial  TVTAID (Lima, Provincia)        DMCXC.cdsZona
   If DMCXC.cdsZona.recordcount = 1 Then
   Begin
      DMCXC.cdsClie.FieldByName('TVTAID').AsString := DMCXC.cdsZona.FieldByName('TVTAID').AsString;
      edtSecNta.Text := DMCXC.DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcSecVta.text);
      DMCXC.cdsZona1.Filter := 'TVTAID=' + QuotedStr(dblcSecVta.Text);
      DMCXC.cdsZona1.Filtered := True;
   End;
// Zona de Venta     ZONVTAID (Distrito)             DMCXC.cdsZona1
   If DMCXC.cdsZona1.recordcount = 1 Then
   Begin
      DMCXC.cdsClie.FieldByName('ZONVTAID').AsString := DMCXC.cdsZona1.FieldByName('ZVTAID').AsString;
      edtZonNta.Text := DMCXC.DisplayDescrip('FAC106', 'ZVTADES', 'ZVTAID', dblcZonVta.text);
   End;
// Vendedor          VEID                            DMCXC.cdsVende
   If DMCXC.cdsVende.recordcount = 1 Then
   Begin
      DMCXC.cdsClie.FieldByName('VEID').AsString := DMCXC.cdsVende.FieldByName('VEID').AsString;
      dbeVende.Text := DMCXC.BuscaQry('dspTGE', 'CXC203', '*', 'VEID = ' + QuotedStr(dblcVende.Text), 'VENOMBRES');
   End;

   xSQL := 'Select * From CXC403 Where CLIEID=' + QuotedStr('PQRSTU');
   DMCXC.cdsLineaCredito.Close;
   DMCXC.cdsLineaCredito.DataRequest(xSQL);
   DMCXC.cdsLineaCredito.Open;
   DMCXC.cdsLineaCredito.IndexFieldNames := 'CIAID;CLIEID;ULTFECHA';

  //INICIO HPC_201205_CXC
  //dblcClAux.Enabled:=True;
  //FIN HPC_201205_CXC

   xSQL := 'Select * From FAC110 Where CLIEID=' + QuotedStr('FMZC');
   DMCXC.cdsDireccion.Close;
   DMCXC.cdsDireccion.DataRequest(xSQL);
   DMCXC.cdsDireccion.Open;

   xSQL := 'Select * From TGE210 Where CLIEID=' + '''' + ' ' + '''';
   DMCXC.cdsMiemEmpre.Close;
   DMCXC.cdsMiemEmpre.DataRequest(xSQL);
   DMCXC.cdsMiemEmpre.Open;

   xSQL := 'Select * From TGE211 Where CLIEID=' + '''' + ' ' + '''';
   DMCXC.cdsBienes.Close;
   DMCXC.cdsBienes.DataRequest(xSQL);
   DMCXC.cdsBienes.Open;
   dblcCia.SetFocus;
End;

Procedure TFMaesClie.wwDBGrid2IButtonClick(Sender: TObject);
Begin
   If (DMCXC.wModo = 'A') And (length(dbeClie.Text) = 0) Then
      Raise Exception.Create(' Cliente no Registrado ');

   pnlCab.Enabled := False;
   pnlPie.Enabled := False;
   dbgMiembros.Enabled := False;
   dbgBienes.Enabled := False;
   pnlMiembros.Visible := True;

   DMCXC.cdsMiemEmpre.Insert;
   DMCXC.cdsMiemEmpre.FieldByName('CLIEID').AsString := dbeClie.Text;

   dbeMiembro.Text := '';
   dbeMiembro.Setfocus;
End;

Procedure TFMaesClie.dbgMiembrosDblClick(Sender: TObject);
Begin
   If DMCXC.cdsMiemEmpre.RecordCount = 0 Then Exit;

   pnlMiembros.Visible := True;
   pnlMiembros.SetFocus;
   dbgMiembros.Enabled := False;

   dbeMiembro.Enabled := False;
   DMCXC.cdsMiemEmpre.Edit;
End;

Procedure TFMaesClie.Z2bbtnCancel2Click(Sender: TObject);
Begin
   If DMCXC.cdsMiemEmpre.State = dsInsert Then DMCXC.cdsMiemEmpre.Delete;
   Regresa2;
End;

Procedure TFMaesClie.Z2bbtnOK2Click(Sender: TObject);
Var
   xWhere, xMiembro: String;
Begin
   xWhere := 'CLIEID=' + '''' + dbeClie.Text + '''' + ' AND MIEMID = ' + '''' + dbeMiembro.Text + '''';
   xMiembro := DMCXC.BuscaQry('dspTGE', 'TGE210', '*', xWhere, 'MIEMID');
   If (DMCXC.wModo = 'A') And (xMiembro = dbeMiembro.Text) Then
      Raise Exception.Create(' Miembro ya Registrado ');

   If length(dbeNombre.Text) = 0 Then
      Raise Exception.Create(' Nombre no Registrado ');

   Screen.Cursor := crHourGlass;

   DMCXC.cdsPost(DMCXC.cdsMiemEmpre);

   DMCXC.AplicaDatos(DMCXC.cdsMiemEmpre, 'MIEMEMPRE');

   Regresa2;

   Screen.Cursor := crDefault;
End;

Procedure TFMaesClie.Regresa2;
Begin
   pnlCab.Enabled := True;
   pnlPie.Enabled := True;
   dbgMiembros.Enabled := True;
   pnlMiembros.Visible := False;
   dbeMiembro.Enabled := True;
   dbgMiembros.Setfocus;
End;

Procedure TFMaesClie.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   If (DMCXC.cdsLineaCredito.Modified) Or (DMCXC.cdsLineaCredito.ChangeCount > 0) Then
   Begin
      If MessageDlg('¿Los Datos de Línea de Crédito se perderán. Desea Continuar', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsZona1.Filter := '';
         DMCXC.cdsZona1.Filtered := False;
         pcMaestro.ActivePageIndex := 0;
      End;
   End;
   DMCXC.cdsProvinc.Filter := '';
   DMCXC.cdsProvinc.Filtered := False;

   DMCXC.cdsDistrito.Filter := '';
   DMCXC.cdsDistrito.Filtered := False;

   DMCXC.cdsClie.CancelUpdates;
   DMCXC.cdsClie.Cancel;
   DMCXC.cdsClie.Close;
   FVariables.w_CC_Registro := False;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   Action := CAFree;
End;

Procedure TFMaesClie.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_Dialogkey, VK_TAB, 0);
   End;
End;

Procedure TFMaesClie.Z2bbtnCancel3Click(Sender: TObject);
Begin
   If DMCXC.cdsBienes.State = dsInsert Then DMCXC.cdsBienes.Delete;
   Regresa3;
End;

Procedure TFMaesClie.Z2bbtnOK3Click(Sender: TObject);
Var
   xWhere, xBien: String;
Begin
   xWhere := 'CLIEID=' + '''' + dbeClie.Text + '''' + ' AND BIENID = ' + '''' + dbeBien.Text + '''';
   xBien := DMCXC.BuscaQry('dspTGE', 'TGE211', '*', xWhere, 'BIENID');
   If (DMCXC.wModo = 'A') And (xBien = dbeBien.Text) Then
      Raise Exception.Create(' Bien ya Registrado ');

   If length(dbeNombre.Text) = 0 Then
      Raise Exception.Create(' Descripción no Registrada ');
   If length(dblcTipoBien.Text) = 0 Then
      Raise Exception.Create(' Tipo de Bien no Registrado ');

   Screen.Cursor := crHourGlass;

   DMCXC.cdsPost(DMCXC.cdsBienes);

   DMCXC.AplicaDatos(DMCXC.cdsBienes, 'BIENES');

   Regresa3;

   Screen.Cursor := crDefault;
End;

Procedure TFMaesClie.wwDBGrid1IButtonClick(Sender: TObject);
Begin
   If (DMCXC.wModo = 'A') And (length(dbeClie.Text) = 0) Then
      Raise Exception.Create(' Cliente no Registrado ');

   pnlCab.Enabled := False;
   pnlPie.Enabled := False;
   dbgMiembros.Enabled := False;
   dbgBienes.Enabled := False;
   pnlBienes.Visible := True;

   DMCXC.cdsBienes.Insert;
   DMCXC.cdsBienes.FieldByName('CLIEID').AsString := dbeClie.Text;

   dbeBien.Text := '';
   dbeBien.Setfocus;
End;

Procedure TFMaesClie.dbgBienesDblClick(Sender: TObject);
Var
   xWhere: String;
Begin
   If DMCXC.cdsBienes.RecordCount = 0 Then Exit;

   pnlBienes.Visible := True;
   pnlBienes.SetFocus;
   dbgBienes.Enabled := False;

   dbeBien.Enabled := False;

   xWhere := 'TIPBIENID = ' + '''' + dblcTipOBien.Text + '''';
   dbeTipoBien.Text := DMCXC.BuscaQry('dspTGE', 'TGE164', '*', xWhere, 'TIPBIENDES');

   DMCXC.cdsBienes.Edit;
End;

Procedure TFMaesClie.Regresa3;
Begin
   pnlCab.Enabled := True;
   pnlPie.Enabled := True;
   dbgBienes.Enabled := True;
   pnlBienes.Visible := False;
   dbeBien.Enabled := True;
   dbgBienes.Setfocus;
End;

Procedure TFMaesClie.Z2bbtnCancelClick(Sender: TObject);
Begin
   If DMCXC.cdsClie.State = dsInsert Then DMCXC.cdsClie.Delete;
   close
End;

Procedure TFMaesClie.Z2bbtnOKClick(Sender: TObject);
Var
   xWhere, xCliente: String;
   xPerNat: String;
Begin
   If DMCXC.cdsClie.State = dsBrowse Then
      DMCXC.cdsClie.Edit;
   If Length(dbeapepat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := dbeapepat.text;
   If Length(dbeapemat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(dbeapepat.text + ' ' + dbeapemat.text);
   If Length(dbeNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text);
   If Length(dbesNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text)
         + ' ' + dbesNombres.text);
   Screen.Cursor := crHourGlass;

   If trim(dbeRuc.text) = '' Then dbeRuc.text := '';
   //INICIO HPC_201205_CXC
   If DMCXC.wModo = 'A' Then
   Begin
      DMCXC.cdsClie.FieldByName('CLIEID').AsString := fg_ObtieneCodCliente;
      DMCXC.cdsClie.FieldByName('CLAUXID').AsString := 'C';
      dbeClieExit(dbeClie);
   End;
   //FIN HPC_201205_CXC
// Valida que RUC no se esté registrando al mismo momento para la misma Clase de Auxiliar
   If (trim(dbeRuc.text) <> '') Then
   Begin
      If (length(trim(dbeRuc.text)) <> 11) Then
      Begin
         Screen.Cursor := crdefault;
         ShowMessage('Longitud del RUC es incorrecta');

         dbeRuc.SetFocus;
         exit;
      End;
      xWhere := 'CLAUXID=' + quotedstr(dblcClAux.Text)
         + ' and CLIEID<>' + QuotedStr(dbeClie.text)
         + ' and CLIERUC=' + QuotedStr(dbeRUC.text);
      If dbeRuc.text = DMCXC.BuscaQry('dspUltTGE', 'TGE204', 'CLIEID,CLIEDES,CLIERUC', xWhere, 'CLIERUC') Then
      Begin
         dbeRuc.SetFocus;
         Screen.Cursor := crdefault;
         //INICIO HPC_201205_CXC
         //Raise Exception.Create('RUC asignado al Cliente: '+DMCXC.cdsQry.FieldByName('CLIEID').AsString+' '+DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
         ShowMessage('RUC asignado al Cliente: ' + DMCXC.cdsQry.FieldByName('CLIEID').AsString + ' ' + DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
         Exit;
         //FIN HPC_201205_CXC
      End;
      xWhere := '';
   End;

   If (sPerNat = 'N') And (length(trim(dbeRazSoc.text)) > 0) Then
   Begin
      xWhere := 'CLAUXID=' + quotedstr(dblcClAux.Text)
         + ' and CLIEID<>' + QuotedStr(dbeClie.text)
         + ' and CLIEDES=' + QuotedStr(dbeRazSoc.text);
      If dbeRazSoc.text = DMCXC.BuscaQry('dspUltTGE', 'TGE204', 'CLIEID,CLIEDES,CLIERUC', xWhere, 'CLIEDES') Then
      Begin
         dbeRazSoc.SetFocus;
         Screen.Cursor := crdefault;
         //INICIO HPC_201205_CXC
         //Raise Exception.Create('Razón Social asignada al Cliente: '+DMCXC.cdsQry.FieldByName('CLIEID').AsString+' '+DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
         ShowMessage('Razón Social asignada al Cliente: ' + DMCXC.cdsQry.FieldByName('CLIEID').AsString + ' ' + DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
         Exit;
         //FIN HPC_201205_CXC
      End;
      xWhere := '';
   End;

   If (sPerNat = 'S') Then
   Begin
      If length(trim(dbeDocIdentidad.text)) <= 0 Then
      Begin
         Screen.Cursor := crdefault;
         ShowMessage('Cliente es persona Natural. Debe ingresar el Nº de Documento...');
         Exit;
      End;
      If length(trim(dbeNombres.text)) <= 0 Then
      Begin
         Screen.Cursor := crdefault;
         ShowMessage('Cliente es persona Natural. Debe ingresar los nombres...');
         Exit;
      End;
      If length(trim(dbeapepat.text)) <= 0 Then
      Begin
         Screen.Cursor := crdefault;
         ShowMessage('Cliente es persona Natural. Debe ingresar el Apellido Paterno...');
         Exit;
      End;
      If length(trim(dbeapemat.text)) <= 0 Then
      Begin
         Screen.Cursor := crdefault;
         ShowMessage('Cliente es persona Natural. Debe ingresar el Apellido Materno...');
         Exit;
      End;
   End;

   If ValidaCliente = False Then
   Begin
      Screen.Cursor := crdefault;
      Exit;
   End;

   //if xErrorValida then exit;

   If (DMCXC.wModo = 'A') And (dblcClAux.Enabled) Then
   Begin
      xWhere := 'CLAUXID=''' + dblcClAux.Text + ''' and CLIEID=''' + dbeClie.Text + '''';
      xCliente := DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID', xWhere, 'CLIEID');
      If xCliente = dbeClie.Text Then
      Begin
         Screen.Cursor := crdefault;
         //INICIO HPC_201205_CXC
         //Raise Exception.Create(' Cliente ya Registrado ');
         ShowMessage(' Cliente ya Registrado ');
         Exit;
         //FIN HPC_201205_CXC
      End;
      dblcClAux.Enabled := False;
      dbeClie.Enabled := False;
   End;

   If DMCXC.cdsClie.State = dsBrowse Then
      DMCXC.cdsClie.Edit;
   DMCXC.cdsClie.FieldByName('USERID').AsString := DMCXC.wUsuario;
   DMCXC.cdsClie.FieldByName('FREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsClie.FieldByName('HREG').AsDateTime := DMCXC.TimeS;
   If (DMCXC.wModo = 'A') Then
      DMCXC.cdsClie.FieldByName('FLAGMOV').AsString := 'N';

   If (DMCXC.cdsClieComent.State In [dsEdit, dsInsert]) And (Length(dbeComentario.text) > 0) Then
   Begin
      DMCXC.cdsClieComent.FieldByName('CIAID').AsString := dblcCia.text;
      DMCXC.cdsClieComent.FieldByName('CLAUXID').AsString := dblcClAux.text;
      DMCXC.cdsClieComent.FieldByName('CLIEID').AsString := dbeClie.text;
      DMCXC.cdsClieComent.FieldByName('CLIECOMEN').AsString := dbeComentario.text;
      DMCXC.cdsClieComent.Post;
   End;
   DMCXC.cdsClieComent.DataRequest('SELECT * FROM TGE218 WHERE CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + QuotedStr(dbeClie.text));
   DMCXC.ControlTran(9, DMCXC.cdsClieComent, 'X'); //DMCXC.AplicaDatos( DMCXC.cdsClieComent, 'CLIENTE' );

   DMCXC.cdsPost(DMCXC.cdsClie);

   DMCXC.cdsClie.DataRequest('SELECT * FROM TGE204 WHERE CLIEID=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLIEID').AsString));
   If xCliedes <> DMCXC.cdsClie.FieldByName('CLIEDES').AsString Then
   Begin
      ActualizaClieDes;
   End;

   DMCXC.AplicaDatos(DMCXC.cdsClie, 'CLIENTE');
   DMCXC.AplicaDatos(DMCXC.cdsLineaCredito, 'LINEA');
   DMCXC.AplicaDatos(DMCXC.cdsDireccion, 'DIRECCION');
   DMCXC.GrabaAuxConta(DMCXC.cdsClie);

   Screen.Cursor := crDefault;
   If DMCXC.wTipoAdicion = 'xFiltro' Then
   Begin
      DMCXC.ActualizaFiltro(Mantc, DMCXC.cdsClie, DMCXC.wModo);
   End;
   ShowMessage('Grabación Exitosa');

   If DMCXC.wModo = 'A' Then Z2bbtnNuevo.Enabled := True;
End;

Procedure TFMaesClie.dblcOcupacChange(Sender: TObject);
Var
   xWhere: String;
Begin
   xWhere := 'OCUPID = ' + '''' + dblcOcupac.Text + '''';
   dbeOcupac.Text := DMCXC.BuscaQry('dspTGE', 'RRHH101', '*', xWhere, 'OCUPDES');
End;

Procedure TFMaesClie.dblcOcupacExit(Sender: TObject);
Begin
   If Z2bbtnCancel2.Focused Then Exit;

   If length(dbeOcupac.Text) = 0 Then
   Begin
      ShowMessage('Falta Ocupación');
      dblcOcupac.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcTipoBienExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Z2bbtnCancel3.Focused Then Exit;

   xWhere := 'TIPBIENID = ' + '''' + dblcTipOBien.Text + '''';
   dbeTipoBien.Text := DMCXC.BuscaQry('dspTGE', 'TGE164', '*', xWhere, 'TIPBIENDES');

   If length(dbeTipoBien.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo Bien');
      dblcTipoBien.SetFocus;
   End;
End;

Procedure TFMaesClie.dbeMiembroExit(Sender: TObject);
Begin
   If Z2bbtnCancel2.Focused Then Exit;

   If length(dbeMiembro.Text) = 0 Then
   Begin
      ShowMessage('Falta Miembro');
      dbeMiembro.SetFocus;
   End;
End;

Procedure TFMaesClie.dbeBienExit(Sender: TObject);
Begin
   If Z2bbtnCancel3.Focused Then Exit;

   If length(dbeBien.Text) = 0 Then
   Begin
      ShowMessage('Falta Bien');
      dbeBien.SetFocus;
   End;
End;

Procedure TFMaesClie.dbeClieExit(Sender: TObject);
Begin
   If Z2bbtnCancel.Focused Then Exit;
   If length(dbeClie.Text) = 0 Then
   Begin
      dbeClie.SetFocus;
      Raise Exception.Create(' Falta Código del Cliente ');
   End;

   If dbeClie.text = DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID', 'CLIEID=' + QuotedStr(dbeClie.text) + ' AND CIAID=' + QuotedStr(dblcCia.text), 'CLIEID') Then
   Begin
      dbeClie.SetFocus;
      Raise Exception.Create('Cliente ya existe');
   End;
   //INICIO HPC_201205_CXC
   //if (DMCXC.wModo='A') and (sPerNat<>'S') then
   //DMCXC.cdsClie.FieldByName('CLIERUC').AsString:=dbeClie.text;
   //FIN HPC_201205_CXC
End;

Procedure TFMaesClie.dblcClAuxExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Z2bbtnCancel.Focused Then Exit;
   xWhere := 'ClAuxId=''' + dblcClAux.Text + ''' and MODULO LIKE ''%' + DMCXC.wModulo + '%''';
   dbeClAux.Text := DMCXC.BuscaQry('dspTGE', 'TGE102', '*', xWhere, 'CLAUXABR');
   If length(dbeClAux.Text) = 0 Then
   Begin
      ShowMessage('Falta Clase de Auxiliar');
      //dbeClAux.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcTipPerExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcTipPer.Text) = 0 Then Exit;
   xWhere := 'TIPPERID=''' + dblcTipPer.Text + '''';
   dbeTipPer.Text := DMCXC.BuscaQry('dspTGE', 'TGE109', '*', xWhere, 'TIPPERDES');
   sPerNat := DMCXC.cdsQry.FieldByName('TIPPERS').AsString;
   If Length(dbeTipPer.Text) = 0 Then
   Begin
      ShowMessage('Código de Tipo de Persona No Existe');
      dblcTipPer.Text := '';
      //dblcTipPer.SetFocus;
   End;
   //INICIO HPC_201205_CXC
   If DMCXC.wModo = 'A' Then
   Begin
      DMCXC.cdsClie.FieldByName('CLIEID').AsString := fg_ObtieneCodCliente;
      DMCXC.cdsClie.FieldByName('CLAUXID').AsString := 'C';
      dblcClAuxExit(dblcClAux);
      fg_DefaultCampos(dblcTipPer.Text);
   End
   Else
      If DMCXC.wModo = 'M' Then
      Begin
         fg_DefaultCampos(dblcTipPer.Text);
      End;
   fg_HabilitaTipoPersona(dblcTipPer.Text);
   //FIN HPC_201205_CXC
End;

Procedure TFMaesClie.dblcGiroExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcGiro.Text) = 0 Then Exit;
   xWhere := 'GIROID=''' + dblcGiro.Text + '''';
   dbeGiro.Text := DMCXC.BuscaQry('dspTGE', 'TGE116', '*', xWhere, 'GIRODES');
   If Length(dbeGiro.Text) = 0 Then
   Begin
      ShowMessage('Código de Giro de Empresa No Existe');
      dblcGiro.Text := '';
      dblcGiro.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcClasifExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcClasif.Text) = 0 Then Exit;
   xWhere := 'CLASIFID=''' + dblcClasif.Text + '''';
   dbeClasif.Text := DMCXC.BuscaQry('dspTGE', 'TGE132', '*', xWhere, 'CLASIFDES');
   If Length(dbeClasif.Text) = 0 Then
   Begin
      ShowMessage('Código de Clasificación No Existe');
      dblcClasif.Text := '';
      dblcClasif.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcVinculoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcVinculo.Text) = 0 Then Exit;
   xWhere := 'VINCID=''' + dblcVinculo.Text + '''';
   dbeVinculo.Text := DMCXC.BuscaQry('dspTGE', 'TGE133', '*', xWhere, 'VINCDES');
   If Length(dbeVinculo.Text) = 0 Then
   Begin
      ShowMessage('Código de Relación con la Empresa No Existe');
      dblcVinculo.Text := '';
      dblcVinculo.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcConPagoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcConPago.Text) = 0 Then Exit;
   xWhere := 'CONDPID=''' + dblcConPago.Text + '''';
   dbeCondPago.Text := DMCXC.BuscaQry('dspTGE', 'TGE166', '*', xWhere, 'CONDPDES');
   If Length(dbeCondPago.Text) = 0 Then
   Begin
      ShowMessage('Código de Condición de Pago No Existe');
      dblcConPago.Text := '';
      dblcConPago.SetFocus;
   End;
End;

Procedure TFMaesClie.dbgMiembrosKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsMiemEmpre.Delete;

         DMCXC.AplicaDatos(DMCXC.cdsMiemEmpre, 'MIEMEMPRE');
      End;
   End;
End;

Procedure TFMaesClie.dbgBienesKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsBienes.Delete;

         DMCXC.AplicaDatos(DMCXC.cdsBienes, 'MIEMEMPRE');
      End;
   End;
End;

Procedure TFMaesClie.dblcCiaExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcCia.Text) = 0 Then Exit;

   xWhere := 'CIAID=''' + dblcCia.Text + '''';
   dbeCia.Text := DMCXC.BuscaQry('dspTGE', 'TGE101', '*', xWhere, 'CIADES');
   If Length(dbeCia.Text) = 0 Then
   Begin
      ShowMessage('Compañía No Existe');
      dblcCia.Text := '';
      //dblcCia.SetFocus;
   End;

End;

Procedure TFMaesClie.dblcPaisExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If length(dblcPais.Text) = 0 Then exit;
   xWhere := 'PAISID = ' + '''' + dblcPais.Text + '''';
   dbePais.Text := DMCXC.BuscaQry('dspTGE', 'TGE118', '*', xWhere, 'PAISDES');
   If Length(dbePais.Text) = 0 Then
   Begin
      ShowMessage('Código de País No Existe');
      dblcPais.Text := '';
      If dblcPais.CanFocus Then
         dblcPais.SetFocus;
      exit;
   End;

   If DMCXC.cdsQry.FieldByName('FNACIONAL').AsString <> 'S' Then
   Begin
      dblcDeparta.Enabled := False;
      dblcdProvinc.Enabled := False;
      dblcdDistrito.Enabled := False;
      DMCXC.cdsClie.FieldByName('DPTOID').AsString := '';
      DMCXC.cdsClie.FieldByName('CIUDID').AsString := '';
      DMCXC.cdsClie.FieldByName('CLIECZIP').AsString := '';
      dbeDeparta.Text := '';
      dbeProvinc.Text := '';
      dbeDistrito.Text := '';
   End
   Else
   Begin
      dblcDeparta.Enabled := True;
      dblcdProvinc.Enabled := True;
      dblcdDistrito.Enabled := True;
   End;
End;

Procedure TFMaesClie.dblcDepartaExit(Sender: TObject);
Begin
   If length(dblcDeparta.Text) = 0 Then exit;

   DMCXC.cdsDpto.SetKey;
   DMCXC.cdsDpto.FieldByName('DPTOID').AsString := dblcDeparta.Text;
   If Not DMCXC.cdsDpto.GotoKey Then
   Begin
      ShowMessage('Código de Departamento No Existe');
      dblcDeparta.Text := '';
      If dblcDeparta.CanFocus Then
         dblcDeparta.SetFocus;
      exit;
   End;
   dbeDeparta.Text := DMCXC.cdsDpto.FieldByName('DPTODES').AsString;
   DMCXC.cdsProvinc.Filter := 'DPTOID=' + quotedstr(dblcDeparta.Text);
   DMCXC.cdsProvinc.Filtered := True;
   DMCXC.cdsProvinc.First;
End;

Procedure TFMaesClie.dblcVendeExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If length(dblcVende.Text) = 0 Then exit;
   xWhere := 'VEID = ' + '''' + dblcVende.Text + '''';
   dbeVende.Text := DMCXC.BuscaQry('dspTGE', 'CXC203', '*', xWhere, 'VENOMBRES');
   If Length(dbeVende.Text) = 0 Then
   Begin
      ShowMessage('Código de Vendedor No Existe');
      dblcVende.Text := '';
      If dblcVende.CanFocus Then
         dblcVende.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcSecEcoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If length(dblcSecEco.Text) = 0 Then exit;
   xWhere := 'SECECOID = ' + '''' + dblcSecEco.Text + '''';
   dbeSecEco.Text := DMCXC.BuscaQry('dspTGE', 'TGE163', '*', xWhere, 'SECECODES');
   If Length(dbeSecEco.Text) = 0 Then
   Begin
      ShowMessage('Código de Sector Económico No Existe');
      dblcSecEco.Text := '';
      dblcSecEco.SetFocus;
   End;
End;

Procedure TFMaesClie.Z2bbtnNuevoClick(Sender: TObject);
Begin
   Filtracds(DMCXC.cdsClie, 'Select * from TGE204 Where CLIEID=''''');
   RegistroNuevo;
   Z2bbtnNuevo.Enabled := False;
End;

Procedure TFMaesClie.LimpiaEdits;
Begin
   dbeCia.Text := '';
   dbePais.Text := '';
   dbeDeparta.Text := '';
   dbeProvinc.Text := '';
   dbeDistrito.Text := '';
   dbeVende.Text := '';
   dbeCondPago.Text := '';
   dbeTipPer.Text := '';
   dbeGiro.Text := '';
   dbeClasif.Text := '';
   dbeVinculo.Text := '';
   dbeSecEco.Text := '';
   dbeCIUU.Text := '';
   dbeComentario.text := '';
End;

Procedure TFMaesClie.dblcMonedaExit(Sender: TObject);
Begin
   edtMoneda.Text := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcMoneda.text);
End;

Procedure TFMaesClie.dblcLPrecioExit(Sender: TObject);
Begin
   edtLPrecio.Text := DMCXC.DisplayDescrip('FAC101', 'TLISTADES', 'TLISTAID', dblcLPrecio.text);
End;

Procedure TFMaesClie.dblcSecVtaExit(Sender: TObject);
Begin
   If Z2bbtnCancel.focused Then exit;
//  if (Sender as TWincontrol).TabOrder>ActiveControl.TabOrder then Exit;

   edtSecNta.Text := DMCXC.DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcSecVta.text);
   If Length(edtSecNta.text) = 0 Then
   Begin
      ShowMessage('Sector Comercial No existe');
      dblcSecVta.Text := '';
      If dblcSecVta.CanFocus Then
         dblcSecVta.SetFocus;
   End;
   DMCXC.cdsZona1.Filter := 'TVTAID=' + QuotedStr(dblcSecVta.Text);
   DMCXC.cdsZona1.Filtered := True;
End;

Procedure TFMaesClie.dbeRazSocExit(Sender: TObject);
Begin
   dbeGirador.Text := dbeRazSoc.Text;
   DMCXC.cdsClie.FieldByName('CLIEGIRA').AsString := dbeRazSoc.Text;
End;

Procedure TFMaesClie.ibInsertaLineaCreditoClick(Sender: TObject);
Begin
   If (DMCXC.wModo = 'A') And (length(dbeClie.Text) = 0) Then
      Raise Exception.Create(' Cliente no Registrado ');

   pnlCab.Enabled := False;
   pnlPie.Enabled := False;
   pnlLineaCredito.Visible := True;
   dbgLineaCredito.Enabled := False;
   edtTMonId.Clear;
   DMCXC.cdsLineaCredito.Insert;
   DMCXC.cdsLineaCredito.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsLineaCredito.FieldByName('CLIEID').AsString := dbeClie.Text;
   dblcTMonid.SetFocus;

End;

Procedure TFMaesClie.Z2bbtnOKLCClick(Sender: TObject);
Var
   xWhere, xMiembro: String;
Begin
  //BUSCAR SI FECHA YA FUE REGISTRADA.
   If DMCXC.cdsLineaCredito.FieldByName('ULTFECHA').AsDateTime <= 0 Then
   Begin
      dbdtpUltFecha.SetFocus;
      Raise Exception.Create('Ingrese Fecha');
   End;

   If DMCXC.cdsLineaCredito.FieldByName('CLIECREMAX').AsFloat < 0 Then
   Begin
      dbeLineaCreditoMax.SetFocus;
      Raise Exception.Create('Ingrese Monto Máximo');
   End;

   If (DMCXC.cdsLineaCredito.FieldByName('CLIECREMIN').AsFloat > DMCXC.cdsLineaCredito.FieldByName('CLIECREMIN').AsFloat) Or
      (DMCXC.cdsLineaCredito.FieldByName('CLIECREMIN').AsFloat < 0) Then
   Begin
      dbeLineaCreditoMin.SetFocus;
      Raise Exception.Create('Ingrese Monto Mínimo');
   End;

   If DMCXC.cdsLineaCredito.state = dsInsert Then
   Begin
      If ExisteDuplicado Then
         Raise Exception.Create(' Cliente ya tiene un registro para este mes');
   End;

   Screen.Cursor := crHourGlass;
   DMCXC.cdsLineaCredito.FieldByName('FREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsLineaCredito.FieldByName('HREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsLineaCredito.FieldByName('USERID').AsString := DMCXC.wUsuario;

   DMCXC.cdsPost(DMCXC.cdsLineaCredito);

   DMCXC.cdsLineaCredito.Last;
   If DMCXC.cdsClie.State = dsBrowse Then
      DMCXC.cdsClie.Edit;
   DMCXC.cdsClie.FieldByName('CLIECREMAX').AsFloat := DMCXC.cdsLineaCredito.FieldByName('CLIECREMAX').AsFloat;
   DMCXC.cdsClie.FieldByName('CLIECREMIN').AsFloat := DMCXC.cdsLineaCredito.FieldByName('CLIECREMIN').AsFloat;
   DMCXC.cdsClie.FieldByName('TMONID').AsString := DMCXC.cdsLineaCredito.FieldByName('TMONID').AsString;

   Regresa4;
   dblcMonedaExit(Nil);
   Screen.Cursor := crDefault;

End;

Procedure TFMaesClie.Z2bbtnCancelLCClick(Sender: TObject);
Begin
   If DMCXC.cdsLineaCredito.State = dsInsert Then
      DMCXC.cdsLineaCredito.Delete;
   Regresa4;
End;

Procedure TFMaesClie.Regresa4;
Begin
   pnlCab.Enabled := True;
   pnlPie.Enabled := True;
   dbgLineaCredito.Enabled := True;
   pnlLineaCredito.Visible := False;
End;

Procedure TFMaesClie.dbgLineaCreditoDblClick(Sender: TObject);
Begin
   If DMCXC.cdsLineaCredito.RecordCount = 0 Then Exit;

   pnlLineaCredito.Visible := True;
   dbgLineaCredito.Enabled := False;

   DMCXC.cdsLineaCredito.Edit;
   If DMCXC.cdsLineaCredito.state = dsEdit Then
      dbdtpUltFecha.enabled := False
   Else
      dbdtpUltFecha.enabled := True;

   dblcTMonidExit(Sender);
   dbeLineaCreditoMax.SetFocus;
End;

Procedure TFMaesClie.dbgLineaCreditoKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsLineaCredito.Delete;
      End;
   End;
End;

Procedure TFMaesClie.dbdtpUltFechaEnter(Sender: TObject);
Begin
   If DMCXC.cdsLineaCredito.state = dsInsert Then
      DMCXC.cdsLineaCredito.FieldByName('ULTFECHA').AsDateTime := DMCXC.DateS;
End;

Procedure TFMaesClie.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookUpField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFMaesClie.dblcTMonidExit(Sender: TObject);
Begin
   If Z2bbtnCancelLC.focused Then exit;
   If dblcTMonid.text = '' Then
   Begin
      dblcTmonId.SetFocus;
      Raise Exception.Create('Ingrese Moneda');
   End;

   edtTmonid.text := DMCXC.cdsTMon.FieldByName('TMONABR').AsString;
End;

Function TFMaesClie.ExisteDuplicado: Boolean;
Var
   cdsLC: TwwClientDataSet;
   Y1, M1, D: Word;
   Y2, M2: Word;
   flag: boolean;
Begin
   flag := False;
   decodedate(DMCXC.cdsLineaCredito.FieldByName('ULTFECHA').AsDateTime, Y1, M1, D);

   cdsLC := TwwClientDataSet.create(self);
   cdsLC.CloneCursor(DMCXC.cdsLineaCredito, False);
   cdsLC.First;
   While Not cdsLC.EOF Do
   Begin
      DecodeDate(cdsLC.FieldByName('ULTFECHA').AsDateTime, Y2, M2, D);
      If (Y2 = Y1) And (M2 = M1) Then
      Begin
         flag := True;
         cdsLC.Last;
      End;
      cdsLC.Next;
   End;
   result := Flag;
End;

Procedure TFMaesClie.dblcdDistritoExit(Sender: TObject);
Begin
   If length(dblcdDistrito.Text) = 0 Then exit;

   DMCXC.cdsDistrito.SetKey;
   DMCXC.cdsDistrito.FieldByName('ZIPID').AsString := dblcdDistrito.Text;
   If Not DMCXC.cdsDistrito.GotoKey Then
   Begin
      ShowMessage('Código de Distrito No Existe');
      dblcdDistrito.Text := '';
      If dblcdDistrito.CanFocus Then
         dblcdDistrito.SetFocus;
      exit;
   End;
   dbeDistrito.Text := DMCXC.cdsDistrito.FieldByName('ZIPDES').AsString;

End;

Procedure TFMaesClie.dblcdProvincExit(Sender: TObject);
Begin
   If length(dblcdProvinc.Text) = 0 Then exit;

   DMCXC.cdsProvinc.SetKey;
   DMCXC.cdsProvinc.FieldByName('CIUDID').AsString := dblcdProvinc.Text;
   If Not DMCXC.cdsProvinc.GotoKey Then
   Begin
      ShowMessage('Código de Provincia No Existe');
      dblcdProvinc.Text := '';
      If dblcdProvinc.CanFocus Then
         dblcdProvinc.SetFocus;
      exit;
   End;
   dbeProvinc.Text := DMCXC.cdsProvinc.FieldByName('CIUDDES').AsString;

   DMCXC.cdsDistrito.Filter := 'DPTOID=' + quotedstr(dblcDeparta.Text)
      + ' and CIUDID=' + quotedstr(dblcdProvinc.Text);
   DMCXC.cdsDistrito.Filtered := True;
   DMCXC.cdsDistrito.First;
End;

Function TFMaesClie.ValidaCliente: Boolean;
Begin
   xErrorValida := False;
   If DMCXC.cdsClie.FieldByName('TIPPERID').AsString = '02' Then //Persona Jurídica
   Begin
      If Length(DMCXC.cdsClie.FieldByName('PAISID').AsString) = 0 Then
      Begin
         ShowMessage('Ingrese el País del Cliente');
         Result := False;
         Exit;
      End;

      If DMCXC.cdsClie.FieldByName('PAISID').AsString = '01' Then
      Begin
         If Length(DMCXC.cdsClie.FieldByName('DPTOID').AsString) = 0 Then
         Begin
            ShowMessage('Ingrese el Departamento');
            Result := False;
            Exit;
         End;
         If Length(DMCXC.cdsClie.FieldByName('DPTOID').AsString) = 0 Then
         Begin
            ShowMessage('Ingrese el Departamento');
            Result := False;
            Exit;
         End;
         If Length(DMCXC.cdsClie.FieldByName('CIUDID').AsString) = 0 Then
         Begin
            ShowMessage('Ingrese la Provincia');
            Result := False;
            Exit;
         End;
         If Length(DMCXC.cdsClie.FieldByName('CLIECZIP').AsString) = 0 Then
         Begin
            ShowMessage('Ingrese el Distrito');
            Result := False;
            Exit;
         End;
      End;

   End;
   If (DMCXC.cdsClie.FieldByName('TIPPERID').AsString = '03') Or
      (DMCXC.cdsClie.FieldByName('TIPPERID').AsString = '01') Then //NO domiciliados
   Begin
      If (Length(DMCXC.cdsClie.FieldByName('CLIEAPEPAT').AsString) = 0)
         Or (Length(DMCXC.cdsClie.FieldByName('CLIENOMBRE').AsString) = 0) Then
      Begin
         Screen.Cursor := crDefault;
         dblcTDocIdentidad.SetFocus;
         xErrorValida := True;
       //Raise Exception.Create('Ingrese los datos del Nombre y Apellido Paterno');
         ShowMessage('Ingrese los datos del Nombre y Apellido Paterno');
         Result := False;
         Exit;
      End;
      If (DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString <> '04') And
         (DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString <> '07') And
         (DMCXC.cdsClie.FieldByName('TIPPERID').AsString = '03') Then
      Begin
         ShowMessage('Los No Domiciliados sólo pueden tener como tipo de documento :' + #13 +
            '04-Carnet de Extranjería' + #13 +
            '07-Pasaporte');
         Result := False;
         Exit;
      End;
   End;

   //FIN HPC_201205_CXC

   If DMCXC.cdsClie.FieldByName('CLIEID').AsString = '' Then
   Begin
      Screen.Cursor := crDefault;
      dbeClie.SetFocus;
      xErrorValida := True;
      //INICIO HPC_201205_CXC
    //Raise Exception.Create('Ingrese Código de Cliente');
      ShowMessage('Ingrese Código de Cliente');
      Result := False;
      Exit;
      //FIN HPC_201205_CXC
   End;

   If dblcTipPer.text = '' Then
   Begin
      Screen.Cursor := crDefault;
      dbeClie.SetFocus;
      xErrorValida := True;
      //INICIO HPC_201205_CXC
    //Raise Exception.Create('Ingrese Tipo de Persona');
      ShowMessage('Ingrese Tipo de Persona');
      Result := False;
      Exit;
      //FIN HPC_201205_CXC
   End;
   //INICIO HPC_201205_CXC
   //if (sPerNat<>'S') and (length(trim(dbeRazSoc.Text))=0) then
   If (DMCXC.cdsClie.FieldByName('TIPPERID').AsString = '02') And (length(trim(dbeRazSoc.Text)) = 0) Then
   //FIN HPC_201205_CXC
   Begin
      Screen.Cursor := crdefault;
      ShowMessage('Razón Social es obligatoria para una Persona Jurídica');
      dbeRazSoc.SetFocus;
      xErrorValida := True;
      Result := False;
      exit;
   End;
   //INICIO HPC_201205_CXC
   //if (sPerNat<>'S') and (length(trim(dbeRuc.Text))=0) then
   If (DMCXC.cdsClie.FieldByName('TIPPERID').AsString = '02') And (length(trim(dbeRuc.Text)) = 0) Then
   //FIN HPC_201205_CXC
   Begin
      Screen.Cursor := crdefault;
      ShowMessage('El RUC es obligatorio para una Persona Jurídica');
      dbeRazSoc.SetFocus;
      xErrorValida := True;
      Result := False;
      exit;
   End;

   If (sPerNat = 'S') And ((dbeDocIdentidad.text = '') And (dbeRuc.Text = '')) Then
   Begin
      Screen.Cursor := crDefault;
      pcMaestro.ActivePage := TabSheet1;
      dbeDocIdentidad.SetFocus;
      xErrorValida := True;
      //INICIO HPC_201205_CXC
    //Raise Exception.Create('Ingrese D.N.I o  R.U.C');
      ShowMessage('Ingrese D.N.I o  R.U.C');
      Result := False;
      Exit;
      //FIN HPC_201205_CXC
   End;

   If DMCXC.cdsClie.FieldByName('TVTAID').AsString = '' Then
   Begin
      If DMCXC.cdsZona.recordcount = 1 Then
      Begin
         DMCXC.cdsClie.FieldByName('TVTAID').AsString := DMCXC.cdsZona.FieldByName('TVTAID').AsString;
         edtSecNta.Text := DMCXC.DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcSecVta.text);
      End
      Else
      Begin
         pcMaestro.ActivePage := tsDireccion;
         Screen.Cursor := crDefault;
         dblcSecVta.SetFocus;
         xErrorValida := True;
        //INICIO HPC_201205_CXC
      //Raise Exception.Create('Ingrese Sector Comercial');
         ShowMessage('Ingrese Sector Comercial');
         Result := False;
         Exit;
        //FIN HPC_201205_CXC
      End;
   End;

   If DMCXC.cdsClie.FieldByName('ZONVTAID').AsString = '' Then
   Begin
      If DMCXC.cdsZona1.recordcount = 1 Then
      Begin
         DMCXC.cdsClie.FieldByName('ZONVTAID').AsString := DMCXC.cdsZona1.FieldByName('ZVTAID').AsString;
         edtZonNta.Text := DMCXC.DisplayDescrip('FAC106', 'ZVTADES', 'ZVTAID', dblcZonVta.text);
      End
      Else
      Begin
         pcMaestro.ActivePage := tsDireccion;
         Screen.Cursor := crDefault;
         dblcZonVta.SetFocus;
         xErrorValida := True;
        //INICIO HPC_201205_CXC
      //Raise Exception.Create('Ingrese Zona de Venta');
         ShowMessage('Ingrese Zona de Venta');
         Result := False;
         Exit;
        //FIN HPC_201205_CXC
      End;
   End;
   If DMCXC.cdsDireccion.RecordCount = 0 Then
   Begin
      If length(trim(DMCXC.cdsClie.FieldByName('CLIEDIR').AsString)) = 0 Then
      Begin
         pcMaestro.ActivePage := tsDireccion;
         Screen.Cursor := crDefault;
         xErrorValida := True;
        //INICIO HPC_201205_CXC
      //Raise Exception.Create('Ingrese Dirección del Cliente');
         ShowMessage('Ingrese Dirección del Cliente');
         Result := False;
         Exit;
        //FIN HPC_201205_CXC
      End;
      DMCXC.cdsDireccion.Insert;
      DMCXC.cdsDireccion.FieldByName('CIAID').AsString := dblcCia.Text;
      DMCXC.cdsDireccion.FieldByName('CLIEID').AsString := dbeClie.Text;
      DMCXC.cdsDireccion.FieldByName('CLIERUC').AsString := dbeRuc.Text;
      DMCXC.cdsDireccion.FieldByName('CLIEDIRID').AsString := '01'; // ojo: es el 1er correlativo, no es código duro
      DMCXC.cdsDireccion.FieldByName('CLIEDIRENT').AsString := DMCXC.cdsClie.FieldByName('CLIEDIR').AsString;
      DMCXC.cdsDireccion.FieldByName('ZIPID').AsString := DMCXC.cdsClie.FieldByName('CLIECZIP').AsString;
      DMCXC.cdsDireccion.FieldByName('ZVTAID').AsString := DMCXC.cdsClie.FieldByName('ZONVTAID').AsString;
//    pcMaestro.ActivePage:=tsDireccionEntrega;
//    Screen.Cursor:=crDefault;
//    Raise Exception.Create('Ingrese lugares de entrega');
   End;
   If DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString = '' Then
   Begin
      Screen.Cursor := crDefault;
      dblcTDocIdentidad.SetFocus;
      xErrorValida := True;
    //Raise Exception.Create('Ingrese el tipo de documento');
      ShowMessage('Ingrese el tipo de documento');
      Result := False;
      Exit;
   End;
   If DMCXC.cdsClie.FieldByName('CLIEDNI').AsString = '' Then
   Begin
      Screen.Cursor := crDefault;
      dblcTDocIdentidad.SetFocus;
      xErrorValida := True;
    //Raise Exception.Create('Ingrese el Nº de Documento');
      ShowMessage('Ingrese el Nº de Documento');
      Result := False;
      Exit;
   End;
   Result := True;

End;

Procedure TFMaesClie.ibLugarEntregaClick(Sender: TObject);
Begin
   If (DMCXC.wModo = 'A') And (length(dbeClie.Text) = 0) Then
      Raise Exception.Create(' Cliente no Registrado ');

   pnlCab.Enabled := False;
   pnlPie.Enabled := False;
   pnlLugarEntrega.Visible := True;
   dbgLugarEntrega.Enabled := False;

   edtDistritoLE.Clear;
   edtZonaLE.Clear;

   DMCXC.cdsDireccion.Insert;
   DMCXC.cdsDireccion.FieldByName('CIAID').AsString := dblcCia.Text;
   DMCXC.cdsDireccion.FieldByName('CLIEID').AsString := dbeClie.Text;
   DMCXC.cdsDireccion.FieldByName('CLIERUC').AsString := dbeRuc.Text;
   dbeIdDireccionEntrega.SetFocus;
End;

Procedure TFMaesClie.dblcdDistritoLEExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If length(dblcdDistritoLE.Text) = 0 Then
      exit;

   xWhere := 'ZIPID = ' + '''' + dblcdDistritoLE.Text + '''';
   edtDistritoLE.Text := DMCXC.BuscaQry('dspTGE', 'TGE122', 'ZIPID,ZIPDES', xWhere, 'ZIPDES');
   If Length(edtDistritoLE.Text) = 0 Then
   Begin
      ShowMessage('Código de Distrito No Existe');
      dblcdDistritoLE.Text := '';
      dblcdDistritoLE.SetFocus;
   End;
End;

Procedure TFMaesClie.dbgLugarEntregaKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If DMCXC.cdsDireccion.RecordCount > 0 Then
         If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            DMCXC.cdsDireccion.Delete;
         End;
   End;
End;

Procedure TFMaesClie.dbgLugarEntregaDblClick(Sender: TObject);
Begin
   If DMCXC.cdsDireccion.RecordCount = 0 Then Exit;

   pnlLugarEntrega.Visible := True;
   dbgLugarEntrega.Enabled := False;

   DMCXC.cdsDireccion.Edit;
   dblcdDistritoLEExit(Sender);
   dblcZonaLEExit(Sender);
   dbeIdDireccionEntrega.SetFocus;
End;

Procedure TFMaesClie.Z2bbtnOKLEClick(Sender: TObject);
Var
   xWhere, xMiembro: String;
Begin
   If dbeIdDireccionEntrega.text = '' Then
   Begin
      dbeIdDireccionEntrega.SetFocus;
      Raise Exception.Create('ID');
   End;

   If dbeDirecionEntrega.text = '' Then
   Begin
      dbeDirecionEntrega.SetFocus;
      Raise Exception.Create('Ingrese Lugar de Entrega');
   End;
   DMCXC.cdsDireccion.Post;

   Screen.Cursor := crHourGlass;

   Regresa5;
   Screen.Cursor := crDefault;

End;

Procedure TFMaesClie.Z2bbtnCancelLEClick(Sender: TObject);
Begin
   If DMCXC.cdsDireccion.State = dsInsert Then
      DMCXC.cdsDireccion.Delete;
   Regresa5;
End;

Procedure TFMaesClie.Regresa5;
Begin
   pnlCab.Enabled := True;
   pnlPie.Enabled := True;
   dbgLugarEntrega.Enabled := True;
   pnlLugarEntrega.Visible := False;
End;

Procedure TFMaesClie.dbeRucExit(Sender: TObject);
Begin
   If (sPerNat = 'N') And (dbeRuc.text = '') Then
   Begin
      dbeRuc.SetFocus;
      Raise Exception.Create('Persona Jurídica Exige RUC');
   End;

   If (length(trim(dbeRuc.text)) > 0) And (length(trim(dbeRuc.text)) <> 11) Then
   Begin
      ShowMessage('Longitud del RUC es incorrecta');
      dbeRuc.SetFocus;
      exit;
   End;

   If (trim(dbeRuc.text) <> '') Then
   Begin
      If (length(trim(dbeRuc.text)) <> 11) Then
      Begin
         ShowMessage('Longitud del RUC es incorrecta');
         dbeRuc.SetFocus;
         exit;
      End;
   End;

   If (dbeRuc.text <> '') Then
      If dbeRuc.text = DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,CLIEDES,CLIERUC', 'CLIEID<>' + QuotedStr(dbeClie.text) + ' AND CLIERUC=' + QuotedStr(dbeRUC.text), 'CLIERUC') Then
      Begin
         dbeRuc.SetFocus;
         Raise Exception.Create('RUC asignado al Cliente: ' + DMCXC.cdsQry.FieldByName('CLIEID').AsString + ' ' + DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
      End;
   //INICIO HPC_201205_CXC
   DMCXC.cdsClie.FieldByName('CLIEDNI').AsString := dbeRuc.Text;
   //FIN HPC_201205_CXC
End;

Procedure TFMaesClie.dblcZonVtaExit(Sender: TObject);
Begin
   If Z2bbtnCancel.focused Then exit;
//  if (Sender as TWincontrol).TabOrder>ActiveControl.TabOrder then Exit;

   edtZonNta.Text := DMCXC.DisplayDescrip('FAC106', 'ZVTADES', 'ZVTAID', dblcZonVta.text);
   If Length(edtZonNta.text) = 0 Then
   Begin
      ShowMessage('Zona de Venta No existe');
      dblcZonVta.Text := '';
      If dblcZonVta.CanFocus Then
         dblcZonVta.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcCIUUExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcCIUU.Text) = 0 Then Exit;

   xWhere := 'CIUUID=''' + dblcCIUU.Text + '''';
   dbeCIUU.Text := DMCXC.BuscaQry('dspTGE', 'TGE176', '*', xWhere, 'CIUUDES');
End;

Procedure TFMaesClie.dblcZonaLEExit(Sender: TObject);
Begin
   edtZonaLE.Text := DMCXC.DisplayDescrip('FAC106', 'ZVTADES', 'ZVTAID', dblcZonaLE.text);
   If Length(edtZonaLE.text) = 0 Then
   Begin
      ShowMessage('Zona de Venta No existe');
      dblcZonaLE.Text := '';
      dblcZonaLE.SetFocus;
   End;
End;

Procedure TFMaesClie.dblcSituacionExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcSituacion.Text) = 0 Then Exit;
   xWhere := 'SITCLIEID=''' + dblcSituacion.Text + '''';
   dbeSitClie.Text := DMCXC.BuscaQry('dspTGE', 'CXC111', '*', xWhere, 'SITCLIEDES');
   If Length(dbeSitClie.Text) = 0 Then
   Begin
      ShowMessage('Situación No Existe');
      dblcSituacion.Text := '';
      dblcSituacion.SetFocus;
   End;
End;

Procedure TFMaesClie.ActualizaClieDes;
Var
   sSQL: String;
   i: integer;
   tablas: Array[1..15] Of String;
Begin

   tablas[1] := 'CXC309';
   tablas[2] := 'CXC310';
   tablas[3] := 'CXC317';
   tablas[4] := 'CXC319';
   tablas[5] := 'CXC321';
//INICIO HPC_201205_CXC
//tablas[6]:='CXC501';
//tablas[7]:='CXP310';
//tablas[8]:='CXP312';
//FIN HPC_201205_CXC
   tablas[6] := 'FAC301';
   tablas[7] := 'FAC303';
   tablas[8] := 'FAC305';
   tablas[9] := 'FAC309';
   tablas[10] := 'FAC311';
   tablas[11] := 'FAC401';
   tablas[12] := 'FAC503';
   tablas[13] := 'FAC505';
   tablas[14] := 'LOG314';
   tablas[15] := 'CXC301';

   For i := 1 To 15 Do
   Begin
      sSQL := ' UPDATE ' + tablas[i] + ' SET CLIEDES=' + QuotedStr(Copy(DMCXC.cdsClie.FieldByName('CLIEDES').AsString, 1, 60)) + ' WHERE CIAID=' + QuotedStr(DMCXC.cdsClie.FieldByName('CIAID').AsString) + ' AND CLAUXID=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLAUXID').AsString) + ' AND CLIEID=' + QuotedStr(DMCXC.cdsClie.FieldByName('CLIEID').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
   End;

End;

Procedure TFMaesClie.dbeNombresExit(Sender: TObject);
Begin
   If Length(dbeapepat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := dbeapepat.text;
   If Length(dbeapemat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(dbeapepat.text + ' ' + dbeapemat.text);
   If Length(dbeNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text);
   If Length(dbesNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text)
         + ' ' + dbesNombres.text);
End;

Procedure TFMaesClie.dbesNombresExit(Sender: TObject);
Begin
   If Length(dbeapepat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := dbeapepat.text;
   If Length(dbeapemat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(dbeapepat.text + ' ' + dbeapemat.text);
   If Length(dbeNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text);
   If Length(dbesNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text)
         + ' ' + dbesNombres.text);
End;

Procedure TFMaesClie.dbeapepatExit(Sender: TObject);
Begin
   If Length(dbeapepat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := dbeapepat.text;
   If Length(dbeapemat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(dbeapepat.text + ' ' + dbeapemat.text);
   If Length(dbeNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text);
   If Length(dbesNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text)
         + ' ' + dbesNombres.text);
End;

Procedure TFMaesClie.dbeapematExit(Sender: TObject);
Begin
   If Length(dbeapepat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := dbeapepat.text;
   If Length(dbeapemat.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(dbeapepat.text + ' ' + dbeapemat.text);
   If Length(dbeNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text);
   If Length(dbesNombres.text) > 0 Then
      DMCXC.cdsClie.FieldByName('CLIEDES').AsString := trim(trim(trim(dbeapepat.text + ' ' + dbeapemat.text) + ' ' + dbeNombres.text)
         + ' ' + dbesNombres.text);
End;

Procedure TFMaesClie.FormShow(Sender: TObject);
Var
   xSQL: String;
   dsClieClone: TwwDataSource;
   cdsClieClone: TwwClientDataSet;
Begin
   //DMCXC.cdsNivel.IndexFieldNames:='Nivel';
   //INICIO HPC_201205_CXC
   Filtracds(DMCXC.cdsTDocSunat, 'SELECT * FROM SUNAT101 ');
   dblcTDocIdentidad.DataSource := DMCXC.dsClie;
   dblcTDocIdentidad.DataField := 'TDOC_ID_SUNAT';
   dblcTDocIdentidad.LookupTable := DMCXC.cdsTDocSunat;
   dblcTDocIdentidad.LookupField := 'TIPDOCID';

   dblcTDocIdentidad.Selected.Clear;
   dblcTDocIdentidad.Selected.Add('TIPDOCID'#9'3'#9'Id'#9'F');
   dblcTDocIdentidad.Selected.Add('TIPDOCDES'#9'20'#9'Descripción'#9'F');
   //FIN HPC_201205_CXC
   dsClieClone := TwwDataSource.create(self);
   cdsClieclone := TwwClientDataSet.create(self);
   cdsClieClone.CloneCursor(DMCXC.cdsClie, False);
   dblcdGrupo.LookupTable := cdsClieClone;
   dblcdGrupo.LookupField := 'GRUPOID';

   pcMaestro.ActivePageIndex := 0;
   Z2bbtnNuevo.Enabled := False;
   If DMCXC.wModo = 'A' Then
   Begin
      dblcDeparta.Enabled := True;
      dblcdProvinc.Enabled := True;
      dblcdDistrito.Enabled := True;
      LimpiaEdits;
      RegistroNuevo;
   End
   Else
   Begin
      wModif := 'S';
      DMCXC.cdsClie.Edit;
      LimpiaEdits;

      dblcCiaExit(Sender);
      Try
         dblcPaisExit(Sender);
         dblcDepartaExit(Sender);
         dblcdProvincExit(Sender);
         dblcdDistritoExit(Sender);
      Except
      End;
      dblcVendeExit(Sender);
      dblcConPagoExit(Sender);
      dblcTipPerExit(Sender);
      dblcGiroExit(Sender);
      dblcClasifExit(Sender);
      dblcVinculoExit(Sender);
      dblcSecEcoExit(Sender);
      dblcCIUUExit(Sender);
      dblcClAuxExit(Sender);
      Try
         dblcSecVtaExit(Sender);
      Except
      End;
      dblcZonVtaExit(Sender);
      dblcLPrecioExit(Sender);
      dblcSituacionExit(Sender);
      dblcClAux.Enabled := False;
      dbeClie.Enabled := False;
     //dbeRazSoc.SetFocus;

      xCliedes := DMCXC.cdsClie.FieldByName('CLIEDES').AsString;

      xSQL := 'Select * From CXC403 Where CLIEID=' + QuotedStr(dbeClie.Text) +
         ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsLineaCredito.Close;
      DMCXC.cdsLineaCredito.DataRequest(xSQL);
      DMCXC.cdsLineaCredito.Open;
      DMCXC.cdsLineaCredito.IndexFieldNames := 'CIAID;CLIEID;ULTFECHA';

      xSQL := 'Select * From FAC110 Where CLIEID=' + QuotedStr(dbeClie.Text) + ' AND CIAID=' + QuotedStr(dblcCia.text);
      DMCXC.cdsDireccion.Close;
      DMCXC.cdsDireccion.DataRequest(xSQL);
      DMCXC.cdsDireccion.Open;

      xSQL := 'Select * From TGE210 Where CLIEID=' + '''' + dbeClie.Text + '''';
      DMCXC.cdsMiemEmpre.Close;
      DMCXC.cdsMiemEmpre.DataRequest(xSQL);
      DMCXC.cdsMiemEmpre.Open;

      xSQL := 'Select * From TGE211 Where CLIEID=' + '''' + dbeClie.Text + '''';
      DMCXC.cdsBienes.Close;
      DMCXC.cdsBienes.DataRequest(xSQL);
      DMCXC.cdsBienes.Open;

      xSQL := 'Select * From TGE218 Where CLIEID=' + '''' + dbeClie.Text + '''';
      DMCXC.cdsClieComent.Close;
      DMCXC.cdsClieComent.DataRequest(xSQL);
      DMCXC.cdsClieComent.Open;
      dbeComentario.text := DMCXC.cdsClieComent.FieldByName('CLIECOMEN').AsString;
      DMCXC.cdsClieComent.Edit;
   End;
End;

Procedure TFMaesClie.FormCreate(Sender: TObject);
Begin
   DMCXC.FiltraTabla(DMCXC.cdsVende, 'CXC203', 'VeId');
   CargaDatasource;
End;

Procedure TFMaesClie.CargaDataSource;
Begin
   dbeTelef.DataSource := DMCXC.dsClie;
   dbeFax.DataSource := DMCXC.dsClie;
   dbeMail.DataSource := DMCXC.dsClie;
   dbeAbr.DataSource := DMCXC.dsClie;
   dbeDocIdentidad.DataSource := DMCXC.dsClie;
   dbeGirador.DataSource := DMCXC.dsClie;
   dbeRepres.DataSource := DMCXC.dsClie;
   dblcVinculo.DataSource := DMCXC.dsClie;
   dblcGiro.DataSource := DMCXC.dsClie;
   dblcClasif.DataSource := DMCXC.dsClie;
   dblcSituacion.DataSource := DMCXC.dsClie;
   dbeNombres.DataSource := DMCXC.dsClie;
   dbesNombres.DataSource := DMCXC.dsClie;
   dbeapepat.DataSource := DMCXC.dsClie;
   dbeapemat.DataSource := DMCXC.dsClie;
   dbeDirCom.DataSource := DMCXC.dsClie;
   dbeDirLeg.DataSource := DMCXC.dsClie;
   dblcPais.DataSource := DMCXC.dsClie;
   dblcDeparta.DataSource := DMCXC.dsClie;
   dblcSecVta.DataSource := DMCXC.dsClie;
   dblcdDistrito.DataSource := DMCXC.dsClie;
   dblcdProvinc.DataSource := DMCXC.dsClie;
   dblcZonVta.DataSource := DMCXC.dsClie;
   dblcVende.DataSource := DMCXC.dsClie;
   dbeContac.DataSource := DMCXC.dsClie;
   dblcConPago.DataSource := DMCXC.dsClie;
   dbeCapSoc.DataSource := DMCXC.dsClie;
   dblcSecEco.DataSource := DMCXC.dsClie;
   dbeGarantias.DataSource := DMCXC.dsClie;
   dblcCIUU.DataSource := DMCXC.dsClie;
   dbeAvalNomb.DataSource := DMCXC.dsClie;
   dbeAvalDir.DataSource := DMCXC.dsClie;
   dbeAvalDoc.DataSource := DMCXC.dsClie;
   dbeAvalTelf.DataSource := DMCXC.dsClie;
   dbgLineaCredito.DataSource := DMCXC.dsLineaCredito;
   dbeLineaCreditoMax.DataSource := DMCXC.dsLineaCredito;
   dbdtpUltFecha.DataSource := DMCXC.dsLineaCredito;
   dbeLineaCreditoMin.DataSource := DMCXC.dsLineaCredito;
   dblcTMonid.DataSource := DMCXC.dsLineaCredito;
   dblcMoneda.DataSource := DMCXC.dsClie;
   dbeCredMax.DataSource := DMCXC.dsClie;
   dbeCredMin.DataSource := DMCXC.dsClie;
   dblcLPrecio.DataSource := DMCXC.dsClie;
   dbgLugarEntrega.DataSource := DMCXC.dsDireccion;
   dbeIdDireccionEntrega.DataSource := DMCXC.dsDireccion;
   dbeDirecionEntrega.DataSource := DMCXC.dsDireccion;
   dblcdDistritoLE.DataSource := DMCXC.dsDireccion;
   dblcZonaLE.DataSource := DMCXC.dsDireccion;
   dbgMiembros.DataSource := DMCXC.dsMiemEmpre;
   dbeMiembro.DataSource := DMCXC.dsMiemEmpre;
   dbeNombre.DataSource := DMCXC.dsMiemEmpre;
   dblcOcupac.DataSource := DMCXC.dsMiemEmpre;
   dbeSueldo.DataSource := DMCXC.dsMiemEmpre;
   dbeDomicMiembro.DataSource := DMCXC.dsMiemEmpre;
   dbeTelfMiembro.DataSource := DMCXC.dsMiemEmpre;
   dbgBienes.DataSource := DMCXC.dsBienes;
   dbeBien.DataSource := DMCXC.dsBienes;
   dbeDescripcion.DataSource := DMCXC.dsBienes;
   dblcTipoBien.DataSource := DMCXC.dsBienes;
   dbeTipoBien.DataSource := DMCXC.dsBienes;
   dbeValorMiembro.DataSource := DMCXC.dsBienes;
   dbmDetalleBien.DataSource := DMCXC.dsBienes;
   dblcClAux.DataSource := DMCXC.dsClie;
   dbeClie.DataSource := DMCXC.dsClie;
   dblcTipPer.DataSource := DMCXC.dsClie;
   dblcCia.DataSource := DMCXC.dsClie;
   dbeRuc.DataSource := DMCXC.dsClie;
   dbeRazSoc.DataSource := DMCXC.dsClie;
   dblcdGrupo.DataSource := DMCXC.dsClie;

   cbActivo.DataSource := DMCXC.dsClie;

   dblcVinculo.LookupTable := DMCXC.cdsVinculo;
   dblcGiro.LookupTable := DMCXC.cdsGiro;
   dblcClasif.LookupTable := DMCXC.cdsClasif;
   dblcSituacion.LookupTable := DMCXC.cdsSitClie;
   dblcPais.LookupTable := DMCXC.cdsPais;
   dblcDeparta.LookupTable := DMCXC.cdsDpto;
   dblcSecVta.LookupTable := DMCXC.cdsZona;
   dblcdDistrito.LookupTable := DMCXC.cdsDistrito;
   dblcdProvinc.LookupTable := DMCXC.cdsProvinc;
   dblcZonVta.LookupTable := DMCXC.cdsZona1;
   dblcVende.LookupTable := DMCXC.cdsVende;
   dblcConPago.LookupTable := DMCXC.cdsCondP;
   dblcSecEco.LookupTable := DMCXC.cdsSecEco;
   dblcCIUU.LookupTable := DMCXC.cdsCIUU;
   dblcTMonid.LookupTable := DMCXC.cdsTMon;
   dblcMoneda.LookupTable := DMCXC.cdsTMon;
   dblcLPrecio.LookupTable := DMCXC.cdsTLista;
   dblcdDistritoLE.LookupTable := DMCXC.cdsDistrito;
   dblcZonaLE.LookupTable := DMCXC.cdsZona1;
   dblcOcupac.LookupTable := DMCXC.cdsCargos;
   dblcTipoBien.LookupTable := DMCXC.cdsTipBien;
   dblcClAux.LookupTable := DMCXC.cdsClAux;
   dblcTipPer.LookupTable := DMCXC.cdsTipPer;
   dblcCia.LookupTable := DMCXC.cdsCia;
End;

Procedure TFMaesClie.pcMaestroChanging(Sender: TObject;
   Var AllowChange: Boolean);
Begin
   AllowChange := True;
   If pnlLineaCredito.Visible Then
   Begin
      AllowChange := False;
      pcMaestro.ActivePageIndex := 3;
   End;

   If pnlLugarEntrega.Visible Then
   Begin
      AllowChange := False;
      pcMaestro.ActivePageIndex := 4;
   End;

   If (pnlMiembros.Visible) Or (pnlBienes.Visible) Then
   Begin
      AllowChange := False;
      pcMaestro.ActivePageIndex := 5;
   End;

End;

Procedure TFMaesClie.dbeDocIdentidadExit(Sender: TObject);
//INICIO HPC_201205_CXC
Var
   xsSql: String;
//FIN HPC_201205_CXC
Begin
   If (sPerNat = 'S') And (dbeDocIdentidad.text = '') Then
   Begin
      dbeDocIdentidad.SetFocus;
      ShowMessage('Persona Natural Exige Nº de Documento');
      Exit;
   End;

   //INICIO HPC_201205_CXC
   If fg_ValidaDocIdentidad(DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString) = False Then
   Begin
      dbeDocIdentidad.SetFocus;
      Exit;
   End;

   (*if (length(trim(dbeDocIdentidad.text))>0) and (length(trim(dbeDocIdentidad.text))<>8) then
   begin
      ShowMessage('Longitud del DNI es incorrecta');
      dbeDocIdentidad.SetFocus;
      exit;
   end;*)
   xsSql := 'CLIEID <> ' + QuotedStr(dbeClie.text) + ' AND CLIEDNI=' + QuotedStr(dbeDocIdentidad.text);
   //FIN HPC_201205_CXC
   If (dbeDocIdentidad.text <> '') Then
      //INICIO HPC_201205_CXC
      //if dbeDocIdentidad.text=DMCXC.BuscaQry('dspTGE','TGE204','CLIEID,CLIEDES,CLIEDNI','CLIEID<>'+QuotedStr(dbeClie.text)+' AND CLIEDNI='+QuotedStr(dbeDocIdentidad.text),'CLIEDNI') then
      If dbeDocIdentidad.text = DMCXC.BuscaQry('dspTGE', 'TGE204', 'CLIEID,CLIEDES,CLIEDNI', xsSql, 'CLIEDNI') Then
      //FIN HPC_201205_CXC
      Begin
         dbeDocIdentidad.SetFocus;
         ShowMessage('DNI fue asignado al Cliente: ' + DMCXC.cdsQry.FieldByName('CLIEID').AsString + ' ' + DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
         Exit;
      End;
End;
//INICIO HPC_201205_CXC

Function TFMaesClie.fg_ObtieneCodCliente: String;
Var
   xsInicio: String;
   xnSecuencia: Double;
   xsCodClienteNew: String;
   xsFinal: String;
   xsSql: String;
Begin
   xnSecuencia := 1;
   xsFinal := 'NO';
   While xsFinal = 'NO' Do
   Begin
      xsCodClienteNew := 'C' + StringOfChar('0', 7 - Length(FloatToStr(xnSecuencia))) + FloatToStr(xnSecuencia);
      xsSql := ' CLIEID = ' + QuotedStr(xsCodClienteNew);
      If Length(DMCXC.BuscaQRY('dspTGE', 'TGE204', 'CLIEID', xsSql, 'CLIEID')) > 0 Then
      Begin
         xnSecuencia := xnSecuencia + 1;
      End
      Else
      Begin
         xsFinal := 'SI';
         Result := xsCodClienteNew;
      End;
   End;
End;

Procedure TFMaesClie.fg_HabilitaTipoPersona(wgTipoPersona: String);
Begin
   If (wgTipoPersona = '01') Then //Persona Natural
   Begin
      lblRuc.Enabled := False;
      lblRazonSocial.Enabled := False;
      lblGrupo.Enabled := False;
      lblNombreCorto.Enabled := False;

      dbeRuc.Enabled := False;
      dbeRazSoc.Enabled := False;
      dblcdGrupo.Enabled := False;
      dbeAbr.Enabled := False;
      dbeTelef.Enabled := True;
      dbeFax.Enabled := True;
      dbeDocIdentidad.Enabled := True;

      lblNombre.Enabled := True;
      lblNombre2.Enabled := True;
      lblApPaterno.Enabled := True;
      lblApMaterno.Enabled := True;
      dbeNombres.Enabled := True;
      dbesNombres.Enabled := True;
      dbeapepat.Enabled := True;
      dbeapemat.Enabled := True;

      lblTDocIdentidad.Enabled := False;
      lblDocIdentidad.Enabled := True;
      dblcTDocIdentidad.Enabled := False;
      dbeDocIdentidad.Enabled := True;

   End
   Else
      If (wgTipoPersona = '02') Then //Persona Juridica
      Begin
         lblRuc.Enabled := True;
         lblRazonSocial.Enabled := True;
         lblGrupo.Enabled := False;
         lblNombreCorto.Enabled := True;

         dbeRuc.Enabled := True;
         dbeRazSoc.Enabled := True;
         dblcdGrupo.Enabled := False;
         dbeAbr.Enabled := True;
         dbeTelef.Enabled := True;
         dbeFax.Enabled := True;
         dbeDocIdentidad.Enabled := False;

         lblNombre.Enabled := False;
         lblNombre2.Enabled := False;
         lblApPaterno.Enabled := False;
         lblApMaterno.Enabled := False;
         dbeNombres.Enabled := False;
         dbesNombres.Enabled := False;
         dbeapepat.Enabled := False;
         dbeapemat.Enabled := False;

         lblTDocIdentidad.Enabled := False;
         lblDocIdentidad.Enabled := False;
         dblcTDocIdentidad.Enabled := False;
         dbeDocIdentidad.Enabled := False;
      End
      Else
         If (wgTipoPersona = '03') Then //No domiciliado
         Begin
            lblRuc.Enabled := False;
            lblRazonSocial.Enabled := False;
            lblGrupo.Enabled := False;
            lblNombreCorto.Enabled := False;

            dbeRuc.Enabled := False;
            dbeRazSoc.Enabled := False;
            dblcdGrupo.Enabled := False;
            dbeAbr.Enabled := False;
            dbeTelef.Enabled := True;
            dbeFax.Enabled := True;
            dbeDocIdentidad.Enabled := False;

            lblNombre.Enabled := True;
            lblNombre2.Enabled := True;
            lblApPaterno.Enabled := True;
            lblApMaterno.Enabled := True;
            dbeNombres.Enabled := True;
            dbesNombres.Enabled := True;
            dbeapepat.Enabled := True;
            dbeapemat.Enabled := True;

            lblTDocIdentidad.Enabled := True;
            lblDocIdentidad.Enabled := True;
            dblcTDocIdentidad.Enabled := True;
            dbeDocIdentidad.Enabled := True;
         End;
End;
//FIN HPC_201205_CXC

Procedure TFMaesClie.dblcTDocIdentidadExit(Sender: TObject);
Var
   xsSql: String;
Begin
   If Length(dblcTDocIdentidad.Text) = 0 Then Exit;
   xsSql := 'TIPDOCID=' + Quotedstr(dblcTDocIdentidad.Text);
   edtTDocIdentidad.Text := DMCXC.BuscaQry('dspTGE', 'SUNAT101', '*', xsSql, 'TIPDOCDES');
   //DMCXC.cdsClie.FieldByName('CLIEDNI').AsString := '' ;

   dbeDocIdentidad.MaxLength := DMCXC.cdsQry.FieldByName('VALIDALONG').Value;

End;

Procedure TFMaesClie.fg_DefaultCampos(wgTipoPersona: String);
Begin
   DMCXC.cdsTDocSunat.Filter := '';
   DMCXC.cdsTDocSunat.Filtered := True;
   If wgTipoPersona = '01' Then //Persona Natural
   Begin
      DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString := '01';
      DMCXC.cdsClie.FieldByName('CLIERUC').AsString := '';
      dblcTDocIdentidadExit(dblcTDocIdentidad);
   End
   Else
      If wgTipoPersona = '02' Then //Persona Jurídica
      Begin
         DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString := '06';
         DMCXC.cdsClie.FieldByName('CLIEAPEPAT').AsString := '';
         DMCXC.cdsClie.FieldByName('CLIEAPEMAT').AsString := '';
         DMCXC.cdsClie.FieldByName('CLIENOMBRE').AsString := '';
         DMCXC.cdsClie.FieldByName('CLIENOMBRE1').AsString := '';
         dblcTDocIdentidadExit(dblcTDocIdentidad);
      End
      Else
         If wgTipoPersona = '03' Then //no domiciliada
         Begin
            DMCXC.cdsTDocSunat.Filter := 'TIPDOCID = ' + QuotedStr('04') + ' OR TIPDOCID = ' + QuotedStr('07');
            DMCXC.cdsTDocSunat.Filtered := True;
            DMCXC.cdsClie.FieldByName('TDOC_ID_SUNAT').AsString := '07';
            DMCXC.cdsClie.FieldByName('CLIERUC').AsString := '';
            dblcTDocIdentidadExit(dblcTDocIdentidad);
         End;
End;

Function TFMaesClie.fg_ValidaDocIdentidad(wgTipoDoc: String): Boolean;
Var
   xsSql: String;
   xnLongitudCampo: Integer;
   xsMensaje: String;
Begin
   xsSql := 'TIPDOCID=' + Quotedstr(wgTipoDoc);
   xnLongitudCampo := StrToInt(DMCXC.BuscaQry('dspTGE', 'SUNAT101', '*', xsSql, 'VALIDALONG'));

   xsMensaje := '';
   If (wgTipoDoc = '01') And (Length(DMCXC.cdsClie.FieldByName('CLIEDNI').AsString) <> xnLongitudCampo) Then
   Begin
      xsMensaje := 'El DNI debe tener ' + IntToStr(xnLongitudCampo) + ' dígitos';
   End;

   If (wgTipoDoc = '06') And (Length(DMCXC.cdsClie.FieldByName('CLIEDNI').AsString) <> xnLongitudCampo) Then
   Begin
      xsMensaje := 'El RUC debe tener ' + IntToStr(xnLongitudCampo) + ' dígitos';
   End;

   If Length(xsMensaje) > 0 Then
   Begin
      ShowMessage(xsMensaje);
      Result := False;
   End
   Else
   Begin
      Result := True;
   End;

End;

End.

