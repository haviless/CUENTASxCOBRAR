unit SEG005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls, db;

type
  TFCPassw = class(TForm)
    pnlRegistro: TPanel;
    lblUsuario: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    bbtnOk2: TBitBtn;
    bbtnCanc2: TBitBtn;
    dbeUsuario: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    dbePassw1: TwwDBEdit;
    dbePassw2: TwwDBEdit;
    pnlConfirmar: TPanel;
    bbtnOk1: TBitBtn;
    bbtnCanc1: TBitBtn;
    Label1: TLabel;
    dbeUser: TwwDBEdit;
    Label2: TLabel;
    dbePassword: TwwDBEdit;
    procedure bbtnCanc2Click(Sender: TObject);
    procedure bbtnOk2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnOk1Click(Sender: TObject);
    procedure bbtnCanc1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCPassw: TFCPassw;

implementation

uses CXCDM, CXC001;

{$R *.DFM}

procedure TFCPassw.bbtnCanc2Click(Sender: TObject);
begin
	DM1.cdsUsuarios.CancelUpdates;
	Close
end;

procedure TFCPassw.bbtnOk2Click(Sender: TObject);
var
	xPass, xSQL : String;
begin
	if (Length(Trim(dbePassw1.Text)) = 0) or (Length(Trim(dbePassw2.Text)) = 0) then
	begin
		ShowMessage('Error : Password no Validos');
		exit;
	end;
	if Trim(dbePassw1.Text) <> Trim(dbePassw2.Text) then
	begin
		Raise Exception.Create( 'Error al Confirmar Password' );
	end;

	Screen.Cursor:=crHourGlass;
	xPass:=DM1.Encripta(dbePassw2.Text);


	xSQL:='UPDATE TGE002 SET PASSWORD='+QuotedStr(xPass)+', USERNOM='+QuotedStr(Trim(dbeNombre.Text))+' '+
				'WHERE USERID='+QuotedStr(dm1.wUsuario)+' '+
				'AND MODULOID='+QuotedStr(dm1.wModulo);
	Try
		DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
	Except
	End;
	ShowMessage('El Password se a Cambiado Satisfactoriamente'+ #13+#13+#13+
							'La Sesión va a ser Finalizada para Terminar con el Proceso de Actualización' );
	Screen.Cursor:=crDefault;
	Application.Terminate;
end;

procedure TFCPassw.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
		if Self.ActiveControl Is TMemo then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
	end;
end;

procedure TFCPassw.bbtnOk1Click(Sender: TObject);
begin
	if UpperCase(DM1.DesEncripta(DM1.cdsUsuarios.FieldByname('PASSWORD').AsString)) = UpperCase(dbePassword.Text) then
	begin
		pnlConfirmar.Visible:=False;
		pnlRegistro.Enabled:=True;
		dbePassw1.SetFocus;
	end
	else
	begin
		ShowMessage('Error : Password No Valido, No puede Continuar');
		Close
	end;
end;

procedure TFCPassw.bbtnCanc1Click(Sender: TObject);
begin
	Close;
end;

procedure TFCPassw.FormActivate(Sender: TObject);
begin
	pnlConfirmar.Visible:=True;
	pnlRegistro.Enabled:=False;
	dbePassword.SetFocus;	
end;

end.
