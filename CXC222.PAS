Unit CxC222;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Mask, wwdbedit, ExtCtrls, wwdbdatetimepicker, wwdblook, Wwdbdlg,
   Buttons, db, wwClient;

Type
   TFDPNLBCO = Class(TForm)
      pnlDatosBanco: TPanel;
      dbeREG: TwwDBEdit;
      Label1: TLabel;
      Label2: TLabel;
      dbeNLETBCO: TwwDBEdit;
      Label3: TLabel;
      dblcLETRA: TwwDBLookupComboDlg;
      Label4: TLabel;
      dtpINI: TwwDBDateTimePicker;
      Label6: TLabel;
      dtpFIN: TwwDBDateTimePicker;
      Label5: TLabel;
      Label11: TLabel;
      dblcTOPE: TwwDBLookupCombo;
      dbeTOPE: TwwDBEdit;
      Label7: TLabel;
      dbeMON: TwwDBEdit;
      dbeINGR: TwwDBEdit;
      dbeDESCA: TwwDBEdit;
      Label8: TLabel;
      Label9: TLabel;
      pnlUbiSit: TPanel;
      Label10: TLabel;
      dbeCLIEDES: TwwDBEdit;
      dbeCLIEID: TwwDBEdit;
      Label12: TLabel;
      dbeImpAct: TwwDBEdit;
      Label13: TLabel;
      dbeUBICAID: TwwDBEdit;
      dbeUBICADES: TwwDBEdit;
      Label14: TLabel;
      dbeSITUAID: TwwDBEdit;
      dbeSITUADES: TwwDBEdit;
      grbIntereses: TGroupBox;
      Label15: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      dbeIntMOR: TwwDBEdit;
      dbeIntCOM: TwwDBEdit;
      dbeIntREN: TwwDBEdit;
      grbComisiones: TGroupBox;
      Label18: TLabel;
      Label19: TLabel;
      Label20: TLabel;
      dbeComCOB: TwwDBEdit;
      dbeComPRO: TwwDBEdit;
      dbeComTFO: TwwDBEdit;
      grbOtros: TGroupBox;
      Label21: TLabel;
      Label22: TLabel;
      Label23: TLabel;
      dbeOtINTR: TwwDBEdit;
      dbeOtGAS: TwwDBEdit;
      dbeOtOTR: TwwDBEdit;
      Z2bbtnCancela: TBitBtn;
      Z2bbtnAceptar: TBitBtn;
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure Z2bbtnCancelaClick(Sender: TObject);
      Procedure dblcTOPENotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure FormShow(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcLETRAExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeNLETBCOExit(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FDPNLBCO: TFDPNLBCO;
   cdsDetalle: TwwClientDataSet;

Implementation

Uses CxCDM, CxC221;

{$R *.DFM}

Procedure TFDPNLBCO.Z2bbtnAceptarClick(Sender: TObject);
Begin
  // guardar detalle
   DMCXC.cdsDPLNBCO.Post;

   ModalResult := mrOK;
End;

Procedure TFDPNLBCO.Z2bbtnCancelaClick(Sender: TObject);
Begin
   ModalResult := mrCancel;
End;

Procedure TFDPNLBCO.dblcTOPENotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFDPNLBCO.FormShow(Sender: TObject);
Begin
   cdsDetalle := TwwClientDataSet.Create(Nil);

   dblcLETRA.Text := DMCXC.cdsDPLNBCO.FieldByName('CCNODOC').AsString;
   dbeREG.Text := DMCXC.cdsDPLNBCO.FieldByName('DPLBCID').AsString;
   dblcTOPE.Text := DMCXC.cdsTOPERBCO.FieldByName('TOPID').AsString;
   dbeTOPE.Text := DMCXC.cdsTOPERBCO.FieldByName('TOPDES').AsString;
   dblcLETRA.Selected.Clear;
   dblcLETRA.Selected.Add('CCNODOC'#9'10'#9'Nro.Letra'#9'F');
   dblcLETRA.Selected.Add('CCFEMIS'#9'10'#9'F.Emis'#9'F');
   dblcLETRA.Selected.Add('CCFVCMTO'#9'10'#9'F.Vcmto'#9'F');
   dblcLETRA.Selected.Add('TMONID'#9'6'#9'Moneda'#9'F');
   dblcLETRA.Selected.Add('CCMTOORI'#9'10'#9'Monto'#9'F');
End;

Procedure TFDPNLBCO.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   If (DMCXC.cdsDPLNBCO.State = dsInsert) Or (DMCXC.cdsDPLNBCO.State = dsEdit) Then
   Begin
//   if (DMCXC.cdsDPLNBCO.ChangeCount>0) or (DMCXC.cdsDPLNBCO.Modified) then begin
//      DMCXC.cdsDPLNBCO.Cancel;
      DMCXC.cdsDPLNBCO.CancelUpdates;
   End;
   DMCXC.cdsLetras.Filtered := False;
End;

Procedure TFDPNLBCO.dblcLETRAExit(Sender: TObject);
Begin
   If length(trim(dblcLETRA.Text)) = 0 Then
   Begin
      dbeMON.Text := '';
      dbeCLIEID.Text := '';
      dbeCLIEDES.Text := '';
      dbeUBICAID.Text := '';
      dbeUBICADES.Text := '';
      dbeUBICAID.Text := '';
      dbeUBICADES.Text := '';
      dbeSITUAID.Text := '';
      dbeSITUADES.Text := '';
      dblcLETRA.SetFocus;
      exit;
   End;

// Verifica que Letra exista en Relación de Letras
   If DMCXC.cdsLetras.IndexFieldNames <> 'CCNODOC' Then
      DMCXC.cdsLetras.IndexFieldNames := 'CCNODOC';
   DMCXC.cdsLetras.SetKey;
   DMCXC.cdsLetras.FieldByName('CCNODOC').AsString := dblcLETRA.Text;
   If Not DMCXC.cdsLetras.GotoKey Then
   Begin
      ShowMessage('Letra no se encuentra en la Relación de Letras posibles');
      dblcLETRA.SetFocus;
      exit;
   End;

   cdsDetalle.Data := DMCXC.cdsDPLNBCO.Data;
   cdsDetalle.IndexFieldNames := 'CCNODOC';
   cdsDetalle.SetKey;
   cdsDetalle.FieldByName('CCNODOC').AsString := dblcLETRA.Text;
   If cdsDetalle.Gotokey Then
   Begin
      ShowMessage('Letra ya fue registrada en esta Planilla, revise su información');
      dblcLETRA.SetFocus;
      exit;
   End;

   DMCXC.cdsDPLNBCO.Edit;
   DMCXC.cdsDPLNBCO.FieldByName('CCNODOC').AsString := dblcLETRA.Text;
   DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString := DMCXC.cdsLetras.FieldByName('TMONID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('CCFEMIS').AsDateTime := DMCXC.cdsLetras.FieldByName('CCFEMIS').AsDateTime;
   DMCXC.cdsDPLNBCO.FieldByName('CCFVCMTO').AsDateTime := DMCXC.cdsLetras.FieldByName('CCFVCMTO').AsDateTime;
   DMCXC.cdsDPLNBCO.FieldByName('CLAUXID').AsString := DMCXC.cdsLetras.FieldByName('CLAUXID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString := DMCXC.cdsLetras.FieldByName('CLIEID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('UBIID').AsString := DMCXC.cdsLetras.FieldByName('UBIID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('SITID').AsString := DMCXC.cdsLetras.FieldByName('SITID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsFloat := DMCXC.cdsLetras.FieldByName('CCMTOORI').AsFloat;
   dbeCLIEDES.Text := DMCXC.DisplayDescrip('TGE204', 'CLIEDES', 'CLIEID',
      DMCXC.cdsLetras.FieldByName('CLIEID').AsString);
   dbeUBICADES.Text := DMCXC.DisplayDescrip('CXC105', 'UBICADES', 'UBICAID',
      DMCXC.cdsLetras.FieldByName('UBIID').AsString);
   dbeSITUADES.Text := DMCXC.DisplayDescrip('CXC104', 'SITUADES', 'SITUAID',
      DMCXC.cdsLetras.FieldByName('SITID').AsString);

End;

Procedure TFDPNLBCO.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFDPNLBCO.dbeNLETBCOExit(Sender: TObject);
Begin
   cdsDetalle.Data := DMCXC.cdsDPLNBCO.Data;
   cdsDetalle.IndexFieldNames := 'DPLBCNBCOLETR';
   cdsDetalle.SetKey;
   cdsDetalle.FieldByName('DPLBCNBCOLETR').AsString := dbeNLETBCO.Text;
   If cdsDetalle.Gotokey Then
   Begin
      ShowMessage('Nro. de Letra del Banco ya fue registrada en esta Planilla, revise su información');
      dbeNLETBCO.SetFocus;
      exit;
   End;
   DMCXC.cdsDPLNBCO.Edit;
   DMCXC.cdsDPLNBCO.FieldByName('DPLBCNBCOLETR').AsString := dbeNLETBCO.Text;
   DMCXC.cdsDPLNBCO.FieldByName('CCNLETBCO').AsString := dbeNLETBCO.Text;
End;

End.

