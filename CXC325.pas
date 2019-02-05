Unit CXC325;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CXC325
// Formulario           :   frmPleRegVentas
// Fecha de Creación    :   18/04/2013
// Autor                :   Abelardo Sulca Palomino
// Objetivo             :   Ventana que permite listar el registro de ventas por
//                          compañía y por periodo. muestra la información de acuerdo
//                          a las columnas especificadas para la generación del archivo
//                          del PLE. Esta ventana además permite generar el archivo
//                          de texto para ser importado al PLE.
//                          haciendo doble click en los registros invocará a la ventana
//                          que permite la modificación de los datos del cliente

// Actualizaciones      :
// HPC_201303_CXC   25/04/2013  se agrega el botón para recuperar registros
// HPC_201305_CXC   03/05/2013  Los datos de referencia de la Nota de débito
//                              deben ser los mismos que la nóta de débito
// HPC_201309_CXC   11/12/2013  Se Modificó el Maestro de Clientes para que se pueda ingresar el N° de Identidad
//                              para este caso se reflejara en el formulario de PLE Registro de Ventas SUNAT
// HPC_201403_CXP   0/05/2014   Realizar modificaciones del archivo que se genera del PLE Registro de Ventas al formato nuevo de Sunat.
// HPC_201405_CXC   30/09/2014  Creación de Reporte de PLE - Registro de ventas - Resumen General
// HPC_201601_CXC   23/05/2016  DAF_2016000251 Ajustes del Registro de Exportación para PLE Registro de Ventas Versión 5.0


Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   wwclient, filectrl, clipbrd,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit,
   Wwdbdlg, wwdblook, ExtCtrls, Wwkeycb, ppEndUsr, ppParameter, ppBands,
// Inicio HPC_201601_CXC
// 24/05/2016  se añade clase STRUTILS
   ppClass, ppCtrls, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
   ppDB, ppDBPipe, strutils;
// Fin HPC_201601_CXC

Type
   TfrmPleRegVentas = Class(TForm)
      edtPeriodo: TEdit;
      Periodo: TLabel;
      btnGrabarRegVentas: TBitBtn;
      btnSalir: TBitBtn;
      btnImprimir: TBitBtn;
      dbgListaDocumentos: TwwDBGrid;
      btnExportarPLE: TBitBtn;
      Label7: TLabel;
      lblSituacion: TLabel;
      pnlBuscar: TPanel;
      isBuscarTexto: TwwIncrementalSearch;
      lblBusca: TLabel;
      btnCerrarPanel: TBitBtn;
      dblcCompania: TwwDBLookupCombo;
      edtCompania: TEdit;
      Label1: TLabel;
      btnRecuperar: TButton;
      btnActualizaTipoDocIden: TBitBtn;
    ppdbRegVentaPLE: TppDBPipeline;  // HPC_201405_CXC
    bbtnResumenxCia: TBitBtn;        // HPC_201405_CXC
    pprRegVentaPLE: TppReport;       // HPC_201405_CXC
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppParameterList1: TppParameterList;
    ppDesigner1: TppDesigner;        // HPC_201405_CXC
    cbDiseno: TCheckBox;             // HPC_201405_CXC
    sbDiseno: TSpeedButton;          // HPC_201405_CXC
      Procedure btnSalirClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure edtPeriodoExit(Sender: TObject);
      Procedure btnGrabarRegVentasClick(Sender: TObject);
      Procedure btnExportarPLEClick(Sender: TObject);
      Procedure dbgListaDocumentosTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure dbgListaDocumentosDblClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnCerrarPanelClick(Sender: TObject);
      Procedure isBuscarTextoKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcCompaniaExit(Sender: TObject);
      Procedure btnRecuperarClick(Sender: TObject);
      Procedure btnActualizaTipoDocIdenClick(Sender: TObject);
    procedure bbtnResumenxCiaClick(Sender: TObject);      // HPC_201405_CXC
    procedure sbDisenoClick(Sender: TObject);             // HPC_201405_CXC

   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure fg_RecuperaRegVentas(wgCompania, wgPeriodo: String);
      Function fg_ProcesaRegVentas(wgPeriodo: String): Boolean;
      Function fg_ValidaDatos(wgRegistroVentas: TwwClientDataSet; wgMensaje: String): Boolean;
      Procedure fg_InsertaTabla(wgRegistroVentas: TwwClientDataSet; wgPeriodo: String);
      Procedure fg_EliminaRegVentas(wgPeriodo: String);
      Procedure fg_CompletaDatosNC(wgCiaid, wgTipoDiario, wgNumregistro, wgPeriodo: String;
         Var wgModFec: String; Var wgModDocId: String; Var wgModSerie: String; Var wgModNumDoc: String);
      Procedure fg_PLEexportarFormato(wgPeriodo, wgArchivo: String);
      Procedure fg_ObtieneDatosCliente(wgCds: TwwClientDataSet; Var wgTipoDocumento, wgNumDocumento: String);
      Procedure fg_AsignaDataSource;
      Procedure fg_HabilitaBotones;
      Procedure fg_GrabaTipoDocCliente(wgCds: TwwClientDataSet);

   End;
Var
   frmPleRegVentas: TfrmPleRegVentas;

Implementation

{$R *.dfm}

Uses CXCDM, CXC326;

Procedure TfrmPleRegVentas.btnSalirClick(Sender: TObject);
Begin
   Close();
End;

Procedure TfrmPleRegVentas.FormShow(Sender: TObject);
Begin
   dbgListaDocumentos.DataSource := DMCXC.dsRegVentasPle;
   fg_AsignaDataSource;
   fg_RecuperaRegVentas('', '');
   cbDiseno.Visible := False;

End;

Procedure TfrmPleRegVentas.fg_RecuperaRegVentas(wgCompania, wgPeriodo: String);
Var
   xsSql: String;
   xsCompania: String;
Begin
   xsCompania := wgCompania;
   If wgCompania = '01' Then
   Begin
      xsCompania := '%';
   End;

   Filtracds(DMCXC.cdsClie, 'SELECT * FROM TGE204 WHERE CLAUXID =' + QuotedStr('C') + ' AND ACTIVO = ' + QuotedStr('S'));

   dbgListaDocumentos.DataSource := DMCXC.dsRegVentasPle;
   //Verificando si ya se generó el registro de ventas
   xsSql := 'SELECT * FROM CXC_REG_VEN WHERE PERIODO = ' + QuotedStr(wgPeriodo) + ' AND CIAID LIKE (' + QuotedStr(xsCompania) + ') ';
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      xsSql := 'SELECT * FROM CXC_REG_VEN WHERE PERIODO = ' + QuotedStr(wgPeriodo) + ' AND CIAID LIKE (' + QuotedStr(xsCompania) + ') ' + ' ORDER BY CORRELATIVO';
      DMCXC.cdsRegVentasPle.Close;
      DMCXC.cdsRegVentasPle.DataRequest(xsSql);
      DMCXC.cdsRegVentasPle.Open;
      lblSituacion.Caption := 'Generado';
   End
   Else
   Begin
   // Inicio HPC_201309_CXC
      xsSql := ' SELECT CXC301.CCANOMES PERIODO, '
              +'        LPAD(ROWNUM,10,' + Quotedstr('0') + ') CORRELATIVO, '
              +'        CXC301.CCFEMIS FECEMI, '
              +'        CXC301.CCFVCMTO FECVEN, '
              +'       (SELECT TGE110.TDOC_SUNAT '
              +'          FROM TGE110 '
              +'         WHERE CXC301.DOCID = TGE110.DOCID '
              +'           AND TGE110.DOCMOD = ' + QuotedStr('CXC') + ') DOCID, '
              +'        CXC301.CCSERIE CCSERIE, '
              +'        CXC301.CCNODOC CCNODOC, '
              +'        0 IMPOPEDIA, '
              +'       (SELECT TGE204.TDOC_ID_SUNAT '
              +'          FROM TGE204 '
              +'         WHERE TGE204.CLAUXID = CXC301.CLAUXID AND TGE204.CLIEID = CXC301.CLIEID AND ROWNUM = 1 ) CLIDOCID, '
              +'       (CASE WHEN TGE204.TIPPERID =' + QuotedStr('00') + ' THEN (CASE WHEN TGE204.CLIEDNI IS NULL THEN ' + QuotedStr('00000000') + ' ELSE TGE204.CLIEDNI END) ELSE CXC301.CLIERUC END) CLIDOCNUM, '
              +'        CXC301.CLIEDES CLIRAZSOC, '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCEXPORT ELSE CXC301.CCEXPORT * CXC301.CCTCAMPR END),2) IMPEXP, '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCGRAVAD ELSE CXC301.CCGRAVAD * CXC301.CCTCAMPR END),2) BASIMP,  '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CXC_IMP_EXO ELSE CXC301.CXC_IMP_EXO * CXC301.CCTCAMPR END),2) IMPEXO, '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCNOGRAV ELSE CXC301.CCNOGRAV * CXC301.CCTCAMPR END),2) IMPINA, '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCISC ELSE CXC301.CCISC * CXC301.CCTCAMPR END),2) IMPISC, '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCIGV ELSE CXC301.CCIGV * CXC301.CCTCAMPR END),2) IGV, '
              +'        0 BASIMPIVA, '
              +'        0 IMPIVA, '
              +'       (CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCSERVIC ELSE CXC301.CCSERVIC * CXC301.CCTCAMPR END) IMPOTROS, '
              +'        ROUND((CASE WHEN CXC301.TMONID = ' + QuotedStr('N') + ' THEN CXC301.CCMTOORI ELSE CXC301.CCMTOORI * CXC301.CCTCAMPR END),2) IMPTOTAL, '
              +'        CXC301.CCTCAMPR CCTCAMPR, '
              +'        NULL MODFECEMI, '
              +'        NULL MODDOCID, '
              +'        NULL MODCCSERIE, '
              +'        NULL MODCCNODOC, '
              +'        1 FLGMOD, '
              +'        CXC301.CIAID, '
              +'        CXC301.TDIARID, '
              +'        CXC301.CCNOREG, '
              +'        CXC301.CLAUXID, '
              +'        CXC301.CLIEID '
              +'  FROM CXC301, TGE204 '
              +' WHERE CCESTADO IN (' + QuotedStr('P') + ',' + QuotedStr('C') + ') '
              +'   AND CXC301.CIAID LIKE (' + QuotedStr(xsCompania) + ') '
              +'   AND CCANOMES = ' + QuotedStr(wgPeriodo) + ' '
              +'   AND CXC301.CLIEID = TGE204.CLIEID(+) '
              +'   AND CXC301.CIAID = TGE204.CIAID(+) '
              +' ORDER BY CXC301.CIAID, CXC301.CCFEMIS';
   // Fin HPC_201309_CXC
      DMCXC.cdsRegVentasPle.Close;
      DMCXC.cdsRegVentasPle.DataRequest(xsSql);
      DMCXC.cdsRegVentasPle.Open;
      lblSituacion.Caption := '';
   End;

End;

Procedure TfrmPleRegVentas.edtPeriodoExit(Sender: TObject);
Begin
   If (dblcCompania.Text = '') Then
   Begin
      ShowMessage('Debe Seleccionar la Compañía');
      Exit;
   End;
   fg_RecuperaRegVentas(dblcCompania.Text, edtPeriodo.Text);
   fg_HabilitaBotones;
End;

Procedure TfrmPleRegVentas.btnGrabarRegVentasClick(Sender: TObject);
Var
   xsSql: String;
Begin
   xsSql := 'SELECT * FROM CXC_REG_VEN WHERE PERIODO = ' + QuotedStr(edtPeriodo.Text);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      If MessageDlg('Desea Generar Nuevamente el Registro de Ventas?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes Then
      Begin
         Exit;
      End;
   End;
   fg_EliminaRegVentas(edtPeriodo.Text);
   fg_ProcesaRegVentas(edtPeriodo.Text);
   ShowMessage('Culminó la Generación del Registro de Ventas');
   fg_HabilitaBotones;

End;

Function TfrmPleRegVentas.fg_ProcesaRegVentas(wgPeriodo: String): Boolean;
Var
   xsMensaje: String;
   xsMensajeError: String;
   xfArchLogError: TextFile;
   xsRutaArchivo: String;
Begin
   fg_RecuperaRegVentas(dblcCompania.Text, wgPeriodo); //carga el cdsRegVentasPle

   While Not DMCXC.cdsRegVentasPle.Eof Do
   Begin
      xsMensaje := '';
      DMCXC.cdsRegVentasPle.Edit; //sólo para modificar temporalmente los datos
      //validamos los datos usando el mismo clientdataset (cdsRegCompra)
      If fg_ValidaDatos(DMCXC.cdsRegVentasPle, xsMensaje) = False Then
      Begin
         If xsMensajeError = '' Then
         Begin
            xsRutaArchivo := 'c:\logerror.txt';
            AssignFile(xfArchLogError, xsRutaArchivo);
            Rewrite(xfArchLogError);
            WriteLn(xfArchLogError, xsMensaje + #13);
            dbgListaDocumentos.Canvas.Font.Color := clBlue;
         End;
         xsMensajeError := xsMensajeError + xsMensaje;

      End;
      DMCXC.cdsRegVentasPle.Next;
   End;

   If xsMensajeError <> '' Then
   Begin
      CloseFile(xfArchLogError);
      ShowMessage('Se ha generado en la ubicación ' + xsRutaArchivo);
      Result := False;
      Exit;
   End;
   //si no hay error entonces insertamos en la tabla el registro de compras
   DMCXC.cdsRegVentasPle.First;
   fg_InsertaTabla(DMCXC.cdsRegVentasPle, wgPeriodo);

   Result := True;
End;

Function TfrmPleRegVentas.fg_ValidaDatos(wgRegistroVentas: TwwClientDataSet; wgMensaje: String): Boolean;
Var
   xsSql: String;
   xsRVClienteTAux: String;
   xsRVClienteId: String;
   xsRVClienteNumDoc: String;
   xsIdentificadorDoc: String;
Begin
   xsIdentificadorDoc := '[' + wgRegistroVentas.FieldByName('CORRELATIVO').AsString + '-' +
      'Doc: ' + wgRegistroVentas.FieldByName('DOCID').AsString + '-' +
      'Serie: ' + wgRegistroVentas.FieldByName('CCSERIE').AsString + '-' +
      'Nº: ' + wgRegistroVentas.FieldByName('CCNODOC').AsString + ']';

   xsRVClienteTAux := wgRegistroVentas.FieldByName('CLAUXID').AsString;
   xsRVClienteId := wgRegistroVentas.FieldByName('CLIEID').AsString;
   xsRVClienteNumDoc := wgRegistroVentas.FieldByName('CLIDOCNUM').AsString;

   //buscando en maestro de clientes
   xsSql := ' SELECT TDOC_ID_SUNAT,CLIERUC, CLIEDNI  '
           +'   FROM TGE204 '
           +'  WHERE CLAUXID = ' + QuotedStr(xsRVClienteTAux)
           +'    AND CLIEID =  ' + QuotedStr(xsRVClienteId);
   DMCXC.cdsQry.close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      If DMCXC.cdsQry.FieldByName('CLIERUC').AsString <> wgRegistroVentas.FieldByName('CLIDOCNUM').AsString Then
      Begin
         wgMensaje := xsIdentificadorDoc + ' Cliente: ' + xsRVClienteTAux + '-' + xsRVClienteId + ' Nº doc de identificacion no es igual al Maestro de Clientes';
      End;
      If Length(DMCXC.cdsQry.FieldByName('CLIERUC').AsString) = 0 Then
      Begin
         wgMensaje := xsIdentificadorDoc + ' Cliente: ' + xsRVClienteTAux + '-' + xsRVClienteId + ' no tiene tipo de cliente en Maestro de Clientes';
      End;
      //si es factura debe ser ruc
      If (wgRegistroVentas.FieldByName('DOCID').AsString = '01') And (DMCXC.cdsQry.FieldByName('TDOC_ID_SUNAT').AsString <> '06') Then
      Begin
         wgMensaje := xsIdentificadorDoc + ' Cliente: ' + xsRVClienteTAux + '-' + xsRVClienteId + ' Si es factura el tipo de documento debe ser Ruc';
      End;
   End
   Else
   Begin
      wgMensaje := xsIdentificadorDoc + ' Cliente: ' + xsRVClienteTAux + '-' + xsRVClienteId + ' No existe en Maestro de Clientes';
   End;

   Result := True;
End;

Procedure TfrmPleRegVentas.fg_InsertaTabla(wgRegistroVentas: TwwClientDataSet; wgPeriodo: String);
Var
   xsSql: String;
   xsCorrelativo: String;
   xsPeriodo: String;
   xsFechaEmision: String;
   xsFechaVenvimiento: String;
   xsDocId: String;
   xsSerie: String;
   xsNumDocumento: String;
   xsImpOpeDia: String;
   xsCliDocId: String;
   xsCliDocNum: String;
   xsCliRazSoc: String;
   xsImpExp: String;
   xsBaseImp: String;
   xsImpExo: String;
   xsImpIna: String;
   xsImpIsc: String;
   xsIgv: String;
   xsBasImpIva: String;
   xsImpIva: String;
   xsImpOtros: String;
   xsImpTotal: String;
   xsTipoCambio: String;
   xsModFecEmi: String;
   xsModDocId: String;
   xsModSerie: String;
   xsModNumDoc: String;
   xsFlgMod: String;
   xsCiaId: String;
   xsTipoDiario: String;
   xsNumRegistro: String;
   xsClauxId: String;
   xsClieId: String;
   xnCorrelativo: Double;
Begin
   fg_EliminaRegVentas(wgPeriodo);
   //validamos los datos usando el mismo clientdataset (cdsRegCompra)
   xnCorrelativo := 1;
   While Not wgRegistroVentas.Eof Do
   Begin
      xsPeriodo := wgPeriodo;
      xsCorrelativo := FormatFloat('0000000', xnCorrelativo);
      xsFechaEmision := wgRegistroVentas.FieldByName('FECEMI').AsString;
      xsFechaVenvimiento := wgRegistroVentas.FieldByName('FECVEN').AsString;
      xsDocId := wgRegistroVentas.FieldByName('DOCID').AsString;
      xsSerie := wgRegistroVentas.FieldByName('CCSERIE').AsString;
      xsNumDocumento := wgRegistroVentas.FieldByName('CCNODOC').AsString;
   // Inicio HPC_201601_CXC
   // Inicializa Flag de Tipo de Importe de Operación del Día de acuerdo al Documento de Venta
   //      xsImpOpeDia := wgRegistroVentas.FieldByName('IMPOPEDIA').AsString;
      if (xsDocId ='00') or (xsDocId ='03') or (xsDocId ='12') or (xsDocId ='13') or (xsDocId ='87') then
         xsImpOpeDia := '2'
      else
         xsImpOpeDia :='0';
   // Fin HPC_201601_CXC

      fg_ObtieneDatosCliente(wgRegistroVentas, xsCliDocId, xsCliDocNum);

      xsCliRazSoc := wgRegistroVentas.FieldByName('CLIRAZSOC').AsString;

      xsImpExp := wgRegistroVentas.FieldByName('IMPEXP').AsString;
      If Length(xsImpExp) = 0 Then
      Begin
         xsImpExp := '0';
      End;

      xsBaseImp := wgRegistroVentas.FieldByName('BASIMP').AsString;
      If Length(xsBaseImp) = 0 Then
      Begin
         xsBaseImp := '0';
      End;

      xsImpExo := wgRegistroVentas.FieldByName('IMPEXO').AsString;
      If Length(xsImpExo) = 0 Then
      Begin
         xsImpExo := '0';
      End;

      xsImpIna := wgRegistroVentas.FieldByName('IMPINA').AsString;
      If Length(xsImpIna) = 0 Then
      Begin
         xsImpIna := '0';
      End;

      xsImpIsc := wgRegistroVentas.FieldByName('IMPISC').AsString;
      If Length(xsImpIsc) = 0 Then
      Begin
         xsImpIsc := '0';
      End;

      xsIgv := wgRegistroVentas.FieldByName('IGV').AsString;
      If Length(xsIgv) = 0 Then
      Begin
         xsIgv := '0';
      End;

      xsBasImpIva := wgRegistroVentas.FieldByName('BASIMPIVA').AsString;
      If Length(xsBasImpIva) = 0 Then
      Begin
         xsBasImpIva := '0';
      End;

      xsImpIva := wgRegistroVentas.FieldByName('IMPIVA').AsString;
      If Length(xsImpIva) = 0 Then
      Begin
         xsImpIva := '0';
      End;

      xsImpOtros := wgRegistroVentas.FieldByName('IMPOTROS').AsString;
      If Length(xsImpOtros) = 0 Then
      Begin
         xsImpOtros := '0';
      End;

      xsImpTotal := wgRegistroVentas.FieldByName('IMPTOTAL').AsString;
      If Length(xsImpTotal) = 0 Then
      Begin
         xsImpTotal := '0';
      End;

      xsTipoCambio := wgRegistroVentas.FieldByName('CCTCAMPR').AsString;
      If Length(xsTipoCambio) = 0 Then
      Begin
         xsTipoCambio := '0';
      End;

      //si es nota de crédito entonces es negativo
      If xsDocId = '07' Then
      Begin
         xsImpExp := '-' + xsImpExp;
         xsBaseImp := '-' + xsBaseImp;
         xsImpExo := '-' + xsImpExo;
         xsImpIna := '-' + xsImpIna;
         xsImpOpeDia := '-' + xsImpOpeDia;
         xsImpIsc := '-' + xsImpIsc;
         xsIgv := '-' + xsIgv;
         xsBasImpIva := '' + xsBasImpIva;
         xsImpIva := '-' + xsImpIva;
         xsImpOtros := '-' + xsImpOtros;
         xsImpTotal := '-' + xsImpTotal;
      End;

      xsFlgMod := wgRegistroVentas.FieldByName('FLGMOD').AsString;
      xsCiaId := wgRegistroVentas.FieldByName('CIAID').AsString;
      xsTipoDiario := wgRegistroVentas.FieldByName('TDIARID').AsString;
      xsNumRegistro := wgRegistroVentas.FieldByName('CCNOREG').AsString;
      xsClauxId := wgRegistroVentas.FieldByName('CLAUXID').AsString;
      xsClieId := wgRegistroVentas.FieldByName('CLIEID').AsString;
      If (xsDocId = '07') Or (xsDocId = '08') Then
      Begin
         fg_CompletaDatosNC(xsCiaId, xsTipoDiario, xsNumRegistro, wgPeriodo, xsModFecEmi, xsModDocId, xsModSerie, xsModNumDoc);
      End
      Else
      Begin
         xsModFecEmi := '';
         xsModDocId := '';
         xsModSerie := '';
         xsModNumDoc := '';
      End;

   // Si no hay documento de referencia en Notas de débito se asigna los datos de la misma ND
      If (xsDocId = '08') And (xsModNumDoc = '') Then
      Begin
         xsModFecEmi := xsFechaEmision;
         xsModDocId := xsDocId;
         xsModSerie := xsSerie;
         xsModNumDoc := xsNumDocumento;
      End;
   // Inicio HPC_201601_CXC
   // Añade Control de Transacciones a actualización de datos
      DMCXC.DCOM1.AppServer.IniciaTransaccion;
      xsSql := ' INSERT INTO CXC_REG_VEN (PERIODO,CORRELATIVO,FECEMI,FECVEN,DOCID,CCSERIE,CCNODOC,IMPOPEDIA, '
             + '                          CLIDOCID,CLIDOCNUM,CLIRAZSOC,IMPEXP,BASIMP,IMPEXO,IMPINA,IMPISC, '
             + '                          IGV,BASIMPIVA,IMPIVA,IMPOTROS,IMPTOTAL,CCTCAMPR,MODFECEMI,MODDOCID, '
             + '                          MODCCSERIE,MODCCNODOC,FLGMOD,CIAID,TDIARID,CCNOREG,CLAUXID,CLIEID)'
             + '  VALUES(' + QuotedStr(xsPeriodo) + ',' + QuotedStr(xsCorrelativo) + ',' + QuotedStr(xsFechaEmision) + ','
                           + QuotedStr(xsFechaVenvimiento) + ',' + QuotedStr(xsDocId) + ',' + QuotedStr(xsSerie) + ','
                           + QuotedStr(xsNumDocumento) + ',' + xsImpOpeDia + ', ' + QuotedStr(xsCliDocId) + ','
                           + QuotedStr(xsCliDocNum) + ',' + QuotedStr(xsCliRazSoc) + ',' + xsImpExp + ',' + xsBaseImp + ','
                           + xsImpExo + ',' + xsImpIna + ',' + xsImpIsc + ', ' + xsIgv + ','
                           + xsBasImpIva + ',' + xsImpIva + ',' + xsImpOtros + ',' + xsImpTotal + ','
                           + xsTipoCambio + ',' + QuotedStr(xsModFecEmi) + ',' + QuotedStr(xsModDocId) + ', '
                           + QuotedStr(xsModSerie) + ',' + QuotedStr(xsModNumDoc) + ',' + QuotedStr(xsFlgMod) + ','
                           + QuotedStr(xsCiaId) + ',' + QuotedStr(xsTipoDiario) + ',' + QuotedStr(xsNumRegistro) + ','
                           + QuotedStr(xsClauxId) + ',' + QuotedStr(xsClieId) + ') ';

   //    DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
         DMCXC.DCOM1.AppServer.GrabaTransaccion;
      Except
         ShowMessage('Error en la Transacción Insertar de la Cia. '+ QuotedStr(xsCiaId) +Chr(13)+
               ' Tipo de Diario ' + QuotedStr(xsTipoDiario) +Chr(13)+
               ' Número de Registro ' + QuotedStr(xsNumRegistro) +Chr(13)+
               ' Periodo'+ QuotedStr(xsPeriodo) +Chr(13)+
               '  ');
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         exit;
      End;

   // Fin HPC_201601_CXC
      //actualizamos el total debido a diferencias en el PLE
      xsSql := ' UPDATE CXC_REG_VEN '
              +'    SET IMPTOTAL = IMPEXP+BASIMP+IMPEXO+IMPINA+IMPISC+IGV+BASIMPIVA+IMPIVA+IMPOTROS '
              +'  WHERE PERIODO = ' + QuotedStr(xsPeriodo)
              +'    AND CORRELATIVO = ' + QuotedStr(xsCorrelativo);
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
      xnCorrelativo := xnCorrelativo + 1;
      wgRegistroVentas.Next;
   End;

End;

Procedure TfrmPleRegVentas.fg_EliminaRegVentas(wgPeriodo: String);
Var
   xsSql: String;
Begin
   xsSql := ' DELETE CXC_REG_VEN WHERE PERIODO = ' + QuotedStr(wgPeriodo);
   DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
End;

Procedure TfrmPleRegVentas.fg_CompletaDatosNC(wgCiaid, wgTipoDiario, wgNumregistro, wgPeriodo: String;
   Var wgModFec: String; Var wgModDocId: String; Var wgModSerie: String; Var wgModNumDoc: String);
Var
   xsSql: String;
Begin
   wgModFec := '';
   wgModDocId := '';
   wgModSerie := '';
   wgModNumDoc := '';

   xsSql := 'SELECT * '
           +'  FROM CXC301 '
           +' WHERE CIAID = ' + QuotedStr(wgCiaid)
           +'   AND TDIARID = ' + QuotedStr(wgTipoDiario)
           +'   AND CCNOREG = ' + QuotedStr(wgNumregistro)
           +'   AND CCANOMES = ' + QuotedStr(wgPeriodo);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      xsSql := ' SELECT to_char(FACT.CCFEMIS,' + QuotedStr('dd/mm/yyyy') + ') CCFEMIS, TGE110.TDOC_SUNAT, CXC304.CCSERIE, '
             + '        CXC304.CCNODOC '
             + '  FROM CXC304 , CXC301 FACT, TGE110 '
             + ' WHERE CXC304.CIAID   = ' + QuotedStr(DMCXC.cdsQry.FieldByName('CIAID').asString)
             + '   AND CXC304.TDIARID   = ' + QuotedStr(DMCXC.cdsQry.FieldByName('TDIARID').asString)
             + '   AND CXC304.TCANJEID  = ' + QuotedStr(DMCXC.cdsQry.FieldByName('TCANJEID').asString)
             + '   AND CXC304.CCCANJE   = ' + QuotedStr(DMCXC.cdsQry.FieldByName('CCCANJE').asString)
             + '   AND CXC304.DOCID     = TGE110.DOCID '
             + '   AND TGE110.DOCMOD    = ' + QuotedStr('CXC')
             + '   AND CXC304.CIAID     = FACT.CIAID '
             + '   AND CXC304.TDIARID   = FACT.TDIARID '
             + '   AND CXC304.CCANOMM   = FACT.CCANOMES '
             + '   AND CXC304.CCNOREG   = FACT.CCNOREG '
             + '   AND CXC304.DOCID     = FACT.DOCID '
             + '   AND CXC304.CCSERIE   = FACT.CCSERIE '
             + '   AND CXC304.CCNODOC   = FACT.CCNODOC ';
      DMCXC.cdsQry.Close;
      DMCXC.cdsQry.DataRequest(xsSql);
      DMCXC.cdsQry.Open;
      If DMCXC.cdsQry.RecordCount > 0 Then
      Begin
         wgModFec := DMCXC.cdsQry.FieldByName('CCFEMIS').asString;
         wgModDocId := DMCXC.cdsQry.FieldByName('TDOC_SUNAT').asString;
         wgModSerie := DMCXC.cdsQry.FieldByName('CCSERIE').asString;
         wgModNumDoc := DMCXC.cdsQry.FieldByName('CCNODOC').asString;
      END;
   End;

End;

Procedure TfrmPleRegVentas.fg_PLEexportarFormato(wgPeriodo, wgArchivo: String);
Var
   xsSql: String;
   xfArchivoTexto: TextFile;

   xsDelimitador: String;
   xsPeriodoRV: String;

   xsPeriodo: String;
   xsMes: String;
   xsRER: String;
   xsCantid : Integer;
   xsTamano : Integer;
   xsCorrelativo: String;
   xsFecEmi: String;
   xsFecVen: String;
   xsDocId: String;
   xsSerie: String;
   xsnumDocumento: String;
   xsImpOpedia: String;
   xsCliDocId: String;
   xsCliDocNum: String;
   xsCliRazSoc: String;
   xsImpExp: String;
   xsBasImp: String;
   xsImpExo: String;
   xsImpIna: String;
   xsImpIsc: String;
   xsImpIgv: String;
   xsBasImpIva: String;
   xsImpIva: String;
   xsImpOtros: String;
   xsImpTotal: String;
   xsTipoCambio: String;
   xsModFecEmi: String;
   xsModDocId: String;
   xsModSerie: String;
   xsModNumDoc: String;
   xsFlgMod: String;
// Inicio HPC_201601_CXC
// añade variables para nuevos campos
   xsTMon : String; //  Tipo de Moneda
// Fin HPC_201601_CXC

Begin
   xsDelimitador := '|';
// Inicio HPC_201601_CXC
// Ajustes del Registro de Exportación para PLE Registro de Ventas Versión 5.0
   xsSql := ' Select R.PERIODO, R.CORRELATIVO, R.FECEMI, R.FECVEN, R.DOCID, R.CCSERIE, R.CCNODOC, R.IMPOPEDIA, R.CLIDOCID, R.CLIDOCNUM, '
      + '            R.CLIRAZSOC, R.IMPEXP, R.BASIMP, R.IMPEXO, R.IMPINA, R.IMPISC, R.IGV, R.BASIMPIVA, R.IMPIVA, R.IMPOTROS, R.IMPTOTAL, '
      + '            R.CCTCAMPR, R.MODFECEMI, C.TMONID, '
      + '            R.MODDOCID, R.MODCCSERIE, R.MODCCNODOC, R.FLGMOD, R.CIAID, R.TDIARID, R.CCNOREG, R.CLAUXID, R.CLIEID  '
      + '       from CXC_REG_VEN R, CXC301 C '
      + '      where R.CIAID = C.CIAID AND R.TDIARID = C.TDIARID AND R.CCNOREG =C.CCNOREG AND R.PERIODO = C.CCANOMES '
      + '        and R.PERIODO = ' + QuotedStr(wgPeriodo)
      + '      order by R.CORRELATIVO';
   DMCXC.cdsQry.close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.open;
   AssignFile(xfArchivoTexto, wgArchivo);
   Rewrite(xfArchivoTexto);
   While Not DMCXC.cdsQry.Eof Do
   Begin
   // Tipo de moneda expresado en Estándar Internacional.
      xsTMon := 'PEN';
      If DMCXC.cdsQry.Recordcount>0 then
      Begin
         if DMCXC.cdsQry.FieldByName('TMONID').AsString = 'D' then
            xsTMon := 'USD';
      End;

   // campo 1.
      xsPeriodo := DMCXC.cdsQry.FieldByName('PERIODO').AsString + '00';

   // campo 2.
//      xsCorrelativo := DMCXC.cdsQry.FieldByName('CORRELATIVO').AsString;
      xsCorrelativo := DMCXC.cdsQry.FieldByName('TDIARID').AsString
                     + DMCXC.cdsQry.FieldByName('CIAID').AsString
                     + COPY(DMCXC.cdsQry.FieldByName('CCNOREG').AsString,6,5);

   // campo 3.
      xsMes :=  copy(xsPeriodo,5,2);
      If (StrToInt(xsMes) > 1) and (StrToInt(xsMes) < 12)  then
         xsRER := 'M';

   // Se inicializan Variables A para RegVta Anual y C para Cierre
      If (StrToInt(xsMes) = 1)   then
         xsRER := 'A';
      If (StrToInt(xsMes) = 12)  then
         xsRER := 'C';

   // campo 4.
      xsFecEmi := DMCXC.cdsQry.FieldByName('FECEMI').AsString;

   // campo 5.
      xsFecVen := DMCXC.cdsQry.FieldByName('FECVEN').AsString;

   // campo 6.
      xsDocId := DMCXC.cdsQry.FieldByName('DOCID').AsString;

   // campo 7.
      xsSerie := DMCXC.cdsQry.FieldByName('CCSERIE').AsString;
      If (xsDocId = '01') Or (xsDocId = '03') Or (xsDocId = '06') Or (xsDocId = '07') Or (xsDocId = '08') Then
      Begin
         If Length(xsSerie) <= 4 Then
         Begin
            xsSerie := StringOfChar('0', 4 - Length(xsSerie)) + xsSerie;
         End
         Else
         Begin
            xsTamano := 0;
            xsCantid := 0;
            xsTamano := Length(xsSerie) - 4 ;
            xsCantid := strtoint(Copy(xsSerie, 1, xsTamano));
            if xsCantid = 0 then
            Begin
               xsSerie := Copy(xsSerie, xstamano + 1, 4);
            End
            Else
            Begin
               xsSerie := '0000';
            End;
         End;
      End
      Else
         If xsDocId = '00' Then
         Begin
            xsSerie := '-';
         End
         Else
         Begin
            xsSerie := StringOfChar('0', 20 - Length(xsSerie)) + xsSerie;
         End;

   // campo 8.
      xsnumDocumento := DMCXC.cdsQry.FieldByName('CCNODOC').AsString;
      If (xsDocId = '01') Or (xsDocId = '03') Or (xsDocId = '06') Or (xsDocId = '07') Or (xsDocId = '08') Then
      Begin
         If Length(xsnumDocumento) > 7 Then
         Begin
            xsTamano := 0;
            xsCantid := 0;
            xsTamano := Length(xsnumDocumento) - 7 ;
            xsCantid := strtoint(Copy(xsnumDocumento, 1, xsTamano));
            if xsCantid = 0 then
            Begin
               xsnumDocumento := Copy(xsnumDocumento, xstamano + 1, 7);
            End
            Else
            Begin
               xsnumDocumento := '0000000';
            End;
         End;
      End;

   // campo 9.
      xsImpOpedia := DMCXC.cdsQry.FieldByName('IMPOPEDIA').AsString;

      If xsImpOpedia = '0' Then
      Begin
         xsImpOpedia := ' ';
      End;
      xsFlgMod := DMCXC.cdsQry.FieldByName('FLGMOD').AsString;
      xsModDocId := DMCXC.cdsQry.FieldByName('MODDOCID').AsString;
      xsImpExp := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPEXP').AsFloat);

   // campo 10.
   // Regla A
      xsCliDocId := DMCXC.cdsQry.FieldByName('CLIDOCID').AsString;
      If (xsDocId = '00') Or (xsDocId = '05') Or (xsDocId = '06') Or (xsDocId = '07') Or (xsDocId = '08') or
      (xsDocId = '11') Or (xsDocId = '12') Or (xsDocId = '13') Or (xsDocId = '14') Or (xsDocId = '15') or
      (xsDocId = '16') Or (xsDocId = '18') Or (xsDocId = '19') Or (xsDocId = '23') Or (xsDocId = '26') or
      (xsDocId = '28') Or (xsDocId = '30') Or (xsDocId = '34') Or (xsDocId = '35') Or (xsDocId = '36') or
      (xsDocId = '37') Or (xsDocId = '55') Or (xsDocId = '56') Or (xsDocId = '87') Or (xsDocId = '88') Then
      Begin
         xsCliDocId := '';
      End;
   // Regla B
      If xsFlgMod ='2' then
      begin
         xsCliDocId := '';
      End;
   // Regla C
      If ((xsDocId = '07') Or (xsDocId = '08') Or (xsDocId = '87') Or (xsDocId = '88')) and
         ((xsCliDocId = '03') Or (xsCliDocId = '12') Or (xsCliDocId = '13') Or (xsCliDocId = '14') Or (xsCliDocId = '36')) then
      begin
         xsCliDocId := '';
      end;
   // Regla D
      If DMCXC.cdsQry.FieldByName('IMPEXP').AsFloat >0 then
      begin
         xsCliDocId := '';
      end;

      If Length(xsCliDocId) > 1 Then
      Begin
         xsCliDocId := FloatToStr(StrToFloat(xsCliDocId));
      End;

   // campo 11.
      xsCliDocNum := DMCXC.cdsQry.FieldByName('CLIDOCNUM').AsString;
      If Length(xsCliDocNum) = 0 Then
      Begin
         xsCliDocNum := '-';
      End;

   // campo 12.
      xsCliRazSoc := Copy(DMCXC.cdsQry.FieldByName('CLIRAZSOC').AsString, 1, 60);
      If Length(xsCliRazSoc) = 0 Then
      Begin
         xsCliRazSoc := '-';
      End;

   // campo 13.
      xsBasImp := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('BASIMP').AsFloat);

   // campo 14.
      xsImpExo := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPEXO').AsFloat);

   // campo 15.
      xsImpIna := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPINA').AsFloat);

   // campo 16.
      xsImpIsc := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPISC').AsFloat);

   // campo 17.
      xsImpIgv := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IGV').AsFloat);

   // campo 18.
      xsBasImpIva := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('BASIMPIVA').AsFloat);

   // campo 19.
      xsImpIva := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPIVA').AsFloat);

   // campo 20.
      xsImpOtros := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPOTROS').AsFloat);

   // campo 21.
      xsImpTotal := FormatFloat('##0.00', DMCXC.cdsQry.FieldByName('IMPTOTAL').AsFloat);

   // campo 22.
      xsTipoCambio := FormatFloat('##0.000', DMCXC.cdsQry.FieldByName('CCTCAMPR').AsFloat);

   // campo 23.
      xsModFecEmi := DMCXC.cdsQry.FieldByName('MODFECEMI').AsString;
      If Length(xsModFecEmi) = 0 Then
      Begin
         xsModFecEmi := '01/01/0001';
      End;

   // campo 24.
      If Length(xsModDocId) = 0 Then
      Begin
         xsModDocId := '00';
      End;

   // campo 25.
      xsModSerie := DMCXC.cdsQry.FieldByName('MODCCSERIE').AsString;
      If Length(xsModSerie) = 0 Then
      Begin
         xsModSerie := '-';
      End
      Else
      Begin
         If Length(xsModSerie) < 4 Then
         Begin
            xsModSerie := StringOfChar('0', 4 - Length(xsModSerie)) + xsModSerie;
         End
         else
         begin
            xsModserie := ansiRightStr(xsModSerie, 4);
         end;
      End;

   // campo 26.
      xsModNumDoc := DMCXC.cdsQry.FieldByName('MODCCNODOC').AsString;
      If Length(xsModNumDoc) = 0 Then
      Begin
         xsModNumDoc := '-';
      End
      Else
      Begin
         If Length(xsModNumDoc) < 8 Then
         Begin
            xsModNumDoc := StringOfChar('0', 8 - Length(xsModNumDoc)) + xsModNumDoc;
         End
         else
         begin
            xsModNumDoc := ansiRightStr(xsModNumDoc, 8);
         end;
      End;

{
      WriteLn(xfArchivoTexto,
         xsPeriodo + xsDelimitador +                        // 1
         xsCorrelativo + xsDelimitador +                    // 2
         xsRER+xsCorrelativo + xsDelimitador +              // 3
         xsFecEmi + xsDelimitador +                         // 4
         xsFecVen + xsDelimitador +                         // 5
         xsDocId + xsDelimitador +                          // 6
         xsSerie + xsDelimitador +                          // 7
         xsnumDocumento + xsDelimitador +                   // 8
         xsImpOpedia + xsDelimitador +                      // 9
         xsCliDocId + xsDelimitador +                       // 10
         xsCliDocNum + xsDelimitador +                      // 11
         xsCliRazSoc + xsDelimitador +                      // 12
         xsImpExp + xsDelimitador +                         // 13
         xsBasImp + xsDelimitador +                         // 14
         xsImpExo + xsDelimitador +                         // 15
         xsImpIna + xsDelimitador +                         // 16
         xsImpIsc + xsDelimitador +                         // 17
         xsImpIgv + xsDelimitador +                         // 18
         xsBasImpIva + xsDelimitador +                      // 19
         xsImpIva + xsDelimitador +                         // 20
         xsImpOtros + xsDelimitador +                       // 21
         xsImpTotal + xsDelimitador +                       // 22
         xsTipoCambio + xsDelimitador +                     // 23
         xsModFecEmi + xsDelimitador +                      // 24
         xsModDocId + xsDelimitador +                       // 25
         xsModSerie + xsDelimitador +                       // 26
         xsModNumDoc + xsDelimitador +                      // 27
         xsDelimitador +                                    // 28
         xsFlgMod + xsDelimitador);                         // 29
}
      WriteLn(xfArchivoTexto,
         xsPeriodo + xsDelimitador +                        // 1
         xsCorrelativo + xsDelimitador +                    // 2
         xsRER+xsCorrelativo + xsDelimitador +              // 3
         xsFecEmi + xsDelimitador +                         // 4
         xsFecVen + xsDelimitador +                         // 5
         xsDocId + xsDelimitador +                          // 6
         xsSerie + xsDelimitador +                          // 7
         xsnumDocumento + xsDelimitador +                   // 8
         xsImpOpedia + xsDelimitador +                      // 9
         xsCliDocId + xsDelimitador +                       // 10
         xsCliDocNum + xsDelimitador +                      // 11
         xsCliRazSoc + xsDelimitador +                      // 12
         xsImpExp + xsDelimitador +                         // 13
         xsBasImp + xsDelimitador +                         // 14
//       xsImpExo + xsDelimitador +                         // 15
         xsDelimitador +                                    // 15
         xsImpIgv + xsDelimitador +                         // 16
         xsImpIsc + xsDelimitador +                         // 17
         xsImpExo + xsDelimitador +                         // 18
         xsImpIna + xsDelimitador +                         // 19
         '0.00' + xsDelimitador +                           // 20
         xsBasImpIva + xsDelimitador +                      // 21
         xsImpIva + xsDelimitador +                         // 22
         xsImpOtros + xsDelimitador +                       // 23
         xsImpTotal + xsDelimitador +                       // 24
         xsTMon + xsDelimitador +                           // 25
         xsTipoCambio + xsDelimitador +                     // 26
         xsModFecEmi + xsDelimitador +                      // 27
         xsModDocId + xsDelimitador +                       // 28
         xsModSerie + xsDelimitador +                       // 29
         xsModNumDoc + xsDelimitador +                      // 30
         xsDelimitador +                                    // 31
         xsDelimitador +                                    // 32
         '1' + xsDelimitador +                              // 33
         xsFlgMod + xsDelimitador );                        // 34
      DMCXC.cdsQry.Next;
   End;
// Fin HPC_201601_CXC

   CloseFile(xfArchivoTexto);
   DMCXC.cdsQry.Close;
   ShowMessage('Proceso terminado. Se ha generado' + #13 + 'correctamente el archivo ' + wgArchivo);

End;

Procedure TfrmPleRegVentas.btnExportarPLEClick(Sender: TObject);
Var
   xsCarpeta: String;
   xsNombre: String;
   xsRuc: String;
Begin
   xsRuc := DMCXC.BuscaQry('dspTGE', 'TGE101', 'CIARUC', 'CIAID = ' + QuotedStr('01'), 'CIARUC');
   xsNombre := 'LE' + xsRuc + edtPeriodo.Text + '00' + '140100' + '00' + '1' + '1' + '1' + '1' + '.txt';
   If SelectDirectory('Selecciona una Carpeta', '', xsCarpeta) Then
   Begin
      If Copy(xsCarpeta, Length(xsCarpeta), 1) <> '\' Then
      Begin
         xsCarpeta := xsCarpeta + '\';
      End;

      fg_PLEexportarFormato(edtPeriodo.Text, xsCarpeta + xsNombre);

      fg_HabilitaBotones;

   End;
End;

Procedure TfrmPleRegVentas.fg_ObtieneDatosCliente(wgCds: TwwClientDataSet; Var wgTipoDocumento, wgNumDocumento: String);
Var
   xsSql: String;
   xsTipoDocSunat, xsNumDocumento: String;
Begin
   //si es asociado, busco datos en APO201
   wgTipoDocumento := wgCds.FieldByName('CLIDOCID').AsString;
   wgNumDocumento := wgCds.FieldByName('CLIDOCNUM').AsString;
   If wgCds.FieldByName('DOCID').AsString = '03' Then
   Begin
      Try
         StrToFloat(wgNumDocumento);
      Except
         wgTipoDocumento := '';
         wgNumDocumento := '';
      End;
      If Length(wgNumDocumento) <> 8 Then
      Begin
         wgTipoDocumento := '';
         wgNumDocumento := '';

      End;
   End;
   If wgCds.FieldByName('DOCID').AsString = '01' Then
   Begin
      xsSql := ' SELECT TDOC_ID_SUNAT,CLIERUC, CLIEDNI  '
              +'   FROM TGE204 '
              +'  WHERE CLAUXID = ' + QuotedStr(wgCds.FieldByName('CLAUXID').AsString)
              +'    AND CLIEID =  ' + QuotedStr(wgCds.FieldByName('CLIEID').AsString);
      DMCXC.cdsQry.close;
      DMCXC.cdsQry.DataRequest(xsSql);
      DMCXC.cdsQry.open;
      xsTipoDocSunat := DMCXC.cdsQry.FieldByName('TDOC_ID_SUNAT').AsString;
      xsNumDocumento := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
      wgTipoDocumento := xsTipoDocSunat;
   End;

End;

Procedure TfrmPleRegVentas.fg_AsignaDataSource;
Begin
   Filtracds(DMCXC.cdsRegVentasPle, 'SELECT * FROM CXC_REG_VEN WHERE 1=2 ');

   dblcCompania.LookupTable := DMCXC.cdsCia;
   dblcCompania.LookupField := 'CIAID';

   dbgListaDocumentos.Selected.Clear;
   dbgListaDocumentos.Selected.Add('CORRELATIVO'#9'11'#9'Nº'#9'F');
   dbgListaDocumentos.Selected.Add('DOCID'#9'5'#9'Doc~Sunat'#9'F');
   dbgListaDocumentos.Selected.Add('CCSERIE'#9'5'#9'Serie'#9'F');
   dbgListaDocumentos.Selected.Add('CCNODOC'#9'8'#9'Nº~Documento'#9'F');
   dbgListaDocumentos.Selected.Add('FECEMI'#9'10'#9'Fecha~Emisión'#9'F');
   dbgListaDocumentos.Selected.Add('CLAUXID'#9'5'#9'Tipo~Aux'#9'F');
   dbgListaDocumentos.Selected.Add('CLIEID'#9'6'#9'Cod~Clie'#9'F');
   dbgListaDocumentos.Selected.Add('CIAID'#9'5'#9'Cia'#9'F');
   dbgListaDocumentos.Selected.Add('TDIARID'#9'5'#9'Tipo~Diario'#9'F');

   dbgListaDocumentos.Selected.Add('CLIDOCID'#9'5'#9'TDoc~Cliente'#9'F');
   dbgListaDocumentos.Selected.Add('CLIDOCNUM'#9'11'#9'NºDoc~Cliente'#9'F');
   dbgListaDocumentos.Selected.Add('CLIRAZSOC'#9'30'#9'Razón~Social'#9'F');
   dbgListaDocumentos.Selected.Add('BASIMP'#9'8'#9'Base~Imp'#9'F');
   dbgListaDocumentos.Selected.Add('IMPEXP'#9'6'#9'Export'#9'F');
   dbgListaDocumentos.Selected.Add('IMPEXO'#9'6'#9'Exoner'#9'F');
   dbgListaDocumentos.Selected.Add('IMPINA'#9'6'#9'Inafec'#9'F');
   dbgListaDocumentos.Selected.Add('IMPISC'#9'6'#9'Isc'#9'F');
   dbgListaDocumentos.Selected.Add('IGV'#9'6'#9'Igv'#9'F');
   dbgListaDocumentos.Selected.Add('IMPOTROS'#9'6'#9'Otros'#9'F');
   dbgListaDocumentos.Selected.Add('IMPTOTAL'#9'6'#9'Total'#9'F');
   dbgListaDocumentos.Selected.Add('MODDOCID'#9'6'#9'TDoc~Refer'#9'F');
   dbgListaDocumentos.Selected.Add('MODCCSERIE'#9'6'#9'Serie~Refer'#9'F');
   dbgListaDocumentos.Selected.Add('MODCCNODOC'#9'8'#9'NºDoc~Refer'#9'F');
   dbgListaDocumentos.Selected.Add('MODFECEMI'#9'8'#9'NC~Fecha_Refer'#9'F');

   isBuscarTexto.DataSource := DMCXC.dsRegVentasPle;

End;

Procedure TfrmPleRegVentas.dbgListaDocumentosTitleButtonClick(
   Sender: TObject; AFieldName: String);
Var
   xbFlag: Boolean;
Begin
   xbFlag := False;
   If AFieldName = 'CORRELATIVO' Then
   Begin
      ShowMessage('Correlativo');
   End;
   If AFieldName = 'CCNODOC' Then
   Begin
      DMCXC.cdsRegVentasPle.IndexFieldNames := 'CCNODOC';
      lblBusca.Caption := 'Busca por Nro. Doc:';
      isBuscarTexto.SearchField := 'CCNODOC';
      xbFlag := True;

   End;
   If AFieldName = 'CLIRAZSOC' Then
   Begin
      DMCXC.cdsRegVentasPle.IndexFieldNames := 'CLIRAZSOC';
      lblBusca.Caption := 'Busca por Razon Social:';
      isBuscarTexto.SearchField := 'CLIRAZSOC';
      xbFlag := True;
   End;
   If AFieldName = 'CLIDOCNUM' Then
   Begin
      DMCXC.cdsRegVentasPle.IndexFieldNames := 'CLIDOCNUM';
      lblBusca.Caption := 'Busca por Documento de Identidad:';
      isBuscarTexto.SearchField := 'CLIDOCNUM';
      xbFlag := True;
   End;
   If xbFlag Then
   Begin
      pnlBuscar.Visible := True;
      isBuscarTexto.Text := '';
      isBuscarTexto.SetFocus;
   End;
End;

Procedure TfrmPleRegVentas.dbgListaDocumentosDblClick(Sender: TObject);
Begin
   frmPleDatosCliente := TfrmPleDatosCliente.create(Application);
   frmPleDatosCliente.ShowModal;
End;

Procedure TfrmPleRegVentas.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      If Self.ActiveControl Is TMemo Then Exit;
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TfrmPleRegVentas.btnCerrarPanelClick(Sender: TObject);
Begin
   pnlBuscar.Visible := False;
End;

Procedure TfrmPleRegVentas.isBuscarTextoKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If key = #13 Then
   Begin
      pnlBuscar.Visible := False;
      dbgListaDocumentos.SetFocus;
   End;
End;

Procedure TfrmPleRegVentas.dblcCompaniaExit(Sender: TObject);
Begin
   If dblcCompania.Text = '' Then
   Begin
      ShowMessage('Debe seleccionar una Compañía');
      dblcCompania.SetFocus;
      Exit;
   End;
   edtCompania.Text := DMCXC.BuscaQry('dspTGE', 'TGE101', '*', ' CIAID = ' + QuotedStr(dblcCompania.Text), 'CIADES');
End;

Procedure TfrmPleRegVentas.btnRecuperarClick(Sender: TObject);
Begin
// si no es contador entonces debe buscar por Cia
   If (DMCXC.wAdmin <> 'V') And (dblcCompania.Text = '') Then
   Begin
      ShowMessage('Debe Seleccionar la Compañía');
      Exit;
   End;
   fg_RecuperaRegVentas(dblcCompania.Text, edtPeriodo.Text);
   fg_HabilitaBotones;
End;

Procedure TfrmPleRegVentas.fg_HabilitaBotones;
Var
   xsSql: String;
   xsGenerado: String;
Begin
   If (dblcCompania.Text <> '01') Or (DMCXC.wAdmin <> 'V') Then
   Begin
      btnGrabarRegVentas.Enabled := False;
      btnExportarPLE.Enabled := False;
      Exit;
   End;
   xsGenerado := 'NO';
   xsSql := 'SELECT * FROM CXC_REG_VEN WHERE PERIODO = ' + QuotedStr(edtPeriodo.Text);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xsSql);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
   Begin
      btnGrabarRegVentas.Enabled := True;
      btnExportarPLE.Enabled := True;
   End
   Else
   Begin
      btnGrabarRegVentas.Enabled := True;
      btnExportarPLE.Enabled := False;
   End;
End;

Procedure TfrmPleRegVentas.fg_GrabaTipoDocCliente(wgCds: TwwClientDataSet);
Var
   xsTipoAuxiliar, xsAuxiliar: String;
   xsSql: String;
   xsTipoDocIdentidad: String;
   xsTipoDocIdentidad_New: String;
   xnNumero: Double;
Begin
   wgCds.First;
   While Not wgCds.Eof Do
   Begin
      //el posible tipo de documento de identidad
      //si es factura
      xsTipoDocIdentidad_New := '';
      If wgCds.FieldByName('DOCID').AsString = '01' Then
      Begin
         If Length(wgCds.FieldByName('CLIDOCNUM').AsString) = 11 Then
         Begin
            Try
               xnNumero := StrToFloat(wgCds.FieldByName('CLIDOCNUM').AsString);
               xsTipoDocIdentidad_New := '06';
            Except
               //continua
            End;
         End;
      End
      Else
         If wgCds.FieldByName('DOCID').AsString = '03' Then
         Begin // si es boleta y 8 digitos numericos
            If Length(wgCds.FieldByName('CLIDOCNUM').AsString) = 8 Then
            Begin
               Try
                  xnNumero := StrToFloat(wgCds.FieldByName('CLIDOCNUM').AsString);
                  xsTipoDocIdentidad_New := '01';
               Except
               //continua
               End;
            End;
         End;

      If xsTipoDocIdentidad_New <> '' Then
      Begin

         xsTipoAuxiliar := wgCds.FieldByName('CLAUXID').AsString;
         xsAuxiliar := wgCds.FieldByName('CLIEID').AsString;

         xsSql := ' SELECT TDOC_ID_SUNAT,CLIERUC, CLIEDNI  '
                 +'   FROM TGE204 '
                 +'  WHERE CLAUXID = ' + QuotedStr(xsTipoAuxiliar)
                 +'    AND CLIEID =  ' + QuotedStr(xsAuxiliar);
         DMCXC.cdsQry.close;
         DMCXC.cdsQry.DataRequest(xsSql);
         DMCXC.cdsQry.open;
         If DMCXC.cdsQry.RecordCount > 0 Then
         Begin
            xsTipoDocIdentidad := DMCXC.cdsQry.FieldByName('TDOC_ID_SUNAT').AsString;
         // si no tiene valor, entonces se actualiza el maestro de clientes
            If xsTipoDocIdentidad = '' Then
            Begin

               xsSql := ' UPDATE TGE204 '
                       +'    SET TDOC_ID_SUNAT = ' + QuotedStr(xsTipoDocIdentidad_New)
                       +'  WHERE CLAUXID = ' + QuotedStr(xsTipoAuxiliar)
                       +'    AND CLIEID =  ' + QuotedStr(xsAuxiliar);
               DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
            End;
            If wgCds.FieldByName('CLIDOCID').AsString = '' Then
            Begin
               xsSql := ' UPDATE CXC_REG_VEN '
                       +'    SET CLIDOCID = ' + QuotedStr(xsTipoDocIdentidad_New)
                       +'  WHERE CIAID = ' + QuotedStr(wgCds.FieldByName('CIAID').AsString)
                       +'    AND TDIARID = ' + QuotedStr(wgCds.FieldByName('TDIARID').AsString)
                       +'    AND CCNOREG = ' + QuotedStr(wgCds.FieldByName('CCNOREG').AsString)
                       +'    AND PERIODO = ' + QuotedStr(wgCds.FieldByName('PERIODO').AsString);
               DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
            End;
         End
         Else //si el cliente no existe, entonces se crea el cliente
         Begin
            //INSERT
         End;
      End;
      wgCds.Next;
   End;
End;

Procedure TfrmPleRegVentas.btnActualizaTipoDocIdenClick(Sender: TObject);
Begin

   If MessageDlg('Se actualizará el Tipo de Documento de Identidad' + #13 +
      'de los registros que no lo tienen.' + #13 +
      'Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      fg_GrabaTipoDocCliente(DMCXC.cdsRegVentasPle);
      ShowMessage('Actualización terminada');
   End;
End;

// Inicio HPC_201405_CXC
procedure TfrmPleRegVentas.bbtnResumenxCiaClick(Sender: TObject);
var
    xsSql, xsCompania, wgPeriodo : String;
begin

   xsCompania := '%';
   wgPeriodo := QuotedStr(edtPeriodo.Text);
   xsSql := ' SELECT C.*,T.CIADES FROM CXC_REG_VEN C INNER JOIN TGE101 T ON C.CIAID= T.CIAID '
          + ' WHERE C.PERIODO =  '+ wgPeriodo +'  AND C.CIAID LIKE (' + QuotedStr(xsCompania) + ') ' + ' ORDER BY C.CIAID';
   xsSQL := ' Select A.CIAID, T.CIADES, A.PERIODO, '
          + '        sum(IMPEXP) IMPEXP, '
          + '        sum(IMPINA) IMPINA, '
          + '        sum(IMPEXO) IMPEXO, '
          + '        sum(BASIMP) BASIMP, '
          + '        sum(IGV) IGV, '
          + '        sum(IMPOTROS) IMPOTROS, '
          + '        sum(IMPTOTAL) IMPTOTAL '
          + '        from (Select C.* '
          + '                from CXC_REG_VEN C '
          + '               where C.PERIODO =  '+ QuotedStr(edtPeriodo.Text)
          + '                 and C.CIAID like ('+quotedstr(xsCompania)+') '
          + '               order by C.CIAID) A '
          + ' inner join TGE101 T ON A.CIAID = T.CIAID '
          + '        group by A.CIAID, T.CIADES, A.PERIODO '
          + '        order by A.CIAID ';
   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.DataRequest(xsSql);
   DMCXC.cdsReporte.Open;

   DMCXC.cdsReporte.DisableControls;
   DMCXC.cdsReporte.IndexfieldNames:='CIAID';
   ppdbRegVentaPLE.DataSource := DMCXC.dsReporte;
   //dsRegVentasPle
   pprRegVentaPLE.Template.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RegVentaPLE_General.rtm';
   pprRegVentaPLE.Template.LoadFromFile;
   If cbDiseno.Checked Then
   Begin
      ppDesigner1.Report := pprRegVentaPLE;
      ppDesigner1.ShowModal;
   End
   Else
   Begin
      pprRegVentaPLE.Print;
      pprRegVentaPLE.Stop;
   End;
   pprRegVentaPLE.DataPipeline := Nil;
   ppdbRegVentaPLE.DataSource := Nil;
   DMCXC.cdsReporte.EnableControls;
end;
// Fin HPC_201405_CXC
// Inicio HPC_201405_CXC
procedure TfrmPleRegVentas.sbDisenoClick(Sender: TObject);
begin
  cbDiseno.Checked := not cbDiseno.Checked;
end;
// Fin HPC_201405_CXC
End.

