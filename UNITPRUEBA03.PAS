unit UnitPrueba03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched;

type
  TFPrueba03 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    PB1: TProgressBar;
    Label1: TLabel;
    memo1: TwwDBRichEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba03: TFPrueba03;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba03.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin
	sSQL:=' SELECT DOCID,CCSERIE,CCNODOC,CCMTOORI,CCPAGORI,CCSALORI,CCMTOEXT,CCPAGEXT,CCSALEXT, '+
				' CCMTOLOC,CCPAGLOC,CCSALLOC,FLAGVAR,CCESTADO,UBIID,CCNOREG '+
//				' FROM CXC301 WHERE CIAID=''01'' AND CCESTADO<>''A'' AND CCESTADO<>''C'' AND (COALESCE(CCMTOEXT,0)-COALESCE(CCPAGEXT,0))<>COALESCE(CCSALEXT,0) ';
//				' FROM CXC301 WHERE CIAID=''01'' AND CCESTADO<>''A'' ';
				' FROM CXC301 WHERE CIAID=''01'' AND CCESTADO=''P'' ';

	DM1.cdsQry4.Close;
	DM1.cdsQry4.DataRequest(sSQL);
	DM1.cdsQry4.Open;
	PB1.Position:=0;
	Label1.caption:='0';
	PB1.Max:=DM1.cdsQry4.RecordCount;
	memo1.Clear;
	DM1.cdsQry4.First;
	while not DM1.cdsQry4.EOF do
	begin
//		memo1.Lines.Add(DM1.cdsQry4.FieldByName('DOCID').AsString+' '+DM1.cdsQry4.FieldByName('CCSERIE').AsString+ ' '+DM1.cdsQry4.FieldByName('CCNODOC').AsString+': '+FloatToStrF(DM1.cdsQry4.FieldByName('CCMTOEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCSALEXT').AsFloat,ffNumber,15,2));
		Application.ProcessMessages;                    //DM1.cdsQry4.FieldByName('PLBCFECHA').AsString
		DM1.cdsQry.Close;
		DM1.cdsQry.DataRequest('SELECT SUM(DCCMTOORI) DCCMTOORI,SUM(DCCMTOEXT) DCCMTOEXT,SUM(DCCMTOLOC) DCCMTOLOC FROM CXC305 WHERE '+
													 ' CIAID=''01'' AND CCSERIE='+QuotedStr(DM1.cdsQry4.FieldByName('CCSERIE').AsString)+' AND DOCID='+QuotedStr(DM1.cdsQry4.FieldByName('DOCID').AsString)+' AND CCNODOC='+QuotedStr(DM1.cdsQry4.FieldByName('CCNODOC').AsString));
		DM1.cdsQry.Open;
		if DM1.cdsQry.RecordCount>0 then
		begin
			if (DM1.cdsQry.FieldByName('DCCMTOEXT').AsFloat-DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat)>0.04 then
			begin
				memo1.Lines.Add(DM1.cdsQry4.FieldByName('DOCID').AsString+' '+DM1.cdsQry4.FieldByName('CCSERIE').AsString+ ' '+DM1.cdsQry4.FieldByName('CCNODOC').AsString+': '+FloatToStrF(DM1.cdsQry4.FieldByName('CCMTOEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCSALEXT').AsFloat,ffNumber,15,2));
				memo1.Lines.Add('   PAGO NO CUADRA '+FloatToStrF(DM1.cdsQry.FieldByName('DCCMTOEXT').AsFloat,ffNumber,15,2));
				Label1.caption:=InttoStr(StrToInt(Label1.caption)+1);
			end
			else
			begin
				//memo1.Lines.Add(DM1.cdsQry4.FieldByName('DOCID').AsString+' '+DM1.cdsQry4.FieldByName('CCSERIE').AsString+ ' '+DM1.cdsQry4.FieldByName('CCNODOC').AsString+': '+FloatToStrF(DM1.cdsQry4.FieldByName('CCMTOEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCSALEXT').AsFloat,ffNumber,15,2));
				//memo1.Lines.Add('   PAGO CUADRA');
			end;
		end
		else
		begin
			//memo1.Lines.Add(DM1.cdsQry4.FieldByName('DOCID').AsString+' '+DM1.cdsQry4.FieldByName('CCSERIE').AsString+ ' '+DM1.cdsQry4.FieldByName('CCNODOC').AsString+': '+FloatToStrF(DM1.cdsQry4.FieldByName('CCMTOEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCPAGEXT').AsFloat,ffNumber,15,2)+' '+FloatToStrF(DM1.cdsQry4.FieldByName('CCSALEXT').AsFloat,ffNumber,15,2));
			//memo1.Lines.Add('                       NO TIENE PAGOS');
		end;
		PB1.Position:=PB1.Position+1;
		DM1.cdsQry4.Next;
	end;
	PB1.Position:=0;

end;

end.
