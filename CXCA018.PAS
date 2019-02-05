unit CXCA018;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TEXTEBANDES = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    CUENTA: TQRLabel;
    QRLabel6: TQRLabel;
    TELEFONO: TQRLabel;
    Planilla: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EXTEBANDES: TEXTEBANDES;

implementation

uses CXCA001, CXCA002;

{$R *.DFM}



procedure TEXTEBANDES.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   CUENTA.Caption:=DM1.CT805001CTACTE.Value;
   Planilla.Caption:=Fprincipal.Edit1.Text;
end;


end.
