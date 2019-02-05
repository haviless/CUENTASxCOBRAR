Unit Fac260;

Interface

Uses

   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Mask, wwdbedit, StdCtrls, wwdbdatetimepicker, Buttons, ExtCtrls, Grids,
   Wwdbigrd, Wwdbgrid, wwdblook, Wwdbdlg, DBCtrls, DB, ppDB, ppDBPipe,
   ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
   ppProd, ppReport, wwclient, ppViewr, ComCtrls, wwriched, DBGrids, ppEndUsr,
   ppStrtch, ppMemo;

Type
   TFSolucion = Class(TForm)
      pnlCabecera: TPanel;
      pnlDetalle: TPanel;
      pnlPie: TPanel;
      Label2: TLabel;
      bbtnCancela: TBitBtn;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnAcepta: TBitBtn;
      Z2bbtnImprime: TBitBtn;
      pnlEstado: TPanel;
      lblActivo: TLabel;
      lblAcepta: TLabel;
      Label14: TLabel;
      pnlCab1: TPanel;
      Label10: TLabel;
      Label3: TLabel;
      dtpHojaT: TwwDBDateTimePicker;
      dbeHojaT: TwwDBEdit;
      bbtnok: TBitBtn;
      dbgDHojaT: TwwDBGrid;
      PnlCab2: TPanel;
      Label1: TLabel;
      lblVendedor: TLabel;
      Label8: TLabel;
      EdtVen: TEdit;
      dblcVen: TwwDBLookupCombo;
      dblcFPago: TwwDBLookupCombo;
      edtFPago: TEdit;
      wwDBDateTimePicker1: TwwDBDateTimePicker;
      lblClie: TLabel;
      lblClieRuc: TLabel;
      lblProvNom: TLabel;
      dblcdClie: TwwDBLookupComboDlg;
      dblcdClieRuc: TwwDBLookupComboDlg;
      edtClie: TEdit;
      dbeCredito: TwwDBEdit;
      Label5: TLabel;
      dbeNPedido: TwwDBEdit;
      Label7: TLabel;
      wwDBEdit3: TwwDBEdit;
      Label9: TLabel;
      pnlRegistro: TPanel;
      Label21: TLabel;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      stTitulo: TStaticText;
      dblcSolucion: TwwDBLookupCombo;
      edtSolucion: TEdit;
      Label11: TLabel;
      dbeInterrupcion: TDBEdit;
      edtInterrupcion: TEdit;
      pnlMonto: TPanel;
      dbeMonto: TwwDBEdit;
      Label12: TLabel;
      Label13: TLabel;
      dblcdFPago: TwwDBLookupCombo;
      edtDFPago: TEdit;
      ppRHojas: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLabel27: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppDBText5: TppDBText;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel29: TppLabel;
      ppLabel35: TppLabel;
      ppLabel34: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel36: TppLabel;
      ppLabel38: TppLabel;
      ppLabel37: TppLabel;
      ppLine2: TppLine;
      ppLine5: TppLine;
      ppLabel39: TppLabel;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      pplblLocal: TppLabel;
      pplblPedido: TppLabel;
      pplblClie: TppLabel;
      pplblClieDes: TppLabel;
      pplblFecha: TppLabel;
      pplblMonto: TppLabel;
      pplblLocalDes: TppLabel;
      pplblLinea: TppLabel;
      pplblVend: TppLabel;
      pplblFPago: TppLabel;
      pplblFPagoDes: TppLabel;
      pplblVendDes: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText28: TppDBText;
      ppDBText33: TppDBText;
      ppDBText34: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText6: TppDBText;
      ppDBText20: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDBPipeline2: TppDBPipeline;
      Z2bbtnClose: TBitBtn;
      dbgDHojaTIButton: TwwIButton;
      dbeStock: TwwDBEdit;
      lblStock: TLabel;
      lblArticulo: TLabel;
      dbeArticulo: TwwDBEdit;
      dblcAlmacen: TwwDBLookupCombo;
      Label6: TLabel;
      dbeCantPedida: TwwDBEdit;
      dbeCantReservada: TwwDBEdit;
      lblCantAceptada: TLabel;
      lblCantReservada: TLabel;
      lblCantxAtender: TLabel;
      dbeCantXAtender: TwwDBEdit;
      ppDBText1: TppDBText;
      dblctMon: TwwDBLookupCombo;
      Label15: TLabel;
      edtMoneda: TEdit;
      ppLabel1: TppLabel;
      pplblMoneda: TppLabel;
      dblcLocal: TwwDBLookupCombo;
      edtLocal: TEdit;
      Label16: TLabel;
      lblProcCliente: TLabel;
      Z2bbtnCtaCte: TBitBtn;
      Label4: TLabel;
      dbeLinea: TwwDBEdit;
      Label17: TLabel;
      dbeSaldo: TwwDBEdit;
      Label18: TLabel;
      Label19: TLabel;
      dbePorc: TwwDBEdit;
      dbeOBS: TwwDBEdit;
      pnlInter: TPanel;
      StaticText1: TStaticText;
      dbgCabHis: TwwDBGrid;
      dbgDetHis: TwwDBGrid;
      bbtnCierra: TBitBtn;
      Z2bbtnHist: TBitBtn;
      dbeRObs: TwwDBRichEdit;
      Z2bbtnOtros: TBitBtn;
      pnlClientes: TPanel;
      StaticText2: TStaticText;
      bbtnCierra1: TBitBtn;
      dbgClientes: TwwDBGrid;
      Z2bbtnNivel: TBitBtn;
      Z2bbtnImprimeHistorial: TBitBtn;
      ppRepHistorial: TppReport;
      ppDesigner1: TppDesigner;
      dbplHistorialSolucion: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      ppLabel2: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppSystemVariable4: TppSystemVariable;
      ppLabel3: TppLabel;
      pplblHISCliente: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBMemo1: TppDBMemo;
      ppDBText4: TppDBText;
      ppFooterBand2: TppFooterBand;
      DBRichEdit1: TDBRichEdit;
      Label20: TLabel;
      dblcConPago: TwwDBLookupCombo;
      EdtCPEstablecida: TEdit;
      Label22: TLabel;
      dblcCia: TwwDBLookupCombo;
      Procedure bbtnokClick(Sender: TObject);
      Procedure dbgDHojaTDblClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dbgDHojaTCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure FormActivate(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure dblcSolucionExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdFPagoExit(Sender: TObject);
      Procedure Z2bbtnAceptaClick(Sender: TObject);
      Procedure Z2bbtnImprimeClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure Z2bbtnCloseClick(Sender: TObject);
      Procedure ppRHojasPreviewFormCreate(Sender: TObject);
      Procedure dbeCantXAtenderExit(Sender: TObject);
      Procedure dblcLocalExit(Sender: TObject);
      Procedure Z2bbtnCtaCteClick(Sender: TObject);
      Procedure bbtnCierraClick(Sender: TObject);
      Procedure Z2bbtnHistClick(Sender: TObject);
      Procedure Z2bbtnOtrosClick(Sender: TObject);
      Procedure bbtnCierra1Click(Sender: TObject);
      Procedure dbgClientesDblClick(Sender: TObject);
      Procedure Z2bbtnNivelClick(Sender: TObject);
      Procedure Z2bbtnImprimeHistorialClick(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcConPagoExit(Sender: TObject);
   Private
    { Private declarations }
      sClieID, sClieDes: String;
      TemDHoja: TwwClientDataSet;
      wFlagLC: boolean;
      wFlagFP: boolean;
      wFlagCVDes: String;
      xIgv, xIsc: Boolean;
      xTasaIgv: double;
//        xCIgv, xCIsc : string;//Campos de flag de Igv e Isc
      wbInicio: boolean;
      rCUsadoTot, rCUsadoLoc, rCUsadoExt: real;
      Procedure FiltraHoja;
      Procedure ReprocesaPedido;
      Procedure GeneraHojaTrabajo(xxOpen, xxVar, xxArt, xxFin, xxLOG, xxCxC: String; xxCantP, xxCantS: double; xxFlag: boolean);
      Procedure AceptaPedido;
      Procedure CalculaSaldo;
      Procedure AnulaPedido;
      Procedure DevuelvePedido;

   Public
    { Public declarations }
      iYEAR, iMONTH: Word;
      sCIA, sFechaEmision, sSAANT, sSACUM, sMES, sSQL, sMESA, sMesN, sGroupBy: String;
      Procedure cSQL;
      Procedure cCxC;
   End;

Var
   FSolucion: TFSolucion;
   xAno: String;
   xNumItemsAnu: integer;
   xCantXAtender: double; // Cantidad por Atender
   xxReservaAnt: double; //Reserva Anterior
   xNumTObservados: double;
Implementation

{$R *.DFM}
Uses CXCDM, CXC001, CxC216;

Procedure TFSolucion.bbtnokClick(Sender: TObject);
Var
   xSQL, sWhere: String;
   sEtapa: String;
   xxAno, xxMes, xxDia: word;
Begin
 // consistencia ingreso de Fecha de Solucion de Hoja Trabajo
{   if dtpHojAT.Date=0 then
      raise exception.Create('Falta Fecha de Hoja Trabajo');}

   If (DM1.wAreaSolu = 'CXC') Then
      sWhere := 'AREA=' + '''' + 'CXC' + ''''
   Else
      If (DM1.wAreaSolu = 'LOG') Then
         sWhere := 'AREA=' + '''' + 'LOG' + '''';

   BuscaQry('dspTGE', 'FAC111', 'ETAPAID', sWhere, 'ETAPAID');

   xSQL := 'CIAID=' + QuotedStr(dblcCia.text) + ' AND PEDIDO =' + quotedstr(dbeNPedido.Text);
   FiltraCds(DM1.cdsDHojaT, 'Select * from FAC310  Where ' + xSQL);

   xSQL := 'CIAID=' + QuotedStr(dblcCia.text) + ' AND CLIEID=' + quotedstr(dblcdClie.Text)
      + '  AND PEDIDO = ' + quotedstr(dbeNPedido.Text);
   FiltraCds(DM1.cdsMovFac, 'Select * from FAC301  Where ' + xSQL);
   FiltraCds(DM1.cdsDetFac, 'Select * from FAC302  Where ' + xSQL);

   DM1.cdsDHojaT.Filtered := False;
   DM1.cdsDHojaT.Filter := 'AREA=' + quotedstr(DM1.wAreaSolu);
   DM1.cdsDHojaT.Filtered := True;
   Z2bbtnGraba.Enabled := True;
   dbgDHojaT.enabled := true;
   Z2bbtnNivel.Enabled := (DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString <> 'S');
   bbtnok.Enabled := false;
   pnlPie.Enabled := true;

   decodedate(dtpHojaT.Date, xxAno, xxMes, xxDia);
   xAno := inttostr(xxAno);
   xNumTObservados := 0;
//CLG : 28/01/2002

   dbgDHojaT.Selected.Clear;
   dbgDHojaT.Selected.Add('INTID'#9'2'#9'Id');
   dbgDHojaT.Selected.Add('INTDES'#9'40'#9'Interrupción');
   dbgDHojaT.Selected.Add('SOLUFID'#9'2'#9'Solución');
   dbgDHojaT.Selected.Add('SOLUDES'#9'12'#9'Estado');
   dbgDHojaT.Selected.Add('HOJTFECREG'#9'10'#9'Fecha~Registro');
   dbgDHojaT.Selected.Add('HOJTHORREG'#9'7'#9'Hora~Registro');
   dbgDHojaT.Selected.Add('HOJTFECSOL'#9'10'#9'Fecha~Solución');
   dbgDHojaT.Selected.Add('HOJTHORSOL'#9'7'#9'Hora~Solución');
   dbgDHojaT.RedrawGrid;
End;

Procedure TFSolucion.dbgDHojaTDblClick(Sender: TObject);
Var
   xVarS, xSolu, xVarI, xFlag: String;
   xVarFS: String;
   xWhere, xFiltro: String;
   xStockd: double;
Begin
   If (DM1.cdsDHojaT.RecordCount = 0) Then
      Raise exception.Create('No existen Interrupciones en el detalle...');
   If DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString = 'P' Then exit;

   pnlRegistro.Visible := true;

   pnlMonto.Visible := false;
   If DM1.wAreaSolu = 'CXC' Then
   Begin
      lblarticulo.Visible := false;
      dbeArticulo.Visible := false;
      dbeStock.Visible := false;
      lblStock.Visible := false;
      lblCantAceptada.visible := false;
      dbeCantPedida.visible := false;
      lblCantReservada.visible := false;
      dbeCantReservada.visible := false;
      lblCantXAtender.visible := false;
      dbeCantXAtender.visible := false;
   End;

   dbeInterrupcion.text := DM1.cdsDHojaT.fieldbyname('INTID').AsString;
   xSolu := DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString;
   xWhere := 'INTID=' + '''' + DM1.cdsDHojaT.fieldbyname('INTID').AsString + '''';
   BuscaQry('dspTGE', 'FAC113', 'INTID,INTDES,INTFLAG,INTVAR ', xWhere, 'INTDES');
   edtInterrupcion.Text := DM1.cdsDHojaT.fieldbyname('INTDES').AsString;
   xFlag := DM1.cdsQry.FieldByName('INTFLAG').AsString;

   xWhere := 'INTVAR=' + '''' + 'LC' + '''';
   xVarI := BuscaQry('dspTGE', 'FAC113', 'INTID,INTFLAG,INTVAR', xWhere, 'INTVAR');

   xVarS := DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'P'); //'S' Indica problemas con el Pedido

   If ((xSolu = xVarS) Or (xFlag = 'S')) Then
      dblcSolucion.Enabled := true
   Else
      dblcSolucion.Enabled := false;
   If (xVarI = DM1.cdsDHojaT.fieldbyname('INTID').AsString) Then
   Begin
      pnlMonto.Visible := true;
      DM1.cdsCComer.close;
      DM1.cdsCComer.open;
      dbeMonto.text := floattostr(DM1.cdsHojaT.fieldbyname('PEDTOTMO').AsFloat);
      dblcdFPago.text := DM1.cdsHojaT.fieldbyname('FPAGOID').AsString;
      edtDFPago.Text := DisplayDescrip('CXC101', 'CCOMERDES', 'CCOMERID', dblcDFPago.Text);
   End;
   dblcSolucion.text := DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString;
   edtSolucion.Text := DisplayDescrip('FAC114', 'SOLUDES', 'SOLUID', dblcSolucion.text);

End;

Procedure TFSolucion.bbtnRegCancClick(Sender: TObject);
Begin
   pnlRegistro.visible := false;
   If dbeArticulo.Visible = true Then
   Begin
      dbeCantXAtender.Enabled := false;
   End;

{	 DM1.cdsHojaT.Edit;
  DM1.cdsHojaT.FieldByName('HOJTUSER').AsString:= dm1.wUsuario;
  DM1.cdsPost(DM1.cdsHojaT);
  DM1.cdsHojaT.Post;
  DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;}
{   DM1.cdsDHojaT.Post;
  DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' );}
//   Showmessage('Registro Grabado');
   Z2bbtnAcepta.Enabled := true;

End;

Procedure TFSolucion.dbgDHojaTCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If (FIELD.FieldName = 'HOJTCANTDF') Then
   Begin
      AFont.Color := clRed;
   End;
End;

Procedure TFSolucion.FormActivate(Sender: TObject);
Var
   xSQL, xCond, xFiltro, xProcedVenta: String;
   rLineaCredito: real;
Begin
   sClieId := dblcdClie.text;
   If DM1.wModo = 'M' Then
   Begin
      DM1.cdsSolu.Close;
      DM1.cdsSolu.open;
      DM1.cdsSolu.Filtered := False;
      If DM1.wAreaSolu = 'LOG' Then
      Begin
         DM1.cdsSolu.Filter := 'SOLUFLAG<>''O'' AND SOLUFLAG<>''P'' AND SOLUFLAG<>''M''';
         dbgDHojaT.Selected.Clear;
         dbgDHojaT.Selected.Add('SOLUDES'#9'20'#9'Estado~Interrup.');
         dbgDHojaT.Selected.Add('PROV'#9'8'#9'Proveedor');
         dbgDHojaT.Selected.Add('ARTID'#9'9'#9'Artículo');
         dbgDHojaT.Selected.Add('ARTDES'#9'25'#9'Descripción');
         dbgDHojaT.Selected.Add('HOJTCANTPE'#9'8'#9'Cantidad~ Pedida');
         dbgDHojaT.Selected.Add('HOJTCANTDF'#9'8'#9'Cantidad~Faltante');
         dbgDHojaT.Selected.Add('HOJTFECREG'#9'6'#9'Fecha~Registro');
         dbgDHojaT.Selected.Add('HOJTHORREG'#9'7'#9'Hora~Registro');
         dbgDHojaT.Selected.Add('HOJTFECSOL'#9'6'#9'Fecha~Solución');
         dbgDHojaT.Selected.Add('HOJTHORSOL'#9'7'#9'Hora~Solución')
      End;
      If DM1.wAreaSolu = 'CXC' Then
      Begin
         DM1.cdsSolu.Filter := 'SOLUFLAG<>''O'' AND SOLUFLAG<>''P'' AND SOLUFLAG<>''M'' AND SOLUFLAG<>''NI''';
         dbgDHojaT.Selected.Clear;
         dbgDHojaT.Selected.Add('INTID'#9'2'#9'Id');
         dbgDHojaT.Selected.Add('INTDES'#9'22'#9'Interrupción');
         dbgDHojaT.Selected.Add('SOLUFID'#9'2'#9'Solución');
         dbgDHojaT.Selected.Add('SOLUDES'#9'12'#9'Estado');
         dbgDHojaT.Selected.Add('HOJTFECREG'#9'6'#9'Fecha~Registro');
         dbgDHojaT.Selected.Add('HOJTHORREG'#9'7'#9'Hora~Registro');
         dbgDHojaT.Selected.Add('HOJTFECSOL'#9'6'#9'Fecha~Solución');
         dbgDHojaT.Selected.Add('HOJTHORSOL'#9'7'#9'Hora~Solución')
      End;

      CalculaSaldo;
      DM1.cdsSolu.Filtered := True;

      DM1.cdsHojaT.Edit;
      DM1.cdsHojaT.fieldbyname('HOJTFECSOL').AsDatetime := dateS;
      xSQL := 'CLIEID =' + '''' + dblcdClie.text + '''';
      edtClie.Text := BuscaQry('dspTGE', 'TGE204', 'CLIEDES,CLIECREMAX,ZONVTAID,CLIECOND', xSQL, 'CLIEDES');
      sClieDes := edtClie.text;
// JCC    // procedencia del Cliente
      lblProcCliente.Visible := False;
      xCond := DM1.cdsQry.FieldbyName('CLIECOND').AsString;
      xProcedVenta := DM1.cdsQry.FieldbyName('ZONVTAID').AsString;
//CLG : 28/01/2002
      rLineaCredito := DM1.cdsQry.FieldbyName('CLIECREMAX').AsFloat;
      dbeCredito.text := FloatToStrF(rLineaCredito, ffNumber, 15, 2);
//			dbeSaldo.text:=FloatToStrF(rLineaCredito-DM1.cdsHojaT.FieldByName('CLIECREMAX').AsFloat,ffnumber,15,2);
      dbeSaldo.text := FloatToStrF(rCUsadoTOT, ffnumber, 15, 2);
      dbeLinea.text := FloatToStrF(rLineaCredito - (rCUsadoTOT + DM1.cdsHojaT.FieldByName('PEDTOTMO').AsFloat), ffnumber, 15, 2);
      Try
         dbePorc.text := FloatToStrF((rLineaCredito - (rCUsadoTOT + DM1.cdsHojaT.FieldByName('PEDTOTMO').AsFloat)) / rLineaCredito, ffnumber, 15, 2);
      Except
         dbePorc.text := '0.00';
      End;

      If length(xProcedVenta) > 0 Then
      Begin
         xSQL := 'ZVTAID=' + quotedstr(xProcedVenta);
         If length(BuscaQry('dspTGE', 'FAC106', 'TVTAID', xSQL, 'TVTAID')) > 0 Then
         Begin
            xProcedVenta := DM1.cdsQry.FieldbyName('TVTAID').AsString;
            xSQL := 'TVTAID=' + quotedstr(xProcedVenta);
            If length(BuscaQry('dspTGE', 'FAC105', 'TVTADES', xSQL, 'TVTADES')) > 0 Then
            Begin
               lblProcCliente.Visible := true;
               lblProcCliente.Caption := 'Cliente de ' + DM1.cdsQry.FieldbyName('TVTADES').AsString;
            End;
         End;
      End;
      xSQL := 'CCOMERID =' + QuotedStr(dblcFPago.text) +
         ' AND CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
         ' AND SCOMERID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('SCOMERID').AsString);
      edtFPago.text := BuscaQry('dspTGE', 'TGE180', 'DCCOMDES', xSQL, 'DCCOMDES');
      xSQL := 'VEID =' + '''' + dblcVen.text + '''';
      edtVen.text := BuscaQry('dspTGE', 'CXC203', 'VENOMBRES', xSQL, 'VENOMBRES');
      xSQL := 'TMONID =' + '''' + dblcTMon.text + '''';
      edtMoneda.text := BuscaQry('dspTGE', 'TGE103', 'TMONDES', xSQL, 'TMONDES');
      edtLocal.Text := BuscaQry('dspTGE', 'TGE126', 'LOCABR', 'LOCID=' + quotedstr(dblcLocal.Text), 'LOCABR');
      dbeOBS.text := DM1.cdsHojaT.fieldbyname('HOJOBS').AsString;
      dblcConPago.text := xCond;
      EdtCPEstablecida.text := BuscaQry('dspTGE', 'TGE166', 'CONDPDES', 'CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) + ' AND CONDPID=' + quotedstr(xCond), 'CONDPDES');

//			If DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString='I' then
      If DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString <> 'S' Then
      Begin
         pnlCab1.Enabled := true;
         bbtnOk.Enabled := true;
         pnlDetalle.Enabled := true;
         lblActivo.Visible := true;
         lblAcepta.Visible := false;
         lblStock.Visible := false;
         dbeStock.Visible := false;
         dbeArticulo.Visible := false;
         lblArticulo.Visible := false;
         pnlRegistro.Visible := false;

         //CLG:04/04/2002
         Z2bbtnAcepta.Enabled := false;

         TNumericField(DM1.cdsHojaT.FieldByName('CLIECREMAX')).DisplayFormat := '###,##0.00';
         TNumericField(DM1.cdsHojaT.FieldByName('PEDTOTMO')).DisplayFormat := '###,##0.00';

         Filtracds(DM1.cdsDHojaT, 'SELECT * FROM FAC310 WHERE PEDIDO=''''');
      End
      Else
         If DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString = 'S' Then
         Begin
            bbtnOk.Enabled := false;
            pnlDetalle.Enabled := false;
            pnlPie.Enabled := true;
            pnlCab1.Enabled := false;
            pnlCab2.Enabled := false;
            Z2bbtnGraba.Enabled := false;
            Z2bbtnAcepta.Enabled := false;
            bbtnCancela.Enabled := false;
            Z2bbtnImprime.Enabled := true;
            FiltraHoja;
            lblacepta.Visible := true;
            lblActivo.Visible := false;
            xFiltro := ' SELECT * FROM FAC310 WHERE HOJTID=' + QuotedStr(dbeHojaT.Text) + ' AND HOJFLAGDEV<>' + QuotedStr('DEV') + ' AND SOLUID<>' + QuotedStr(DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'A'));
            Filtracds(DM1.cdsDHojaT, xFiltro);
         End;
      bbtnokClick(Sender);
      dbgDHojaT.SelectedList.Clear;
   End;
End;

Procedure TFSolucion.bbtnRegOkClick(Sender: TObject);
Var
   sInter, xInt, xSolu, xFPago: String;
   xMonto, xDscto: double;
   xTemp, xSQL, xFiltro: String;
   xZona, xPolit2, xSoluAceptado,
      xSoluN: String;
   i: integer;
Begin
   sInter := DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'P');
   DM1.cdsHojaT.Edit;
   xTemp := DM1.cdsHojaT.fieldbyname('FPAGOID').AsString;
   xInt := dbeInterrupcion.text;
   xSolu := dblcSolucion.text;

  // RECORRER EL GRID
   If dbgDHojaT.SelectedList.Count > 0 Then
   Begin
      For i := 0 To dbgDHojaT.SelectedList.Count - 1 Do
      Begin
         dbgDHojaT.DataSource.DataSet.GotoBookmark(dbgDHojaT.SelectedList.Items[i]);
         DM1.cdsDHojaT.Edit;
         DM1.cdsDHojaT.FieldByName('DHOJTUSER').AsString := dm1.wUsuario;
         DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString := dblcSolucion.text;
         DM1.cdsDHojaT.fieldbyname('SOLUDES').AsString := edtSolucion.text;
         DM1.cdsDHojaT.Post;
         If dblcSolucion.text <> sInter Then
         Begin
            DM1.cdsDHojaT.Edit;
            DM1.cdsDHojaT.fieldbyname('HOJTFECSOL').AsDateTime := DateS;
            DM1.cdsDHojaT.fieldbyname('HOJTHORSOL').AsDateTime := Times;
            DM1.cdsDHojaT.Post;
         End;
      End;
   End
   Else
   Begin
      DM1.cdsDHojaT.Edit;
      DM1.cdsDHojaT.FieldByName('DHOJTUSER').AsString := dm1.wUsuario;
      DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString := dblcSolucion.text;
      DM1.cdsDHojaT.fieldbyname('SOLUDES').AsString := edtSolucion.text;
      DM1.cdsDHojaT.Post;
      If dblcSolucion.text <> sInter Then
      Begin
         DM1.cdsDHojaT.Edit;
         DM1.cdsDHojaT.fieldbyname('HOJTFECSOL').AsDateTime := DateS;
         DM1.cdsDHojaT.fieldbyname('HOJTHORSOL').AsDateTime := TimeS;
         DM1.cdsDHojaT.Post;
      End;
   End;

   DM1.cdsDHojaT.DataRequest('Select * from FAC310 WHERE CIAID=' + QuotedStr(dblcCia.text) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));
   DM1.ControlTran(9, DM1.cdsDHojaT, 'DHOJAT'); //DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' );

  // RECORRER EL GRID

   DM1.cdsHojaT.fieldbyname('HOJTFECREG').AsDateTime := DateS;
   DM1.cdsHojaT.fieldbyname('HOJTHORREG').AsDateTime := TimeS;
  //CLG: 02/04/2002
   If length(Trim(dbeOBS.Text)) = 0 Then
      dbeOBS.Text := '.';
   DM1.cdsHojaT.fieldbyname('HOJOBS').AsString := Trim(dbeOBS.Text);
   DM1.cdsHojaT.Post;
//  DM1.cdsPost(DM1.cdsHojaT);
   DM1.cdsHojaT.DataRequest('Select * from FAC309 WHERE CIAID=' + QuotedStr(dblcCia.text) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));

   DM1.ControlTran(9, DM1.cdsHojaT, 'HOJAT'); //DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' );
   dbgDHojaT.SelectedList.Clear;

   dbgDHojaT.Refresh;
//  pnlRegistro.Visible:=False;
   bbtnRegCanc.SetFocus;
   pnlDetalle.Enabled := True;
   pnlPie.Enabled := True;
   bbtnCancela.enabled := True;
   Z2bbtnGraba.enabled := True;
   Z2bbtnAcepta.enabled := True;
   Z2bbtnImprime.enabled := True;
   Z2bbtnClose.enabled := True;
End;

Procedure TFSolucion.Z2bbtnGrabaClick(Sender: TObject);
Var
   SQLFILTRO: String;
Begin

   If DM1.wAdmin = 'G' Then Exit;
   If pnlRegistro.Visible = true Then
   Begin
      Showmessage('Cierre la Ventana de Solución');
      exit;
   End;

   DM1.cdsHojaT.Edit;
   DM1.cdsHojaT.FieldByName('HOJTUSER').AsString := dm1.wUsuario;
   DM1.cdsDHojaT.Edit;
   If DM1.cdsDHojaT.RecordCount = 0 Then
      Raise exception.create('No hay Detalle especificado');

//	 DM1.cdsPost(DM1.cdsHojaT);
   DM1.cdsHojaT.Post;
   DM1.ControlTran(9, DM1.cdsHojaT, 'HOJAT'); //DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;
   DM1.cdsDHojaT.Post;

   DM1.ControlTran(9, DM1.cdsDHojaT, 'DHOJAT'); //DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' ) ;
   Showmessage('Registro Grabado');
   Z2bbtnAcepta.Enabled := true;

End;

Procedure TFSolucion.dblcSolucionExit(Sender: TObject);
Var
   xSoluAceptado: String;
Begin
   If DM1.cdsDHojaT.FieldByName('AREA').AsString = 'LOG' Then
   Begin
      xSoluAceptado := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUFLAG', 'SOLUFLAG=''A''', 'SOLUID');
      If dblcSolucion.Text = xSoluAceptado Then
      Begin
         dbeCantxAtender.Enabled := true;
         dbeCantxAtender.Text := dbeCantPedida.text;
      End
      Else
         dbeCantxAtender.Enabled := false;
   End;

   edtSolucion.Text := DisplayDescrip('FAC114', 'SOLUDES', 'SOLUID', dblcSolucion.text);

End;

Procedure TFSolucion.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFSolucion.dblcdFPagoExit(Sender: TObject);
Begin
   If (dblcFPago.Text <> dblcDFPago.Text) Then
      edtDFPago.Text := DisplayDescrip('CXC101', 'CCOMERDES', 'CCOMERID', dblcDFPago.Text);
End;

Procedure TFSolucion.Z2bbtnAceptaClick(Sender: TObject);
Var
   xContObservados: double;
   xNumTAnulados: double;
   xContAcep, xContAnuPedido: double;
   xContReg: integer;
   sWhere, sInt, sSQL, xSoluDevuelto, xSoluAnulaPedido, xSoluAceptado: String;
   sSQL1, xSoluItemsAnul, xFiltro, xSoluObservado: String;
   xSaldoR: double;
   xDevuelto, xAreaCxC, xAreaLOG: Boolean;
Begin

   If DM1.wAdmin = 'G' Then Exit;

   If (DM1.cdsDHojaT.recordcount = 0) Then
   Begin
      ShowMessage('No se encontraron datos para Aceptar');
      exit;
   End;

// verifica que panel de soluciones no esté abierta
   If pnlRegistro.Visible = true Then
   Begin
      Showmessage('Cierre la Ventana de Solución');
      exit;
   End;

// verifica numero de items del detalle
   If DM1.cdsDHojaT.RecordCount = 0 Then
      Raise exception.Create('No existe Detalle a Grabar');

   Screen.Cursor := crHourGlass;

   xContObservados := 0; // contador de observados
   xContAcep := 0; // contador de interrupciones aceptadas
   xContAnuPedido := 0; // contador de pedidos anulados
   xNumItemsAnu := 0; // número de items anulados

   xSoluItemsAnul := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUFLAG', 'SOLUFLAG=''NI''', 'SOLUID'); //Cuando se anula un item
   xSoluAnulaPedido := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUFLAG', 'SOLUFLAG=''N''', 'SOLUID'); ///Cuando se anula Pedido
   xSoluObservado := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUFLAG', 'SOLUFLAG=''P''', 'SOLUID'); // cod. solucion observado
   xSoluAceptado := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUFLAG', 'SOLUFLAG=''A''', 'SOLUID'); ///Cuando se Acepta Pedido
   xSoluDevuelto := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUFLAG', 'SOLUFLAG=''D''', 'SOLUID'); ///Cuando se Devuelve a Ventas
{
SOLUID   SOLUDES                    	SOLUFLAG
------   ----------------------------  --------
 0      OPERACION NORMAL                 O    ==>
 1      ANULAR PEDIDO                    N    ==> xSoluAnulaPedido
 2      ACEPTADO                         A    ==> xSoluAceptado
 3      MODIFICADO                       M    ==>
 4      ANULAR ITEM                      NI   ==> xSoluItemsAnul
 9      OBSERVADO                        P    ==> xSoluP
}
   sSQL1 := 'SELECT * FROM FAC310 WHERE PEDIDO=' + quotedstr(dbeNPedido.text) + ' AND HOJFLAGDEV=''INI''';

   DM1.cdsqry13.ProviderName := 'dspTGE';
   DM1.cdsqry13.close;
   DM1.cdsqry13.DataRequest(sSQL1);
   DM1.cdsqry13.open;
   DM1.cdsqry13.First;
   xNumTObservados := 0;
   xNumTAnulados := 0;

   xAreaCxC := False;
   xAreaLOG := False;
   xDevuelto := False;

   While Not DM1.cdsqry13.Eof Do
   Begin
      If DM1.cdsqry13.FieldByName('SOLUFID').AsString = xSoluObservado Then
      Begin
         xNumTObservados := xNumTObservados + 1; ////'S' Indica problemas con el Pedido
         If (DM1.cdsqry13.FieldByName('AREA').AsString = 'CXC') Then
            xAreaCxC := True;
         If (DM1.cdsqry13.FieldByName('AREA').AsString = 'LOG') Then
            xAreaLOG := True;
      End;
      If DM1.cdsqry13.FieldByName('SOLUFID').AsString = xSoluAnulaPedido Then //'S' Indica si esta anulado el Pedido
      Begin
         xNumTAnulados := xNumTAnulados + 1;
      End;
      DM1.cdsqry13.Next;
   End;

   Errorcount := 0;
   DM1.DCOM1.AppServer.SOLStartTransaction;

   DM1.cdsHojaT.Edit;
   If xAreaCxC Then
      DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString := 'N'
   Else
      DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString := 'S';

   If xAreaLOG Then
      DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString := 'N'
   Else
      DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString := 'S';

   DM1.cdsDHojaT.DisableControls;

   sWhere := 'INTVAR=' + quotedstr('FS');
   sInt := BuscaQry('dspTGE', 'FAC113', 'INTID', sWhere, 'INTID'); // código de falta de stock ==> '02'

   xContReg := DM1.cdsDHojaT.RecordCount;
   xNumItemsAnu := 0; // contador de pedidos anulados
   DM1.cdsDHojaT.First;
   While Not DM1.cdsDHojaT.Eof Do
   Begin

  // items observados
      If (DM1.cdsDHojaT.FieldByName('SOLUFID').AsString = xSoluObservado) Then //'S' Indica problemas con el Pedido then
      Begin
         xContObservados := xContObservados + 1; //
      End;

  // Anulacion de Pedido
      If (DM1.cdsDHojaT.FieldByName('SOLUFID').AsString = xSoluAnulaPedido) Then //si Anulan Pedido
      Begin
         xContAnuPedido := xContAnuPedido + 1;
      End;

  // Interrupciones Aceptadas
      If (DM1.cdsDHojaT.FieldByName('SOLUFID').AsString = xSoluAceptado) Then //si Aceptan Interrupcion
      Begin
         xContAcep := xContAcep + 1;
      End;
    // Devolucion de Ventas;

      If (DM1.cdsDHojaT.FieldByName('SOLUFID').AsString = xSoluDevuelto) And (DM1.cdsDHojaT.FieldByName('HOJFLAGDEV').AsString = 'INI') Then //'S' Indica si esta anulado el Pedido
      Begin
         xDevuelto := True;
      End;

      DM1.cdsDHojaT.Next;
   End;

   DM1.cdsDHojaT.EnableControls;

   If ((xContObservados > 0) And (xNumTAnulados = 0) And (Not xDevuelto)) Then // Si hay interrupciones sin solucionar y ningun anulado
   Begin
      If DM1.wAreaSolu = 'CXC' Then // Solucionado para el Area de CxC
         DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString := 'N';
      If DM1.wAreaSolu = 'LOG' Then // Solucionado para el Area de Compras
         DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString := 'N';
      DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString := 'I';
      lblAcepta.Visible := false;
      lblActivo.Visible := true;
      Screen.Cursor := crDefault;
      Raise exception.Create('Existen interrupciones por solucionar')
   End
   Else
   Begin
      If xDevuelto Then
      Begin
         DevuelvePedido;
         Z2bbtnAcepta.Enabled := False;
         Z2bbtnNivel.Enabled := False;
      End
      Else
         If ((xContObservados = 0) And (xNumItemsAnu < DM1.cdsDetFac.RecordCount) And (xNumTAnulados = 0)) Then // Si no tiene Observaciones
         Begin
            AceptaPedido;
            Z2bbtnAcepta.Enabled := False;
            Z2bbtnNivel.Enabled := False;
         End
         Else
         Begin
            If (xNumItemsAnu = DM1.cdsDetFac.RecordCount) Or (xNumTAnulados >= 1) Then //Si en nro de Items del Pedido es igual al total del detalle del pedido
            Begin
               AnulaPedido;
               Z2bbtnAcepta.Enabled := False;
               Z2bbtnNivel.Enabled := False;
            End;
         End;
   End;

   DM1.ControlTran(8, Nil, ''); //COMMIT

   Screen.Cursor := crDefault;
End;

Procedure TFSolucion.Z2bbtnImprimeClick(Sender: TObject);
Var
   xSQL: String;
   xFiltro: String;
Begin

   If ((DM1.cdsHojaT.recordcount = 0) Or (DM1.cdsDHojaT.recordcount = 0)) Then
   Begin
      showmessage('No se encontraron datos para Imprimir');
      Exit;
   End;
   pplblLocal.Caption := DM1.cdsHojaT.fieldbyname('LOCID').AsString;
   pplblClie.Caption := DM1.cdsHojaT.fieldbyname('CLIEID').AsString;
   pplblClieDes.Caption := edtClie.text;
   pplblPedido.Caption := DM1.cdsHojaT.fieldbyname('PEDIDO').AsString;
   pplblVend.Caption := DM1.cdsHojaT.fieldbyname('VEID').AsString;
   pplblVendDes.Caption := edtVen.text;
   pplblFPago.Caption := DM1.cdsHojaT.fieldbyname('FPAGOID').AsString;
   pplblFPagoDes.Caption := edtFpago.text;
   pplblMonto.Caption := DM1.cdsHojaT.fieldbyname('PEDTOTMO').AsString;
   pplblFecha.Caption := DM1.cdsHojaT.fieldbyname('PEDFECHA').AsString;
   pplblLocalDes.Caption := edtLocal.Text;
   pplblMoneda.Caption := edtMoneda.Text;

   xSQL := ' SELECT A.CIAID,A.LOCID,A.PEDIDO, A.CLIEID,D.CLIEDES,D.CLIERUC,'
      + ' D.CLIECREMAX, A.ETAPAID, A.INTID, A.HOJTFECSOL,A.HOJTHORSOL,'
      + ' A.SOLUID,A.SOLUFID,A.HOJTFECREG,A.HOJTHORREG, B.ETAPADES, A.INTDES,'
      + ' CLIECREMAX AS SALDO,'
      + ' A.ARTID, A.HOJTCANTPE, A.HOJTCANTST, A.HOJTCANTDF, E.SOLUDES  '
      + ' FROM FAC310 A INNER JOIN FAC111 B ON (A.ETAPAID = B.ETAPAID)'
//          + ' INNER JOIN FAC113 C ON (A.INTID  = C.INTID)'
   + ' INNER JOIN TGE204 D ON (A.CLIEID = D.CLIEID)'
      + ' INNER JOIN FAC114 E ON (A.SOLUFID = E.SOLUID) ';

   xSQL := xSQL + ' WHERE PEDIDO = ' + '''' + dbeNPedido.Text + '''';
   xSQL := xSQL + '  AND  A.AREA = ' + '''' + DM1.wAreaSolu + '''';
   xSQL := xSQL + '  ORDER BY A.ETAPAID,A.INTID,A.ARTID ';

   DM1.cdsQry3.close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.open;
   ppRHojaS.Print;

End;

Procedure TFSolucion.FiltraHoja;
Var
   xSQL: String;
Begin
   xSQL := 'PEDIDO =' + quotedstr(dbeNPedido.Text)
      + ' ORDER BY ETAPAID,INTID ';
   FiltraCds(DM1.cdsDHojaT, 'Select * from FAC310 Where ' + xSQL);

End;

Procedure TFSolucion.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   If pnlRegistro.Visible = true Then
      Raise exception.Create('Cierre la Ventana de Soluciones !!!');

   DM1.cdsHojaT.Filter := '';
   DM1.cdsDHojaT.Filter := '';
   DM1.cdsSolu.Filter := '';
   DM1.cdsMovFac.Filter := '';
   DM1.cdsDetFac.Filter := '';

   DM1.cdsHojaT.Filtered := False;
   DM1.cdsDHojaT.Filtered := False;
   DM1.cdsSolu.Filtered := False;
   DM1.cdsMovFac.Filtered := False;
   DM1.cdsDetFac.Filtered := False;

   DM1.cdsMovFac.Close;
   DM1.cdsDetFac.Close;
   bbtnok.enabled := true;
   DM1.cdsHojaT.CancelUpdates;
   DM1.cdsDHojaT.CancelUpdates;
   FPrincipal.GSolucion.RefreshFilter;
   close;
End;
//////////////reproceso

Procedure TFSolucion.ReprocesaPedido;
Var
   xTMonto, xTDscto, xTCant: double;
   xTIgv, xTIsc: double; //Montos Totales de IGV e ISC
   xxTotIgv, xxTotIsc, xxTotal: double;
   xFiltro, xInt, sLocal, sProv: String;
   xCredito, xDisponible: double;
   SQLFILTRO, xWhere, xLMod: String;
   xNLet: integer;
   xSQL: String;
Begin
   xSQL := 'CIAID = ' + quotedstr(dblcCia.Text)
      + ' AND PEDIDO = ' + quotedstr(dbeNPedido.Text);

   FiltraCds(DM1.cdsMovFac, 'Select * from FAC301  Where ' + xSQL);
   FiltraCds(DM1.cdsDetFac, 'Select * from FAC302  Where ' + xSQL);

// calcula sumatorias del detalle
   xIgv := false;
   xIsc := false;
   DM1.cdsDetFac.First;
   DM1.cdsDetFac.DisableControls;
   xTMonto := 0;
   xTDscto := 0;
   xTCant := 0;
   xTIgv := 0;
   xTIsc := 0;
   xIgv := true;
   xFiltro := 'TIPDET=' + quotedstr('I1');
   Filtracds(DM1.cdsTReg, 'Select TASA from TGE128 Where ' + xFiltro);
   xTasaIgv := FRound((DM1.cdsTReg.FieldByName('TASA').AsFloat / 100), 7, 2);

   While Not DM1.cdsDetFac.eof Do
   Begin
      If DM1.cdsDetFac.FieldByName('DPEDARTIAN').AsString = 'N' Then
      Begin
         xTMonto := xTMonto + DM1.cdsDetFac.fieldbyname('DPEDMTOMO').AsFloat;
         xTDscto := xTDscto + (DM1.cdsDetFac.fieldbyname('DPEDDCTOMO').AsFloat + DM1.cdsDetFac.fieldbyname('DPEDDTOMO2').AsFloat);
         xTCant := xTCant + DM1.cdsDetFac.fieldbyname('DPEDCANTP').Asfloat;
      End;
      DM1.cdsDetFac.Next;
   End; //while
   DM1.cdsDetFac.EnableControls;

   DM1.cdsMovFac.Edit;

//   DM1.cdsMovFac.fieldbyname('PEDUSER').AsString  := DM1.wUsuario; // usuario que registra
   DM1.cdsMovFac.fieldbyname('PEDFREG').AsDateTime := DateS; // fecha que registra Usuario
   DM1.cdsMovFac.fieldbyname('PEDHREG').AsDateTime := TimeS; // Hora de Registro de Usuario

// graba sumatorias del detalle en cabecera Fac
// Si ventas son Local no se aplica embalaje
// sino se se suma el embalaje al subtotal, en el caso de Provincias
   sLocal := BuscaQry('dspTGE', 'FAC105', 'TVTAID', 'TVTAFLAG=' + quotedstr('L'), 'TVTAID');
   sProv := BuscaQry('dspTGE', 'FAC105', 'TVTAID', 'TVTAFLAG=' + quotedstr('P'), 'TVTAID');
   If (DM1.cdsMovFac.fieldbyname('TIPVTAID').AsString = sLocal) Then //Zona Lima
      DM1.cdsMovFac.fieldbyname('PEDMTOMO').AsFloat := FRound(xTMonto, 15, 2) // Monto
   Else
   Begin
      If (DM1.cdsMovFac.fieldbyname('TIPVTAID').AsString = sProv) Then // Zona Provincias
         DM1.cdsMovFac.fieldbyname('PEDMTOMO').AsFloat := FRound(xTMonto + DM1.cdsMovFac.fieldbyname('PEDEMBMO').AsFloat, 15, 2); // Monto
   End;
   //////////////////////////////////////////////////////////////////////////////////////////
   DM1.cdsMovFac.fieldbyname('PEDDCTOMO').AsFloat := FRound(xTDscto, 15, 2); // Monto Dsctos
   xxTotIgv := 0;
   xxTotIsc := 0;
   xxTotal := 0;
   If xIgv And Not xIsc Then
   Begin
      xTIGV := FRound(DM1.cdsMovFac.fieldbyname('PEDMTOMO').AsFloat * xTasaIgv, 15, 2);
      xxTotIgv := DM1.cdsMovFac.fieldbyname('PEDMTOMO').AsFloat + xTIGV;
      DM1.cdsMovFac.fieldbyname('PEDIGVMO').AsFloat := FRound(xTIgv, 15, 2);
      DM1.cdsMovFac.fieldbyname('PEDISCMO').AsFloat := FRound(xTIsc, 15, 2);
      DM1.cdsMovFac.fieldbyname('PEDTOTMO').AsFloat := FRound(xxTotIgv, 15, 2); // Monto Totales con IGV
   End;

   If DM1.cdsMovFac.fieldbyname('TMONID').AsString = DM1.wTMonLoc Then
   Begin
      // Igv solamente
      If xIgv And Not xIsc Then
      Begin
         DM1.cdsMovFac.fieldbyname('PEDTOTMN').AsFloat := FRound(xxTotIGV, 15, 2); // Monto Totales con IGV
         DM1.cdsMovFac.fieldbyname('PEDTOTME').Asfloat := FRound(xxTotIgv / FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // IGV en moneda extranjera
      End;
      DM1.cdsMovFac.fieldbyname('PEDIGVMN').AsFloat := FRound(xTIGV, 15, 2);
      DM1.cdsMovFac.fieldbyname('PEDIGVME').AsFloat := FRound(xTIGV / FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // IGV en moneda extranjera
      DM1.cdsMovFac.fieldbyname('PEDISCMN').AsFloat := FRound(xTISC, 15, 2);
      DM1.cdsMovFac.fieldbyname('PEDISCME').AsFloat := FRound(xTISC / FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // ISC en moneda extranjera
      DM1.cdsMovFac.fieldbyname('PEDMTOMN').AsFloat := FRound(xTMonto, 15, 2); // Total en moneda local
      DM1.cdsMovFac.fieldbyname('PEDMTOME').AsFloat := FRound(xTMonto / FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // Total en moneda extranjera
      DM1.cdsMovFac.fieldbyname('PEDDCTOMN').AsFloat := FRound(xTDscto, 15, 2); // Dscto en moneda Local
      DM1.cdsMovFac.fieldbyname('PEDDCTOME').AsFloat := FRound(xTDscto / FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // Dscto en moneda extranjera
   End
   Else
   Begin
      If xIgv And Not xIsc Then
      Begin
         DM1.cdsMovFac.fieldbyname('PEDTOTMN').Asfloat := FRound(xxTotIGV * FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // IGV en moneda extranjera
         DM1.cdsMovFac.fieldbyname('PEDTOTME').Asfloat := FRound(xxTotIGV, 15, 2); // Monto Totales con IGV
      End;
      DM1.cdsMovFac.fieldbyname('PEDMTOMN').AsFloat := FRound(xTMonto * FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // Total en moneda local
      DM1.cdsMovFac.fieldbyname('PEDMTOME').AsFloat := FRound(xTMonto, 15, 2); // Total en moneda extranjera
      DM1.cdsMovFac.fieldbyname('PEDDCTOMN').AsFloat := FRound(xTDscto * FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2); // Dscto en moneda Local
      DM1.cdsMovFac.fieldbyname('PEDDCTOME').AsFloat := FRound(xTDscto, 15, 2); // Dscto en moneda extranjera
      DM1.cdsMovFac.fieldbyname('PEDIGVMN').AsFloat := FRound(xTIGV * FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2);
      DM1.cdsMovFac.fieldbyname('PEDIGVME').AsFloat := FRound(xTIGV, 15, 2); // IGV en moneda extranjera
      DM1.cdsMovFac.fieldbyname('PEDISCMN').AsFloat := FRound(xTISC * FRound(DM1.cdsMovFac.fieldbyname('PEDTCAM').AsFloat, 12, 3), 15, 2);
      DM1.cdsMovFac.fieldbyname('PEDISCME').AsFloat := FRound(xTISC, 15, 2); // ISC en moneda extranjera
   End;

   xDisponible := DM1.cdsMovFac.fieldbyname('CLIECREMAX').AsFloat;

   xWhere := 'CCOMERID=' + quotedstr(dblcFPago.Text) + ' AND SCOMERID =' + quotedstr(DM1.cdsMovFac.fieldbyname('TIPVTAID').AsString);
   xCredito := strtofloat(BuscaQry('dspTGE', 'TGE180', 'DCCOMMTO,DCCOMMOD,DCCOMNLET', xWhere, 'DCCOMMTO'));
   xLMod := DM1.cdsQry.fieldbyname('DCCOMMOD').AsString;
   xNLet := DM1.cdsQry.fieldbyname('DCCOMNLET').AsInteger;
////////Interrupcion con Minimo de forma de pago    'FP'
   If xLMod = 'L' Then
   Begin
      If ((DM1.cdsMovFac.fieldbyname('PEDTOTME').AsFloat / xNLet) < xCredito) Then
      Begin
         wFlagFP := true;
      End
      Else
      Begin
         If DM1.cdsDHojaT.Active Then
         Begin
            xWhere := 'INTVAR=' + '''' + 'FP' + '''';
            xInt := BuscaQry('dspTGE', 'FAC113', 'INTID', xWhere, 'INTID'); // Desc. de Etapas
            If DM1.cdsDHojaT.Locate('CIAID;CLIEID;PEDIDO;INTID', VarArrayOf([DM1.cdsDHojaT.fieldbyname('CIAID').AsString, dblcdClie.text, dbeNPedido.text, xInt]), [loCaseInsensitive]) Then
               DM1.cdsDHojaT.Delete;
         End;
      End;
   End
   Else
   Begin
      If (DM1.cdsMovFac.fieldbyname('PEDTOTME').AsFloat < xCredito) Then
      Begin
         wFlagFP := true;
      End
      Else
      Begin
         If DM1.cdsDHojaT.Active Then
         Begin
            xWhere := 'INTVAR=' + '''' + 'FP' + '''';
            xInt := BuscaQry('dspTGE', 'FAC113', 'INTID', xWhere, 'INTID'); // Desc. de Etapas
            If DM1.cdsDHojaT.Locate('CIAID;CLIEID;PEDIDO;INTID', VarArrayOf([DM1.cdsDHojaT.fieldbyname('CIAID').AsString, dblcdClie.text, dbeNPedido.text, xInt]), [loCaseInsensitive]) Then
               DM1.cdsDHojaT.Delete;
         End;
      End;
   End;

   SQLFiltro := 'Select * from FAC301 WHERE CIAID=' + QuotedStr(DM1.cdsHojAT.fieldbyname('CIAID').AsString)
      + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);
   DM1.cdsMovFac.DataRequest(SQLFiltro);
   DM1.ControlTran(0, DM1.cdsMovFac, 'MOVFAC'); //DM1.AplicaDatos( DM1.cdsMovFac, 'MOVFAC' ) ;

   SQLFiltro := 'Select * from FAC302 WHERE CIAID=' + QuotedStr(DM1.cdsHojAT.fieldbyname('CIAID').AsString)
      + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);
   DM1.cdsDetFac.DataRequest(SQLFiltro);
   DM1.ControlTran(0, DM1.cdsDetFac, 'DETFAC'); //DM1.AplicaDatos( DM1.cdsDetFac, 'DETFAC' ) ;

   SQLFiltro := 'Select * from FAC309 WHERE CIAID=' + QuotedStr(DM1.cdsHojAT.fieldbyname('CIAID').AsString)
      + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);

   DM1.cdsHojaT.Edit;
   DM1.cdsHojaT.FieldByName('HOJTFECSOL').AsDateTime := DateS;
   DM1.cdsHojaT.FieldByName('HOJTHORSOL').AsDateTime := TimeS;
   DM1.cdsHojaT.Post;
   DM1.cdsHojaT.DataRequest(SQLFiltro);
   DM1.ControlTran(0, DM1.cdsHojaT, 'HOJAT'); //  DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;

   SQLFiltro := 'Select * from FAC310 WHERE CIAID=' + QuotedStr(DM1.cdsHojAT.fieldbyname('CIAID').AsString)
      + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);

   DM1.cdsDHojaT.DataRequest(SQLFiltro);
   DM1.ControlTran(0, DM1.cdsDHojaT, 'DHOJAT'); //DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' ) ;
End;
///////*fin de reproceso
/////////

Procedure TFSolucion.GeneraHojaTrabajo(xxOpen, xxVar, xxArt, xxFin, xxLOG, xxCxC: String; xxCantP, xxCantS: double; xxFlag: boolean);
Var
   xInt, xSolu: String;
   xCia, xclie, xPedido: String;
   xFiltro: String;
Begin
   If (xxOpen = 'S') Or Not DM1.cdsHojaT.Active Then
   Begin

      DM1.cdsHojaT.Edit;

      If xxLOG = 'S' Then
      Begin
         If (DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').AsString = 'N') Or (DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').IsNull) Then
            DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').AsString := 'S';
      End
      Else
      Begin
         If (DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').AsString <> 'S') Or (DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').IsNull) Then
            DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').AsString := 'N';
      End;

      If xxCXC = 'S' Then
      Begin
         If (DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').AsString = 'N') Or (DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').IsNull) Then
            DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').AsString := 'S';
      End
      Else
      Begin
         If (DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').AsString <> 'S') Or (DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').IsNull) Then
            DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').AsString := 'N';
      End;

      DM1.cdsHojaT.Post;
   End;

   If wbInicio Then
   Begin
      DM1.cdsDHojaT.Insert;
      DM1.cdsDHojaT.fieldbyname('CIAID').ASString := DM1.cdsHojaT.fieldbyname('CIAID').AsString;
      DM1.cdsDHojaT.fieldbyname('LOCID').ASString := DM1.cdsHojaT.fieldbyname('LOCID').AsString;
      DM1.cdsDHojaT.fieldbyname('PEDIDO').AsString := dbeNPedido.text;
      DM1.cdsDHojaT.fieldbyname('HOJTID').AsString := dbeNPedido.text;
      DM1.cdsDHojaT.fieldbyname('CLIEID').AsString := dblcdClie.text;
      DM1.cdsDHojaT.fieldbyname('CLIERUC').AsString := dblcdClieRuc.text;
      DM1.cdsDHojaT.fieldbyname('HOJTESTADO').AsString := 'I';
      DM1.cdsDHojaT.fieldbyname('INTID').AsString := DisplayDescrip('FAC113', 'INTID', 'INTVAR', xxVar);
      If (xxVar = 'CV') Then
         DM1.cdsDHojaT.fieldbyname('INTDES').AsString := wFlagCVDes
      Else
         DM1.cdsDHojaT.fieldbyname('INTDES').AsString := DM1.cdsQry2.fieldbyname('INTDES').AsString;

      DM1.cdsDHojaT.fieldbyname('ETAPAID').AsString := DM1.cdsQry2.fieldbyname('ETAPAID').AsString;
      DM1.cdsDHojaT.fieldbyname('HOJTFECREG').AsDateTime := DateS;
      DM1.cdsDHojaT.fieldbyname('HOJTHORREG').AsDateTime := TimeS;

      If (xxFlag = true) Then
      Begin //Interrupcion Activada
         xSolu := DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'P');
         DM1.cdsDHojaT.fieldbyname('SOLUID').AsString := xSolu; // Con problemas
         DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString := xSolu; // Este campo serbira para almacenar la solución final
         DM1.cdsDHojaT.fieldbyname('SOLUDES').AsString := DM1.cdsQry2.fieldbyname('SoluDes').AsString; // Este campo servira para almacenar la solución final
      End
      Else
      Begin
         xSolu := DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'A');
         DM1.cdsDHojaT.fieldbyname('SOLUID').AsString := xSolu; // Aceptados
         DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString := xSolu; // Este campo serbira para almacenar la solución final
         DM1.cdsDHojaT.fieldbyname('SOLUDES').AsString := DM1.cdsQry2.fieldbyname('SOLUDES').AsString; // Este campo servira para almacenar la solución final
      End;
      DM1.cdsDHojaT.Post;
   End //if recordcount =0
   Else
      If Not wbInicio Then
      Begin
         xCia := DM1.cdsHojaT.fieldbyname('CIAID').AsString;
         ;
         xClie := dblcdClie.text;
         xPedido := dbeNPedido.text;
         xInt := DisplayDescrip('FAC113', 'INTID', 'INTVAR', xxVar);

         If DM1.cdsDHojaT.Locate('CIAID;CLIEID;PEDIDO;INTID', VarArrayOf([xcia, xclie, xpedido, xInt]), [loCaseInsensitive]) Then
         Begin
            DM1.cdsDHojaT.Edit;
            If (DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString = 'P') Then ;
            DM1.cdsDHojaT.fieldbyname('HOJTESTADO').AsString := 'P';

            If (xxFin = 'S') Then
            Begin
               DM1.cdsDHojaT.fieldbyname('HOJTFECSOL').AsDateTime := DateS;
               DM1.cdsDHojaT.fieldbyname('HOJTHORSOL').AsDateTime := TimeS;
            End;
            DM1.cdsDHojaT.Post;
         End
         Else
         Begin
            DM1.cdsDHojaT.Insert;
            DM1.cdsDHojaT.fieldbyname('CIAID').ASString := DM1.cdsHojaT.fieldbyname('CIAID').AsString;
            ;
            DM1.cdsDHojaT.fieldbyname('LOCID').ASString := DM1.cdsHojaT.fieldbyname('LOCID').AsString;
            ;
            DM1.cdsDHojaT.fieldbyname('PEDIDO').AsString := dbeNPedido.text;
            DM1.cdsDHojaT.fieldbyname('HOJTID').AsString := dbeNPedido.text;
            DM1.cdsDHojaT.fieldbyname('CLIEID').AsString := dblcdClie.text;
            DM1.cdsDHojaT.fieldbyname('CLIERUC').AsString := dblcdClieRuc.text;
            DM1.cdsDHojaT.fieldbyname('HOJTESTADO').AsString := 'I';
            DM1.cdsDHojaT.fieldbyname('INTID').AsString := DisplayDescrip('FAC113', 'INTID', 'INTVAR', xxVar);

            DM1.cdsDHojaT.fieldbyname('ETAPAID').AsString := DM1.cdsQry2.fieldbyname('EtapaId').AsString;
            DM1.cdsDHojaT.fieldbyname('HOJTFECREG').AsDateTime := DateS;
            DM1.cdsDHojaT.fieldbyname('HOJTHORREG').AsDateTime := TimeS;
            If (xxFlag = true) Then
            Begin //Interrupcion Activada
               DM1.cdsDHojaT.fieldbyname('SOLUID').AsString := DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'P');
               ; // Con problemas
               DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString := DM1.cdsDHojaT.fieldbyname('SOLUID').AsString; // Este campo serVira para almacenar la solución final
               DM1.cdsDHojaT.fieldbyname('SOLUDES').AsString := DM1.cdsQry2.fieldbyname('SOLUDES').AsString; // Este campo serVira para almacenar la solución final
            End
            Else
            Begin
               xSolu := DisplayDescrip('FAC114', 'SOLUID', 'SOLUFLAG', 'A');
               DM1.cdsDHojaT.fieldbyname('SOLUID').AsString := xSolu; // Aceptados
               DM1.cdsDHojaT.fieldbyname('SOLUFID').AsString := xSolu; // Este campo serbira para almacenar la solución final
               DM1.cdsDHojaT.fieldbyname('SOLUDES').AsString := DM1.cdsQry2.fieldbyname('SOLUDES').AsString; // Este campo servira para almacenar la solución final
            End;

            DM1.cdsDHojaT.Post;
         End;
      End; //recordcount
End;

//*

Procedure TFSolucion.Z2bbtnCloseClick(Sender: TObject);
Begin
   close;
End;

Procedure TFSolucion.AceptaPedido;
Var
   xWhere, sSQL: String;

Begin

// recalcula totales de la cabecera del pedido considerando sólo los items válidos
   //ReprocesaPedido;

   If xNumTObservados = 0 Then
   Begin
   // actualiza cabecera de Pedido
      DM1.cdsMovFac.Edit;

       //BORRAR 30/05/2002
      If length(DM1.cdsMovFac.fieldbyname('NOTADESPID').AsString) = 0 Then
      Begin
         xWhere := 'CIAID=' + quotedstr(DM1.cdsMovFac.fieldbyname('CIAID').AsString);
         DM1.cdsMovFac.fieldbyname('NOTADESPID').AsString := StrZero(DM1.BuscaUltTGE('dspTGE', 'FAC301', 'NOTADESPID', xWhere), DM1.wAnchoGuia);
      End;

      DM1.cdsMovFac.FieldByName('PEDESTADO').AsString := 'ALMACEN';
      DM1.cdsMovFac.fieldbyname('PEDSIT').AsString := 'PENDIENTE';
      DM1.cdsMovFac.fieldbyname('ESTVENTAS').AsString := 'N';
      DM1.cdsMovFac.fieldbyname('ESTALM').AsString := 'S';
      DM1.cdsMovFac.fieldbyname('ESTDESP').AsString := 'N';
      DM1.cdsMovFac.fieldbyname('ESTGUIA').AsString := 'N';
      DM1.cdsMovFac.fieldbyname('ESTFACT').AsString := 'N';
      DM1.cdsMovFac.fieldbyname('PEDIMPGUIA').AsString := 'N';
      DM1.cdsMovFac.fieldbyname('PEDIMPFACT').AsString := 'N';
      DM1.cdsMovFac.fieldbyname('PEDFLAGD').AsString := 'R'; //Reservado  agregado 07/03/2001
      DM1.cdsMovFac.fieldbyname('PEDFREG').AsDatetime := DateS; // fecha que registra Usuario
      DM1.cdsMovFac.fieldbyname('PEDHREG').AsDatetime := TimeS; // Hora de Registro de Usuario
      DM1.cdsMovFac.Post;

      sSQL := 'Select * from FAC301 WHERE CIAID=' + QuotedStr(DM1.cdsHojAT.fieldbyname('CIAID').AsString)
         + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);
      DM1.cdsMovFac.DataRequest(sSQL);

      DM1.ControlTran(0, DM1.cdsMovFac, 'MOVFAC'); //    DM1.AplicaDatos( DM1.cdsMovFac, 'MOVFAC' );

      // actualiza detalle de Pedido
      sSQL := 'UPDATE FAC302 SET DPEDESTADO=''ALMACEN'''
         + ' , DPEDSIT=''PENDIENTE'''
         + ' WHERE CIAID=' + quotedstr(dblcCia.text)
         + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
         DM1.ControlTran(1, Nil, ''); //ROLLBACK
      End;

      // seguimiento de pedido - Inicio para almacén
      GeneraHojaTrabajo('S', 'AM', '', 'N', 'N', 'N', 0, 0, false);

      If DM1.cdsHojaT.Active Then
         DM1.ControlTran(0, DM1.cdsHojaT, 'HOJAT'); //   DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;
      If DM1.cdsDHojaT.Active Then
         DM1.ControlTran(0, DM1.cdsDHojaT, 'DHOJAT'); //  DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' ) ;

   End; // xNumTObservados=0

   DM1.cdsHojaT.Edit;

   If DM1.wAreaSolu = 'CXC' Then // Solucionado para el Area de CxC
      DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString := 'S';
   If DM1.wAreaSolu = 'LOG' Then // Solucionado para el Area de Compras
      DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString := 'S';

   If (DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString = 'S') Then
   Begin
      If DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').AsString = 'N' Then
         DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString := 'P';

      If xNumTObservados = 0 Then
         DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString := 'P';

   End
   Else
   Begin
      DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString := 'I'
   End;

   DM1.cdsHojaT.fieldbyname('HOJTUSER').value := DM1.wUsuario;
   DM1.cdsHojaT.fieldbyname('HOJTFECSOL').AsDateTime := DateS;
   DM1.cdsHojaT.fieldbyname('HOJTHORSOL').AsDateTime := TimeS;
   DM1.cdsHojaT.Post;
   DM1.cdsHojaT.DataRequest('Select * from FAC309 WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));

   DM1.ControlTran(0, DM1.cdsHojaT, 'HOJAT'); //   DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;
   DM1.cdsDHojaT.DataRequest('Select * from FAC310 WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));
   DM1.ControlTran(0, DM1.cdsDHojaT, 'DHOJAT'); //  DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' ) ;

   lblAcepta.Caption := 'ACEPTADO';
   lblAcepta.Visible := true;
   lblActivo.Visible := false;
   Showmessage('Registro Aceptado');
   Z2bbtnGraba.Enabled := false;
   Z2bbtnAcepta.Enabled := false;
   bbtnCancela.Enabled := false;
   dbgDHojaT.Enabled := false;
   bbtnok.Enabled := false;
End;

Procedure TFSolucion.AnulaPedido;
Var
   sSQL, sWhere: String;
   Y, M, D: word;
Begin
// anula en cabecera de pedido
   decodedate(DM1.cdsMovFac.fieldbyname('PEDFECHA').AsDateTime, Y, M, D);

   DM1.cdsMovFac.Edit;
   DM1.cdsMovFac.FieldByName('PEDESTADO').AsString := 'VENTAS';
   DM1.cdsMovFac.fieldbyname('PEDSIT').AsString := 'ANULADO';
   DM1.cdsMovFac.fieldbyname('PEDFREG').AsDatetime := DateS; // fecha que registra Usuario
   DM1.cdsMovFac.fieldbyname('PEDHREG').AsDatetime := TimeS; // Hora de Registro de Usuario
   DM1.cdsMovFac.Post;
   sSQL := 'Select * from FAC301 WHERE CIAID=' + QuotedStr(dblcCia.text)
      + ' AND PEDIDO=' + quotedstr(dbeNPedido.Text);
   DM1.cdsMovFac.DataRequest(sSQL);
   DM1.ControlTran(0, DM1.cdsMovFac, 'MOVFAC'); // DM1.AplicaDatos( DM1.cdsMovFac, 'MOVFAC' );

   sSQL := 'CIAID = ' + quotedstr(dblcCia.Text)
      + ' AND PEDIDO = ' + quotedstr(dbeNPedido.Text);
   FiltraCds(DM1.cdsDetFac, 'Select * from FAC302  Where ' + sSQL);
   DM1.cdsDetFac.DisableControls;
   DM1.cdsDetFac.First;
   While Not DM1.cdsDetFac.Eof Do
   Begin
      If DM1.cdsDetFac.FieldByName('DPEDARTIAN').AsString = 'N' Then
      Begin
         sSQL := 'Update LOG316 Set STKRACTG =' + DM1.wReplacCeros + '(STKRACTG,0)' + '-' + floattostr(DM1.cdsDetFac.fieldbyname('DPEDCANTRE').AsFloat)
            + ' WHERE STKANO =' + quotedstr(INTTOSTR(Y))
            + ' AND CIAID = ' + Quotedstr(DM1.cdsDetFac.fieldbyname('CIAID').AsString)
            + ' AND LOCID = ' + Quotedstr(DM1.cdsDetFac.fieldbyname('LOCID').AsString)
            + ' AND TINID = ' + Quotedstr(DM1.cdsDetFac.fieldbyname('TINID').AsString)
            + ' AND ALMID =' + Quotedstr(DM1.cdsDetFac.fieldbyname('ALMID').AsString)
            + ' AND ARTID = ' + Quotedstr(DM1.cdsDetFac.fieldbyname('ARTID').AsString);

         Try
            DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         Except
            DM1.ControlTran(1, Nil, ''); //ROLLBACK
         End;
      End;
      DM1.cdsDetFac.Next;
   End;

////////
   sSQL := 'UPDATE FAC302 SET DPEDESTADO=''VENTAS'', DPEDCANTXA=0,DPEDCANTRE=0,DPEDSALDO=0 '
      + ' ,DPEDSIT= ''ANULADO'''
      + ' WHERE CIAID=' + quotedstr(dblcCia.text)
      + ' AND PEDIDO=' + quotedstr(dbeNPedido.text);
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
      DM1.ControlTran(1, Nil, ''); //ROLLBACK
   End;

   DM1.cdsHojaT.Edit;

   DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString := 'S';
   DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString := 'S';

   DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString := 'P';
   DM1.cdsHojaT.fieldbyname('HOJTUSER').value := DM1.wUsuario;
   DM1.cdsHojaT.fieldbyname('HOJTFECSOL').AsDateTime := DateS;
   DM1.cdsHojaT.fieldbyname('HOJTHORSOL').AsDateTime := TimeS;
   DM1.cdsHojaT.Post;
   DM1.cdsHojaT.DataRequest('Select * from FAC309 WHERE CIAID=' + QuotedStr(dblcCia.text) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));
   DM1.ControlTran(0, DM1.cdsHojaT, 'HOJAT'); //  DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;
   DM1.cdsDHojaT.DataRequest('Select * from FAC310 WHERE CIAID=' + QuotedStr(dblcCia.text) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));
   DM1.ControlTran(0, DM1.cdsDHojaT, 'DHOJAT'); //  DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' ) ;

   lblAcepta.Caption := 'ACEPTADO';
   lblAcepta.Visible := true;
   lblActivo.Visible := false;
   Showmessage('Registro Aceptado');
   Z2bbtnGraba.Enabled := false;
   Z2bbtnAcepta.Enabled := false;
   bbtnCancela.Enabled := false;
   dbgDHojaT.Enabled := false;
   bbtnok.Enabled := false;
End;

Procedure TFSolucion.ppRHojasPreviewFormCreate(Sender: TObject);
Begin
   ppRHojas.PreviewForm.ClientHeight := 500;
   ppRHojas.PreviewForm.ClientWidth := 650;
   TppViewer(ppRHojas.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
End;

Procedure TFSolucion.dbeCantXAtenderExit(Sender: TObject);
Begin
   If length(dbeCantXAtender.Text) = 0 Then
   Begin
      showmessage('Ingrese Cantidad');
      dbeCantXAtender.Text := dbeCantPedida.Text;
      exit;
   End;
   If strtofloat(dbeCantXAtender.Text) > strtofloat(dbeCantPedida.text) Then
      Raise exception.Create('La Cantidad Aceptada no puede ser mayor a la Cantidad Pedida.')

End;

Procedure TFSolucion.dblcLocalExit(Sender: TObject);
Begin
   edtLocal.Text := BuscaQry('dspTGE', 'TGE126', 'LOCABR', 'LOCID=' + quotedstr(dblcLocal.Text), 'LOCABR');
End;

Procedure TFSolucion.Z2bbtnCtaCteClick(Sender: TObject);
Var
   dd, mm, aa: word;
   mmant, sSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   dbeRObs.DataSource := Nil;
   dbeRObs.DataField := '';
   DecodeDate(dateS, aa, mm, dd);
   sSQL := ' SELECT SALDTMN' + StrZero(IntToStr(mm - 1), 2) + ' SALLOC,SALDTME' + StrZero(IntToStr(mm - 1), 2) + ' SALEXT FROM TGE401 ' +
      ' WHERE ANO=' + QuotedStr(IntToStr(aa)) + ' AND AUXID=' + QuotedStr(sClieID) + ' AND CLAUXID=' + QuotedStr(DM1.cdsHojaT.FieldByName('CLAUXID').AsString);
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(sSQL);
   DM1.cdsQry2.Open;

   sCIA := DM1.cdsHojaT.FieldByName('CIAID').AsString;
   cSQL;
   cCXC;
   Try
      FEstCxCli.ClAux := DM1.cdsHojaT.FieldByName('CLAUXID').AsString;
      FEstCxCli.Cliente := sClieID;
      FEstCxCli.ClienteDes := sClieDes;
      FEstCxCli.CiaID := DM1.cdsHojaT.FieldByName('CIAID').AsString;
      FEstCxCli.Moneda := dblctMon.Text;
      FEstCxCli.Activar := False;
      FEstCxCli.MonLoc := (dblctMon.Text = DM1.wTMonLoc);
      FEstCxCli.Internal := True;
      FEstCxCli.SaldoIni := DM1.cdsQry2.FieldByName('SALLOC').AsFloat;
      FEstCxCli.SaldoIniL := DM1.cdsQry2.FieldByName('SALLOC').AsFloat;
      FEstCxCli.SaldoIniE := DM1.cdsQry2.FieldByName('SALEXT').AsFloat;
      FEstCxCli.Anio := aa;
      FEstCxCli.Mes := mm;
      ShowWindow(FEstCxCli.Handle, SW_HIDE);

      FEstCxCli.ShowModal;
   Finally

   End;
   Screen.Cursor := crDefault;
End;

Procedure TFSolucion.cSQL;
Var
   sDisp, sClie, sAnt, sLet, sNCre, sChe, sCarAbo, sTotal: String;
   sXSQL: String;
   sMoneda: String;
   mm, dd: word;
   dTCambio: double;
Begin
   // Tipo de Cambio
   sSQL := ' SELECT ' + DM1.wReplacCeros + '(TCAM' + DM1.wVRN_TipoCambio + ',0) CAMBIO FROM TGE107 ' +
      ' WHERE TMONID=' + QuotedStr(DM1.wTMonExt) + ' AND FECHA<=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, DateS) + ''' )' +
      ' ORDER BY FECHA DESC ' +
      ' FETCH FIRST 3 ROWS ONLY ';
   DM1.cdsSQL.close;
   DM1.cdsSQL.DataRequest(sSQL);
   DM1.cdsSQL.Open;
   dTCambio := DM1.cdsSQL.FieldByName('CAMBIO').AsFloat;

   DecodeDate(DateS, iYear, mm, dd);
//  iYEAR  := Trunc( dbSpAnno.Value ) ;
   sMES := StrZero(IntToStr(mm), 2);
   sMESN := StrZero(IntToStr(mm + 1), 2);
   sMESA := StrZero(IntToStr(mm - 1), 2);

   If sMes <> '12' Then
      sFechaEmision := '01' + '/' + sMesN + '/' + IntToStr(iYEAR)
   Else
      sFechaEmision := '01' + '/' + '01' + '/' + IntToStr(iYEAR + 1);

//  cSQL   ;

   sChe := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''H''', 'DOCID');
   sAnt := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'DOCID');
   sLet := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');
   sNCre := DM1.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''N''', 'DOCID');

   sClie := DM1.BuscaQry2('dspTGE', 'TGE102', 'CLAUXID', 'CLAUXCP=''C''', 'CLAUXID');
   sGroupBy := ' GROUP BY CLI.CLIECREMAX, SAL.CLAUXID, SAL.AUXID,CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES, ' +
      ' SAL.SALDSMN' + sMESA + ',SAL.SALDSME' + sMESA + ',SAL.DEBESMN' + sMES + ',SAL.DEBESME' + sMES + ',SAL.HABESMN' + sMES + ',SAL.HABESME' + sMES + ' ';

   sSACUM := DM1.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESMN' + sMES + ',0.00) AS SALACUMMN, '
      + DM1.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESME' + sMES + ',0.00) AS SALACUMME';

   sTotal := DM1.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESMN' + sMES + ',0.00) AS SALTOTALMN, '
      + DM1.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESME' + sMES + ',0.00) AS SALTOTALME ';

   sDisp := DM1.wReplacCeros + '(CLI.CLIECREMAX,0)-(' + DM1.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESME' + sMES + ',0.00)) - (ROUND(' + DM1.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESMN' + sMES + ',0.00)/' + FloatToStr(dTCambio) + ',2)) DISPONIBLE';

   sCarAbo := DM1.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00) AS CARGOSMN , ' + DM1.wReplacCeros + '(SAL.HABESMN' + sMES + ',0.00) AS ABONOSMN, '
      + DM1.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00) AS CARGOSME , ' + DM1.wReplacCeros + '(SAL.HABESME' + sMES + ',0.00) AS ABONOSME ';

   sSAANT := DM1.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00) AS SALANTMN, '
      + DM1.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00) AS SALANTME';

   sSQL := ' SELECT ' + DM1.wReplacCeros + '(CLI.CLIECREMAX,0) CLIECREMAX, SAL.CLAUXID, SAL.AUXID,' + sDisp + ',' + sSACUM + ',' + sTotal + ',' + sCarAbo + ', ' + sSAANT + ', '
      + ' CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES,  '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN DOCS.LETSALLOC ELSE 0 END) LETNORLOC, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN DOCS.LETSALEXT ELSE 0 END) LETNOREXT, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN DOCS.CHESALLOC ELSE 0 END) CHENORLOC, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN DOCS.CHESALEXT ELSE 0 END) CHENOREXT, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN DOCS.ANTSALLOC ELSE 0 END) ANTNORLOC, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN DOCS.ANTSALEXT ELSE 0 END) ANTNOREXT, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN DOCS.NCRESALLOC ELSE 0 END) NCRENORLOC, '
      + ' SUM(CASE WHEN DOCS.TMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN DOCS.NCRESALEXT ELSE 0 END) NCRENOREXT '
      + ' FROM TGE401 SAL '
      + ' LEFT JOIN TGE204 CLI ON CLI.CIAID=''01'' AND CLI.CLAUXID=SAL.CLAUXID AND CLI.CLIEID=SAL.AUXID '
      + ' LEFT JOIN (SELECT CLIEID,TMONID TMONID, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sLet) + ' THEN CCSALLOC ELSE 0 END) LETSALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sLet) + ' THEN CCSALEXT ELSE 0 END) LETSALEXT, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sNcre) + ' THEN CCSALLOC ELSE 0 END ) NCRESALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sNCre) + ' THEN CCSALEXT ELSE 0 END) NCRESALEXT, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sChe) + ' THEN CCSALLOC ELSE 0 END) CHESALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sChe) + ' THEN CCSALEXT ELSE 0 END) CHESALEXT, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sAnt) + ' THEN CCSALLOC ELSE 0 END) ANTSALLOC, '
      + ' SUM(CASE WHEN DOCID=' + QuotedStr(sAnt) + ' THEN CCSALEXT ELSE 0 END) ANTSALEXT  '
      + ' FROM CXC301 CXC '

   + ' WHERE CXC.CCFEMIS<DATE(' + QuotedStr(sFechaEmision) + ') AND CXC.CCESTADO=' + QuotedStr('P')
      + ' AND CXC.DOCID IN (' + QuotedStr(sLet) + ',' + QuotedStr(sAnt) + ',' + QuotedStr(sNcre) + ',' + QuotedStr(sChe) + ')'
      + ' GROUP BY CLIEID,TMONID) DOCS ON DOCS.CLIEID=SAL.AUXID '
      + ' WHERE SAL.CIAID=''' + sCIA + ''' AND SAL.CLAUXID=' + QuotedStr(sClie)
      + '       AND SAL.ANO=''' + IntToStr(iYEAR) + ''' AND SAL.AUXID=' + QuotedStr(sClieId);

{  if rgMoneda.ItemIndex = 0 then
   sMoneda := 'MN'
 else              }
   sMoneda := 'ME';
   sXSQL := '';

{  case rgImportes.ItemIndex of
  0 : begin //>
    sXSQL := 'AND ('+DM1.wReplacCeros+'(SAL.SALDS' +sMoneda +sMES+',0)+ '+DM1.wReplacCeros+'(SAL.DEBES'+ sMoneda+ sMES+',0)'
          +'- '+DM1.wReplacCeros+'(HABES'+ sMoneda + sMES+',0))> ' + dbeSaldoWhere.Text ;
    end;
  1 : begin //>=
    sXSQL := 'AND ('+DM1.wReplacCeros+'(SAL.SALDS'+ sMoneda + sMES+',0)+ '+DM1.wReplacCeros+'(SAL.DEBES'+ sMoneda +sMES+',0)'
          +'- '+DM1.wReplacCeros+'(HABES'+ sMoneda + sMES+',0)) >= ' + dbeSaldoWhere.Text ;
    end;
  2 : begin //=
    sXSQL := 'AND ('+DM1.wReplacCeros+'(SAL.SALDS'+ sMoneda + sMES+',0)+ '+DM1.wReplacCeros+'(SAL.DEBES'+ sMoneda + sMES+',0)'
                    +'- '+DM1.wReplacCeros+'(HABES'+ sMoneda + sMES+',0)) = ' + dbeSaldoWhere.Text ;
       end;
   3 : begin //<=
        sXSQL := 'AND ('+DM1.wReplacCeros+'(SAL.SALDS'+ sMoneda + sMES+',0)+ '+DM1.wReplacCeros+'(SAL.DEBES'+ sMoneda + sMES+',0)'
                    +'- '+DM1.wReplacCeros+'(HABES'+ sMoneda + sMES+',0)) <= ' + dbeSaldoWhere.Text ;
       end;
   4 : begin //<
        sXSQL := 'AND ('+DM1.wReplacCeros+'(SAL.SALDS'+ sMoneda + sMES+',0)+ '+DM1.wReplacCeros+'(SAL.DEBES'+ sMoneda + sMES+',0)'
                    +'- '+DM1.wReplacCeros+'(HABES'+ sMoneda + sMES+',0)) < ' + dbeSaldoWhere.Text ;
       end;
   5 : begin //<>
        sXSQL := 'AND ('+DM1.wReplacCeros+'(SAL.SALDS'+ sMoneda + sMES+',0)+ '+DM1.wReplacCeros+'(SAL.DEBES'+ sMoneda + sMES+',0)'
                    +'- '+DM1.wReplacCeros+'(HABES'+ sMoneda + sMES+',0)) <> ' + dbeSaldoWhere.Text ;
       end;
   6 : begin //Todos
        sXSQL := '' ;
       end;
  end;     }
   sSQL := sSQL + sXSQL + sGroupBy;
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(sSQL);
   DM1.cdsQry1.Open;
End;

Procedure TFSolucion.bbtnCierraClick(Sender: TObject);
Begin
   pnlInter.visible := False;
   pnlPie.enabled := True;
   DM1.cdsQry5.MasterSource := Nil;
   DM1.cdsQry5.IndexFieldNames := '';
   DM1.cdsQry5.MasterFields := '';
   DM1.cdsHistorialSolucion.IndexFieldNames := '';
   dbeRObs.DataSource := Nil;
   dbeRObs.DataField := '';
   pnlInter.SendToBack;
End;

Procedure TFSolucion.Z2bbtnHistClick(Sender: TObject);
Var
   sSQL: String;
Begin
   sSQL := ' SELECT PEDIDO,HOJTID,PEDFECHA,TMONID,PEDTOTMO,HOJTFECSOL, '
      + 'CASE WHEN HOJTESTADO=' + quotedstr('P') + ' THEN ' + quotedstr('ACEPTADO') + ' ELSE ' + quotedstr('INICIAL') + ' END HOJTESTADO,'
      + 'HOJOBS '
      + 'FROM FAC309 WHERE ' +
      ' HOJTSOLCXC =''S'' ' +
//        ' HOJTSOLCXC =''S'' AND HOJTESTADO<>''P'' AND HOJTVBCXC=''S'' '+
   ' AND CLIEID=' + QuotedStr(dblcdClie.text) + ' AND PEDIDO<>' + QuotedStr(dbeNPedido.text);

   DM1.cdsQry5.Close;
   DM1.cdsQry5.IndexFieldNames := 'PEDIDO;HOJTID';

   DM1.cdsHistorialSolucion.Close;
   dbeRObs.DataSource := DM1.dsHistorialSolucion;
   dbeRObs.DataField := 'HOJOBS';

   DM1.cdsHistorialSolucion.DataRequest(sSQL);
   DM1.cdsHistorialSolucion.Open;
   If DM1.cdsHistorialSolucion.RecordCount = 0 Then
   Begin
      ShowMessage('No existen pedidos anteriores solucionados');
      DM1.cdsQry5.IndexFieldNames := '';
      dbeRObs.DataSource := Nil;
      dbeRObs.DataField := '';
      exit;
   End;

   DM1.cdsHistorialSolucion.IndexFieldNames := 'PEDIDO;PEDFECHA;HOJTID';

   sSQL := ' SELECT * FROM FAC310 WHERE ' +
      ' CLIEID=' + QuotedStr(dblcdClie.text) + ' AND PEDIDO<>' + QuotedStr(dbeNPedido.text);

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(sSQL);
   DM1.cdsQry5.Open;
   DM1.cdsQry5.MasterSource := DM1.dsHistorialSolucion;
   DM1.cdsQry5.MasterFields := 'PEDIDO;HOJTID';

   dbgCabHis.dataSource := DM1.dsHistorialSolucion;
   dbgDetHis.dataSource := DM1.dsQry5;
   pnlInter.BringToFront;
   pnlInter.visible := True;
   pnlPie.enabled := False;

   dbgCabHis.Selected.Clear;
   dbgCabHis.Selected.Add('PEDIDO'#9'12'#9'Pedido'#9'T');
   dbgCabHis.Selected.Add('PEDFECHA'#9'12'#9'Fecha'#9'T');
   dbgCabHis.Selected.Add('HOJTESTADO'#9'10'#9'Estado'#9'T');
   dbgCabHis.Selected.Add('HOJOBS'#9'45'#9'Observación'#9'T');
   dbgCabHis.RedrawGrid;

   dbgDetHis.Selected.Clear;
   dbgDetHis.Selected.Add('INTDES'#9'45'#9'Interrupción'#9'T');
   dbgDetHis.Selected.Add('SOLUDES'#9'30'#9'Solución'#9'T');
   dbgDetHis.RedrawGrid;

End;

Procedure TFSolucion.CalculaSaldo;
Var
   sAnt, sTotal: String;
   sMes, sMesa, sMesN: String;
   SFechaeMISION: String;
   sGroupBy, sSACUM, sSAANT,
      tpcambio, sSQL: String;
   Y, M, D: word;
Begin

   DecodeDate(DateS, Y, M, D);
   sMes := STRZERO(inttostr(M), 2);
   sMesA := STRZERO(inttostr(M - 1), 2);
   sMesN := STRZERO(inttostr(M + 1), 2);

   If sMes <> '12' Then
      sFechaEmision := '01' + '/' + sMesN + '/' + inttostr(Y)
   Else
      sFechaEmision := '01' + '/' + '01' + '/' + IntToStr(Y + 1);

   sGroupBy := ' GROUP BY SAL.CLAUXID, SAL.AUXID, ' +
      ' SAL.SALDSMN' + sMESA + ',SAL.SALDSME' + sMESA + ',SAL.DEBESMN' + sMES + ',SAL.DEBESME' + sMES + ',SAL.HABESMN' + sMES + ',SAL.HABESME' + sMES + ' ';

   sTotal := DM1.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESMN' + sMES + ',0.00) + SUM(CASE WHEN CHEQUE.CHETMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN CHEQUE.CHESALLOC ELSE 0 END) '
      + '+ SUM(CASE WHEN PEDIDO.PEDTMONID=' + QuotedStr(DM1.wTMonLoc) + ' THEN PEDIDO.PEDSALLOC ELSE 0 END)  AS SALTOTALMN, '
      + DM1.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DM1.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DM1.wReplacCeros + '(HABESME' + sMES + ',0.00) + SUM(CASE WHEN CHEQUE.CHETMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN CHEQUE.CHESALEXT ELSE 0 END) '
      + '+ SUM(CASE WHEN PEDIDO.PEDTMONID=' + QuotedStr(DM1.wTMonExt) + ' THEN PEDIDO.PEDSALEXT ELSE 0 END)  AS SALTOTALME ';

   sSQL := ' SELECT SAL.CLAUXID, SAL.AUXID,' + sTotal
      + ' FROM TGE401 SAL '
      + ' LEFT JOIN (SELECT CIAID,CLIEID,TMONID PEDTMONID, '
      + ' SUM(COALESCE(PEDTOTMN,0)-COALESCE(PEDMTOATMN,0)) PEDSALLOC, '
      + ' SUM(COALESCE(PEDTOTME,0)-COALESCE(PEDMTOATME,0)) PEDSALEXT '
      + '  FROM FAC301 PED WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString)
      + '   AND CLIEID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CLIEID').AsString)
      + '   AND (PEDESTADO=''ALMACEN'' OR PEDESTADO=''DESPACHO'') AND PEDSIT=''PENDIENTE'' '
      + ' GROUP BY CIAID,CLIEID,TMONID) PEDIDO ON PEDIDO.CIAID=SAL.CIAID AND PEDIDO.CLIEID=SAL.AUXID '
      + ' LEFT JOIN (SELECT CIAID,CLIEID,TMONID CHETMONID,SUM(CCSALLOC) CHESALLOC, SUM(CCSALEXT) CHESALEXT '
      + '  FROM CXC301 CHE WHERE CHE.CCFEMIS<DATE(' + QuotedStr(sFechaEmision) + ') AND CHE.CCESTADO=' + QuotedStr('P')
      + '  AND  CHE.DOCID=' + QuotedStr(DM1.wsChe) + ' GROUP BY CIAID,CLIEID,TMONID) CHEQUE ON CHEQUE.CIAID=SAL.CIAID AND CHEQUE.CLIEID=SAL.AUXID '
      + ' WHERE SAL.CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) + ' AND SAL.ANO=' + QuotedStr(IntToStr(Y)) + ' AND SAL.CLAUXID=' + QuotedStr(DM1.wsClie) + ' AND SAL.AUXID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CLIEID').AsString);
   sSQL := sSQL + sGroupBy;

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(sSQL);
   DM1.cdsQry3.Open;

   If DM1.wVRN_TipoCambio = '' Then
      tpCambio := 'VPV'
   Else
      tpCambio := DM1.wVRN_TipoCambio;

   sSQL := ' SELECT ' + DM1.wReplacCeros + '(TCAM' + tpCambio + ',0) CAMBIO FROM TGE107 ' +
      ' WHERE TMONID=' + QuotedStr(DM1.wTMonExt) +
      ' ORDER BY FECHA DESC ' +
      ' FETCH FIRST 3 ROWS ONLY ';

   DM1.cdsQry.close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry3.RecordCount > 0 Then
   Begin
      rCUsadoLOC := DM1.cdsQry3.FieldbyName('SALTOTALMN').AsFloat;
      rCUsadoEXT := DM1.cdsQry3.FieldbyName('SALTOTALME').AsFloat;
      rCUsadoTOT := DM1.cdsQry3.FieldbyName('SALTOTALME').AsFloat + (DM1.cdsQry3.FieldbyName('SALTOTALMN').AsFloat / DM1.cdsQry.FieldByname('CAMBIO').AsFloat);
   End
   Else
   Begin
      rCUsadoLOC := 0;
      rCUsadoEXT := 0;
      rCUsadoTOT := 0;
   End;
End;

Procedure TFSolucion.Z2bbtnOtrosClick(Sender: TObject);
Var
   sGrupo, sSQL: String;
Begin
   sGrupo := DM1.BuscaQry2('dspTGE', 'TGE204', 'GRUPOID', 'CLIEID=' + QuotedStr(dblcdClie.text), 'GRUPOID');
   sSQL := 'SELECT CLIEID,CLIERUC,CLIEDES FROM TGE204 WHERE GRUPOID=' + QuotedStr(sGrupo) +
      ' and CLIEID<>' + QuotedStr(dblcdClie.text);
   DM1.cdsQry.close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.OPen;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No hay otros Clientes');
      exit;
   End;
   dbgClientes.DataSource := DM1.dsQry;

   dbgClientes.Selected.Clear;
   dbgClientes.Selected.Add('CLIEID'#9'11'#9'Id');
   dbgClientes.Selected.Add('CLIERUC'#9'11'#9'RUC');
   dbgClientes.Selected.Add('CLIEDES'#9'40'#9'Nombres');
   dbgClientes.RedrawGrid;

   pnlClientes.Visible := True;
   pnlPie.enabled := False;

End;

Procedure TFSolucion.bbtnCierra1Click(Sender: TObject);
Begin
   dbgClientes.DataSource := Nil;
   pnlPie.enabled := True;
   pnlClientes.Visible := False;
   sClieid := dblcdClie.text;
   sClieDes := edtClie.text;

End;

Procedure TFSolucion.dbgClientesDblClick(Sender: TObject);
Begin
   sClieid := DM1.cdsQry.FieldByName('CLIEID').AsString;
   sClieDes := DM1.cdsQry.FieldByName('CLIEDES').AsString;
   Z2bbtnCtaCteClick(Nil);
End;

Procedure TFSolucion.Z2bbtnNivelClick(Sender: TObject);
Begin
   If DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString = 'S' Then
      exit;

   If DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger <= 3 Then
   Begin
      If MessageDlg('¿  Esta seguro de Subir de Nivel ? ' + chr(13) + chr(13)
         + 'Nivel =' + '''' + dm1.cdsHojaT.FieldByName('HOJTNIVEL').AsString + '''' + chr(13)
         + 'Pedido =' + '''' + dm1.cdsHojaT.FieldByName('PEDIDO').AsString + '''' + chr(13)
         + 'Código=' + '''' + dm1.cdsHojaT.FieldByName('CLIEID').AsString + '''' + chr(13)
         + 'Cliente     =' + '''' + dm1.cdsHojaT.FieldByName('CLIEDES').AsString + '''',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         Screen.cursor := crHourglass;
         DM1.cdsHojaT.Edit;
         DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger := DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger + 1;
         DM1.cdsHojaT.fieldbyname('HOJTUSER').AsString := DM1.wUsuario;
         DM1.cdsHojaT.fieldbyname('HOJTFECREG').AsDateTime := DateS;
         DM1.cdsHojaT.fieldbyname('HOJTHORREG').AsDateTime := TimeS;
         DM1.cdsHojaT.Post;
         DM1.ControlTran(9, DM1.cdsHojaT, 'HOJAT'); //     DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;
         ShowMessage('Se ha subido de Nivel el Pedido');
         Screen.cursor := crDefault;
      End;
   End;
End;

Procedure TFSolucion.Z2bbtnImprimeHistorialClick(Sender: TObject);
Begin
   ppRepHistorial.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\' + 'HistorialPedidos.rtm';
   ppRepHistorial.template.LoadFromFile;
   pplblHISCliente.text := ' CLIENTE: ' + edtClie.text;
   //ppDesigner1.Show;
   ppRepHistorial.Print;
End;

Procedure TFSolucion.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookUpField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFSolucion.DevuelvePedido;
Var
   sSQL, sWhere: String;
Begin
// anula en cabecera de pedido
   DM1.cdsMovFac.Edit;
   DM1.cdsMovFac.FieldByName('PEDESTADO').AsString := 'VENTAS';
   //CIM 31/01/2002
   DM1.cdsMovFac.fieldbyname('PEDSIT').AsString := 'DEVUELTO';

//   DM1.cdsMovFac.FieldByName('PEDESTADO').AsString := 'A';
   DM1.cdsMovFac.fieldbyname('PEDFREG').AsDatetime := DateS; // fecha que registra Usuario
   DM1.cdsMovFac.fieldbyname('PEDHREG').AsDatetime := TimeS; // Hora de Registro de Usuario
   DM1.cdsMovFac.Post;
   DM1.cdsMovFac.DataRequest('Select * from FAC301 WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));

   DM1.ControlTran(0, DM1.cdsMovFac, 'MOVFAC'); // DM1.AplicaDatos( DM1.cdsMovFac, 'MOVFAC' );

   DM1.cdsHojaT.Edit;

   DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString := 'N';
   DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString := 'N';
   DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString := 'I';
   DM1.cdsHojaT.fieldbyname('HOJTSOLCXC').AsString := 'N';

   //CLG: 03/04/2002
   DM1.cdsHojaT.fieldbyname('HOJTSOLLOG').AsString := 'N';

   DM1.cdsHojaT.fieldbyname('HOJTUSER').value := DM1.wUsuario;
   DM1.cdsHojaT.fieldbyname('HOJTFECSOL').AsDateTime := DateS;
   DM1.cdsHojaT.fieldbyname('HOJTHORSOL').AsDateTime := TimeS;
   DM1.cdsHojaT.Post;

   DM1.cdsHojaT.DataRequest('Select * from FAC309 WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));
   DM1.ControlTran(0, DM1.cdsHojaT, 'HOJAT'); //  DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;

   DM1.cdsDHojaT.DisableControls;
   DM1.cdsDHojaT.First;
   While Not DM1.cdsDHojaT.EOF Do
   Begin
      DM1.cdsDHojaT.Edit;
      DM1.cdsDHojaT.FieldByName('HOJFLAGDEV').AsString := 'DEV';
      DM1.cdsDHojaT.Post;
      DM1.cdsDHojaT.Next;
   End;
   DM1.cdsDHojaT.EnableControls;

   DM1.cdsDHojaT.Insert;
   DM1.cdsDHojaT.FieldByName('LOCID').AsString := dblcLocal.text;
   DM1.cdsDHojaT.FieldByName('HOJTID').AsString := dbeHojaT.text;
   DM1.cdsDHojaT.FieldByName('CLIEID').AsString := dblcdClie.text;
   DM1.cdsDHojaT.FieldByName('PEDIDO').AsString := dbeNPedido.text;
   DM1.cdsDHojaT.FieldByName('ETAPAID').AsString := BuscaQry('dspTGE', 'FAC111', 'ETAPAID', 'AREA=' + QuotedStr('FAC') + ' AND ETAPAFLAGS=' + QuotedStr('P'), 'ETAPAID');
   DM1.cdsDHojaT.FieldByName('HOJTFECREG').AsDateTime := DateS;
   DM1.cdsDHojaT.FieldByName('HOJTHORREG').AsDateTime := TimeS;
   DM1.cdsDHojaT.FieldByName('HOJTFECSOL').AsDateTime := Dates;
   DM1.cdsDHojaT.FieldByName('HOJTHORSOL').AsDateTime := TimeS;
   DM1.cdsDHojaT.FieldByName('CIAID').AsString := DM1.cdsHojaT.fieldbyname('CIAID').AsString;
   DM1.cdsDHojaT.FieldByName('CLIERUC').AsString := dblcdClieRuc.text;
   DM1.cdsDHojaT.FieldByName('INTID').AsString := BuscaQry('dspTGE', 'FAC113', 'INTID,INTDES', 'AREA=' + QuotedStr('FAC') + ' AND INTVAR=' + QuotedStr('DV'), 'INTID');
   DM1.cdsDHojaT.FieldByName('INTDES').AsString := DM1.cdsQry.FieldByName('INTDES').AsString;
   DM1.cdsDHojaT.FieldByName('HOJTESTADO').AsString := 'I';
   DM1.cdsDHojaT.FieldByName('SOLUID').AsString := BuscaQry('dspTGE', 'FAC114', 'SOLUID,SOLUDES', 'SOLUFLAG=' + QuotedStr('D'), 'SOLUID');
   DM1.cdsDHojaT.FieldByName('SOLUFID').AsString := DM1.cdsDHojaT.FieldByName('SOLUID').AsString;
   DM1.cdsDHojaT.FieldByName('SOLUDES').AsString := DM1.cdsQry.FieldByName('SOLUDES').AsString;
   DM1.cdsDHojaT.FieldByName('AREA').AsString := 'CXC';
   DM1.cdsDHojaT.FieldByName('HOJFLAGDEV').AsString := 'DEV';
   DM1.cdsDHojaT.Post;
   DM1.cdsDHojaT.DataRequest('Select * from FAC310 WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
      ' AND PEDIDO=' + Quotedstr(dbeNPedido.text));
   DM1.ControlTran(0, DM1.cdsDHojaT, 'DHOJAT'); //   DM1.AplicaDatos( DM1.cdsDHojaT, 'DHOJAT' ) ;

   sSQL := ' UPDATE FAC310 SET HOJFLAGDEV=''DEV'' ' +
      ' WHERE CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) +
{         ' AND HOJTID='+QuotedStr(dbeHojaT.text)+
         ' AND CLIEID='+QuotedStr(dblcdClie.text)+}
   ' AND PEDIDO=' + QuotedStr(dbeNPedido.text) +
      ' AND AREA<>' + QuotedStr('CXC');

   Try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
      DM1.ControlTran(1, Nil, ''); //ROLLBACK
   End;

   lblAcepta.Caption := 'ACEPTADO';
   lblAcepta.Visible := true;
   lblActivo.Visible := false;
   Showmessage('Registro Aceptado');
   Z2bbtnGraba.Enabled := false;
   Z2bbtnAcepta.Enabled := false;
   bbtnCancela.Enabled := false;
   dbgDHojaT.Enabled := false;
   bbtnok.Enabled := false;
End;

Procedure TFSolucion.dblcConPagoExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If Length(dblcConPago.Text) = 0 Then Exit;
   xWhere := 'CIAID=' + QuotedStr(DM1.cdsHojaT.fieldbyname('CIAID').AsString) + ' AND CONDPID=''' + dblcConPago.Text + '''';
   EdtCPEstablecida.Text := BuscaQry('dspTGE', 'TGE166', '*', xWhere, 'CONDPDES');
   If Length(EdtCPEstablecida.Text) = 0 Then
   Begin
      ShowMessage('Código de Condición de Pago No Existe');
      dblcConPago.Text := '';
      dblcConPago.SetFocus;
   End;
End;

Procedure TFSolucion.cCxC;
Var
   sSQL: String;
Begin
   sSQL := ' SELECT A.CIAID, A.CLAUXID, A.GRUPOID, ' +
      ' A.CLIEID, A.CLIEDES, A.CLIEDIR, A.CLIECZIP, D.ZIPDES, A.CLIETELF, ' +
      ' A.CLIEFAX, A.CLIEEMAI, A.VEID, E.VENOMBRES, ' +
      ' A.CONDPID, F.CONDPDES, A.TIPPERID, A.CLIEDNI, A.CLIERUC, A.CLIECREMAX, ' +
      ' A.ZONVTAID, H.ZVTADES, A.SITCLIEID, I.SITCLIEDES, A.TVTAID, G.TVTADES SECTOR , J.CLIECOMEN ' +
      ' FROM TGE204 A ';
   If (DM1.SRV_D = 'DB2NT') Or (DM1.SRV_D = 'DB2400') Then
   Begin
      sSQL := sSQL + ' LEFT OUTER JOIN TGE122 D ON (D.ZIPID=A.CLIECZIP)'
         + ' left outer join TGE218 J on (A.CIAID=J.CIAID AND J.CLAUXID=A.CLAUXID AND J.CLIEID=A.CLIEID ) '
         + ' LEFT OUTER JOIN CXC203 E ON (E.CIAID=A.CIAID and E.VEID=A.VEID)'
         + ' LEFT OUTER JOIN TGE166 F ON (F.CIAID=A.CIAID and F.CONDPID=A.CONDPID)'
         + ' LEFT OUTER JOIN FAC105 G ON (G.TVTAID=A.TVTAID)'
         + ' LEFT OUTER JOIN FAC106 H ON (H.TVTAID=A.TVTAID and H.ZVTAID=A.ZONVTAID)'
         + ' LEFT OUTER JOIN CXC111 I ON (I.SITCLIEID=A.SITCLIEID)';
   End;
   sSQL := sSQL + ' WHERE A.CIAID=' + QuotedStr(sCia) + ' AND A.CLAUXID=' + QuotedStr(DM1.cdsHojaT.FieldByName('CLAUXID').AsString) + ' AND A.CLIEID=' + QuotedStr(sClieid);
   DM1.cdsCxC.Close;
   DM1.cdsCxC.Datarequest(sSQL);
   DM1.cdsCxC.Open;

End;

End.

