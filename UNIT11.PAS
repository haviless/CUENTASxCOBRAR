unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    pb1: TProgressBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses CxCDM;


{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var sWhere,sSQL:string;

begin
 sSQL:='SELECT CIAID,DOCID,CCSERIE,CCNODOC,CCPAGEXT,CCFCANCEL FROM CXC301 '+
//       ' WHERE CIAID=''01'' AND DOCID=''13'' AND CCESTADO=''C'' AND CCFCANCEL IS NULL';
       ' WHERE CIAID=''01'' AND DOCID=''13'' AND CCESTADO=''C'' AND CCFCANCEL IS NULL';
 DM1.cdsMovCxC.Close;
 DM1.cdsMovCxC.DataRequest(sSQL);
 DM1.cdsMovCxc.Open;
 DM1.cdsMovCxc.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC';


{ sSQL:='SELECT CIAID,DOCID,CCSERIE,CCNODOC,CCFCANJE FROM CXC305 '+
       ' WHERE CIAID=''01'' AND DOCID=''05'' ';
 DM1.cdsQry4.Close;
 DM1.cdsQry4.DataRequest(sSQL);
 DM1.cdsQry4.Open;
 DM1.cdsQry4.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC;CCFCANJE';}
 pb1.Position:=0;
 pb1.Max:=DM1.cdsMovCxC.RecordCount;
 DM1.cdsMovCxc.First;
 sWhere:='';
 while not DM1.cdsMovCxc.EOF do
 begin
   {DM1.cdsQry4.Filter:='CCSERIE='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString)+
                       ' AND CCNODOC='+Quotedstr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString);
   DM1.cdsQry4.Filtered:=True;}
   sWhere:=sWhere+' CCNODOC='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString)+' OR ';

   sSQL:='SELECT CIAID,DOCID,CCSERIE,CCNODOC,CCFCANJE FROM CXC305 '+
         ' WHERE CIAID=''01'' AND DOCID=''13'' AND CCSERIE='+
           QuotedStr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString)+
           ' AND CCNODOC='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString);
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(sSQL);
   DM1.cdsQry4.Open;
   DM1.cdsQry4.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC;CCFCANJE';

   DM1.cdsMovCxC.Edit;

   if DM1.cdsQry4.RecordCount=0 then
   begin
     DM1.cdsMovCxC.FieldByName('CCFCANCEL').Clear;
   end
   else
   begin
     DM1.cdsQry4.Last;
     DM1.cdsMovCxC.FieldByName('CCFCANCEL').AsDateTime:=DM1.cdsQry4.FieldByName('CCFCANJE').AsDateTime;
   end;
   DM1.cdsMovCxC.Post;

   DM1.cdsMovCxc.Next;
   pb1.Position:=pb1.Position+1;
   if (pb1.Position mod 10)=0 then
   begin
     sWhere:=copy(sWhere,1,Length(sWhere)-4);
     DM1.cdsMovCxC.DataRequest('SELECT CIAID,DOCID,CCSERIE,CCNODOC,CCPAGEXT,CCFCANCEL FROM CXC301 WHERE CIAID=''01'' AND DOCID=''13'' AND ('+sWhere+')');
     DM1.ControlTran(9,DM1.cdsMovCxC,'MOVCXC');
     sWhere:='';
   end;

 end;

 DM1.cdsMovCxC.DataRequest('SELECT CIAID,DOCID,CCSERIE,CCNODOC,CCPAGEXT,CCFCANCEL FROM CXC301 WHERE CIAID=''01'' AND DOCID=''13''');
 DM1.ControlTran(9,DM1.cdsMovCxC,'MOVCXC');
 pb1.Position:=0;
end;

end.
