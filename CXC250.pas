Unit CxC250;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, Menus, StdCtrls, Buttons, wwdbdatetimepicker,
   Mask, wwdbedit, wwdblook, db;

Type
   TFLetraHist = Class(TForm)
      dbgHist: TwwDBGrid;
      BitBtn1: TBitBtn;
      dbeLetra: TwwDBEdit;
      Label1: TLabel;
      dbeTMon: TwwDBEdit;
      Label2: TLabel;
      dtpFGiro: TwwDBDateTimePicker;
      Label3: TLabel;
      edtTMon: TwwDBEdit;
      dbeClie: TwwDBEdit;
      dbeClieRuc: TwwDBEdit;
      edtClie: TwwDBEdit;
      dbeClAux: TwwDBEdit;
      dbeUbi: TwwDBEdit;
      edtUbi: TwwDBEdit;
      dbeSit: TwwDBEdit;
      edtSit: TwwDBEdit;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      dbeImporte: TwwDBEdit;
      dtpFVcmto: TwwDBDateTimePicker;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      wwDBDateTimePicker1: TwwDBDateTimePicker;
      Label13: TLabel;
      wwDBEdit1: TwwDBEdit;
      Procedure FormCreate(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FLetraHist: TFLetraHist;

Implementation

Uses CXCDM;

{$R *.DFM}

Procedure TFLetraHist.FormCreate(Sender: TObject);
Var
   xWhere: String;
Begin
   xWhere := 'SITUAID=''' + dbeSit.Text + '''';
   edtSIT.Text := DMCXC.BuscaQry2('dspEjecuta', 'CXC104', '*', xWhere, 'SITUADES');
   xWhere := 'UBICAID=''' + dbeUbi.Text + '''';
   edtUBI.Text := DMCXC.BuscaQry2('dspEjecuta', 'CXC105', '*', xWhere, 'UBICADES');
   xWhere := 'TMonId=' + '''' + dbeTMon.Text + '''';
   edtTMon.Text := DMCXC.BuscaQry2('dspEjecuta', 'TGE103', 'TMONDES', xWhere, 'TMONDES');
   xWhere := 'ClieId=' + '''' + dbeClie.Text + '''';
   edtClie.Text := DMCXC.BuscaQry2('dspEjecuta', 'TGE204', 'CLIEDES', xWhere, 'CLIEDES');

   dbgHist.DataSource := Nil;
   dbgHist.Selected.Clear;
   dbgHist.Selected.Add('CCHIST'#9'4'#9'No.'#9'F');
   dbgHist.Selected.Add('CCFSITUA'#9'10'#9'Fecha~Cambio'#9'F');
//   dbgHist.Selected.Add('UBIID'#9'3'#9'UBI'#9'F');
   dbgHist.Selected.Add('UBICA'#9'13'#9'Ubicación'#9'F');
//   dbgHist.Selected.Add('SITID'#9'3'#9'SIT'#9'F');
   dbgHist.Selected.Add('SITUA'#9'13'#9'Situación'#9'F');
   dbgHist.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión'#9'F');
   dbgHist.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vencimiento'#9'F');
   dbgHist.Selected.Add('CCTCAMPR'#9'6'#9'Tipo~Cambio'#9'F');
   dbgHist.Selected.Add('CCMTOLOC'#9'9'#9'Importe~(MN)'#9'F');
   dbgHist.Selected.Add('CCMTOEXT'#9'9'#9'Importe~(ME)'#9'F');
   dbgHist.Selected.Add('CCUSER'#9'6'#9'Usuario'#9'F');
   dbgHist.Selected.Add('CCFREG'#9'10'#9'Fecha ~Reg.'#9'F');
   dbgHist.Selected.Add('CCHREG'#9'10'#9'Hora ~Reg.'#9'F');

   TNumericField(DMCXC.cdsHLetras.FieldByName('CCTCAMPR')).DisplayFormat := '###,###,###.#0';
   TNumericField(DMCXC.cdsHLetras.FieldByName('CCMTOLOC')).DisplayFormat := '###,###,###.#0';
   TNumericField(DMCXC.cdsHLetras.FieldByName('CCMTOEXT')).DisplayFormat := '###,###,###.#0';

   dbgHist.DataSource := DMCXC.dsHLetras;

End;

Procedure TFLetraHist.BitBtn1Click(Sender: TObject);
Begin
   Close;
End;

Procedure TFLetraHist.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   Action := caFree;
End;

End.

