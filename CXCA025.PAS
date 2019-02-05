unit CXCA025;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TCITIBANK = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    FECHA: TQRLabel;
    qrlDBFORMATO: TQRDBText;
    qrlCIA: TQRDBText;
    QRDBText4: TQRDBText;
    qrlDIR: TQRDBText;
    qrlDBLETRA: TQRDBText;
    qrlDBACEPTANTE: TQRDBText;
    qrlDBFVENCTO: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CITIBANK: TCITIBANK;

implementation

uses CxCDM;

{$R *.DFM}




end.
