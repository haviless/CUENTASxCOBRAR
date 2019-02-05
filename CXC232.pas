Unit CxC232;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, wwdblook, ExtCtrls, DB, Buttons, Wwdbdlg, Grids, Wwdbigrd,
   Wwdbgrid, Mask, wwdbedit, Wwdbspin, oaVariables;

Type
   TFNLetras = Class(TForm)
      pnlCabecera: TPanel;
      Label1: TLabel;
      dblcCIA: TwwDBLookupCombo;
      edtCIA: TEdit;
      dblcUbicacion: TwwDBLookupCombo;
      Label2: TLabel;
      Label3: TLabel;
      dblcSituacion: TwwDBLookupCombo;
      edtUbicacion: TEdit;
      edtSituacion: TEdit;
      Label4: TLabel;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      Label5: TLabel;
      dblcZona: TwwDBLookupCombo;
      edtZona: TEdit;
      z2bbtNuevo: TBitBtn;
      z2bbtOk: TBitBtn;
      z2bbtCancelar: TBitBtn;
      pnlDetalle: TPanel;
      dbgAsiento: TwwDBGrid;
      pnlRegitro: TPanel;
      Label7: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      dblcdCuenta: TwwDBLookupComboDlg;
      dblcDebeHabe: TwwDBLookupCombo;
      dblcdTipoDest: TwwDBLookupCombo;
      dblcRelacion: TwwDBLookupCombo;
      dbeOrden: TwwDBSpinEdit;
      Label11: TLabel;
      dblcdTDiario: TwwDBLookupCombo;
      edtTDiario: TEdit;
      dbgAsientoIButton: TwwIButton;
      bbtnROk: TBitBtn;
      bbtnRCancel: TBitBtn;
      StaticText1: TStaticText;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure FormShow(Sender: TObject);
      Procedure z2bbtCancelarClick(Sender: TObject);
      Procedure z2bbtNuevoClick(Sender: TObject);
      Procedure z2bbtOkClick(Sender: TObject);
      Procedure dblcCIAExit(Sender: TObject);
      Procedure dblcUbicacionExit(Sender: TObject);
      Procedure dblcSituacionExit(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure dblcZonaExit(Sender: TObject);
      Procedure dblcdCuentaExit(Sender: TObject);
      Procedure FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
      Procedure dblcDebeHabeExit(Sender: TObject);
      Procedure dblcdTDiarioExit(Sender: TObject);
      Procedure bbtnRCancelClick(Sender: TObject);
      Procedure dbgAsientoIButtonClick(Sender: TObject);
      Procedure bbtnROkClick(Sender: TObject);
      Procedure dbgAsientoKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgAsientoDblClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure InicializaDatos;
      Procedure Valida;
      Procedure ValidaExisteCabecera;
      Function GeneraItem(pCIA, pUbica, pSitua, pTMon, pCuenta, pZona, pDebeHabe: String): String;
      Procedure ActivaControles(xEstado: boolean = True);
   End;

Var
   FNLetras: TFNLetras;
   xModo: String;
Implementation

Uses CxCDM;
{$R *.DFM}

Procedure TFNLetras.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFNLetras.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFNLetras.FormShow(Sender: TObject);
Var
   sSQL: String;
Begin
   dblcdTipoDest.Selected.Clear;
   dblcdTipoDest.Selected.Add('TIPDEST'#9'2'#9'Origen/Destino'#9'F');
   dblcdTipoDest.Selected.Add('TIPDESTDES'#9'40'#9'Descripción'#9'F');
   dblcdTipoDest.Lookupfield := 'TIPDEST';

   dblcRelacion.Selected.Clear;
   dblcRelacion.Selected.Add('TIPREL'#9'2'#9'Relación'#9'F');
   dblcRelacion.Selected.Add('TIPRELDES'#9'40'#9'Descripción'#9'F');
   dblcRelacion.Lookupfield := 'TIPREL';

  //  z2bbtNuevo.enabled:=False;

   If DMCXC.wModo = 'A' Then
   Begin
      InicializaDatos;
      pnlCabecera.Enabled := True;
      pnlDetalle.Enabled := False;
      ActivaControles();
      sSQL := ' SELECT * FROM CXC205 ' +
         ' WHERE CIAID=' + QuotedStr('XX') +
         ' AND SITUAID=' + QuotedStr('XX') +
         ' AND UBICAID=' + QuotedStr('XX') +
         ' AND TMONID=' + QuotedStr('XX') +
         ' AND ZONA=' + QuotedStr('XX') +
         ' AND TDIARID=' + QuotedStr('XX') +
         ' AND TIPCTA<>''D'' ' +
         ' ORDER BY ORDEN ';
      DMCXC.cdsNLetras.Close;
      DMCXC.cdsNLetras.DataRequest(sSQL);
      DMCXC.cdsNLetras.Open;

      dbgAsiento.Selected.Clear;
      dbgAsiento.Selected.Add('CIAID'#9'4'#9'Cia'#9'F');
      dbgAsiento.Selected.Add('UBICAID'#9'3'#9'Ubi.'#9'F');
      dbgAsiento.Selected.Add('SITUAID'#9'3'#9'Sit.'#9'F');
      dbgAsiento.Selected.Add('SITUADES'#9'12'#9'Descripción'#9'F');
      dbgAsiento.Selected.Add('CUENTAID'#9'12'#9'Cuenta~Contable'#9'F');
      dbgAsiento.Selected.Add('CTADES'#9'26'#9'Descripción'#9'F');
      dbgAsiento.Selected.Add('TMONID'#9'2'#9'Tipo de~Moneda'#9'F');
      dbgAsiento.Selected.Add('ZONA'#9'4'#9'Zona'#9'F');
      dbgAsiento.Selected.Add('DH'#9'4'#9'D/H'#9'F');
      dbgAsiento.Selected.Add('TIPDEST'#9'4'#9'Origen/Destino'#9'F');
      dbgAsiento.Selected.Add('TIPOREL'#9'4'#9'Relación'#9'F');
      dbgAsiento.Selected.Add('ORDEN'#9'2'#9'Orden'#9'F');

      dbgAsiento.RedrawGrid;
   End
   Else
   Begin
      dblcCIA.text := DMCXC.cdsReporte.FieldByName('CIAID').AsString;
      edtCia.text := DMCXC.cdsReporte.FieldByName('CIADES').AsString;
      dblcUbicacion.text := DMCXC.cdsReporte.FieldByName('UBICAID').AsString;
      edtUbicacion.text := DMCXC.cdsReporte.FieldByName('UBICADES').AsString;
      dblcSituacion.text := DMCXC.cdsReporte.FieldByName('SITUAID').AsString;
      edtSituacion.text := DMCXC.cdsReporte.FieldByName('SITUADES').AsString;
      dblcTMon.text := DMCXC.cdsReporte.FieldByName('TMONID').AsString;
      edtTMon.text := DMCXC.cdsReporte.FieldByName('TMONABR').AsString;
      dblcZona.text := DMCXC.cdsReporte.FieldByName('ZONA').AsString;
      edtZona.text := DMCXC.cdsReporte.FieldByName('TVTADES').AsString;
      dblcdTDiario.text := DMCXC.cdsReporte.FieldByName('TDIARID').AsString;
      edtTDiario.text := DMCXC.cdsReporte.FieldByName('TDIARDES').AsString;

      sSQL := ' SELECT * FROM CXC205 ' +
         ' WHERE CIAID=' + QuotedStr(dblcCIA.text) +
         ' AND SITUAID=' + QuotedStr(dblcSituacion.text) +
         ' AND UBICAID=' + QuotedStr(dblcUbicacion.text) +
         ' AND TMONID=' + QuotedStr(dblcTMon.text) +
         ' AND ZONA=' + QuotedStr(dblcZona.text) +
         ' AND TDIARID=' + QuotedStr(dblcdTDiario.text) +
         ' AND TIPCTA<>''D'' ' +
         ' ORDER BY ORDEN ';
      DMCXC.cdsNLetras.Close;
      DMCXC.cdsNLetras.DataRequest(sSQL);
      DMCXC.cdsNLetras.Open;

      dbgAsiento.Selected.Clear;
      dbgAsiento.Selected.Add('CIAID'#9'4'#9'Cia'#9'F');
      dbgAsiento.Selected.Add('UBICAID'#9'3'#9'Ubi.'#9'F');
      dbgAsiento.Selected.Add('SITUAID'#9'3'#9'Sit.'#9'F');
      dbgAsiento.Selected.Add('SITUADES'#9'12'#9'Descripción'#9'F');
      dbgAsiento.Selected.Add('CUENTAID'#9'12'#9'Cuenta~Contable'#9'F');
      dbgAsiento.Selected.Add('CTADES'#9'26'#9'Descripción'#9'F');
      dbgAsiento.Selected.Add('TMONID'#9'2'#9'Tipo de~Moneda'#9'F');
      dbgAsiento.Selected.Add('ZONA'#9'4'#9'Zona'#9'F');
      dbgAsiento.Selected.Add('DH'#9'4'#9'D/H'#9'F');
      dbgAsiento.Selected.Add('TIPDEST'#9'4'#9'Origen/Destino'#9'F');
      dbgAsiento.Selected.Add('TIPOREL'#9'4'#9'Relación'#9'F');
      dbgAsiento.Selected.Add('ORDEN'#9'2'#9'Orden'#9'F');
      dbgAsiento.RedrawGrid;
      ActivaControles(False);
      pnlCabecera.Enabled := False;
      pnlDetalle.Enabled := True;
   End;

End;

Procedure TFNLetras.InicializaDatos;
Begin
   dblcCIA.Clear;
   dblcUbicacion.Clear;
   dblcSituacion.Clear;
   dblcTmon.Clear;
   dblcZona.Clear;
   dblcdTDiario.Clear;

   edtCIA.Clear;
   edtUbicacion.Clear;
   edtSituacion.Clear;
   edtTMon.Clear;
   edtZona.Clear;
   edtTDiario.Clear;

  //edtItem.Clear;
  //edtTipo.Clear;
End;

Procedure TFNLetras.z2bbtCancelarClick(Sender: TObject);
Begin
   If DMCXC.cdsNLetras.State = dsInsert Then
      DMCXC.cdsNLetras.Delete;
   Close;
End;

Procedure TFNLetras.z2bbtNuevoClick(Sender: TObject);
Begin
   InicializaDatos;
   DMCXC.cdsNLetras.Insert;
   Z2bbtNuevo.Enabled := False;
End;

Procedure TFNLetras.z2bbtOkClick(Sender: TObject);
Var
   sSQL: String;
   sCIA, sUbica, sSitua, sTMon, sCuenta, sZona, sDebeHabe, sTDiar: String;
Begin
   Valida;
   ValidaExisteCabecera;
   sCIA := dblcCIA.text;
   sUbica := dblcUbicacion.text;
   sSitua := dblcSituacion.text;
   sTMon := dblcTMon.text;
   sZona := dblcZona.text;
   sTDiar := dblcdTDiario.text;
//    sDebeHabe:=DMCXC.cdsNLetras.FieldByName('DH').AsString;
//    sCuenta  :=DMCXC.cdsNLetras.FieldByName('CUENTAID').AsString;

   sSQL := ' SELECT * FROM CXC205 ' +
      ' WHERE CIAID=' + QuotedStr(sCIA) +
      ' AND SITUAID=' + QuotedStr(sSitua) +
      ' AND UBICAID=' + QuotedStr(sUbica) +
      ' AND TMONID=' + QuotedStr(sTMon) +
      ' AND ZONA=' + QuotedStr(sZona) +
      ' AND TDIARID=' + QuotedStr(sTDiar) +
      ' ORDER BY ORDEN ';
   DMCXC.cdsNLetras.Close;
   DMCXC.cdsNLetras.DataRequest(sSQL);
   DMCXC.cdsNLetras.Open;

   dbgAsiento.Selected.Clear;
   dbgAsiento.Selected.Add('CIAID'#9'4'#9'Cia'#9'F');
   dbgAsiento.Selected.Add('UBICAID'#9'3'#9'Ubi.'#9'F');
   dbgAsiento.Selected.Add('SITUAID'#9'3'#9'Sit.'#9'F');
   dbgAsiento.Selected.Add('SITUADES'#9'12'#9'Descripción'#9'F');
   dbgAsiento.Selected.Add('CUENTAID'#9'12'#9'Cuenta~Contable'#9'F');
   dbgAsiento.Selected.Add('CTADES'#9'26'#9'Descripción'#9'F');
//  dbgAsiento.Selected.Add('TIPCTA'#9'2'#9'Tipo~Cuenta');
   dbgAsiento.Selected.Add('TMONID'#9'2'#9'Tipo de~Moneda'#9'F');
   dbgAsiento.Selected.Add('ZONA'#9'4'#9'Zona'#9'F');
   dbgAsiento.Selected.Add('DH'#9'4'#9'D/H'#9'F');
   dbgAsiento.Selected.Add('TIPDEST'#9'4'#9'Origen/Destino'#9'F');
   dbgAsiento.Selected.Add('TIPOREL'#9'4'#9'Relación'#9'F');
   dbgAsiento.Selected.Add('ORDEN'#9'2'#9'Orden'#9'F');

   dbgAsiento.RedrawGrid;
   ActivaControles(False);
   pnlCabecera.Enabled := False;
   pnlDetalle.Enabled := True;

   dbgAsientoIButtonClick(Nil);

{

  if DMCXC.wModo='A' then
  begin
    //DMCXC.cdsNLetras.FieldByName('ITEM').AsString:=GeneraItem(sCIA,sUbica,sSitua,sTMon,sCuenta,sZona,sDebeHabe);
    DMCXC.cdsNLetras.FieldByName('SITUADES').AsString:=DMCXC.DisplayDescrip('CXC104','SITUADES','SITUAID',dblcSituacion.text);
    DMCXC.cdsNLetras.FieldByName('CTADES').AsString:=DMCXC.DisplayDescrip('TGE202','CTADES','CUENTAID',dblcdCuenta.text);
    //DMCXC.cdsNLetras.FieldByName('TIPCTA').AsString:=edtTipo.text;

    Z2bbtNuevo.Enabled:=True;

  end;

  Screen.Cursor:=crHourGlass;
  DMCXC.cdsNLetras.ApplyUpdates(0);

  ShowMessage('Grabación Exitosa');

  if DMCXC.wModo='A' then
     Z2bbtNuevo.Enabled:=True;
  Screen.Cursor:=crDefault;}
End;

Function TFNLetras.GeneraItem(pCIA, pUbica, pSitua, pTMon, pCuenta, pZona, pDebeHabe: String): String;
Var
   sSQL: String;
Begin
   sSQL := ' SELECT MAX(ITEM) ITEM FROM CXC205 ' +
      ' WHERE CIAID=' + QuotedStr(pCIA) +
      ' AND UBICAID=' + QuotedStr(pUbica) +
      ' AND SITUAID=' + QuotedStr(pSitua) +
      ' AND TMONID=' + QuotedStr(pTMon) +
      ' AND CUENTAID=' + QuotedStr(pCuenta) +
      ' AND ZONA=' + QuotedStr(pZona) +
      ' AND DH=' + QuotedStr(pDebeHabe);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;

   If DMCXC.cdsQry.FieldByName('ITEM').IsNull Then
      result := '01'
   Else
      result := StrZero(FloatToStr(DMCXC.cdsQry.FieldByName('ITEM').AsFloat + 1), 2);
End;

Procedure TFNLetras.Valida;
Begin
   If length(edtCia.text) = 0 Then
   Begin
      dblcCIA.SetFocus;
      Raise Exception.Create('Seleccione Compañía');
   End;
   If length(edtUbicacion.text) = 0 Then
   Begin
      dblcUbicacion.SetFocus;
      Raise Exception.Create('Seleccione Ubicación');
   End;
   If length(edtSituacion.text) = 0 Then
   Begin
      dblcSituacion.SetFocus;
      Raise Exception.Create('Seleccione Situación');
   End;
{  if length(dblcdCuenta.text)=0 then
  begin
    dblcdCuenta.SetFocus;
    raise Exception.Create('Seleccione Cuenta Contable');
  end;}
  {if length(edtTipo.text)=0 then
  begin
    edtTipo.SetFocus;
    raise Exception.Create('Ingrese Tipo');
  end;}
   If length(edtTMon.text) = 0 Then
   Begin
      dblcTMon.SetFocus;
      Raise Exception.Create('Seleccione Moneda');
   End;
   If length(edtZona.text) = 0 Then
   Begin
      dblcZona.SetFocus;
      Raise Exception.Create('Seleccione Zona');
   End;
{  if length(dblcDebeHabe.text)=0 then
  begin
    dblcDebeHabe.SetFocus;
    raise Exception.Create('Seleccione Debe o Haber');
  end;}
   If length(dblcdTDiario.text) = 0 Then
   Begin
      dblcdTDiario.SetFocus;
      Raise Exception.Create('Seleccione Tipo de Diario');
   End;
{  if length(dbeOrden.Text)=0 then
  begin
    dbeOrden.SetFocus;
    raise Exception.Create('Ingrese Orden');
  end;}

End;

Procedure TFNLetras.dblcCIAExit(Sender: TObject);
Begin
   edtCia.text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCIA.text);
   If edtCia.text = '' Then
   Begin
      dblcCIA.setFocus;
      Raise Exception.Create('Ingrese Compañía');
   End;
   DMCXC.cdsPlanCta.Filter := ' CIAID=' + QuotedStr(dblcCIA.text) + ' AND CTA_DET=''S'' AND CTA_MOV=''S'' ';
   DMCXC.cdsPlanCta.Filtered := True;
End;

Procedure TFNLetras.dblcUbicacionExit(Sender: TObject);
Begin
   edtUbicacion.text := DMCXC.DisplayDescrip('CXC105', 'UBICADES', 'UBICAID', dblcUbicacion.text);
   If edtUbicacion.text = '' Then
   Begin
      dblcUbicacion.setFocus;
      Raise Exception.Create('Ingrese Ubicación');
   End;

End;

Procedure TFNLetras.dblcSituacionExit(Sender: TObject);
Begin
   edtSituacion.text := DMCXC.DisplayDescrip('CXC104', 'SITUADES', 'SITUAID', dblcSituacion.text);
   If edtSituacion.text = '' Then
   Begin
      dblcSituacion.setFocus;
      Raise Exception.Create('Ingrese Situación');
   End;
End;

Procedure TFNLetras.dblcTMonExit(Sender: TObject);
Begin
   edtTMon.text := DMCXC.DisplayDescrip('TGE103', 'TMONDES', 'TMONID', dblcTMon.text);
   If edtTMon.text = '' Then
   Begin
      dblcTMon.setFocus;
      Raise Exception.Create('Ingrese Moneda');
   End;
End;

Procedure TFNLetras.dblcZonaExit(Sender: TObject);
Begin
   edtZona.text := DMCXC.DisplayDescrip('FAC105', 'TVTADES', 'TVTAID', dblcZona.text);
   If edtZona.text = '' Then
   Begin
      dblcZona.setFocus;
      Raise Exception.Create('Ingrese Zona');
   End;
End;

Procedure TFNLetras.dblcdCuentaExit(Sender: TObject);
//var sclase:string;
Begin
{  sClase:=Copy(DMCXC.cdsNLetras.FieldByName('CUENTAID').AsString,1,1);
  if sClase[1] in ['1','2','3','4','5','6','8'] then
    edtTipo.text:='P';
  if sClase[1] in ['0'] then
    edtTipo.text:='O';
  if sClase[1] in ['7','9'] then
    edtTipo.text:='D';}
End;

Procedure TFNLetras.FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
Begin
   DMCXC.cdsNLetras.CancelUpdates;
End;

Procedure TFNLetras.dblcDebeHabeExit(Sender: TObject);
Begin
   If dblcDebeHabe.text = '' Then
   Begin
      dblcDebeHabe.setFocus;
      Raise Exception.Create('Ingrese Debe/Haber');
   End;
End;

Procedure TFNLetras.dblcdTDiarioExit(Sender: TObject);
Begin
   edtTDiario.text := DMCXC.DisplayDescrip('TGE104', 'TDIARDES', 'TDIARID', dblcdTDiario.text);
   If edtTDiario.text = '' Then
   Begin
      dblcdTDiario.setFocus;
      Raise Exception.Create('Ingrese Tipo de Diario');
   End;
End;

Procedure TFNLetras.ActivaControles(xEstado: boolean);
Begin
   dblcCIA.Enabled := xEstado;
   dblcUbicacion.Enabled := xEstado;
   dblcSituacion.Enabled := xEstado;
   dblcTMon.Enabled := xEstado;
   dblcZona.Enabled := xEstado;
   dblcdTDiario.Enabled := xEstado;
End;

Procedure TFNLetras.bbtnRCancelClick(Sender: TObject);
Begin
   DMCXC.cdsNLetras.CancelUpdates;
   pnlRegitro.visible := false;
End;

Procedure TFNLetras.dbgAsientoIButtonClick(Sender: TObject);
Begin
   xModo := 'A';
   pnlRegitro.visible := True;
   DMCXC.cdsNLetras.Append;
   DMCXC.cdsNLetras.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdsNLetras.FieldByName('UBICAID').AsString := dblcUbicacion.text;
   DMCXC.cdsNLetras.FieldByName('SITUAID').AsString := dblcSituacion.text;
   DMCXC.cdsNLetras.FieldByName('TMONID').AsString := dblcTMon.text;
   DMCXC.cdsNLetras.FieldByName('ZONA').AsString := dblcZona.text;
   DMCXC.cdsNLetras.FieldByName('TDIARID').AsString := dblcdTDiario.text;
   DMCXC.cdsNLetras.FieldByName('SITUADES').AsString := edtSituacion.text;
   dblcdCuenta.SetFocus;
End;

Procedure TFNLetras.bbtnROkClick(Sender: TObject);
Begin
   If length(dblcdCuenta.text) = 0 Then
   Begin
      dblcdCuenta.SetFocus;
      Raise Exception.Create('Seleccione Cuenta Contable');
   End;
   If length(dblcDebeHabe.text) = 0 Then
   Begin
      dblcDebeHabe.SetFocus;
      Raise Exception.Create('Seleccione Debe o Haber');
   End;
   If length(dbeOrden.Text) = 0 Then
   Begin
      dbeOrden.SetFocus;
      Raise Exception.Create('Ingrese Orden');
   End;
   DMCXC.cdsNLetras.FieldByName('CTADES').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND CUENTAID=' + QuotedStr(dblcdCuenta.text), 'CTADES');
   DMCXC.cdsNLetras.Post;
   DMCXC.AplicaDatos(DMCXC.cdsNLetras, 'xx');
   If xModo = 'A' Then
      dbgAsientoIButtonClick(Nil);
   If xModo = 'M' Then
      pnlRegitro.visible := False;
End;

Procedure TFNLetras.ValidaExisteCabecera;
Var
   sSQL: String;
Begin
   sSQL := 'SELECT * FROM CXC205 WHERE ' +
      ' CIAID=' + QuotedStr(dblcCIA.text) +
      ' AND SITUAID=' + QuotedStr(dblcSituacion.text) +
      ' AND UBICAID=' + QuotedStr(dblcUbicacion.text) +
      ' AND TMONID=' + QuotedStr(dblcTMon.text) +
      ' AND ZONA=' + QuotedStr(dblcZona.text) +
      ' AND TDIARID=' + QuotedStr(dblcdTDiario.text);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      Raise Exception.Create('Ya existe esta Cabecera de Dinámica Contable');
   End;
End;

Procedure TFNLetras.dbgAsientoKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If DMCXC.cdsNLetras.RecordCount = 0 Then Exit;

      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsNLetras.Delete;
         DMCXC.AplicaDatos(DMCXC.cdsNLetras, 'xx');
      End;
   End;
End;

Procedure TFNLetras.dbgAsientoDblClick(Sender: TObject);
Begin
   If DMCXC.cdsNLetras.RecordCount = 0 Then Exit;

   xModo := 'M';
   DMCXC.cdsNLetras.Edit;
   pnlRegitro.visible := True;
   dblcdCuenta.SetFocus;
End;

Procedure TFNLetras.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := caFree;
End;

End.

