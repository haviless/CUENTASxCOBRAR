unit Uprueba15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Gauges,dbclient;

type
  TFPrueba15 = class(TForm)
    g1: TGauge;
    bbtnLeer: TButton;
    bbtnEscribe: TButton;
    procedure bbtnLeerClick(Sender: TObject);
    procedure bbtnEscribeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba15: TFPrueba15;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba15.bbtnLeerClick(Sender: TObject);
var sSQL:string;
begin

  sSQL:='SELECT *  FROM CXC301 WHERE CIAID=''01'' AND TDIARID=''49'' AND CCAAAA IS NULL AND (CCESTADO=''P'' OR CCESTADO=''C'' ) AND YEAR(CCFEMIS)=2002 ';
  DM1.cdsMovCxC.Close;
  DM1.cdsMovCxC.DataRequest(sSQL);
  DM1.cdsMovCxC.Open;
  g1.progress:=0;
  g1.MinValue:=0;
  g1.MaxValue:=DM1.cdsMovCxC.RecordCount;

  DM1.cdsMovCxC.First;
  while not DM1.cdsMovCxC.EOF do
  begin
    Application.ProcessMessages;
    g1.progress:=g1.progress+1;
    if BuscaFecha('TGE114','Fecha',DM1.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime) then
    begin
      DM1.cdsMovCxC.Edit;
      DM1.cdsMovCxC.FieldByName('CCANOMES').AsString:=DM1.cdsQry2.FieldByName('FECANO').AsString+DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsMovCxC.FieldByName('CCAAAA').AsString  :=DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsMovCxC.FieldByName('CCMM').AsString    :=DM1.cdsQry2.FieldByName('FECMES').AsString;      // mes
      DM1.cdsMovCxC.FieldByName('CCDD').AsString    :=DM1.cdsQry2.FieldByName('FECDIA').AsString;      // día
      DM1.cdsMovCxC.FieldByName('CCTRI').AsString   :=DM1.cdsQry2.FieldByName('FECTRIM').AsString;     // trimestre
      DM1.cdsMovCxC.FieldByName('CCSEM').AsString   :=DM1.cdsQry2.FieldByName('FECSEM').AsString;      // semestre
      DM1.cdsMovCxC.FieldByName('CCSS').AsString    :=DM1.cdsQry2.FieldByName('FECSS').AsString;       // semana
      DM1.cdsMovCxC.FieldByName('CCAATRI').AsString :=DM1.cdsQry2.FieldByName('FECAATRI').AsString;    // año+trimestre
      DM1.cdsMovCxC.FieldByName('CCAASEM').AsString :=DM1.cdsQry2.FieldByName('FECAASEM').AsString;    // año+semestre
      DM1.cdsMovCxC.FieldByName('CCAASS').AsString  :=DM1.cdsQry2.FieldByName('FECAASS').AsString;     // año+semana
      DM1.cdsMovCxC.Post;
      sSQL:='SELECT * FROM CXC301 WHERE CIAID='+QuotedStr(DM1.cdsMovCxC.FieldByName('CIAID').AsString)+
            ' AND DOCID='+QuotedStr(DM1.cdsMovCxC.FieldByName('DOCID').AsString)+
            ' AND CCSERIE='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString)+
            ' AND CCNODOC='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString)+
            ' AND CLIEID='+QuotedStr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString);

      DM1.cdsMovCxC.DataRequest(sSQL);
      DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
    end;

     DM1.cdsMovCxC.Next;
  end;


end;

procedure TFPrueba15.bbtnEscribeClick(Sender: TObject);
begin
  DM1.cdsMovCxC.Last;
end;

end.
