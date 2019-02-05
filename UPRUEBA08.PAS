unit uprueba08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, wwclient, Wwdatsrc, StdCtrls, Buttons, DBTables, Wwtable,
  Grids, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel;

type
  TFPrueba08 = class(TForm)
    BitBtn1: TBitBtn;
    od: TOpenDialog;
    dsmigracion: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    table: TwwTable;
    BitBtn2: TBitBtn;
    Button1: TButton;
    BitBtn3: TBitBtn;
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
    wwDBNavigator1Button: TwwNavButton;
    wwDBNavigator1FilterDialog: TwwNavButton;
    wwDBNavigator1RecordViewDialog: TwwNavButton;
    wwDBNavigator1LocateDialog: TwwNavButton;
    wwDBNavigator1SearchDialog: TwwNavButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);

  private
    { Private declarations }
    function CalculaNumero(sCND: string): string;

  public
    { Public declarations }
  end;

var
  FPrueba08: TFPrueba08;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba08.BitBtn1Click(Sender: TObject);
var sname:string;
    ipos:integer;
begin
  if od.execute then
  begin
    sname:=od.FileName;
    ipos:=LastDelimiter('\',sName);
    sname:=copy(sName,ipos+1,length(sName)-ipos-4);

    table.Active:=False;
    table.tablename:=uppercase(sname);
    table.Active:=True;
  end;
end;

procedure TFPrueba08.Button1Click(Sender: TObject);
var sNuevoNumero,sSQL:string;
    dOri,dExt,dLoc:double;

begin
  DM1.cdsQry2.First;
  while NOT DM1.cdsQry2.EOF do
  begin
    dOri:=0;
    dExt:=0;
    dLoc:=0;
    sNuevoNumero:='';
    sNuevoNumero:=CalculaNumero(DM1.cdsQry2.FieldByName('CCNODOC').AsString);
    sSQL:='SELECT CCNODOC,CCMTOORI,CCMTOEXT,CCMTOLOC FROM CXC301 WHERE CIAID=''01'' AND DOCID=''05'' AND CCSERIE=''000'' AND CCNODOC='+QuotedStr(sNuevoNumero);
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(sSQL);
    DM1.cdsQry3.Open;
    if Length(DM1.cdsQry3.FieldByName('CCNODOC').AsString)>0 then
    begin
      dOri:=DM1.cdsQry3.FieldByName('CCMTOORI').AsFloat;
      dExt:=DM1.cdsQry3.FieldByName('CCMTOEXT').AsFloat;
      dLoc:=DM1.cdsQry3.FieldByName('CCMTOLOC').AsFloat;
      DM1.cdsQry2.Edit;
      DM1.cdsQry2.FieldByName('CCSALORI').AsFloat:=FRound(DM1.cdsQry2.FieldByName('CCMTOORI').AsFloat-DM1.cdsQry2.FieldByName('CCPAGORI').AsFloat-dOri,15,2);
      DM1.cdsQry2.FieldByName('CCSALEXT').AsFloat:=FRound(DM1.cdsQry2.FieldByName('CCMTOEXT').AsFloat-DM1.cdsQry2.FieldByName('CCPAGEXT').AsFloat-dExt,15,2);
      DM1.cdsQry2.FieldByName('CCSALLOC').AsFloat:=FRound(DM1.cdsQry2.FieldByName('CCMTOLOC').AsFloat-DM1.cdsQry2.FieldByName('CCPAGLOC').AsFloat-dLoc,15,2);
      DM1.cdsQry2.Post;
      DM1.ControlTran(9,DM1.cdsQry2, 'MOVCXC');
    end;

    DM1.cdsQry2.Next;
  end;



end;

function TFPrueba08.CalculaNumero(sCND: string): string;
var
   wItem,wPos:integer;
begin
   wPos:= Pos('-',sCND);
   if wPos=0 then
   begin
    wPos:=length(sCND);
    wItem:=1;
    result:=copy(sCND,1,wPos)+'-'+StrZero(IntToStr(wItem),2);
	 end
	 else
	 begin
		 wItem:= StrToInt(Copy(sCND,wPos+1,2));
		 wItem:= wItem+1;
		 result:=copy(sCND,1,wPos)+StrZero(IntToStr(wItem),2);
	 end;
end;

procedure TFPrueba08.BitBtn3Click(Sender: TObject);
var sSQL:string;
begin
sSQL:=' SELECT CCNODOC,CLIEID,CCMTOORI,CCPAGORI,CCSALORI, '+
' CCMTOEXT,CCPAGEXT,CCSALEXT,CCMTOLOC,CCPAGLOC,CCSALLOC,UBIID,SITID,CCESTADO,CCFCANCEL '+
'  FROM CXC301 '+
' WHERE CIAID=''01'' AND DOCID=''05''  AND CCESTADO<>''C'' AND CCESTADO<>''A'' AND '+
' ( '+
{' CCNODOC LIKE ''426402%'' OR '+
' CCNODOC LIKE ''426921%'' OR '+
' CCNODOC LIKE ''426922%'' OR '+
' CCNODOC LIKE ''426977%'' OR '+
' CCNODOC LIKE ''427082%'' OR '+
' CCNODOC LIKE ''427240%'' OR '+
' CCNODOC LIKE ''427338%'' OR '+
' CCNODOC LIKE ''427437%'' OR '+
' CCNODOC LIKE ''427535%'' OR '+
' CCNODOC LIKE ''427574%'' OR '+
' CCNODOC LIKE ''427618%'' OR '+
' CCNODOC LIKE ''427625%'' OR '+
' CCNODOC LIKE ''427757%'' OR '+
' CCNODOC LIKE ''427769%'' OR '+
' CCNODOC LIKE ''427770%'' OR '+
' CCNODOC LIKE ''427810%'' OR '+
' CCNODOC LIKE ''427836%'' OR '+
' CCNODOC LIKE ''427852%'' OR '+
' CCNODOC LIKE ''427916%'' OR '+
' CCNODOC LIKE ''428016%'' OR '+
' CCNODOC LIKE ''428017%'' OR '+
' CCNODOC LIKE ''428034%'' OR '+
' CCNODOC LIKE ''428035%'' OR '+
' CCNODOC LIKE ''428056%'' OR '+
' CCNODOC LIKE ''428065%'' OR '+
' CCNODOC LIKE ''428098%'' OR '+
' CCNODOC LIKE ''428115%'' OR '+
' CCNODOC LIKE ''428124%'' OR '+
' CCNODOC LIKE ''428211%'' OR '+
' CCNODOC LIKE ''428311%'' OR '+
' CCNODOC LIKE ''428382%'' OR '+
' CCNODOC LIKE ''428387%'' OR '+
' CCNODOC LIKE ''428402%'' OR '+
' CCNODOC LIKE ''428403%'' OR '+
' CCNODOC LIKE ''428416%'' OR '+
' CCNODOC LIKE ''428441%'' OR '+
' CCNODOC LIKE ''428451%'' OR '+
' CCNODOC LIKE ''428472%'' OR '+
' CCNODOC LIKE ''428522%'' OR '+
' CCNODOC LIKE ''428527%'' OR '+
' CCNODOC LIKE ''428578%'' OR '+
' CCNODOC LIKE ''428598%'' OR '+
' CCNODOC LIKE ''428624%'' OR '+
' CCNODOC LIKE ''428669%'' OR '+
' CCNODOC LIKE ''428671%'' OR '+
' CCNODOC LIKE ''428699%'' OR '+
' CCNODOC LIKE ''428723%'' OR '+
' CCNODOC LIKE ''428725%'' OR '+
' CCNODOC LIKE ''428756%'' OR '+
' CCNODOC LIKE ''428765%'' OR '+
' CCNODOC LIKE ''428788%'' OR '+
' CCNODOC LIKE ''428793%'' OR '+
' CCNODOC LIKE ''428824%'' OR '+
' CCNODOC LIKE ''428906%'' OR '+
' CCNODOC LIKE ''428943%'' OR '+
' CCNODOC LIKE ''428996%'' OR '+
' CCNODOC LIKE ''429148%'' OR '+
' CCNODOC LIKE ''800112%'' OR '+
' CCNODOC LIKE ''800413%'' OR '+
' CCNODOC LIKE ''800435%'' OR '+
' CCNODOC LIKE ''800514%'' OR '+
' CCNODOC LIKE ''800515%'' OR '+
' CCNODOC LIKE ''800578%'' OR '+
' CCNODOC LIKE ''800640%'' OR '+
' CCNODOC LIKE ''800641%'' OR '+
' CCNODOC LIKE ''800654%'' OR '+
' CCNODOC LIKE ''800686%'' OR '+
' CCNODOC LIKE ''800694%'' OR '+
' CCNODOC LIKE ''800699%'' OR '+
' CCNODOC LIKE ''800711%'' OR '+
' CCNODOC LIKE ''425236%'' OR '+
' CCNODOC LIKE ''426609%'' OR '+
' CCNODOC LIKE ''426657%'' OR '+
' CCNODOC LIKE ''800273%'' OR '+
' CCNODOC LIKE ''800433%'' OR '+
' CCNODOC LIKE ''800437%'')  ';}

' CCNODOC LIKE ''427552%'' OR '+
' CCNODOC LIKE ''427753%'' OR '+
' CCNODOC LIKE ''800579%'' OR '+
' CCNODOC LIKE ''428443%'' )';

  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(sSQL);
  DM1.cdsQry2.Open;
  DM1.cdsQry2.IndexFieldNames:='CCNODOC';
end;

end.
