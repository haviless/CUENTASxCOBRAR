unit UnitPrueba04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched, Mask,
	wwdbedit, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel;

type
  TFPrueba04 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	FPrueba04: TFPrueba04;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba04.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin
	sSQL:='SELECT * FROM CXC301 WHERE CIAID=''01'' AND DOCID=''11'' AND CLIEID=''1018214213''';
	DM1.cdsMovCxC.Close;
	DM1.cdsMovCxC.DataRequest(sSQL);
	DM1.cdsMovCxC.Open;

end;

procedure TFPrueba04.BitBtn3Click(Sender: TObject);
var sSQL:string;
begin
	DM1.cdsMovCxC.Edit;
	DM1.cdsMovCxC.FieldByName('CCHREG').AsDateTime:=Time	;
	DM1.cdsPost(DM1.cdsMovCxc);
	DM1.cdsMovCxC.Post;

//	sSQL:=' UPDATE CXC301 SET VEID=''AA'' WHERE CIAID=''01'' AND DOCID=''11'' AND CLIEID=''1018214213''';
//	DM1.DCOM1.AppServer.EjecutaSQL(sSQL);

	DM1.cdsMovCxC.Edit;
	DM1.cdsMovCxC.FieldByName('CCHREG').AsDateTime:=Time	;
	DM1.cdsPost(DM1.cdsMovCxc);
	DM1.cdsMovCxC.Post;

	DM1.ControlTran(9,DM1.cdsMovCxC,'MovCxC');

end;

end.
