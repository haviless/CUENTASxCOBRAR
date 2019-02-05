Unit oaCC2000;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   oaCC2000
// Formulario           :   FRegistros
// Fecha de Creación    :
// Autor                :   Equipo de Desarrollo
// Objetivo             :   Ventana que implementa las funcionalidades de las ventanas
//                          del punto de menú TRANSACCIONES

// Actualizaciones      :
// HPC_201203_CXC  17/02/2012  Se implementó la funcionalidad (ImportarRVChess) que invonca
//                             a la ventana que importa el registro de ventas de los hoteles.
// HPC_201204_CXC 28/08/2012  Implementación del control de versiones
// HPC_201403_CXC 10/07/2014  Actualiza versión a 20140716083000
// HPC_201801_CXC   26/03/2018 Cambios en Búsqueda en Maestro de Clientes
//

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwClient, Mant, DB, ExtCtrls, ppCtrls, ppBands, ppVar, ppPrnabl,
   ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, StdCtrls,
   Buttons, Wwdbigrd, wwDBGrid, ComCtrls, oaVariables;

Type
   RCABCOMPROBANTE = Record
      CIADES,
         CIAID,
         TDIARID,
         DIARIO,
         PROVEEDOR,
         NUMCHQ,
         BANCO,
         CUENTA,
         MONEDA,
         GLOSA,
         LOTE,
         TIPODOC,
         TIPOCAMB,
         PERIODO,
         NOCOMP,
         NODOC: String;
   End;

Type
   TFRegistros = Class(TForm)
      pprContabilizado: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLine15: TppLine;
      ppLine16: TppLine;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppShape8: TppShape;
      lblCiaDes: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      lblPeriodo: TppLabel;
      lblDiario: TppLabel;
      lblProveedor: TppLabel;
      lblGlosa: TppLabel;
      lblLote: TppLabel;
      lblTipoDoc: TppLabel;
      lblTipoCamb: TppLabel;
      lblNoDoc: TppLabel;
      lblNoComp: TppLabel;
      ppLabel1: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      lblbanco: TppLabel;
      lblcuenta: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      lblnumchq: TppLabel;
      ppLabel21: TppLabel;
      lblmoneda: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppLine4: TppLine;
      ppLine7: TppLine;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppLine5: TppLine;
      ppLine6: TppLine;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppShape10: TppShape;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppdbPCxC: TppDBPipeline;
      lblVersion: TLabel;
   Private
      Procedure PropGrid(Const aGrid: Array Of TwwDBGrid);
    { Private declarations }
   Public
    { Public declarations }
      xTipoProv: String;
   // Inicio HPC_201801_CXC
   // Cambia búsqueda de Maestro de Clientes
      MtxBuscaCli: TMant;
   // Fin HPC_201801_CXC
      Procedure AdicMaesClie(Sender: TObject);
      Procedure EditaMaesClie(Sender: TObject; MantFields: TFields);
      Procedure DeleteMaesClie(Sender: TObject; MantFields: TFields);
      Function FiltraDocGrid: Boolean;
      Procedure ImprimirComprobante(CabComprobante: RCabComprobante);
      Procedure ProvisionInicializa;
      Procedure AcepContCreate(Sender: TObject);
      Procedure ProvisionInsert(Sender: TObject);
      Procedure ProvisionEdita(Sender: TObject; MantFields: TFields);
      Procedure ProvisionDelete(Sender: TObject; MantFields: TFields);
      Procedure PGridShow(Sender: TObject);
      Procedure MueveMouse(xObjeto: TObject; Shift: TShiftState; X, Y: Integer);
      Function TieneAcceso(xxTMant: TMant): Boolean;
      Procedure NCreditoInicializa;
      Procedure NCreditoInsert(Sender: TObject);
      Procedure NCreditoDelete(Sender: TObject; MantFields: TFields);
      Procedure NCreditoEdita(Sender: TObject; MantFields: TFields);
      Procedure AnticipoInicializa;
      Procedure AnticipoInsert(Sender: TObject);
      Procedure AnticipoDelete(Sender: TObject; MantFields: TFields);
      Procedure AnticipoEdita(Sender: TObject; MantFields: TFields);
      Procedure NCreditoAplicaEdita(Sender: TObject; MantFields: TFields);
      Procedure ContabAplicaCreate(Sender: TObject);
      Procedure LetrasInicializa;
      Procedure LetrasInsert(Sender: TObject);
      Procedure LetrasEdita(Sender: TObject; MantFields: TFields);
      Procedure RenovaLetrasInsert(Sender: TObject);
      Procedure RenovaLetrasEdita(Sender: TObject; MantFields: TFields);
      Procedure UbiSitCreate(Sender: TObject);
      Function FiltraDocGrid2: Boolean;
      Procedure UbiSitEdit(Sender: TObject; MantFields: TFields);
      Procedure ListaComponentes(xForm: TForm);
      Procedure NLetrasInsert(Sender: TObject);
      Procedure NLetrasEdit(Sender: TObject; MantFields: TFields);
      Procedure NLetrasDelete(Sender: TObject; MantFields: TFields);
      Procedure NLetrasCreate(Sender: TObject);
      Procedure ContabLetrasCreate(Sender: TObject);
      Procedure PLBCCreate(Sender: TObject);
      Procedure PLBCInsert(Sender: TObject);
      Procedure PLBCEdit(Sender: TObject; MantFields: TFields);
      Procedure PLBCShow(Sender: TObject);
      Procedure PLBCDelete(Sender: TObject; MantFields: TFields);
      Procedure NotaCobInsert(Sender: TObject);
      Procedure NotaCobEdita(Sender: TObject; MantFields: TFields);
      Procedure NotaCobDelete(Sender: TObject; MantFields: TFields);
      Procedure NotaCobInicializa;
      Procedure MaesClieCierra(Sender: TObject);
      Procedure ProvisionCierra(Sender: TObject);
      Procedure NCreditoCierra(Sender: TObject);
      Procedure AnticipoCierra(Sender: TObject);
      Procedure NCreditoAplicaCierra(Sender: TObject);
      Procedure ContabAplicaCierra(Sender: TObject);
      Procedure LetrasCierra(Sender: TObject);
      Procedure RenovaLetrasCierra(Sender: TObject);
      Procedure UbiSitCierra(Sender: TObject);
      Procedure NLetraSCierra(Sender: TObject);
      Procedure ContabLetrasCierra(Sender: TObject);
      Procedure PLBCCierra(Sender: TObject);
      Procedure NotaCobCierra(Sender: TObject);

   // Inicio HPC_201801_CXC
   // Tool de Busqueda de Cliente
      Procedure ToolBuscaCliCreate(Sender: TObject); //Asociados
   // Evento de Selección de Cliente en búsqueda (doble click)
      Procedure OnEditBuscaCli(Sender: TObject; MantFields: TFields);
   // Filtro OASIS del Maestro de Clientes
      Procedure BuscaMaeClientes;
   // Fin HPC_201801_CXC
   End;

Procedure CCMaestroClientesMant; stdcall;
Procedure CCMaestroClientes; stdcall;
Procedure CCProvisionMant; stdcall;
Procedure CCProvision; stdcall;
Procedure CCNotaDeCreditoMant; stdcall;
Procedure CCNotaDeCredito; stdcall;
Procedure CCAnticipoMant; stdcall;
Procedure CCAnticipo; stdcall;
Procedure CCAplicacionDeAbono; stdcall;
Procedure CCContabilizacionDeAplicaciones; stdcall;
Procedure CCCanjexLetrasMant; stdcall;
Procedure CCCanjexLetras; stdcall;
Procedure CCRenovacionDeLetrasMant; stdcall;
Procedure CCRenovacionDeLetras; stdcall;
Procedure CCGestionDeLetras; stdcall;
Procedure CCDinamicaContableDeLetrasMant; stdcall;
Procedure CCDinamicaContableDeLetras; stdcall;
Procedure CCContabilizacionDeLetrasMant; stdcall;
Procedure CCPlanillaDeBancosMant; stdcall;
Procedure CCPlanillaDeBancos; stdcall;
Procedure CCNotaDeCobranzaMant; stdcall;
Procedure CCNotaDeCobranza; stdcall;
Procedure CCCierreOperativo; stdcall;
  //INICIO HPC_201203_CXC
Procedure ImportarRVChess; stdcall;
  //FIN HPC_201203_CXC
Procedure CCVerificaVersion; stdcall;

Exports
   CCMaestroClientesMant,
   CCMaestroClientes,
   CCProvisionMant,
   CCProvision,
   CCNotaDeCreditoMant,
   CCNotaDeCredito,
   CCAnticipoMant,
   CCAnticipo,
   CCAplicacionDeAbono,
   CCContabilizacionDeAplicaciones,
   CCCanjexLetrasMant,
   CCCanjexLetras,
   CCRenovacionDeLetrasMant,
   CCRenovacionDeLetras,
   CCGestionDeLetras,
   CCDinamicaContableDeLetrasMant,
   CCDinamicaContableDeLetras,
   CCContabilizacionDeLetrasMant,
   CCPlanillaDeBancosMant,
   CCPlanillaDeBancos,
   CCNotaDeCobranzaMant,
   CCNotaDeCobranza,
  //INICIO HPC_201203_CXC
   ImportarRVChess,
  //FIN HPC_201203_CXC
   CCVerificaVersion,
   CCCierreOperativo;

Var
   FRegistros: TFRegistros;
   Mantc,
      GProvision,
      GNCredito,
      GAnticipo,
      GLetras,
      NLetras,
      GNCobra: TMant;
   xSelDoc, xDocLetras: String;

Implementation

{$R *.dfm}

Uses CXCDM, CXC200, CXC401, CXC201, CXC778, CXC202, CXC209, CXC208, CXC319,
   CXC203, CXC223, CXC777, CXC321, CXC232, CXC320, CXC250, CXC221, CXC205,
     //INICIO HPC_201203_CXC
   CXC241,
     //FIN HPC_201203_CXC

// Inicio HPC_201801_CXC
// cambio por nueva búsqueda en Maestro de Clientes
   CLIE771CXC,
// Fin HPC_201801_CXC

   CXC225;

// CXC200 FMaesClie     - Maestro de Clientes
// CXC201 FProvision    - Provisión de Facturas y Boletas por Cobrar
// CXC778 FToolCont     - Tool de Provisiones
// CXC401 FEmiDoc       - Emisión de Documentos
// CXC202 FNotasDC      - Notas de Crédito
// CXC209 FAnticipo     - Anticipos
// CXC208 FNotasDCAplica -  Aplicación de Notas de Crédito
// CXC319 FToolContabAplica - Contabilización de Aplicaciones
// CXC203 FLetras       - Generación de Letras por Cobrar
// CXC777 FToolLetras   - Tool de Letras
// CXC223 FRenovaLetras - Renovación de Letras
// CXC321 FToolImpDinamica - Tool Dinámica Contable de Letras
// CXC232 FNLetras      - Dinámica Contables de Letras
// CXC320 FToolContabLetras
// CXC250 FLetraHist - Histórico de Letras
// CXC221 FPNLBCO Formato de Actualización de Planilla de Bancos
// CXC205 FNotaCob - Notas de Cobranza
// CXC225 FApeCieOpe - Apertura/Cierre Operativo
// CXC241 FImportarRVChess - Importar registro de ventas de Chess

Procedure CCMaestroClientesMant;
Var
   xSQL: String;
Begin
// Registro de Maestro de Clientes
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;

   DMCXC.FiltraTabla(DMCXC.cdsCia, 'TGE101', 'CIAID');

// DEPARTAMENTOS
   xSQL := 'SELECT SUBSTR(UBIGEOID,1,2) DPTOID,UBIGEODPTO DPTODES '
      + 'FROM TGE147 '
      + 'WHERE UBIGEOPROV IS NULL and SUBSTR(UBIGEOID,1,2)<>''00'' '
      + 'ORDER BY UBIGEOID';
   FiltraCds(DMCXC.cdsDpto, xSQL);
   DMCXC.cdsDpto.IndexFieldNames := 'DPTOID';

// PROVINCIAS
   xSQL := 'SELECT SUBSTR(UBIGEOID,1,2) DPTOID, SUBSTR(UBIGEOID,3,2) CIUDID,UBIGEOPROV CIUDDES '
      + 'FROM TGE147 '
      + 'WHERE UBIGEOPROV IS NOT NULL AND UBIGEODIST IS NULL';
   FiltraCds(DMCXC.cdsProvinc, xSQL);
   DMCXC.cdsProvinc.IndexFieldNames := 'CIUDID';

// DISTRITO
   xSQL := 'SELECT SUBSTR(UBIGEOID,1,2) DPTOID, SUBSTR(UBIGEOID,3,2) CIUDID,SUBSTR(UBIGEOID,5,2) ZIPID,UBIGEODIST ZIPDES '
      + 'FROM TGE147 '
      + 'WHERE UBIGEOPROV IS NOT NULL AND UBIGEODIST IS NOT NULL';
   FiltraCds(DMCXC.cdsDistrito, xSQL);
   DMCXC.cdsDistrito.IndexFieldNames := 'ZIPID';

   DMCXC.FiltraTabla(DMCXC.cdsPais, 'TGE118', 'PaisId');
   DMCXC.FiltraTabla(DMCXC.cdsSecEco, 'TGE163', 'SecEcoId');
   DMCXC.FiltraTabla(DMCXC.cdsTipPer, 'TGE109', 'TipPerId');
   DMCXC.FiltraTabla(DMCXC.cdsGiro, 'TGE116', 'GiroId');
   DMCXC.FiltraTabla(DMCXC.cdsClasif, 'TGE132', 'ClasifId');
   DMCXC.FiltraTabla(DMCXC.cdsVinculo, 'TGE133', 'VincId');
   DMCXC.FiltraTabla(DMCXC.cdsCIUU, 'TGE176', 'CIUUId');
   DMCXC.FiltraTabla(DMCXC.cdsCondP, 'TGE166', 'CONDPId');
   DMCXC.FiltraTabla(DMCXC.cdsTipBien, 'TGE164', 'TipBienId');
   DMCXC.FiltraTabla(DMCXC.cdsCargos, 'RRHH101', 'OCUPId');
   DMCXC.FiltraTabla(DMCXC.cdsTMon, 'TGE103', 'TMONID');
   DMCXC.cdsTMon.Filter := 'TMON_LOC=''L'' OR TMON_LOC=''E''';
   DMCXC.cdsTMon.Filtered := True;
   DMCXC.FiltraTabla(DMCXC.cdsZona, 'FAC105', 'TVDAID');
   DMCXC.FiltraTabla(DMCXC.cdsZona1, 'FAC106', 'ZVTAID');
   DMCXC.cdsTLista.Close;
   DMCXC.cdsTLista.DataRequest('SELECT * FROM FAC101');
   DMCXC.cdsTLista.Open;
   DMCXC.cdsSitClie.Open;
   DMCXC.cdsLineaCredito.DataRequest('SELECT * FROM CXC403');
   DMCXC.cdsClAux.Close;
   DMCXC.cdsClAux.DataRequest('SELECT * FROM TGE102 WHERE MODULO LIKE ' + QuotedStr('%CXC%'));
   DMCXC.cdsClAux.Open;
   DMCXC.cdsClAux.Filter := 'CLAUXCP=''C'' OR CLAUXCP=''A''';
   DMCXC.cdsClAux.Filtered := True;

   DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
   If Not (Mantc = Nil) Then Exit;
   Mantc := TMant.Create(Application);
   With Mantc Do
   Begin
      Admin := DMCXC.wadmin;
      Titulo := 'Maestro de Clientes';
      Module := DMCXC.wModulo;
      Tablename := 'TGE204';
      Filter := '';
      ClientDataset := DMCXC.cdsClie;
      DComC := DMCXC.DCOM1;
      User := DMCXC.wUsuario;

   // Eventos
      OnInsert := FRegistros.AdicMaesClie;
      OnEdit := FRegistros.EditaMaesClie;
      OnDelete := FRegistros.DeleteMaesClie;
      SectionName := 'CXCClientes';
      FileNameIni := '\oaCXC.INI';
      OnCierra := FRegistros.MaesClieCierra;
      Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   End;
End;

Procedure CCMaestroClientes;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   DMCXC.FiltraTabla(DMCXC.cdsCia, 'TGE101', 'CIAID');

// DEPARTAMENTOS
   xSQL := 'SELECT SUBSTR(UBIGEOID,1,2) DPTOID,UBIGEODPTO DPTODES '
      + 'FROM TGE147 '
      + 'WHERE UBIGEOPROV IS NULL and SUBSTR(UBIGEOID,1,2)<>''00'' '
      + 'ORDER BY UBIGEOID';
   FiltraCds(DMCXC.cdsDpto, xSQL);
   DMCXC.cdsDpto.IndexFieldNames := 'DPTOID';

// PROVINCIAS
   xSQL := 'SELECT SUBSTR(UBIGEOID,1,2) DPTOID, SUBSTR(UBIGEOID,3,2) CIUDID,UBIGEOPROV CIUDDES '
      + 'FROM TGE147 '
      + 'WHERE UBIGEOPROV IS NOT NULL AND UBIGEODIST IS NULL';
   FiltraCds(DMCXC.cdsProvinc, xSQL);
   DMCXC.cdsProvinc.IndexFieldNames := 'CIUDID';

// DISTRITO
   xSQL := 'SELECT SUBSTR(UBIGEOID,1,2) DPTOID, SUBSTR(UBIGEOID,3,2) CIUDID,SUBSTR(UBIGEOID,5,2) ZIPID,UBIGEODIST ZIPDES '
      + 'FROM TGE147 '
      + 'WHERE UBIGEOPROV IS NOT NULL AND UBIGEODIST IS NOT NULL';
   FiltraCds(DMCXC.cdsDistrito, xSQL);
   DMCXC.cdsDistrito.IndexFieldNames := 'ZIPID';

   DMCXC.FiltraTabla(DMCXC.cdsPais, 'TGE118', 'PaisId');
   DMCXC.FiltraTabla(DMCXC.cdsSecEco, 'TGE163', 'SecEcoId');
   DMCXC.FiltraTabla(DMCXC.cdsTipPer, 'TGE109', 'TipPerId');
   DMCXC.FiltraTabla(DMCXC.cdsGiro, 'TGE116', 'GiroId');
   DMCXC.FiltraTabla(DMCXC.cdsClasif, 'TGE132', 'ClasifId');
   DMCXC.FiltraTabla(DMCXC.cdsVinculo, 'TGE133', 'VincId');
   DMCXC.FiltraTabla(DMCXC.cdsCIUU, 'TGE176', 'CIUUId');
   DMCXC.FiltraTabla(DMCXC.cdsCondP, 'TGE166', 'CONDPId');
   DMCXC.FiltraTabla(DMCXC.cdsTipBien, 'TGE164', 'TipBienId');
   DMCXC.FiltraTabla(DMCXC.cdsCargos, 'RRHH101', 'OCUPId');
   DMCXC.FiltraTabla(DMCXC.cdsTMon, 'TGE103', 'TMONID');
   DMCXC.cdsTMon.Filter := 'TMON_LOC=''L'' OR TMON_LOC=''E''';
   DMCXC.cdsTMon.Filtered := True;
   DMCXC.FiltraTabla(DMCXC.cdsZona, 'FAC105', 'TVDAID');
   DMCXC.FiltraTabla(DMCXC.cdsZona1, 'FAC106', 'ZVTAID');
   DMCXC.cdsTLista.Close;
   DMCXC.cdsTLista.DataRequest('SELECT * FROM FAC101');
   DMCXC.cdsTLista.Open;
   DMCXC.cdsSitClie.Open;
   DMCXC.cdsLineaCredito.DataRequest('SELECT * FROM CXC403');
   DMCXC.cdsClAux.Close;
   DMCXC.cdsClAux.DataRequest('SELECT * FROM TGE102 WHERE MODULO LIKE ' + QuotedStr('%CXC%'));
   DMCXC.cdsClAux.Open;
   DMCXC.cdsClAux.Filter := 'CLAUXCP=''C'' OR CLAUXCP=''A''';
   DMCXC.cdsClAux.Filtered := True;

   xSQL := ' SELECT * FROM TGE204 WHERE ' +
      ' CIAID=' + QuotedStr('XX') +
      ' AND CLAUXID=' + QuotedStr('XX') +
      ' AND CLIEID=' + QuotedStr('XX');

   DMCXC.cdsClie.Close;
   DMCXC.cdsClie.DataRequest(xSQL);
   DMCXC.cdsClie.Open;

   DMCXC.wModo := 'A';
   FMaesClie := TFMaesClie.Create(Application);
   FMaesClie.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCProvisionMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GProvision = Nil) Then Exit;
   Try

      FRegistros := TFRegistros.Create(Application);

      FRegistros.xTipoProv := 'P';

      If Not FRegistros.FiltraDocGrid Then Exit;

      DMCXC.cdsClAux.Filter := 'CLAUXCP=' + QuotedStr('A') + ' OR CLAUXCP=' + QuotedStr('C');
      DMCXC.cdsClAux.Filtered := True;
      DMCXC.FiltraTabla(DMCXC.cdsSerie, 'CXC103', 'SERIEID');
      DMCXC.cdsQry10.Close;
      DMCXC.cdsQry10.DataRequest('SELECT * FROM TGE110  WHERE  DOCMOD=''CXC'' ORDER BY DOCID ');
      DMCXC.cdsQry10.Open;
      DMCXC.cdsEmidoc1.Open;

      FToolCont := TFToolCont.Create(Application);

      FRegistros.ProvisionInicializa;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GProvision := TMant.Create(Application);
      GProvision.Admin := DMCXC.wAdmin;
      GProvision.OnCreateMant := FRegistros.AcepContCreate;
      GProvision.OnInsert := FRegistros.ProvisionInsert;
      GProvision.OnEdit := FRegistros.ProvisionEdita;
      GProvision.OnDelete := FRegistros.ProvisionDelete;
      GProvision.OnCierra := FRegistros.ProvisionCierra;
      GProvision.OnShow := FRegistros.PGridShow;
      GProvision.DComC := DMCXC.DCOM1;
      GProvision.ClientDataSet := DMCXC.cdsMovCxC;
      GProvision.TableName := 'CXC301';
      GProvision.Filter := xSelDoc;

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GProvision.Filter <> '' Then
            GProvision.Filter := GProvision.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GProvision.Filter := DMCXC.cFilterCiaUser;
      End;

      If DMCXC.cFilterOrigenUser <> '' Then
      Begin
         If GProvision.Filter <> '' Then
            GProvision.Filter := GProvision.Filter + ' and ' + DMCXC.cFilterOrigenUser
         Else
            GProvision.Filter := DMCXC.cFilterOrigenUser;
      End;

      If DMCXC.cFilterUsuarioUser <> '' Then
      Begin
         If GProvision.Filter <> '' Then
            GProvision.Filter := GProvision.Filter + ' and ' + DMCXC.cFilterUsuarioUser
         Else
            GProvision.Filter := DMCXC.cFilterUsuarioUser;
      End;

      GProvision.Titulo := 'Provisiones por Cobrar';
      GProvision.User := DMCXC.wUsuario;
      GProvision.Module := DMCXC.wModulo;
      GProvision.SectionName := 'CXCProvisiones';
      GProvision.FileNameIni := '\oaCXC.INI';
      GProvision.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
//      DMCXC.cdsDoc.Filter := '';
//      DMCXC.cdsDoc.Filtered := False;
   End;
End;

Procedure CCProvision;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   Try
      FRegistros := TFRegistros.Create(Application);

      FRegistros.xTipoProv := 'P';
      If Not FRegistros.FiltraDocGrid Then Exit;

      DMCXC.cdsClAux.Filter := 'CLAUXCP=' + QuotedStr('A') + ' OR CLAUXCP=' + QuotedStr('C');
      DMCXC.cdsClAux.Filtered := True;
//   DMCXC.cdsClie.Open;
      DMCXC.FiltraTabla(DMCXC.cdsSerie, 'CXC103', 'SERIEID');
      DMCXC.cdsQry10.Close;
      DMCXC.cdsQry10.DataRequest('SELECT * FROM TGE110  WHERE  DOCMOD=''CXC'' ORDER BY DOCID ');
      DMCXC.cdsQry10.Open;
      DMCXC.cdsEmidoc1.Open;

      xSQL := 'SELECT * FROM CXC301 WHERE ' +
         'CIAID=' + QuotedStr('XX') +
         ' AND DOCID=' + QuotedStr('XX') +
         ' AND CCSERIE=' + QuotedStr('XX') +
         ' AND CCNODOC=' + QuotedStr('XX') +
         ' AND CLIEID=' + QuotedStr('XX');
      DMCXC.cdsMovCxC.Close;
      DMCXC.cdsMovCxC.DataRequest(xSQL);
      DMCXC.cdsMovCxC.Open;

      DMCXC.wModo := 'A';
      FEmiDoc := TFEmiDoc.create(Application);
      FProvision := TFProvision.Create(Application);
      FProvision.ActiveMDIChild;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
      FVariables.w_CC_Registro := True;
   Finally

   End;
End;

Procedure CCNotaDeCreditoMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GNCredito = Nil) Then Exit;

   Try
      FRegistros := TFRegistros.Create(Application);
      FRegistros.xTipoProv := 'N';
      If Not FRegistros.FiltraDocGrid Then Exit;

      FToolCont := TFToolCont.Create(Application);

      FRegistros.NCreditoInicializa;
      DMCXC.cdsClAux.Filter := 'CLAUXCP=' + QuotedStr('A') + ' OR CLAUXCP=' + QuotedStr('C');
      DMCXC.cdsClAux.Filtered := True;
      //DMCXC.cdsSerie.open;
      DMCXC.cdsSerie.Filtered := False;
      DMCXC.cdsSerie.Filter := '';
      DMCXC.cdsSerie.Filter := 'DOCID=' + QuotedStr(DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID'));
      DMCXC.cdsSerie.Filtered := True;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GNCredito := TMant.Create(Application);
      GNCredito.Admin := DMCXC.wAdmin;
      GNCredito.OnCreateMant := FRegistros.AcepContCreate;
      GNCredito.OnDelete := FRegistros.NCreditoDelete;
   // CXC202 FNotasDC - Notas de Crédito
      GNCredito.OnInsert := FRegistros.NCreditoInsert;
      GNCredito.OnEdit := FRegistros.NCreditoEdita;
      GNCredito.OnCierra := FRegistros.NCreditoCierra;
      GNCredito.OnShow := FRegistros.PGridShow;
      GNCredito.ClientDataSet := DMCXC.cdsMovCxC;
      GNCredito.TableName := 'CXC301';
      GNCredito.Filter := xSelDoc;

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GNCredito.Filter <> '' Then
            GNCredito.Filter := GNCredito.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GNCredito.Filter := DMCXC.cFilterCiaUser;
      End;

      If DMCXC.cFilterOrigenUser <> '' Then
      Begin
         If GNCredito.Filter <> '' Then
            GNCredito.Filter := GNCredito.Filter + ' and ' + DMCXC.cFilterOrigenUser
         Else
            GNCredito.Filter := DMCXC.cFilterOrigenUser;
      End;

      If DMCXC.cFilterUsuarioUser <> '' Then
      Begin
         If GNCredito.Filter <> '' Then
            GNCredito.Filter := GNCredito.Filter + ' and ' + DMCXC.cFilterUsuarioUser
         Else
            GNCredito.Filter := DMCXC.cFilterUsuarioUser;
      End;

      GNCredito.Titulo := 'Nota de Crédito';
      GNCredito.User := DMCXC.wUsuario;
      GNCredito.DComC := DMCXC.DCOM1;
      GNCredito.Module := DMCXC.wModulo;
      GNCredito.SectionName := 'CXCNCredito';
      GNCredito.FileNameIni := '\oaCXC.INI';
      //
      GNCredito.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCNotaDeCredito;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   FRegistros := TFRegistros.Create(Application);
   FRegistros.xTipoProv := 'N';
   If Not FRegistros.FiltraDocGrid Then Exit;

   FRegistros.NCreditoInicializa;
  //** 03/01/2001 - pjsv
   DMCXC.cdsClAux.Filter := 'CLAUXCP=' + QuotedStr('A') + ' OR CLAUXCP=' + QuotedStr('C');
   DMCXC.cdsClAux.Filtered := True;
   //DMCXC.cdsClie.Open;

   DMCXC.cdsSerie.open;
   DMCXC.cdsSerie.Filter := 'DOCID=' + QuotedStr(DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID'));
   DMCXC.cdsSerie.Filtered := True;

   DMCXC.wModo := 'A';
   xSQL := ' SELECT * FROM CXC301 WHERE ' +
      ' CIAID=' + QuotedStr('XX') +
      ' AND DOCID=' + QuotedStr('XX') +
      ' AND CCSERIE=' + QuotedStr('XX') +
      ' AND CCNODOC=' + QuotedStr('XX');
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

   FNotasDC := TFNotasDC.Create(Application);
   FNotasDC.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCAnticipoMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GAnticipo = Nil) Then Exit;
   Try
      FRegistros := TFRegistros.Create(Application);
      FRegistros.xTipoProv := 'A';
      If Not FRegistros.FiltraDocGrid Then Exit;

      Screen.Cursor := crHourGlass;

      FToolCont := TFToolCont.Create(Application);

      FRegistros.AnticipoInicializa;
      DMCXC.cdsClAux.Filter := 'CLAUXCP=' + QuotedStr('A') + ' OR CLAUXCP=' + QuotedStr('C');
      DMCXC.cdsClAux.Filtered := True;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GAnticipo := TMant.Create(Application);
      GAnticipo.Admin := DMCXC.wAdmin;
      GAnticipo.OnCreateMant := FRegistros.AcepContCreate;
      GAnticipo.OnDelete := FRegistros.AnticipoDelete;
      GAnticipo.OnInsert := FRegistros.AnticipoInsert;
      GAnticipo.OnEdit := FRegistros.AnticipoEdita;
      GAnticipo.OnCierra := FRegistros.AnticipoCierra;
      GAnticipo.OnShow := FRegistros.PGridShow;
      GAnticipo.ClientDataSet := DMCXC.cdsMovCxC;
      GAnticipo.TableName := 'CXC301';
      GAnticipo.Filter := xSelDoc;

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GAnticipo.Filter <> '' Then
            GAnticipo.Filter := GAnticipo.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GAnticipo.Filter := DMCXC.cFilterCiaUser;
      End;

      If DMCXC.cFilterOrigenUser <> '' Then
      Begin
         If GAnticipo.Filter <> '' Then
            GAnticipo.Filter := GAnticipo.Filter + ' and ' + DMCXC.cFilterOrigenUser
         Else
            GAnticipo.Filter := DMCXC.cFilterOrigenUser;
      End;

      If DMCXC.cFilterUsuarioUser <> '' Then
      Begin
         If GAnticipo.Filter <> '' Then
            GAnticipo.Filter := GAnticipo.Filter + ' and ' + DMCXC.cFilterUsuarioUser
         Else
            GAnticipo.Filter := DMCXC.cFilterUsuarioUser;
      End;

      GAnticipo.Titulo := 'Anticipos';
      GAnticipo.User := DMCXC.wUsuario;
      GAnticipo.DComC := DMCXC.DCOM1;
      GAnticipo.Module := DMCXC.wModulo;
      GAnticipo.SectionName := 'CXCAnticipo';
      GAnticipo.FileNameIni := '\oaCXC.INI';
   //
      GAnticipo.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
      Screen.Cursor := crDefault;
   Finally
   End;
End;

Procedure CCAnticipo;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   FRegistros := TFRegistros.Create(Application);
   FRegistros.xTipoProv := 'A';
   If Not FRegistros.FiltraDocGrid Then Exit;
   Screen.Cursor := crHourGlass;
   FRegistros.AnticipoInicializa;

   DMCXC.cdsClAux.Filter := 'CLAUXCP=' + QuotedStr('A') + ' OR CLAUXCP=' + QuotedStr('C');
   DMCXC.cdsClAux.Filtered := True;

   DMCXC.wModo := 'A';
   xSQL := ' SELECT * FROM CXC301 WHERE ' +
      ' CIAID=' + QuotedStr('XX') +
      ' AND DOCID=' + QuotedStr('XX') +
      ' AND CCSERIE=' + QuotedStr('XX') +
      ' AND CCNODOC=' + QuotedStr('XX');
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

   FAnticipo := TFAnticipo.Create(Application);
   FAnticipo.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCAplicacionDeAbono;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GNCredito = Nil) Then Exit;
   Try
      FRegistros := TFRegistros.Create(Application);

      FRegistros.xTipoProv := 'NC';
      If Not FRegistros.FiltraDocGrid Then Exit;

      FRegistros.NCreditoInicializa;
      DMCXC.cdsSerie.open;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GNCredito := TMant.Create(Application);
      GNCredito.Admin := DMCXC.wAdmin;
      GNCredito.OnCreateMant := Nil;
      GNCredito.OnInsert := Nil;
      GNCredito.OnEdit := FRegistros.NCreditoAplicaEdita;
      GNCredito.OnCierra := FRegistros.NCreditoAplicaCierra;
      GNCredito.OnShow := FRegistros.PGridShow;
      GNCredito.ClientDataSet := DMCXC.cdsMovCxC;
      GNCredito.TableName := 'CXC301';
      GNCredito.Filter := xSelDoc;

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GNCredito.Filter <> '' Then
            GNCredito.Filter := GNCredito.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GNCredito.Filter := DMCXC.cFilterCiaUser;
      End;
      If DMCXC.cFilterOrigenUser <> '' Then
      Begin
         If GNCredito.Filter <> '' Then
            GNCredito.Filter := GNCredito.Filter + ' and ' + DMCXC.cFilterOrigenUser
         Else
            GNCredito.Filter := DMCXC.cFilterOrigenUser;
      End;
      If DMCXC.cFilterUsuarioUser <> '' Then
      Begin
         If GNCredito.Filter <> '' Then
            GNCredito.Filter := GNCredito.Filter + ' and ' + DMCXC.cFilterUsuarioUser
         Else
            GNCredito.Filter := DMCXC.cFilterUsuarioUser;
      End;

      GNCredito.Titulo := 'Aplicacion de Notas de Crédito';
      GNCredito.User := DMCXC.wUsuario;
      GNCredito.DComC := DMCXC.DCOM1;
      GNCredito.Module := DMCXC.wModulo;
   //
      GNCredito.SectionName := 'CXCNCreditoAplica';
      GNCredito.FileNameIni := '\oaCXC.INI';
   //
      DMCXC.cdsMovCxC2.IndexFieldNames := '';
      DMCXC.cdsCanjes.IndexFieldNames := '';
      GNCredito.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCContabilizacionDeAplicaciones;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GLetras = Nil) Then Exit;
   Try
      FToolContabAplica := TFToolContabAplica.Create(Application);
      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GLetras := TMant.Create(Application);
      GLetras.Admin := DMCXC.wAdmin;
      GLetras.OnCreateMant := FRegistros.ContabAplicaCreate; //NIL; //AcepContCreateBAK;
      GLetras.OnCierra := FRegistros.ContabAplicaCierra;
      GLetras.OnInsert := Nil;
      GLetras.OnEdit := Nil;
      GLetras.OnShow := FRegistros.PGridShow;
      GLetras.ClientDataSet := DMCXC.cdsCCanje;
      GLetras.TableName := 'CXC307';
      GLetras.Filter := '(TCANJEID=''NC'' OR TCANJEID=''AN'') ';

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GLetras.Filter <> '' Then
            GLetras.Filter := GLetras.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GLetras.Filter := DMCXC.cFilterCiaUser;
      End;

      GLetras.Titulo := 'Contabilización de Aplicaciones';
      GLetras.User := DMCXC.wUsuario;
      GLetras.DComC := DMCXC.DCOM1;
      GLetras.Module := DMCXC.wModulo;
      GLetras.SectionName := 'CXCContabAplica';
      GLetras.FileNameIni := '\oaCXC.INI';
      GLetras.MultiSelect := True;
      GLetras.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCCanjexLetrasMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GLetras = Nil) Then Exit;
   Try
 // 'Letras x Cobrar'
      FRegistros := TFRegistros.Create(Application);
      FRegistros.xTipoProv := 'L';
      If Not FRegistros.FiltraDocGrid Then Exit;

//   FToolCont := TFToolCont.Create(Self);
   //FToolCanje := TFToolCanje.Create(Self);
      DMCXC.cdsDoc.Filter := 'DOCMOD=''CXC''';
      DMCXC.cdsDoc.Filtered := True;
      FRegistros.LetrasInicializa;
      DMCXC.cdsSerie.open;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GLetras := TMant.Create(Application);
      GLetras.Admin := DMCXC.wAdmin;
      GLetras.OnCreateMant := Nil; //AcepContCreateBAK;
      GLetras.OnInsert := FRegistros.LetrasInsert;
      GLetras.OnEdit := FRegistros.LetrasEdita;
      GLetras.OnCierra := FRegistros.LetrasCierra;
      GLetras.OnShow := FRegistros.PGridShow;
      GLetras.ClientDataSet := DMCXC.cdsCCanje;
      GLetras.TableName := 'CXC307';
      GLetras.Filter := '(' + xSelDoc + ' or CXC307.DOCID=''  '') AND TCANJEID=''LC''';

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GLetras.Filter <> '' Then
            GLetras.Filter := GLetras.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GLetras.Filter := DMCXC.cFilterCiaUser;
      End;

      GLetras.Titulo := 'Canje por Letras';
      GLetras.User := DMCXC.wUsuario;
      GLetras.DComC := DMCXC.DCOM1;
      GLetras.Module := DMCXC.wModulo;
      GLetras.SectionName := 'CXCLetras';
      GLetras.FileNameIni := '\oaCXC.INI';
      GLetras.MultiSelect := True;
      GLetras.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCCanjexLetras;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
  // 'Letras x Cobrar'
   FRegistros := TFRegistros.Create(Application);
   FRegistros.xTipoProv := 'L';
   If Not FRegistros.FiltraDocGrid Then Exit;

   DMCXC.cdsDoc.Filter := 'DOCMOD=''CXC''';
   DMCXC.cdsDoc.Filtered := True;
   FRegistros.LetrasInicializa;
   DMCXC.cdsSerie.open;

   DMCXC.wModo := 'A';
   xSQL := ' SELECT * FROM CXC307 WHERE CIAID=''XX'' ' +
      ' AND TCANJEID=''XX'' AND CANJE=''XX'' ';
   DMCXC.cdsCCanje.Close;
   DMCXC.cdsCCanje.DataRequest(xSQL);
   DMCXC.cdsCCanje.Open;

   FLetras := TFLetras.Create(Application);
   FLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCRenovacionDeLetrasMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GLetras = Nil) Then Exit;
   Try
 // 'Letras x Cobrar'
      FRegistros := TFRegistros.Create(Application);
      FRegistros.xTipoProv := 'L';
      If Not FRegistros.FiltraDocGrid Then Exit;

      DMCXC.cdsDoc.Filter := 'DOCMOD=''CXC''';
      DMCXC.cdsDoc.Filtered := True;
      FRegistros.LetrasInicializa;
      DMCXC.cdsSerie.open;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GLetras := TMant.Create(Application);
      GLetras.Admin := DMCXC.wAdmin;
      GLetras.OnCreateMant := Nil; //AcepContCreateBAK;
      GLetras.OnInsert := FRegistros.RenovaLetrasInsert;
      GLetras.OnEdit := FRegistros.RenovaLetrasEdita;
      GLetras.OnCierra := FRegistros.RenovaLetrasCierra;
      GLetras.OnShow := FRegistros.PGridShow;
      GLetras.ClientDataSet := DMCXC.cdsCCanje;
      GLetras.TableName := 'CXC307';
      GLetras.Filter := '( ' + xSelDoc + ' or CXC307.DOCID=''  '') AND TCANJEID=''LC''';

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GLetras.Filter <> '' Then
            GLetras.Filter := GLetras.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GLetras.Filter := DMCXC.cFilterCiaUser;
      End;

      GLetras.Titulo := 'Renovación de Letras';
      GLetras.User := DMCXC.wUsuario;
      GLetras.DComC := DMCXC.DCOM1;
      GLetras.Module := DMCXC.wModulo;
      GLetras.SectionName := 'CXCRenovaLetras';
      GLetras.FileNameIni := '\oaCXC.INI';
      GLetras.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCRenovacionDeLetras;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
 // 'Letras x Cobrar'
   FRegistros := TFRegistros.Create(Application);
   FRegistros.xTipoProv := 'L';
   If Not FRegistros.FiltraDocGrid Then Exit;

//   FToolCont := TFToolCont.Create(Self);
   DMCXC.cdsDoc.Filter := 'DOCMOD=''CXC''';
   DMCXC.cdsDoc.Filtered := True;
   FRegistros.LetrasInicializa;
   DMCXC.cdsSerie.open;

   DMCXC.wModo := 'A';
   xSQL := ' SELECT * FROM CXC307 WHERE CIAID=''XX'' ' +
      ' AND TCANJEID=''XX'' AND CANJE=''XX'' ';
   DMCXC.cdsCCanje.Close;
   DMCXC.cdsCCanje.DataRequest(xSQL);
   DMCXC.cdsCCanje.Open;
   FRenovaLetras := TFRenovaLetras.Create(Application);
   FRenovaLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCGestionDeLetras;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (Mantc = Nil) Then Exit;
   Try
      FRegistros := TFRegistros.Create(Application);

      FRegistros.xTipoProv := 'L';
      If Not FRegistros.FiltraDocGrid2 Then Exit;

// CXC777 FToolLetras   - Tool de Letras
      FToolLetras := TFToolLetras.Create(Application);
      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      Mantc := TMant.Create(Application);
      wTool := FToolLetras.Name;

      With Mantc Do
      Begin
         Module := DMCXC.wModulo;
         Admin := DMCXC.wAdmin;
         OnCreateMant := FRegistros.UbiSitCreate;
         OnEdit := FRegistros.UbiSitEdit;
         OnCierra := FRegistros.UbiSitCierra;
         Filter := xSelDoc;

         If DMCXC.cFilterCiaUser <> '' Then
         Begin
            If Mantc.Filter <> '' Then
               Mantc.Filter := Mantc.Filter + ' and ' + DMCXC.cFilterCiaUser
            Else
               Mantc.Filter := DMCXC.cFilterCiaUser;
         End;

         ClientDataSet := DMCXC.cdsMovCxC;
         TableName := 'CXC301';
         MultiSelect := True;
         Titulo := 'Gestion de Letras';
         User := DMCXC.wUsuario;
         DComC := DMCXC.DCOM1;
         Module := DMCXC.wModulo;
         SectionName := 'CXCGestionLetras';
         FileNameIni := '\oaCXC.INI';
         Execute;
         FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
      End;
   Finally
   End;
End;

Procedure CCDinamicaContableDeLetrasMant;
Var
   sSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (NLetras = Nil) Then Exit;
   Try

      FToolImpDinamica := TFToolImpDinamica.Create(Application);

      sSQL := 'Select * from TGE104 ';
      DMCXC.cdsTDiario.Close;
      DMCXC.cdsTDiario.DataRequest(sSQL);
      DMCXC.cdsTDiario.Open;

      DMCXC.cdsTOPERBCO.Filter := '';
      DMCXC.cdsTOPERBCO.Filtered := False;

      DMCXC.cdsTOPERBCO.Open;
      DMCXC.cdsZona.Open;

      DMCXC.cdsPlanCta.Close;
      ;
      DMCXC.cdsPlanCta.FetchOnDemand := False;
      DMCXC.cdsPlanCta.PacketRecords := 50;
      DMCXC.cdsPlanCta.FetchOnDemand := True;
      DMCXC.cdsPlanCta.Open;

      DMCXC.cdsDebeHabe.Open;
      FiltraCds(DMCXC.cdsOrigenDestino, 'SELECT * FROM CXC801');
      FiltraCds(DMCXC.cdsRelacion, 'SELECT * FROM CXC802');
      sSQL := ' SELECT * FROM (SELECT DISTINCT CXC205.CIAID, TGE101.CIADES, CXC205.UBICAID,CXC105.UBICADES, SITUAID,SITUADES,CXC205.TMONID, TGE103.TMONABR, ZONA, TVTADES, CXC205.TDIARID, TGE104.TDIARDES ' +
         ' FROM ' +
         ' CXC205, TGE101, CXC105, TGE103, FAC105, TGE104 ' +
         ' WHERE ' +
         ' CXC205.CIAID=TGE101.CIAID AND ' +
         ' CXC205.UBICAID=CXC105.UBICAID AND ' +
         ' CXC205.TMONID=TGE103.TMONID AND ' +
         ' CXC205.ZONA=FAC105.TVTAID AND ' +
         ' CXC205.TDIARID=TGE104.TDIARID ';
      If DMCXC.cFilterCiaUser <> '' Then
         sSQL := sSQL + ' and A.' + DMCXC.cFilterCiaUser;

      sSQL := sSQL
         + ' ) SOLVISTA ';

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa

      NLetras := TMant.Create(Application);
      NLetras.Admin := DMCXC.wAdmin;
      NLetras.OnCreateMant := FRegistros.NLetraSCreate;
      NLetras.OnInsert := FRegistros.NLetraSInsert;
      NLetras.OnEdit := FRegistros.NLetraSEdit;
      NLetras.OnCierra := FRegistros.NLetraSCierra;
      NLetras.OnDelete := Nil; //NLetraSDelete;
      NLetras.OnShow := Nil;
      NLetras.DComC := DMCXC.DCOM1;
      NLetras.ClientDataSet := DMCXC.cdsReporte;
      NLetras.TableName := 'VWCXCDINAMCONTA';
      NLetras.Filter := '';
      NLetras.Titulo := 'Dinámica Contable de Letras';
      NLetras.User := DMCXC.wUsuario;
      NLetras.UsuarioSQL.Add(sSQL);
      NLetras.Module := DMCXC.wModulo;
      NLetras.SectionName := 'CXCDinamicaContable';
      NLetras.FileNameIni := '\oaCXC.INI';
      NLetras.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCDinamicaContableDeLetras;
Var
   sSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   sSQL := 'Select * from TGE104 ';
   DMCXC.cdsTDiario.Close;
   DMCXC.cdsTDiario.DataRequest(sSQL);
   DMCXC.cdsTDiario.Open;

   DMCXC.cdsTOPERBCO.Filter := '';
   DMCXC.cdsTOPERBCO.Filtered := False;

   DMCXC.cdsTOPERBCO.Open;
   DMCXC.cdsZona.Open;

   DMCXC.cdsPlanCta.Close;
   ;
   DMCXC.cdsPlanCta.FetchOnDemand := False;
   DMCXC.cdsPlanCta.PacketRecords := 50;
   DMCXC.cdsPlanCta.FetchOnDemand := True;
   DMCXC.cdsPlanCta.Open;

   DMCXC.cdsDebeHabe.Open;
   FiltraCds(DMCXC.cdsOrigenDestino, 'SELECT * FROM CXC801');
   FiltraCds(DMCXC.cdsRelacion, 'SELECT * FROM CXC802');
   DMCXC.wModo := 'A';

   FNLetras := TFNLetras.Create(Application);
   FNLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCContabilizacionDeLetrasMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GLetras = Nil) Then Exit;
   Try
      FToolContabLetras := TFToolContabLetras.Create(Application);
      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GLetras := TMant.Create(Application);
      GLetras.Admin := DMCXC.wAdmin;
      GLetras.OnCreateMant := FRegistros.ContabLetrasCreate; //ContabAplicaCreate; //NIL; //AcepContCreateBAK;
      GLetras.OnInsert := Nil;
      GLetras.OnEdit := Nil;
      GLetras.OnCierra := FRegistros.ContabLetrasCierra;
      GLetras.OnShow := FRegistros.PGridShow;
      GLetras.ClientDataSet := DMCXC.cdsCCanje;
      GLetras.TableName := 'CXC307';
      GLetras.Filter := ' TCANJEID=''GL'' ';

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GLetras.Filter <> '' Then
            GLetras.Filter := GLetras.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GLetras.Filter := DMCXC.cFilterCiaUser;
      End;

      GLetras.Titulo := 'Contabilización de Letras';
      GLetras.User := DMCXC.wUsuario;
      GLetras.DComC := DMCXC.DCOM1;
      GLetras.Module := DMCXC.wModulo;
      GLetras.SectionName := 'CXCContabLetras';
      GLetras.FileNameIni := '\oaCXC.INI';
      GLetras.MultiSelect := True;
      GLetras.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCPlanillaDeBancosMant;
Var
   sSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GLetras = Nil) Then Exit;
   Try
      DMCXC.cdsGrupo.Close;
      DMCXC.cdsGrupo.DataRequest('SELECT * FROM CXC112 WHERE FLAGBCO=''S''');
      DMCXC.cdsGrupo.Open;

      sSQL := ' SELECT CXC107.*,CXC104.GRUPOID FROM CXC107, CXC104 '
         + ' WHERE CXC104.SITUAID=CXC107.TOPEQUSIT ';
      DMCXC.cdsTOPERBCO.Close;
      DMCXC.cdsTOPERBCO.DataRequest(sSQL);
      DMCXC.cdsTOPERBCO.Open;

      DMCXC.cdsCIA.Open;
      DMCXC.cdsBCOCCB.Open;
      DMCXC.cdsBCOCCBG.Open;
      DMCXC.dsBanco.OnDataChange := Nil;
      DMCXC.cdsBanco.Open;
      DMCXC.cdsBanco.Filter := 'BCOTIPCTA=''B'' ';
      DMCXC.cdsBanco.Filtered := True;
      DMCXC.cdsBanco.IndexFieldNames := 'BANCOID';
      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa

      sSQL := 'select DOCID from TGE110 '
         + 'where (DOCMOD=''CXC'' or DOCMOD=''CC'') and DOC_FREG=''L'' ';
      Filtracds(DMCXC.cdsQry, sSQL);
      If DMCXC.cdsQry.Recordcount = 0 Then
      Begin
         ShowMessage('No hay documentos registrados como Letras por Cobrar');
         exit;
      End;

      xDocLetras := '';
      DMCXC.cdsQry.First;
      While Not DMCXC.cdsQry.EOF Do
      Begin
         If length(xDocLetras) = 0 Then
            xDocLetras := '(DOCID=' + quotedstr(DMCXC.cdsQry.FieldByName('DOCID').AsString)
         Else
            xDocLetras := xDocLetras + ' or DOCID=' + quotedstr(DMCXC.cdsQry.FieldByName('DOCID').AsString);
         DMCXC.cdsQry.Next;
      End;
      xDocLetras := xDocLetras + ')';

      Mantc := TMant.Create(Application);
      With Mantc Do
      Begin
         Admin := DMCXC.wAdmin;
         OnCreateMant := FRegistros.PLBCCreate;
         OnInsert := FRegistros.PLBCInsert;
         OnEdit := FRegistros.PLBCEdit;
         OnShow := FRegistros.PLBCShow;
         OnDelete := FRegistros.PLBCDelete;
         OnCierra := FRegistros.PLBCCierra;
         Filter := '';

         If DMCXC.cFilterCiaUser <> '' Then
         Begin
            If Mantc.Filter <> '' Then
               Mantc.Filter := Mantc.Filter + ' and ' + DMCXC.cFilterCiaUser
            Else
               Mantc.Filter := DMCXC.cFilterCiaUser;
         End;

         ClientDataSet := DMCXC.cdsPLNBCO;
         TableName := 'CXC308';
         MultiSelect := True;
         Titulo := 'Planilla de Bancos';
         User := DMCXC.wUsuario;
         Module := DMCXC.wModulo;
         DComC := DMCXC.DCOM1;
         SectionName := 'CXCPlanillaBanco';
         FileNameIni := '\oaCXC.INI';
         Execute;
         FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
      End;
   Finally
   End;
End;

Procedure CCPlanillaDeBancos;
Var
   sSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
//  Application.CreateForm(TFDPNLBCO, FDPNLBCO);
   xSQL := ' SELECT * FROM CXC308 WHERE CIAID=' + QuotedStr('XX') +
      ' AND PLBCID=' + QuotedStr('XX') +
      ' AND BANCOID=' + QuotedStr('XX') +
      ' AND CCBCOID=' + QuotedStr('XX');
   DMCXC.cdsPLNBCO.Close;
   DMCXC.cdsPLNBCO.DataRequest(xSQL);
   DMCXC.cdsPLNBCO.Open;

   DMCXC.cdsGrupo.Close;
   DMCXC.cdsGrupo.DataRequest('SELECT * FROM CXC112 WHERE FLAGBCO=''S''');
   DMCXC.cdsGrupo.Open;

   sSQL := ' SELECT CXC107.*,CXC104.GRUPOID FROM CXC107, CXC104 ' +
      ' WHERE CXC104.SITUAID=CXC107.TOPEQUSIT ';
   DMCXC.cdsTOPERBCO.Close;
   DMCXC.cdsTOPERBCO.DataRequest(sSQL);
   DMCXC.cdsTOPERBCO.Open;

   DMCXC.cdsCIA.Open;
   DMCXC.cdsBCOCCB.Open;
   DMCXC.cdsBCOCCBG.Open;
   DMCXC.dsBanco.OnDataChange := Nil;

   DMCXC.cdsBanco.Open;
   DMCXC.cdsBanco.Filter := 'BCOTIPCTA=''B''';
   DMCXC.cdsBanco.Filtered := True;

   DMCXC.cdsBanco.IndexFieldNames := 'BANCOID';

   DMCXC.cdsDPLNBCO.Close;
   DMCXC.cdsDPLNBCO.MasterSource := DMCXC.dsPLNBCO;
   DMCXC.cdsDPLNBCO.MasterFields := 'CIAID;PLBCID;BANCOID;CCBCOID';
   DMCXC.cdsDPLNBCO.IndexFieldNames := 'CIAID;PLBCID;BANCOID;CCBCOID;DPLBCID';

   DMCXC.cdsDPLNBCO.Open;

   DMCXC.cdsPLNBCO.Insert;

   DMCXC.wModo := 'A';
   Application.CreateForm(TFPNLBCO, FPNLBCO);
   With FPNLBCO Do
   Begin
      dblcCIA.Enabled := True;
      dblcBCO.Enabled := True;
      dblcCCB.Enabled := True;
   End;

// CXC221 FPNLBCO Formato de Actualización de Planilla de Bancos
   FPNLBCO.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCNotaDeCobranzaMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If Not (GNCobra = Nil) Then Exit;
   Try
      DMCXC.FiltraTabla(DMCXC.cdsFPago, 'TGE112', 'FPAGOID');

      FREgistros.NotaCobInicializa;

      DMCXC.wTipoAdicion := 'xFiltro'; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa
      GNCobra := TMant.Create(Application);
      GNCobra.Admin := DMCXC.wAdmin;
      GNCobra.OnInsert := FRegistros.NotaCobInsert;
      GNCobra.OnEdit := FRegistros.NotaCobEdita;
      GNCobra.OnDelete := FRegistros.NotaCobDelete;
      GNCobra.OnCierra := FRegistros.NotaCobCierra;
      GNCobra.OnShow := FRegistros.PGridShow;
      GNCobra.ClientDataSet := DMCXC.cdsCobranza;
      GNCobra.TableName := 'CXC303';
      GNCobra.Filter := 'CXC303.CCTREC=''CO'' ';

      If DMCXC.cFilterCiaUser <> '' Then
      Begin
         If GNCobra.Filter <> '' Then
            GNCobra.Filter := GNCobra.Filter + ' and ' + DMCXC.cFilterCiaUser
         Else
            GNCobra.Filter := DMCXC.cFilterCiaUser;
      End;

      GNCobra.Titulo := 'Nota de Cobranza';
      GNCobra.User := DMCXC.wUsuario;
      GNCobra.DComC := DMCXC.DCOM1;
      GNCobra.Module := DMCXC.wModulo;
      GNCobra.SectionName := 'CXCCobranza';
      GNCobra.FileNameIni := '\oaCXC.INI';
      GNCobra.Execute;
      FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   Finally
   End;
End;

Procedure CCNotaDeCobranza;
Var
   xSQL: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.FiltraTabla(DMCXC.cdsFPago, 'TGE112', 'FPAGOID');

   FREgistros.NotaCobInicializa;

   DMCXC.wModo := 'A';
   xSQL := ' SELECT * FROM CXC303 ' +
      ' WHERE CIAID=' + QuotedStr('XX') +
      ' AND NOTACOB=' + QuotedStr('XX');
   DMCXC.cdsCobranza.Close;
   DMCXC.cdsCobranza.DataRequest(xSQL);
   DMCXC.cdsCobranza.Open;

   FNotaCob := TFNotaCob.Create(Application);
   FNotaCob.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure CCCierreOperativo;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   Try
      Application.CreateForm(TFApeCieOpe, FApeCieOpe);
      FApeCieOpe.ShowModal;
   Finally
      FApeCieOpe.Free;
   End;
End;

{ TFRegistros }

Procedure TFRegistros.AcepContCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FToolCont.pnGLt;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.Height := pg.Height + 5;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;

   TMant(Sender).FMant.pnlBtns.Visible := True;
End;

Procedure TFRegistros.AdicMaesClie(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('sólo puede accesar a una opción de actualización de Cuentas por Cobrar a la vez');
      Exit;
   End;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;

   xSQL := ' SELECT * FROM TGE204 '
      + 'WHERE CIAID=' + QuotedStr('XX')
      + '  AND CLAUXID=' + QuotedStr('XX')
      + '  AND CLIEID=' + QuotedStr('XX');
   DMCXC.cdsClie.Close;
   DMCXC.cdsClie.DataRequest(xSQL);
   DMCXC.cdsClie.Open;

   DMCXC.wModo := 'A';
   FMaesClie := TFMaesClie.Create(Application);
   FMaesClie.ActiveMDIChild;
End;

Procedure TFRegistros.AnticipoDelete(Sender: TObject; MantFields: TFields);
Begin
   If GAnticipo.FMant.cds2.RecordCount = 0 Then Exit;

   If DMCXC.wAdmin <> 'G' Then
      Raise exception.create('No tiene Autorización para Eliminar el Registro');
End;

Procedure TFRegistros.AnticipoEdita(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   If Not TieneAcceso(GAnticipo) Then Exit;

   DMCXC.wModo := 'M';

   FAnticipo := TFAnticipo.Create(Application);
   FAnticipo.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;

End;

Procedure TFRegistros.AnticipoInicializa;
Begin
   DMCXC.cdsTMon.Filter := '';
   DMCXC.cdsTMon.Filter := 'TMon_Loc=''L'' or TMon_Loc=''E''';
   DMCXC.cdsTMon.Filtered := True;

   DMCXC.cdsTipReg.IndexFieldNames := 'TIPDET';
   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
   DMCXC.cdsCanjes.Close;
   DMCXC.cdsCanjes.IndexFieldNames := 'CIAID;TDIARID;CCANOMM;CCNOREG';
   DMCXC.cdsMovCxC2Clone.Close;
   DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
   DMCXC.cdsCanjesClone.Close;
   DMCXC.cdsCanjesClone.IndexFieldNames := 'CIAID;TDIARID;CCANOMM;CCNOREG';

   FiltraCds(DMCXC.cdsCpto, 'Select * from CXC201 Where OPCMENU=''P''');
End;

Procedure TFRegistros.AnticipoInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.wModo := 'A';

   xSQL := ' SELECT * FROM CXC301 WHERE 1<>1';
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

// CXC209 - FAnticipo   - Anticipos
   FAnticipo := TFAnticipo.Create(Application);
   FAnticipo.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.ContabAplicaCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FToolContabAplica.pnGLt;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.Height := pg.Height + 5;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;

   TMant(Sender).FMant.pnlBtns.Visible := True;
End;

Procedure TFRegistros.ContabLetrasCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FToolContabLetras.pnGLt;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.Height := pg.Height + 5;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;

   TMant(Sender).FMant.pnlBtns.Visible := True;
End;

Procedure TFRegistros.DeleteMaesClie(Sender: TObject; MantFields: TFields);
Var
   xSQL, xxCiaid, xxClieId, xxClAux: String;
Begin
   If DMCXC.wAdmin <> 'G' Then
      Raise exception.create('No tiene Autorización para Eliminar el Registro');

   xxCiaid := MantFields.FieldByName('CIAID').AsString;
   xxClieId := MantFields.FieldByName('CLIEID').AsString;
   xxClaUX := MantFields.FieldByName('CLAUXID').AsString;

   xSQL := 'SELECT CLIEID FROM CXC301 WHERE CIAID=' + QuotedStr(xxCiaid) + ' AND CLIEID=' + QuotedStr(xxClieId);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   If DMCXC.cdsQry.RecordCount > 0 Then
      Raise exception.create('Cliente tiene documentos. No es posible eliminar');

   If MantFields.FieldByName('FLAGMOV').AsString = 'S' Then
      Raise exception.create('Cliente tiene Pedidos. No es posible eliminar');

   If MessageDlg('¿  Eliminar Registro  ? ' + chr(13) + chr(13)
      + 'Cl.Auxiliar=' + '''' + xxClAux + '''' + chr(13)
      + 'Cliente    =' + '''' + xxClieId + '''' + chr(13) + chr(13),
      mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

   xSQL := 'Delete from TGE204 Where CLIEID=''' + xxClieId + ''' AND '
      + 'CLAUXID=''' + xxClAux + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   xSQL := 'Delete From TGE210 Where CLIEID=''' + xxClieId + '''';

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   xSQL := 'Delete From TGE211 Where CLIEID=''' + xxClieId + '''';
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   DMCXC.ActualizaFiltro(Mantc, DMCXC.cdsClie, 'E');
   ShowMessage('Registro Eliminado')
End;

Procedure TFRegistros.EditaMaesClie(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_Num_Formas > FVariables.w_Max_Formas Then
   Begin
      ShowMessage('No puede Invocar a más de ' + Trim(IntToStr(FVariables.w_Max_Formas)) + ' opciones al mismo tiempo');
      Exit;
   End;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('sólo puede accesar a una opción de actualización de Cuentas por Cobrar a la vez');
      Exit;
   End;
   If (Not Mantc.FMant.Z2bbtnConsulta.Enabled) And
      (Not Mantc.FMant.Z2bbtnModifica.Enabled) Then
      Exit;
   If Mantc.FMant.Z2bbtnModifica.Enabled Then
      DMCXC.wModo := 'M'
   Else
      DMCXC.wModo := 'C';

   xSQL := ' SELECT * FROM TGE204 WHERE ' +
      ' CIAID=' + QuotedStr(MantFields.FieldByName('CIAID').AsString) +
      ' AND CLAUXID=' + QuotedStr(MantFields.FieldByName('CLAUXID').AsString) +
      ' AND CLIEID=' + QuotedStr(MantFields.FieldByName('CLIEID').AsString);
   DMCXC.cdsClie.Close;
   DMCXC.cdsClie.DataRequest(xSQL);
   DMCXC.cdsClie.Open;

   If DMCXC.cdsCLIE.RecordCount = 0 Then Exit;

   FVariables.w_CC_Registro := True;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FMaesClie := TFMaesClie.Create(Application);
   FMaesClie.ActiveMDIChild;
End;

Function TFRegistros.FiltraDocGrid: Boolean;
Var
   sCartera, xxxTb: String;
   xWhere : String;
Begin
   DMCXC.FiltraTabla(DMCXC.cdsTDoc, 'TGE110', 'DocId');
   DMCXC.FiltraTabla(DMCXC.cdsDoc, 'TGE110', 'DocId');
   DMCXC.cdsTDoc.Filter := '';
   If FRegistros.xTipoProv = 'P' Then
   // Inicio HPC_201602_CXC
   Begin
      DMCXC.cdsTDoc.Filter := '( DOC_FREG=''' + FRegistros.xTipoProv + ''' or '
         + '  DOC_FREG=''D'' or DOC_FREG=''B'' or DOC_FREG=''H'' ) and DOCMOD=''CXC'' ';
      xWhere := 'DOCMOD=''CXC'' and DOC_FREG=''P'' and DOCTIPREG=''ND'' ';
      DMCXC.cdsDoc.Filter := xWhere;
      DMCXC.cdsDoc.Filtered := True;
//      DMCXC.FiltraTabla(DMCXC.cdsDoc, 'TGE110', 'DocId', xWhere);
   End
   // Fin HPC_201602_CXC
   Else
   Begin
      If FRegistros.xTipoProv = 'T' Then
      Begin
         sCartera := DMCXC.DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5');
         DMCXC.cdsTDoc.Filter := '( DOC_FREG=''L'' or '
            + '  DOC_FREG=''N'' or DOC_FREG=''P'' ) and DOCMOD=''CXC'''
      End
      Else
         If FRegistros.xTipoProv = 'N' Then
         Begin
            DMCXC.cdsTDoc.Filter := 'DOC_FREG=''N'' and DOCMOD=''CXC'' AND DOCTIPREG=''NC''';
         End
         Else
         Begin
            If FRegistros.xTipoProv = 'NC' Then
            Begin
               DMCXC.cdsTDoc.Filter := 'DOCMOD=''CXC'' AND ((DOC_FREG=''N'' and DOCTIPREG=''NC'') OR (DOC_FREG=''A''))';
            End
            Else
            Begin
               If FRegistros.xTipoProv = 'F' Then
               Begin
                  DMCXC.cdsTDoc.Filter := 'DOC_FREG=''P'' AND DOCMOD=''CXC'' AND DOCTIPREG<>''ND''';
               End
               Else
               Begin
                  If FRegistros.xTipoProv = 'A' Then
                     DMCXC.cdsTDoc.Filter := 'DOC_FREG=''A'' AND DOCMOD=''CXC'' '
                  Else
                     If FRegistros.xTipoProv = 'R' Then
                     Begin
                        DMCXC.cdsTDoc.Filter := 'DOC_FREG=''L'' AND DOCMOD=''CXC'' '
                     End
                     Else
                        DMCXC.cdsTDoc.Filter := 'DOC_FREG=''' + FRegistros.xTipoProv + ''' and DOCMOD=''CXC''';
               End;
            End;
         End;
   End;

   DMCXC.cdsTDoc.Filtered := true;

   If FRegistros.xTipoProv = 'L' Then
      xxxTb := 'CXC307'
   Else
   Begin
      If FRegistros.xTipoProv = 'C' Then
         xxxTb := 'CXC307'
      Else
         xxxTb := 'CXC301'
   End;

   xSelDoc := '';
   DMCXC.cdsTDoc.First;
   While Not DMCXC.cdsTDoc.Eof Do
   Begin
      If Length(xSelDoc) = 0 Then
         xSelDoc := '(' + xxxTb + '.DOCID=' + '''' + DMCXC.cdsTDoc.FieldByName('DOCID').AsString + ''''
      Else
         xSelDoc := xSelDoc + ' or ' + xxxTb + '.DOCID=' + '''' + DMCXC.cdsTDoc.FieldByName('DOCID').AsString + '''';
      DMCXC.cdsTDoc.Next;
   End;
   If xSelDoc <> '' Then
      xSelDoc := xSelDoc + ' ) ';

   If FRegistros.xTipoProv = 'T' Then
      xSelDoc := xSelDoc + ' AND (CCESTADO=''P'') AND ' + DMCXC.wReplacCeros + '(SITID,' + sCartera + ')=' + sCartera + '';
//                                                AND COALESCE(SITID,'03')='03'
   If FRegistros.xTipoProv = 'NC' Then
      xSelDoc := xSelDoc + ' AND (CCESTADO=''P'') ';

   If Length(xSelDoc) = 0 Then
      Raise Exception.Create('No Existen Tipos de Documentos Registrados para Esta Opcion');

   Result := True;
End;

Function TFRegistros.FiltraDocGrid2: Boolean;
Var
   sCartera, xxxTb: String;
Begin
   DMCXC.cdsTDoc.Filter := '';
   If FRegistros.xTipoProv = 'P' Then
      DMCXC.cdsTDoc.Filter := '( DOC_FREG=''' + FRegistros.xTipoProv + ''' or '
         + '  DOC_FREG=''D'' or DOC_FREG=''B'' ) and DOCMOD=''CXC'''
   Else
   Begin
      If FRegistros.xTipoProv = 'T' Then
      Begin
         sCartera := DMCXC.DisplayDescrip('CXC104', 'SITUAID', 'SITUAFLAG', '5');
         DMCXC.cdsTDoc.Filter := '( DOC_FREG=''L'' or '
            + '  DOC_FREG=''N'' or DOC_FREG=''P'' ) and DOCMOD=''CXC'''
      End
      Else
         DMCXC.cdsTDoc.Filter := 'DOC_FREG=''' + FRegistros.xTipoProv + ''' and DOCMOD=''CXC''';
   End;

   DMCXC.cdsTDoc.Filtered := true;

   xxxTb := 'CXC301';

   xSelDoc := '';
   While Not DMCXC.cdsTDoc.Eof Do
   Begin
      If Length(xSelDoc) = 0 Then
         xSelDoc := '(' + xxxTb + '.DOCID=' + '''' + DMCXC.cdsTDoc.FieldByName('DOCID').AsString + ''''
      Else
         xSelDoc := xSelDoc + ' or ' + xxxTb + '.DOCID=' + '''' + DMCXC.cdsTDoc.FieldByName('DOCID').AsString + '''';
      DMCXC.cdsTDoc.Next;
   End;
   xSelDoc := xSelDoc + ' ) ';

   If FRegistros.xTipoProv = 'T' Then
      xSelDoc := xSelDoc + ' AND (CCESTADO=''P'') AND ' + DMCXC.wReplacCeros + '(SITID,' + sCartera + ')=' + sCartera + '';
//                                                AND COALESCE(SITID,'03')='03'

   If Length(xSelDoc) = 0 Then
      Raise Exception.Create('No Existen Tipos de Documentos Registrados para Esta Opcion');

   Result := True;
End;

Procedure TFRegistros.ImprimirComprobante(CabComprobante: RCabComprobante);
Var
   Filtro,
      FiltroAntiguo: String;
Begin
   If DMCXC.cdsMovCxC.FieldByName('CC_CONTA').Value <> 'S' Then
   Begin
      ShowMessage('Este Movimiento no Está Contabilizado');
      exit;
   End;
   With CabComprobante Do
   Begin
      lblCiades.Caption := CiaDes; //CiaDes
      lblDiario.Caption := Diario; //Diario
      lblProveedor.Caption := Proveedor; //Proveedor
      lblGlosa.Caption := Glosa; //Glosa
      lblLote.Caption := Lote; //Lote
      lblTipoDoc.Caption := TipoDoc; //TipoDoc
      lblTipoCamb.Caption := TipoCamb; //TipoCamb
      lblPeriodo.Caption := Periodo; //Periodo
      lblNoComp.Caption := NoComp; //NoComp
      lblNoDoc.Caption := NoDoc; //NoDoc
      lblcuenta.caption := Cuenta; //Cuenta
      lblbanco.caption := Banco; //Banco
      lblnumchq.caption := Numchq; //NumChq
      lblmoneda.caption := Moneda; //Moneda

      Filtro := 'CIAID =''' + CIAID + ''' AND TDIARID=''' + TDIARID +
         ''' AND CCANOMES=''' + Periodo + ''' AND CCNOREG =''' +
         NoComp + '''';
   End;
    //filtrado de cdsCnrCaja
   FiltroAntiguo := '';
   If DMCXC.cdsDetCxC.Filtered = true And (DMCXC.cdsDetCxC.Filter <> '') Then
      FiltroAntiguo := DMCXC.cdsDetCxC.Filter;

   DMCXC.cdsDetCxC.Filter := Filtro;
   DMCXC.cdsDetCxC.Filtered := True;

   ppdbPCxC.DataSource := DMCXC.dsDetCxC;
   pprContabilizado.Print;
   ppdbPCxC.DataSource := Nil;
   If FiltroAntiguo <> '' Then
   Begin
      DMCXC.cdsDetCxC.Filter := FiltroAntiguo;
      DMCXC.cdsDetCxC.Filtered := True;
   End
   Else
   Begin
      DMCXC.cdsDetCxC.Filter := '';
      DMCXC.cdsDetCxC.Filtered := True;
   End;
End;

Procedure TFRegistros.LetrasEdita(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   If Not TieneAcceso(GLetras) Then Exit;
   DMCXC.wModo := 'M';

   FLetras := TFLetras.Create(Application);
   FLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;

End;

Procedure TFRegistros.LetrasInicializa;
Var
   xxWhere: String;
Begin
   // Tipo de Moneda debe ser L o E
   DMCXC.cdsTMon.Filter := '';
   DMCXC.cdsTMon.Filter := 'TMON_LOC=''L'' or TMON_LOC=''E'' ';
   DMCXC.cdsTMon.Filtered := True;

{   xxWhere := 'DOC_FREG=''D'' and DOCMOD=''CXC''';
   FiltraCds( DMCXC.cdsTDoc,'Select * from TGE110 Where '+ xxWhere );}

   FiltraCds(DMCXC.cdsCpto, 'Select * from CXC201 Where OPCMENU=''L''');

//   Filtracds( DMCXC.cdsClie,   'Select * from TGE204' );
   Filtracds(DMCXC.cdsMovCxC, 'Select * from CXC301 Where CIAID=''''');
   Filtracds(DMCXC.cdsDetCxC2, 'Select * from CXC302 Where CIAID=''''');

   // Indexa Client Dat sets
{   DMCXC.cdsMovCxC2.IndexFieldNames:='CIAID;TDIARID;CCANOMES;CCNOREG';
   DMCXC.cdsMovCxC2Clone.IndexFieldNames:='CIAID;TDIARID;CCANOMES;CCNOREG';}
   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsMovCxC2Clone.Close;
   DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsCanjes.Close;
   DMCXC.cdsCanjes.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsCanjesClone.Close;
   DMCXC.cdsCanjesClone.IndexFieldNames := 'CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
End;

Procedure TFRegistros.LetrasInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.wModo := 'A';

// CXC203   FLetras  - Generación de Letras por Cobrar
   FLetras := TFLetras.Create(Application);
   FLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.ListaComponentes(xForm: TForm);
Var
   i: integer;
Begin

   For i := 0 To xForm.ComponentCount - 1 Do
   Begin

      If xForm.Components[i].ClassName = 'TPanel' Then
         TPanel(xForm.components[i]).OnMouseMove := MueveMouse;
      // para botones
      If xForm.Components[i].ClassName = 'TButton' Then
         TButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para bitbuttons
      If xForm.Components[i].ClassName = 'TBitBtn' Then
         TBitBtn(xForm.components[i]).OnMouseMove := MueveMouse;
      // para speedbuttons
      If xForm.Components[i].ClassName = 'TSpeedButton' Then
         TSpeedButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // Boton de Grid
      If xForm.Components[i].ClassName = 'TwwIButton' Then
         TwwIButton(xForm.components[i]).OnMouseMove := MueveMouse;

      // para la forma
      xForm.onMouseMove := MueveMouse;
   End;
End;

Procedure TFRegistros.MueveMouse(xObjeto: TObject; Shift: TShiftState; X,
   Y: Integer);
Var
   xComponente: String;
   xForma: TForm;
Begin
   If wTool <> '' Then
   Begin
      xComponente := wTool
   End
   Else
   Begin
      xForma := Screen.ActiveForm;
      xComponente := xForma.Name;
   End;

   If xObjeto Is TForm Then
   Else
   Begin

      xComponente := xComponente + '.' + TControl(xObjeto).Name;

      If wTool <> '' Then
         DMCXC.wObjetoForma := wTool
      Else
         DMCXC.wObjetoForma := xForma.Name;

      DMCXC.wObjetoNombr := TControl(xObjeto).Name;
      If Copy(DMCXC.wObjetoNombr, 2, 1) = '2' Then
         DMCXC.wObjetoDescr := DMCXC.wObjetoDesPr + ' - ' + TControl(xObjeto).Hint
      Else
      Begin
         DMCXC.wObjetoDescr := TControl(xObjeto).Hint;
      End;
   End;
End;

Procedure TFRegistros.NCreditoAplicaEdita(Sender: TObject;
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
   If Not TieneAcceso(GNCredito) Then Exit;
   DMCXC.wModo := 'M';

// CXC208 - FNotasDCAplica -  Aplicación de Notas de Crédito
   FNotasDCAplica := TFNotasDCAplica.Create(Application);
   FNotasDCAplica.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.NCreditoDelete(Sender: TObject; MantFields: TFields);
Begin
   If GNCredito.FMant.cds2.RecordCount = 0 Then Exit;

   If DMCXC.wAdmin <> 'G' Then
      Raise exception.create('No tiene Autorización para Eliminar el Registro');
End;

Procedure TFRegistros.NCreditoEdita(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   If Not TieneAcceso(GNCredito) Then Exit;

   xSQL := ' SELECT * FROM CXC301 WHERE ' +
      ' CIAID=' + QuotedStr(MantFields.FieldByName('CIAID').AsString) +
      ' AND DOCID=' + QuotedStr(MantFields.FieldByName('DOCID').AsString) +
      ' AND CCSERIE=' + QuotedStr(MantFields.FieldByName('CCSERIE').AsString) +
      ' AND CCNODOC=' + QuotedStr(MantFields.FieldByName('CCNODOC').AsString);
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;
   DMCXC.wModo := 'M';

// CXC202 FNotasDC - Notas de Crédito
   FNotasDC := TFNotasDC.Create(Application);
   FNotasDC.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
   FVariables.ConfiguraForma(Screen.ActiveForm);
End;

Procedure TFRegistros.NCreditoInicializa;
Begin
   // Tipo de Moneda debe ser L o E
   DMCXC.cdsTMon.Filter := '';
   DMCXC.cdsTMon.Filter := 'TMon_Loc=''L'' or TMon_Loc=''E''';
   DMCXC.cdsTMon.Filtered := True;

   DMCXC.cdsTipReg.IndexFieldNames := 'TIPDET';

   DMCXC.cdsMovCxC2.Close;
   DMCXC.cdsMovCxC2.DataRequest('SELECT * FROM CXC301 WHERE CIAID=''CESARCESAR''');
   DMCXC.cdsMovCxC2.Open;
   DMCXC.cdsMovCxC2.EmptyDataSet;
   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';

   DMCXC.cdsCanjes.Close;
   DMCXC.cdsCanjes.DataRequest('SELECT * FROM CXC304 WHERE CIAID=''CESARCESAR''');
   DMCXC.cdsCanjes.Open;
   DMCXC.cdsCanjes.EmptyDataSet;
   DMCXC.cdsCanjes.IndexFieldNames := 'CIAID;TDIARID;CCANOMM;CCNOREG';

   DMCXC.cdsMovCxC2Clone.Close;
   DMCXC.cdsMovCxC2Clone.DataRequest('SELECT * FROM CXC301 WHERE CIAID=''CESARCESAR''');
   DMCXC.cdsMovCxC2Clone.Open;
   DMCXC.cdsMovCxC2Clone.EmptyDataSet;
   DMCXC.cdsMovCxC2Clone.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';

   DMCXC.cdsCanjesClone.Close;
   DMCXC.cdsCanjesClone.DataRequest('SELECT * FROM CXC304 WHERE CIAID=''CESARCESAR''');
   DMCXC.cdsCanjesClone.Open;
   DMCXC.cdsCanjesClone.EmptyDataSet;
   DMCXC.cdsCanjesClone.IndexFieldNames := 'CIAID;TDIARID;CCANOMM;CCNOREG';

//   Filtracds( DMCXC.cdsClie,  'Select * from TGE204' );
   FiltraCds(DMCXC.cdsCpto, 'Select * from CXC201 Where OPCMENU=''P''');
End;

Procedure TFRegistros.NCreditoInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opción de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.wModo := 'A';

   xSQL := ' SELECT * FROM CXC301 WHERE 1<>1';
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

// CXC202 FNotasDC - Notas de Crédito
   FNotasDC := TFNotasDC.Create(Application);
   FNotasDC.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.NLetrasCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FToolImpDinamica.pnGLt;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.Height := pg.Height + 5;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;

   TMant(Sender).FMant.pnlBtns.Visible := True;
End;

Procedure TFRegistros.NLetrasDelete(Sender: TObject; MantFields: TFields);
Var
   sSQL: String;
Begin
   If NLetras.FMant.cds2.RecordCount = 0 Then Exit;
   If MessageDlg('¿  Eliminar Registro  ? ' + chr(13) + chr(13)
      + 'Compañía  =' + QuotedStr(NLetras.FMant.cds2.FieldByName('CIAID').AsString) + chr(13)
      + 'Ubicación =' + QuotedStr(NLetras.FMant.cds2.FieldByName('UBICAID').AsString) + chr(13)
      + 'Situación =' + QuotedStr(NLetras.FMant.cds2.FieldByName('SITUAID').AsString) + chr(13)
      + 'Tipo      =' + QuotedStr(NLetras.FMant.cds2.FieldByName('TIPCTA').AsString) + chr(13)
      + 'Moneda    =' + QuotedStr(NLetras.FMant.cds2.FieldByName('TMONID').AsString) + chr(13)
      + 'Zona      =' + QuotedStr(NLetras.FMant.cds2.FieldByName('ZONA').AsString) + chr(13)
      + 'Cuenta    =' + QuotedStr(NLetras.FMant.cds2.FieldByName('CUENTAID').AsString) + chr(13)
      + 'Orden     =' + QuotedStr(NLetras.FMant.cds2.FieldByName('ORDEN').AsString) + chr(13)
      + 'Debe/Haber=' + QuotedStr(NLetras.FMant.cds2.FieldByName('DH').AsString) + chr(13), mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      sSQL := ' DELETE FROM CXC205 WHERE ' +
         ' CIAID=' + QuotedStr(NLetras.FMant.cds2.FieldByName('CIAID').AsString) + ' AND ' +
         ' UBICAID=' + QuotedStr(NLetras.FMant.cds2.FieldByName('UBICAID').AsString) + ' AND ' +
         ' SITUAID=' + QuotedStr(NLetras.FMant.cds2.FieldByName('SITUAID').AsString) + ' AND ' +
         ' TIPCTA=' + QuotedStr(NLetras.FMant.cds2.FieldByName('TIPCTA').AsString) + ' AND ' +
         ' TMONID=' + QuotedStr(NLetras.FMant.cds2.FieldByName('TMONID').AsString) + ' AND ' +
         ' ZONA=' + QuotedStr(NLetras.FMant.cds2.FieldByName('ZONA').AsString) + ' AND ' +
         ' CUENTAID=' + QuotedStr(NLetras.FMant.cds2.FieldByName('CUENTAID').AsString) + ' AND ' +
         ' ORDEN=' + NLetras.FMant.cds2.FieldByName('ORDEN').AsString + ' AND ' +
         ' DH=' + QuotedStr(NLetras.FMant.cds2.FieldByName('DH').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
         ShowMessage('Registro Eliminado');
         NLetras.RefreshFilter;
      Except
         ShowMessage('No se puedo Eliminar el Registro');
      End;
   End;
End;

Procedure TFRegistros.NLetrasEdit(Sender: TObject; MantFields: TFields);
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   If (Not NLetras.FMant.Z2bbtnConsulta.Enabled) And
      (Not NLetras.FMant.Z2bbtnModifica.Enabled) Then Exit;

   If NLetras.FMant.Z2bbtnModifica.Enabled Then
      DMCXC.wModo := 'M'
   Else
   Begin
      DMCXC.wModo := 'C';
   End;

   If NLetras.FMant.cds2.RecordCount = 0 Then Exit;

   FNLetras := TFNLetras.Create(Application);
   FNLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.NLetrasInsert(Sender: TObject);
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.wModo := 'A';
   FNLetras := TFNLetras.Create(Application);
   FNLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.NotaCobDelete(Sender: TObject; MantFields: TFields);
Var
   xSQL, xxCia, xxNoD: String;
Begin
   If GNCobra.FMant.cds2.RecordCount = 0 Then Exit;

   If DMCXC.wAdmin <> 'G' Then
//   If DMCXC.wUsuario<>'AAA' then
      Raise exception.create('No tiene Autorización para Eliminar el Registro');

   If Not ((MantFields.FieldByName('CCESTADO').AsString = 'I') Or
      (Length(MantFields.FieldByName('CCESTADO').AsString) = 0)) Then
      Raise exception.Create('Registro No Se Puede Eliminar');

   xxCia := MantFields.FieldByName('CIAID').AsString;
   xxNoD := MantFields.FieldByName('NOTACOB').AsString;

   If MessageDlg('¿  Eliminar Registro  ? ' + chr(13) + chr(13)
      + 'Compañía     =' + '''' + xxCia + '''' + chr(13)
      + 'Nota Cobranza=' + '''' + xxNoD + '''',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      xSQL := 'Delete from CXC303 Where '
         + 'CIAID=' + '''' + xxCia + '''' + ' and '
         + 'NOTACOB=' + '''' + xxNoD + '''';
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);

      xSQL := 'Delete from CXC304 Where '
         + 'CIAID=' + '''' + xxCia + '''' + ' and '
         + 'TCANJEID=' + '''' + 'CO' + '''' + ' and '
         + 'CCCANJE=' + '''' + xxNoD + '''';

      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);

      GNCobra.RefreshFilter;
      Showmessage(' Registro Eliminado ');
   End;
End;

Procedure TFRegistros.NotaCobEdita(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   If Not TieneAcceso(GNCobra) Then Exit;

   DMCXC.wModo := 'M';
   FNotaCob := TFNotaCob.Create(Application);
   FNotaCob.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.NotaCobInicializa;
Begin
   DMCXC.cdsTMon.Filter := '';
   DMCXC.cdsTMon.Filter := 'TMon_Loc=''L'' or TMon_Loc=''E''';
   DMCXC.cdsTMon.Filtered := True;

   DMCXC.cdsMovCxC2.IndexFieldNames := 'CIAID;TDIARID;CCANOMES;CCNOREG';
   FiltraCds(DMCXC.cdsCpto, 'Select * from CXC201 Where OPCMENU=''C''');
End;

Procedure TFRegistros.NotaCobInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.wModo := 'A';

   FNotaCob := TFNotaCob.Create(Application);
   FNotaCob.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
   FVariables.ConfiguraForma(Screen.ActiveForm);
End;

Procedure TFRegistros.PGridShow(Sender: TObject);
Var
   i: Integer;
   MGrid: TMant;
Begin
   MGrid := TMant(Sender);
   For i := 0 To MGrid.FMant.ComponentCount - 1 Do
   Begin
      If MGrid.FMant.Components[i].ClassName = 'TPanel' Then
         TPanel(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para botones
      If MGrid.FMant.Components[i].ClassName = 'TButton' Then
         TButton(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para bitbuttons
      If MGrid.FMant.Components[i].ClassName = 'TBitBtn' Then
         TBitBtn(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para speedbuttons
      If MGrid.FMant.Components[i].ClassName = 'TSpeedButton' Then
         TSpeedButton(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // Boton de Grid
      If MGrid.FMant.Components[i].ClassName = 'TwwIButton' Then
         TwwIButton(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para la forma
      MGrid.FMant.onMouseMove := MueveMouse;
   End;
   DMCXC.AccesosUsuariosR(DMCXC.wModulo, DMCXC.wUsuario, '2', MGrid.FMant);
End;

Procedure TFRegistros.PLBCCreate(Sender: TObject);
Begin

End;

Procedure TFRegistros.PLBCDelete(Sender: TObject; MantFields: TFields);
Begin
   If DMCXC.wAdmin <> 'G' Then
//   If DMCXC.wUsuario<>'AAA' then
      Raise exception.create('No tiene Autorización para Eliminar el Registro');
End;

Procedure TFRegistros.PLBCEdit(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   DMCXC.wModo := 'M';
   DMCXC.cdsPLNBCO.Data := Mantc.FMant.cds2.Data;
   DMCXC.cdsPLNBCO.GotoCurrent(Mantc.FMant.cds2);

   Application.CreateForm(TFPNLBCO, FPNLBCO);

   FPNLBCO.dblcCIA.Enabled := False;
   FPNLBCO.dblcBCO.Enabled := False;
   FPNLBCO.dblcCCB.Enabled := False;
   FPNLBCO.bbtnDPLN.Enabled := True;
   FPNLBCO.dbgFDetPlan.Enabled := True;

// CXC221 FPNLBCO Formato de Actualización de Planilla de Bancos
   FPNLBCO.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
   FVariables.ConfiguraForma(Screen.ActiveForm);
End;

Procedure TFRegistros.PLBCInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   DMCXC.cdsDPLNBCO.Close;
   DMCXC.cdsDPLNBCO.MasterSource := DMCXC.dsPLNBCO;
   DMCXC.cdsDPLNBCO.MasterFields := 'CIAID;PLBCID;BANCOID;CCBCOID';
   DMCXC.cdsDPLNBCO.IndexFieldNames := 'CIAID;PLBCID;BANCOID;CCBCOID;DPLBCID';
   DMCXC.cdsDPLNBCO.Open;
   DMCXC.cdsPLNBCO.Insert;
   DMCXC.wModo := 'A';
   Application.CreateForm(TFPNLBCO, FPNLBCO);
   With FPNLBCO Do
   Begin
      dblcCIA.Enabled := True;
      dblcBCO.Enabled := True;
      dblcCCB.Enabled := True;
   End;
// CXC221 FPNLBCO Formato de Actualización de Planilla de Bancos
   FPNLBCO.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
   FVariables.ConfiguraForma(Screen.ActiveForm);
End;

Procedure TFRegistros.PLBCShow(Sender: TObject);
Begin

End;

Procedure TFRegistros.PropGrid(Const aGrid: Array Of TwwDBGrid);
Begin

End;

Procedure TFRegistros.ProvisionDelete(Sender: TObject;
   MantFields: TFields);
Var
   xSQL, xxCia, xxTDi, xxPer, xxNRe: String;
Begin
   If GProvision.FMant.cds2.RecordCount = 0 Then Exit;

   If DMCXC.wAdmin <> 'G' Then
//   If DMCXC.wUsuario<>'AAA' then
      If Not ((MantFields.FieldByName('CCESTADO').AsString = 'I') Or
         (Length(MantFields.FieldByName('CCESTADO').AsString) = 0)) Then
         Raise exception.Create('Registro No Se Puede Eliminar');

   xxCia := MantFields.FieldByName('CIAID').AsString;
   xxTDi := MantFields.FieldByName('TDIARID').AsString;
   xxPer := MantFields.FieldByName('CCANOMES').AsString;
   xxNRe := MantFields.FieldByName('CCNOREG').AsString;

   If MessageDlg('¿  Eliminar Registro  ? ' + chr(13) + chr(13)
      + 'Compañía =' + '''' + xxCia + '''' + chr(13)
      + 'Tipo Diario=' + '''' + xxTDi + '''' + chr(13)
      + 'Periodo     =' + '''' + xxPer + '''' + chr(13)
      + 'Registro    =' + '''' + xxNRe + '''',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      If MantFields.FieldByName('CCESTADO').AsString = 'P' Then
         DMCXC.SaldosAuxiliar(xxCia, xxPer,
            MantFields.FieldByName('CLAUXID').AsString,
            MantFields.FieldByName('CLIEID').AsString, '-',
            MantFields.FieldByName('CCMTOLOC').Value,
            MantFields.FieldByName('CCMTOEXT').Value,
            MantFields.FieldByName('TMONID').Value);

      xSQL := 'Delete from CXC301 Where '
         + 'CIAID=' + '''' + xxCia + '''' + ' and '
         + 'TDIARID=' + '''' + xxTDi + '''' + ' and '
         + 'CCANOMES=' + '''' + xxPer + '''' + ' and '
         + 'CCNOREG=' + '''' + xxNRe + '''';
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);

      xSQL := 'Delete from CXC302 Where '
         + 'CIAID=' + '''' + xxCia + '''' + ' and '
         + 'TDIARID=' + '''' + xxTDi + '''' + ' and '
         + 'CCANOMES=' + '''' + xxPer + '''' + ' and '
         + 'CCNOREG=' + '''' + xxNRe + '''';
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);

      DMCXC.ActualizaFiltro(GProvision, DMCXC.cdsMovCxC, 'E');
      Showmessage(' Registro Eliminado ');
   End;
End;

Procedure TFRegistros.ProvisionEdita(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   If Not TieneAcceso(GProvision) Then Exit;

   xSQL := ' SELECT * FROM CXC301 WHERE ' +
      ' CIAID=' + QuotedStr(MantFields.FieldByName('CIAID').AsString) +
      ' AND DOCID=' + QuotedStr(MantFields.FieldByName('DOCID').AsString) +
      ' AND CCSERIE=' + QuotedStr(MantFields.FieldByName('CCSERIE').AsString) +
      ' AND CCNODOC=' + QuotedStr(MantFields.FieldByName('CCNODOC').AsString);
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

   FEmiDoc := TFEmiDoc.create(Application);
   FProvision := TFProvision.Create(Application);
   FProvision.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.ProvisionInicializa;
Begin
   // Tipo de Moneda debe ser L o E
   DMCXC.cdsTMon.Filter := '';
   DMCXC.cdsTMon.Filter := 'TMon_Loc=''L'' or TMon_Loc=''E''';
   DMCXC.cdsTMon.Filtered := True;

//   Filtracds( DMCXC.cdsClie,  'Select * from TGE204' );
   FiltraCds(DMCXC.cdsCpto, 'Select * from CXC201 Where OPCMENU=''P''');
End;

Procedure TFRegistros.ProvisionInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;

   xSQL := ' SELECT * FROM CXC301 WHERE 1<>1';
   DMCXC.cdsMovCxC.Close;
   DMCXC.cdsMovCxC.DataRequest(xSQL);
   DMCXC.cdsMovCxC.Open;

   DMCXC.wModo := 'A';
   FEmiDoc := TFEmiDoc.create(Application);
   FProvision := TFProvision.Create(Application);
   FProvision.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.RenovaLetrasEdita(Sender: TObject;
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
   DMCXC.wModo := 'M';
   If Not TieneAcceso(GLetras) Then Exit;

   FRenovaLetras := TFRenovaLetras.Create(Application);
   FRenovaLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.RenovaLetrasInsert(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   DMCXC.wModo := 'A';

   FRenovaLetras := TFRenovaLetras.Create(Application);
   FRenovaLetras.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Function TFRegistros.TieneAcceso(xxTMant: TMant): Boolean;
Begin
   Result := False;
   If (Not xxTMant.FMant.Z2bbtnConsulta.Enabled) And
      (Not xxTMant.FMant.Z2bbtnModifica.Enabled) Then Exit;

   If xxTMant.FMant.Z2bbtnModifica.Enabled Then
      DMCXC.wModo := 'M'
   Else
   Begin
      DMCXC.wModo := 'C';
   End;
   If xxTMant.FMant.cds2.Recordcount = 0 Then Exit;
   Result := True;
End;

Procedure TFRegistros.UbiSitCreate(Sender: TObject);
Var
   pg: TPageControl;
   pl: TPanel;
Begin
   If DMCXC.wAdmin = 'G' Then
   Begin
      DMCXC.wObjetoDesPr := Caption;
      FRegistros.ListaComponentes(FToolLetras); // CXC777 FToolLetras   - Tool de Letras
   End;

   DMCXC.AccesosUsuarios(DMCXC.wModulo, DMCXC.wUsuario, '2', wTool);

   pg := FToolLetras.pgGLt;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.Height := pg.Height + 5;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;

   TMant(Sender).FMant.pnlBtns.Visible := True;

End;

Procedure TFRegistros.UbiSitEdit(Sender: TObject; MantFields: TFields);
Begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   If FVariables.w_CC_Registro Then
   Begin
      ShowMessage('Opcion de Registro se encuentra en USO');
      Exit;
   End;
   Filtracds(DMCXC.cdsLetras, 'Select * from CXC301 '
      + 'Where CIAID=''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + ''' and '
      + 'DOCID=''' + DMCXC.cdsMovCxC.FieldByName('DOCID').AsString + ''' and '
      + 'CCNODOC=''' + DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString + '''');
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      Filtracds(DMCXC.cdsHLetras, 'Select HIS.*, '
         + 'SIT.SITUADES AS SITUA, UBI.UBICADES AS UBICA '
         + 'From CXC402 HIS '
         + 'Left join CXC104 SIT on (SIT.SITUAID=HIS.SITID) '
         + 'Left join CXC105 UBI on (UBI.UBICAID=HIS.UBIID) '
         + 'Where CIAID=''' + DMCXC.cdsMovCxC.FieldByName('CIAID').AsString + ''' and '
         + 'DOCID=''' + DMCXC.cdsMovCxC.FieldByName('DOCID').AsString + ''' and '
         + 'CCNODOC=''' + DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString + ''' ORDER BY CCHIST DESC ');
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         Filtracds(DMCXC.cdsHLetras, 'Select HIS.*, '
            + 'SIT.SITUADES SITUA, UBI.UBICADES UBICA '
            + 'From CXC402 HIS, CXC104 SIT, CXC105 UBI '
            + 'Where CIAID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CIAID').AsString) + ' and '
            + 'DOCID=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('DOCID').AsString) + ' and '
            + 'CCNODOC=' + QuotedStr(DMCXC.cdsMovCxC.FieldByName('CCNODOC').AsString)
            + ' AND HIS.SITID=SIT.SITUAID '
            + ' AND HIS.UBIID=UBI.UBICAID ORDER BY CCHIST DESC ');

      End;

   FLetraHist := TFLetraHist.Create(Self);
   FLetraHist.ActiveMDIChild;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas + 1;
   FVariables.w_CC_Registro := True;
End;

Procedure TFRegistros.MaesClieCierra(Sender: TObject);
Begin
   DMCXC.cdsClAux.Filter := '';
   DMCXC.cdsClAux.Filtered := False;
   DMCXC.cdsTMon.Filter := '';
   DMCXC.cdsTMon.Filtered := False;
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   MantC := Nil;
End;

Procedure TFRegistros.ProvisionCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GProvision := Nil;
End;

Procedure TFRegistros.NCreditoCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GNCredito := Nil;
End;

Procedure TFRegistros.AnticipoCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GAnticipo := Nil;
End;

Procedure TFRegistros.NCreditoAplicaCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GNCredito := Nil;
End;

Procedure TFRegistros.ContabAplicaCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GLetras := Nil;
End;

Procedure TFRegistros.LetrasCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GLetras := Nil;
End;

Procedure TFRegistros.RenovaLetrasCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GLetras := Nil;
End;

Procedure TFRegistros.UbiSitCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   MantC := Nil;
End;

Procedure TFRegistros.NLetraSCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   NLetras := Nil;
End;

Procedure TFRegistros.ContabLetrasCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GLetras := Nil;
End;

Procedure TFRegistros.PLBCCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   MantC := Nil;
End;

Procedure TFRegistros.NotaCobCierra(Sender: TObject);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   GNCobra := Nil;
End;
//INICIO HPC_201203_CXC

Procedure ImportarRVChess;
Begin
   If DMCXC = Nil Then Exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   Try
      FImportarRVChess := TFImportarRVChess.Create(Application); // CXC241
      FImportarRVChess.ShowModal;
   Finally
      FImportarRVChess.Free;
   End;
End;

//FIN HPC_201203_CXC

Procedure CCVerificaVersion;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   FRegistros := TFRegistros.Create(Application);
   If DMCXC.fg_VerificaVersion(FRegistros.lblVersion.Caption) = False Then
   Begin
      ShowMessage('Su Sistema no está actualizado.' + #13 + 'Comuníquese con Soporte Técnico');
      Application.Terminate;
      Exit;
   End;
End;

// Inicio HPC_201801_CXC
// Evento de Selección de Cliente en búsqueda (doble click)
procedure TFRegistros.OnEditBuscaCli(Sender: TObject; MantFields: TFields);
begin
   If Not DMCXC.DCOM1.Connected Then Exit;
   Screen.Cursor := crHourGlass;
   If FRegistros.xTipoProv = 'P' Then
   Begin
      FProvision.dblcClAux.Text := MantFields.FieldByName('CLAUXID').AsString;
      FProvision.dblcdClie.Text := MantFields.FieldByName('CLIEID').AsString;
      FProvision.dblcdClieRuc.Text := MantFields.FieldByName('NUMDOCID').AsString;
      FProvision.edtClie.Text := MantFields.FieldByName('CLIEDES').AsString;

      DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString := FProvision.dblcClAux.Text;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := FProvision.dblcdClie.Text;
      DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := FProvision.dblcdClieRuc.Text;

      TMant(Sender).FMant.Close;
      If length(FProvision.edtClie.Text)>0 then
         FProvision.dblcTMon.SetFocus
      Else
         FProvision.dblcdClieEnter(Self);
   End;
   If FRegistros.xTipoProv = 'N' Then
   Begin
      FNotasDC.dblcClAux.Text := MantFields.FieldByName('CLAUXID').AsString;
      FNotasDC.dblcdClie.Text := MantFields.FieldByName('CLIEID').AsString;
      FNotasDC.dblcdClieRuc.Text := MantFields.FieldByName('NUMDOCID').AsString;
      FNotasDC.edtClie.Text := MantFields.FieldByName('CLIEDES').AsString;

      DMCXC.cdsMovCxC.FieldByName('CLAUXID').AsString := FNotasDC.dblcClAux.Text;
      DMCXC.cdsMovCxC.FieldByName('CLIEID').AsString := FNotasDC.dblcdClie.Text;
      DMCXC.cdsMovCxC.FieldByName('CLIERUC').AsString := FNotasDC.dblcdClieRuc.Text;

      TMant(Sender).FMant.Close;
      If length(FNotasDC.edtClie.Text)>0 then
         FNotasDC.dblcTMon.SetFocus
      Else
         FNotasDC.dblcdClieEnter(Self);
   End;

   Screen.Cursor := crDefault;
end;
// Fin HPC_201801_CXC

// Inicio HPC_201801_CXC
// Tool de Busqueda de Cliente
procedure TFRegistros.ToolBuscaCliCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FToolBuscaCli.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   TMant(Sender).FMant.pnlBtns.Visible := True;
end;
// Fin HPC_201801_CXC

// Inicio HPC_201801_CXC
// Filtro OASIS del Maestro de Clientes
procedure TFRegistros.BuscaMaeClientes;
begin
   FRegistros.MtxBuscaCli := TMant.Create(Application);
   FToolBuscaCli := TFToolBuscaCli.Create(Application);

   xSQL := 'Select TGE204.* '
      + '     from TGE204 '
      + '    where 1<>1';
//   FIngresoCaja.MtxBuscaCli.FMant.wTabla := 'TGE204';

   Try
      FRegistros.MtxBuscaCli.User := DMCXC.wUsuario;
      FRegistros.MtxBuscaCli.Admin := DMCXC.wAdmin;
      FRegistros.MtxBuscaCli.Module := DMCXC.wModulo;
      FRegistros.MtxBuscaCli.DComC := DMCXC.DCOM1;
      FRegistros.MtxBuscaCli.OnCreateMant := FRegistros.ToolBuscaCliCreate;
      FRegistros.MtxBuscaCli.TableName := 'TGE204';
      FRegistros.MtxBuscaCli.ClientDataSet := DMCXC.cdsClie;
      FRegistros.MtxBuscaCli.Filter := '';
      FRegistros.MtxBuscaCli.Titulo := 'Maestro de Clientes';
      FRegistros.MtxBuscaCli.OnInsert := Nil;
      FRegistros.MtxBuscaCli.OnEdit := FRegistros.OnEditBuscaCli;
      FRegistros.MtxBuscaCli.OnDelete := Nil;
      FRegistros.MtxBuscaCli.OnShow := Nil;
      FRegistros.MtxBuscaCli.SectionName := 'BuscaCli';
      FRegistros.MtxBuscaCli.FileNameIni := '\oaCaja.ini';
      FRegistros.MtxBuscaCli.UsuarioSQL.Add(xSQL);
      FRegistros.MtxBuscaCli.Execute;
   Finally
   End;
end;
// Fin HPC_201801_CXC

End.

