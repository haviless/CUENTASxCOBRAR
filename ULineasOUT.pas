unit ULineasOUT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched;

type
  TForm1 = class(TForm)
    o: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Memo2: TMemo;
    PB: TProgressBar;
    memo1: TwwDBRichEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if o.execute then
  begin
    Memo2.Clear;
    Memo2.Lines.LoadFromFile(o.filename);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i:longint;
    cad:string;
    us:string;
begin
  us:=#9#9' IN "US';
  PB.position:=0;
  PB.Max:=memo2.Lines.Count-1;
  Memo1.Clear;
  for i:=0 to memo2.Lines.Count-1 do
  begin
    cad:=memo2.lines[i];
    if copy(cad,1,15)='---------------' then
      cad:='';
    if copy(cad,1,27)='-- DDL Statements for table' then
      cad:='';
    if copy(cad,1,29)='-- DDL Statements for indexes' then
      cad:='';
    if copy(cad,1,9)=us then
      cad:='';
    if cad =' ' then
    cad := '';
    if cad<>'' then
      Memo1.Lines.Add(cad);
    PB.Position:=PB.Position+1;
  end;
  PB.Position:=0;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
{  while memo1.FindReplaceText('"DB2ADMIN".','',[]) do
    memo1.FindReplace;
  while memo1.FindReplaceText('"','',[]) do
  memo1.FindReplace;}
{  if memo1.FindReplaceText('"DB2ADMIN".','',[]) then
    memo1.FindReplace;}
  r.e

end;

end.

