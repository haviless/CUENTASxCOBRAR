Unit CxC234;

// Actualizaciones
//  HPC_201501_CXC    Ordena apertura d econceptos para modificación

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, wwdblook, ExtCtrls, Mask, wwdbedit, Wwdbspin, Wwdbdlg,
   Wwdbigrd, Grids, Wwdbgrid, Db, oaVariables;

Type
   TFDinaDocs = Class(TForm)
      pnlCabecera: TPanel;
      Label1: TLabel;
      Label4: TLabel;
      dblcCIA: TwwDBLookupCombo;
      edtCIA: TEdit;
      dblcTMon: TwwDBLookupCombo;
      edtTMon: TEdit;
      dblcZona: TwwDBLookupCombo;
      edtZona: TEdit;
      z2bbtNuevo: TBitBtn;
      z2bbtOk: TBitBtn;
      z2bbtCancelar: TBitBtn;
      pnlDetalle: TPanel;
      dbgAsiento: TwwDBGrid;
      dbgAsientoIButton: TwwIButton;
      pnlRegitro: TPanel;
      Label7: TLabel;
      Label13: TLabel;
      dblcdCuentaDet: TwwDBLookupComboDlg;
      dbeOrden: TwwDBSpinEdit;
      bbtnROk: TBitBtn;
      bbtnRCancel: TBitBtn;
      StaticText1: TStaticText;
      Label6: TLabel;
      dblcdConceptoCab: TwwDBLookupComboDlg;
      edtConceptoCab: TEdit;
      dblcdCuentaCab: TwwDBLookupComboDlg;
      Label8: TLabel;
      lblTDoc: TLabel;
      dblcTDoc: TwwDBLookupCombo;
      edtTDoc: TEdit;
      Label14: TLabel;
      Label5: TLabel;
      Label9: TLabel;
      dblcDebeHabe: TwwDBLookupCombo;
      dblcTReg: TwwDBLookupCombo;
      chCptoVta: TCheckBox;
      chCptAnt: TCheckBox;
      chRenLet: TCheckBox;
      chRefLet: TCheckBox;
      chDevAlm: TCheckBox;
      chGtoLet: TCheckBox;
      chProLet: TCheckBox;
      edtTRegDes: TEdit;
      Label2: TLabel;
      dblcTReg2: TwwDBLookupCombo;
      edtTRegDes2: TEdit;
      Label3: TLabel;
      dblcdConceptoDet: TwwDBLookupComboDlg;
      edtConceptoDet: TEdit;
      Label11: TLabel;
      dblcDebeHabe2: TwwDBLookupCombo;
      dbeTasa: TwwDBEdit;
      Label20: TLabel;
      dblcFPago: TwwDBLookupCombo;
      edtFPago: TEdit;
      Procedure FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormShow(Sender: TObject);
      Procedure NotInList(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcCIAExit(Sender: TObject);
      Procedure dblcdConceptoCabExit(Sender: TObject);
      Procedure dblcTMonExit(Sender: TObject);
      Procedure dblcTDocExit(Sender: TObject);
      Procedure dblcZonaExit(Sender: TObject);
      Procedure z2bbtOkClick(Sender: TObject);
      Procedure bbtnRCancelClick(Sender: TObject);
      Procedure dbgAsientoIButtonClick(Sender: TObject);
      Procedure dblcdConceptoDetExit(Sender: TObject);
      Procedure dblcTReg2Exit(Sender: TObject);
      Procedure dblcTRegExit(Sender: TObject);
      Procedure bbtnROkClick(Sender: TObject);
      Procedure dblcDebeHabe2Exit(Sender: TObject);
      Procedure dbeOrdenExit(Sender: TObject);
      Procedure dbgAsientoDblClick(Sender: TObject);
      Procedure dbgAsientoKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcFPagoExit(Sender: TObject);
    procedure dblcDebeHabeExit(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure InicializaDatos;
      Procedure ActivaControles(xEstado: boolean = True);
      Procedure ValidaCabecera;
      Procedure ValidaDetalle;
   End;

Var
   FDinaDocs: TFDinaDocs;
   xCptoAbr, xTipDet, xTipDet2: String;

Implementation

Uses CxCDM;

{$R *.DFM}

Procedure TFDinaDocs.ActivaControles(xEstado: boolean);
Begin
   If DMCXC.wModo = 'A' Then
   Begin
      dblcCIA.enabled := xestado;
      edtCIA.enabled := False;
      dblcdConceptoCab.enabled := xestado;
      edtConceptoCab.enabled := False;
      dblcdCuentaCab.enabled := False; // DEPENDE DEL CONCEPTO SELECCIONADO
      dblcTMon.enabled := xestado;
      edtTMon.enabled := False;
      dblcTDoc.enabled := xestado;
      edtTDoc.enabled := False;
      dblcZona.enabled := xestado;
      edtZona.enabled := False;
      dblcTReg.enabled := False; // DEPENDE DEL CONCEPTO SELECCIONADO
      edtTRegDes.enabled := False;
      dblcDebeHabe.enabled := xestado;

      chCptoVta.enabled := xestado;
      chCptAnt.enabled := xestado;
      chDevAlm.enabled := xestado;
      chGtoLet.enabled := xestado;
      chRenLet.enabled := xestado;
      chRefLet.enabled := xestado;
      chProLet.enabled := xestado;
   End
   Else
   Begin
      dblcCIA.enabled := False;
      edtCIA.enabled := False;
      dblcdConceptoCab.enabled := False;
      edtConceptoCab.enabled := False;
      dblcdCuentaCab.enabled := False;
      dblcTMon.enabled := False;
      edtTMon.enabled := False;
      dblcTDoc.enabled := False;
      edtTDoc.enabled := False;
      dblcZona.enabled := False;
      edtZona.enabled := False;

      dblcTReg.enabled := False;
      edtTRegDes.enabled := False;
      dblcDebeHabe.enabled := xEstado;
      chCptoVta.enabled := xestado;
      chCptAnt.enabled := xestado;
      chDevAlm.enabled := xestado;
      chGtoLet.enabled := xestado;
      chRenLet.enabled := xestado;
      chRefLet.enabled := xestado;
      chProLet.enabled := xestado;
   End;
End;

Procedure TFDinaDocs.FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
Begin
   If DMCXC.cdsDinaDocs.Modified Then
      DMCXC.cdsDinaDocs.CancelUpdates;
End;

Procedure TFDinaDocs.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFDinaDocs.FormShow(Sender: TObject);
Var
   sSQL, xWhere: String;
Begin

   If DMCXC.wModo = 'A' Then
   Begin
      InicializaDatos;
      pnlCabecera.Enabled := True;
      pnlDetalle.Enabled := False;
      ActivaControles(True);

   // Inicio HPC_201501_CXC
   // reordena SQL
      sSQL := ' Select CIAID, TREGID, TREGDES, CUENTAID, CPTOID, CCDH, TASA, TIPDET, '
            + '        CPTOCAB, CCREG, CTA_DE_FAM_ART '
            + '   from CXC102 '
            + '  where CIAID=' + QuotedStr('XX')
            + '    and TREGID=' + QuotedStr('XX')
            + '    and CUENTAID=' + QuotedStr('XX')
            + '    and CPTOID=' + QuotedStr('XX')
            + '    and CCDH=' + QuotedStr('XX')
            + '    and TIPDET=' + QuotedStr('XX')
            + '    and CPTOCAB=' + QuotedStr('XX')
            + '  order by CCREG ';
   // Fin HPC_201501_CXC
      DMCXC.cdsDinaDocs.Close;
      DMCXC.cdsDinaDocs.DataRequest(sSQL);
      DMCXC.cdsDinaDocs.Open;

      dbgAsiento.Selected.Clear;
      dbgAsiento.Selected.Add('TREGID'#9'3'#9'Tipo Reg.'#9'F');
      dbgAsiento.Selected.Add('TREGDES'#9'20'#9'Descrip. Reg.'#9'F');
      dbgAsiento.Selected.Add('CUENTAID'#9'12'#9'Cuenta~Contable'#9'F');
      dbgAsiento.Selected.Add('CPTOID'#9'12'#9'Concepto'#9'F');
      dbgAsiento.Selected.Add('CCDH'#9'12'#9'Debe/Habe'#9'F');
      dbgAsiento.Selected.Add('TASA'#9'12'#9'Tasa'#9'F');
      dbgAsiento.Selected.Add('CCREG'#9'2'#9'Orden'#9'F');
      dbgAsiento.RedrawGrid;

   End
   Else
   Begin
      dblcCIA.text := DMCXC.cdsReporte.FieldByName('CIAID').AsString;
      dblcCIAExit(Sender);
   //    edtCia.text           := DMCXC.cdsReporte.FieldByName('CIADES').AsString;
      dblcdConceptoCab.text := DMCXC.cdsReporte.FieldByName('CPTOCAB').AsString;
      edtConceptoCab.text := DMCXC.cdsReporte.FieldByName('CPTODES').AsString;
      dblcdCuentaCab.text := DMCXC.cdsReporte.FieldByName('CUENTAID').AsString;
      dblcTMon.text := DMCXC.cdsReporte.FieldByName('TMONID').AsString;
      edtTMon.text := DMCXC.cdsReporte.FieldByName('TMONDES').AsString;
      dblcTDoc.text := DMCXC.cdsReporte.FieldByName('DOCID').AsString;
      edtTDoc.text := DMCXC.cdsReporte.FieldByName('DOCDES').AsString;
      dblcZona.text := DMCXC.cdsReporte.FieldByName('TVTAID').AsString;
      edtZona.text := DMCXC.cdsReporte.FieldByName('TVTADES').AsString;
      dblcTReg.text := DMCXC.cdsReporte.FieldByName('TREGID').AsString;
      edtTRegDes.text := DMCXC.cdsReporte.FieldByName('TREGDES').AsString;
      dblcDebeHabe.text := DMCXC.cdsReporte.FieldByName('CCDH').AsString;
      chCptoVta.checked := (DMCXC.cdsReporte.FieldByName('CPTOCABVTA').AsString = 'S');
      chCptAnt.checked := (DMCXC.cdsReporte.FieldByName('CPTOANT').AsString = 'S');
      chDevAlm.checked := (DMCXC.cdsReporte.FieldByName('CPTODEVALM').AsString = 'S');
      chGtoLet.checked := (DMCXC.cdsReporte.FieldByName('CPTOGTOLET').AsString = 'S');
      chRenLet.checked := (DMCXC.cdsReporte.FieldByName('CPTORENOV').AsString = 'S');
      chRefLet.checked := (DMCXC.cdsReporte.FieldByName('CPTOREFIN').AsString = 'S');
      chProLet.checked := (DMCXC.cdsReporte.FieldByName('CPTOLPRO').AsString = 'S');
      xTipDet := DMCXC.cdsReporte.FieldByName('TIPDET').AsString;
      xCptoAbr := DMCXC.cdsReporte.FieldByName('CPTOABR').AsString;

   // Inicio HPC_201501_CXC
   // reordena SQL
      sSQL := ' Select CIAID, TREGID, TREGDES, CUENTAID, CPTOID, CCDH, TASA, TIPDET, '
            + '        CPTOCAB, CCREG, CTA_DE_FAM_ART '
            + '   from CXC102 '
            + '  where CIAID=' + QuotedStr(dblcCIA.text)
            + '    and CPTOCAB=' + QuotedStr(dblcdConceptoCab.text)
            + '  order by CCREG ';
   // Fin HPC_201501_CXC
      DMCXC.cdsDinaDocs.Close;
      DMCXC.cdsDinaDocs.DataRequest(sSQL);
      DMCXC.cdsDinaDocs.Open;

   // Inicio HPC_201501_CXC
   // reordena SQL
      xWhere := 'Select CIAID, CCOMERID, SCOMERID, DCCOMDES, DCCOMABR, DCCOMPORC, '
              + '       DCCOMMTO, DCCOMMOD, DCCOMFLAG, CONDPID, LPRECIO, DCCOMFDIAS, '
              + '       DCCOMNLET, DCCOMRANGO, DCOMMTOMAX, INDICAINT, TMONID, FLGIGV '
              + '  from TGE180 '
              + ' where CIAID=' + QuotedStr(dblcCia.Text);
   // Fin HPC_201501_CXC
      DMCXC.cdsQry12.Close;
      DMCXC.cdsQry12.DataRequest(xWhere);
      DMCXC.cdsQry12.Open;

      dblcFPago.text := DMCXC.cdsReporte.FieldByName('CPTOCCOMER').AsString;
      edtFPago.Text := DMCXC.BuscaQry('dspTGE', 'TGE180', 'DCCOMDES', 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND CCOMERID=''' + dblcFPago.Text + '''', 'DCCOMDES');

      dbgAsiento.DataSource := DMCXC.dsDinaDocs;
      dbgAsiento.Selected.Clear;
      dbgAsiento.Selected.Add('TREGID'#9'3'#9'Tipo Reg.'#9'F');
      dbgAsiento.Selected.Add('TREGDES'#9'20'#9'Descrip. Reg.'#9'F');
      dbgAsiento.Selected.Add('CUENTAID'#9'12'#9'Cuenta~Contable'#9'F');
      dbgAsiento.Selected.Add('CPTOID'#9'12'#9'Concepto'#9'F');
      dbgAsiento.Selected.Add('CCDH'#9'12'#9'Debe/Habe'#9'F');
      dbgAsiento.Selected.Add('TASA'#9'12'#9'Tasa'#9'F');
      dbgAsiento.Selected.Add('CCREG'#9'2'#9'Orden'#9'F');
      dbgAsiento.RedrawGrid;
      ActivaControles(True);
      pnlCabecera.Enabled := True;
      pnlDetalle.Enabled := False;
   End;

End;

Procedure TFDinaDocs.InicializaDatos;
Begin
   dblcCIA.clear;
   edtCIA.clear;
   dblcdConceptoCab.clear;
   edtConceptoCab.clear;
   dblcdCuentaCab.clear;
   dblcTMon.clear;
   edtTMon.clear;
   dblcTDoc.clear;
   edtTDoc.clear;
   dblcZona.clear;
   edtZona.clear;
   dblcTReg.clear;
   edtTRegDes.clear;
   dblcDebeHabe.clear;
   chCptoVta.checked := False;
   chCptAnt.checked := False;
   chDevAlm.checked := False;
   chGtoLet.checked := False;
   chRenLet.checked := False;
   chRefLet.checked := False;
   chProLet.checked := False;
End;

Procedure TFDinaDocs.NotInList(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookUpField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFDinaDocs.dblcCIAExit(Sender: TObject);
Var
   xSQL, xWhere: String;
Begin
   edtCIA.text := DMCXC.BuscaQry('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + QuotedStr(dblcCIA.text), 'CIADES');
   If Length(edtCIA.text) = 0 Then
   Begin
      dblcCIA.SetFocus;
      Raise Exception.Create('Ingrese Compañía');
   End;

// Inicio HPC_201501_CXC
// reordena SQL
   xSQL := 'Select CPTOID, CPTODES, CPTOABR, CUENTAID, CLIEID, NIVEL, FCTZ, OPCMENU, '
         + '       TREGID, CPTOCABDET, CPTOTMON, CIAID, DOCID '
         + '  from CXC201 '
         + ' Where CIAID=' + QuotedStr(dblcCIA.text)
         + '   and CPTOCABDET=''C'' ';
// Fin HPC_201501_CXC
   FiltraCds(DMCXC.cdsCpto, xSQL);
   dblcdConceptoCab.LookupField := '';
   dblcdConceptoCab.LookupTable := DMCXC.cdsCpto;
   dblcdConceptoCab.LookupField := 'CPTOID';
   dblcdConceptoCab.Selected.Clear;
   dblcdConceptoCab.Selected.Add('CPTOID'#9'10'#9'ID'#9'F');
   dblcdConceptoCab.Selected.Add('CPTODES'#9'45'#9'Descripción'#9'F');
   dblcdConceptoCab.Selected.Add('CUENTAID'#9'20'#9'Cuenta~Contable'#9'F');

// Inicio HPC_201501_CXC
// reordena SQL
   xSQL := 'Select CPTOID, CPTODES, CPTOABR, CUENTAID, CLIEID, NIVEL, FCTZ, OPCMENU, '
         + '       TREGID, CPTOCABDET, CPTOTMON, CIAID, DOCID '
         + '  from CXC201 '
         + ' where CIAID=' + QuotedStr(dblcCIA.text)
         + '   and CPTOCABDET=''D'' ';
// Fin HPC_201501_CXC
   FiltraCds(DMCXC.cdsCpto1, xSQL);
   DMCXC.cdsCpto1.IndexFieldNames := 'CPTOID';

   dblcdConceptoDet.LookupTable := DMCXC.cdsCpto1;
   dblcdConceptoDet.Selected.Clear;
   dblcdConceptoDet.Selected.Add('CPTOID'#9'10'#9'ID'#9'F');
   dblcdConceptoDet.Selected.Add('CPTODES'#9'45'#9'Descripción'#9'F');
   dblcdConceptoDet.Selected.Add('CUENTAID'#9'20'#9'Cuenta~Contable'#9'F');

// Inicio HPC_201501_CXC
// reordena SQL
   xWhere := 'Select CIAID, CCOMERID, SCOMERID, DCCOMDES, DCCOMABR, DCCOMPORC, '
           + '       DCCOMMTO, DCCOMMOD, DCCOMFLAG, CONDPID, LPRECIO, DCCOMFDIAS, '
           + '       DCCOMNLET, DCCOMRANGO, DCOMMTOMAX, INDICAINT, TMONID, FLGIGV '
           + '  from TGE180 '
           + ' where CIAID=' + QuotedStr(dblcCia.Text);
// Fin HPC_201501_CXC
   DMCXC.cdsQry12.Close;
   DMCXC.cdsQry12.DataRequest(xWhere);
   DMCXC.cdsQry12.Open;

// Inicio HPC_201501_CXC
// reordena Sangría
   DMCXC.cdsZona.First;
   dblcZona.text := DMCXC.cdsZona.FieldByName('TVTAID').AsString;
   edtZona.text := DMCXC.cdsZona.FieldByName('TVTADES').AsString;
// Fin HPC_201501_CXC
End;

Procedure TFDinaDocs.dblcdConceptoCabExit(Sender: TObject);
Var
   xSQL: String;
Begin
// Inicio HPC_201501_CXC
// reordena SQL
   xSQL := ' CIAID=' + QuotedStr(dblcCIA.text)
         + ' AND CPTOID=' + QuotedStr(dblcdConceptoCab.text)
         + ' AND CPTOCABDET=''C'' ';
// Fin HPC_201501_CXC
   edtConceptoCab.text := DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xSQL, 'CPTODES');
   If Length(edtConceptoCab.text) = 0 Then
   Begin
      dblcdConceptoCab.SetFocus;
      Raise Exception.Create('No existe Concepto');
   End;
   dblcdCuentaCab.text := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
   dblcTReg.text := DMCXC.cdsQry.FieldByName('TREGID').AsString;
   xCptoAbr := DMCXC.cdsQry.FieldByName('CPTOABR').AsString;

   edtTRegDes.text := DMCXC.BuscaQry('dspTGE', 'TGE128', 'TIPDET,TREGDES', 'TREGID=' + QuotedStr(dblcTReg.text), 'TREGDES');
   xTipDet := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
End;

Procedure TFDinaDocs.dblcTMonExit(Sender: TObject);
Begin
   edtTMon.text := DMCXC.BuscaQry('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + QuotedStr(dblcTMon.text), 'TMONDES');
   If Length(edtTMon.text) = 0 Then
   Begin
      dblcTMon.SetFocus;
      Raise Exception.Create('Ingrese Moneda');
   End;
End;

Procedure TFDinaDocs.dblcTDocExit(Sender: TObject);
Begin
   edtTDoc.text := DMCXC.BuscaQry('dspTGE', 'TGE110', 'DOCDES', 'DOCID=' + QuotedStr(dblcTDoc.text) + ' AND DOCMOD=''CXC'' ', 'DOCDES');
   If Length(edtTDoc.text) = 0 Then
   Begin
      dblcTDoc.SetFocus;
      Raise Exception.Create('Ingrese Documento');
   End;
End;

Procedure TFDinaDocs.dblcZonaExit(Sender: TObject);
Begin
   edtZona.text := DMCXC.BuscaQry('dspTGE', 'FAC105', 'TVTADES', 'TVTAID=' + QuotedStr(dblcZona.text), 'TVTADES');
   If Length(edtZona.text) = 0 Then
   Begin
      dblcZona.SetFocus;
      Raise Exception.Create('Sector Comercial');
   End;
End;

Procedure TFDinaDocs.z2bbtOkClick(Sender: TObject);
Var
   xSQL: String;
Begin
   ValidaCabecera;
   If DMCXC.wModo = 'A' Then
   Begin
   // Inicio HPC_201501_CXC
   // reordena SQL
      xSQL := ' Select CIAID, CPTOCAB, CPTODES, CPTOABR, CUENTAID, NIVEL, OPCMENU, TMONID, '
            + '        DOCID, TVTAID, CPTOCABVTA, TREGID, TIPDET, CCDH, CPTODEVALM, '
            + '        CPTOGTOLET, CPTOANT, CPTORENOV, CPTOREFIN, CPTOCCOMER, CPTOLPRO, '
            + '        CTOTITGRAT, ARTID '
            + '   from CXC208 '
            + '  where CIAID=' + QuotedStr(dblcCIA.text)
            + '    and CPTOCAB=' + QuotedStr(dblcdConceptoCab.text);
   // Fin HPC_201501_CXC
      FiltraCds(DMCXC.cdsQry, xSQL);
      If DMCXC.cdsQry.RecordCount > 0 Then
      Begin
         dblcdConceptoCab.SetFocus;
         Raise Exception.Create('Ya existe Detalle Contable');
      End;
   End;

// Inicio HPC_201501_CXC
// reordena SQL
   xSQL := ' Select CIAID, CPTOCAB, CPTODES, CPTOABR, CUENTAID, NIVEL, OPCMENU, TMONID, '
         + '        DOCID, TVTAID, CPTOCABVTA, TREGID, TIPDET, CCDH, CPTODEVALM, '
         + '        CPTOGTOLET, CPTOANT, CPTORENOV, CPTOREFIN, CPTOCCOMER, CPTOLPRO, '
         + '        CTOTITGRAT, ARTID '
         + '   from CXC208 '
         + '  where CIAID=' + QuotedStr(dblcCIA.text)
         + '    and CPTOCAB=' + QuotedStr(dblcdConceptoCab.text);
// Fin HPC_201501_CXC

   FiltraCds(DMCXC.cdscptoCab, xSQL);

   If DMCXC.wModo = 'A' Then
      DMCXC.cdscptoCab.Insert
   Else
      DMCXC.cdscptoCab.Edit;

   DMCXC.cdscptoCab.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdscptoCab.FieldByName('CPTOCAB').AsString := dblcdConceptoCab.text;
   DMCXC.cdscptoCab.FieldByName('CPTODES').AsString := edtConceptoCab.text;
   DMCXC.cdscptoCab.FieldByName('CPTOABR').AsString := xCptoAbr;
   DMCXC.cdscptoCab.FieldByName('CUENTAID').AsString := dblcdCuentaCab.text;
   DMCXC.cdscptoCab.FieldByName('OPCMENU').AsString := 'P';
   DMCXC.cdscptoCab.FieldByName('TMONID').AsString := dblcTMon.text;
   DMCXC.cdscptoCab.FieldByName('DOCID').AsString := dblcTDoc.text;
   DMCXC.cdscptoCab.FieldByName('TVTAID').AsString := dblcZona.text;
   DMCXC.cdscptoCab.FieldByName('TREGID').AsString := dblcTReg.text;
   DMCXC.cdscptoCab.FieldByName('TIPDET').AsString := xTipDet;
   DMCXC.cdscptoCab.FieldByName('CCDH').AsString := dblcDebeHabe.text;
   DMCXC.cdscptoCab.FieldByName('CPTOCCOMER').AsString := dblcFPago.text;

   If chCptoVta.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTOCABVTA').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTOCABVTA').AsString := 'N';
   If chDevAlm.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTODEVALM').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTODEVALM').AsString := 'N';
   If chGtoLet.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTOGTOLET').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTOGTOLET').AsString := 'N';
   If chCptAnt.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTOANT').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTOANT').AsString := 'N';
   If chRenLet.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTORENOV').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTORENOV').AsString := 'N';
   If chRefLet.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTOREFIN').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTOREFIN').AsString := 'N';
   If chProLet.checked Then
      DMCXC.cdscptoCab.FieldByName('CPTOLPRO').AsString := 'S'
   Else
      DMCXC.cdscptoCab.FieldByName('CPTOLPRO').AsString := 'N';
   DMCXC.cdscptoCab.Post;

   DMCXC.AplicaDatos(DMCXC.cdsCptoCab, '');

   pnlCabecera.enabled := False;
   pnlDetalle.enabled := True;

// Inicio HPC_201501_CXC
// reordena SQL
   xSQL := ' Select CIAID, TREGID, TREGDES, CUENTAID, CPTOID, CCDH, TASA, TIPDET, '
         + '        CPTOCAB, CCREG, CTA_DE_FAM_ART '
         + '   from CXC102 '
         + '  where CIAID=' + QuotedStr(dblcCIA.text)
         + '    and CPTOCAB=' + QuotedStr(dblcdConceptoCab.text)
         + '  order by CCREG ';
// Fin HPC_201501_CXC

   DMCXC.cdsDinaDocs.Close;
   DMCXC.cdsDinaDocs.DataRequest(xSQL);
   DMCXC.cdsDinaDocs.Open;
   If DMCXC.cdsDinaDocs.RecordCount = 0 Then
   Begin
      dbgAsientoIButton.Click;
   End;
End;

Procedure TFDinaDocs.bbtnRCancelClick(Sender: TObject);
Begin
   DMCXC.cdsDinaDocs.Cancel;
   pnlRegitro.visible := False;
End;

Procedure TFDinaDocs.dbgAsientoIButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   pnlRegitro.visible := True;
   DMCXC.cdsDinaDocs.Append;
   DMCXC.cdsDinaDocs.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdsDinaDocs.FieldByName('CPTOCAB').AsString := dblcdConceptoCab.text;
   dblcTReg2.Clear;
   edtTRegDes2.Clear;
   dblcdConceptoDet.Clear;
   edtConceptoDet.Clear;
   dblcdCuentaDet.Clear;
   dblcDebeHabe2.Clear;
   dbeTasa.text := '0.00';
   dbeOrden.value := DMCXC.cdsDinaDocs.RecordCount + 1;
   dblcTReg2.SetFocus;
End;

Procedure TFDinaDocs.dblcdConceptoDetExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If bbtnRCancel.focused Then exit;
   DMCXC.cdsCpto1.SetKey;
   DMCXC.cdsCpto1.FieldByName('CPTOID').AsString := dblcdConceptoDet.text;
   If Not DMCXC.cdsCpto1.GotoKey Then
   Begin
      dblcdConceptoDet.SetFocus;
      Raise Exception.Create('No existe Concepto');
   End;
   edtConceptoDet.text := DMCXC.cdsCpto1.FieldByName('CPTODES').AsString;
   dblcdCuentaDet.text := DMCXC.cdsCpto1.FieldByName('CUENTAID').AsString;
End;

Procedure TFDinaDocs.dblcTReg2Exit(Sender: TObject);
Var
   xDescri: String;
Begin
   If bbtnRCancel.focused Then exit;
   xDescri := DMCXC.BuscaQry('dspTGE', 'TGE128', 'TASA,TIPDET,TREGDES', 'TREGID=' + QuotedStr(dblcTReg2.text), 'TREGDES');
   If Length(xDescri) = 0 Then
   Begin
      dblcTReg2.SetFocus;
      Raise Exception.Create('Tipo de Registro no encontrado, reintente!');
   End;

   edtTRegDes2.Text := xDescri;

   xTipDet2 := DMCXC.cdsQry.FieldByName('TIPDET').AsString;
   If DMCXC.cdsQry.FieldByName('TIPDET').AsString = 'I1' Then
      dbeTasa.text := DMCXC.cdsQry.FieldByName('TASA').AsString
   Else
      dbeTasa.text := '0.00';
End;

Procedure TFDinaDocs.dblcTRegExit(Sender: TObject);
Begin
   edtTRegDes.text := DMCXC.BuscaQry('dspTGE', 'TGE128', 'TREGDES', 'TREGID=' + QuotedStr(dblcTReg.text), 'TREGDES');
   If Length(edtTRegDes.text) = 0 Then
   Begin
      edtTRegDes.SetFocus;
      Raise Exception.Create('Ingrese Tipo de Registro');
   End;
End;

Procedure TFDinaDocs.bbtnROkClick(Sender: TObject);
Var
   sSQL: String;
Begin
   ValidaDetalle;
   DMCXC.cdsDinaDocs.FieldByName('TREGID').AsString := dblcTReg2.text;
   DMCXC.cdsDinaDocs.FieldByName('TREGDES').AsString := edtTRegDes2.text;
   DMCXC.cdsDinaDocs.FieldByName('CUENTAID').AsString := dblcdCuentaDet.text;
   DMCXC.cdsDinaDocs.FieldByName('CPTOID').AsString := dblcdConceptoDet.text;
   DMCXC.cdsDinaDocs.FieldByName('CCDH').AsString := dblcDebeHabe2.text;
   DMCXC.cdsDinaDocs.FieldByName('TASA').AsFloat := StrToFloat(dbeTasa.text);
   DMCXC.cdsDinaDocs.FieldByName('TIPDET').AsString := xTipDet2;
   DMCXC.cdsDinaDocs.FieldByName('CCREG').AsFloat := dbeOrden.Value;
   DMCXC.cdsDinaDocs.Post;

// Inicio HPC_201501_CXC
// reordena SQL
   sSQL := ' Select CIAID, TREGID, TREGDES, CUENTAID, CPTOID, CCDH, TASA, TIPDET, '
         + '        CPTOCAB, CCREG, CTA_DE_FAM_ART '
         + '   from CXC102 '
         + '  where CIAID=' + QuotedStr(dblcCIA.text)
         + '    and CPTOCAB=' + QuotedStr(dblcdConceptoCab.text)
         + '  order by CCREG ';
// Fin HPC_201501_CXC

   DMCXC.cdsDinadocs.DataRequest(sSQL);
   DMCXC.AplicaDatos(DMCXC.cdsDinaDocs, 'xx');
   pnlRegitro.visible := False;
   If DMCXC.wModo = 'A' Then
   Begin
      dbgAsientoIButton.click;
   End;

End;

Procedure TFDinaDocs.ValidaCabecera;
Begin
   If dblcCIA.text = '' Then
   Begin
      dblcCIA.SetFocus;
      Raise Exception.Create('Ingrese Compañía');
   End;
   If dblcdConceptoCab.text = '' Then
   Begin
      dblcdConceptoCab.SetFocus;
      Raise Exception.Create('Ingrese Concepto');
   End;
   If dblcdCuentaCab.text = '' Then
   Begin
      dblcdCuentaCab.SetFocus;
      Raise Exception.Create('Ingrese Cuenta Contable');
   End;
   If dblcTMon.text = '' Then
   Begin
      dblcTMon.SetFocus;
      Raise Exception.Create('Ingrese Moneda');
   End;
   If dblcTDoc.text = '' Then
   Begin
      dblcTDoc.SetFocus;
      Raise Exception.Create('Ingrese Documento');
   End;
   If dblcZona.text = '' Then
   Begin
      dblcZona.SetFocus;
      Raise Exception.Create('Ingrese Sector Comercial');
   End;
   If dblcTReg.text = '' Then
   Begin
      dblcTReg.SetFocus;
      Raise Exception.Create('Ingrese Tipo de Registro');
   End;
   If dblcDebeHabe.text = '' Then
   Begin
      dblcDebeHabe.SetFocus;
      Raise Exception.Create('Ingrese Debe/Haber');
   End;
End;

Procedure TFDinaDocs.ValidaDetalle;
Begin
   If dblcTReg2.text = '' Then
   Begin
      dblcTReg2.SetFocus;
      Raise Exception.Create('Ingrese Tipo de Registro');
   End;
   If dblcdConceptoDet.text = '' Then
   Begin
      dblcdConceptoDet.SetFocus;
      Raise Exception.Create('Ingrese Concepto');
   End;
   If dblcdCuentaDet.text = '' Then
   Begin
      dblcdCuentaDet.SetFocus;
      Raise Exception.Create('Ingrese Cuenta Contable');
   End;
   If dblcDebeHabe2.text = '' Then
   Begin
      dblcDebeHabe2.SetFocus;
      Raise Exception.Create('Ingrese Debe/Haber');
   End;

End;

Procedure TFDinaDocs.dblcDebeHabe2Exit(Sender: TObject);
Begin
   If bbtnRCancel.focused Then exit;

End;

Procedure TFDinaDocs.dbeOrdenExit(Sender: TObject);
Begin
   If bbtnRCancel.focused Then exit;
End;

Procedure TFDinaDocs.dbgAsientoDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   pnlRegitro.visible := True;
   dblcTReg2.SetFocus;

   dblcTReg2.text := DMCXC.cdsDinaDocs.FieldByName('TREGID').AsString;
   edtTRegDes2.text := DMCXC.cdsDinaDocs.FieldByName('TREGDES').AsString;
   dblcdConceptoDet.text := DMCXC.cdsDinaDocs.FieldByName('CPTOID').AsString;
   xSQL := ' CIAID=' + QuotedStr(dblcCIA.text) +
      ' AND CPTOID=' + QuotedStr(dblcdConceptoDet.text) +
      ' AND CPTOCABDET=''D'' ';
   edtConceptoDet.text := DMCXC.BuscaQry('dspTGE', 'CXC201', '*', xSQL, 'CPTODES');
   dblcdCuentaDet.text := DMCXC.cdsDinaDocs.FieldByName('CUENTAID').AsString;
   dblcDebeHabe2.text := DMCXC.cdsDinaDocs.FieldByName('CCDH').AsString;
   dbeTasa.text := DMCXC.cdsDinaDocs.FieldByName('TASA').AsString;
   dbeOrden.Value := DMCXC.cdsDinaDocs.FieldByName('CCREG').AsInteger;
   xTipDet2 := DMCXC.cdsDinaDocs.FieldByName('TIPDET').AsString;
   DMCXC.cdsDinaDocs.Edit;
End;

Procedure TFDinaDocs.dbgAsientoKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Var
   sSQL: String;
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DMCXC.cdsDinaDocs.Delete;
      // Inicio HPC_201501_CXC
      // reordena SQL
         sSQL := ' Select CIAID, TREGID, TREGDES, CUENTAID, CPTOID, CCDH, TASA, TIPDET, '
               + '        CPTOCAB, CCREG, CTA_DE_FAM_ART '
               + '   from CXC102 '
               + '  where CIAID=' + QuotedStr(dblcCIA.text)
               + '    and CPTOCAB=' + QuotedStr(dblcdConceptoCab.text)
               + '  order by CCREG ';
      // Fin HPC_201501_CXC
         DMCXC.cdsDinadocs.DataRequest(sSQL);
         DMCXC.AplicaDatos(DMCXC.cdsDinaDocs, 'xx');
      End;
   End;
End;

Procedure TFDinaDocs.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := CAFree;
End;

Procedure TFDinaDocs.dblcFPagoExit(Sender: TObject);
Begin
   edtFPago.Text := DMCXC.BuscaQry('dspTGE', 'TGE180', 'DCCOMDES', 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND CCOMERID=''' + dblcFPago.Text + '''', 'DCCOMDES');
End;

procedure TFDinaDocs.dblcDebeHabeExit(Sender: TObject);
begin
   if (dblcDebeHabe.Text<>'D') and (dblcDebeHabe.Text<>'H') then
   begin
      ShowMessage('Sólo se permite [D]ebe o [H]aber');
      dblcDebeHabe.SetFocus;
      exit;
   end;
end;

End.

