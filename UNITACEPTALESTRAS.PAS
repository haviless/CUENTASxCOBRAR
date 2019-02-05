unit unitaceptalestras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB, wwSpeedButton, ppviewr,
  wwDBNavigator, ComCtrls, jpeg, Tabnotbk, Math, DBClient, wwclient,
  ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppDB,
  ppProd, ppComm, ppRelatv, ppCache, ppDBPipe, ppVar, ppModule, daDatMod,
  ppEndUsr;

type
  TFLetras1 = class(TForm)
    pnlPie: TPanel;
    Z2bbtnGraba: TBitBtn;
    Z2bbtnContab: TBitBtn;
    Z2bbtnImprime: TBitBtn;
    Z2bbtnAnula: TBitBtn;
    bbtnRegresa: TBitBtn;
    bbtnCancela: TBitBtn;
    Z2bbtnNuevo: TBitBtn;
    Z2bbtnAcepta: TBitBtn;
    Label8: TLabel;
    pnlCabecera: TPanel;
    pnlCab2: TPanel;
    lblTDoc: TLabel;
    lblFCanje: TLabel;
    lblFRecep: TLabel;
    lblTMon: TLabel;
    lblTCambio: TLabel;
    lblCnpEgr: TLabel;
    Label13: TLabel;
    lblGlosa: TLabel;
    dblcTDoc: TwwDBLookupCombo;
    edtTDoc: TEdit;
    dtpFEmis: TwwDBDateTimePicker;
    dblcTMon: TwwDBLookupCombo;
    edtTMon: TEdit;
    dbeTCLet: TwwDBEdit;
    dblcdCnpEgr: TwwDBLookupComboDlg;
    dbeCuenta: TwwDBEdit;
    dbeGlosa: TwwDBEdit;
    pnlCab1: TPanel;
    Label1: TLabel;
    dblcCia: TwwDBLookupCombo;
    edtCia: TEdit;
    Label2: TLabel;
    edtCanje: TwwDBEdit;
    dblcdClie: TwwDBLookupComboDlg;
    Label3: TLabel;
    Label4: TLabel;
    dblcdClieRuc: TwwDBLookupComboDlg;
    edtClie: TEdit;
    pnlEstado: TPanel;
    lblAnula: TLabel;
    lblActivo: TLabel;
    lblContab: TLabel;
    lblAcepta: TLabel;
    Label9: TLabel;
    bbtnCalc: TBitBtn;
    bbtnSumat: TBitBtn;
    pnlDetalle: TPanel;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnlLetras: TPanel;
    Label14: TLabel;
    dbgLetras: TwwDBGrid;
    btnActReg: TwwIButton;
    pnlRegistro: TPanel;
    Label11: TLabel;
    lblTipReg: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    dbeNoReg: TwwDBEdit;
    dbeLetra: TwwDBEdit;
    dtpFVcmto: TwwDBDateTimePicker;
    dbeTotal: TwwDBEdit;
    bbtnRegOk: TBitBtn;
    bbtnRegCanc: TBitBtn;
    dbeMon: TwwDBEdit;
    dtpFValor: TwwDBDateTimePicker;
    pnlPendientes: TPanel;
    Label5: TLabel;
    dbgPendientes: TwwDBGrid;
    pnlDocCanje: TPanel;
    Label6: TLabel;
    dbgDocCanje: TwwDBGrid;
    edtFinal: TEdit;
    pnlDatos: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    dbeLetIni: TwwDBEdit;
    bbtnDatos: TBitBtn;
    edtToTal1: TEdit;
    edtTotal: TEdit;
    bbtnCreaL: TBitBtn;
    pnlDatos2: TPanel;
    Label21: TLabel;
    dbePInt: TwwDBEdit;
    Z2bbtnGenera: TBitBtn;
    rgTiempo: TRadioGroup;
    dbeDias: TwwDBEdit;
    dbeNLet: TwwDBEdit;
    dblcdAval: TwwDBLookupComboDlg;
    Label22: TLabel;
    Label25: TLabel;
    dbeInte: TwwDBEdit;
    Label27: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label20: TLabel;
    dbeGAdm: TwwDBEdit;
    Label23: TLabel;
    dbeGFin: TwwDBEdit;
    Label24: TLabel;
    dbeMora: TwwDBEdit;
    Label26: TLabel;
    dbeOtro: TwwDBEdit;
    Bevel1: TBevel;
    Label28: TLabel;
    wwDBEdit3: TwwDBEdit;
    bbtnCalcula: TBitBtn;
    pnlNDebito: TPanel;
    lblSerie: TLabel;
    dblcSerie: TwwDBLookupCombo;
    dbeNoDoc: TwwDBEdit;
    lblNoDoc: TLabel;
    bbtnNDebito: TBitBtn;
    bbtnCancND: TBitBtn;
    dblcNDDoc: TwwDBLookupCombo;
    Label29: TLabel;
    Label30: TLabel;
    dblcClAux: TwwDBLookupCombo;
    bbtnBorra: TBitBtn;
    bbtnOk: TBitBtn;
    dbeImp: TwwDBEdit;
    dbeGas: TwwDBEdit;
    dbeIGV: TwwDBEdit;
    Label10: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    dbeInt: TwwDBEdit;
    pnlConta: TPanel;
    Label34: TLabel;
    dbeComp: TwwDBEdit;
    bbtnCont: TBitBtn;
    bbtnCanc2: TBitBtn;
    Label35: TLabel;
    ppdbpCanje: TppDBPipeline;
    pprCanje: TppReport;
    ppdbpDCanje: TppDBPipeline;
    ppdbpLetras: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    pplCia: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    Z2bbtnImpCanje: TBitBtn;
    pptCliente: TppDBText;
    pplTitulo: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    pplClie: TppLabel;
    ppLabel1: TppLabel;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    pplMon: TppLabel;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine6: TppLine;
    ppLine5: TppLine;
    ppLabel17: TppLabel;
    ppDBText16: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine4: TppLine;
    ppLabel20: TppLabel;
    ppLine7: TppLine;
    ppDBText4: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    pprLetras: TppReport;
    bbtnImpLet: TBitBtn;
    pnlSIT: TPanel;
    lblTDiario: TLabel;
    dblcTDiario: TwwDBLookupCombo;
    edtTDiario: TEdit;
    Label7: TLabel;
    dtpFComp: TwwDBDateTimePicker;
    Label36: TLabel;
    dbeGirado: TwwDBEdit;
    ppHeaderBand2: TppHeaderBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDetailBand4: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText17: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText2: TppDBText;
    ppDBText11: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    pplLetras: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesigner1: TppDesigner;
    ts3: TTabSheet;
    Panel1: TPanel;
    dbgDetCxC2: TwwDBGrid;
    btnActReg1: TwwIButton;
    pnlRegistro1: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    lblDH: TLabel;
    lblImporte: TLabel;
    Label39: TLabel;
    lblCuenta: TLabel;
    lblCCosto: TLabel;
    lblTipPre: TLabel;
    lblPresu: TLabel;
    dblcTipReg: TwwDBLookupCombo;
    dblcdCpto: TwwDBLookupComboDlg;
    edtTipReg: TEdit;
    dbeImporte: TwwDBEdit;
    dbeDH: TwwDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    StaticText1: TStaticText;
    dblcdCCosto: TwwDBLookupComboDlg;
    edtCCosto: TEdit;
    dblcTipPre: TwwDBLookupCombo;
    dbeTipPre: TwwDBEdit;
    dblcdPresup: TwwDBLookupComboDlg;
    edtPresup: TEdit;
    bbtnImpND: TBitBtn;
    pprpND: TppReport;
    dbpFormatos: TppDBPipeline;
    ppHeaderBand4: TppHeaderBand;
    pplblNDRazon: TppLabel;
    pplblNDDir: TppLabel;
    pplblNDRuc: TppLabel;
    pplblCodCli: TppLabel;
    pplblcodigo: TppLabel;
    pplblNDano: TppLabel;
    ppDetailBand5: TppDetailBand;
    pplblNDImpAfe: TppLabel;
    pplblNDImpNoAfe: TppLabel;
    pplblNDImp: TppLabel;
    pplblNDTotal: TppLabel;
    pplblFecha: TppLabel;
    ppdbtCCGLOSA: TppDBText;
    ppFooterBand4: TppFooterBand;
    pplblNDLetras: TppLabel;
    pplblIgv: TppLabel;
    pplblTotal: TppLabel;
    pplblNDSEUO: TppLabel;
    pplblIgvDes1: TppLabel;
    pplblNDSIM: TppLabel;
    pplblNDSIM1: TppLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCanjeExit(Sender: TObject);
    procedure bbtnBasuraDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure bbtnOkClick(Sender: TObject);
    procedure BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure bbtnSumatClick(Sender: TObject);
    procedure Z2bbtnGrabaClick(Sender: TObject);
    procedure bbtnCalcClick(Sender: TObject);
    procedure dblcdCnpEgrExit(Sender: TObject);
    procedure dblcTMonExit(Sender: TObject);
    procedure bbtnCancelaClick(Sender: TObject);
    procedure dtpFCompExit(Sender: TObject);
    procedure dtpFEmisExit(Sender: TObject);
    procedure Z2bbtnContabClick(Sender: TObject);
    procedure dbgLetrasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbeTCLetExit(Sender: TObject);
    procedure bbtnBorraClick(Sender: TObject);
    procedure bbtnRegresaClick(Sender: TObject);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure Z2bbtnAnulaClick(Sender: TObject);
    procedure Z2bbtnAceptaClick(Sender: TObject);
    procedure tnbDetalleChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure dblcCiaExit(Sender: TObject);
    procedure dblcdClieExit(Sender: TObject);
    procedure dblcdClieRucExit(Sender: TObject);
    procedure dblcTDocExit(Sender: TObject);
    procedure dblcTDiarioExit(Sender: TObject);
    procedure btnActRegClick(Sender: TObject);
    procedure bbtnRegOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnRegCancClick(Sender: TObject);
    procedure dbgLetrasDblClick(Sender: TObject);
    procedure dbgLetrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbtnRegresaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgDocCanjeColExit2(Sender: TObject);
    procedure dbgDocCanjeDragOver2(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
    procedure dbgDocCanjeKeyPress2(Sender: TObject; var Key: Char);
    procedure dbgDocCanjeMouseDown2(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgPendientesDragOver2(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgPendientesEndDrag2(Sender, Target: TObject; X,
  Y: Integer);
    procedure dbgPendientesMouseDown2(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ts2Enter(Sender: TObject);
    procedure bbtnDatosClick(Sender: TObject);
    procedure bbtnCreaLClick(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure bbtnCalculaClick(Sender: TObject);
    procedure dbePIntExit(Sender: TObject);
    procedure Z2bbtnGeneraClick(Sender: TObject);
    procedure bbtnNDebitoClick(Sender: TObject);
    procedure dblcNDDocExit(Sender: TObject);
    procedure bbtnCancNDClick(Sender: TObject);
    procedure pnlDatosEnter(Sender: TObject);
    procedure dbeDiasExit(Sender: TObject);
    procedure dbeNLetExit(Sender: TObject);
    procedure dbeLetraExit(Sender: TObject);
    procedure dbeImpExit(Sender: TObject);
    procedure dbeGasExit(Sender: TObject);
    procedure dbeIGVExit(Sender: TObject);
    procedure dbeIntExit(Sender: TObject);
    procedure bbtnContClick(Sender: TObject);
    procedure bbtnCanc2Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure bbtnImpLetClick(Sender: TObject);
    procedure pprLetrasPrintingComplete(Sender: TObject);
    procedure dtpFVcmtoExit(Sender: TObject);
    procedure Z2bbtnImpCanjeClick(Sender: TObject);
    procedure dblcdClieEnter(Sender: TObject);
    procedure dblcdClieRucEnter(Sender: TObject);
    procedure dblcClAuxExit(Sender: TObject);
    procedure dtpFValorExit(Sender: TObject);
    procedure pprCanjePreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure dbgDetCxC2DblClick(Sender: TObject);
    procedure dbgDetCxC2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnActReg1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dblcTipRegExit(Sender: TObject);
    procedure dblcdCptoExit(Sender: TObject);
    procedure wwDBEdit4Exit(Sender: TObject);
    procedure dblcdCCostoExit(Sender: TObject);
    procedure dblcTipPreExit(Sender: TObject);
    procedure dblcdPresupExit(Sender: TObject);
    procedure dbeDHExit(Sender: TObject);
    procedure bbtnImpNDClick(Sender: TObject);
    procedure NotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure dbgDocCanjeColEnter(Sender: TObject);
    procedure dblcSerieExit(Sender: TObject);
  private
    procedure GrabaDetCanje;
    Procedure GrabaDetCanje1;
    Procedure InsertaRegistrosdeAbonos;
    procedure InsertaRegistroDeTotal;

    { Private declarations }
  public
    { Public declarations }
    procedure InicializaPies;
    procedure ModificaMontos;
    Procedure FiltraCanje( xModo : String );
    procedure DetCxCUsuario;
    procedure DetCxC2Usuario;
    procedure InicializaDatos;
    procedure InicializaClientDataSet;
    Procedure GrabaRegCxP305;
    procedure ActualizaSaldosMovCxP;
    procedure ActualizaPagadoMovCxP;
    procedure EstadoDeForma(xxModo:Integer; xMovEstado,xMovConta:String);
    procedure GrabaContabilidadDocumentos;
    procedure GrabaContabilidadLetra;
    procedure GeneraDiferenciaCambio;
    procedure GrabaDiferenciaCambio;
    procedure DetalleLetra;
    procedure GeneraDetalle;
    procedure RegistroDetalle( xTipDet,xTipCar: String; xMonto: Double );
    procedure EstadoNDebito( xxEstado:String);
    procedure InsertaCanjes( xxCds:TwwClientDataSet );
    Function  VerificaTotal:Boolean;
    Function  GeneraAsientoCanje:Boolean;
    Function  ValidaCabecera: Boolean;
    Function  ExisteMovCxC(xxCia,xxTDiario,xxAAMM,xxNoReg:String):Boolean;
    Function  ExisteLetras(xxCia,xxTCanje,xxCanje:String):Boolean;
    Function  VerificaDocumentosPendientes:Boolean;
    function  NGeneraAsiento: Boolean;
    procedure NDetalleContable;
    procedure NGeneraDiferenciaCambio;
    procedure NGrabaDiferenciaCambio;
    procedure NContabilidadCanje;
    procedure InsertaLetra;
    procedure MuestraSituacion;
    ///**CIM 23/05/2001
    function  PerteneceCondicionPago(xxCond : string):boolean;
    procedure VerificaAsiento;
    procedure TotalesNDebito;
  end;

var
  FLetras1   : TFLetras1;
  xNDTDiario: String;
  xSQL      : String;
  xTAutoNum,xTAno,   xTMes    : String;
  xCtaDif,  xGloDif, xCptoDif : String;
  xGlosa,   xLote,   xCuenta, xConcepto, xDH : String;
  xDifCam,  xPagAnt, xDifCLoc, xDifCExt : Double;
  xTotLoc,  xTotExt : Double;
  xxTCambio : Double;
  xCrea     : Boolean;
  xFlagGr   : Boolean;
  xModoL    : String;
  xFlagP    : Boolean;
  xTo,xMG,xI1,xMN:real;
//  22/05/2001  CIM
  wCondicion : boolean;
  wFlagCond  : string;
  wTDoc      : string;//31/07
  sDocIdNC    : string;
  xSector     : string;
  xZona       : string;
  iNumLetOri  : integer;

implementation

Uses CxCDM, CxC001;

{$R *.DFM}



procedure TFLetras1.dblcdClieExit(Sender: TObject);
begin
   if xCrea then Exit;
   if length(dblcdClie.Text)>0 then
   begin
      edtClie.Text:=DisplayDescrip('TGE204','CLIEDES','CLIEID',dblcdClie.Text);
      //** 27/02/2001 - pjsv - solo para el JCP, por recomendacion de JCC
      if dblcClAux.text ='SO' then
        dbeGirado.Text:= edtClie.Text + ' Socio No. '+dblcdClie.Text
      else dbeGirado.Text:= edtClie.Text;
      //**
      if length(edtClie.Text)=0 then begin
          ShowMessage('Cliente no existe');
          dblcdClie.Text:='';
          dblcdClieRuc.Text:='';
          dblcdClie.SetFocus;
          exit;
      end;
      dblcClAux.Text   :=DM1.cdsQry2.FieldByName('ClAuxId').AsString;

      xSector:=DM1.cdsQry2.FieldByname('TVTAID').AsString;
      xZona:=DM1.cdsQry2.FieldByname('ZONVTAID').AsString;

      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.FieldByname('CLIERUC').AsString:=DM1.cdsQry2.FieldByName('ClieRuc').AsString;
      DM1.cdsCCanje.fieldbyname('CJEstado').AsString:='T';
      DM1.cdsPost( DM1.cdsCCanje );
      DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
      DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

      EstadoDeForma( 0, DM1.cdsCCanje.fieldbyname('CJEstado').AsString, ' ' );
      end
   else begin
      edtClie.Text:='';
   end;
end;

procedure TFLetras1.FormActivate(Sender: TObject);
begin
      XCIA:= DM1.cdsCCanje.fieldbyname('CiaId').AsString;
      XCANJE:=DM1.cdsCCanje.fieldbyname('Canje').AsString;
      FiltraCanje( DM1.wModo );
      XCLIEDES:= DisplayDescrip('TGE204','CLIEDES','CLIEID',dblcdClie.Text);
      xSector:=DM1.cdsQry2.FieldByname('TVTAID').AsString;
      xZona:=DM1.cdsQry2.FieldByname('ZONVTAID').AsString;
      iNumLetOri      := dm1.cdsCCanje.fieldbyname('CJNUMLET').AsInteger;
      xTMes := copy(dm1.cdsCCanje.fieldbyname('CJAAMM').AsString,5,2);
      xTAno :=copy(dm1.cdsCCanje.fieldbyname('CJAAMM').AsString,1,4);

end;

procedure TFLetras1.MuestraSituacion;
var
   xWhere : String;
begin
   xWhere:= 'SITUAID='''+DM1.cdsLetras.FieldByName( 'SITID' ).AsString+'''';
   pnlSit.Caption:=BuscaQry('dspTGE','CXC104','*',xWhere,'SITUADES');
end;


procedure TFLetras1.EstadoDeForma(xxModo:Integer; xMovEstado,xMovConta:String);
begin
   dblcCia.Enabled       := False;
   dblcClAux.Enabled     := False;
   dblcdClie.Enabled     := False;
   dblcdClieRuc.Enabled  := False;
   edtCanje.Enabled      := False;
   dblcTDoc.Enabled      := False;
   dblcTDiario.Enabled   := False;
   dtpFComp.Enabled      := False;
   pnlCab1.Enabled       := False;
   pnlCab2.Enabled       := False;

   bbtnOK.Enabled        := False;
   bbtnBorra.Enabled     := False;

   pnlDetalle.Enabled    := False;
   dbgPendientes.Enabled := False;
   dbgDocCanje.Enabled   := False;
   dbgLetras.Enabled     := False;
   dbgPendientes.ReadOnly:= True;
   dbgDocCanje.ReadOnly  := True;
   dbgLetras.ReadOnly    := True;
   btnActReg.Enabled     := False;
   btnActReg1.Enabled     := False;
   
   pnlPie.Refresh;
   pnlPie.Enabled       := False;
   bbtnRegresa.Enabled  := False;
   bbtnCancela.Enabled  := False;
   Z2bbtnGraba.Enabled  := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled  := False;
   Z2bbtnImprime.Enabled:= False;
   Z2bbtnContab.Enabled := False;
   Z2bbtnNuevo.Enabled  := False;

   lblActivo.Visible    := False;
   lblAcepta.Visible    := False;
   lblAnula.Visible     := False;
   lblContab.Visible    := False;
   EstadoNDebito( 'S' );

   If xxModo=0 then
   begin
         If xMovEstado=' ' then  begin
            pnlCab1.Enabled    := True;
            dblcCia.Enabled    := True;
            edtCanje.Enabled   := True;
            bbtnOK.Enabled     := True;
            bbtnBorra.Enabled  := True;

            dblcCia.SetFocus;
         end;
         If xMovEstado='X' then  begin
            pnlCab1.Enabled     := True;
            dblcClAux.Enabled   := True;
            dblcdClie.Enabled   := True;
            dblcdClieRuc.Enabled:= True;
            bbtnOK.Enabled      := True;
            bbtnBorra.Enabled   := True;
            dblcClAux.SetFocus;
         end;
         If xMovEstado='T' then  begin
            pnlCab2.Enabled    := True;
            dblcTDoc.Enabled   := True;
            dblcTDiario.Enabled:= True;
            dtpFComp.Enabled   := True;
            bbtnOK.Enabled     := True;
            bbtnBorra.Enabled  := True;

            lblActivo.Visible  := False;
            dblcTDoc.SetFocus;
         end;
         If xMovEstado='I' then begin
            pnlCab2.Enabled    := True;
            bbtnOK.Enabled     := True;
            bbtnBorra.Enabled  := True;

            lblActivo.Visible  := True;
            dtpFEmis.SetFocus;
         end;
      end
   else
   begin
      If xMovConta='S' then begin
         pnlDetalle.Enabled   := True;
         dbgDocCanje.Enabled  := True;
         dbgLetras.Enabled    := True;

         lblContab.Visible    := True;
         end
      else
      begin
         If xMovEstado='T' then begin
            pnlDetalle.Enabled    := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled   := True;
            dbgLetras.Enabled     := True;
            dbgPendientes.ReadOnly:= False;
            dbgDocCanje.ReadOnly  := False;
            dbgLetras.ReadOnly    := False;
            btnActReg.Enabled     := True;
            btnActReg1.Enabled     := True;

            pnlPie.Enabled       := True;
            bbtnRegresa.Enabled  := True;
            bbtnCancela.Enabled  := True;
            Z2bbtnGraba.Enabled  := True;
            lblActivo.Visible    := True;
            EstadoNDebito( DM1.cdsCCanje.fieldbyname('NDebito').AsString );
         end;
         If xMovEstado='I' then begin
            pnlDetalle.Enabled    := True;
            dbgPendientes.Enabled := True;
            dbgDocCanje.Enabled   := True;
            dbgLetras.Enabled     := True;
            dbgPendientes.ReadOnly:= False;
            dbgDocCanje.ReadOnly  := False;
            dbgLetras.ReadOnly    := False;
            btnActReg.Enabled     := True;
            btnActReg1.Enabled     := True;

            pnlPie.Enabled       := True;
            bbtnRegresa.Enabled  := True;
            bbtnCancela.Enabled  := True;
            Z2bbtnGraba.Enabled  := True;
            Z2bbtnImprime.Enabled:= True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled  := True;
            lblActivo.Visible    := True;
            EstadoNDebito( DM1.cdsCCanje.fieldbyname('NDebito').AsString );
         end;
         If ( xMovEstado='P' ) or ( xMovEstado='C' ) then begin
            pnlDetalle.Enabled   := True;
            dbgDocCanje.Enabled  := True;
            dbgLetras.Enabled    := True;

            pnlPie.Enabled       := True;
            Z2bbtnContab.Enabled := True;

            lblAcepta.Visible    := True;
         end;
         If xMovEstado='A' then begin
            pnlDetalle.Enabled    := True;

            dbgDocCanje.Enabled  := True;
            dbgLetras.Enabled    := True;

            pnlPie.Enabled       := True;

            lblAnula.Visible     := True;
         end;
      end;
   end;

   if DM1.wModo='A' then begin
      Z2bbtnNuevo.Enabled  := True;
   end;

   if DM1.wModo='C' then begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled      := False;
      pnlCab2.Enabled      := False;

      bbtnOK.Enabled       := False;
      bbtnBorra.Enabled    := False;

      dbgPendientes.Enabled := False;
      dbgDocCanje.Enabled   := False;
      dbgLetras.Enabled     := False;
      dbgPendientes.ReadOnly:= True;
      dbgDocCanje.ReadOnly  := True;
      dbgLetras.ReadOnly    := True;
      btnActReg.Enabled     := False;
      btnActReg1.Enabled    := False;      
      pnlDatos.Enabled      := False;
      pnlDatos2.Enabled     := False;

      pnlPie.Refresh;
      pnlPie.Enabled       := False;
      bbtnRegresa.Enabled  := False;
      bbtnCancela.Enabled  := False;
      Z2bbtnGraba.Enabled  := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled  := False;
      Z2bbtnImprime.Enabled:= False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled  := False;
   end;
   MuestraSituacion;
end;

procedure TFLetras1.EstadoNDebito( xxEstado:String);
begin
   If (xxEstado='N') or (Length(xxEstado)=0) then begin
      pnlDatos.Enabled   := True;
      pnlDatos2.Enabled  := True;
      dbeGAdm.Enabled    := True;
      dbeGFin.Enabled    := True;
      dbeMora.Enabled    := True;
      dbeOtro.Enabled    := True;
      dbePInt.Enabled    := True;
      rgTiempo.Enabled   := True;
      bbtnCalcula.Enabled:= True;
      bbtnNDebito.Enabled:= True;
      dblcNDDoc.Enabled  := True;
      dblcSerie.Enabled  := True;
      dbeNoDoc.Enabled   := True;
   end;
   If xxEstado='S' then begin
      pnlDatos.Enabled   := False;
      pnlDatos2.Enabled  := False;
      dbeGAdm.Enabled    := False;
      dbeGFin.Enabled    := False;
      dbeMora.Enabled    := False;
      dbeOtro.Enabled    := False;
      dbePInt.Enabled    := False;
      rgTiempo.Enabled   := False;
      bbtnCalcula.Enabled:= False;
      bbtnNDebito.Enabled:= False;
      dblcNDDoc.Enabled  := False;
      dblcSerie.Enabled  := False;
      dbeNoDoc.Enabled   := False;
      btnActReg.Enabled     := False;
      btnActReg1.Enabled     := False;
   end;
end;

procedure TFLetras1.InicializaPies;
begin
   dbgDocCanje.ColumnByName('CPNoDoc').FooterValue :='Totales';
   dbgDocCanje.ColumnByName('CPSalLoc').FooterValue:='';
   dbgDocCanje.ColumnByName('CPSalExt').FooterValue:='';
   dbgDocCanje.ColumnByName('CCPMoLoc').FooterValue:='';
   dbgDocCanje.ColumnByName('CCPMoExt').FooterValue:='';

   dbgLetras.ColumnByName('CPNoDoc').FooterValue :='Totales';
//   dbgLetras.ColumnByName('lkTMonID').FooterValue:=DM1.cdsLetraslkTMon.Value;
   dbgLetras.ColumnByName('CPMtoOri').FooterValue:='';
   dbgLetras.ColumnByName('CPMtoLoc').FooterValue:='';
   dbgLetras.ColumnByName('CPMtoExt').FooterValue:='';
end;

procedure TFLetras1.InicializaDatos;
begin
   xFlagGr           := false;
   dtpFValor.Date    := date;
   dtpFEmis.Date     := date;
   dtpFComp.Date     := date;
   dblcdClieRuc.Text := '';
   dblcdClie.Text    := '';
   dblcTMon.Text     := '';
   edtTMon.Text      := '';
   dbeTCLet.Text     := '';
   dbeCuenta.Text    := '';
   dbeGlosa.Text     := '';
   edtClie.Text      := '';
   dblcCia.Text      := '';
   edtCia.Text       := '';
   edtCanje.Text     := '';
   dblcTDoc.Text     := '';
   edtTDoc.Text      := '';
   dblcTDiario.Text  := '';
   edtTDiario.Text   := '';
   dbeGirado.Text    := '';  // CIM
end;

procedure TFLetras1.InicializaClientDataSet;
begin
   Filtracds( DM1.cdsDetCxC,  'Select * from CXC302 Where CIAID='''' ' );
   Filtracds( DM1.cdsMovCxC2, 'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where CIAID='''' ' );
   Filtracds( DM1.cdsMovCxC2Clone, 'Select CXC301.* from CXC301 Where CIAID='''' ' );
   Filtracds( DM1.cdsDetCanje,'Select * from CXC305 Where CIAID='''' ' );
   Filtracds( DM1.cdsCanjes,  'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where CIAID='''' ' );
   Filtracds( DM1.cdsCanjesClone,  'Select CXC304.* from CXC304 Where CIAID='''' ' );

   Filtracds( DM1.cdsLetras,  'Select * from CXC301 Where CIAID='''' ' );
   Filtracds( DM1.cdsMovCxC,  'Select * from CXC301 Where CIAID='''' ' );
   Filtracds( DM1.cdsDoc,     'Select * from TGE110 Where DOCMOD=''CXC''' );
end;

procedure TFLetras1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   // Cancela todas las modificaciones en los cds.
   DM1.cdsLetras.CancelUpdates;
   DM1.cdsDetCxC.CancelUpdates;
   DM1.cdsMovCxC2.CancelUpdates;
   DM1.cdsCanjes.CancelUpdates;
   DM1.cdsDetCanje.CancelUpdates;

   If ( DM1.wModo='A' ) and ( xFlagGr ) then
   begin
      DM1.cdsCCanje.Delete;
      DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
      DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );
      DM1.cdsLetras.First;
      while not DM1.cdsLetras.Eof do
      begin
         DM1.cdsLetras.Delete;
      end;
      DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

//CLG: 04/02/2002
// BORRA LOS REGISTROS DEL ASIENTO DE LA NOTA DE CREDITO
      DM1.cdsDetCxC2.EmptyDataSet;
      DM1.cdsDetCxC2.DataRequest('Select * from CXC302');
      DM1.AplicaDatos( DM1.cdsDetCxC2,'DetCxC2' );


   end
   else
   begin
      DM1.cdsCCanje.CancelUpdates;
   end;
   // Eliminar Filtros
   DM1.cdsDetCxC.Filtered := False;
   DM1.cdsTDoc.Filtered   := False;
   DM1.cdsCanjes.Filtered  := False;
   DM1.cdsLetras.Filtered := False;
   DM1.cdsTMon.Filtered   := False;
   DM1.cdsMovCxC2.IndexFieldNames:='';
   DM1.cdsMovCxC2.IndexFieldNames:='';
   DM1.cdsCanjes.IndexFieldNames:='';
end;

Procedure TFLetras1.FiltraCanje( xModo : String );
var sSQL:string;
begin
   Filtracds( DM1.cdsMovCxC2,'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+dblcCia.Text  +''''+' and '
                         + 'CLIEID='    +''''+dblcdClie.Text+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );


   DM1.cdsMovCxC2.DisableControls;

   if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
     DM1.cdsTDoc.IndexFieldNames:='DOCID';

   DM1.cdsMovCxC2.First;
   DM1.cdsTDoc.Filtered:=True;   
   while not DM1.cdsMovCxC2.EOF do
   begin
     DM1.cdsTDoc.Setkey;
     DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsMovCxc2.FieldByName('DOCID').AsString;
     DM1.cdsMovCxC2.Edit;
     if DM1.cdsTDoc.Gotokey then
       DM1.cdsMovCxc2.FieldByName('DOCABR').AsString:=DM1.cdsTDoc.FieldByName('DOCABR').AsString
     else
       DM1.cdsMovCxc2.FieldByName('DOCABR').AsString:='N.A.';
     DM1.cdsMovCxC2.Post;
     DM1.cdsMovCxC2.Next;
   end;
   DM1.cdsMovCxC2.Filtered:= False;
   DM1.cdsMovCxC2.Filter  := '';
   DM1.cdsMovCxC2.Filter  := 'FlagVar<>'+''''+'XX'+''''+' and (CCSALLOC>0 or TCANJEID=''NC'')and '
                           + 'CCCANJE<>'  +''''+edtCanje.Text +'''';

   DM1.cdsMovCxC2.Filtered:= True;

   DM1.cdsMovCxC2.EnableControls;

   Filtracds( DM1.cdsMovCxC2Clone,'Select CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+dblcCia.Text  +''''+' and '
                         + 'CLIEID='    +''''+dblcdClie.Text+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );

   DM1.cdsMovCxC2Clone.Filtered:= False;
   DM1.cdsMovCxC2Clone.Filter  := '';
   DM1.cdsMovCxC2Clone.Filter  := 'FlagVar<>'+''''+'XX'+''''+' and (CCSALLOC>0 or TCANJEID=''NC'')and '
                           + 'CCCANJE<>'  +''''+edtCanje.Text +'''';

   DM1.cdsMovCxC2Clone.Filtered:= True;

   Filtracds( DM1.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );

   Filtracds( DM1.cdsCanjesClone, 'Select CXC304.* from CXC304 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );


   DM1.cdsCanjes.DisableControls;

   if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
     DM1.cdsTDoc.IndexFieldNames:='DOCID';

   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.EOF do
   begin
     DM1.cdsTDoc.Setkey;
     DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsCanjes.FieldByName('DOCID').AsString;
     DM1.cdsCanjes.Edit;
     if DM1.cdsTDoc.Gotokey then
       DM1.cdsCanjes.FieldByName('DOCABR').AsString:=DM1.cdsTDoc.FieldByName('DOCABR').AsString
     else
       DM1.cdsCanjes.FieldByName('DOCABR').AsString:='N.A.';
     DM1.cdsCanjes.Post;
     DM1.cdsCanjes.Next;
   end;
   DM1.cdsCanjes.EnableControls;

   Filtracds( DM1.cdsDetCanje, 'Select * from CXC305 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );

   Filtracds( DM1.cdsLetras, 'Select * from CXC301 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );

   if (DM1.SRV_D = 'DB2NT') or (DM1.SRV_D = 'DB2400') then
   begin
   sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
         ' Z1.TVTADES FROM CXC301 L '+
         ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID '+
         ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID '+
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID '+
         ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID '+
         ' WHERE L.CIAID='+QuotedStr(dblcCia.Text)+
         ' and L.TCANJEID='+QuotedStr('LC')+
         ' and L.CCCANJE='+QuotedStr(edtCanje.text);
   end;
   if DM1.SRV_D='ORACLE' then
   begin
   sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, '+
         ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, '+
         ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
         ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 '+
         ' WHERE L.CIAID='+QuotedStr(dblcCia.Text)+
         ' and L.TCANJEID='+QuotedStr('LC')+
         ' and L.CCCANJE='+QuotedStr(edtCanje.text)+
         ' and L.CLIEID=C.CLIEID(+) '+
         ' and L.TMONID=M.TMONID(+) '+
         ' and C.ZONVTAID=Z.ZVTAID(+) '+
         ' and Z.ZVTAID=Z1.TVTAID(+) ';
   end;
   DM1.cdsQry4.Close;
   DM1.cdsQry4.Datarequest(sSQL);
   DM1.cdsQry4.Open;

   if xModo<>'A' then begin
      Filtracds( DM1.cdsDetCxC, 'Select * from CXC302 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );
      DM1.cdsDetCxC.First;
   end;
   if DM1.cdsCCanje.fieldbyname('NDebito').AsString='S' then
   begin
      Filtracds( DM1.cdsMovCxC,  'Select * from CXC301 Where '
                   +'CIAID='  +''''+dblcCia.Text                  +''''+' AND '
                   +'DOCID='  +''''+DM1.cdsCCanje.fieldbyname('NDDoc').AsString   +''''+' AND '
                   +'CCSERIE='+''''+DM1.cdsCCanje.fieldbyname('NDSerie').AsString +''''+' AND '
                   +'CCNODOC='+''''+DM1.cdsCCanje.fieldbyname('NDNumero').AsString+'''' );
      Filtracds( DM1.cdsDetCxC2, 'Select * from CXC302 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'ND'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );

   end;
end;


procedure TFLetras1.edtCanjeExit(Sender: TObject);
begin
   if xCrea then Exit;

   if bbtnBorra.Focused then Exit;

   edtCanje.Text:= StrZero( edtCanje.Text, DM1.cdsCCanje.fieldbyname('Canje').Size );

   if edtCanje.text='000000' then
   begin
      edtcanje.SetFocus;
      raise exception.Create('Error :  Falta Registrar Número de Canje');
   end;
   if DM1.BuscaCanje( dblcCia.Text,'LC',edtCanje.Text ) then begin
      edtcanje.SetFocus;
      raise Exception.Create( 'Error :  Canje Ya Existe' );
   end;

   // Si No Existe Canje Se Inserta Registro
   DM1.cdsCCanje.Insert;
   DM1.cdsCCanje.fieldbyname('CiaID').AsString   := dblcCia.Text;
   DM1.cdsCCanje.fieldbyname('TCanjeID').AsString:= 'LC';
   DM1.cdsCCanje.fieldbyname('Canje').AsString   := edtCanje.Text;
   DM1.cdsCCanje.fieldbyname('CJEstado').AsString:= 'X';
   DM1.cdsCCanje.fieldbyname('DocId').AsString   := '  ';
   DM1.cdsCCanje.fieldbyname('CJUser').AsString  := DM1.wUsuario;
   DM1.cdsCCanje.fieldbyname('CJFReg').AsDateTime:= Date;
   DM1.cdsCCanje.fieldbyname('CJFHor').AsDateTime:= Time;

   DM1.cdsCCanje.DataRequest( ' Select * from CXC307 WHERE '
                            + ' CIAID='+QuotedStr(dblcCia.Text)
                            + ' AND TCANJEID='+QuotedStr('LC')
                            + ' AND CANJE='+QuotedStr(edtCanje.Text));
   DM1.cdsPost( DM1.cdsCCanje );

   DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

   DM1.cdsTDoc.Filtered:=true;

   bbtnSumatClick(Sender);

   EstadoDeForma( 0, DM1.cdsCCanje.fieldbyname('CJEstado').AsString, ' ' );
   xFlagGr := True;
end;

procedure TFLetras1.bbtnBasuraDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

Function TFLetras1.ValidaCabecera: Boolean;
begin
   if length(dblcCia.Text)=0   then raise exception.Create('Falta Código de Compañía');
   if length(edtCia.Text)=0    then raise exception.Create('Código de Compañía Errado');
   if length(edtCanje.Text)=0  then raise exception.Create('Falta No. de Canje');
   If length(dblcdClie.Text)=0 then raise exception.Create('Falta Registrar Cliente');
   if length(dblcTMon.Text)=0  then raise exception.Create('Falta Tipo de Moneda');
   if length(edtTMon.Text)=0   then raise exception.Create('Código de Moneda Errado');
   if length(dbeTCLet.Text)=0  then raise exception.Create('Falta Tipo de Cambio');
   if length(dbeCuenta.Text)=0 then raise exception.Create('Falta Registrar Cuenta');
   if length(dbeGlosa.Text)=0  then raise exception.Create('Código de Cuenta Errado');
   If length(edtClie.Text)=0   then raise exception.Create('Cliente Errado');
   if dtpFEmis.Date=0 then raise exception.Create('Falta Fecha de Canje');
   If dtpFComp.Date=0 then raise exception.Create('Falta Fecha de Comprobante');
   If length(dblcdClieRuc.Text)=0 then raise exception.Create('Falta Registrar RUC de Cliente');
   Result := true;
end;

Function TFLetras1.ExisteMovCxC(xxCia,xxTDiario,xxAAMM,xxNoReg:String):Boolean;
begin
   DM1.cdsMovCxC2.Setkey;
   DM1.cdsMovCxC2.fieldbyname('CiaId').AsString    := xxCia;
   DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString  := xxTDiario;
   DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString := xxAAMM;
   DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString  := xxNoReg;
   if DM1.cdsMovCxC2.GotoKey then
      Result:=True
   else
      Result:=False;
end;

function TFLetras1.ExisteLetras(xxCia,xxTCanje,xxCanje:String):Boolean;
begin
   DM1.cdsLetras.SetKey;
   DM1.cdsLetras.fieldbyname('CiaID').AsString    := xxCia;
   DM1.cdsLetras.fieldbyname('TCanjeID').AsString := xxTCanje;
   DM1.cdsLetras.fieldbyname('CCCanje').AsString  := xxCanje;
   if DM1.cdsLetras.GotoKey then Result:=True else  Result:=False;
end;

procedure TFLetras1.bbtnOkClick(Sender: TObject);
var
   xFecStr : String;
begin
end;

procedure TFLetras1.BitBtn3DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

procedure TFLetras1.bbtnSumatClick(Sender: TObject);
var
   xTSalLoc, xTSalExt, xTPagLoc, xTPagExt, xTTotLet, xTTotIGV : Double;
   xTTotGra, xTTotGas, xTTotInt, xxTotal : Double;
   xTMonID : String;
   xRegAct : TBookMark;
	xSigno : String;

begin
   xTPagLoc:=0;
   xTPagExt:=0;

	 DM1.cdsCanjes.DisableControls;  // inhab. movim. de puntero pal grid
	 xRegAct := DM1.cdsCanjes.GetBookmark;  // marca reg. donde se quedo
    DM1.cdsTDoc.Filtered:=False;
	 if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
   	  DM1.cdsTDoc.IndexFieldNames:='DOCID';
	 DM1.cdsCanjes.First ;
	 while not DM1.cdsCanjes.Eof do
	 begin
      xSigno := '+';
      DM1.cdsTDoc.SetKey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString := DM1.cdsCanjes.FieldByName('DOCID').AsString;
      if DM1.cdsTDoc.Gotokey then
      begin
        if DM1.cdsTDoc.FieldByName('DOCRESTA').AsString='S' then
          xSigno:='-';
        if xSigno='+' then
        begin
          xTPagLoc := xTPagLoc + DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
          xTPagExt := xTPagExt + DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
        end
        else
        begin
          xTPagLoc := xTPagLoc - DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
          xTPagExt := xTPagExt - DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
        end;
       end;
      DM1.cdsCanjes.Next;
	 end;
    DM1.cdsTDoc.Filtered:=True;
	 DM1.cdsCanjes.GotoBookmark(xRegAct);
	 DM1.cdsCanjes.FreeBookmark(xRegAct);
	 DM1.cdsCanjes.EnableControls;


   xTSalLoc := OperClientDataSet( DM1.cdsCanjes,'SUM('+'CCSALLOC'+')','');
   xTSalExt := OperClientDataSet( DM1.cdsCanjes,'SUM('+'CCSALEXT'+')','');
 {  xTPagLoc := OperClientDataSet( DM1.cdsCanjes,'SUM('+'CCMTOLOC'+')','');
   xTPagExt := OperClientDataSet( DM1.cdsCanjes,'SUM('+'CCMTOEXT'+')','');}
   dbgDocCanje.ColumnByName('CCSalLoc').FooterValue:=floattostrf(xTSalLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCSalExt').FooterValue:=floattostrf(xTSalExt, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoLoc').FooterValue:=floattostrf(xTPagLoc, ffNumber, 10, 2);
   dbgDocCanje.ColumnByName('CCMtoExt').FooterValue:=floattostrf(xTPagExt, ffNumber, 10, 2);

   xTTotGra := OperClientDataSet( DM1.cdsLetras,'SUM('+'CCGRAVAD'+')','');
   xTTotGas := OperClientDataSet( DM1.cdsLetras,'SUM('+'CCGASFIN'+')','');
   xTTotInt := OperClientDataSet( DM1.cdsLetras,'SUM('+'INTERES' +')','');
   xTTotIGV := OperClientDataSet( DM1.cdsLetras,'SUM('+'CCIGV'   +')','');
   xTTotLet := OperClientDataSet( DM1.cdsLetras,'SUM('+'CCMTOORI'+')','');
   dbgLetras.ColumnByName('CCGRAVAD').FooterValue:=floattostrf(xTTotGra, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCGASFIN').FooterValue:=floattostrf(xTTotGas, ffNumber, 10, 2);
   dbgLetras.ColumnByName('INTERES' ).FooterValue:=floattostrf(xTTotInt, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCIGV'   ).FooterValue:=floattostrf(xTTotIGV, ffNumber, 10, 2);
   dbgLetras.ColumnByName('CCMTOORI').FooterValue:=floattostrf(xTTotLet, ffNumber, 10, 2);


   If DM1.cdsCCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
      xxTotal := xTPagLoc
   else begin
      xxTotal := xTPagExt;
   end;

   xTMonID  := DM1.cdsCCanje.fieldbyname('TMonID').AsString; // DM1.cdsLetraslkTMon.Value;

   edtFinal.Text := 'Letras se deberan Generar por la suma de '+BuscaQry('dspTGE','TGE103','TMONABR','TMONID='+QuotedStr(xTMonID),'TMONABR');

   edtTotal1.Text := floattostrf( xxToTal ,ffNumber,15,2);
   edtTotal.Text  := floattostr( FRound(xxToTal,15,2) );
end;

procedure TFLetras1.Z2bbtnGrabaClick(Sender: TObject);
var
   xNumRegT : Integer;
   xxNoReg, sSIT, sUBI, xWhere : string;
   fFlag : Boolean;
   xsNotDeb:real;
   xxWhere,xNumLet,sSQL:string;
begin
   xsNotDeb:=0;
   if DM1.cdsCanjes.RecordCount=0 then raise exception.Create('Falta Registrar Documentos a Canjear');
   if DM1.cdsLetras.RecordCount=0 then raise exception.Create('Falta Registrar Letras');

   if ((NOT DM1.cdsCCanje.FieldbyName('CJTOTORI').IsNull) OR (DM1.cdsCCanje.FieldbyName('CJTOTORI').AsFloat<>0)) AND (DM1.cdsCCanje.fieldbyname('NDebito').AsString  <> 'S') then
   begin
      ShowMessage('Genere la Nota de Débito');
      exit;
   end;


   xsNotDeb:=DM1.cdsCCanje.FieldByName('CJGASADM').AsFloat+
             DM1.cdsCCanje.FieldByName('CJGASFIN').AsFloat+
             DM1.cdsCCanje.FieldByName('CJMORA').AsFloat+
             DM1.cdsCCanje.FieldByName('CJOTROS').AsFloat+
             DM1.cdsCCanje.FieldByName('CJINTERES').AsFloat+
             DM1.cdsCCanje.FieldByName('CJIGV').AsFloat;


   if (xsNotDeb<>DM1.cdsCCanje.FieldByName('CJTOTORI').AsFloat) then
   begin
     if MessageDlg('Aun no se ha calculado la Nota de Débito. ¿ Desea Grabar  ? ',
        mtConfirmation, [mbYes, mbNo], 0)=mrNo then
        begin
          exit;
        end;
   end;

   // Verifica que Totales Cuadren
   VerificaAsiento;

   fFlag := True;
   if not VerificaTotal then begin
      fFlag := False;
      ShowMessage('Total Documentos a Canjear y Total Letras NO Cuadran');
      exit;
   end;

//   ShowMessage('XXX');
//  Exit;

   // Al Grabar se Poner la 1ra. Situación de Letras
   sSIT := '';
   if fFlag then begin
      xWhere:= 'SITUAFLAG=''1''';
      sSIT  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');
      if Length(sSIT)=0 then
         Raise Exception.Create('Revisar Tabla de Situación de Letras');

      xWhere:= 'UBICAFLAG=''1''';
      sUBI  := BuscaQry('dspTGE','CXC105','*',xWhere,'UBICAID');
   end;

   // Actualiza Letras
   xxNoReg :=DM1.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes);
   xNumRegT:=StrToInt(xxNoReg);

   xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
           + 'DOCID='  +''''+dblcTDoc.Text+''''+' AND '
           + 'CCCANJE<>'+QuotedStr(edtCanje.text);


   if DM1.wModo='A' then
   begin
     DM1.cdsCCanje.fieldbyname('CJLetIni').AsString := DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
   end;
     xNumLet:=DM1.cdsCCanje.fieldbyname('CJLetIni').AsString;

   DM1.cdsLetras.First;
   while not DM1.cdsLetras.eof do
   begin
      DM1.cdsLetras.Edit;
      if DM1.wModo='A' then
      begin
        DM1.cdsLetras.fieldbyname('CCNODOC').AsString:=xNumLet;
      end;
      xNumLet:=IntToStr(StrToInt(xNumLet)+1);

      if Length(DM1.cdsLetras.fieldbyname('CCEstado').AsString)=0 then
      begin
         xxNoReg:=GrabaRegistroLetra(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes,xNumRegT );
         xxNoReg:=StrZero( xxNoReg, DM1.cdsLetras.fieldbyname('CCNoReg').Size );
         DM1.cdsLetras.fieldbyname('CCNoReg').AsString:=xxNoReg;
      end;
      DM1.cdsLetras.fieldbyname('CCEstado').AsString:= 'I';

      if ( Length(DM1.cdsLetras.fieldbyname('SitID').AsString)=0) or (not fFlag) then
      begin
         DM1.cdsLetras.fieldbyname('UbiID').AsString:= sUBI;
         DM1.cdsLetras.fieldbyname('SitID').AsString:= sSit;
         DM1.cdsLetras.fieldbyname('CCFSitua').AsDateTime:= Date;
      end
      else
      begin
         if CambioSituacion( DM1.cdsLetras.fieldbyname('SitID').AsString, sSIT) then begin
            SetHyst(dblcCia.Text, dblcTDoc.Text, DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
            DM1.cdsLetras.fieldbyname('UbiID').AsString:= sUBI;
            DM1.cdsLetras.fieldbyname('SitID').AsString:= sSIT;
            DM1.cdsLetras.fieldbyname('CCFSitua').AsDateTime:= Date;
         end;
      end;

      DM1.cdsLetras.fieldbyname('CCFEmis').AsDateTime    := dtpFEmis.Date;
      DM1.cdsLetras.fieldbyname('CCFCmprb').AsDateTime   := dtpFComp.Date;
      DM1.cdsLetras.fieldbyname('CCptoTot').AsString:= dblcdCnpEgr.Text;
      DM1.cdsLetras.fieldbyname('CtaTotal').AsString:= dbeCuenta.Text;
      DM1.cdsLetras.fieldbyname('CCHReg').AsDateTime     := Time;
      DM1.cdsPost( DM1.cdsLetras );
      DM1.cdsLetras.Next;
   end;

   ActualizaSaldosMovCxP;

   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.fieldbyname('CJNumLet').AsInteger:= DM1.cdsLetras.RecordCount;
   DM1.cdsCCanje.fieldbyname('CJUser').AsString   := DM1.wUsuario;
   DM1.cdsCCanje.fieldbyname('CJFReg').Value      := date;
   DM1.cdsCCanje.fieldbyname('CJFHor').Value      := Time;
   DM1.cdsCCanje.fieldbyname('CJEstado').AsString := 'I';
   DM1.cdsPost( DM1.cdsCCanje );
   DM1.cdsCCanje.DataRequest( 'Select * from CXC307 WHERE '
                             +' CIAID='+QuotedStr(dblcCia.Text)
                             +' AND TCANJEID='+QuotedStr('LC')
                             +' AND CANJE='+QuotedStr(edtCanje.Text));
   DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );
   DM1.cdsDetCxC2.DataRequest('Select * from CXC302');
   DM1.AplicaDatos( DM1.cdsDetCxC2,'DetCxC2' );

   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

   DM1.cdsCanjesClone.DataRequest('Select CXC304.* from CXC304 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );
   DM1.AplicaDatos( DM1.cdsCanjesClone, 'Canjes'  );

   If xFlagGr then begin
      Filtracds( DM1.cdsLetras, 'Select * from CXC301 Where '
                           + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                           + 'TCANJEID='+''''+'LC'         +''''+' and '
                           + 'CCCANJE=' +''''+edtCanje.text+'''' );
   end;

   xFlagGr := False;

   EstadoDeForma(1, DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString        );

   ShowMessage(' Registro de Canje Grabado ');
end;

procedure TFLetras1.ActualizaSaldosMovCxP;
var
   xRegAct : TBookMark;
   xPagLoc, xPagExt : Double;
begin
   // Actualiza Saldo de MovCxP
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsMovCxC2Clone.Filtered:=False;
   DM1.cdsCanjeS.DisableControls;
   xRegAct := DM1.cdsCanjes.GetBookmark;
   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.Eof do
   begin
      DM1.cdsCanjes.Edit;
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.fieldbyname('CiaID').AsString    := DM1.cdsCanjes.fieldbyname('CiaID').AsString;
      DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString  := DM1.cdsCanjes.fieldbyname('TDiarID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString := DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString  := DM1.cdsCanjes.fieldbyname('CCNoReg').AsString;
      if DM1.cdsMovCxC2.GotoKey then
      begin
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
            If FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2)
               > FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat,15,2) then begin
               DM1.cdsCanjes.GotoBookmark(xRegAct);
               DM1.cdsCanjes.FreeBookmark(xRegAct);
               DM1.cdsCanjes.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            end;
            end
         else begin
            If FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2)
               > FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat,15,2) Then begin
               DM1.cdsCanjes.GotoBookmark(xRegAct);
               DM1.cdsCanjes.FreeBookmark(xRegAct);
               DM1.cdsCanjes.EnableControls;
               DM1.cdsMovCxC2.EnableControls;
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         end;
         DM1.cdsMovCxC2Clone.Setkey;
         DM1.cdsMovCxC2Clone.FieldByName('CIAID').AsString:=   DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('TDIARID').AsString:= DM1.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString:=DM1.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString:= DM1.cdsMovCxC2.FieldByName('CCNOREG').AsString;
         if DM1.cdsMovCxC2Clone.Gotokey then
         begin
           DM1.cdsMovCxC2Clone.edit;
           If DM1.cdsMovCxC2Clone.fieldbyname('TMonID').Value=DM1.wTMonLoc then
           begin
              xPagLoc := FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCMtoLoc').AsFloat-xPagLoc,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
           end
           else
           begin
              xPagExt := FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCMtoExt').AsFloat-xPagExt,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
           end;

           //DM1.cdsMovCxC2Clone.fieldbyname('FlagVar').Value := '.';
           DM1.cdsPost( DM1.cdsMovCxC2Clone );
           DM1.cdsMovCxC2Clone.Post;
         end;

         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.fieldbyname('TMonID').Value=DM1.wTMonLoc then
         begin
            xPagLoc := FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-xPagLoc,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
         end
         else
         begin
            xPagExt := FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-xPagExt,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
         end;

         //DM1.cdsMovCxC2.fieldbyname('FlagVar').Value := '.';
         DM1.cdsPost( DM1.cdsMovCxC2 );
         DM1.cdsMovCxC2.Post;
      end;
      DM1.cdsCanjes.Next;
   end;

   DM1.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+dblcCia.Text  +''''+' and '
                         + 'CLIEID='    +''''+dblcdClie.Text+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );
   DM1.AplicaDatos( DM1.cdsMovCxC2Clone,'MovCxC2' );

   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2Clone.Filtered:=True;

   DM1.cdsCanjes.GotoBookmark(xRegAct);
   DM1.cdsCanjes.FreeBookmark(xRegAct);
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.EnableControls;
end;

procedure TFLetras1.GrabaDetCanje;
var
   xSalLoc,xSalExt,xSaldoC,xSaldoL : Double;
begin
   DM1.cdsDetCanje.First;
   while (not DM1.cdsDetCanje.Eof) and (DM1.cdsDetCanje.RecordCount>0) do
      DM1.cdsDetCanje.Delete;

   DM1.cdsLetras.First;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.Eof do
   begin
      if DM1.cdsCanjes.fieldbyname('TMonID').AsString=DM1.wTMonLoc Then
         xSaldoC := DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat
      else
      begin
         xSaldoC := DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat;
      end;
      xSalLoc := DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat;
      xSalExt := DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat;
      while xSaldoC > 0 do
      begin
         while (not DM1.cdsLetras.Eof) and (xSaldoC>0) do
         begin
            if DM1.cdsCanjes.fieldbyname('TMonID').AsString=DM1.wTMonLoc Then
               xSaldoL := DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat
            else begin
               xSaldoL := DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
            end;

            DM1.cdsDetCanje.Insert;
            if xSaldoL<=xSaldoC then
            begin
               // Grabar en cxp305 en monto = a la letra
               GrabaRegCxP305;
               If DM1.cdsDetCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
                  xSalLoc := FRound(xSalLoc-DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  xSalExt := FRound(xSalExt-DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  xSaldoC := xSalLoc;
               end
               Else
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
                  xSalExt := FRound(xSalExt-DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  xSalLoc := FRound(xSalLoc-DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  xSaldoC := xSalExt;
               End;
               DM1.cdsPost( DM1.cdsDetCanje );

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.fieldbyname('CCMtoLoc').Value := 0;
               DM1.cdsLetras.Delete;
            end
            else
            begin
               // Grabar en cxp305 en monto = xSalLoc
               GrabaRegCxP305;
               If DM1.cdsDetCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(xSalLoc,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(xSalLoc/DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
               end
               Else
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(xSalExt,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(xSalExt*DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
               End;
               DM1.cdsPost( DM1.cdsDetCanje );

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat-xSalLoc,15,2);
               DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat-xSalExt,15,2);
               DM1.cdsPost( DM1.cdsLetras );
               xSalLoc := 0;
               xSalExt := 0;
               xSaldoC := 0;
            end;
         end;
      end;
      DM1.cdsCanjes.Next;
   end;
   DM1.cdsLetras.CancelUpdates;
   DM1.cdsDetCanje.First;
   DM1.cdsLetras.EnableControls;
   DM1.cdsCanjes.EnableControls;

   DM1.AplicaDatos( DM1.cdsDetCanje,'DetCanje' );
end;

Procedure TFLetras1.GrabaRegCxP305;
begin
   DM1.cdsDetCanje.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
   DM1.cdsDetCanje.fieldbyname('CLIEID').AsString   := DM1.cdsCanjes.fieldbyname('CLIEID').AsString;
   DM1.cdsDetCanje.fieldbyname('CLIERUC').AsString  := DM1.cdsCanjes.fieldbyname('CLIERUC').AsString;
   DM1.cdsDetCanje.fieldbyname('DOCID').AsString    := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
   DM1.cdsDetCanje.fieldbyname('CCSERIE').AsString  := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
   DM1.cdsDetCanje.fieldbyname('CCNODOC').AsString  := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;
   DM1.cdsDetCanje.fieldbyname('CCNOREG').AsString  := DM1.cdsLetras.fieldbyname('CCNOREG').AsString;
   DM1.cdsDetCanje.fieldbyname('TCANJEID').AsString := DM1.cdsCanjes.fieldbyname('TCANJEID').AsString;
   DM1.cdsDetCanje.fieldbyname('CCCANJE').Value  := DM1.cdsCanjes.fieldbyname('CCCANJE').AsString;
   DM1.cdsDetCanje.fieldbyname('CCFCANJE').Value := DM1.cdsCanjes.fieldbyname('CCFCANJE').Value;
   DM1.cdsDetCanje.fieldbyname('DOCID2').AsString   := DM1.cdsLetras.fieldbyname('DOCID').AsString;
   DM1.cdsDetCanje.fieldbyname('CCSERIE2').AsString := DM1.cdsLetras.fieldbyname('CCSERIE').AsString;
   DM1.cdsDetCanje.fieldbyname('CCNODOC2').AsString := DM1.cdsLetras.fieldbyname('CCNODOC').AsString;
   DM1.cdsDetCanje.fieldbyname('TMONID').AsString   := DM1.cdsCanjes.fieldbyname('TMONID').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCUSER').AsString  := DM1.cdsCanjes.fieldbyname('CCUSER').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCFREG').value  := DM1.cdsCanjes.fieldbyname('CCFREG').Value;
   DM1.cdsDetCanje.fieldbyname('DCCHREG').Value  := DM1.cdsCanjes.fieldbyname('CCHREG').Value;
   DM1.cdsDetCanje.fieldbyname('DCCAAAA').AsString  := DM1.cdsCanjes.fieldbyname('CCAAAA').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCMM').AsString    := DM1.cdsCanjes.fieldbyname('CCMM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCDD').AsString    := DM1.cdsCanjes.fieldbyname('CCDD').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCTRI').AsString   := DM1.cdsCanjes.fieldbyname('CCTRI').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCSEM').AsString   := DM1.cdsCanjes.fieldbyname('CCSEM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCSS').AsString    := DM1.cdsCanjes.fieldbyname('CCSS').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCANOMM').AsString := DM1.cdsCanjes.fieldbyname('CCANOMM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCAATRI').AsString := DM1.cdsCanjes.fieldbyname('CCAATRI').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCAASEM').AsString := DM1.cdsCanjes.fieldbyname('CCAASEM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCAASS').AsString  := DM1.cdsCanjes.fieldbyname('CCAASS').AsString;
end;

procedure TFLetras1.Z2bbtnContabClick(Sender: TObject);
begin
   EstadoDeForma( 1, 'P','S' );
   pnlConta.Visible:= True;
end;

function TFLetras1.GeneraAsientoCanje: Boolean;
var
   xRegAct : TBookMark;
   sIndice:string;
begin
   sIndice:=DM1.cdsCanjes.IndexFieldNames;
   DM1.cdsCanjes.IndexFieldNames    :='CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';
   //** 12/09/2001 - pjsv
   If dm1.MesCerrado(xTMes,xTAno,dblcCia.text) then
    begin
     ShowMessage(' Mes cerrado, no se puede contabilizar');
     exit;
    end;
   //**
   DM1.cdsDetCxC.First;
   while not dm1.cdsDetCxC.Eof do
      DM1.cdsDetCxC.Delete;

   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;

   DM1.cdsLetras.First;
   While not DM1.cdsLetras.Eof do Begin

      GrabaContabilidadLetra;
      GrabaContabilidadDocumentos;
      DM1.cdsLetras.Next;
   end;
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
   DM1.cdsCanjes.EnableControls;

   DM1.cdsCanjes.IndexFieldNames    :='CiaId;TCanjeID;CCCanje;TDiarID;CCAnoMM;CCNoReg';
                                      //'CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';
   DM1.cdsCanjes.IndexFieldNames:=sIndice;
   Result := True;
end;

procedure TFLetras1.GrabaContabilidadLetra;
begin
   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('CiaID').AsString    := DM1.cdsLetras.fieldbyname('CiaID').AsString;
   DM1.cdsDetCxC.FieldByName('TCanjeID').AsString := DM1.cdsLetras.fieldbyname('TCanjeID').AsString;
   DM1.cdsDetCxC.FieldByName('CCCanje').AsString  := DM1.cdsLetras.fieldbyname('CCCanje').AsString;
   DM1.cdsDetCxC.FieldByName('TDiarID').AsString  := DM1.cdsLetras.fieldbyname('TDiarID').AsString;
   DM1.cdsDetCxC.FieldByName('CCNoReg').AsString  := DM1.cdsLetras.fieldbyname('CCNoReg').AsString;
   DM1.cdsDetCxC.FieldByName('CCAAAA').AsString   := DM1.cdsLetras.fieldbyname('CCAAAA').AsString;
   DM1.cdsDetCxC.FieldByName('CCAnoMes').AsString := DM1.cdsLetras.fieldbyname('CCAnoMes').AsString;
   DM1.cdsDetCxC.FieldByName('CPtoID').AsString   := DM1.cdsCCanje.fieldbyname('CptoID').AsString;
   DM1.cdsDetCxC.FieldByName('CuentaID').AsString := DM1.cdsCCanje.fieldbyname('CuentaId').AsString;
   DM1.cdsDetCxC.FieldByName('ClAuxID').AsString  := dblcClAux.Text;
   DM1.cdsDetCxC.FieldByName('ClieID').AsString   := DM1.cdsCCanje.fieldbyname('ClieId').AsString;
   DM1.cdsDetCxC.FieldByName('ClieRuc').AsString  := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
   DM1.cdsDetCxC.FieldByName('DocID').AsString    := DM1.cdsCCanje.fieldbyname('DocID').AsString;
   DM1.cdsDetCxC.FieldByName('CCSerie').AsString  := '00000';
   DM1.cdsDetCxC.FieldByName('CCNoDoc').AsString  := DM1.cdsLetras.fieldbyname('CCNoDoc').AsString;
   DM1.cdsDetCxC.FieldByName('CCglosa').AsString  := DM1.cdsCCanje.fieldbyname('CJGlosa').AsString;
   DM1.cdsDetCxC.FieldByName('CCDH').Value     := 'H';
   DM1.cdsDetCxC.FieldByName('CCTCamPr').AsFloat := DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCMToOri').AsFloat := DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCMToLoc').AsFloat := DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCMToExt').AsFloat := DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCFEmis').AsDatetime  := DM1.cdsLetras.fieldbyname('CCFEmis').AsDatetime;
   DM1.cdsDetCxC.FieldByName('CCFVcmto').AsDatetime := DM1.cdsLetras.fieldbyname('CCFVcmto').AsDatetime;
   DM1.cdsDetCxC.FieldByName('CCFComp').AsDatetime  := dtpFComp.Date;
   DM1.cdsDetCxC.FieldByName('CCEstado').AsString := 'P';
   DM1.cdsDetCxC.FieldByName('TMonID').AsString   := DM1.cdsLetras.fieldbyname('TmonID').AsString;
   DM1.cdsDetCxC.FieldByName('CCMM').AsString     := DM1.cdsLetras.fieldbyname('CCMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCDD').AsString     := DM1.cdsLetras.fieldbyname('CCDD').AsString;
   DM1.cdsDetCxC.FieldByName('CCTri').AsString    := DM1.cdsLetras.fieldbyname('CCTri').AsString;
   DM1.cdsDetCxC.FieldByName('CCSem').AsString    := DM1.cdsLetras.fieldbyname('CCSem').AsString;
   DM1.cdsDetCxC.FieldByName('CCSS').AsString     := DM1.cdsLetras.fieldbyname('CCSS').AsString;
   DM1.cdsDetCxC.FieldByName('CCAATri').AsString  := DM1.cdsLetras.fieldbyname('CCAATri').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASem').AsString  := DM1.cdsLetras.fieldbyname('CCAASem').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASS').AsString   := DM1.cdsLetras.fieldbyname('CCAASS').AsString;
   DetCxCUsuario;  // Graba Usuario, Fecha y Hora
   DM1.cdsPost( DM1.cdsDetCxC );

end;

procedure TFLetras1.GrabaContabilidadDocumentos;
begin

   DM1.cdsDetCanje.Filter := '';
   DM1.cdsDetCanje.Filter := 'CiaId='   +''''+dblcCia.Text +''''+' and '+
                             'TCanjeID='+''''+'LC'         +''''+' and '+
                             'CCCanje=' +''''+edtCanje.text+''''+' and '+
                             'DocID2='  +''''+DM1.cdsLetras.fieldbyname('DocID').Value  +''''+' and '+
                             'CCSerie2='+''''+DM1.cdsLetras.fieldbyname('CCSerie').Value+''''+' and '+
                             'CCNoDoc2='+''''+DM1.cdsLetras.fieldbyname('CCNoDoc').Value+'''';
   DM1.cdsDetCanje.Filtered := True;

   DM1.cdsDetCanje.First;
   while not DM1.cdsDetCanje.Eof do begin

      DM1.cdsCanjes.SetKey;
      DM1.cdsCanjes.fieldbyname('CiaID').Value    := DM1.cdsLetras.fieldbyname('CiaID').Value;
      DM1.cdsCanjes.fieldbyname('TCanjeID').Value := DM1.cdsLetras.fieldbyname('TCanjeID').Value;
      DM1.cdsCanjes.fieldbyname('CCCanje').Value  := DM1.cdsLetras.fieldbyname('CCCanje').Value;
      DM1.cdsCanjes.fieldbyname('DocID').Value    := DM1.cdsDetCanje.fieldbyname('DocID').Value;
      DM1.cdsCanjes.fieldbyname('CCSerie').Value  := DM1.cdsDetCanje.fieldbyname('CCSerie').Value;
      DM1.cdsCanjes.fieldbyname('CCNoDoc').Value  := DM1.cdsDetCanje.fieldbyname('CCNoDoc').Value;
      if DM1.cdsCanjes.GotoKey then begin

         GeneraDiferenciaCambio;

         DM1.cdsDetCxC.Insert;
         DM1.cdsDetCxC.FieldByName('CiaID').AsString    := DM1.cdsLetras.fieldbyname('CiaID').AsString;
         DM1.cdsDetCxC.FieldByName('TCanjeID').AsString := DM1.cdsLetras.fieldbyname('TCanjeID').AsString;
         DM1.cdsDetCxC.FieldByName('CCCanje').AsString  := DM1.cdsLetras.fieldbyname('CcCanje').AsString;
         DM1.cdsDetCxC.FieldByName('TDiarID').AsString  := DM1.cdsLetras.fieldbyname('TDiarID').AsString;
         DM1.cdsDetCxC.FieldByName('CcNoReg').AsString  := DM1.cdsLetras.fieldbyname('CCNoReg').AsString;
         DM1.cdsDetCxC.FieldByName('CCAnoMes').AsString := DM1.cdsLetras.fieldbyname('CCAnoMes').AsString;
         DM1.cdsDetCxC.FieldByName('CCAAAA').AsString   := DM1.cdsLetras.fieldbyname('CCAAAA').AsString;
//         DM1.cdsDetCxCCCLote.Value   := DM1.cdsCCanjeCJLote.AsString;
         DM1.cdsDetCxC.FieldByName('CuentaID').AsString := DM1.cdsCanjes.fieldbyname('CtaTotal').AsString;
         DM1.cdsDetCxC.FieldByName('CptoID').AsString   := DM1.cdsCanjes.fieldbyname('CptoTot').AsString;
         DM1.cdsDetCxC.FieldByName('ClAuxID').AsString  := dblcClAux.Text;
         DM1.cdsDetCxC.FieldByName('ClieID').AsString   := DM1.cdsCanjes.fieldbyname('ClieId').AsString;
         DM1.cdsDetCxC.FieldByName('ClieRuc').AsString  := DM1.cdsCanjes.fieldbyname('ClieRuc').AsString;
         DM1.cdsDetCxC.FieldByName('DocID').AsString    := DM1.cdsCanjes.fieldbyname('DocID').AsString;
         DM1.cdsDetCxC.FieldByName('CCSerie').AsString  := DM1.cdsCanjes.fieldbyname('CCSerie').AsString;
         DM1.cdsDetCxC.FieldByName('CCNoDoc').AsString  := DM1.cdsCanjes.fieldbyname('CCNoDoc').AsString;
         DM1.cdsDetCxC.FieldByName('CCglosa').AsString  := DM1.cdsCCanje.fieldbyname('CjGlosa').AsString;
         DM1.cdsDetCxC.FieldByName('CCDH').Value     := 'D';
         DM1.cdsDetCxC.FieldByName('CCTCamPr').AsFloat := DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat;
         DM1.cdsDetCxC.FieldByName('TMonID').AsString   := DM1.cdsCanjes.fieldbyname('TmonID').AsString;
         if DM1.cdsCanjes.fieldbyname('TmonID').AsString=dm1.wTMonExt then
            DM1.cdsDetCxC.FieldByName('CCMtoOri').AsFloat := DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat
         else begin
            DM1.cdsDetCxC.FieldByName('CCMtoOri').AsFloat := DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat;
         end;
         DM1.cdsDetCxC.FieldByName('CCMtoLoc').AsFloat := FRound(DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat + xDifCLoc,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoExt').AsFloat := FRound(DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat + xDifCExt,15,2);
         DM1.cdsDetCxC.FieldByName('CCFEmis').Value  := DM1.cdsCanjes.fieldbyname('CCFEmis').Value;
         DM1.cdsDetCxC.FieldByName('CCFVcmto').Value := DM1.cdsCanjes.fieldbyname('CCFVcmto').Value;
         DM1.cdsDetCxC.FieldByName('CCFComp').Value  := dtpFComp.Date;
         DM1.cdsDetCxC.FieldByName('CCEstado').Value := 'P';
         DM1.cdsDetCxC.FieldByName('CCMM').AsString    := DM1.cdsLetras.fieldbyname('CCMM').AsString;
         DM1.cdsDetCxC.FieldByName('CCDD').AsString    := DM1.cdsLetras.fieldbyname('CCDD').AsString;
         DM1.cdsDetCxC.FieldByName('CCTri').AsString   := DM1.cdsLetras.fieldbyname('CCTri').AsString;
         DM1.cdsDetCxC.FieldByName('CCSem').AsString   := DM1.cdsLetras.fieldbyname('CCSem').AsString;
         DM1.cdsDetCxC.FieldByName('CCSS').AsString    := DM1.cdsLetras.fieldbyname('CCSS').AsString;
         DM1.cdsDetCxC.FieldByName('CCAATri').AsString := DM1.cdsLetras.fieldbyname('CCAATri').AsString;
         DM1.cdsDetCxC.FieldByName('CCAASem').AsString := DM1.cdsLetras.fieldbyname('CCAASem').AsString;
         DM1.cdsDetCxC.FieldByName('CCAASS').AsString  := DM1.cdsLetras.fieldbyname('CCAASS').AsString;
         DetCxCUsuario;  // Graba Usuario, Fecha y Hora

         GrabaDiferenciaCambio;

      end;
      DM1.cdsDetCanje.Next;
   end;
end;

procedure TFLetras1.GeneraDiferenciaCambio;
begin
   xDifCLoc:=0;
   xDifCExt:=0;
   if DM1.cdsCanjes.fieldbyname('TmonID').AsString=dm1.wTMonExt then begin
      xPagAnt := FRound( DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
      If DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat > xPagAnt then begin
         xDifCam  := FRound( DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat - xPagAnt,15,2);
         xDifCLoc := FRound( (-1)*(DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat - xPagAnt),15,2);
         xCtaDif  := DM1.wDifAjuP;
         xCptoDif := dm1.wCptoAjP;
         xGloDif  := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH      := 'D'
         end
      else begin
         xDifCam  := FRound(xPagAnt - DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat,15,2);
         xDifCLoc := FRound(xPagAnt - DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat,15,2);
         xCtaDif  := DM1.wDifAjuG;
         xCptoDif := dm1.wCptoAjG;
         xGloDif  := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH      := 'H'
      end;
      end
   else begin
      xPagAnt := FRound( DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
      If DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat > xPagAnt then begin
         xDifCam  := FRound( DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat - xPagAnt,15,2);
         xDifCExt := FRound( (-1)*(DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat - xPagAnt),15,2);
         xCtaDif  := dm1.wDifAjuP;
         xCptoDif := dm1.wCptoAjP;
         xGloDif  := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH      := 'D'
         end
      else begin
         xDifCam  := xPagAnt - DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat;
         xDifCExt := xPagAnt - DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat;
         xCtaDif  := dm1.wDifAjuG;
         xCptoDif := dm1.wCptoAjG;
         xGloDif  := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH      := 'H'
      end;
   end;
end;

procedure TFLetras1.GrabaDiferenciaCambio;
begin
   If xDifCam > 0 Then begin
      DM1.cdsDetCxC.Insert;
      DM1.cdsDetCxC.FieldByName('CiaID').AsString    := DM1.cdsCanjes.fieldbyname('CiaID').AsString;
      DM1.cdsDetCxC.FieldByName('TCanjeID').AsString := DM1.cdsLetras.fieldbyname('TCanjeID').AsString;
      DM1.cdsDetCxC.FieldByName('CCCanje').AsString  := DM1.cdsLetras.fieldbyname('CCCanje').AsString;
      DM1.cdsDetCxC.FieldByName('TDiarID').AsString  := DM1.cdsLetras.fieldbyname('TDiarID').AsString;
      DM1.cdsDetCxC.FieldByName('CCNoReg').AsString  := DM1.cdsLetras.fieldbyname('CCNoReg').AsString;
      DM1.cdsDetCxC.FieldByName('CCAnoMes').AsString := DM1.cdsLetras.fieldbyname('CCAnoMes').AsString;
      DM1.cdsDetCxC.FieldByName('CCAAAA').AsString   := DM1.cdsLetras.fieldbyname('CCAAAA').AsString;
//      DM1.cdsDetCxCCCLote.Value   := DM1.cdsCCanjeCJLote.AsString;
      DM1.cdsDetCxC.FieldByName('CuentaID').AsString := xCtaDif;
      DM1.cdsDetCxC.FieldByName('CptoID').AsString   := xCptoDif;
      DM1.cdsDetCxC.FieldByName('ClAuxID').AsString  := dblcClAux.Text;
      DM1.cdsDetCxC.FieldByName('ClieID').AsString   := DM1.cdsCCanje.fieldbyname('ClieId').AsString;
      DM1.cdsDetCxC.FieldByName('ClieID').AsString   := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
      DM1.cdsDetCxC.FieldByName('DocID').AsString    := DM1.cdsCanjes.fieldbyname('DocID').AsString;
      DM1.cdsDetCxC.FieldByName('CCSerie').AsString  := DM1.cdsCanjes.fieldbyname('CCSerie').AsString;
      DM1.cdsDetCxC.FieldByName('CCNoDoc').AsString  := DM1.cdsCanjes.fieldbyname('CCNoDoc').AsString;
      DM1.cdsDetCxC.FieldByName('CCglosa').AsString  := xGloDif;
      DM1.cdsDetCxC.FieldByName('CCDH').AsString     := xDH;
      DM1.cdsDetCxC.FieldByName('CCTCamPr').AsFloat := DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat;
      DM1.cdsDetCxC.FieldByName('CCTCamPa').AsFloat := DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat;
      //
      if DM1.cdsCanjes.fieldbyname('TMonID').AsString=dm1.wTMonExt then begin
         DM1.cdsDetCxC.FieldByName('CCMtoOri').AsFloat := FRound(xDifCam,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoLoc').AsFloat := FRound(xDifCam,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoExt').AsFloat := 0;
         end
      else begin
         DM1.cdsDetCxC.FieldByName('CCMtoOri').AsFloat := FRound(xDifCam,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoLoc').AsFloat := 0;
         DM1.cdsDetCxC.FieldByName('CCMtoExt').AsFloat := FRound(xDifCam,15,2);
      end;
      //
      DM1.cdsDetCxC.FieldByName('CCFEmis').AsDatetime  := DM1.cdsLetras.fieldbyname('CCFEmis').AsDatetime;
      DM1.cdsDetCxC.FieldByName('CCFVcmto').AsDatetime := DM1.cdsCanjes.fieldbyname('CCFVcmto').AsDatetime;
      DM1.cdsDetCxC.FieldByName('CCFComp').AsDatetime  := dtpFComp.Date;
      DM1.cdsDetCxC.FieldByName('CCEstado').Value := 'P';
      DM1.cdsDetCxC.FieldByName('TMonID').AsString:= DM1.wTMonLoc;
      DM1.cdsDetCxC.FieldByName('CCMM').AsString     := DM1.cdsLetras.fieldbyname('CCMM').AsString;
      DM1.cdsDetCxC.FieldByName('CCDD').AsString     := DM1.cdsLetras.fieldbyname('CCDD').AsString;
      DM1.cdsDetCxC.FieldByName('CCTri').AsString    := DM1.cdsLetras.fieldbyname('CCTri').AsString;
      DM1.cdsDetCxC.FieldByName('CCSem').AsString    := DM1.cdsLetras.fieldbyname('CCSem').AsString;
      DM1.cdsDetCxC.FieldByName('CCSS').AsString     := DM1.cdsLetras.fieldbyname('CCSS').AsString;
      DM1.cdsDetCxC.FieldByName('CCAATri').AsString  := DM1.cdsLetras.fieldbyname('CCAATri').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASem').AsString  := DM1.cdsLetras.fieldbyname('CCAASem').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASS').AsString   := DM1.cdsLetras.fieldbyname('CCAASS').AsString;
      DetCxCUsuario;  // Graba Usuario, Fecha y Hora
   end;
end;

procedure TFLetras1.DetCxCUsuario;
begin
   DM1.cdsDetCxC.FieldByName('CCUser').AsString  := DM1.wUsuario;
   DM1.cdsDetCxC.FieldByName('CCFReg').Value  := Date;
   DM1.cdsDetCxC.FieldByName('CCHReg').Value  := time;
end;

procedure TFLetras1.DetCxC2Usuario;
begin
   DM1.cdsDetCxC2.fieldbyname('CCUser').AsString  := DM1.wUsuario;
   DM1.cdsDetCxC2.fieldbyname('CCFReg').Value  := Date;
   DM1.cdsDetCxC2.fieldbyname('CCHReg').Value  := time;
end;

Function TFLetras1.VerificaTotal:Boolean;
Var
   xTPagLoc, xTPagExt, xTLetOri, xTLetLoc, xTLetExt, xDifLoc, xDifExt : Double;
   xRegAct : TBookMark;
   xSigno:string;
begin
   Result := False;
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsTDoc.Filtered:=False;
   xRegAct  := DM1.cdsCanjes.GetBookmark;
   xTPagLoc := 0; xTPagExt := 0;
   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.Eof do Begin
      DM1.cdsCanjes.Edit;
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.fieldbyname('CiaID').AsString    := DM1.cdsCanjes.fieldbyname('CiaID').AsString;
      DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString  := DM1.cdsCanjes.fieldbyname('TDiarID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString := DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString  := DM1.cdsCanjes.fieldbyname('CCNoReg').AsString;
      if DM1.cdsMovCxC2.GotoKey then begin
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
            If FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').Asfloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').Asfloat,15,2)
               > FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').Asfloat,15,2) then begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            end;
            end
         else begin
            If FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').Asfloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').Asfloat,15,2)
               > FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').Asfloat,15,2) Then begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         end;
      end;
      if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
        DM1.cdsTDoc.IndexFieldNames:='DOCID';
      DM1.cdsTDoc.Setkey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsCanjes.fieldbyname('DOCID').AsString;
      xSigno:='+';
      if DM1.cdsTDoc.Gotokey then
      begin
        if DM1.cdsTDoc.FieldByName('DOCRESTA').AsString='S' then
          xSigno:='-';
      end;
      if xSigno='+' then
      begin
        xTPagLoc := xTPagLoc + FRound(DM1.cdsCanjes.fieldbyname('CCMtoLoc').Asfloat,15,2);
        xTPagExt := xTPagExt + FRound(DM1.cdsCanjes.fieldbyname('CCMtoExt').Asfloat,15,2);
      end
      else
      begin
        xTPagLoc := xTPagLoc - FRound(DM1.cdsCanjes.fieldbyname('CCMtoLoc').Asfloat,15,2);
        xTPagExt := xTPagExt - FRound(DM1.cdsCanjes.fieldbyname('CCMtoExt').Asfloat,15,2);
      end;

      DM1.cdsCanjes.Next;
   end;
   DM1.cdsTDoc.Filtered:=False;
   DM1.cdsCanjes.GotoBookmark(xRegAct);
   DM1.cdsCanjes.FreeBookmark(xRegAct);
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2.EnableControls;

   // Totales de Letras por Pagar
   DM1.cdsLetras.DisableControls;
   xRegAct  := DM1.cdsLetras.GetBookmark;
   xTLetOri := 0; xTLetLoc := 0; xTLetExt := 0;
   DM1.cdsLetras.First ;
   While not DM1.cdsLetras.Eof do Begin
      xTLetOri := xTLetOri + FRound(DM1.cdsLetras.fieldbyname('CCMtoOri').Asfloat,15,2);
      xTLetLoc := xTLetLoc + FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').Asfloat,15,2);
      xTLetExt := xTLetExt + FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').Asfloat,15,2);
      DM1.cdsLetras.Next;
   end;

   If DM1.cdsLetras.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
      If FRound(xTLetLoc,15,2)=FRound(xTPagLoc,15,2) then
         Result := True;
      end
   Else begin
      If DM1.cdsLetras.fieldbyname('TMonID').AsString=DM1.wTMonExt then begin
         If FRound(xTLetExt,15,2)=FRound(xTPagExt,15,2) then
            Result := True
      end;
   end;

   xDifLoc:=0; xDifExt:=0;

   If Result then begin
      If xTLetLoc<>xTPagLoc then begin
         xDifLoc := FRound( xTPagLoc-xTLetLoc, 5, 2);
      end;
      If xTLetExt<>xTPagExt then begin
         xDifExt := FRound( xTPagExt-xTLetExt, 5, 2);
      end;
   end;

   DM1.cdsLetras.Last;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').Asfloat + xDifLoc,15,2);
   DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').Asfloat + xDifExt,15,2);
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
end;



procedure TFLetras1.bbtnCalcClick(Sender: TObject);
begin

WinExec('C:\windows\calc.exe',1 );  // Executa Aplicación

end;

procedure TFLetras1.dblcdCnpEgrExit(Sender: TObject);
begin
   If xCrea then Exit;

   DM1.cdsCCanje.fieldbyname('CuentaID').AsString := DM1.cdsCptoCab.fieldbyname('CuentaID').AsString;
   if length(dbeGlosa.Text)=0 then
      DM1.cdsCCanje.fieldbyname('CJGlosa').AsString := DM1.cdsCptoCab.fieldbyname('CptoDes').AsString;
end;

procedure TFLetras1.dblcTMonExit(Sender: TObject);
Var
   xWhere : String;
begin
   If xCrea then Exit;



   xWhere := 'TMonId='+''''+dblcTMon.Text+''''
           + ' and (TMon_Loc='+''''+'L'+''''+' or TMon_Loc='+''''+'E'+''''+')';

   edtTMon.Text:=BuscaQry('dspTGE','TGE103','TMONDES,TMon_Loc',xWhere,'TMONDES');

   if length(edtTMon.Text)=0 then
   begin
      ShowMessage('Falta Tipo de Moneda');
      dblcTMon.SetFocus;
      exit;
   end;

   dm1.cdscptoCab.Close ;
   dm1.cdscptoCab.DataRequest('SELECT * FROM CXC208 WHERE OPCMENU=''P'' AND DOCID='+QuotedStr(dblcTDoc.text)+
                              ' AND TMONID='+QuotedStr(dblcTMon.text)+' AND TVTAID='+QuotedStr(xSector)+
                              ' AND CIAID='+QuotedStr(dblcCia.text));
   dm1.cdscptoCab.Open ;

   if dm1.cdscptoCab.RecordCount=1 then
   begin
     DM1.cdscptoCab.First;
     dblcdCnpEgr.text:=DM1.cdscptoCab.FieldByName('CPTOCAB').AsString;
   end;

   if Length(dbeTCLet.Text)>0 then
   begin
      DM1.cdsLetras.First;
      If (DM1.cdsLetras.fieldbyname('TMonID').AsString<>dblcTMon.Text) then begin
         While not DM1.cdsLetras.eof do begin
            DM1.cdsLetras.Edit;
            DM1.cdsLetras.fieldbyname('TMonID').AsString   := dblcTMon.Text;
            If DM1.cdsLetras.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
               DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
               DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
               DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
               DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
               DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
               end
            Else begin
               DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
               DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
               DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
               DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
               DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
            end;
            DM1.cdsLetras.Next;
         end;
         DM1.cdsLetras.First;
      end;
   end;

end;

procedure TFLetras1.bbtnCancelaClick(Sender: TObject);
begin

   DM1.cdsCanjes.CancelUpdates;
   DM1.cdsLetras.CancelUpdates;

   EstadoDeForma(0,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString );
end;

procedure TFLetras1.dtpFCompExit(Sender: TObject);
Var
   xWhere : String;
   xFCierre : TDate;
begin
   If xCrea then Exit;

   xWhere := 'CiaId='+''''+dblcCia.Text+'''';
   xFCierre := DM1.BuscaUltFecha('dspTGE','CXP202','FCierre',xWhere);

   if dtpFComp.Date<=xFCierre then begin
      ShowMessage(' Error :  Última Fecha de Cierre '+DateToStr(xFCierre) );
      dtpFComp.SetFocus;
      exit;
   end;

end;

procedure TFLetras1.dtpFEmisExit(Sender: TObject);
var
   xWhere  : String;
   xFCierre: TDate;
begin
   If xCrea then Exit;
   if dtpFEmis.date <= Date Then
    begin
     xWhere := 'CiaId='+''''+dblcCia.Text+'''';
     xFCierre := DM1.BuscaUltFecha('dspTGE','CXC202','FCierre',xWhere);


     if dtpFEmis.Date<=xFCierre then begin
        ShowMessage(' Error :  Última Fecha de Cierre '+DateToStr(xFCierre) );
        dtpFEmis.SetFocus;
        exit;
     end; 

     // Tipo de Cambio
     xWhere:='TMonId='''+DM1.wTMonExt+''' and '
            +'Fecha='+DM1.wRepFuncDate+''''+ FORMATDATETIME(DM1.wFormatFecha ,dtpFEmis.Date)+''' )';
     xxTCambio:=0;
     if length(BuscaQry('dspTGE','TGE107','*',xWhere,'TMonId'))>0 then
        xxTCambio:=DM1.cdsQry.fieldbyname('TCam'+DM1.wVRN_TipoCambio).Value
     else begin
        dtpFEmis.SetFocus;
        Raise Exception.Create( ' Error :  Fecha No tiene Tipo de Cambio ' );
     end;
     DM1.cdsCCanje.Edit;
     DM1.cdsCCanje.fieldbyname('CJFComp').Value  := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
     DM1.cdsCCanje.fieldbyname('CJTCambio').Value:= FRound(xxTCambio,7,3);
    end
   else
    begin
      dtpFEmis.setfocus;
      Raise Exception.Create('Error :  Fecha de Canje'+chr(13)
                            +'no puede ser mayor que la Fecha del Sistema');
    end;
end;


procedure TFLetras1.ActualizaPagadoMovCxP;
var xIndexAnt:string;
begin
   xIndexAnt:=DM1.cdsMovCxC2.IndexFieldNames;

   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC';
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsMovCxC2Clone.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC';
   DM1.cdsMovCxC2Clone.Filtered:=False;
   DM1.cdsCanjes.DisableControls;

   DM1.cdsCanjes.First;
   While not DM1.cdsCanjes.Eof do
   Begin
      DM1.cdsMovCxC2.Setkey;
{      DM1.cdsMovCxC2.fieldbyname('CiaID').AsString    := DM1.cdsCanjes.fieldbyname('CiaID').AsString;
      DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString  := DM1.cdsCanjes.fieldbyname('TDiarID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString := DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString  := DM1.cdsCanjes.fieldbyname('CCNoReg').AsString;}
      DM1.cdsMovCxC2.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
      DM1.cdsMovCxC2.fieldbyname('DOCID').AsString  := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCSERIE').AsString := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNODOC').AsString := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;

      if DM1.cdsMovCxC2.GotoKey then
      begin
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
         begin
            DM1.cdsMovCxC2.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
            If DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat<=0 then
               DM1.cdsMovCxC2.fieldbyname('CCEstado').Asstring:='C';
         end
         else
         begin
            DM1.cdsMovCxC2.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
            If DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat<=0 then
               DM1.cdsMovCxC2.fieldbyname('CCEstado').Value:='C';
         end;
         DM1.cdsMovCxC2.fieldbyname('CCSALORI').AsFloat:=DM1.cdsMovCxC2.fieldbyname('CCMTOORI').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPAGORI').AsFloat;

         DM1.cdsMovCxC2.fieldbyname('CCTCamPa').AsFloat:=FRound(DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
         DM1.cdsMovCxC2.fieldbyname('FLAGVAR').AsString:='.';
         DM1.cdsPost( DM1.cdsMovCxC2 );
         DM1.cdsMovCxC2.Post;

         DM1.cdsMovCxC2Clone.Setkey;
         DM1.cdsMovCxC2Clone.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('DOCID').AsString  := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('CCSERIE').AsString := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('CCNODOC').AsString := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;

         if DM1.cdsMovCxC2Clone.GotoKey then
         begin
            DM1.cdsMovCxC2Clone.edit;
            If DM1.cdsMovCxC2Clone.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
            begin
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
              If DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat<=0 then
                DM1.cdsMovCxC2Clone.fieldbyname('CCEstado').Asstring:='C';
            end
            else
            begin
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
              If DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat<=0 then
                DM1.cdsMovCxC2Clone.fieldbyname('CCEstado').Value:='C';
            end;
            DM1.cdsMovCxC2Clone.fieldbyname('CCSALORI').AsFloat:=DM1.cdsMovCxC2Clone.fieldbyname('CCMTOORI').AsFloat-DM1.cdsMovCxC2Clone.fieldbyname('CCPAGORI').AsFloat;

            DM1.cdsMovCxC2Clone.fieldbyname('CCTCamPa').AsFloat:=FRound(DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
            DM1.cdsMovCxC2Clone.fieldbyname('FLAGVAR').AsString:='.';
            DM1.cdsPost( DM1.cdsMovCxC2Clone );
            DM1.cdsMovCxC2Clone.Post;
          end;
      end;
      DM1.cdsCanjes.Next;
   end;
   DM1.cdsMovCxC2Clone.Filtered:=True;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+dblcCia.Text  +''''+' and '
                         + 'CLIEID='    +''''+dblcdClie.Text+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );
   DM1.AplicaDatos( DM1.cdsMovCxC2Clone,'MovCxC2' );
   DM1.cdsMovCxC2.IndexFieldNames:=xIndexAnt;
   DM1.cdsMovCxC2Clone.IndexFieldNames:=xIndexAnt;
   DM1.cdsMovCxC2.First;
   DM1.cdsMovCxC2.EnableControls;
   DM1.cdsCanjes.EnableControls;
end;

procedure TFLetras1.dbgLetrasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   dbgLetras.BeginDrag(False);
end;

procedure TFLetras1.dbeTCLetExit(Sender: TObject);
begin
   If xCrea then Exit;

   if length(dbeTCLet.Text)=0 then
   begin
      ShowMessage('Falta Tipo de Cambio');
      dbeTCLet.SetFocus;
      exit;
   end;

   dbeTCLet.Text:=floattostr(strtofloat(dbeTCLet.Text));
   if strtofloat(dbeTCLet.Text)<0 then
   begin
      ShowMessage('Tipo de Cambio debe ser Mayor a 0');
      dbeTCLet.Text:='';
      dbeTCLet.SetFocus;
      exit;
   end;
   DM1.cdsLetras.First;
   If FRound(DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,8,3)<>FRound(strtofloat(dbeTCLet.Text),8,3) then
   begin
      While not DM1.cdsLetras.eof do
      begin
         DM1.cdsLetras.Edit;
         DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat := FRound(strtofloat(dbeTCLet.Text),8,3);
         If DM1.cdsLetras.fieldbyname('TMonID').Value=DM1.wTMonLoc then begin
            DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
            DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
            DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
            DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
            DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
            end
         Else begin
            DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
            DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
            DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
            DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
            DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
         end;
         DM1.cdsLetras.Next;
      end;
      DM1.cdsLetras.First;
   end;
end;

procedure TFLetras1.bbtnBorraClick(Sender: TObject);
begin
   If DM1.wModo='A' then  begin
      if xFlagGr then begin
         DM1.cdsLetras.CancelUpdates;
         DM1.cdsDetCxC.CancelUpdates;
         DM1.cdsCanjes.CancelUpdates;
         DM1.cdsDetCanje.CancelUpdates;

         DM1.cdsCCanje.Delete;
         DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
         DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

         DM1.cdsLetras.First;
         while not DM1.cdsLetras.Eof do begin
            DM1.cdsLetras.Delete;
         end;
         DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

         InicializaClientDataSet;
         InicializaPies;
         InicializaDatos;
         EstadoDeForma( 0, ' ', ' ' );
         end
      else begin
         if Length(DM1.cdsCCanje.fieldbyname('CJEstado').AsString)=0 then begin
            DM1.cdsCCanje.CancelUpdates;
            InicializaClientDataSet;
            InicializaPies;
            InicializaDatos;
            end
         else begin
            DM1.cdsCCanje.CancelUpdates;
         end;
         EstadoDeForma(0,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,' ' );
      end;
      end
   else begin
      DM1.cdsCCanje.CancelUpdates;
      EstadoDeForma(0,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,' ' );
   end;
end;

procedure TFLetras1.bbtnRegresaClick(Sender: TObject);
begin
   EstadoDeForma(0,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString );
end;

procedure TFLetras1.Z2bbtnNuevoClick(Sender: TObject);
begin
   if MessageDlg('Ingresar Nuevo Canje'+chr(13)+chr(13)+
                 '   ¿ Esta Seguro ?  ',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
   begin

      DM1.cdsLetras.CancelUpdates;
      DM1.cdsDetCxC.CancelUpdates;
      DM1.cdsCanjes.CancelUpdates;
      DM1.cdsDetCanje.CancelUpdates;
      DM1.cdsCCanje.CancelUpdates;

      If ( DM1.wModo='A' ) and ( xFlagGr ) then begin
         DM1.cdsCCanje.Delete;
         DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
         DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

         DM1.cdsLetras.First;
         while not DM1.cdsLetras.Eof do begin
            DM1.cdsLetras.Delete;
         end;
         DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );
      end;
      InicializaClientDataSet;
      InicializaPies;
      InicializaDatos;
      pc1.ActivePage := ts1;
      EstadoDeForma( 0, ' ', ' ' );
   end;
end;

procedure TFLetras1.Z2bbtnAnulaClick(Sender: TObject);
var
   xRegAct : TBookMark;
   sSIT, xWhere : string;
begin
   if not VerificaDocumentosPendientes then
      raise exception.Create(' Error :  Letras ya han sido Amortizadas ');

   if MessageDlg('Anular Documento'+chr(13)+'  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0)=mrNo then exit;

   xWhere:= 'SITUAFLAG=''4''';
   sSIT  := BuscaQry('dspTGE','CXC104','SITUAID',xWhere,'SITUAID');

   // Anula todas Las letras del canje
   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;
   DM1.cdsLetras.First;
   while not DM1.cdsLetras.Eof do
   begin
      SetHyst(dblcCia.Text, dblcTDoc.Text, DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.fieldbyname('SitID').AsString := sSIT;
      DM1.cdsLetras.fieldbyname('CCFSitua').Value := Date;
      DM1.cdsLetras.fieldbyname('CCUser').Value   := DM1.wUsuario;
      DM1.cdsLetras.fieldbyname('CCFReg').Value   := date;
      DM1.cdsLetras.fieldbyname('CCHReg').Value   := Time;
      DM1.cdsLetras.fieldbyname('CCEstado').Value:='A';
      DM1.cdsLetras.fieldbyname('USERANUL').AsString:=DM1.wUsuario;
      DM1.cdsLetras.fieldbyname('FECANUL').AsDateTime   := date;
      DM1.cdsLetras.fieldbyname('HORANUL').AsDateTime   := Time;
      DM1.cdsLetras.Next;
   end;
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
   /////////////
   // Actualiza los Saldos de los Documentos Canjeados
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsMovCxC2Clone.Filtered:=False;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.Eof do
   Begin
      DM1.cdsCanjes.Edit;
      if ExisteMovCxC( DM1.cdsCanjes.fieldbyname('CiaId').AsString,DM1.cdsCanjes.fieldbyname('TDiarID').AsString,
                       DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString,DM1.cdsCanjes.fieldbyname('CCNoReg').AsString) then
      begin
         DM1.cdsMovCxC2.Edit;
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
         begin
            DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);
{            If DM1.cdsMovCxC2.fieldbyname('CCTCamPa').AsFloat>0 then
               DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat/DM1.cdsMovCxC2.fieldbyname('CCTCamPa').AsFloat,15,2)
            else
               DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat/DM1.cdsMovCxC2.fieldbyname('CCTCamPr').AsFloat,15,2)
}        end
         else
         begin
            DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2);
{            If DM1.cdsMovCxC2.fieldbyname('CCTCamPa').AsFloat>0 then
               DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat*DM1.cdsMovCxC2.fieldbyname('CCTCamPa').AsFloat,15,2)
            else
               DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat*DM1.cdsMovCxC2.fieldbyname('CCTCamPr').AsFloat,15,2);
}         end;
         DM1.cdsMovCxC2Clone.Setkey;
         DM1.cdsMovCxC2Clone.FieldByName('CIAID').AsString   := DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('TDIARID').AsString := DM1.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString:= DM1.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString := DM1.cdsMovCxC2.FieldByName('CCNOREG').AsString;
         if DM1.cdsMovCxC2Clone.Gotokey then
         begin
            DM1.cdsMovCxC2Clone.Edit;
            DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat:= DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat;
            DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat:= DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat;
            DM1.cdsMovCxC2Clone.fieldbyname('FLAGVAR').AsString:= '.';
            DM1.cdsMovCxC2Clone.Post;
         end;
      end;
      DM1.cdsCanjes.Next;
   end;
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2Clone.Filtered:=True;
   DM1.cdsMovCxC2.EnableControls;
   /////////////
   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.fieldbyname('CJEstado').AsString:='A';
   DM1.cdsCCanje.Post;
   DM1.cdsCCanje.DataRequest( ' Select * from CXC307 WHERE '
                            + ' CIAID='+QuotedStr(dblcCia.Text)
                            + ' AND TCANJEID='+QuotedStr('LC')
                            + ' AND CANJE='+QuotedStr(edtCanje.Text));
   DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );
   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );
   DM1.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+dblcCia.Text  +''''+' and '
                         + 'CLIEID='    +''''+dblcdClie.Text+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );
   DM1.AplicaDatos( DM1.cdsMovCxC2Clone,'MovCxC2' );

   EstadoDeForma(1,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString );

   ShowMessage(' Canje de Letras Anulado ');
end;

Function TFLetras1.VerificaDocumentosPendientes:Boolean;
begin
   DM1.cdsLetras.First;
   while not DM1.cdsLetras.Eof do
   begin
      If DM1.cdsLetras.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
      begin
         If FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsLetras.fieldbyname('CCPagLoc').AsFloat,15,2)<>
            FRound(DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat,15,2) then
         begin
            Result := False;
            Exit;
         end;
      end
      else
      begin
         If FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat-DM1.cdsLetras.fieldbyname('CCPagExt').AsFloat,15,2)<>
            FRound(DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat,15,2) then
         begin
            Result := False;
            Exit;
         end;
      end;
      DM1.cdsLetras.Next;
   end;
   Result := True;
end;

procedure TFLetras1.Z2bbtnAceptaClick(Sender: TObject);
var
   xRegAct : TBookMark;
   xTotMN, xTotME : Double;
   sUBI,xWhere, sSIT, xSitAnt,xSitNext, xNoDoc : string;
   sUBIANT,sSITANT:string;
   sImp:string;
begin
   if DM1.cdsCanjes.RecordCount=0 then
      Raise exception.Create(' Error :  Falta registrar Documentos a Canjear');
   if DM1.cdsLetras.RecordCount=0 then
      Raise Exception.Create(' Error :  Falta registrar Letras');
   if not VerificaTotal then
      Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');

   xWhere:= 'UBICAFLAG=''O''';

   sUBI  := BuscaQry('dspTGE','CXC105','UBICAID',xWhere,'UBICAID');

   xWhere:= 'SITUAFLAG=''3''';
   sSIT  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

   xWhere:= 'SITUAFLAG=''5''';
   xSitNext  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

   xWhere:= 'SITUAFLAG=''1''';
   sImp  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

   // VALIDA CADA UNA DE LAS LETRAS PARA VERIFICAR CAMBIO DE SITUACION
   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;

   DM1.cdsLetras.First;

   While not DM1.cdsLetras.eof do
   begin
      xSitAnt:=DM1.cdsLetras.Fields.FieldByName('SITID').AsString;
      if not CambioSituacion( xSitAnt, sSIT ) then
      begin
         xNoDoc:=DM1.cdsLetras.Fields.FieldByName('CCNODOC').AsString;
         DM1.cdsLetras.GotoBookmark(xRegAct);
         DM1.cdsLetras.FreeBookmark(xRegAct);
         DM1.cdsLetras.EnableControls;
         if xSitAnt=sImp then
           Raise Exception.Create('Letra '+xNoDoc+', No está impresa ')
         else
           Raise Exception.Create('Letra '+xNoDoc+', No Se Puede Cambiar de Situación ') ;
      end;
      DM1.cdsLetras.Next;
   end;

   if MessageDlg('Aceptar Letras'+chr(13)+'  ¿Esta Seguro?  ',mtConfirmation, [mbYes, mbNo], 0)=mrNo then
   begin
      DM1.cdsLetras.GotoBookmark(xRegAct);
      DM1.cdsLetras.FreeBookmark(xRegAct);
      DM1.cdsLetras.EnableControls;
      exit;
   end;

   xTotMN := 0;
   xTotME := 0;

   DM1.cdsLetras.First;
   While not DM1.cdsLetras.eof do
   begin
      SetHyst(dblcCia.Text, dblcTDoc.Text, DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.fieldbyname('SITID').AsString      := sSIT;
      DM1.cdsLetras.fieldbyname('UBIID').AsString      := sUBI;
      DM1.cdsLetras.fieldbyname('CCFSITUA').AsDatetime := Date;
      DM1.cdsLetras.fieldbyname('CCESTADO').Value    := 'P';
      DM1.cdsLetras.fieldbyname('CCUSER').Value      := DM1.wUsuario;
      DM1.cdsLetras.fieldbyname('CCFREG').AsDatetime := date;
      DM1.cdsLetras.fieldbyname('CCHREG').Value      := Time;
      xTotMN := xTotMN + DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat;
      xTotME := xTotME + DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
      DM1.cdsLetras.Post;
      DM1.cdsLetras.Next;
   end;
   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

   //DE LA SITUACION '03' (ACEPTADO) SE PASA AUTOMATICAMENTE A LA SITUACION 10 (CARTERA)
   DM1.cdsLetras.First;
   While not DM1.cdsLetras.eof do
   begin
      SetHyst(dblcCia.Text,dblcTDoc.Text, DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
      UpdLET (dblcCia.Text,
              DM1.cdsLetras.fieldbyname('DOCID').AsString,
              DM1.cdsLetras.fieldbyname('CCNoDoc').AsString,
              DM1.cdsLetras.fieldbyname('UBIID').AsString,
              xSitNext,
              '', '', '','', Date,False);
      //
      UpdCont(dblcCia.Text, dblcTDoc.Text,
              DM1.cdsLetras.fieldbyname('CCNoDoc').AsString,
              DM1.cdsLetras.fieldbyname('UBIID').AsString,
              xSitNext,
              DM1.cdsLetras.fieldbyname('TMONID').AsString,
              DM1.cdsLetras.fieldbyname('TVTAID').AsString,
              DM1.cdsLetras.fieldbyname('CCFEMIS').AsDateTime );

      DM1.cdsLetras.Next;
   end;
//   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );


   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.fieldbyname('CJEstado').AsString:='P';
   DM1.cdsCCanje.Post;
   DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
   DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

   ActualizaPagadoMovCxP;

   GrabaDetCanje1;

   Filtracds( DM1.cdsMovCxC,  'Select * from CXC301 Where '
                +'CIAID='  +''''+dblcCia.Text                  +''''+' and '
                +'DOCID='  +''''+DM1.cdsCCanje.fieldbyname('NDDoc').AsString   +''''+' and '
                +'CCSERIE='+''''+DM1.cdsCCanje.fieldbyname('NDSerie').AsString +''''+' and '
                +'CCNODOC='+''''+DM1.cdsCCanje.fieldbyname('NDNumero').AsString+'''' );

   DM1.cdsMovCxC.Edit;

   if DM1.cdsMovCxC.FieldByName('TMONID').AsString=DM1.wTMonLoc then
   begin
     DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat;
   end
   else
   begin
     DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoEXT').AsFloat;
   end;


   DM1.cdsMovCxC.FieldByName('CCPagLoc').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat;
   DM1.cdsMovCxC.FieldByName('CCPagExt').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoExt').AsFloat;
   DM1.cdsMovCxC.FieldByName('CCSalLoc').AsFloat:= 0;
   DM1.cdsMovCxC.FieldByName('CCSalExt').AsFloat:= 0;
//CLG : 04/02/2002
   DM1.cdsMovCxC.FieldByName('CCSALORI').AsFloat:= 0;

   DM1.cdsMovCxC.FieldByName('CCESTADO').AsString:= 'C';
   DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

   DM1.SaldosAuxiliarCLG( DM1.cdsLetras.fieldbyname('CiaId').AsString,DM1.cdsLetras.fieldbyname('CCAnoMes').AsString,
                       DM1.cdsLetras.fieldbyname('ClAuxId').AsString,DM1.cdsLetras.fieldbyname('ClieId').AsString,
                       '-', xTotMN, xTotME, DM1.cdsCCanje.fieldbyname('TMonid').AsString );

   EstadoDeForma(1,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString );

   ShowMessage(' Canje de Letras Aceptado ');
   DM1.cdsQry.Close;
end;

procedure TFLetras1.tnbDetalleChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
{
   If tnbDetalle.ActivePage='  Documentos de Canje  ' then begin
      If DM1.cdsCanje.RecordCount=0 then begin
         tnbDetalle.ActivePage := '  Documentos de Canje  ';
         tnbDetalle.PageIndex  := 0;
         Raise Exception.Create(' No se han registrado Documentos ');
      end;

   end;

   bbtnSumatClick(Sender);
}
end;

procedure TFLetras1.dblcCiaExit(Sender: TObject);
var
   xWhere : String;
begin
   If xCrea then Exit;

   edtCia.Text:=DisplayDescrip('TGE101','CIADES','CiaID',dblcCia.Text);

   if length(edtCia.Text)=0 then
   begin
      ShowMessage('Compañía no existe');
      dblcCia.Text:='';
      dblcCia.SetFocus;
   end;
   if length(edtCia.Text)>0 then begin
      //determina último número de registro incrementado en 1
      xWhere := 'CIAID='+''''+dblcCia.Text+''''+' and TCANJEID='+''''+'LC'+'''';
      edtCanje.Text:=DM1.BuscaUltTGE('dspTGE','CXC307','Canje',xWhere);
   end;
end;

procedure TFLetras1.dblcdClieRucExit(Sender: TObject);
begin
   if xCrea then Exit;

   if bbtnBorra.Focused then Exit;

   if length(dblcdClieRuc.Text)>0 then
   begin
      edtClie.Text:=DisplayDescrip('TGE204','CLIEDES','CLIERUC',dblcdClieRuc.Text);
      if length(edtClie.Text)=0 then begin
          ShowMessage('Cliente no existe');
          dblcdClie.Text:='';
          dblcdClieRuc.Text:='';
          dblcdClie.SetFocus;
          exit;
      end;
      dblcClAux.Text :=DM1.cdsQry2.FieldByName('ClAuxId').Asstring;
      xSector:=DM1.cdsQry2.FieldByname('TVTAID').AsString;
      xZona:=DM1.cdsQry2.FieldByname('ZONVTAID').AsString;

      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.FieldByname('CLIEID').AsString:=DM1.cdsQry2.FieldByName('ClieID').AsString;
      DM1.cdsCCanje.fieldbyname('CJEstado').AsString:='T';
      DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
      DM1.cdsPost( DM1.cdsCCanje );
      DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );
      EstadoDeForma( 0, DM1.cdsCCanje.fieldbyname('CJEstado').AsString, ' ' );
      end
   else begin
      edtClie.Text:='';
      dblcdClie.SetFocus;
   end;
end;

procedure TFLetras1.dblcTDocExit(Sender: TObject);
var
   xFiltro, xWhere : string;
begin
   If xCrea then Exit;

   xWhere := 'DocId='+''''+dblcTDoc.Text+''''
           + ' and DOC_FREG='+''''+FPrincipal.xTipoProv+'''';
   edtTDoc.Text:=BuscaQry('dspTGE','TGE110','*',xWhere,'DocDes');
   if length(edtTDoc.Text)=0 then begin
      ShowMessage('Falta Código de Documento');
      dblcTDoc.SetFocus;
      Exit;
   end;

   if length(edtTDoc.Text)>0 then begin
      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.fieldbyname('TDiarID').AsString := DM1.cdsQry.FieldByName('TDiarID').AsString;
      edtTDiario.Text:=DisplayDescrip('TGE104','TDIARDES','TDIARID',dblcTDiario.Text);
   // Filtra Tipo de Diario específico
//      xFiltro:='TDiarID='+DM1.cdsTDoc.fieldbyname('TDIARID').AsString;
      xFiltro:='TDiarID='+QuotedStr(DM1.cdsQry.FieldByName('TDIARID').AsString);
      if length(DM1.cdsQry.FieldByName('TDIARID2').AsString)>0 then begin
         xFiltro:=xFiltro+'or TDiarID='+''''+DM1.cdsQry.FieldByName('TDIARID2').AsString+'''';
      end;
      DM1.cdsTDiario.Filter  := '';
      DM1.cdsTDiario.Filter  := xFiltro;
      DM1.cdsTDiario.Filtered:= true;
      if DM1.cdsTDiario.Recordcount=1 then begin
         //if dblcTDiario.Enabled then perform(CM_DialogKey,VK_TAB,0);
         dblcTDiario.Enabled:=false;
         end
      else begin
         dblcTDiario.Enabled:=true;
      end;
   end;
end;

procedure TFLetras1.dblcTDiarioExit(Sender: TObject);
begin
   edtTDiario.Text:=DisplayDescrip('TGE104','TDIARDES','TDIARID',dblcTDiario.Text);

   if length(edtTDiario.Text)=0 then
   begin
      ShowMessage('Falta Tipo de Diario');
      dblcTDiario.SetFocus;
   end;
end;

procedure TFLetras1.btnActRegClick(Sender: TObject);
begin
   pnlRegistro.Visible := True;
   pnlRegistro.SetFocus;
   InsertaLetra;
   xModoL := 'A';
end;

procedure TFLetras1.InsertaLetra;
var
   xxWhere : String;
   xxNoReg : String;
begin
   xTAutoNum:= DisplayDescrip('TGE104','AutoNum','TDiarID',dblcTDiario.Text);
   xxNoReg  := DM1.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes );
   xxNoReg  := Strzero( xxNoReg, DM1.cdsLetras.fieldbyname('CCNoReg').Size );

   DM1.cdsLetras.Insert;
   DM1.cdsLetras.fieldbyname('CiaID').AsString   := DM1.cdsCCanje.fieldbyname('CiaID').AsString;
   DM1.cdsLetras.fieldbyname('TCanjeID').AsString:= 'LC';
   DM1.cdsLetras.fieldbyname('CCCanje').AsString := edtCanje.Text;
   DM1.cdsLetras.fieldbyname('DocID').AsString   := DM1.cdsCCanje.fieldbyname('DocID').AsString;
   xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
            + 'DOCID='  +''''+dblcTDoc.Text+'''';
   DM1.cdsLetras.fieldbyname('CCNoDoc').AsString := DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
   DM1.cdsLetras.fieldbyname('CCNoReg').AsString := xxNoReg;
   DM1.cdsLetras.fieldbyname('CCAnoMes').AsString:= DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
   DM1.cdsLetras.fieldbyname('TDiarID').AsString := DM1.cdsCCanje.fieldbyname('TDiarID').AsString;
   DM1.cdsLetras.fieldbyname('ClAuxID').AsString := DM1.cdsCCanje.fieldbyname('ClAuxId').AsString;
   DM1.cdsLetras.fieldbyname('ClieId').Value     := DM1.cdsCCanje.fieldbyname('ClieID').AsString;
   DM1.cdsLetras.fieldbyname('TVTAID').AsString  := DisplayDescrip('FAC106','TVTAID','ZVTAID',
   (DisplayDescrip('TGE204','ZONVTAID','CLIEID',DM1.cdsCCanje.fieldbyname('ClieID').AsString)));
   DM1.cdsLetras.fieldbyname('ZVTAID').AsString  := DisplayDescrip('TGE204','ZONVTAID','CLIEID',DM1.cdsCCanje.fieldbyname('ClieID').AsString);
   DM1.cdsLetras.fieldbyname('FLAGVAR').AsString  := '.';  // NO PONER CLEAR     CLG
   DM1.cdsLetras.fieldbyname('ClieRuc').Value    := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
   DM1.cdsLetras.fieldbyname('CCSerie').Value    := '000';
   dbeLetra.Enabled := True;
   dbeLetra.SetFocus;
end;


procedure TFLetras1.bbtnRegOkClick(Sender: TObject);
var
   xTotal : Double;
   xxTotGas, xxTotInt, xxTotIGV, xxTotal : Double;

begin
   If Length(dbeLetra.Text)=0 then begin
      dbeLetra.SetFocus;
      Raise Exception.Create('Error :  Falta Registrar Número de Letra');
   end;
   If dtpFVcmto.Date=0 then begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Error :  Falta Registrar Fecha de Vencimiento');
   end;
   If dtpFVcmto.Date < dtpFValor.Date then begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('Error :  Fecha de Vencimiento'+chr(13)
                            +'no puede ser menor que Fecha de Giro');
   end;
   xTotal := DM1.cdsLetras.fieldbyname('CCGravad').AsFloat
           + DM1.cdsLetras.fieldbyname('Interes').AsFloat
           + DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat
           + DM1.cdsLetras.fieldbyname('CCIGV').AsFloat;
   If xTotal<=0 then begin
      dbeImp.SetFocus;
      Raise Exception.Create('Error :  Falta Registar Montos');
   end;

   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat := DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat;
   DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat := FRound(xTotal,15,2);
   If DM1.cdsLetras.fieldbyname('TMonID').Value=DM1.wTMonLoc then begin
      DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
      DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
      DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
      DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
      DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
      end
   Else begin
      DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
      DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
      DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
      DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
      DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
   end;

   DM1.cdsLetras.fieldbyname('CC_Conta').AsString:= 'N';
   DM1.cdsLetras.fieldbyname('CCFEmis').Value    := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
   DM1.cdsLetras.fieldbyname('CCFValor').Value   := DM1.cdsCCanje.fieldbyname('CJFValor').Value;
   DM1.cdsLetras.fieldbyname('CCFCanje').Value   := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
   DM1.cdsLetras.fieldbyname('CtaTotal').AsString:= DM1.cdsCCanje.fieldbyname('CuentaID').AsString;
   DM1.cdsLetras.fieldbyname('CCptoTot').AsString:= DM1.cdsCCanje.fieldbyname('CptoID').AsString;
   DM1.cdsLetras.fieldbyname('CCFCmprb').Value   := DM1.cdsDetCxC.FieldByName('CCFComp').Value;
   DM1.cdsLetras.fieldbyname('CCAAAA').AsString  := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
   DM1.cdsLetras.fieldbyname('CCMM').AsString    := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
   DM1.cdsLetras.fieldbyname('CCDD').AsString    := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
   DM1.cdsLetras.fieldbyname('CCTri').AsString   := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
   DM1.cdsLetras.fieldbyname('CCSem').AsString   := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
   DM1.cdsLetras.fieldbyname('CCSS').AsString    := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
   DM1.cdsLetras.fieldbyname('CCAATri').AsString := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
   DM1.cdsLetras.fieldbyname('CCAASem').AsString := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
   DM1.cdsLetras.fieldbyname('CCAASS').AsString  := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
   DM1.cdsLetras.Post;

   xxTotGas := OperClientDataSet( DM1.cdsLetras,'SUM('+'CCGASFIN'+')','');
   xxTotInt := OperClientDataSet( DM1.cdsLetras,'SUM('+'INTERES' +')','');
   xxTotIGV := OperClientDataSet( DM1.cdsLetras,'SUM('+'CCIGV'   +')','');
   xxTotal  := FRound( (xxTotGas + xxTotInt + xxTotIGV) ,15,2);
   DM1.cdsCCanje.Edit;
   if xxTotGas<>0 then
     DM1.cdsCCanje.fieldbyname('CJGasFin').AsFloat := xxTotGas
   else
     DM1.cdsCCanje.fieldbyname('CJGasFin').Clear;
   if xxTotInt<>0 then
     DM1.cdsCCanje.fieldbyname('CJInteres').AsFloat:= xxTotInt
   else
     DM1.cdsCCanje.fieldbyname('CJInteres').Clear;
   if xxTotIGV<>0 then
     DM1.cdsCCanje.fieldbyname('CJIGV').AsFloat    := xxTotIGV
   else
     DM1.cdsCCanje.fieldbyname('CJIGV').Clear;
   if xxTotal<>0 then
     DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat := xxTotal
   else
     DM1.cdsCCanje.fieldbyname('CJTotOri').Clear;

   dbgLetras.setFocus;
   if xModoL='A' then
      InsertaLetra
   else begin
      pnlRegistro.Visible:=False;
   end;
//CLG: 04/02/2002
//   bbtnSumatClick(Sender);
//     bbtnCalculaClick(Sender);
end;

procedure TFLetras1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if FLetras.activecontrol is twwdbgrid then
      Exit ;
   if key=#13 then
   begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFLetras1.bbtnRegCancClick(Sender: TObject);
begin
   if xModoL='A' then begin
      DM1.cdsLetras.Delete;
      DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );
      end
   else begin
      DM1.cdsLetras.Cancel;
   end;
   pnlRegistro.Visible:= False;

   bbtnSumatClick(Sender);
   dbgLetras.setFocus;
end;

procedure TFLetras1.dbgLetrasDblClick(Sender: TObject);
begin
   If btnActReg.Enabled then begin
      xModoL := 'M';
      DM1.cdsLetras.Edit;
      pnlRegistro.Visible:= True;
      dbeLetra.Enabled   := False;
      dtpFVcmto.SetFocus;
   end;
end;

procedure TFLetras1.dbgLetrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If not btnActReg.Enabled then Exit;

   if (key=VK_Delete) and (ssCtrl in Shift) then
   begin
      if MessageDlg('¿Esta Seguro de Eliminar Registro?',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      begin
         DM1.cdsLetras.Delete;
         DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );
      end;
   end;
end;


procedure TFLetras1.bbtnRegresaEnter(Sender: TObject);
begin
//   dbgDocCanjeColExit2(Sender);
end;

procedure TFLetras1.FormCreate(Sender: TObject);
begin
   FPrincipal.PropGrid( [dbgPendientes, dbgDocCanje, dbgLetras] );
end;

procedure TFLetras1.dbgDocCanjeColExit2(Sender: TObject);
begin
  //** 21/02/2001 - pjsv
   ModificaMontos;
//   bbtnSumatClick(Sender);
  //**
end;

procedure TFLetras1.dbgDocCanjeDragOver2(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

procedure TFLetras1.dbgDocCanjeEndDrag2(Sender, Target: TObject; X, Y: Integer);
begin
   If Target=dbgPendientes Then
   Begin
      DM1.xFlagCal := False;
      DM1.cdsMovCxC2.Filtered:=False;
      DM1.cdsMovCxC2Clone.Filtered:=False;
      DM1.cdsMovCxC2.SetKey;
      DM1.cdsMovCxC2.fieldbyname('CiaID').AsString    := DM1.cdsCanjes.fieldbyname('CiaID').AsString;
      DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString  := DM1.cdsCanjes.fieldbyname('TDiarID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString := DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString  := DM1.cdsCanjes.fieldbyname('CCNoReg').AsString;
      if DM1.cdsMovCxC2.GotoKey then
      begin
        DM1.cdsMovCxC2Clone.SetKey;
        DM1.cdsMovCxC2Clone.fieldbyname('CiaID').AsString    := DM1.cdsMovCxC2.fieldbyname('CiaID').AsString;
        DM1.cdsMovCxC2Clone.fieldbyname('TDiarID').AsString  := DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString;
        DM1.cdsMovCxC2Clone.fieldbyname('CCAnoMes').AsString := DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString;
        DM1.cdsMovCxC2Clone.fieldbyname('CCNoReg').AsString  := DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString;


         DM1.cdsMovCxC2Clone.Edit;
         DM1.cdsMovCxC2Clone.fieldbyname('FlagVar').AsString:='.';
         If DM1.cdsMovCxC2Clone.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
            DM1.cdsMovCxC2Clone.fieldbyname('CCSalOri').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2)
         else
         begin
            DM1.cdsMovCxC2Clone.fieldbyname('CCSalOri').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);
         end;
         DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').Value-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2);
         DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').Value-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);


         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.fieldbyname('FlagVar').AsString:='.';
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
            DM1.cdsMovCxC2.fieldbyname('CCSalOri').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2)
         else
         begin
            DM1.cdsMovCxC2.fieldbyname('CCSalOri').Value:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);
         end;
         DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').Value-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2);
         DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').Value-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);

         DM1.cdsCanjesClone.Setkey;
         DM1.cdsCanjesClone.FieldByName('CIAID').AsString:=  DM1.cdsCanjes.FieldByName('CIAID').AsString;
         DM1.cdsCanjesClone.FieldByName('CLIEID').AsString:=  DM1.cdsCanjes.FieldByName('CLIEID').AsString;
         DM1.cdsCanjesClone.FieldByName('DOCID').AsString:=  DM1.cdsCanjes.FieldByName('DOCID').AsString;
         DM1.cdsCanjesClone.FieldByName('CCSERIE').AsString:=  DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
         DM1.cdsCanjesClone.FieldByName('CCNODOC').AsString:=  DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
         if DM1.cdsCanjesClone.Gotokey then
         begin
           DM1.cdsCanjesClone.Delete;
         end;

         DM1.cdsCanjes.Delete;
//         DM1.cdsCanjes.Refresh;
      end;
      DM1.cdsMovCxC2.Filtered:=True;
      DM1.cdsMovCxC2Clone.Filtered:=True;
      bbtnSumatClick(Sender);      
      dbgPendientes.RefreshDisplay;
      DM1.xFlagCal := True;
   end;
end;

procedure TFLetras1.dbgDocCanjeKeyPress2(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
      dbgDocCanjeColExit2(Sender);
    end;
end;

procedure TFLetras1.dbgDocCanjeMouseDown2(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   dbgDocCanje.BeginDrag(False);
end;

procedure TFLetras1.dbgPendientesDragOver2(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:= True;
end;

procedure TFLetras1.dbgPendientesEndDrag2(Sender, Target: TObject; X,
  Y: Integer);
var
   i : Integer;
 //  23/05/2001 CIM
   xCond,xFlag : string;
   xNLet, xNDias       : Integer;
 ///////////////////////
begin
   If Target=dbgDocCanje Then
   Begin
      DM1.cdsMovCxC2.DisableControls;
      // Verifica que Documentos No Esten Pendientes de Actualización
      for i:= 0 to dbgPendientes.SelectedList.Count-1 do
      begin
          dbgPendientes.datasource.dataset.GotoBookmark(dbgPendientes.SelectedList.items[i]);
          If DM1.cdsMovCxC2.fieldbyname('TMONID').Value=DM1.wTMonLoc then
          begin
             If FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2)<>
                FRound(DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat,15,2) then
             begin
                ShowMessage('Error : Documento esta en Proceso de cancelación');
                dbgPendientes.SelectedList.clear;
                DM1.cdsMovCxC2.First;
                DM1.cdsMovCxC2.EnableControls;
                Exit;
             end;
          end
          else
          begin
             If FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2)<>
                FRound(DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat,15,2) then
             begin
                ShowMessage('Error : Documento esta en Proceso de cancelación');
                dbgPendientes.SelectedList.clear;
                DM1.cdsMovCxC2.First;
                DM1.cdsMovCxC2.EnableControls;
                Exit;
             end;
          end;
      end;//FOR

      DM1.cdsCanjes.SetKey;
      DM1.cdsCanjes.fieldbyname('CiaID').AsString   := DM1.cdsMovCxC2.fieldbyname('CiaID').AsString;
      DM1.cdsCanjes.fieldbyname('ClieId').AsString  := DM1.cdsMovCxC2.fieldbyname('ClieId').AsString;
      DM1.cdsCanjes.fieldbyname('DocId').AsString   := DM1.cdsMovCxC2.fieldbyname('DocId').AsString;
      DM1.cdsCanjes.fieldbyname('CCSerie').AsString := DM1.cdsMovCxC2.fieldbyname('CCSerie').AsString;
      DM1.cdsCanjes.fieldbyname('CCNoDoc').AsString := DM1.cdsMovCxC2.fieldbyname('CCNoDoc').AsString;
      if not DM1.cdsCanjes.GotoKey then
      begin      ///**CIM 22/05/2001 Condiciones añadidas para Fact. Venta por ordenes de JCC
         if DM1.cdsMovCxC2.fieldbyname('CCFLAGVTA').AsString = 'S' then
         begin;
         {   xCond := DM1.cdsMovCxC2.fieldbyname('CCOMERID').AsString;
            if (wCondicion = true) then
            begin //Pasan solo Doc. de la misma condicion
               if  PerteneceCondicionPago(xCond) then
               begin
                  ShowMessage('El Documento seleccionado no pertenece'+#13+' a la misma Condicion Pago');
                  DM1.cdsCanjes.EnableControls;
                  exit;
               end;
               xNLet := strtoint(DisplayDescrip('TGE180','DCCOMNLET','CCOMERID',xCond));
               xNDias := DM1.cdsQry2.fieldbyname('DCCOMFDIAS').AsInteger;
               DM1.cdsCCanje.fieldbyname('CJNUMLET').AsInteger := xNLet;
               //CLG:04/04/2002
               //if (xNLet >0) then
               //    dbenLet.Enabled := false;
               DM1.cdsCCanje.fieldbyname('CJDIAS').AsInteger := xNDias;
               //CLG:04/04/2002
               //if xNDias >0 then
               //    dbeDias.Enabled := false;

            end;//if condicion}
         end;  // if flag
      /////////////////////////////////////////////////////////
         DM1.cdsCanjes.Insert;
         DM1.cdsCanjes.fieldbyname('CiaID').AsString    := DM1.cdsMovCxC2.fieldbyname('CiaID').AsString;
         DM1.cdsCanjes.fieldbyname('TDiarID').AsString  := DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString;
         DM1.cdsCanjes.fieldbyname('CCNoReg').AsString  := DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString;
         DM1.cdsCanjes.fieldbyname('CCAAAA').AsString   := DM1.cdsMovCxC2.fieldbyname('CCAAAA').AsString;
         DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString  := DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString;
         DM1.cdsCanjes.fieldbyname('ClieId').AsString   := DM1.cdsMovCxC2.fieldbyname('ClieId').AsString;
         DM1.cdsCanjes.fieldbyname('ClieRuc').AsString  := DM1.cdsMovCxC2.fieldbyname('ClieRuc').AsString;
         DM1.cdsCanjes.fieldbyname('DocID').AsString    := DM1.cdsMovCxC2.fieldbyname('DocID').AsString;
         DM1.cdsCanjes.fieldbyname('DOCABR').AsString    := DM1.cdsMovCxC2.fieldbyname('DOCABR').AsString;
         DM1.cdsCanjes.fieldbyname('CCSerie').AsString  := DM1.cdsMovCxC2.fieldbyname('CCSerie').AsString;
         DM1.cdsCanjes.fieldbyname('CCNoDoc').AsString  := DM1.cdsMovCxC2.fieldbyname('CCNoDoc').AsString;
         DM1.cdsCanjes.fieldbyname('TCanjeID').Value := 'LC';
         DM1.cdsCanjes.fieldbyname('CCCanje').AsString  := edtCanje.Text;
         DM1.cdsCanjes.fieldbyname('CCFCanje').AsDatetime := dtpFComp.Date;
         DM1.cdsCanjes.fieldbyname('TMonID').AsString   := DM1.cdsMovCxC2.fieldbyname('TMonId').AsString;
         DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat:= strtofloat(dbeTCLet.Text);
         DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat:= DM1.cdsMovCxC2.fieldbyname('CCTCamPr').AsFloat;
         //** 21/02/2001 - pjsv - se saca por indicaciones de O.B.
         {If dblcTMon.Text=DM1.wTMonLoc then begin
            DM1.cdsCanjesCCSalOri.Value := FRound(DM1.cdsMovCxC2CCMtoLoc.Value-DM1.cdsMovCxC2CCPagLoc.Value,15,2);
            DM1.cdsCanjesCCSalLoc.Value := DM1.cdsCanjesCCSalOri.Value;
            DM1.cdsCanjesCCSalExt.Value := FRound(DM1.cdsCanjesCCSalOri.Value/DM1.cdsCanjesCCTCamCje.Value,15,2);
            end
         else begin
            DM1.cdsCanjesCCSalOri.Value := FRound(DM1.cdsMovCxC2CCMtoExt.Value-DM1.cdsMovCxC2CCPagExt.Value,15,2);
            DM1.cdsCanjesCCSalExt.Value := DM1.cdsCanjesCCSalOri.Value;
            DM1.cdsCanjesCCSalLoc.Value := FRound(DM1.cdsCanjesCCSalOri.Value*DM1.cdsCanjesCCTCamCje.Value,15,2);
         end;}
          DM1.xFlagCal := False;
{                If BuscaQry('dspTGE','TGE110','DOC_FREG','DOCID='+quotedstr(DM1.cdsMovCxC2.FieldByName('DOCID').AsString),'DOC_FREG') = 'N' then // Nota de CREDITO
                 begin
                  DM1.cdsCanjes.FieldByName('CCMTOORI').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCMtoOri').AsFloat * -1,15,2);
                  DM1.xFlagCal := False;
                  DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCSalLoc').AsFloat * -1,15,2);
                  DM1.xFlagCal := False;
                  DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCSalExt').AsFloat * -1,15,2);
                 end
                else
                 begin
                  DM1.cdsCanjes.FieldByName('CCMtOORI').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCMtoOri').AsFloat,15,2);
                  DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat  :=  FRound(DM1.cdsMovCxC2.FieldByName('CCSalLoc').AsFloat,15,2);
                  DM1.xFlagCal := False;
                  DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCSalExt').AsFloat,15,2);
                  DM1.xFlagCal := False;
                 end;
}
                  DM1.cdsCanjes.FieldByName('CCMtOORI').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCMtoOri').AsFloat,15,2);
                  DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat  :=  FRound(DM1.cdsMovCxC2.FieldByName('CCSalLoc').AsFloat,15,2);
                  DM1.xFlagCal := False;
                  DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat  := FRound(DM1.cdsMovCxC2.FieldByName('CCSalExt').AsFloat,15,2);
                  DM1.xFlagCal := False;

             If DM1.cdsMovCxC2.fieldbyname('TMonId').Value = DM1.wTMonLoc then
              begin
//               DM1.cdsCanjes.fieldbyname('CCMTOORI').AsFloat := DM1.cdsMovCxC2.fieldbyname('CCMTOORI').AsFloat;
               DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat := FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2);
               DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat := FRound(DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat,15,2);
               DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat := FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat,15,2);
              end;
             If DM1.cdsMovCxC2.fieldbyname('TMonId').AsString = DM1.wTMonExt then
              begin
//               DM1.cdsCanjes.fieldbyname('CCMTOORI').AsFloat := DM1.cdsMovCxC2.fieldbyname('CCMTOORI').AsFloat;
               DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat := FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);
               DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat := FRound(DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat,15,2);
               DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat := FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat,15,2);
              end;

         //**
         DM1.xFlagCal := False;
//         DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat := DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat;
         DM1.xFlagCal := False;
//         DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat := DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat;

         DM1.cdsCanjes.fieldbyname('CCEstado').Value := 'P';
         DM1.cdsCanjes.fieldbyname('CCUser').Value   := DM1.wUsuario;
         DM1.cdsCanjes.fieldbyname('CCFReg').Value   := date;
         DM1.cdsCanjes.fieldbyname('CCHReg').Value   := time;
         DM1.cdsCanjes.fieldbyname('CCMM').AsString     := DM1.cdsMovCxC2.fieldbyname('CCMM').AsString;
         DM1.cdsCanjes.fieldbyname('CCDD').AsString     := DM1.cdsMovCxC2.fieldbyname('CCDD').AsString;
         DM1.cdsCanjes.fieldbyname('CCTri').AsString    := DM1.cdsMovCxC2.fieldbyname('CCTri').AsString;
         DM1.cdsCanjes.fieldbyname('CCSem').AsString    := DM1.cdsMovCxC2.fieldbyname('CCSem').AsString;
         DM1.cdsCanjes.fieldbyname('CCSS').AsString     := DM1.cdsMovCxC2.fieldbyname('CCSS').AsString;
         DM1.cdsCanjes.fieldbyname('CCAATri').AsString  := DM1.cdsMovCxC2.fieldbyname('CCAATri').AsString;
         DM1.cdsCanjes.fieldbyname('CCAASem').AsString  := DM1.cdsMovCxC2.fieldbyname('CCAASem').AsString;
         DM1.cdsCanjes.fieldbyname('CCAASS').AsString   := DM1.cdsMovCxC2.fieldbyname('CCAASS').AsString;
         DM1.cdsCanjes.fieldbyname('CptoTot').AsString  := DM1.cdsMovCxC2.fieldbyname('CCptoTot').AsString;
         DM1.cdsCanjes.fieldbyname('CtaTotal').AsString := DM1.cdsMovCxC2.fieldbyname('CtaTotal').AsString;
         DM1.cdsCanjes.Post;

         DM1.cdsCanjesClone.Insert;
         DM1.cdsCanjesClone.fieldbyname('CIAID').AsString     := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
         DM1.cdsCanjesClone.fieldbyname('TDIARID').AsString   := DM1.cdsCanjes.fieldbyname('TDIARID').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCNOREG').AsString   := DM1.cdsCanjes.fieldbyname('CCNOREG').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCAAAA').AsString    := DM1.cdsCanjes.fieldbyname('CCAAAA').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCANOMM').AsString   := DM1.cdsCanjes.fieldbyname('CCANOMM').AsString;
         DM1.cdsCanjesClone.fieldbyname('CLIEID').AsString    := DM1.cdsCanjes.fieldbyname('CLIEID').AsString;
         DM1.cdsCanjesClone.fieldbyname('CLIERUC').AsString   := DM1.cdsCanjes.fieldbyname('CLIERUC').AsString;
         DM1.cdsCanjesClone.fieldbyname('DOCID').AsString     := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCSERIE').AsString   := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCNODOC').AsString   := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;
         DM1.cdsCanjesClone.fieldbyname('TCANJEID').AsString  := DM1.cdsCanjes.fieldbyname('TCANJEID').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCCANJE').AsString   := DM1.cdsCanjes.fieldbyname('CCCANJE').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCFCANJE').AsDatetime:= DM1.cdsCanjes.fieldbyname('CCFCANJE').AsDatetime;
         DM1.cdsCanjesClone.fieldbyname('TMONID').AsString    := DM1.cdsCanjes.fieldbyname('TMONID').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCTCAMCJE').AsFloat  := DM1.cdsCanjes.fieldbyname('CCTCAMCJE').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCTCAMDOC').AsFloat  := DM1.cdsCanjes.fieldbyname('CCTCAMDOC').AsFloat;
         DM1.cdsCanjesClone.FieldByName('CCMTOORI').AsFloat   := DM1.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
         DM1.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat   := DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
         DM1.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat   := DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCSALORI').AsFloat   := DM1.cdsCanjes.fieldbyname('CCSALORI').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCSALLOC').AsFloat   := DM1.cdsCanjes.fieldbyname('CCSALLOC').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCSALEXT').AsFloat   := DM1.cdsCanjes.fieldbyname('CCSALEXT').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCESTADO').AsString  := DM1.cdsCanjes.fieldbyname('CCESTADO').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCUSER').AsString    := DM1.cdsCanjes.fieldbyname('CCUSER').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCFREG').AsString    := DM1.cdsCanjes.fieldbyname('CCFREG').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCHREG').AsString    := DM1.cdsCanjes.fieldbyname('CCHREG').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCMM').AsString      := DM1.cdsCanjes.fieldbyname('CCMM').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCDD').AsString      := DM1.cdsCanjes.fieldbyname('CCDD').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCTRI').AsString     := DM1.cdsCanjes.fieldbyname('CCTRI').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCSEM').AsString     := DM1.cdsCanjes.fieldbyname('CCSEM').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCSS').AsString      := DM1.cdsCanjes.fieldbyname('CCSS').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCAATRI').AsString   := DM1.cdsCanjes.fieldbyname('CCAATRI').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCAASEM').AsString   := DM1.cdsCanjes.fieldbyname('CCAASEM').AsString;
         DM1.cdsCanjesClone.fieldbyname('CCAASS').AsString    := DM1.cdsCanjes.fieldbyname('CCAASS').AsString;
         DM1.cdsCanjesClone.fieldbyname('CPTOTOT').AsString   := DM1.cdsCanjes.fieldbyname('CPTOTOT').AsString;
         DM1.cdsCanjesClone.fieldbyname('CTATOTAL').AsString  := DM1.cdsCanjes.fieldbyname('CTATOTAL').AsString;
         DM1.cdsCanjesClone.Post;


         DM1.cdsMovCxC2Clone.Filtered  := False;

         DM1.cdsMovCxC2Clone.Setkey;
         DM1.cdsMovCxC2Clone.FieldByName('CIAID').AsString    := DM1.cdsMovCxC2.FieldByName('CIAID').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('TDIARID').AsString  := DM1.cdsMovCxC2.FieldByName('TDIARID').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('CCANOMES').AsString := DM1.cdsMovCxC2.FieldByName('CCANOMES').AsString;
         DM1.cdsMovCxC2Clone.FieldByName('CCNOREG').AsString  := DM1.cdsMovCxC2.FieldByName('CCNOREG').AsString;
         DM1.cdsMovCxC2Clone.Gotokey;
         begin
           DM1.cdsMovCxC2Clone.Edit;
           DM1.cdsMovCxC2Clone.fieldbyname('FlagVar').AsString := 'XX';
           DM1.cdsMovCxC2Clone.Post;
           DM1.cdsMovCxC2Clone.Filtered:= False;
           DM1.cdsMovCxC2Clone.Filter  := 'FlagVar<>'+''''+'XX'+''''+' and (CCSALLOC>0 or TCANJEID=''NC'')and '
                                   + 'CCCANJE<>'  +''''+edtCanje.Text +'''';
         end;
         DM1.cdsMovCxC2Clone.Filtered  := True;


         DM1.cdsMovCxC2.Edit;
         DM1.cdsMovCxC2.fieldbyname('FlagVar').AsString := 'XX';
         DM1.cdsMovCxC2.Post;
         DM1.cdsMovCxC2.Filtered:= False;
         DM1.cdsMovCxC2.Filter  := '';
         DM1.cdsMovCxC2.Filter  := 'FlagVar<>'+''''+'XX'+''''+' and (CCSALLOC>0 or TCANJEID=''NC'')and '
                                 + 'CCCANJE<>'  +''''+edtCanje.Text +'''';
         DM1.cdsMovCxC2.Filtered  := True;
      end;
      DM1.cdsMovCxC2.EnableControls;
   end;
   bbtnSumatClick(Sender);
   DM1.xFlagCal := True;
end;

procedure TFLetras1.dbgPendientesMouseDown2(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   dbgPendientes.BeginDrag(False);
end;

procedure TFLetras1.ts2Enter(Sender: TObject);
begin
   If pnlDatos.Enabled then 
      dbeNLet.SetFocus;
   //CIM
{     if (dbeNLet.Enabled = false) then
        dbeDias.SetFocus
     else if (dbeDias.Enabled = false) then
             dbeLetIni.SetFocus
          else  dbeNLet.SetFocus;
   end;  }
////////////////////////////////
end;

procedure TFLetras1.bbtnDatosClick(Sender: TObject);
begin
   if not pnlDatos.Visible then begin
      pnlDatos.Visible := True;
      dbeNLet.SetFocus;
   end;
end;

procedure TFLetras1.DetalleLetra;
begin
   DM1.cdsLetras.fieldbyname('TVTAID').AsString  := DisplayDescrip('FAC106','TVTAID','ZVTAID',(DisplayDescrip('TGE204','ZONVTAID','CLIEID',DM1.cdsCCanje.fieldbyname('ClieID').AsString)));
   DM1.cdsLetras.fieldbyname('ZVTAID').AsString  := DisplayDescrip('TGE204','ZONVTAID','CLIEID',DM1.cdsCCanje.fieldbyname('ClieID').AsString);
   DM1.cdsLetras.fieldbyname('FLAGVAR').AsString := '.'; //NO PONER CLEAR     CLG
   DM1.cdsLetras.fieldbyname('TMONID').AsString    := DM1.cdsCCanje.fieldbyname('TMonID').AsString;
   DM1.cdsLetras.fieldbyname('CIAID').AsString     := DM1.cdsCCanje.fieldbyname('CiaID').AsString;
   DM1.cdsLetras.fieldbyname('TCANJEID').AsString  := 'LC';
   DM1.cdsLetras.fieldbyname('CCCANJE').AsString   := edtCanje.Text;
   DM1.cdsLetras.fieldbyname('CCANOMES').AsString  := DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
   DM1.cdsLetras.fieldbyname('TDIARID').AsString   := DM1.cdsCCanje.fieldbyname('TDiarID').AsString;
   DM1.cdsLetras.fieldbyname('CCNOREG').AsString   := dbeNoReg.Text;
   DM1.cdsLetras.fieldbyname('CLAUXID').AsString   := DM1.cdsCCanje.fieldbyname('ClAuxId').AsString;
   DM1.cdsLetras.fieldbyname('CLIEID').AsString    := DM1.cdsCCanje.fieldbyname('ClieID').AsString;
   DM1.cdsLetras.fieldbyname('CLIEDES').AsString   := edtClie.Text;  
   DM1.cdsLetras.fieldbyname('CLIERUC').AsString   := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
   DM1.cdsLetras.fieldbyname('DOCID').AsString     := DM1.cdsCCanje.fieldbyname('DocID').AsString;
   DM1.cdsLetras.fieldbyname('CCSERIE').Value   := '000';                    //CJFCanje
   DM1.cdsLetras.fieldbyname('CCFEMIS').Value   := DM1.cdsCCanje.fieldbyname('CJFVALOR').Value;
   DM1.cdsLetras.fieldbyname('CCFVALOR').Value  := DM1.cdsCCanje.fieldbyname('CJFValor').Value;
   DM1.cdsLetras.fieldbyname('TMONID').AsString    := DM1.cdsCCanje.fieldbyname('TMonID').AsString;
   DM1.cdsLetras.fieldbyname('CCTCAMPR').AsFloat  := DM1.cdsCCanje.fieldbyname('CjTCambio').AsFloat;
//   DM1.cdsLetrasCCEstado.ValUE  := 'I';
   DM1.cdsLetras.fieldbyname('CC_CONTA').Value  := 'N';

   DM1.cdsLetras.fieldbyname('CCFCANJE').Value  := DM1.cdsCCanje.fieldbyname('CJFCanje').AsDatetime;
   DM1.cdsLetras.fieldbyname('CTATOTAL').AsString  := DM1.cdsCCanje.fieldbyname('CuentaID').AsString;
   DM1.cdsLetras.fieldbyname('CCPTOTOT').AsString  := DM1.cdsCCanje.fieldbyname('CptoID').AsString;
   DM1.cdsLetras.fieldbyname('CCFCMPRB').AsDatetime := DM1.cdsCCanje.fieldbyname('CJFComp').AsDatetime;
   DM1.cdsLetras.fieldbyname('CCAAAA').AsString    := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
   DM1.cdsLetras.fieldbyname('CCMM').AsString      := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
   DM1.cdsLetras.fieldbyname('CCDD').AsString      := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
   DM1.cdsLetras.fieldbyname('CCTRI').AsString     := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
   DM1.cdsLetras.fieldbyname('CCSEM').AsString     := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
   DM1.cdsLetras.fieldbyname('CCSS').AsString      := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
   DM1.cdsLetras.fieldbyname('CCAATRI').AsString   := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
   DM1.cdsLetras.fieldbyname('CCAASEM').AsString   := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
   DM1.cdsLetras.fieldbyname('CCAASS').AsString    := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
end;

procedure TFLetras1.bbtnCreaLClick(Sender: TObject);
var
   xMonto, xImporte, xTotAcum : Double;
   xxNTemLe : String;
   I, xNLet, xIncDia, xxNumLet : Integer;
   xDias    : TDate;
   xxWhere,sSQL,xxNoReg, xxNLetra  : String;
begin
   if Length(edtTotal.Text)=0 then Exit;
   if FRound(StrtoFloat(edtTotal.Text),15,2)<=0 then Exit;
   if Length(dbeDias.Text)=0 then Exit;

   if DM1.cdsLetras.RecordCount>0 then
      if MessageDlg(' Existen Letras Generadas '+chr(13)+chr(13)
                   +'¿ Desea Regenerar letras ?',
        mtConfirmation, [mbYes, mbNo], 0)=mrNo then Exit;

   Screen.Cursor:=crHourGlass;
   DM1.cdsLetras.First;
   while not DM1.cdsLetras.Eof do
   begin
      DM1.cdsLetras.Delete;
   end;
   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

   xMonto   := FRound(StrtoFloat(edtTotal.Text),15,2);
   xDias    := DM1.cdsCCanje.fieldbyname('CJFValor').Value;
   xIncDia  := StrtoInt( Trim(dbeDias.Text) );
   xNLet    := StrtoInt( Trim(dbeNlet.Text) );
   xxNLetra := dbeLetIni.Text;

   if DM1.wModo='A' then
   begin
     xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
               + 'DOCID='  +''''+dblcTDoc.Text+'''';
     DM1.cdsCCanje.fieldbyname('CJLetIni').AsString := DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
   end;

   xxNLetra := dbeLetIni.Text;


   xTotAcum := 0;
   xImporte := FRound( (xMonto / xNLet), 15,2 );

   xxNoReg := DM1.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes);
   xxNoReg := StrZero( xxNoReg, DM1.cdsLetras.fieldbyname('CCNoReg').Size );

   xxNumLet:= StrToInt( Trim( dbeLetIni.Text ) );

   For I:=1 to xNLet do
   begin
       xxNLetra:= '';
       while Length(xxNLetra)=0 do
       begin
          xxNTemLe:= IntToStr( xxNumLet ) ;
          xxNLetra:= StrZero( xxNTemLe, Length(xxNTemLe) );
          xxNumLet := xxNumLet+1;
          if not BuscaCxCLet(dblcCia.Text,dblcTDoc.Text,xxNLetra) then
          begin
             Break;
          end;
          xxNLetra:= '';
       end;

       xDias   := xDias + xIncDia;
       DM1.cdsLetras.Insert;
       DetalleLetra;
       DM1.cdsLetras.fieldbyname('CCNoReg').AsString    := xxNoReg;
       DM1.cdsLetras.fieldbyname('CCFVcmto').AsDatetime := xDias;
       DM1.cdsLetras.fieldbyname('CCNoDoc').AsString    := xxNLetra;
       If I=xNLet then
       begin
          DM1.cdsLetras.fieldbyname('CCGravad').AsFloat:= FRoundC( xMonto-xTotAcum,15,2)
       end
       else
       begin
          DM1.cdsLetras.fieldbyname('CCGravad').AsFloat:= FRoundC( xImporte, 15, 2 );
       end;
       xTotAcum:= xTotAcum + DM1.cdsLetras.fieldbyname('CCGravad').AsFloat;
       xTotAcum:= FRoundC( xTotAcum, 15, 2 );
       xxNoReg := StrZero( IntToStr(StrToInt(xxNoReg)+1), DM1.cdsLetras.fieldbyname('CCNoReg').Size );

       DM1.cdsLetras.fieldbyname('CCMtoOri').Value := DM1.cdsLetras.fieldbyname('CCGravad').AsFloat;
       If DM1.cdsCCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
       begin
          DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
          DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
          DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
          DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
          DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
       end
       Else
       begin
          DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
          DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
          DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
          DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
          DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat:= FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
       end;

       DM1.cdsLetras.Post;
   end;

   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

   Filtracds( DM1.cdsLetras, 'Select * from CXC301 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );

   if (DM1.SRV_D = 'DB2NT') or (DM1.SRV_D = 'DB2400') then
   begin
   sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
         ' Z1.TVTADES FROM CXC301 L '+
         ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID '+
         ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID '+
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID '+
         ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID '+
         ' WHERE L.CIAID='+QuotedStr(dblcCia.Text)+
         ' and L.TCANJEID='+QuotedStr('LC')+
         ' and L.CCCANJE='+QuotedStr(edtCanje.text);
   end;
   if DM1.SRV_D='ORACLE' then
   begin
   sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, '+
         ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, '+
         ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
         ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 '+
         ' WHERE L.CIAID='+QuotedStr(dblcCia.Text)+
         ' and L.TCANJEID='+QuotedStr('LC')+
         ' and L.CCCANJE='+QuotedStr(edtCanje.text)+
         ' and L.CLIEID=C.CLIEID(+) '+
         ' and L.TMONID=M.TMONID(+) '+
         ' and C.ZONVTAID=Z.ZVTAID(+) '+
         ' and Z.ZVTAID=Z1.TVTAID(+) ';
   end;

   DM1.cdsQry4.Close;
   DM1.cdsQry4.Datarequest(sSQL);
   DM1.cdsQry4.Open;

   bbtnSumatClick(Sender);
   Screen.Cursor:=crDefault;   
end;

procedure TFLetras1.pc1Change(Sender: TObject);
begin
   bbtnSumatClick(Sender);
end;

procedure TFLetras1.bbtnCalculaClick(Sender: TObject);
var
   xInteres, xFactor, xTotLet, xTotInt, xAcumGas : Double;
   xNLet, xCont : Integer;
   xxNLetra  : String;
   xDias, xIntLet, xIGVLet, xIGVGas, xGastos, xImpGas, xTotIGV : Double;
begin
   if DM1.cdsLetras.RecordCount=0 then
   begin
     ShowMessage('Debe generar primero las Letras en un estado primario');
     Exit;
   end;

   if (DM1.cdsLetras.RecordCount<>0) AND (DM1.cdsLetras.RecordCount<>DM1.cdsCCanje.FieldByName('CJNUMLET').AsInteger) then
   begin
     ShowMessage('Número de Letras por calcular no coincide con Número de letras calculadas.'+#13+' Genere nuevamente las letras');
     Exit;
   end;

   if FRound(StrtoFloat(edtTotal.Text),15,2)<=0 then Exit;

   if Length(dbePInt.Text)>0 then
      if rgTiempo.ItemIndex<0 then
         Raise Exception.Create('Falta Registrar Mensual/Anual');

   DM1.cdsLetras.First;
   if DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat>0 then
      if MessageDlg(' Existen Letras Calculadas '+chr(13)+chr(13)
                   +'¿ Desea ReCalcular letras ?',
        mtConfirmation, [mbYes, mbNo], 0)=mrNo then Exit;

   xNLet    := StrtoInt( Trim(dbeNlet.Text) );
   xxNletra := dbeLetIni.Text;
   xInteres := 0;
   if Length( dbePInt.text )>0 then
      xInteres := FRound(StrtoFloat(dbePInt.Text),15,2);
   xAcumGas := 0;
   xTotInt  := 0;
   xTotIGV  := 0;
   xGastos  := FRound( (DM1.cdsCCanje.fieldbyname('CJGasFin').AsFloat+DM1.cdsCCanje.fieldbyname('CJGasAdm').AsFloat+
               DM1.cdsCCanje.fieldbyname('CJMora').AsFloat+DM1.cdsCCanje.fieldbyname('CJOtros').AsFloat ), 15, 2 );
   xImpGas  := FRound( ( xGastos / xNLet ), 15,2 );
   xCont := 0;
   DM1.cdsLetras.First;
   while not DM1.cdsLetras.Eof do begin
      xCont := xCont+1;
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.fieldbyname('Interes').AsFloat:=0;
      DM1.cdsLetras.fieldbyname('CCIGV').AsFloat  :=0;

      If xInteres>0 then begin
         xDias := DM1.cdsLetras.fieldbyname('CCFVcmto').Value-DM1.cdsLetras.fieldbyname('CCFValor').Value;
         if rgTiempo.ItemIndex=0 then
            xFactor := Power( ( 1 + xInteres/100), ( xDias/30 ) ) - 1
         else begin
            xFactor := Power( ( 1 + xInteres/100), ( xDias/360) ) - 1
         end;
         xIntLet:= FRound( DM1.cdsLetras.fieldbyname('CCGravad').AsFloat*xFactor,15,2);
         xIGVLet:= FRound( (xIntLet * 0.18) ,15,2 );
         DM1.cdsLetras.fieldbyname('Interes').AsFloat:=FRound( xIntLet,15,2);
         DM1.cdsLetras.fieldbyname('CCIGV').AsFloat  :=FRound((DM1.cdsLetras.fieldbyname('CCIGV').AsFloat+xIGVLet),15,2);
      end;

      If xCont=DM1.cdsLetras.RecordCount then
         DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat:= FRound( xGastos-xAcumGas,15,2)
      else begin
         DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat:= xImpGas;
      end;

      xIGVGas:= FRound( (DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat * 0.18) ,15,2 );
      DM1.cdsLetras.fieldbyname('CCIGV').AsFloat:=FRound((DM1.cdsLetras.fieldbyname('CCIGV').AsFloat+xIGVGas),15,2);

      xTotLet:= FRound( (DM1.cdsLetras.fieldbyname('CCGravad').AsFloat+DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat
                        +DM1.cdsLetras.fieldbyname('Interes').AsFloat+DM1.cdsLetras.fieldbyname('CCIGV').AsFloat ),15,2 );

      xTotInt := FRound(( xTotInt + DM1.cdsLetras.fieldbyname('Interes').AsFloat),15,2);
      xTotIGV := FRound(( xTotIGV + DM1.cdsLetras.fieldbyname('CCIGV').AsFloat  ),15,2);


      xAcumGas := FRound( xAcumGas + DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat ,15,2 );

      DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat := xTotLet;
      If DM1.cdsCCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
         DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
         DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
         DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
         DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
         DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat/DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
         end
      Else begin
         DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
         DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
         DM1.cdsLetras.fieldbyname('CCSalOri').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
         DM1.cdsLetras.fieldbyname('CCSalLoc').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat*DM1.cdsLetras.fieldbyname('CCTCamPr').AsFloat,15,2 );
         DM1.cdsLetras.fieldbyname('CCSalExt').AsFloat := FRound( DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat,15,2);
      end;
      DM1.cdsLetras.Next;
   end;

   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.fieldbyname('CJInteres').AsFloat:= xTotInt;
   DM1.cdsCCanje.fieldbyname('CJIGV').AsFloat    := xTotIGV;
   DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat := xGastos+xTotInt+xTotIGV;
   if rgTiempo.ItemIndex=0 then
      DM1.cdsCCanje.fieldbyname('CJIntTip').AsString := '0'
   else begin
      DM1.cdsCCanje.fieldbyname('CJIntTip').AsString := '1';
   end;
   If DM1.cdsCCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
      DM1.cdsCCanje.fieldbyname('CJTotLoc').AsFloat:= FRound( DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat,15,2);
      DM1.cdsCCanje.fieldbyname('CJTotExt').AsFloat:= FRound( DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat/DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2 );
      end
   Else begin
      DM1.cdsCCanje.fieldbyname('CJTotLoc').AsFloat:= FRound( DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat*DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2 );
      DM1.cdsCCanje.fieldbyname('CJTotExt').AsFloat:= FRound( DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat,15,2);
   end;

   bbtnSumatClick(Sender);
end;

procedure TFLetras1.dbePIntExit(Sender: TObject);
begin
   if ( rgTiempo.ItemIndex=-1 ) and ( Length(dbePInt.Text)>0 ) then
      rgTiempo.ItemIndex := 0;
end;

procedure TFLetras1.Z2bbtnGeneraClick(Sender: TObject);
begin

   if (NOT DM1.cdsCCanje.FieldbyName('CJTOTORI').IsNull) OR (DM1.cdsCCanje.FieldbyName('CJTOTORI').AsFloat<>0) then
   begin
     dblcNDDoc.Text := '';
     dblcSerie.Text := '';
     dbeNoDoc.Text  := '';
     dblcNDDoc.Enabled  := True;
     dblcSerie.Enabled  := True;
     dbeNoDoc.Enabled   := True;
     bbtnNDebito.Enabled:= True;
     if DM1.cdsCCanje.fieldbyname('NDebito').AsString='S' then
     begin
        dblcNDDoc.Enabled  := False;
        dblcSerie.Enabled  := False;
        dbeNoDoc.Enabled   := False;
        bbtnNDebito.Enabled:= False;
        dblcNDDoc.Text := DM1.cdsCCanje.fieldbyname('NDDoc').AsString;
        dblcSerie.Text := DM1.cdsCCanje.fieldbyname('NDSerie').AsString;
        dbeNoDoc.Text  := DM1.cdsCCanje.fieldbyname('NDNumero').AsString;
     end;
     pnlNDebito.Visible :=True;
     bbtnImpND.visible:=True;
     ts3.tabvisible:=True;
   end
   else
   begin
      ShowMessage('No hay datos para generar la Nota de Débito');
      exit;
   end;
end;

procedure TFLetras1.bbtnNDebitoClick(Sender: TObject);
var
   xNoReg2 : String;
   xTDebe, xTHaber : Double;
   xTGravad,xTNoGrav,xTIGV,xTISC,xTDcto,xTServ,xTotal, xTFlete, xTGasFin : Double;
   xCtaTotal,xCptoTot : string;
begin
   if not BuscaCxCDoc(dblcCia.Text,dblcNDDoc.Text,dblcSerie.Text,dbeNoDoc.Text) then begin
      DM1.cdsCCanje.Edit;
      DM1.cdsCCanje.fieldbyname('NDebito').AsString  := 'S';
      DM1.cdsCCanje.fieldbyname('NDDoc').AsString    := dblcNDDoc.Text;
      DM1.cdsCCanje.fieldbyname('NDSerie').AsString  := dblcSerie.Text;
      DM1.cdsCCanje.fieldbyname('NDNumero').AsString := dbeNoDoc.Text;
      DM1.cdsCCanje.Post;
      DM1.cdsMovCxC.Insert;
      DM1.cdsMovCxC.FieldByName('CiaId').AsString      := dblcCia.Text;
      DM1.cdsMovCxC.FieldByName('DocId').AsString      := dblcNDDoc.Text;
      DM1.cdsMovCxC.FieldByName('CCSerie').AsString    := dblcSerie.Text;
      DM1.cdsMovCxC.FieldByName('CCNoDoc').AsString    := dbeNoDoc.Text;
      DM1.cdsMovCxC.FieldByName('TDiarId').AsString    := xNDTDiario;
      DM1.cdsMovCxC.FieldByName('ClAuxId').AsString := dblcClAux.Text;
      DM1.cdsMovCxC.FieldByName('ClieID').AsString  := dblcdClie.Text;
      DM1.cdsMovCxC.FieldByName('CLIEDES').AsString  := DM1.BuscaQry2('dspTGE','TGE204','TVTAID,ZONVTAID,CLIEDES','CIAID='+QuotedStr(dblcCia.text)+' AND CLIEID='+QuotedStr(dblcdClie.text),'CLIEDES');
      DM1.cdsMovCxC.FieldByName('TVTAID').AsString  := DM1.cdsQry6.FieldByName('TVTAID').AsString;
      DM1.cdsMovCxC.FieldByName('ZVTAID').AsString  := DM1.cdsQry6.FieldByName('ZONVTAID').AsString;

      DM1.cdsMovCxC.FieldByName('ClieRuc').AsString := dblcdClieRuc.Text;
      DM1.cdsMovCxC.FieldByName('FGEN_DOC').AsString    := 'N';

      xTAutoNum:= DisplayDescrip('TGE104','AutoNum','TDiarID',xNDTDiario);
      xNoReg2  := GrabaRegistroLetra( xTAutoNum,dblcCia.Text,xNDTDiario,xTAno,xTMes, 0 );
      xNoReg2  := StrZero( xNoReg2, DM1.cdsMovCxC.FieldByName('CCNoReg').Size );

      DM1.cdsMovCxC.FieldByName('CCNoReg').AsString := xNoReg2;
      DM1.cdsMovCxC.FieldByName('CCAnoMes').AsString:= DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
      DM1.cdsMovCxC.FieldByName('CCFCmprb').AsString   := DM1.cdsCCanje.fieldbyname('CJFComp').AsString;
      DM1.cdsMovCxC.FieldByName('CCFEmis').AsString := DM1.cdsCCanje.fieldbyname('CJFCanje').AsString;
      DM1.cdsMovCxC.FieldByName('CCFVcmto').AsString   := DM1.cdsCCanje.fieldbyname('CJFCanje').AsString;
      DM1.cdsMovCxC.FieldByName('TMonId').AsString  := DM1.cdsCCanje.fieldbyname('TMonId').AsString;
      DM1.cdsMovCxC.FieldByName('CCTCamPr').AsString := DM1.cdsCCanje.fieldbyname('CJTCambio').AsString;
      DM1.cdsMovCxC.FieldByName('CCTCamPa').AsString := DM1.cdsCCanje.fieldbyname('CJTCambio').AsString;
      DM1.cdsMovCxC.FieldByName('CCEstado').AsString:= 'I';
      DM1.cdsMovCxC.FieldByName('CC_Conta').AsString:= 'N';
      if BuscaFecha('TGE114','Fecha',dtpFComp.date ) then begin
         DM1.cdsMovCxC.FieldByName('CCAAAA').AsString  := DM1.cdsQry2.FieldByName('FecAno'  ).AsString;
         DM1.cdsMovCxC.FieldByName('CCMM').AsString    := DM1.cdsQry2.FieldByName('FecMes'  ).AsString;      // mes
         DM1.cdsMovCxC.FieldByName('CCDD').AsString    := DM1.cdsQry2.FieldByName('FecDia'  ).AsString;      // día
         DM1.cdsMovCxC.FieldByName('CCTri').AsString   := DM1.cdsQry2.FieldByName('FecTrim' ).AsString;     // trimestre
         DM1.cdsMovCxC.FieldByName('CCSem').AsString   := DM1.cdsQry2.FieldByName('FecSem'  ).AsString;      // semestre
         DM1.cdsMovCxC.FieldByName('CCSS').AsString    := DM1.cdsQry2.FieldByName('FecSS'   ).AsString;       // semana
         DM1.cdsMovCxC.FieldByName('CCAATri').AsString := DM1.cdsQry2.FieldByName('FecAATri').AsString;    // año+trimestre
         DM1.cdsMovCxC.FieldByName('CCAASem').AsString := DM1.cdsQry2.FieldByName('FecAASem').AsString;    // año+semestre
         DM1.cdsMovCxC.FieldByName('CCAASS').AsString  := DM1.cdsQry2.FieldByName('FecAASS' ).AsString;     // año+semana
      end;
      DM1.cdsMovCxC.Post;
      DM1.cdsMovCxC.ApplyUpdates(0);
//      DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   end;
   DM1.cdsCCanje.DataRequest( 'Select * from CXC307 WHERE '
                             +   'CIAID='+QuotedStr(dblcCia.Text)+' AND '
                             +   'TCANJEID='+QuotedStr('LC')+' AND '
                             +   'CANJE='+QuotedStr(edtCanje.Text));
   DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

   Filtracds( DM1.cdsMovCxC,  'Select * from CXC301 Where '
                +'CIAID='  +''''+dblcCia.Text                  +''''+' and '
                +'DOCID='  +''''+DM1.cdsCCanje.fieldbyname('NDDoc').AsString   +''''+' and '
                +'CCSERIE='+''''+DM1.cdsCCanje.fieldbyname('NDSerie').AsString +''''+' and '
                +'CCNODOC='+''''+DM1.cdsCCanje.fieldbyname('NDNumero').AsString+'''' );

   GeneraDetalle;

   DM1.cdsDetCxC2.First;
   xTDebe:=0; xTHaber:=0; xTotal:=0;  xTFlete:=0; xTGasFin:=0;
   xTGravad := 0; xTNoGrav:=0; xTIGV:=0; xTISC:=0; xTDcto:=0; xTServ:=0;
   while not DM1.cdsDetCxC2.eof do begin
      if DM1.cdsDetCxC2.fieldbyname('CCDH').AsString='D' then xTDebe :=xTDebe +FRound(DM1.cdsDetCxC2.fieldbyname('CCMtoOri').Asfloat,15,2);
      if DM1.cdsDetCxC2.fieldbyname('CCDH').AsString='H' then xTHaber:=xTHaber+FRound(DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat,15,2);
      if DM1.cdsDetCxC2.fieldbyname('TIPDET').AsString='MG' then begin // Monto Gravado/Base Imponible/Monto Afecto
         xTGravad := xTGravad + DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      end;
      if DM1.cdsDetCxC2.fieldbyname('TIPDET').AsString='MN' then begin // Monto No Gravado
         xTNoGrav:=xTNoGrav+DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      end;
      if DM1.cdsDetCxC2.fieldbyname('TIPDET').AsString='I1' then begin // IGV
         xTIGV:=xTIGV+DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      end;
      if DM1.cdsDetCxC2.fieldbyname('TIPDET').AsString='TO' then begin // Total
         xTotal   :=xTotal+DM1.cdsDetCxC2.fieldbyname('CCMtoOri').Value;
         xCtaTotal:=DM1.cdsDetCxC2.fieldbyname('CuentaId').AsString;
         xCptoTot :=DM1.cdsDetCxC2.fieldbyname('CptoId').AsString;
      end;
      DM1.cdsDetCxC2.Next;
   end;
   // graba sumatorias del detalle en cabecera CxP

   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat :=xTGravad;   // Monto Gravado
   DM1.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat :=xTNoGrav;   // Monto No Gravado
   DM1.cdsMovCxC.FieldByName('CCFLETE').AsFloat  :=xTFlete;
   DM1.cdsMovCxC.FieldByName('CCGASFIN').AsFloat :=xTGasFin;
   DM1.cdsMovCxC.FieldByName('CCIGV').AsFloat    :=xTIGV;         // IGV.
   DM1.cdsMovCxC.FieldByName('CCISC').AsFloat    :=xTISC;         // ISC.
   DM1.cdsMovCxC.FieldByName('CCDCTO').AsFloat   :=xTDcto;       // Descuento
   DM1.cdsMovCxC.FieldByName('CCSERVIC').AsFloat :=xTServ;     // Servicio
   DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat :=xTotal;     // Total documento
   DM1.cdsMovCxC.FieldByName('CCSALORI').AsFloat :=xTotal;     // Saldo del documento

   if DM1.cdsMovCxC.FieldByName('TMonID').AsString=DM1.wTMonLoc then
   begin
      DM1.cdsMovCxC.FieldByName('CCSALLOC').AsFloat:=xTotal;                   // Total en moneda local
      DM1.cdsMovCxC.FieldByName('CCSALEXT').AsFloat:=FRound(xTotal/FRound(DM1.cdsMovCxC.FieldByName('CCTCamPr').AsFloat,12,3),15,2);
      DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat:=xTotal;                   // Total en moneda local
      DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat:=FRound(xTotal/FRound(DM1.cdsMovCxC.FieldByName('CCTCamPr').AsFloat,12,3),15,2);
   end
   else
   begin
      DM1.cdsMovCxC.FieldByName('CCSALEXT').AsFloat:=xTotal;                   // Total en moneda local
      DM1.cdsMovCxC.FieldByName('CCSALLOC').AsFloat:=FRound(xTotal*FRound(DM1.cdsMovCxC.FieldByName('CCTCamPr').AsFloat,12,3),15,2);   // Total en moneda local
      DM1.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat:=FRound(xTotal*FRound(DM1.cdsMovCxC.FieldByName('CCTCamPr').AsFloat,12,3),15,2);   // Total en moneda local
      DM1.cdsMovCxC.FieldByName('CCMtoExt').AsFloat:=xTotal;                   // Total en moneda extranjera
   end;
   DM1.cdsMovCxC.FieldByName('CtaTotal').AsString :=xCtaTotal;
   DM1.cdsMovCxC.FieldByName('CCptoTot').AsString :=xCptoTot;
//CESAR : 01/02/2002
//   DM1.cdsMovCxC.FieldByName('CCEstado').Value :='P';
   DM1.cdsMovCxC.FieldByName('CCUser').Value   := DM1.wUsuario;
   DM1.cdsMovCxC.FieldByName('CCFReg').Value   := Date;
   DM1.cdsMovCxC.FieldByName('CCHReg').Value   := Time;
   DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC'  );

   InsertaCanjes( DM1.cdsMovCxC );
   DM1.AplicaDatos( DM1.cdsMovCxC,'MovCxC' );

   DM1.AplicaDatos( DM1.cdsDetCxC2,'DetCxC2' );

   EstadoNDebito( DM1.cdsCCanje.fieldbyname('NDebito').AsString );

   pnlNDebito.Visible:=False;

   ShowMessage( 'Nota Débito Grabada' );
end;

procedure TFLetras1.InsertaCanjes( xxCds:TwwClientDataSet );
begin
   DM1.cdsCanjes.Insert;
   DM1.cdsCanjes.fieldbyname('CiaID').AsString    := xxCds.FieldByName( 'CiaID' ).AsString;
   DM1.cdsCanjes.fieldbyname('TDiarID').AsString  := xxCds.FieldByName( 'TDiarID' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCNoReg').AsString  := xxCds.FieldByName( 'CCNoReg' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCAAAA').AsString   := xxCds.FieldByName( 'CCAAAA' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString  := xxCds.FieldByName( 'CCAnoMes' ).AsString;
   DM1.cdsCanjes.fieldbyname('ClieId').AsString   := xxCds.FieldByName( 'ClieId' ).AsString;
   DM1.cdsCanjes.fieldbyname('ClieRuc').AsString  := xxCds.FieldByName( 'ClieRuc' ).AsString;
   DM1.cdsCanjes.fieldbyname('DocID').AsString    := xxCds.FieldByName( 'DocID' ).AsString;
   DM1.cdsCanjes.fieldbyname('DOCABR').AsString   := DM1.BuscaQry2('dspTGE','TGE110','DOCABR','DOCMOD=''CXC'' AND DOCID='+QuotedStr(dblcNDDoc.text),'DOCABR');
   DM1.cdsCanjes.fieldbyname('CCSerie').AsString  := xxCds.FieldByName( 'CCSerie' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCNoDoc').AsString  := xxCds.FieldByName( 'CCNoDoc' ).AsString;
   DM1.cdsCanjes.fieldbyname('TCanjeID').AsString := 'LC';
   DM1.cdsCanjes.fieldbyname('CCCanje').AsString  := edtCanje.Text;
   DM1.cdsCanjes.fieldbyname('CCFCanje').Value := xxCds.FieldByName( 'CCFCmprb' ).AsDateTime;
   DM1.cdsCanjes.fieldbyname('TMonID').Value   := xxCds.FieldByName( 'TMonId' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat:= xxCds.FieldByName( 'CCTCamPr' ).AsFloat;
   DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat:= xxCds.FieldByName( 'CCTCamPr' ).AsFloat;
   DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat := xxCds.FieldByName( 'CCMtoLoc' ).AsFloat;
   DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat := xxCds.FieldByName( 'CCMtoExt' ).AsFloat;
   DM1.cdsCanjes.fieldbyname('CjeAntMN').Value := 0;
   DM1.cdsCanjes.fieldbyname('CjeAntME').Value := 0;
   DM1.xFlagCal := False;
   DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value := xxCds.FieldByName( 'CCMtoLoc' ).AsFloat;
   DM1.xFlagCal := False;
   DM1.cdsCanjes.fieldbyname('CCMtoExt').Value := xxCds.FieldByName( 'CCMtoExt' ).AsFloat;
   DM1.cdsCanjes.fieldbyname('CCEstado').Value := 'P';
   DM1.cdsCanjes.fieldbyname('CCUser').Value   := DM1.wUsuario;
   DM1.cdsCanjes.fieldbyname('CCFReg').Value   := date;
   DM1.cdsCanjes.fieldbyname('CCHReg').Value   := time;
   DM1.cdsCanjes.fieldbyname('CCMM').AsString     := xxCds.FieldByName( 'CCMM'    ).AsString;
   DM1.cdsCanjes.fieldbyname('CCDD').AsString     := xxCds.FieldByName( 'CCDD'    ).AsString;
   DM1.cdsCanjes.fieldbyname('CCTri').AsString    := xxCds.FieldByName( 'CCTri'   ).AsString;
   DM1.cdsCanjes.fieldbyname('CCSem').AsString    := xxCds.FieldByName( 'CCSem'   ).AsString;
   DM1.cdsCanjes.fieldbyname('CCSS').AsString     := xxCds.FieldByName( 'CCSS'    ).AsString;
   DM1.cdsCanjes.fieldbyname('CCAATri').AsString  := xxCds.FieldByName( 'CCAATri' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCAASem').AsString  := xxCds.FieldByName( 'CCAASem' ).AsString;
   DM1.cdsCanjes.fieldbyname('CCAASS').AsString   := xxCds.FieldByName( 'CCAASS'  ).AsString;
   DM1.cdsCanjes.fieldbyname('CptoTot').AsString  := xxCds.FieldByName( 'CCptoTot').AsString;
   DM1.cdsCanjes.fieldbyname('CtaTotal').AsString := xxCds.FieldByName( 'CtaTotal').AsString;
   DM1.cdsCanjes.Post;
end;


procedure TFLetras1.GeneraDetalle;
begin
   if DM1.cdsDetCxC2.RecordCount>0 then
   begin
      while not DM1.cdsDetCxC2.Eof do
      begin
         DM1.cdsDetCxC2.delete;
      end;
   end;

{   if DM1.cdsCCanje.fieldbyname('CJGasAdm').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'GAD', DM1.cdsCCanje.fieldbyname('CJGasAdm').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJGasFin').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'GFI', DM1.cdsCCanje.fieldbyname('CJGasFin').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJMora').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'MOR', DM1.cdsCCanje.fieldbyname('CJMora').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJOtros').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'OTR', DM1.cdsCCanje.fieldbyname('CJOtros').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJInteres').AsFloat>0 then begin
      RegistroDetalle( 'MG', 'INT', DM1.cdsCCanje.fieldbyname('CJInteres').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJIGV').AsFloat>0 then begin
      RegistroDetalle( 'I1', '', DM1.cdsCCanje.fieldbyname('CJIGV').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat>0 then begin
      RegistroDetalle( 'TO', '', DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat );
   end;}

   if DM1.cdsCCanje.fieldbyname('CJGasAdm').AsFloat>0 then  //GASTOS ADMINISTRATIVOS
   begin
     RegistroDetalle( 'GF', 'MG', DM1.cdsCCanje.fieldbyname('CJGasAdm').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJGasFin').AsFloat>0 then //GASTOS FINANCIEROS
   begin
      RegistroDetalle( 'IN', 'MG', DM1.cdsCCanje.fieldbyname('CJGasFin').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJMora').AsFloat>0 then      //MORA
   begin
      RegistroDetalle( 'IN', 'MG', DM1.cdsCCanje.fieldbyname('CJMora').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJOtros').AsFloat>0 then     //OTROS GASTOS
   begin
      RegistroDetalle( 'IN', 'OTR', DM1.cdsCCanje.fieldbyname('CJOtros').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJInteres').AsFloat>0 then   //INTERESES
   begin
      RegistroDetalle( 'IN', 'IN', DM1.cdsCCanje.fieldbyname('CJInteres').AsFloat );
   end;
   if DM1.cdsCCanje.fieldbyname('CJIGV').AsFloat>0 then       //IGV
   begin
      RegistroDetalle( 'I1', 'I1', DM1.cdsCCanje.fieldbyname('CJIGV').AsFloat );
   end;
   InsertaRegistroDeTotal;
end;


procedure TFLetras1.RegistroDetalle( xTipDet,xTipCar: String; xMonto: Double );
var
   xWhere, xTReg, xDH, xCpto, xCta : String;
begin

   xWhere := 'TIPDET='+''''+xTipDet+'''';
   xTReg := BuscaQry('dspTGE','TGE128','*',xWhere,'TREGID');
   xDH   := DM1.cdsQry.fieldbyname('CCDH').Value;
{
   if Length( xTipCar)=0 then
   begin
      if DM1.cdsCCanje.fieldbyname('TMonId').AsString=DM1.wTMonLoc then
      begin
         xCpto := DM1.cdsQry.fieldbyname('CPTOMN').AsString;
         xCta  := DM1.cdsQry.fieldbyname('CUENTAMN').AsString;
      end
      else
      begin
         xCpto := DM1.cdsQry.fieldbyname('CPTOME').AsString;
         xCta  := DM1.cdsQry.fieldbyname('CUENTAME').AsString;
      end;
   end
   else
   begin
      xWhere := 'CJECARGO='+''''+xTipCar+'''';
      xCpto  := BuscaQry('dspTGE','CXC106','*',xWhere,'CPTOMN');
      if DM1.cdsCCanje.fieldbyname('TMonId').AsString=DM1.wTMonLoc then
         xCta  := DM1.cdsQry.fieldbyname('CTAMN').AsString
      else begin
         xCpto := DM1.cdsQry.fieldbyname('CPTOME').AsString;
         xCta  := DM1.cdsQry.fieldbyname('CTAME').AsString;
      end;
   end;
}
   if DM1.cdsCCanje.fieldbyname('TMonId').AsString=DM1.wTMonLoc then
   begin
       xCpto := DM1.cdsQry.fieldbyname('CPTOMN').AsString;
       xCta  := DM1.cdsQry.fieldbyname('CUENTAMN').AsString;
   end
   else
   begin
       xCpto := DM1.cdsQry.fieldbyname('CPTOME').AsString;
       xCta  := DM1.cdsQry.fieldbyname('CUENTAME').AsString;
   end;

   DM1.cdsDetCxC2.Insert;
   DM1.cdsDetCxC2.fieldbyname('TIPDET').Value   := xTipCar;
   DM1.cdsDetCxC2.fieldbyname('CCMtoOri').Value := xMonto;
   DM1.cdsDetCxC2.fieldbyname('TRegId').Value   := xTReg;
   DM1.cdsDetCxC2.fieldbyname('CCDH').Value     := xDH;
   DM1.cdsDetCxC2.fieldbyname('TMonId').Value   := DM1.cdsCCanje.fieldbyname('TMonId').AsString;
   DM1.cdsDetCxC2.fieldbyname('CPTOID').Value   := xCpto;
   DM1.cdsDetCxC2.fieldbyname('CUENTAID').Value := xCta;

   if DM1.cdsDetCxC2.fieldbyname('TMonId').Value=DM1.wTMonLoc then begin
      DM1.cdsDetCxC2.fieldbyname('CCMtoLoc').AsFloat := DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      DM1.cdsDetCxC2.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat/DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2 );
      end
   else begin
      DM1.cdsDetCxC2.fieldbyname('CCMtoExt').AsFloat := DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      DM1.cdsDetCxC2.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat*DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2 );
   end;

   If Length( DM1.cdsDetCxC2.fieldbyname('CPTOID').Value )>0 then begin
      xWhere := 'CPTOID='+''''+DM1.cdsDetCxC2.fieldbyname('CPTOID').Value+'''';
      DM1.cdsDetCxC2.fieldbyname('CCGLOSA').Value := BuscaQry('dspTGE','CXC201','CPTODES',xWhere,'CPTODES')
   end;

   DM1.cdsDetCxC2.fieldbyname('CiaId').AsString   := DM1.cdsMovCxC.FieldByName('CiaId').AsString;
   DM1.cdsDetCxC2.fieldbyname('TDiarId').AsString := DM1.cdsMovCxC.FieldByName('TDiarId').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCNoReg').AsString := DM1.cdsMovCxC.FieldByName('CCNoReg').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAAAA').AsString  := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAnoMes').AsString:= DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
   DM1.cdsDetCxC2.fieldbyname('ClAuxId').AsString := DM1.cdsCCanje.fieldbyname('ClAuxId').AsString;
   DM1.cdsDetCxC2.fieldbyname('ClieId').AsString  := DM1.cdsCCanje.fieldbyname('ClieId').AsString;
   DM1.cdsDetCxC2.fieldbyname('ClieRuc').AsString := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
//CESAR 01/02/2002
//   DM1.cdsDetCxC2.fieldbyname('DocId').AsString   := DM1.cdsCCanje.fieldbyname('DocId').AsString;
   DM1.cdsDetCxC2.fieldbyname('DocId').AsString   := dblcNDDoc.Text;
   DM1.cdsDetCxC2.fieldbyname('CCSerie').AsString := dblcSerie.Text;
   DM1.cdsDetCxC2.fieldbyname('TCANJEID').AsString := 'ND';
   DM1.cdsDetCxC2.fieldbyname('CCCANJE').AsString := edtCanje.Text;
   DM1.cdsDetCxC2.fieldbyname('CCNoDoc').AsString := dbeNoDoc.Text;
   DM1.cdsDetCxC2.fieldbyname('CCTCamPr').Asfloat:= FRound( DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,7,3);
   DM1.cdsDetCxC2.fieldbyname('CCFEmis').Value := DM1.cdsCCanje.fieldbyname('CJFCanje').AsDateTime;
   DM1.cdsDetCxC2.fieldbyname('CCFVcmto').Value:= DM1.cdsCCanje.fieldbyname('CJFCanje').AsDateTime;
   DM1.cdsDetCxC2.fieldbyname('CCFComp').Value := DM1.cdsCCanje.fieldbyname('CJFComp').AsDateTime;
   DM1.cdsDetCxC2.fieldbyname('CCEstado').Value:= 'I'; // Activo
   DM1.cdsDetCxC2.fieldbyname('CCUser').Value  := DM1.wUsuario;
   DM1.cdsDetCxC2.fieldbyname('CCFReg').Value  := Date;
   DM1.cdsDetCxC2.fieldbyname('CCHReg').Value  := Time;
   DM1.cdsDetCxC2.fieldbyname('CCMM').AsString    := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCDD').AsString    := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCTri').AsString   := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCSem').AsString   := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCSS').AsString    := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAATri').AsString := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAASem').AsString := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAASS').AsString  := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
   DM1.cdsDetCxC2.Post;
end;


procedure TFLetras1.dblcNDDocExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'DocId='+''''+dblcNDDoc.Text+''''+' and '
           + 'DOCMOD='+''''+DM1.wModulo+'''';
   xNDTDiario:= BuscaQry('dspTGE','TGE110','*',xWhere,'TDIARID');
	 DM1.cdsSerie.Filter:='DOCID='+QuotedStr(dblcNDDoc.text);
	 DM1.cdsSerie.Filtered:=True;
end;

procedure TFLetras1.bbtnCancNDClick(Sender: TObject);
begin
   pnlNDebito.Visible :=False;
end;

procedure TFLetras1.pnlDatosEnter(Sender: TObject);
var
   xxWhere : String;
begin
   if Length(dbeletIni.Text)=0 then
   begin
      xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
               + 'DOCID='  +''''+dblcTDoc.Text+'''';
      DM1.cdsCCanje.fieldbyname('CJLetIni').AsString := DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
   end;
end;

procedure TFLetras1.dbeDiasExit(Sender: TObject);
var
   xxWhere : String;
begin
   if Length(dbeletIni.Text)=0 then
   begin
      xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
               + 'DOCID='  +''''+dblcTDoc.Text+'''';
      DM1.cdsCCanje.fieldbyname('CJLetIni').AsString := DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
   end;
end;

procedure TFLetras1.dbeNLetExit(Sender: TObject);
var
   xxWhere : String;
begin
   if Length(dbeletIni.Text)=0 then
   begin
      xxWhere := 'CIAID='  +''''+dblcCia.Text +''''+' and '
               + 'DOCID='  +''''+dblcTDoc.Text+'''';
      DM1.cdsCCanje.fieldbyname('CJLetIni').AsString := DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xxWhere);
   end;
end;

procedure TFLetras1.dbeLetraExit(Sender: TObject);
var
   xxRecno : Integer;
begin
   if BuscaCxCLet( dblcCia.Text, dblcTDoc.Text, dbeLetra.Text ) then begin
      dbeLetra.SetFocus;
      Raise Exception.Create( 'Número de Letra Existe' );
   end;
   dbeLetra.Enabled:= False;
   DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

   xxRecno := DM1.cdsLetras.RecNo;

   Filtracds( DM1.cdsLetras, 'Select * from CXC301 Where '
                        + 'CIAID='   +''''+dblcCia.Text +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+edtCanje.text+'''' );
   DM1.cdsLetras.RecNo := xxRecno;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('TMonID').AsString  := DM1.cdsCCanje.fieldbyname('TMonID').AsString;
end;

procedure TFLetras1.dbeImpExit(Sender: TObject);
var
   xTotal : Double;
begin
   if DM1.cdsLetras.fieldbyname('CCGravad').AsFloat<0 then begin
      dbeImp.SetFocus;
      Raise Exception.Create('Importe debe Ser >= a Cero');
   end;

   xTotal := DM1.cdsLetras.fieldbyname('CCGravad').AsFloat + DM1.cdsLetras.fieldbyname('Interes').AsFloat
           + DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat + DM1.cdsLetras.fieldbyname('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat := FRound(xTotal,15,2);
end;

procedure TFLetras1.dbeGasExit(Sender: TObject);
var
   xTotal : Double;
begin
   if DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat<0 then begin
      dbeGas.SetFocus;
      Raise Exception.Create('Gastos debe Ser >= a Cero');
   end;

   xTotal := DM1.cdsLetras.fieldbyname('CCGravad').AsFloat + DM1.cdsLetras.fieldbyname('Interes').AsFloat
           + DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat + DM1.cdsLetras.fieldbyname('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat := FRound(xTotal,15,2);
end;

procedure TFLetras1.dbeIGVExit(Sender: TObject);
var
   xTotal : Double;
begin
   if DM1.cdsLetras.fieldbyname('CCIGV').AsFloat<0 then begin
      dbeIGV.SetFocus;
      Raise Exception.Create('I.G.V. debe Ser >= a Cero');
   end;

   xTotal := DM1.cdsLetras.fieldbyname('CCGravad').AsFloat + DM1.cdsLetras.fieldbyname('Interes').AsFloat
           + DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat + DM1.cdsLetras.fieldbyname('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat := FRound(xTotal,15,2);
end;

procedure TFLetras1.dbeIntExit(Sender: TObject);
var
   xTotal : Double;
begin
   if DM1.cdsLetras.fieldbyname('Interes').AsFloat<0 then begin
      dbeInt.SetFocus;
      Raise Exception.Create('Interes debe ser >= a Cero');
   end;
   xTotal := DM1.cdsLetras.fieldbyname('CCGravad').AsFloat + DM1.cdsLetras.fieldbyname('Interes').AsFloat
           + DM1.cdsLetras.fieldbyname('CCGasFin').AsFloat + DM1.cdsLetras.fieldbyname('CCIGV').AsFloat;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCMtoOri').AsFloat := FRound(xTotal,15,2);
end;

procedure TFLetras1.bbtnContClick(Sender: TObject);
var
   xRegAct : TBookMark;
begin
   if Length(dbeComp.text)=0 then raise exception.create('Falta Numero de Comprobante');

   if MessageDlg('Contabilizar Documento'+chr(13)+'    ¿Esta Seguro?     ',
      mtConfirmation, [mbYes, mbNo], 0)=mrNo then exit;

   if not NGeneraAsiento then begin
      pnlConta.Visible:= False;
      raise Exception.Create('Error:  Asiento No Terminado');
   end;

   DM1.AplicaDatos( DM1.cdsDetCxC, 'DetCxC' );

   DM1.cdsLetras.DisableControls;
   xRegAct := DM1.cdsLetras.GetBookmark;
   DM1.cdsLetras.First;
   while not DM1.cdsLetras.Eof do begin
      DM1.cdsLetras.Edit;
      DM1.cdsLetras.fieldbyname('CC_Conta').AsString:= 'S';
      DM1.cdsLetras.fieldbyname('CCCmprb').AsString := DM1.cdsCCanje.fieldbyname('CCCmprb').AsString;
      DM1.cdsLetras.Next;
   end;
   DM1.cdsCCanje.Edit;
   DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString:='S';
   DM1.AplicaDatos( DM1.cdsLetras, 'Letras' );
   DM1.cdsCCanje.DataRequest( 'Select * from CXC307' );
   DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

   DM1.GeneraContabilidad(dblcCia.Text,dblcTDiario.Text,DM1.cdsCCanje.fieldbyname('CJAAMM').AsString,DM1.cdsCCanje.fieldbyname('CCCmprb').AsString, Self );

   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;

   EstadoDeForma(1,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString );

   pnlConta.Visible:= False;
   ShowMessage('Registro Contabilizado');
end;

procedure TFLetras1.bbtnCanc2Click(Sender: TObject);
begin
   EstadoDeForma( 1,DM1.cdsCCanje.fieldbyname('CJEstado').AsString,DM1.cdsCCanje.fieldbyname('CJ_Conta').AsString );
   pnlConta.Visible:= False;
end;

function TFLetras1.NGeneraAsiento: Boolean;
var sIndice:string;
begin
   DM1.cdsCanjes.DisableControls;
   sIndice:=DM1.cdsCanjes.IndexFieldNames;
   DM1.cdsCanjes.IndexFieldNames:='CiaId;TCanjeID;CCCanje;DocID;CCSerie;CCNoDoc';

   DM1.cdsDetCxC.First;
   while not DM1.cdsDetCxC.Eof do
      DM1.cdsDetCxC.Delete;

   //  Detalle Debe
   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.Eof do begin
      NDetalleContable;
      DM1.cdsCanjes.Next;
   end;

   //  Total Haber
   xTotLoc := 0; xTotExt := 0;
   DM1.cdsLetras.First;
   While not DM1.cdsLetras.eof do begin
      xTotLoc := xTotLoc + DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat;
      xTotExt := xTotExt + DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
      DM1.cdsLetras.Next;
   end;
   NContabilidadCanje;

   DM1.cdsCanjes.EnableControls;

   DM1.cdsCanjes.IndexFieldNames    :='CiaId;TCanjeID;CCCanje;TDiarID;CCAnoMM;CCNoReg';

   Result := True;
   DM1.cdsCanjes.IndexFieldNames:=sIndice;
end;

procedure TFLetras1.NContabilidadCanje;
begin
   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('CiaID').AsString    := DM1.cdsCCanje.fieldbyname('CiaID').AsString;
   DM1.cdsDetCxC.FieldByName('TCanjeID').AsString := DM1.cdsCCanje.fieldbyname('TCanjeID').AsString;
   DM1.cdsDetCxC.FieldByName('CCCanje').AsString  := DM1.cdsCCanje.fieldbyname('Canje').AsString;
   DM1.cdsDetCxC.FieldByName('TDiarID').AsString  := DM1.cdsCCanje.fieldbyname('TDiarID').AsString;
   DM1.cdsDetCxC.FieldByName('CCNoReg').AsString  := DM1.cdsCCanje.fieldbyname('CCCmprb').AsString;
   DM1.cdsDetCxC.FieldByName('CCCmprb').AsString  := DM1.cdsCCanje.fieldbyname('CCCmprb').AsString;
   DM1.cdsDetCxC.FieldByName('CCAAAA').AsString   := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
   DM1.cdsDetCxC.FieldByName('CCAnoMes').AsString := DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
   DM1.cdsDetCxC.FieldByName('CPtoID').AsString   := DM1.cdsCCanje.fieldbyname('CptoID').AsString;
   DM1.cdsDetCxC.FieldByName('CuentaID').AsString := DM1.cdsCCanje.fieldbyname('CuentaId').AsString;
   DM1.cdsDetCxC.FieldByName('ClAuxID').AsString  := dblcClAux.Text;
   DM1.cdsDetCxC.FieldByName('ClieID').AsString   := DM1.cdsCCanje.fieldbyname('ClieId').AsString;
   DM1.cdsDetCxC.FieldByName('ClieRuc').AsString  := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
   DM1.cdsDetCxC.FieldByName('DocID').AsString    := DM1.cdsCCanje.fieldbyname('DocID').AsString;
   DM1.cdsDetCxC.FieldByName('CCSerie').AsString  := '00000';
   DM1.cdsDetCxC.FieldByName('CCNoDoc').AsString  := DM1.cdsCCanje.fieldbyname('Canje').AsString;
   DM1.cdsDetCxC.FieldByName('CCglosa').AsString  := DM1.cdsCCanje.fieldbyname('CJGlosa').AsString;
   DM1.cdsDetCxC.FieldByName('CCDH').Value     := 'D';
   DM1.cdsDetCxC.FieldByName('CCTCamPr').AsFloat := DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCTCamPa').AsFloat := DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat;
   DM1.cdsDetCxC.FieldByName('TMonID').AsString   := DM1.cdsCCanje.fieldbyname('TmonID').AsString;
   if DM1.cdsCCanje.fieldbyname('TmonID').AsString=dm1.wTMonExt then
      DM1.cdsDetCxC.FieldByName('CCMToOri').AsFloat := xTotExt
   else
      DM1.cdsDetCxC.FieldByName('CCMToOri').AsFloat := xTotLoc;

   DM1.cdsDetCxC.FieldByName('CCMToLoc').AsFloat := xTotLoc;
   DM1.cdsDetCxC.FieldByName('CCMToExt').AsFloat := xTotExt;

   DM1.cdsDetCxC.FieldByName('CCFEmis').Value  := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
   DM1.cdsDetCxC.FieldByName('CCFVcmto').Value := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
   DM1.cdsDetCxC.FieldByName('CCFComp').Value  := DM1.cdsCCanje.fieldbyname('CJFComp').Value;
   DM1.cdsDetCxC.FieldByName('CCEstado').AsString := 'P';
   DM1.cdsDetCxC.FieldByName('TipDet').AsString   := 'TO';
   DM1.cdsDetCxC.FieldByName('CCMM').AsString     := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCDD').AsString     := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
   DM1.cdsDetCxC.FieldByName('CCTri').AsString    := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
   DM1.cdsDetCxC.FieldByName('CCSem').AsString    := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
   DM1.cdsDetCxC.FieldByName('CCSS').AsString     := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
   DM1.cdsDetCxC.FieldByName('CCAATri').AsString  := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASem').AsString  := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASS').AsString   := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
   DetCxCUsuario;  // Graba Usuario, Fecha y Hora
end;

procedure TFLetras1.NDetalleContable;
begin

   NGeneraDiferenciaCambio;

   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxC.FieldByName('CiaID').Value    := DM1.cdsCCanje.fieldbyname('CiaID').AsString;
   DM1.cdsDetCxC.FieldByName('TCanjeID').Value := DM1.cdsCCanje.fieldbyname('TCanjeID').AsString;
   DM1.cdsDetCxC.FieldByName('CCCanje').Value  := DM1.cdsCCanje.fieldbyname('Canje').AsString;
   DM1.cdsDetCxC.FieldByName('TDiarID').Value  := DM1.cdsCCanje.fieldbyname('TDiarID').AsString;
   DM1.cdsDetCxC.FieldByName('CCNoReg').Value  := DM1.cdsCCanje.fieldbyname('CCCmprb').AsString;
   DM1.cdsDetCxC.FieldByName('CCCmprb').Value  := DM1.cdsCCanje.fieldbyname('CCCmprb').AsString;
   DM1.cdsDetCxC.FieldByName('CCAnoMes').Value := DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCAAAA').Value   := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
   DM1.cdsDetCxC.FieldByName('CuentaID').value := DM1.cdsCanjes.fieldbyname('CtaTotal').Value;
   DM1.cdsDetCxC.FieldByName('CptoID').value   := DM1.cdsCanjes.fieldbyname('CptoTot').Value;
   DM1.cdsDetCxC.FieldByName('ClAuxID').Value  := dblcClAux.Text;
   DM1.cdsDetCxC.FieldByName('ClieID').Value   := DM1.cdsCanjes.fieldbyname('ClieId').Value;
   DM1.cdsDetCxC.FieldByName('ClieRuc').Value  := DM1.cdsCanjes.fieldbyname('ClieRuc').Value;
   DM1.cdsDetCxC.FieldByName('DocID').Value    := DM1.cdsCanjes.fieldbyname('DocID').Value;
   DM1.cdsDetCxC.FieldByName('CCSerie').Value  := DM1.cdsCanjes.fieldbyname('CCSerie').Value;
   DM1.cdsDetCxC.FieldByName('CCNoDoc').Value  := DM1.cdsCanjes.fieldbyname('CCNoDoc').Value;
   DM1.cdsDetCxC.FieldByName('CCglosa').Value  := DM1.cdsCCanje.fieldbyname('CjGlosa').AsString;
   DM1.cdsDetCxC.FieldByName('CCDH').Value     := 'H';
   DM1.cdsDetCxC.FieldByName('CCTCamPr').Value := DM1.cdsCanjes.fieldbyname('CCTCamCje').Value;
   DM1.cdsDetCxC.FieldByName('CCTCamPa').Value := DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat;
   DM1.cdsDetCxC.FieldByName('TMonID').Value   := DM1.cdsCanjes.fieldbyname('TmonID').Value;
   if DM1.cdsCanjes.FieldByName('TmonID').Value=dm1.wTMonExt then
      DM1.cdsDetCxC.FieldByName('CCMtoOri').Value := DM1.cdsCanjes.fieldbyname('CCMtoExt').Value
   else begin
      DM1.cdsDetCxC.FieldByName('CCMtoOri').Value := DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value;
   end;
   DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value := FRound(DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value + xDifCLoc,15,2);
   DM1.cdsDetCxC.FieldByName('CCMtoExt').Value := FRound(DM1.cdsCanjes.fieldbyname('CCMtoExt').Value + xDifCExt,15,2);
   DM1.cdsDetCxC.FieldByName('CCFEmis').Value  := DM1.cdsCanjes.fieldbyname('CCFEmis').Value;
   DM1.cdsDetCxC.FieldByName('CCFVcmto').Value := DM1.cdsCanjes.fieldbyname('CCFVcmto').Value;
   DM1.cdsDetCxC.FieldByName('CCFComp').Value  := dtpFComp.Date;
   DM1.cdsDetCxC.FieldByName('CCEstado').Value := 'P';
   DM1.cdsDetCxC.FieldByName('CCMM').Value     := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
   DM1.cdsDetCxC.FieldByName('CCDD').Value     := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
   DM1.cdsDetCxC.FieldByName('CCTri').Value    := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
   DM1.cdsDetCxC.FieldByName('CCSem').Value    := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
   DM1.cdsDetCxC.FieldByName('CCSS').Value     := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
   DM1.cdsDetCxC.FieldByName('CCAATri').Value  := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASem').Value  := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
   DM1.cdsDetCxC.FieldByName('CCAASS').Value   := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
   DetCxCUsuario;  // Graba Usuario, Fecha y Hora
   DM1.cdsPost( DM1.cdsDetCxC );

   NGrabaDiferenciaCambio;
end;

procedure TFLetras1.NGeneraDiferenciaCambio;
begin
   xDifCLoc:=0;
   xDifCExt:=0;
   if DM1.cdsCanjes.fieldbyname('TmonID').Value=dm1.wTMonExt then begin
      xPagAnt := FRound( DM1.cdsCanjes.fieldbyname('CCMtoExt').Value*DM1.cdsCanjes.fieldbyname('CCTCamDoc').Value,15,2);
      If DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value > xPagAnt then begin
         xDifCam  := FRound( DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value - xPagAnt,15,2);
         xDifCLoc := FRound( (-1)*(DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value - xPagAnt),15,2);
         xCtaDif  := DM1.wDifAjuG;
         xCptoDif := dm1.wCptoAjG;
         xGloDif  := 'Ganancia - Ajuste por Diferencia de Cambio';
         xDH      := 'H'
         end
      else begin
         xDifCam  := FRound(xPagAnt - DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value,15,2);
         xDifCLoc := FRound(xPagAnt - DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value,15,2);
         xCtaDif  := DM1.wDifAjuP;
         xCptoDif := dm1.wCptoAjP;
         xGloDif  := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH      := 'D'
      end;
      end
   else begin
      xPagAnt := FRound( DM1.cdsCanjes.fieldbyname('CCMtoLoc').Value/DM1.cdsCanjes.fieldbyname('CCTCamDoc').Value,15,2);
      If DM1.cdsCanjes.fieldbyname('CCMtoExt').Value > xPagAnt then begin
         xDifCam  := FRound( DM1.cdsCanjes.fieldbyname('CCMtoExt').Value - xPagAnt,15,2);
         xDifCExt := FRound( (-1)*(DM1.cdsCanjes.fieldbyname('CCMtoExt').Value - xPagAnt),15,2);
         xGloDif  := 'Ganancia - Ajuste por Diferencia de Cambio';
         xCtaDif  := dm1.wDifAjuG;
         xCptoDif := dm1.wCptoAjG;
         xDH      := 'H'
         end
      else begin
         xDifCam  := xPagAnt - DM1.cdsCanjes.fieldbyname('CCMtoExt').Value;
         xDifCExt := xPagAnt - DM1.cdsCanjes.fieldbyname('CCMtoExt').Value;
         xCtaDif  := dm1.wDifAjuP;
         xCptoDif := dm1.wCptoAjP;
         xGloDif  := 'Perdida - Ajuste por Diferencia de Cambio';
         xDH      := 'D'
      end;
   end;
end;

procedure TFLetras1.NGrabaDiferenciaCambio;
begin
   If xDifCam > 0 Then begin
      DM1.cdsDetCxC.Insert;
      DM1.cdsDetCxC.FieldByName('CiaID').Value    := DM1.cdsCCanje.fieldbyname('CiaID').AsString;
      DM1.cdsDetCxC.FieldByName('TCanjeID').Value := DM1.cdsCCanje.fieldbyname('TCanjeID').AsString;
      DM1.cdsDetCxC.FieldByName('CCCanje').Value  := DM1.cdsCCanje.fieldbyname('Canje').Value;
      DM1.cdsDetCxC.FieldByName('TDiarID').Value  := DM1.cdsCCanje.fieldbyname('TDiarID').AsString;
      DM1.cdsDetCxC.FieldByName('CCNoReg').Value  := DM1.cdsCCanje.fieldbyname('CCCmprb').Value;
      DM1.cdsDetCxC.FieldByName('CCCmprb').Value  := DM1.cdsCCanje.fieldbyname('CCCmprb').Value;
      DM1.cdsDetCxC.FieldByName('CCAnoMes').Value := DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
      DM1.cdsDetCxC.FieldByName('CCAAAA').Value   := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
      DM1.cdsDetCxC.FieldByName('CuentaID').value := xCtaDif;
      DM1.cdsDetCxC.FieldByName('CptoID').value   := xCptoDif;
      DM1.cdsDetCxC.FieldByName('ClAuxID').Value  := dblcClAux.Text;
      DM1.cdsDetCxC.FieldByName('ClieID').Value   := DM1.cdsCCanje.fieldbyname('ClieId').AsString;
      DM1.cdsDetCxC.FieldByName('ClieRuc').Value  := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
      DM1.cdsDetCxC.FieldByName('DocID').Value    := DM1.cdsCanjes.fieldbyname('DocID').Value;
      DM1.cdsDetCxC.FieldByName('CCSerie').Value  := DM1.cdsCanjes.fieldbyname('CCSerie').Value;
      DM1.cdsDetCxC.FieldByName('CCNoDoc').Value  := DM1.cdsCanjes.fieldbyname('CCNoDoc').Value;
      DM1.cdsDetCxC.FieldByName('CCglosa').Value  := xGloDif;
      DM1.cdsDetCxC.FieldByName('CCDH').Value     := xDH;
      DM1.cdsDetCxC.FieldByName('CCTCamPr').Value := DM1.cdsCanjes.fieldbyname('CCTCamDoc').Value;
      DM1.cdsDetCxC.FieldByName('CCTCamPa').Value := DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat;
      //
      if DM1.cdsCanjes.fieldbyname('TMonID').Value=dm1.wTMonExt then begin
         DM1.cdsDetCxC.FieldByName('CCMtoOri').Value := FRound(xDifCam,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value := FRound(xDifCam,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoExt').Value := 0;
         end
      else begin
         DM1.cdsDetCxC.FieldByName('CCMtoOri').Value := FRound(xDifCam,15,2);
         DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value := 0;
         DM1.cdsDetCxC.FieldByName('CCMtoExt').Value := FRound(xDifCam,15,2);
      end;
      //
      DM1.cdsDetCxC.FieldByName('CCFEmis').Value  := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
      DM1.cdsDetCxC.FieldByName('CCFVcmto').Value := DM1.cdsCCanje.fieldbyname('CJFCanje').Value;
      DM1.cdsDetCxC.FieldByName('CCFComp').Value  := DM1.cdsCCanje.fieldbyname('CJFComp').Value;
      DM1.cdsDetCxC.FieldByName('CCEstado').Value := 'P';
      DM1.cdsDetCxC.FieldByName('TMonID').Value   := DM1.cdsCCanje.fieldbyname('TMonId').AsString;
      DM1.cdsDetCxC.FieldByName('CCMM').Value     := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
      DM1.cdsDetCxC.FieldByName('CCDD').Value     := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
      DM1.cdsDetCxC.FieldByName('CCTri').Value    := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
      DM1.cdsDetCxC.FieldByName('CCSem').Value    := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
      DM1.cdsDetCxC.FieldByName('CCSS').Value     := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
      DM1.cdsDetCxC.FieldByName('CCAATri').Value  := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASem').Value  := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASS').Value   := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
      DM1.cdsDetCxC.FieldByName('CCFReg').Value   := Date;
      DM1.cdsDetCxC.FieldByName('CCHReg').Value   := Time;
      DM1.cdsDetCxC.FieldByName('CCUser').Value   := DM1.wUsuario;
      DM1.cdsPost( DM1.cdsDetCxC );
   end;
end;

procedure TFLetras1.ppHeaderBand1BeforePrint(Sender: TObject);
begin
   pplCia.Caption :=edtCia.Text;
   pplMon.Caption :=edtTMon.Text;
   pplClie.Caption:=edtClie.Text;
end;

procedure TFLetras1.ppVariable1Calc(Sender: TObject; var Value: Variant);
var
   xWhere : String;
begin
   xWhere:= 'DocId='+''''+DM1.cdsCanjes.FieldByName('DOCID').AsString+'''';
   Value := BuscaQry('dspTGE','TGE110','*',xWhere,'DocDes');
end;

procedure TFLetras1.ppVariable2Calc(Sender: TObject; var Value: Variant);
var
   xWhere : String;
begin
   xWhere:= 'TMonId='+''''+DM1.cdsCanjes.FieldByName('TMONID').AsString+'''';
   Value := BuscaQry('dspTGE','TGE103','*',xWhere,'TMonAbr');
end;

procedure TFLetras1.ppDetailBand4BeforePrint(Sender: TObject);
var
  sMON : String;
begin
//   sCIA:=edtCia.Text;
//   sCLI:=dblcdClie.text;
//   sAval:=dblcdAval.text;
   sMON:=dblcTMon.text;

   pplLetras.Caption:=StrNum( DM1.cdsLetras.FieldByName( 'CCMTOORI' ).Value )+' '+DisplayDescrip( 'TGE103','TMONDES', 'TMONID',sMON );
//   pplClie2.Caption :=DisplayDescrip( 'TGE204','CLIEDES','ClieId',sCLI );
//   pplAval2.Caption :=DisplayDescrip( 'TGE204','CLIEDES','ClieId',sAval );
//   pplMon1.Caption   :=DisplayDescrip( 'TGE103','TMONABR', 'TMONID',sMON );
{   pplLetras.Caption:='*****'+trIM(StrNum( DM1.cdsLetras.FieldByName( 'CCMTOORI' ).Value))+'  '+
   displaydescrip('TGE103','TMONDES','TMONID',dblcTMon.text) + '*****';
   pplCia3.Caption :=edtCia.Text;
   pplGirado.Width := 60;
   pplDomicilio.Width := 60;
   pplGirado.Caption:= dbeGirado.Text;
   pplDomicilio.Caption:= displaydescrip('TGE204','CLIEDIR','CLIEID',dblcdClie.text);
   PPLtELF.Caption:= displaydescrip('TGE204','CLIETELF','CLIEID',dblcdClie.text);}
end;

procedure TFLetras1.bbtnImpLetClick(Sender: TObject);
var
   xRegAct : TBookMark;
   sSIT, xWhere    : String;
   sSQL:string;
begin
   if not VerificaTotal then Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');

   if (DM1.SRV_D = 'DB2NT') or
      (DM1.SRV_D = 'DB2400') then
   begin
     sSQL:=' SELECT S.SITUADES,LTRIM(RTRIM(COALESCE(C.CLIEDIR,'''')||'' - ''||COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(T.TVTADES,''''))) '+
           ' CLIEDIRINC, '+
           ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* '+
           ' FROM CXC301 '+
           ' LEFT JOIN TGE103 M ON M.TMONID=CXC301.TMONID '+
           ' LEFT JOIN CXC105 U ON U.UBICAID=CXC301.UBIID '+
           ' LEFT JOIN TGE204 C ON C.CIAID=CXC301.CIAID AND C.CLAUXID=CXC301.CLAUXID AND C.CLIEID=CXC301.CLIEID  '+
           ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID '+
           ' LEFT JOIN FAC105 T ON T.TVTAID=CXC301.TVTAID '+
           ' LEFT JOIN CXC104 S ON S.SITUAID=CXC301.SITID '+
           ' WHERE CXC301.CIAID ='+QuotedStr(DM1.cdsLetras.FieldByName('CIAID').AsString)+
           ' AND CXC301.TCANJEID ='+QuotedStr('LC')+
           ' AND CXC301.CCCANJE  ='+QuotedStr(edtCanje.text)
   end
   else
   //REVISAR EN DERRAMA
   // 04/10/2001
   begin
     if DM1.SRV_D = 'ORACLE' then
     begin
       sSQL:=' SELECT S.SITUADES,LTRIM(RTRIM(NVL(C.CLIEDIR,'''')||'' - ''||NVL(Z.ZVTADES,'''')||'' - ''||NVL(T.TVTADES,''''))) '+
             ' CLIEDIRINC, '+
             ' C.ZONVTAID,C.CLIETELF,M.TMONABR,M.TMONDES,U.UBICADES,C.CLIEDES,CXC301.* '+
             ' FROM CXC301,TGE103 M,CXC105 U,TGE204 C,FAC106 Z,FAC105 T,CXC104 S '+
             ' WHERE CXC301.CIAID ='+QuotedStr(DM1.cdsLetras.FieldByName('CIAID').AsString)+
             ' AND CXC301.TCANJEID ='+QuotedStr('LC')+
             ' AND CXC301.CCCANJE  ='+QuotedStr(edtCanje.text)+
             ' AND M.TMONID(+)=CXC301.TMONID AND U.UBICAID(+)=CXC301.UBIID AND C.CLIEID(+)=CXC301.CLIEID  '+
             ' AND Z.ZVTAID(+)=C.ZONVTAID AND T.TVTAID(+)=CXC301.TVTAID AND S.SITUAID(+)=CXC301.SITID ';
     end;
   end;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(sSQL);
  DM1.cdsQry.Open;

  if DM1.cdsQry.Recordcount=0 then
  begin
    showMessage('No hay letras pendientes de impresión');
    exit;
  end;
  ppdbpLetras.DataSource:=DM1.dsQry;

   xFlagP := False;
   pprLetras.TEMPLATE.FileName := ExtractFilePath( application.ExeName ) + wRutaRpt + '\Letras.Rtm';
   pprLetras.template.LoadFromFile ;

   pprLetras.Print;
   if xFlagP then begin
      DM1.cdsLetras.DisableControls;
      xRegAct := DM1.cdsLetras.GetBookmark;
      DM1.cdsLetras.First;

      xWhere:= 'SITUAFLAG=''2''';
      sSIT  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

      while not DM1.cdsLetras.eof do begin

         DM1.cdsLetras.Edit;
         if CambioSituacion( DM1.cdsLetras.fieldbyname('SitID').AsString, sSIT) then begin
            SetHyst(dblcCia.Text, dblcTDoc.Text, DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
//          DM1.cdsLetrasUbiID.AsString := '';
            DM1.cdsLetras.fieldbyname('SitID').AsString := sSIT;
            DM1.cdsLetras.fieldbyname('CCFSitua').Value := Date;
         end;
         DM1.cdsLetras.fieldbyname('CCEstado').Value := 'I';
         DM1.cdsLetras.fieldbyname('CCUser').Value   := DM1.wUsuario;
         DM1.cdsLetras.fieldbyname('CCFReg').Value   := date;
         DM1.cdsLetras.fieldbyname('CCHReg').Value   := Time;
         DM1.cdsPost( DM1.cdsLetras );
         DM1.cdsLetras.Next;
      end;
      DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );
      DM1.cdsLetras.GotoBookmark(xRegAct);
      DM1.cdsLetras.FreeBookmark(xRegAct);
      DM1.cdsLetras.EnableControls;

      ShowMessage('Letras Impresas');
   end;
  ppdbpLetras.DataSource:=Nil;
end;

procedure TFLetras1.pprLetrasPrintingComplete(Sender: TObject);
begin
   xFlagP := True;
end;

procedure TFLetras1.dtpFVcmtoExit(Sender: TObject);
begin
   if dtpFVcmto.Date<=dtpFValor.Date then begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create( 'Fecha de Vencimiento debe Ser Mayor a '+DateToStr(dtpFValor.Date) );
   end;
end;

procedure TFLetras1.Z2bbtnImpCanjeClick(Sender: TObject);
var
   x10:integer;
begin
   pprCanje.TEMPLATE.FileName := ExtractFilePath( application.ExeName ) + wRutaRpt + '\CanjeLetras.rtm';
   pprCanje.template.LoadFromFile ;

//ppDesigner1.Show;
   pprCanje.Print;
   pprCanje.Stop;
   x10:=Self.ComponentCount-1;
   while x10>=0 do
   begin
  	if Self.Components[ x10 ].ClassName='TppGroup' then
    begin
    	Self.Components[ x10 ].Free ;
    end;
    x10:=x10-1;
   end;
end;

procedure TFLetras1.dblcdClieEnter(Sender: TObject);
begin
   if dblcClAux.Text='' then
      dblcClAux.SetFocus;

   DM1.cdsClie.IndexFieldNames:='ClieDes';
end;

procedure TFLetras1.dblcdClieRucEnter(Sender: TObject);
begin
   if dblcClAux.Text='' then
      dblcClAux.SetFocus;

   DM1.cdsClie.IndexFieldNames:='ClieDes';
end;

procedure TFLetras1.dblcClAuxExit(Sender: TObject);
var
   xWhere : String;
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;
//CLG : 27/02/2002
   if length(dblcClAux.text)=0 then
   begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Ingrese Clase Auxiliar');
   end;

   Filtracds( DM1.cdsClie,'Select CLIEID,CLIEDES,CLIERUC,VEID,TVTAID,ZONVTAID from TGE204 Where CIAID='+QuotedStr(dblcCia.text)+' AND CLAUXID='+QuotedStr(dblcClAux.Text));
end;

procedure TFLetras1.dtpFValorExit(Sender: TObject);
begin
{    If dtpFValor.Date < dtpFEmis.date then
    begin
     dtpFValor.setfocus;
      Raise Exception.Create('Error :  Fecha de Giro'+chr(13)
                            +'no puede ser menor que la Fecha de Canje');
    end;}
end;

procedure TFLetras1.pprCanjePreviewFormCreate(Sender: TObject);
begin
   pprCanje.PreviewForm.ClientHeight := 550;
   pprCanje.PreviewForm.ClientWidth  := 700;
   TppViewer(pprCanje.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;
/////CIM 22/05/2001
function TFLetras1.PerteneceCondicionPago(xxCond : string):boolean;
var
    xRegAct               : TBookMark;
    xCont                 : integer;
    xCia, xTDiar,xPeriodo,xNReg, xFPago : string;
begin
   result := false;
   if (DM1.cdsCanjes.RecordCount =0) then
      wFlagCond := xxCond;
   if DM1.cdsCanjes.RecordCount >0 then begin
       DM1.cdsCanjes.DisableControls;
       xRegAct := DM1.cdsCanjes.GetBookmark;
       xCont := 0;
       DM1.cdsCanjes.First;
       while not DM1.cdsCanjes.Eof do begin
          //if DM1.cdsMovCxC2.GotoKey then begin   no hace caso
          //if Dm1.cdsMovCxC2.Locate ('CIAID;TDIARID;CCANOMES;CCNOREG',VarArrayOf([xcia,xTDiar,xPeriodo,xNReg]) ,[loCaseInsensitive]) then begin
             xFPago := wFlagCond;
           if (xFPago <> xxCond) then begin
              xCont := xCont +1;
              if xCont >=1 then begin
                 result := true;
                 exit;
              end;
           end;
          DM1.cdsCanjes.Next;
       end; //while

       DM1.cdsCanjes.GotoBookmark(xRegAct);
       DM1.cdsCanjes.FreeBookmark(xRegAct);
       DM1.cdsCanjes.EnableControls;
   end;//if
end;

///////////////////

procedure TFLetras1.ppDetailBand3BeforePrint(Sender: TObject);
begin
  ppDBText4.text := BuscaQry('dspTGE','TGE103','TMONABR','TMONID='+quotedstr(dm1.cdsletras.fieldbyname('TMONID').AsString),'TMONABR');
end;

procedure TFLetras1.dbgDetCxC2DblClick(Sender: TObject);
begin

   if (btnActReg1.Enabled) or ((DM1.cdsCCanje.FieldByName('CJEstado').AsString = 'I') or
         (DM1.cdsCCanje.FieldByName('CJEstado').AsString = 'T') ) then
   begin
//      pnlDetalle.Enabled :=False                  ;
      pnlPie.Enabled     :=False                  ;
      pnlRegistro1.Enabled:=True                   ;
      pnlRegistro1.Visible:=True                   ;
//      pnlRegistro1.SetFocus                        ;
      DM1.cdsDetCxC2.Edit                          ;
      dblcTipReg.Text:=DM1.cdsDetCxC2.FieldByName('TREGID').AsString  ;
      dblcTipRegExit(Sender)                      ;
      dblcTipReg.Enabled := False                 ;
      dm1.cdscpto.close;
       If DM1.cdsCCanje.FieldByName('TMONID').AsString = dm1.wTMonLoc then
         dm1.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )')
       else
         dm1.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND ((CPTOTMON=''E'') OR (CPTOTMON IS NULL) )') ;
      dm1.cdscpto.Open ;
      dblcdCpto.enabled:=True;
      dblcdCpto.visible:=True;
      dblcdCpto.SetFocus                          ;
      dbeImporte.Enabled := True               ;
   end ;
end;

procedure TFLetras1.dbgDetCxC2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=VK_Delete) and (ssCtrl in Shift) then
   begin
      if MessageDlg('¿Esta Seguro de Eliminar Registro?',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      begin
         DM1.cdsDetCxC2.Delete;
      end;
   end;
end;

procedure TFLetras1.btnActReg1Click(Sender: TObject);
begin
   pnlDetalle.Enabled := False;
   pnlPie.Enabled     := False;
   pnlRegistro.Visible:= True;
   pnlRegistro.SetFocus;
   DM1.cdsDetCxC.Insert;
   dblcTipReg.Enabled:= True;
   dblcTipReg.Text   := '';
   dblcTipReg.SetFocus;
end;

procedure TFLetras1.BitBtn1Click(Sender: TObject);
var
   xWhere : String;
begin
   if length(DM1.cdsDetCxC2.FieldByName('TRegId').AsString)=0 then
      raise exception.Create('Falta Tipo de Registro');
   // consistencia Concepto
   if length(DM1.cdsDetCxC2.FieldByName('CptoId').AsString)=0 then begin
      dblcTipRegExit(self); // toma las propiedades del registro
      raise exception.Create('Falta Concepto');
   end;
   // Presupuesto
   xWhere:='CuentaId='+QuotedStr(DM1.cdsDetCxC2.FieldByName('CuentaId').AsString)+' AND CIAID='+QuotedStr(dblcCia.text);
   if Length(BuscaQry('dspTGE','TGE202','*',xWhere,'CuentaId'))>0 then begin
      if DM1.cdsQry.fieldbyname('CTA_CCOS').AsString='S' then begin
         if Length(DM1.cdsDetCxC2.FieldByName('CCosId').AsString)=0 then begin
            raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxC2.FieldByName('CuentaId').AsString)+' Obliga Centro de Costo');
         end;
      end;
      if DM1.cdsQry.fieldbyname('CTA_PRES').AsString='S' then begin
         if Length(DM1.cdsDetCxC2.FieldByName('ParPresId').AsString)=0 then begin
            raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxC2.FieldByName('CuentaId').AsString)+' Obliga Partida Presupuestal');
         end;
      end;
   end;
   // consistencia Debe Haber
   if length(DM1.cdsDetCxC2.FieldByName('CCDH').AsString)=0 then begin
      dblcTipRegExit(self); // toma las propiedades del registro
      raise exception.Create('Falta Debe/Haber');
   end;
   if DM1.cdsDetCXC2.FieldByName('CCMtoOri').AsFloat<=0 then begin
      DM1.cdsDetCxC2.Edit;
      DM1.cdsDetCxC2.FieldByName('CCMtoOri').AsFloat:=0;
      Raise Exception.Create('Importe debe Ser Mayor a Cero')
   end;
//////////
   if DM1.cdsDetCxC2.FieldByName('TMonid').AsString=DM1.wTMonLoc then
   begin
      DM1.cdsDetCxC2.FieldByName('CCMtoLoc').AsFloat:=DM1.cdsDetCxC2.FieldByName('CCMtoOri').AsFloat;
      if DM1.cdsDetCxC2.FieldByName('CCTCamPr').AsFloat>0 then begin
         DM1.cdsDetCxC2.FieldByName('CCMtoExt').AsFloat:=FRound(DM1.cdsDetCxC2.FieldByName('CCMtoOri').AsFloat/DM1.cdsDetCxC2.FieldByName('CCTCamPr').AsFloat,15,2);
      end;
   end
   else begin
      DM1.cdsDetCxC2.FieldByName('CCMtoLoc').AsFloat:=FRound(DM1.cdsDetCxC2.FieldByName('CCMtoOri').AsFloat*DM1.cdsDetCxC2.FieldByName('CCTCamPr').AsFloat,15,2);
      DM1.cdsDetCxC2.FieldByName('CCMtoExt').AsFloat:=DM1.cdsDetCxC2.FieldByName('CCMtoOri').AsFloat;
   end;

   if DM1.cdsDetCxC2.State=dsInsert then
   begin
      DM1.cdsPost( DM1.cdsDetCxC2 );
      DM1.cdsDetCxC2.Insert;
      dblcTipReg.Text:='';
      dblcTipReg.Enabled:=True;
      dblcTipReg.SetFocus;
   end
   else begin
      DM1.cdsPost( DM1.cdsDetCxC2 );
      pnlRegistro1.Visible:=False;
      pnlDetalle.Enabled  :=True;
      pnlPie.Enabled     :=True;
   end;
end;

procedure TFLetras1.BitBtn2Click(Sender: TObject);
begin
   if DM1.cdsDetCxC2.State=dsInsert then
      DM1.cdsDetCxC2.Delete
   else begin
      DM1.cdsDetCxC2.Cancel;
   end;
   pnlRegistro1.Visible:= False;
   pnlDetalle.Enabled  := True;
   pnlPie.Enabled     := True;
   dbgDetCxC2.SetFocus;
end;

procedure TFLetras1.dblcTipRegExit(Sender: TObject);
var
   xWhere : String;
begin
   if bbtnRegCanc.Focused then Exit;

   edtTipReg.Text:=DisplayDescrip('TGE128','TREGDES','TREGID',dblcTipReg.Text);

   if length(edtTipReg.Text)=0 then
   begin
      ShowMessage('Debe Ingresar Tipo de Registro');
      dblcTipReg.SetFocus;
      exit;
   end;
   if DM1.cdsDetCxC2.State=dsInsert then
   begin
      with DM1 do begin
         cdsDetCxC2.FieldByName('CiaId').AsString     := cdsMovCxC.FieldByName('CiaId').AsString;
         cdsDetCxC2.FieldByName('TDiarId').AsString   := cdsMovCxC.FieldByName('TDiarId').AsString;
         cdsDetCxC2.FieldByName('CCNoReg').AsString   := cdsMovCxC.FieldByName('CCNoReg').AsString;
         cdsDetCxC2.FieldByName('CCAAAA').AsString    := copy(cdsMovCxC.FieldByName('CCAnoMes').AsString,1,4);
         cdsDetCxC2.FieldByName('CCAnoMes').AsString  := cdsMovCxC.FieldByName('CCAnoMes').AsString;
         cdsDetCxC2.FieldByName('ClAuxId').AsString   := DM1.cdsMovCxC.FieldByName('ClAuxId').AsString;
         cdsDetCxC2.FieldByName('ClieId').AsString    := cdsMovCxC.FieldByName('ClieId').AsString;
         cdsDetCxC2.FieldByName('ClieRuc').AsString   := cdsMovCxC.FieldByName('ClieRuc').AsString;
         cdsDetCxC2.FieldByName('DocId').AsString     := cdsMovCxC.FieldByName('DocId').AsString;
         cdsDetCxC2.FieldByName('CCSerie').AsString   := cdsMovCxC.FieldByName('CCSerie').AsString;
         cdsDetCxC2.FieldByName('CCNoDoc').AsString   := cdsMovCxC.FieldByName('CCNoDoc').AsString;
         cdsDetCxC2.FieldByName('CCTCamPr').AsFloat   := FRound(cdsMovCxC.FieldByName('CCTCamPr').AsFloat,7,3);
         cdsDetCxC2.FieldByName('CCFEmis').AsDatetime := cdsMovCxC.FieldByName('CCFEmis').AsDatetime;
         cdsDetCxC2.FieldByName('CCFVcmto').AsDatetime:= cdsMovCxC.FieldByName('CCFVcmto').AsDatetime;
         cdsDetCxC2.FieldByName('CCFComp').AsDatetime := cdsMovCxC.FieldByName('CCFCmprb').AsDatetime;
         cdsDetCxC2.FieldByName('TRegId').AsString    := dblcTipReg.Text;
         cdsDetCxC2.FieldByName('CCEstado').AsString  := 'I'; // Activo
         cdsDetCxC2.FieldByName('CCMM').AsString    := cdsMovCxC.FieldByName('CCMM').AsString;
         cdsDetCxC2.FieldByName('CCDD').AsString    := cdsMovCxC.FieldByName('CCDD').AsString;
         cdsDetCxC2.FieldByName('CCTri').AsString   := cdsMovCxC.FieldByName('CCTri').AsString;
         cdsDetCxC2.FieldByName('CCSem').AsString   := cdsMovCxC.FieldByName('CCSem').AsString;
         cdsDetCxC2.FieldByName('CCSS').AsString    := cdsMovCxC.FieldByName('CCSS').AsString;
         cdsDetCxC2.FieldByName('CCAATri').AsString := cdsMovCxC.FieldByName('CCAATri').AsString;
         cdsDetCxC2.FieldByName('CCAASem').AsString := cdsMovCxC.FieldByName('CCAASem').AsString;
         cdsDetCxC2.FieldByName('CCAASS').AsString  := cdsMovCxC.FieldByName('CCAASS').AsString;
         cdsDetCxC2.FieldByName('TMonId').AsString  := cdsMovCxC.FieldByName('TMonId').AsString;
      end;
   end
   else begin
      DM1.cdsDetCxC2.edit;
   end;

   if DM1.cdsDetCxC2.State=dsInsert then
   begin
      xWhere := 'TRegId='+''''+dblcTipReg.Text+'''';
      DM1.cdsDetCxC2.FieldByName('TIPDET').AsString:=BuscaQry('dspTGE','TGE128','*',xWhere,'TIPDET');
      DM1.cdsDetCxC2.FieldByName('CCDH').AsString:=DM1.cdsQry.fieldbyname('CCDH').AsString;
      if DM1.cdsDetCxC2.FieldByName('TMonId').AsString=DM1.wTMonLoc then // si es en moneda local
         begin
            DM1.cdsDetCxC2.FieldByName('CPTOID').AsString  :=DM1.cdsQry.fieldbyname('CPTOMN').AsString;
            DM1.cdsDetCxC2.FieldByName('CUENTAID').AsString:=DM1.cdsQry.fieldbyname('CUENTAMN').AsString;
         end
      else begin
         DM1.cdsDetCxC2.FieldByName('CPTOID').AsString  :=DM1.cdsQry.fieldbyname('CPTOME').AsString;
         DM1.cdsDetCxC2.FieldByName('CUENTAID').AsString:=DM1.cdsQry.fieldbyname('CUENTAME').AsString;
      end;
      If Length( DM1.cdsDetCxC2.FieldByName('CUENTAID').AsString )>0 then begin
         dblcdCptoExit(sender);
      end;
   end;

   dblcdCpto.Enabled:=True;
   DM1.cdsCptoCab.IndexFieldNames:='CptoDes';
end;

procedure TFLetras1.dblcdCptoExit(Sender: TObject);
var
  ssql, xWhere : string;
begin
   sDocIdNC:=BuscaQry('dspTGE','TGE110','DOCID','DOCMOD=''CXC'' AND DOCTIPREG=''NC''','DOCID');
   if not bbtnRegCanc.Focused then
   begin
      xWhere:= 'CPTOCAB='+''''+dblcdCpto.Text+'''';
      if length(BuscaQry('dspTGE','CXC208','*',xWhere,'CPTOCAB'))>0 then
      begin
         DM1.cdsDetCxC2.edit;
         DM1.cdsDetCxC2.FieldByName('CUENTAID').AsString:=DM1.cdsQry.fieldbyname('CUENTAID').AsString;
         xWhere:='CuentaId='+''''+DM1.cdsQry.fieldbyname('CUENTAId').AsString+''''+' AND CIAID='+quotedStr(dblcCia.text);
         if sDocIdNC=dblcTDoc.text then
         begin
           DM1.cdsDetCxC2.FieldByName('CCGLOSA').AsString:='';
         end
         else
         begin
           if Length(DM1.cdsDetCxC2.FieldByName('CCGLOSA').AsString)=0 then
           DM1.cdsDetCxC2.FieldByName('CCGLOSA').AsString:=DM1.cdsQry.fieldbyname('CPTODES').AsString;
         end;

         if Length(BuscaQry('dspTGE','TGE202','*',xWhere,'CuentaId'))>0 then
         begin
             //** 20/12/2000 - pjsv
              if (DM1.cdsQry.fieldbyname('CTA_CCOS').AsString='S') then // AND (wActuaPresu = true) then
              begin
                ssql := 'SELECT * FROM TGE203 WHERE CCOSMOV=''S''';
                DM1.cdsCCosto.Close;
                DM1.cdsCCosto.DataRequest(ssql);
                DM1.cdsCCosto.open;
                dblcdCCosto.Enabled:=true;
                dblcdCCosto.Enabled:=true
              end
              else dblcdCCosto.Enabled:=false;
              if (DM1.cdsQry.fieldbyname('CTA_PRES').AsString='S') and (wActuaPresu = true) then
              begin
                 dblcTipPre.Enabled:=true;
                 dblcdPresup.Enabled:=true;
                 lblPresu.Enabled:=true;
                 lblTipPre.Enabled:=true;
              end
              else
              begin
                 dblcTipPre.Enabled:=false;
                 dbeTipPre.Text := '';
                 dblcdPresup.Enabled:=false;
                 lblTipPre.Enabled:=false;
                 lblPresu.Enabled:=false;
              end;
               //**
         end
         else
         begin
            Raise Exception.Create('No tiene Cuenta Contable');
         end;
      end
      else
      begin
         ShowMessage(' Concepto NO encontrado, reintente!');
         dblcdCpto.SetFocus;
      end;
   end;
end;

procedure TFLetras1.wwDBEdit4Exit(Sender: TObject);
begin
  if sDocIdNC=dblcTDoc.text then
  begin
    if length(dbeGlosa.text)=0 then
    begin
      Raise Exception.Create('Ingrese Glosa de Nota de Crédito');
      dbeGlosa.setFocus;
    end;
  end
end;

procedure TFLetras1.dblcdCCostoExit(Sender: TObject);
var
   xWhere : String;
begin
   if not bbtnRegCanc.Focused then begin
      xWhere:='CCOSID='''+dblcdCCosto.Text+'''';
      edtCCosto.Text:=BuscaQry('dspTGE','TGE203','CCOSDES',xWhere,'CCOSDES');
      if Length( edtCCosto.Text)=0 then
      begin
         dblcdCCosto.SetFocus;
         raise exception.Create('Centro de Costo Errado');
      end;
   end;
end;

procedure TFLetras1.dblcTipPreExit(Sender: TObject);
begin
  if xCrea  = true then exit;
  if bbtnRegCanc.Focused then exit;
  if dblcdCCosto.Focused then exit;
//  if dblcdCnpEgr.Focused then exit;
  if dblcTipReg.Focused then exit;
  if Length(dblcTipPre.Text) = 0 then
   begin
    raise exception.Create('Falta Tipo de Presupuesto');
    dblcTipPre.SetFocus;
   end;
end;

procedure TFLetras1.dblcdPresupExit(Sender: TObject);
begin
  if xCrea  = true then exit;
  if bbtnRegCanc.Focused then exit;
  if dblcdCCosto.Focused then exit;
  // if dblcdCnpEgr.Focused then exit;
  if dblcTipReg.Focused then exit;
  //** 20/12/2000 - pjsv
  //edtPresup.Text:=DM1.DisplayDescrip('TGE216','PARPRESDES','PARPRESID',dblcdPresup.Text);
  edtPresup.Text:=DisplayDescrip('PPRES201','PARPRESDES','PARPRESID',dblcdPresup.Text);
  //**
  if Length(edtPresup.text)=0 then
   begin
    raise exception.Create('Falta Partida Presupuestal');
    dblcdPresup.SetFocus;
  end;

end;

procedure TFLetras1.dbeDHExit(Sender: TObject);
begin
   if not bbtnRegCanc.Focused then Exit;

   if (dbeDH.Text<>'D') and (dbeDH.Text<>'H') then
   begin
      ShowMessage('Digite sólo D(para Debe) o H(para Haber)');
      DM1.cdsDetCxC2.FieldByName('CCDH').Value:='';
      dbeDH.SetFocus;
   end;
end;

procedure TFLetras1.VerificaAsiento;
var xWhere:string;
begin
  DM1.cdsDetCxC2.DisableControls;
  DM1.cdsDetCxC2.First;
  while not DM1.cdsDetCxC2.EOF do                              
  begin
      if length(DM1.cdsDetCxC2.FieldByName('TRegId').AsString)=0 then
      begin
         DM1.cdsDetCxC2.EnableControls;
         raise exception.Create('Falta Tipo de Registro');
      end;

      if length(DM1.cdsDetCxC2.FieldByName('CptoId').AsString)=0 then
      begin
         DM1.cdsDetCxC2.EnableControls;
         Raise Exception.Create('Falta Concepto');
      end;

      if DM1.cdsDetCxC2.FieldByName('TIPDET').AsString='TO' then
        xConcepto:=DM1.cdsDetCxC2.FieldByName('CPTOID').AsString;

      xWhere:='CuentaId='+QuotedStr(DM1.cdsDetCxC2.FieldByName('CuentaId').AsString)+' AND CIAID='+QuotedStr(dblcCia.text);
      if Length(BuscaQry('dspTGE','TGE202','*',xWhere,'CuentaId'))>0 then
      begin
         if DM1.cdsQry.fieldbyname('CTA_CCOS').AsString='S' then
         begin
            if Length(DM1.cdsDetCxC.FieldByName('CCosId').AsString)=0 then
            begin
               DM1.cdsDetCxC2.EnableControls;
               raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxC.FieldByName('CuentaId').AsString)+' Obliga Centro de Costo');
            end;
         end;
      end;
     DM1.cdsDetCxC2.Next;
  end;
  DM1.cdsDetCxC2.EnableControls;
end;

procedure TFLetras1.bbtnImpNDClick(Sender: TObject);
begin
  TotalesNDebito;

  pprpND.TEMPLATE.FileName := ExtractFilePath( application.ExeName ) + wRutaRpt +'\NOTADEBITO.RTM';
  pprpND.template.LoadFromFile ;
  DM1.cdsDetCxC2.DisableControls;
  DM1.cdsDetCxC2.filter:=' TIPDET = ''MN'' OR TIPDET = ''MG'' ' ;
  DM1.cdsDetCxC2.filtered := true;

  pplblNDRazon.text:=DM1.BuscaQry2('dspTGE','TGE204','CLIERUC,CLIEDIR,CLIEDES','CIAID='+QuotedStr(dblcCia.text)+' AND CLIEID='+QuotedStr(dblcdClie.text),'CLIEDES');
  pplblNDDIR.text := DM1.cdsQry6.FieldByName('CLIEDIR').AsString;
  pplblNDRUC.text := dm1.cdsQry6.fieldbyname('CLIERUC').AsString;
  pplblCodCli.text := dblcdClie.text;
  pplblCodigo.text :=dblcSerie.text+ ' '+dbeNoDoc.text;
  pplblFecha.text := DateToStr(dtpFEmis.Date);

  pplblNDImpAFE.text:=  FloatToStrF(xMG, ffNumber, 10, 2);
  pplblNDImpNOAFE.text:=FloatToStrF(xMN, ffNumber, 10, 2);
  pplblNDImp.text:=     FloatToStrF(xI1, ffNumber, 10, 2);
  pplblNDTOTAL.text:=   FloatToStrF(xTO, ffNumber, 10, 2);
  pplblNDAno.text :=displaydescrip('TGE185','GLOSA','ANIO',DM1.cdsCCanje.FieldByName('CJAA').AsString);
  pplblNDLetras.Caption := 'SON:'+Trim(strNum(DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat)+'   '+displaydescrip('TGE103','TMONDES','TMONID',dblcTMon.text));//xdesmon);
  pprpND.Print;
// ppDesigner1.ShowModal;
  DM1.cdsDetCxC2.filtered := False;
  DM1.cdsDetCxC2.EnableControls;

end;

procedure TFLetras1.TotalesNDebito;
begin
  xTo:=0;
  xMG:=0;
  xI1:=0;
  xMN:=0;

  DM1.cdsDetCxC2.DisableControls;
  DM1.cdsDetCxC2.First;
  while not DM1.cdsDetCxC2.EOF do
  begin
      if DM1.cdsDetCxC2.FieldByName('TIPDET').AsString='TO' then
        xTo:=xTo+DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      if DM1.cdsDetCxC2.FieldByName('TIPDET').AsString='MG' then
        xMG:=xMG+DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      if DM1.cdsDetCxC2.FieldByName('TIPDET').AsString='I1' then
        xI1:=xI1+DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

      if DM1.cdsDetCxC2.FieldByName('TIPDET').AsString='MN' then
        xMN:=xMN+DM1.cdsDetCxC2.FieldByName('CCMTOORI').AsFloat;

     DM1.cdsDetCxC2.Next;
  end;
  DM1.cdsDetCxC2.EnableControls;
end;

procedure TFLetras1.NotInList(Sender: TObject; LookupTable: TDataSet;
  NewValue: String; var Accept: Boolean);
begin
  if TwwDBCustomLookupCombo(Sender).Text = '' then Accept := True;
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFLetras1.ModificaMontos;
begin
   if dbgDocCanje.SelectedField.FieldName='CCTCAMCJE' then
   begin
      dbgDocCanje.RefreshDisplay;
   end;

   if dbgDocCanje.SelectedField.FieldName='CCMTOLOC' then
   begin
     if ( DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat>DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat ) OR
        ( DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat<0 ) then
     begin
       if (DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat>DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat) then
         ShowMessage(' Error :  Monto excede a Saldo Actual ')
       else
            ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');
       DM1.cdsCanjes.Edit;
       DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat:=DM1.cdsCanjes.fieldbyname('CjeAntMN').AsFloat;
       DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat := FRound( DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCAMCJE').AsFloat,15,2);

       DM1.cdsPost( DM1.cdsCanjes );

       DM1.cdsCanjesClone.Setkey;
       DM1.cdsCanjesClone.FieldByName('CIAID').AsString:= DM1.cdsCanjes.FieldByName('CIAID').AsString;
       DM1.cdsCanjesClone.FieldByName('CLIEID').AsString:=DM1.cdsCanjes.FieldByName('CLIEID').AsString;
       DM1.cdsCanjesClone.FieldByName('DOCID').AsString:=DM1.cdsCanjes.FieldByName('DOCID').AsString;
       DM1.cdsCanjesClone.FieldByName('CCSERIE').AsString:=DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
       DM1.cdsCanjesClone.FieldByName('CCNODOC').AsString:=DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
       if DM1.cdsCanjesClone.Gotokey then
       begin
         DM1.cdsCanjesClone.Edit;
         DM1.cdsCanjesClone.fieldbyname('CCMTOLOC').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCMTOEXT').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat;
         DM1.cdsPost( DM1.cdsCanjesClone );
       end;

       dbgDocCanje.SelectedIndex:=8; // debería ser 9 pero no hace caso
       dbgDocCanje.SelectedIndex:=9; // debería ser 9 pero no hace caso
     end
     else
     begin
       DM1.cdsCanjes.Edit;
       DM1.cdsCanjes.fieldbyname('CCMTOORI').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat;
       DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat := FRound( DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCAMCJE').AsFloat,15,2);

       DM1.cdsPost( DM1.cdsCanjes );
       DM1.cdsCanjesClone.Setkey;
       DM1.cdsCanjesClone.FieldByName('CIAID').AsString:= DM1.cdsCanjes.FieldByName('CIAID').AsString;
       DM1.cdsCanjesClone.FieldByName('CLIEID').AsString:=DM1.cdsCanjes.FieldByName('CLIEID').AsString;
       DM1.cdsCanjesClone.FieldByName('DOCID').AsString:=DM1.cdsCanjes.FieldByName('DOCID').AsString;
       DM1.cdsCanjesClone.FieldByName('CCSERIE').AsString:=DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
       DM1.cdsCanjesClone.FieldByName('CCNODOC').AsString:=DM1.cdsCanjes.FieldByName('CCNODOC').AsString;

       if DM1.cdsCanjesClone.Gotokey then
       begin
         DM1.cdsCanjesClone.Edit;
         DM1.cdsCanjesClone.fieldbyname('CCMTOORI').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOORI').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCMTOLOC').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCMTOEXT').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat;

         DM1.cdsPost( DM1.cdsCanjesClone );
       end;
       bbtnSumatClick(Self);
     end;
   end;

   if dbgDocCanje.SelectedField.FieldName='CCMTOEXT' then
   begin
     if ( DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat>DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat ) or
        ( DM1.cdsCanjes.fieldbyname('CCMtoEXT').AsFloat<0 ) then
     begin
       if (DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat>DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat) then
         ShowMessage('Monto excede a Saldo Actual')
       else
         ShowMessage(' Error :  Monto Debe Ser Mayor a Cero ');
       DM1.cdsCanjes.Edit;
       DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat;
       DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat := FRound( DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCAMCJE').AsFloat,15,2);

       DM1.cdsPost( DM1.cdsCanjes );

       DM1.cdsCanjesClone.Setkey;
       DM1.cdsCanjesClone.FieldByName('CIAID').AsString:= DM1.cdsCanjes.FieldByName('CIAID').AsString;
       DM1.cdsCanjesClone.FieldByName('CLIEID').AsString:=DM1.cdsCanjes.FieldByName('CLIEID').AsString;
       DM1.cdsCanjesClone.FieldByName('DOCID').AsString:=DM1.cdsCanjes.FieldByName('DOCID').AsString;
       DM1.cdsCanjesClone.FieldByName('CCSERIE').AsString:=DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
       DM1.cdsCanjesClone.FieldByName('CCNODOC').AsString:=DM1.cdsCanjes.FieldByName('CCNODOC').AsString;

       if DM1.cdsCanjesClone.Gotokey then
       begin
         DM1.cdsCanjesClone.Edit;
         DM1.cdsCanjesClone.fieldbyname('CCMTOLOC').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCMTOEXT').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat;
         DM1.cdsPost( DM1.cdsCanjesClone );
       end;

       dbgDocCanje.SelectedIndex:=9; // debería ser 9 pero no hace caso
       dbgDocCanje.SelectedIndex:=10; // debería ser 9 pero no hace caso
     end
     else
     begin
       DM1.cdsCanjes.Edit;
       DM1.cdsCanjes.fieldbyname('CCMtoORI').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat;
       DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat := FRound( DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCAMCJE').AsFloat,15,2);

       DM1.cdsPost( DM1.cdsCanjes );

       DM1.cdsCanjesClone.Setkey;
       DM1.cdsCanjesClone.FieldByName('CIAID').AsString:= DM1.cdsCanjes.FieldByName('CIAID').AsString;
       DM1.cdsCanjesClone.FieldByName('CLIEID').AsString:=DM1.cdsCanjes.FieldByName('CLIEID').AsString;
       DM1.cdsCanjesClone.FieldByName('DOCID').AsString:=DM1.cdsCanjes.FieldByName('DOCID').AsString;
       DM1.cdsCanjesClone.FieldByName('CCSERIE').AsString:=DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
       DM1.cdsCanjesClone.FieldByName('CCNODOC').AsString:=DM1.cdsCanjes.FieldByName('CCNODOC').AsString;

       if DM1.cdsCanjesClone.Gotokey then
       begin
         DM1.cdsCanjesClone.Edit;
         DM1.cdsCanjesClone.fieldbyname('CCMTOORI').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOORI').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCMTOEXT').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOEXT').AsFloat;
         DM1.cdsCanjesClone.fieldbyname('CCMTOLOC').AsFloat:=DM1.cdsCanjes.fieldbyname('CCMTOLOC').AsFloat;
         DM1.cdsPost( DM1.cdsCanjesClone );
       end;
       bbtnSumatClick(Self);
     end;
   end;
end;

procedure TFLetras1.dbgDocCanjeColEnter(Sender: TObject);
begin
//   ModificaMontos;
end;

procedure TFLetras1.GrabaDetCanje1;
var
   xSalLoc,xSalExt,xSaldoC,xSaldoL : Double;
   sFiltroOriginal,sFiltroAbonosDi,sFiltroAbonosIg,sFiltroAbonosIg1,sSQL:string;

begin
   sFiltroAbonosDi:='';
   sFiltroAbonosIg:='';
   sFiltroOriginal:='';
   sFiltroOriginal:=DM1.cdsCanjes.Filter;

   sSQL:='SELECT DOCID FROM TGE110 WHERE DOCMOD=''CXC'' AND DOCRESTA=''S'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   while not DM1.cdsQry.EOF do
   begin
     if DM1.cdsQry.RecordCount=1 then
     begin
       sFiltroAbonosIg:='(DOCID='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
       sFiltroAbonosIg1:='(DOCID2='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
       sFiltroAbonosDi:='(DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
     end
     else
       if DM1.cdsQry.RecordCount=DM1.cdsQry.RecNo then
       begin
         sFiltroAbonosIg:=sFiltroAbonosIg+' (DOCID='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') ';
         sFiltroAbonosIg1:=sFiltroAbonosIg1+' (DOCID2='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
         sFiltroAbonosDi:=sFiltroAbonosDi+' (DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') ';
       end
       else
       begin
         sFiltroAbonosIg:=sFiltroAbonosIg+' (DOCID='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') OR ';
         sFiltroAbonosIg1:=sFiltroAbonosIg1+' (DOCID2='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') OR ';
         sFiltroAbonosDi:=sFiltroAbonosDi+' (DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') AND ';
       end;
     DM1.cdsQry.Next;
   end;

   if sFiltroOriginal<>'' then
     DM1.cdsCanjes.Filter:=sFiltroOriginal+' AND '+sFiltroAbonosIg
   else
     DM1.cdsCanjes.Filter:=sFiltroAbonosIg;
   DM1.cdsCanjes.Filtered:=True;

   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.EOF do
   begin
     InsertaRegistrosdeAbonos;
     DM1.cdsCanjes.Next;
   end;


   if sFiltroOriginal<>'' then
     DM1.cdsCanjes.Filter:=sFiltroOriginal+' AND '+sFiltroAbonosDi
   else
     DM1.cdsCanjes.Filter:=sFiltroAbonosDi;
   DM1.cdsCanjes.Filtered:=True;

   DM1.cdsDetCanje.EmptyDataSet;

   DM1.cdsLetras.First;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;

// Inicio de los Documentos a Canjear SIN NOTAS DE ABONO
   while not DM1.cdsCanjes.Eof do
   begin
      if DM1.cdsCanjes.fieldbyname('TMonID').AsString=DM1.wTMonLoc Then
         xSaldoC := DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat
      else
      begin
         xSaldoC := DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat;
      end;
   // xSaldoC es el Saldo del Cargo
      xSalLoc := DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat;
      xSalExt := DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat;
      while xSaldoC > 0 do
      begin
         while (not DM1.cdsLetras.Eof) and (xSaldoC>0) do
         begin
            if DM1.cdsCanjes.fieldbyname('TMonID').AsString=DM1.wTMonLoc Then
               xSaldoL := DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat
            else begin
               xSaldoL := DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
            end;
         // xSaldoL es el Saldo de la Letra

            DM1.cdsDetCanje.Insert;
            if xSaldoL<=xSaldoC then
            begin
               // Grabar en cxp305 en monto = a la letra
               GrabaRegCxP305;
               If DM1.cdsDetCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
                  xSalLoc := FRound(xSalLoc-DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  xSalExt := FRound(xSalExt-DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  xSaldoC := xSalLoc;
               end
               else
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
                  xSalExt := FRound(xSalExt-DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  xSalLoc := FRound(xSalLoc-DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  xSaldoC := xSalExt;
               end;
               DM1.cdsPost( DM1.cdsDetCanje );

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.fieldbyname('CCMtoLoc').Value := 0;
               DM1.cdsLetras.Delete;
            end
            else
            begin



               // Grabar en cxp305 en monto = xSalLoc
               GrabaRegCxP305;
               If DM1.cdsDetCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(xSalLoc,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(xSalLoc,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(xSalLoc/DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
               end
               else
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(xSalExt,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(xSalExt,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(xSalExt*DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
               end;
               DM1.cdsPost( DM1.cdsDetCanje );

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat-xSalLoc,15,2);
               DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat-xSalExt,15,2);
               DM1.cdsPost( DM1.cdsLetras );
               xSalLoc := 0;
               xSalExt := 0;
               xSaldoC := 0;
            end;
         end;
      end;
      DM1.cdsCanjes.Next;
   end;

   // CREA EL ABONO DE LA NOTA DE CREDITO CON LA FACTURA
   DM1.cdsDetCanje.Filter:=sFiltroAbonosIg1;
   DM1.cdsDetCanje.Filtered:=True;

   DM1.cdsDetCanje.First;
   while not DM1.cdsDetCanje.EOf do
   begin
      sSQL:='INSERT INTO CXC305(CIAID,CLIEID,CLIERUC,DOCID,CCSERIE,CCNODOC,CCNOREG,TCANJEID,CCCANJE,CCFCANJE,DOCID2,CCSERIE2,CCNODOC2,TMONID,'+
            ' DCCMTOORI,DCCMTOLOC,DCCMTOEXT,DCCUSER,DCCFREG,DCCHREG,DCCAAAA,DCCMM,DCCDD,DCCTRI,DCCSEM,DCCSS,DCCANOMM,DCCAATRI,DCCAASEM,DCCAASS) '+
            ' VALUES('+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CIAID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CLIEID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CLIERUC').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DOCID2').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCSERIE2').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCNODOC2').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCNOREG').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('TCANJEID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCCANJE').AsString)+','+
            DM1.wRepFuncDate+QuotedStr(FormatDateTime(DM1.wFormatFecha,DM1.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime))+'),'+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DOCID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCSERIE').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCNODOC').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('TMONID').AsString)+','+
            FloatToStr(DM1.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat)+','+
            FloatToStr(DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat)+','+
            FloatToStr(DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCUSER').AsString)+','+
            DM1.wRepFuncDate+QuotedStr(FormatDateTime(DM1.wFormatFecha,DM1.cdsDetCanje.FieldByName('DCCFREG').AsDateTime))+'),'+
            QuotedStr(FormatDateTime(DM1.wFormatTime,DM1.cdsDetCanje.FieldByName('DCCHREG').AsDateTime))+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAAAA').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCMM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCDD').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCTRI').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCSEM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCSS').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCANOMM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAATRI').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAASEM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAASS').AsString)+')';
      try
        DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      except
      end;
      DM1.cdsDetCanje.Next;
   end;

   DM1.cdsDetCanje.Filter:='';
   DM1.cdsDetCanje.Filtered:=False;

   DM1.cdsCanjes.Filter:=sFiltroOriginal;
   DM1.cdsLetras.CancelUpdates;
   DM1.cdsDetCanje.First;
   DM1.cdsLetras.EnableControls;
   DM1.cdsCanjes.EnableControls;

   DM1.AplicaDatos( DM1.cdsDetCanje,'DetCanje' );
end;

procedure TFLetras1.InsertaRegistrosdeAbonos;
begin
  DM1.cdsLetras.Insert;
  DM1.cdsLetras.FieldByName('CIAID').AsString   := DM1.cdsCanjes.FieldByName('CIAID').AsString;
  DM1.cdsLetras.FieldByName('CLIEID').AsString  := DM1.cdsCanjes.FieldByName('CLIEID').AsString;
  DM1.cdsLetras.FieldByName('CLIERUC').AsString := DM1.cdsCanjes.FieldByName('CLIERUC').AsString;
  DM1.cdsLetras.FieldByName('CCSERIE').AsString := DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
  DM1.cdsLetras.FieldByName('TMONID').AsString  := DM1.cdsCanjes.FieldByName('TMONID').AsString;
  DM1.cdsLetras.FieldByName('CCNODOC').AsString := DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
  DM1.cdsLetras.FieldByName('DOCID').AsString   := DM1.cdsCanjes.FieldByName('DOCID').AsString;
  DM1.cdsLetras.FieldByName('CCNOREG').AsString := DM1.cdsCanjes.FieldByName('CCNOREG').AsString;
  DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
  DM1.cdsLetras.FieldByName('CCMTOLOC').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
  DM1.cdsLetras.FieldByName('CCMTOEXT').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
  DM1.cdsLetras.Post;
end;

procedure TFLetras1.dblcSerieExit(Sender: TObject);
begin
   dbeNoDoc.Text:=DM1.BuscaUltNumero(dblcCia.Text,dblcNDDoc.Text,dblcSerie.Text);
end;

procedure TFLetras1.InsertaRegistroDeTotal;
var xTReg,xDH,xCpto,xCta : string;
begin

   xTReg := DM1.cdsCptoCab.FieldByName('REGID').AsString;
   xDH   := DM1.cdsCptoCab.FieldByName('CCDH').AsString;
   xCpto := DM1.cdsCptoCab.FieldByName('CPTOCAB').AsString;
   xCta  := DM1.cdsCptoCab.FieldByName('CUENTAID').AsString;

   DM1.cdsDetCxC2.Insert;
   DM1.cdsDetCxC2.fieldbyname('TIPDET').AsString  := DM1.cdsCptoCab.FieldByName('TIPDET').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCMTOORI').AsFloat := DM1.cdsCCanje.fieldbyname('CJTotOri').AsFloat;
   DM1.cdsDetCxC2.fieldbyname('TREGID').AsString  := xTReg;
   DM1.cdsDetCxC2.fieldbyname('CCDH').AsString    := xDH;
   DM1.cdsDetCxC2.fieldbyname('TMONID').AsString  := DM1.cdsCCanje.fieldbyname('TMonId').AsString;
   DM1.cdsDetCxC2.fieldbyname('CPTOID').AsString  := xCpto;
   DM1.cdsDetCxC2.fieldbyname('CUENTAID').AsString:= xCta;

   if DM1.cdsDetCxC2.fieldbyname('TMonId').Value=DM1.wTMonLoc then
   begin
      DM1.cdsDetCxC2.fieldbyname('CCMtoLoc').AsFloat := DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      DM1.cdsDetCxC2.fieldbyname('CCMtoExt').AsFloat := FRound( DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat/DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2 );
   end
   else
   begin
      DM1.cdsDetCxC2.fieldbyname('CCMtoExt').AsFloat := DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat;
      DM1.cdsDetCxC2.fieldbyname('CCMtoLoc').AsFloat := FRound( DM1.cdsDetCxC2.fieldbyname('CCMtoOri').AsFloat*DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2 );
   end;

   DM1.cdsDetCxC2.fieldbyname('CCGLOSA').AsString := dbeGlosa.text;

   DM1.cdsDetCxC2.fieldbyname('CiaId').AsString   := DM1.cdsMovCxC.FieldByName('CiaId').AsString;
   DM1.cdsDetCxC2.fieldbyname('TDiarId').AsString := DM1.cdsMovCxC.FieldByName('TDiarId').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCNoReg').AsString := DM1.cdsMovCxC.FieldByName('CCNoReg').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAAAA').AsString  := DM1.cdsCCanje.fieldbyname('CJAA').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAnoMes').AsString:= DM1.cdsCCanje.fieldbyname('CJAAMM').AsString;
   DM1.cdsDetCxC2.fieldbyname('ClAuxId').AsString := DM1.cdsCCanje.fieldbyname('ClAuxId').AsString;
   DM1.cdsDetCxC2.fieldbyname('ClieId').AsString  := DM1.cdsCCanje.fieldbyname('ClieId').AsString;
   DM1.cdsDetCxC2.fieldbyname('ClieRuc').AsString := DM1.cdsCCanje.fieldbyname('ClieRuc').AsString;
//CESAR 01/02/2002
//   DM1.cdsDetCxC2.fieldbyname('DocId').AsString   := DM1.cdsCCanje.fieldbyname('DocId').AsString;
   DM1.cdsDetCxC2.fieldbyname('DocId').AsString   := dblcNDDoc.Text;
   DM1.cdsDetCxC2.fieldbyname('CCSerie').AsString := dblcSerie.Text;
   DM1.cdsDetCxC2.fieldbyname('TCANJEID').AsString := 'ND';
   DM1.cdsDetCxC2.fieldbyname('CCCANJE').AsString := edtCanje.Text;
   DM1.cdsDetCxC2.fieldbyname('CCNoDoc').AsString := dbeNoDoc.Text;
   DM1.cdsDetCxC2.fieldbyname('CCTCamPr').Asfloat:= FRound( DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,7,3);
   DM1.cdsDetCxC2.fieldbyname('CCFEmis').Value := DM1.cdsCCanje.fieldbyname('CJFCanje').AsDateTime;
   DM1.cdsDetCxC2.fieldbyname('CCFVcmto').Value:= DM1.cdsCCanje.fieldbyname('CJFCanje').AsDateTime;
   DM1.cdsDetCxC2.fieldbyname('CCFComp').Value := DM1.cdsCCanje.fieldbyname('CJFComp').AsDateTime;
   DM1.cdsDetCxC2.fieldbyname('CCEstado').Value:= 'I'; // Activo
   DM1.cdsDetCxC2.fieldbyname('CCUser').Value  := DM1.wUsuario;
   DM1.cdsDetCxC2.fieldbyname('CCFReg').Value  := Date;
   DM1.cdsDetCxC2.fieldbyname('CCHReg').Value  := Time;
   DM1.cdsDetCxC2.fieldbyname('CCMM').AsString    := DM1.cdsCCanje.fieldbyname('CJMM').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCDD').AsString    := DM1.cdsCCanje.fieldbyname('CJDD').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCTri').AsString   := DM1.cdsCCanje.fieldbyname('CJTri').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCSem').AsString   := DM1.cdsCCanje.fieldbyname('CJSem').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCSS').AsString    := DM1.cdsCCanje.fieldbyname('CJSS').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAATri').AsString := DM1.cdsCCanje.fieldbyname('CJAATri').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAASem').AsString := DM1.cdsCCanje.fieldbyname('CJAASem').AsString;
   DM1.cdsDetCxC2.fieldbyname('CCAASS').AsString  := DM1.cdsCCanje.fieldbyname('CJAASS').AsString;
   DM1.cdsDetCxC2.Post;
end;

end.



