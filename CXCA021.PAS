unit CXCA021;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TWIESE = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    qrlDBLETRA: TQRDBText;
    qrlDBFVENCTO: TQRDBText;
    qrlDBACEPTANTE: TQRDBText;
    qrlDBRUCACEP: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    qrlCIA: TQRDBText;
    qrlCUENTA: TQRDBText;
    qrlDIR: TQRDBText;
    DD: TQRLabel;
    QRLabel3: TQRLabel;
    MM: TQRLabel;
    AA: TQRLabel;
    QRLabel8: TQRLabel;
    qrlXXX: TQRLabel;
    qrlTLF: TQRLabel;
    qrlRUC: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qrlDBFORMATO: TQRDBText;
    qrlDBPLAZA: TQRDBText;
    QRExpr2: TQRExpr;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WIESE: TWIESE;

implementation

uses CxCDM, CxC001;

{$R *.DFM}


procedure TWIESE.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   DD.Caption:='';
   MM.Caption:='';
   AA.Caption:='';
//   qrlDBCUENTA.Caption:='';
//   qrlDBFORMATO.Caption:='';
end;


end.
