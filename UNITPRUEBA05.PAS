unit UnitPrueba05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched, Mask,
	wwdbedit, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppBands,
  ppPrnabl, ppCtrls,ppviewr;

type
  TFPrueba05 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    PB1: TProgressBar;
    Edit1: TEdit;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Button1: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	FPrueba05: TFPrueba05;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba05.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin

 sSQL:='SELECT CIAID,DOCID,CCSERIE,CCNODOC,CLIEID,CCMTOORI,CCPAGORI,CCSALORI, '+
			 ' CCMTOEXT,CCPAGEXT,CCSALEXT,CCMTOLOC,CCPAGLOC,CCSALLOC,UBIID,SITID,CCESTADO,CCFCANCEL '+
			 ' FROM CXC301 '+
			 ' WHERE CIAID=''01'' AND DOCID='+Quotedstr(Edit1.text)+' AND CCESTADO=''C'' AND CCFCANCEL IS NULL ';

	DM1.cdsMovCxC.Close;
	DM1.cdsMovCxC.DataRequest(sSQL);
	DM1.cdsMovCxC.Open;
	PB1.POSITION:=0;
	pb1.max:=DM1.cdsMovCxC.RecordCount;

end;

procedure TFPrueba05.BitBtn3Click(Sender: TObject);
var sSQL:string;
begin
{	DM1.cdsMovCxC.Edit;
	DM1.cdsMovCxC.FieldByName('CCHREG').AsDateTime:=Time	;
	DM1.cdsPost(DM1.cdsMovCxc);
	DM1.cdsMovCxC.Post;

//	sSQL:=' UPDATE CXC301 SET VEID=''AA'' WHERE CIAID=''01'' AND DOCID=''11'' AND CLIEID=''1018214213''';
//	DM1.DCOM1.AppServer.EjecutaSQL(sSQL);

	DM1.cdsMovCxC.Edit;
	DM1.cdsMovCxC.FieldByName('CCHREG').AsDateTime:=Time	;
	DM1.cdsPost(DM1.cdsMovCxc);
	DM1.cdsMovCxC.Post;

	DM1.ControlTran(9,DM1.cdsMovCxC,'MovCxC');}

	DM1.cdsMovCxC.First;
	while not DM1.cdsMovCxC.EOF do
	begin
		Application.ProcessMessages;
		sSQL:='SELECT MAX(CCFCANJE) FECHA FROM CXC305 WHERE CIAID=''01'' AND DOCID='+Quotedstr(Edit1.text)+' AND CCSERIE='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString)+' AND CCNODOC='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString)+' AND CLIEID='+QuotedStr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString);
		DM1.cdsQry.Close;
		DM1.cdsQry.DataRequest(sSQL);
		DM1.cdsQry.Open;
		if (DM1.cdsQry.RecordCount>0) AND (DM1.cdsQry.FieldByName('FECHA').Value>0) then
		begin
			DM1.cdsMovCxC.Edit;
			DM1.cdsMovCxC.FieldByName('CCFCANCEL').AsDateTime:=DM1.cdsQry.FieldByName('FECHA').AsDateTime;
			DM1.cdsMovCxC.Post;
			DM1.cdsMovCxC.DataRequest('SELECT * FROM CXC301 WHERE CIAID=''01'' AND DOCID='+Quotedstr(Edit1.text)+' AND CCSERIE='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString)+
			'	AND CCNODOC='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString));
			DM1.ControlTran(9,DM1.cdsMovCxC,'MovCxC');
		end;
		pb1.position:=pb1.position+1;
		DM1.cdsMovCxC.Next;
	end;
end;

procedure TFPrueba05.ppReport1PreviewFormCreate(Sender: TObject);
begin
   (sender as tppReport).PreviewForm.WindowState := wsMinimized; //wsMaximized;
   TppViewer((sender as tppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFPrueba05.Button1Click(Sender: TObject);
begin
		ppReport1.TEMPLATE.FileName := 'c:\nosirve.rtm';
		ppReport1.template.LoadFromFile ;
    ppReport1.Print;

end;

end.
