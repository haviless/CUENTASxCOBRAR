unit CXCA020;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TBIF = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    CUENTA: TQRLabel;
    FECHA: TQRLabel;
    Planilla: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BIF: TBIF;

implementation

uses CXCA001, CXCA002;

{$R *.DFM}


procedure TBIF.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   FECHA.Caption:=datetostr(DM1.CT805001Fecha.Value);
   CUENTA.Caption:=DM1.CT805001CTACTE.Value;
   Planilla.Caption:=Fprincipal.Edit1.Text;
end;


procedure TBIF.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
{     DM1.CT805001D.EDIT;
     DM1.CT805001DACTUALIZADO.VALUE:='I';
     DM1.CT805001D.POST;
}
end;




end.
