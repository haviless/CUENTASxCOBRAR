unit UnitPrueba01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls,
  wwdbdatetimepicker;

type
  TFPrueba01 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    PB1: TProgressBar;
    Button1: TButton;
    na: TwwDBDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba01: TFPrueba01;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba01.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin
  sSQL:=' SELECT PLBCFECHA,LETRA,BANCOID,PLBCID,CIAID FROM CXC309 WHERE '+
        ' LETRA NOT IN (''420158A-01'',''422017'',''422018'',''422034'',''422273'',''422619'') AND (LETRA IS NOT NULL) AND LETRA<>''''';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(sSQL);
  DM1.cdsQry4.Open;
  PB1.Position:=0;
  PB1.Max:=DM1.cdsQry4.RecordCount;

  DM1.cdsQry4.First;
  while not DM1.cdsQry4.EOF do
  begin
    Application.ProcessMessages;                    //DM1.cdsQry4.FieldByName('PLBCFECHA').AsString
    sSQL:=' UPDATE CXC301 SET CCFPLABCO='+QuotedStr(BuscaQry('dspTGE','CXC308','PLBCFECHA','CIAID='+QuotedStr(DM1.cdsQry4.FieldByName('CIAID').AsString+
                                         ' AND PLBCID='+QuotedStr(DM1.cdsQry4.FieldByName('PLBCID').AsString)+' AND BANCOID='+QuotedStr(DM1.cdsQry4.FieldByName('BANCOID').AsString)),'PLBCFECHA'))+
          ' WHERE CIAID=''01'' AND DOCID=''05'' AND CCNODOC='+QuotedStr(DM1.cdsQry4.FieldByName('LETRA').AsString)+' AND CCFPLABCO IS NULL ';
    PB1.Position:=PB1.Position+1;
    try
      DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    except

    end;
    DM1.cdsQry4.Next;
  end;


end;

procedure TFPrueba01.Button1Click(Sender: TObject);
begin
	 if DM1.VerificaCierre('01',na.Date) then
	 begin
			na.SetFocus;
			Raise Exception.Create( ' PERIODO CERRADO ' );
	 end;
end;

end.
