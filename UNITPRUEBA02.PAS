unit UnitPrueba02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls;

type
  TFPrueba02 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    PB1: TProgressBar;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba02: TFPrueba02;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba02.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin
 sSQL:=' SELECT CXC301.CLIEDES,CXC301.CLIEID,CCSERIE,CXC301.CCNODOC,CXC301.CCFVCMTO, '+
			 ' CCMTOORI,CCPAGORI,CCSALORI, '+
			 ' CCMTOEXT,CCPAGEXT,CCSALEXT, '+
			 ' CCMTOLOC,CCPAGLOC,CCSALLOC,CXC301.FLAGVAR,CCESTADO,CXC301.UBIID,CXC301.SITID,CCUSER,CCFCANCEL,CCFPLABCO,CCNPLABCO '+
' FROM CXC301 '+
' WHERE CXC301.CIAID=''01'' AND CXC301.DOCID=''05'' AND '+
' ((CXC301.CCNODOC = ''424911'') OR '+
' (CXC301.CCNODOC = ''423842'') OR '+
' (CXC301.CCNODOC = ''424376'') OR '+
' (CXC301.CCNODOC = '''')) '+
' AND CCESTADO<>''A'' ';

	DM1.cdsQry4.Close;
	DM1.cdsQry4.DataRequest(sSQL);
	DM1.cdsQry4.Open;
	PB1.Position:=0;
	PB1.Max:=DM1.cdsQry4.RecordCount;

	DM1.cdsQry4.First;
	while not DM1.cdsQry4.EOF do
	begin
		Application.ProcessMessages;                    //DM1.cdsQry4.FieldByName('PLBCFECHA').AsString
		DM1.cdsQry.Close;
		DM1.cdsQry.DataRequest('SELECT CCSALORI,CCMTOORI,CCMTOEXT,CCMTOLOC FROM CXC301 WHERE CIAID=''01'' AND DOCID=''05'' AND CCNODOC='+QuotedStr(DM1.cdsQry4.FieldByName('CCNODOC').AsString+'-01'));
		DM1.cdsQry.Open;
		if DM1.cdsQry.RecordCount>0 then
		begin
			sSQL:=' UPDATE CXC301 SET '+
						' CCSALORI=COALESCE(CCMTOORI,0)-COALESCE(CCPAGORI,0)-'+FloatToStr(DM1.cdsQry.FieldByName('CCMTOORI').AsFloat)+', '+
						' CCSALEXT=COALESCE(CCMTOEXT,0)-COALESCE(CCPAGEXT,0)-'+FloatToStr(DM1.cdsQry.FieldByName('CCMTOEXT').AsFloat)+', '+
						' CCSALLOC=COALESCE(CCMTOLOC,0)-COALESCE(CCPAGLOC,0)-'+FloatToStr(DM1.cdsQry.FieldByName('CCMTOLOC').AsFloat)+
						' WHERE CIAID=''01'' AND DOCID=''05'' AND CCNODOC='+QuotedStr(DM1.cdsQry4.FieldByName('CCNODOC').AsString);

			PB1.Position:=PB1.Position+1;
			try
				DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
			except

			end;
		end;
		DM1.cdsQry4.Next;
	end;


end;

end.
