unit CXCA012;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  Tbancosur = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    qrldbDESACEP: TQRDBText;
    qrldbIMPORTE: TQRDBText;
    QRDBText3: TQRDBText;
    qrldbRUCACEP: TQRDBText;
    QRBand3: TQRBand;
    qrlCIA: TQRLabel;
    qrlTLF: TQRLabel;
    qrlDIR: TQRLabel;
    DD: TQRLabel;
    MM: TQRLabel;
    AA: TQRLabel;
    Planilla: TQRLabel;
    QRLabel5: TQRLabel;
    qrlRUC: TQRLabel;
    QRLabel7: TQRLabel;
    qrlCUENTA: TQRLabel;
    QRExpr2: TQRExpr;
    qrldbPLAZA: TQRDBText;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bancosur: Tbancosur;
  
implementation

uses CXCA002, CXCA001, CxCDM;

{$R *.DFM}


procedure Tbancosur.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   DD.Caption:='';
   MM.Caption:='';
   AA.Caption:='';
   qrlCUENTA.Caption:='';
   Planilla.Caption:='';
end;


end.
