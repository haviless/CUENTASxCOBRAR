unit CXCA022;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TCONTINENTAL = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    qrlCIA: TQRDBText;
    qrlCUENTA: TQRDBText;
    qrlDBACEPTANTE: TQRDBText;
    qrlDBRUCACEP: TQRDBText;
    qrlDBFVENCTO: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    qrlDBFORMATO: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CONTINENTAL: TCONTINENTAL;

implementation

uses CxCDM, CxC001;


{$R *.DFM}


end.
