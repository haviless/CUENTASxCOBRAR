Unit Cxc233;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Wwdbdlg, StdCtrls, wwdblook, Mask, wwdbedit, Buttons, wwdbdatetimepicker,
   ExtCtrls;

Type
   TFCambioFacturas = Class(TForm)
      pnlCabecera: TPanel;
      pnlCab2: TPanel;
      lblFCanje: TLabel;
      Label11: TLabel;
      Label10: TLabel;
      Label2: TLabel;
      Label17: TLabel;
      lblTDoc: TLabel;
      dtpFFac: TwwDBDateTimePicker;
      bbtnOk: TBitBtn;
      bbtnBorra: TBitBtn;
      dbeNFac: TwwDBEdit;
      dblcSerie: TwwDBLookupCombo;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      dbeTCambio: TwwDBEdit;
      dblcTDocC: TwwDBLookupCombo;
      edtTDocC: TEdit;
      pnlCab1: TPanel;
      Label1: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label18: TLabel;
      dblcCia: TwwDBLookupCombo;
      edtCia: TEdit;
      dblcdClie: TwwDBLookupComboDlg;
      dblcdClieRuc: TwwDBLookupComboDlg;
      dblcLocal: TwwDBLookupCombo;
      edtLocal: TEdit;
      wwDBEdit1: TwwDBEdit;
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FiltraFactura;
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FCambioFacturas: TFCambioFacturas;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFCambioFacturas.FiltraFactura;
Var
   xFiltro, xSQL: String;
Begin
   If DM1.wModo <> 'A' Then
   Begin
      xFiltro := 'CIAID  =' + quotedstr(DM1.cdsMovCxC.FieldByName('CIAID').AsString) +
         ' AND CLIEID =' + quotedstr(DM1.cdsMovCxC.FieldByName('CLIEID').AsString) +
         ' AND FACSERIE =' + quotedstr(DM1.cdsMovCxC.FieldByName('CCSERIE').AsString) +
         ' AND NFAC  =' + quotedstr(DM1.cdsMovCxC.FieldByName('CCNODOC').AsString);
//CLG
      Filtracds(DM1.cdsFact, 'SELECT * FROM FAC305 WHERE ' + xFiltro);
      Filtracds(DM1.cdsDetFact, 'SELECT * FROM FAC306 WHERE ' + xFiltro);
   End;

End;

Procedure TFCambioFacturas.FormActivate(Sender: TObject);
Var
   xWhere, xFlagTDoc: String;
Begin
   FiltraFactura;
//          DM1.cdsFact.Edit;
   edtCia.Text := DisplayDescrip('TGE101', 'CIADES', 'CIAID', dblcCia.Text);
   edtLocal.Text := BuscaQry('dspTGE', 'TGE126', 'LOCDES', 'LOCID=' + QuotedStr(dblcLocal.Text) + ' AND CIAID=' + QuotedStr(dblcCia.text), 'LOCDES');
   edtTDocC.text := BuscaQry('dspTGE', 'TGE110', 'DOCDES', 'DOCID=' + QuotedStr(dblcTDocC.text) + ' AND DOCMOD=' + QuotedStr('CXC'), 'DOCDES');
   edtTMon.Text := BuscaQry('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + QuotedStr(dblcTMon.text), 'TMONDES');

   //   edtClie.text   :=DM1.DisplayDescrip('TGE204','CLIEDES','CLIEID',dblcdClie.Text);
//          dblcdClieRuc.Text  :=DM1.cdsUltTGE.FieldByName('CLIERUC').AsString;
{          xWhere:='DOCID='''+dblcTDocC.Text+''' and '
                 +'DOCMOD=''CXC''';
          edtTDocC.Text:= BuscaQry('dspTGE','TGE110','*',xWhere,'DOCDES');
          xFlagTDoc:= DM1.cdsQry.FieldByName('DOCTIPREG').AsString;
          DM1.cdsSerie.Filtered := False;
          DM1.cdsSerie.Filter   := 'FLAGV='+quotedstr(xFlagTDoc);
          DM1.cdsSerie.Filtered := True;}
//          edtLocal.Text:=DisplayDescrip('TGE126','LOCDES','LOCID',dblcLocal.Text);
//          xWhere := 'TMONID='+''''+dblcTMon.Text+''''+' and (TMON_LOC='+''''+'L'+''''+' or TMON_LOC='+''''+'E'+''''+')';

//          If DM1.cdsFact.FieldByName('FACESTADO').AsString='I' then
//             EstadoDeForma(0,DM1.cdsFact.FieldByName('FACESTADO').AsString,' ')
//          else
//             EstadoDeForma(1,DM1.cdsFact.FieldByName('FACESTADO').AsString,DM1.cdsFact.FieldByName('FACFLAGD').AsString );

End;

Procedure TFCambioFacturas.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

End.

