Unit CXC500;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, wwdblook, Wwdbdlg, Buttons;

Type
   TFAceptaLetra = Class(TForm)
      bbtnOK: TBitBtn;
      Label1: TLabel;
      dblcdLetra: TwwDBLookupComboDlg;
      bbtnCancel: TBitBtn;
      Procedure bbtnOKClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
      Procedure Grids;
   Public
    { Public declarations }
   End;

Var
   FAceptaLetra: TFAceptaLetra;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFAceptaLetra.bbtnOKClick(Sender: TObject);
Var
   sSQL: String;
   sWhere: String;
Begin
   sWhere := 'CIAID=''01'' AND DOCID=''05'' AND CCNODOC=' + QuotedStr(dblcdLetra.text);
   If dblcdLetra.text = DM1.BuscaQry2('dspTGE', 'CXC301', 'SITID,CCNODOC,CCCANJE', sWhere, 'CCNODOC') Then
   Begin
      If DM1.cdsQry6.FieldByName('CCCANJE').AsString <> '' Then
      Begin
         Raise Exception.Create('La Letras esta generada con el Canje ' + QuotedStr(DM1.cdsQry6.FieldByName('CCCANJE').AsString));
      End;

      If DM1.cdsQry6.FieldByName('SITID').AsString <> '01' Then
      Begin
         Raise Exception.Create('La Letra no se encuentra impresa');
      End;

      SetHyst('01', '05', dblcdLetra.text);
      sSQL := 'UPDATE CXC301 SET SITID=''10'', UBIID=''03'', CCUSER=' + QuotedStr(DM1.wUsuario) + ', CCFREG=CURRENT DATE, CCHREG=CURRENT TIME ' +
         'WHERE ' + sWhere;
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
      Filtracds(DM1.cdsQry, 'SELECT CCNODOC,CLIEDES,CCSALORI,CCFVCMTO FROM CXC301 WHERE CIAID=''01'' AND DOCID=''05'' AND CCESTADO=''P'' AND (CCCANJE IS NULL OR CCCANJE='''') ');
      Grids;
      ShowMessage('Letra aceptada con éxito');
      dblcdLetra.text := '';
      dblcdLetra.SetFocus;
   End
   Else
   Begin
      ShowMessage('La Letras no existe');
      dblcdLetra.SetFocus;
   End;

End;

Procedure TFAceptaLetra.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsQry.IndexFieldNames := '';
End;

Procedure TFAceptaLetra.FormActivate(Sender: TObject);
Begin
   Filtracds(DM1.cdsQry, 'SELECT CCNODOC,CLIEDES,CCSALORI,CCFVCMTO FROM CXC301 WHERE CIAID=''01'' AND DOCID=''05'' AND CCESTADO=''P'' AND (CCCANJE IS NULL OR CCCANJE='''') ');
   Grids;
   dblcdLetra.LookupField := 'CCNODOC';
   dblcdLetra.LookupTable := DM1.cdsQry;
   dblcdLetra.SetFocus;
End;

Procedure TFAceptaLetra.Grids;
Begin
   dblcdLetra.Selected.Clear;
   dblcdLetra.Selected.Add('CCNODOC'#9'12'#9'Nº de~Letra'#9'T');
   dblcdLetra.Selected.Add('CLIEDES'#9'30'#9'Cliente'#9'T');
   dblcdLetra.Selected.Add('CCSALORI'#9'12'#9'Saldo'#9'T');
   dblcdLetra.Selected.Add('CCFVCMTO'#9'12'#9'Fecha de~Vencimiento'#9'T');
   dblcdLetra.Refresh;
End;

Procedure TFAceptaLetra.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

End.

