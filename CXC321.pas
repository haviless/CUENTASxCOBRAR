Unit CXC321;

Interface

Uses

   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
   StdCtrls, Buttons, ExtCtrls, ppEndUsr, ppBands;

Type
   TFToolImpDinamica = Class(TForm)
      pnGLT: TPanel;
      Z2bbtnImprime: TBitBtn;
      pprDinamica: TppReport;
      ppdbDinamica: TppDBPipeline;
      ppDesigner1: TppDesigner;
      ppdbNLetras: TppDBPipeline;
      Procedure Z2bbtnImprimeClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FToolImpDinamica: TFToolImpDinamica;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFToolImpDinamica.Z2bbtnImprimeClick(Sender: TObject);
Var
   x10: integer;
Begin
   DMCXC.cdsNLetras.Close;
   DMCXC.cdsNLetras.DataRequest(' SELECT * FROM CXC205 ');
   DMCXC.cdsNLetras.Open;
   DMCXC.cdsNLetras.IndexFieldNames := 'CIAID;UBICAID;SITUAID;TMONID;ZONA;TDIARID;ORDEN';
   DMCXC.cdsReporte.IndexFieldNames := 'CIAID;UBICAID;SITUAID;TMONID;ZONA;TDIARID';
   DMCXC.cdsNLetras.MasterSource := DMCXC.dsReporte;
   DMCXC.cdsNLetras.MasterFields := 'CIAID;UBICAID;SITUAID;TMONID;ZONA;TDIARID';
//  ppDesigner1.Show;
   pprDinamica.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\DinamicaLetras.Rtm';
   pprDinamica.template.LoadFromFile;
   pprDinamica.Print;
   x10 := Self.ComponentCount - 1;
   While x10 >= 0 Do
   Begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
      Begin
         Self.Components[x10].Free;
      End;
      x10 := x10 - 1;
   End;

   DMCXC.cdsNLetras.MasterSource := Nil;

   DMCXC.cdsNLetras.MasterFields := '';
   DMCXC.cdsNLetras.IndexFieldNames := '';
   DMCXC.cdsReporte.IndexFieldNames := '';
End;

End.

