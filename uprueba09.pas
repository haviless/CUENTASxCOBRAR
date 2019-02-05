unit uprueba09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, Buttons, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel;

type
  TFPrueba09 = class(TForm)
    memo1: TwwDBRichEdit;
    SpeedButton1: TSpeedButton;
    pb: TProgressBar;
    BitBtn1: TBitBtn;
    wwDBGrid1: TwwDBGrid;
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
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba09: TFPrueba09;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba09.SpeedButton1Click(Sender: TObject);
var i:integer;
    sSQL:string;
begin
  pb.Position:=0;
  pb.Max:=Memo1.Lines.Count;
  memo1.Lines.LoadFromFile('c:\borrar\B.txt');
  for i:=0 to Memo1.Lines.Count do
  begin
    Application.ProcessMessages;
    sSQL:=' UPDATE CXC301 SET COMPROMET=''NA'' WHERE CIAID=''01'' AND '+Memo1.Lines[i];
    try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    except
    end;
    pb.Position:=pb.position+1;
  end;
  pb.Position:=0;
end;

procedure TFPrueba09.BitBtn1Click(Sender: TObject);
var sSQL:string;
    sDoc,sSerie:string;
begin
  sDoc:='19';
  sSerie:='000';
  sSQL:=' SELECT '+
 ' C1.CIAID, C1.DOCID, C1.CCSERIE, C1.CCNODOC, C1.CLIEID, C1.CCESTADO, C1.CCMTOEXT, C1.CCPAGEXT, C1.CCSALEXT, '+
 ' C1.CCFCANCEL, C5.FECHA,C1.CCFEMIS '+
 ' FROM '+                               
 ' CXC301 C1 '+
 ' LEFT JOIN (SELECT CIAID,DOCID,CCSERIE,CCNODOC,CLIEID,MAX(CCFCANJE) FECHA FROM CXC305 WHERE CIAID=''01'' AND DOCID='+QuotedStr(sDoc)+' AND CCSERIE='+QuotedStr(sSerie)+
 ' GROUP BY CIAID,DOCID,CCSERIE,CCNODOC,CLIEID) C5 ON C5.CIAID=C1.CIAID AND C5.DOCID=C1.DOCID AND C5.CCSERIE=C1.CCSERIE AND C5.CCNODOC=C1.CCNODOC AND C5.CLIEID=C1.CLIEID '+
 ' AND C5.CIAID=''01'' AND C5.DOCID='+QuotedStr(sDoc)+' AND C5.CCSERIE='+QuotedStr(sSerie)+
 ' WHERE C1.CIAID=''01'' AND C1.DOCID='+QuotedStr(sDoc)+' AND C1.CCSERIE='+QuotedStr(sSerie)+' AND C1.CCESTADO=''C'' ';
 DM1.cdsQry.Close;
 DM1.cdsQry.DataRequest(sSQL);
 DM1.cdsQry.Open;
 DM1.cdsQry.Filter:='FECHA<>CCFCANCEL';
 DM1.cdsQry.Filtered:=True;
end;

procedure TFPrueba09.BitBtn2Click(Sender: TObject);
var sSQL:string;
begin
 DM1.cdsQry.First;
 pb.Position:=0;
 pb.Max:=DM1.cdsQry.RecordCount;

 while not DM1.cdsQry.EOF do
 begin
   if DM1.cdsQry.FieldByName('FECHA').AsDateTime>0 then
   sSQL:=' UPDATE CXC301 SET CCFCANCEL='+QuotedStr(DM1.cdsQry.FieldByName('FECHA').AsString)+
   ' WHERE CIAID=''01'' AND DOCID='+QuotedsTr(DM1.cdsQry.FieldByName('DOCID').AsString)+
   ' AND CCSERIE='+QuotedStr(DM1.cdsQry.FieldByName('CCSERIE').AsString)+
   ' AND CCNODOC='+QuotedStr(DM1.cdsQry.FieldByName('CCNODOC').AsString)+
   ' AND CLIEID='+QuotedStr(DM1.cdsQry.FieldByName('CLIEID').AsString)
  else
   sSQL:=' UPDATE CXC301 SET CCFCANCEL='+QuotedStr(DM1.cdsQry.FieldByName('CCFEMIS').AsString)+
   ' WHERE CIAID=''01'' AND DOCID='+QuotedsTr(DM1.cdsQry.FieldByName('DOCID').AsString)+
   ' AND CCSERIE='+QuotedStr(DM1.cdsQry.FieldByName('CCSERIE').AsString)+
   ' AND CCNODOC='+QuotedStr(DM1.cdsQry.FieldByName('CCNODOC').AsString)+
   ' AND CLIEID='+QuotedStr(DM1.cdsQry.FieldByName('CLIEID').AsString);
   try
     DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   except
   end;
   DM1.cdsQry.Next;
   pb.Position:= pb.Position+1;
 end;
 pb.Position:=0;

end;

end.

