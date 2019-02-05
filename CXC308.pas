Unit CXC308;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   wwdbdatetimepicker, StdCtrls, Buttons, Mask, wwdbedit, ExtCtrls;

Type
   TFCambiaVcmto = Class(TForm)
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
      dbdtpFVcmto2: TwwDBDateTimePicker;
      dbdtpFEmis: TwwDBDateTimePicker;
      dbdtpFVcmto: TwwDBDateTimePicker;
      dbeTMOn: TwwDBEdit;
      dbeTMONDES: TwwDBEdit;
      dbeTCamb: TwwDBEdit;
      dbeImporte: TwwDBEdit;
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnOkClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
   Private
    { Private declarations }
      xCIAID, xDOCID, xCCNODOC: String;
   Public
    { Public declarations }
      Procedure RecibeDatos(xCIAID, xDOCID, xCCNODOC: String);
   End;

Var
   FCambiaVcmto: TFCambiaVcmto;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFCambiaVcmto.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFCambiaVcmto.RecibeDatos(xCIAID, xDOCID, xCCNODOC: String);
Var
   xSQL,
      xWhere: String;
Begin
   xSQL := ' SELECT CXC301.*,TGE103.TMONABR,CXC104.SITUADES,CXC105.UBICAABR ' +
      ' FROM CXC301 ' +
      '  LEFT JOIN CXC104 ON CXC301.SITID = CXC104.SITUAID ' +
      '  LEFT JOIN CXC105 ON CXC301.UBIID = CXC105.UBICAID ' +
      '  LEFT JOIN TGE103 ON CXC301.TMONID = TGE103.TMONID ' +
      ' WHERE CIAID=''' + xCIAID + ''' AND DOCID=''' + xDOCID + ''' AND ' +
      ' CCNODOC=' + QuotedStr(xCCNODOC);

   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSQL + xWhere);
   DMCXC.cdsQry3.Open;

   dbdtpFEmis.Date := DMCXC.cdsQry3.FieldByName('CCFEMIS').AsDateTime;
   dbdtpFVcmto.Date := DMCXC.cdsQry3.FieldByName('CCFVCMTO').AsDateTime;
   dbeImporte.Text := FloatToStr(DMCXC.cdsQry3.FieldByName('CCMTOORI').AsFloat);
   dbeLetra.Text := DMCXC.cdsQry3.FieldByName('CCNODOC').AsString;
   dbeClieid.Text := DMCXC.cdsQry3.FieldByName('CLIEID').AsString;
   dbeCliente.Text := DMCXC.cdsQry3.FieldByName('CLIEDES').AsString;
   dbeUbiID.Text := DMCXC.cdsQry3.FieldByName('UBIID').AsString;
   dbeUBIDes.Text := DMCXC.cdsQry3.FieldByName('UBICAABR').AsString;
   dbeSitId.Text := DMCXC.cdsQry3.FieldByName('SITID').AsString;
   dbeSitDes.Text := DMCXC.cdsQry3.FieldByName('SITUADES').AsString;
   dbeTCamb.Text := FloatToStr(DMCXC.cdsQry3.FieldByName('CCTCAMPR').AsFloat);

   dbeTMONDES.Text := DMCXC.cdsQry3.FieldByName('TMONABR').AsString;
   dbeTMOn.Text := DMCXC.cdsQry3.FieldByName('TMONID').AsString;
   dbdtpFVcmto2.Date := DMCXC.cdsQry3.FieldByName('CCFVCMTO').AsDateTime;

   self.xCIAID := xCIAID;
   self.xDOCID := xDOCID;
   self.xCCNODOC := xCCNODOC;

End;

Procedure TFCambiaVcmto.bbtnOkClick(Sender: TObject);
Begin
{  if dbdtpFVcmto2.Date<=DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime then
  begin
    dbdtpFVcmto2.SetFocus;
    Raise Exception.Create('La Nueva Fecha de Vencimiento no puede ser menor que la de la Letra');
  end;}
   Screen.Cursor := crHourGlass;
   DMCXC.SetHyst(xCIAID, xDOCID, xCCNODOC);

   DMCXC.cdsMovCxC.Edit;
   DMCXC.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime := dbdtpFVcmto2.Date;
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

Procedure TFCambiaVcmto.FormActivate(Sender: TObject);
Begin
   dbdtpFVcmto2.SetFocus;
End;

End.

