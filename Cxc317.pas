Unit Cxc317;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, StdCtrls, Mask, wwdbedit,
   wwdblook, Buttons, ExtCtrls, Db;

Type
   TFConsultaPago = Class(TForm)
      PnlFPago: TPanel;
      Label15: TLabel;
      Z2OkDetalle: TBitBtn;
      z2CancelDetalle: TBitBtn;
      dblcFormPago: TwwDBLookupCombo;
      dbeNoChq: TwwDBEdit;
      dblcBancoFPago: TwwDBLookupCombo;
      edtBcoFPago: TEdit;
      edtFormPago: TEdit;
      dblcTMonC: TwwDBLookupCombo;
      edtTMonC: TEdit;
      dbdtpFecha: TwwDBDateTimePicker;
      dblcCCB: TwwDBLookupCombo;
      dbgPago: TwwDBGrid;
      Label1: TLabel;
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcFormPagoExit(Sender: TObject);
      Procedure z2CancelDetalleClick(Sender: TObject);
      Procedure dblcBancoFPagoExit(Sender: TObject);
      Procedure dblcTMonCExit(Sender: TObject);
      Procedure dbeNoChqExit(Sender: TObject);
      Procedure Z2OkDetalleClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FConsultaPago: TFConsultaPago;

Implementation

Uses CxCDM, CxC006;

{$R *.DFM}

Procedure TFConsultaPago.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookUpField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFConsultaPago.dblcFormPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.focused Then exit;
   edtFormPago.text := BuscaQry('dspTGE', 'TGE112', 'FPAGOID,FPAGODES,FPAGOBCO,FCHQ,FNDE', 'FPAGOID=' + QuotedStr(dblcFormPago.text), 'FPAGODES');
   If Length(edtFormPago.text) = 0 Then
   Begin
      ShowMessage('Ingrese Forma de Pago');
      dblcFormPago.SetFocus;
      exit;
   End;
   If Trim(DM1.cdsQry.FieldByName('FPAGOBCO').AsString) = 'S' Then
   Begin
    //dbdtpFechaCheque.enabled:=(DM1.cdsQry.FieldByName('FCHQ').AsString='1');
      dblcCCB.enabled := (DM1.cdsQry.FieldByName('FNDE').AsString = '1');
      dblcBancoFPago.enabled := True;
      dbeNoChq.enabled := True;
      dblcBancoFPago.SetFocus;
   End
   Else
   Begin
      dblcBancoFPago.enabled := False;
      dbeNoChq.enabled := False;
    //dbdtpFechaCheque.enabled:=False;
      dblcCCB.enabled := False;
      dblcTMonC.SetFocus;
   End;
End;

Procedure TFConsultaPago.z2CancelDetalleClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFConsultaPago.dblcBancoFPagoExit(Sender: TObject);
Begin
   If z2CancelDetalle.focused Then exit;

   edtBcoFPago.text := DisplayDescrip('TGE105', 'BANCONOM', 'BANCOID', dblcBancoFPago.text);
   If Length(edtBcoFPago.text) = 0 Then
   Begin
      ShowMessage('Ingrese Banco');
      dblcBancoFPago.SetFocus;
      exit;
   End;
End;

Procedure TFConsultaPago.dblcTMonCExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If z2CancelDetalle.focused Then exit;
   xWhere := 'TMonId=' + '''' + dblcTMonC.Text + ''''
      + ' and (TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''' + ')';

   edtTMonC.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES,TMon_Loc', xWhere, 'TMONDES');

   If length(edtTMonC.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMonC.SetFocus;
      exit;
   End;
//CLG: 08/03/2002
   // SI ES NOTA DE DEPOSITO EN BANCO HABILITAR CUENTA CORRIENTE
   // Y FILTRAR CUENTACORRIENTE POR TIPO DE MONEDA Y BANCO.
   If dblcCCB.enabled Then
   Begin
     //DM1.cdsBCOCCB.DataRequest('SELECT * FROM TGE105')
      FiltraTabla(DM1.cdsCCBco, 'TGE106', 'CCBcoId');
      DM1.cdsCCBco.Filter := 'TMONID=' + QuotedStr(dblcTMonC.text) + ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text);
      DM1.cdsCCBco.Filtered := True;
   End;
End;

Procedure TFConsultaPago.dbeNoChqExit(Sender: TObject);
Begin
   If Length(dbeNoChq.text) = 0 Then
   Begin
      ShowMessage('Ingrese Documento');
      dbeNoChq.SetFocus;
      exit;
   End;
End;

Procedure TFConsultaPago.Z2OkDetalleClick(Sender: TObject);
Var
   sSQL, sCob: String;
Begin
   sCob := DM1.BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=' + QuotedStr('S'), 'COID');
   sSQL := ' SELECT CXC320.LICOID,CXC318.CCFEMIS,TGE110.DOCABR,CXC320.CCSERIE,CXC320.CCNODOC, ' +
      ' TMONABR,LICOMTOABOORI FROM CXC320 ' +
      ' LEFT JOIN CXC318 ON CXC318.CIAID=CXC320.CIAID AND CXC318.LICOID=CXC320.LICOID AND CXC318.COID=CXC320.COID ' +
      ' LEFT JOIN TGE110 ON TGE110.DOCID=CXC320.DOCID AND TGE110.DOCMOD=''CXC'' ' +
      ' LEFT JOIN TGE103 ON TGE103.TMONID=CXC320.TMONIDPAGO ' +
      ' WHERE FPAGOID=' + QuotedStr(dblcFormPago.text) + ' AND BANCOID=' + QuotedStr(dblcBancoFPago.text) +
      ' AND CXC320.COID<>' + QuotedStr(sCob) + ' AND LICONOCHQ=' + QuotedStr(dbeNoChq.text) +
      ' AND CXC320.TMONIDPAGO=' + QuotedStr(dblcTMonC.text) +
      ' AND FECPAGO=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dbdtpFecha.Date) + ''' ) ';
   If dblcFormPago.text = DM1.wsFNDep Then
      sSQL := sSQL + ' AND CCBCOID=' + QuotedStr(dblcCCB.text);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   dbgPago.DataSource := DM1.dsQry;
   dbgPago.Selected.Clear;
   dbgPago.Selected.Add('LICOID'#9'10'#9'Liquid.'#9'T');
   dbgPago.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Liquid.'#9'T');
   dbgPago.Selected.Add('DOCABR'#9'5'#9'Documento'#9'T');
   dbgPago.Selected.Add('CCSERIE'#9'5'#9'Serie.'#9'T');
   dbgPago.Selected.Add('CCNODOC'#9'15'#9'Número.'#9'T');
   dbgPago.Selected.Add('TMONABR'#9'10'#9'Moneda.'#9'T');
   dbgPago.Selected.Add('LICOMTOABOORI'#9'15'#9'Monto.'#9'T');
   dbgPago.ColumnByName('LICOMTOABOORI').FooterValue := DisplayDescrip('TGE103', 'TMONABR', 'TMONID', dblcTMonC.text) + ' ' +
      floattostrf(OperClientDataSet(DM1.cdsQry, 'SUM(LICOMTOABOORI)', ''), ffNumber, 15, 2);

   dbgPago.RedrawGrid;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No existen Registros que mostrar');
   End;
End;

Procedure TFConsultaPago.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

End.

