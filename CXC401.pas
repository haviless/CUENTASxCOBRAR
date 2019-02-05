Unit CXC401;

//

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Wwdatsrc, Provider, DBClient, wwclient, DBTables, Wwquery, Grids,
   Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, wwdbedit,
   wwdblook, Wwdbdlg;

Type
   TFEmiDoc = Class(TForm)
      dbgEmiDoc: TwwDBGrid;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      edtMtoGravado: TEdit;
      edtMtoNoGrav: TEdit;
      edtIGV: TEdit;
      edtISC: TEdit;
      Bevel1: TBevel;
      Bevel2: TBevel;
      StaticText1: TStaticText;
      Bevel3: TBevel;
      Z2bbtnGraba: TBitBtn;
      Z2bbtnSalir: TBitBtn;
      edtTotal: TEdit;
      Bevel4: TBevel;
      Z2bbtnGeneraVV: TBitBtn;
      CheckBox1: TCheckBox;
      pnlConcepto: TPanel;
      dbgEmiDocIButton: TwwIButton;
      dblcdConcepto: TwwDBLookupComboDlg;
      dbeDescri: TwwDBEdit;
      lblConcepto: TLabel;
      lblDescri: TLabel;
      dbeCantidad: TwwDBEdit;
      dbePreUni: TwwDBEdit;
      dbePreTot: TwwDBEdit;
      lblCantidad: TLabel;
      lblPreUni: TLabel;
      lblPreTot: TLabel;
      lblIgv: TLabel;
      lblIsc: TLabel;
      StaticText2: TStaticText;
      bbtnRegOk: TBitBtn;
      bbtnRegCanc: TBitBtn;
      chbIGV: TCheckBox;
      chbISC: TCheckBox;
      chbtotalIgv: TCheckBox;
      Label5: TLabel;
      Bevel5: TBevel;
      dsEmidoc: TwwDataSource;
      cdsEmiDoc: TwwClientDataSet;
      Procedure cdsEmiDocInvalidValue(DataSet: TDataSet; Field: TField);
      Procedure dbgEmiDocKeyPress(Sender: TObject; Var Key: Char);
      Procedure cdsEmiDocBeforePost(DataSet: TDataSet);
      Procedure cdsEmiDocBeforeDelete(DataSet: TDataSet);
      Procedure cdsEmiDocAfterDelete(DataSet: TDataSet);
      Procedure cdsEmiDocAfterInsert(DataSet: TDataSet);
      Procedure cdsEmiDocDDECANTChange(Sender: TField);
      Procedure cdsEmiDocAfterPost(DataSet: TDataSet);
      Procedure FormShow(Sender: TObject);
      Procedure Z2bbtnSalirClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure dbgEmiDocCheckValue(Sender: TObject;
         PassesPictureTest: Boolean);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtTotalExit(Sender: TObject);
      Procedure Z2bbtnGeneraVVClick(Sender: TObject);
      Procedure CheckBox1Click(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dbgEmiDocIButtonClick(Sender: TObject);
      Procedure bbtnRegCancClick(Sender: TObject);
      Procedure dblcdConceptoExit(Sender: TObject);
      Procedure bbtnRegOkClick(Sender: TObject);
      Procedure dbgEmiDocKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure dbgEmiDocDblClick(Sender: TObject);
      Procedure chbtotalIgvClick(Sender: TObject);
      Procedure dbeCantidadExit(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
   Private
    { Private declarations }
      Function Decimales(xNumero: String; Digitos: Integer = 2): String;
      Procedure CargaDataSource;
   Public
    { Public declarations }
      xGrabo: Bool;
      wciaid, wccnoreg, wccanomm, wtdiarid: String;
      Procedure ActualizaTotales;
   End;

Var
   FEmiDoc: TFEmiDoc;

Implementation

Uses CxCDM, CXCUTIL, CxC201;

{$R *.DFM}

Procedure TFEmiDoc.cdsEmiDocInvalidValue(DataSet: TDataSet; Field: TField);
Begin
{
   if trim(dbgEmiDoc.InplaceEditor.Text) = '.' then
      Field.AsString := '0.00'
   else
   begin
//      dbgEmiDoc.InplaceEditor.Text := Decimales( dbgEmiDoc.InplaceEditor.Text ) ;
       Field.AsString := Decimales( dbgEmiDoc.InplaceEditor.Text ) ;
   end ;
}
End;

Procedure TFEmiDoc.dbgEmiDocKeyPress(Sender: TObject; Var Key: Char);
Var
   xStr: String;
   Posicion: Integer;
   Inicio: INteger;
   Longitud: Integer;
Begin
   If key In [#13, #8] Then
      exit;
   If twwdbgrid(sender).GetActiveCol In [3, 4] Then
   Begin
      If Not (Key In ['0'..'9', '.', #8, #13]) Then
         Key := #0;
   End
   Else
      Exit;

   If (cdsEmiDoc.state = dsinsert) Or (cdsEmiDoc.state = dsinsert) Then
   Begin
      xStr := twwDBGrid(Sender).InplaceEditor.Text;
      posicion := pos('.', xSTR);
      Inicio := twwDBGrid(Sender).InplaceEditor.SelStart;
      Longitud := length(twwDBGrid(Sender).InplaceEditor.text);
      If Posicion <> 0 Then
         If key = '.' Then
            Key := #0
         Else
            If (Inicio - Posicion > 1) Then
               key := #0
            Else
               If (twwDBGrid(Sender).InplaceEditor.SelStart - Posicion >= 0) Then
               Begin
                  If ((Longitud - (Posicion)) = 2) Then
                  Begin
                     twwDBGrid(Sender).InplaceEditor.Text :=
                        copy(twwDBGrid(Sender).InplaceEditor.Text, 1,
                        length(twwDBGrid(Sender).InplaceEditor.Text) - 1);
                     twwDBGrid(Sender).InplaceEditor.SelStart := Inicio;
                  End;
               End;

   End;
End;

Procedure TFEmiDoc.cdsEmiDocBeforePost(DataSet: TDataSet);
Begin
   If dataset.FieldByName('DDEDES').isnull Or (trim(dataset.FieldByName('DDEDES').asstring) = '') Then
      Raise exception.create('Ingrese Descripción');
   If dataset.FieldByName('DDECANT').isnull Or (dataset.FieldByName('DDECANT').AsCurrency = 0) Then
      Raise exception.create('Ingrese Cantidad');
//** 01/03/2001 - pjsv
//   if dataset.FieldByName('DDEPU').isnull or (dataset.FieldByName('DDEPU').AsCurrency = 0) THEN
//      raise exception.create('Ingrese Precio Unitario') ;
//**
   If dataset.State = dsinsert Then
      dataset.FieldByName('DDECORR').AsInteger := DataSet.RecordCount + 1;
   dataset.FieldByName('CIAID').AsString := wCiaid; //twwclientdataset(dataset).params.parambyname('CIAID').AsString ;
   dataset.FieldByName('CCANOMM').AsString := wccanomm; //twwclientdataset(dataset).params.parambyname('CCANOMM').AsString ;
   dataset.FieldByName('TDIARID').AsString := wtdiarid; //twwclientdataset(dataset).params.parambyname('TDIARID').AsString ;
   dataset.FieldByName('CCNOREG').AsString := wccnoreg; //twwclientdataset(dataset).params.parambyname('CCNOREG').AsString;
End;

Procedure TFEmiDoc.cdsEmiDocBeforeDelete(DataSet: TDataSet);
Begin
   If MessageDlg('Borrar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      Abort;
   End;
End;

Procedure TFEmiDoc.cdsEmiDocAfterDelete(DataSet: TDataSet);
Var
   i: Integer;
Begin
   If DataSet.RecordCount = 0 Then
      exit;
   DataSet.DisableControls;
   i := twwclientdataset(dataset).RecNo;
   DataSet.First;
   While Not DataSet.Eof Do
   Begin
      dataset.edit;
      dataset.FieldByName('DDECORR').AsInteger := DataSet.RecNo;
      dataset.post;
      dataset.Next;
   End;
   DataSet.RecNo := i;
   DataSet.EnableControls;
   ActualizaTotales;

End;

Procedure TFEmiDoc.cdsEmiDocAfterInsert(DataSet: TDataSet);
Begin
//   dataset.FieldByName('DDECORR').AsInteger := DataSet.RecordCount + 1 ;
End;

Function TFEmiDoc.Decimales(xNumero: String; Digitos: Integer): String;
Var
   xFloat: Double;
   xNumTmp: String;
Begin
   If trim(xNumero) <> '' Then
      xFloat := strtofloat(xNumero)
   Else
      xFloat := 0;
   xNumTmp := floattostrf(xFloat, fffixed, 10, Digitos);
   xFloat := strtofloat(xNumTmp);
   If xFloat = 0 Then
   Begin
      Result := '0.00';
   End
   Else
   Begin
      Result := xNumTmp;
   End;
End;

Procedure TFEmiDoc.cdsEmiDocDDECANTChange(Sender: TField);
Begin
   sender.DataSet.FieldByName('DDEPT').AsCurrency :=
      cxcutil.redondea(sender.AsCurrency * sender.DataSet.FieldByName('DDEPU').AsCurrency);
   dbgEmiDoc.RefreshDisplay;
End;

Procedure TFEmiDoc.ActualizaTotales;
Var
   xGravado,
      xNoGravado,
      xIGV,
      xISC: Currency;
   cds: TwwClientDataSet;
Begin
   xGravado := 0;
   xNoGravado := 0;
   xIGV := 0;
   xISC := 0;

   If cdsEmiDoc.RecordCount <> 0 Then
   Begin
      cds := TwwClientDataSet.create(self);
      cds.CloneCursor(cdsEmiDoc, false);
      cds.First;
      While Not cds.Eof Do
      Begin
        //** 02/03/2001 - pjsv, se agrego "or (cds.FieldByName('INCIGV').AsString = 'I') OR"
         If (cds.FieldByName('DDEIGV').AsString = 'S') Or (cds.FieldByName('INCIGV').AsString = 'I') Or
            (cds.FieldByName('DDEISC').AsString = 'S') Then
        //**
         Begin
            xGravado := xGravado + cds.FieldByName('DDEPT').AsCurrency;
            If (cds.FieldByName('DDEIGV').AsString = 'S') Or (cds.FieldByName('INCIGV').AsString = 'I') Then
               xIGV := xIGV + 0.18 * cds.FieldByName('DDEPT').AsCurrency;
            If (cds.FieldByName('DDEISC').AsString = 'S') Then
               xISC := xISC + 0.05 * cds.FieldByName('DDEPT').AsCurrency;
         End
         Else
            xNoGravado := xNoGravado + cds.FieldByName('DDEPT').AsCurrency;
         cds.Next;
      End;
      cds.free;
   End;
   edtMtoGravado.Text := decimales(currtostr(xGravado));
   edtMtoNoGrav.Text := decimales(currtostr(xNoGravado));
   edtIGV.Text := decimales(currtostr(xIGV));
   edtISC.Text := decimales(currtostr(xISC));
   edtTotal.Text := decimales(currtostr(xGravado + xNoGravado + xIGV + xISC));
End;

Procedure TFEmiDoc.cdsEmiDocAfterPost(DataSet: TDataSet);
Begin
   ActualizaTotales;
End;

Procedure TFEmiDoc.FormShow(Sender: TObject);
Begin
   //** 02/03/2001 - pjsv, por defecto es False
   xGrabo := false;
   //**
   //** 22/02/2001 - pjsv
   DMCXC.cdscpto.close;
//   DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND ((CPTOCABDET=''D'') OR (CPTOCABDET=''C''))');
   DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND CPTOCABDET=''D''');
   DMCXC.cdscpto.Open;
   //**
   DMCXC.cdsEmiDoc1.Cancel;
   DMCXC.cdsEmiDoc1.CancelUpdates;
   If cdsEmiDoc.RecordCount = 0 Then
   Begin
      edtMtoGravado.Text := '0.00';
      edtMtoNoGrav.Text := '0.00';
      edtIGV.Text := '0.00';
      edtISC.Text := '0.00';
     //** 2002/02/25 - PJSV
      edtTotal.Text := '0.00';
     //**
   End
   Else
      ActualizaTotales;

   TNumericField(cdsEmidoc.FieldByName('DDEPU')).displayFormat := '###,###,###0.00';
   TNumericField(cdsEmidoc.FieldByName('DDEPT')).displayFormat := '###,###,###0.00';
End;

Procedure TFEmiDoc.Z2bbtnSalirClick(Sender: TObject);
Begin
   //** 02/03/2001 - pjsv, por defecto es False
   xGrabo := false;
   //**
   Close;
End;

Procedure TFEmiDoc.Z2bbtnGrabaClick(Sender: TObject);
Begin
   cdsEmiDoc.First;
   While Not cdsEmiDoc.Eof Do
   Begin
      DMCXC.cdsEmiDoc1.Insert;
      DMCXC.cdsEmiDoc1.FieldByName('DDECORR').AsString := cdsEmiDoc.FieldByName('DDECORR').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('CPTOID').AsString := cdsEmiDoc.FieldByName('CPTOID').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('DDEDES').AsString := cdsEmiDoc.FieldByName('DDEDES').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('DDECANT').AsString := cdsEmiDoc.FieldByName('DDECANT').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('DDEPU').AsString := cdsEmiDoc.FieldByName('DDEPU').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('DDEPT').AsString := cdsEmiDoc.FieldByName('DDEPT').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('DDEIGV').AsString := cdsEmiDoc.FieldByName('DDEIGV').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('INCIGV').AsString := cdsEmiDoc.FieldByName('INCIGV').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('DDEISC').AsString := cdsEmiDoc.FieldByName('DDEISC').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('CIAID').AsString := cdsEmiDoc.FieldByName('CIAID').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('TDIARID').AsString := cdsEmiDoc.FieldByName('TDIARID').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('CCANOMM').AsString := cdsEmiDoc.FieldByName('CCANOMM').AsString;
      DMCXC.cdsEmiDoc1.FieldByName('CCNOREG').AsString := cdsEmiDoc.FieldByName('CCNOREG').AsString;
      DMCXC.cdsEmiDoc1.POST;
     //** 02/03/2001 - pjsv, por defecto es False
      xGrabo := true;
     //**
      cdsEmiDoc.NEXT;
   End;
   Close;
End;

Procedure TFEmiDoc.dbgEmiDocCheckValue(Sender: TObject;
   PassesPictureTest: Boolean);
Var
   xCurr: Currency;
   xselstart: Integer;
Begin
   With Sender As TwwInplaceEdit Do
   Begin
      If Not PassesPictureTest Then
      Begin
         Try
//            xselstart := SelStart     ;
            xCurr := StrToCurr(Text);
            Text := Decimales(Text);
//            SelStart := xselstart  ;
         Except
            Text := '0.00'
         End;
      End
   End

End;

Procedure TFEmiDoc.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If self.ActiveControl Is TwwDBGrid Then
      Exit;

   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFEmiDoc.edtTotalExit(Sender: TObject);
Begin
   //Generación del Valor Venta
   Z2bbtnGeneraVV.SetFocus;
   //fin de generación del Valor Venta
End;

Procedure TFEmiDoc.Z2bbtnGeneraVVClick(Sender: TObject);
Var
   xTotal,
      xValorVenta: Currency;
   xAfterDelete,
      xBeforeDelete: TDataSetNotifyEvent;
Begin

   With cdsEmiDoc Do
   Begin
      First;

      xAfterDelete := cdsEmiDoc.AfterDelete;
      xBeforeDelete := cdsEmiDoc.BeforeDelete;
      cdsEmiDoc.AfterDelete := Nil;
      cdsEmiDoc.BeforeDelete := Nil;

      While (Not Eof) Do
      Begin
         delete;
      End;

      cdsEmiDoc.AfterDelete := xAfterDelete;
      cdsEmiDoc.BeforeDelete := xBeforeDelete;

      Insert;
      xTotal := StrToCurr(edtTotal.Text);
      xValorVenta := redondea(xTotal / 1.18);
      Fieldbyname('DDEDES').AsString := 'Detalle de Documento';
      Fieldbyname('DDECANT').AsInteger := 1;
      Fieldbyname('DDEPU').AsCurrency := xValorVenta;
      Fieldbyname('DDEIGV').AsString := 'S';

      Post;
      edtTotal.Enabled := False;
      edtTotal.Color := clMenu;
      Z2bbtnGeneraVV.Enabled := False;
      CheckBox1.Checked := False;
   End;
End;

Procedure TFEmiDoc.CheckBox1Click(Sender: TObject);
Begin
   If CheckBox1.Checked Then
   Begin
      edtTotal.Enabled := true;
      edtTotal.Color := clWindow;
      Z2bbtnGeneraVV.Enabled := True;
      edtTotal.SetFocus;
   End;
End;

Procedure TFEmiDoc.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   //** 22/02/2001 - pjsv
   DMCXC.cdscpto.close;
   If FProvision.dblcTMon.text = '01' Then
//    DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND ((CPTOTMON=''L'') OR (CPTOTMON IS NULL) )') ;
      DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND CPTOCABDET=''C'' AND CPTOTMON=''L''')
   Else
      DMCXC.cdscpto.DataRequest('SELECT * FROM CXC201 WHERE OPCMENU=''P'' AND CPTOCABDET=''C'' AND CPTOTMON=''E''');
   DMCXC.cdscpto.Open;
   //**
   If cdsEmiDoc.state In [dsedit, dsinsert] Then
   Try
 //       cdsEmiDoc.Post ;
   Except
      cdsEmiDoc.Cancel;
   End;
End;

//** 13/02/2001 - pjsv

Procedure TFEmiDoc.dbgEmiDocIButtonClick(Sender: TObject);
Begin
   dbgEmiDoc.Enabled := false;
   Z2bbtnGraba.Enabled := false;
   Z2bbtnSalir.Enabled := false;
   cdsEmidoc.Insert;
   dbeDescri.text := '';
   dbeCantidad.text := '';
   dbePreUni.text := '';
   dbePreTot.text := '';
   chbIgv.Checked := false;
   chbIsc.Checked := false;
   dblcdConcepto.Value := '';
   pnlConcepto.Visible := True;
   chbIGV.Enabled := false;
   chbtotalIgv.Checked := true;
End;

Procedure TFEmiDoc.bbtnRegCancClick(Sender: TObject);
Begin
   dbgEmiDoc.Enabled := True;
   Z2bbtnGraba.Enabled := True;
   Z2bbtnSalir.Enabled := True;
   cdsemidoc.Cancel;
   pnlConcepto.Visible := False;
End;

Procedure TFEmiDoc.dblcdConceptoExit(Sender: TObject);
Begin
   cdsemidoc.FieldByName('DDEDES').AsString := DMCXC.cdsCpto.FieldByName('CPTODES').AsString;
    //** 06/04/2001 - pjsv
   dbeDescri.Text := cdsemidoc.FieldByName('DDEDES').AsString;
    //**
End;

Procedure TFEmiDoc.bbtnRegOkClick(Sender: TObject);
Var
   xIclIgv, xIgv, xIsc: String;
   xconcepto, xdescri: String;
   xpretot: double;
Begin
   //** 01/03/2001 - pjsv
   xpretot := StrToFloat(dbePreTot.text);
   xIgv := 'N';
   xIsc := 'N';
   xIclIgv := 'S';
   If chbtotalIgv.Checked Then
      xIclIgv := 'I'
   Else
      If chbIGV.Checked Then
         xIgv := 'S'
      Else
         xIgv := 'N';
   If chbISC.Checked Then xIsc := 'S';
   //**
   // se guarda momentaneamente el codigo del concepto en la descripcion porque
   // no hay un campo en la tabla para el codigo. hasta preguntar a MARTIN
   cdsemidoc.FieldByName('CPTOID').AsString := dblcdConcepto.text;
   cdsemidoc.FieldByName('DDEDES').AsString := dbeDescri.text;
   cdsemidoc.FieldByName('DDECANT').AsString := dbeCantidad.text;
   //** 01/03/2001 - pjsv
 //  cdsemidoc.FieldByName('DDEPU').AsString :=  dbePreUni.text;
//   cdsemidoc.FieldByName('DDEPT').AsString :=  dbePreTot.text;
   //**
   cdsemidoc.FieldByName('DDEDES').AsString := dbeDescri.text;
   cdsemidoc.FieldByName('DDEIGV').AsString := xIgv;
   cdsemidoc.FieldByName('INCIGV').value := xIclIgv;
   cdsemidoc.FieldByName('DDEISC').AsString := xIsc;
   //** 01/03/2001 - pjsv
   If xIclIgv = 'I' Then
   Begin
      If (FloatToStr(xpretot) <> '') And (cdsemidoc.FieldByName('DDECANT').AsString <> '') Then
      Begin
         cdsemidoc.FieldByName('DDEPU').AsString := FloatToStrF((xpretot / 1.18) / cdsemidoc.FieldByName('DDECANT').value, ffFixed, 15, 2);
         cdsemidoc.FieldByName('DDEPT').value := (xpretot / 1.18);
      End;
   End
   Else
   Begin
      If (FloatToStr(xpretot) <> '') And (cdsemidoc.FieldByName('DDECANT').AsString <> '') Then
      Begin
         cdsemidoc.FieldByName('DDEPT').value := xpretot;
         cdsemidoc.FieldByName('DDEPU').AsString := FloatToStrF(cdsemidoc.FieldByName('DDEPT').Value / cdsemidoc.FieldByName('DDECANT').value, ffFixed, 15, 2);
      End;
   End;
   //**
   cdsemidoc.Post;
   xconcepto := cdsemidoc.FieldByName('CPTOID').AsString;
   xdescri := cdsemidoc.FieldByName('DDEDES').AsString;
   cdsEmidoc.Insert;
   cdsemidoc.FieldByName('CPTOID').AsString := xconcepto;
   cdsemidoc.FieldByName('DDEDES').AsString := xdescri;
   dbeCantidad.text := '';
   dbePreUni.text := '';
   dbePreTot.text := '';
   chbIgv.Checked := false;
   chbIsc.Checked := false;
   dbeDescri.setfocus;
//   bbtnRegCanc.Click;

End;

//** 21/02/2001 - pjsv - para borrar

Procedure TFEmiDoc.dbgEmiDocKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      If MessageDlg('¿Esta Seguro de Eliminar Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
//         DMCXC.cdsDetCxC.Delete;
         cdsEmiDoc.Delete;
      End;
   End;
End;
//**

Procedure TFEmiDoc.dbgEmiDocDblClick(Sender: TObject);
Begin
   If cdsEmidoc.RecordCount > 0 Then
   Begin
      dbgEmiDoc.Enabled := false;
      Z2bbtnGraba.Enabled := false;
      Z2bbtnSalir.Enabled := false;
      cdsEmidoc.Edit;
      dbeDescri.text := '';
      dbeCantidad.text := '';
      dbePreUni.text := '';
      dbePreTot.text := '';
      chbIgv.Checked := false;
      chbIsc.Checked := false;
      dblcdConcepto.Value := '';
      DMCXC.cdsCpto.Open;
      dblcdConcepto.text := cdsemidoc.FieldByName('CPTOID').AsString;
      dbeDescri.text := cdsemidoc.FieldByName('DDEDES').AsString;
      dbeCantidad.text := cdsemidoc.FieldByName('DDECANT').AsString;
      dbePreUni.text := FormatFloat('#,0.00', cdsemidoc.FieldByName('DDEPU').value);
      If cdsemidoc.FieldByName('INCIGV').AsString <> 'I' Then
         dbePreTot.text := FormatFloat('#,0.00', cdsemidoc.FieldByName('DDEPT').value)
      Else
      Begin
         dbePreTot.text := cdsemidoc.FieldByName('DDEPT').value + (cdsemidoc.FieldByName('DDEPT').value * 0.18);
         cdsemidoc.FieldByName('DDEPT').value := dbePreTot.text;
      End;
      dbeDescri.text := cdsemidoc.FieldByName('DDEDES').AsString;
      If (cdsemidoc.FieldByName('DDEIGV').AsString <> 'S') And (cdsemidoc.FieldByName('INCIGV').AsString <> 'I') Then
         chbIGV.enabled := True
      Else
         chbIGV.enabled := cdsemidoc.FieldByName('DDEIGV').AsString = 'S';
      chbIGV.Checked := cdsemidoc.FieldByName('DDEIGV').AsString = 'S';
      chbtotalIgv.Checked := cdsemidoc.FieldByName('INCIGV').AsString = 'I';
      chbISC.Checked := cdsemidoc.FieldByName('DDEISC').AsString = 'S';
      pnlConcepto.Visible := True;
   End;
End;

Procedure TFEmiDoc.chbtotalIgvClick(Sender: TObject);
Begin
   If chbtotalIgv.Checked Then
   Begin
      chbIGV.enabled := false;
      chbIGV.Checked := false;
   End
   Else
      chbIGV.enabled := true;
End;

Procedure TFEmiDoc.dbeCantidadExit(Sender: TObject);
Begin
   If dbePreTot.text = '0.00' Then
      cdsemidoc.FieldByName('DDEPT').AsString := '';
End;

Procedure TFEmiDoc.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFEmiDoc.CargaDataSource;
Begin
   dbgEmiDoc.DataSource := dsEmidoc;
   dblcdConcepto.LookupTable := DMCXC.cdsCpto;
End;

End.

