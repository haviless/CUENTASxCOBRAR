Unit CxC505A;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

Type
   TFDetalleDaotCxC = Class(TForm)
      GroupBox1: TGroupBox;
      DbgDetalle: TwwDBGrid;
      BitBtn5: TBitBtn;
      Procedure FormCreate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormShow(Sender: TObject);
      Procedure BitBtn5Click(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FDetalleDaotCxC: TFDetalleDaotCxC;

Implementation
Uses CxCDM, CXC505;

{$R *.dfm}

Procedure TFDetalleDaotCxC.FormCreate(Sender: TObject);
Begin
   DbgDetalle.Selected.clear;
   DbgDetalle.Selected.Add('CIAID'#9'3'#9'Cía');
   DbgDetalle.Selected.Add('DOCID'#9'3'#9'Cod.~Doc.');
   DbgDetalle.Selected.Add('DOCABR'#9'10'#9'Documento');
   DbgDetalle.Selected.Add('CCSERIE'#9'6'#9'Serie');
   DbgDetalle.Selected.Add('CCNODOC'#9'11'#9'N°Docum.');
   DbgDetalle.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión');
   DbgDetalle.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vencim.');
   DbgDetalle.Selected.Add('CCGRAVAD'#9'13'#9'Importe~Gravado ');
   DbgDetalle.Selected.Add('CCNOGRAV'#9'13'#9'Importe~No Gravado');
   DbgDetalle.Selected.Add('IMPORTE'#9'13'#9'Importe~DAOT');
   DbgDetalle.Selected.Add('CCUSER'#9'15'#9'Usuario');
   DbgDetalle.Selected.Add('CCFREG'#9'10'#9'Fecha~Registro');
   DbgDetalle.DataSource := DMCXC.dsQry5;
End;

Procedure TFDetalleDaotCxC.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   Action := CAFree;
End;

Procedure TFDetalleDaotCxC.FormShow(Sender: TObject);
Begin
   DbgDetalle.ColumnByName('IMPORTE').FooterValue := FloatToStrF(OperClientDataSet(DMCXC.cdsQry5, 'SUM(IMPORTE)', DMCXC.cdsQry5.Filter), ffNumber, 15, 2);
End;

Procedure TFDetalleDaotCxC.BitBtn5Click(Sender: TObject);
Begin
   FTransfDAOT.ExportaGridExcel(DbgDetalle, 'Detalle Cliente DAOT');
End;

End.

