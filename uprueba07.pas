unit uprueba07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, wwclient, Wwdatsrc, StdCtrls, Buttons, DBTables, Wwtable,
  Grids, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, ImgList;

type
  TFPrueba07 = class(TForm)
    od: TOpenDialog;
    dsmigracion: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    table: TwwTable;
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
    wwdbAbrir: TwwNavButton;
    im1: TImageList;
    wwdbEjecutar: TwwNavButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure wwdbAbrirClick(Sender: TObject);
    procedure wwdbEjecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba07: TFPrueba07;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFPrueba07.BitBtn1Click(Sender: TObject);
var sname:string;
    ipos:integer;
begin
  if od.execute then
  begin
    sname:=od.FileName;
    ipos:=LastDelimiter('\',sName);
    sname:=copy(sName,ipos+1,length(sName)-ipos-4);

    table.Active:=False;
    table.tablename:=uppercase(sname);
    table.Active:=True;
  end;
  table.IndexFieldName:='NL';
end;

procedure TFPrueba07.wwdbAbrirClick(Sender: TObject);
var sname:string;
    ipos:integer;
begin
  if od.execute then
  begin
    if Length(od.FileName)>0 then
    begin
      sname:=od.FileName;
      ipos:=LastDelimiter('\',sName);
      sname:=copy(sName,ipos+1,length(sName)-ipos-4);

      table.Active:=False;
      //table.tablename:=uppercase(sname);
      table.tablename:=uppercase(od.FileName);
      table.Active:=True;
    end;
  end;
end;

procedure TFPrueba07.wwdbEjecutarClick(Sender: TObject);
var sBanco,sSQL:string;
    bNumUni,bNumLet,bFVcmto,bClieRuc,bImporte:Boolean;
    i:integer;
begin
  sBanco:='01';
  bNumUni:= False;
  bNumLet:= False;
  bFVcmto:= False;
  bClieRuc:= False;
  bImporte:= False;
  for i := 0 to table.FieldDefs.Count - 1 do
  begin
    if table.FieldDefs.Items[i].Name='NUMUNI' then bNumUni:= not bNumUni;
    if table.FieldDefs.Items[i].Name='NUMLET' then bNumLet:= not bNumLet;
    if table.FieldDefs.Items[i].Name='FVCMTO' then bFVcmto:= not bFVcmto;
    if table.FieldDefs.Items[i].Name='CLIERUC' then bClieRuc:= not bClieRuc;
    if table.FieldDefs.Items[i].Name='IMPORTE' then bImporte:= not bImporte;
  end;
  if not (bNumUni and bNumLet and bFVcmto and bClieRuc and bImporte) then
  begin
    Raise Exception.Create('No existen los campos Necesarios para la Migracion');
  end;

  sSQL:='DELETE FROM CXC503 ';
  DM1.DCOM1.AppServer.EjecutaSQL(sSQL);  

  sSQL:='SELECT * FROM CXC503 ';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(sSQL);
  DM1.cdsQry2.Open;
  DM1.cdsQry2.EmptyDataSet;

  table.First;
  if table.RecordCount>0 then
  begin
    while not table.EOF do
    begin
      DM1.cdsQry2.Insert;
      DM1.cdsQry2.FieldByName('NUMUNI').AsString:=table.FieldByName('NUMUNI').AsString;
      DM1.cdsQry2.FieldByName('NUMLET').AsString:=table.FieldByName('NUMLET').AsString;
      DM1.cdsQry2.FieldByName('FVCMTO').AsDateTime:=table.FieldByName('FVCMTO').AsDateTime;
      DM1.cdsQry2.FieldByName('CLIERUC').AsString:=table.FieldByName('CLIERUC').AsString;
      DM1.cdsQry2.FieldByName('IMPORTE').AsFloat:=table.FieldByName('IMPORTE').AsFloat;
      DM1.cdsQry2.FieldByName('BANCOID').AsString:=sBanco;
      DM1.cdsQry2.Post;
      table.next;
    end;
    DM1.cdsQry2.ApplyUpdates(-1);
    ShowMessage('Proceso realizado satisfactoriamente');
  end;
end;

end.
