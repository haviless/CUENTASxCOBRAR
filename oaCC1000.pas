Unit oaCC1000;
// INICIO USO DE ESTANDARES : 01/08/2011
// UNIDAD                   : FReferencias
// FORMULARIO               : FCCIni
// FECHA DE CREACION        :
// AUTOR                    : EQUIPO DE DESARROLLO
// OBJETIVO                 : Contiene los métodos que se invocan al ingresar a
//                            las opciones de parámetros

// Actualizaciones:
// HPC_201204_CXC 28/08/2012  Implementación del control de versiones
// HPC_201403_CXC 10/07/2014  Actualiza versión a 20140716083000
//

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mant, oaVariables, DB, ExtCtrls, StdCtrls;

Type
   TFReferencias = Class(TForm)
      lblVersion: TLabel;
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure DinamContCreate(Sender: TObject);
      Procedure DinamContInsert(Sender: TObject);
      Procedure DinamContEdit(Sender: TObject; MantFields: TFields);
      Procedure DinamContDelete(Sender: TObject; MantFields: TFields);
   End;

Procedure CCReferencias; stdcall;
Procedure CCDinamicaDocs; stdcall;
Procedure CCVerificaVersion; stdcall;

Exports
   CCReferencias,
   CCVerificaVersion,
   CCDinamicaDocs;

Var
   FReferencias: TFReferencias;
   Mtx1000: TMant;
   MRefeCXC: TMant;

Implementation

{$R *.dfm}
Uses CXCDM, CXC322, CXC234;
// CXC322   FToolCpto   Dinámica Contable de Herramientas
// CXC234   FDinaDocs   Dinámica Contable de Documentos

Procedure CCReferencias;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;

   Application.Initialize;
   Try
   // Inicio HPC_201405_CXC
   //   If Not (MRefeCXC = Nil) Then Exit;
   // Fin HPC_201405_CXC
      MRefeCXC := TMant.Create(Application);
      MRefeCXC.Module := DMCXC.wModulo;
      MRefeCXC.Admin := DMCXC.wAdmin;
      MRefeCXC.DComC := DMCXC.DCOM1;
      MRefeCXC.User := DMCXC.wUsuario;
      MRefeCXC.OnCierra := DMCXC.DisminuyeForma;
      MRefeCXC.Execute;
   Except
   End;
End;

Procedure CCDinamicaDocs;
Var
   sSQL: String;
Begin
// CXC322   FToolCpto   Dinámica Contable de Herramientas
// CXC234   FDinaDocs   Dinámica Contable de Documentos
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then exit;

// Inicio HPC_201405_CXC
   FToolCpto := TFToolCpto.Create(Application); // CXC322
   DMCXC.cdsTDoc.Filter := 'DOCMOD=''CXC'' ';
   DMCXC.cdsTDoc.Filtered := True;
   DMCXC.FiltraTabla(DMCXC.cdsCia, 'TGE101', 'CIAID');
   DMCXC.cdsCia.IndexFieldNames := 'CIAID';
   FiltraCds(DMCXC.cdsZona, '');
   FiltraCds(DMCXC.cdsDebeHabe, '');
   DMCXC.FiltraTabla(DMCXC.cdsTipReg, 'TGE128', 'TREGID');
   DMCXC.cdsTipReg.IndexFieldNames:='TREGID';
   DMCXC.FiltraTabla(DMCXC.cdsTMon, 'TGE103', 'TMONID');
   DMCXC.FiltraTabla(DMCXC.cdsTDoc, 'TGE110', 'DOCID');
   DMCXC.cdsTDoc.IndexFieldNames := 'DOCID';
   DMCXC.FiltraTabla(DMCXC.cdsZona, 'FAC105', 'TVDAID');
   sSQL := 'SELECT * FROM (SELECT A.CIAID,B.CIADES,A.CPTOCAB,A.CPTODES,A.CPTOABR,'
      + '                      A.CUENTAID,A.TMONID,C.TMONDES,A.DOCID, '
      + '                      D.DOCDES, A.TVTAID, E.TVTADES, A.CPTOCABVTA, '
      + '                      A.CPTOANT, A.TREGID, F.TREGDES, A.TIPDET, A.CCDH, '
      + '                      A.CPTODEVALM, A.CPTOGTOLET, A.CPTORENOV, A.CPTOREFIN, '
      + '                      A.CPTOLPRO, A.CPTOCCOMER,D.DOCMOD '
      + '               FROM CXC208 A,TGE101 B,TGE103 C, TGE110 D, FAC105 E, TGE128 F '
      + '               WHERE A.CIAID=B.CIAID AND A.TMONID=C.TMONID AND '
      + '                     A.DOCID=D.DOCID AND D.DOCMOD=''CXC'' AND '
      + '                     A.TVTAID=E.TVTAID AND A.TREGID=F.TREGID ';
// Fin HPC_201405_CXC

   If DMCXC.cFilterCiaUser <> '' Then
      sSQL := sSQL + ' and A.' + DMCXC.cFilterCiaUser;

   sSQL := sSQL
      + ' ) SOLVISTA ';

   Try
   // Inicio HPC_201405_CXC
   //   If Not (Mtx1000 = Nil) Then Exit;
      Mtx1000 := TMant.Create(Application);
   // Fin HPC_201405_CXC
      Mtx1000.Admin := DMCXC.wAdmin;
      Mtx1000.DComC := DMCXC.DCOM1;
      Mtx1000.Module := DMCXC.wModulo;
      Mtx1000.User := DMCXC.wUsuario;
      Mtx1000.OnCreateMant := FReferencias.DinamContCreate;
      Mtx1000.OnInsert := FReferencias.DinamContInsert;
      Mtx1000.OnEdit := FReferencias.DinamContEdit;
      Mtx1000.OnDelete := FReferencias.DinamContDelete;
      Mtx1000.OnShow := Nil;
      Mtx1000.ClientDataSet := DMCXC.cdsReporte;
      Mtx1000.TableName := 'VWCXCDINCONTDOC';
      Mtx1000.Filter := '';
      Mtx1000.Titulo := 'Dinámica Contable de Documentos';
      Mtx1000.UsuarioSQL.Add(sSQL);
      Mtx1000.SectionName := 'CXCDinamicaContableDoc';
      Mtx1000.FileNameIni := '\oaCXC.INI';
      Mtx1000.Execute;
   Finally
   End;
End;

{ TFReferencias }

Procedure TFReferencias.DinamContCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FToolCpto.pnGLt;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.AutoSize := True;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;

   TMant(Sender).FMant.pnlBtns.Visible := True;
End;

Procedure TFReferencias.DinamContInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   xSQL := 'Select * from CXC208 '
      + 'where 1<>1';
   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.IndexFieldNames := '';
   DMCXC.cdsReporte.Filter := '';
   DMCXC.cdsReporte.Filtered := False;
   DMCXC.cdsReporte.DataRequest(xSQL);
   DMCXC.cdsReporte.Open;

   DMCXC.wModo := 'A';
   FDinaDocs := TFDinaDocs.Create(Application); // CXC234   FDinaDocs   Dinámica Contable de Documentos
   FDinaDocs.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFReferencias.DinamContEdit(Sender: TObject;
   MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   If (Not Mtx1000.FMant.Z2bbtnConsulta.Enabled) And
      (Not Mtx1000.FMant.Z2bbtnModifica.Enabled) Then Exit;

   If Mtx1000.FMant.Z2bbtnModifica.Enabled Then
      DMCXC.wModo := 'M'
   Else
   Begin
      DMCXC.wModo := 'C';
   End;
{
   DMCXC.cdsReporte.Data:=Mtx1000.FMant.cds2.Data;
   DMCXC.cdsReporte.GotoCurrent(Mtx1000.FMant.cds2);
}
   xSQL := 'SELECT * FROM (SELECT A.CIAID,B.CIADES,A.CPTOCAB,A.CPTODES,A.CPTOABR,'
      + '                      A.CUENTAID,A.TMONID,C.TMONDES,A.DOCID, '
      + '                      D.DOCDES, A.TVTAID, E.TVTADES, A.CPTOCABVTA, '
      + '                      A.CPTOANT, A.TREGID, F.TREGDES, A.TIPDET, A.CCDH, '
      + '                      A.CPTODEVALM, A.CPTOGTOLET, A.CPTORENOV, A.CPTOREFIN, '
      + '                      A.CPTOLPRO, A.CPTOCCOMER '
      + '               FROM CXC208 A,TGE101 B,TGE103 C, TGE110 D, FAC105 E, TGE128 F '
      + '               WHERE A.CIAID=B.CIAID AND A.TMONID=C.TMONID AND '
      + '                     A.DOCID=D.DOCID AND D.DOCMOD=''CXC'' AND '
      + '                     A.TVTAID=E.TVTAID AND A.TREGID=F.TREGID '
      + '  and a.CIAID=' + quotedstr(MantFields.FieldByName('CIAID').AsString)
      + '  and a.CPTOCAB=' + quotedstr(MantFields.FieldByName('CPTOCAB').AsString) + ' ) SOLVISTA ';

   {
   xSQL := 'Select * from CXC208 '
          +'where CIAID='+quotedstr(MantFields.FieldByName('CIAID').AsString)
          +'  and CPTOCAB='+quotedstr(MantFields.FieldByName('CPTOCAB').AsString);}
   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.IndexFieldNames := '';
   DMCXC.cdsReporte.Filter := '';
   DMCXC.cdsReporte.Filtered := False;
   DMCXC.cdsReporte.DataRequest(xSQL);
   DMCXC.cdsReporte.Open;

   If DMCXC.cdsReporte.RecordCount = 0 Then Exit;

   FDinaDocs := TFDinaDocs.Create(Application); // CXC234   FDinaDocs   Dinámica Contable de Documentos
   FDinaDocs.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFReferencias.DinamContDelete(Sender: TObject;
   MantFields: TFields);
Var
   sSQL: String;
Begin
   If Mtx1000.FMant.cds2.RecordCount = 0 Then Exit;

   sSQL := 'select * from CXC102 '
      + 'where CIAID=' + QuotedStr(Mtx1000.FMant.cds2.FieldByName('CIAID').AsString)
      + '  and CPTOCAB=' + QuotedStr(Mtx1000.FMant.cds2.FieldByName('CPTOCAB').AsString);
   FiltraCds(DMCXC.cdsQry, sSQL);

   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      Raise Exception.Create('Elimine Primero el Detalle');
   End;

   If MessageDlg('¿  Eliminar Registro  ?' + chr(13)
      + 'Compañía  =' + QuotedStr(Mtx1000.FMant.cds2.FieldByName('CIAID').AsString) + chr(13)
      + 'Concepto  =' + QuotedStr(Mtx1000.FMant.cds2.FieldByName('CPTOCAB').AsString) + chr(13)
      + ' ' + Mtx1000.FMant.cds2.FieldByName('CPTODES').AsString + chr(13), mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      sSQL := 'delete from CXC208 '
         + 'where CIAID=' + QuotedStr(Mtx1000.FMant.cds2.FieldByName('CIAID').AsString)
         + '  and CPTOCAB=' + QuotedStr(Mtx1000.FMant.cds2.FieldByName('CPTOCAB').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         DMCXC.ActualizaFiltro(Mtx1000, Mtx1000.FMant.cds2, 'E');
         ShowMessage('Registro Eliminado');
      Except
         ShowMessage('No se puedo Eliminar el Registro');
      End;
   End;
End;
//INICIO HPC_201204_CXC

Procedure CCVerificaVersion;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   FReferencias := TFReferencias.Create(Application);
   If DMCXC.fg_VerificaVersion(FReferencias.lblVersion.Caption) = False Then
   Begin
      ShowMessage('Su Sistema no está actualizado.' + #13 + 'Comuníquese con Soporte Técnico');
      Application.Terminate;
      Exit;
   End;
End;
//FIN HPC_201204_CXC
End.

