unit CxC220;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit;

type
  TFNUMFRM = class(TForm)
    Z2bbtnAceptar: TBitBtn;
    Z2bbtnCancel: TBitBtn;
    dbeANUMFORM: TwwDBEdit;
    Label1: TLabel;
    dbeNNUMFORM: TwwDBEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FNUMFRM: TFNUMFRM;

implementation

{$R *.DFM}

procedure TFNUMFRM.Z2bbtnCancelClick(Sender: TObject);
begin
 ModalResult := mrCancel;
 Close;
end;

procedure TFNUMFRM.Z2bbtnAceptarClick(Sender: TObject);
begin
 ModalResult := mrOK;
 Close;
end;

procedure TFNUMFRM.FormCreate(Sender: TObject);
begin
  dbeNNUMFORM.Text := '';
  dbeANUMFORM.Text := '';
end;

procedure TFNUMFRM.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;

end;

end.
