unit UnitPrueba06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched, Mask,
	wwdbedit, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppBands,
  ppPrnabl, ppCtrls,ppviewr,DB, Wwfltdlg, Wwlocate, wwDialog, wwidlg, Menus;

type
  TFPrueba05 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    wwDBNavigator1FilterDialog: TwwNavButton;
    wwDBNavigator1RecordViewDialog: TwwNavButton;
    wwDBNavigator1LocateDialog: TwwNavButton;
    wwDBNavigator1SearchDialog: TwwNavButton;
    dbg1: TwwDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    pb1: TProgressBar;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    fd: TFontDialog;
    PopupMenu1: TPopupMenu;
    Fuentes1: TMenuItem;
    dbg3: TwwDBGrid;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure dbg1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Fuentes1Click(Sender: TObject);
    procedure dbg3CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbg1RowChanged(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	FPrueba05: TFPrueba05;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba05.BitBtn1Click(Sender: TObject);
var sFilter,sClie,sSQL:string;
begin
sClie:=' CLIEID<=''19999999999'' AND ';

   sSQL:=' SELECT '+
   ' CLIEID,LICOID,FECPAGO,CCNODOC,LICOMTOORI,LICOMTOABOORI,LICOMTOANTORI, '+
   ' LICOMTOEXT,LICOMTOABOEXT,LICOMTOANTEXT, '+
   ' LICOMTOLOC,LICOMTOABOLOC,LICOMTOANTLOC,COID,DOCID,CCSERIE,CIAID,LICONOCHQ '+
   ' FROM '+
   ' CXC320 '+
   ' WHERE '+sClie+' CIAID=''01'' AND COID<>''CON'' AND LICOELABO IS NULL ';


  sFilter:=DM1.cdsMovCxC.Filter;
	DM1.cdsMovCxC.Close;
	DM1.cdsMovCxC.DataRequest(sSQL);
	DM1.cdsMovCxC.Open;
  DM1.cdsMovCxC.IndexFieldNames:='CIAID;CLIEID;LICOID';
  DM1.cdsMovCxC.Filter:=sFilter;
  DM1.cdsMovCxC.Filtered:=True;

  dbg1.Selected.Clear;
  dbg1.Selected.Add('CLIEID'#9'11'#9'Cliente'#9'T');
  dbg1.Selected.Add('LICOID'#9'06'#9'Lico'#9'T');
  dbg1.Selected.Add('FECPAGO'#9'12'#9'F. Pago'#9'T');
  dbg1.Selected.Add('CCNODOC'#9'10'#9'Numero'#9'T');
  dbg1.Selected.Add('LICONOCHQ'#9'15'#9'Cheque'#9'T');
  dbg1.Selected.Add('LICOMTOORI'#9'10'#9'MtoOri'#9'F');
  dbg1.Selected.Add('LICOMTOABOORI'#9'10'#9'AboOri'#9'F');
  dbg1.Selected.Add('LICOMTOANTORI'#9'10'#9'AntOri'#9'F');
  dbg1.Selected.Add('LICOMTOEXT'#9'10'#9'MtoExt'#9'F');
  dbg1.Selected.Add('LICOMTOABOEXT'#9'10'#9'AboExt'#9'F');
  dbg1.Selected.Add('LICOMTOANTEXT'#9'10'#9'AntExt'#9'F');
  dbg1.Selected.Add('LICOMTOLOC'#9'10'#9'MtoLoc'#9'F');
  dbg1.Selected.Add('LICOMTOABOLOC'#9'10'#9'AboLoc'#9'F');
  dbg1.Selected.Add('LICOMTOANTLOC'#9'10'#9'AntLoc'#9'F');
  dbg1.Selected.Add('DOCID'#9'03'#9'Doc'#9'T');
  dbg1.Selected.Add('COID'#9'04'#9'Cob'#9'T');
  dbg1.Selected.Add('CCSERIE'#9'03'#9'Serie'#9'T');
  dbg1.RedrawGrid;


sSQL:=' SELECT CCFEMIS,CCNLETBCO,CCUSER,CCESTADO,CCNODOC,CLIEID,CCMTOORI,CCPAGORI,CCSALORI, '+
      ' CCMTOEXT,CCPAGEXT,CCSALEXT,CCMTOLOC,CCPAGLOC,CCSALLOC,CCFCANCEL, '+
      ' CCPTOTOT,CTATOTAL,TCANJEID,CCCANJE,CCFCANJE,CCAAAA,CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS, '+
      ' CCPEDIDO,CCFVALOR,BANCOID,CCBCOID,SITUACION,UBICACION,CCFSITUA,DOCSIT,NODOCSIT,FLAGVAR,CCFREG, '+
      ' FLAGVAR2,CCHREG,CCNRENOV,CCACEPTA,CCNPLABCO,CCFPLABCO,CCNREFINA,CCAVAL,CCNVECPRT,CCESTCJE,CCNFACTURA, '+
      ' CCNSERFACTL,CCFVENLREAL,UBIID,SITID,CCOENV,OEFNUMFOR,INTERES,CCFEMISANT,CCFVCMTOANT,CCMTOORIANT,CCNRENOVA, '+
      ' CCTCAMPRANT,CCCMPRB,CPTOANT,CTAANT,FGEN_DOC,CLIEDES,DOCPLAZO,CPTOID,CCFLAGVTA,CCFLAGTDOC,TVTAID,ZVTAID,CCFLAGPROT, '+
      ' USERANUL,FECANUL,HORANUL,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIERUC,CCFRECEP,CCFVCMTO, '+
      ' TMONID,CCTCAMPR,CCTCAMPA,CC_CONTA,VEID,CCOMERID,CCFLCRED,CCGRAVAD,CCNOGRAV,CCFLETE,CCGASFIN,CCSERVIC,CCDCTO, '+
      ' CCIGV,CCISC,LICOID,COMPROMET,MOTDEVCHQ,CIAID,DOCID,CCSERIE '+
      ' FROM CXC301 '+
      ' WHERE CIAID=''01'' AND DOCID=''24'' ';

	DM1.cdsQry.Close;
	DM1.cdsQry.DataRequest(sSQL);
	DM1.cdsQry.Open;
  DM1.cdsQry.IndexFieldNames:='CIAID;CLIEID;CCNLETBCO';
  DM1.cdsQry.MasterSource:=DM1.dsMovCxC;
  DM1.cdsQry.MasterFields:='CIAID;CLIEID;LICOID';

  {sSQL:=' SELECT * '+
      ' FROM CXC301 '+
      ' WHERE CIAID=''01'' AND DOCID=''24'' ';}
	DM1.cdsQry2.Close;
	DM1.cdsQry2.DataRequest(sSQL);
	DM1.cdsQry2.Open;
  DM1.cdsQry2.IndexFieldNames:='CIAID;CLIEID;CCNODOC';
  DM1.cdsQry2.MasterSource:=DM1.dsMovCxC;
  DM1.cdsQry2.MasterFields:='CIAID;CLIEID';
  pb1.position:=0;
  pb1.Max:=0;
end;

procedure TFPrueba05.dbg1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (Field.FieldName = 'CLIEID') then
  begin
    if (DM1.cdsMovCXC.FieldByName('LICOMTOANTLOC').AsFloat=0) then
    begin
      ABrush.Color := clInfoBk;
      AFont.Color := clBlue;
      //AFont.Style := AFont.Style + [fsBold];
    end;
  end;

  if (Field.FieldName = 'LICOMTOANTLOC') then
    if (DM1.cdsMovCXC.FieldByName('LICOMTOANTLOC').AsFloat>0) then
    begin
      ABrush.Color := clInfoBk;
      AFont.Color := clRed;
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    if (DM1.cdsMovCXC.FieldByName('LICOMTOANTLOC').AsFloat=0) then
    begin
      ABrush.Color := clInfoBk;
      AFont.Color := clBlue;
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    begin
        ABrush.Color := clInfoBk;
        AFont.Color := clBlack;
        AFont.Style := AFont.Style - [fsBold];
    end;

  if (Field.FieldName = 'LICOMTOANTEXT') then
    if (DM1.cdsMovCXC.FieldByName('LICOMTOANTEXT').AsFloat>0) then
    begin
      ABrush.Color := clInfoBk;
      AFont.Color := clRed;
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    if (DM1.cdsMovCXC.FieldByName('LICOMTOANTEXT').AsFloat=0) then
    begin
      ABrush.Color := clInfoBk;
      AFont.Color := clBlue;
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    begin
        ABrush.Color := clInfoBk;
        AFont.Color := clBlack;
        AFont.Style := AFont.Style - [fsBold];
    end
end;

procedure TFPrueba05.Button1Click(Sender: TObject);
var sSQL:string;
    grid : TwwDBGrid;
    i:integer;
begin
  grid := dbg1;
  if grid.SelectedList.Count=0 then exit;
  pb1.Max:=grid.SelectedList.Count;

  for i:=0 to grid.SelectedList.Count-1 do
  begin
    grid.DataSource.DataSet.GotoBookmark(grid.SelectedList.Items[i]);

    sSQL:='UPDATE CXC320 SET LICOELABO=''OK'' '+
         ' WHERE CIAID=''01'' AND LICOID='+QuotedStr(grid.DataSource.DataSet.FieldByName('LICOID').AsString)+
         ' AND DOCID='+QuotedStr(grid.DataSource.DataSet.FieldByName('DOCID').AsString)+
         ' AND CCSERIE='+QuotedStr(grid.DataSource.DataSet.FieldByName('CCSERIE').AsString)+
         ' AND CCNODOC='+QuotedStr(grid.DataSource.DataSet.FieldByName('CCNODOC').AsString)+
         ' AND COID='+QuotedStr(grid.DataSource.DataSet.FieldByName('COID').AsString)+
         ' AND CLIEID='+QuotedStr(grid.DataSource.DataSet.FieldByName('CLIEID').AsString)+' AND TMONID=''02'' ';
            try
              DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
            except
              ShowMessage('No se actualizó CXC320');
            end;
    sSQL:='UPDATE TGE204 SET VINCID=NULL '+
         ' WHERE CIAID=''01'' AND CLAUXID=''03'' '+
         ' AND CLIEID='+QuotedStr(grid.DataSource.DataSet.FieldByName('CLIEID').AsString);
            try
              //DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
            except
              ShowMessage('No se actualizó Maestro de Clientes');
            end;
     pb1.Position:=pb1.Position+1;

  end;
  dbg1.SelectedList.Clear;
  pb1.Position:=0;
  ShowMessage('Ok');
end;

procedure TFPrueba05.BitBtn2Click(Sender: TObject);
begin
 DM1.cdsQry2.DataRequest('SELECT * FROM CXC301 WHERE CIAID=''01'' AND DOCID=''24'' AND CLIEID='+QuotedStr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString));
 DM1.ControlTran(9,DM1.cdsQry2, 'MOVCXC');
end;

procedure TFPrueba05.BitBtn3Click(Sender: TObject);
begin
 DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC320 WHERE CIAID=''01'' AND COID<>''CON'' AND TMONID=''02'' AND TMONIDPAGO=''01'' AND LICOELABO IS NULL AND CLIEID='+QuotedStr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString)+' AND LICOID='+QuotedStr(DM1.cdsMovCxC.FieldByName('LICOID').AsString));
 DM1.ControlTran(9,DM1.cdsMovCxC, 'DETPAGOLIQ');
 ShowMessage('Ok');
end;

procedure TFPrueba05.BitBtn4Click(Sender: TObject);
var sSQL:string;
begin
    sSQL:='UPDATE TGE204 SET VINCID=NULL '+
         ' WHERE CIAID=''01'' AND CLAUXID=''03'' '+
         ' AND CLIEID='+QuotedStr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString);
            try
              DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
            except
              ShowMessage('No se actualizó Maestro de Clientes');
            end;
end;

procedure TFPrueba05.Fuentes1Click(Sender: TObject);
begin
  if fd.Execute then
  begin
    dbg1.Font:=fd.Font;
    dbg3.Font:=fd.Font;
  end;
end;

procedure TFPrueba05.dbg3CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
    if (DM1.cdsMovCXC.FieldByName('LICOID').AsString=DM1.cdsQry2.FieldByName('CCNLETBCO').AsString) then
    begin
      ABrush.Color := clInfoBk;
      AFont.Color := clBlue;
      AFont.Style := AFont.Style + [fsBold];
    end
    else
    begin
        AFont.Color := clBlack;
        AFont.Style := AFont.Style - [fsBold];
    end
end;

procedure TFPrueba05.dbg1RowChanged(Sender: TObject);
begin
  dbg3.RedrawGrid;
end;

end.
