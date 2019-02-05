Unit CxCDM;
// INICIO USO DE ESTANDARES : 01/08/2011
// UNIDAD                   : CxCDM
// FORMULARIO               : DMCXC
// FECHA DE CREACION        :
// AUTOR                    : EQUIPO DE DESARROLLO
// OBJETIVO                 : El módulo de datos contiene los ClientaDataSet y los
//                            DataSource que se usa en el módulo para interactuar

// Actualizaciones:
// HPC_201204_CXC 28/08/2012  Implementación del control de versiones
// HPC_201302_CXC 18/04/2013  Se añadieron nuevos Cds: cdsRegVentasPle y cdsTCliente para mantenimiento de datos del Cliente
// HPC_201601_CXC 15/01/2016  Se crea variable xSigueGrab para Grabación con Control Transaccional
//                15/01/2016  Se modifica rutina que entrega último nro de registro (UltimoRegistro)
//                            busca nro sugerido en CXC301 y si ya existe recalcula en base a maximo nro de registro
//                            DAF_2016000019 Se define la variable wTMonLocDes para descripción de la Moneda Local
//                            DAF_2016000019 Se define la variable wTMonExtDes para descripción de la Moneda Extranjera

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Wwdatsrc, DBClient, wwclient, MConnect, ExtCtrls,
   ComCtrls, RecError, Variants, oaContabiliza, IniFiles, Mant, winsock,
   SConnect;

Type
   TDMCXC = Class(TDataModule)
      cdsCobranza: TwwClientDataSet;
      cdsDetCanje: TwwClientDataSet;
      dsCobranza: TwwDataSource;
      dsCanjes: TwwDataSource;
      dsDetCanje: TwwDataSource;
      cdsCia: TwwClientDataSet;
      cdsClAux: TwwClientDataSet;
      cdsTMon: TwwClientDataSet;
      cdsTDiario: TwwClientDataSet;
      cdsBanco: TwwClientDataSet;
      cdsCCBco: TwwClientDataSet;
      cdsTDoc: TwwClientDataSet;
      dsCia: TwwDataSource;
      dsClAux: TwwDataSource;
      dsTMon: TwwDataSource;
      dsTDiario: TwwDataSource;
      dsBanco: TwwDataSource;
      dsCCBco: TwwDataSource;
      dsTDoc: TwwDataSource;
      cdsTipReg: TwwClientDataSet;
      dsTipReg: TwwDataSource;
      cdsClie: TwwClientDataSet;
      dsClie: TwwDataSource;
      cdsQry: TwwClientDataSet;
      cdsQry2: TwwClientDataSet;
      cdsCpto: TwwClientDataSet;
      dsCpto: TwwDataSource;
      cdsDetCxC2: TwwClientDataSet;
      dsDetCxC2: TwwDataSource;
      cdsMovCxC2: TwwClientDataSet;
      dsMovCxC2: TwwDataSource;
      cdsHLetras: TwwClientDataSet;
      dsHLetras: TwwDataSource;
      cdsUbica: TwwClientDataSet;
      cdsSitua: TwwClientDataSet;
      dsUbica: TwwDataSource;
      dsSitua: TwwDataSource;
      cdsUsuarios: TwwClientDataSet;
      cdsMGrupo: TwwClientDataSet;
      cdsGrupos: TwwClientDataSet;
      cdsAcceso: TwwClientDataSet;
      dsUsuarios: TwwDataSource;
      dsMGrupo: TwwDataSource;
      dsGrupos: TwwDataSource;
      dsAcceso: TwwDataSource;
      cdsSerie: TwwClientDataSet;
      cdsCComer: TwwClientDataSet;
      cdsModelo: TwwClientDataSet;
      cdsVende: TwwClientDataSet;
      dsSerie: TwwDataSource;
      dsCComer: TwwDataSource;
      dsModelo: TwwDataSource;
      dsVende: TwwDataSource;
      dsMovCNT1: TwwDataSource;
      cdsMovCNT1: TwwClientDataSet;
      cdsCCosto: TwwClientDataSet;
      dsCCosto: TwwDataSource;
      cdsNivel: TwwClientDataSet;
      dsNivel: TwwDataSource;
      cdsSecEco: TwwClientDataSet;
      dsSecEco: TwwDataSource;
      cdsPais: TwwClientDataSet;
      cdsDpto: TwwClientDataSet;
      dsPais: TwwDataSource;
      dsDpto: TwwDataSource;
      cdsProvinc: TwwClientDataSet;
      dsProvinc: TwwDataSource;
      cdsDistrito: TwwClientDataSet;
      dsDistrito: TwwDataSource;
      cdsMiemEmpre: TwwClientDataSet;
      dsMiemEmpre: TwwDataSource;
      cdsCargos: TwwClientDataSet;
      dsCargos: TwwDataSource;
      cdsBienes: TwwClientDataSet;
      dsBienes: TwwDataSource;
      cdsTipBien: TwwClientDataSet;
      dsTipBien: TwwDataSource;
      cdsQry3: TwwClientDataSet;
      dsQry2: TwwDataSource;
      dsQry: TwwDataSource;
      dsQry3: TwwDataSource;
      cdsWMC: TwwClientDataSet;
      cdsCDSLookUp: TwwClientDataSet;
      cdsRec: TwwClientDataSet;
      cdsGrab: TwwClientDataSet;
      dsDetCxC: TwwDataSource;
      dsMovCxC: TwwDataSource;
      cdsLetras: TwwClientDataSet;
      dsLetras: TwwDataSource;
      cdsCCanje: TwwClientDataSet;
      dsCCanje: TwwDataSource;
      cdsDoc: TwwClientDataSet;
      dsDoc: TwwDataSource;
      cdsQry4: TwwClientDataSet;
      dsQry4: TwwDataSource;
      cdsCanjes: TwwClientDataSet;
      cdsDetCxC: TwwClientDataSet;
      cdsQry5: TwwClientDataSet;
      dsQry5: TwwDataSource;
      cdsBCOCCB: TwwClientDataSet;
      dsBCOCCB: TwwDataSource;
      cdsBCOCCBG: TwwClientDataSet;
      dsBCOCCBG: TwwDataSource;
      cdsPLNBCO: TwwClientDataSet;
      dsPLNBCO: TwwDataSource;
      cdsDPLNBCO: TwwClientDataSet;
      dsDPLNBCO: TwwDataSource;
      cdsTOPERBCO: TwwClientDataSet;
      dsTOPERBCO: TwwDataSource;
      cdsPresup: TwwClientDataSet;
      dsPresup: TwwDataSource;
      cdsQry6: TwwClientDataSet;
      dsQry6: TwwDataSource;
      cdsTipPer: TwwClientDataSet;
      cdsGiro: TwwClientDataSet;
      dsTipPer: TwwDataSource;
      dsGiro: TwwDataSource;
      cdsCIUU: TwwClientDataSet;
      dsCIUU: TwwDataSource;
      cdsClasif: TwwClientDataSet;
      dsClasif: TwwDataSource;
      cdsVinculo: TwwClientDataSet;
      dsVinculo: TwwDataSource;
      cdsCondP: TwwClientDataSet;
      dsCondP: TwwDataSource;
      cdsDPag: TwwClientDataSet;
      dsDPag: TwwDataSource;
      cdsFPago: TwwClientDataSet;
      dsFPago: TwwDataSource;
      cdsBQry: TwwClientDataSet;
      cdsMovCxC: TwwClientDataSet;
      cdsReporte: TwwClientDataSet;
      dsReporte: TwwDataSource;
      cdsTipPres: TwwClientDataSet;
      dsTipPres: TwwDataSource;
      cdsParPres: TwwClientDataSet;
      dsParPres: TwwDataSource;
      cdsNivelPresu: TwwClientDataSet;
      dsNivelPresu: TwwDataSource;
      cdsDetallePres: TwwClientDataSet;
      dsDetallePres: TwwDataSource;
      dsSQL: TwwDataSource;
      cdsSQL: TwwClientDataSet;
      cdsUltTGE: TwwClientDataSet;
      dsUltTGE: TwwDataSource;
      cdsCptoCab: TwwClientDataSet;
      cdsEmiDoc1: TwwClientDataSet;
      dsEmiDoc1: TwwDataSource;
      cdsNLetras: TwwClientDataSet;
      dsNLetras: TwwDataSource;
      cdsZona: TwwClientDataSet;
      dsZona: TwwDataSource;
      dsPlanCta: TwwDataSource;
      cdsPlanCta: TwwClientDataSet;
      dsDebeHabe: TwwDataSource;
      cdsDebeHabe: TwwClientDataSet;
      dsDLiqCob: TwwDataSource;
      dsCLiqCob: TwwDataSource;
      cdsDLiqCob: TwwClientDataSet;
      cdsCLiqCob: TwwClientDataSet;
      wwDataSource1: TwwDataSource;
      cdsCobrador: TwwClientDataSet;
      cdsCLiqCob1: TwwClientDataSet;
      dsCLiqCob1: TwwDataSource;
      dsDLiqCob1: TwwDataSource;
      cdsDLiqCob1: TwwClientDataSet;
      dsQry7: TwwDataSource;
      cdsQry7: TwwClientDataSet;
      cdsDetPagoLiq: TwwClientDataSet;
      dsDetPagoLiq: TwwDataSource;
      cdsResultSet: TwwClientDataSet;
      cdsDeltaSet: TwwClientDataSet;
      dsDeltaSet: TwwDataSource;
      cdsDHojaT: TwwClientDataSet;
      dsDHojaT: TwwDataSource;
      dsMovFac: TwwDataSource;
      cdsMovFac: TwwClientDataSet;
      dsDetFac: TwwDataSource;
      cdsDetFac: TwwClientDataSet;
      dsHojaT: TwwDataSource;
      cdsHojaT: TwwClientDataSet;
      cdsSolu: TwwClientDataSet;
      dsSolu: TwwDataSource;
      cdsTReg: TwwClientDataSet;
      cdsDscto: TwwClientDataSet;
      dsDscto: TwwDataSource;
      cdsQry8: TwwClientDataSet;
      cdsQry9: TwwClientDataSet;
      cdsQry10: TwwClientDataSet;
      cdsQry11: TwwClientDataSet;
      cdsQry12: TwwClientDataSet;
      cdsQry13: TwwClientDataSet;
      dsQry8: TwwDataSource;
      dsQry9: TwwDataSource;
      dsQry10: TwwDataSource;
      dsQry11: TwwDataSource;
      dsQry12: TwwDataSource;
      dsQry13: TwwDataSource;
      cdsQry1: TwwClientDataSet;
      dsQry1: TwwDataSource;
      cdsFact: TwwClientDataSet;
      dsFact: TwwDataSource;
      cdsDetFact: TwwClientDataSet;
      dsDetFact: TwwDataSource;
      cdsZona1: TwwClientDataSet;
      dsZona1: TwwDataSource;
      cdsMovCxCClone: TwwClientDataSet;
      cdsDLiqCobClone: TwwClientDataSet;
      cdsHistorialSolucion: TwwClientDataSet;
      dsHistorialSolucion: TwwDataSource;
      cdsTLista: TwwClientDataSet;
      dsTLista: TwwDataSource;
      cdsLineaCredito: TwwClientDataSet;
      dsLineaCredito: TwwDataSource;
      cdsDireccion: TClientDataSet;
      dsDireccion: TwwDataSource;
      cdsMovCxC2Clone: TwwClientDataSet;
      cdsCanjesClone: TwwClientDataSet;
      cdsCxC: TwwClientDataSet;
      dsCxC: TwwDataSource;
      dsMovCNT: TwwDataSource;
      cdsMovCNT: TwwClientDataSet;
      cdsSitClie: TwwClientDataSet;
      dsSitClie: TwwDataSource;
      cdsCierre: TwwClientDataSet;
      dsCierre: TwwDataSource;
      cdsCanje: TwwClientDataSet;
      dsCanje: TwwDataSource;
      cdsDocCobranza: TwwClientDataSet;
      dsDocCobranza: TwwDataSource;
      dsQry15: TwwDataSource;
      cdsQry15: TwwClientDataSet;
      dsQry14: TwwDataSource;
      cdsQry14: TwwClientDataSet;
      dsClieComent: TwwDataSource;
      cdsClieComent: TwwClientDataSet;
      dsGrupo: TwwDataSource;
      cdsGrupo: TwwClientDataSet;
      cdsFechaHora: TwwClientDataSet;
      cdsPlantilla: TwwClientDataSet;
      dsOrigenDestino: TwwDataSource;
      cdsOrigenDestino: TwwClientDataSet;
      cdsRelacion: TwwClientDataSet;
      dsRelacion: TwwDataSource;
      dsDinaDocs: TwwDataSource;
      cdsDinaDocs: TwwClientDataSet;
      cdsSN: TwwClientDataSet;
      dsSN: TwwDataSource;
      cdsCpto1: TwwClientDataSet;
      dsCpto1: TwwDataSource;
      cdsUser: TwwClientDataSet;
      dsUser: TwwDataSource;
      DCOM1: TSocketConnection;
      cdsTDocSunat: TwwClientDataSet;
      dsTDocSunat: TwwDataSource;
 // Inicio HPC_201302_CXC
      cdsRegVentasPle: TwwClientDataSet;
      dsRegVentasPle: TwwDataSource;
      cdsTCliente: TwwClientDataSet;
      dsTCliente: TwwDataSource;
      cdsValidaFacturacion: TwwClientDataSet;
      dsValidaFacturacion: TwwDataSource;
      cdsValidaProvision: TwwClientDataSet;
      dsValidaProvision: TwwDataSource;
      cdsValidaContabilizacion: TwwClientDataSet;
      dsValidaContabilizacion: TwwDataSource;
      cdsValidaAsiento: TwwClientDataSet;
      dsValidaAsiento: TwwDataSource;
 // Fin HPC_201302_CXC

      Procedure cdsTMonAfterOpen(DataSet: TDataSet);
      Procedure cdsCanjesCCMTOLOCChange(Sender: TField);
      Procedure cdsCanjesCCMTOEXTChange(Sender: TField);
      Procedure DataModuleCreate(Sender: TObject);
      Procedure ReconcileError(DataSet: TCustomClientDataSet;
         E: EReconcileError; UpdateKind: TUpdateKind;
         Var Action: TReconcileAction);
      Procedure cdsMovCxCReconcileError(DataSet: TCustomClientDataSet;
         E: EReconcileError; UpdateKind: TUpdateKind;
         Var Action: TReconcileAction);
      Procedure cdsDocCobranzaReconcileError(DataSet: TCustomClientDataSet;
         E: EReconcileError; UpdateKind: TUpdateKind;
         Var Action: TReconcileAction);
      Procedure cdsDetCanjeReconcileError(DataSet: TCustomClientDataSet;
         E: EReconcileError; UpdateKind: TUpdateKind;
         Var Action: TReconcileAction);
      Procedure cdsClieComentReconcileError(DataSet: TCustomClientDataSet;
         E: EReconcileError; UpdateKind: TUpdateKind;
         Var Action: TReconcileAction);
   Private
    { Private declarations }
      wDBFunc01, wDBFunc02: String;
   Public
    { Public declarations }

      cFilterCiaUser: String;
      cFilterOrigenUser: String;
      cFilterCuentaUser: String;
      cFilterUsuarioUser: String;
      cFilterUsuarioUserOrd: String;
      cFilterUsuarioUserDet: String;

      cIP, wOfiId, widepc, ideconex, fechorcon: String;

      sClose, wSRV: String;
      wSaldosAuxiliar: Boolean;
      wSetHys: Boolean;
      wAnchoGuia: integer;
      wVRN_TipoCambio: String;
      wVRN_VtaPed: String;
      wsCanCar,
         wsFeFe,
         wsFChe,
         wsChe,
         wsFNDep,
         wsCon,
         wsAnt,
         wsLet,
         wsOfi,
         wsMen,
         wsFac,
         wsBol,
         wsCob,
         wsNDe,
         wsNCre, wsNCreS,
         wsClie,
         wModo: String;
      bSector, bZona: boolean;
      wdIGV: double;

      // Accesos al Sistema
      wUsuario: String;
      wObjetoDescr: String;
      wObjetoForma: String;
      wObjetoNombr: String;
      wObjetoDesPr: String;
      wModulo: String;
      wGrupo: String;
      wGrupoTmp: String;
      wAdmin: String;
      wComponente: TControl;
      wAreaSolu: String;
      // Fin Accesos al Sistema

      wTMonExt: String; // Tipo de Moneda extranjera oficial (normalmente dólares)
      wTMonLoc: String;
   // Inicio HPC_201601_CXC
   // variables para Descripción de Monedas
      wTMonLocDes: String;
      wTMonExtDes: String;
   // Fin HPC_201601_CXC
      xFlagCal: Boolean;
      wDifAjuG: String; // Cuenta de Ganancia x Dif.Cambio
      wDifAjuP: String; // Cuenta de Pérdida x Dif.Cambio
      wCptoAjG: String;
      wCptoAjP: String;
      //WMC
      wIdLetras: String;
      wAnoHoy,
         wMesHoy,
         wDiaHoy: Word;
      //FIN DE WMC
      //CIM////////////////12/06/2001
      SRV_E, SRV_D, SRV_V, xSRV_RUTA: String;
      wFormatTime, wFormatFecha, wReplacCeros, wLima, wProv,
         wRepFecServi, wRepTimeServi, wRepFuncDate: String;
      wAnchoPu, wAnchoProv: String;
      /////// CIM 20/10/2001
      wRptCia: String;
      //////////////

      wTipoAdicion: String; // 'xFiltro' = adicion a través del Filtro, 'Directo' = adición directa

      Function DesEncripta(wPalabra: String): String;
      Function Encripta(wPalabra: String): String;
      Function BuscaQry(wPrv, wTabla, wCampos, wWhere, wResult: String): String;
      Function BuscaQry2(wPrv, wTabla, wCampos, wWhere, wResult: String): String;
      Procedure AbreCierraCDS(xxCds: Array Of TwwClientDataSet; xxNom: Array Of String; xBool: Boolean);
      Function UltimoRegistro(xAutoNum, xCia, xTDiario, xAno, xMes: String): String;
      Function GrabaUltimoRegistro(xAutoNum, xCia, xTDiario, xAno, xMes: String; xNumUsu: Integer): String;
      Function ActualizaUltimoRegistro(xAutoNum, xCia, xTDiario, xAno, xMes: String; xNumUsu: Integer): String;    // HPC_201405_CXC
      Function BuscaUltTGE(xPrv, xTabla, xCampo, xWhere: String): String;
      Function BuscaUltNumero(ssCia, ssTD, ssSer: String): String;
      Function BuscaUltNumeroEnMemoria(ClientDataSet: TwwClientDataSet; ssCia, ssTD, ssSer: String): String;
      Function BuscaUltFecha(xPrv, xTabla, xCampo, xWhere: String): TDate;
      Procedure MovCxCDataRequest;
      Procedure SaldosAuxiliar(xxCia, xxAnoMes, xxClAux, xxAux, xxSigno: String;
         xxImpMN, xxImpME: Double; xxtmonid: String);
      Procedure SaldosAuxiliarCLG(xxCia, xxAnoMes, xxClAux, xxAux, xxSigno: String;
         xxImpMN, xxImpME: Double; xxtmonid: String);
      Procedure InsertaSaldosIniciales(xxCia, xxAno: String; xxClauxid: String = ''; xxAuxid: String = '');
      Procedure AccesosUsuarios(xxModulo, xxUsuario, xxTipo, xxForma: String);
      Procedure AccesosUsuariosR(xxModulo, xxUsuario, xxTipo: String; xxForma: TForm);
      Procedure Tranferencia_CXC_a_CNT(xCia, xTDia, xAAMM, xNoComp: String);
      Procedure GeneraContabilidad(xxCia, xxTDiario, xxAnoMM, xxNoComp: String;
         xForma: TForm);
      Procedure GeneraContab(xxCia, xxTDiario, xxAnoMM, xxNoComp: String;
         xForma: TForm; xTipoC: String);
      Procedure GeneraContab320(xxCia, xxTDiario, xxAnoMM, xxNoComp: String;
         xForma: TForm; xTipoC, xLicoid, xCoid: String);

      Procedure GeneraEnLinea401(xxxCia, xxxDiario, xxxAnoMM, xxxNoComp: String);
      Function BuscaObjeto(Const xNombre: String; xForm: TForm): TControl;
      Function Contabiliza(xCia, xTDiario, xAnoMM, xNoComp: String): Boolean;
      Function BuscaCanje(PCia, PTCa, PCje: String): Boolean;
      Function Replicate(xChar: Char; xLongitud: Integer): String;
      Function AddSpaceR(xCadena: String; xLongitud: Integer): String;
      Function AddSpaceL(xCadena: String; xLongitud: Integer): String;
      Procedure AplicaDatos(wCDS: TClientDataSet; wNomArch: String);
      //CIM 12/08/2002
      //procedure RepiteAplicaDatos(wCDS:TClientDataSet; wNomArch:String );

      //CIM 12/08/2002
      //function ControlTran( wControlError : Integer; wCDS: TClientDataSet; wNomArch : String ): boolean;
      Procedure ControlTran(wControlError: Integer; wCDS: TClientDataSet; wNomArch: String);

      Function CuentaExiste(xxxxCia, xxxxAno, xxxxCuenta, xxxxAux,
         xxxxCCos: String): Boolean;
      Procedure ActualizaMov(cCia, cAnoMM, cCuenta, cClAux, cAux, cCCosto, cDH, cMov,
         cCtaDes, cAuxDes, cCCoDes, cNivel: String;
         nImpMN, nImpME: Double);
      Procedure InsertaMov(cCia, cAnoMM, cCuenta, cClAux, cAux, cCCosto, cDH, cMov,
         cCtaDes, cAuxDes, cCCoDes, cNivel: String;
         nImpMN, nImpME: Double);
      Procedure CreaPanel(xForma: TForm; xMensaje: String);
      Procedure PanelMsg(xMensaje: String; xProc: Integer);
      Procedure Transferencia_CXP_a_CNT(xCia, xTDia, xAAMM, xNoComp, xTipoC: String);
      Procedure Transferencia_CXC320_a_CNT(xCia, xTDia, xAAMM, xNoComp, xTipoC, xLicoId, xCoId: String);
      Procedure GrabaAuxConta(wCDST: TClientDataSet);
      Function RecuperaDatos(wTabla, wCampos, wWhere: String): Boolean;
      Function FRound2(xReal: double; xEnteros, xDecimal: Integer): double;
      Function RecuperarDatos(xTabla, xCampos, xWhere: String): Boolean;
      Function GetWhereFromSQL(xSQL: String): String;
      Function MesCerrado(xMes, xAno, xCiaid: String): Boolean;
      Procedure cdsPost(xxCds: TwwClientDataSet);
      Function NombreMes(wwMes: integer): String;
      Function VerificaCierre(xxCia: String; xxFecha: TDateTime): Boolean;
      Function MaxValue(Const sDetail: String; CD: TDataSet): String;
      Function EstaAsignadoaCobrador(xCia, xDoc, xSer, xNoD, xCli: String): boolean;
      Function LaCuentaSeRegistraSoloEnME(xxCia: String; xxCpto: String = ''; xxCuenta: String = ''): boolean;

      // vhn estaban en el VAR
      Procedure UpdCont(Const CIA, TDO, NDO, UBI, SIT, TMO, ZNA: String; FEC: TDate);
      Procedure UpdContPlantillaRenova(Const CIA, TDO, NDO, UBI, SIT, TMO, ZNA: String; FEC: TDate);
      Procedure UpdContPlantilla(Const CIA, TDO, NDO, UBI, SIT, TMO, ZNA: String; FEC: TDate);
      Procedure Ajusta(Const CIA: String; FEC: TDate);
      Procedure GeneraDiferenciaCambioPlantilla(xxDH, xTMonID, xCia, xTDiar, xNoreg, xClauxid, xClieid, xClieRuc, xCanje, xDocID, xSerie, xNodoc: String; xDebe, xHabe, xTcambio: double; xFec, xFE, xFV: TDateTime);
      Function DisplayDescrip(PTable, PDescrip, PKey, PVal: String): String;
      Function DateS(): TDateTime;
      Function TimeS(): TDateTime;
      Function CambioSituacion(sSitAct, sSitNew: String): Boolean;
      Procedure SetHyst(Const CIA, TDO, NDO: String);
      Procedure UpdLET(Const CIA, TDO, NDO, UBI, SIT, CPTO, CTA, CPTOOLD, CTAOLD, ENV, NUM: String; FEC: TDate; BPROT: Boolean; PLA: String; FPLA, FCAN: TDateTime);
      Procedure UndHyst(Const CIA, TDO, NDO: String);
      Procedure UpdUBI(Const CIA, TDO, NDO, UBI: String);
      Procedure UpdSIT(Const CIA, TDO, NDO, SIT: String);
      Function BuscaCxCDoc(PCia, PDoc, PSerie, PNoDoc: String): Boolean;
      Function BuscaCxCLet(PCia, PDoc, PNoDoc: String): Boolean;
      Function BuscaCxCReg(PCia, PTDiario, PAnoMes, PNoReg: String): Boolean;
      Function BuscaDetCxCReg(PCia, PTDiario, PAnoMes, PNoReg: String): Boolean;
      Function BuscaNotaCob(PCia, PNotC: String): Boolean;
      Function BuscaFecha(PTable, PKey: String; PVal: TDateTime): Boolean;
      Function GrabaRegistroLetra(xAutoNum, xCia, xTDiario, xAno, xMes: String; xNumUsu: Integer): String;

      Procedure FiltraTabla(xxCds: TwwClientDataSet; xxArchivo, xxCampo: String; xxWhere: String = '');
      Procedure DisminuyeForma(Sender: TObject);
      Procedure ActualizaFiltro(wwFiltro: TMANT; wwCdsLee: TwwClientDataSet; wwAccion: String);
      Function VerificaPeriodoVentas(sCia: String; dFecha: TDate): Boolean;
      Function ObtenerIpdeNetbios(Host: String): String;
      Function ComputerName: String;
      Function AccesosModulo: Boolean;

      Function FiltraCiaPorUsuario(cdsCiaUser: TwwClientDataSet): String;
      Function FiltraOrigenPorUsuario_Cia(xxArchivo, xxCampo: String): String;
      Function FiltraUsuarioPorUsuario_Cia(xxArchivo, xxCampo: String): String;
      Function fg_VerificaVersion(wgVersion: String): Boolean;
   End;

Var
 //** 20/03/2001 - pjsv, para el procedure FiltraTabla
 // xSQL2   : String;
 //**
   DMCXC: TDMCXC;
   wBD: String;
   pnlConta: TPanel;
   pbConta: TProgressBar;
 //** 20/12/2000 - pjsv - para presupuestos
   wActuaPresu: bool;
   ErrorCount: Integer;
   wTool: String;

// Inicio HPC_201601_CXC
// Variable que define continuidad en Control Transaccional
   xSigueGrab : Boolean;
// Fin HPC_201601_CXC


//	wfErrorCode:word;

 //**
 //** 20/03/2001 - pjsv, xFAcceso = True cuando viene de la Forma De Acceso
 //                      y False cuando viene de cualquier otra forma, más que nada
 //                      para que no salga el error de Acceso Violation al querer
 //                      accesder a pbTablas cuando no ha sido creado
 //**
Procedure Filtracds(xxCds: TwwClientDataSet; xxSQL: String);
Function FRound(xReal: Double; xEnteros, xDecimal: Integer): Double;
Function StrZero(xVar: String; xLargo: integer): String;
Function OperClientDataSet(ClientDataSet: TwwClientDataSet; Expression, Condicion: String): Double;
Function OperClientDataSet1(ClientDataSet: TwwClientDataSet; Expression, Condicion: String): Double;

Function StrNum(wNumero: double): String;
Function strDia(Fecha: TDateTime): String;
Function strMes(Fecha: TDateTime): String;
Function strAno(Fecha: TDateTime): String;
Function CalculaNumero(sCND: String): String;

Var
   wRutaRpt: String;

Implementation

{$R *.DFM}

Uses CXC020;

{$I OPER.PAS}

Function TDMCXC.FiltraUsuarioPorUsuario_Cia(xxArchivo, xxCampo: String): String;
Var
   xFiltro: String;
Begin
   cdsAcceso.Filtered := False;
   cdsAcceso.Filter := '';
   cdsAcceso.Filter := 'NTABLA=' + '''' + xxArchivo + '''';
   cdsAcceso.Filtered := True;

   xFiltro := '';
   cdsAcceso.First;
   While Not cdsAcceso.Eof Do
   Begin
      If cdsAcceso.FieldByName('CIAID').AsString <> '' Then
      Begin
         If Length(xFiltro) = 0 Then
            xFiltro := '(CIAID=''' + cdsAcceso.FieldByName('CIAID').AsString + ''' AND '
               + xxCampo + '=' + '''' + cdsAcceso.FieldByName('CODIGO').AsString + ''')'
         Else
            xFiltro := xFiltro + ' OR '
               + '(CIAID=''' + cdsAcceso.FieldByName('CIAID').AsString + ''' AND '
               + xxCampo + '=' + '''' + cdsAcceso.FieldByName('CODIGO').AsString + ''')';
      End;
      cdsAcceso.Next;
   End;

   If xFiltro <> '' Then
      xFiltro := ' ( ' + xFiltro + ' or (' + cFilterCiaUser + ' and ' + xxCampo + '=''' + wUsuario + ''')' + ' ) '
   Else
      xFiltro := ' ( ' + '(' + cFilterCiaUser + ' and ' + xxCampo + '=''' + wUsuario + ''')' + ' ) ';

   If (wAdmin = 'V') Or (wAdmin = 'P') Or (wAdmin = 'G') Then
      xFiltro := ' ( ' + xxCampo + ' is not NULL ) ';

   Result := xFiltro;
End;

Function TDMCXC.FiltraOrigenPorUsuario_Cia(xxArchivo, xxCampo: String): String;
Var
   xFiltro: String;
   xCiaFil: String;
Begin
   xCiaFil := cFilterCiaUser;

   cdsAcceso.Filtered := False;
   cdsAcceso.Filter := '';
   cdsAcceso.Filter := 'NTABLA=' + '''' + xxArchivo + '''';
   cdsAcceso.Filtered := True;

   xFiltro := '';
   cdsAcceso.First;
   While Not cdsAcceso.Eof Do
   Begin
      If cdsAcceso.FieldByName('CIAID').AsString <> '' Then
      Begin
         If Length(xFiltro) = 0 Then
            xFiltro := '(CIAID=''' + cdsAcceso.FieldByName('CIAID').AsString + ''' AND '
               + xxCampo + '=' + '''' + cdsAcceso.FieldByName('CODIGO').AsString + ''')'
         Else
            xFiltro := xFiltro + ' OR '
               + '(CIAID=''' + cdsAcceso.FieldByName('CIAID').AsString + ''' AND '
               + xxCampo + '=' + '''' + cdsAcceso.FieldByName('CODIGO').AsString + ''')';

         If xCiaFil <> '' Then
         Begin
            xCiaFil := StringReplace(xCiaFil, '''' + cdsAcceso.FieldByName('CIAID').AsString + ''',', '', [rfReplaceAll]);
            xCiaFil := StringReplace(xCiaFil, '''' + cdsAcceso.FieldByName('CIAID').AsString + '''', '', [rfReplaceAll]);
         End;

      End;
      cdsAcceso.Next;
   End;

   If xCiaFil = ' CIAID IN (  ) ' Then
      xCiaFil := ''
   Else
      xCiaFil := ' or ' + xCiaFil;

   If xFiltro <> '' Then
      xFiltro := ' ( ' + xFiltro + xCiaFil + ' ) ';

   Result := xFiltro;
End;

Function TDMCXC.FiltraCiaPorUsuario(cdsCiaUser: TwwClientDataSet): String;
Var
   cFilter: String;
Begin
   cFilter := '';
   cdsCiaUser.First;
   While Not cdsCiaUser.Eof Do
   Begin
      If cFilter = '' Then
         cFilter := ' CIAID IN ( ''' + cdsCiaUser.FieldByName('CIAID').AsString + ''''
      Else
         cFilter := cFilter + ', ''' + cdsCiaUser.FieldByName('CIAID').AsString + '''';

      cdsCiaUser.Next;
   End;

   If cFilter <> '' Then
      cFilter := cFilter + ' ) ';

   Result := cFilter;
End;

Function TDMCXC.VerificaPeriodoVentas(sCia: String; dFecha: TDate): Boolean;
Var
   xSQL: String;
Begin
   Result := False;
  // CONTROL DE FECHAS DE CUENTAS POR COBRAR
   xSQL := 'SELECT * FROM CXC312 '
      + 'WHERE CIAID=' + QuotedStr(sCia)
      + ' AND ''' + DateToStr(dFecha) + '''>=CNSPRICIE and ''' + DateToStr(dFecha) + '''<=CNSULTCIE '
      + 'ORDER BY CNSULTCIE DESC';

   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No Existe Periodo Operativo en Cuentas por Cobrar');
      exit;
   End
   Else
   Begin
      If cdsQry.fieldbyname('ESTVEN').AsString = 'C' Then
      Begin
         ShowMessage('No se puede Registrar Documento con Fecha ' + DateToStr(dFecha) + #13 + #13
            + 'Rango Desde ' + DateToStr(cdsQry.fieldbyname('CNSPRICIE').AsDateTime)
            + ' al ' + DateToStr(cdsQry.fieldbyname('CNSULTCIE').AsDateTime) + ' ya fue Cerrado');
         exit;
      End;
      Result := True;
   End;
End;

Procedure TDMCXC.cdsPost(xxCds: TwwClientDataSet);
Var
   i: integer;
Begin
   For i := 0 To xxCds.Fields.Count - 1 Do
   Begin

      If xxCds.Fields[i].Classtype = TStringField Then
      Begin
         If xxCds.Fields[i].AsString = '' Then xxCds.Fields[i].clear;
      End;

      If xxCds.Fields[i].Classtype = TMemoField Then
      Begin
         If xxCds.Fields[i].AsString = '' Then xxCds.Fields[i].AsString := '.';
      End;

   End;
End;

Function TDMCXC.BuscaQry(wPrv, wTabla, wCampos, wWhere, wResult: String): String;
Var
   xSQL: String;
Begin
{  wPrv    = Provider al que hace referencia el cdsQry
   wTabla  = Tabla en la que se va a hacer la búsqueda
   wCampos = Campos que va a considerar en el "select" de sentencia SQL
   wWhere  = Condicional de la búsqueda
   wResult = Resultado que entrega la búsqueda }
   xSQL := '';
   xSQL := 'Select ' + wCampos + ' from ' + wTabla;
   If length(wWhere) > 0 Then xSQL := xSQL + ' where ' + wWhere;
   cdsQry.Close;
   cdsQry.ProviderName := wPrv;
   cdsQry.DataRequest(xSQL); //esta es la llamada remota al provider del servidor
   cdsQry.Open;
   result := cdsQry.FieldByName(wResult).AsString;
End;

Procedure Filtracds(xxCds: TwwClientDataSet; xxSQL: String);
Begin
   If Length(xxSQL) > 0 Then
   Begin
      xxCds.Filter := '';
      xxCds.Filtered := False;
      xxCds.IndexFieldNames := '';
      xxCds.Close;
      xxCds.DataRequest(xxSQL);
   End;

   xxCds.Open;
End;

Function StrNum(wNumero: double): String;
Var
   xNumStr, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12: String;
   xGrupo, xTotal, xDecimal: String;
   xLargo, xVeces: integer;
   xcontador: integer;
Begin
 // w1 para Unidades
   xNumStr := floattostr(int(wNumero));
   For xcontador := 1 To Length(FloatToStr(wNumero)) Do
   Begin
      If copy(FloatToStr(wNumero), xcontador, 1) = '.' Then
      Begin
         xDecimal := copy(FloatToStr(wNumero), xcontador + 1, Length(FloatToStr(wNumero)));
         break;
      End;
   End;
//  xDecimal:= floattostr(wNumero-int(wNumero));

   If wNumero - int(wNumero) > 0 Then
   Begin
//  	if strtoint(copy(xDecimal,Length(xDecimal),1)) >= 5 then
    //** 02/01/2001 - pjsv
{    if copy(xDecimal,Length(xDecimal),1) <> '' then
    //**
     if strtoint(copy(xDecimal,Length(xDecimal),1)) >= 5 then
       xDecimal := inttostr(strtoint(copy(xDecimal,3,2))+1)
      else	xDecimal := copy(xDecimal,3,2)
    //** 02/01/2001 - pjsv
    else 	xDecimal := copy(xDecimal,3,2);
    //**
}
   End
   Else
   Begin
      xDecimal := '00';
   End;
  //** 02/01/2001 - pjsv
   If length(xdecimal) = 1 Then xdecimal := xdecimal + '0';
  //**
   xDecimal := ' y ' + xDecimal + '/100';
   xLargo := length(xNumStr);
   x1 := '';
   x2 := '';
   x3 := '';
   x4 := '';
   x5 := '';
   x6 := '';
   x7 := '';
   x8 := '';
   x9 := '';
   x10 := '';
   If xLargo >= 1 Then x1 := copy(xNumStr, xLargo, 1);
   If xLargo >= 2 Then x2 := copy(xNumStr, xLargo - 1, 1);
   If xLargo >= 3 Then x3 := copy(xNumStr, xLargo - 2, 1);
   If xLargo >= 4 Then x4 := copy(xNumStr, xLargo - 3, 1);
   If xLargo >= 5 Then x5 := copy(xNumStr, xLargo - 4, 1);
   If xLargo >= 6 Then x6 := copy(xNumStr, xLargo - 5, 1);
   If xLargo >= 7 Then x7 := copy(xNumStr, xLargo - 6, 1);
   If xLargo >= 8 Then x8 := copy(xNumStr, xLargo - 7, 1);
   If xLargo >= 9 Then x9 := copy(xNumStr, xLargo - 8, 1);
   If xLargo >= 10 Then x10 := copy(xNumStr, xLargo - 9, 1);
   If xLargo >= 11 Then x11 := copy(xNumStr, xLargo - 10, 1);
   If xLargo >= 12 Then x12 := copy(xNumStr, xLargo - 11, 1);
   xVeces := 1;
   xTotal := '';
   While xVeces <= 4 Do // hasta 999,999'999,999
   Begin
      If xVeces = 2 Then
      Begin
         x1 := x4;
         x2 := x5;
         x3 := x6;
      End;
      If xVeces = 3 Then
      Begin
         x1 := x7;
         x2 := x8;
         x3 := x9;
      End;
      If xVeces = 4 Then
      Begin
         x1 := x10;
         x2 := x11;
         x3 := x12;
      End;
      If x2 = '1' Then // del 11 a 19
      Begin
         If x1 = '0' Then x2 := 'DIEZ';
         If x1 = '1' Then x2 := 'ONCE';
         If x1 = '2' Then x2 := 'DOCE';
         If x1 = '3' Then x2 := 'TRECE';
         If x1 = '4' Then x2 := 'CATORCE';
         If x1 = '5' Then x2 := 'QUINCE';
         If x1 = '6' Then x2 := 'DIECISEIS';
         If x1 = '7' Then x2 := 'DIECISIETE';
         If x1 = '8' Then x2 := 'DIECIOCHO';
         If x1 = '9' Then x2 := 'DIECINUEVE';
         x1 := '0';
      End
      Else
      Begin // del 0 al 9
         If x1 = '1' Then x1 := 'UNO';
         If (xVeces > 1) And (x1 = 'UNO') Then x1 := 'UN';
         If x1 = '2' Then x1 := 'DOS';
         If x1 = '3' Then x1 := 'TRES';
         If x1 = '4' Then x1 := 'CUATRO';
         If x1 = '5' Then x1 := 'CINCO';
         If x1 = '6' Then x1 := 'SEIS';
         If x1 = '7' Then x1 := 'SIETE';
         If x1 = '8' Then x1 := 'OCHO';
         If x1 = '9' Then x1 := 'NUEVE';
         If x2 = '2' Then
         Begin // veinte
            x2 := 'VEINTI';
            If x1 = '0' Then x2 := 'VEINTE';
         End;
         If x2 = '3' Then
         Begin
            x2 := 'TREINTI';
            If x1 = '0' Then x2 := 'TREINTA';
         End;
         If x2 = '4' Then
         Begin
            x2 := 'CUARENTI';
            If x1 = '0' Then x2 := 'CUARENTA';
         End;
         If x2 = '5' Then
         Begin
            x2 := 'CINCUENTI';
            If x1 = '0' Then x2 := 'CINCUENTA';
         End;
         If x2 = '6' Then
         Begin
            x2 := 'SESENTI';
            If x1 = '0' Then x2 := 'SESENTA';
         End;
         If x2 = '7' Then
         Begin
            x2 := 'SETENTI';
            If x1 = '0' Then x2 := 'SETENTA';
         End;
         If x2 = '8' Then
         Begin
            x2 := 'OCHENTI';
            If x1 = '0' Then x2 := 'OCHENTA';
         End;
         If x2 = '9' Then
         Begin
            x2 := 'NOVENTI';
            If x1 = '0' Then x2 := 'NOVENTA';
         End;
      End;
      If x3 = '1' Then x3 := 'CIENTO';
      If (x2 = '0') And (x1 = '0') And (x3 = 'CIENTO') Then
         x3 := 'CIEN';
      If x3 = '2' Then x3 := 'DOSCIENTOS';
      If x3 = '3' Then x3 := 'TRESCIENTOS';
      If x3 = '4' Then x3 := 'CUATROCIENTOS';
      If x3 = '5' Then x3 := 'QUINIENTOS';
      If x3 = '6' Then x3 := 'SEISCIENTOS';
      If x3 = '7' Then x3 := 'SETECIENTOS';
      If x3 = '8' Then x3 := 'OCHOCIENTOS';
      If x3 = '9' Then x3 := 'NOVECIENTOS';
      xGrupo := '';
   //xGrupo := x3;
      If x3 <> '0' Then xGrupo := x3;
      If x2 <> '0' Then xGrupo := xGrupo + ' ' + x2;
      If x1 <> '0' Then xGrupo := xGrupo + x1;
      If ((xVeces = 2) Or (xVeces = 4)) And (length(xGrupo) > 1) Then
      Begin
         xGrupo := xGrupo + ' MIL';
      End;
      If (xVeces = 3) And (length(xGrupo) > 1) Then
      Begin
         If x1 <> 'UN' Then
            xGrupo := xGrupo + ' MILLONES'
         Else
         Begin
            xGrupo := xGrupo + ' MILLÓN';
         End;
      End;
      If length(xTotal) > 0 Then xGrupo := xGrupo + ' ';
      xTotal := xGrupo + xTotal;
      xVeces := xVeces + 1;
   End;
   result := xTotal + xDecimal;
End;

/////////////////////////////////////////////////

Function TDMCXC.FRound2(xReal: double; xEnteros, xDecimal: Integer): double;
Var
   xNum, xParteEnt, xParteDec, xflgneg: String;
   xDec, Code: Integer;
   xMultiplo10, xUltdec, xNReal, xPDec: Double;
Begin
   Result := 0;
   xflgneg := '0';

   If xReal < 0 Then
   Begin
      xflgneg := '1';
      xReal := xReal * -1;
   End;

   If xReal = 0 Then exit;
// primer redondeo a un decimal + de lo indicado en los parámetros
   xDec := xDecimal + 1;
   If xDec = 0 Then xMultiplo10 := 1;
   If xDec = 1 Then xMultiplo10 := 10;
   If xDec = 2 Then xMultiplo10 := 100;
   If xDec = 3 Then xMultiplo10 := 1000;
   If xDec = 4 Then xMultiplo10 := 10000;
   If xDec = 5 Then xMultiplo10 := 100000;
   If xDec = 6 Then xMultiplo10 := 1000000;
   If xDec = 7 Then xMultiplo10 := 10000000;

   xNreal := strtofloat(floattostr(xReal * xMultiplo10));
   xPdec := int(strtofloat(floattostr(xReal))) * xMultiplo10;
   xPdec := xNReal - xPDec;

   xPDec := int(xPDec);
   xParteDec := floattostr(xPDec);
   If length(xParteDec) < xDec Then
      xParteDec := strZero(xParteDec, xDec);

   If length(xParteDec) >= xDec Then
      xultdec := strtofloat(copy(xParteDec, xDec, 1))
   Else
   Begin
      xUltDec := 0;
   End;
   xNReal := strtofloat(floattostr(xReal * xMultiplo10 / 10));
   xNReal := int(xNReal);
   If xultdec >= 5 Then xNReal := xNReal + 1;

   If xflgneg = '1' Then
   Begin
      Result := (xNReal / (xMultiplo10 / 10)) * -1;
   End
   Else
   Begin
      Result := xNReal / (xMultiplo10 / 10);
   End;
End;

Function TDMCXC.CambioSituacion(sSitAct, sSitNew: String): Boolean;
Var
   xSQL, xVar: String;
Begin
   xSQL := 'Select * from CXC104 Where SITUAID=''' + sSitAct + '''';
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xVar := cdsQry.FieldByName('SITUAEST').AsString;
   Result := False;
   If Pos(sSitNew, xVar) > 0 Then
      Result := True;
End;

Procedure TDMCXC.SetHyst(Const CIA, TDO, NDO: String);
Var
   sSQL: AnsiString;
   v: Integer;
Begin
   wSetHys := True;
   sSQL := 'SELECT MAX(CCHIST) AS VALOR FROM CXC402 WHERE '
      + 'CIAID=''' + CIA + ''' AND DOCID=''' + TDO + '''' + ' AND CCSERIE=''000'' AND '
      + 'CCNODOC=''' + NDO + '''';

   cdsQry6.Close;
   cdsQry6.ProviderName := 'dspTGE';
   cdsQry6.DataRequest(sSQL);
   cdsQry6.Open;

   If Not cdsQry6.FieldByName('VALOR').IsNull Then
      v := cdsQry6.FieldByName('VALOR').AsInteger + 1
   Else
      v := 1;

   sSQL := ' INSERT INTO CXC402 (' +
      ' CIAID , CCANOMES, TDIARID, CCLOTE, CCNOREG, CCFCMPRB, CLAUXID,    ' +
      ' CLIEID, CLIERUC, DOCID, CCSERIE, CCNODOC, CCFRECEP, CCFEMIS,      ' +
      ' CCFVCMTO, TMONID, CCTCAMPR, CCTCAMPA, CCTCAMAJ, CCESTADO, CC_CONTA,         ' +
      ' VEID, CCOMERID, CCFLCRED, CCGRAVAD, CCNOGRAV, CCFLETE, CCGASFIN,  ' +
      ' CCSERVIC, CCDCTO, CCIGV, CCISC, CCMTOORI, CCMTOLOC, CCMTOEXT,     ' +
      ' CCPAGORI, CCPAGLOC, CCPAGEXT, CCSALORI, CCSALLOC, CCSALEXT,       ' +
      ' CCPTOTOT, CTATOTAL, TCANJEID, CCCANJE, CCFCANJE, CCAAAA, CCMM,    ' +
      ' CCDD, CCTRI, CCSEM, CCSS, CCAATRI, CCAASEM, CCAASS, CCPEDIDO,     ' +
      ' CCFVALOR, BANCOID, CCBCOID, SITUACION, UBICACION, CCFSITUA,       ' +
      ' DOCSIT, NODOCSIT, FLAGVAR, CCUSER, CCFREG, FLAGVAR2, CCHREG,      ' +
      ' CCNLETBCO, CCNRENOV, CCACEPTA, CCNPLABCO, CCFPLABCO, CCNREFINA,   ' +
      ' CCAVAL, CCNVECPRT, CCESTCJE, CCNFACTURA, CCNSERFACTL, CCFVENLREAL,' +
      ' UBIID, SITID, CCOENV, OEFNUMFOR ) ' +
      ' (SELECT ' +
      ' CIAID , CCANOMES, TDIARID, CCLOTE, CCNOREG, CCFCMPRB, CLAUXID,    ' +
      ' CLIEID, CLIERUC, DOCID, CCSERIE, CCNODOC, CCFRECEP, CCFEMIS,      ' +
      ' CCFVCMTO, TMONID, CCTCAMPR, CCTCAMPA, CCTCAMAJ, CCESTADO, CC_CONTA,         ' +
      ' VEID, CCOMERID, CCFLCRED, CCGRAVAD, CCNOGRAV, CCFLETE, CCGASFIN,  ' +
      ' CCSERVIC, CCDCTO, CCIGV, CCISC, CCMTOORI, CCMTOLOC, CCMTOEXT,     ' +
      ' CCPAGORI, CCPAGLOC, CCPAGEXT, CCSALORI, CCSALLOC, CCSALEXT,       ' +
      ' CCPTOTOT, CTATOTAL, TCANJEID, CCCANJE, CCFCANJE, CCAAAA, CCMM,    ' +
      ' CCDD, CCTRI, CCSEM, CCSS, CCAATRI, CCAASEM, CCAASS, CCPEDIDO,     ' +
      ' CCFVALOR, BANCOID, CCBCOID, SITUACION, UBICACION, CCFSITUA,       ' +
      ' DOCSIT, NODOCSIT, FLAGVAR, CCUSER, CCFREG, FLAGVAR2, CCHREG,      ' +
      ' CCNLETBCO, CCNRENOV, CCACEPTA, CCNPLABCO, CCFPLABCO, CCNREFINA,   ' +
      ' CCAVAL, CCNVECPRT, CCESTCJE, CCNFACTURA, CCNSERFACTL, CCFVENLREAL,' +
      ' UBIID, SITID, CCOENV, OEFNUMFOR FROM CXC301 ' +
      ' WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + '''' + ' AND CCSERIE=' + QuotedStr('000') +
      '   AND CCNODOC=''' + NDO + ''')';

   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL);
   Try
      cdsQry6.Execute;
   Except
      wSetHys := False;
   End;

   sSQL := 'UPDATE CXC402 SET CCHIST=''' + StrZero(IntToStr(v), 3) + ''' ' +
      'WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + ''' AND CCSERIE=''000'' ' +
      ' AND CCNODOC=''' + NDO + ''' AND CCHIST IS NULL';

   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL);
   Try
      cdsQry6.Execute;
   Except
      wSetHys := False;
   End;
End;

Procedure TDMCXC.UpdLET(Const CIA, TDO, NDO, UBI, SIT, CPTO, CTA, CPTOOLD, CTAOLD, ENV, NUM: String; FEC: TDate; BPROT: Boolean; PLA: String; FPLA, FCAN: TDateTime);
Var
   sSQL, sWhere, sConta: String;
Begin
   // ACTUALIZAR DATOS
   sWhere := ' WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + ''' and CCSERIE=''000'' and CCNODOC=''' + NDO + '''';
   sConta := ',CTAANT=' + QuotedStr(CTAOLD) + ', CTATOTAL=' + QuotedStr(CTA) + ' ';
   sSQL := 'UPDATE CXC301 SET ';
   If Length(UBI) > 0 Then sSQL := sSQL + 'UBIID=''' + UBI + ''', ';
   If Length(SIT) > 0 Then sSQL := sSQL + 'SITID=''' + SIT + ''', ';
   If BPROT Then
      sSQL := sSQL + ' CCFLAGPROT=''S'', ';
   sSQL := sSQL + 'CCOENV=''' + ENV + ''', ';
   If Length(NUM) > 0 Then
      sSQL := sSQL + 'CCNLETBCO=''' + NUM + ''', ';

   sSQL := sSQL + 'CCUSER=' + QuotedStr(wUsuario) + ', CCFREG=' + wRepFecServi + ', CCHREG=' + wRepTimeServi + ', '
      + 'CCFSITUA=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + '''' + ')';
   If Length(PLA) > 0 Then
      sSQL := sSQL + ', CCNPLABCO=' + QuotedStr(PLA) + ', '
         + 'CCFPLABCO=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FPLA) + '''' + ')';
   If FCAN > 0 Then
      sSQL := sSQL + ', CCFCANCEL=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FCAN) + '''' + ')';

   If (Length(CTA) > 0) And (Length(CPTO) > 0) Then
      sSQL := sSQL + sConta;

   sSQL := sSQL + sWhere;

   Try
      DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;
End;

Procedure TDMCXC.UpdCont(Const CIA, TDO, NDO, UBI, SIT, TMO, ZNA: String; FEC: TDate);
Var
   sSQL, xSQL, xFDa: String;
   xFec, xAAMM, xAA, xMM, xDD, xTri, xSem, xSS: String;
   sFlagConta, sItemActual, sItemNuevo, xWhere, sSELECT: String;
   wAno, wMes, wDia: word;
   xxTCambio: Double;
   UBIANT, SITANT: String;
   sNroAsiento, sTDiario: String;
Begin

   //VERIFICA SI EL CAMBIO DE SITUACION GENERA UN ASIENTO CONTABLE
   sSQL := 'SELECT * FROM CXC104 WHERE SITUAID=''' + SIT + '''';
   cdsQry6.ProviderName := 'dspTGE';
   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL);
   cdsQry6.Open;

   If cdsQry6.FieldByName('SITCONTA').AsString = 'S' Then
   Begin
     //DETECTA LAS OPERACIONES QUE SON CANCELACIONES
      If cdsQry6.FieldByName('SITUAFLAG').AsString = 'C' Then
      Begin
         sFlagConta := 'C'; //YA NO SE REGULARIZA DIFERENCIA DE CAMBIO
      End
      Else
      Begin
         sFlagConta := 'P'; //PENDIENTE DE REGULARIZAR DIFERENCIA DE CAMBIO
      End;

      xWhere := 'TMonId=''' + wTMonExt + ''' and '
         + 'Fecha=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + ''' )';
      xxTCambio := 0;
      If length(BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
      Begin
         xxTCambio := cdsQry.fieldbyname('TCam' + wVRN_TipoCambio).Value;
      End
      Else
      Begin
         Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
      End;

      xFDa := wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + '''' + ')';
      xFec := DatetoStr(FEC);
      If BuscaFecha('TGE114', 'Fecha', FEC) Then
      Begin
         xDD := cdsQry2.FieldByName('FecDia').Value; // día
         xTri := cdsQry2.FieldByName('FecTrim').Value; // trimestre
         xSem := cdsQry2.FieldByName('FecSem').Value; // semestre
         xSS := cdsQry2.FieldByName('FecSS').Value; // semana
         xAAMM := cdsQry2.FieldByName('FecANO').Value + cdsQry2.FieldByName('FecMES').Value; //AÑO+MES
         xAA := cdsQry2.FieldByName('FecANO').Value; // AÑO
         xMM := cdsQry2.FieldByName('FecMES').Value; // MES
      End;

      xSQL := ' SELECT DISTINCT TDIARID,ITEM,UBIID,SITID FROM CXC302 ' +
         ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(xAAMM) + ' AND TMONID=' + QuotedStr(TMO) + ' AND TCANJEID=''TL'' AND CCNODOC=' + QuotedStr(NDO) + ' AND ITEM=(SELECT MAX(ITEM) FROM CXC302 ' +
         ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(xAAMM) + ' AND TMONID=' + QuotedStr(TMO) + ' AND TCANJEID=''TL'' AND CCNODOC=' + QuotedStr(NDO) + ') ';

{      xSQL:=' SELECT MAX(ITEM) ITEM FROM CXC302 '+
            ' WHERE CIAID='+QuotedStr(CIA)+' AND CCANOMES='+QuotedStr(xAAMM)+
            ' AND TCANJEID=''TL'' AND TMONID='+QuotedStr(TMO)+' AND CCNODOC='+QuotedStr(NDO);
 }

      cdsQry2.Close;
      cdsQry2.DataRequest(xSQL);
      cdsQry2.Open;
      UbiAnt := cdsQry2.FieldByName('UBIID').AsString;
      SitAnt := cdsQry2.FieldByName('SITID').AsString;
      sTDiario := cdsQry2.FieldByName('TDIARID').AsString;
      If cdsQry2.FieldByName('ITEM').IsNull Then
      Begin
         sItemNuevo := '00';
         sItemActual := '';
      End
      Else //SI EXISTE ASIENTO ANTERIOR SE TIENE QUE ACTUALIZAR POR DIFERENCIA DE CAMBIO
      Begin // CON FECHA DEL NUEVO ASIENTO
         sItemNuevo := StrZero(IntToStr(cdsQry2.FieldByName('ITEM').AsInteger + 1), 2);
         sItemActual := cdsQry2.FieldByName('ITEM').AsString;

         xSQL := ' SELECT MAX(NROASIENTO) NUMERO FROM CXC302 ' +
            ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(xAAMM) + ' AND TCANJEID=''TL'' AND TDIARID=' + QuotedStr(sTDiario);
         cdsQry2.Close;
         cdsQry2.DataRequest(xSQL);
         cdsQry2.Open;
         If (cdsQry2.FieldByName('NUMERO').AsString = '') Or (cdsQry2.FieldByName('NUMERO').IsNull) Then
         Begin
            sNroAsiento := '00001';
         End
         Else
         Begin
            sNroAsiento := StrZero(IntToStr(StrToInt(cdsQry2.FieldByName('NUMERO').AsString) + 1), 5);
         End;

        //SOLO CUANDO LA LETRA ES EN DOLARES
         If TMO = wTMonExt Then
         Begin
           // ACTUALIZA LOS MONTOS EN SOLES PARA EL TIPO DE CAMBIO DE LA OPERACION
            xSQL := ' UPDATE CXC302 A ' +
               ' SET A.CCTCAMPR=' + FloatToStr(xxTCambio) +
               '     ,A.CCMTOLOC=ROUND(A.CCMTOEXT*' + FloatToStr(xxTCambio) + ',2) ' +
               ' WHERE A.CIAID=' + QuotedStr(CIA) + ' AND A.CCANOMES=' + QuotedStr(xAAMM) +
               ' AND A.TCANJEID=''TL'' AND A.TMONID=' + QuotedStr(TMO) + ' AND A.CCNODOC=' + QuotedStr(NDO) +
               ' AND A.CCDH=''H'' AND A.TIPCTA=''P'' AND ITEM=' + QuotedStr(sItemActual);
            Try
               DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
            End;

           //CALCULA LA CANTIDAD EN SOLES PARA EL REGISTRO A SER INSERTADO
            If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
            Begin

               xSQL := ' SELECT SUM(CASE WHEN CCDH=''D'' THEN CCMTOLOC ELSE (-1)*CCMTOLOC END) MONTO FROM CXC302 A ' +
                  ' WHERE A.CIAID=' + QuotedStr(CIA) + ' AND A.CCANOMES=' + QuotedStr(xAAMM) +
                  ' AND A.TCANJEID=''TL'' AND A.TMONID=' + QuotedStr(TMO) + ' AND A.CCNODOC=' + QuotedStr(NDO) + ' AND ITEM=' + QuotedStr(sItemActual);
            End
            Else
            Begin
               If (SRV_D = 'ORACLE') Then
               Begin
                  xSQL := ' SELECT SUM(DECODE (CCDH,''D'', CCMTOLOC , (-1)*CCMTOLOC )) MONTO FROM CXC302 A ' +
                     ' WHERE A.CIAID=' + QuotedStr(CIA) + ' AND A.CCANOMES=' + QuotedStr(xAAMM) +
                     ' AND A.TCANJEID=''TL'' AND A.TMONID=' + QuotedStr(TMO) + ' AND A.CCNODOC=' + QuotedStr(NDO) + ' AND ITEM=' + QuotedStr(sItemActual);
               End;
            End;

            cdsQry2.Close;
            cdsQry2.DataRequest(xSQL);
            cdsQry2.Open;

           // INSERTA LA CUENTA DE DIFERENCIA DE CAMBIO QUE HACE CUADRAR EL ASIENTO ANTERIOR
            xSQL := ' INSERT INTO CXC302 ( ';
            xSQL := xSQL + ' CCGLOSA,CIAID, TDIARID, CCANOMES, NROASIENTO, CCNOREG, CUENTAID, CPTOID, ';
            xSQL := xSQL + ' CLAUXID, ORDEN, CLIEID, SITID, UBIID, FLAGCONTA, ITEM, CCOSID, DOCID, CCSERIE, CCNODOC, ';
            xSQL := xSQL + ' CCDH, CCTCAMPR, CCMTOORI, CCMTOLOC, CCMTOEXT, ';
            xSQL := xSQL + ' CCFEMIS, CCFVCMTO, CCFCOMP, CCESTADO, ';
            xSQL := xSQL + ' CCUSER, CCFREG, CCHREG, TMONID, TCANJEID, ';
            xSQL := xSQL + ' CCAAAA, CCMM, CCDD, CCTRI, CCSEM, CCSS, ';
            xSQL := xSQL + ' CCAATRI, CCAASEM, CCAASS,TIPCTA ) ';

            If cdsQry2.FieldByName('MONTO').Value > 0 Then
            Begin
               If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
               Begin
                  sSELECT := '';
                  sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(xAAMM) + ' CCANOMES, ' + QuotedStr(sNroAsiento) + ' NROASIENTO, L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
                  sSELECT := sSELECT + ' F.ORDEN, L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(sItemActual) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
                  sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
                  sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
                  sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
                  sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
                  sSELECT := sSELECT + ' FROM CXC205 F ';
                  sSELECT := sSELECT + ' LEFT JOIN CXC301 L ON L.CCNODOC=' + QuotedStr(NDO) + ' AND F.CIAID=L.CIAID AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
                  sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID AND F.ZONA=L.TVTAID AND L.DOCID=' + QuotedStr(TDO);
                  sSELECT := sSELECT + ' LEFT JOIN TGE104 ON TGE104.TDIARID=F.TDIARID ';
                  sSELECT := sSELECT + ' LEFT JOIN TGE103 ON TGE103.TMONID=F.TMONID ';
                  sSELECT := sSELECT + ' WHERE F.TIPCTA=''D'' AND F.DH=''H'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(TMO) + ' AND F.ZONA=' + QuotedStr(ZNA) + ')';
                  xSQL := xSQL + sSELECT
               End
               Else
                  If (SRV_D = 'ORACLE') Then
                  Begin
                     sSELECT := '';
                     sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(xAAMM) + ' CCANOMES, ' + QuotedStr(sNroAsiento) + ' NROASIENTO, L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
                     sSELECT := sSELECT + ' F.ORDEN, L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(sItemActual) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
                     sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
                     sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
                     sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
                     sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
                     sSELECT := sSELECT + ' FROM CXC205 F,CXC301 L,TGE104,TGE103, ';
                     sSELECT := sSELECT + ' WHERE L.CCNODOC=' + QuotedStr(NDO) + ' AND F.CIAID=L.CIAID(+) AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
                     sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID(+) AND F.ZONA=L.TVTAID(+) AND L.DOCID=' + QuotedStr(TDO);
                     sSELECT := sSELECT + ' AND TGE104.TDIARID(+)=F.TDIARID ';
                     sSELECT := sSELECT + ' AND TGE103 ON TGE103.TMONID(+)=F.TMONID ';
                     sSELECT := sSELECT + ' AND F.TIPCTA=''D'' AND F.DH=''H'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(TMO) + ' AND F.ZONA=' + QuotedStr(ZNA) + ')';
                     xSQL := xSQL + sSELECT;
                  End;
            End
            Else
            Begin
               If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
               Begin
                  sSELECT := '';
                  sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(xAAMM) + ' CCANOMES, ' + QuotedStr(sNroAsiento) + ' NROASIENTO, L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
                  sSELECT := sSELECT + ' F.ORDEN, L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(sItemActual) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
                  sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
                  sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
                  sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
                  sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
                  sSELECT := sSELECT + ' FROM CXC205 F ';
                  sSELECT := sSELECT + ' LEFT JOIN CXC301 L ON L.CCNODOC=' + QuotedStr(NDO) + ' AND F.CIAID=L.CIAID AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
                  sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID AND F.ZONA=L.TVTAID AND L.DOCID=' + QuotedStr(TDO);
                  sSELECT := sSELECT + ' LEFT JOIN TGE104 ON TGE104.TDIARID=F.TDIARID ';
                  sSELECT := sSELECT + ' LEFT JOIN TGE103 ON TGE103.TMONID=F.TMONID ';
                  sSELECT := sSELECT + ' WHERE F.TIPCTA=''D'' AND F.DH=''D'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(TMO) + ' AND F.ZONA=' + QuotedStr(ZNA) + ')';
                  xSQL := xSQL + sSELECT
               End
               Else
                  If (SRV_D = 'ORACLE') Then
                  Begin
                     sSELECT := '';
                     sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(xAAMM) + ' CCANOMES, ' + QuotedStr(sNroAsiento) + ' NROASIENTO, L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
                     sSELECT := sSELECT + ' F.ORDEN, L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(sItemActual) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
                     sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
                     sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
                     sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
                     sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
                     sSELECT := sSELECT + ' FROM CXC205 F,CXC301 L,TGE104,TGE103 ';
                     sSELECT := sSELECT + ' WHERE  ON L.CCNODOC=' + QuotedStr(NDO) + ' AND F.CIAID=L.CIAID(+) AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
                     sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID(+) AND F.ZONA=L.TVTAID(+) AND L.DOCID=' + QuotedStr(TDO);
                     sSELECT := sSELECT + ' AND TGE104.TDIARID(+)=F.TDIARID ';
                     sSELECT := sSELECT + ' AND TGE103 ON TGE103.TMONID(+)=F.TMONID ';
                     sSELECT := sSELECT + ' AND F.TIPCTA=''D'' AND F.DH=''D'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(TMO) + ' AND F.ZONA=' + QuotedStr(ZNA) + ')';
                     xSQL := xSQL + sSELECT;
                  End;
            End;
            Try
               DCOM1.AppServer.EjecutaSQL(xSQL);
            Except
            End;
         End;
      End; //DEL ELSE

      xSQL := ' INSERT INTO CXC302 ( ';
      xSQL := xSQL + ' CCGLOSA,CIAID, TDIARID, CCANOMES, NROASIENTO, CCNOREG, CUENTAID, CPTOID, ';
      xSQL := xSQL + ' CLAUXID, ORDEN, CLIEID, SITID, UBIID, FLAGCONTA, ITEM, CCOSID, DOCID, CCSERIE, CCNODOC, ';
      xSQL := xSQL + ' CCDH, CCTCAMPR, CCMTOORI, CCMTOLOC, CCMTOEXT, ';
      xSQL := xSQL + ' CCFEMIS, CCFVCMTO, CCFCOMP, CCESTADO, ';
      xSQL := xSQL + ' CCUSER, CCFREG, CCHREG, TMONID, TCANJEID, ';
      xSQL := xSQL + ' CCAAAA, CCMM, CCDD, CCTRI, CCSEM, CCSS, ';
      xSQL := xSQL + ' CCAATRI, CCAASEM, CCAASS,TIPCTA ) ';

      If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
      Begin
         sSELECT := '';
         sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(xAAMM) + ' CCANOMES, ' + QuotedStr(sNroAsiento) + ' NROASIENTO, L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
         sSELECT := sSELECT + ' F.ORDEN, L.CLIEID,' + QuotedStr(SIT) + ' SITID, ' + QuotedStr(UBI) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(sItemNuevo) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
         sSELECT := sSELECT + ' L.CCMTOORI, L.CCMTOLOC, L.CCMTOEXT, L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
         sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
         sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
         sSELECT := sSELECT + ' FROM CXC205 F ';
         sSELECT := sSELECT + ' LEFT JOIN CXC301 L ON L.CCNODOC=' + QuotedStr(NDO) + ' AND F.CIAID=L.CIAID AND F.UBICAID=L.UBIID AND ';
         sSELECT := sSELECT + '                  F.SITUAID=L.SITID AND F.TMONID=L.TMONID AND F.ZONA=L.TVTAID AND L.DOCID=' + QuotedStr(TDO);
         sSELECT := sSELECT + ' LEFT JOIN TGE104 ON TGE104.TDIARID=F.TDIARID ';
         sSELECT := sSELECT + ' LEFT JOIN TGE103 ON TGE103.TMONID=F.TMONID ';
         sSELECT := sSELECT + ' WHERE F.TIPCTA<>''D'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBI) + ' AND F.SITUAID=' + QuotedStr(SIT) + ' AND F.TMONID=' + QuotedStr(TMO) + ' AND F.ZONA=' + QuotedStr(ZNA) + ')';
         xSQL := xSQL + sSELECT
      End
      Else
         If (SRV_D = 'ORACLE') Then
         Begin
            sSELECT := '';
            sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(xAAMM) + ' CCANOMES, ' + QuotedStr(sNroAsiento) + ' NROASIENTO, L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
            sSELECT := sSELECT + ' F.ORDEN, L.CLIEID,' + QuotedStr(SIT) + ' SITID, ' + QuotedStr(UBI) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(sItemNuevo) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
            sSELECT := sSELECT + ' L.CCMTOORI, L.CCMTOLOC, L.CCMTOEXT, L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
            sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
            sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
            sSELECT := sSELECT + ' FROM CXC205 F,CXC301 L,TGE104,TGE103 ';
            sSELECT := sSELECT + ' WHERE L.CCNODOC=' + QuotedStr(NDO) + ' AND F.CIAID=L.CIAID(+) AND F.UBICAID=L.UBIID(+) AND ';
            sSELECT := sSELECT + '                  F.SITUAID=L.SITID(+) AND F.TMONID=L.TMONID(+) AND F.ZONA=L.TVTAID(+) AND L.DOCID=' + QuotedStr(TDO);
            sSELECT := sSELECT + ' AND TGE104.TDIARID(+)=F.TDIARID ';
            sSELECT := sSELECT + ' AND TGE103.TMONID(+)=F.TMONID ';
            sSELECT := sSELECT + ' AND F.TIPCTA<>''D'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBI) + ' AND F.SITUAID=' + QuotedStr(SIT) + ' AND F.TMONID=' + QuotedStr(TMO) + ' AND F.ZONA=' + QuotedStr(ZNA) + ')';
            xSQL := xSQL + sSELECT;
         End;
      Try
         DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
   End;
End;

Procedure TDMCXC.UpdContPlantillaRenova(Const CIA, TDO, NDO, UBI, SIT, TMO, ZNA: String; FEC: TDate);
Var
   xCje, xVar, xNoReg, xTDiar, xTAutoNum, xTAno, xTMes: String;
   sSQL: String;
   a, m, d: word;
   nNoReg: integer;
   xxTCambio, dDebe, dHaber: double;
Begin
   sSQL := ' SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(CIA) + ' AND DOCID=' + QuotedStr(TDO) +
      ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(NDO);
   cdsReporte.Close;
   cdsReporte.DataRequest(sSQL);
   cdsReporte.Open;

   sSQL := ' SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(CIA) + ' AND DOCID=' + QuotedStr(TDO) +
      ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(CalculaNumero(NDO));
   cdsQry10.Close;
   cdsQry10.DataRequest(sSQL);
   cdsQry10.Open;

   DecodeDate(FEC, a, m, d);
   xTAno := StrZero(IntToStr(a), 4);
   xTMes := StrZero(IntToStr(m), 2);

   sSQL := 'TMonId=''' + wTMonExt + ''' and '
      + 'Fecha=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + ''' )';
   xxTCambio := 0;
   If length(BuscaQry('dspTGE', 'TGE107', '*', sSQL, 'TMonId')) > 0 Then
   Begin
      xxTCambio := cdsQry.fieldbyname('TCAM' + wVRN_TipoCambio).AsFloat;
   End
   Else
   Begin
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   cdsDetCxC.Close;
   cdsDetCxC.DataRequest('SELECT * FROM CXC302 WHERE CIAID=''XXX''');
   cdsDetCxC.Open;
   While Not DMCXC.cdsDetCxC.EOF Do
   Begin
      cdsDetCxC.Delete;
   End;
   cdsPlantilla.First;

   If cdsPlantilla.RecordCount > 0 Then
   Begin
    //1. Calcula el Numero de Registro.
    //2. Crea la Cabecera del CXC307

      xTDiar := cdsPlantilla.FieldByName('TDIARID').AsString;
      xTAutoNum := DisplayDescrip('TGE104', 'AUTONUM', 'TDIARID', xTDiar);
      xNoReg := UltimoRegistro(xTAutoNum, CIA, xTDiar, xTAno, xTMes);
      nNoReg := StrToInt(xNoReg);
      xNoReg := '';
      xNoReg := StrZero(GrabaUltimoRegistro(xTAutoNum, CIA, xTDiar, xTAno, xTMes, nNoReg), 10);

      xVar := 'GL';
      xCje := StrZero(BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', 'CIAID=' + QuotedStr(CIA) + ' AND TCANJEID=' + QuotedStr(xVar)), 6);

      sSQL := ' SELECT * FROM CXC307 WHERE CIAID=''CLG'' AND TCANJEID=''CLG'' AND CANJE=''CLG'' ';
      cdsCCanje.Close;
      cdsCCanje.DataRequest(sSQL);
      cdsCCanje.Open;

      cdsCCanje.Insert;
      cdsCCanje.FieldByName('CIAID').AsString := CIA;
      cdsCCanje.FieldByName('TCANJEID').AsString := xVar;
      cdsCCanje.FieldByName('CANJE').AsString := xCje;
      cdsCCanje.FieldByName('CLIEID').AsString := cdsReporte.FieldByName('CLIEID').AsString;
      cdsCCanje.FieldByName('CLIERUC').AsString := cdsReporte.FieldByName('CLIERUC').AsString;
      cdsCCanje.FieldByName('DOCID').AsString := cdsReporte.FieldByName('DOCID').AsString;
      cdsCCanje.FieldByName('TDIARID').AsString := xTDiar;
      cdsCCanje.FieldByName('CCCMPRB').AsString := xNoreg;
      cdsCCanje.FieldByName('CJFCANJE').AsDateTime := FEC;
      cdsCCanje.FieldByName('CJFVALOR').AsDateTime := FEC;
      cdsCCanje.FieldByName('CJFCOMP').AsDateTime := FEC;
      cdsCCanje.FieldByName('TMONID').AsString := TMO;
      cdsCCanje.FieldByName('CJTCAMBIO').AsFloat := FRound(xxTCambio, 15, 4);
      cdsCCanje.FieldByName('CJLOTE').AsString := '';
      cdsCCanje.FieldByName('CPTOID').AsString := '';
      cdsCCanje.FieldByName('CUENTAID').AsString := cdsReporte.FieldByName('CTATOTAL').AsString; //DMCXC.cdsMovCxC.FieldByName('CTATOTAL').AsString;
      cdsCCanje.FieldByName('CJGLOSA').AsString := cdsPlantilla.FieldByName('SITUADES').AsString;
      cdsCCanje.FieldByName('CJNUMLET').AsInteger := 0;
      cdsCCanje.FieldByName('CJDIAS').AsInteger := 0;
      cdsCCanje.FieldByName('CJLETINI').AsString := '';
      cdsCCanje.FieldByName('CJUSER').AsString := wUsuario;
      cdsCCanje.FieldByName('CJFREG').AsDateTime := DateS;
      cdsCCanje.FieldByName('CJFHOR').AsDateTime := TimeS;
      cdsCCanje.FieldByName('CJESTADO').AsString := 'P';
      cdsCCanje.FieldByName('CLAUXID').AsString := cdsReporte.FieldByName('CLAUXID').AsString;
      cdsCCanje.FieldByName('CJEGIRADO').AsString := cdsReporte.FieldByName('CLIEDES').AsString;

      If BuscaFecha('TGE114', 'Fecha', FEC) Then
      Begin
         cdsCCanje.FieldByName('CJAAMM').AsString := cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // año+mes
         cdsCCanje.FieldByName('CJAA').AsString := cdsQry2.FieldByName('FECANO').AsString;
         cdsCCanje.FieldByName('CJMM').AsString := cdsQry2.FieldByName('FECMES').AsString; // mes
         cdsCCanje.FieldByName('CJDD').AsString := cdsQry2.FieldByName('FECDIA').AsString; // día
         cdsCCanje.FieldByName('CJTRI').AsString := cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
         cdsCCanje.FieldByName('CJSEM').AsString := cdsQry2.FieldByName('FECSEM').AsString; // semestre
         cdsCCanje.FieldByName('CJSS').AsString := cdsQry2.FieldByName('FECSS').AsString; // semana
         cdsCCanje.FieldByName('CJAATRI').AsString := cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
         cdsCCanje.FieldByName('CJAASEM').AsString := cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
         cdsCCanje.FieldByName('CJAASS').AsString := cdsQry2.FieldByName('FECAASS').AsString; // año+semana
      End;

      cdsCCanje.Post;
      sSQL := ' SELECT * FROM CXC307 WHERE CIAID=' + QuotedStr(CIA) + ' AND TCANJEID=''GL'' AND CANJE=' + QuotedStr(xCje);
      cdsCCanje.DataRequest(sSQL);
      AplicaDatos(DMCXC.cdsCCanje, 'CCanje');

      dDebe := 0;
      dHaber := 0;

      While Not cdsPlantilla.EOF Do
      Begin
         cdsDetCxC.Insert;
         If BuscaFecha('TGE114', 'Fecha', FEC) Then
         Begin
            cdsDetCxC.FieldByName('CCANOMES').AsString := cdsQry2.FieldByName('FECANO').AsString + cdsQry2.FieldByName('FECMES').AsString;
            cdsDetCxC.FieldByName('CCAAAA').AsString := cdsQry2.FieldByName('FECANO').AsString;
            cdsDetCxC.FieldByName('CCMM').AsString := cdsQry2.FieldByName('FECMES').AsString; // mes
            cdsDetCxC.FieldByName('CCDD').AsString := cdsQry2.FieldByName('FECDIA').AsString; // día
            cdsDetCxC.FieldByName('CCTRI').AsString := cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
            cdsDetCxC.FieldByName('CCSEM').AsString := cdsQry2.FieldByName('FECSEM').AsString; // semestre
            cdsDetCxC.FieldByName('CCSS').AsString := cdsQry2.FieldByName('FECSS').AsString; // semana
            cdsDetCxC.FieldByName('CCAATRI').AsString := cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
            cdsDetCxC.FieldByName('CCAASEM').AsString := cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
            cdsDetCxC.FieldByName('CCAASS').AsString := cdsQry2.FieldByName('FECAASS').AsString; // año+semana
         End;
         cdsDetCxC.FieldByName('CIAID').AsString := CIA;
         cdsDetCxC.FieldByName('TDIARID').AsString := xTDiar;
         cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg;
         cdsDetCxC.FieldByName('CLAUXID').AsString := cdsReporte.FieldByName('CLAUXID').AsString;
         cdsDetCxC.FieldByName('CLIEID').AsString := cdsReporte.FieldByName('CLIEID').AsString;
         cdsDetCxC.FieldByName('CLIERUC').AsString := cdsReporte.FieldByName('CLIERUC').AsString;
         cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := FEC;
         cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
         cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
         cdsDetCxC.FieldByName('CCFREG').AsDateTime := dateS;
         cdsDetCxC.FieldByName('CCHREG').AsDateTime := timeS;
         cdsDetCxC.FieldByName('TCANJEID').AsString := xVar;
         cdsDetCxC.FieldByName('CCCANJE').AsString := xCje;

         sSQL := 'CIAID=' + QuotedStr(CIA) + ' AND DOCID=' + QuotedStr(TDO) +
            ' AND TMONID=' + QuotedStr(TMO) + ' AND TVTAID=' + QuotedStr(ZNA);
         BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', sSQL, 'CPTOCAB');

         cdsDetCxC.FieldByName('TREGID').AsString := cdsQry.FieldByName('TREGID').AsString;
         cdsDetCxC.FieldByName('TIPDET').AsString := cdsQry.FieldByName('TIPDET').AsString;
         cdsDetCxC.FieldByName('CCDH').AsString := cdsPlantilla.FieldByName('DH').AsString;

         cdsDetCxC.FieldByName('DOCID').AsString := TDO;
         cdsDetCxC.FieldByName('CCSERIE').AsString := cdsReporte.FieldByName('CCSERIE').AsString;
         cdsDetCxC.FieldByName('CPTOID').AsString := ''; // OJO //DMCXC.cdsQry.FieldByName('CPTOCAB').AsString;
         cdsDetCxC.FieldByName('CUENTAID').AsString := cdsPlantilla.FieldByName('CUENTAID').AsString;
         cdsDetCxC.FieldByName('CCGLOSA').AsString := cdsPlantilla.FieldByName('CTADES').AsString;
         cdsDetCxC.FieldByName('TMONID').AsString := TMO;
         cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := xxTCambio;

         If cdsReporte.FieldByName('UBIID').AsString <> wsOfi Then //banco
         Begin
            If cdsPlantilla.FieldByName('TIPOREL').AsString = 'B' Then
            Begin
               cdsDetCxC.FieldByName('CCNODOC').AsString := NDO;
               cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsReporte.FieldByName('CCFEMIS').AsDateTime;
               cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsReporte.FieldByName('CCFVCMTO').AsDateTime;
               cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := cdsReporte.FieldByName('CCSALEXT').AsFloat;
               cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := cdsReporte.FieldByName('CCSALLOC').AsFloat;
               cdsDetCxC.FieldByName('CCMTOORI').AsFloat := cdsReporte.FieldByName('CCSALORI').AsFloat;
               cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsReporte.FieldByName('CCTCAMAJ').AsFloat;
            End;

            If cdsPlantilla.FieldByName('TIPOREL').AsString = 'M' Then
            Begin
               cdsDetCxC.FieldByName('CCNODOC').AsString := NDO;
               cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsReporte.FieldByName('CCFEMIS').AsDateTime;
               cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsReporte.FieldByName('CCFVCMTO').AsDateTime;
               cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := cdsReporte.FieldByName('CCMTOEXT').AsFloat;
               cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := cdsReporte.FieldByName('CCMTOLOC').AsFloat;
               cdsDetCxC.FieldByName('CCMTOORI').AsFloat := cdsReporte.FieldByName('CCMTOORI').AsFloat;
               cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsReporte.FieldByName('CCTCAMAJ').AsFloat;
            End;

            If cdsPlantilla.FieldByName('TIPOREL').AsString = 'H' Then
            Begin
               cdsDetCxC.FieldByName('CCNODOC').AsString := cdsQry10.FieldByName('CCNODOC').AsString;
               cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsQry10.FieldByName('CCFEMIS').AsDateTime;
               cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsQry10.FieldByName('CCFVCMTO').AsDateTime;
               cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(cdsReporte.FieldByName('CCMTOEXT').AsFloat - cdsReporte.FieldByName('CCSALEXT').AsFloat, 15, 2);
               cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(cdsReporte.FieldByName('CCMTOLOC').AsFloat - cdsReporte.FieldByName('CCSALLOC').AsFloat, 15, 2);
               cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(cdsReporte.FieldByName('CCMTOORI').AsFloat - cdsReporte.FieldByName('CCSALORI').AsFloat, 15, 2);
               cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsQry10.FieldByName('CCTCAMAJ').AsFloat;
            End;
         End
         Else //cartera
         Begin
            If cdsPlantilla.FieldByName('TIPOREL').AsString = 'H' Then
            Begin
               cdsDetCxC.FieldByName('CCNODOC').AsString := cdsQry10.FieldByName('CCNODOC').AsString;
               cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsQry10.FieldByName('CCFEMIS').AsDateTime;
               cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsQry10.FieldByName('CCFVCMTO').AsDateTime;
               cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(cdsQry10.FieldByName('CCMTOEXT').AsFloat, 15, 2);
               cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(cdsQry10.FieldByName('CCMTOLOC').AsFloat, 15, 2);
               cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(cdsQry10.FieldByName('CCMTOORI').AsFloat, 15, 2);
               cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsQry10.FieldByName('CCTCAMAJ').AsFloat;
            End;
            If cdsPlantilla.FieldByName('TIPOREL').AsString = 'M' Then
            Begin
               If TMO = wTMonLoc Then
               Begin
                  cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(cdsReporte.FieldByName('CCMTOEXT').AsFloat - cdsReporte.FieldByName('CCPAGEXT').AsFloat, 15, 2);
                  cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(cdsReporte.FieldByName('CCMTOLOC').AsFloat - cdsReporte.FieldByName('CCPAGLOC').AsFloat, 15, 2);
                  cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(cdsReporte.FieldByName('CCMTOORI').AsFloat - cdsReporte.FieldByName('CCPAGORI').AsFloat, 15, 2);
               End
               Else
               Begin
                  cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(cdsReporte.FieldByName('CCMTOEXT').AsFloat - cdsReporte.FieldByName('CCPAGEXT').AsFloat, 15, 2);
                  cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound((cdsReporte.FieldByName('CCMTOEXT').AsFloat - cdsReporte.FieldByName('CCPAGEXT').AsFloat) * cdsReporte.FieldByName('CCTCAMAJ').AsFloat, 15, 2);
                  cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(cdsReporte.FieldByName('CCMTOORI').AsFloat - cdsReporte.FieldByName('CCPAGORI').AsFloat, 15, 2);
               End;

               cdsDetCxC.FieldByName('CCNODOC').AsString := NDO;
               cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsReporte.FieldByName('CCFEMIS').AsDateTime;
               cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsReporte.FieldByName('CCFVCMTO').AsDateTime;
               cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsReporte.FieldByName('CCTCAMAJ').AsFloat;
            End;
         End;

         cdsDetCxC.Post;
         If (cdsPlantilla.FieldByName('TIPDEST').AsString = 'O') Or
            (cdsPlantilla.FieldByName('TIPDEST').AsString = 'D') Then
         Begin
            If cdsPlantilla.FieldByName('DH').AsString = 'D' Then
               dDebe := dDebe + FRound(cdsDetCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            If cdsPlantilla.FieldByName('DH').AsString = 'H' Then
               dHaber := dHaber + FRound(cdsDetCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2);
         End;

         cdsPlantilla.Next;
      End;
      AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');

      If FRound(dDebe, 15, 2) > FRound(dHaber, 15, 2) Then
      Begin
      //HABER GANANCIA
         GeneraDiferenciaCambioPlantilla('D1', TMO, CIA, xTDiar, xNoreg, cdsReporte.FieldByName('CLAUXID').AsString,
            cdsReporte.FieldByName('CLIEID').AsString, cdsReporte.FieldByName('CLIERUC').AsString,
            xCje, TDO, '000', NDO, dDebe, dHaber, xxTcambio, FEC, cdsReporte.FieldByName('CCFEMIS').AsDateTime, cdsReporte.FieldByName('CCFVCMTO').AsDateTime);
      End
      Else
      Begin
         If FRound(dDebe, 15, 2) < FRound(dHaber, 15, 2) Then
         Begin
        // DEBE PERDIDA
            GeneraDiferenciaCambioPlantilla('D2', TMO, CIA, xTDiar, xNoreg, cdsReporte.FieldByName('CLAUXID').AsString,
               cdsReporte.FieldByName('CLIEID').AsString, cdsReporte.FieldByName('CLIERUC').AsString,
               xCje, TDO, '000', NDO, dDebe, dHaber, xxTcambio, FEC, cdsReporte.FieldByName('CCFEMIS').AsDateTime, cdsReporte.FieldByName('CCFVCMTO').AsDateTime);
         End;
      End;
   End;
End;

Procedure TDMCXC.UpdContPlantilla(Const CIA, TDO, NDO, UBI, SIT, TMO, ZNA: String; FEC: TDate);
Var
   xCje, xVar, xNoReg, xTDiar, xTAutoNum, xTAno, xTMes: String;
   sSQL: String;
   a, m, d: word;
   nNoReg: integer;
   xxTCambio, dDebe, dHaber: double;
Begin
   sSQL := ' SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(CIA) + ' AND DOCID=' + QuotedStr(TDO) +
      ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(NDO);
   cdsReporte.Close;
   cdsReporte.DataRequest(sSQL);
   cdsReporte.Open;

   DecodeDate(FEC, a, m, d);
   xTAno := StrZero(IntToStr(a), 4);
   xTMes := StrZero(IntToStr(m), 2);

   sSQL := 'TMonId=''' + wTMonExt + ''' and '
      + 'Fecha=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + ''' )';
   xxTCambio := 0;
   If length(BuscaQry('dspTGE', 'TGE107', '*', sSQL, 'TMonId')) > 0 Then
   Begin
      xxTCambio := cdsQry.fieldbyname('TCAM' + wVRN_TipoCambio).AsFloat;
   End
   Else
   Begin
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   cdsDetCxC.Close;
   cdsDetCxC.DataRequest('SELECT * FROM CXC302 WHERE CIAID=''XXX''');
   cdsDetCxC.Open;
   While Not cdsDetCxC.EOF Do
   Begin
      cdsDetCxC.Delete;
   End;
   cdsPlantilla.First;

   If cdsPlantilla.RecordCount > 0 Then
   Begin
    //1. Calcula el Numero de Registro.
    //2. Crea la Cabecera del CXC307

      xTDiar := cdsPlantilla.FieldByName('TDIARID').AsString;
      xTAutoNum := DisplayDescrip('TGE104', 'AUTONUM', 'TDIARID', xTDiar);
      xNoReg := UltimoRegistro(xTAutoNum, CIA, xTDiar, xTAno, xTMes);
      nNoReg := StrToInt(xNoReg);
      xNoReg := '';
      xNoReg := StrZero(GrabaUltimoRegistro(xTAutoNum, CIA, xTDiar, xTAno, xTMes, nNoReg), 10);

      xVar := 'GL';
      xCje := StrZero(BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', 'CIAID=' + QuotedStr(CIA) + ' AND TCANJEID=' + QuotedStr(xVar)), 6);

      sSQL := ' SELECT * FROM CXC307 WHERE CIAID=''CLG'' AND TCANJEID=''CLG'' AND CANJE=''CLG'' ';
      cdsCCanje.Close;
      cdsCCanje.DataRequest(sSQL);
      cdsCCanje.Open;

      cdsCCanje.Insert;
      cdsCCanje.FieldByName('CIAID').AsString := CIA;
      cdsCCanje.FieldByName('TCANJEID').AsString := xVar;
      cdsCCanje.FieldByName('CANJE').AsString := xCje;
      cdsCCanje.FieldByName('CLIEID').AsString := cdsReporte.FieldByName('CLIEID').AsString;
      cdsCCanje.FieldByName('CLIERUC').AsString := cdsReporte.FieldByName('CLIERUC').AsString;
      cdsCCanje.FieldByName('DOCID').AsString := cdsReporte.FieldByName('DOCID').AsString;
      cdsCCanje.FieldByName('TDIARID').AsString := xTDiar;
      cdsCCanje.FieldByName('CCCMPRB').AsString := xNoreg;
      cdsCCanje.FieldByName('CJFCANJE').AsDateTime := FEC;
      cdsCCanje.FieldByName('CJFVALOR').AsDateTime := FEC;
      cdsCCanje.FieldByName('CJFCOMP').AsDateTime := FEC;
      cdsCCanje.FieldByName('TMONID').AsString := TMO;
      cdsCCanje.FieldByName('CJTCAMBIO').AsFloat := FRound(xxTCambio, 15, 4);
      cdsCCanje.FieldByName('CJLOTE').AsString := '';
      cdsCCanje.FieldByName('CPTOID').AsString := '';
      cdsCCanje.FieldByName('CUENTAID').AsString := cdsReporte.FieldByName('CTATOTAL').AsString;
      cdsCCanje.FieldByName('CJGLOSA').AsString := cdsPlantilla.FieldByName('SITUADES').AsString;
      cdsCCanje.FieldByName('CJNUMLET').AsInteger := 0;
      cdsCCanje.FieldByName('CJDIAS').AsInteger := 0;
      cdsCCanje.FieldByName('CJLETINI').AsString := '';
      cdsCCanje.FieldByName('CJUSER').AsString := wUsuario;
      cdsCCanje.FieldByName('CJFREG').AsDateTime := DateS;
      cdsCCanje.FieldByName('CJFHOR').AsDateTime := TimeS;
      cdsCCanje.FieldByName('CJESTADO').AsString := 'P';
      cdsCCanje.FieldByName('CLAUXID').AsString := cdsReporte.FieldByName('CLAUXID').AsString;
      cdsCCanje.FieldByName('CJEGIRADO').AsString := cdsReporte.FieldByName('CLIEDES').AsString;

      If BuscaFecha('TGE114', 'Fecha', FEC) Then
      Begin
         cdsCCanje.FieldByName('CJAAMM').AsString := cdsQry2.FieldByName('FECANO').AsString + cdsQry2.FieldByName('FECMES').AsString; // año+mes
         cdsCCanje.FieldByName('CJAA').AsString := cdsQry2.FieldByName('FECANO').AsString;
         cdsCCanje.FieldByName('CJMM').AsString := cdsQry2.FieldByName('FECMES').AsString; // mes
         cdsCCanje.FieldByName('CJDD').AsString := cdsQry2.FieldByName('FECDIA').AsString; // día
         cdsCCanje.FieldByName('CJTRI').AsString := cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
         cdsCCanje.FieldByName('CJSEM').AsString := cdsQry2.FieldByName('FECSEM').AsString; // semestre
         cdsCCanje.FieldByName('CJSS').AsString := cdsQry2.FieldByName('FECSS').AsString; // semana
         cdsCCanje.FieldByName('CJAATRI').AsString := cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
         cdsCCanje.FieldByName('CJAASEM').AsString := cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
         cdsCCanje.FieldByName('CJAASS').AsString := cdsQry2.FieldByName('FECAASS').AsString; // año+semana
      End;

      cdsCCanje.Post;
      sSQL := ' SELECT * FROM CXC307 WHERE CIAID=' + QuotedStr(CIA) + ' AND TCANJEID=''GL'' AND CANJE=' + QuotedStr(xCje);
      cdsCCanje.DataRequest(sSQL);
      AplicaDatos(cdsCCanje, 'CCanje');

      dDebe := 0;
      dHaber := 0;

      While Not cdsPlantilla.EOF Do
      Begin
         cdsDetCxC.Insert;
         If BuscaFecha('TGE114', 'Fecha', FEC) Then
         Begin
            cdsDetCxC.FieldByName('CCANOMES').AsString := cdsQry2.FieldByName('FECANO').AsString + cdsQry2.FieldByName('FECMES').AsString;
            cdsDetCxC.FieldByName('CCAAAA').AsString := cdsQry2.FieldByName('FECANO').AsString;
            cdsDetCxC.FieldByName('CCMM').AsString := cdsQry2.FieldByName('FECMES').AsString; // mes
            cdsDetCxC.FieldByName('CCDD').AsString := cdsQry2.FieldByName('FECDIA').AsString; // día
            cdsDetCxC.FieldByName('CCTRI').AsString := cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
            cdsDetCxC.FieldByName('CCSEM').AsString := cdsQry2.FieldByName('FECSEM').AsString; // semestre
            cdsDetCxC.FieldByName('CCSS').AsString := cdsQry2.FieldByName('FECSS').AsString; // semana
            cdsDetCxC.FieldByName('CCAATRI').AsString := cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
            cdsDetCxC.FieldByName('CCAASEM').AsString := cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
            cdsDetCxC.FieldByName('CCAASS').AsString := cdsQry2.FieldByName('FECAASS').AsString; // año+semana
         End;
         cdsDetCxC.FieldByName('CIAID').AsString := CIA;
         cdsDetCxC.FieldByName('TDIARID').AsString := xTDiar;
         cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg;
         cdsDetCxC.FieldByName('CLAUXID').AsString := cdsReporte.FieldByName('CLAUXID').AsString;
         cdsDetCxC.FieldByName('CLIEID').AsString := cdsReporte.FieldByName('CLIEID').AsString;
         cdsDetCxC.FieldByName('CLIERUC').AsString := cdsReporte.FieldByName('CLIERUC').AsString;
         cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := FEC;
         cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
         cdsDetCxC.FieldByName('CCUSER').AsString := wUsuario;
         cdsDetCxC.FieldByName('CCFREG').AsDateTime := dateS;
         cdsDetCxC.FieldByName('CCHREG').AsDateTime := timeS;
         cdsDetCxC.FieldByName('TCANJEID').AsString := xVar;
         cdsDetCxC.FieldByName('CCCANJE').AsString := xCje;

         sSQL := 'CIAID=' + QuotedStr(CIA) + ' AND DOCID=' + QuotedStr(TDO) +
            ' AND TMONID=' + QuotedStr(TMO) + ' AND TVTAID=' + QuotedStr(ZNA);
         BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', sSQL, 'CPTOCAB');

         cdsDetCxC.FieldByName('TREGID').AsString := cdsQry.FieldByName('TREGID').AsString;
         cdsDetCxC.FieldByName('TIPDET').AsString := cdsQry.FieldByName('TIPDET').AsString;
         cdsDetCxC.FieldByName('CCDH').AsString := cdsPlantilla.FieldByName('DH').AsString;

         cdsDetCxC.FieldByName('DOCID').AsString := TDO;
         cdsDetCxC.FieldByName('CCSERIE').AsString := cdsReporte.FieldByName('CCSERIE').AsString;
         cdsDetCxC.FieldByName('CCNODOC').AsString := NDO;

         cdsDetCxC.FieldByName('CPTOID').AsString := ''; // OJO //cdsQry.FieldByName('CPTOCAB').AsString;
         cdsDetCxC.FieldByName('CUENTAID').AsString := cdsPlantilla.FieldByName('CUENTAID').AsString;
         cdsDetCxC.FieldByName('CCGLOSA').AsString := cdsPlantilla.FieldByName('CTADES').AsString;

         cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := cdsReporte.FieldByName('CCTCAMAJ').AsFloat;
         cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := xxTCambio;
         cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := cdsReporte.FieldByName('CCFEMIS').AsDateTime;
         cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := cdsReporte.FieldByName('CCFVCMTO').AsDateTime;
         cdsDetCxC.FieldByName('TMONID').AsString := TMO;

         If cdsPlantilla.FieldByName('TIPDEST').AsString = 'O' Then
         Begin
            cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := cdsReporte.FieldByName('CCMTOEXT').AsFloat;
            cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := cdsReporte.FieldByName('CCMTOLOC').AsFloat;
            cdsDetCxC.FieldByName('CCMTOORI').AsFloat := cdsReporte.FieldByName('CCMTOORI').AsFloat;
         End
         Else
         Begin
            If TMO = wTMonLoc Then
            Begin
               cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := cdsReporte.FieldByName('CCMTOEXT').AsFloat;
               cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := cdsReporte.FieldByName('CCMTOLOC').AsFloat;
               cdsDetCxC.FieldByName('CCMTOORI').AsFloat := cdsReporte.FieldByName('CCMTOORI').AsFloat;
            End
            Else
            Begin
               cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := cdsReporte.FieldByName('CCMTOEXT').AsFloat;
               cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(cdsReporte.FieldByName('CCMTOEXT').AsFloat * xxTCambio, 15, 2);
               cdsDetCxC.FieldByName('CCMTOORI').AsFloat := cdsReporte.FieldByName('CCMTOORI').AsFloat;
            End;
         End;

         cdsDetCxC.Post;
         If (cdsPlantilla.FieldByName('TIPDEST').AsString = 'O') Or
            (cdsPlantilla.FieldByName('TIPDEST').AsString = 'D') Then
         Begin
            If cdsPlantilla.FieldByName('DH').AsString = 'D' Then
               dDebe := dDebe + FRound(cdsDetCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2);
            If cdsPlantilla.FieldByName('DH').AsString = 'H' Then
               dHaber := dHaber + FRound(cdsDetCxC.FieldByName('CCMTOLOC').AsFloat, 15, 2);
         End;

         cdsPlantilla.Next;
      End;
      AplicaDatos(cdsDetCxC, 'DetCxC');

      If FRound(dDebe, 15, 2) > FRound(dHaber, 15, 2) Then
      Begin
      //HABER GANANCIA
         GeneraDiferenciaCambioPlantilla('D1', TMO, CIA, xTDiar, xNoreg, cdsReporte.FieldByName('CLAUXID').AsString,
            cdsReporte.FieldByName('CLIEID').AsString, cdsReporte.FieldByName('CLIERUC').AsString,
            xCje, TDO, '000', NDO, dDebe, dHaber, xxTcambio, FEC, cdsReporte.FieldByName('CCFEMIS').AsDateTime, cdsReporte.FieldByName('CCFVCMTO').AsDateTime);
      End
      Else
      Begin
         If FRound(dDebe, 15, 2) < FRound(dHaber, 15, 2) Then
         Begin
        // DEBE PERDIDA
            GeneraDiferenciaCambioPlantilla('D2', TMO, CIA, xTDiar, xNoreg, cdsReporte.FieldByName('CLAUXID').AsString,
               cdsReporte.FieldByName('CLIEID').AsString, cdsReporte.FieldByName('CLIERUC').AsString,
               xCje, TDO, '000', NDO, dDebe, dHaber, xxTcambio, FEC, cdsReporte.FieldByName('CCFEMIS').AsDateTime, cdsReporte.FieldByName('CCFVCMTO').AsDateTime);
         End;
      End;
   End;
End;

Procedure TDMCXC.Ajusta(Const CIA: String; FEC: TDate);
Var
   xSQL, xFDa: String;
   sZona, sDocid, Ubiant, SitAnt, ItemAnt, sLetra, sTMO, sPeriodo: String;
   xFec, xAAMM, xAA, xMM, xDD, xTri, xSem, xSS: String;
   sFlagConta, xWhere, sSELECT: String;
   wAno, wMes, wDia: word;
   xxTCambio: Double;

Begin

   DecodeDate(FEC, wAno, wMes, wDia);
   sPeriodo := InttoStr(wAno) + StrZero(IntToStr(wMes), 2);
   sTMO := wTMonExt;
   sFlagConta := 'P';
   // Tipo de Cambio

   xWhere := 'TMonId=' + QuotedStr(sTMO) + ' and '
      + 'Fecha=' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + ''' )';
   xxTCambio := 0;
   If length(BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
   Begin
      xxTCambio := cdsQry.fieldbyname('TCam' + wVRN_TipoCambio).Value;
   End
   Else
   Begin
      Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
   End;

   xFDa := wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, FEC) + '''' + ')';
   xFec := DatetoStr(FEC);
   sPeriodo := Copy(xFec, 7, 4) + Copy(xFec, 4, 2);
   xAA := Copy(xFec, 7, 4);
   xMM := Copy(xFec, 4, 2);
   If BuscaFecha('TGE114', 'Fecha', FEC) Then
   Begin
      xDD := cdsQry2.FieldByName('FecDia').Value; // día
      xTri := cdsQry2.FieldByName('FecTrim').Value; // trimestre
      xSem := cdsQry2.FieldByName('FecSem').Value; // semestre
      xSS := cdsQry2.FieldByName('FecSS').Value; // semana
   End;

   xSQL := ' SELECT DISTINCT CCNODOC FROM CXC302 ' +
      ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(sPeriodo) + ' AND TMONID=' + QuotedStr(sTMO) + ' AND TCANJEID=''TL'' AND ' +
      ' CCNODOC NOT IN (SELECT CCNODOC FROM CXC302 ' +
      ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(sPeriodo) + ' AND TMONID=' + QuotedStr(sTMO) + ' AND TCANJEID=''TL'' AND FLAGCONTA=''C'') ';

   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   cdsQry.First;

   While Not cdsQry.EOF Do
   Begin
      sLetra := cdsQry.FieldByName('CCNODOC').AsString;

      xSQL := ' SELECT DISTINCT ITEM,UBIID,SITID,DOCID FROM CXC302 ' +
         ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(sPeriodo) + ' AND TMONID=' + QuotedStr(sTMO) + ' AND TCANJEID=''TL'' AND CCNODOC=' + QuotedStr(sLetra) + ' AND ITEM= ' +
         ' (SELECT MAX(ITEM) ITEM FROM CXC302 ' +
         ' WHERE CIAID=' + QuotedStr(CIA) + ' AND CCANOMES=' + QuotedStr(sPeriodo) + ' AND TMONID=' + QuotedStr(sTMO) + ' AND TCANJEID=''TL'' AND CCNODOC=' + QuotedStr(sLetra) + ') ';

      cdsQry4.Close;
      cdsQry4.DataRequest(xSQL);
      cdsQry4.Open;
      cdsQry4.First;
      UbiAnt := cdsQry4.FieldByName('UBIID').AsString;
      SitAnt := cdsQry4.FieldByName('SITID').AsString;
      ItemAnt := cdsQry4.FieldByName('ITEM').AsString;
      sDocId := cdsQry4.FieldByName('DOCID').AsString;

      //CAPTURO LA ZONA DE LA LETRA
      xWhere := ' CIAID=' + QuotedStr(CIA) + ' AND DOCID=' + QuotedStr(sDocId) + ' AND CCNODOC=' + QuotedStr(sLetra);
      sZona := BuscaQry('dspTGE', 'CXC301', 'TVTAID', xWhere, 'TVTAID');

      // ACTUALIZA LOS MONTOS EN SOLES PARA EL TIPO DE CAMBIO DE LA OPERACION
      xSQL := ' UPDATE CXC302 A ' +
         ' SET A.CCTCAMPR=' + FloatToStr(xxTCambio) +
         '     ,A.CCMTOLOC=ROUND(A.CCMTOEXT*' + FloatToStr(xxTCambio) + ',2) ' +
         ' WHERE A.CIAID=' + QuotedStr(CIA) + ' AND A.CCANOMES=' + QuotedStr(xAAMM) +
         ' AND A.TCANJEID=''TL'' AND A.TMONID=' + QuotedStr(sTMO) + ' AND A.CCNODOC=' + QuotedStr(sLetra) +
         ' AND A.CCDH=''H'' AND A.TIPCTA=''P'' AND ITEM=' + QuotedStr(ItemAnt);
      Try
         DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;

      //CALCULA LA CANTIDAD EN SOLES PARA EL REGISTRO A SER INSERTADO
      If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
      Begin
         xSQL := ' SELECT SUM(CASE WHEN CCDH=''D'' THEN CCMTOLOC ELSE (-1)*CCMTOLOC END) MONTO FROM CXC302 A ' +
            ' WHERE A.CIAID=' + QuotedStr(CIA) + ' AND A.CCANOMES=' + QuotedStr(xAAMM) +
            ' AND A.TCANJEID=''TL'' AND A.TMONID=' + QuotedStr(sTMO) + ' AND A.CCNODOC=' + QuotedStr(sLetra) + ' AND ITEM=' + QuotedStr(ItemAnt);
      End
      Else
      Begin
         If (SRV_D = 'ORACLE') Then
         Begin
            xSQL := ' SELECT SUM(DECODE(CCDH,''D'',CCMTOLOC,(-1)*CCMTOLOC )) MONTO FROM CXC302 A ' +
               ' WHERE A.CIAID=' + QuotedStr(CIA) + ' AND A.CCANOMES=' + QuotedStr(xAAMM) +
               ' AND A.TCANJEID=''TL'' AND A.TMONID=' + QuotedStr(sTMO) + ' AND A.CCNODOC=' + QuotedStr(sLetra) + ' AND ITEM=' + QuotedStr(ItemAnt);
         End;
      End;

      cdsQry2.Close;
      cdsQry2.DataRequest(xSQL);
      cdsQry2.Open;

      // INSERTA LA CUENTA DE DIFERENCIA DE CAMBIO QUE HACE CUADRAR EL ASIENTO ANTERIOR
      xSQL := ' INSERT INTO CXC302 ( ';
      xSQL := xSQL + ' CCGLOSA,CIAID, TDIARID, CCANOMES, CCNOREG, CUENTAID, CPTOID, ';
      xSQL := xSQL + ' CLAUXID, CLIEID, SITID, UBIID, FLAGCONTA, ITEM, CCOSID, DOCID, CCSERIE, CCNODOC, ';
      xSQL := xSQL + ' CCDH, CCTCAMPR, CCMTOORI, CCMTOLOC, CCMTOEXT, ';
      xSQL := xSQL + ' CCFEMIS, CCFVCMTO, CCFCOMP, CCESTADO, ';
      xSQL := xSQL + ' CCUSER, CCFREG, CCHREG, TMONID, TCANJEID, ';
      xSQL := xSQL + ' CCAAAA, CCMM, CCDD, CCTRI, CCSEM, CCSS, ';
      xSQL := xSQL + ' CCAATRI, CCAASEM, CCAASS,TIPCTA ) ';

      If cdsQry2.FieldByName('MONTO').Value > 0 Then
      Begin
         If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
         Begin
            sSELECT := '';
            sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(sPeriodo) + ' CCANOMES,L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
            sSELECT := sSELECT + ' L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(ItemAnt) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
            sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
            sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
            sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
            sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
            sSELECT := sSELECT + ' FROM CXC205 F ';
            sSELECT := sSELECT + ' LEFT JOIN CXC301 L ON L.CCNODOC=' + QuotedStr(sLetra) + ' AND F.CIAID=L.CIAID AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
            sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID AND F.ZONA=L.TVTAID AND L.DOCID=' + QuotedStr(sDOCID);
            sSELECT := sSELECT + ' LEFT JOIN TGE104 ON TGE104.TDIARID=F.TDIARID ';
            sSELECT := sSELECT + ' LEFT JOIN TGE103 ON TGE103.TMONID=F.TMONID ';
            sSELECT := sSELECT + ' WHERE F.TIPCTA=''D'' AND F.DH=''H'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(sTMO) + ' AND F.ZONA=' + QuotedStr(sZona) + ')';
            xSQL := xSQL + sSELECT
         End
         Else
         Begin
            If (SRV_D = 'ORACLE') Then
            Begin
               sSELECT := '';
               sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(sPeriodo) + ' CCANOMES,L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
               sSELECT := sSELECT + ' L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(ItemAnt) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
               sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
               sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
               sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
               sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
               sSELECT := sSELECT + ' FROM CXC205 F,CXC301 L,TGE104,TGE103 ';
               sSELECT := sSELECT + ' WHERE L.CCNODOC=' + QuotedStr(sLetra) + ' AND F.CIAID=L.CIAID(+) AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
               sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID(+) AND F.ZONA=L.TVTAID(+) AND L.DOCID=' + QuotedStr(sDOCID);
               sSELECT := sSELECT + ' AND  TGE104.TDIARID(+)=F.TDIARID ';
               sSELECT := sSELECT + ' AND  TGE103.TMONID(+)=F.TMONID ';
               sSELECT := sSELECT + ' AND F.TIPCTA=''D'' AND F.DH=''H'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(sTMO) + ' AND F.ZONA=' + QuotedStr(sZona) + ')';
               xSQL := xSQL + sSELECT;
            End;
         End;
      End
      Else
      Begin
         If (SRV_D = 'DB2NT') Or
            (SRV_D = 'DB2400') Then
         Begin
            sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(sPeriodo) + ' CCANOMES,L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
            sSELECT := sSELECT + ' L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(ItemAnt) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
            sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
            sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
            sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
            sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
            sSELECT := sSELECT + ' FROM CXC205 F ';
            sSELECT := sSELECT + ' LEFT JOIN CXC301 L ON L.CCNODOC=' + QuotedStr(sLetra) + ' AND F.CIAID=L.CIAID AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
            sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID AND F.ZONA=L.TVTAID AND L.DOCID=' + QuotedStr(sDOCID);
            sSELECT := sSELECT + ' LEFT JOIN TGE104 ON TGE104.TDIARID=F.TDIARID ';
            sSELECT := sSELECT + ' LEFT JOIN TGE103 ON TGE103.TMONID=F.TMONID ';
            sSELECT := sSELECT + ' WHERE F.TIPCTA=''D'' AND F.DH=''D'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(sTMO) + ' AND F.ZONA=' + QuotedStr(sZona) + ')';
            xSQL := xSQL + sSELECT
         End
         Else
         Begin
            If (SRV_D = 'ORACLE') Then
            Begin
               sSELECT := sSELECT + ' (SELECT ''CD:''||L.CLIEID||'' LT:''||L.CCNODOC||'' DI:''||TGE104.TDIARABR||'' MD:''||TGE103.TMONABR GLOSA, F.CIAID,F.TDIARID,' + QuotedStr(sPeriodo) + ' CCANOMES,L.CCNOREG,F.CUENTAID,L.CCPTOTOT,L.CLAUXID, ';
               sSELECT := sSELECT + ' L.CLIEID,' + QuotedStr(SITANT) + ' SITID, ' + QuotedStr(UBIANT) + ' UBIID, ' + QuotedStr(sFlagConta) + ' FLAGCONTA, ' + QuotedStr(ItemAnt) + ' ITEM, '''' CCOSID,L.DOCID,L.CCSERIE,L.CCNODOC,F.DH CCDH,' + FloatToStr(xxTCambio) + ', ';
               sSELECT := sSELECT + ' 0, ' + FloatToStr(FRound(Abs(cdsQry2.FieldByName('MONTO').AsFloat), 15, 2)) + ' , 0, ';
               sSELECT := sSELECT + ' L.CCFEMIS, L.CCFVCMTO,' + xFDA + ' CCFCOMP, L.CCESTADO, L.CCUSER, L.CCFREG, ';
               sSELECT := sSELECT + ' L.CCHREG, L.TMONID, ''TL'' TCANJEID, ' + QuotedStr(xAA) + ' CCAAAA, ' + QuotedStr(xMM) + ' CCMM, ' + QuotedStr(xDD) + ' CCDD, ' + QuotedStr(xTRI) + ' CCTRI, ' + QuotedStr(xSEM) + ' CCSEM, ';
               sSELECT := sSELECT + QuotedStr(xSS) + ' CCSS, ' + QuotedStr(xAA + xTRI) + ' CCAATRI, ' + QuotedStr(xAA + xSEM) + ' CCAASEM, ' + QuotedStr(xAA + xSS) + ' CCAASS, F.TIPCTA ';
               sSELECT := sSELECT + ' FROM CXC205 F,CXC301 L,TGE104,TGE103 ';
               sSELECT := sSELECT + ' WHERE  L.CCNODOC=' + QuotedStr(sLetra) + ' AND F.CIAID=L.CIAID(+) AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND ';
               sSELECT := sSELECT + '                  F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=L.TMONID(+) AND F.ZONA=L.TVTAID(+) AND L.DOCID=' + QuotedStr(sDOCID);
               sSELECT := sSELECT + ' AND TGE104.TDIARID(+)=F.TDIARID ';
               sSELECT := sSELECT + ' AND TGE103.TMONID(+)=F.TMONID ';
               sSELECT := sSELECT + ' AND F.TIPCTA=''D'' AND F.DH=''D'' AND F.CIAID=' + QuotedStr(CIA) + ' AND F.UBICAID=' + QuotedStr(UBIANT) + ' AND F.SITUAID=' + QuotedStr(SITANT) + ' AND F.TMONID=' + QuotedStr(sTMO) + ' AND F.ZONA=' + QuotedStr(sZona) + ')';
               xSQL := xSQL + sSELECT;
            End;
         End;
      End;
      Try
         DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;

      cdsQry.Next;
   End;
End;

Procedure TDMCXC.UndHyst(Const CIA, TDO, NDO: String);
Var
   sSQL: AnsiString;
   v: String;
Begin
   sSQL := 'SELECT MAX(CCHIST) AS VALOR FROM CXC402 ' +
      ' WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + '''' +
      '  AND CCNODOC=''' + NDO + '''';

   cdsQry6.ProviderName := 'dspTGE';
   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL);
   cdsQry6.Open;

   If Not cdsQry6.FieldByName('VALOR').IsNull Then
      v := cdsQry6.FieldByName('VALOR').AsString
   Else
      Exit;

   sSQL := ' UPDATE CXC301 A SET (' +
      ' A.CIAID , A.CCANOMES, A.TDIARID, A.CCLOTE, A.CCNOREG, A.CCFCMPRB, A.CLAUXID, A. ' +
      ' A.CLIEID, A.CLIERUC, A.DOCID, A.CCSERIE, A.CCNODOC, A.CCFRECEP, A.CCFEMIS, A.  ' +
      ' A.CCFVCMTO, A.TMONID, A.CCTCAMPR, A.CCTCAMPA, A.CCESTADO, A.CC_CONTA, A.       ' +
      ' A.VEID, A.CCOMERID, A.CCFLCRED, A.CCGRAVAD, A.CCNOGRAV, A.CCFLETE, A.CCGASFIN, A. ' +
      ' A.CCSERVIC, A.CCDCTO, A.CCIGV, A.CCISC, A.CCMTOORI, A.CCMTOLOC, A.CCMTOEXT, A.    ' +
      ' A.CCPAGORI, A.CCPAGLOC, A.CCPAGEXT, A.CCSALORI, A.CCSALLOC, A.CCSALEXT, A.      ' +
      ' A.CCPTOTOT, A.CTATOTAL, A.TCANJEID, A.CCCANJE, A.CCFCANJE, A.CCAAAA, A.CCMM, A.  ' +
      ' A.CCDD, A.CCTRI, A.CCSEM, A.CCSS, A.CCAATRI, A.CCAASEM, A.CCAASS, A.CCPEDIDO, A. ' +
      ' A.CCFVALOR, A.BANCOID, A.CCBCOID, A.SITUACION, A.UBICACION, A.CCFSITUA, A.     ' +
      ' A.DOCSIT, A.NODOCSIT, A.FLAGVAR, A.CCUSER, A.CCFREG, A.FLAGVAR2, A.CCHREG, A.  ' +
      ' A.CCNLETBCO, A.CCNRENOV, A.CCACEPTA, A.CCNPLABCO, A.CCFPLABCO, A.CCNREFINA, A. ' +
      ' A.CCAVAL, A.CCNVECPRT, A.CCESTCJE, A.CCNFACTURA, A.CCNSERFACTL, A.CCFVENLREAL, ' +
      ' A.UBIID, A.SITID, A.CCOENV, A.OEFNUMFOR ) = ' +
      ' (SELECT ' +
      ' B.CIAID , B.CCANOMES, B.TDIARID, B.CCLOTE, B.CCNOREG, B.CCFCMPRB, B.CLAUXID, B.   ' +
      ' B.CLIEID, B.CLIERUC, B.DOCID, B.CCSERIE, B.CCNODOC, B.CCFRECEP, B.CCFEMIS, B.     ' +
      ' B.CCFVCMTO, B.TMONID, B.CCTCAMPR, B.CCTCAMPA, B.CCESTADO, B.CC_CONTA, B.        ' +
      ' B.VEID, B.CCOMERID, B.CCFLCRED, B.CCGRAVAD, B.CCNOGRAV, B.CCFLETE, B.CCGASFIN, B. ' +
      ' B.CCSERVIC, B.CCDCTO, B.CCIGV, B.CCISC, B.CCMTOORI, B.CCMTOLOC, B.CCMTOEXT, B.    ' +
      ' B.CCPAGORI, B.CCPAGLOC, B.CCPAGEXT, B.CCSALORI, B.CCSALLOC, B.CCSALEXT, B.      ' +
      ' B.CCPTOTOT, B.CTATOTAL, B.TCANJEID, B.CCCANJE, B.CCFCANJE, B.CCAAAA, B.CCMM, B.   ' +
      ' B.CCDD, B.CCTRI, B.CCSEM, B.CCSS, B.CCAATRI, B.CCAASEM, B.CCAASS, B.CCPEDIDO, B.    ' +
      ' B.CCFVALOR, B.BANCOID, B.CCBCOID, B.SITUACION, B.UBICACION, B.CCFSITUA, B.      ' +
      ' B.DOCSIT, B.NODOCSIT, B.FLAGVAR, B.CCUSER, B.CCFREG, B.FLAGVAR2, B.CCHREG, B.     ' +
      ' B.CCNLETBCO, B.CCNRENOV, B.CCACEPTA, B.CCNPLABCO, B.CCFPLABCO, B.CCNREFINA, B.  ' +
      ' B.CCAVAL, B.CCNVECPRT, B.CCESTCJE, B.CCNFACTURA, B.CCNSERFACTL, B.CCFVENLREAL,' +
      ' B.UBIID, B.SITID, B.CCOENV, B.OEFNUMFOR FROM CXC402 B' +
      ' WHERE B.CIAID=''' + CIA + ''' AND B.DOCID=''' + TDO + '''' +
      '   AND B.CCNODOC=''' + NDO + ''' AND B.CCHIST=''' + v + '''' +
      ' WHERE A.CIAID=''' + CIA + ''' AND A.DOCID=''' + TDO + '''' +
      '   AND A.CCNODOC=''' + NDO + ''')';

   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL);
   cdsQry6.Execute;

   sSQL := ' DELETE FROM CXC402 WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + ''''
      + ' AND CCNODOC=''' + NDO + ''' AND CCHIST=''' + v + '''';
   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL);
   cdsQry6.Execute;
End;

Procedure TDMCXC.UpdUBI(Const CIA, TDO, NDO, UBI: String);
Var
   sSQL_UBICA,
      sTM: String;
   Y, M, D: Word;
   ss, sem: Double;
Begin
 // procesar ....
   sSQL_UBICA := '';

   decodedate(now, Y, M, D);

   Case M Of
      1..3: sTM := '1';
      4..6: sTM := '2';
      7..9: sTM := '3';
      10..12: sTM := '4';
   End;

   ss := ((Now - Encodedate(Y, 1, 1)) / 7) + 1;
   sem := (M Div 7) + 1;

// ACTUALIZAR DATOS
   sSQL_UBICA := 'UPDATE CXC301 SET UBIID=''' + UBI +
      ''', CCAAAA=''' + IntToStr(Y) +
      ''', CCMM=''' + StrZero(IntToStr(M), 2) +
      ''', CCDD=''' + StrZero(IntToStr(D), 2) +
      ''', CCTRI=''' + sTM +
      ''', CCSEM=''' + FloatToStr(sem) +
      ''', CCSS=''' + StrZero(FloatToStr(ss), 2) +
      ''', CCAATRI=''' + IntToStr(Y) + sTM +
      ''', CCAASEM=''' + IntToStr(Y) + FloatToStr(sem) +
      ''', CCAASS=''' + IntToStr(Y) + StrZero(FloatToStr(ss), 2) + '''' + ' ' +
      'WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + '''' +
      ' AND CCNODOC=''' + NDO + '''';
   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL_UBICA);
   cdsQry6.Execute;

End;

Procedure TDMCXC.UpdSIT(Const CIA, TDO, NDO, SIT: String);
Var
   sSQL_SITUA,
      sTM: String;
   Y, M, D: Word;
   ss, sem: Double;
Begin
  // procesar ....
   sSQL_SITUA := '';

   decodedate(now, Y, M, D);

   Case M Of
      1..3: sTM := '1';
      4..6: sTM := '2';
      7..9: sTM := '3';
      10..12: sTM := '4';
   End;

   ss := ((Now - Encodedate(Y, 1, 1)) / 7) + 1;
   sem := (M Div 7) + 1;

  // ACTUALIZAR DATOS
   sSQL_SITUA := 'UPDATE CXC301 SET SITID=''' + SIT +
      ''', CCAAAA=''' + IntToStr(Y) +
      ''', CCMM=''' + StrZero(IntToStr(M), 2) +
      ''', CCDD=''' + StrZero(IntToStr(D), 2) +
      ''', CCTRI=''' + sTM +
      ''', CCSEM=''' + FloatToStr(sem) +
      ''', CCSS=''' + StrZero(FloatToStr(ss), 2) +
      ''', CCAATRI=''' + IntToStr(Y) + sTM +
      ''', CCAASEM=''' + IntToStr(Y) + FloatToStr(sem) +
      ''', CCAASS=''' + IntToStr(Y) + StrZero(FloatToStr(ss), 2) + '''' + ' ' +
      'WHERE CIAID=''' + CIA + ''' AND DOCID=''' + TDO + '''' +
      ' AND CCNODOC=''' + NDO + '''';
   cdsQry6.Close;
   cdsQry6.DataRequest(sSQL_SITUA);
   cdsQry6.Execute;

End;

Function TDMCXC.BuscaCxCDoc(PCia, PDoc, PSerie, PNoDoc: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'select CIAID from CXC301 Where ';
   xSQL := xSQL + 'CiaID=' + '''' + PCia + '''' + ' and ';
   xSQL := xSQL + 'DocID=' + '''' + PDoc + '''' + ' and ';
   xSQL := xSQL + 'CCSerie=' + '''' + PSerie + '''' + ' and ';
   xSQL := xSQL + 'CCNoDoc=' + '''' + PNoDoc + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Function TDMCXC.BuscaCxCLet(PCia, PDoc, PNoDoc: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'select * from CXC301 Where ';
   xSQL := xSQL + 'CiaID=' + '''' + PCia + '''' + ' and ';
   xSQL := xSQL + 'DocID=' + '''' + PDoc + '''' + ' and ';
   xSQL := xSQL + 'CCNoDoc=' + '''' + PNoDoc + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Function TDMCXC.BuscaCxCReg(PCia, PTDiario, PAnoMes, PNoReg: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'select * from CXC301 Where ';
   xSQL := xSQL + 'CiaID=' + '''' + PCia + '''' + ' and ';
   xSQL := xSQL + 'TDiarID=' + '''' + PTDiario + '''' + ' and ';
   xSQL := xSQL + 'CCAnoMes=' + '''' + PAnoMes + '''' + ' and ';
   xSQL := xSQL + 'CCNoReg=' + '''' + PNoReg + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Function TDMCXC.BuscaDetCxCReg(PCia, PTDiario, PAnoMes, PNoReg: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'Select * from CXC302 Where ';
   xSQL := xSQL + 'CiaID=' + '''' + PCia + '''' + ' and ';
   xSQL := xSQL + 'TDiarID=' + '''' + PTDiario + '''' + ' and ';
   xSQL := xSQL + 'CCAnoMes=' + '''' + PAnoMes + '''' + ' and ';
   xSQL := xSQL + 'CCNoReg=' + '''' + PNoReg + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Function TDMCXC.BuscaNotaCob(PCia, PNotC: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'select * from CXC303 Where CIAID=''' + PCia + ''' and NOTACOB=''' + PNotC + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Function TDMCXC.BuscaFecha(PTable, PKey: String; PVal: TDateTime): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'select * from ' + PTable + ' ';
   xSQL := xSQL + 'where ' + PKey + '= ' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, PVal) + '''' + ')';
   xSQL := UpperCase(xSQL);
   cdsQry2.Close;
   cdsQry2.ProviderName := 'dspTGE';
   cdsQry2.DataRequest(xSQL); //este es la llamada remota al provider del servidor
   cdsQry2.Open;
   If cdsQry2.RecordCount > 0 Then
      Result := True
   Else
      Result := False;
End;

Function FRound(xReal: double; xEnteros, xDecimal: Integer): double;
Var
   xNum, xParteEnt, xParteDec, xflgneg: String;
   xDec, Code: Integer;
   xMultiplo10, xUltdec, xNReal: Double;
Begin
   Result := 0;
   xflgneg := '0';

   xReal := strtofloat(floattostr(xReal));

   If xReal < 0 Then
   Begin
      xflgneg := '1';
      xReal := xReal * -1;
   End;

   If xReal = 0 Then exit;
// primer redondeo a un decimal + de lo indicado en los parámetros
   xDec := xDecimal + 1;
   If xDec = 0 Then xMultiplo10 := 1;
   If xDec = 1 Then xMultiplo10 := 10;
   If xDec = 2 Then xMultiplo10 := 100;
   If xDec = 3 Then xMultiplo10 := 1000;
   If xDec = 4 Then xMultiplo10 := 10000;
   If xDec = 5 Then xMultiplo10 := 100000;
   If xDec = 6 Then xMultiplo10 := 1000000;
   If xDec = 7 Then xMultiplo10 := 10000000;
   xParteDec := floattostr(int(xReal * xMultiplo10 - (int(xReal) * xMultiplo10)));
   If length(xParteDec) < xDec Then xParteDec := strZero(xParteDec, xDec);

   If length(xParteDec) >= xDec Then
      xultdec := strtofloat(copy(xParteDec, xDec, 1))
   Else
   Begin
      xUltDec := 0;
   End;
   xNReal := int(xReal * xMultiplo10 / 10);
   If xultdec >= 5 Then xNReal := xNReal + 1;

   If xflgneg = '1' Then
   Begin
      Result := (xNReal / (xMultiplo10 / 10)) * -1;
   End
   Else
   Begin
      Result := xNReal / (xMultiplo10 / 10);
   End;
End;

Function StrZero(xVar: String; xLargo: integer): String;
Var
   i: integer;
   s: String;
Begin
   s := '';
   For i := 1 To xLargo Do
   Begin
      s := s + '0';
   End;
   s := s + trim(xVar);
   result := copy(s, length(s) - (xLargo - 1), xLargo);
End;

Function TDMCXC.GrabaRegistroLetra(xAutoNum, xCia, xTDiario, xAno, xMes: String; xNumUsu: Integer): String;
Var
   xSQL: String;
Begin
   If xAutoNum <> 'N' Then
   Begin
      xSQL := '';
      xSQL := 'Select Numero from TGE301 '
         + 'Where CiaID=' + '''' + xCia + '''' + ' and '
         + 'TDiarID=' + '''' + xTDiario + '''';
      If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
      If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
      xSQL := UpperCase(xSQL);
      cdsQry2.Close;
      cdsQry2.ProviderName := 'dspTGE';
      cdsQry2.DataRequest(xSQL); // Llamada remota al provider del servidor
      cdsQry2.Open;

      If cdsQry2.FieldByName('Numero').Value = null Then
      Begin
         If xNumUsu > cdsQry2.FieldByName('Numero').AsInteger Then
            Result := IntToStr(xNumUsu)
         Else
         Begin
            Result := '1';
         End;

         xSQL := 'Insert into TGE301(CiaID,TDiarID';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ',Ano';
         If xAutoNum = 'M' Then xSQL := xSQL + ',Mes';
         xSQL := xSQL + ',Numero ) Values (' + '''' + xCia + '''' + ',' + '''' + xTDiario + '''';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ',' + '''' + xAno + '''';
         If xAutoNum = 'M' Then xSQL := xSQL + ',' + '''' + xMes + '''';
         xSQL := xSQL + ',' + Result + ' )';
         xSQL := UpperCase(xSQL);

         DCOM1.AppServer.EjecutaSQL(xSQL);

      End
      Else
      Begin
         If xNumUsu > cdsQry2.FieldByName('Numero').AsInteger Then
            Result := IntToStr(xNumUsu)
         Else
         Begin
            Result := IntToStr(cdsQry2.FieldByName('Numero').Value + 1);
         End;

         xSQL := 'Update TGE301 Set Numero=' + Result + ' ';
         xSQL := xSQL + 'Where CiaID=' + '''' + xCia + '''' + ' and TDiarID=' + '''' + xTDiario + '''';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
         If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
         xSQL := UpperCase(xSQL);

         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;
End;

Function TDMCXC.BuscaCanje(PCia, PTCa, PCje: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'select CANJE from CXC307 Where ';
   xSQL := xSQL + 'CiaID=' + '''' + PCia + '''' + ' and ';
   xSQL := xSQL + 'TCanjeID=' + '''' + PTCa + '''' + ' and ';
   xSQL := xSQL + 'Canje=' + '''' + PCje + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      result := True
   Else
      result := False;
End;

Function TDMCXC.BuscaQry2(wPrv, wTabla, wCampos, wWhere, wResult: String): String;
Var
   xSQL: String;
Begin
{  wPrv    = Provider al que hace referencia el cdsQry
   wTabla  = Tabla en la que se va a hacer la búsqueda
   wCampos = Campos que va a considerar en el "select" de sentencia SQL
   wWhere  = Condicional de la búsqueda
   wResult = Resultado que entrega la búsqueda }
   xSQL := '';
   xSQL := 'Select ' + wCampos + ' from ' + wTabla;
   If length(wWhere) > 0 Then xSQL := xSQL + ' where ' + wWhere;
   cdsQry6.Close;
   cdsQry6.ProviderName := wPrv;
   cdsQry6.DataRequest(xSQL); //esta es la llamada remota al provider del servidor
   cdsQry6.Open;
   result := cdsQry6.FieldByName(wResult).AsString;
End;

Function TDMCXC.DisplayDescrip(PTable, PDescrip, PKey, PVal: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT * FROM ' + PTable + ' ';
   xSQL := xSQL + 'where ' + PKey + '=' + '''' + PVal + '''';
   cdsQry2.Close;
   cdsQry2.ProviderName := 'dspTGE';
   cdsQry2.DataRequest(xSQL); //este es la llamada remota al provider del servidor
   cdsQry2.Open;
   result := cdsQry2.FieldByName(PDescrip).AsString;
End;

Procedure TDMCXC.cdsTMonAfterOpen(DataSet: TDataSet);
Var
   xWhere: String;
Begin
   // determina Tipo de Moneda Extranjera Oficial (normalmente dólares)
   xWhere := 'TMon_Loc=' + '''' + 'E' + '''';
   wTMonExt := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonId');
// Inicio HPC_201601_CXC
// Inicializa variables de Descripción de Monedas
   wTMonExtDes := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonDes');
   xWhere := 'TMon_Loc=' + '''' + 'L' + '''';
   wTMonLoc := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonId');
   wTMonLocDes := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonDes');
// Fin HPC_201601_CXC
End;

Function TDMCXC.UltimoRegistro(xAutoNum, xCia, xTDiario, xAno, xMes: String): String;
Var
   xSQL: String;
Begin
   If xAutoNum <> 'N' Then
   Begin
      xSQL := '';
      xSQL := 'Select Numero from TGE301 Where CiaID=' + '''' + xCia + '''' + ' and '
         + 'TDiarID=' + '''' + xTDiario + '''';
      If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
      If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';

      cdsQry2.Close;
      cdsQry2.ProviderName := 'dspTGE';
      cdsQry2.DataRequest(xSQL); //este es la llamada remota al provider del servidor
      cdsQry2.Open;

      If cdsQry2.FieldByName('Numero').Value = null Then
         result := '1'
      Else
      Begin
         result := inttostr(cdsQry2.FieldByName('Numero').Value + 1);
      End;
   // Inicio HPC_201601_CXC
   // ajustes pafra definir último número de Registro de Ventas
      If xAutoNum = 'M' Then
      Begin
         xSQL := ' Select 1 NUMREG '
               + '   from CXC301 '
               + '  where CIAID='   +quotedstr(xCia)
               + '    and CCANOMES='+quotedstr(xAno+xMes)
               + '    and TDIARID=' +quotedstr(xTDiario)
               + '    and CCNOREG=' +quotedstr(strZero(result,10));
         cdsQry2.Close;
         cdsQry2.DataRequest(xSQL); //este es la llamada remota al provider del servidor
         cdsQry2.Open;
         if cdsQry2.RecordCount>0 then
         begin
            xSQL := ' Select max(CCNOREG) NUMREG '
                  + '   from CXC301 '
                  + '  where CIAID='   +quotedstr(xCia)
                  + '    and CCANOMES='+quotedstr(xAno+xMes)
                  + '    and TDIARID=' +quotedstr(xTDiario);
            cdsQry2.Close;
            cdsQry2.DataRequest(xSQL); //este es la llamada remota al provider del servidor
            cdsQry2.Open;
            result := inttostr(strtoint(cdsQry2.FieldByName('NUMREG').AsString)+1);
         end;
      End;
   // Fin HPC_201601_CXC
   End
   Else
      result := '';
End;

Function TDMCXC.GrabaUltimoRegistro(xAutoNum, xCia, xTDiario, xAno, xMes: String; xNumUsu: Integer): String;
Var
   xSQL: String;
Begin
   wSaldosAuxiliar := True;
   If xAutoNum <> 'N' Then
   Begin
      xSQL := '';
      xSQL := 'Select Numero from TGE301 '
         + 'Where CiaID=' + '''' + xCia + '''' + ' and '
         + 'TDiarID=' + '''' + xTDiario + '''';
      If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
      If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
      xSQL := UpperCase(xSQL);
      cdsQry2.Close;
      cdsQry2.ProviderName := 'dspTGE';
      cdsQry2.DataRequest(xSQL); // Llamada remota al provider del servidor
      cdsQry2.Open;

      If cdsQry2.FieldByName('Numero').Value = null Then
      Begin
         Result := IntToStr(xNumUsu);

         xSQL := 'Insert into TGE301(CiaID,TDiarID';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ',Ano';
         If xAutoNum = 'M' Then xSQL := xSQL + ',Mes';
         xSQL := xSQL + ',Numero ) Values (' + '''' + xCia + '''' + ',' + '''' + xTDiario + '''';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ',' + '''' + xAno + '''';
         If xAutoNum = 'M' Then xSQL := xSQL + ',' + '''' + xMes + '''';
         xSQL := xSQL + ',' + Result + ' )';
         xSQL := UpperCase(xSQL);

         Try
            DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            wSaldosAuxiliar := False;
         // Inicio HPC_201601_CXC
         // variable no permite continuidad de grabación
            xSigueGrab := False;
         // Fin HPC_201601_CXC
         End;

      End
      Else
      Begin
         Result := IntToStr(xNumUsu);
         xSQL := 'Update TGE301 Set Numero=' + Result + ' ';
         xSQL := xSQL + 'Where CiaID=' + '''' + xCia + '''' + ' and TDiarID=' + '''' + xTDiario + '''';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
         If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
         xSQL := UpperCase(xSQL);
         Try
            DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
         // Inicio HPC_201601_CXC
         // variable no permite continuidad de grabación
            xSigueGrab := False;
         // Fin HPC_201601_CXC
            wSaldosAuxiliar := False;
         End;

      End;
   End;
End;

Function TDMCXC.ActualizaUltimoRegistro(xAutoNum, xCia, xTDiario, xAno, xMes: String; xNumUsu: Integer): String;
Var
   xSQL: String;
Begin
   wSaldosAuxiliar := True;
   If xAutoNum <> 'N' Then
   Begin
      xSQL := '';
      xSQL := 'Select Numero from TGE301 '
         + 'Where CiaID=' + '''' + xCia + '''' + ' and '
         + 'TDiarID=' + '''' + xTDiario + '''';
      If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
      If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
      xSQL := UpperCase(xSQL);
      cdsQry2.Close;
      cdsQry2.ProviderName := 'dspTGE';
      cdsQry2.DataRequest(xSQL); // Llamada remota al provider del servidor
      cdsQry2.Open;

      If xNumUsu = 0 Then
      Begin
         Result := IntToStr(xNumUsu);
         xSQL := 'Delete FROM TGE301 ';
         xSQL := xSQL + 'Where CiaID=' + '''' + xCia + '''' + ' and TDiarID=' + '''' + xTDiario + '''';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
         If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
         xSQL := UpperCase(xSQL);
         Try
            DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            wSaldosAuxiliar := False;
         End;

      End
      Else
      Begin
         Result := IntToStr(xNumUsu);
         xSQL := 'Update TGE301 Set Numero=' + Result + ' ';
         xSQL := xSQL + 'Where CiaID=' + '''' + xCia + '''' + ' and TDiarID=' + '''' + xTDiario + '''';
         If (xAutoNum = 'A') Or (xAutoNum = 'M') Then xSQL := xSQL + ' and Ano=' + '''' + xAno + '''';
         If xAutoNum = 'M' Then xSQL := xSQL + ' and Mes=' + '''' + xMes + '''';
         xSQL := UpperCase(xSQL);
         Try
            DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            wSaldosAuxiliar := False;
         End;

      End;
   End;
End;

Procedure TDMCXC.MovCxCDataRequest;
Var
   xSQL: String;
Begin
   xSQL := 'Select * from CXC301';
   cdsMovCxC.Close;
   cdsMovCxC.DataRequest(xSQL);
   cdsMovCxC.Open;
   cdsMovCxC2.Close;
   cdsMovCxC2.DataRequest(xSQL);
   cdsMovCxC2.Open;
End;

Function TDMCXC.BuscaUltTGE(xPrv, xTabla, xCampo, xWhere: String): String;
Var
   xSQL: String;
Begin
   xSQL := '';
   xSQL := 'Select max(' + xCampo + ') as MaxNum from ' + xTabla;
   If length(xWhere) > 0 Then xSQL := xSQL + ' where ' + xWhere;
   cdsQry2.Close;
   cdsQry2.ProviderName := xPrv;
   cdsQry2.DataRequest(xSQL); //esta es la llamada remota al provider del servidor
   cdsQry2.Open;
   If (cdsQry2.FieldByName('MaxNum').Value = null)
      Or (trim(cdsQry2.FieldByName('MaxNum').AsString) = '') Then
      result := '1'
   Else
   Begin
      result := inttostr(strtoint(Trim(cdsQry2.FieldByName('MaxNum').AsString)) + 1);
   End;
End;

Function TDMCXC.BuscaUltNumero(ssCia, ssTD, ssSer: String): String;
Var
   xSQL, xWhere: String;
   nLen: Integer;
Begin
   xWhere := 'CIAID=''' + ssCia + ''' and DOCID=''' + ssTD + ''' and CCSERIE=''' + ssSer + '''';
   xSQL := '';
   xSQL := 'Select max(CCNODOC) as MaxNum from CXC301';
   If length(xWhere) > 0 Then xSQL := xSQL + ' Where ' + xWhere;
   cdsQry2.Close;
   cdsQry2.ProviderName := 'dspTGE';
   cdsQry2.DataRequest(xSQL); //esta es la llamada remota al provider del servidor
   cdsQry2.Open;
   If cdsQry2.FieldByName('MaxNum').Value = null Then
      result := '00000001'
   Else
   Begin
      nLen := Length(cdsQry2.FieldByName('MaxNum').AsString);
      If nLen <= 10 Then
      Begin
         result := inttostr(strtoint(Trim(cdsQry2.FieldByName('MaxNum').AsString)) + 1);
         result := StrZero(result, nLen);
      End;
   End;
End;

Procedure TDMCXC.cdsCanjesCCMTOLOCChange(Sender: TField);
Begin
{   If xFlagCal then begin
      xFlagCal := False;
      If cdsCanjes.fieldbyname('CCTCamCje').Value>0 then
         cdsCanjes.fieldbyname('CCMtoExt').AsFloat := FRound( cdsCanjes.fieldbyname('CCMtoLoc').AsFloat/cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
      end
    Else begin
      xFlagCal := True;
   end;
}
End;

Procedure TDMCXC.cdsCanjesCCMTOEXTChange(Sender: TField);
Begin
{   If xFlagCal then
      begin
         xFlagCal := False;
         If cdsCanjes.fieldbyname('CCTCamCje').AsFloat>0 then cdsCanjes.fieldbyname('CCMtoLoc').AsFloat := FRound( cdsCanjes.fieldbyname('CCMtoExt').AsFloat*cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
      end
   Else begin
      xFlagCal := True;
   end;
}
End;

Procedure TDMCXC.AplicaDatos(wCDS: TClientDataSet; wNomArch: String);
Var
   Delta, Results, OwnerData: OleVariant;
Begin
   If (wCDS.ChangeCount > 0) Or (wCDS.Modified) Then
   Begin
      If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
         DCOM1.AppServer.ParamDSPGraba('1', wNomArch); // 12/08/2002 a pedido de cesar se descomento

      wCDS.CheckBrowseMode;
      Results := DCOM1.AppServer.AS_ApplyUpdates(wCDS.ProviderName, wcds.Delta, -1,
         ErrorCount, OwnerData);
      cdsResultSet.Data := Results;
      wCDS.Reconcile(Results);

      If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
         DCOM1.AppServer.ParamDSPGraba('0', wNomArch);
   End;

End;

Function TDMCXC.BuscaUltFecha(xPrv, xTabla, xCampo, xWhere: String): TDate;
Var
   xSQL: String;
Begin
   xSQL := '';
   xSQL := 'Select max(' + xCampo + ') as MaxFecha from ' + xTabla;
   If length(xWhere) > 0 Then xSQL := xSQL + ' where ' + xWhere;

   cdsQry2.Close;
   cdsQry2.ProviderName := xPrv;
   cdsQry2.DataRequest(xSQL); //esta es la llamada remota al provider del servidor
   cdsQry2.Open;
   If cdsQry2.FieldByName('MaxFecha').Value = null Then
      result := StrToDate('01/01/2009')
   Else
   Begin
      result := (cdsQry2.FieldByName('MaxFecha').Value);
   End;
End;

Procedure TDMCXC.SaldosAuxiliar(xxCia, xxAnoMes, xxClAux, xxAux, xxSigno: String;
   xxImpMN, xxImpME: Double; xxtmonid: String);
Var
   xxAno, xxMes, xSQL, xxSaldo13: String;
   xxSaldo01, xxSaldo02, xxSaldo03, xxSaldo04, xxSaldo05, xxSaldo06: String;
   xxSaldo07, xxSaldo08, xxSaldo09, xxSaldo10, xxSaldo11, xxSaldo12: String;
   xxTotMN, xxTotME, xxToSMN, xxToSME: Double;
  //**03/01/2001 pjsv
   iX: integer;
   ssql, ssql1, xmes: String;
  //**
Begin
   xxAno := Copy(xxAnoMes, 1, 4);
   xxMes := Copy(xxAnoMes, 5, 2);
   xSQL := '';
  //CLG  *
   xSQL := 'Select CIAID from TGE401 where '
      + 'CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL); // Llamada remota al provider del servidor
   cdsQry.Open;
   If cdsQry.RecordCount = 0 Then
   Begin
      xSQL := 'Insert into TGE401(CIAID,ANO,CLAUXID,AUXID';
      If (xxSigno = '+') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + ', DEBETMN' + xxMes + ', DEBETME' + xxMes;
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', DEBESMN' + xxMes;
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', DEBESME' + xxMes;
      End;
      If (xxSigno = '-') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + ', HABETMN' + xxMes + ', HABETME' + xxMes;
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', HABESMN' + xxMes;
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', HABESME' + xxMes;
      End;
      xSQL := xSQL + ') Values (' + '''' + xxCia + '''' + ',' + '''' + xxAno + '''' + ','
         + '''' + xxClAux + '''' + ',' + '''' + xxAux + '''';
      xSQL := xSQL + ', ' + FloatToStr(xxImpMN) + ', ' + FloatToStr(xxImpME);
      If xxtmonid = wTMonLoc Then
         xSQL := xSQL + ', ' + FloatToStr(xxImpMN);
      If xxtmonid = wTMonExt Then
         xSQL := xSQL + ', ' + FloatToStr(xxImpME);

      If xxSigno = '=' Then
      Begin
         xSQL := xSQL + ', ' + FloatToStr(xxImpMN) + ', ' + FloatToStr(xxImpME);
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', ' + FloatToStr(xxImpMN);
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', ' + FloatToStr(xxImpME);
      End;
      xSQL := UpperCase(xSQL + ' ) ');
      DCOM1.AppServer.EjecutaSQL(xSQL);
   End
   Else
   Begin
    //** 15/02/2001 - pjsv, se quita porque duplicaba los montos
   //xxTotMN:= cdsQry.FieldByName('DEBETMN'+xxMes).AsFloat + xxImpMN;
    //xxTotME:= cdsQry.FieldByName('DEBETME'+xxMes).AsFloat + xxImpME;
   //xxToSMN:= cdsQry.FieldByName('DEBESMN'+xxMes).AsFloat + xxImpMN;
    //xxToSME:= cdsQry.FieldByName('DEBESME'+xxMes).AsFloat + xxImpME;
      xxTotMN := xxImpMN;
      xxTotME := xxImpME;
      xxToSMN := xxImpMN;
      xxToSME := xxImpME;
    //**

      xSQL := 'Update TGE401 Set ';
      If (xxSigno = '+') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + '  DEBETMN' + xxMes + '=' + wReplacCeros + '(DEBETMN' + xxMes + ' ,0)+ ' + FloatToStr(xxTotMN);
         xSQL := xSQL + ', DEBETME' + xxMes + '=' + wReplacCeros + '(DEBETME' + xxMes + ' ,0)+ ' + FloatToStr(xxTotME);
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', DEBESMN' + xxMes + '=' + wReplacCeros + '(DEBESMN' + xxMes + ' ,0)+ ' + FloatToStr(xxToSMN);
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', DEBESME' + xxMes + '=' + wReplacCeros + '(DEBESME' + xxMes + ' ,0)+ ' + FloatToStr(xxToSME);
      End;

      If (xxSigno = '-') Or (xxSigno = '=') Then
      Begin
         If xxSigno = '=' Then
            xSQL := xSQL + ',';
         xSQL := xSQL + '  HABETMN' + xxMes + '=' + wReplacCeros + '(HABETMN' + xxMes + ' ,0)+ ' + FloatToStr(xxTotMN);
         xSQL := xSQL + ', HABETME' + xxMes + '=' + wReplacCeros + '(HABETME' + xxMes + ' ,0)+ ' + FloatToStr(xxTotME);
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', HABESMN' + xxMes + '=' + wReplacCeros + '(HABESMN' + xxMes + ' ,0)+ ' + FloatToStr(xxToSMN);
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', HABESME' + xxMes + '=' + wReplacCeros + '(HABESME' + xxMes + ' ,0)+ ' + FloatToStr(xxToSME);
      End;
      xSQL := xSQL + ' Where CIAID=' + '''' + xxCia + '''' + ' and '
         + 'ANO=' + '''' + xxAno + '''' + ' and '
         + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
         + 'AUXID=' + '''' + xxAux + '''';
      xSQL := UpperCase(xSQL);
      DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
//////////////////////////////////////
//                                  //
//   Actualiza DebeTMN y HaberTME   //
//                                  //
//////////////////////////////////////
   xSQL := 'Update TGE401 Set ';
   sSQL := ' Where CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';
  //** 03/01/2001 - pjsv
   For iX := 0 To 13 Do
   Begin
      If iX = 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldTMN' + xmes + '=' +
            '(' + wReplacCeros + '(SaldTMN' + xmes + ',0)+' + wReplacCeros + '(DebeTMN' + xmes + ',0)-' + wReplacCeros + '(HabeTMN' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      If iX > 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldTMN' + xmes + '=';
         xmes := strzero(IntToStr(iX - 1), 2);
         xSQL := xSQL + '(' + wReplacCeros + '(SaldTMN' + xmes + ',0)';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + '+ ' + wReplacCeros + '(DebeTMN' + xmes + ',0)-' + wReplacCeros + '(HabeTMN' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;
   For iX := 0 To 13 Do
   Begin
      If iX = 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldTME' + xmes + '=' +
            '(' + wReplacCeros + '(SaldTME' + xmes + ',0)+' + wReplacCeros + '(DebeTME' + xmes + ',0)-' + wReplacCeros + '(HabeTME' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      If iX > 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldTME' + xmes + '=';
         xmes := strzero(IntToStr(iX - 1), 2);
         xSQL := xSQL + '(' + wReplacCeros + '(SaldTME' + xmes + ',0)';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + '+ ' + wReplacCeros + '(DebeTME' + xmes + ',0)-' + wReplacCeros + '(HabeTME' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;
  //**
//////////////////////////////////////
//                                  //
//   Actualiza DebeSMN y HaberSME   //
//                                  //
//////////////////////////////////////
  //** 03/01/2001 - pjsv
   For iX := 0 To 13 Do
   Begin
      If iX = 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldSMN' + xmes + '=' +
            '(' + wReplacCeros + '(SaldSMN' + xmes + ',0)+' + wReplacCeros + '(DebeSMN' + xmes + ',0)-' + wReplacCeros + '(HabeSMN' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      If iX > 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldSMN' + xmes + '=';
         xmes := strzero(
            IntToStr(iX - 1), 2);
         xSQL := xSQL + '(' + wReplacCeros + '(SaldSMN' + xmes + ',0)';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + '+ ' + wReplacCeros + '(DebeSMN' + xmes + ',0)-' + wReplacCeros + '(HabeSMN' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;
   For iX := 0 To 13 Do
   Begin
      If iX = 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldSME' + xmes + '=' +
            '(' + wReplacCeros + '(SaldSME' + xmes + ',0)+' + wReplacCeros + '(DebeSME' + xmes + ',0)-' + wReplacCeros + '(HabeSME' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      If iX > 0 Then
      Begin
         xSQL := 'Update TGE401 Set ';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + 'SaldSME' + xmes + '=';
         xmes := strzero(IntToStr(iX - 1), 2);
         xSQL := xSQL + '(' + wReplacCeros + '(SaldSME' + xmes + ',0)';
         xmes := strzero(IntToStr(iX), 2);
         xSQL := xSQL + '+ ' + wReplacCeros + '(DebeSME' + xmes + ',0)-' + wReplacCeros + '(HabeSME' + xmes + ',0) )';
         xSQL := UpperCase(xSQL + ssql);
         DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;
  //**
End;

//////////////////////////////////////
//                                  //
//   PROCEDIMIENTOS PARA ACCESOS    //
//                                  //
//////////////////////////////////////

Procedure TDMCXC.DataModuleCreate(Sender: TObject);
Var
   ssql, xWhere, xSQL2: String;
   inifile: TIniFile;
Begin
   Screen.Cursor := crHourGlass;
   DCOM1.Connected := False;

   If ParamStr(1) = '' Then
   Begin
      inifile := TIniFile.Create(ExtractFilePath(application.ExeName) + '\oaCfg.ini');
      DCOM1.Address := IniFile.ReadString('TCPIP', 'ADDRESS', '');
      wSRV := IniFile.ReadString('MOTOR', 'NAME', '');
   End;

   Try
      DCOM1.Connected := true;
   Except
     // por no realizar la conexion
      SHOWMESSAGE('ERROR de Conexión.');
      Exit;
   End;

   Try
      cIP := DMCXC.ObtenerIpdeNetbios(DMCXC.computerName);
   Except
      ShowMessage('ERROR de Conexión.');
      DCOM1.Connected := False;
      Exit;
   End;

   FCtrlAcceso := TFCtrlAcceso.Create(Application);
   wModulo := 'CXC';
   FCtrlAcceso.wDCOM1 := DCOM1;
   Screen.Cursor := crHourGlass;

   FCtrlAcceso.ShowModal;

   If FCtrlAcceso.cAccesoSistema = 'S' Then
   Begin
      wUsuario := FCtrlAcceso.dbeUsuario.Text;
      FCtrlAcceso.free;
   End
   Else
   Begin
      DCOM1.Connected := False;
      FCtrlAcceso.free;
      sClose := '1';
      Exit;
   End;

   If Not AccesosModulo Then
   Begin
      DCOM1.Connected := False;
      Screen.Cursor := CrDefault;
   End
   Else
   Begin

      If (wSRV = 'ORACLE') Then
      Begin
         xSQL2 := 'Select A.USERID, A.GRUPOID, B.MODULOID, B.TIPO, C.GRUPOADM '
            + 'From TGE007 A, TGE001 B, TGE003 C '
            + 'WHERE A.USERID=''' + wUsuario + ''' '
            + 'AND A.GRUPOID=B.GRUPOID(+) and B.MODULOID=''' + wModulo + ''''
            + 'AND A.GRUPOID=C.GRUPOID(+)';

      End;
      If (wSRV = 'DB2NT') Or (wSRV = 'DB2400') Then
      Begin
         xSQL2 := 'Select A.USERID, A.GRUPOID, B.MODULOID, B.TIPO, C.GRUPOADM '
            + 'From TGE007 A '
            + 'Left Outer Join TGE001 B ON (A.GRUPOID=B.GRUPOID) '
            + 'Left Outer Join TGE003 C ON (A.GRUPOID=C.GRUPOID) '
            + 'WHERE A.USERID=''' + wUsuario + ''' '
            + 'and B.MODULOID=''' + wModulo + '''';
      End;

      cdsUsuarios.Close;
      cdsUsuarios.DataRequest(xSQL2);
      cdsUsuarios.Open;
      cdsMGrupo.Open;
      cdsGrupos.Open;
      wAdmin := cdsUsuarios.fieldbyname('GrupoAdm').AsString;
//      cdsReglas.Open;
      cdsAcceso.Open;

    ///Apertura de Monedas/////////20/07  CIM
      xWhere := 'TMon_Loc=' + '''' + 'E' + '''';
      wTMonExt := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonId');
      xWhere := 'TMon_Loc=' + '''' + 'L' + '''';
      wTMonLoc := BuscaQry('dspTGE', 'TGE103', '*', xWhere, 'TMonId');
    ////////////
      wsCanCar := BuscaQry2('dspTGE', 'CXC104', 'SITUAID', 'SITUAFLAG=' + QuotedStr('C'), 'SITUAID');
      wsFEfe := BuscaQry2('dspTGE', 'TGE112', 'FPAGOID', 'FEFE=' + QuotedStr('1'), 'FPAGOID');
      wsFNDep := BuscaQry2('dspTGE', 'TGE112', 'FPAGOID', 'FNDE=' + QuotedStr('1'), 'FPAGOID');
      wsFChe := BuscaQry2('dspTGE', 'TGE112', 'FPAGOID', 'FCHQ=' + QuotedStr('1'), 'FPAGOID');
      wsChe := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''H''', 'DOCID');
      wsNDe := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''P'' AND DOCTIPREG=''ND''', 'DOCID');
      wsAnt := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'DOCID');
      wsLet := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');
      wsCob := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''C''', 'DOCID');
      wsFac := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''F''', 'DOCID');
      wsBol := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''B''', 'DOCID');
      wsNCre := BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''N''', 'DOCID');
      wsClie := BuscaQry2('dspTGE', 'TGE102', 'CLAUXID', 'CLAUXCP=''C''', 'CLAUXID');
      wsOfi := BuscaQry2('dspTGE', 'CXC105', 'UBICAID', 'UBICAFLAG=''O''', 'UBICAID');
      wsMen := BuscaQry2('dspTGE', 'CXC105', 'UBICAID', 'UBICAFLAG=''M''', 'UBICAID');
      wLima := BuscaQry2('dspTGE', 'FAC105', 'TVTAID', 'TVTAFLAG=''L''', 'TVTAID');
      wProv := BuscaQry2('dspTGE', 'FAC105', 'TVTAID', 'TVTAFLAG=''P''', 'TVTAID');
      wsCon := BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=''S''', 'COID');

      wModulo := 'CXC';
      wDifAjuG := '77601'; // Cuenta de Ganancia x Dif.Cambio
      wDifAjuP := '67601'; // Cuenta de Pérdida x Dif.Cambio
      wCptoAjG := '77601';
      wCptoAjP := '67601';
      wIdLetras := '51';
   //** 20/12/2000 - pjsv
      ssql := '';
      ssql := 'SELECT * FROM SOLREGLAS WHERE VRN_MODULO=' + QuotedStr(wModulo);
      cdsQry.Close;
      cdsQry.DataRequest(ssql);
      cdsQry.Open;
      bZona := (cdsQry.fieldbyname('VRN_ZONA').AsString = 'S');
      bSector := (cdsQry.fieldbyname('VRN_SECTOR').AsString = 'S');
      wVRN_VtaPed := cdsQry.fieldbyname('VRN_VTAPED').AsString;

      ssql := '';
      ssql := 'SELECT * FROM SOLCONFIG';
      cdsQry.Close;
      cdsQry.DataRequest(ssql);
      cdsQry.Open;
      If cdsQry.fieldbyname('SRV_PRESU').AsString = 'S' Then
         wActuaPresu := true
      Else
         wActuaPresu := False;

    // jcc 29/04/2002
      xSRV_RUTA := cdsQry.fieldbyname('SRV_RUTA').AsString;

      wAnchoGuia := 7;
      SRV_E := cdsqry.fieldbyname('SRV_EQUIP').AsString;
      SRV_D := cdsqry.fieldbyname('SRV_DB').AsString;
      SRV_V := cdsqry.fieldbyname('SRV_VERS').AsString;
      wRptCia := cdsqry.fieldbyname('RPTCIA').AsString;
      wRutaRpt := 'RTMs\' + wModulo + '\' + wRptCia;
      wVRN_TipoCambio := 'VPV';
      If (SRV_D = 'DB2NT') Or
         (SRV_D = 'DB2400') Then
      Begin
         wFormatFecha := 'YYYY-MM-DD';
         wFormatTime := 'HH:MM:SS';
         wReplacCeros := 'COALESCE';
         wRepFecServi := 'CURRENT DATE';
         wRepTimeServi := 'CURRENT TIME';
         wRepFuncDate := 'DATE(';
      End
      Else
         If SRV_D = 'ORACLE' Then
         Begin
            wFormatTime := 'HH:MM:SS';
            wFormatFecha := 'DD-MM-YYYY';
            wReplacCeros := 'NVL';
            wRepFecServi := 'SYSDATE';
            wRepTimeServi := 'SYSDATE';
            wRepFuncDate := 'TO_DATE(';
         End;

      wdIGV := StrToFloat(DisplayDescrip('TGE128', 'TASA', 'TIPDET', 'I1')) / 100;

      DecodeDate(DateS, wAnoHoy, wMesHoy, wDiaHoy);

      xSQL2 := 'Select * from TGE004 '
         + 'Where ModuloId=' + '''' + wModulo + ''''
         + ' and  UserID=' + '''' + wUsuario + '''';

      cdsAcceso.Close;
      cdsAcceso.DataRequest(xSQL2);
      cdsAcceso.Open;

      FiltraTabla(cdsCia, 'TGE101', 'CiaId');
      FiltraTabla(cdsClAux, 'TGE102', 'ClAuxId', 'MODULO LIKE ''%CXC%''');
      FiltraTabla(cdsTMon, 'TGE103', 'TMonId');
      FiltraTabla(cdsTDiario, 'TGE104', 'TDIARID');
      FiltraTabla(cdsBanco, 'TGE105', 'BancoId');
      FiltraTabla(cdsCCBco, 'TGE106', 'CCBcoId');
      FiltraTabla(cdsTDoc, 'TGE110', 'DocId');
      FiltraTabla(cdsTipReg, 'TGE128', 'TRegId');
      FiltraTabla(cdsSitua, 'CXC104', 'SituaId');
      FiltraTabla(cdsUbica, 'CXC105', 'UbicaId');
      FiltraTabla(cdsSerie, 'CXC103', 'SerieId');
      FiltraTabla(cdsCComer, 'CXC101', 'CComerId');
      FiltraTabla(cdsModelo, 'CXC102', 'DocId');
      FiltraTabla(cdsVende, 'CXC203', 'VeId');
      FiltraTabla(cdsNivel, 'CNT202', 'Nivel');
      FiltraTabla(cdsCCosto, 'TGE203', 'CCosId');
      FiltraTabla(cdsPais, 'TGE118', 'PaisId');
      FiltraTabla(cdsFPago, 'TGE112', 'FPAGOID');

      cFilterCiaUser := FiltraCiaPorUsuario(cdsCia);
      cFilterOrigenUser := FiltraOrigenPorUsuario_cia('TGE104', 'TDIARID');
      cFilterUsuarioUser := FiltraUsuarioPorUsuario_cia('TGE006', 'CCUSER');

   End;
   Screen.Cursor := CrDefault;

End;

Procedure TDMCXC.AccesosUsuarios(xxModulo, xxUsuario, xxTipo, xxForma: String);
Begin
   If Trim(cdsUsuarios.fieldbyname('GrupoId').AsString) = '' Then
   Begin
      cdsUsuarios.SetKey;
      cdsUsuarios.fieldbyname('UserId').AsString := xxUsuario;
      If Not cdsUsuarios.GotoKey Then Exit;
   End;

   cdsGrupos.Filter := '';
   If xxTipo = '1' Then
   Begin
      cdsGrupos.Filter := 'GrupoID=' + '''' + cdsUsuarios.fieldbyname('GrupoId').AsString + '''' + ' and '
         + 'ModuloID=' + '''' + xxModulo + '''' + ' and '
         + 'Tipo=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.fieldbyname('Objeto').Value, Screen.ActiveForm);
         wComponente.Enabled := False;
         cdsGrupos.Next;
      End;
   End;

   If xxTipo = '2' Then
   Begin
      cdsGrupos.Filter := 'GrupoID=' + '''' + cdsUsuarios.fieldbyname('GrupoId').AsString + '''' + ' and '
         + 'ModuloID=' + '''' + xxModulo + '''' + ' and '
         + 'Forma=' + '''' + xxForma + '''' + ' and '
         + 'Tipo=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.fieldbyname('Objeto').Value, Screen.ActiveForm);
         If (wComponente.Name = 'Z2bbtnModifica') Or
            (wComponente.Name = 'Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else
         Begin
            wComponente.Visible := False;
         End;
         cdsGrupos.Next;
      End;
   End;

End;

Procedure TDMCXC.AccesosUsuariosR(xxModulo, xxUsuario, xxTipo: String; xxForma: TForm);
Begin
   If Trim(cdsUsuarios.fieldbyname('GrupoId').AsString) = '' Then
   Begin
      cdsUsuarios.SetKey;
      cdsUsuarios.fieldbyname('UserId').AsString := xxUsuario;
      If Not cdsUsuarios.GotoKey Then Exit;
   End;

   cdsGrupos.Filter := '';
   If xxTipo = '1' Then
   Begin
      cdsGrupos.Filter := 'GrupoID=' + '''' + cdsUsuarios.fieldbyname('GrupoId').AsString + '''' + ' and '
         + 'ModuloID=' + '''' + xxModulo + '''' + ' and '
         + 'Tipo=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;

      If wAdmin = 'G' Then Exit;

      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.fieldbyname('Objeto').Value, xxForma);
         wComponente.Enabled := False;
         cdsGrupos.Next;
      End;
   End;

   If xxTipo = '2' Then
   Begin
      cdsGrupos.Filter := 'GrupoID=' + '''' + cdsUsuarios.fieldbyname('GrupoId').AsString + '''' + ' and '
         + 'ModuloID=' + '''' + xxModulo + '''' + ' and '
         + 'Forma=' + '''' + xxForma.Name + '''' + ' and '
         + 'Tipo=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;

      If wAdmin = 'G' Then Exit;

      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.fieldbyname('Objeto').Value, xxForma);
         If (wComponente.Name = 'Z2bbtnModifica') Or
            (wComponente.Name = 'Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else
         Begin
            wComponente.Visible := False;
         End;
         cdsGrupos.Next;
      End;
   End;
End;

Function TDMCXC.BuscaObjeto(Const xNombre: String; xForm: TForm): TControl;
Var
   ic: Integer;
Begin

   ic := xForm.ComponentCount - 1;
   While (xForm.Components[ic].Name <> xNombre) And (ic > -1) Do
   Begin
      Dec(ic);
   End;
   If xForm.Components[ic].Name = xNombre Then
      Result := TControl(xForm.Components[ic]);
End;

/////////////////////////////////////////////
/////////////////////////////////////////////
///                                       ///
///    PROCEDIMIENTOS PARA CONTABILIDAD   ///
///                                       ///
/////////////////////////////////////////////
/////////////////////////////////////////////

Procedure TDMCXC.GeneraContabilidad(xxCia, xxTDiario, xxAnoMM, xxNoComp: String;
   xForma: TForm);
Var
   xSQL: String;
Begin
   ////  Contabilización en Linea: requiere que en el DM del módulo exista
   ////  cdsMOVCNT1 debe hacer referencia a la tabla CNT301

   xSQL := 'Select * from CXC302 ';
   xSQL := xSQL + 'WHERE CIAID=' + '''' + xxCia + '''' + ' AND ';
   xSQL := xSQL + 'TDIARID=' + '''' + xxTDiario + '''' + ' AND ';
   xSQL := xSQL + 'CCANOMES=' + '''' + xxAnoMM + '''' + ' AND ';
   xSQL := xSQL + 'CCNOREG=' + '''' + xxNoComp + '''';
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.FieldByName('CCFLCDR').AsString = 'S' Then
      Raise Exception.Create(' Asiento ya fue Contabilizado....... ');
   // 1
   CreaPanel(xForma, 'Contabilizando');

   If SRV_D = 'DB2400' Then
   Begin
      wDBFunc01 := 'RRN(CXC302) ';
      wDBFunc02 := 'RRN(A) ';
   End
   Else
      If SRV_D = 'DB2NT' Then
      Begin
         wDBFunc01 := 'INT( RAND()*1000000 ) ';
         wDBFunc02 := 'INT( RAND()*1000000 ) ';
      End
      Else
         If SRV_D = 'ORACLE' Then
         Begin
            wDBFunc01 := 'CEIL( 1000000 ) ';
            wDBFunc02 := 'CEIL( 1000000 ) ';
         End;

   Tranferencia_CXC_a_CNT(xxCia, xxTDiario, xxAnoMM, xxNoComp);

   If Contabiliza(xxCia, xxTDiario, xxAnoMM, xxNoComp) Then
      PanelMsg('Asiento Contabilizando Final', 0);

   pnlConta.Free;
End;

Procedure TDMCXC.Tranferencia_CXC_a_CNT(xCia, xTDia, xAAMM, xNoComp: String);
Var
   xSQL: String;
Begin
   // 2
   PanelMsg('Transfiriendo Asiento a Contabilidad', 0);

   xSQL := 'INSERT INTO CNT301';
   xSQL := xSQL + '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CUENTAID, CNTREG ';
   xSQL := xSQL + ',CLAUXID, AUXID, AUXDES, CCOSID, CCOSDES, ';
   xSQL := xSQL + 'DOCID, CNTSERIE, CNTNODOC, DOCDES, ';
   xSQL := xSQL + 'CNTMODDOC, CNTGLOSA, CNTDH, CNTTCAMBIO, CNTMTOORI, CNTMTOLOC, ';
   xSQL := xSQL + 'CNTMTOEXT, CNTFEMIS, CNTFVCMTO, CNTFCOMP, CNTESTADO, ';
   xSQL := xSQL + 'CNTUSER, CNTFREG, CNTHREG, CNTMM, CNTDD, ';
   xSQL := xSQL + 'CNTTRI, CNTSEM, CNTANO, CNTSS, CNTAATRI, CNTAASEM, ';
   xSQL := xSQL + 'CNTAASS, TMONID, CNTCUADRE, CTADES, TDIARDES, FLAGVAR, CNTLOTE, ';
   xSQL := xSQL + 'CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME ) ';

   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
   Begin
      xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CCANOMES, A.CCNOREG, A.CUENTAID, ';
      xSQL := xSQL + ' CAST(A.NROASIENTO AS INTEGER)*10+A.ORDEN ORDEN , ';
     //** 22/08/2001 - PJSV, SOLO SE AGREGA EL NULL
      xSQL := xSQL + 'CASE WHEN B.CTA_AUX =''S'' THEN A.CLAUXID  ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_AUX =''S'' THEN A.CLIEID   ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_AUX =''S'' THEN D.CLIEABR  ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_CCOS=''S'' THEN A.CCOSID   ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_CCOS=''S'' THEN F.CCOSABR  ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_DOC =''S'' THEN A.DOCID    ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_DOC =''S'' THEN A.CCSERIE  ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_DOC =''S'' THEN A.CCNODOC  ELSE NULL END, ';
      xSQL := xSQL + 'CASE WHEN B.CTA_DOC =''S'' THEN E.DOCABR   ELSE NULL END, ';
     //**
      xSQL := xSQL + '''CXC'', A.CCGLOSA, A.CCDH, A.CCTCAMPR, ';
      xSQL := xSQL + 'A.CCMTOORI, A.CCMTOLOC, ';
      xSQL := xSQL + 'A.CCMTOEXT, A.CCFEMIS, A.CCFVCMTO, A.CCFCOMP, A.CCESTADO, ';
      xSQL := xSQL + 'A.CCUSER, ' + wRepFecServi + ',' + 'CURRENT TIME' + ',' + ' A.CCMM, A.CCDD, ';
      xSQL := xSQL + 'A.CCTRI, A.CCSEM, A.CCAAAA, A.CCSS, A.CCAATRI, A.CCAASEM, ';
      xSQL := xSQL + 'A.CCAASS, A.TMONID, ''S'', B.CTAABR, C.TDIARABR, ';
      xSQL := xSQL + 'CASE WHEN A.TIPDET=''TO'' THEN ''T'' ELSE ''Z'' END, A.CCLOTE, ';
      xSQL := xSQL + 'CASE WHEN A.CCDH=''D'' THEN A.CCMTOLOC ELSE 0 END, ';
      xSQL := xSQL + 'CASE WHEN A.CCDH=''D'' THEN A.CCMTOEXT ELSE 0 END, ';
      xSQL := xSQL + 'CASE WHEN A.CCDH=''H'' THEN A.CCMTOLOC ELSE 0 END, ';
      xSQL := xSQL + 'CASE WHEN A.CCDH=''H'' THEN A.CCMTOEXT ELSE 0 END ';
//     xSQL:=xSQL+wDBFunc01;
      xSQL := xSQL + 'FROM CXC302 A ';
      xSQL := xSQL + 'LEFT JOIN TGE202 B ON ( A.CIAID=B.CIAID AND A.CUENTAID=B.CUENTAID ) ';
      xSQL := xSQL + 'LEFT JOIN TGE104 C ON ( A.TDIARID =C.TDIARID ) ';
      xSQL := xSQL + 'LEFT JOIN TGE204 D ON ( A.CIAID=D.CIAID AND A.CLAUXID=D.CLAUXID AND A.CLIEID=D.CLIEID  ) ';
      xSQL := xSQL + 'LEFT JOIN TGE110 E ON ( E.DOCMOD=''CXC'' AND A.DOCID   =E.DOCID   ) ';
      xSQL := xSQL + 'LEFT JOIN TGE203 F ON ( A.CCOSID  =F.CCOSID  ) ';
      xSQL := xSQL + 'WHERE A.CIAID=' + '''' + xCia + '''' + ' AND ';
      xSQL := xSQL + 'A.TDIARID=' + '''' + xTDia + '''' + ' AND ';
      xSQL := xSQL + 'A.CCANOMES=' + '''' + xAAMM + '''' + ' AND ';
      xSQL := xSQL + 'A.CCNOREG=' + '''' + xNoComp + '''';
   End
   Else
      If (SRV_D = 'ORACLE') Then
      Begin
         xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CCANOMES, A.CCNOREG, A.CUENTAID, ';
         xSQL := xSQL + ' CAST(A.NROASIENTO AS INTEGER)*10+ORDEN A.ORDEN ORDEN , ';
           //** 22/08/2001 - PJSV, SOLO SE AGREGA EL NULL
         xSQL := xSQL + 'DECODE(B.CTA_AUX,''S'', A.CLAUXID,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_AUX,''S'',A.CLIEID  ,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_AUX,''S'',D.CLIEABR ,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_CCOS,''S'',A.CCOSID ,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_CCOS,''S'',F.CCOSABR,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_DOC ,''S'',A.DOCID  ,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_DOC ,''S'',A.CCSERIE,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_DOC ,''S'',A.CCNODOC,NULL), ';
         xSQL := xSQL + 'DECODE(B.CTA_DOC ,''S'',E.DOCABR ,NULL), ';
           //**
         xSQL := xSQL + '''CXC'', A.CCGLOSA, A.CCDH, A.CCTCAMPR, ';
         xSQL := xSQL + 'A.CCMTOORI, A.CCMTOLOC, ';
         xSQL := xSQL + 'A.CCMTOEXT, A.CCFEMIS, A.CCFVCMTO, A.CCFCOMP, A.CCESTADO, ';
         xSQL := xSQL + 'A.CCUSER, ' + wRepFecServi + ',' + wRepTimeServi + ',' + ' A.CCMM, A.CCDD, ';
         xSQL := xSQL + 'A.CCTRI, A.CCSEM, A.CCAAAA, A.CCSS, A.CCAATRI, A.CCAASEM, ';
         xSQL := xSQL + 'A.CCAASS, A.TMONID, ''S'', B.CTAABR, C.TDIARABR, ';
         xSQL := xSQL + 'DECODE(A.TIPDET,''TO'',''T'',''Z''), A.CCLOTE, ';
         xSQL := xSQL + 'DECODE(A.CCDH,''D'',A.CCMTOLOC, 0), ';
         xSQL := xSQL + 'DECODE(A.CCDH,''D'',A.CCMTOEXT, 0), ';
         xSQL := xSQL + 'DECODE(A.CCDH,''H'',A.CCMTOLOC,0) , ';
         xSQL := xSQL + 'DECODE(A.CCDH,''H'',A.CCMTOEXT, 0) ';
//           xSQL:=xSQL+wDBFunc01;
         xSQL := xSQL + 'FROM CXC302 A,TGE202 B,TGE104 C,TGE204 D,TGE110 E,TGE203 F ';
         xSQL := xSQL + 'WHERE A.CIAID=' + '''' + xCia + '''' + ' AND ';
         xSQL := xSQL + 'A.TDIARID=' + '''' + xTDia + '''' + ' AND ';
         xSQL := xSQL + 'A.CCANOMES=' + '''' + xAAMM + '''' + ' AND ';
         xSQL := xSQL + 'A.CCNOREG=' + '''' + xNoComp + '''' + ' AND ';
         xSQL := xSQL + ' A.CIAID=B.CIAID(+) AND A.CUENTAID=B.CUENTAID(+) ';
         xSQL := xSQL + ' AND A.TDIARID=C.TDIARID(+) ';
         xSQL := xSQL + ' AND A.CLIEID=D.CLIEID(+) ';
         xSQL := xSQL + ' AND E.DOCMOD=''CXC'' AND A.DOCID=E.DOCID(+)   ';
         xSQL := xSQL + ' AND A.CCOSID=F.CCOSID(+)   ';
      End;

   Try
      DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;
End;

Function TDMCXC.Contabiliza(xCia, xTDiario, xAnoMM, xNoComp: String): Boolean;
Var
   xnumt: integer;
   xnreg, xSQL: String;

Begin

   // 3
   PanelMsg('Generando Asientos Automaticos', 0);

   xSQL := 'INSERT INTO CNT301 ( '
      + 'CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CNTLOTE, CUENTAID, '
      + 'CLAUXID, AUXID, CNTMODDOC, DOCID, CNTSERIE, CNTNODOC, CNTGLOSA, '
      + 'CNTDH, CCOSID, '
      + 'CNTTCAMBIO, CNTMTOORI, CNTMTOLOC, CNTMTOEXT, CNTFEMIS, CNTFVCMTO, '
      + 'CNTFCOMP, CNTESTADO, CNTCUADRE, CNTFAUTOM, CNTUSER, CNTFREG,'
      + 'CNTHREG, CNTMM, CNTDD, CNTTRI, CNTSEM, CNTSS, CNTAATRI, CNTAASEM, '
      + 'CNTAASS, TMONID, CTADES, TDIARDES, AUXDES, DOCDES, CCOSDES,'
      + 'CNTDEBEMN, CNTDEBEME, '
      + 'CNTHABEMN, CNTHABEME, CNTREG ) ';

   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
   Begin
      xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CNTCOMPROB, A.CNTANO, A.CNTANOMM, A.CNTLOTE, B.CTAAUT1,'
          //** 22/08/2001 - PJSV
      + 'CASE WHEN A.CLAUXID = '''' THEN NULL ELSE A.CLAUXID END CLAUXID, '
         + 'CASE WHEN A.AUXID = '''' THEN NULL ELSE A.AUXID END AUXID, '
          //**
      + 'A.CNTMODDOC, A.DOCID, A.CNTSERIE, A.CNTNODOC, A.CNTGLOSA, '
         + 'CASE WHEN A.CNTDH=''D'' THEN ''D'' ELSE ''H'' END AS DH, '
          //** 22/08/2001 - PJSV
      + 'CASE WHEN D.CTA_CCOS=''S'' THEN CASE WHEN A.CCOSID='''' then NULL else A.CCOSID END ELSE NULL END CCOSID, '
          //**
      + 'A.CNTTCAMBIO, A.CNTMTOORI, A.CNTMTOLOC, A.CNTMTOEXT, A.CNTFEMIS, A.CNTFVCMTO, '
         + 'A.CNTFCOMP, A.CNTESTADO, ''S'', ''S'', '
         + '''' + wUsuario + '''' + ',' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, DateS) + '''' + '),' + wRepTimeServi + ', '
         + 'A.CNTMM, A.CNTDD, A.CNTTRI, A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, '
         + 'A.CNTAASS, A.TMONID, D.CTAABR, A.TDIARDES, A.AUXDES, A.DOCDES, C.CCOSABR, '
         + 'CASE WHEN A.CNTDH=''D'' THEN CNTMTOLOC ELSE 0 END, '
         + 'CASE WHEN A.CNTDH=''D'' THEN CNTMTOEXT ELSE 0 END, '
         + 'CASE WHEN A.CNTDH=''H'' THEN CNTMTOLOC ELSE 0 END, '
         + 'CASE WHEN A.CNTDH=''H'' THEN CNTMTOEXT ELSE 0 END, '
         + wDBFunc02
         + 'FROM CNT301 A '
         + 'LEFT  JOIN TGE203 C ON ( A.CCOSID=C.CCOSID ), '
         + 'TGE202 B, TGE202 D '

      + 'WHERE  A.CIAID     =' + '''' + xCia + '''' + ' AND '
         + '       A.TDIARID   =' + '''' + xTDiario + '''' + ' AND '
         + '       A.CNTANOMM  =' + '''' + xAnoMM + '''' + ' AND '
         + '       A.CNTCOMPROB=' + '''' + xNoComp + '''' + ' AND '
         + '     ( A.CIAID=B.CIAID AND A.CUENTAID=B.CUENTAID AND B.CTAAUT1 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT1))>0 ) AND '
         + '     ( A.CIAID=D.CIAID AND B.CTAAUT1=D.CUENTAID AND B.CTAAUT1 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT1))>0  ) ';
   End
   Else
      If (SRV_D = 'ORACLE') Then
      Begin
         xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CNTCOMPROB, A.CNTANO, A.CNTANOMM, A.CNTLOTE, B.CTAAUT1,'
              //** 22/08/2001 - PJSV
         + 'DECODE (A.CLAUXID,'''',NULL,A.CLAUXID) CLAUXID,'
            + 'DECODE(A.AUXID,'''',NULL,A.AUXID) AUXID,'
              //**
         + 'A.CNTMODDOC, A.DOCID, A.CNTSERIE, A.CNTNODOC, A.CNTGLOSA, '
            + 'DECODE(A.CNTDH,''D'',''D'',''H'') AS DH, '
            + 'DECODE(D.CTA_CCOS,''S'',(DECODE(A.CCOSID,'''',NULL,A.CCOSID) ),NULL) CCOSID, '
            + 'A.CNTTCAMBIO, A.CNTMTOORI, A.CNTMTOLOC, A.CNTMTOEXT, A.CNTFEMIS, A.CNTFVCMTO, '
            + 'A.CNTFCOMP, A.CNTESTADO, ''S'', ''S'', '
            + '''' + wUsuario + '''' + ',' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, DateS) + '''' + '),' + wRepTimeServi + ', '
            + 'A.CNTMM, A.CNTDD, A.CNTTRI, A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, '
            + 'A.CNTAASS, A.TMONID, D.CTAABR, A.TDIARDES, A.AUXDES, A.DOCDES, C.CCOSABR, '
            + 'DECODE(A.CNTDH,''D'',CNTMTOLOC, 0 ), '
            + 'DECODE(A.CNTDH,''D'',CNTMTOEXT, 0 ), '
            + 'DECODE(A.CNTDH,''H'',CNTMTOLOC, 0 ), '
            + 'DECODE(A.CNTDH,''H'',CNTMTOEXT, 0 ), '
            + wDBFunc02
            + 'FROM CNT301 A, TGE202 B,TGE203 C, TGE202 D '
            + 'WHERE  A.CIAID     =' + '''' + xCia + '''' + ' AND '
            + '       A.TDIARID   =' + '''' + xTDiario + '''' + ' AND '
            + '       A.CNTANOMM  =' + '''' + xAnoMM + '''' + ' AND '
            + '       A.CNTCOMPROB=' + '''' + xNoComp + '''' + ' AND '
            + '     (A.CIAID=B.CIAID(+) AND A.CUENTAID=B.CUENTAID(+) AND B.CTAAUT1 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT1))>0 ) AND '
            + '     ( A.CIAID=D.CIAID(+) AND B.CTAAUT1=D.CUENTAID AND B.CTAAUT1 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT1))>0  ) '
            + ' AND A.CCOSID=C.CCOSID(+) '
      End;
   Try
      DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   // 4
   PanelMsg('Generando Asientos Automaticos', 0);

   xSQL := 'INSERT INTO CNT301 ( '
      + 'CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CNTLOTE, CUENTAID, '
      + 'CLAUXID, AUXID, CNTMODDOC, DOCID, CNTSERIE, CNTNODOC, CNTGLOSA, '
      + 'CNTDH, CCOSID, '
      + 'CNTTCAMBIO, CNTMTOORI, CNTMTOLOC, CNTMTOEXT, CNTFEMIS, CNTFVCMTO, '
      + 'CNTFCOMP, CNTESTADO, CNTCUADRE, CNTFAUTOM, CNTUSER, CNTFREG,'
      + 'CNTHREG, CNTMM, CNTDD, CNTTRI, CNTSEM, CNTSS, CNTAATRI, CNTAASEM, '
      + 'CNTAASS, TMONID, CTADES, TDIARDES, AUXDES, DOCDES, CCOSDES,'
      + 'CNTDEBEMN, CNTDEBEME, '
      + 'CNTHABEMN, CNTHABEME, CNTREG ) ';

   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
   Begin
      xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CNTCOMPROB, A.CNTANO, A.CNTANOMM, A.CNTLOTE, B.CTAAUT2,'
          //** 22/08/2001 - PJSV
      + 'CASE WHEN A.CLAUXID = '''' THEN NULL ELSE A.CLAUXID END CLAUXID,'
         + 'CASE WHEN A.AUXID='''' THEN NULL ELSE A.AUXID END AUXID,'
          //**
      + 'A.CNTMODDOC, A.DOCID, A.CNTSERIE, A.CNTNODOC, A.CNTGLOSA, '
         + 'CASE WHEN A.CNTDH=''D'' THEN ''H'' ELSE ''D'' END AS DH, '
          //** 22/08/2001 - PJSV
      + 'CASE WHEN D.CTA_CCOS=''S'' THEN CASE WHEN A.CCOSID = '''' THEN NULL ELSE A.CCOSID END ELSE NULL END CCOSID, '
          //**
      + 'A.CNTTCAMBIO, A.CNTMTOORI, A.CNTMTOLOC, A.CNTMTOEXT, A.CNTFEMIS, A.CNTFVCMTO, '
         + 'A.CNTFCOMP, A.CNTESTADO, ''S'', ''S'', '
         + '''' + wUsuario + '''' + ',' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, DateS) + '''' + '),' + wRepTimeServi + ', '
         + 'A.CNTMM, A.CNTDD, A.CNTTRI, A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, '
         + 'A.CNTAASS, A.TMONID, D.CTAABR, A.TDIARDES, A.AUXDES, A.DOCDES, C.CCOSABR,'
         + 'CASE WHEN A.CNTDH=''H'' THEN CNTMTOLOC ELSE 0 END, '
         + 'CASE WHEN A.CNTDH=''H'' THEN CNTMTOEXT ELSE 0 END, '
         + 'CASE WHEN A.CNTDH=''D'' THEN CNTMTOLOC ELSE 0 END, '
         + 'CASE WHEN A.CNTDH=''D'' THEN CNTMTOEXT ELSE 0 END, '
         + wDBFunc02
         + 'FROM CNT301 A '
         + 'LEFT  JOIN TGE203 C ON ( A.CCOSID=C.CCOSID ), '
         + 'TGE202 B, TGE202 D '

      + 'WHERE  A.CIAID     =' + '''' + xCia + '''' + ' AND '
         + '       A.TDIARID   =' + '''' + xTDiario + '''' + ' AND '
         + '       A.CNTANOMM  =' + '''' + xAnoMM + '''' + ' AND '
         + '       A.CNTCOMPROB=' + '''' + xNoComp + '''' + ' AND '
         + '     ( A.CIAID=B.CIAID AND A.CUENTAID=B.CUENTAID AND B.CTAAUT2 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT2))>0 ) AND '
         + '     ( A.CIAID=D.CIAID AND B.CTAAUT2=D.CUENTAID AND B.CTAAUT2 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT2))>0  ) ';
   End
   Else
      If (SRV_D = 'ORACLE') Then
      Begin
         xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CNTCOMPROB, A.CNTANO, A.CNTANOMM, A.CNTLOTE, B.CTAAUT2,'
                //** 22/08/2001 - PJSV
         + 'DECODE (A.CLAUXID,'''',NULL,A.CLAUXID) CLAUXID,'
            + 'DECODE(A.AUXID,'''',NULL,A.AUXID) AUXID,'
                //**
         + 'A.CNTMODDOC, A.DOCID, A.CNTSERIE, A.CNTNODOC, A.CNTGLOSA, '
            + 'DECODE(A.CNTDH,''D'',''H'',''D'') AS DH, '
                //** 22/08/2001 - PJSV
         + 'DECODE(D.CTA_CCOS,''S'',DECODE(A.CCOSID,'''',NULL,A.CCOSID),NULL) CCOSID, '
                //**
         + 'A.CNTTCAMBIO, A.CNTMTOORI, A.CNTMTOLOC, A.CNTMTOEXT, A.CNTFEMIS, A.CNTFVCMTO, '
            + 'A.CNTFCOMP, A.CNTESTADO, ''S'', ''S'', '
            + '''' + wUsuario + '''' + ',' + wRepFuncDate + '''' + FORMATDATETIME(wFormatFecha, DateS) + '''' + '),' + wRepTimeServi + ', '
            + 'A.CNTMM, A.CNTDD, A.CNTTRI, A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, '
            + 'A.CNTAASS, A.TMONID, D.CTAABR, A.TDIARDES, A.AUXDES, A.DOCDES, C.CCOSABR,'
            + 'DECODE(A.CNTDH,''H'',CNTMTOLOC, 0), '
            + 'DECODE(A.CNTDH,''H'',CNTMTOEXT, 0), '
            + 'DECODE(A.CNTDH,''D'',CNTMTOLOC, 0), '
            + 'DECODE(A.CNTDH,''D'',CNTMTOEXT, 0), '
            + wDBFunc02
            + 'FROM CNT301 A,TGE202 B, TGE203 C,TGE202 D '
            + 'WHERE  A.CIAID     =' + '''' + xCia + '''' + ' AND '
            + '       A.TDIARID   =' + '''' + xTDiario + '''' + ' AND '
            + '       A.CNTANOMM  =' + '''' + xAnoMM + '''' + ' AND '
            + '       A.CNTCOMPROB=' + '''' + xNoComp + '''' + ' AND '
            + '     ( A.CIAID=B.CIAID(+) AND A.CUENTAID=B.CUENTAID(+) AND B.CTAAUT2 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT2))>0 ) AND '
            + '     ( A.CIAID=D.CIAID(+) AND B.CTAAUT2=D.CUENTAID AND B.CTAAUT2 IS NOT NULL AND LENGTH(RTRIM(B.CTAAUT2))>0  ) '
            + ' AND ( A.CCOSID=C.CCOSID(+) ) ';
      End;
   Try

      DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   Filtracds(cdsMovCNT1, 'Select * from CNT301 Where '
      + 'CIAID=' + '''' + xCia + '''' + ' AND '
      + 'TDIARID=' + '''' + xTDiario + '''' + ' AND '
      + 'CNTANOMM=' + '''' + xAnoMM + '''' + ' AND '
      + 'CNTCOMPROB=' + '''' + xNoComp + '''');

   xNumT := 0;
   cdsMovCNT1.First;
   While Not cdsMovCNT1.Eof Do
   Begin
      xNREG := IntToStr(cdsMovCNT1.FieldByName('CNTREG').AsInteger);
      xNumT := xNumT + 1;

      xSQL := 'Update CNT301 Set CNTREG=' + IntToStr(xNumT) + ' '
         + 'Where CIAID=' + '''' + xCia + '''' + ' and '
         + 'TDIARID=' + '''' + xTDiario + '''' + ' and '
         + 'CNTANOMM=' + '''' + xAnoMM + '''' + ' and '
         + 'CNTCOMPROB=' + '''' + xNoComp + '''' + ' and '
         + 'CNTREG=' + xNREG;
      Try
         DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;

      cdsMovCNT1.Next;
   End;

   // 5
   PanelMsg('Generando Cabecera de Contabilidad', 0);

   // Genera Cabecera de Contabilidad
   xSQL := 'INSERT INTO CNT300 ';
   xSQL := xSQL + '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, ';
   xSQL := xSQL + 'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, ';
   xSQL := xSQL + 'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, ';
   xSQL := xSQL + 'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, ';
   xSQL := xSQL + 'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, ';
   xSQL := xSQL + 'CNTTS ) ';
   If (SRV_D = 'DB2NT') Or
      (SRV_D = 'DB2400') Then
   Begin
      xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
      xSQL := xSQL + '''M:''' + '||A.CNTMODDOC||' + ''' D:''' + '||A.TDIARID||' + ''' P:''' + '||A.CNTANOMM||' + ''' C:''' + '||A.CNTCOMPROB, ';
      xSQL := xSQL + 'SUM( CASE WHEN A.FLAGVAR=''T'' THEN A.CNTTCAMBIO ELSE 0 END ), ';
      xSQL := xSQL + 'A.CNTFCOMP, ''P'', ''S'', ';
      xSQL := xSQL + '''' + wUsuario + '''' + ', ' + wRepFecServi + ',' + wRepTimeServi + ', A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
      xSQL := xSQL + 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, A.TMONID, '' '', ';
      xSQL := xSQL + 'A.TDIARDES, ';
      xSQL := xSQL + 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
      xSQL := xSQL + '''' + Copy(wVRN_TipoCambio, 2, 2) + '''' + ' ';
   End
   Else
      If (SRV_D = 'ORACLE') Then
      Begin
         xSQL := xSQL + 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
         xSQL := xSQL + '''M:''' + '||A.CNTMODDOC||' + ''' D:''' + '||A.TDIARID||' + ''' P:''' + '||A.CNTANOMM||' + ''' C:''' + '||A.CNTCOMPROB, ';
         xSQL := xSQL + 'SUM( DECODE(A.FLAGVAR,''T'',A.CNTTCAMBIO,0) ), ';
         xSQL := xSQL + 'A.CNTFCOMP, ''P'', ''S'', ';
         xSQL := xSQL + '''' + wUsuario + '''' + ', ' + wRepFecServi + ',' + wRepTimeServi + ', A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
         xSQL := xSQL + 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, A.TMONID, '' '', ';
         xSQL := xSQL + 'A.TDIARDES, ';
         xSQL := xSQL + 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
         xSQL := xSQL + '''' + Copy(wVRN_TipoCambio, 2, 2) + '''' + ' ';
      End;

   xSQL := xSQL + 'FROM CNT301 A ';
   xSQL := xSQL + 'WHERE A.CIAID=' + '''' + xCia + '''' + ' AND ';
   xSQL := xSQL + 'A.TDIARID=' + '''' + xTDiario + '''' + ' AND ';
   xSQL := xSQL + 'A.CNTANOMM=' + '''' + xAnoMM + '''' + ' AND ';
   xSQL := xSQL + 'A.CNTCOMPROB=' + '''' + xNoComp + '''' + ' ';
   xSQL := xSQL + 'GROUP BY A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, ';
   xSQL := xSQL + 'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI,  ';
   xSQL := xSQL + 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, A.TMONID, ';
   xSQL := xSQL + 'A.TDIARDES, A.CNTMODDOC';
   Try
      DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
   End;

   GeneraEnLinea401(xCia, xTDiario, xAnoMM, xNoComp);

   Result := True;
End;

Procedure TDMCXC.GeneraEnLinea401(xxxCia, xxxDiario, xxxAnoMM, xxxNoComp: String);
Var
   xCtaPrin, xClAux, xCuenta, xAuxDes, xAno, xMes, xDH, xSQL: String;
   xMov, xAux, xCCos, xCCoDes, xCtaDes, xFLAux, xFLCCo, xNivel: String;
   xDigitos, xDigAnt: Integer;
   xImpMN, xImpME: Double;
Begin
   xAno := Copy(xxxAnoMM, 1, 4);
   xMes := Copy(xxxAnoMM, 5, 2);

   // 5
   PanelMsg('Generando Resultados', 0);

   Filtracds(cdsMovCNT1, 'Select * from CNT301 Where '
      + 'CIAID=' + '''' + xxxCia + '''' + ' AND '
      + 'TDIARID=' + '''' + xxxDiario + '''' + ' AND '
      + 'CNTANOMM=' + '''' + xxxAnoMM + '''' + ' AND '
      + 'CNTCOMPROB=' + '''' + xxxNoComp + '''');

   PanelMsg('Generando Resultados', cdsMovCNT1.RecordCount + 1);

   cdsMovCNT1.First;
   While Not cdsMovCNT1.Eof Do
   Begin

      PanelMsg('Generando Resultados', 0);

      xCtaPrin := cdsMovCNT1.FieldByName('CUENTAID').AsString;
      xDH := cdsMovCNT1.FieldByName('CNTDH').AsString;
      xImpMN := cdsMovCNT1.FieldByName('CNTMTOLOC').AsFloat;
      xImpME := cdsMovCNT1.FieldByName('CNTMTOEXT').AsFloat;
      xClAux := cdsMovCNT1.FieldByName('CLAUXID').AsString;
      xAux := cdsMovCNT1.FieldByName('AUXID').AsString;
      xAuxDes := cdsMovCNT1.FieldByName('AUXDES').AsString;
      xCCos := cdsMovCNT1.FieldByName('CCOSID').AsString;
      xCCoDes := cdsMovCNT1.FieldByName('CCOSDES').AsString;
      xDigAnt := 0;
      cdsNivel.First;
      While Not cdsNivel.EOF Do
      Begin

         xDigitos := cdsNivel.fieldbyName('Digitos').AsInteger;
         xCuenta := Trim(Copy(xCtaPrin, 1, xDigitos));
         xNivel := cdsNivel.fieldbyName('Nivel').AsString;
         xSQL := 'Select CTAABR, CTA_MOV, CTA_AUX, CTA_CCOS from TGE202'
            + ' where CIAID=' + quotedstr(xxxCia)
            + ' and CUENTAID=' + quotedstr(xCuenta)
            + ' AND CTANIV=' + quotedstr(xNivel);

         cdsQry2.Close;
         cdsQry2.ProviderName := 'dspTGE';
         cdsQry2.DataRequest(xSQL); // Llamada remota al provider del servidor
         cdsQry2.Open;
         xCtaDes := '';
         xMov := '';
         If cdsQry2.RecordCount > 0 Then
         Begin
            xCtaDes := cdsQry2.FieldByName('CTAABR').AsString;
            xMov := cdsQry2.FieldByName('CTA_MOV').AsString;
            xFlAux := cdsQry2.FieldByName('CTA_AUX').AsString;
            xFlCCo := cdsQry2.FieldByName('CTA_CCOS').AsString;
//         end;

            If Trim(cdsNivel.fieldbyName('Signo').AsString) = '=' Then
               If Length(xCuenta) = xDigitos Then
               Else
                  Break;
            If cdsNivel.fieldbyName('Signo').AsString = '<=' Then
               If (Length(xCuenta) <= xDigitos) And (Length(xCuenta) > xDigAnt) Then
               Else
                  Break;
            If cdsNivel.fieldbyName('Signo').AsString = '>=' Then
               If Length(xCuenta) >= xDigitos Then
               Else
                  Break;

            If Not CuentaExiste(xxxCia, xAno, xCuenta, '', '') Then
            Begin
               InsertaMov(xxxCia, xxxAnoMM, xCuenta, '', '', '', xDH, xMov,
                  xCtaDes, '', '', xNivel, xImpMN, xImpME);
            End
            Else
            Begin
               ActualizaMov(xxxCia, xxxAnoMM, xCuenta, '', '', '', xDH, xMov,
                  xCtaDes, '', '', xNivel, xImpMN, xImpME);
            End;
            xDigAnt := cdsNivel.fieldbyName('Digitos').AsInteger;

            ///////////////////////////
            //   Si Tiene Auxiliar   //
            ///////////////////////////
            If xFlAux = 'S' Then
            Begin
               If Not CuentaExiste(xxxCia, xAno, xCuenta, xAux, '') Then
               Begin
                  InsertaMov(xxxCia, xxxAnoMM, xCuenta, xClAux, xAux, '', xDH, xMov,
                     xCtaDes, xAuxDes, '', xNivel, xImpMN, xImpME);
               End
               Else
               Begin
                  ActualizaMov(xxxCia, xxxAnoMM, xCuenta, xClAux, xAux, '', xDH, xMov,
                     xCtaDes, xAuxDes, '', xNivel, xImpMN, xImpME);
               End;
            End;

            ///////////////////////////
            //   Si Tiene C.Costo    //
            ///////////////////////////
            If xFlCCo = 'S' Then
            Begin
               If Not CuentaExiste(xxxCia, xAno, xCuenta, xAux, xCCos) Then
               Begin
                  InsertaMov(xxxCia, xxxAnoMM, xCuenta, xClAux, xAux, xCCos, xDH, xMov,
                     xCtaDes, xAuxDes, xCCoDes, xNivel, xImpMN, xImpME);
               End
               Else
               Begin
                  ActualizaMov(xxxCia, xxxAnoMM, xCuenta, xClAux, xAux, xCCos, xDH, xMov,
                     xCtaDes, xAuxDes, xCCoDes, xNivel, xImpMN, xImpME);
               End;
            End;
         End;
         cdsNivel.Next;
      End;
      cdsMovCNT1.Next;
   End;
End;

Function TDMCXC.CuentaExiste(xxxxCia, xxxxAno, xxxxCuenta, xxxxAux,
   xxxxCCos: String): Boolean;
Var
   xSQL: String;
   xAuxid, xCcosid: String;
Begin
   //** 13/08/2001 - pjsv
   If xxxxAux = '' Then
      xAuxid := '(AUXID=' + quotedstr(xxxxAux) + ' OR AUXID IS NULL) AND '
   Else
      xAuxid := 'AUXID=' + quotedstr(xxxxAux) + ' AND ';
   If xxxxCCos = '' Then
      xCcosid := '(CCOSID=' + quotedstr(xxxxCCos) + ' OR CCOSID IS NULL)'
   Else
      xCcosid := 'CCOSID=' + quotedstr(xxxxCCos);
   //**

   xSQL := 'Select COUNT(CUENTAID) TOTREG from CNT401 Where CIAID=' + '''' + xxxxCia + '''' + ' and '
      + 'ANO=' + '''' + xxxxAno + '''' + ' and '
      + 'CUENTAID=' + '''' + xxxxCuenta + '''' + ' and ';
    //** 13/08/2001 - pjsv
   xSQL := xSQL + xAuxid + xCcosid;
    //**

   cdsQry2.Close;
   cdsQry2.ProviderName := 'dspTGE';
   cdsQry2.DataRequest(xSQL); // Llamada remota al provider del servidor
   cdsQry2.Open;
   //** 13/08/2001 - pjsv
   If cdsQry2.fieldbyName('TOTREG').asInteger > 0 Then
   //**
      Result := True
   Else
      Result := False;
End;

Procedure TDMCXC.ActualizaMov(cCia, cAnoMM, cCuenta, cClAux, cAux, cCCosto, cDH, cMov,
   cCtaDes, cAuxDes, cCCoDes, cNivel: String;
   nImpMN, nImpME: Double);
Var
   cMes, cAno, cSQL, cMesT: String;
   nMes: Integer;
   xAuxid, xCcosid, xClauxid: String;
Begin
   cAno := Copy(cAnoMM, 1, 4);
   cMes := Copy(cAnoMM, 5, 2);

   cSQL := 'Update CNT401 Set CTADES =' + '''' + cCtaDes + '''' + ', '
      + 'AUXDES =' + '''' + cAuxDes + '''' + ', '
      + 'CCODES =' + '''' + cCCoDes + '''' + ', ';

   If cDH = 'D' Then
   Begin
      cSQL := cSQL + '  DEBEMN' + cMes + '=' +
         '( ' + wReplacCeros + '(DEBEMN' + cMes + ',0)+' + '(' + FloatToStr(nImpMN) + ') ) ';
      cSQL := cSQL + ', DEBEME' + cMes + '=' +
         '( ' + wReplacCeros + '(DEBEME' + cMes + ',0)+' + '(' + FloatToStr(nImpME) + ') ) ';
   End;
   If cDH = 'H' Then
   Begin
      cSQL := cSQL + '  HABEMN' + cMes + '=' +
         '( ' + wReplacCeros + '(HABEMN' + cMes + ',0)+' + '(' + FloatToStr(nImpMN) + ') ) ';
      cSQL := cSQL + ', HABEME' + cMes + '=' +
         '( ' + wReplacCeros + '(HABEME' + cMes + ',0)+' + '(' + FloatToStr(nImpME) + ') ) ';
   End;
   //** 13/08/2001 - pjsv, para que grabe en el mes del movimiento.
   cSQL := cSQL + ', SALDMN' + cMes + '=';
   cSQL := cSQL + '(' + wReplacCeros + '(SALDMN' + cMes + ',0)';
   If cDH = 'D' Then
      cSQL := cSQL + '+'
   Else
      cSQL := cSQL + '-';
   cSQL := cSQL + '(' + FloatToStr(nImpMN) + ') ) ';

   cSQL := cSQL + ', SALDME' + cMes + '=';
   cSQL := cSQL + '(' + wReplacCeros + '(SALDME' + cMes + ',0)';
   If cDH = 'D' Then
      cSQL := cSQL + '+'
   Else
      cSQL := cSQL + '-';
   cSQL := cSQL + '(' + FloatToStr(nImpME) + ') ) ';
   //**
   For nMes := (StrToInt(cMes) + 1) To 13 Do
   Begin
      cMesT := StrZero(IntToStr(nMes), 2);

      cSQL := cSQL + ', SALDMN' + cMesT + '=';
      cSQL := cSQL + '( ' + wReplacCeros + '(SALDMN' + cMesT + ',0)';
      If cDH = 'D' Then
         cSQL := cSQL + '+'
      Else
         cSQL := cSQL + '-';
      cSQL := cSQL + '(' + FloatToStr(nImpMN) + ') ) ';

      cSQL := cSQL + ', SALDME' + cMesT + '=';
      cSQL := cSQL + '( ' + wReplacCeros + '(SALDME' + cMesT + ',0)';
      If cDH = 'D' Then
         cSQL := cSQL + '+'
      Else
         cSQL := cSQL + '-';
      cSQL := cSQL + '(' + FloatToStr(nImpME) + ') ) ';
   End;
   //** 13/08/2001 - pjsv, para que ubique correctamente
   If cAux = '' Then
      xAuxid := '(AUXID=' + quotedstr(cAux) + ' OR AUXID IS NULL) AND '
   Else
      xAuxid := 'AUXID=' + quotedstr(cAux) + ' AND ';
   If cCCosto = '' Then
      xCcosid := '(CCOSID=' + quotedstr(cCCosto) + ' OR CCOSID IS NULL) AND '
   Else
      xCcosid := 'CCOSID=' + quotedstr(cCCosto) + ' AND ';
   If cClAux = '' Then
      xClauxid := '(CLAUXID=' + quotedstr(cClAux) + ' OR CLAUXID IS NULL)'
   Else
      xClauxid := 'CLAUXID=' + quotedstr(cClAux);
   //**

   cSQL := cSQL + 'Where CIAID=   ' + '''' + cCia + '''' + ' and '
      + 'ANO=     ' + '''' + cAno + '''' + ' and '
      + 'CUENTAID=' + '''' + cCuenta + '''' + ' and ';
   //** 13/08/2001- pjsv
   cSQL := cSQL + xAuxid + xCcosid + xClauxid;
   //**

   Try
      DCOM1.AppServer.EjecutaSQL(cSQL);
   Except
   End;
End;

Procedure TDMCXC.InsertaMov(cCia, cAnoMM, cCuenta, cClAux, cAux, cCCosto, cDH, cMov,
   cCtaDes, cAuxDes, cCCoDes, cNivel: String;
   nImpMN, nImpME: Double);
Var
   cMes, cAno, cSQL, cMesT: String;
   nMes: Integer;
   xCtaMov: String;
Begin
   cAno := Copy(cAnoMM, 1, 4);
   cMes := Copy(cAnoMM, 5, 2);
   //** 13/08/2001- pjsv, para jalar si es de movimiento
   xCtaMov := BuscaQry('dspTGE', 'TGE202', 'CTA_MOV', 'CUENTAID=' + quotedstr(cCuenta) + ' AND CIAID=' + quotedstr(cCia), 'CTA_MOV');
   //**

   cSQL := 'Insert into CNT401( CIAID, ANO, CUENTAID, CLAUXID, AUXID, '
      + ' CCOSID, CTADES, AUXDES, CCODES, TIPO, CTA_MOV ';

   If cDH = 'D' Then cSQL := cSQL + ', DEBEMN' + cMes + ', DEBEME' + cMes;
   If cDH = 'H' Then cSQL := cSQL + ', HABEMN' + cMes + ', HABEME' + cMes;
   //** 13/08/2001 - pjsv, para que genere el saldo del mes del movimiento
   cSQL := cSQL + ', SALDMN' + cMes;
   cSQL := cSQL + ', SALDME' + cMes;
   //**

   For nMes := (StrToInt(cMes) + 1) To 13 Do
   Begin
      cMesT := StrZero(IntToStr(nMes), 2);
      cSQL := cSQL + ', SALDMN' + cMesT;
      cSQL := cSQL + ', SALDME' + cMesT;
   End;
   cSQL := cSQL + ' ) ';
   cSQL := cSQL + 'Values( ' + '''' + cCia + '''' + ', ' + '''' + cAno + '''' + ', '
      + '''' + cCuenta + '''' + ', ' + '''' + cClAux + '''' + ', '
      + '''' + cAux + '''' + ', ' + '''' + cCCosto + '''' + ', '
      + '''' + cCtaDes + '''' + ', ' + '''' + cAuxDes + '''' + ', '
      + '''' + cCCoDes + '''' + ', ' + '''' + cNivel + '''' + ', '
                        //** 13/08/2001 - pjsv
   + quotedstr(xCtaMov) + ','
                        //**
   + FloatToStr(nImpMN) + ', '
      + FloatToStr(nImpME) + ' ';
   //** 13/08/2001 - psjv, para el monto del mes del movimiento
   If cDH = 'D' Then
      cSQL := cSQL + ', +'
   Else
      cSQL := cSQL + ', -';
   cSQL := cSQL + FloatToStr(nImpMN) + ' ';
   If cDH = 'D' Then
      cSQL := cSQL + ', +'
   Else
      cSQL := cSQL + ', -';
   cSQL := cSQL + FloatToStr(nImpME) + ' ';
   //**
   For nMes := (StrToInt(cMes) + 1) To 13 Do
   Begin
      cMesT := StrZero(IntToStr(nMes), 2);
      If cDH = 'D' Then
         cSQL := cSQL + ', +'
      Else
         cSQL := cSQL + ', -';
      cSQL := cSQL + FloatToStr(nImpMN) + ' ';
      If cDH = 'D' Then
         cSQL := cSQL + ', +'
      Else
         cSQL := cSQL + ', -';
      cSQL := cSQL + FloatToStr(nImpME) + ' ';
   End;

   cSQL := cSQL + ' ) ';
   Try
      DCOM1.AppServer.EjecutaSQL(cSQL);
   Except
   End;
End;

Procedure TDMCXC.CreaPanel(xForma: TForm; xMensaje: String);
Begin
   pnlConta := TPanel.Create(xForma);
   pbConta := TProgressBar.Create(Nil);
   pbConta.Width := 205;
   pbConta.Top := 72;
   pbConta.Left := 48;
   pbConta.Min := 0;
   pbConta.Max := 6;
   pbConta.Parent := pnlConta;
   pnlConta.Alignment := taCenter;
   pnlConta.BringToFront;
   pnlConta.Width := 300;
   pnlConta.Height := 100;
   pnlConta.Top := xForma.Height - 380;
   pnlConta.Left := StrToInt(FloattoStr(FRound((((xForma.Width - 100)) / 2) - 100, 3, 0)));
   pnlConta.Parent := xForma;
   pnlConta.BevelInner := bvRaised;
   pnlConta.BevelOuter := bvRaised;
   pnlConta.BevelWidth := 3;
   pnlConta.Font.Name := 'Times New Roman';
   pnlConta.Font.Style := [fsBold, fsItalic];
   pnlConta.Font.Size := 12;
   pnlConta.Caption := xMensaje;
   pbConta.Position := 1;
   pnlConta.Refresh;
End;

Procedure TDMCXC.PanelMsg(xMensaje: String; xProc: Integer);
Begin
   If xProc > 0 Then
   Begin
      pbConta.Position := 0;
      pbConta.Min := 0;
      pbConta.Max := xProc;
   End;
   pnlConta.Caption := xMensaje;
   If xProc = 0 Then pbConta.Position := pbConta.Position + 1;
   pnlConta.Refresh;
End;

////////////////////////////////////////
//                                    //
//       Fin de Contabilización       //
//                                    //
////////////////////////////////////////

Procedure TDMCXC.GrabaAuxConta(wCDST: TClientDataSet);
Var
   xSQL2: String;
Begin
   xSQL2 := 'Select * from CNT201 '
      + 'Where AUXID=' + '''' + wCDST.FieldByName('ClieId').AsString + '''' + ' and '
      + 'CLAUXID=' + '''' + wCDST.FieldByName('ClAuxId').AsString + '''';
   cdsQry.Active := False;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL2); // Llamada remota al provider del servidor
   cdsQry.Active := True;

   If cdsQry.RecordCount > 0 Then
   Begin
      xSQL2 := 'Update CNT201 '
         + ' Set AUXID=' + '''' + wCDST.FieldByName('ClieId').AsString + ''', '
         + 'AUXNOMB=' + '''' + Copy(wCDST.FieldByName('ClieDes').AsString, 1, 60) + ''', '
         + 'AUXRUC=' + '''' + wCDST.FieldByName('ClieRuc').AsString + ''', '
         + 'CLAUXID=' + '''' + wCDST.FieldByName('ClAuxId').AsString + ''', '
         + 'AUXABR=' + '''' + wCDST.FieldByName('ClieAbr').AsString + ''', '
         + 'PAISID=' + '''' + wCDST.FieldByName('PaisId').AsString + ''', '
         + 'AUXDIR=' + '''' + wCDST.FieldByName('ClieDir').AsString + ''', '
         + 'AUXCZIP=' + '''' + wCDST.FieldByName('ClieCZip').AsString + ''', '
         + 'AUXTELF=' + '''' + wCDST.FieldByName('ClieTelf').AsString + ''', '
         + 'AUXFAX=' + '''' + wCDST.FieldByName('ClieFax').AsString + ''', '
         + 'AUXEMAIL=' + '''' + wCDST.FieldByName('ClieEMai').AsString + ''', '
         + 'ACTIVO=' + '''' + wCDST.FieldByName('ACTIVO').AsString + ''' '
         + 'Where AUXID=' + '''' + wCDST.FieldByName('ClieId').AsString + ''''
         + ' and CLAUXID=' + '''' + wCDST.FieldByName('ClAuxId').AsString + '''';
   End
   Else
   Begin
      xSQL2 := 'INSERT INTO CNT201(AUXID,AUXNOMB,AUXABR,AUXRUC,PAISID,AUXDIR,'
         + 'AUXCZIP,AUXTELF,AUXFAX,AUXEMAIL,CLAUXID,ACTIVO ) '
         + 'VALUES('
         + '''' + wCDSt.FieldByName('ClieId').AsString + '''' + ','
         + '''' + COPY(wCDSt.FieldByName('ClieDes').AsString, 1, 60) + '''' + ','
         + '''' + wCDSt.FieldByName('ClieAbr').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClieRuc').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('PaisId').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClieDir').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClieCZip').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClieTelf').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClieFax').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClieEMai').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ClAuxId').AsString + '''' + ','
         + '''' + wCDSt.FieldByName('ACTIVO').AsString + '''' + ' ) ';
   End;
   DCOM1.AppServer.EjecutaSQL(xSQL2);
End;

Function TDMCXC.Replicate(xChar: Char; xLongitud: Integer): String;
Var
   i: integer;
Begin
   For i := 1 To xLongitud Do
      Result := Result + xChar;
End;

Function TDMCXC.AddSpaceR(xCadena: String; xLongitud: Integer): String;
Var
   xLen: Integer;
Begin
   xLen := Abs(xLongitud - Length(trim(xCadena)));
   Result := xCadena + Replicate(' ', xLen);
End;

Function TDMCXC.AddSpaceL(xCadena: String; xLongitud: Integer): String;
Var
   xLen: Integer;
Begin
   xLen := Abs(xLongitud - Length(trim(xCadena)));
   Result := Replicate(' ', xLen) + xCadena;
End;

Function TDMCXC.RecuperaDatos(wTabla, wCampos, wWhere: String): Boolean;
Var
   xSQL: String;
Begin
   result := False;
   xSQL := '';
   xSQL := 'SELECT ' + wCampos + ' FROM ' + wTabla;
   If length(wWhere) > 0 Then xSQL := xSQL + ' WHERE ' + wWhere;
   cdsQry2.Close;
   cdsQry2.ProviderName := 'dspTGE';
   cdsQry2.DataRequest(xSQL);
   cdsQry2.Open;
   result := (cdsQry2.RecordCount > 0);
End;

//** 20/12/2000 - pjsv

Procedure TDMCXC.AbreCierraCDS(xxCds: Array Of TwwClientDataSet; xxNom: Array Of String; xBool: Boolean);
Var
   iX: integer;
Begin
   For ix := 0 To High(xxCds) Do
   Begin
      xxCds[iX].Close;
      xxCds[iX].DataRequest('Select * from ' + xxNom[iX]);
      xxCds[iX].Active := xBool;
   End;
End;
//**

//** 15/02/2001 - PJSV - VIENE DE DMCXC CXP

Function StrDia(Fecha: TDateTime): String;
Var
   Year, Month, Day: Word;
Begin

   If Fecha = 0 Then
      Result := ''
   Else
   Begin
      DecodeDate(Fecha, Year, Month, Day);
      Result := strzero(inttostr(Day), 2);
   End;
End;

Function strMes(Fecha: TDateTime): String;
Var
   Year, Month, Day: Word;
Begin
   If Fecha = 0 Then
      Result := ''
   Else
   Begin
      DecodeDate(Fecha, Year, Month, Day);
      Result := Strzero(inttostr(Month), 2);
   End;
End;

Function strAno(Fecha: TDateTime): String;
Var
   Year, Month, Day: Word;
Begin
   If Fecha = 0 Then
      Result := ''
   Else
   Begin
      DecodeDate(Fecha, Year, Month, Day);
      Result := Strzero(inttostr(Year), 4);
   End;
End;

Function TDMCXC.RecuperarDatos(xTabla, xCampos, xWhere: String): Boolean;
Var
   xAux,
      xSQL: String;
Begin
   xAux := '';
   If trim(xWhere) <> '' Then
      xAux := ' WHERE ' + xWhere;
   xSQL := 'SELECT ' + xCampos + ' FROM ' + xTabla + xAux;
   xSQL := UpperCase(xSQL);
   cdsULTTGE.Close;
   cdsULTTGE.ProviderName := 'dspUltTGE';
   cdsULTTGE.DataRequest(xSQL); //este es la llamada remota al provider del servidor
   cdsULTTGE.Open;
   result := (cdsULTTGE.recordcount <> 0);
End;

Function TDMCXC.GetWhereFromSQL(xSQL: String): String;
Var
   xIndice: Integer;
   Tmp: String;
Begin

   xSQL := AnsiUpperCase(xSQL);
   xIndice := Pos('WHERE', xSQL);
   If xIndice <> 0 Then
   Begin
      Tmp := copy(xSQL, xIndice + 6, length(xSQL));
      xIndice := Pos('ORDER BY', tmp);
      If xIndice <> 0 Then
         Result := '(' + copy(Tmp, 1, xIndice - 1) + ')'
      Else
         Result := '(' + Tmp + ')';
   End
   Else
      Result := '';

End;

//**

Function TDMCXC.MesCerrado(xMes, xAno, xCiaid: String): Boolean;
Var
   xSql: String;
Begin
   xSql := 'SELECT PER' + strzero(xMes, 2) + ' FROM TGE154 WHERE CIAID=' + quotedstr(xCiaid) +
      ' AND ANO=' + quotedstr(xAno);
   cdsQry.Close;
   cdsQry.DataRequest(xSql);
   cdsQry.Open;
   If cdsQry.FieldByName('PER' + strzero(xMes, 2)).AsString = 'S' Then
      result := True
   Else
      result := False;
End;
//**

Procedure TDMCXC.SaldosAuxiliarCLG(xxCia, xxAnoMes, xxClAux, xxAux,
   xxSigno: String; xxImpMN, xxImpME: Double; xxtmonid: String);
Var
   xxAno, xxMes, xSQL, xxSaldo13: String;
   xxSaldo01, xxSaldo02, xxSaldo03, xxSaldo04, xxSaldo05, xxSaldo06: String;
   xxSaldo07, xxSaldo08, xxSaldo09, xxSaldo10, xxSaldo11, xxSaldo12: String;
   xxTotMN, xxTotME, xxToSMN, xxToSME: Double;
  //**03/01/2001 pjsv
   iX: integer;
   xmes, xMesA: String;
   ssql, sSQL1, sSQL2, sSQL3, sSQL4: widestring;
  //**
Begin
   wSaldosAuxiliar := True;

   xxAno := Copy(xxAnoMes, 1, 4);
   xxMes := Copy(xxAnoMes, 5, 2);
   xSQL := '';
   sSQL1 := '';
   sSQL2 := '';
   sSQL3 := '';
   sSQL4 := '';
 //CLG  *
   xSQL := 'Select CIAID from TGE401 where '
      + 'CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';
   xSQL := UpperCase(xSQL);
   cdsQry.Close;
   cdsQry.ProviderName := 'dspTGE';
   cdsQry.DataRequest(xSQL); // Llamada remota al provider del servidor
   cdsQry.Open;
   If cdsQry.RecordCount = 0 Then
   Begin
      xSQL := 'Insert into TGE401(CIAID,ANO,CLAUXID,AUXID';
      If (xxSigno = '+') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + ', DEBETMN' + xxMes + ', DEBETME' + xxMes;
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', DEBESMN' + xxMes;
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', DEBESME' + xxMes;
      End;
      If (xxSigno = '-') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + ', HABETMN' + xxMes + ', HABETME' + xxMes;
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', HABESMN' + xxMes;
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', HABESME' + xxMes;
      End;
      xSQL := xSQL + ') Values (' + '''' + xxCia + '''' + ',' + '''' + xxAno + '''' + ','
         + '''' + xxClAux + '''' + ',' + '''' + xxAux + '''';
      xSQL := xSQL + ', ' + FloatToStr(xxImpMN) + ', ' + FloatToStr(xxImpME);
      If xxtmonid = wTMonLoc Then
         xSQL := xSQL + ', ' + FloatToStr(xxImpMN);
      If xxtmonid = wTMonExt Then
         xSQL := xSQL + ', ' + FloatToStr(xxImpME);

      If xxSigno = '=' Then
      Begin
         xSQL := xSQL + ', ' + FloatToStr(xxImpMN) + ', ' + FloatToStr(xxImpME);
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', ' + FloatToStr(xxImpMN);
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', ' + FloatToStr(xxImpME);
      End;
      xSQL := UpperCase(xSQL + ' ) ');

      Try
         DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         wSaldosAuxiliar := False;
      End;

   End
   Else
   Begin
  //** 15/02/2001 - pjsv, se quita porque duplicaba los montos
  //xxTotMN:= cdsQry.FieldByName('DEBETMN'+xxMes).AsFloat + xxImpMN;
  //xxTotME:= cdsQry.FieldByName('DEBETME'+xxMes).AsFloat + xxImpME;
  //xxToSMN:= cdsQry.FieldByName('DEBESMN'+xxMes).AsFloat + xxImpMN;
  //xxToSME:= cdsQry.FieldByName('DEBESME'+xxMes).AsFloat + xxImpME;
      xxTotMN := xxImpMN;
      xxTotME := xxImpME;
      xxToSMN := xxImpMN;
      xxToSME := xxImpME;
  //**

      xSQL := 'Update TGE401 Set ';
      If (xxSigno = '+') Or (xxSigno = '=') Then
      Begin
         xSQL := xSQL + '  DEBETMN' + xxMes + '=' + wReplacCeros + '(DEBETMN' + xxMes + ' ,0)+ ' + FloatToStr(xxTotMN);
         xSQL := xSQL + ', DEBETME' + xxMes + '=' + wReplacCeros + '(DEBETME' + xxMes + ' ,0)+ ' + FloatToStr(xxTotME);
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', DEBESMN' + xxMes + '=' + wReplacCeros + '(DEBESMN' + xxMes + ' ,0)+ ' + FloatToStr(xxToSMN);
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', DEBESME' + xxMes + '=' + wReplacCeros + '(DEBESME' + xxMes + ' ,0)+ ' + FloatToStr(xxToSME);
      End;

      If (xxSigno = '-') Or (xxSigno = '=') Then
      Begin
         If xxSigno = '=' Then
            xSQL := xSQL + ',';
         xSQL := xSQL + '  HABETMN' + xxMes + '=' + wReplacCeros + '(HABETMN' + xxMes + ' ,0)+ ' + FloatToStr(xxTotMN);
         xSQL := xSQL + ', HABETME' + xxMes + '=' + wReplacCeros + '(HABETME' + xxMes + ' ,0)+ ' + FloatToStr(xxTotME);
         If xxtmonid = wTMonLoc Then
            xSQL := xSQL + ', HABESMN' + xxMes + '=' + wReplacCeros + '(HABESMN' + xxMes + ' ,0)+ ' + FloatToStr(xxToSMN);
         If xxtmonid = wTMonExt Then
            xSQL := xSQL + ', HABESME' + xxMes + '=' + wReplacCeros + '(HABESME' + xxMes + ' ,0)+ ' + FloatToStr(xxToSME);
      End;
      xSQL := xSQL + ' Where CIAID=' + '''' + xxCia + '''' + ' and '
         + 'ANO=' + '''' + xxAno + '''' + ' and '
         + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
         + 'AUXID=' + '''' + xxAux + '''';
      xSQL := UpperCase(xSQL);

      Try
         DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
         wSaldosAuxiliar := False;
      End;

   End;
//////////////////////////////////////
//                                  //
//   Actualiza DebeTMN y HaberTME   //
//                                  //
//////////////////////////////////////
 //PARA MONEDA NACIONAL
   sSQL := ' Where CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';

   xSQL := ' UPDATE TGE401 SET ';

   For iX := 0 To 13 Do
   Begin
      xMes := strzero(IntToStr(iX), 2);

      If iX = 0 Then
      Begin
         sSQL1 := sSQL1 + '(' + wReplacCeros + '(SALDTMN' + xmes + ',0)+' + wReplacCeros + '(DEBETMN' + xmes + ',0)-' + wReplacCeros + '(HABETMN' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDTMN' + xmes + '=' + sSQL1 + ',';

         sSQL3 := sSQL3 + '(' + wReplacCeros + '(SALDSMN' + xmes + ',0)+' + wReplacCeros + '(DEBESMN' + xmes + ',0)-' + wReplacCeros + '(HABESMN' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDSMN' + xmes + '=' + sSQL3;
      End
      Else
      Begin
         sSQL1 := sSQL1 + '+ ' + wReplacCeros + '(DEBETMN' + xmes + ',0)-' + wReplacCeros + '(HABETMN' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDTMN' + xmes + '=' + sSQL1;

         sSQL3 := sSQL3 + '+ ' + wReplacCeros + '(DEBESMN' + xmes + ',0)-' + wReplacCeros + '(HABESMN' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDSMN' + xmes + '=' + sSQL3;
      End;
   End;
   Try
      DCOM1.AppServer.EjecutaSQL(xSQL + ssql);
   Except
      wSaldosAuxiliar := False;
   End;

 //PARA MONEDA EXTRANJERA
   sSQL := ' Where CIAID=' + '''' + xxCia + '''' + ' and '
      + 'ANO=' + '''' + xxAno + '''' + ' and '
      + 'CLAUXID=' + '''' + xxClAux + '''' + ' and '
      + 'AUXID=' + '''' + xxAux + '''';

   xSQL := ' UPDATE TGE401 SET ';

   For iX := 0 To 13 Do
   Begin
      xMes := strzero(IntToStr(iX), 2);

      If iX = 0 Then
      Begin
         sSQL2 := sSQL2 + '(' + wReplacCeros + '(SALDTME' + xmes + ',0)+' + wReplacCeros + '(DEBETME' + xmes + ',0)-' + wReplacCeros + '(HABETME' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDTME' + xmes + '=' + sSQL2 + ',';

         sSQL4 := sSQL4 + '(' + wReplacCeros + '(SALDSME' + xmes + ',0)+' + wReplacCeros + '(DEBESME' + xmes + ',0)-' + wReplacCeros + '(HABESME' + xmes + ',0) ) ';
         xSQL := xSQL + ' SALDSME' + xmes + '=' + sSQL4;
      End
      Else
      Begin
         sSQL2 := sSQL2 + '+ ' + wReplacCeros + '(DEBETME' + xmes + ',0)-' + wReplacCeros + '(HABETME' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDTME' + xmes + '=' + sSQL2;

         sSQL4 := sSQL4 + '+ ' + wReplacCeros + '(DEBESME' + xmes + ',0)-' + wReplacCeros + '(HABESME' + xmes + ',0)';
         xSQL := xSQL + ' ,SALDSME' + xmes + '=' + sSQL4;
      End;
   End;
   Try
      DCOM1.AppServer.EjecutaSQL(xSQL + ssql);
   Except
      wSaldosAuxiliar := False;
   End;
End;

Procedure TDMCXC.ReconcileError(DataSet: TCustomClientDataSet;
   E: EReconcileError; UpdateKind: TUpdateKind;
   Var Action: TReconcileAction);
Begin
// Inicio HPC_201402_CXC
//	Action:=HandleReconcileError(DataSet,UpdateKind,E);
// Fin HPC_201402_CXC
End;

Function TDMCXC.NombreMes(wwMes: integer): String;
Begin
   Case wwMes Of
      1: result := 'Enero';
      2: result := 'Febrero';
      3: result := 'Marzo';
      4: result := 'Abril';
      5: result := 'Mayo';
      6: result := 'Junio';
      7: result := 'Julio';
      8: result := 'Agosto';
      9: result := 'Setiembre';
      10: result := 'Octubre';
      11: result := 'Noviembre';
      12: result := 'Diciembre';
   End;

End;

Procedure TDMCXC.cdsMovCxCReconcileError(DataSet: TCustomClientDataSet;
   E: EReconcileError; UpdateKind: TUpdateKind;
   Var Action: TReconcileAction);
Begin
// Inicio HPC_201402_CXC
//  Action:=HandleReconcileError(DataSet,UpdateKind,E);
// Fin HPC_201402_CXC
End;

Procedure TDMCXC.GeneraContab(xxCia, xxTDiario, xxAnoMM, xxNoComp: String;
   xForma: TForm; xTipoC: String);
Var
   xSQL: String;
   xNombreBoton: String;
Begin
   ////  Contabilización en Linea: requiere que en el DM del módulo exista
   ////  cdsMOVCNT debe hacer referencia a la tabla CNT301

  //Para Verificar duplicados
   If xTipoC = 'C' Then
   Begin
      xSQL := 'Select CNTCOMPROB from CNT301 '
         + 'WHERE CIAID=' + quotedstr(xxCia) + ' AND '
         + 'CNTANOMM=' + quotedstr(xxAnoMM) + ' AND '
         + 'TDIARID=' + quotedstr(xxTDiario) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(xxNoComp);
      cdsQry.Close;
      cdsQry.ProviderName := 'dspTGE';
      cdsQry.DataRequest(xSQL);
      cdsQry.Open;
      If cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('Registro Existe en Contabilidad Compañía');
         Exit;
      End;
   End;
   If xTipoC = 'P' Then
   Begin
      xSQL := 'Select CNTCOMPROB from CNT311 '
         + 'WHERE CIAID=' + quotedstr(xxCia) + ' AND '
         + 'CNTANOMM=' + quotedstr(xxAnoMM) + ' AND '
         + 'TDIARID=' + quotedstr(xxTDiario) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(xxNoComp);
      cdsQry.Close;
      cdsQry.ProviderName := 'dspTGE';
      cdsQry.DataRequest(xSQL);
      cdsQry.Open;
      If cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('Registro Existe en Contabilidad Compañía');
         Exit;
      End;
   End;

   CreaPanel(xForma, 'Contabilizando');

   Transferencia_CXP_a_CNT(xxCia, xxTDiario, xxAnoMM, xxNoComp, xTipoC);

   If SOLConta(xxCia, xxTDiario, xxAnoMM, xxNoComp, SRV_D, xTipoC, wModulo,
      cdsMovCNT, cdsNivel, cdsResultSet,
      DCOM1, xForma) Then
      PanelMsg('Asiento Contabilizando Final', 0);

   pnlConta.Free;
End;

Procedure TDMCXC.Transferencia_CXP_a_CNT(xCia, xTDia, xAAMM, xNoComp,
   xTipoC: String);
Var
   xSQL, xWhere: String;
   xNombreBoton: String;
   cdsDetCxPx, cdsDetCxP2: TwwClientDataSet;
   xContR: Integer;
   xTOTMG, xTOTTO, xxTCambio: Double;
Begin
   // 2
   PanelMsg('Transfiriendo Asiento a Contabilidad', 0);
   cdsDetCxPx := TwwClientDataSet.Create(Self);
   cdsDetCxPx.RemoteServer := DCOM1;
   cdsDetCxPx.ProviderName := 'dspTGE';

   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
   Begin
      xSQL := 'SELECT CXC302.CIAID, CXC302.TDIARID, CXC302.CCANOMES, '
         + 'CXC302.CCNOREG, CXC302.CUENTAID, '
         + 'B.CTA_AUX,  CXC302.CLAUXID, CXC302.CLIEID, D.CLIEABR, '
         + 'B.CTA_CCOS, CXC302.CCOSID, F.CCOSABR, '
         + 'B.CTA_DOC,  CXC302.DOCID, CXC302.CCSERIE, CXC302.CCNODOC, '
         + 'E.DOCABR, ''CXC'' MODULO, CXC302.CCGLOSA, CXC302.CCDH, '
         + 'CXC302.CCTCAMPR, CXC302.CCMTOORI, '
         + 'CXC302.CCMTOLOC, '
         + 'CXC302.CCMTOEXT, '
         + 'CXC302.CCFEMIS, CXC302.CCFVCMTO, CXC302.CCFCOMP, ''P'' CCESTADO, '
         + 'CXC302.CCUSER, CURRENT DATE FECHA, CURRENT TIME HORA, CXC302.CCMM, CXC302.CCDD, '
         + 'CXC302.CCTRI, CXC302.CCSEM, CXC302.CCAAAA, CXC302.CCSS, '
         + 'CXC302.CCAATRI, CXC302.CCAASEM, CXC302.CCAASS, CXC302.TMONID, '
         + '''S'' CNTCUADRE, B.CTAABR, C.TDIARABR, '
         + '''Z'' FLAGVAR, CXC302.CCLOTE, CXC302.TIPDET, CXC302.ORDEN '
         + 'FROM CXC302 '
         + 'LEFT JOIN TGE202 B ON ( CXC302.CIAID=B.CIAID AND CXC302.CUENTAID=B.CUENTAID ) '
         + 'LEFT JOIN TGE104 C ON ( CXC302.TDIARID =C.TDIARID ) '
         + 'LEFT JOIN TGE204 D ON ( CXC302.CIAID=D.CIAID AND CXC302.CLAUXID=D.CLAUXID AND CXC302.CLIEID=D.CLIEID ) '
         + 'LEFT JOIN TGE110 E ON ( E.DOCMOD=''CXC'' AND CXC302.DOCID=E.DOCID ) '
         + 'LEFT JOIN TGE203 F ON ( CXC302.CCOSID=F.CCOSID  ) '
         + 'WHERE CXC302.CIAID=''' + xCia + ''' and '
         + 'CXC302.CCANOMES=''' + xAAMM + ''' and '
         + 'CXC302.TDIARID=''' + xTDia + ''' ';

      If (xTipoC = 'P') Or (xTipoC = 'C') Or (xTipoC = 'BP') Then
         xSQL := xSQL + 'AND CXC302.CCNOREG=''' + xNoComp + ''' ';

      xSQL := xSQL + 'ORDER BY CCREG DESC';
   End;
   If SRV_D = 'ORACLE' Then
   Begin
      xSQL := 'SELECT CXC302.CIAID, CXC302.TDIARID, CXC302.CCANOMES, '
         + 'CXC302.CCNOREG, CXC302.CUENTAID, '
         + 'B.CTA_AUX,  CXC302.CLAUXID, CXC302.CLIEID, D.CLIEABR, '
         + 'B.CTA_CCOS, CXC302.CCOSID, F.CCOSABR, '
         + 'B.CTA_DOC,  CXC302.DOCID, CXC302.CCSERIE, CXC302.CCNODOC, '
         + 'E.DOCABR, ''CXC'' MODULO, CXC302.CCGLOSA, CXC302.CCDH, '
         + 'CXC302.CCTCAMPR, CXC302.CCMTOORI, '
         + 'CXC302.CCMTOLOC, '
         + 'CXC302.CCMTOEXT, '
         + 'CXC302.CCFEMIS, CXC302.CCFVCMTO, CXC302.CCFCOMP, ''P'' CCESTADO, '
         + 'CXC302.CCUSER, SYSDATE FECHA, SYSDATE HORA, CXC302.CCMM, CXC302.CCDD, '
         + 'CXC302.CCTRI, CXC302.CCSEM, CXC302.CCAAAA, CXC302.CCSS, '
         + 'CXC302.CCAATRI, CXC302.CCAASEM, CXC302.CCAASS, CXC302.TMONID, '
         + '''S'' CNTCUADRE, B.CTAABR, C.TDIARABR, '
         + '''Z'' FLAGVAR, CXC302.CCLOTE, CXC302.TIPDET, CXC302.ORDEN '
         + ' FROM CXC302,TGE202 B,TGE104 C,TGE204 D,TGE110 E,TGE203 F  '
         + ' WHERE CXC302.CIAID=''' + xCia + ''' and '
         + ' CXC302.CCANOMES=''' + xAAMM + ''' and '
         + ' CXC302.TDIARID=''' + xTDia + ''' ';
      If (xTipoC = 'P') Or (xTipoC = 'C') Or (xTipoC = 'BP') Then
         xSQL := xSQL + ' AND CXC302.CCNOREG=''' + xNoComp + ''' ';
      xSQL := xSQL + ' AND ( CXC302.CIAID=B.CIAID(+) AND CXC302.CUENTAID=B.CUENTAID(+) ) '
         + ' AND ( CXC302.TDIARID =C.TDIARID(+) ) '
         + ' AND ( CXC302.CIAID=D.CIAID(+) AND CXC302.CLAUXID=D.CLAUXID(+) AND CXC302.CLIEID=D.CLIEID(+) ) '
         + ' AND ( CXC302.DOCID=E.DOCID(+) AND E.DOCMOD(+)=''CXC'' ) '
         + ' AND ( CXC302.CCOSID=F.CCOSID(+)  ) ';
      xSQL := xSQL + 'ORDER BY CCREG DESC';
   End;

   cdsDetCxPx.DataRequest(xSQL);
   cdsDetCxPx.Open;

   If xTipoC = 'C' Then
   Begin
      Try
         xSQL := 'delete  from CNT311 where '
            + 'CIAID=' + '''' + xCia + '''' + ' AND '
            + 'TDIARID=' + '''' + xTDia + '''' + ' AND '
            + 'CNTANOMM=' + '''' + xAAMM + '''' + ' AND '
            + 'CNTCOMPROB=' + '''' + xNoComp + '''';
     //DCOM1.AppServer.IniciaTransaccion;
         DCOM1.AppServer.EjecutaSQL(xSQL);
         //DCOM1.AppServer.GrabaTransaccion;
      Except
         //DCOM1.AppServer.RegresaTransaccion;
      End;
   End;

   If (xTipoC = 'C') Or (xTipoC = 'P') Or (xTipoC = 'BP') Then
      Filtracds(cdsMovCNT, 'Select * from CNT311 Where '
         + 'CIAID=' + '''' + xCia + '''' + ' AND '
         + 'TDIARID=' + '''' + xTDia + '''' + ' AND '
         + 'CNTANOMM=' + '''' + xAAMM + '''' + ' AND '
         + 'CNTCOMPROB=' + '''' + xNoComp + '''');

   If xTipoC = 'B' Then
      Filtracds(cdsMovCNT, 'Select * from CNT301 Where '
         + 'CIAID=' + '''' + xCia + '''' + ' AND '
         + 'TDIARID=' + '''' + xTDia + '''' + ' AND '
         + 'CNTANOMM=' + '''' + xAAMM + '''');

   xTOTMG := 0;
   xTOTTO := 0;

   xContR := 0;
   cdsDetCxPx.First;
   While Not cdsDetCxPx.EOF Do
   Begin
      cdsMovCNT.Insert;
      cdsMovCNT.FieldByName('CIAID').Value := cdsDetCxPx.FieldByName('CIAID').AsString;
      cdsMovCNT.FieldByName('TDIARID').Value := cdsDetCxPx.FieldByName('TDIARID').AsString;
      cdsMovCNT.FieldByName('CNTANOMM').Value := cdsDetCxPx.FieldByName('CCANOMES').AsString;
      cdsMovCNT.FieldByName('CNTCOMPROB').Value := cdsDetCxPx.FieldByName('CCNOREG').AsString;
      cdsMovCNT.FieldByName('CUENTAID').Value := cdsDetCxPx.FieldByName('CUENTAID').AsString;
      If cdsDetCxPx.FieldByName('CTA_AUX').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('CLAUXID').Value := cdsDetCxPx.FieldByName('CLAUXID').AsString;
         cdsMovCNT.FieldByName('AUXID').Value := cdsDetCxPx.FieldByName('CLIEID').AsString;
         cdsMovCNT.FieldByName('AUXDES').Value := cdsDetCxPx.FieldByName('CLIEABR').AsString;
      End;
      If cdsDetCxPx.FieldByName('CTA_CCOS').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('CCOSID').Value := cdsDetCxPx.FieldByName('CCOSID').AsString;
         cdsMovCNT.FieldByName('CCOSDES').Value := cdsDetCxPx.FieldByName('CCOSABR').AsString;
      End;
      If cdsDetCxPx.FieldByName('CTA_DOC').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('DOCID').Value := cdsDetCxPx.FieldByName('DOCID').AsString;
         cdsMovCNT.FieldByName('CNTSERIE').Value := cdsDetCxPx.FieldByName('CCSERIE').AsString;
         cdsMovCNT.FieldByName('CNTNODOC').Value := cdsDetCxPx.FieldByName('CCNODOC').AsString;
         cdsMovCNT.FieldByName('DOCDES').Value := cdsDetCxPx.FieldByName('DOCABR').AsString;
      End;
      cdsMovCNT.FieldByName('CNTMODDOC').Value := cdsDetCxPx.FieldByName('MODULO').AsString;
      cdsMovCNT.FieldByName('CNTGLOSA').Value := cdsDetCxPx.FieldByName('CCGLOSA').AsString;
      cdsMovCNT.FieldByName('CNTDH').Value := cdsDetCxPx.FieldByName('CCDH').AsString;

      {if DMCXC.cdsCia.FieldByName('IGVSN').AsString='2' then begin
         if cdsDetCxPx.FieldByName('TIPDET').AsString='MG' then
            cdsMovCNT.FieldByName('CNTTCAMBIO').Value:=cdsDetCxPx.FieldByName('CCTCAMPR').AsString
     else
            cdsMovCNT.FieldByName('CNTTCAMBIO').Value:=xxTCambio;
      end
      else begin
         cdsMovCNT.FieldByName('CNTTCAMBIO').Value:=cdsDetCxPx.FieldByName('CCTCAMPR').AsString;
      end;}

      cdsMovCNT.FieldByName('CNTTCAMBIO').Value := cdsDetCxPx.FieldByName('CCTCAMPR').AsString;

      cdsMovCNT.FieldByName('CNTMTOORI').Value := FRound(cdsDetCxPx.FieldByName('CCMTOORI').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTMTOLOC').Value := FRound(cdsDetCxPx.FieldByName('CCMTOLOC').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTMTOEXT').Value := FRound(cdsDetCxPx.FieldByName('CCMTOEXT').AsFloat, 15, 2);

      cdsMovCNT.FieldByName('CNTFEMIS').Value := cdsDetCxPx.FieldByName('CCFEMIS').AsDateTime;
      cdsMovCNT.FieldByName('CNTFVCMTO').Value := cdsDetCxPx.FieldByName('CCFVCMTO').AsDateTime;
      cdsMovCNT.FieldByName('CNTFCOMP').Value := cdsDetCxPx.FieldByName('CCFCOMP').AsString;
      cdsMovCNT.FieldByName('CNTESTADO').Value := cdsDetCxPx.FieldByName('CCESTADO').AsString;
      cdsMovCNT.FieldByName('CNTUSER').Value := wUsuario;
      cdsMovCNT.FieldByName('CNTFREG').Value := cdsDetCxPx.FieldByName('FECHA').AsDateTime;
      cdsMovCNT.FieldByName('CNTHREG').Value := cdsDetCxPx.FieldByName('HORA').AsDateTime;
      cdsMovCNT.FieldByName('CNTMM').Value := cdsDetCxPx.FieldByName('CCMM').AsString;
      cdsMovCNT.FieldByName('CNTDD').Value := cdsDetCxPx.FieldByName('CCDD').AsString;
      cdsMovCNT.FieldByName('CNTTRI').Value := cdsDetCxPx.FieldByName('CCTRI').AsString;
      cdsMovCNT.FieldByName('CNTSEM').Value := cdsDetCxPx.FieldByName('CCSEM').AsString;
      cdsMovCNT.FieldByName('CNTANO').Value := cdsDetCxPx.FieldByName('CCAAAA').AsString;
      cdsMovCNT.FieldByName('CNTSS').Value := cdsDetCxPx.FieldByName('CCSS').AsString;
      cdsMovCNT.FieldByName('CNTAATRI').Value := cdsDetCxPx.FieldByName('CCAATRI').AsString;
      cdsMovCNT.FieldByName('CNTAASEM').Value := cdsDetCxPx.FieldByName('CCAASEM').AsString;
      cdsMovCNT.FieldByName('CNTAASS').Value := cdsDetCxPx.FieldByName('CCAASS').AsString;
      cdsMovCNT.FieldByName('TMONID').Value := cdsDetCxPx.FieldByName('TMONID').AsString;
      cdsMovCNT.FieldByName('CNTCUADRE').Value := cdsDetCxPx.FieldByName('CNTCUADRE').AsString;
      cdsMovCNT.FieldByName('CTADES').Value := cdsDetCxPx.FieldByName('CTAABR').AsString;
      cdsMovCNT.FieldByName('TDIARDES').Value := cdsDetCxPx.FieldByName('TDIARABR').AsString;
      cdsMovCNT.FieldByName('CNTLOTE').Value := cdsDetCxPx.FieldByName('CCLOTE').AsString;

      If cdsDetCxPx.FieldByName('CCDH').AsString = 'D' Then
      Begin
         cdsMovCNT.FieldByName('CNTDEBEMN').Value := FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2);
         cdsMovCNT.FieldByName('CNTDEBEME').Value := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
         cdsMovCNT.FieldByName('CNTHABEMN').Value := 0;
         cdsMovCNT.FieldByName('CNTHABEME').Value := 0;
      End;

      If cdsDetCxPx.FieldByName('CCDH').AsString = 'H' Then
      Begin
         cdsMovCNT.FieldByName('CNTHABEMN').Value := FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2);
         cdsMovCNT.FieldByName('CNTHABEME').Value := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
         cdsMovCNT.FieldByName('CNTDEBEMN').Value := 0;
         cdsMovCNT.FieldByName('CNTDEBEME').Value := 0;
      End;

      xContR := xContR + 1;
      cdsMovCNT.FieldByName('CNTREG').Value := xContR;
//			cdsMovCNT.FieldByName('CNTREG').Value    :=cdsDetCxPx.FieldByName('ORDEN').AsInteger;
      cdsMovCNT.FieldByName('MODULO').AsString := wModulo;
      cdsPost(cdsMovCNT);

      cdsDetCxPx.Next;
   End;

   AplicaDatos(cdsMovCNT, 'MOVCNT');
End;

Procedure TDMCXC.ControlTran(wControlError: Integer; wCDS: TClientDataSet;
   wNomArch: String);
Begin
// wControlError=1 errores en el SQL, entra a través del Except
// wControlError=9 para la grabación en línea
// wControlError=0 grabación a través de procesos batch, no actualiza físicamente
// wControlError=8 commit;
// DMCXC.ControlTran( 0, nil, '' ); para grabar todas los cds que han sido modificados
// DMCXC.ControlTran( 0, DMCXC.cdsGuia, 'GUIA');  graba sólo el cds especificado

   If wControlError = 1 Then
   Begin
      Dcom1.AppServer.RetornaTransaccion;
      ErrorCount := 1;
      ShowMessage('Avise a su Proveedor de Software...( 1 )');
      Application.Terminate;
      Abort;
   End;

   If wControlError = 9 Then
   Begin
      DCOM1.AppServer.IniciaTransaccion;
      ErrorCount := 0;
      wControlError := 8;
   End;

   If wNomArch <> '' Then
   Begin
      If ErrorCount = 0 Then
         AplicaDatos(wCDS, wNomArch);
   End;
{	 else
  begin
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDHojaT, 'DHOJAT' );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDetCanje,'DetCanje' );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsLetras, 'Letras'  );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsCCanje, 'CCanje'  );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsMovCxC, 'MovCxC' );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsMovCxC2Clone,'MovCxC2' );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsHojaT, 'HOJAT' );
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsMovFac, 'MOVFAC' ) ;
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDetFac, 'DETFAC' ) ;
      if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsMovCxC2, 'MovCxC2' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDocCobranza, 'DOCCOBRANZA' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsCLiqCob1, 'CLiqCob1' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDLiqCobClone, 'DLiqCob' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDLiqCob, 'DLiqCob' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDLiqCob1, 'DLiqCob1' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDetPagoLiq, 'DetPagoLiq' );
   if ErrorCount = 0 then
     DMCXC.AplicaDatos( DMCXC.cdsDetCxC, 'DetCxC' );
  end;
}
   If wControlError = 8 Then
      If ErrorCount = 0 Then
         DCOM1.AppServer.GrabaTransaccion;

   If ErrorCount > 0 Then
   Begin
      DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('Avise a su Proveedor de Software...( 1 )');
      Application.Terminate;
      Abort;
   End;
End;

Function TDMCXC.VerificaCierre(xxCia: String; xxFecha: TDateTime): Boolean;
Var
   sSQL: String;
   vfecult, vmasdia: Tdate;
   vyear, vmonth, vday: word;
   vyear1, vmonth1, vday1: word;
   vyear2, vmonth2, vday2: word;
Begin

   result := True;
   sSQL := 'SELECT * FROM CXC312 '
      + 'WHERE CIAID=' + QuotedStr(xxCia)
      + ' AND ''' + DateToStr(xxFecha) + '''>=CNSPRICIE and ''' + DateToStr(xxFecha) + '''<=CNSULTCIE '
      + 'ORDER BY CNSULTCIE DESC';

   cdsQry.Close;
   cdsQry.DataRequest(sSQL);
   cdsQry.Open;
   If cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No Existe Periodo Operativo en Cuentas por Cobrar');
      result := False;
   End
   Else
   Begin
      If cdsQry.fieldbyname('ESTVEN').AsString = 'C' Then
      Begin
         ShowMessage('No se puede Registrar Documento con Fecha ' + DateToStr(xxFecha) + #13 + #13
            + 'Rango Desde ' + DateToStr(cdsQry.fieldbyname('CNSPRICIE').AsDateTime)
            + ' al ' + DateToStr(cdsQry.fieldbyname('CNSULTCIE').AsDateTime) + ' ya fue Cerrado');
         result := False;
      End;
   End;
  {

 sSQL := 'SELECT * FROM CXC312'
       +' WHERE CXC312.CIAID='+quotedstr(xxCia);
//							+' ORDER BY CIAID,CNSULTCIE';
 cdsCierre.Close;
 cdsCierre.DataRequest(sSQL);
 cdsCierre.Open;
 cdsCierre.IndexFieldNames:='CIAID;CNSULTCIE';
   cdsCierre.Last;

 if cdsCierre.RecordCount = 0 then
 begin
      result:=TRUE;
   end
   else
   begin
      vmasdia := StrToDate(cdsCierre.fieldbyname('CNSPRICIE').AsString);
      vfecult := StrtoDate(cdsCierre.fieldbyname('CNSULTCIE').AsString);
      DecodeDate(vmasdia,vyear,vmonth,vday);   //calculado
      DecodeDate(vfecult,vyear1,vmonth1,vday1); // anterior
      DecodeDate(xxFecha,vyear2,vmonth2,vday2);  //digitada

      result:=NOT (( xxFecha >= vmasdia ) and ( xxFecha <= vfecult ))
 end;   }
End;

Function TDMCXC.BuscaUltNumeroEnMemoria(ClientDataSet: TwwClientDataSet; ssCia, ssTD, ssSer: String): String;
Var
   cdsClone: TwwClientDataSet;
   nLen: Integer;
Begin
   cdsClone := TwwClientDataSet.Create(Nil);
   cdsClone.CloneCursor(ClientDataSet, False);
   cdsClone.Filter := 'CIAID=' + QuotedStr(ssCia) + ' AND CCSERIE=' + QuotedStr(ssSer) + ' AND DOCID=' + QuotedStr(ssTD);
   cdsClone.Filtered := True;
   If cdsClone.RecordCount > 0 Then
   Begin
      cdsClone.IndexFieldNames := 'CIAID;DOCID;CCNODOC';
      cdsClone.Last;
      nLen := Length(cdsClone.FieldByName('CCNODOC').AsString);
      If nLen <= 10 Then
         result := StrZero(inttostr(strtoint(Trim(cdsClone.FieldByName('CCNODOC').AsString)) + 1), nLen);
   End
   Else
   Begin
      result := '0000000001';
   End;

   cdsClone.Free;
End;

Procedure TDMCXC.GeneraContab320(xxCia, xxTDiario, xxAnoMM, xxNoComp: String;
   xForma: TForm; xTipoC, xLicoid, xCoid: String);
Var
   xSQL: String;
   xNombreBoton: String;
Begin
   ////  Contabilización en Linea: requiere que en el DM del módulo exista
   ////  cdsMOVCNT debe hacer referencia a la tabla CNT301

  //Para Verificar duplicados
   If xTipoC = 'C' Then
   Begin
      xSQL := 'Select CNTCOMPROB from CNT301 '
         + 'WHERE CIAID=' + quotedstr(xxCia) + ' AND '
         + 'CNTANOMM=' + quotedstr(xxAnoMM) + ' AND '
         + 'TDIARID=' + quotedstr(xxTDiario) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(xxNoComp);
      cdsQry.Close;
      cdsQry.ProviderName := 'dspTGE';
      cdsQry.DataRequest(xSQL);
      cdsQry.Open;
      If cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('Registro Existe en Contabilidad Compañía');
         Exit;
      End;
   End;
   If xTipoC = 'P' Then
   Begin
      xSQL := 'Select CNTCOMPROB from CNT311 '
         + 'WHERE CIAID=' + quotedstr(xxCia) + ' AND '
         + 'CNTANOMM=' + quotedstr(xxAnoMM) + ' AND '
         + 'TDIARID=' + quotedstr(xxTDiario) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(xxNoComp);
      cdsQry.Close;
      cdsQry.ProviderName := 'dspTGE';
      cdsQry.DataRequest(xSQL);
      cdsQry.Open;
      If cdsQry.Recordcount > 0 Then
      Begin
         ShowMessage('Registro Existe en Contabilidad Compañía');
         Exit;
      End;
   End;

   CreaPanel(xForma, 'Contabilizando');

   Transferencia_CXC320_a_CNT(xxCia, xxTDiario, xxAnoMM, xxNoComp, xTipoC, xLicoid, xCoid);

   If SOLConta(xxCia, xxTDiario, xxAnoMM, xxNoComp, SRV_D, xTipoC, wModulo,
      cdsMovCNT, cdsNivel, cdsResultSet,
      DCOM1, xForma) Then
      PanelMsg('Asiento Contabilizando Final', 0);

   pnlConta.Free;
End;

Procedure TDMCXC.Transferencia_CXC320_a_CNT(xCia, xTDia, xAAMM, xNoComp,
   xTipoC, xLicoId, xCoid: String);
Var
   xRemesa, xSQL, xWhere, xDH: String;
   xNombreBoton: String;
   cdsDetCxPx, cdsDetCxP2: TwwClientDataSet;
   xContR: Integer;
   xTOTMG, xTOTTO, xxTCambio: Double;
   bDifCambio: boolean;

   Procedure GeneraDiferenciaDeCambio(xxDH, xxNoComp, xxTDia: String);
   Var
      xSQL, xCuenta: String;
   Begin
      If xxDH = 'D' Then
         xSQL := 'SELECT * FROM TGE202 WHERE CIAID=' + QuotedStr(cdsDetCxPx.FieldByName('CIAID').AsString) + ' AND CTA_DIFGP=''P'''
      Else
         xSQL := 'SELECT * FROM TGE202 WHERE CIAID=' + QuotedStr(cdsDetCxPx.FieldByName('CIAID').AsString) + ' AND CTA_DIFGP=''G''';

      cdsQry.Close;
      cdsQry.DataRequest(xSQL);
      cdsQry.Open;

      cdsMovCNT.Insert;
      cdsMovCNT.FieldByName('CIAID').AsString := cdsDetCxPx.FieldByName('CIAID').AsString;
      cdsMovCNT.FieldByName('TDIARID').AsString := cdsDetCxPx.FieldByName('TDIARID').AsString;
      cdsMovCNT.FieldByName('CNTANOMM').AsString := cdsDetCxPx.FieldByName('LICOANOMM').AsString;
      cdsMovCNT.FieldByName('CNTCOMPROB').AsString := cdsDetCxPx.FieldByName('CCNOREG').AsString;
      cdsMovCNT.FieldByName('CNTFCOMP').AsDateTime := DateS;

      cdsMovCNT.FieldByName('CUENTAID').AsString := cdsQry.FieldByName('CUENTAID').AsString;
      If cdsQry.FieldByName('CTA_AUX').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('CLAUXID').AsString := cdsDetCxPx.FieldByName('CLAUXID').AsString;
         cdsMovCNT.FieldByName('AUXID').AsString := cdsDetCxPx.FieldByName('CLIEID').AsString;
         cdsMovCNT.FieldByName('AUXDES').AsString := cdsDetCxPx.FieldByName('CLIEABR').AsString;
      End;
      If cdsQry.FieldByName('CTA_CCOS').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('CCOSID').AsString := cdsDetCxPx.FieldByName('CCOSID').AsString;
         cdsMovCNT.FieldByName('CCOSDES').AsString := cdsDetCxPx.FieldByName('CCOSABR').AsString;
      End;
      If cdsQry.FieldByName('CTA_DOC').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('DOCID').AsString := cdsDetCxPx.FieldByName('DOCID').AsString;
         cdsMovCNT.FieldByName('CNTSERIE').AsString := cdsDetCxPx.FieldByName('CCSERIE').AsString;
         cdsMovCNT.FieldByName('CNTNODOC').AsString := cdsDetCxPx.FieldByName('CCNODOC').AsString;
         cdsMovCNT.FieldByName('DOCDES').AsString := cdsDetCxPx.FieldByName('DOCABR').AsString;
      End;
      cdsMovCNT.FieldByName('CNTMODDOC').AsString := wModulo;
      cdsMovCNT.FieldByName('CNTGLOSA').AsString := cdsQry.FieldByName('CTADES').AsString;
      cdsMovCNT.FieldByName('CNTDH').AsString := xxDH;

      cdsMovCNT.FieldByName('CNTTCAMBIO').AsFloat := cdsDetCxPx.FieldByName('LICOTCAMB').AsFloat;

      cdsMovCNT.FieldByName('CNTMTOORI').AsFloat := 0; //FRound(cdsDetCxPx.FieldByName('LICOMTOABOORI').AsFloat,15,2);
      cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat := 0; //FRound(cdsDetCxPx.FieldByName('LICOMTOABOLOC').AsFloat,15,2);
      cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat := 0; //FRound(cdsDetCxPx.FieldByName('LICOMTOABOEXT').AsFloat,15,2);

      //cdsMovCNT.FieldByName('CNTFEMIS').AsDateTime  :=cdsDetCxPx.FieldByName('CCFEMIS').AsDateTime;
      //cdsMovCNT.FieldByName('CNTFVCMTO').AsDateTime :=cdsDetCxPx.FieldByName('CCFVCMTO').AsDateTime;
      //cdsMovCNT.FieldByName('CNTFCOMP').AsDateTime  :=cdsDetCxPx.FieldByName('CCFCOMP').AsDateTime;
      cdsMovCNT.FieldByName('CNTESTADO').AsString := cdsDetCxPx.FieldByName('CCESTADO').AsString;
      cdsMovCNT.FieldByName('CNTUSER').AsString := wUsuario;
      cdsMovCNT.FieldByName('CNTFREG').AsDateTime := cdsDetCxPx.FieldByName('FECHA').AsDateTime;
      cdsMovCNT.FieldByName('CNTHREG').AsDateTime := cdsDetCxPx.FieldByName('HORA').AsDateTime;

      cdsMovCNT.FieldByName('CNTMM').AsString := cdsDetCxPx.FieldByName('LICOMM').AsString;
      cdsMovCNT.FieldByName('CNTDD').AsString := cdsDetCxPx.FieldByName('LICODD').AsString;
      cdsMovCNT.FieldByName('CNTTRI').AsString := cdsDetCxPx.FieldByName('LICOTRI').AsString;
      cdsMovCNT.FieldByName('CNTSEM').AsString := cdsDetCxPx.FieldByName('LICOSEM').AsString;
      cdsMovCNT.FieldByName('CNTANO').AsString := cdsDetCxPx.FieldByName('LICOANO').AsString;
      cdsMovCNT.FieldByName('CNTSS').AsString := cdsDetCxPx.FieldByName('LICOSS').AsString;
      cdsMovCNT.FieldByName('CNTAATRI').AsString := cdsDetCxPx.FieldByName('LICOAATRI').AsString;
      cdsMovCNT.FieldByName('CNTAASEM').AsString := cdsDetCxPx.FieldByName('LICOAASEM').AsString;
      cdsMovCNT.FieldByName('CNTAASS').AsString := cdsDetCxPx.FieldByName('LICOAASS').AsString;

      cdsMovCNT.FieldByName('TMONID').AsString := cdsDetCxPx.FieldByName('TMONID').AsString;
      cdsMovCNT.FieldByName('CNTCUADRE').AsString := cdsDetCxPx.FieldByName('CNTCUADRE').AsString;
      cdsMovCNT.FieldByName('CTADES').AsString := cdsQry.FieldByName('CTADES').AsString;
      cdsMovCNT.FieldByName('TDIARDES').AsString := cdsDetCxPx.FieldByName('TDIARABR').AsString;
      cdsMovCNT.FieldByName('CNTLOTE').AsString := cdsDetCxPx.FieldByName('CCLOTE').AsString;

      If xxDH = 'D' Then
      Begin
         cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat := FRound(Abs(FRound(cdsDetCxPx.FieldByName('LICOMTOABOEXT').AsFloat * cdsDetCxPx.FieldByName('LICOTCAMBL').AsFloat, 15, 2) - FRound(cdsDetCxPx.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2)), 15, 2);
         cdsMovCNT.FieldByName('CNTDEBEME').AsFloat := 0;
         cdsMovCNT.FieldByName('CNTHABEMN').AsFloat := 0;
         cdsMovCNT.FieldByName('CNTHABEME').AsFloat := 0;
      End;
      If xxDH = 'H' Then
      Begin
         cdsMovCNT.FieldByName('CNTHABEMN').AsFloat := FRound(Abs(FRound(cdsDetCxPx.FieldByName('LICOMTOABOEXT').AsFloat * cdsDetCxPx.FieldByName('LICOTCAMBL').AsFloat, 15, 2) - FRound(cdsDetCxPx.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2)), 15, 2);
         cdsMovCNT.FieldByName('CNTHABEME').AsFloat := 0;
         cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat := 0;
         cdsMovCNT.FieldByName('CNTDEBEME').AsFloat := 0;
      End;
      xContR := xContR + 1;
      cdsMovCNT.FieldByName('CNTREG').AsInteger := xContR;
      cdsMovCNT.FieldByName('MODULO').AsString := wModulo;
      cdsPost(cdsMovCNT);
      cdsMovCNT.Post;
      AplicaDatos(cdsMovCNT, 'MOVCNT');
   End;

Begin
   xRemesa := BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'COBCONS=''S''', 'CTAREMES');
   // 2
   PanelMsg('Transfiriendo Asiento a Contabilidad', 0);
   cdsDetCxPx := TwwClientDataSet.Create(Self);
   cdsDetCxPx.RemoteServer := DCOM1;
   cdsDetCxPx.ProviderName := 'dspTGE';

   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
   Begin
      xSQL := 'SELECT CXC302.CIAID, ' + QuotedStr(xTDia) + ' TDIARID, F.FECANO||F.FECMES LICOANOMM , '
         + QuotedStr(xNoComp) + ' CCNOREG, CXC302.CUENTAID, '
         + 'B.CTA_AUX,  CXC302.CLAUXID, CXC302.CLIEID, D.CLIEABR, '
         + 'B.CTA_CCOS, '''' CCOSID, '''' CCOSABR, '
         + 'B.CTA_DOC,  CXC302.DOCID, CXC302.CCSERIE, CXC302.CCNODOC, '
         + 'E.DOCABR, ''CXC'' MODULO, ''CONS. ''|| CXC302.LICOUSER||'' N° ''||CXC302.LICOID CCGLOSA, ''H'' CCDH, '
         + 'CXC302.LICOTCAMB, CXC302.LICOTCAMBL, CXC302.LICOMTOABOORI, '
         + 'CXC302.LICOMTOABOLOC, '
         + 'CXC302.LICOMTOABOEXT, '
         + 'CXC302.CCFEMIS, CXC302.CCFVCMTO, CXC302.CCFCOMP, ''P'' CCESTADO, '
         + 'CXC302.LICOUSER, CURRENT DATE FECHA, CURRENT TIME HORA, '
         + 'F.FECMES LICOMM,  F.FECDIA LICODD, F.FECTRIM LICOTRI, F.FECSEM LICOSEM, F.FECANO LICOANO, F.FECSS LICOSS, '
         + 'F.FECAATRI LICOAATRI, F.FECAASEM LICOAASEM, F.FECAASS LICOAASS,CXC302.TMONID, '
         + '''S'' CNTCUADRE, B.CTAABR, C.TDIARABR, '
         + '''Z'' FLAGVAR, ''000'' CCLOTE, '''' TIPDET, 1 ORDEN '
         + 'FROM CXC320 CXC302 '
         + 'LEFT JOIN TGE202 B ON ( CXC302.CIAID=B.CIAID AND CXC302.CUENTAID=B.CUENTAID ) '
         + 'LEFT JOIN TGE104 C ON ( C.TDIARID=' + QuotedStr(xTDia) + ' ) '
         + 'LEFT JOIN TGE204 D ON ( CXC302.CIAID=D.CIAID AND CXC302.CLAUXID=D.CLAUXID AND CXC302.CLIEID=D.CLIEID ) '
         + 'LEFT JOIN TGE110 E ON ( E.DOCMOD=''CXC'' AND CXC302.DOCID=E.DOCID ) '
         + 'LEFT JOIN CXC318 G ON ( G.CIAID=CXC302.CIAID AND G.LICOID=CXC302.LICOID AND G.COID=CXC302.COID ) '
         + 'LEFT JOIN TGE114 F ON F.FECHA=G.CCFEMIS '
         + 'WHERE CXC302.CIAID=''' + xCia + ''' and ' +
          {+ 'CXC302.LICOANOMM='''+ xAAMM +''' and '
          + 'CXC302.TDIARID=''' + xTDia +''' ';}
      ' CXC302.LICOID=' + QuotedStr(xLicoid) + ' AND CXC302.COID=' + QuotedStr(xCoid);

{      If ( xTipoC='P' ) or ( xTipoC= 'C' ) or ( xTipoC= 'BP' )then
         xSQL:= xSQL+ 'AND CXC302.CCNOREG='''+ xNoComp +''' ';}
      xSQL := xSQL + ' ORDER BY ORDEN ';

   End;
   If SRV_D = 'ORACLE' Then
   Begin
      xSQL := 'SELECT CXP302.CIAID, CXP302.TDIARID, CXP302.DCPANOMM, CXP302.CPNOREG, '
         + 'CXP302.CUENTAID, '
         + 'B.CTA_AUX,  CXP302.CLAUXID, CXP302.DCPAUXID, D.PROVABR, '
         + 'B.CTA_CCOS, CXP302.CCOSID, F.CCOSABR, '
         + 'B.CTA_DOC,  CXP302.DOCID, CXP302.CPSERIE, CXP302.CPNODOC, E.DOCABR, '
         + '''CXC'' MODULO, CXP302.DCPGLOSA, CXP302.DCPDH, CXP302.CPTCAMPR, '
         + 'CXP302.DCPMOORI, '
         + 'CXP302.DCPMOLOC, '
         + 'CXP302.DCPMOEXT, '
         + 'CXP302.CPFEMIS, CXP302.CPFVCMTO, CXP302.DCPFCOM, ''P'' DCPESTDO, '
         + 'CXP302.DCPUSER, SYSDATE FECHA, SYSDATE HORA, CXP302.DCPMM, CXP302.DCPDD, '
         + 'CXP302.DCPTRI, CXP302.DCPSEM, CXP302.DCPANOC, CXP302.DCPSS, '
         + 'CXP302.DCPAATRI, CXP302.DCPAASEM, CXP302.DCPAASS, CXP302.TMONID, '
         + '''S'' CNTCUADRE, B.CTAABR, C.TDIARABR, '
         + ''' '' FLAGVAR, CXP302.DCPLOTE, CXP302.TIPDET, CXP302.DCPREG '
         + 'FROM CXP302 CXC320, TGE202 B, TGE104 C, TGE201 D, TGE110 E, TGE203 F '
         + 'WHERE CXP302.CIAID=' + '''' + xCia + '''' + ' AND '
         + 'CXP302.TDIARID=' + '''' + xTDia + '''' + ' AND '
         + 'CXP302.DCPANOMM=' + '''' + xAAMM + '''' + ' AND '
         + ' CXP302.CIAID=B.CIAID(+) AND CXP302.CUENTAID=B.CUENTAID(+) '
         + ' AND CXP302.TDIARID=C.TDIARID(+) '
         + ' AND CXP302.CLAUXID=D.CLAUXID(+) AND CXP302.DCPAUXID=D.PROV(+) '
         + ' AND ''CXC''=E.DOCMOD(+) AND CXP302.DOCID=E.DOCID(+) ';

      If (xTipoC = 'P') Or (xTipoC = 'C') Or (xTipoC = 'BP') Then
         xSQL := xSQL + 'AND CXP302.CPNOREG=' + '''' + xNoComp + ''' ';
      xSQL := xSQL + ' ORDER BY DCPREG';

   End;

   cdsDetCxPx.DataRequest(xSQL);
   cdsDetCxPx.Open;

   If xTipoC = 'C' Then
   Begin
      Try
         xSQL := 'delete  from CNT311 where '
            + 'CIAID=' + '''' + xCia + '''' + ' AND '
            + 'TDIARID=' + '''' + xTDia + '''' + ' AND '
            + 'CNTANOMM=' + '''' + xAAMM + '''' + ' AND '
            + 'CNTCOMPROB=' + '''' + xNoComp + '''';
         //DCOM1.AppServer.IniciaTransaccion;
         DCOM1.AppServer.EjecutaSQL(xSQL);
         //DCOM1.AppServer.GrabaTransaccion;
      Except
         //DCOM1.AppServer.RegresaTransaccion;
      End;
   End;

   If (xTipoC = 'C') Or (xTipoC = 'P') Or (xTipoC = 'BP') Then
      Filtracds(cdsMovCNT, 'Select * from CNT311 Where '
         + 'CIAID=' + '''' + xCia + '''' + ' AND '
         + 'TDIARID=' + '''' + xTDia + '''' + ' AND '
         + 'CNTANOMM=' + '''' + xAAMM + '''' + ' AND '
         + 'CNTCOMPROB=' + '''' + xNoComp + '''');

   If xTipoC = 'B' Then
      Filtracds(cdsMovCNT, 'Select * from CNT301 Where '
         + 'CIAID=' + '''' + xCia + '''' + ' AND '
         + 'TDIARID=' + '''' + xTDia + '''' + ' AND '
         + 'CNTANOMM=' + '''' + xAAMM + '''');

   xTOTMG := 0;
   xTOTTO := 0;

   xContR := 0;
   cdsDetCxPx.First;
   While Not cdsDetCxPx.EOF Do
   Begin
      cdsMovCNT.Insert;
      cdsMovCNT.FieldByName('CIAID').AsString := cdsDetCxPx.FieldByName('CIAID').AsString;
      cdsMovCNT.FieldByName('TDIARID').AsString := cdsDetCxPx.FieldByName('TDIARID').AsString;
      cdsMovCNT.FieldByName('CNTANOMM').AsString := cdsDetCxPx.FieldByName('LICOANOMM').AsString;
      cdsMovCNT.FieldByName('CNTCOMPROB').AsString := cdsDetCxPx.FieldByName('CCNOREG').AsString;
      cdsMovCNT.FieldByName('CNTFCOMP').AsDateTime := DateS;

      cdsMovCNT.FieldByName('CUENTAID').AsString := cdsDetCxPx.FieldByName('CUENTAID').AsString;
      If cdsDetCxPx.FieldByName('CTA_AUX').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('CLAUXID').AsString := cdsDetCxPx.FieldByName('CLAUXID').AsString;
         cdsMovCNT.FieldByName('AUXID').AsString := cdsDetCxPx.FieldByName('CLIEID').AsString;
         cdsMovCNT.FieldByName('AUXDES').AsString := cdsDetCxPx.FieldByName('CLIEABR').AsString;
      End;
      If cdsDetCxPx.FieldByName('CTA_CCOS').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('CCOSID').AsString := cdsDetCxPx.FieldByName('CCOSID').AsString;
         cdsMovCNT.FieldByName('CCOSDES').AsString := cdsDetCxPx.FieldByName('CCOSABR').AsString;
      End;
      If cdsDetCxPx.FieldByName('CTA_DOC').AsString = 'S' Then
      Begin
         cdsMovCNT.FieldByName('DOCID').AsString := cdsDetCxPx.FieldByName('DOCID').AsString;
         cdsMovCNT.FieldByName('CNTSERIE').AsString := cdsDetCxPx.FieldByName('CCSERIE').AsString;
         cdsMovCNT.FieldByName('CNTNODOC').AsString := cdsDetCxPx.FieldByName('CCNODOC').AsString;
         cdsMovCNT.FieldByName('DOCDES').AsString := cdsDetCxPx.FieldByName('DOCABR').AsString;
      End;
      cdsMovCNT.FieldByName('CNTMODDOC').AsString := cdsDetCxPx.FieldByName('MODULO').AsString;
      cdsMovCNT.FieldByName('CNTGLOSA').AsString := cdsDetCxPx.FieldByName('CCGLOSA').AsString;
      cdsMovCNT.FieldByName('CNTDH').AsString := cdsDetCxPx.FieldByName('CCDH').AsString;

      cdsMovCNT.FieldByName('CNTTCAMBIO').Value := cdsDetCxPx.FieldByName('LICOTCAMB').AsString;

      cdsMovCNT.FieldByName('CNTMTOORI').AsFloat := FRound(cdsDetCxPx.FieldByName('LICOMTOABOORI').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat := FRound(cdsDetCxPx.FieldByName('LICOMTOABOLOC').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat := FRound(cdsDetCxPx.FieldByName('LICOMTOABOEXT').AsFloat, 15, 2);

      cdsMovCNT.FieldByName('CNTFEMIS').AsDateTime := cdsDetCxPx.FieldByName('CCFEMIS').AsDateTime;
      cdsMovCNT.FieldByName('CNTFVCMTO').AsDateTime := cdsDetCxPx.FieldByName('CCFVCMTO').AsDateTime;
      //cdsMovCNT.FieldByName('CNTFCOMP').AsDateTime  :=cdsDetCxPx.FieldByName('CCFCOMP').AsDateTime;
      cdsMovCNT.FieldByName('CNTESTADO').Value := cdsDetCxPx.FieldByName('CCESTADO').AsString;
      cdsMovCNT.FieldByName('CNTUSER').AsString := wUsuario;
      cdsMovCNT.FieldByName('CNTFREG').AsDateTime := cdsDetCxPx.FieldByName('FECHA').AsDateTime;
      cdsMovCNT.FieldByName('CNTHREG').AsDateTime := cdsDetCxPx.FieldByName('HORA').AsDateTime;

      cdsMovCNT.FieldByName('CNTMM').AsString := cdsDetCxPx.FieldByName('LICOMM').AsString;
      cdsMovCNT.FieldByName('CNTDD').AsString := cdsDetCxPx.FieldByName('LICODD').AsString;
      cdsMovCNT.FieldByName('CNTTRI').AsString := cdsDetCxPx.FieldByName('LICOTRI').AsString;
      cdsMovCNT.FieldByName('CNTSEM').AsString := cdsDetCxPx.FieldByName('LICOSEM').AsString;
      cdsMovCNT.FieldByName('CNTANO').AsString := cdsDetCxPx.FieldByName('LICOANO').AsString;
      cdsMovCNT.FieldByName('CNTSS').AsString := cdsDetCxPx.FieldByName('LICOSS').AsString;
      cdsMovCNT.FieldByName('CNTAATRI').AsString := cdsDetCxPx.FieldByName('LICOAATRI').AsString;
      cdsMovCNT.FieldByName('CNTAASEM').AsString := cdsDetCxPx.FieldByName('LICOAASEM').AsString;
      cdsMovCNT.FieldByName('CNTAASS').AsString := cdsDetCxPx.FieldByName('LICOAASS').AsString;

      cdsMovCNT.FieldByName('TMONID').AsString := cdsDetCxPx.FieldByName('TMONID').AsString;
      cdsMovCNT.FieldByName('CNTCUADRE').AsString := cdsDetCxPx.FieldByName('CNTCUADRE').AsString;
      cdsMovCNT.FieldByName('CTADES').AsString := cdsDetCxPx.FieldByName('CTAABR').AsString;
      cdsMovCNT.FieldByName('TDIARDES').AsString := cdsDetCxPx.FieldByName('TDIARABR').AsString;
      cdsMovCNT.FieldByName('CNTLOTE').AsString := cdsDetCxPx.FieldByName('CCLOTE').AsString;

      If (cdsDetCxPx.FieldByName('TMONID').AsString = wTMonLoc) And (cdsDetCxPx.FieldByName('TMONIDPAGO').AsString = wTMonLoc) Then
      Begin
         If cdsDetCxPx.FieldByName('CCDH').AsString = 'D' Then
         Begin
            cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTDEBEME').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTHABEMN').AsFloat := 0;
            cdsMovCNT.FieldByName('CNTHABEME').AsFloat := 0;
         End;
         If cdsDetCxPx.FieldByName('CCDH').AsString = 'H' Then
         Begin
            cdsMovCNT.FieldByName('CNTHABEMN').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTHABEME').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat := 0;
            cdsMovCNT.FieldByName('CNTDEBEME').AsFloat := 0;
         End;
         bDifCambio := False;
      End
      Else
      Begin
         If cdsDetCxPx.FieldByName('CCDH').AsString = 'D' Then
         Begin
            cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat * cdsDetCxPx.FieldByName('LICOTCAMBL').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTDEBEME').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTHABEMN').AsFloat := 0;
            cdsMovCNT.FieldByName('CNTHABEME').AsFloat := 0;

            If FRound(cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat, 15, 2) < FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2) Then
            Begin
               bDifCambio := True;
               xDH := 'H';
            End
            Else
            Begin
               If FRound(cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat, 15, 2) > FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2) Then
               Begin
                  bDifCambio := True;
                  xDH := 'D';
               End
               Else
               Begin
                  bDifCambio := False;
               End;
            End;
         End;
         If cdsDetCxPx.FieldByName('CCDH').AsString = 'H' Then
         Begin
            cdsMovCNT.FieldByName('CNTHABEMN').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat * cdsDetCxPx.FieldByName('LICOTCAMBL').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTHABEME').AsFloat := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
            cdsMovCNT.FieldByName('CNTDEBEMN').AsFloat := 0;
            cdsMovCNT.FieldByName('CNTDEBEME').AsFloat := 0;

            If FRound(cdsMovCNT.FieldByName('CNTHABEMN').AsFloat, 15, 2) < FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2) Then
            Begin
               bDifCambio := True;
               xDH := 'H';
            End
            Else
            Begin
               If FRound(cdsMovCNT.FieldByName('CNTHABEMN').AsFloat, 15, 2) > FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2) Then
               Begin
                  bDifCambio := True;
                  xDH := 'D';
               End
               Else
               Begin
                  bDifCambio := False;
               End;
            End;
         End;
      End;
      xContR := xContR + 1;
      cdsMovCNT.FieldByName('CNTREG').AsInteger := xContR;
      cdsMovCNT.FieldByName('MODULO').AsString := wModulo;
      cdsPost(cdsMovCNT);
      cdsMovCNT.Post;
      AplicaDatos(cdsMovCNT, 'MOVCNT');
      If bDifCambio Then
      Begin
         GeneraDiferenciaDeCambio(xDH, xNoComp, xTDia);
      End;

      cdsDetCxPx.Next;
   End;

   //INSERTA EL REGISTRO DEL DEBE PARA LA CUENTA REMESA
   cdsMovCNT.Insert;
   cdsMovCNT.FieldByName('CIAID').Value := cdsCLiqCob1.FieldByName('CIAID').AsString;
   cdsMovCNT.FieldByName('TDIARID').Value := xTDia;
   cdsMovCNT.FieldByName('CNTANOMM').Value := cdsCLiqCob1.FieldByName('LICOANOMM').AsString;
   cdsMovCNT.FieldByName('CNTCOMPROB').Value := xNoComp;
   cdsMovCNT.FieldByName('CNTFCOMP').AsDateTime := DateS;
   cdsMovCNT.FieldByName('CUENTAID').Value := xRemesa;
      //if cdsDetCxPx.FieldByName('CTA_AUX').AsString='S' then
   Begin
      cdsMovCNT.FieldByName('CLAUXID').Value := '';
      cdsMovCNT.FieldByName('AUXID').Value := '';
      cdsMovCNT.FieldByName('AUXDES').Value := '';
   End;
      //if cdsDetCxPx.FieldByName('CTA_CCOS').AsString='S' then
   Begin
      cdsMovCNT.FieldByName('CCOSID').Value := '';
      cdsMovCNT.FieldByName('CCOSDES').Value := '';
   End;
   //if cdsDetCxPx.FieldByName('CTA_DOC').AsString='S' then
   Begin
      cdsMovCNT.FieldByName('DOCID').Value := '';
      cdsMovCNT.FieldByName('CNTSERIE').Value := '';
      cdsMovCNT.FieldByName('CNTNODOC').Value := '';
      cdsMovCNT.FieldByName('DOCDES').Value := '';
   End;
   cdsMovCNT.FieldByName('CNTMODDOC').Value := wModulo;
   cdsMovCNT.FieldByName('CNTGLOSA').Value := 'COB. N° ' + xLicoId;
   cdsMovCNT.FieldByName('CNTDH').Value := 'D';

   cdsMovCNT.FieldByName('CNTTCAMBIO').Value := cdsCLiqCob1.FieldByName('LICOTCAMB').AsString;

   If cdsCLiqCob1.FieldByName('TMONID').AsString = wTMonLoc Then
      cdsMovCNT.FieldByName('CNTMTOORI').Value := FRound(cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat, 15, 2)
   Else
      cdsMovCNT.FieldByName('CNTMTOORI').Value := FRound(cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat, 15, 2);

   cdsMovCNT.FieldByName('CNTMTOLOC').Value := FRound(cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat, 15, 2);
   cdsMovCNT.FieldByName('CNTMTOEXT').Value := FRound(cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat, 15, 2);

   cdsMovCNT.FieldByName('CNTFEMIS').Value := cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime;
   cdsMovCNT.FieldByName('CNTFVCMTO').Value := 0;
   cdsMovCNT.FieldByName('CNTESTADO').Value := 'P';
   cdsMovCNT.FieldByName('CNTUSER').Value := wUsuario;
   cdsMovCNT.FieldByName('CNTFREG').AsDateTime := DateS;
   cdsMovCNT.FieldByName('CNTHREG').AsDateTime := TimeS;

   If BuscaFecha('TGE114', 'Fecha', DateS) Then
   Begin
      cdsMovCNT.FieldByName('CNTMM').Value := cdsQry2.FieldByName('FECMES').AsString;
      cdsMovCNT.FieldByName('CNTDD').Value := cdsQry2.FieldByName('FECDIA').AsString;
      cdsMovCNT.FieldByName('CNTTRI').Value := cdsQry2.FieldByName('FECTRIM').AsString;
      cdsMovCNT.FieldByName('CNTSEM').Value := cdsQry2.FieldByName('FECSEM').AsString;
      cdsMovCNT.FieldByName('CNTANO').Value := cdsQry2.FieldByName('FECANO').AsString;
      cdsMovCNT.FieldByName('CNTSS').Value := cdsQry2.FieldByName('FECSS').AsString;
      cdsMovCNT.FieldByName('CNTAATRI').Value := cdsQry2.FieldByName('FECAATRI').AsString;
      cdsMovCNT.FieldByName('CNTAASEM').Value := cdsQry2.FieldByName('FECAASEM').AsString;
      cdsMovCNT.FieldByName('CNTAASS').Value := cdsQry2.FieldByName('FECAASS').AsString;
   End;

   cdsMovCNT.FieldByName('TMONID').Value := cdsCLiqCob1.FieldByName('TMONID').AsString;
   cdsMovCNT.FieldByName('CNTCUADRE').Value := 'S';
   cdsMovCNT.FieldByName('CTADES').Value := BuscaQry('dspTGE', 'TGE202', 'CTADES', 'CIAID=' + QuotedStr(xCia) + ' AND CUENTAID=' + QuotedStr(xRemesa), 'CTADES');
   cdsMovCNT.FieldByName('TDIARDES').Value := BuscaQry('dspTGE', 'TGE104', 'TDIARABR', 'TDIARID=' + QuotedStr(xTDia), 'TDIARABR');
   cdsMovCNT.FieldByName('CNTLOTE').Value := '000';

   If cdsMovCNT.FieldByName('CNTDH').AsString = 'D' Then
   Begin
      cdsMovCNT.FieldByName('CNTDEBEMN').Value := FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTDEBEME').Value := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTHABEMN').Value := 0;
      cdsMovCNT.FieldByName('CNTHABEME').Value := 0;
   End;

   If cdsMovCNT.FieldByName('CNTDH').AsString = 'H' Then
   Begin
      cdsMovCNT.FieldByName('CNTHABEMN').Value := FRound(cdsMovCNT.FieldByName('CNTMTOLOC').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTHABEME').Value := FRound(cdsMovCNT.FieldByName('CNTMTOEXT').AsFloat, 15, 2);
      cdsMovCNT.FieldByName('CNTDEBEMN').Value := 0;
      cdsMovCNT.FieldByName('CNTDEBEME').Value := 0;
   End;

   xContR := xContR + 1;
   cdsMovCNT.FieldByName('CNTREG').Value := xContR;
   //cdsMovCNT.FieldByName('CNTREG').Value    :=cdsDetCxPx.FieldByName('ORDEN').AsInteger;
   cdsMovCNT.FieldByName('MODULO').AsString := wModulo;
   cdsPost(cdsMovCNT);
   cdsMovCNT.Post;
   AplicaDatos(cdsMovCNT, 'MOVCNT');
End;

//CIM  CONTROLTRAN CON REPLICADATOS 12/08/2002
{procedure TDRepiteAplicaDatos(wCDS: TClientDataSet; wNomArch: String);
var cad:OleVariant;
begin
 wFErrorCode:=0;
 DMCXC.AplicaDatos( wCDS,wNomArch );

 while wFErrorCode=13059  do
 begin
  if wFErrorCode=13059 then  // 13059 SIGNIFICA: MENSAJE SE HA RETROTRAIDO TIEMPO MUERTO POR RETENCION DE
                //       REGISTRO DE OTRO USUARIO
  begin
   if MessageDlg('Desea Repetir la grabación de la Tabla: '+wCDS.name,mtConfirmation, [mbYes, mbNo], 0)=mrNo then
   begin
    DMCXC.DCOM1.AppServer.oaRollBack;
    Screen.Cursor:=crDefault;
    abort;
   end
   else
   begin
    wFErrorCode:=0;
    DMCXC.AplicaDatos( wCDS,wNomArch );
   end;
  end;
 end;
 if wFErrorCode=1 then
 begin
  ShowMessage(wCDS.name+' está siendo utilizado por otro usuario en este momento'+#13+
        'Intente de nuevo...');
  DMCXC.DCOM1.AppServer.oaRollBack;
  Screen.Cursor:=crDefault;
  abort;
 end;
end;

function TDMCXC.ControlTran(wControlError: Integer; wCDS: TClientDataSet;
 wNomArch: String): boolean;
var  bFlag : boolean;
   sCDS,sNomArch:string;
begin
// wControlError=1 errores en el SQL, entra a través del Except
// wControlError=9 para la grabación en línea
// wControlError=0 grabación a través de procesos batch, no actualiza físicamente
// wControlError=8 commit;
// DMCXC.ControlTran( 0, nil, '' ); para grabar todas los cds que han sido modificados
// DMCXC.ControlTran( 0, DMCXC.cdsGuia, 'GUIA');  graba sólo el cds especificado

  bFlag := true;
  if wControlError=1 then
  begin
   DMCXC.Dcom1.AppServer.SolRollBack;
   ErrorCount:=1;
   result := not bflag;
   ShowMessage('Avise a su Proveedor de Software...( Codigo: ''FFFF0001'' )');
   //Application.Terminate;
   Abort;
  end;

  if wControlError=9 then
  begin
   DCOM1.AppServer.SOLStartTransaction;
   ErrorCount:=0; wControlError:=8;
  end;

  if wNomArch<>'' then
  begin
   if (ErrorCount = 0)  then
   begin
     sCDS:=wCDS.Name; sNomArch:=wNomArch;
     DMCXC.RepiteAplicaDatos( wCDS, wNomArch );
   end;
  end
  else
  begin
   if (ErrorCount = 0) AND (wFErrorCode<>13059)  then
   begin
     sCDS:='cdsDHojaT'; sNomArch:='DHOJAT';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsDHojaT, 'DHOJAT' );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsDetCanje'; sNomArch:='DetCanje';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsDetCanje,'DetCanje' );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsLetras'; sNomArch:='Letras';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsLetras, 'Letras'  );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsCCanje'; sNomArch:='CCanje';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsCCanje, 'CCanje'  );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsMovCxC'; sNomArch:='MovCxC';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsMovCxC, 'MovCxC' );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsMovCxC2Clone'; sNomArch:='MovCxC2';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsMovCxC2Clone,'MovCxC2' );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsHojaT'; sNomArch:='HOJAT';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsHojaT, 'HOJAT' );
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsMovFac'; sNomArch:='MOVFAC';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsMovFac, 'MOVFAC' ) ;
   end;
   if (ErrorCount = 0) AND (wFErrorCode<>13059) then
   begin
     sCDS:='cdsDetFac'; sNomArch:='DETFAC';
     DMCXC.RepiteAplicaDatos( DMCXC.cdsDetFac, 'DETFAC' ) ;
   end;
  end;

  if (wControlError=8)  then
   if (ErrorCount=0) AND (wFErrorCode=0) then
     DMCXC.DCOM1.AppServer.SOLCommit;

  if (ErrorCount>0) then
  begin
   DMCXC.DCOM1.AppServer.SOLRollBack;
   result := not bflag;
   ShowMessage('Avise a su Proveedor de Software...'+#13+#13+sCDS+' '+sNomArch+' No Actualizó ( Código: ''FFFF0002'' )');
   //Application.Terminate;
   Abort;
  end;
  result := bflag
end;
procedure TDMCXC.AplicaDatos( wCDS:TClientDataSet; wNomArch:String );
var
   Delta, Results, OwnerData: OleVariant;
  ErrorCount :Integer;
begin
  if (wCDS.ChangeCount > 0) or (wCDS.Modified) then
  begin
   if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') then
    DMCXC.DCOM1.AppServer.ParamDSPGraba('1', wNomArch);

   wCDS.CheckBrowseMode;
   Results:=DCOM1.AppServer.AS_ApplyUpdates(wCDS.ProviderName,wcds.Delta,-1,
                        ErrorCount,OwnerData);
   cdsResultSet.Data:=Results;
   wCDS.Reconcile(Results);
   if wfErrorCode=13059 then
   begin
    ErrorCount:=1;
   end;

   if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') then
      DMCXC.DCOM1.AppServer.ParamDSPGraba('0', wNomArch);
  end;

end;

}

Function TDMCXC.MaxValue(Const sDetail: String; CD: TDataSet): String;
Var
   iMx: LongInt;
   dsI, dsE: Boolean;
   bmk: TBookMark;
Begin
  // --------------------------- ADVERTENCIA !!!!!!!! --------------------------
  //  ESTO NO FUNCIONA EN EL CACHÉ
  //  result := MaxSQL('LOG309','DRQSID',
  //                   'where CIAID='''+sCIA+''' and '+'RQSID = '''+sRqs+'''' );
  // ---------------------------------------------------------------------------
   iMx := 0;
   bmk := Nil;
   dsI := CD.State = dsInsert;
   dsE := CD.State = dsEdit;

   If CD.RecordCount > 0 Then
   Begin
      If dsE Then bmk := CD.GetBookmark;
      If dsI Or dsE Then CD.Cancel;
      CD.DisableControls;
      CD.First;
      While Not CD.Eof Do
      Begin
{			if CD.FieldByName(sDetail).isNull then iMx := 0
   else
    if CD.FieldByName(sDetail).AsInteger > iMx then
     iMx := CD.FieldByName(sDetail).AsInteger;}
         If CD.FieldByName(sDetail).isNull Then
            iMx := 0
         Else
            If CD.FieldByName(sDetail).AsInteger > iMx Then
               iMx := CD.FieldByName(sDetail).AsInteger;

         CD.Next;
      End;
      CD.EnableControls;
      If dsI Then
         CD.Insert
      Else
         If dsE Then CD.Edit;
      If dsE Then
      Begin
         CD.GotoBookmark(bmk);
         CD.FreeBookmark(bmk);
      End;
   End;

   Result := IntToStr(iMx + 1);
End;

Procedure TDMCXC.cdsDocCobranzaReconcileError(DataSet: TCustomClientDataSet;
   E: EReconcileError; UpdateKind: TUpdateKind;
   Var Action: TReconcileAction);
Begin
// Inicio HPC_201402_CXC
//  Action:=HandleReconcileError(DataSet,UpdateKind,E);
// Fin HPC_201402_CXC
End;

Procedure TDMCXC.cdsDetCanjeReconcileError(DataSet: TCustomClientDataSet;
   E: EReconcileError; UpdateKind: TUpdateKind;
   Var Action: TReconcileAction);
Begin
// Inicio HPC_201402_CXC
//  Action:=HandleReconcileError(DataSet,UpdateKind,E);
// Fin HPC_201402_CXC
End;

Function TDMCXC.EstaAsignadoaCobrador(xCia, xDoc, xSer, xNoD, xCli: String): boolean;
Var
   sSQL: String;
Begin
   sSQL :=
      ' SELECT CCNODOC FROM CXC317 WHERE CIAID=' + QuotedStr(xCia) +
      ' AND DOCID=' + QuotedStr(xDoc) +
      ' AND CCSERIE=' + QuotedStr(xSer) +
      ' AND CCNODOC=' + QuotedStr(xNoD) +
      ' AND CLIEID=' + QuotedStr(xCli) + ' AND FLAGVAR=''.'' ';
   cdsQry.Close;
   cdsQry.DataRequest(sSQL);
   cdsQry.Open;

   Result := (cdsQry.RecordCount > 0);
End;

Procedure TDMCXC.cdsClieComentReconcileError(DataSet: TCustomClientDataSet;
   E: EReconcileError; UpdateKind: TUpdateKind;
   Var Action: TReconcileAction);
Begin
// Inicio HPC_201402_CXC
//  Action:=HandleReconcileError(DataSet,UpdateKind,E);
// Fin HPC_201402_CXC
End;

Function TDMCXC.DateS: TDateTime;
Var
   sSQL: String;
Begin
   sSQL := ' SELECT ' + wRepFecServi + ' FECHA FROM TGE901 ';
   cdsFechaHora.Close;
   cdsFechaHora.DataRequest(sSQL);
   cdsFechaHora.Open;
   result := cdsFechaHora.FieldByName('FECHA').AsDateTime;
End;

Function TDMCXC.TimeS: TDateTime;
Var
   sSQL: String;
Begin
   sSQL := ' SELECT ' + wRepTimeServi + ' FECHA FROM TGE901 ';
   cdsFechaHora.Close;
   cdsFechaHora.DataRequest(sSQL);
   cdsFechaHora.Open;
   result := cdsFechaHora.FieldByName('FECHA').AsDateTime;
End;

Procedure TDMCXC.GeneraDiferenciaCambioPlantilla(xxDH, xTMonID, xCia, xTDiar, xNoreg, xClauxid, xClieid, xClieRuc, xCanje, xDocID, xSerie, xNodoc: String; xDebe, xHabe, xTcambio: double; xFec, xFE, xFV: TDateTime);
Var
   xSQL, xCuenta: String;
   sTRegIdDes, sCtaDif, sCptoDif, sDifDH, sDifTRegId: String;
Begin
   sCtaDif := BuscaQry('dspTGE', 'TGE128', '*', 'TIPDET=' + QuotedStr(xxDH), 'CUENTAMN');
   sCptoDif := cdsQry.FieldByName('CPTOMN').AsString;
   sDifDH := cdsQry.FieldByName('CCDH').AsString;
   sTRegIdDes := cdsQry.FieldByName('TREGDES').AsString;
   sDifTRegId := cdsQry.FieldByName('TREGID').AsString;

   If xxDH = 'D2' Then
      xSQL := 'SELECT * FROM TGE202 WHERE CIAID=' + QuotedStr(xCia) + ' AND CTA_DIFGP=''P'''
   Else
      xSQL := 'SELECT * FROM TGE202 WHERE CIAID=' + QuotedStr(xCia) + ' AND CTA_DIFGP=''G''';

   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;

   cdsDetCxC.Insert;
   cdsDetCxC.FieldByName('TIPDET').AsString := xxDH;
   cdsDetCxC.FieldByName('CCMTOORI').AsFloat := 0;
   cdsDetCxC.FieldByName('TREGID').AsString := sDifTRegId;
   cdsDetCxC.FieldByName('CCDH').AsString := sDifDH;

   cdsDetCxC.FieldByName('TMONID').AsString := xTMonId;
   cdsDetCxC.FieldByName('CPTOID').AsString := sCptoDif;
   cdsDetCxC.FieldByName('CUENTAID').AsString := sCtaDif;

   cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := 0;
   cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(Abs(xDebe - xHabe), 15, 2);
   cdsDetCxC.FieldByName('CCGLOSA').AsString := sTRegIdDes;

   cdsDetCxC.FieldByName('CIAID').AsString := xCia;
   cdsDetCxC.FieldByName('TDIARID').AsString := xTDiar;
   cdsDetCxC.FieldByName('CCNOREG').AsString := xNoReg;
   cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := xTcambio;
   cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := xTcambio;

   cdsDetCxC.FieldByName('CLAUXID').AsString := xClauxid;
   cdsDetCxC.FieldByName('CLIEID').AsString := xClieid;
   cdsDetCxC.FieldByName('CLIERUC').AsString := xClieRuc;

   cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := xFec;
   cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   cdsDetCxC.FieldByName('CCUSER').AsString := wUsuario;
   cdsDetCxC.FieldByName('CCFREG').AsDateTime := DateS;
   cdsDetCxC.FieldByName('CCHREG').AsDateTime := TimeS;
   cdsDetCxC.FieldByName('TCANJEID').AsString := 'GL';
   cdsDetCxC.FieldByName('CCCANJE').AsString := xCanje;
   cdsDetCxC.FieldByName('DOCID').AsString := xDocID;
   cdsDetCxC.FieldByName('CCSERIE').AsString := xSerie;
   cdsDetCxC.FieldByName('CCNODOC').AsString := xNodoc;
   cdsDetCxC.FieldByName('CCFEMIS').AsDateTime := xFE;
   cdsDetCxC.FieldByName('CCFVCMTO').AsDateTime := xFV;

   If BuscaFecha('TGE114', 'Fecha', xFec) Then
   Begin
      cdsDetCxC.FieldByName('CCANOMES').AsString := cdsQry2.FieldByName('FECANO').AsString + cdsQry2.FieldByName('FECMES').AsString;
      cdsDetCxC.FieldByName('CCAAAA').AsString := cdsQry2.FieldByName('FECANO').AsString;
      cdsDetCxC.FieldByName('CCMM').AsString := cdsQry2.FieldByName('FECMES').AsString; // mes
      cdsDetCxC.FieldByName('CCDD').AsString := cdsQry2.FieldByName('FECDIA').AsString; // día
      cdsDetCxC.FieldByName('CCTRI').AsString := cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      cdsDetCxC.FieldByName('CCSEM').AsString := cdsQry2.FieldByName('FECSEM').AsString; // semestre
      cdsDetCxC.FieldByName('CCSS').AsString := cdsQry2.FieldByName('FECSS').AsString; // semana
      cdsDetCxC.FieldByName('CCAATRI').AsString := cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      cdsDetCxC.FieldByName('CCAASEM').AsString := cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      cdsDetCxC.FieldByName('CCAASS').AsString := cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;
   cdsDetCxC.Post;
   AplicaDatos(cdsDetCxC, 'DetCxC');
End;

Function CalculaNumero(sCND: String): String;
Var
   wItem, wPos: integer;
Begin
   wPos := Pos('-', sCND);
   If wPos = 0 Then
   Begin
      wPos := length(sCND);
      wItem := 1;
      result := copy(sCND, 1, wPos) + '-' + StrZero(IntToStr(wItem), 2);
   End
   Else
   Begin
      wItem := StrToInt(Copy(sCND, wPos + 1, 2));
      wItem := wItem + 1;
      result := copy(sCND, 1, wPos) + StrZero(IntToStr(wItem), 2);
   End;
End;

Function TDMCXC.DesEncripta(wPalabra: String): String;
Var
   xLargoPal, i, j: integer;
   xReal, xEncriptado1, xEncriptado2, xEncriptado3, xEncriptado4,
      xEncriptado5, xNuevaPal, xEncriptado: String;
   xTiene: boolean;
Begin
   xReal := 'ABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789abcdefghijklmnñopqrstuvwxyz';
   xEncriptado1 := '|+_)(*&^%$#@!~[ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM';
   xEncriptado2 := '*&^%$#@!~[ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(';
   xEncriptado3 := '#@!~[ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(*&^%$';
   xEncriptado4 := 'ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(*&^%$#@!~[';
   xEncriptado5 := ';"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(*&^%$#@!~[ñ{}]:';
   xLargoPal := length(wPalabra);
   xNuevaPal := '';
   i := 1;
   While i <= xLargoPal Do
   Begin
      j := 1;
      xTiene := False;
      If (i = 1) Or (i = 11) Or (i = 21) Or (i = 31) Then xEncriptado := xEncriptado1;
      If (i = 2) Or (i = 12) Or (i = 22) Or (i = 32) Then xEncriptado := xEncriptado2;
      If (i = 3) Or (i = 13) Or (i = 23) Or (i = 33) Then xEncriptado := xEncriptado3;
      If (i = 4) Or (i = 14) Or (i = 24) Or (i = 34) Then xEncriptado := xEncriptado4;
      If (i = 5) Or (i = 15) Or (i = 25) Or (i = 35) Then xEncriptado := xEncriptado5;
      If (i = 6) Or (i = 16) Or (i = 26) Or (i = 36) Then xEncriptado := xEncriptado1;
      If (i = 7) Or (i = 17) Or (i = 27) Or (i = 37) Then xEncriptado := xEncriptado2;
      If (i = 8) Or (i = 18) Or (i = 28) Or (i = 38) Then xEncriptado := xEncriptado3;
      If (i = 9) Or (i = 19) Or (i = 29) Or (i = 39) Then xEncriptado := xEncriptado4;
      If (i = 10) Or (i = 20) Or (i = 30) Or (i = 40) Then xEncriptado := xEncriptado5;
      While j <= length(xReal) Do
      Begin
         If copy(wPalabra, i, 1) = copy(xEncriptado, j, 1) Then
         Begin
            xNuevaPal := xNuevaPal + copy(xReal, j, 1);
            xTiene := True;
         End;
         j := j + 1;
      End;
      If Not xTiene Then xNuevaPal := xNuevaPal + copy(wPalabra, i, 1);
      i := i + 1;
   End;
   result := xNuevaPal;
End;

Function TDMCXC.Encripta(wPalabra: String): String;
Var
   xLargoPal, i, j: integer;
   xReal, xEncriptado1, xEncriptado2, xEncriptado3, xEncriptado4,
      xEncriptado5, xNuevaPal, xEncriptado: String;
   xTiene: boolean;
Begin
   xReal := 'ABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789abcdefghijklmnñopqrstuvwxyz';
   xEncriptado1 := '|+_)(*&^%$#@!~[ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM';
   xEncriptado2 := '*&^%$#@!~[ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(';
   xEncriptado3 := '#@!~[ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(*&^%$';
   xEncriptado4 := 'ñ{}]:;"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(*&^%$#@!~[';
   xEncriptado5 := ';"\<>?,./98126534IOUEAXYZCDBHGFLÑJKNQPTSRWVM|+_)(*&^%$#@!~[ñ{}]:';
   xLargoPal := length(wPalabra);
   xNuevaPal := '';
   i := 1;
   While i <= xLargoPal Do
   Begin
      j := 1;
      xTiene := False;
      If (i = 1) Or (i = 11) Or (i = 21) Or (i = 31) Then xEncriptado := xEncriptado1;
      If (i = 2) Or (i = 12) Or (i = 22) Or (i = 32) Then xEncriptado := xEncriptado2;
      If (i = 3) Or (i = 13) Or (i = 23) Or (i = 33) Then xEncriptado := xEncriptado3;
      If (i = 4) Or (i = 14) Or (i = 24) Or (i = 34) Then xEncriptado := xEncriptado4;
      If (i = 5) Or (i = 15) Or (i = 25) Or (i = 35) Then xEncriptado := xEncriptado5;
      If (i = 6) Or (i = 16) Or (i = 26) Or (i = 36) Then xEncriptado := xEncriptado1;
      If (i = 7) Or (i = 17) Or (i = 27) Or (i = 37) Then xEncriptado := xEncriptado2;
      If (i = 8) Or (i = 18) Or (i = 28) Or (i = 38) Then xEncriptado := xEncriptado3;
      If (i = 9) Or (i = 19) Or (i = 29) Or (i = 39) Then xEncriptado := xEncriptado4;
      If (i = 10) Or (i = 20) Or (i = 30) Or (i = 40) Then xEncriptado := xEncriptado5;
      While j <= length(xReal) Do
      Begin
         If copy(wPalabra, i, 1) = copy(xReal, j, 1) Then
         Begin
            xNuevaPal := xNuevaPal + copy(xEncriptado, j, 1);
            xTiene := True;
         End;
         j := j + 1;
      End;
      If Not xTiene Then xNuevaPal := xNuevaPal + copy(wPalabra, i, 1);
      i := i + 1;
   End;
   result := xNuevaPal;
End;

Procedure TDMCXC.InsertaSaldosIniciales(xxCia, xxAno, xxClauxid, xxAuxid: String);
Var
   sWhere, sSQL, sNewYear: String;
Begin
   sNewYear := IntToStr(StrToInt(xxAno) + 1);
   If (xxClauxid = '') Or (xxAuxid = '') Then
   Begin
      sWhere := ' WHERE A.CIAID=' + QuotedStr(xxCia) + ' AND A.ANO=' + QuotedStr(xxAno) +
         ' AND NOT EXISTS( SELECT * FROM TGE401 B WHERE B.CIAID=A.CIAID AND B.ANO=' + QuotedStr(sNewYear) + ' AND A.CLAUXID=B.CLAUXID AND A.AUXID=B.AUXID) ' +
         ' AND A.CLAUXID IN (SELECT CLAUXID FROM TGE102 WHERE MODULO LIKE ''%CXC%'' AND (CLAUXCP=''A'' OR CLAUXCP=''C'')) ';
   End
   Else
   Begin
      sWhere := ' WHERE A.CIAID=' + QuotedStr(xxCia) + ' AND A.ANO=' + QuotedStr(xxAno) + ' AND A.CLAUXID=' + QuotedStr(xxClauxid) + ' AND A.AUXID=' + QuotedStr(xxAuxid) +
         ' AND NOT EXISTS( SELECT * FROM TGE401 B WHERE B.CIAID=A.CIAID AND B.ANO=' + QuotedStr(sNewYear) + ' AND A.CLAUXID=B.CLAUXID AND A.AUXID=B.AUXID) ' +
         ' AND A.CLAUXID IN (SELECT CLAUXID FROM TGE102 WHERE MODULO LIKE ''%CXC%'' AND (CLAUXCP=''A'' OR CLAUXCP=''C'')) ';
   End;

   sSQL := ' INSERT INTO TGE401 (CIAID,ANO,AUXID,CLAUXID, ' +
      ' DEBESME00,DEBESMN00,DEBETME00,DEBETMN00,' +
      ' HABESME00,HABESMN00,HABETME00,HABETMN00,' +
      ' SALDSME00,SALDSMN00,SALDTME00,SALDTMN00) ' +
      ' SELECT A.CIAID,' + QuotedStr(sNewYear) + ',A.AUXID,A.CLAUXID, ' +
      ' SUM(' + wReplacCeros + '(A.DEBESME13,0)),' + 'SUM(' + wReplacCeros + '(A.DEBESMN13,0)),' + 'SUM(' + wReplacCeros + '(A.DEBETME13,0)),' + 'SUM(' + wReplacCeros + '(A.DEBETMN13,0)), ' +
      ' SUM(' + wReplacCeros + '(A.HABESME13,0)),' + 'SUM(' + wReplacCeros + '(A.HABESMN13,0)),' + 'SUM(' + wReplacCeros + '(A.HABETME13,0)),' + 'SUM(' + wReplacCeros + '(A.HABETMN13,0)), ' +
      ' SUM(' + wReplacCeros + '(A.SALDSME13,0)),' + 'SUM(' + wReplacCeros + '(A.SALDSMN13,0)),' + 'SUM(' + wReplacCeros + '(A.SALDTME13,0)),' + 'SUM(' + wReplacCeros + '(A.SALDTMN13,0)) ' +
      ' FROM TGE401 A ' + sWhere +
      ' GROUP BY A.CIAID,A.AUXID,A.CLAUXID ';
   Try
     //DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
      ShowMessage('');
   Except
   End;
End;

Function TDMCXC.LaCuentaSeRegistraSoloEnME(xxCia, xxCpto,
   xxCuenta: String): boolean;
Var
   sSQL: String;
Begin
   If xxCpto <> '' Then
   Begin
      sSQL := ' SELECT CUENTAID FROM CXC201 WHERE CPTOID=' + QuotedStr(xxCpto);
      Filtracds(cdsQry, sSQL);
      sSQL := ' SELECT CUENTAID,REGSOLOME FROM TGE202 WHERE CIAID=' + QuotedStr(xxCia) +
         ' AND CUENTAID=' + QuotedStr(cdsQry.FieldbyName('CUENTAID').AsString);
      Filtracds(cdsQry, sSQL);
      result := (cdsQry.FieldbyName('REGSOLOME').AsString = 'S');
   End
   Else
   Begin
      sSQL := ' SELECT CUENTAID,REGSOLOME FROM TGE202 WHERE CIAID=' + QuotedStr(xxCia) +
         ' AND CUENTAID=' + QuotedStr(xxCuenta);
      Filtracds(cdsQry, sSQL);
      result := (cdsQry.FieldbyName('REGSOLOME').AsString = 'S');
   End;
End;

Procedure TDMCXC.FiltraTabla(xxCds: TwwClientDataSet; xxArchivo,
   xxCampo, xxWhere: String);
Var
   xFiltro: String;
   xSQL2: String;
Begin
   cdsAcceso.Filtered := False;
   cdsAcceso.Filter := '';
   cdsAcceso.Filter := 'NTabla=' + '''' + xxArchivo + '''';
   cdsAcceso.Filtered := True;

   xFiltro := '';
   cdsAcceso.First;
   While Not cdsAcceso.Eof Do
   Begin
      If Length(xFiltro) = 0 Then
         xFiltro := xxCampo + '=' + '''' + cdsAcceso.FieldByName('CODIGO').AsString + ''''
      Else
         xFiltro := xFiltro + ' or ' + xxCampo + '=' + '''' + cdsAcceso.FieldByName('CODIGO').AsString + '''';
      cdsAcceso.Next;
   End;
   If Length(xFiltro) = 0 Then
      xSQL2 := 'Select * from ' + xxArchivo;

   If Length(xFiltro) > 0 Then
   Begin
      xSQL2 := 'Select * from ' + xxArchivo + ' Where (' + xFiltro + ')';
   End;

   If (Length(xxWhere) > 0) And (Length(xFiltro) > 0) Then
      xSQL2 := xSQL2 + ' AND ' + xxwhere;

   If (Length(xxWhere) > 0) And (Length(xFiltro) = 0) Then
      xSQL2 := xSQL2 + ' WHERE ' + xxwhere;

   xxCds.Close;
   xxCds.DataRequest(xSQL2);
   xxCds.Open;
End;

Procedure TDMCXC.DisminuyeForma(Sender: TObject);
Begin
   //FVariables.w_Num_Formas := FVariables.w_Num_Formas-1;
End;

Procedure TDMCXC.ActualizaFiltro(wwFiltro: TMANT; wwCdsLee: TwwClientDataSet;
   wwAccion: String);
Var
   i: integer;
Begin
// wFiltro : Es el Filtro que va a actualizar
// wCDsLee : Es el cds que contiene la información a actualizar
// wAccion : 'A' = Adición/Inserción/Nuevo Item
//           'M' = Actualización del Registro
//           'E' = Eliminación del Registro

   If wwAccion = 'E' Then
   Begin
      wwFiltro.FMANT.cds2.Delete;
   End;

   If wwAccion = 'A' Then
   Begin
      wwFiltro.FMANT.cds2.Append;
   End;

   If wwAccion = 'M' Then
   Begin
      wwFiltro.FMANT.cds2.Edit;
   End;

   If (wwAccion = 'A') Or (wwAccion = 'M') Then
   Begin
      For i := 0 To wwCdsLee.FieldCount - 1 Do
      Begin
         wwFiltro.FMANT.cds2.FieldByName(wwCdsLee.Fields[i].FieldName).Value :=
            wwCdsLee.FieldByName(wwCdsLee.Fields[i].FieldName).Value;
      End;
      wwFiltro.FMANT.cds2.Post;
   End;

End;

Function TDMCXC.ObtenerIpdeNetbios(Host: String): String;
Var
   WSAData: TWSADATA;
   HostEnt: phostent;
Begin
   Result := '';
   If WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 Then
   Begin
      HostEnt := gethostbyname(PChar(Host));
      If HostEnt <> Nil Then
         Result := String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
      WSACleanup;
   End;
End;

Function TDMCXC.ComputerName: String;
Var
   Buffer: Array[0..100] Of Char;
   MaxSize: Cardinal;
Begin
   MaxSize := SizeOf(Buffer);
   If Not GetComputerName(@Buffer, MaxSize) Then
      Raise Exception.Create('No puedo determinar el nombre de la máquina');
   Result := StrPas(@Buffer);
End;

Function TDMCXC.AccesosModulo: Boolean;
Var
   xSQL: String;
   xfecfin: TDate;
   xdiasexppass: Integer;
   xdiasfaltantes: Integer;
   xdiasduracpass: Integer;
   xpassact, xctrl_ip, xingresa: String;
Begin
// busca en tabla DE USUARIO (TGE006) para determinar que es un usuario de base de datos
   xSQL := 'select FECEXP, OFDESID, nvl(CTRL_IP,''S'') CTRL_IP, '
      + '       TO_DATE(nvl(FECINI_PWD,sysdate-30)) FECINI_PWD, '
      + '       TO_DATE(nvl(FECFIN_PWD, sysdate-1)) FECFIN_PWD, '
      + '       nvl(DIASEXP_PWD,7) DIASEXP_PWD,'
      + '       nvl(DIASDURAC_PWD,30) DIASDURAC_PWD '
      + 'from TGE006 '
      + 'where USERID = ' + QuotedStr(wUsuario);
   cdsQry.Close;
   cdsQry.DataRequest(xSql);
   cdsQry.Open;
   If cdsQry.RecordCount = 0 Then
   Begin
      Showmessage('Usuario no reconocido para el uso de Aplicaciones');
      Result := False;
      Exit;
   End;

// valida que contraseña en control de aplicaciones (TGE006), no haya expirado
   If (cdsQry.FieldByName('FECEXP').AsDateTime > 0) And
      (cdsQry.FieldByName('FECEXP').AsDateTime < Date) Then
   Begin
      Showmessage('Usuario ha caducado para el uso de Aplicaciones');
      Result := False;
      Exit;
   End;
   xfecfin := cdsQry.FieldByName('FECFIN_PWD').AsDateTime;
   xdiasexppass := cdsQry.FieldByName('DIASEXP_PWD').AsInteger;
   xdiasduracpass := cdsQry.FieldByName('DIASDURAC_PWD').AsInteger;
   //xpassact        := FCtrlAcceso.dbePassword.Text;

   wOfiId := cdsQry.FieldByName('OFDESID').AsString;
   xctrl_ip := cdsQry.FieldByName('CTRL_IP').AsString;
   widepc := computerName;

// determina que el usuario tenga acceso al módulo
// busca en tabla TGE006 para determinar que es un usuario de base de datos y de la aplicación
   xSQL := 'Select USUARIOS.USERID, USUARIOS.USERNOM, USUARIOGRUPO.GRUPOID, '
      + '       GRUPOS.GRUPODES, GRUPOS.GRUPOADM, ACCESOGRUPO.MODULOID, '
      + '       ACCESOGRUPO.TIPO, ACCESOGRUPO.OBJETO, ACCESOGRUPO.FORMA '
      + 'From TGE006 USUARIOS, TGE007 USUARIOGRUPO, TGE003 GRUPOS, TGE001 ACCESOGRUPO '
      + 'where USUARIOS.USERID=' + quotedstr(wUsuario) // -- TGE006 USUARIOS
      + '  and USUARIOGRUPO.USERID=USUARIOS.USERID' // -- TGE007 USUARIOGRUPO
      + '  and GRUPOS.GRUPOID=USUARIOGRUPO.GRUPOID' // -- TGE003 GRUPOS
      + '  and ACCESOGRUPO.GRUPOID=USUARIOGRUPO.GRUPOID '
      + '  and ACCESOGRUPO.MODULOID=' + quotedstr(wModulo)
      + '  and ACCESOGRUPO.TIPO=''0'' '; // TGE001 ACCESOGRUPO
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No tiene Acceso al módulo');
      Result := False;
      Exit;
   End;

// Identifica si el usuario puede ejecutar los sistemas de cualquier maquina
// o solo de las máquina que se le han asignado
   xingresa := 'N';
   If xctrl_ip = 'S' Then
   Begin
      xSQL := 'SELECT IP_ASIGNADO FROM TGE010 WHERE USERID = ' + QuotedStr(DMCXC.wUsuario);
      cdsQry.Close;
      cdsQry.DataRequest(xSQL);
      cdsQry.Open;
      While Not cdsQry.Eof Do
      Begin
         If cdsQry.FieldByName('IP_ASIGNADO').AsString = cIP Then xingresa := 'S';
         cdsQry.Next;
      End;
   End;
   If (xingresa = 'N') And (xctrl_ip = 'S') Then
   Begin
      Showmessage('Usuario no autorizado para ingresar de este equipo');
      Result := False;
      Exit;
   End;

// DETERMINA NRO DE IDENTIFICADOR PARA GRABAR EN ARCHIVO LOG DE ACCESOS
// SE DETERMINA EN BASE A LA FECHA+HORA DE INGRESO A LA BASE DE DATOS
   xSQL := 'SELECT TO_CHAR(SYSDATE,''YYYYMMDDHH24MISS'') IDE, SYSDATE FECHORCON FROM DUAL';
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   ideconex := cdsQry.FieldByName('IDE').AsString;
   fechorcon := cdsQry.FieldByName('FECHORCON').AsString;

// ENVIA PARAMETROS DE LA PC DEL USUARIO HACIA LA APLICACION SERVIDOR
   DCOM1.AppServer.ConexionON(wUsuario, cIP, wModulo, ideconex, fechorcon, widepc);

// controla caducidad de contraseña
   xSQL := 'SELECT TO_DATE(' + QuotedStr(DateToStr(xfecfin)) + ') - TO_DATE(SYSDATE) DIASFALTANTE FROM DUAL';
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;

   xdiasfaltantes := cdsQry.FieldByName('DIASFALTANTE').AsInteger; // dias que faltan
   If xdiasfaltantes <= xdiasexppass Then
   Begin
      If xdiasfaltantes <= 0 Then
         MessageDlg('SU CONTRASEÑA HA CADUCADO, DEBE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
      Else
         If xdiasfaltantes = 1 Then
            MessageDlg('!!! FALTA 1 DíA PARA EL VENCIMIENTO DE SU CONTRASEÑA ¡¡¡' + chr(13)
               + '            SE SUGIERE CAMBIARLA AHORA                  ', mtInformation, [mbOk], 0)
         Else
            MessageDlg('!!! FALTAN ' + IntToStr(xdiasfaltantes) + ' DÍAS PARA EL VENCIMIENTO DE SU CONTRASEÑA ¡¡¡' + chr(13)
               + '            SE SUGIERE CAMBIARLA AHORA                  ', mtInformation, [mbOk], 0);
     { FCambioContrasena:= TFCambioContrasena.create(self);
      Try
         FCambioContrasena.ShowModal;
      Finally
         FCambioContrasena.Free;
      End;}
   End;
   If xdiasfaltantes <= 0 Then
   Begin
      Result := False;
      Exit;
   End;

   Result := True;

End;
//INICIO HPC_201204_CXC

Function TDMCXC.fg_VerificaVersion(wgVersion: String): Boolean;
Var
   xsSQL: String;
Begin
   Result := False;
   xsSQL := 'SELECT * FROM TGE600 WHERE CODIGO = ' + QuotedStr(wModulo);
   cdsQry.Close;
   cdsQry.DataRequest(xsSQL);
   cdsQry.Open;
   If Trim(wgVersion) = Trim(cdsQry.FieldByName('VERSION').AsString) Then
      Result := True
   Else
      Result := False;
End;
//FIN HPC_201204_CXC

(*
Function TDMCXC.fg_graba :String): Boolean;
Var
   xsSQL : String;
Begin
   Result:=False;
   xsSQL:='SELECT * FROM TGE600 WHERE CODIGO = ' + QuotedStr(wModulo);
   cdsQry.Close;
   cdsQry.DataRequest( xsSQL );
   cdsQry.Open;
   If Trim(wgVersion) = Trim(cdsQry.FieldByName('VERSION').AsString) Then
      Result:=True
   Else
      Result:=False;

CIAID
CCANOMES
TDIARID
CCLOTE
CCNOREG
CPTOID
CUENTAID
CLAUXID
CLIEID
CLIERUC
DOCID
CCSERIE
CCNODOC
CCGLOSA
CCDH
CCOSID
TMONID
CCTCAMPR
CCMTOORI
CCMTOLOC
CCMTOEXT
CCFEMIS
CCFVCMTO
CCFCOMP
CCESTADO
CCAAAA
CCMM
CCDD
CCTRI
CCSEM
CCSS
CCAATRI
CCAASEM
CCAASS
FLAGVAR
CCUSER
CCFREG
CCHREG
TREGID
TIPDET
CCTCAMPA
CCFLCDR
TCANJEID
CCCANJE
CCFCANJE
CCFVALOR
PORIGV
TINTERES
CCCMPRB
PARPRESID
TIPPRESID
TIPCTA
FCONTAB
FLAGCONTA
ITEM
SITID
UBIID
ORDEN
TCAMBIOC
NROASIENTO
CCREG
End;
*)

End.

