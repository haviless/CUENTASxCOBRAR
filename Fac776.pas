unit Fac776;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppProd, ppReport, wwdblook,db;

type
  TFToolSeg = class(TForm)
    pnGlt: TPanel;
    Z2bbtnImprime: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRHoja: TppReport;
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
    rgEstado: TRadioGroup;
    Z2bbtnOk: TBitBtn;
    rgSectorComercial: TRadioGroup;
    dblcSectorComercial: TwwDBLookupCombo;
    Z2bbtnCancelaPedido: TBitBtn;
    Z2bbtnNivel: TBitBtn;
    procedure Z2bbtnImprimeClick(Sender: TObject);
    procedure Z2bbtnOkClick(Sender: TObject);
    procedure rgSectorComercialClick(Sender: TObject);
    procedure NotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure Z2bbtnCancelaPedidoClick(Sender: TObject);
    procedure Z2bbtnNivelClick(Sender: TObject);
  private
    procedure AnulaPedido;
    procedure SubePedido;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolSeg: TFToolSeg;

implementation

{$R *.DFM}
uses CXC001, CXCDM ;

procedure TFToolSeg.Z2bbtnImprimeClick(Sender: TObject);
var
  xSQL,xFiltro : string;
  xCia, xPedido, xClie : string;
begin
  if (FPrincipal.GSolucion.FMant.cds2.recordcount = 0) then exit;
  xCia    := FPrincipal.GSolucion.FMant.cds2.fieldbyname('CiaId').AsString;
  xPedido := FPrincipal.GSolucion.FMant.cds2.fieldbyname('Pedido').AsString;
  xClie   := FPrincipal.GSolucion.FMant.cds2.fieldbyname('ClieId').AsString;
  xFiltro := ' CIAID ='+''''+xCia+''''+
            ' and PEDIDO = '+''''+xPedido+''''+
            ' and CLIEID = '+''''+xClie+'''';
  Filtracds( DM1.cdsHojaT,  'Select * from FAC309 Where '+xFiltro );

  if  DM1.cdsHojaT.recordcount =0 then
  begin
    showmessage('No se encontraron datos para Imprimir');
    Exit;
  end;
  pplblLocal.Caption    := DM1.cdsHojaT.fieldbyname('LocId').AsString;
  pplblLocalDes.Caption := DisplayDescrip('TGE126','LOCDES','LOCID',DM1.cdsHojaT.fieldbyname('LocId').AsString);
  pplblClie.Caption     := DM1.cdsHojaT.fieldbyname('ClieId').AsString;
  pplblClieDes.Caption  := DisplayDescrip('TGE204','CLIEDES','CLIEID',DM1.cdsHojaT.fieldbyname('ClieId').AsString);
  pplblPedido.Caption   := DM1.cdsHojaT.fieldbyname('Pedido').AsString;
  pplblLinea.Caption    := floattostr(DM1.cdsHojaT.fieldbyname('ClieCremax').AsFloat);
  pplblVend.Caption     := DM1.cdsHojaT.fieldbyname('VeId').AsString;
  pplblVendDes.Caption  := DisplayDescrip('CXC203','VENOMBRES','VEID',pplblVend.Caption);
  pplblFPago.Caption    := DM1.cdsHojaT.fieldbyname('FPagoId').AsString;
  pplblFPagoDes.Caption := DisplayDescrip('TGE180','DCCOMDES','CCOMERID',DM1.cdsHojaT.fieldbyname('FPagoId').AsString);
  pplblMonto.Caption    := DM1.cdsHojaT.fieldbyname('PedTotMo').AsString;
  pplblFecha.Caption    := DM1.cdsHojaT.fieldbyname('PedFecha').AsString;

  xSQL :=   ' SELECT A.CIAID,A.LOCID,A.PEDIDO, A.CLIEID,D.CLIEDES,D.CLIERUC,'
          + '       D.CLIECREMAX, A.ETAPAID, A.INTID, A.HOJTFECSOL,A.HOJTHORSOL,'
          + '       A.SOLUID,A.HOJTFECREG,A.HOJTHORREG, B.ETAPADES, C.INTDES,'
          + DM1.wReplacCeros+ '(D.CLIECREDISP,0) AS SALDO,'
          + '       A.ARTID, A.HOJTCANTPE, A.HOJTCANTST, A.HOJTCANTDF, E.SOLUDES  ';
          if (DM1.SRV_D = 'DB2NT') or
                 (DM1.SRV_D = 'DB2400') then
          begin
          xSQL:= xSQL  + ' FROM FAC310 A INNER JOIN FAC111 B ON (A.ETAPAID = B.ETAPAID)'
             + ' INNER JOIN FAC113 C ON (A.INTID  = C.INTID)'
             + ' INNER JOIN TGE204 D ON (A.CLIEID = D.CLIEID)'
             + ' INNER JOIN FAC114 E ON (A.SOLUID = E.SOLUID) ';
          end
          else
              if (DM1.SRV_D = 'ORACLE') then begin
                  xSQL := xSQL + ' FROM FAC310 A , FAC111 B '
                  + ' ,FAC113 C,TGE204 D,FAC114 E';
              end;

  xSQL := xSQL + ' WHERE A.PEDIDO = '+''''+xPedido+'''';
  if (DM1.SRV_D = 'ORACLE') then begin
     xSQL:= xSQL+ ' AND A.ETAPAID = B.ETAPAID'
     + ' AND A.INTID  = C.INTID'
     + ' AND A.CLIEID = D.CLIEID'
     + ' AND A.SOLUID = E.SOLUID ';
  end;

  xSQL := xSQL + ' ORDER BY A.ETAPAID,A.INTID,A.ARTID ';

  DM1.cdsQry3.close;
  DM1.cdsQry3.DataRequest(xSQL);
  DM1.cdsQry3.open;
  ppRHoja.Print;

end;

procedure TFToolSeg.Z2bbtnOkClick(Sender: TObject);
var sFiltro,sfiltro1,sfiltro2:string;
begin
   sFiltro1:='';
   sFiltro2:='';
   sFiltro:='';

   if (rgEstado.itemindex=-1) then
     Raise Exception.Create('Seleccione Estado');

   if (rgSectorComercial.itemindex=-1) then
     Raise Exception.Create('Seleccione Sector Comercial');

   if (rgSectorComercial.itemindex=0) AND (dblcSectorComercial.text='') then
     Raise Exception.Create('Seleccione Sector Comercial');

  	if rgEstado.itemindex=0 then
     sfiltro2:=' HOJTVBCXC='+quotedstr('N')
   else
     sfiltro2:='';

  	if rgSectorComercial.itemindex=0 then
 		sfiltro1:=' SCOMERID='+QuotedStr(dblcSectorComercial.text)
   else
     sfiltro1:='';
                                                
   if (sFiltro1='') AND (sFiltro2='')  then
   begin

   end;

   if (sFiltro1<>'') AND (sFiltro2<>'')  then
   begin
     sFiltro:=sFiltro1+' AND '+sFiltro2;
   end;

   if (sFiltro1='') AND (sFiltro2<>'')  then
   begin
     sFiltro:=sFiltro2;
   end;

   if (sFiltro1<>'') AND (sFiltro2='')  then
   begin
     sFiltro:=sFiltro1;
   end;


  	FPrincipal.GSolucion.SetFilter(sfiltro);
//  	FPrincipal.GSolucion.f
  	FPrincipal.GSolucion.RefreshFilter;
end;

procedure TFToolSeg.rgSectorComercialClick(Sender: TObject);
begin
  if rgSectorComercial.itemindex=0 then
  begin
    dblcSectorComercial.enabled:=True;
  end
  else
  begin
    dblcSectorComercial.Clear;
    dblcSectorComercial.enabled:=False;
  end;
end;

procedure TFToolSeg.NotInList(Sender: TObject; LookupTable: TDataSet;
  NewValue: String; var Accept: Boolean);
begin
  if TwwDBCustomLookupCombo(Sender).Text = '' then Accept := True;
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;


procedure TFToolSeg.AnulaPedido;
var
  sSQL, sWhere,xAno : string;
  Y,M,D : word;
begin
// anula en cabecera de pedido
   Errorcount:=0;
   DM1.DCOM1.AppServer.SOLStartTransaction;

   sSQL := 'SELECT * FROM FAC301 WHERE'
           +' PEDIDO='+Quotedstr(FPrincipal.GSolucion.FMant.cds2.fieldbyname('PEDIDO').AsString)
           +' AND CLIEID='+Quotedstr(FPrincipal.GSolucion.FMant.cds2.fieldbyname('CLIEID').AsString)
           +' AND CIAID='+Quotedstr(FPrincipal.GSolucion.FMant.cds2.fieldbyname('CIAID').AsString);
   DM1.cdsMovFac.Close;
   DM1.cdsMovFac.DataRequest(sSQL);
   DM1.cdsMovFac.Open;

   DM1.cdsMovFac.Edit;
   DM1.cdsMovFac.FieldByName('PEDESTADO').AsString := 'VENTAS';
   //CIM 31/01/2002
   DM1.cdsMovFac.fieldbyname('PEDSIT').AsString :='ANULADO';
   decodedate(DM1.cdsMovFac.fieldbyname('PEDFECHA').AsDatetime,Y,M,D);
   xAno := inttostr(Y);

   DM1.cdsMovFac.fieldbyname('PEDFREG').AsDatetime := DateS;         // fecha que registra Usuario
   DM1.cdsMovFac.fieldbyname('PEDHREG').AsDatetime := TimeS;         // Hora de Registro de Usuario

   DM1.cdsMovFac.Post;
   DM1.ControlTran( 0, DM1.cdsMovFac, 'MOVFAC' );  //DM1.AplicaDatos( DM1.cdsMovFac, 'MOVFAC' );

   sSQL := 'PEDIDO = '+quotedstr(DM1.cdsMovFac.fieldbyname('PEDIDO').Asstring)
          +' AND CLIEID='+quotedstr(DM1.cdsMovFac.fieldbyname('CLIEID').Asstring)
          +' AND CIAID='+quotedstr(DM1.cdsMovFac.fieldbyname('CIAID').Asstring);
   FiltraCds(DM1.cdsDetFac,'Select * from FAC302  Where '+sSQL);
   DM1.cdsDetFac.DisableControls;
   DM1.cdsDetFac.First;
   while not DM1.cdsDetFac.Eof do
   begin
      DM1.cdsDetFac.Edit;
      DM1.cdsDetFac.FieldByName('DPEDESTADO').AsString := 'VENTAS';
      DM1.cdsDetFac.FieldByName('DPEDSIT').AsString := 'ANULADO';
      if DM1.cdsDetFac.FieldByName('DPEDARTIAN').AsString='N' then
      begin
         sSQL := 'Update LOG316 Set STKRACTG ='+DM1.wReplacCeros+'(STKRACTG,0)'+'-'+ floattostr(DM1.cdsDetFac.fieldbyname('DPEDCANTRE').AsFloat)
                +' Where ARTID = '+Quotedstr(DM1.cdsDetFac.fieldbyname('ARTID').AsString)
                +' AND ALMID ='+Quotedstr(DM1.cdsDetFac.fieldbyname('ALMID').AsString)
                +' AND CIAID ='+Quotedstr(DM1.cdsDetFac.fieldbyname('CIAID').AsString)
                +' AND STKANO ='+Quotedstr(xAno);
         try
           DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         except
           DM1.ControlTran( 1, nil, '' );  //ROLLBACK
         end;
      end;
      DM1.cdsDetFac.Next;
   end;
   DM1.cdsDetFac.EnableControls;

   DM1.cdsHojaT.Edit;

   DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString:= 'S';
   DM1.cdsHojaT.fieldbyname('HOJTVBLOG').AsString:= 'S';

   DM1.cdsHojaT.fieldbyname('HOJTESTADO').AsString:= 'P';
   DM1.cdsHojaT.fieldbyname('HOJTUSER').AsString:= DM1.wUsuario;
   DM1.cdsHojaT.fieldbyname('HOJTFECSOL').AsDateTime:= DateS;
   DM1.cdsHojaT.fieldbyname('HOJTHORSOL').AsDateTime:= TimeS;
   DM1.cdsHojaT.Post;
   DM1.ControlTran( 0, DM1.cdsHojaT, 'HOJAT' ) ;     //DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;

   DM1.ControlTran( 8, nil, '' );  //COMMIT
end;


procedure TFToolSeg.Z2bbtnCancelaPedidoClick(Sender: TObject);
begin
   if MessageDlg('¿  Esta seguro de Anular este Registro ? '+chr(13)+chr(13)
      +'Pedido ='   +''''+ dm1.cdsHojaT.FieldByName('PEDIDO').AsString +''''+chr(13)
      +'Código=' +''''+ dm1.cdsHojaT.FieldByName('CLIEID').AsString +''''+chr(13)
      +'Cliente     ='+''''+ dm1.cdsHojaT.FieldByName('CLIEDES').AsString +'''',
      mtConfirmation, [mbYes, mbNo], 0)=mrYes then
   begin
     Screen.cursor:=crHourglass;
     AnulaPedido;
     ShowMessage('Pedido Anulado');
     Screen.cursor:=crDefault;
   end;
end;

procedure TFToolSeg.Z2bbtnNivelClick(Sender: TObject);
begin
  if DM1.cdsHojaT.fieldbyname('HOJTVBCXC').AsString='S' then
    exit;

  if DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger<=3 then
  begin
    if MessageDlg('¿  Esta seguro de Subir de Nivel ? '+chr(13)+chr(13)
       +'Nivel ='+''''+ dm1.cdsHojaT.FieldByName('HOJTNIVEL').AsString +''''+chr(13)
       +'Pedido ='   +''''+ dm1.cdsHojaT.FieldByName('PEDIDO').AsString +''''+chr(13)
       +'Código=' +''''+ dm1.cdsHojaT.FieldByName('CLIEID').AsString +''''+chr(13)
       +'Cliente     ='+''''+ dm1.cdsHojaT.FieldByName('CLIEDES').AsString +'''',
       mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    begin
      Screen.cursor:=crHourglass;
      SubePedido;
      ShowMessage('Se ha subido de Nivel el Pedido');
      Screen.cursor:=crDefault;
    end;
  end;
end;

procedure TFToolSeg.SubePedido;
begin
  if DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger<=3 then
  begin
    DM1.cdsHojaT.Edit;
    DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger:=DM1.cdsHojaT.fieldbyname('HOJTNIVEL').AsInteger+1;
    DM1.cdsHojaT.fieldbyname('HOJTUSER').AsString:=DM1.wUsuario;
    DM1.cdsHojaT.fieldbyname('HOJTFECREG').AsDateTime:=DateS;
    DM1.cdsHojaT.fieldbyname('HOJTHORREG').AsDateTime:=TimeS;
    DM1.cdsHojaT.Post;
    DM1.ControlTran( 9, DM1.cdsHojaT, 'HOJAT' ) ;  //DM1.AplicaDatos( DM1.cdsHojaT, 'HOJAT' ) ;
  end;
end;

end.
