Unit CXC326;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CXC326
// Formulario           :   frmPleDatosCliente
// Fecha de Creación    :   18/04/2013
// Autor                :   Abelardo Sulca Palomino
// Objetivo             :   Ventana que permite modificar los datos del cliente
//                          de la factura/boleta, de la cuenta por cobrar y del
//                          maestro de clientes.
//                          En el caso que un documento haga referencia a un
//                          cliente que no existe en el maestro de clientes
//                          entonces se creará el cliente.
//                          la modificación de los datos del cliente contempla
//                          validaciones al tipo de documento y al número de
//                          documento.
//                          o	Si el Tipo de Documento es Factura, entonces sólo
//                            se permitirá como Tipo de Documento de Identidad
//                            a "06-Ruc" y "07-Pasaporte".
//                          o	Si el Tipo de Documento es Boleta, entonces sólo
//                            se permitirá como Tipo de Documento de Identidad a
//                            "01-DNI" si es un cliente identificado y "00-Otros"
//                            en caso sea un cliente no identificado.
//                          o	Si es Tipo de Documento de Identidad RUC entonces
//                            debe ser numérico y de 11 dígitos
//                          o	Si es Tipo de Documento de Identidad DNI entonces
//                            debe ser numérico y de 8 dígitos

// Actualizaciones      :
// HPC_201303_CXC  25/04/2013  -Permitir registrar boletas con ruc
//                             -no permitir el cliente C9999
//                             -mostrar en la grilla los registros modificados

// HPC_201304_CXC  29/04/2013  -Permitir registrar boletas con Pasaporte y Carnet de exrtanjería
// HPC_201305_CXC  03/05/2013  -se cambió la propiedad dblcCodigoCliente.Charcase = 'ecNormal'

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   clipbrd,
   Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Wwdbdlg, wwdblook,
   wwdbdatetimepicker;

Type
   TfrmPleDatosCliente = Class(TForm)
      Label6: TLabel;
      Label1: TLabel;
      dblcTipoAuxiliar: TwwDBLookupCombo;
      edtTipoAuxiliar: TEdit;
      Label2: TLabel;
      dblcCodigoCliente: TwwDBLookupComboDlg;
      edtCliente: TwwDBEdit;
      Label3: TLabel;
      lblTDocIdentidad: TLabel;
      dblcTipoDocCliente: TwwDBLookupCombo;
      edtTipoDocCliente: TEdit;
      edtNumDocCliente: TwwDBEdit;
      lblDocIdentidad: TLabel;
      bbtnRegOk: TBitBtn;
      bbtnCanFact: TBitBtn;
      GroupBox1: TGroupBox;
      Label7: TLabel;
      lblCia: TLabel;
      dblcCompania: TwwDBLookupCombo;
      edtCompania: TEdit;
      lblTDoc: TLabel;
      dblcTipoDocumento: TwwDBLookupCombo;
      edtTipoDocumento: TEdit;
      lblSerie: TLabel;
      lblNoDoc: TLabel;
      edtNumeroDoc: TwwDBEdit;
      Label9: TLabel;
      dtpFemision: TwwDBDateTimePicker;
      Label8: TLabel;
      dblcTipoAuxDoc: TwwDBLookupCombo;
      lblProv: TLabel;
      dblcdCodClienteDoc: TwwDBLookupComboDlg;
      lblProvRuc: TLabel;
      lblProvNom: TLabel;
      edtRazonSocialDoc: TwwDBEdit;
      edtSerie: TwwDBEdit;
      edtClieRuc: TwwDBEdit;
      btnCopiaRuc: TBitBtn;
      btnCopiaRazonSocial: TBitBtn;
      Procedure FormShow(Sender: TObject);
      Procedure dblcTipoDocClienteExit(Sender: TObject);
      Procedure bbtnCanFactClick(Sender: TObject);
      Procedure dblcCompaniaExit(Sender: TObject);
      Procedure dblcTipoDocumentoExit(Sender: TObject);
      Procedure dblcTipoAuxiliarExit(Sender: TObject);
      Procedure dblcCodigoClienteExit(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnCopiaRucClick(Sender: TObject);
      Procedure btnCopiaRazonSocialClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure fg_LlenaCampos;
      Function fg_ActualizaCliente: Boolean;
      Procedure fg_AsignaLookup;
      Procedure fg_RecuperaCliente(wgClauxId, wgClienteId: String);
      Function fg_ValidaDatos: Boolean;
      Procedure fg_InsertaCliente;
      Procedure fg_MuestraRegActualizado;

   Public
    { Public declarations }
   End;

Var
   frmPleDatosCliente: TfrmPleDatosCliente;

Implementation

{$R *.dfm}
Uses CXCDM;

Procedure TfrmPleDatosCliente.FormShow(Sender: TObject);
Begin
   Filtracds(DMCXC.cdsTDocSunat, 'SELECT * FROM SUNAT101 ORDER BY TIPDOCID ');
   dblcTipoDocCliente.LookupTable := DMCXC.cdsTDocSunat;
   dblcTipoDocCliente.LookupField := 'TIPDOCID';

   dblcTipoDocCliente.Selected.Clear;
   dblcTipoDocCliente.Selected.Add('TIPDOCID'#9'3'#9'Id'#9'F');
   dblcTipoDocCliente.Selected.Add('TIPDOCDES'#9'10'#9'Tipo Documento'#9'F');

   Filtracds(DMCXC.cdsTCliente, 'SELECT * FROM FAC121 ');
   dblcTipoAuxiliar.Selected.Clear;
   dblcTipoAuxiliar.Selected.Add('CLAUXID'#9'3'#9'Id'#9'F');
   dblcTipoAuxiliar.Selected.Add('TCLIEDES'#9'10'#9'Descripción'#9'F');

   fg_AsignaLookup;
   fg_LlenaCampos;
End;

Procedure TfrmPleDatosCliente.fg_LlenaCampos;
Var
   xsSql: String;
Begin

   //si cambiamos de tipo de cliente entonces recuperamos la lista de clientes
   If DMCXC.cdsRegVentasPle.FieldByName('CLAUXID').AsString <> DMCXC.cdsClie.FieldByName('CLAUXID').AsString Then
   Begin
      Filtracds(DMCXC.cdsClie, 'SELECT * FROM TGE204 WHERE CLAUXID =' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CLAUXID').AsString) + ' AND ACTIVO = ' + QuotedStr('S'));
   End;
   //tipo de auxiliar
   dblcTipoAuxiliar.Text := DMCXC.cdsRegVentasPle.FieldByName('CLAUXID').AsString;
   edtTipoAuxiliar.Text := DMCXC.BuscaQry('dspUltTGE', 'FAC121', '*', 'CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text), 'TCLIEDES');

   //código de cliente
   dblcCodigoCliente.Text := DMCXC.cdsRegVentasPle.FieldByName('CLIEID').AsString;
   edtCliente.Text := DMCXC.cdsRegVentasPle.FieldByName('CLIRAZSOC').AsString;

   //datos del maestro de clientes
   fg_RecuperaCliente(DMCXC.cdsRegVentasPle.FieldByName('CLAUXID').AsString, DMCXC.cdsRegVentasPle.FieldByName('CLIEID').AsString);
   If dblcCodigoCliente.Text = '' Then
   Begin
      If MessageDlg('Cliente: ' + dblcTipoAuxDoc.Text + '-' + dblcdCodClienteDoc.Text + #13 +
         'no existe en el Maestro de Clientes. ' + #13 + '¿Desea crearlo en el Maestro de Clientes?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         dblcTipoAuxiliar.Text := dblcTipoAuxDoc.Text;
         dblcCodigoCliente.Text := dblcdCodClienteDoc.Text;
         edtNumDocCliente.Text := edtClieRuc.Text;
         edtCliente.Text := edtRazonSocialDoc.Text;
      End;
   End;
End;

Procedure TfrmPleDatosCliente.dblcTipoDocClienteExit(Sender: TObject);
Var
   xsSql: String;
Begin
   If Length(dblcTipoDocCliente.Text) = 0 Then Exit;
   xsSql := 'TIPDOCID=' + Quotedstr(dblcTipoDocCliente.Text);
   edtTipoDocCliente.Text := DMCXC.BuscaQry('dspTGE', 'SUNAT101', '*', xsSql, 'TIPDOCDES');
End;

Function TfrmPleDatosCliente.fg_ActualizaCliente: Boolean;
Var
   xsSql: String;
   xsTipoDocOasis: String;
   xsTipoClienteFacturacion: String;
   xsTipoDocAnterior: String;
Begin
   xsTipoDocOasis := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', 'DOCMOD = ' + QuotedStr('CXC') + ' AND TDOC_SUNAT = ' + QuotedStr(dblcTipoDocumento.Text), 'DOCID');
   xsTipoClienteFacturacion := DMCXC.BuscaQry('dspTGE', 'FAC121', '*', 'CLAUXID =' + QuotedStr(dblcTipoAuxiliar.Text), 'TCLIEID');
   //tipo de documento original
   xsSql := 'CIAID = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CIAID').AsString) +
      '     AND CCANOMES = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('PERIODO').AsString) +
      '     AND CCNOREG = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNOREG').AsString) +
      '     AND CCSERIE = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCSERIE').AsString) +
      '     AND CCNODOC = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNODOC').AsString);
   xsTipoDocAnterior := DMCXC.BuscaQry('dspTGE', 'CXC301', 'DOCID', xsSql, 'DOCID');

   //Actualizando la factura
   xsSql := ' UPDATE FAC305 SET CLIERUC = ' + QuotedStr(edtNumDocCliente.Text) + ',' +
      '                         CLIEDES = ' + QuotedStr(edtCliente.Text) + ',' +
      '                         CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) + ',' +
      '                         CLIEID = ' + QuotedStr(dblcCodigoCliente.Text) + ',' +
      '                         FACTCLI = ' + QuotedStr(xsTipoClienteFacturacion) + ',' +
      '                         DOCID = ' + QuotedStr(xsTipoDocOasis) +
      '              WHERE CIAID = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CIAID').AsString) +
      '              AND FACANOMES = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('PERIODO').AsString) +
      '              AND DOCID = ' + QuotedStr(xsTipoDocAnterior) +
      '              AND FACSERIE = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCSERIE').AsString) +
      '              AND NFAC = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNODOC').AsString);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Result := False;
      ShowMessage('Error al actualizar la Cabecera del Documento');
      Exit;
   End;
   xsSql := ' UPDATE FAC306 SET CLIERUC = ' + QuotedStr(edtNumDocCliente.Text) + ',' +
      '                         CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) + ',' +
      '                         CLIEID = ' + QuotedStr(dblcCodigoCliente.Text) + ',' +
      '                         FACTCLI = ' + QuotedStr(xsTipoClienteFacturacion) + ',' +
      '                         DOCID = ' + QuotedStr(xsTipoDocOasis) +
      '              WHERE CIAID = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CIAID').AsString) +
      '              AND DFACANOMES = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('PERIODO').AsString) +
      '              AND DOCID = ' + QuotedStr(xsTipoDocAnterior) +
      '              AND FACSERIE = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCSERIE').AsString) +
      '              AND NFAC = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNODOC').AsString);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Result := False;
      ShowMessage('Error al actualizar el detalle del Documento');
      Exit;
   End;

   //actualizar registro de ventas
   xsSql := ' UPDATE CXC301 SET CLIERUC = ' + QuotedStr(edtNumDocCliente.Text) + ',' +
      '                         CLIEDES = ' + QuotedStr(edtCliente.Text) + ',' +
      '                         CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) + ',' +
      '                         CLIEID = ' + QuotedStr(dblcCodigoCliente.Text) + ',' +
      '                         DOCID = ' + QuotedStr(xsTipoDocOasis) +
      '              WHERE CIAID = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CIAID').AsString) +
      '              AND CCANOMES = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('PERIODO').AsString) +
      '              AND CCNOREG = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNOREG').AsString) +
      '              AND CCSERIE = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCSERIE').AsString) +
      '              AND CCNODOC = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNODOC').AsString);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Result := False;
      ShowMessage('Error al actualizar la Cabecera del Documento en el Registro de Ventas');
      Exit;
   End;

   xsSql := ' UPDATE CXC302 SET CLIERUC = ' + QuotedStr(edtNumDocCliente.Text) + ',' +
      '                         CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) + ',' +
      '                         CLIEID = ' + QuotedStr(dblcCodigoCliente.Text) + ',' +
      '                         DOCID = ' + QuotedStr(xsTipoDocOasis) +
      '              WHERE CIAID = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CIAID').AsString) +
      '              AND CCANOMES = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('PERIODO').AsString) +
      '              AND CCNOREG = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNOREG').AsString) +
      '              AND CCSERIE = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCSERIE').AsString) +
      '              AND CCNODOC = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNODOC').AsString);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Result := False;
      ShowMessage('Error al actualizar el detalle del Documento en el Registro de Ventas');
      Exit;
   End;

   xsSql := ' UPDATE CXC_REG_VEN SET CLIDOCID = ' + QuotedStr(dblcTipoDocCliente.Text) + ',' +
      '                         DOCID = ' + QuotedStr(dblcTipoDocumento.Text) + ',' +
      '                         CLIDOCNUM = ' + QuotedStr(edtNumDocCliente.Text) + ',' +
      '                         CLIRAZSOC = ' + QuotedStr(edtCliente.Text) + ',' +
      '                         CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) + ',' +
      '                         CLIEID = ' + QuotedStr(dblcCodigoCliente.Text) +
      '              WHERE CIAID = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CIAID').AsString) +
      '              AND PERIODO = ' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('PERIODO').AsString) +
      '              AND CCNOREG =' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNOREG').AsString) +
      '              AND CCSERIE =' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCSERIE').AsString) +
      '              AND CCNODOC =' + QuotedStr(DMCXC.cdsRegVentasPle.FieldByName('CCNODOC').AsString);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Result := False;
      ShowMessage('Error al actualizar el archivo del PLE');
      Exit;
   End;

   //actualizar maestro de clientes
   //si es el cliente genérido entonces no se actualiza el maestro de clientes
   If dblcCodigoCliente.Text <> '33333333' Then
   Begin
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE204', '*', ' CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) +
         ' AND CLIEID = ' + QuotedStr(dblcCodigoCliente.Text), 'CLIEDES')) = 0 Then
      Begin
         fg_InsertaCliente;
      End
      Else
      Begin
         xsSql := ' UPDATE TGE204 SET TDOC_ID_SUNAT = ' + QuotedStr(dblcTipoDocCliente.Text) + ', ' +
            '                         CLIERUC = ' + QuotedStr(edtNumDocCliente.Text) + ', ' +
            '                         CLIEID = ' + QuotedStr(dblcCodigoCliente.Text) + ', ' +
            '                         CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) + ', ' +
            '                         CLIEDES = ' + QuotedStr(edtCliente.Text) +
            '              WHERE CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text) +
            '              AND CLIEID = ' + QuotedStr(dblcCodigoCliente.Text);
         Try
            DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
         Except
            Result := False;
            ShowMessage('Error al actualizar el mantenimiento del cliente');
            Exit;
         End;
      End;
   End;
   Result := True;
   ShowMessage('Datos Actualizados');
End;

Procedure TfrmPleDatosCliente.fg_AsignaLookup;
Begin

   dblcCompania.LookupTable := DMCXC.cdsCia;
   dblcCompania.LookupField := 'CIAID';

   dblcTipoDocumento.LookupTable := DMCXC.cdsTDoc;
   dblcTipoDocumento.LookupField := 'DOCID';

   dblcTipoAuxDoc.LookupTable := DMCXC.cdsClie;
   dblcTipoAuxDoc.LookupField := 'CLAUXID';

   dblcTipoAuxiliar.LookupTable := DMCXC.cdsTCliente;
   dblcTipoAuxiliar.LookupField := 'CLAUXID';

   dblcdCodClienteDoc.LookupTable := DMCXC.cdsClie;
   dblcdCodClienteDoc.LookupField := 'CLIEID';

   dblcCodigoCliente.LookupTable := DMCXC.cdsClie;
   dblcCodigoCliente.LookupField := 'CLIEID';

   dblcCompania.DataSource := DMCXC.dsRegVentasPle;
   dblcCompania.DataField := 'CIAID';
   dblcCompaniaExit(dblcCompania);

   dblcTipoDocumento.DataSource := DMCXC.dsRegVentasPle;
   dblcTipoDocumento.DataField := 'DOCID';
   dblcTipoDocumentoExit(dblcTipoDocumento);

   edtSerie.DataSource := DMCXC.dsRegVentasPle;
   edtSerie.DataField := 'CCSERIE';

   edtNumeroDoc.DataSource := DMCXC.dsRegVentasPle;
   edtNumeroDoc.DataField := 'CCNODOC';

   dtpFemision.DataSource := DMCXC.dsRegVentasPle;
   dtpFemision.DataField := 'FECEMI';

   dblcTipoAuxDoc.DataSource := DMCXC.dsRegVentasPle;
   dblcTipoAuxDoc.DataField := 'CLAUXID';

   dblcdCodClienteDoc.DataSource := DMCXC.dsRegVentasPle;
   dblcdCodClienteDoc.DataField := 'CLIEID';

   edtClieRuc.DataSource := DMCXC.dsRegVentasPle;
   edtClieRuc.DataField := 'CLIDOCNUM';

   edtRazonSocialDoc.DataSource := DMCXC.dsRegVentasPle;
   edtRazonSocialDoc.DataField := 'CLIRAZSOC';

End;

Procedure TfrmPleDatosCliente.bbtnCanFactClick(Sender: TObject);
Begin
   Close();
End;

Procedure TfrmPleDatosCliente.dblcCompaniaExit(Sender: TObject);
Begin
   edtCompania.Text := DMCXC.BuscaQry('dspTGE', 'TGE101', '*', ' CIAID = ' + QuotedStr(DMCXC.CdsRegVentasPle.FieldByName('CIAID').AsString), 'CIADES');
End;

Procedure TfrmPleDatosCliente.dblcTipoDocumentoExit(Sender: TObject);
Begin
   edtTipoDocumento.Text := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', ' DOCMOD = ' + Quotedstr('CXC') + ' AND TDOC_SUNAT  = ' + QuotedStr(DMCXC.CdsRegVentasPle.FieldByName('DOCID').AsString), 'DOCDES');
End;

Procedure TfrmPleDatosCliente.dblcTipoAuxiliarExit(Sender: TObject);
Begin

   edtTipoAuxiliar.Text := DMCXC.BuscaQry('dspTGE', 'FAC121', '*', ' CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text), 'TCLIEDES');
   Filtracds(DMCXC.cdsClie, 'SELECT * FROM TGE204 WHERE CLAUXID =' + QuotedStr(dblcTipoAuxiliar.Text) + ' AND ACTIVO = ' + QuotedStr('S'));
End;

Procedure TfrmPleDatosCliente.dblcCodigoClienteExit(Sender: TObject);
Var
   xsSql: String;
Begin

   If bbtnCanFact.Focused Then Exit;
   fg_RecuperaCliente(dblcTipoAuxiliar.Text, dblcCodigoCliente.Text);
End;

Procedure TfrmPleDatosCliente.fg_RecuperaCliente(wgClauxId, wgClienteId: String);
Var
   xsSql: String;
Begin

   xsSql := ' SELECT * FROM TGE204 WHERE CLAUXID = ' + QuotedStr(wgClauxId) + ' AND CLIEID = ' + QuotedStr(wgClienteId);

   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      dblcTipoAuxiliar.Text := '';
      edtTipoAuxiliar.Text := '';
      dblcCodigoCliente.Text := '';
      dblcTipoDocCliente.Text := '';
      edtTipoDocCliente.Text := '';
      edtNumDocCliente.Text := '';
      edtCliente.Text := '';

   //obteniendo datos del cliente
      dblcTipoAuxiliar.Text := DMCXC.cdsQry.FieldByName('CLAUXID').AsString;
      dblcCodigoCliente.Text := DMCXC.cdsQry.FieldByName('CLIEID').AsString;

      dblcTipoDocCliente.Text := DMCXC.cdsQry.FieldByName('TDOC_ID_SUNAT').AsString;
      edtNumDocCliente.Text := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
   //si es el cliente genérico no actualizamos descripción
      If wgClienteId = '33333333' Then
      Begin
         edtCliente.Text := edtRazonSocialDoc.Text;
         If edtRazonSocialDoc.Text = '' Then
         Begin
            edtCliente.Text := DMCXC.cdsQry.FieldByName('CLIEDES').AsString;
         End;
      End
      Else
      Begin
         edtCliente.Text := DMCXC.cdsQry.FieldByName('CLIEDES').AsString;
      End;

      edtTipoAuxiliar.Text := DMCXC.BuscaQry('dspTGE', 'FAC121', '*', ' CLAUXID = ' + QuotedStr(dblcTipoAuxiliar.Text), 'TCLIEDES');
      edtTipoDocCliente.Text := DMCXC.BuscaQry('dspTGE', 'SUNAT101', '*', 'TIPDOCID=' + Quotedstr(dblcTipoDocCliente.Text), 'TIPDOCDES');
   End
   Else
   Begin
      ShowMessage('Cliente no Existe');
      dblcCodigoCliente.SetFocus();
   End;

End;

Procedure TfrmPleDatosCliente.bbtnRegOkClick(Sender: TObject);
Begin
   If fg_ValidaDatos = False Then
   Begin
      Exit;
   End;
   If fg_ActualizaCliente = False Then
   Begin
      Exit;
   End;

   fg_MuestraRegActualizado;

   Close();
End;

Function TfrmPleDatosCliente.fg_ValidaDatos: Boolean;
Var
   xnNumero: Double;
   xsSql: String;
Begin

   If dblcCodigoCliente.Text = 'C9999' Then
   Begin
      ShowMessage('el código de cliente C9999 no es válido');
      Result := False;
      Exit;
   End;

   //si es un código de cliente válido
   If dblcTipoAuxiliar.Text = '' Then
   Begin
      ShowMessage('Debe seleccionar un Tipo de Auxiliar');
      Result := False;
      Exit;
   End;
   If dblcCodigoCliente.Text = '' Then
   Begin
      ShowMessage('Debe seleccionar un código de cliente');
      Result := False;
      Exit;
   End;
   If dblcTipoDocCliente.Text = '' Then
   Begin
      ShowMessage('Debe seleccionar un Tipo de Documento de Identidad');
      Result := False;
      Exit;
   End;
   If (dblcCodigoCliente.Text <> '33333333') And (edtNumDocCliente.Text = '') Then
   Begin
      ShowMessage('Debe ingresar un número de Documento de Identidad');
      Result := False;
      Exit;
   End;
   If edtCliente.Text = '' Then
   Begin
      ShowMessage('Debe ingresar la razón social del cliente');
      Result := False;
      Exit;
   End;
   If dblcTipoDocCliente.Text = '11' Then //no puede ser partida de nacimiento
   Begin
      ShowMessage('Tipo de documento no válido');
      Result := False;
      Exit;
   End;

   //si es factura entonces el tipo de documento de identidad no puede ser DNI
   If dblcTipoDocumento.Text = '01' Then
   Begin
      If dblcTipoDocCliente.Text = '01' Then
      Begin
         ShowMessage('DNI no es válido para una factura');
         Result := False;
         Exit;
      End;
      If (Length(edtNumDocCliente.Text) <> 11) And (dblcTipoDocCliente.Text = '06') Then
      Begin
         ShowMessage('el Ruc deb ser de 11 Dígitos');
         Result := False;
         Exit;
      End;
   End;

   // si es boleta entonces sólo es valido DNI y Otros
   If dblcTipoDocumento.Text = '03' Then
   Begin

      //las boletas pueden ser con RUC
      If dblcTipoDocCliente.Text = '06' Then
      Begin
         If MessageDlg('Desea Actualizar el RUC del cliente en la BOLETA actual?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes Then
         Begin
            Result := False;
            Exit;
         End;
      //INICIO HPC_201304_CXC
      End;
      If (dblcTipoDocCliente.Text = '07') Or (dblcTipoDocCliente.Text = '04') Then
      Begin
         If MessageDlg('Ha indicado como Tipo de Documento de Identidad del Cliente' + #13 +
            'Carnet de Extranjería ó Pasparte' + #13 + 'Desea continuar?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes Then
         Begin
            Result := False;
            Exit;
         End;
      End;

      (*End
      Else
      If (dblcTipoDocCliente.Text <> '01') And (dblcTipoDocCliente.Text <> '00') Then
      Begin
         ShowMessage('Tipo de documento no válido para boletas');
         Result := False;
         Exit;
      End;*)
      //FIN HPC_201304_CXC

      If (Length(edtNumDocCliente.Text) <> 8) And (dblcTipoDocCliente.Text = '01') Then
      Begin
         ShowMessage('el DNI debe ser de 8 Dígitos');
         Result := False;
         Exit;
      End;
   End;
   //si es RUC o DNI debe ser numérico
   If (dblcTipoDocCliente.Text = '01') Or (dblcTipoDocCliente.Text = '06') Then
   Begin
      Try
         xnNumero := StrToFloat(edtNumDocCliente.Text);
      Except
         ShowMessage('El Numero de documento de identidad debe ser numérico');
         Result := False;
         Exit;
      End;
   End;
   //verificando si el numero de documento de identidad ya existe
   xsSql := ' TDOC_ID_SUNAT = ' + QuotedStr(dblcTipoDocCliente.Text) + ' AND CLIERUC = ' + QuotedStr(edtNumDocCliente.Text);
   DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsSql, 'CLIEDES');
   If (DMCXC.cdsQry.RecordCount > 0) And (DMCXC.cdsQry.FieldByName('CLIEID').AsString <> dblcCodigoCliente.Text) Then
   Begin
      ShowMessage('El número de Documento de Identidad ya existe: ' + #13 +
         'Tipo Auxiliar:' + DMCXC.cdsQry.FieldByName('CLAUXID').AsString + #13 +
         'Código de Cliente:' + DMCXC.cdsQry.FieldByName('CLIEID').AsString);
      Result := False;
      Exit;
   End;

   If edtCliente.Text = '' Then
   Begin
      ShowMessage('Debe ingresar una Razón Social');
      Result := False;
      Exit;
   End;

   Result := True;

End;

Procedure TfrmPleDatosCliente.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TfrmPleDatosCliente.btnCopiaRucClick(Sender: TObject);
Begin
   edtNumDocCliente.Text := edtClieRuc.Text;
End;

Procedure TfrmPleDatosCliente.btnCopiaRazonSocialClick(Sender: TObject);
Begin
   edtCliente.Text := edtRazonSocialDoc.Text;
End;

Procedure TfrmPleDatosCliente.fg_InsertaCliente;
Var
   xsSql: String;
   xsCLauxid: String;
   xsClieid: String;
   xsDocSunat: String;
   xsClieRuc: String;
   xsClieDes: String;
   xsActivo: String;
Begin
   xsCLauxid := dblcTipoAuxiliar.Text;
   xsClieid := dblcCodigoCliente.Text;
   xsDocSunat := dblcTipoDocCliente.Text;
   xsClieRuc := edtNumDocCliente.Text;
   xsClieDes := edtCliente.Text;
   xsActivo := 'S';
   xsSql := ' INSERT INTO TGE204 (CLIEID,CLIERUC,CLAUXID,CIAID,CLIEDES,ACTIVO,TDOC_ID_SUNAT, CLIEDNI ) ' +
      ' VALUES (' + QuotedStr(xsClieid) + ',' + QuotedStr(xsClieRuc) + ',' + QuotedStr(xsCLauxid) + ',' + QuotedStr(dblcCompania.Text) + ',' + QuotedStr(xsClieDes) + ',' + QuotedStr(xsActivo) + ',' + QuotedStr(xsDocSunat) + ',' + QuotedStr(xsClieRuc) + ')';

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);

      DMCXC.cdsClie.Close;
      DMCXC.cdsClie.DataRequest('SELECT * FROM TGE204 WHERE CLAUXID = ' + QuotedStr(xsCLauxid) + ' AND  CLIEID=' + QuotedStr(xsClieid));
      DMCXC.cdsClie.Open;
      DMCXC.GrabaAuxConta(DMCXC.cdsClie);
   Except
      Raise exception.Create('Error al crear un nuevo cliente');
   End;
End;

Procedure TfrmPleDatosCliente.fg_MuestraRegActualizado;
Begin
   //muestra lo actualizado en la grilla sin necesidad de refrescarla
   DMCXC.cdsRegVentasPle.Edit;
   DMCXC.cdsRegVentasPle.FieldByName('DOCID').AsString := dblcTipoDocumento.Text;
   DMCXC.cdsRegVentasPle.FieldByName('CLIDOCNUM').AsString := edtNumDocCliente.Text;
   DMCXC.cdsRegVentasPle.FieldByName('CLIRAZSOC').AsString := edtCliente.Text;
   DMCXC.cdsRegVentasPle.FieldByName('CLAUXID').AsString := dblcTipoAuxiliar.Text;
   DMCXC.cdsRegVentasPle.FieldByName('CLIEID').AsString := dblcCodigoCliente.Text;

   DMCXC.cdsRegVentasPle.FieldByName('CLIDOCID').AsString := dblcTipoDocCliente.Text;
   DMCXC.cdsRegVentasPle.FieldByName('CLIDOCNUM').AsString := edtNumDocCliente.Text;

End;

End.

