Unit CXCUTIL;

Interface

Uses wwdblook, wwClient, StdCtrls, SysUtils, Classes, extCtrls, buttons, controls,
   forms, db, dbclient, wwDBDlg, WWdBeDIT, wwDBDateTimePicker, DIALOGS, variants;

Procedure RecuperarCiaUnica(ComboLookUp: TwwDBLookupCombo; Edicion: TCustomEdit);
Function IsNumeric(S: String): Boolean;
Function EsFecha(S: String): Boolean;
Function strMes(Fecha: TDateTime): String;
Function strDia(Fecha: TDateTime): String;
Function strAno(Fecha: TDateTime): String;
Function DiasMes(wMes, wAno: word): Byte;
Function RecuperaNumero(S: String): Double;
Function EncuentraDuplicado(cds: TwwclientDataset; Campo, Clave: String): Boolean;
Function StrNum(wNumero: Double): String;
Procedure ValidaEdit(ctrl: TCustomEdit; Mensaje: String);
Procedure Quita(Var A1: Array Of Integer; Var A2: Array Of TNotifyEvent; Pnl: TPanel);
Procedure Pon(A1: Array Of Integer; A2: Array Of TNotifyEvent; Pnl: TPanel);
Function BotonesEnPanel(pnl: TPanel): INteger;
Function FechaDB2(Fecha: TDateTime): String;
Procedure ActivaBotones(pnl: TPanel; xFlag: Boolean);
Procedure HabilitaEdits(pnl: TPanel; xFlag: Boolean);
Procedure HabilitaControles(A: Array Of TWinControl);
Procedure DesHabilitaControles(A: Array Of TWinControl);
Procedure BlanqueaEdits(xPnl: TPanel);
Procedure BlanqueaEditsEnForm(frm: TForm; pnl: Tpanel = Nil; gbx: TGroupBox = Nil);
Function CajaDec(xNumero: String; Digitos: Integer = 2): String;
Function CmpDec(xNum1, xNum2: String): Integer;
Function DifDec(xNum1, xNum2: String): String;
Function Redondea(xReal: double; Digitos: Integer = 2): Currency;
Function AplicaKeyPress(Frm: TForm; A2digitos, A4digitos: Array Of TWinControl): Boolean;
//////////////
Function OperClientDataSet(ClientDataSet: TwwClientDataSet;
   Expression, Condicion: String): Double;
Procedure ControlFocoEntrada(control: TCustomEdit; Evento: TNotifyEvent);
Procedure ControlFocoSalida(Forma: TForm; control: TCustomEdit; Evento: TNotifyEvent);

Procedure xxExit(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit; A: Array Of TwinControl;
   M: String; Genero: String = '0'; Obligatorio: Boolean = True);
Procedure xxExit2(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit; A: Array Of TwinControl;
   M: String; Genero: String = '0'; Obligatorio: Boolean = True);
Function EncuentraDescCampos(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit; xAdicional: String): String;
Function EncuentraDescripcion(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit): String;
Procedure EncuentraDescripAdic(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit; Var A: Array Of String);
Function EncuentraDescripcionRpta(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit): String;
Function RecuperarDatos(xTabla, xCampos, xWhere: String): Boolean;
Function DisplayDescripLocal(cds: TwwClientdataset; xCodigo, xDato, xMostrar: String): String;
Function FieldNoNulo(xCampo: TField): String;
Function FRoundL(xReal: currency; xEnteros, xDecimal: Integer): double;

/////////////

Resourcestring
   BLANCO = '';

Implementation

Uses CXCDM;

Procedure RecuperarCiaUnica(ComboLookUp: TwwDBLookupCombo; Edicion: TCustomEdit);
Begin
   If DMCXC.cdsCia.Active = true Then
      If DMCXC.cdsCia.recordcount = 1 Then
      Begin
         DMCXC.cdsCia.first;
         ComboLookUp.Text := DMCXC.cdsCia.fieldbyname('CIAID').AsString;
         ComboLookUp.Enabled := FALSE;
         Edicion.text := DMCXC.cdsCia.fieldbyname('CIAABR').AsString;
      End
      Else
      Begin
         ComboLookUp.Enabled := true;
         ComboLookUp.text := '';
         Edicion.text := '';
         Try
            ComboLookUp.SetFocus
         Except
         End;
      End;
End;

Function IsNumeric(S: String): Boolean;
Var
   xCodigo: Integer;
   xReal: Double;
Begin
   Result := False;
   If S = '.' Then
      exit;
   Val(S, xReal, xCodigo);
   If xCodigo <> 0 Then
      exit;
   result := True;
End;

Function RecuperaNumero(S: String): Double;
Begin
   result := 0;
   If S = '' Then
      exit;
   result := strtofloat(s);
End;

Function EncuentraDuplicado(cds: TwwclientDataset; Campo, Clave: String): Boolean;
Var
   cdsClone: TwwClientdataset;
Begin
   Try
      result := False;
      cdsClone := TwwClientDataSet.Create(Nil);
      cdsClone.CloneCursor(cds, false);
      Result := cdsClone.Locate(Campo, Clave, []);
   Finally
      cdsClone.free;
   End;
End;

Function DiasMes(wMes, wAno: word): Byte;
Begin
   Case wMes Of
      1, 3, 5, 7, 8, 10, 12: Result := 31;
      4, 6, 9, 11: Result := 30;
      2: REsult := 28 + Byte(IsLeapYear(wAno));
   End;
End;

Function StrNum(wNumero: double): String;
Var
   xNumStr, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12: String;
   xGrupo, xTotal, xDecimal: String;
   xLargo, xVeces: integer;
   xcontador: integer;
Begin
 // w1 para Unidades
   xNumStr := floattostr(int(wNumero));
   For xcontador := 1 To Length(FloatToStr(wNumero)) Do
   Begin
      If copy(FloatToStr(wNumero), xcontador, 1) = '.' Then
      Begin
         xDecimal := copy(FloatToStr(wNumero), xcontador + 1, Length(FloatToStr(wNumero)));
         break;
      End;
   End;
//  xDecimal:= floattostr(wNumero-int(wNumero));

   If wNumero - int(wNumero) > 0 Then
   Begin
//  	if strtoint(copy(xDecimal,Length(xDecimal),1)) >= 5 then
    //** 02/01/2001 - pjsv
{    if copy(xDecimal,Length(xDecimal),1) <> '' then
    //**
     if strtoint(copy(xDecimal,Length(xDecimal),1)) >= 5 then
       xDecimal := inttostr(strtoint(copy(xDecimal,3,2))+1)
      else	xDecimal := copy(xDecimal,3,2)
    //** 02/01/2001 - pjsv
    else 	xDecimal := copy(xDecimal,3,2);
    //**
}
   End
   Else
   Begin
      xDecimal := '00';
   End;
  //** 02/01/2001 - pjsv
   If length(xdecimal) = 1 Then xdecimal := xdecimal + '0';
  //**
   xDecimal := ' y ' + xDecimal + '/100';
   xLargo := length(xNumStr);
   x1 := '';
   x2 := '';
   x3 := '';
   x4 := '';
   x5 := '';
   x6 := '';
   x7 := '';
   x8 := '';
   x9 := '';
   x10 := '';
   If xLargo >= 1 Then x1 := copy(xNumStr, xLargo, 1);
   If xLargo >= 2 Then x2 := copy(xNumStr, xLargo - 1, 1);
   If xLargo >= 3 Then x3 := copy(xNumStr, xLargo - 2, 1);
   If xLargo >= 4 Then x4 := copy(xNumStr, xLargo - 3, 1);
   If xLargo >= 5 Then x5 := copy(xNumStr, xLargo - 4, 1);
   If xLargo >= 6 Then x6 := copy(xNumStr, xLargo - 5, 1);
   If xLargo >= 7 Then x7 := copy(xNumStr, xLargo - 6, 1);
   If xLargo >= 8 Then x8 := copy(xNumStr, xLargo - 7, 1);
   If xLargo >= 9 Then x9 := copy(xNumStr, xLargo - 8, 1);
   If xLargo >= 10 Then x10 := copy(xNumStr, xLargo - 9, 1);
   If xLargo >= 11 Then x11 := copy(xNumStr, xLargo - 10, 1);
   If xLargo >= 12 Then x12 := copy(xNumStr, xLargo - 11, 1);
   xVeces := 1;
   xTotal := '';
   While xVeces <= 4 Do // hasta 999,999'999,999
   Begin
      If xVeces = 2 Then
      Begin
         x1 := x4;
         x2 := x5;
         x3 := x6;
      End;
      If xVeces = 3 Then
      Begin
         x1 := x7;
         x2 := x8;
         x3 := x9;
      End;
      If xVeces = 4 Then
      Begin
         x1 := x10;
         x2 := x11;
         x3 := x12;
      End;
      If x2 = '1' Then // del 11 a 19
      Begin
         If x1 = '0' Then x2 := 'DIEZ';
         If x1 = '1' Then x2 := 'ONCE';
         If x1 = '2' Then x2 := 'DOCE';
         If x1 = '3' Then x2 := 'TRECE';
         If x1 = '4' Then x2 := 'CATORCE';
         If x1 = '5' Then x2 := 'QUINCE';
         If x1 = '6' Then x2 := 'DIECISEIS';
         If x1 = '7' Then x2 := 'DIECISIETE';
         If x1 = '8' Then x2 := 'DIECIOCHO';
         If x1 = '9' Then x2 := 'DIECINUEVE';
         x1 := '0';
      End
      Else
      Begin // del 0 al 9
         If x1 = '1' Then x1 := 'UNO';
         If (xVeces > 1) And (x1 = 'UNO') Then x1 := 'UN';
         If x1 = '2' Then x1 := 'DOS';
         If x1 = '3' Then x1 := 'TRES';
         If x1 = '4' Then x1 := 'CUATRO';
         If x1 = '5' Then x1 := 'CINCO';
         If x1 = '6' Then x1 := 'SEIS';
         If x1 = '7' Then x1 := 'SIETE';
         If x1 = '8' Then x1 := 'OCHO';
         If x1 = '9' Then x1 := 'NUEVE';
         If x2 = '2' Then
         Begin // veinte
            x2 := 'VEINTI';
            If x1 = '0' Then x2 := 'VEINTE';
         End;
         If x2 = '3' Then
         Begin
            x2 := 'TREINTI';
            If x1 = '0' Then x2 := 'TREINTA';
         End;
         If x2 = '4' Then
         Begin
            x2 := 'CUARENTI';
            If x1 = '0' Then x2 := 'CUARENTA';
         End;
         If x2 = '5' Then
         Begin
            x2 := 'CINCUENTI';
            If x1 = '0' Then x2 := 'CINCUENTA';
         End;
         If x2 = '6' Then
         Begin
            x2 := 'SESENTI';
            If x1 = '0' Then x2 := 'SESENTA';
         End;
         If x2 = '7' Then
         Begin
            x2 := 'SETENTI';
            If x1 = '0' Then x2 := 'SETENTA';
         End;
         If x2 = '8' Then
         Begin
            x2 := 'OCHENTI';
            If x1 = '0' Then x2 := 'OCHENTA';
         End;
         If x2 = '9' Then
         Begin
            x2 := 'NOVENTI';
            If x1 = '0' Then x2 := 'NOVENTA';
         End;
      End;
      If x3 = '1' Then x3 := 'CIENTO';
      If (x2 = '0') And (x1 = '0') And (x3 = 'CIENTO') Then
         x3 := 'CIEN';
      If x3 = '2' Then x3 := 'DOSCIENTOS';
      If x3 = '3' Then x3 := 'TRESCIENTOS';
      If x3 = '4' Then x3 := 'CUATROCIENTOS';
      If x3 = '5' Then x3 := 'QUINIENTOS';
      If x3 = '6' Then x3 := 'SEISCIENTOS';
      If x3 = '7' Then x3 := 'SETECIENTOS';
      If x3 = '8' Then x3 := 'OCHOCIENTOS';
      If x3 = '9' Then x3 := 'NOVECIENTOS';
      xGrupo := '';
   //xGrupo := x3;
      If x3 <> '0' Then xGrupo := x3;
      If x2 <> '0' Then xGrupo := xGrupo + ' ' + x2;
      If x1 <> '0' Then xGrupo := xGrupo + x1;
      If ((xVeces = 2) Or (xVeces = 4)) And (length(xGrupo) > 1) Then
      Begin
         xGrupo := xGrupo + ' MIL';
      End;
      If (xVeces = 3) And (length(xGrupo) > 1) Then
      Begin
         If x1 <> 'UN' Then
            xGrupo := xGrupo + ' MILLONES'
         Else
         Begin
            xGrupo := xGrupo + ' MILLÓN';
         End;
      End;
      If length(xTotal) > 0 Then xGrupo := xGrupo + ' ';
      xTotal := xGrupo + xTotal;
      xVeces := xVeces + 1;
   End;
   result := xTotal + xDecimal;
End;

/////////////////////////////////////////////////

Function FRoundL(xReal: currency; xEnteros, xDecimal: Integer): double;
Var
   xNum, xParteEnt, xParteDec: String;
   xDec, Code: Integer;
   xMultiplo10, xUltdec, xNReal: Double;
Begin
   If xReal = 0 Then exit;
// primer redondeo a un decimal + de lo indicado en los parámetros
   xDec := xDecimal + 1;
   If xDec = 0 Then xMultiplo10 := 1;
   If xDec = 1 Then xMultiplo10 := 10;
   If xDec = 2 Then xMultiplo10 := 100;
   If xDec = 3 Then xMultiplo10 := 1000;
   If xDec = 4 Then xMultiplo10 := 10000;
   If xDec = 5 Then xMultiplo10 := 100000;
   If xDec = 6 Then xMultiplo10 := 1000000;
   If xDec = 7 Then xMultiplo10 := 10000000;
   xParteDec := floattostr(int(xReal * xMultiplo10 - (int(xReal) * xMultiplo10)));
   If length(xParteDec) >= xDec Then
      xultdec := strtofloat(copy(xParteDec, xDec, 1))
   Else
   Begin
      xUltDec := 0;
   End;
   xNReal := int(xReal * xMultiplo10 / 10);
   If xultdec >= 5 Then xNReal := xNReal + 1;
   Result := xNReal / (xMultiplo10 / 10);
End;
//////////////////////////////////////////////////

Procedure ValidaEdit(ctrl: TCustomEdit; Mensaje: String);
Begin
   If trim(ctrl.Text) = '' Then
   Begin
      ctrl.SetFocus;
      Raise Exception.create(Mensaje);
   End;
End;

Function strDia;
Var
   Year, Month, Day: Word;
Begin

   If Fecha = 0 Then
      Result := ''
   Else
   Begin
      DecodeDate(Fecha, Year, Month, Day);
      Result := Strzero(inttostr(Day), 2);
   End;
End;

Function strMes;
Var
   Year, Month, Day: Word;
Begin

   If Fecha = 0 Then
      Result := ''
   Else
   Begin
      DecodeDate(Fecha, Year, Month, Day);
      Result := Strzero(inttostr(Month), 2);
   End;
End;

Function strAno;
Var
   Year, Month, Day: Word;
Begin

   If Fecha = 0 Then
      Result := ''
   Else
   Begin
      DecodeDate(Fecha, Year, Month, Day);
      Result := Strzero(inttostr(Year), 4);
   End;
End;

Function EsFecha(S: String): Boolean;
Var
   tmpFecha: TDateTime;
Begin
   Try
      tmpFecha := strtodatetime(s);
      Result := True;
   Except
      Result := False;
   End;
End;

Procedure Pon(A1: Array Of Integer;
   A2: Array Of TNotifyEvent; Pnl: TPanel);
Var
   I: Integer;
   Btn: TBitBtn;
Begin
   For i := low(A1) To HIGH(A1) Do
   Begin
//      showmessage(A1[i]) ;
//      Btn := TBitBtn(pnl.FindComponent(A1[i])) ;
      Btn := TBitBtn(pnl.controls[A1[i]]);
      Btn.OnClick := A2[i];
   End;
End;

Procedure Quita;
Var
   i, Contador: INteger;
Begin

   Contador := 0;
   For i := 0 To pnl.ControlCount - 1 Do
   Begin
      If pnl.Controls[i] Is tbitbtn Then
      Begin
         A1[contador] := i;
         A2[contador] := (pnl.Controls[i] As TBitBtn).OnClick;
         (pnl.Controls[i] As TBitBtn).OnClick := Nil;
         Contador := Contador + 1;
      End;
   End;

End;

Function BotonesEnPanel(pnl: TPanel): INteger;
Var
   i: Integer;
   Contador: Integer;
Begin
   Result := 0;
   For i := 0 To pnl.ControlCount - 1 Do
   Begin
      If pnl.Controls[i] Is tbitbtn Then
         Result := Contador + 1;
   End;
End;

Procedure ActivaBotones(pnl: TPanel; xFlag: Boolean);
Var
   i: Integer;
Begin
   For i := 0 To pnl.ControlCount - 1 Do
   Begin
      If pnl.controls[i] Is tbitbtn Then
         TBitBtn(pnl.controls[i]).enabled := xFlag;
   End;
End;

Function FechaDB2(Fecha: TDateTime): String;
Begin
   Result := formatdatetime('yyyy-mm-dd', Fecha);
End;

Procedure HabilitaControles;
Var
   I: Integer;
Begin
   For i := low(A) To HIGH(A) Do
   Begin
      A[i].Enabled := True;
   End;
End;

Procedure DesHabilitaControles;
Var
   I: Integer;
Begin
   For i := low(A) To HIGH(A) Do
   Begin
      A[i].Enabled := False;
   End;
End;

Procedure BlanqueaEdits(xPnl: TPanel);
Var
   i: Integer;
Begin
   For i := 0 To xpnl.ControlCount - 1 Do
   Begin
      If xpnl.controls[i] Is TCustomEdit Then
         TCustomEdit(xpnl.controls[i]).Text := '';
   End;
End;

Function CajaDec(xNumero: String; Digitos: Integer = 2): String;
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
      Result := BLANCO;
   End
   Else
   Begin
      Result := xNumTmp;
   End;
End;

Function CmpDec(xNum1, xNum2: String): Integer;
Var
   xCurr1, xCurr2: Currency;
Begin
   xCurr1 := strtocurr(xNum1);
   xCurr2 := strToCurr(xNum2);

   If xCurr1 < xCurr2 Then
      Result := -1
   Else
      If xCurr1 = xCurr2 Then
         Result := 0
      Else
         Result := 1
End;

Function DifDec(xNum1, xNum2: String): String;
Var
   xCurr1, xCurr2, xCurr: Currency;
Begin
   xCurr1 := strtocurr(xNum1);
   xCurr2 := strToCurr(xNum2);
   xCurr := (xCurr1 - xCurr2);
   Result := CajaDec(currtostr(xCurr));
End;

Function Redondea(xReal: double; Digitos: Integer = 2): Currency;
Begin
   result := strtocurr(floattostrf(xReal, fffixed, 10, digitos));
End;
///

Procedure BlanqueaEditsEnForm;
Var
   i: integer;
Begin
   If (pnl = Nil) And (gbx = Nil) Then
   Begin
      For i := 0 To frm.ControlCount - 1 Do
      Begin
         If (frm.Controls[i] Is TCustomedit) Then
            TCustomedit(frm.Controls[i]).Text := ''
         Else
            If (frm.Controls[i] Is TPanel) Then
               BlanqueaEditsEnForm(Nil, TPanel(frm.Controls[i]))
            Else
               If frm.Controls[i] Is TGroupBox Then
                  BlanqueaEditsEnForm(Nil, Nil, TGroupBox(frm.Controls[i]))
      End;
   End
   Else
      If pnl <> Nil Then
      Begin
         For i := 0 To pnl.ControlCount - 1 Do
         Begin
            If pnl.Controls[i] Is TCustomedit Then
               TCustomedit(pnl.Controls[i]).Text := ''
            Else
               If pnl.Controls[i] Is TPanel Then
                  BlanqueaEditsEnForm(Nil, TPanel(pnl.Controls[i]), Nil)
               Else
                  If pnl.Controls[i] Is TGroupBox Then
                     BlanqueaEditsEnForm(Nil, Nil, TGroupBox(pnl.Controls[i]))
         End;
      End
      Else
      Begin
         For i := 0 To gbx.ControlCount - 1 Do
         Begin
            If gbx.Controls[i] Is TCustomedit Then
               TCustomedit(gbx.Controls[i]).Text := ''
            Else
               If gbx.Controls[i] Is TPanel Then
                  BlanqueaEditsEnForm(Nil, TPanel(gbx.Controls[i]), Nil)
               Else
                  If gbx.Controls[i] Is TGroupBox Then
                     BlanqueaEditsEnForm(Nil, Nil, TGroupBox(gbx.Controls[i]))
         End;
      End;
End;

Function OperClientDataSet(ClientDataSet: TwwClientDataSet;
   Expression, Condicion: String): Double;
Var
   cdsClone: TwwClientDataSet;
   bmk: TBookmark;
   Agg: TAggregate;
Begin
   result := 0;
   If trim(Expression) = '' Then Exit;
   bmk := ClientDataSet.GetBookmark;
   cdsClone := TwwClientDataSet.Create(Nil);
   Try
      With cdsClone Do
      Begin
         CloneCursor(ClientDataSet, True);
         Agg := Aggregates.Add;
         Agg.AggregateName := 'OPER';
         Agg.Expression := Expression;
         Agg.Active := True;
         If Trim(Condicion) <> '' Then
         Begin
            Filtered := False;
            Filter := Condicion;
            Filtered := True;
         End;
         If Aggregates.Items[Aggregates.IndexOf('OPER')].Value <> NULL Then
            result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;
         Aggregates.Clear;
      End;
      ClientDataSet.GotoBookmark(bmk);
      ClientDataSet.FreeBookmark(bmk);
   Finally
      cdsClone.Free;
   End;
End;

Function AplicaKeyPress(Frm: TForm; A2digitos, A4digitos: Array Of TWinControl): Boolean;
Var
   I, J: Integer;
Begin
   Result := False;
   If length(A2digitos) <> 0 Then
   Begin
      J := 0;
      For i := 0 To high(A2digitos) Do
      Begin
         If frm.ActiveControl = A2digitos[i] Then
            break;
         J := j + 1
      End;
      If (j <= High(A2digitos)) Then
      Begin
         Result := True;
         Exit;
      End;
   End;

   If length(A4digitos) <> 0 Then
   Begin
      J := 0;
      For i := 0 To high(A4digitos) Do
      Begin
         If frm.ActiveControl = A4digitos[i] Then
            break;
         J := j + 1
      End;
      If (j <= High(A4digitos)) Then
      Begin
         Result := True;
         Exit;
      End;
   End;

End;

/////////////////////
/////////////////////
/////////////////////

Procedure ControlFocoEntrada(control: TCustomEdit;
   Evento: TNotifyEvent);
Begin
{
   if Assigned(Evento) then
   begin
       if control is TwwDBLookUpComboDlg then
       begin
          TwwDBLookUpComboDlg(control).OnExit := Evento ;
          Exit ;
       end ;
       if control is TwwDBLookUpCombo then
       begin
          TwwDBLookUpCombo(control).OnExit := Evento ;
          exit ;
       end ;
       if control is TwwDBEdit then
       begin
          TwwDBEdit(control).OnExit := Evento ;
          Exit ;
       end ;
       if control is TwwDBDateTimePicker then
       begin
          TwwDBDateTimePicker(control).OnExit := Evento ;
          Exit ;
       end ;
   end ;
}
End;

Procedure ControlFocoSalida(Forma: TForm; control: TCustomEdit;
   Evento: TNotifyEvent);
Var
   ctrlLookDlg: TwwDBLookUpComboDlg;
   ctrlLookCbo: TwwDBLookUpCombo;
   ctrlEdit: TwwDBEdit;
   ctrlDate: TwwDBDateTimePicker;
Begin

   If (Not (Forma.ActiveControl Is TwwDBCustomLookUpCombo)) And
      (Not (Forma.ActiveControl Is TwwDBCustomEdit)) And
      (Not (Forma.ActiveControl Is TwwDBdateTimePicker)) Then
   Begin
      control := Nil;
      evento := Nil;
      Exit;
   End;
    //CASO DE COMBO DIALOGO
   If Forma.ActiveControl Is TwwDBLookUpComboDlg Then
   Begin
      ctrlLookDlg := TwwDBLookUpComboDlg(Forma.ActiveControl);
      If Assigned(ctrlLookDlg.OnExit) Then
      Begin
         Evento := ctrlLookDlg.onexit;
         control := TCustomEdit(ctrlLookDlg);
         ctrlLookDlg.onexit := Nil;
      End
      Else
      Begin
         Evento := Nil;
         control := Nil;
      End;
      Exit;
   End;

    //Caso de Combo
   If Forma.ActiveControl Is TwwDBLookUpCombo Then
   Begin
      ctrlLookCbo := TwwDBLookUpCombo(Forma.ActiveControl);
      If Assigned(ctrlLookCbo.OnExit) Then
      Begin
         Evento := ctrlLookCbo.onexit;
         control := TCustomEdit(ctrlLookCbo);
         ctrlLookCbo.onexit := Nil;
      End
      Else
      Begin
         Evento := Nil;
         control := Nil;
      End;
      Exit;
   End;

    //Caso de Edit
   If Forma.ActiveControl Is TwwDBLookUpComboDlg Then
   Begin
      ctrlEdit := TwwDBEdit(Forma.ActiveControl);
      If Assigned(ctrlEdit.OnExit) Then
      Begin
         Evento := ctrlEdit.onexit;
         control := TCustomEdit(ctrlEdit);
         ctrledit.onexit := Nil;
      End
      Else
      Begin
         Evento := Nil;
         control := Nil;
      End;
      Exit;
   End;

    //caso de date time picker
   If Forma.ActiveControl Is TwwDBDateTimePicker Then
   Begin
      ctrlDate := TwwDBDateTimePicker(Forma.ActiveControl);
      If Assigned(ctrldate.OnExit) Then
      Begin
         Evento := ctrldate.onexit;
         control := TCustomEdit(ctrlDate);
         ctrlDate.onexit := Nil;
      End
      Else
      Begin
         Evento := Nil;
         control := Nil;
      End;
      Exit;
   End;

End;

Procedure xxExit;
{
( dblcX:TwwDBCustomLookUpCombo; dbeX : TCustomEDit ; A : Array of TwinControl ;
                      M :  String ; Genero : String = '0';Obligatorio : Boolean = True );
}
Var
   i: Byte;
   xGenero: String;
Begin

   If length(A) <> 0 Then
      For i := 0 To high(A) Do
      Begin
         If a[i].Focused Then
            exit;
      End;

   If dbeX.Text = '' Then
   Begin

      If dblcX.Text = '' Then
         ShowMessage('Ingrese ' + M)
      Else
      Begin

         If Genero = '0' Then
            xGenero := Copy(M, Length(M), 1)
         Else
            xGenero := Genero;

         If AnsiUpperCase(xGenero) = 'A' Then
         Begin
            ShowMessage('La ' + M + ' Que ha Ingresado ' + #13 +
               'No está registrada');
         End
         Else
         Begin
            ShowMessage('El ' + M + ' Que ha Ingresado ' + #13 +
               'No está registrado');
         End;

         //Nuevos comentarios de william manrique cautin
         dblcX.Text := ''
      End;
      If Obligatorio Then
         (dblcX).SetFocus;
   End
End;

Procedure xxExit2(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit;
   A: Array Of TwinControl; M, Genero: String; Obligatorio: Boolean);
Var
   i: Byte;
   xGenero: String;
Begin

   If length(A) <> 0 Then
      For i := 0 To high(A) Do
      Begin
         If a[i].Focused Then
            exit;
      End;

   If dbeX.Tag = 0 Then
   Begin

      If dblcX.Text = '' Then
         ShowMessage('Ingrese ' + M)
      Else
      Begin

         If Genero = '0' Then
            xGenero := Copy(M, Length(M), 1)
         Else
            xGenero := Genero;

         If AnsiUpperCase(xGenero) = 'A' Then
         Begin
            ShowMessage('La ' + M + ' Que ha Ingresado ' + #13 +
               'No está registrada');
         End
         Else
         Begin
            ShowMessage('El ' + M + ' Que ha Ingresado ' + #13 +
               'No está registrado');
         End;

         //Nuevos comentarios de william manrique cautin
         dblcX.Text := ''
      End;
      If Obligatorio Then
         (dblcX).SetFocus;
   End
End;

Function EncuentraDescCampos(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit; xAdicional: String): String;
Var
   CODIGO,
      DESCRIPCION,
      xTabla,
      xCampos,
      xWhere: String;
   LongitudCadena: Integer;
Begin

   If Not dblcX.Focused Then
      exit;

   With DMCXC.cdsCDSLookUp Do
   Begin
      first;

      If Not Locate('CDS', AnsilowerCase(dblcX.LookupTable.Name), []) Then
      Begin
         ShowMessage('Error');
         Exit;
      End;

      CODIGO := FieldByName('CAMPOCODIGO').AsString;

      If FieldByName('FCAMPOMOSTRAR').AsString = 'A' Then
         DESCRIPCION := FieldByName('CAMPOABR').AsString
      Else
         DESCRIPCION := FieldByName('CAMPODES').AsString;

      LongitudCadena := FieldByName('MEDIDA').AsInteger;

      If length(dblcX.Text) >= LongitudCadena Then
      Begin
         If FieldByName('TIPO').AsString = 'L' Then
         Begin
            If Not dblcX.LookupTable.Locate(CODIGO, VarArrayOf([xAdicional, dblcX.Text]), []) Then
            Begin
               dbeX.text := '';
            End
            Else
            Begin
               dbeX.text := dblcX.LookupTable.fieldbyname(DESCRIPCION).AsString;
            End;
         End
      End
      Else
      Begin
         dbeX.text := '';
      End;
   End;

End;

Function EncuentraDescripcion(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit): String;
Var
   CODIGO,
      DESCRIPCION,
      xTabla,
      xCampos,
      xWhere: String;
   LongitudCadena,
      LongitudInf: Integer;
Begin

   If Not dblcX.Focused Then
      exit;

   With DMCXC.cdsCDSLookUp Do
   Begin
      first;

      If Not Locate('CDS', AnsilowerCase(dblcX.LookupTable.Name), []) Then
      Begin
         ShowMessage('Error');
         Exit;
      End;

      CODIGO := FieldByName('CAMPOCODIGO').AsString;

      If FieldByName('FCAMPOMOSTRAR').AsString = 'A' Then
         DESCRIPCION := FieldByName('CAMPOABR').AsString
      Else
         DESCRIPCION := FieldByName('CAMPODES').AsString;

      If FieldByName('MEDIDA').AsInteger <> 0 Then
      Begin
         LongitudCadena := FieldByName('MEDIDA').AsInteger;

         If FieldByName('MEDIDAINF').AsInteger <> 0 Then
         Begin
            LongitudInf := FieldByName('MEDIDAINF').AsInteger;
         End
         Else
            LongitudInf := LongitudCadena;
      End
      Else
      Begin
         LongitudCadena := dblcX.LookupTable.FieldByName(CODIGO).Size;
         LongitudInf := LongitudCadena;
      End;

      If (length(dblcX.Text) >= LongitudInf) And (length(dblcX.Text) <= LongitudCadena) Then
      Begin
         If dblcX.Text = dblcX.LookupTable.FieldByName(CODIGO).AsString Then
         Begin
            If dbeX.Text <> dblcX.LookupTable.FieldByName(DESCRIPCION).AsString Then
            Begin
               dbeX.Text := dblcX.LookupTable.FieldByName(DESCRIPCION).AsString;
            End;
         End
         Else
         Begin
            If FieldByName('TIPO').AsString = 'L' Then
            Begin
               If Not dblcX.LookupTable.Locate(CODIGO, dblcX.Text, []) Then
               Begin
                  dbeX.text := '';
               End
               Else
               Begin
                  dbeX.text := dblcX.LookupTable.fieldbyname(DESCRIPCION).AsString;
               End;
            End
            Else
            Begin
                  //aqui se busca según SQL
               xTabla := FieldByName('TABLA').AsString;
               xCampos := '*';
               xWhere := CODIGO + '=''' + dblcX.Text + '''';
               DMCXC.DCOM1.AppServer.SQLSelect(xTabla, xCampos, xWhere);
               DMCXC.cdsRec.active := False;
               DMCXC.cdsRec.active := True;
               If DMCXC.cdsRec.RecordCount = 0 Then
               Begin
                  dbeX.text := '';
               End
               Else
               Begin
                  dbeX.text := DMCXC.cdsRec.fieldbyname(DESCRIPCION).AsString;
               End;

            End;
         End;
      End
      Else
      Begin
         dbeX.text := '';
      End;
   End;

End;

Procedure EncuentraDescripAdic(dblcX: TwwDBCustomLookUpCombo;
   dbeX: TCustomEDit; Var A: Array Of String);
Var
   CODIGO,
      DESCRIPCION,
      xTabla,
      xCampos,
      xWhere: String;
   LongitudCadena,
      LongitudInf, i: Integer;
Begin
   If Not dblcX.Focused Then
      exit;

   With DMCXC.cdsCDSLookUp Do
   Begin
      first;

      If Not Locate('CDS', AnsilowerCase(dblcX.LookupTable.Name), []) Then
      Begin
         ShowMessage('Error');
         Exit;
      End;

      CODIGO := FieldByName('CAMPOCODIGO').AsString;

      If FieldByName('FCAMPOMOSTRAR').AsString = 'A' Then
         DESCRIPCION := FieldByName('CAMPOABR').AsString
      Else
         DESCRIPCION := FieldByName('CAMPODES').AsString;

      If FieldByName('MEDIDA').AsInteger <> 0 Then
      Begin
         LongitudCadena := FieldByName('MEDIDA').AsInteger;

         If FieldByName('MEDIDAINF').AsInteger <> 0 Then
         Begin
            LongitudInf := FieldByName('MEDIDAINF').AsInteger;
         End
         Else
            LongitudInf := LongitudCadena;
      End
      Else
      Begin
         LongitudCadena := dblcX.LookupTable.FieldByName(CODIGO).Size;
         LongitudInf := LongitudCadena;
      End;

      If (length(dblcX.Text) >= LongitudInf) And (length(dblcX.Text) <= LongitudCadena) Then
      Begin
         If dblcX.Text = dblcX.LookupTable.FieldByName(CODIGO).AsString Then
         Begin
            If dbeX.Text <> dblcX.LookupTable.FieldByName(DESCRIPCION).AsString Then
            Begin
               dbeX.Text := dblcX.LookupTable.FieldByName(DESCRIPCION).AsString;
            End;
                 ///
            If length(A) <> 0 Then
               For i := low(A) To High(A) Do
               Begin
                  Try
                     A[i] := dblcX.LookupTable.FieldByName(a[i]).AsString;
                  Except
                     A[i] := '';
                  End;
               End;
                 ///
         End
         Else
         Begin
            If FieldByName('TIPO').AsString = 'L' Then
            Begin
               If Not dblcX.LookupTable.Locate(CODIGO, dblcX.Text, []) Then
               Begin
                  dbeX.text := '';
               End
               Else
               Begin
                  dbeX.text := dblcX.LookupTable.fieldbyname(DESCRIPCION).AsString;
                           ///
                  If length(A) <> 0 Then
                     For i := low(A) To High(A) Do
                     Begin
                        Try
                           A[i] := dblcX.LookupTable.FieldByName(a[i]).AsString;
                        Except
                           A[i] := '';
                        End;
                     End;
                           ///
               End;
            End
            Else
            Begin
                  //aqui se busca según SQL
               xTabla := FieldByName('TABLA').AsString;
               xCampos := '*';
               xWhere := CODIGO + '=''' + dblcX.Text + '''';
               DMCXC.DCOM1.AppServer.SQLSelect(xTabla, xCampos, xWhere);
               DMCXC.cdsRec.active := False;
               DMCXC.cdsRec.active := True;
               If DMCXC.cdsRec.RecordCount = 0 Then
               Begin
                  dbeX.text := '';
               End
               Else
               Begin
                  dbeX.text := DMCXC.cdsRec.fieldbyname(DESCRIPCION).AsString;
                           ///
                  If length(A) <> 0 Then
                     For i := low(A) To High(A) Do
                     Begin
                        Try
                           A[i] := DMCXC.cdsRec.FieldByName(a[i]).AsString;
                        Except
                           A[i] := '';
                        End;
                     End;
                           ///
               End;
            End;
         End;
      End
      Else
      Begin
         dbeX.text := '';
      End;
   End;
End;

Function EncuentraDescripcionRpta(dblcX: TwwDBCustomLookUpCombo; dbeX: TCustomEDit): String;
Var
   CODIGO,
      DESCRIPCION,
      xTabla,
      xCampos,
      xWhere: String;
   LongitudCadena,
      LongitudInf: Integer;
Begin

   If Not dblcX.Focused Then
      exit;

   With DMCXC.cdsCDSLookUp Do
   Begin
      first;

      If Not Locate('CDS', AnsilowerCase(dblcX.LookupTable.Name), []) Then
      Begin
         ShowMessage('Error');
         Exit;
      End;

      CODIGO := FieldByName('CAMPOCODIGO').AsString;

      If FieldByName('FCAMPOMOSTRAR').AsString = 'A' Then
         DESCRIPCION := FieldByName('CAMPOABR').AsString
      Else
         DESCRIPCION := FieldByName('CAMPODES').AsString;

      If FieldByName('MEDIDA').AsInteger <> 0 Then
      Begin
         LongitudCadena := FieldByName('MEDIDA').AsInteger;

         If FieldByName('MEDIDAINF').AsInteger <> 0 Then
         Begin
            LongitudInf := FieldByName('MEDIDAINF').AsInteger;
         End
         Else
            LongitudInf := LongitudCadena;
      End
      Else
      Begin
         LongitudCadena := dblcX.LookupTable.FieldByName(CODIGO).Size;
         LongitudInf := LongitudCadena;
      End;

      If (length(dblcX.Text) >= LongitudInf) And (length(dblcX.Text) <= LongitudCadena) Then
      Begin
         If dblcX.Text = dblcX.LookupTable.FieldByName(CODIGO).AsString Then
         Begin
            If dbeX.Text <> dblcX.LookupTable.FieldByName(DESCRIPCION).AsString Then
            Begin
               dbeX.Text := dblcX.LookupTable.FieldByName(DESCRIPCION).AsString;
                       //
               dbeX.Tag := 1;
                       //
            End;
         End
         Else
         Begin
            If FieldByName('TIPO').AsString = 'L' Then
            Begin
               If Not dblcX.LookupTable.Locate(CODIGO, dblcX.Text, []) Then
               Begin
                  dbeX.text := '';
                          //
                  dbeX.Tag := 0;
                          //
               End
               Else
               Begin
                  dbeX.text := dblcX.LookupTable.fieldbyname(DESCRIPCION).AsString;
                          //
                  dbeX.Tag := 1;
                          //
               End;
            End
            Else
            Begin
                  //aqui se busca según SQL
               xTabla := FieldByName('TABLA').AsString;
               xCampos := '*';
               xWhere := CODIGO + '=''' + dblcX.Text + '''';
               DMCXC.DCOM1.AppServer.SQLSelect(xTabla, xCampos, xWhere);
               DMCXC.cdsRec.active := False;
               DMCXC.cdsRec.active := True;
               If DMCXC.cdsRec.RecordCount = 0 Then
               Begin
                  dbeX.text := '';
                          //
                  dbeX.Tag := 0;
                          //
               End
               Else
               Begin
                  dbeX.text := DMCXC.cdsRec.fieldbyname(DESCRIPCION).AsString;
                           //
                  dbeX.Tag := 1;
                           //
               End;

            End;
         End;
      End
      Else
      Begin
         dbeX.text := '';
             //
         dbeX.Tag := 0;
             //
      End;
   End;

End;

Function RecuperarDatos;
Begin

   DMCXC.DCOM1.AppServer.SQLSelect(xTabla, xCampos, xWhere);
   DMCXC.cdsRec.active := False;
   DMCXC.cdsRec.active := True;

   If DMCXC.cdsRec.RecordCount = 0 Then
      Result := False
   Else
      Result := True;

End;

Function DisplayDescripLocal; //(cds : TwwClientdataset ;xCodigo,xDato : String);
Begin
   If cds.Locate(xcodigo, VarArrayOf([xDato]), []) Then
      Result := cds.fieldbyname(xMostrar).AsString
   Else
      Result := '';
End;

Procedure HabilitaEdits(pnl: TPanel; xFlag: Boolean);
Var
   i: Integer;
Begin
   For i := 0 To pnl.ControlCount - 1 Do
   Begin
      If pnl.controls[i] Is TCustomEdit Then
         TCustomEdit(pnl.controls[i]).Enabled := xFlag;
   End;
End;

Function FieldNoNulo(xCampo: TField): String;
Begin
   If Not xCampo.IsNull Then
      Result := xCampo.AsString
   Else
      Result := '';
End;

End.

{//** 01/03/2001- pjsv NO BORRAR POR SIACA
function StrNum(wNumero:double):string;
var
   xNumStr,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12 : string;
   xGrupo, xTotal, xDecimal : string;
   xLargo, xVeces : integer;
   xxDec : double;
begin
// w1 para Unidades
   wNumero := FRoundL(wNumero,15,2);
   xNumStr := floattostr(int(wNumero));
   xxDec := wNumero-int(wNumero);
   xDecimal:= floattostr(int(xxDec*100));
   if strtofloat(xDecimal)=0 then
   begin
//      if strtoint(copy(xDecimal,4,1))>=5 then
//         xDecimal := inttostr(strtoint(copy(xDecimal,3,2))+1)
//      else begin
//         xDecimal := copy(xDecimal,3,2);
//      end;
//   end
//   else begin
      xDecimal:='00';
   end;
   xDecimal:= ' y '+xDecimal+'/100';
   xLargo := length(xNumStr);
   x1:='';x2:='';x3:='';x4:='';x5:='';x6:='';x7:='';x8:='';x9:='';x10:='';
   if xLargo>=1 then x1:=copy(xNumStr,xLargo,1);
   if xLargo>=2 then x2:=copy(xNumStr,xLargo-1,1);
   if xLargo>=3 then x3:=copy(xNumStr,xLargo-2,1);
   if xLargo>=4 then x4:=copy(xNumStr,xLargo-3,1);
   if xLargo>=5 then x5:=copy(xNumStr,xLargo-4,1);
   if xLargo>=6 then x6:=copy(xNumStr,xLargo-5,1);
   if xLargo>=7 then x7:=copy(xNumStr,xLargo-6,1);
   if xLargo>=8 then x8:=copy(xNumStr,xLargo-7,1);
   if xLargo>=9 then x9:=copy(xNumStr,xLargo-8,1);
   if xLargo>=10 then x10:=copy(xNumStr,xLargo-9,1);
   if xLargo>=11 then x11:=copy(xNumStr,xLargo-10,1);
   if xLargo>=12 then x12:=copy(xNumStr,xLargo-11,1);

   xVeces:=1; xTotal:='';
   while xVeces<=4 do // hasta 999,999'999,999
   begin
      if xVeces=2 then
      begin
         x1:=x4;
         x2:=x5;
         x3:=x6;
      end;
      if xVeces=3 then
      begin
         x1:=x7;
         x2:=x8;
         x3:=x9;
      end;
      if xVeces=4 then
      begin
         x1:=x10;
         x2:=x11;
         x3:=x12;
      end;

      if x2='1' then // del 11 a 19
      begin
         if x1='0' then x2:='DIEZ';
         if x1='1' then x2:='ONCE';
         if x1='2' then x2:='DOCE';
         if x1='3' then x2:='TRECE';
         if x1='4' then x2:='CATORCE';
         if x1='5' then x2:='QUINCE';
         if x1='6' then x2:='DIECISEIS';
         if x1='7' then x2:='DIECISIETE';
         if x1='8' then x2:='DIECIOCHO';
         if x1='9' then x2:='DIECINUEVE';
         x1:='0';
      end
      else begin // del 0 al 9
         if x1='1' then x1:='UNO';
         if (xVeces>1) and (x1='UNO') then x1:='UN';
         if x1='2' then x1:='DOS';
         if x1='3' then x1:='TRES';
         if x1='4' then x1:='CUATRO';
         if x1='5' then x1:='CINCO';
         if x1='6' then x1:='SEIS';
         if x1='7' then x1:='SIETE';
         if x1='8' then x1:='OCHO';
         if x1='9' then x1:='NUEVE';
         if x2='2' then begin // veinte
            x2:='VEINTI';
            if x1='0' then x2:='VEINTE';
         end;
         if x2='3' then begin
            x2:='TREINTI';
            if x1='0' then x2:='TREINTA';
         end;
         if x2='4' then begin
            x2:='CUARENTI';
            if x1='0' then x2:='CUARENTA';
         end;
         if x2='5' then begin
            x2:='CINCUENTI';
            if x1='0' then x2:='CINCUENTA';
         end;
         if x2='6' then begin
            x2:='SESENTI';
            if x1='0' then x2:='SESENTA';
         end;
         if x2='7' then begin
            x2:='SETENTI';
            if x1='0' then x2:='SETENTA';
         end;
         if x2='8' then begin
            x2:='OCHENTI';
            if x1='0' then x2:='OCHENTA';
         end;
         if x2='9' then begin
            x2:='NOVENTI';
            if x1='0' then x2:='NOVENTA';
         end;
      end;
      if x3='1' then x3:='CIENTO';
      if (x2='0') and (x1='0') and (x3='CIENTO') then x3:='CIEN';
      if x3='2' then x3:='DOSCIENTOS';
      if x3='3' then x3:='TRESCIENTOS';
      if x3='4' then x3:='CUATROCIENTOS';
      if x3='5' then x3:='QUINIENTOS';
      if x3='6' then x3:='SEISCIENTOS';
      if x3='7' then x3:='SETECIENTOS';
      if x3='8' then x3:='OCHOCIENTOS';
      if x3='9' then x3:='NOVECIENTOS';

      xGrupo := '';
//      xGrupo := x3;
      if x3<>'0' then xGrupo:=x3;
      if x2<>'0' then xGrupo:=xGrupo+' '+x2;
      if x1<>'0' then xGrupo:=xGrupo+x1;
      if ((xVeces=2)or(xVeces=4)) and (length(xGrupo)>1) then
      begin
         xGrupo:=xGrupo+' MIL';
      end;
      if (xVeces=3) and (length(xGrupo)>1) then
      begin
         if x1<>'UN' then
            xGrupo:=xGrupo+' MILLONES'
         else begin
            xGrupo:=xGrupo+' MILLÓN';
         end;
      end;
      if length(xTotal)>0 then xGrupo:=xGrupo+' ';
      xTotal := xGrupo+xTotal;
      xVeces := xVeces+1;
   end;
   result := xTotal+xDecimal;
end;
}

