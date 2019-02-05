unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses CxCDM;

{$R *.DFM}

procedure TForm2.Button1Click(Sender: TObject);
var
    dd,mm,aa:word;
    aamm:string;
begin
     DecodeDate(Date,aa,mm,dd);
     aamm:=IntToStr(aa)+StrZero(IntToStr(mm),2);
     DM1.SaldosAuxiliar( '01',aamm,
                         '03','20445230350',
                         '-',59.83,205.82, '02');

end;

end.
