unit uprueba10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched;

type
  TFprueba10 = class(TForm)
    pb1: TProgressBar;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprueba10: TFprueba10;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFprueba10.Button1Click(Sender: TObject);
var sSQL:string;
begin
  sSQL:=' SELECT RUCINC.PROV,TGE201.PROVDES,RUCINC.SACSA,RUCINC.NOMBRERAZ '+
        ' FROM RUCINC '+
        ' LEFT JOIN TGE201 ON TGE201.PROV=RUCINC.PROV '+
        ' WHERE PROVDES<>NOMBRERAZ AND PROVSALL=0 ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(sSQL);
  DM1.cdsQry.Open;
  while not DM1.cdsQry.EOF do
  begin
    sSQL:=' UPDATE TGE201 SET PROVDES='+QuotedStr(Copy(DM1.cdsQry.FieldByName('NOMBRERAZ').AsString,1,40))+
          ', PROVSALL=1 WHERE CLAUXID=''01'' AND PROV='+QuotedStr(DM1.cdsQry.FieldByName('PROV').AsString);
    try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    except
      ShowMessage('Error');
    end;
    DM1.cdsQry.Next;
  end;
end;

end.

