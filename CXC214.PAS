Unit CxC214;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, Buttons, DB, StdCtrls, Mask, wwdbedit,
   ExtCtrls, Wwdbdlg, wwdbdatetimepicker, wwdblook, Wwkeycb, fcLabel;

Type
   TFSitLetGrid = Class(TForm)
      dbgMaestro: TwwDBGrid;
      Z2btnAdiciona: TwwIButton;
      pnlFiltros: TPanel;
      Z2sbBorraFiltro: TSpeedButton;
      Z2sbBorraOrden: TSpeedButton;
      Z2sbOrdena: TSpeedButton;
      lblNoReg: TLabel;
      Z2sbFiltra: TSpeedButton;
      lbCampos: TListBox;
      lbFiltro: TListBox;
      lbOrden: TListBox;
      Z2bbtnImprime: TBitBtn;
      Z2bbtnTacho: TBitBtn;
      Z2bbtnSacaFiltros: TBitBtn;
      Z2bbtnCalc: TBitBtn;
      Z2bbtnSuma: TBitBtn;
      Z2BitBtn1: TBitBtn;
      dbeNumReg: TwwDBEdit;
      lbCamposReal: TListBox;
      lbFiltroReal: TListBox;
      lbOrdenReal: TListBox;
      pnlBuscaReg: TPanel;
      lblDatoBusca: TLabel;
      lblTitBusca: TLabel;
      Z2bbtnCanc2: TBitBtn;
      isBuscaReg: TwwIncrementalSearch;
      pnlBuscaFiltro: TPanel;
      lblFiltro: TLabel;
      lblTitFiltro: TLabel;
      dblcXX: TwwDBLookupCombo;
      dbdtpXX: TwwDBDateTimePicker;
      dbeXX: TwwDBEdit;
      dblcdXX: TwwDBLookupComboDlg;
      Z2bbtnCancFiltro: TBitBtn;
      rgFiltro: TRadioGroup;
      Z2bbtnOk1: TBitBtn;
      Z2bbtnFiltros: TBitBtn;
      fcLabel1: TfcLabel;
      Z2bbtnConsulta: TBitBtn;
      Z2bbtnModifica: TBitBtn;
      Z2bbtnMant: TBitBtn;
      pnlCambios: TPanel;
      Z2bbtnSitua: TBitBtn;
      BitBtn2: TBitBtn;
      BitBtn3: TBitBtn;
      BitBtn4: TBitBtn;
      Procedure Z2btnAdicionaClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbgMaestroDblClick(Sender: TObject);
      Procedure Z2bbtnSacaFiltrosClick(Sender: TObject);
      Procedure Z2bbtnFiltrosClick(Sender: TObject);
      Procedure lbCamposEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure lbCamposMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure lbFiltroDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure lbFiltroEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure lbFiltroMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure lbOrdenDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure lbOrdenEndDrag(Sender, Target: TObject; X, Y: Integer);
      Procedure lbOrdenMouseDown(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure Z2bbtnTachoDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; Var Accept: Boolean);
      Procedure Z2sbBorraFiltroClick(Sender: TObject);
      Procedure Z2sbFiltraClick(Sender: TObject);
      Procedure Z2sbBorraOrdenClick(Sender: TObject);
      Procedure Z2sbOrdenaClick(Sender: TObject);
      Procedure Z2BitBtn1Click(Sender: TObject);
      Procedure Z2bbtnOk1Click(Sender: TObject);
      Procedure Z2bbtnCancFiltroClick(Sender: TObject);
      Procedure Z2bbtnCanc2Click(Sender: TObject);
      Procedure isBuscaRegKeyPress(Sender: TObject; Var Key: Char);
      Procedure MuestraPanel;
      Procedure FiltraDatos;
      Procedure SQLFiltros;
      Procedure dbgMaestroTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure dbgMaestroEnter(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure Z2bbtnMantClick(Sender: TObject);
   Private
    { Private declarations }
   Public
      xSelDoc: String;
      xRegAct: TBookMark;
      xBuscaDato: boolean;

    { Public declarations }
   End;

Var
   FSitLetGrid: TFSitLetGrid;

Implementation

{$R *.DFM}

Uses CXCDM, CxC201, CxC001, CxC202, CxC203, CxC204;

Procedure TFSitLetGrid.Z2btnAdicionaClick(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FLetras.ShowModal;
   DM1.cdsMovCxC.Filtered := false;
   DM1.cdsMovCxC.Filter := '';
   DM1.cdsMovCxC.Filter := xSelDoc;
   DM1.cdsMovCxC.Filtered := true;
End;

Procedure TFSitLetGrid.FormActivate(Sender: TObject);
Begin
   If DM1.wAdmin = 'G' Then
   Begin
      Z2bbtnConsulta.Visible := True;
      Z2bbtnModifica.Visible := True;
   End;

//   DM1.AccesosUsuarios( DM1.wModulo,DM1.wUsuario,'2',Screen.ActiveForm.Name );

   DM1.cdsMovCxC.IndexFieldNames := 'CiaId;ClieId;DocID;CCSerie;CCNoDoc'; // Pa'Detalle
   DM1.cdsMovCxC2.IndexFieldNames := 'CiaId;tdIARid;CCaNOmES;CCNorEG'; // Pa'Detalle
   DM1.cdsDetCxC.IndexFieldNames := 'CiaId;TDiarId;CCNoReg;CCAnoMes;TipDet'; //Busca Monto total en DetCxP
   DM1.cdsCanjes.IndexFieldNames := 'CiaId;ClieId;DocID;CCSerie;CCNoDoc'; //Busca si  ya esta en Canje
   DM1.cdsTipReg.IndexFieldNames := 'TipDet';
   DM1.cdsCpto.IndexFieldNames := 'CptoId';

 // Quita Filtro a archivo de Movimientos
 // Filtra Tipos de documentos aptos para guardar como Provisión
   DM1.cdsTDoc.Filter := '';
   DM1.cdsTDoc.Filter := 'DOC_FREG=' + '''' + FPrincipal.xTipoProv + ''''; // Forma de Registro Provisión
   DM1.cdsTDoc.Filtered := true;
 // Filtra Tipos de Moneda Sólo Oficial Nacional y Extranjera
   DM1.cdsTMon.Filter := '';
   DM1.cdsTMon.Filter := 'TMon_Loc=' + '''' + 'L' + '''' + ' or TMon_Loc=' + '''' + 'E' + '''';
   DM1.cdsTMon.Filtered := True;

   While Not DM1.cdsTDoc.Eof Do
   Begin
      If Length(xSelDoc) = 0 Then
         xSelDoc := 'DocId=' + '''' + DM1.cdsTDocDocId.AsString + ''''
      Else
         xSelDoc := xSelDoc + ' or DocId=' + '''' + DM1.cdsTDocDocId.AsString + '''';
      DM1.cdsTDoc.Next;
   End;

   DM1.cdsMovCxC.Filtered := false;
   DM1.cdsMovCxC.Filter := '';
   DM1.cdsMovCxC.Filter := xSelDoc;
   DM1.cdsMovCxC.Filtered := true;
   xBuscaDato := False;
End;

Procedure TFSitLetGrid.dbgMaestroDblClick(Sender: TObject);
Begin
   If (Not Z2bbtnConsulta.Enabled) And (Not Z2bbtnModifica.Enabled) Then Exit;

   If Z2bbtnModifica.Enabled Then
      DM1.wModo := 'M'
   Else
   Begin
      DM1.wModo := 'C';
   End;

   xRegAct := DM1.cdsMovCxC.GetBookmark;
   DM1.cdsMovCxC.Edit;
   FLetras.ShowModal;
   DM1.cdsMovCxC.Filtered := false;
   DM1.cdsMovCxC.Filter := '';
   DM1.cdsMovCxC.Filter := xSelDoc;
   DM1.cdsMovCxC.Filtered := true;
   DM1.cdsMovCxC.GotoBookmark(xRegAct);
   DM1.cdsMovCxC.FreeBookmark(xRegAct);
End;

Procedure TFSitLetGrid.Z2bbtnSacaFiltrosClick(Sender: TObject);
Begin
   pnlFiltros.Visible := Not pnlFiltros.Visible;
   If pnlFiltros.Visible Then
   Begin
      Z2bbtnFiltros.Hint := 'Desactiva Filtros';
      dbgMaestro.Height := dbgMaestro.Height - pnlFiltros.Height;
   End
   Else
   Begin
      Z2bbtnFiltros.Hint := 'Activa Filtros';
      dbgMaestro.Height := dbgMaestro.Height + pnlFiltros.Height;
   End;
End;

Procedure TFSitLetGrid.Z2bbtnFiltrosClick(Sender: TObject);
Begin
   dbeNumReg.Text := Formatfloat('###,###,###', DM1.cdsMovCxC.Recordcount);
   pnlFiltros.Visible := Not pnlFiltros.Visible;
   If pnlFiltros.Visible Then
   Begin
      Z2bbtnFiltros.Hint := 'Desactiva Filtros';
      dbgMaestro.Height := dbgMaestro.Height - pnlFiltros.Height;
   End
   Else
   Begin
      Z2bbtnFiltros.Hint := 'Activa Filtros';
      dbgMaestro.Height := dbgMaestro.Height + pnlFiltros.Height;
   End;
End;

Procedure TFSitLetGrid.lbCamposEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = lbFiltro Then
   Begin // si el destino es filtros
//      lbFiltro.Items.Add(lbCampos.Items[lbCampos.ItemIndex]+'=');
      MuestraPanel;
   End;
   If Target = lbOrden Then
   Begin // si el destino es ordenar
      lbOrden.Items.Add(lbCampos.Items[lbCampos.ItemIndex]);
      lbOrdenReal.Items.Add(lbCamposReal.Items[lbCampos.ItemIndex]);
   End;
End;

Procedure TFSitLetGrid.lbCamposMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   lbCampos.BeginDrag(False);
End;

Procedure TFSitLetGrid.lbFiltroDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFSitLetGrid.lbFiltroEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = Z2bbtnTacho Then
   Begin
      lbFiltroReal.Items.Delete(lbFiltro.ItemIndex);
      lbFiltro.Items.Delete(lbFiltro.ItemIndex);
      FiltraDatos;
   End;
End;

Procedure TFSitLetGrid.lbFiltroMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   lbFiltro.BeginDrag(False);
End;

Procedure TFSitLetGrid.lbOrdenDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFSitLetGrid.lbOrdenEndDrag(Sender, Target: TObject; X,
   Y: Integer);
Begin
   If Target = Z2bbtnTacho Then
   Begin
      lbOrdenReal.Items.Delete(lbOrden.ItemIndex);
      lbOrden.Items.Delete(lbOrden.ItemIndex);
      Z2sbOrdena.Click;
   End;
End;

Procedure TFSitLetGrid.lbOrdenMouseDown(Sender: TObject;
   Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
   lbOrden.BeginDrag(False);
End;

Procedure TFSitLetGrid.Z2bbtnTachoDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; Var Accept: Boolean);
Begin
   Accept := True;
End;

Procedure TFSitLetGrid.Z2sbBorraFiltroClick(Sender: TObject);
Begin
   lbFiltroReal.Items.Clear;
   lbFiltro.Items.Clear;
   SQLFiltros;
   dbeNumReg.Text := Formatfloat('###,###,###', DM1.cdsMovCxC.Recordcount);
//   FiltraDatos;
End;

Procedure TFSitLetGrid.Z2sbFiltraClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
// ejecuta filtro
   FiltraDatos;
   Screen.Cursor := crDefault;
End;

Procedure TFSitLetGrid.Z2sbBorraOrdenClick(Sender: TObject);
Begin
   lbOrdenReal.Items.Clear;
   lbOrden.Items.Clear;
   Z2sbOrdena.Click;
End;

Procedure TFSitLetGrid.Z2sbOrdenaClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   SQLFiltros;
   Screen.Cursor := crDefault;
End;

Procedure TFSitLetGrid.Z2BitBtn1Click(Sender: TObject);
Begin
   pnlBuscaReg.Visible := true;
End;

Procedure TFSitLetGrid.Z2bbtnOk1Click(Sender: TObject);
Var
   xCampo1, xRelacion, xDatoFiltro, xCampo2: String;
Begin
   Case lbCampos.ItemIndex Of
      0, 2:
         Begin
            xDatoFiltro := dblcXX.Text;
         End;
      98:
         Begin
            xDatoFiltro := dblcdXX.Text;
         End;
      99:
         Begin
            xDatoFiltro := datetostr(dbdtpXX.date);
         End;
   Else
      xDatoFiltro := dbeXX.Text;
   End;

// se asigna a xCampo1 valor del ListBox campos que ve el usuario
   xCampo1 := lbCampos.Items[lbCampos.ItemIndex];
// se toma criterio del radiogroup y se asigna a variable xrelacion
   xRelacion := rgFiltro.Items[rgFiltro.ItemIndex]; // valor del radiogroup
// se arma filtro que ve el usuario y se pone en listbox filtros del usuario
   lbFiltro.Items.Add(xCampo1 + xRelacion + '''' + xDatoFiltro + '''');
// se asigna a xCampo2 valor del listbox real que contiene nombres de campos
   xCampo2 := lbCamposReal.Items[lbCampos.ItemIndex];
// se arma Filtro Real y se pone en ListBox real de Filtros
   lbFiltroReal.Items.Add(xCampo2 + xRelacion + '''' + xDatoFiltro + '''');

   Z2bbtnCancFiltro.Click;
End;

Procedure TFSitLetGrid.Z2bbtnCancFiltroClick(Sender: TObject);
Begin
   pnlBuscaFiltro.Visible := False;
End;

Procedure TFSitLetGrid.Z2bbtnCanc2Click(Sender: TObject);
Begin
   pnlBuscaReg.Visible := False;
   xBuscaDato := True;
   dbgMaestro.SetFocus;
End;

Procedure TFSitLetGrid.isBuscaRegKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If key = #13 Then
   Begin
      pnlBuscaReg.Visible := False;
      xBuscaDato := True;
      dbgMaestro.SetFocus;
   End;
End;

Procedure TFSitLetGrid.MuestraPanel;
Var
   xLeft: Single;
Begin
// pasa componentes a visible false
   dblcXX.Visible := False;
   dblcXX.Text := '';
   dblcdXX.Visible := False;
   dblcdXX.Text := '';
   dbdtpXX.Visible := False;
   dbdtpXX.Text := '';
   dbeXX.Visible := False;
   dbeXX.Text := '';

   lblFiltro.Caption := lbCampos.Items[lbCampos.ItemIndex]; // Asigna Valor escogido de lbCampos a Label1
   dblcXX.Left := lblFiltro.left + lblFiltro.Width + 15;
   dblcdXX.Left := lblFiltro.left + lblFiltro.Width + 15;
   dbdtpXX.Left := lblFiltro.left + lblFiltro.Width + 15;
   dbeXX.Left := lblFiltro.left + lblFiltro.Width + 15;
   pnlBuscaFiltro.Width := dblcXX.Left + dblcXX.width + 32;
   xLeft := int((pnlBuscaFiltro.Width - 165) / 2);
   Z2bbtnok1.Left := strtoint(floattostr(xLeft));
   Z2bbtnCancFiltro.Left := Z2bbtnok1.Left + 90;

   rgFiltro.ItemIndex := 2; // asigna valor default '=' a criterio de filtros

   pnlBuscaFiltro.Visible := True;
   Case lbCampos.ItemIndex Of
      0, 2:
         Begin // para campos que necesiten dblc
            dblcXX.Selected.Clear;
            dblcXX.LookupField := '';
            If lbCampos.ItemIndex = 0 Then // Estado Civil
            Begin
               dblcXX.LookupTable := DM1.cdsCia;
               dblcXX.LookupField := 'CIAID';
               dblcXX.Selected.Add('CIAID' + #9 + '2' + #9 + 'Id');
               dblcXX.Selected.Add('CIADES' + #9 + '20' + #9 + 'Compañía');
            End;
            If lbCampos.ItemIndex = 2 Then // Situación del Trabajador
            Begin
               dblcXX.LookupTable := DM1.cdsTDiario;
               dblcXX.LookupField := 'TDiarId';
               dblcXX.Selected.Add('TDiarID' + #9 + '2' + #9 + 'Id');
               dblcXX.Selected.Add('TDiarDES' + #9 + '20' + #9 + 'T.Diario');
            End;
            dblcXX.Visible := True;
            dblcXX.SetFocus;
         End;
      98:
         Begin // para campos dblcd
            dblcdXX.Selected.Clear;
            dblcdXX.LookupField := '';
            If lbCampos.ItemIndex = 9 Then // Código Postal
            Begin
               dblcdXX.LookupTable := DM1.cdsClie;
               dblcdXX.LookupField := 'ZipId';
               dblcdXX.Selected.Add('ZIPID' + #9 + '3' + #9 + 'Id');
               dblcdXX.Selected.Add('ZIPDES' + #9 + '35' + #9 + 'Código Postal');
            End;
            dblcdXX.Visible := True;
            dblcdXX.SetFocus;
         End;
      99:
         Begin // para campos tipo fecha
            dbdtpXX.Visible := True;
            dbdtpXX.Setfocus;
         End;
   Else
      dbeXX.Visible := True;
      dbeXX.Setfocus;
   End;
End;

Procedure TFSitLetGrid.FiltraDatos;
Begin
   Screen.Cursor := crHourGlass;
   SQLFiltros;
   Z2bbtnCancFiltro.Click;
   dbgMaestro.SetFocus;
   dbgMaestro.Refresh;
   Screen.Cursor := crDefault;
End;

Procedure TFSitLetGrid.SQLFiltros;
Var
   xFiltro, xOrden: String;
   xSQL: widestring;
   i: integer;
Begin
// se arma filtro en base a listbox filtro real
   xFiltro := '';
   For i := 0 To lbFiltroReal.Items.Count - 1 Do
   Begin
      If length(xFiltro) > 0 Then
         xFiltro := xFiltro + ' and ' + lbFiltroReal.Items[i]
      Else
      Begin
         xFiltro := lbFiltroReal.Items[i];
      End;
   End;
// se arma Orden en base a listbox orden Real
   xOrden := '';
   For i := 0 To lbOrdenReal.Items.Count - 1 Do
   Begin
      If length(xOrden) > 0 Then
         xOrden := xOrden + ', ' + lbOrdenReal.Items[i]
      Else
      Begin
         xOrden := lbOrdenReal.Items[i];
      End;
   End;

   If length(xOrden) = 0 Then xOrden := 'CiaID,CPAnoMes,TDiarID,CPNoReg';

   xSQL := 'select * from CXP301';
   If length(xFiltro) > 0 Then xSQL := xSQL + ' Where ' + xFiltro;
   If Length(xOrden) > 0 Then xSQL := xSQL + ' order by ' + xOrden;

   DM1.cdsMovCxC.Close; // Cierra Cds para cambiar propiedades
   DM1.cdsMovCxC.IndexFieldNames := '';
   DM1.cdsMovCxC.DataRequest(xSQL); // Renueva Sentencia SQL desde la Aplic. Servidor
   DM1.cdsMovCxC.Open; // Abre cds del Detalle del Trabajador
End;

Procedure TFSitLetGrid.dbgMaestroTitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   xIndex: integer;
Begin
//   lblDatoBusca.Caption := DM1.cdsTrab.Fields[DM1.cdsTrab.FieldByName(AFIELDNAME).Index).DisplayLabel;
//   lblDatoBusca.Caption := dbgMaestro.Columns[DM1.cdsTrab.FieldByName(AFIELDNAME).Index).DisplayLabel;
   xIndex := DM1.cdsMovCxC.FieldByName(AFIELDNAME).Index;
   If (xIndex = 0) Or (xIndex = 1) Or (xIndex = 2) Or (xIndex = 3) Then
   Begin
      lblDatoBusca.Caption := dbgMaestro.Columns[xIndex].DisplayLabel;
      pnlBuscaReg.Visible := True;
      isBuscaReg.SearchField := AFieldName;
      isBuscaReg.Text := '';
      isBuscaReg.SetFocus;
   End;
End;

Procedure TFSitLetGrid.dbgMaestroEnter(Sender: TObject);
Begin
   If Not xBuscaDato Then
   Begin
      SQLFiltros;
      dbeNumReg.Text := Formatfloat('###,###,###', DM1.cdsMovCxC.Recordcount);
   End
   Else
   Begin
      xBuscaDato := False;
   End;
End;

Procedure TFSitLetGrid.FormCreate(Sender: TObject);
Begin
{   If DM1.wAdmin='G' then begin
      DM1.wObjetoDesPr := Caption;
      FPrincipal.ListaComponentes(Self);
   end;}
End;

Procedure TFSitLetGrid.Z2bbtnMantClick(Sender: TObject);
Begin
   FSitLet.ShowModal;
End;

End.

