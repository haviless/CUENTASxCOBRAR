Unit CXC309;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   wwdbdatetimepicker, StdCtrls, Buttons, Mask, wwdbedit, ExtCtrls;

Type
   TFCambiaNumeroBanco = Class(TForm)
      Panel1: TPanel;
      GroupBox3: TGroupBox;
      dbeLetra: TwwDBEdit;
      dbeClieid: TwwDBEdit;
      dbeCliente: TwwDBEdit;
      dbeUbiID: TwwDBEdit;
      dbeUBIDes: TwwDBEdit;
      dbeSitId: TwwDBEdit;
      dbeSitDes: TwwDBEdit;
      bbtnOk: TBitBtn;
      bbtnCancel: TBitBtn;
      GroupBox2: TGroupBox;
      dbdtpFEmis: TwwDBDateTimePicker;
      dbdtpFVcmto: TwwDBDateTimePicker;
      dbeTMOn: TwwDBEdit;
      dbeTMONDES: TwwDBEdit;
      dbeTCamb: TwwDBEdit;
      dbeImporte: TwwDBEdit;
      edtNLetBco: TEdit;
      dbeSaldo: TwwDBEdit;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure bbtnCancelClick(Sender: TObject);
   Private
    { Private declarations }
      xCIAID, xDOCID, xCCNODOC: String;
   Public
    { Public declarations }
      Procedure RecibeDatos(xCIAID, xDOCID, xCCNODOC: String);
   End;

Var
   FCambiaNumeroBanco: TFCambiaNumeroBanco;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFCambiaNumeroBanco.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFCambiaNumeroBanco.RecibeDatos(xCIAID, xDOCID, xCCNODOC: String);
Var
   xSQL,
      xWhere: String;
Begin
   xSQL := ' SELECT CXC301.*,TGE103.TMONABR,CXC104.SITUADES,CXC105.UBICAABR ' +
      ' FROM CXC301,CXC104,CXC105,TGE103 ' +
      ' WHERE CIAID=''' + xCIAID + ''' AND DOCID=''' + xDOCID + ''' AND ' +
      ' CCNODOC=' + QuotedStr(xCCNODOC) + ' AND CXC301.UBIID = CXC105.UBICAID AND CXC301.SITID = CXC104.SITUAID AND CXC301.TMONID = TGE103.TMONID ';

   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSQL + xWhere);
   DMCXC.cdsQry3.Open;

   dbdtpFEmis.Date := DMCXC.cdsQry3.FieldByName('CCFEMIS').AsDateTime;
   dbdtpFVcmto.Date := DMCXC.cdsQry3.FieldByName('CCFVCMTO').AsDateTime;
   dbeImporte.Text := FloatToStr(DMCXC.cdsQry3.FieldByName('CCMTOORI').AsFloat);
   dbeSaldo.Text := FloatToStr(DMCXC.cdsQry3.FieldByName('CCSALORI').AsFloat);
   dbeTCamb.Text := FloatToStr(DMCXC.cdsQry3.FieldByName('CCTCAMPR').AsFloat);
   dbeLetra.Text := DMCXC.cdsQry3.FieldByName('CCNODOC').AsString;
   dbeClieid.Text := DMCXC.cdsQry3.FieldByName('CLIEID').AsString;
   dbeCliente.Text := DMCXC.cdsQry3.FieldByName('CLIEDES').AsString;
   dbeUbiID.Text := DMCXC.cdsQry3.FieldByName('UBIID').AsString;
   dbeUBIDes.Text := DMCXC.cdsQry3.FieldByName('UBICAABR').AsString;
   dbeSitId.Text := DMCXC.cdsQry3.FieldByName('SITID').AsString;
   dbeSitDes.Text := DMCXC.cdsQry3.FieldByName('SITUADES').AsString;

   dbeTMONDES.Text := DMCXC.cdsQry3.FieldByName('TMONABR').AsString;
   dbeTMOn.Text := DMCXC.cdsQry3.FieldByName('TMONID').AsString;
   edtNLetBco.Text := DMCXC.cdsQry3.FieldByName('CCNLETBCO').AsString;

   self.xCIAID := xCIAID;
   self.xDOCID := xDOCID;
   self.xCCNODOC := xCCNODOC;

End;

Procedure TFCambiaNumeroBanco.bbtnOkClick(Sender: TObject);
Var
   sSQL: String;
Begin
   If bbtnCancel.focused Then exit;
   If edtNLetBco.text = '' Then
   Begin
      edtNLetBco.SetFocus;
      Raise Exception.Create('Ingrese Número Bancario');
   End;

   sSQL := 'CIAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) +
      ' AND DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString) +
      ' AND CCNLETBCO=' + QuotedStr(edtNLetBco.text);
   If DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNLETBCO,CCNODOC', sSQL, 'CCNLETBCO') <> '' Then
   Begin
      edtNLetBco.SetFocus;
      Raise Exception.Create('Número Bancario ya está asignado a la letra: ' + DMCXC.cdsQry.FieldByName('CCNODOC').AsString);
   End;

   Screen.Cursor := crHourGlass;
   DMCXC.SetHyst(xCIAID, xDOCID, xCCNODOC);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCNLETBCO').AsString := edtNLetBco.text;
   DMCXC.cdsMovCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsMovCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsMovCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;

   DMCXC.cdsMovCxC.Post;
   DMCXC.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(xCIAID) + ' AND DOCID=' + QuotedStr(xDOCID) + ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(xCCNODOC));
   DMCXC.AplicaDatos(DMCXC.cdsMovCxC, 'MovCxC');
   Screen.Cursor := crDefault;
   ShowMessage('Registro Grabado con éxito');
   Close;
End;

Procedure TFCambiaNumeroBanco.FormActivate(Sender: TObject);
Begin
   edtNLetBco.SetFocus;
End;

Procedure TFCambiaNumeroBanco.bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

End.

