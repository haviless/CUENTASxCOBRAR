unit SOL900;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbedit, ComCtrls, Db, Wwdatsrc, wwclient,  Wwkeycb,
  mask, Wwtable, fcButton, fcImgBtn, fcClearPanel, fcButtonGroup, fcLabel,
  Buttons, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB,
  ppDBPipe, ppBands, ppVar, ppPrnabl, ppCtrls, ppViewr;

type
  TCFReporte = class(TForm)
    pnlComando: TPanel;
    Z2bbtnImprimir: TBitBtn;
    Z2bbtnSalir: TBitBtn;
    ppdbFuente: TppDBPipeline;
    ppReporte: TppReport;
    pplblEmpresa: TppLabel;
    pplblSistema: TppLabel;
    pplblPagina: TppLabel;
    pplblFecha: TppLabel;
    pplblHora: TppLabel;
    ppHBCab: TppHeaderBand;
    ppFBPie: TppFooterBand;
    ppDBDet: TppDetailBand;
    pplblTitulo: TppLabel;
    pplblLin0: TppLabel;
    pplblLin1: TppLabel;
    pplblLin2: TppLabel;
    ppsvPagina: TppSystemVariable;
    ppsvFecha: TppSystemVariable;
    ppsvHora: TppSystemVariable;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure ppReporteBeforePrint(Sender: TObject);
    procedure ppReportePreviewFormCreate(Sender: TObject);
    procedure ppHBCabBeforePrint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CFReporte: TCFReporte;

implementation

{$R *.DFM}


procedure TCFReporte.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TCFReporte.Z2bbtnSalirClick(Sender: TObject);
begin
  close;
end;

procedure TCFReporte.ppReporteBeforePrint(Sender: TObject);
var nIzq : single;
  nTotCar : word;
  sCadena : string;
  i : word;
begin
  pplblFecha.Caption  := 'FECHA : ' + ppsvFecha.Text;
  pplblHora.Caption   := 'HORA  : ' + ppsvHora.Text;

  nIzq := ppReporte.PrinterSetup.PaperWidth - ppReporte.PrinterSetup.MarginRight - pplblHora.Width - 10 ;  ////ancho de pagina - ancho de la hora (por ser el de mayor ancho) + 3
  pplblPagina.Left := nIzq;
  pplblFecha.Left := nIzq;
  pplblHora.Left := nIzq;

  sCadena := '';
  pplblLin0.Caption := '-';
  nTotCar := trunc( ( ( ppReporte.PrinterSetup.PaperWidth - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft ) / pplblLin0.Width ) + 1 );
  for i := 1 to nTotCar do
    sCadena := sCadena + '-';
  pplblLin0.Caption := sCadena;
  pplblLin1.Caption := sCadena;
  pplblLin2.Caption := sCadena;

  pplblTitulo.Left := 40;
  pplblTitulo.Width := ppReporte.PrinterSetup.PaperWidth - 80 - ppReporte.PrinterSetup.MarginRight - ppReporte.PrinterSetup.MarginLeft;
end;

procedure TCFReporte.ppHBCabBeforePrint(Sender: TObject);
begin
  pplblPagina.Caption := 'PAGINA: ' + ppsvPagina.Text;
end;

procedure TCFReporte.ppReportePreviewFormCreate(Sender: TObject);
begin
	(sender as tppReport).PreviewForm.ClientHeight := 500;
  (sender as tppReport).PreviewForm.ClientWidth := 650;
  tppviewer((sender as tppReport).PreviewForm.Viewer).zoomSetting := zspageWidth;
end;

End.
