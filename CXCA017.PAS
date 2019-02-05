unit CXCA017;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TNUEVOMUNDO = class(TForm)
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
    FECHA: TQRLabel;
    X: TQRLabel;
    R: TQRLabel;
    RUC: TQRLabel;
    QRLabel6: TQRLabel;
    TELEFONO: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    Planilla: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
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
  NUEVOMUNDO: TNUEVOMUNDO;

implementation

uses CXCA001, CXCA002;

{$R *.DFM}




procedure TNUEVOMUNDO.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 FECHA.Caption:=DateToStr(DM1.CT805001Fecha.Value);
 CUENTA.Caption:=DM1.CT805001CTACTE.Value;
 Planilla.Caption:=Fprincipal.Edit1.Text;
end;


procedure TNUEVOMUNDO.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
{     DM1.CT805001D.EDIT;
     DM1.CT805001DACTUALIZADO.VALUE:='I';
     DM1.CT805001D.POST;
 }
end;




end.
