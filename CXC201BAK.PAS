unit CxC201bak;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdbdatetimepicker, Mask, wwdbedit, Wwdbdlg, wwdblook,
  ExtCtrls, Wwdbigrd, Grids, Wwdbgrid, DB, DBCtrls, ppReport,ppDBPipe;

type
  TFProvisionX = class(TForm)
    pnlCabecera: TPanel;
    pnlCab1: TPanel;
    lblCia: TLabel;
    dblcCia: TwwDBLookupCombo;
    edtCia: TEdit;
    pnlCab2: TPanel;
    pnlCab3: TPanel;
    bbtnOK: TBitBtn;
    bbtnBorra: TBitBtn;
    dblcdClie: TwwDBLookupComboDlg;
    dblcdClieRuc: TwwDBLookupComboDlg;
    edtClie: TEdit;
    lblProv: TLabel;
    lblProvRuc: TLabel;
    lblProvNom: TLabel;
    dblcTDoc: TwwDBLookupCombo;
    edtTDoc: TEdit;
    lblTDoc: TLabel;
    lblSerie: TLabel;
    lblNoDoc: TLabel;
    Label11: TLabel;
    dblcTMon: TwwDBLookupCombo;
    edtTMon: TEdit;
    Label12: TLabel;
    dbeTCambio: TwwDBEdit;
    Label10: TLabel;
    dtpFVcmto: TwwDBDateTimePicker;
    lblTDiario: TLabel;
    dblcTDiario: TwwDBLookupCombo;
    edtTDiario: TEdit;
    dtpFComp: TwwDBDateTimePicker;
    Label15: TLabel;
    lblAnoMes: TLabel;
    dbeAnoMM: TwwDBEdit;
    dbeNoReg: TwwDBEdit;
    lblNoReg: TLabel;
    lblOCompra: TLabel;
    dbePedido: TwwDBEdit;
    pnlDetalle: TPanel;
    pnlPie: TPanel;
    bbtnCalc: TBitBtn;
    Label2: TLabel;
    pnlEstado: TPanel;
    lblAnula: TLabel;
    lblActivo: TLabel;
    lblContab: TLabel;
    lblAcepta: TLabel;
    Label3: TLabel;
    bbtnRegresa: TBitBtn;
    bbtnCancela: TBitBtn;
    Z2bbtnGraba: TBitBtn;
    Z2bbtnAcepta: TBitBtn;
    Z2bbtnAnula: TBitBtn;
    Z2bbtnContab: TBitBtn;
    Z2bbtnNuevo: TBitBtn;
    Label9: TLabel;
    bbtnAcepta: TBitBtn;
    dbeNoDoc: TwwDBEdit;
    pnlRegistro: TPanel;
    lblTipReg: TLabel;
    lblCnpEgr: TLabel;
    lblDH: TLabel;
    lblImporte: TLabel;
    lblGlosa: TLabel;
    lblCuenta: TLabel;
    dblcTipReg: TwwDBLookupCombo;
    dblcdCpto: TwwDBLookupComboDlg;
    edtTipReg: TEdit;
    dbeImporte: TwwDBEdit;
    dbeDH: TwwDBEdit;
    bbtnRegOk: TBitBtn;
    bbtnRegCanc: TBitBtn;
    dbeCuenta: TwwDBEdit;
    dbeGlosa: TwwDBEdit;
    Panel1: TPanel;
    dbgDetCxC: TwwDBGrid;
    btnActReg: TwwIButton;
    dblcSerie: TwwDBLookupCombo;
    pnlMontos: TPanel;
    Label16: TLabel;
    dbeMGrav: TwwDBEdit;
    dbeMNoGrav: TwwDBEdit;
    dbeFlete: TwwDBEdit;
    dbeGasFin: TwwDBEdit;
    dbeServ: TwwDBEdit;
    dbeDcto: TwwDBEdit;
    dbeIGV: TwwDBEdit;
    dbeISC: TwwDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    dblcVende: TwwDBLookupCombo;
    edtVende: TEdit;
    dblcCComer: TwwDBLookupCombo;
    edtCComer: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbeTotal: TwwDBEdit;
    bbtnGenera: TBitBtn;
    bbtnCalcula: TBitBtn;
    Label8: TLabel;
    dblcClAux: TwwDBLookupCombo;
    dtpFEmis: TwwDBDateTimePicker;
    StaticText1: TStaticText;
    dblcdPresup: TwwDBLookupComboDlg;
    Label4: TLabel;
    edtPresup: TEdit;
    lblCCosto: TLabel;
    dblcdCCosto: TwwDBLookupComboDlg;
    edtCCosto: TEdit;
    dbcbCred: TDBCheckBox;
    Z2bbtnEmiDoc: TBitBtn;
    Z2bbtnImprime: TBitBtn;
    dbcbGenDoc: TDBCheckBox;
    procedure dblcCiaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure InicializaClientDataSet;
    procedure dblcTDocExit(Sender: TObject);
    procedure dblcTDocEnter(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure dbeNoDocExit(Sender: TObject);
    procedure bbtnAceptaClick(Sender: TObject);
    procedure bbtnBorraClick(Sender: TObject);
    procedure bbtnOKClick(Sender: TObject);
    procedure bbtnRegresaClick(Sender: TObject);
    procedure dtpFEmisExit(Sender: TObject);
    procedure dblcdClieExit(Sender: TObject);
    procedure dblcdClieRucExit(Sender: TObject);
    procedure edtClieExit(Sender: TObject);
    procedure dblcTMonExit(Sender: TObject);
    procedure dblcTDiarioExit(Sender: TObject);
    procedure dtpFCompExit(Sender: TObject);
    procedure btnActRegClick(Sender: TObject);
    procedure bbtnRegCancClick(Sender: TObject);
    procedure dbgDetCxCDblClick(Sender: TObject);
    procedure dblcTipRegExit(Sender: TObject);
    procedure dblcdCptoExit(Sender: TObject);
    procedure bbtnRegOkClick(Sender: TObject);
    procedure bbtnCancelaClick(Sender: TObject);
    procedure Z2bbtnGrabaClick(Sender: TObject);
    procedure Z2bbtnAceptaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Z2bbtnAnulaClick(Sender: TObject);
    procedure Z2bbtnContabClick(Sender: TObject);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure bbtnCalculaClick(Sender: TObject);
    procedure bbtnGeneraClick(Sender: TObject);
    procedure dbeNoRegExit(Sender: TObject);
    procedure dblcVendeExit(Sender: TObject);
    procedure dblcCComerExit(Sender: TObject);
    procedure dbgDetCxCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtpFVcmtoExit(Sender: TObject);
    procedure dblcdPresupExit(Sender: TObject);
    procedure dbeDHExit(Sender: TObject);
    procedure dblcSerieExit(Sender: TObject);
    procedure dblcdClieEnter(Sender: TObject);
    procedure dblcdClieRucEnter(Sender: TObject);
    procedure dblcClAuxExit(Sender: TObject);
    procedure dblcdCCostoExit(Sender: TObject);
    procedure dbcbGenDocClick(Sender: TObject);
    procedure Z2bbtnEmiDocClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Z2bbtnImprimeClick(Sender: TObject);
  private
    { Private declarations }
    procedure DeshabilitaEdits (xPnl : TPanel) ;
    procedure BlanqueaEdits (xPnl : TPanel) ;
    procedure Genera ;
    procedure EmiteDoc(xArchivoReporte : String );
  public
    { Public declarations }
    procedure InicializaDatos;
    procedure EstadoDeForma(xxModo:Integer; xMovEstado,xMovConta:String);
    procedure FiltraMov;
    procedure GeneraDetalle( xTipDet : String; xMonto : Double );
    procedure ConfIngreso;
    procedure ModificaDetalle;
    function  ValidaDocumento:Boolean;
    function  ValidaCabecera(): Boolean;
    function  AsientoCuadra: Boolean;
    procedure GeneraRegistro;
  end;

var
  FProvisionX  : TFProvisionX;
  xCrea       : Boolean;
  xNuevoProv  : Boolean;
  xxTCambio   : Double;
  xFiltroTDiar: string;
  xTMes, xTAno: String;
  xTAutoNum   : String;
  xRegAct2    : TBookMark;
  xTDiario    : String;
  xCia        : String;
  xTDi        : String;
  xAMe        : String;
  xNRe        : String;
  xFlagGr     : Boolean;

implementation

{$R *.DFM}

Uses CxCDM, CxC001, CXC401,pptypes , CXCUTil ;

procedure TFProvisionX.dblcCiaExit(Sender: TObject);
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   if Length(dblcCia.Text)=0 then begin
      dblcCia.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Compañía ');
   end;
   edtCia.Text   := DM1.cdsCiaCiaDes.Value;
end;

procedure TFProvisionX.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
       key:=#0;
       perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFProvisionX.FiltraMov;
begin
   Filtracds( DM1.cdsDetCxC,'Select * from CXC302 Where '
                          + 'CIAID='  +''''+dblcCia.Text  +''''+' and '
                          + 'DOCID='  +''''+dblcTDoc.Text +''''+' and '
                          + 'CCSERIE='+''''+dblcSerie.Text+''''+' and '
                          + 'CCNODOC='+''''+dbeNoDoc.Text +''''+' and '
                          + '( CCCANJE='''' or CCCANJE is null )' );

   //
   DM1.cdsVende.Filtered :=False;
   DM1.cdsVende.Filter   := '';
   DM1.cdsVende.Filter   := 'CiaId=' +''''+dblcCia.Text +'''';
   DM1.cdsVende.Filtered :=True;
   //
   DM1.cdsCComer.Filtered:=False;
   DM1.cdsCComer.Filter  := '';
   DM1.cdsCComer.Filter  := 'CiaId=' +''''+dblcCia.Text +'''';
   DM1.cdsCComer.Filtered:=True;
end;

procedure TFProvisionX.EstadoDeForma(xxModo:Integer; xMovEstado,xMovConta:String);
begin
   pnlCab1.Enabled      := False;
   pnlCab2.Enabled      := False;
   pnlCab3.Enabled      := False;
   dtpFComp.Enabled     := False;
   dbeNoReg.Enabled     := False;
   bbtnOK.Enabled       := False;
   bbtnBorra.Enabled    := False;

   pnlDetalle.Enabled   := False;
   dbgDetCxC.ReadOnly   := True;
   pnlMontos.Enabled    := False;
   btnActReg.Enabled    := False;

   pnlPie.Refresh;
   pnlPie.Enabled       := False;
   bbtnRegresa.Enabled  := False;
   bbtnCancela.Enabled  := False;
   Z2bbtnGraba.Enabled  := False;
   Z2bbtnAcepta.Enabled := False;
   Z2bbtnAnula.Enabled  := False;
   Z2bbtnContab.Enabled := False;
   Z2bbtnNuevo.Enabled  := False;
   //WMC
   Z2bbtnImprime.Enabled := False ;

   lblActivo.Visible    := False;
   lblAcepta.Visible    := False;
   lblAnula.Visible     := False;
   lblContab.Visible    := False;

   If xxModo=0 then begin
      If xMovEstado=' ' then begin
         pnlCab1.Enabled    := True;
         lblActivo.Visible  := False;

         dblcCia.SetFocus;
      end;
      If xMovEstado='X' then begin
         pnlCab2.Enabled    := True;
         pnlCab3.Enabled    := True;
//         dtpFComp.Enabled   := True;
//         dbeNoReg.Enabled   := True;
         bbtnOK.Enabled     := True;
         bbtnBorra.Enabled  := True;

         dtpFEmis.SetFocus;
      end;
      if xMovEstado='T' then begin
         pnlCab2.Enabled    := True;
         pnlCab3.Enabled    := True;
         bbtnOK.Enabled     := True;
         bbtnBorra.Enabled  := True;

         lblActivo.Visible  := False;

         dtpFEmis.SetFocus;
      end;
      If xMovEstado='I' then begin
         pnlCab2.Enabled    := True;
         pnlCab3.Enabled    := True;
         bbtnOK.Enabled     := True;
         bbtnBorra.Enabled  := True;

         lblActivo.Visible  := True;

         dblcTMon.SetFocus;
      end;
      end
   else begin

      If xMovConta='S' then begin
         pnlDetalle.Enabled   := True;

         lblContab.Visible    := True;
         end
      else begin
         If xMovEstado='T' then begin
            pnlDetalle.Enabled   := True;
            dbgDetCxC.ReadOnly   := False;
            pnlMontos.Enabled    := True;
            btnActReg.Enabled    := True;

            pnlPie.Enabled       := True;
            bbtnRegresa.Enabled  := True;
            bbtnCancela.Enabled  := True;
            Z2bbtnGraba.Enabled  := True;

            lblActivo.Visible    := True;
         end;
         If xMovEstado='I' then begin
            pnlDetalle.Enabled   := True;
            dbgDetCxC.ReadOnly   := False;
            pnlMontos.Enabled    := True;
            btnActReg.Enabled    := True;

            pnlPie.Enabled       := True;
            bbtnRegresa.Enabled  := True;
            bbtnCancela.Enabled  := True;
            Z2bbtnGraba.Enabled  := True;
            Z2bbtnAcepta.Enabled := True;
            Z2bbtnAnula.Enabled  := True;

            lblActivo.Visible    := True;
         end;
         If (xMovEstado='P') or (xMovEstado='C') then
         begin
            pnlDetalle.Enabled   := True;

            pnlPie.Enabled       := True;
            Z2bbtnContab.Enabled := True;
            //WMC
            if dbcbGenDoc.Checked then
              Z2bbtnImprime.Enabled := True ;

            lblAcepta.Visible    := True;
         end;
         If xMovEstado='A' then begin
            pnlDetalle.Enabled   := True;

            pnlPie.Enabled       := True;

            lblAnula.Visible     := True;
         end;
      end;
   end;

   if DM1.wModo='C' then begin // Si Entra Solo Para Consulta
      pnlCab1.Enabled      := False;
      pnlCab2.Enabled      := False;
      pnlCab3.Enabled      := False;
      bbtnOK.Enabled       := False;
      bbtnBorra.Enabled    := False;

      pnlDetalle.Enabled   := False;
      dbgDetCxC.ReadOnly   := True;
      pnlMontos.Enabled    := False;
      btnActReg.Enabled    := False;

      pnlPie.Refresh;
      pnlPie.Enabled       := False;
      bbtnRegresa.Enabled  := False;
      bbtnCancela.Enabled  := False;
      Z2bbtnGraba.Enabled  := False;
      Z2bbtnAcepta.Enabled := False;
      Z2bbtnAnula.Enabled  := False;
      Z2bbtnContab.Enabled := False;
      Z2bbtnNuevo.Enabled  := False;
      end
   else begin
      if (DM1.wModo='A') and (xxModo=1) then begin
         Z2bbtnNuevo.Enabled:=True;
         pnlPie.Refresh;
         pnlPie.Enabled := True;
      end;
   end;
end;

procedure TFProvisionX.InicializaClientDataSet;
begin
   // Filtra Tipos de documentos aptos para guardar como Provisión
   DM1.cdsDetCxC.EnableControls;
   dbgDetCxC.Enabled  := True;
   dbgDetCxC.ReadOnly := False;
   Filtracds( DM1.cdsDetCxC,'Select * from CXC302 Where CIAID='+''''+''+'''' );
end;

procedure TFProvisionX.dblcTDocExit(Sender: TObject);
var
   xFiltro : string;
begin
   If xCrea then Exit;

   if bbtnBorra.Focused then Exit;
   If Length(dblcTDoc.Text)=0 then begin
      dblcTDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento ');
   end;

   edtTDoc.Text   := DM1.cdsTDocDocDes.AsString;

   if length(edtTDoc.Text)>0 then begin
   // Asigna Tipo de Diario a lookup combo TDiario
      xTDiario := DM1.cdsTDoc.FieldByName('TDiarID').AsString;
   // Busca descripción TDiario y asigna a edit TDiario
      edtTDiario.Text:=DisplayDescrip('TGE104','TDIARDES','TDIARID',dblcTDiario.Text);
   // Filtra Tipo de Diario específico
      xFiltro:='TDiarID='+DM1.cdsTDocTDIARID.AsString;
      if Length(DM1.cdsTDocTDIARID2.AsString)>0 then begin
         xFiltro:=xFiltro+'or TDiarID='+''''+DM1.cdsTDocTDIARID2.AsString+'''';
      end;
      DM1.cdsTDiario.Filter  := '';
      DM1.cdsTDiario.Filter  := xFiltro;
      DM1.cdsTDiario.Filtered:= true;
      if DM1.cdsTDiario.Recordcount=1 then
         dblcTDiario.Enabled:=false
      else begin
         dblcTDiario.Enabled:=true;
      end;
   end;
   DM1.cdsTDoc.Filtered := false;
end;

procedure TFProvisionX.dblcTDocEnter(Sender: TObject);
begin
   DM1.cdsTDoc.Filtered := True;
end;

procedure TFProvisionX.dbeSerieExit(Sender: TObject);
begin
   If Length(dblcSerie.Text)=0 then begin
      dblcSerie.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Serie ');
   end;
end;

procedure TFProvisionX.dbeNoDocExit(Sender: TObject);
begin
   If xCrea then Exit;
   if dblcSerie.Focused then Exit;

   If Length(dbeNoDoc.Text)=0 then begin
      dbeNoDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar No.Documento ');
   end;
end;

procedure TFProvisionX.bbtnAceptaClick(Sender: TObject);
begin
   if not ValidaDocumento then Exit;

   if BuscaCxCDoc(dblcCia.Text,dblcTDoc.Text,dblcSerie.Text,dbeNoDoc.Text) then begin
      dbeNoDoc.SetFocus;
      Raise Exception.Create(' Error : Factura ya Existe ')
   end;

   DM1.cdsMovCxC.Insert;
   DM1.cdsMovCxCCiaId.Value   := dblcCia.Text;
   DM1.cdsMovCxCDocId.Value   := dblcTDoc.Text;
   DM1.cdsMovCxCCCSerie.Value := dblcSerie.Text;
   DM1.cdsMovCxCCCNoDoc.Value := dbeNoDoc.Text;
   DM1.cdsMovCxCTDiarId.Value := xTDiario;
   DM1.cdsMovCxCCCEstado.Value:= 'X';
   DM1.cdsMovCxCCCFReg.Value  := Date;
   DM1.cdsMovCxCCCHReg.Value  := Time;
   DM1.cdsMovCxCCCUser.Value  := DM1.wUsuario;
   DM1.cdsMovCxC.Post;
   DM1.AplicaDatos( DM1.cdsMovCxC, 'MOVCXC' );

   xFlagGr := True;
   edtTDiario.Text:=DisplayDescrip('TGE104','TDIARDES','TDIARID',dblcTDiario.Text);
   FiltraMov;
   EstadoDeForma( 0, DM1.cdsMovCxCCCEstado.AsString, ' ' );
   //WMC - HABILITA O DESHABILITA EMISIÓN DE DOCUMENTOS
   if dm1.RecuperaDatos('TGE110','*','DOCID=''' + trim(dblcTDoc.Text) + ''' AND DOCMOD = ''CXC''') then
   begin
      if dm1.cdsqry2.FieldByName('F_EMIDOC').AsString = '1' then
         dbcbGenDoc.Enabled := True
      else
         dbcbGenDoc.Enabled := false ;
   end
   else
   begin
      dbcbGenDoc.Enabled := false ;
   end ;
   //FIN DE WMC
end;

procedure TFProvisionX.InicializaDatos;
begin
   xFlagGr          := False;

   dblcCia.Text      := '';
   edtCia.Text       := '';
   dblcTDoc.Text     := '';
   edtTDoc.Text      := '';
   dblcSerie.Text     := '';
   dbeNoDoc.Text     := '';

   dtpFEmis.Date     := date;
   dblcdClieRuc.Text :='';
   dblcdClie.Text    :='';
   edtClie.Text      := '';
   dblcTMon.Text     := '';
   edtTMon.Text      := '';
   dbeTCambio.Text   := '';
   dtpFVcmto.Date    := date;
   dbePedido.Text    := '';
   dblcVende.Text    := '';
   edtVende.text     := '';
   dblcCComer.Text   := '';
   edtCComer.Text    := '';
   dbcbCred.Checked  := False;

   dblcTDiario.Text  := '';
   edtTDiario.Text   := '';
   dtpFComp.Date     := date;
   dbeNoReg.Text     := '';

   dbeMGrav.Text := '';
   dbeMNoGrav.Text := '';
   dbeFlete.Text := '';
   dbeGasFin.Text := '';
   dbeServ.Text := '';
   dbeDcto.Text := '';
   dbeIGV.Text := '';
   dbeISC.Text := '';
   dbeTotal.Text := '';

end;

procedure TFProvisionX.bbtnBorraClick(Sender: TObject);
begin
   If DM1.wModo='A' then begin
      if xFlagGr then begin
         DM1.cdsDetCxC.CancelUpdates;
         DM1.cdsMovCxC.Delete;
         DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
         InicializaClientDataSet;
         InicializaDatos;
         EstadoDeForma( 0, ' ', ' ' );
         end
      else begin
         DM1.cdsMovCxC.CancelUpdates;
         EstadoDeForma(0,DM1.cdsMovCxCCCEstado.Value,' ' );
      end;
      end
   else begin
      DM1.cdsMovCxC.CancelUpdates;
      EstadoDeForma(0,DM1.cdsMovCxCCCEstado.Value,' ' );
   end;
end;

procedure TFProvisionX.bbtnOKClick(Sender: TObject);
begin
   if not ValidaCabecera then exit;

   if DM1.cdsMovCxCCCEstado.AsString='X' then GeneraRegistro ;

   EstadoDeForma(1,DM1.cdsMovCxCCCEstado.Value,DM1.cdsMovCxCCC_Conta.Value );
   ConfIngreso;
   ModificaDetalle;
   //wmc0410
   if dbcbGenDoc.Checked then
   begin
      btnActReg.Enabled := False ;
      DeshabilitaEdits(pnlMontos)   ;
      bbtnCalcula.Enabled  := False ;
      bbtnGenera.Enabled   := False ;
      Z2bbtnEmiDoc.Enabled := True  ;
   end
   else
   begin
      btnActReg.Enabled    := True  ;
      bbtnCalcula.Enabled  := True  ;
      bbtnGenera.Enabled   := True  ;
      Z2bbtnEmiDoc.Enabled := False ;
   end ;
End;

procedure TFProvisionX.GeneraRegistro;
var
   xMes, xNoReg : string;
   wAno, wMes, wDia: Word;
   nNoReg : Integer;
begin
   DecodeDate(dtpFComp.Date, wAno, wMes, wDia);

   if wMes<10 then xMes:='0'+inttostr(wMes) else xMes:=inttostr(wMes);
   xTMes := xMes;
   xTAno := IntToStr(wAno);

   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxCCCLote.AsString  := '';
   DM1.cdsMovCxCCCNoReg.AsString := xNoReg;
   DM1.cdsMovCxCCCAnoMes.AsString:= IntToStr(wAno)+xMes;
   if BuscaFecha('TGE114','Fecha',dtpFComp.date ) then begin
      DM1.cdsMovCxCCCAAAA.Value :=DM1.cdsQry2.FieldByName('FecAno'  ).AsString;
      DM1.cdsMovCxCCCMM.Value   :=DM1.cdsQry2.FieldByName('FecMes'  ).AsString;  // mes
      DM1.cdsMovCxCCCDD.Value   :=DM1.cdsQry2.FieldByName('FecDia'  ).AsString;  // día
      DM1.cdsMovCxCCCTri.Value  :=DM1.cdsQry2.FieldByName('FecTrim' ).AsString;  // trimestre
      DM1.cdsMovCxCCCSem.Value  :=DM1.cdsQry2.FieldByName('FecSem'  ).AsString;  // semestre
      DM1.cdsMovCxCCCSS.Value   :=DM1.cdsQry2.FieldByName('FecSS'   ).AsString;  // semana
      DM1.cdsMovCxCCCAATri.Value:=DM1.cdsQry2.FieldByName('FecAATri').AsString;  // año+trimestre
      DM1.cdsMovCxCCCAASem.Value:=DM1.cdsQry2.FieldByName('FecAASem').AsString;  // año+semestre
      DM1.cdsMovCxCCCAASS.Value :=DM1.cdsQry2.FieldByName('FecAASS' ).AsString;  // año+semana
   end;
   DM1.cdsMovCxCCCEstado.AsString:= 'T';

   xTAutoNum:=DisplayDescrip('TGE104','AutoNum','TDiarID',dblcTDiario.Text);
   xNoReg   :=DM1.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes );
   nNoReg   :=StrToInt(xNoReg);
   xNoReg   :='';
   while Length(xNoReg)=0 do begin
      xNoReg:=DM1.GrabaUltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes, nNoReg );
      xNoReg:=StrZero( xNoReg, DM1.cdsMovCxCCCNoReg.Size );
      if not BuscaCxCReg(dblcCia.Text,dblcTDiario.Text,xTAno+xTMes,xNoReg) then begin
         xNoReg:=StrZero( xNoReg, DM1.cdsMovCxCCCNoReg.Size );
         Break;
      end;
      xNoReg:='';
      nNoReg:=nNoReg+1;
   end;

   DM1.cdsMovCxCCCNoReg.AsString := xNoReg;
   DM1.cdsMovCxC.Post;

   DM1.AplicaDatos( DM1.cdsMovCxC, 'MOVCXC' );
   //wmc inicio
   with FEmiDoc.cdsEmiDoc do
   begin
     Active := False ;
     params.ParamByName('CIAID').AsString   := dblcCia.Text                   ;
     params.ParamByName('CCANOMM').AsString := DM1.cdsMovCxCCCAnoMes.AsString ;
     params.ParamByName('TDIARID').AsString := dblcTDiario.Text               ;
     params.ParamByName('CCNOREG').AsString := DM1.cdsMovCxCCCNoReg.AsString  ;
     Active := True ;
   end ;
   //fin
end;

procedure TFProvisionX.ModificaDetalle;
begin
   DM1.cdsDetCxC.First;
   while not DM1.cdsDetCxC.Eof do begin
      DM1.cdsDetCxC.Edit;
      DM1.cdsDetCxCTMonId.Value  := DM1.cdsMovCxCTMonId.Value;
      if DM1.cdsDetCxCTMonId.Value=DM1.wTMonLoc then // si es en moneda local
         begin
            DM1.cdsDetCxCCCMtoLoc.Value := DM1.cdsDetCxCCCMtoOri.AsFloat;
            DM1.cdsDetCxCCCMtoExt.Value := FRound( DM1.cdsDetCxCCCMtoOri.AsFloat/DM1.cdsMovCxCCCTCamPr.AsFloat,15,2 );
         end
      else begin
         DM1.cdsDetCxCCCMtoExt.Value := DM1.cdsDetCxCCCMtoOri.AsFloat;
         DM1.cdsDetCxCCCMtoLoc.Value := FRound( DM1.cdsDetCxCCCMtoOri.AsFloat*DM1.cdsMovCxCCCTCamPr.AsFloat,15,2 );
      end;
      DM1.cdsDetCxCClAuxId.AsString := DM1.cdsMovCxCClAuxId.AsString;
      DM1.cdsDetCxCClieId.AsString  := DM1.cdsMovCxCClieId.AsString;
      DM1.cdsDetCxCClieRuc.AsString := DM1.cdsMovCxCClieRuc.AsString;
      DM1.cdsDetCxCCCTCamPr.Value   := FRound( DM1.cdsMovCxCCCTCamPr.Value,7,3);
      DM1.cdsDetCxCCCFEmis.Value    := DM1.cdsMovCxCCCFEmis.Value;
      DM1.cdsDetCxCCCFVcmto.Value   := DM1.cdsMovCxCCCFVcmto.Value;
      DM1.cdsDetCxC.Next;
   end;
end;

procedure TFProvisionX.ConfIngreso;
begin
   pnlMontos.Enabled := True  ;
   dbeMGrav.Enabled  := False ;
   dbeMNoGrav.Enabled:= False ;
   dbeFlete.Enabled  := False ;
   dbeGasFin.Enabled := False ;
   dbeServ.Enabled   := False ;
   dbeDcto.Enabled   := False ;
   dbeIGV.Enabled    := False ;
   dbeISC.Enabled    := False ;
   dbeTotal.Enabled  := False ;

   Filtracds( DM1.cdsModelo,'SELECT * FROM CXC102 WHERE '
                          + 'CIAID=' + '''' + dblcCia.Text  + '''' + ' and '
                          + 'DOCID=' + '''' + dblcTDoc.Text + '''' )   ;

   DM1.cdsModelo.First;
   while not DM1.cdsModelo.Eof do begin;
      if Trim(DM1.cdsModeloTipDet.AsString)='MG' then dbeMGrav.Enabled  := True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='MN' then dbeMNoGrav.Enabled:= True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='FL' then dbeFlete.Enabled  := True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='GF' then dbeGasFin.Enabled := True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='SV' then dbeServ.Enabled   := True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='DC' then dbeDcto.Enabled   := True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='I1' then dbeIGV.Enabled    := True ;
      if Trim(DM1.cdsModeloTipDet.AsString)='IS' then dbeISC.Enabled    := True ;
//wmc
      if Trim(DM1.cdsModeloTipDet.AsString)='TO' then dbeTotal.Enabled    := True ;
      DM1.cdsModelo.Next;
   end;

   if dbeMGrav.Enabled   then begin dbeMGrav.SetFocus;   Exit; end;
   if dbeMNoGrav.Enabled then begin dbeMNoGrav.SetFocus; Exit; end;
   if dbeFlete.Enabled   then begin dbeFlete.SetFocus;   Exit; end;
   if dbeGasFin.Enabled  then begin dbeGasFin.SetFocus;  Exit; end;
   if dbeServ.Enabled    then begin dbeServ.SetFocus;    Exit; end;
   if dbeDcto.Enabled    then begin dbeDcto.SetFocus;    Exit; end;
   if dbeIGV.Enabled     then begin dbeIGV.SetFocus;     Exit; end;
   if dbeISC.Enabled     then begin dbeISC.SetFocus;     Exit; end;
//wmc
   if dbeTotal.Enabled     then begin dbeTotal.SetFocus;     Exit; end;

end;

procedure TFProvisionX.bbtnRegresaClick(Sender: TObject);
begin
   If DM1.wAdmin='S' then Exit;
   EstadoDeForma(0,DM1.cdsMovCxCCCEstado.Value, DM1.cdsMovCxCCC_Conta.Value );
end;

Function TFProvisionX.ValidaCabecera(): Boolean;
begin
   Result := False;
   if not ValidaDocumento         then Exit;
   if dtpFEmis.Date=0             then raise exception.Create('Falta Fecha de Canje');
   if length(dblcdClie.Text)=0    then raise exception.Create('Falta Registrar Cliente');
   if length(edtClie.Text)=0      then raise exception.Create('Proveedor Errado');
   if length(dblcTMon.Text)=0     then raise exception.Create('Falta Tipo de Moneda');
   if length(edtTMon.Text)=0      then raise exception.Create('Código de Moneda Errado');
   if length(dbeTCambio.Text)=0   then raise exception.Create('Falta Tipo de Cambio');
   if dtpFVcmto.Date=0            then raise exception.Create('Falta Fecha de Comprobante');
   if length(dblcTDiario.Text)=0  then raise exception.Create('Falta Tipo de Moneda');
//   if length(edtTDiario.Text)=0   then raise exception.Create('Falta Tipo de Diario');
//   if dtpFComp.Date=0             then raise exception.Create('Falta Fecha de Comprobante');
//   if length(dbeNoReg.Text)=0     then raise exception.Create('Código de Cuenta Errado');
   Result := true;
end;


function TFProvisionX.ValidaDocumento:Boolean;
begin
   If Length(dblcCia.Text)=0 then begin
      dblcCia.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Compañía ');
   end;
   If Length(dblcTDoc.Text)=0 then begin
      dblcTDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Documento ');
   end;
   If Length(dblcSerie.Text)=0 then begin
      dblcSerie.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar Serie ');
   end;
   If Length(dbeNoDoc.Text)=0 then begin
      dbeNoDoc.SetFocus;
      Raise Exception.Create(' Error :  Falta Registrar No.Documento ');
   end;
   Result:=True;
end;

procedure TFProvisionX.dtpFEmisExit(Sender: TObject);
var
   xWhere : String;
begin
   if xCrea             then Exit;
   if bbtnBorra.Focused then Exit;

   // Tipo de Cambio
   xWhere:='TMonId='''+DM1.wTMonExt            +''' and '
          +'Fecha=DATE('''+ FORMATDATETIME('YYYY-MM-DD',dtpFEmis.Date)+''')';
   xxTCambio := 0;
   if length(BuscaQry('dspTGE','TGE107','*',xWhere,'TMonId'))>0 then
   begin
      DM1.cdsMovCxC.Edit;
      DM1.cdsMovCxCCCTCamPr.Value:=DM1.cdsQry.fieldbyname('TCam'+DM1.wVRN_TipoCambio).Value;
      DM1.cdsMovCxCCCFCmprb.Value:=dtpFEmis.Date;
      if DM1.cdsMovCxCCCFVcmto.Value=0 then DM1.cdsMovCxCCCFVcmto.Value:=dtpFEmis.Date;
   end
   else begin
      dtpFEmis.SetFocus;
      Raise Exception.Create( ' Error :  Fecha No tiene Tipo de Cambio ' );
   end;
end;

procedure TFProvisionX.dblcdClieExit(Sender: TObject);
var
   xWhere : String;
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   if not xNuevoProv then
   begin
      xWhere:='ClAuxId='''+dblcClAux.Text+''' and ClieId='''+dblcdClie.Text+'''';
      edtClie.Text:=BuscaQry('dspTGE','TGE204','CLIEID,CLIERUC,CLIEDES',xWhere,'CLIEDES');
      if length(dblcdClie.Text)>0 then
      begin
         if dblcdClie.Text=DM1.cdsQry.FieldByName('ClieId').AsString then begin
            dblcdClieRuc.Text:=DM1.cdsQry.FieldByName('ClieRuc').AsString;
            dblcVende.SetFocus;
            end
         else begin
            dblcdClieRuc.Text := '';
            edtClie.Text      := '';
            if MessageDlg('Código de Cliente NO Registrado'+chr(13)+' ¿agregar como Nuevo? ',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
            begin
               dblcdClieRuc.Text:=dblcdClie.Text;
               edtClie.Enabled  :=true;
               dblcdClieRuc.SetFocus;
               xNuevoProv:=true;
            end
            else begin
               edtClie.Text := '';
               dblcdClie.SetFocus;
               Exit;
            end;
         end;
      end;
   end
   else begin
      edtClie.SetFocus;
   end;
end;

procedure TFProvisionX.dblcdClieRucExit(Sender: TObject);
var
   xWhere : String;
begin
   if xCrea then Exit;
   if Length(dblcdClieRuc.Text)=0 then Exit;

   if not xNuevoProv then
   begin
      If Length(dblcdClie.Text)+length(dblcdClieRuc.Text)>0 then
      begin
         xWhere:='ClAuxId='''+dblcClAux.Text+''' and ClieRuc='''+dblcdClieRuc.Text+'''';
         edtClie.Text:=BuscaQry('dspTGE','TGE204','CLIEID,CLIERUC,CLIEDES',xWhere,'CLIEDES');
         if length(dblcdClieRuc.Text)>0 then
         begin
            if dblcdClieRuc.Text=DM1.cdsQry.FieldByName('ClieRuc').AsString then begin
               dblcdClie.Text :=DM1.cdsQry.FieldByName('ClieId').AsString;
               dblcVende.SetFocus;
               end
            else begin
               dblcdClie.Text:= '';
               edtClie.Text := '';
               if MessageDlg('RUC de Cliente NO Registrado'+chr(13)+' ¿agregar como Nuevo? ',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
               begin
                  dblcdClie.Text:=dblcdClieRuc.Text;
                  edtClie.Enabled:=true;
                  dblcClAux.Enabled:=False;
                  dblcdClie.SetFocus;
                  xNuevoProv:=true;
               end
               else begin
                  edtClie.Text := '';
                  dblcdClieRuc.SetFocus;
                  Exit;
               end;
            end;
         end;
      end
      else begin
         edtClie.Text := '';
         dblcdClie.SetFocus;
         Exit;
      end;
   end
   else begin
      edtClie.SetFocus;
   end;
end;

procedure TFProvisionX.edtClieExit(Sender: TObject);
begin
   if xCrea then Exit;
   if dblcClAux.Focused    then Exit;
   if dblcdClie.Focused    then Exit;
   if dblcdClieRuc.Focused then Exit;

   if xNuevoProv then begin

      if Length(edtClie.Text)=0 then begin
         edtClie.SetFocus;
         Raise Exception.Create('Falta Razón Social')
      end;

      if MessageDlg('Código : '+''''+dblcdClie.Text   +''''+chr(13)+
                    'RUC    : '+''''+dblcdClieRuc.Text+''''+chr(13)+
                    'Razón  : '+''''+edtClie.Text     +''''+chr(13)+
                    'Cl.Aux.: '+''''+dblcClAux.Text   +''''+chr(13)+
                    '¿Datos Conformes? ',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      begin
         DM1.cdsClie.Insert;
         DM1.cdsClieClieId.Value :=dblcdClie.Text;
         DM1.cdsClieClieRUC.Value:=dblcdClieRuc.Text;
         DM1.cdsClieClieDES.Value:=edtClie.Text;
         DM1.cdsClieClAuxId.Value:=dblcClAux.Text;
         if length(edtClie.Text)>DM1.cdsClieClieABR.DisplayWidth then
            DM1.cdsClieClieABR.Value:=copy(edtClie.Text,1,DM1.cdsClieClieABR.DisplayWidth)
         else begin
            DM1.cdsClieClieABR.Value:=edtClie.Text;
         end;
         DM1.cdsClie.Post;
         DM1.cdsClie.ApplyUpdates(0);

         DM1.GrabaAuxConta( DM1.cdsClie );

         xNuevoProv:=false;
         edtClie.Enabled  :=False;
         dblcClAux.Enabled:=True;
         dblcVende.SetFocus;
      end
      else
         edtClie.SetFocus;
   end;
end;

procedure TFProvisionX.dblcTMonExit(Sender: TObject);
var
   xWhere : string;
begin
   If xCrea then Exit;

   if not bbtnBorra.Focused then begin
      xWhere := 'TMonId='+''''+dblcTMon.Text+''''
               +' and (TMon_Loc='+''''+'L'+''''+' or TMon_Loc='+''''+'E'+''''+')';
      edtTMon.Text:=BuscaQry('dspTGE','TGE103','TMONDES',xWhere,'TMONDES');

      if length(edtTMon.Text)=0 then
      begin
         ShowMessage('Falta Tipo de Moneda');
         dblcTMon.SetFocus;
         exit;
      end;
   end;
end;

procedure TFProvisionX.dblcTDiarioExit(Sender: TObject);
begin
   If xCrea then Exit;
   
   if not bbtnBorra.Focused then begin
      if length(xFiltroTDiar)>0 then
      begin
         edtTDiario.Text:=DisplayDescrip('TGE104','TDIARDES','TDIARID',dblcTDiario.Text);
      end;
      if length(edtTDiario.Text)=0 then
      begin
         ShowMessage('Falta Tipo de Diario');
         dblcTDiario.SetFocus;
      end;
   end;
end;

procedure TFProvisionX.dtpFCompExit(Sender: TObject);
var
   xMes, xNoReg : string;
   wAno, wMes, wDia: Word;
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   if dtpFComp.Date=0 then begin
      ShowMessage('Falta Fecha de Comprobante');
      dtpFComp.SetFocus;
      exit;
   end;
   if dtpFComp.Date<dtpFEmis.Date then begin
      dtpFComp.SetFocus;
      Raise Exception.Create('F.Comprobante debe ser >= F.Emisión');
   end;

   DecodeDate(dtpFComp.Date, wAno, wMes, wDia);

   if wMes<10 then xMes:='0'+inttostr(wMes) else xMes:=inttostr(wMes);
   xTMes := xMes;
   xTAno := IntToStr(wAno);

   if length(edtTDiario.Text)>0 then begin
      xTAutoNum:= DisplayDescrip('TGE104','AutoNum','TDiarID',dblcTDiario.Text);
      xNoReg   := DM1.UltimoRegistro(xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes );
      xNoReg   := StrZero( xNoReg, DM1.cdsMovCxCCCNoReg.Size )
   end;

   dbeNoReg.Text := xNoReg;
   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxCCCLote.AsString  := '';
   DM1.cdsMovCxCCCNoReg.Value := xNoReg;
   DM1.cdsMovCxCCCAnoMes.Value:= IntToStr(wAno)+xMes;
   if BuscaFecha('TGE114','Fecha',dtpFComp.date ) then begin
      DM1.cdsMovCxCCCAAAA.Value := DM1.cdsQry2.FieldByName('FecAno'  ).AsString;
      DM1.cdsMovCxCCCMM.Value   := DM1.cdsQry2.FieldByName('FecMes'  ).AsString;      // mes
      DM1.cdsMovCxCCCDD.Value   := DM1.cdsQry2.FieldByName('FecDia'  ).AsString;      // día
      DM1.cdsMovCxCCCTri.Value  := DM1.cdsQry2.FieldByName('FecTrim' ).AsString;     // trimestre
      DM1.cdsMovCxCCCSem.Value  := DM1.cdsQry2.FieldByName('FecSem'  ).AsString;      // semestre
      DM1.cdsMovCxCCCSS.Value   := DM1.cdsQry2.FieldByName('FecSS'   ).AsString;       // semana
      DM1.cdsMovCxCCCAATri.Value:= DM1.cdsQry2.FieldByName('FecAATri').AsString;    // año+trimestre
      DM1.cdsMovCxCCCAASem.Value:= DM1.cdsQry2.FieldByName('FecAASem').AsString;    // año+semestre
      DM1.cdsMovCxCCCAASS.Value := DM1.cdsQry2.FieldByName('FecAASS' ).AsString;     // año+semana
   end;
end;


procedure TFProvisionX.btnActRegClick(Sender: TObject);
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

procedure TFProvisionX.bbtnRegCancClick(Sender: TObject);
begin
   if DM1.cdsDetCxC.State=dsInsert then
      DM1.cdsDetCxC.Delete
   else begin
      DM1.cdsDetCxC.Cancel;
   end;
   pnlRegistro.Visible:= False;
   pnlDetalle.Enabled  := True;
   pnlPie.Enabled     := True;
   dbgDetCxC.SetFocus;
end;

procedure TFProvisionX.dbgDetCxCDblClick(Sender: TObject);
begin

   if (btnActReg.Enabled) or ((dm1.cdsmovcxc.FieldByName('CCESTADO').AsString = 'I') or
         (dm1.cdsmovcxc.FieldByName('CCESTADO').AsString = 'T') ) then
   begin
      pnlDetalle.Enabled :=False                  ;
      pnlPie.Enabled     :=False                  ;
      pnlRegistro.Visible:=True                   ;
      pnlRegistro.SetFocus                        ;
      DM1.cdsDetCxC.Edit                          ;
      dblcTipReg.Text:=DM1.cdsDetCxCTREGID.Value  ;
      dblcTipRegExit(Sender)                      ;
      dblcTipReg.Enabled := False                 ;
      dblcdCpto.SetFocus                          ;
      //wmc0410
      IF dbcbGenDoc.Checked then
      begin
         dbeImporte.Enabled := False
      end
      else
      begin
         dbeImporte.Enabled := True               ;
      end ;
   end ;

{huguiano
   if btnActReg.Enabled then
   begin
      pnlDetalle.Enabled :=False                  ;
      pnlPie.Enabled     :=False                  ;
      pnlRegistro.Visible:=True                   ;
      pnlRegistro.SetFocus                        ;
      DM1.cdsDetCxC.Edit                          ;
      dblcTipReg.Text:=DM1.cdsDetCxCTREGID.Value  ;
      dblcTipRegExit(Sender)                      ;
      dblcTipReg.Enabled := False                 ;
      dblcdCpto.SetFocus                          ;
      //wmc0410
      IF dbcbGenDoc.Checked then
      begin
         dbeImporte.Enabled := False
      end
      else
      begin
         dbeImporte.Enabled := True               ;
      end ;
   end ;
}
end ;

procedure TFProvisionX.dblcTipRegExit(Sender: TObject);
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
   if DM1.cdsDetCxC.State=dsInsert then
   begin
      with DM1 do begin
         cdsDetCxCCiaId.Value   := cdsMovCxCCiaId.Value;
         cdsDetCxCTDiarId.Value := cdsMovCxCTDiarId.Value;
         cdsDetCxCCCNoReg.Value := cdsMovCxCCCNoReg.Value;
         cdsDetCxCCCAAAA.Value  := copy(cdsMovCxCCCAnoMes.Value,1,4);
         cdsDetCxCCCAnoMes.Value:= cdsMovCxCCCAnoMes.Value;
         cdsDetCxCClAuxId.Value := DM1.cdsMovCxCClAuxId.AsString;
         cdsDetCxCClieId.Value  := cdsMovCxCClieId.AsString;
         cdsDetCxCClieRuc.Value := cdsMovCxCClieRuc.AsString;
         cdsDetCxCDocId.Value   := cdsMovCxCDocId.Value;
         cdsDetCxCCCSerie.Value := cdsMovCxCCCSerie.Value;
         cdsDetCxCCCNoDoc.Value := cdsMovCxCCCNoDoc.Value;
         cdsDetCxCCCTCamPr.Value:= FRound(cdsMovCxCCCTCamPr.Value,7,3);
         cdsDetCxCCCFEmis.Value := cdsMovCxCCCFEmis.Value;
         cdsDetCxCCCFVcmto.Value:= cdsMovCxCCCFVcmto.Value;
         cdsDetCxCCCFComp.Value := cdsMovCxCCCFCmprb.Value;
         cdsDetCxCTRegId.Value  := dblcTipReg.Text;
         cdsDetCxCCCEstado.Value:= 'I'; // Activo
         cdsDetCxCCCMM.Value    := cdsMovCxCCCMM.Value;
         cdsDetCxCCCDD.Value    := cdsMovCxCCCDD.Value;
         cdsDetCxCCCTri.Value   := cdsMovCxCCCTri.Value;
         cdsDetCxCCCSem.Value   := cdsMovCxCCCSem.Value;
         cdsDetCxCCCSS.Value    := cdsMovCxCCCSS.Value;
         cdsDetCxCCCAATri.Value := cdsMovCxCCCAATri.Value;
         cdsDetCxCCCAASem.Value := cdsMovCxCCCAASem.Value;
         cdsDetCxCCCAASS.Value  := cdsMovCxCCCAASS.Value;
         cdsDetCxCTMonId.Value  := cdsMovCxCTMonId.Value;
      end;
   end
   else begin
      DM1.cdsDetCxC.edit;
   end;

   if DM1.cdsDetCxC.State=dsInsert then
   begin
      xWhere := 'TRegId='+''''+dblcTipReg.Text+'''';
      DM1.cdsDetCxCTIPDET.Value:=BuscaQry('dspTGE','TGE128','*',xWhere,'TIPDET');
      DM1.cdsDetCxCCCDH.Value:=DM1.cdsQry.fieldbyname('CCDH').Value;
      if DM1.cdsDetCxCTMonId.Value=DM1.wTMonLoc then // si es en moneda local
         begin
            DM1.cdsDetCxCCPTOID.Value  :=DM1.cdsQry.fieldbyname('CPTOMN').AsString;
            DM1.cdsDetCxCCUENTAID.Value:=DM1.cdsQry.fieldbyname('CUENTAMN').AsString;
         end
      else begin
         DM1.cdsDetCxCCPTOID.Value  :=DM1.cdsQry.fieldbyname('CPTOME').AsString;
         DM1.cdsDetCxCCUENTAID.Value:=DM1.cdsQry.fieldbyname('CUENTAME').AsString;
      end;
      If Length( DM1.cdsDetCxCCUENTAID.Value )>0 then begin
         dblcdCptoExit(sender);
      end;
   end;

   dblcdCpto.Enabled:=True;
   DM1.cdsCpto.IndexFieldNames:='CptoDes';
end;

procedure TFProvisionX.dblcdCptoExit(Sender: TObject);
var
   xWhere : string;
begin
   if not bbtnRegCanc.Focused then begin
      xWhere:= 'CPTOID='+''''+dblcdCpto.Text+'''';
      if length(BuscaQry('dspTGE','CXC201','*',xWhere,'CPTOID'))>0 then
      begin
         DM1.cdsDetCxC.edit;
         DM1.cdsDetCxCCUENTAID.AsString:=DM1.cdsQry.fieldbyname('CUENTAID').AsString;
         if Length(DM1.cdsDetCxCCCGLOSA.AsString)=0 then
            DM1.cdsDetCxCCCGLOSA.AsString:=DM1.cdsQry.fieldbyname('CPTODES').AsString;

         xWhere:='CuentaId='+''''+DM1.cdsQry.fieldbyname('CUENTAId').AsString+'''';
         if Length(BuscaQry('dspTGE','TGE202','*',xWhere,'CuentaId'))>0 then begin
            if DM1.cdsQry.fieldbyname('CTA_CCOS').AsString='S' then begin
               dblcdCCosto.Enabled:=true;
               end
            else begin
               dblcdCCosto.Enabled:=false;
            end;
            if DM1.cdsQry.fieldbyname('CTA_PRES').AsString='S' then begin
               dblcdPresup.Enabled:=true;
               end
            else begin
               dblcdPresup.Enabled:=false;
            end;
         end;
      end
      else begin
         ShowMessage(' Concepto NO encontrado, reintente!');
         dblcdCpto.SetFocus;
      end;
   end;
end;

procedure TFProvisionX.bbtnRegOkClick(Sender: TObject);
var
   xWhere : String;
begin
   if length(DM1.cdsDetCxCTRegId.AsString)=0 then
      raise exception.Create('Falta Tipo de Registro');
   // consistencia Concepto
   if length(DM1.cdsDetCxCCptoId.AsString)=0 then begin
      dblcTipRegExit(self); // toma las propiedades del registro
      raise exception.Create('Falta Concepto');
   end;
   // Presupuesto
   xWhere:='CuentaId='+''''+DM1.cdsDetCxCCuentaId.AsString+'''';
   if Length(BuscaQry('dspTGE','TGE202','*',xWhere,'CuentaId'))>0 then begin
      if DM1.cdsQry.fieldbyname('CTA_CCOS').AsString='S' then begin
         if Length(DM1.cdsDetCxCCCosId.AsString)=0 then begin
            raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxCCuentaId.AsString)+' Obliga Centro de Costo');
         end;
      end;
      if DM1.cdsQry.fieldbyname('CTA_PRES').AsString='S' then begin
         if Length(DM1.cdsDetCxCParPresId.AsString)=0 then begin
            raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxCCuentaId.AsString)+' Obliga Partida Presupuestal');
         end;
      end;
   end;
   // consistencia Debe Haber
   if length(DM1.cdsDetCxCCCDH.AsString)=0 then begin
      dblcTipRegExit(self); // toma las propiedades del registro
      raise exception.Create('Falta Debe/Haber');
   end;
   if DM1.cdsDetCXCCCMtoOri.Value<=0 then begin
      DM1.cdsDetCxC.Edit;
      DM1.cdsDetCxCCCMtoOri.Value:=0;
      Raise Exception.Create('Importe debe Ser Mayor a Cero')
   end;
//////////
   if DM1.cdsDetCxCTMonid.Value=DM1.wTMonLoc then
   begin
      DM1.cdsDetCxCCCMtoLoc.Value:=DM1.cdsDetCxCCCMtoOri.Value;
      if DM1.cdsDetCxCCCTCamPr.Value>0 then begin
         DM1.cdsDetCxCCCMtoExt.Value:=FRound(DM1.cdsDetCxCCCMtoOri.Value/DM1.cdsDetCxCCCTCamPr.Value,15,2);
      end;
   end
   else begin
      DM1.cdsDetCxCCCMtoLoc.Value:=FRound(DM1.cdsDetCxCCCMtoOri.Value*DM1.cdsDetCxCCCTCamPr.Value,15,2);
      DM1.cdsDetCxCCCMtoExt.Value:=DM1.cdsDetCxCCCMtoOri.Value;
   end;

   if DM1.cdsDetCxC.State=dsInsert then
   begin
      DM1.cdsDetCxC.Post;
      DM1.cdsDetCxC.Insert;
      dblcTipReg.Text:='';
      dblcTipReg.Enabled:=True;
      dblcTipReg.SetFocus;
   end
   else begin
      DM1.cdsDetCxC.Post;
      pnlRegistro.Visible:=False;
      pnlDetalle.Enabled  :=True;
      pnlPie.Enabled     :=True;
   end;
end;

procedure TFProvisionX.bbtnCancelaClick(Sender: TObject);
begin
   If DM1.wAdmin='S' then Exit;
   DM1.cdsDetCxC.CancelUpdates;
   EstadoDeForma(0,DM1.cdsMovCxCCCEstado.Value, DM1.cdsMovCxCCC_Conta.Value );
end;

procedure TFProvisionX.Z2bbtnGrabaClick(Sender: TObject);
var
   xTGravad,xTNoGrav,xTIGV,xTISC,xTDcto,xTServ,xTotal,xTFlete,xTGasFin: Double;
   xTDebe,xTHaber : Double;
   xCtaTotal,xCptoTot, xWhere : string;
begin
   If DM1.wAdmin='S' then Exit;

   xTGravad:=0;xTNoGrav:=0;xTIGV:=0;xTISC:=0;xTDcto:=0;xTServ:=0;
   xTFlete:=0; xTGasFin:=0;xTotal:=0;

   if DM1.cdsDetCxC.RecordCount=0 then
      raise exception.create('No hay Detalle especificado');

// Comprueba que registros estén correctamente ingresados
   DM1.cdsDetCxC.First;
   while not DM1.cdsDetCxC.Eof do begin
      // consistencia Tipo de Registro
      if length(DM1.cdsDetCxCTRegId.AsString)=0 then
         raise exception.Create('Falta Tipo de Registro');
      // consistencia Concepto
      if length(DM1.cdsDetCxCCptoId.AsString)=0 then begin
         dblcTipRegExit(self); // toma las propiedades del registro
         raise exception.Create('Falta Concepto');
      end;
      // Presupuesto
      xWhere:='CuentaId='+''''+DM1.cdsDetCxCCuentaId.AsString+'''';
      if Length(BuscaQry('dspTGE','TGE202','*',xWhere,'CuentaId'))>0 then begin
         if DM1.cdsQry.fieldbyname('CTA_CCOS').AsString='S' then begin
            if Length(DM1.cdsDetCxCCCosId.AsString)=0 then begin
               raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxCCuentaId.AsString)+' Obliga Centro de Costo');
            end;
         end;
         if DM1.cdsQry.fieldbyname('CTA_PRES').AsString='S' then begin
            if Length(DM1.cdsDetCxCParPresId.AsString)=0 then begin
               raise exception.Create('Cuenta '+Trim(DM1.cdsDetCxCCuentaId.AsString)+' Obliga Partida Presupuestal');
            end;
         end;
      end;
      // consistencia Debe Haber
      if length(DM1.cdsDetCxCCCDH.AsString)=0 then begin
         raise exception.Create('Falta Debe/Haber');
      end;
      // consistencia Importe de Detalle
      if DM1.cdsDetCxCCCMtoOri.Value<=0 then
         raise exception.Create('Falta Importe');
      DM1.cdsDetCxC.Next;
   end;
// calcula sumatorias del detalle

   DM1.cdsDetCxC.First;
   DM1.cdsDetCxC.DisableControls;
   xTDebe:=0; xTHaber:=0;
   while not DM1.cdsDetCxC.eof do begin
      if DM1.cdsDetCxCCCDH.Value='D' then xTDebe :=xTDebe +FRound(DM1.cdsDetCxCCCMtoOri.Value,15,2);
      if DM1.cdsDetCxCCCDH.Value='H' then xTHaber:=xTHaber+FRound(DM1.cdsDetCxCCCMtoOri.Value,15,2);
      if DM1.cdsDetCxCTIPDET.Value='MG' then begin // Monto Gravado/Base Imponible/Monto Afecto
         xTGravad := xTGravad + DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='MN' then begin // Monto No Gravado
         xTNoGrav:=xTNoGrav+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='FL' then begin // Flete
         xTFlete:=xTFlete+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='GF' then begin // IGV
         xTGasFin:=xTGasFin+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='SV' then begin // Servicio
         xTServ:=xTServ+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='DC' then begin // Descuento
         xTDcto:=xTDcto+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='I1' then begin // IGV
         xTIGV:=xTIGV+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='IS' then begin // ISC
         xTISC:=xTISC+DM1.cdsDetCxCCCMtoOri.Value;
      end;
      if DM1.cdsDetCxCTIPDET.Value='TO' then begin // Total
         xTotal   :=xTotal+DM1.cdsDetCxCCCMtoOri.Value;
         xCtaTotal:=DM1.cdsDetCxCCuentaId.Value;
         xCptoTot :=DM1.cdsDetCxCCptoId.Value;
      end;
      DM1.cdsDetCxC.Edit;
      DM1.cdsDetCxCCCUser.AsString := DM1.wUsuario;
      DM1.cdsDetCxCCCFReg.Value    := DM1.cdsMovCxCCCFReg.Value;
      DM1.cdsDetCxCCCHReg.Value    := DM1.cdsMovCxCCCHReg.Value;
      DM1.cdsDetCxC.Next;
   end;
   DM1.cdsDetCxC.EnableControls;
   if (FRound(xTDebe,15,2)-FRound(xTHaber,15,2))>0 then
   begin
      if MessageDlg('No hay coincidencia entre Debe y Haber'+chr(13)
      +'      ¿Continuar con Grabación?       ',mtConfirmation, [mbYes, mbNo], 0)=mrNo then
      begin
         dbgDetCxC.SelectedIndex:=0;
         exit;
      end;
   end;
// graba sumatorias del detalle en cabecera CxP

   DM1.cdsMovCxC.Edit;

   DM1.cdsMovCxCCCGravad.Value :=xTGravad;   // Monto Gravado
   DM1.cdsMovCxCCCNoGrav.Value :=xTNoGrav;   // Monto No Gravado
   DM1.cdsMovCxCCCFlete.Value  :=xTFlete;
   DM1.cdsMovCxCCCGasFin.Value :=xTGasFin;
   DM1.cdsMovCxCCCIGV.Value    :=xTIGV;         // IGV.
   DM1.cdsMovCxCCCISC.Value    :=xTISC;         // ISC.
   DM1.cdsMovCxCCCDcto.Value   :=xTDcto;       // Descuento
   DM1.cdsMovCxCCCServic.Value :=xTServ;     // Servicio
   DM1.cdsMovCxCCCMtoOri.Value :=xTotal;     // Total documento
   DM1.cdsMovCxCCCSalOri.Value :=xTotal;     // Saldo del documento

   if DM1.cdsMovCxCTMonID.Value=DM1.wTMonLoc then
      begin
      DM1.cdsMovCxCCCMtoLoc.Value:=xTotal;                   // Total en moneda local
      DM1.cdsMovCxCCCMtoExt.Value:=FRound(xTotal/FRound(DM1.cdsMovCxCCCTCamPr.Value,12,3),15,2);   // Total en moneda extranjera
      DM1.cdsMovCxCCCSalLoc.Value:=xTotal;                   // Saldo en moneda Local
      DM1.cdsMovCxCCCSalExt.Value:=FRound(xTotal/FRound(DM1.cdsMovCxCCCTCamPr.Value,12,3),15,2);   // Saldo en moneda extranjera
      end
   else begin
      DM1.cdsMovCxCCCMtoLoc.Value:=FRound(xTotal*FRound(DM1.cdsMovCxCCCTCamPr.Value,12,3),15,2);   // Total en moneda local
      DM1.cdsMovCxCCCMtoExt.Value:=xTotal;                   // Total en moneda extranjera
      DM1.cdsMovCxCCCSalLoc.Value:=FRound(xTotal*FRound(DM1.cdsMovCxCCCTCamPr.Value,12,3),15,2);   // Saldo en moneda Local
      DM1.cdsMovCxCCCSalExt.Value:=xTotal;                   // Saldo en moneda extranjera
   end;
   DM1.cdsMovCxCCtaTotal.Value :=xCtaTotal;
   DM1.cdsMovCxCCCptoTot.Value :=xCptoTot;
   DM1.cdsMovCxCCCEstado.Value :='I';
   DM1.cdsMovCxCCCUser.Value   := DM1.wUsuario;
   DM1.cdsMovCxCCCFReg.Value   := Date;
   DM1.cdsMovCxCCCHReg.Value   := Time;
   DM1.cdsMovCxC.Post;

   DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   DM1.AplicaDatos( DM1.cdsDetCxC, 'DetCxC' );
   if dbcbGenDoc.Checked then
      if FEmiDoc.cdsEmiDoc.ApplyUpdates(0) > 0 then
      begin
         Showmessage ('No se grabaron los detalles ' + #13 + 'de la Emisión de Documentos') ;
      end ;

   xFlagGr := False;

   EstadoDeForma(1,DM1.cdsMovCxCCCEstado.AsString,DM1.cdsMovCxCCC_Conta.AsString);

   ShowMessage(' Registro de Provisión Grabado ');
end;

procedure TFProvisionX.Z2bbtnAceptaClick(Sender: TObject);
begin
   If DM1.wAdmin='S' then Exit;

   if ( DM1.cdsMovCxC.Modified ) or ( DM1.cdsMovCxC.ChangeCount>0 ) then
      raise exception.Create(' Debe Grabar primero las Actualizaciones realizadas');

   if ( DM1.cdsDetCxC.Modified ) or ( DM1.cdsDetCxC.ChangeCount>0 ) then
      raise exception.Create(' Debe Grabar primero las Actualizaciones realizadas');

   If not AsientoCuadra then
      raise exception.Create(' Error:  Asiento NO Cuadra ');

   if MessageDlg('Aceptar Documento'+chr(13)+'  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0)=mrNo then exit;

   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxCCCEstado.AsString:='P'; // pendiente
   DM1.cdsMovCxCCCFReg.Value     := Date;
   DM1.cdsMovCxCCCHReg.Value     := Time;
   DM1.cdsMovCxC.Post;

   DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

   DM1.SaldosAuxiliar( DM1.cdsMovCxCCiaId.Value,   DM1.cdsMovCxCCCAnoMes.Value,
                       DM1.cdsMovCxCClAuxId.Value, DM1.cdsMovCxCClieId.Value,
                   '+',DM1.cdsMovCxCCCMtoLoc.Value,DM1.cdsMovCxCCCMtoExt.Value, DM1.CdsMovCxCTMonid.value);

   EstadoDeForma(1, DM1.cdsMovCxCCCEstado.Value,DM1.cdsMovCxCCC_Conta.Value );
   if dbcbGenDoc.Checked then
      if FEmiDoc.cdsEmiDoc.ApplyUpdates(0) > 0 then
      begin
         Showmessage ('No se grabaron los detalles ' + #13 + 'de la Emisión de Documentos') ;
      end ;

   ShowMessage(' Registro de Provisión Aceptado ');
end;

function TFProvisionX.AsientoCuadra:Boolean;
var
   xTotDebe, xTotHaber : Double;
begin

   Result    := False;
   xTotDebe  := 0;
   xTotHaber := 0;
   DM1.cdsDetCxC.DisableControls;
   DM1.cdsDetCxC.First ;
   While not DM1.cdsDetCxC.Eof do begin
      If DM1.cdsDetCxCCCDH.Value='D' then
         xTotDebe  := xTotDebe  + FRound(DM1.cdsDetCxCCCMtoLoc.Value,15,2)
      else begin
         xTotHaber := xTotHaber + FRound(DM1.cdsDetCxCCCMtoLoc.Value,15,2);
      end;
      DM1.cdsDetCxC.Next;
   end;
   DM1.cdsDetCxC.First;
   DM1.cdsDetCxC.EnableControls;

   If FRound(xTotDebe,15,2)=FRound(xTotHaber,15,2) then
      Result := True;
end;

procedure TFProvisionX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsMovCxC.CancelUpdates;
   DM1.cdsDetCxC.CancelUpdates;
   dbgDetCxC.ReadOnly := False;

   If ( DM1.wModo='A' ) and ( xFlagGr ) then begin
      DM1.cdsMovCxC.Delete;
      DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   end;
   //wmc - inicio
   with FEmiDoc.cdsEmiDoc do
   begin
     Active := False ;
     params.ParamByName('CIAID').AsString   := '' ;
     params.ParamByName('CCANOMM').AsString := '' ;
     params.ParamByName('TDIARID').AsString := '' ;
     params.ParamByName('CCNOREG').AsString := '' ;
     Active := True                               ;
   end ;
   //wmc - fin
end;

procedure TFProvisionX.Z2bbtnAnulaClick(Sender: TObject);
begin

   If DM1.wAdmin='S' then Exit;

   if MessageDlg('Anular Documento'+chr(13)+'  ¿Esta Seguro?  ',
      mtConfirmation, [mbYes, mbNo], 0)=mrNo then exit;

   if (DM1.cdsMovCxCCC_Conta.Value='S') or
      ( (DM1.cdsMovCxCCCEstado.Value<>'P') and (DM1.cdsMovCxCCCEstado.Value<>'I') )
      or ((DM1.cdsMovCxCCCMtoLoc.Value-DM1.cdsMovCxCCCSalLoc.Value)>0) then
      ShowMessage('Registro No Se Puede Anular (Sólo Consulta))')
   else begin
      DM1.cdsMovCxC.Edit;
      DM1.cdsMovCxCCCEstado.Value := 'A';
      DM1.cdsMovCxC.Post;

      DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

      EstadoDeForma(1,DM1.cdsMovCxCCCEstado.Value,DM1.cdsMovCxCCC_Conta.Value );

      ShowMessage('  Registro Anulado  ');
   end;
end;

procedure TFProvisionX.Z2bbtnContabClick(Sender: TObject);
begin
   if DM1.wAdmin='S' then Exit;

   if not AsientoCuadra then raise exception.Create('Error:  Asiento No Cuadra');

   if DM1.cdsMovCxCCC_Conta.Value='S' then raise exception.Create('Error: Asiento ya fue Contabilizado');

   if MessageDlg('Contabilizar Documento'+chr(13)+chr(13)+
                 'Periodo         : '+dbeAnoMM.Text+chr(13)+
                 'Comprobante: '+dbeNoReg.Text+chr(13)+chr(13)+
                 '   ¿ Esta Seguro ?    ',
      mtConfirmation,[mbYes, mbNo],0)=mrNo then Exit;

   DM1.GeneraContabilidad(dblcCia.Text,dblcTDiario.Text,dbeAnoMM.Text,dbeNoReg.text, Self );

   DM1.cdsMovCxC.Edit;
   DM1.cdsMovCxCCC_Conta.AsString:= 'S';
   DM1.cdsMovCxCCCCmprb.AsString := dbeNoReg.text;
   DM1.cdsMovCxC.Post;

   DM1.cdsDetCxC.First;
   while not DM1.cdsDetCxC.eof do begin
      DM1.cdsDetCxC.Edit;
      DM1.cdsDetCxCCCCmprb.AsString:= dbeNoReg.text;
      DM1.cdsDetCxC.Next;
   end;

   DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   DM1.AplicaDatos( DM1.cdsDetCxC, 'DetCxC' );

   EstadoDeForma(1,DM1.cdsMovCxCCCEstado.AsString,DM1.cdsMovCxCCC_Conta.AsString );

   ShowMessage('Registro Contabilizado'+chr(13)+chr(13)+
               'Periodo         : '+dbeAnoMM.Text+chr(13)+
               'Comprobante: '+dbeNoReg.Text );
end;

procedure TFProvisionX.Z2bbtnNuevoClick(Sender: TObject);
begin
   If DM1.wAdmin='S' then Exit;

   If ( DM1.wModo='A' ) and ( xFlagGr ) then begin
      DM1.cdsDetCxC.CancelUpdates;
      DM1.cdsMovCxC.Delete;
      DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   end;

   InicializaClientDataSet;
   InicializaDatos;
   EstadoDeForma( 0, ' ', ' ' );
   //wmc
   FEmiDoc.cdsEmiDoc.CancelUpdates ;
   with FEmiDoc.cdsEmiDoc do
   begin
     Active := False ;
     params.ParamByName('CIAID').AsString   := '' ;
     params.ParamByName('CCANOMM').AsString := '' ;
     params.ParamByName('TDIARID').AsString := '' ;
     params.ParamByName('CCNOREG').AsString := '' ;
     Active := True ;
   end ;

   //fin wmc
end;

procedure TFProvisionX.bbtnCalculaClick(Sender: TObject);
var
   xMNG, xIGV, xISC, xSubT, xTotal : Double;
   xProcesoTotal : Boolean ;
   xFactor1       : Currency ;
begin
   xProcesoTotal := False ;
   if (dbeTotal.Enabled) and ( DM1.cdsMovCxCCCMtoOri.AsCurrency <> 0 ) then
      xProcesoTotal := true ;

   if not xProcesoTotal then
   begin
      xSubT  := DM1.cdsMovCxCCCGravad.AsFloat +
                DM1.cdsMovCxCCCFlete.AsFloat  +
                DM1.cdsMovCxCCCGasFin.AsFloat +
                DM1.cdsMovCxCCCServic.AsFloat -
                DM1.cdsMovCxCCCDcto.AsFloat;

      xMNG   := DM1.cdsMovCxCCCNoGrav.AsFloat;

      if dbeIGV.Enabled then
      begin
         if DM1.cdsMovCxCCCIGV.AsCurrency <> 0 then
            xIGV := xSubT * 0.18
         else
            if not DM1.cdsMovCxCCCIGV.IsNull then
               xIGV := 0
            else
               xIGV := xSubT * 0.18 ;
      end
      else
         xIGV := 0;

      if dbeISC.Enabled then
   //      xISC := xSubT * 0.05
      begin
         if DM1.cdsMovCxCCCISC.AsCurrency <> 0 then
            if DM1.cdsMovCxCCCISC.AsCurrency < xSubT * 0.05 then
               xISC := DM1.cdsMovCxCCCISC.AsCurrency
            else
               xISC := xSubT * 0.05
         else
         begin
            if DM1.cdsMovCxCCCISC.IsNull then
               xISC := xSubT * 0.05
            else
               xISC := 0 ;
         end ;
      end
      else
         xISC := 0 ;

      xTotal := xMNG + xSubT + xIGV + xISC   ;

      DM1.cdsMovCxC.Edit                     ;
      DM1.cdsMovCxCCCIGV.AsFloat   := xIGV   ;
      DM1.cdsMovCxCCCISC.AsFloat   := xISC   ;
      DM1.cdsMovCxCCCMtoOri.AsFloat:= xTotal ;
   end
   else
   begin
      xTotal := DM1.cdsMovCxCCCMtoOri.AsCurrency ;
      xFactor1 := 1 ;
{  0711
      if dbeIGV.Enabled  then
         xFactor1 := 1 + 0.18        ;

      if dbeISC.Enabled then
         xFactor1 := xFactor1 + 0.05 ;

      xFactor1  := xTotal/xFactor1 ;

      if dbeIGV.Enabled then
         xIGV := redondea(xFactor1) * 0.18
      else
         xIGV := 0;

      if dbeISC.Enabled then
         xISC := redondea(xFactor1) * 0.05
      else
         xISC := 0 ;
}
      if (dbeIGV.Enabled) and ((DM1.cdsMovCxCCCIGV.AsCurrency <> 0) or ( DM1.cdsMovCxCCCIGV.IsNull)) then
         xFactor1 := 1 + 0.18        ;

      if (dbeISC.Enabled) and ((DM1.cdsMovCxCCCISC.AsCurrency <> 0) or ( DM1.cdsMovCxCCCISC.IsNull)) then
         xFactor1 := xFactor1 + 0.05 ;

      xFactor1  := xTotal/xFactor1 ;

      if (dbeIGV.Enabled) and ((DM1.cdsMovCxCCCIGV.AsCurrency <> 0) or ( DM1.cdsMovCxCCCIGV.IsNull)) then
         xIGV := redondea(xFactor1) * 0.18
      else
         xIGV := 0;

      if (dbeISC.Enabled) and ((DM1.cdsMovCxCCCISC.AsCurrency <> 0) or ( DM1.cdsMovCxCCCISC.IsNull))  then
         xISC := redondea(xFactor1) * 0.05
      else
         xISC := 0 ;

      DM1.cdsMovCxC.Edit                     ;
      DM1.cdsMovCxCCCFlete.AsFloat    := 0   ;
      DM1.cdsMovCxCCCGasFin.AsFloat   := 0   ;
      DM1.cdsMovCxCCCServic.AsFloat   := 0   ;
      DM1.cdsMovCxCCCDcto.AsFloat     := 0   ;
      DM1.cdsMovCxCCCGravad.AsFloat   := redondea(xFactor1) ;

      DM1.cdsMovCxCCCIGV.AsFloat   := xIGV   ;
      DM1.cdsMovCxCCCISC.AsFloat   := xISC   ;
      DM1.cdsMovCxCCCMtoOri.AsFloat:= xTotal ;
   end ;
end;

procedure TFProvisionX.GeneraDetalle( xTipDet : String; xMonto : Double );
var
   xWhere : String;
begin

   DM1.cdsDetCxC.Insert;
   DM1.cdsDetCxCTIPDET.Value  := xTipDet;
   DM1.cdsDetCxCCCMtoOri.Value:= xMonto;

   xWhere := 'TIPDET='+''''+xTipDet+'''';
   DM1.cdsDetCxCTRegId.Value   := BuscaQry('dspTGE','TGE128','*',xWhere,'TREGID');
   DM1.cdsDetCxCCCDH.Value     := DM1.cdsQry.fieldbyname('CCDH').Value;
   DM1.cdsDetCxCTMonId.Value   := DM1.cdsMovCxCTMonId.Value;

   if DM1.cdsDetCxCTMonId.Value=DM1.wTMonLoc then // si es en moneda local
      begin
         DM1.cdsDetCxCCPTOID.Value   := DM1.cdsQry.fieldbyname('CPTOMN').AsString;
         DM1.cdsDetCxCCUENTAID.Value := DM1.cdsQry.fieldbyname('CUENTAMN').AsString;
         DM1.cdsDetCxCCCMtoLoc.Value := DM1.cdsDetCxCCCMtoOri.AsFloat;
         DM1.cdsDetCxCCCMtoExt.Value := FRound( DM1.cdsDetCxCCCMtoOri.AsFloat/DM1.cdsMovCxCCCTCamPr.AsFloat,15,2 );
      end
   else begin
      DM1.cdsDetCxCCPTOID.Value   := DM1.cdsQry.fieldbyname('CPTOME').AsString;
      DM1.cdsDetCxCCUENTAID.Value := DM1.cdsQry.fieldbyname('CUENTAME').AsString;
      DM1.cdsDetCxCCCMtoExt.Value := DM1.cdsDetCxCCCMtoOri.AsFloat;
      DM1.cdsDetCxCCCMtoLoc.Value := FRound( DM1.cdsDetCxCCCMtoOri.AsFloat*DM1.cdsMovCxCCCTCamPr.AsFloat,15,2 );
   end;
   If Length( DM1.cdsDetCxCCUENTAID.Value )>0 then begin
      xWhere := 'CPTOID='+''''+DM1.cdsDetCxCCPTOID.AsString+'''';
      DM1.cdsDetCxCCCGLOSA.AsString:=BuscaQry('dspTGE','CXC201','*',xWhere,'CPTODES')
   end;

   DM1.cdsDetCxCCiaId.Value   := DM1.cdsMovCxCCiaId.Value;
   DM1.cdsDetCxCTDiarId.Value := DM1.cdsMovCxCTDiarId.Value;
   DM1.cdsDetCxCCCNoReg.Value := DM1.cdsMovCxCCCNoReg.Value;
   DM1.cdsDetCxCCCAAAA.Value  := copy(DM1.cdsMovCxCCCAnoMes.Value,1,4);
   DM1.cdsDetCxCCCAnoMes.Value:= DM1.cdsMovCxCCCAnoMes.Value;
   DM1.cdsDetCxCClAuxId.Value := DM1.cdsMovCxCClAuxId.AsString;
   DM1.cdsDetCxCClieId.Value  := DM1.cdsMovCxCClieId.AsString;
   DM1.cdsDetCxCClieRuc.Value := DM1.cdsMovCxCClieRuc.AsString;
   DM1.cdsDetCxCDocId.Value   := DM1.cdsMovCxCDocId.Value;
   DM1.cdsDetCxCCCSerie.Value := DM1.cdsMovCxCCCSerie.Value;
   DM1.cdsDetCxCCCNoDoc.Value := DM1.cdsMovCxCCCNoDoc.Value;
   DM1.cdsDetCxCCCTCamPr.Value:= FRound( DM1.cdsMovCxCCCTCamPr.Value,7,3);
   DM1.cdsDetCxCCCFEmis.Value := DM1.cdsMovCxCCCFEmis.Value;
   DM1.cdsDetCxCCCFVcmto.Value:= DM1.cdsMovCxCCCFVcmto.Value;
   DM1.cdsDetCxCCCFComp.Value := DM1.cdsMovCxCCCFCmprb.Value;
   DM1.cdsDetCxCCCEstado.Value:= 'I'; // Activo
   DM1.cdsDetCxCCCMM.Value    := DM1.cdsMovCxCCCMM.Value;
   DM1.cdsDetCxCCCDD.Value    := DM1.cdsMovCxCCCDD.Value;
   DM1.cdsDetCxCCCTri.Value   := DM1.cdsMovCxCCCTri.Value;
   DM1.cdsDetCxCCCSem.Value   := DM1.cdsMovCxCCCSem.Value;
   DM1.cdsDetCxCCCSS.Value    := DM1.cdsMovCxCCCSS.Value;
   DM1.cdsDetCxCCCAATri.Value := DM1.cdsMovCxCCCAATri.Value;
   DM1.cdsDetCxCCCAASem.Value := DM1.cdsMovCxCCCAASem.Value;
   DM1.cdsDetCxCCCAASS.Value  := DM1.cdsMovCxCCCAASS.Value;
   DM1.cdsDetCxC.Post;
end;

procedure TFProvisionX.bbtnGeneraClick(Sender: TObject);
begin
   if DM1.cdsDetCxC.RecordCount>0 then begin
      if MessageDlg(' Existe Detalle Ingresado '+chr(13)+chr(13)
                   +'¿ Desea Regenerar Detalle ?',
         mtConfirmation, [mbYes, mbNo], 0)=mrNo then Exit;

      DM1.cdsDetCxC.First;
      while not DM1.cdsDetCxC.Eof do begin
         DM1.cdsDetCxC.delete;
      end;
   end;

   if DM1.cdsMovCxCCCGravad.AsFloat>0 then
      GeneraDetalle( 'MG', DM1.cdsMovCxCCCGravad.AsFloat );
   if DM1.cdsMovCxCCCNoGrav.AsFloat>0 then
      GeneraDetalle( 'MN', DM1.cdsMovCxCCCNoGrav.AsFloat );
   if DM1.cdsMovCxCCCFlete.AsFloat >0 then
      GeneraDetalle( 'FL', DM1.cdsMovCxCCCFlete.AsFloat );
   if DM1.cdsMovCxCCCGasFin.AsFloat>0 then
      GeneraDetalle( 'GF', DM1.cdsMovCxCCCGasFin.AsFloat );
   if DM1.cdsMovCxCCCServic.AsFloat>0 then
      GeneraDetalle( 'SV', DM1.cdsMovCxCCCServic.AsFloat );
   if DM1.cdsMovCxCCCDcto.AsFloat  >0 then
      GeneraDetalle( 'DC', DM1.cdsMovCxCCCDcto.AsFloat );
   if DM1.cdsMovCxCCCIGV.AsFloat   >0 then
      GeneraDetalle( 'I1', DM1.cdsMovCxCCCIGV.AsFloat );
   if DM1.cdsMovCxCCCISC.AsFloat   >0 then
      GeneraDetalle( 'IS', DM1.cdsMovCxCCCISC.AsFloat );
   if DM1.cdsMovCxCCCMtoOri.AsFloat>0 then
      GeneraDetalle( 'TO', DM1.cdsMovCxCCCMtoOri.AsFloat );
end;

procedure TFProvisionX.dbeNoRegExit(Sender: TObject);
var
   xxNoReg : String;
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   dbeNoReg.Text := StrZero( dbeNoReg.Text,DM1.cdsMovCxCCCNoReg.Size );

   if BuscaCxCReg(dblcCia.Text,dblcTDiario.Text,dbeAnoMM.Text,dbeNoReg.Text) then begin
      dbeNoReg.SetFocus;
      Raise Exception.Create( 'No.de Registro Duplicado' );
   end;

   xxNoReg:= DM1.GrabaUltimoRegistro( xTAutoNum,dblcCia.Text,dblcTDiario.Text,xTAno,xTMes,StrToInt(dbeNoReg.Text) );

   DM1.cdsMovCxCCCNoReg.AsString := dbeNoReg.Text;
   DM1.cdsMovCxCCCEstado.AsString:= 'T';
   DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   dbeNoReg.Text   := xxNoReg;
   dtpFComp.Enabled:= False;
   dbeNoReg.Enabled:= False;
end;

procedure TFProvisionX.dblcVendeExit(Sender: TObject);
var
   xWhere : String;
begin
   If xCrea then Exit;

   if not bbtnBorra.Focused then begin

      if length(dblcVende.Text)=0 then Exit;

      xWhere := 'VEID=' +''''+dblcVende.Text+''''+' and '
               +'CIAID='+''''+dblcCia.text  +'''';
      edtVende.Text:=BuscaQry('dspTGE','CXC203','VENOMBRES',xWhere,'VENOMBRES');

      if length(edtVende.Text)=0 then
      begin
         ShowMessage('Falta Vendedor');
         dblcVende.SetFocus;
         exit;
      end;
   end;
end;

procedure TFProvisionX.dblcCComerExit(Sender: TObject);
var
   xWhere : String;
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   xWhere := 'CCOMERID=' +''''+dblcCComer.Text+''''+' and '
            +'CIAID='+''''+dblcCia.text  +'''';
   edtCComer.Text:=BuscaQry('dspTGE','CXC101','CCOMERDES,CREDITO',xWhere,'CCOMERDES');
   if length(edtCComer.Text)=0 then
   begin
      ShowMessage('Falta Condicion Comercial');
      dblcCComer.SetFocus;
      exit;
   end;

   if DM1.cdsQry.FieldByName( 'CREDITO' ).AsString='S' then
      dbcbCred.Checked := True
   else
      dbcbCred.Checked := False;

   dbcbCred.SetFocus;
end;

procedure TFProvisionX.dbgDetCxCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=VK_Delete) and (ssCtrl in Shift) then
   begin
      if MessageDlg('¿Esta Seguro de Eliminar Registro?',mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      begin
         DM1.cdsDetCxC.Delete;
      end;
   end;
end;

procedure TFProvisionX.dtpFVcmtoExit(Sender: TObject);
begin
   if DM1.cdsMovCxCCCFVcmto.Value<dtpFEmis.Date then begin
      dtpFVcmto.SetFocus;
      Raise Exception.Create('F.Vencimiento debe ser >= F.Emisión');
   end;
end;

procedure TFProvisionX.dblcdPresupExit(Sender: TObject);
begin
   if not bbtnRegCanc.Focused then begin
      edtPresup.Text:=DisplayDescrip('TGE216','PARPRESDES','PARPRESID',dblcdPresup.Text);
      if Length(edtPresup.text)=0 then
      begin
         dblcdPresup.SetFocus;
         raise exception.Create('Error en Partida Presupuestal');
      end;
   end;
end;

procedure TFProvisionX.dbeDHExit(Sender: TObject);
begin
   if not bbtnRegCanc.Focused then Exit;

   if (dbeDH.Text<>'D') and (dbeDH.Text<>'H') then
   begin
      ShowMessage('Digite sólo D(para Debe) o H(para Haber)');
      DM1.cdsDetCxCCCDH.Value:='';
      dbeDH.SetFocus;
   end;
end;

procedure TFProvisionX.dblcSerieExit(Sender: TObject);
begin
   dbeNoDoc.Text:=DM1.BuscaUltNumero(dblcCia.Text,dblcTDoc.Text,dblcSerie.Text);
end;

procedure TFProvisionX.dblcdClieEnter(Sender: TObject);
begin
   DM1.cdsClie.IndexFieldNames:='ClieDes';
end;

procedure TFProvisionX.dblcdClieRucEnter(Sender: TObject);
begin
   DM1.cdsClie.IndexFieldNames:='ClieDes';
end;

procedure TFProvisionX.dblcClAuxExit(Sender: TObject);
var
   xWhere : String;
begin
   if xCrea then Exit;
   if bbtnBorra.Focused then Exit;

   xNuevoProv:=False;
   xWhere:='ClAuxId='''+dblcClAux.Text+''' and MODULO LIKE ''%'+DM1.wModulo+'%''';
   if length(BuscaQry('dspTGE','TGE102','CLAUXDES',xWhere,'CLAUXDES'))=0 then
   begin
      dblcClAux.SetFocus;
      Raise Exception.Create('Clase de Auxiliar no Permitido');
   end;

   Filtracds( DM1.cdsClie,'Select * from TGE204 Where CLAUXID='''+dblcClAux.Text+'''' );

   if Length(dblcdClie.Text)>0 then begin
      DM1.cdsMovCxC.Edit;
      xWhere:='ClAuxId='''+dblcClAux.Text+''' and ClieId='''+dblcdClie.Text+'''';
      if length(BuscaQry('dspTGE','TGE204','CLIEID,CLIERUC,CLIEDES',xWhere,'CLIEDES'))=0 then
      begin
         DM1.cdsMovCxCCLIEID.AsString :='';
         DM1.cdsMovCxCCLIERUC.AsString:='';
         edtClie.Text:='';
         dblcdClie.SetFocus;
      end
      else begin
         DM1.cdsMovCxCCLIEID.AsString :=DM1.cdsQry.FieldByname('CLIEID').AsString;
         DM1.cdsMovCxCCLIERUC.AsString:=DM1.cdsQry.FieldByname('CLIERUC').AsString;
         edtClie.Text:=DM1.cdsQry.FieldByname('CLIEDES').AsString;;
      end
   end
end;

procedure TFProvisionX.dblcdCCostoExit(Sender: TObject);
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

procedure TFProvisionX.DeshabilitaEdits(xPnl: TPanel);
var
 i : Integer ;
begin
   for i := 0 to xpnl.ControlCount-1 do
   begin
     if xpnl.controls[i] is TCustomEdit then
        TCustomEdit(xpnl.controls[i]).Enabled := False ;
   end;
end;

procedure TFProvisionX.dbcbGenDocClick(Sender: TObject);
var
   evt : TNotifyEvent ;
   evtDTS1 ,
   evtDTS2 : TDataSetNotifyEvent ;
begin
   if FProvision = nil then
      Exit ;
   if not FProvision.Visible then
      Exit ;
   if not FProvision.Showing then
      Exit ;

   if not dbcbGenDoc.Focused then
      Exit ;

   if dbcbGenDoc.Checked then
   begin
      if dm1.cdsDetCxC.RecordCount > 0 then
      begin
          if MessageDlg('Esto Borrará los detalles del Movimiento'+
                        #13+'¿Desea Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin

             dm1.cdsDetCxC.First ;
             while not dm1.cdsDetCxC.Eof do
             begin
                dm1.cdsDetCxC.Delete ;
             end;
             BlanqueaEdits(pnlMontos) ;
          end
          else
          begin
             evt := dbcbGenDoc.OnClick ;
             dbcbGenDoc.OnClick := nil ;
             dbcbGenDoc.Checked := not dbcbGenDoc.Checked  ;
             dbcbGenDoc.OnClick := evt ;
          end ;
      end ;
   end
   else
   begin
      if FEmiDoc.cdsEmiDoc.RecordCount > 0 then
      begin
          if MessageDlg('Esto Borrará los Detalles del Documento a Emitir'+
                        #13+'¿Desea Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
             evtDTS1 := FEmiDoc.cdsEmiDoc.AfterDelete  ;
             evtDTS2 := FEmiDoc.cdsEmiDoc.BeforeDelete ;
             FEmiDoc.cdsEmiDoc.AfterDelete  :=  nil ;
             FEmiDoc.cdsEmiDoc.BeforeDelete :=  nil ;

             FEmiDoc.cdsEmiDoc.First ;
             while not FEmiDoc.cdsEmiDoc.Eof do
             begin
                FEmiDoc.cdsEmiDoc.Delete ;
             end;
             FEmiDoc.ActualizaTotales ;
             FEmiDoc.cdsEmiDoc.AfterDelete  :=  evtDTS1 ;
             FEmiDoc.cdsEmiDoc.BeforeDelete :=  evtDTS2 ;
          end
          else
          begin
             evt := dbcbGenDoc.OnClick ;
             dbcbGenDoc.OnClick := nil ;
             dbcbGenDoc.Checked := not dbcbGenDoc.Checked  ;
             dbcbGenDoc.OnClick := evt ;
          end ;
      end ;
   end ;
end;

procedure TFProvisionX.Z2bbtnEmiDocClick(Sender: TObject);
var
   xMtoGravado ,
   xMtoNoGrav  ,
   xIGV        ,
   xISC        : String ;
   xCondicion  : Boolean ;
begin

   xMtoGravado := trim(FEmidoc.edtMtoGravado.Text) ;
   xMtoNoGrav  := trim(FEmidoc.edtMtoNoGrav.Text)  ;
   xIGV        := trim(FEmidoc.edtIGV.Text)  ;
   xISC        := trim(FEmidoc.edtISC.Text)  ;

   FEmidoc.ShowModal ;
   if FEmiDoc.cdsEmiDoc.RecordCount = 0 then
   begin
      //Borrar detalles
       dm1.cdsDetCxC.First ;
       while not dm1.cdsDetCxC.Eof do
       begin
          dm1.cdsDetCxC.Delete ;
       end;
      //borrar panel
       BlanqueaEdits(pnlMontos) ;
   end
   else
   begin
      //llenar panel
      xCondicion := (xMtoGravado <> trim(FEmiDoc.edtMtoGravado.Text ) )
                    or (xMtoNoGrav <> trim(FEmiDoc.edtMtoNoGrav.Text ) )
                    or (xIGV <> trim(FEmiDoc.edtIGV.Text ) )
                    or (xISC <> trim(FEmiDoc.edtISC.Text ) )        ;
      if xCondicion then
      begin
         with dm1.cdsMovCxC , FEmiDoc do
         begin
            edit                                                    ;
            Fieldbyname('CCGRAVAD').asstring :=  edtMtoGravado.Text ;
            Fieldbyname('CCNOGRAV').asstring :=  edtMtoNoGrav.Text  ;
            Fieldbyname('CCIGV').asstring    :=  edtIGV.Text        ;
            Fieldbyname('CCISC').asstring    :=  edtISC.Text        ;
            Post                                                    ;
         end                                                        ;
         //generar detalle
         //Linea de wmc 2310
         ConfIngreso                                                ;
         dm1.cdsmovcxc.Edit ;
         dm1.cdsmovcxc.Fieldbyname('CCMTOORI').clear ;
         dm1.cdsmovcxc.Post ;
         //fin 2310

         bbtnCalcula.OnClick(nil)                                   ;
         DeshabilitaEdits(pnlMontos)                                ;
//         bbtnGenera.OnClick(nil)   ;
         Genera                                                     ;
      end                                                           ;
   end                                                              ;
end                                                                 ;

procedure TFProvisionX.FormShow(Sender: TObject);
var
   xWhere : string;
begin
   xCrea := True;

   xNuevoProv := False;

   DM1.cdsDetCxC.IndexFieldNames   := 'CiaId;DocID;CCSerie;CCNoDoc;TRegId';

   if DM1.wModo='A' then begin
      InicializaClientDataSet;
      InicializaDatos;
      EstadoDeForma( 0, ' ', ' ' );
      dblcCia.SetFocus;
      end
   else
   begin
      xFlagGr        := False;
      DM1.cdsMovCxC.Edit;
      dblcCia.Text   := DM1.cdsMovCxCCiaId.AsString;
      dblcTDoc.Text  := DM1.cdsMovCxCDocId.AsString;
      dblcSerie.Text := DM1.cdsMovCxCCCSerie.AsString;
      dbeNoDoc.Text  := DM1.cdsMovCxCCCNoDoc.AsString;
      edtCia.Text    := DisplayDescrip('TGE101','CIADES','CiaID',dblcCia.Text);
      edtClie.text   := DisplayDescrip('TGE204','ClieDES','ClieId',dblcdClie.Text);
      xWhere := 'DocId='''+dblcTDoc.Text+''' and ( DOC_FREG='''+FPrincipal.xTipoProv+''' or '
              + 'Doc_FReg=''D'' ) and DOCMOD=''CXC''';
      edtTDoc.Text   := BuscaQry('dspTGE','TGE110','*',xWhere,'DocDes');
      edtTDiario.Text:= DisplayDescrip('TGE104','TDIARDES','TDIARID',dblcTDiario.Text);
      xWhere := 'TMonId='+''''+dblcTMon.Text+''''+' and (TMon_Loc='+''''+'L'+''''+' or TMon_Loc='+''''+'E'+''''+')';
      edtTMon.Text:= BuscaQry('dspTGE','TGE103','TMONDES',xWhere,'TMONDES');
      xWhere := 'VEID=' +''''+dblcVende.Text+''''+' and '
               +'CIAID='+''''+dblcCia.text  +'''';
      edtVende.Text:=BuscaQry('dspTGE','CXC203','VENOMBRES',xWhere,'VENOMBRES');
      xWhere := 'CCOMERID=' +''''+dblcCComer.Text+''''+' and '
               +'CIAID='+''''+dblcCia.text  +'''';
      edtCComer.Text:=BuscaQry('dspTGE','CXC101','CCOMERDES,CREDITO',xWhere,'CCOMERDES');

      if DM1.cdsMovCxCCCFlCred.AsString='S' then
         dbcbCred.Checked := True
      else
         dbcbCred.Checked := False;

      FiltraMov;

      If DM1.cdsMovCxCCCEstado.AsString='I' then
      begin
         EstadoDeForma(0,DM1.cdsMovCxCCCEstado.Value,' ' )   ;
         //wmc - inicio
         //HABILITA O DESHABILITA EMISION DE DOCUMENTOS
         if dm1.RecuperaDatos('TGE110','*','DOCID=''' + trim(dblcTDoc.Text) + ''' AND DOCMOD = ''CXC''') then
         begin
            if dm1.cdsqry2.FieldByName('F_EMIDOC').AsString = '1' then
               dbcbGenDoc.Enabled := True
            else
               dbcbGenDoc.Enabled := false ;
         end
         else
         begin
            dbcbGenDoc.Enabled := false ;
         end ;
         //fin de habilitacion
         if dbcbGenDoc.Enabled then
            with FEmiDoc.cdsEmiDoc do
            begin
              Active := False ;
              params.ParamByName('CIAID').AsString   := dblcCia.Text                   ;
              params.ParamByName('CCANOMM').AsString := DM1.cdsMovCxCCCAnoMes.AsString ;
              params.ParamByName('TDIARID').AsString := dblcTDiario.Text               ;
              params.ParamByName('CCNOREG').AsString := DM1.cdsMovCxCCCNoReg.AsString  ;
              Active := True ;
            end ;
         //wmc - fin
      end
      else
         EstadoDeForma(1,DM1.cdsMovCxCCCEstado.Value,DM1.cdsMovCxCCC_Conta.Value );
   end;

{   // Reglas de Negocio
   if DM1.wVRN_TCambioFijo='N' then
      dbeTCambio.Enabled:=True
   else begin
      dbeTCambio.Enabled:=False;
   end;
}
   xCrea := False;
end;

procedure TFProvisionX.BlanqueaEdits(xPnl: TPanel);
var
 i : Integer ;
begin
   for i := 0 to xpnl.ControlCount-1 do
   begin
{
     if xpnl.controls[i] is TCustomEdit then
        TCustomEdit(xpnl.controls[i]).Text := '' ;
}
     if xpnl.controls[i] is TwwDBEdit then
        dm1.cdsmovcxc.fieldbyname(TwwDBEdit(xpnl.controls[i]).DataField).AsString := '' ;

   end;
end;

procedure TFProvisionX.Genera;
begin
   if DM1.cdsDetCxC.RecordCount>0 then
   begin
      DM1.cdsDetCxC.First;
      while not DM1.cdsDetCxC.Eof do begin
         DM1.cdsDetCxC.delete;
      end;
   end;

   if DM1.cdsMovCxCCCGravad.AsFloat>0 then
      GeneraDetalle( 'MG', DM1.cdsMovCxCCCGravad.AsFloat );
   if DM1.cdsMovCxCCCNoGrav.AsFloat>0 then
      GeneraDetalle( 'MN', DM1.cdsMovCxCCCNoGrav.AsFloat );
   if DM1.cdsMovCxCCCFlete.AsFloat >0 then
      GeneraDetalle( 'FL', DM1.cdsMovCxCCCFlete.AsFloat );
   if DM1.cdsMovCxCCCGasFin.AsFloat>0 then
      GeneraDetalle( 'GF', DM1.cdsMovCxCCCGasFin.AsFloat );
   if DM1.cdsMovCxCCCServic.AsFloat>0 then
      GeneraDetalle( 'SV', DM1.cdsMovCxCCCServic.AsFloat );
   if DM1.cdsMovCxCCCDcto.AsFloat  >0 then
      GeneraDetalle( 'DC', DM1.cdsMovCxCCCDcto.AsFloat );
   if DM1.cdsMovCxCCCIGV.AsFloat   >0 then
      GeneraDetalle( 'I1', DM1.cdsMovCxCCCIGV.AsFloat );
   if DM1.cdsMovCxCCCISC.AsFloat   >0 then
      GeneraDetalle( 'IS', DM1.cdsMovCxCCCISC.AsFloat );
   if DM1.cdsMovCxCCCMtoOri.AsFloat>0 then
      GeneraDetalle( 'TO', DM1.cdsMovCxCCCMtoOri.AsFloat );

end;

procedure TFProvisionX.Z2bbtnImprimeClick(Sender: TObject);
var
   xReporte    ,
   xCampoFlag  : String ;
begin
  if dbcbGenDoc.Checked then
   if dm1.RecuperaDatos('CXC108','*','DOCID='''+dblcTDoc.Text+'''') then
   begin
      xReporte   := dm1.cdsqry2.fieldbyname('REPORTE').AsString ;
      xCampoFlag := dm1.cdsqry2.fieldbyname('CAMPOFLAG').AsString ;
      if DM1.RecuperaDatos('CXC109','*',xCampoFlag + ' = ''S'' ') then
      begin
         EmiteDoc(xReporte) ;
      end
      else
         Application.MessageBox (
            'No se ha registrado datos a Imprimir' + #13 + 'Para este Tipo de Documento' +
            #13 +'Imposible Imprimir',
            'Falta Registro de datos a Imprimir',MB_OK ) ;
   end
   else
      Application.MessageBox(
         'No se ha registrado Formato' + #13 + 'Para este Tipo de Documento' +
         #13 +'Imposible Imprimir',
         'No existe el Formato',MB_OK) ;

end;

procedure TFProvisionX.EmiteDoc;
var
   i ,
   Banda,
   Componente    : Integer       ;
   PPREPORT1     : TppReport     ;
   ppdbpipeline1 : Tppdbpipeline ;
   xSQL       ,
   xFiltro    : String    ;
begin
   try
     xSQL :=
        '    SELECT CNT201.AUXNOMB PPRAZON, CNT201.AUXDIR PPDIRECCION,CXC301.CLIERUC PPRUC,                                                       '
      +  '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIA,             '
      +  '           CASE WHEN LENGTH(RTRIM(CHAR(MONTH(CCFEMIS))))< 2 THEN ''0''||CHAR(MONTH(CCFEMIS)) ELSE CHAR(MONTH(CCFEMIS)) END PPMES,       '
      +  '           CHAR(YEAR(CCFEMIS)) PPANO,                                                                                                   '
      +  '           CCIGV PPIGV,CCMTOORI PPTOTAL,                                                                                                '
      +  '           CASE WHEN LENGTH(RTRIM(CHAR(DAY(CCFEMIS))))< 2 THEN ''0''||CHAR(DAY(CCFEMIS)) ELSE CHAR(DAY(CCFEMIS)) END PPDIAN,            '
      +  '           CASE WHEN MONTH(CCFEMIS)= 1 THEN ''Enero''                                                                                   '
      +  '                WHEN MONTH(CCFEMIS)= 2 THEN ''Febrero''                                                                                 '
      +  '                WHEN MONTH(CCFEMIS)= 3 THEN ''Marzo''                                                                                   '
      +  '                WHEN MONTH(CCFEMIS)= 4 THEN ''Abril''                                                                                   '
      +  '                WHEN MONTH(CCFEMIS)= 5 THEN ''Mayo''                                                                                    '
      +  '                WHEN MONTH(CCFEMIS)= 6 THEN ''Junio''                                                                                   '
      +  '                WHEN MONTH(CCFEMIS)= 7 THEN ''Julio''                                                                                   '
      +  '                WHEN MONTH(CCFEMIS)= 8 THEN ''Agosto''                                                                                  '
      +  '                WHEN MONTH(CCFEMIS)= 9 THEN ''Septiembre''                                                                              '
      +  '                WHEN MONTH(CCFEMIS)= 10 THEN ''Octubre''                                                                                '
      +  '                WHEN MONTH(CCFEMIS)= 11 THEN ''Noviembre''                                                                              '
      +  '                WHEN MONTH(CCFEMIS)= 12 THEN ''Diciembre''                                                                              '
      +  '           END PPMESN,                                                                                                                  '
      +  '           CHAR(YEAR(CCFEMIS)) PPANON,                                                                                                  '
      +  '           CCFEMIS                                                                                                                      '
      +  '    FROM CXC301                                                                                                                         '
      +  '    INNER JOIN                                                                                                                          '
      +  '    CNT201                                                                                                                              '
      +  '    ON (CNT201.CLAUXID = CXC301.CLAUXID AND CNT201.AUXID = CXC301.CLIEID)                                                               ' ;
     with dm1.cdsmovcxc do
        xFiltro  :=  ' CIAID = '''        + fieldbyname('CIAID').AsString    + ''' '
                    +' AND CCANOMES = ''' + fieldbyname('CCANOMES').AsString + ''' '
                    +' AND TDIARID  = ''' + fieldbyname('TDIARID').AsString  + ''' '
                    +' AND CCNOREG  = ''' + fieldbyname('CCNOREG').AsString  + ''' ' ;
     xSQL := xSQL + ' WHERE ' + xFiltro  ;
     dm1.cdsQry.Close ;
     dm1.cdsQry.DataRequest(xSQL) ;
     dm1.cdsQry.Open ;
     ppreport1     := TppReport.Create(self)     ;
     ppdbpipeline1 := tppdbpipeline.create(self) ;
     ppdbpipeline1.DataSource := FEmiDoc.dsemidoc       ;
//     PPREPORT1.DeviceType := dtPrinter ;
     PPREPORT1.TEMPLATE.FileName := ExtractFilePath( application.ExeName ) + '\Documentos\' + xArchivoReporte ;
     ppreport1.template.LoadFromFile ;
     dm1.cdsQry2.First ;
     with dm1.cdsqry2 do
     begin
        while not Eof do
        begin
           if PPREPORT1.ObjectByName(bANDA,Componente,fieldbyname('PPVAR').AsString)  then
              ppreport1.Bands[Banda].Objects[Componente].Caption :=
//                    dm1.cdsmovcxc.fieldbyname(fieldbyname('CDSFIELD').AsString).AsString             ;
                    dm1.cdsqry.fieldbyname(fieldbyname('CDSFIELD').AsString).AsString             ;
           dm1.cdsqry2.Next ;
        end;
     end ;
////
{
     if PPREPORT1.ObjectByName(bANDA,Componente,fieldbyname('PPVAR').AsString)  then
        ppreport1.Bands[Banda].Objects[Componente].Caption :=
              dm1.cdsmovcxc.fieldbyname(fieldbyname('CDSFIELD').AsString).AsString            ;
}
////
     if Application.MessageBox( 'Confirme Impresión de Documento' ,
                                'Confirmación Impresión',
                                MB_OKCANCEL + MB_DEFBUTTON1) = IDOK then
//         PPREPORT1.Printtodevices ;
         PPREPORT1.Print ;
   finally
     ppreport1.free ;
   end ;
end;



end.
