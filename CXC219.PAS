Unit CxC219;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Mask, wwdbedit, StdCtrls, wwdblook,
   Buttons, db, dbclient, wwclient, ppCache, ppDB, ppDBPipe, ppComm,
   ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppVar;

Type
   TFFRMBANK = Class(TForm)
      Panel1: TPanel;
      dbgFBCO: TwwDBGrid;
      Panel2: TPanel;
      Panel3: TPanel;
      dbgFDetPlan: TwwDBGrid;
      Panel4: TPanel;
      grBBCO: TGroupBox;
      Label11: TLabel;
      dblcBCO: TwwDBLookupCombo;
      dbeBCO: TwwDBEdit;
      rgEst: TRadioGroup;
      Z2bbtnAceptar: TBitBtn;
      Z2bbtnCancel: TBitBtn;
      bbtnPrintP: TBitBtn;
      bbtnPrintC: TBitBtn;
      bbtnNUMPLA: TBitBtn;
      Label1: TLabel;
      dblcCIA: TwwDBLookupCombo;
      dbeCIA: TwwDBEdit;
      Z2bbtnGraba: TBitBtn;
      pRCARGO: TppReport;
      pdbpCARGO: TppDBPipeline;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ptxtCIA: TppDBText;
      ptxtFecha: TppDBText;
      ppLabel1: TppLabel;
      ptxtNUM: TppDBText;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ptxtORD: TppDBText;
      ptxtCliente: TppDBText;
      plbCliente: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ptxtBANCO: TppDBText;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ptxtLetra: TppDBText;
      ptxtFGIRO: TppDBText;
      ptxtFVCMTO: TppDBText;
      ptxtIMPORTE: TppDBText;
      ptxtSIMPORTE: TppDBCalc;
      ppLabel10: TppLabel;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppLine3: TppLine;
      Z2bbtnRecibido: TBitBtn;
      Procedure dblcBCOChange(Sender: TObject);
      Procedure dblcExist(Sender: TObject);
      Procedure dblcNotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure dblcCIAChange(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure bbtnNUMPLAClick(Sender: TObject);
      Procedure bbtnPrintPCClick(Sender: TObject);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure dbgFDetPlanKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure FormDestroy(Sender: TObject);
      Procedure Z2bbtnRecibidoClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
      sBCO, sCIA, sSQL, sSQLDET: String;
      Procedure dcCIA;
      Procedure dcBCO;
      Procedure scCOL;
      Procedure scDet;
      Procedure scPie;
   Public
    { Public declarations }
      Function ChangeNFormat(Var A, N: String): Boolean;
      Procedure cBtn;
      Procedure cPFlag;
      Procedure cCFlag;
      Procedure cXFlag(Const Flag: String);

      Function fcSITUA: String;
      Function fcUBICA: String;
      Procedure cHIS;
      Function BuscaOrden(xOE, xCIA: String): Boolean;
//  function fcDOC : string;
   End;

Var
   FFRMBANK: TFFRMBANK;

Implementation

Uses CxCDM, CxC220, CxC218, CXCA021, CXCA022, CXCA025;

{$R *.DFM}

Function OperClientDataSet(ClientDataSet: TwwClientDataSet;
   Expression, Condicion: String): Double;
Var
   cdsClone: TwwClientDataSet;
//bmk         : TBookmark;
   Agg: TAggregate;
Begin
   result := 0;

   If trim(Expression) = '' Then Exit;

//  bmk:=ClientDataSet.GetBookmark;
   cdsClone := TwwClientDataSet.Create(Nil);
   Try

      With cdsClone Do
      Begin
         CloneCursor(ClientDataSet, True);
         Agg := Nil;
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
//    ClientDataSet.GotoBookmark(bmk);
//    ClientDataSet.FreeBookmark(bmk);
   Finally
      cdsClone.Free;
   End;
End;

Procedure TFFRMBANK.dcCIA;
Begin
   DM1.cdsCIA.First;
   sCIA := trim(DM1.cdsCIA.FieldByName('CIAID').AsString);
   dblcCIA.Text := sCIA;
   dblcCIA.Enabled := DM1.cdsCIA.RecordCount > 1;
End;

Procedure TFFRMBANK.dcBCO;
Begin
   DM1.cdsBANCO.First;
   sBCO := trim(DM1.cdsBANCO.FieldByName('BANCOID').AsString);
   dblcBCO.Text := sBCO;
   dblcBCO.Enabled := DM1.cdsBANCO.RecordCount > 1;
End;

Procedure TFFRMBANK.dblcBCOChange(Sender: TObject);
Begin
   sBCO := dblcBCO.Text;
   If trim(dblcBCO.Text) <> '' Then
      dbeBCO.Text := DM1.cdsBANCO.FieldByName('BANCONOM').AsString
   Else
      dbeBCO.Text := '';
End;

Procedure TFFRMBANK.dblcExist(Sender: TObject);
Var
   bRq: Boolean;
Begin
   If TwwDBCustomLookupCombo(Sender).DataSource <> Nil Then
      bRq := TwwDBCustomLookupCombo(Sender).DataSource.DataSet.FieldByName(TwwDBCustomLookupCombo(Sender).DataField).Required;
   If (bRq) And (trim(TwwDBCustomLookupCombo(Sender).Text) = '') Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFFRMBANK.dblcNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFFRMBANK.dblcCIAChange(Sender: TObject);
Begin
   sCIA := dblcCIA.Text;
   dbeCIA.Text := DM1.cdsCia.FieldByName('CIADES').AsString;
End;

Procedure TFFRMBANK.FormCreate(Sender: TObject);
Begin
   dcCIA;
   dcBCO;
   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
   Begin
      sSQL := 'SELECT A.OENUM, A.CIAID, A.UBICAID, A.CCBCOID, A.OEFECHA, '
         + 'A.OEMTOLOC, A.OEMTOEXT, A.OENUMLETRAS, A.OEFMTBCO, '
         + 'A.FLAGVAR, A.OEFNUMFOR, A.OEFFLGIMP, A.SITUAID, '
         + 'B.UBICADES, B.BANCOID, C.CCBCODES, E.SITUADES '
         + 'FROM CXC306 A '
         + 'LEFT JOIN CXC105 B ON(B.UBICAID=A.UBICAID) '
         + 'LEFT JOIN TGE106 C ON(C.CCBCOID=A.CCBCOID) '
         + 'LEFT JOIN TGE101 D ON(D.CIAID  =A.CIAID  ) '
         + 'LEFT JOIN CXC104 E ON(E.SITUAID=A.SITUAID) ';

      sSQLDET := 'SELECT A.*, B.CLIEDES, C.DOCDES, D.TMONDES, D.TMONABR  ' +
         'FROM CXC301 A ' +
         'LEFT JOIN TGE204 B ON(A.CLIEID=B.CLIEID) ' +
         'LEFT JOIN TGE110 C ON(A.DOCID= C.DOCID) ' +
         'LEFT JOIN TGE103 D ON(A.TMONID= D.TMONID) ' +
         'WHERE C.DOC_FREG=''L''';
   End
   Else
      If (DM1.SRV_D = 'ORACLE') Then
      Begin
         sSQL := 'SELECT A.OENUM, A.CIAID, A.UBICAID, A.CCBCOID, A.OEFECHA, '
            + 'A.OEMTOLOC, A.OEMTOEXT, A.OENUMLETRAS, A.OEFMTBCO, '
            + 'A.FLAGVAR, A.OEFNUMFOR, A.OEFFLGIMP, A.SITUAID, '
            + 'B.UBICADES, B.BANCOID, C.CCBCODES, E.SITUADES '
            + ' FROM CXC306 A, CXC105 B, TGE106 C, TGE101 D, CXC104 E '
            + ' WHERE A.UBICAID=B.UBICAID(+) '
            + ' AND A.CCBCOID=C.CCBCOID(+) '
            + ' AND A.CIAID  =D.CIAID(+) '
            + ' AND A.SITUAID=E.SITUAID(+) ';

         sSQLDET := 'SELECT A.*, B.CLIEDES, C.DOCDES, D.TMONDES, D.TMONABR  ' +
            'FROM CXC301 A,TGE204 B,TGE110 C,TGE103 D ' +
            ' WHERE A.CLIEID=B.CLIEID(+) ' +
            ' AND A.DOCID= C.DOCID(+) ' +
            ' AND A.TMONID= D.TMONID(+) ' +
            ' AND C.DOC_FREG=''L''';

      End;
   DM1.cdsBanco.Open;
   DM1.cdsBanco.IndexFieldNames := 'BANCOID';

   DM1.cdsCia.Open;

   dbgFBCO.DataSource := DM1.dsQry4;

   scCOL;

   DM1.cdsQry4.Close;
   DM1.cdsQry4.ProviderName := 'dspTGE';
   DM1.cdsQry4.IndexFieldNames := '';
   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
      DM1.cdsQry4.DataRequest(sSQL + ' WHERE A.CIAID=''''')
   Else
      If (DM1.SRV_D = 'ORACLE') Then
//        DM1.cdsQry4.DataRequest (sSQL);
         DM1.cdsQry4.DataRequest(sSQL + ' AND A.CIAID=''''');

   DM1.cdsQry4.Open;

   scDet;
   cBtn;
End;

Procedure TFFRMBANK.bbtnNUMPLAClick(Sender: TObject);
Var
   Ant, Nue: String;
Begin
   Ant := DM1.cdsQRY4.FieldByName('OEFNUMFOR').AsString;
   Nue := Ant;
   If ChangeNFormat(Ant, Nue) Then
   Begin
      DM1.cdsQRY4.Edit;
      DM1.cdsQRY4.FieldByName('OEFNUMFOR').AsString := Nue;
      DM1.cdsQRY4.Post;
     // recorrer listas
      While Not DM1.cdsQRY2.Eof Do
      Begin
         If (DM1.cdsQRY2.FieldByName('CCOENV').AsString = DM1.cdsQRY4.FieldByName('OENUM').AsString) And
            (DM1.cdsQRY2.FieldByName('CIAID').AsString = DM1.cdsQRY4.FieldByName('CIAID').AsString) And
            (DM1.cdsQRY2.FieldByName('UBIID').AsString = DM1.cdsQRY4.FieldByName('UBICAID').AsString) Then
         Begin
            DM1.cdsQRY2.Edit;
            DM1.cdsQRY2.FieldByName('OEFNUMFOR').AsString := DM1.cdsQRY4.FieldByName('OEFNUMFOR').AsString;
            DM1.cdsQRY2.Post;
         End;
         DM1.cdsQRY2.Next
      End;
   End;
   cBtn;
End;

Procedure TFFRMBANK.bbtnPrintPCClick(Sender: TObject);
Var
   sNUMDOC: String;
   rSQL: String;
Begin
   If BuscaOrden(DM1.cdsQry4.FieldByName('OENUM').AsString, dblcCIA.Text) Then
   Begin
      If DM1.cdsQry3.FieldByName('OEEstado').AsString = 'R' Then
         Raise Exception.Create('Orden Ya Fue Recibida');
   End;
   If (DM1.SRV_D = 'DB2NT') Or
      (DM1.SRV_D = 'DB2400') Then
   Begin
      rSQL := 'SELECT A.OENUM, A.CIAID, A.UBICAID, A.CCBCOID, A.OEFECHA,'
         + 'A.OEMTOLOC, A.OEMTOEXT, A.OENUMLETRAS, A.OEFMTBCO,'
         + 'A.FLAGVAR, A.OEFNUMFOR, A.OEFFLGIMP, B.*, G.UBICADES, '
         + 'G.BANCOID, C.CCBCODES, D.CLIEDES, D.CLIERUC, D.CLIEGIRA,'
         + 'D.CLIEDIR, D.CLIETELF, E.DOCDES, D.CLIEDIRLEG, F.TMON_LOC, '
         + 'F.TMONDES, F.TMONABR, H.CIADES '
         + 'FROM CXC306 A '
         + 'INNER JOIN CXC301 B ON (A.OENUM=B.CCOENV ) '
         + 'LEFT JOIN TGE106 C ON (C.CCBCOID=A.CCBCOID) '
         + 'LEFT JOIN TGE204 D ON (B.CLIEID=D.CLIEID) '
         + 'LEFT JOIN TGE110 E ON (B.DOCID=E.DOCID) '
         + 'LEFT JOIN TGE103 F ON (B.TMONID=F.TMONID) '
         + 'LEFT JOIN CXC105 G ON (A.UBICAID=G.UBICAID) '
         + 'LEFT JOIN TGE101 H ON (A.CIAID=H.CIAID) '
         + 'WHERE E.DOC_FREG=''L''';
   End
   Else
      If (DM1.SRV_D = 'ORACLE') Then
      Begin
         rSQL := 'SELECT A.OENUM, A.CIAID, A.UBICAID, A.CCBCOID, A.OEFECHA,'
            + 'A.OEMTOLOC, A.OEMTOEXT, A.OENUMLETRAS, A.OEFMTBCO,'
            + 'A.FLAGVAR, A.OEFNUMFOR, A.OEFFLGIMP, B.*, G.UBICADES, '
            + 'G.BANCOID, C.CCBCODES, D.CLIEDES, D.CLIERUC, D.CLIEGIRA,'
            + 'D.CLIEDIR, D.CLIETELF, E.DOCDES, D.CLIEDIRLEG, F.TMON_LOC, '
            + 'F.TMONDES, F.TMONABR, H.CIADES '
            + 'FROM CXC306 A,CXC301 B,TGE106 C,TGE204 D,TGE110 E,TGE103 F,CXC105 G,TGE101 H '
            + 'WHERE E.DOC_FREG=''L'''
            + ' AND (A.OENUM=B.CCOENV(+) ) '
            + ' AND (A.CCBCOID=C.CCBCOID(+)) '
            + ' AND (B.CLIEID=D.CLIEID(+)) '
            + ' AND (B.DOCID=E.DOCID(+)) '
            + ' AND (B.TMONID=F.TMONID(+)) '
            + ' AND (A.UBICAID=G.UBICAID(+)) '
            + ' AND (A.CIAID=H.CIAID(+)) '

      End;

   If (DM1.cdsQry4.FieldByName('OEFNUMFOR').IsNull) Or
      (trim(DM1.cdsQry4.FieldByName('OEFNUMFOR').AsString) = '') Then
   Begin
      bbtnNUMPLAClick(Nil);
      Z2bbtnGrabaClick(Nil);
   End;

   If (DM1.cdsQry4.FieldByName('OEFNUMFOR').IsNull) Or
      (trim(DM1.cdsQry4.FieldByName('OEFNUMFOR').AsString) = '') Then
   Begin
      Exit;
   End;

   bbtnNUMPLAClick(Nil);
   Z2bbtnGrabaClick(Nil);

   If DM1.cdsQry4.FieldByName('OEFFLGIMP').ASString = 'C' Then
   Begin
      Application.MessageBox(' El formato de bancos se halla ya impreso' + #13 +
         ' y con cargo no se puede reeimprimir ',
         PChar(Caption), MB_OK + MB_ICONINFORMATION);
      Exit;
   End;

   If DM1.cdsQry4.FieldByName('OEFFLGIMP').ASString = 'I' Then
      If Application.MessageBox('El formato de bancos se halla ya impreso...' + #13 +
         ' desea reimprimir... ?',
         PChar(Caption), MB_YESNO + MB_ICONQUESTION) = IDNO Then
      Begin
         Exit;
      End;

   Application.MessageBox(' Asegurese que el formato de bancos se' + #13 +
      ' halle en la impresora',
      PChar(Caption), MB_OK + MB_ICONINFORMATION);

   If TBitBtn(Sender).Name = 'bbtnPrintP' Then
   Begin
      cPFlag; // cambiar el flag de impresión

    // buscar el formato correspondiente por banco
    // e imprimirlo  hacer el query para obtener los datos correspondientes a la
    // tabla 306 combinada con la tabla 301, se tomara el formato de bancos por
    // banco y cta. cte.

      cHIS; // generar histórico cambiar situaciones y ubicaciones

      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(rSQL);
      DM1.cdsQry3.Open;

      If dblcBCO.Text = '06' Then
      Begin
         Application.CreateForm(TWIESE, WIESE);
         WIESE.QuickRep1.Preview;
      End;

      If dblcBCO.Text = '03' Then
      Begin
         Application.CreateForm(TCONTINENTAL, CONTINENTAL);
         CONTINENTAL.QuickRep1.Preview;
      End;

      If dblcBCO.Text = '01' Then
      Begin
         Application.CreateForm(TCITIBANK, CITIBANK);
         CITIBANK.QuickRep1.Preview;
      End;

   End
   Else
   Begin
      cCFlag;
     // imprimir el cargo correspondiente al banco
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(rSQL);
      DM1.cdsQry3.Open;
      pdbpCARGO.DataSource := DM1.dsQry3;
      pRCARGO.Print;
   End;
   cBtn;
End;

Procedure TFFRMBANK.Z2bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFFRMBANK.Z2bbtnAceptarClick(Sender: TObject);
Var
   sF: String;
Begin
   sF := '';
   If trim(dblcCIA.Text) = '' Then
      Application.MessageBox('La compañía debe ingresarse...', pchar(Caption), IDOK + MB_ICONERROR)
   Else
      sF := ' A.CIAID=''' + sCIA + '''';

   If trim(dblcBCO.Text) = '' Then
      sBCO := ''
   Else
      If trim(sF) = '' Then
         sF := ' B.BANCOID=''' + sBCO + ''''
      Else
         sF := ' B.BANCOID=''' + sBCO + ''' AND ' + sF;

   Case rgEst.ItemIndex Of
      0:
         Begin
            If trim(sF) = '' Then
               sF := ' ( ' + DM1.wReplacCeros + '(A.OEFFLGIMP,'''')='''' ) '
            Else
               sF := ' (' + DM1.wReplacCeros + '(A.OEFFLGIMP,'''')='''' ) AND ' + sF;
         End;
      1:
         Begin
            If trim(sF) = '' Then
               sF := ' ( ' + DM1.wReplacCeros + '(A.OEFFLGIMP,'''')<>'''' ) AND '
            Else
               sF := ' ( ' + DM1.wReplacCeros + '(A.OEFFLGIMP,'''')<>'''' ) AND ' + sF;
         End;
   End;

   scCOL;

   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(sSQL + ' WHERE ' + sF);
   DM1.cdsQry4.Open;
End;

Procedure TFFRMBANK.scCOL;
Begin
   dbgFBCO.Selected.Clear;

   dbgFBCO.Selected.Add('OENUM'#9'10'#9'Nº de Orden'#9'F');

   If trim(dblcBCO.Text) = '' Then
   Begin
      dbgFBCO.Selected.Add('UBICAID'#9'10'#9'Código~Banco'#9'F');
      dbgFBCO.Selected.Add('UBICADES'#9'30'#9'Nombre Banco'#9'F');
   End;

   dbgFBCO.Selected.Add('CCBCOID'#9'16'#9'Nº de Cuenta'#9'F');
   dbgFBCO.Selected.Add('CCBCODES'#9'30'#9'Descripción Cuenta'#9'F');
   dbgFBCO.Selected.Add('OEFECHA'#9'12'#9'Fecha~Orden'#9'F');
   dbgFBCO.Selected.Add('SITUADES'#9'15'#9'Situación'#9'F');
   dbgFBCO.Selected.Add('OEFNUMFOR'#9'16'#9'Nº de~Formato'#9'F');
End;

Procedure TFFRMBANK.scDet;
Begin
   dbgFDetPlan.DataSource := DM1.dsQry2;

   dbgFDetPlan.Selected.Add('CLIEID'#9'10'#9'Código~Cliente'#9'F');
   dbgFDetPlan.Selected.Add('CLIEDES'#9'30'#9'Nombre Cliente/~Razón Social'#9'F');
   dbgFDetPlan.Selected.Add('CCNODOC'#9'15'#9'Nº de Letra'#9'F');
   dbgFDetPlan.Selected.Add('CCFEMIS'#9'11'#9'Fecha Giro'#9'F');
   dbgFDetPlan.Selected.Add('CCFVCMTO'#9'11'#9'Fecha de~Vencimiento'#9'F');
   dbgFDetPlan.Selected.Add('TMONDES'#9'15'#9'Tipo~Moneda'#9'F');
   dbgFDetPlan.Selected.Add('CCMTOLOC'#9'14'#9'Monto Moneda~Local'#9'F');
   dbgFDetPlan.Selected.Add('CCMTOEXT'#9'14'#9'Monto Moneda~Extranjera'#9'F');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.ProviderName := 'dspTGE';
//  DM1.cdsQry2.IndexFieldNames := 'CCOENV;CIAID;UBIID';
//  DM1.cdsQry2.MasterFields    := 'OENUM;CIAID;UBICAID';
   DM1.cdsQry2.IndexFieldNames := 'CCOENV;CIAID';
   DM1.cdsQry2.MasterFields := 'OENUM;CIAID';
   DM1.cdsQry2.MasterSource := DM1.dsQry4;
   DM1.cdsQry2.DataRequest(sSQLDET);
   DM1.cdsQry2.Open;
   scPie;
End;

Procedure TFFRMBANK.scPie;
Begin
   dbgFDetPlan.ColumnByName('CCMTOLOC').FooterValue := Format('%15.2f', [OperClientDataSet(DM1.cdsQry2, 'SUM(CCMTOLOC)', '')]);
   dbgFDetPlan.ColumnByName('CCMTOEXT').FooterValue := Format('%15.2f', [OperClientDataSet(DM1.cdsQry2, 'SUM(CCMTOEXT)', '')]);
End;

Procedure TFFRMBANK.Z2bbtnGrabaClick(Sender: TObject);
Var
   Nue, sUPD: String;
Begin
{   DM1.cdsQRY4.First;
   while not DM1.cdsQRY4.Eof do
   begin}
      // Actulizando la tabla CXC306
   DM1.cdsQry3.ProviderName := 'dspTGE';
   DM1.cdsQry3.Close;
   Nue := DM1.cdsQRY4.FieldByName('OEFNUMFOR').AsString;
   sUPD := 'UPDATE CXC306 SET OEFNUMFOR=''' + Nue + ''', OEFFLGIMP=''' + #32 + ''' '
      + 'WHERE OENUM=''' + DM1.cdsQRY4.FieldByName('OENUM').AsString + ''' and '
      + 'CIAID=''' + DM1.cdsQRY4.FieldByName('CIAID').AsString + ''' ';
//           +      'UBICAID='''+DM1.cdsQRY4.FieldByName('UBICAID').AsString+'''';
   DM1.cdsQry3.DataRequest(sUPD);
   DM1.cdsQry3.Execute;

      // recorrer listas ...
      // Actulizando la tabla CXC301
   DM1.cdsQry3.Close;
   sUPD := 'UPDATE CXC301 SET OEFNUMFOR=''' + Nue + ''' '
      + 'WHERE CCOENV=''' + DM1.cdsQRY4.FieldByName('OENUM').AsString + ''' and '
      + 'CIAID=''' + DM1.cdsQRY4.FieldByName('CIAID').AsString + ''' ';
//           +      'UBIID=''' +DM1.cdsQRY4.FieldByName('UBICAID').AsString+''' ';
   DM1.cdsQry3.DataRequest(sUPD);
   DM1.cdsQry3.Execute;

{      DM1.cdsQRY4.Next;
   end;}
End;

Function TFFRMBANK.ChangeNFormat(Var A, N: String): Boolean;
Begin
   Result := False;
   FNUMFRM := TFNUMFRM.Create(Application);
   Try
      FNUMFRM.dbeNNUMFORM.Text := N;
      FNUMFRM.dbeANUMFORM.Text := A;
      If FNUMFRM.ShowModal = mrOK Then ;
      Begin
         Result := True;
         N := FNUMFRM.dbeNNUMFORM.Text;
         A := FNUMFRM.dbeANUMFORM.Text;
      End;
   Finally
      FNUMFRM.Free;
   End;
End;

Procedure TFFRMBANK.cBtn;
Begin
   Z2bbtnGraba.Enabled := (DM1.cdsQRY4.ChangeCount > 0) Or (DM1.cdsQRY4.Modified);
End;

Procedure TFFRMBANK.dbgFDetPlanKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Var
   Nue, sUPD: String;
Begin

   If (ssCtrl In Shift) And (Key = VK_DELETE) Then
   Begin
      With DM1, DM1.cdsQRY2 Do
         If cdsQRY4.FieldByName('OEFFLGIMP').AsString = 'I' Then
            If Application.MessageBox('Desea retirar la letra del formato y de la órden de envio...?', Pchar(Caption), MB_OK + MB_ICONERROR) = ID_OK Then
            Begin
               cdsQry3.Close;

               sUPD := 'UPDATE CXC301 SET OEFNUMFOR=''' + #32 + ''' CCOENV=''' + #32 + '''' +
                  ' WHERE CCNODOC=''' + FieldByName('CCNODOC').AsString +
                  ''' AND CIAID=''' + FieldByName('CIAID').AsString +
                  ''' AND UBIID=''' + FieldByName('UBIID').AsString + '''';

               cdsQry3.DataRequest(sUPD);
               cdsQry3.Execute;

               Z2bbtnAceptarClick(Nil);
               scDet;
            End;
   End;

End;

Procedure TFFRMBANK.cPFlag;
Begin
   cXFlag('I');
End;

Procedure TFFRMBANK.cCFlag;
Begin
   cXFlag('C');
End;

Procedure TFFRMBANK.cXFlag(Const Flag: String);
Var
   Nue, sUPD: String;
Begin
   With DM1, DM1.cdsQry4 Do
   Begin
      cdsQry3.ProviderName := 'dspTGE';
      cdsQry3.Close;
      Nue := FieldByName('OEFNUMFOR').AsString;

      sUPD := 'UPDATE CXC306 SET OEFFLGIMP=''' + Flag + '''' +
         ' WHERE OENUM=''' + FieldByName('OENUM').AsString +
         ''' AND CIAID=''' + FieldByName('CIAID').AsString +
         ''' AND UBICAID=''' + FieldByName('UBICAID').AsString + '''';

      cdsQry3.DataRequest(sUPD);
      cdsQry3.Execute;
   End;
End;

Function TFFRMBANK.fcSITUA: String;
Var
   U: String;
Begin
   With DM1 Do
   Begin
      result := '';
      cdsQry3.ProviderName := 'dspTGE';
      cdsQry3.Close;
      U := 'SELECT SITUAID FROM CXC104 WHERE SITUAFLAG=''F''';
      cdsQry3.DataRequest(U);
      cdsQry3.Open;
      If Not cdsQry3.FieldByName('SITUAID').IsNull Then
         result := cdsQry3.FieldByName('SITUAID').AsString;
   End;
End;

Function TFFRMBANK.fcUBICA: String;
Var
   U: String;
Begin
   With DM1 Do
   Begin
      result := '';
      cdsQry3.ProviderName := 'dspTGE';
      cdsQry3.Close;
      U := 'SELECT UBICAID FROM CXC105 WHERE UBICAID=''F''';
      cdsQry3.DataRequest(U);
      cdsQry3.Open;
      If Not cdsQry3.FieldByName('UBICAID').IsNull Then
         result := cdsQry3.FieldByName('UBICAID').AsString;
   End;
End;

Procedure TFFRMBANK.cHIS;
Var
   sNUMDOC, sDOC, sS, sU: String;
Begin

   sS := DM1.cdsQry4.FieldByName('SITUAID').AsString;
   sU := DM1.cdsQry4.FieldByName('UBICAID').AsString;
   DM1.cdsQRY2.First;
   While Not DM1.cdsQRY2.Eof Do
   Begin
      sDOC := DM1.cdsQry2.FieldByName('DOCID').AsString;
      sNUMDOC := DM1.cdsQry2.FieldByName('CCNODOC').AsString;

      SetHyst(sCIA, sDOC, sNUMDOC);

      UpdUBI(sCIA, sDOC, sNUMDOC, sU);
      UpdSIT(sCIA, sDOC, sNUMDOC, sS);

      DM1.cdsQRY2.Next;
   End;
End;

Procedure TFFRMBANK.FormDestroy(Sender: TObject);
Begin
   DM1.cdsQry2.Close;
   DM1.cdsQry2.Indexfieldnames := '';
   DM1.cdsQry2.MasterFields := '';
   DM1.cdsQry2.MasterSource := Nil;
   dbgFBCO.DataSource := Nil;
   dbgFDetPlan.DataSource := Nil;
End;

Procedure TFFRMBANK.Z2bbtnRecibidoClick(Sender: TObject);
Var
   xBCO, xCCTE, xWhere: String;
   xTipo, sSIT: String;
   sNUMDOC, sDOC, sS, sU, sUPD: String;
Begin

   If BuscaOrden(DM1.cdsQry4.FieldByName('OENUM').AsString, dblcCIA.Text) Then
   Begin
      If DM1.cdsQry3.FieldByName('OEEstado').AsString = 'R' Then
         Raise Exception.Create('Orden Ya Fue Recibida Anteriormente');
   End;
   xBCO := DM1.cdsQry4.FieldByName('BANCOID').AsString;
   xBCO := DM1.cdsQry4.FieldByName('UBICAID').AsString;
   xCCTE := DM1.cdsQry4.FieldByName('CCBCOID').AsString;

   xWhere := 'CCBCOID=''' + xCCTE + ''' and BANCOID=''' + xBCO + '''';
   xTipo := BuscaQry('dspTGE', 'CXC401', '*', xWhere, 'CCBTIPO');

   xWhere := 'SITUAFLAG=''R' + xTipo + '''';
   sSIT := BuscaQry('dspTGE', 'CXC104', '*', xWhere, 'SITUAID');

   DM1.cdsQRY2.First;
   While Not DM1.cdsQRY2.Eof Do
   Begin
      // Actualizando la tabla CXC301
      sDOC := DM1.cdsQry2.FieldByName('DOCID').AsString;
      sNUMDOC := DM1.cdsQry2.FieldByName('CCNODOC').AsString;

      SetHyst(sCIA, sDOC, sNUMDOC);
      UpdSIT(sCIA, sDOC, sNUMDOC, sSIT);

      DM1.cdsQRY2.Next;
   End;

   sUPD := 'UPDATE CXC306 SET OEESTADO=''R'', SITUAID=''' + sSIT + ''' '
      + 'WHERE OENUM=''' + DM1.cdsQRY4.FieldByName('OENUM').AsString + ''' and '
      + 'CIAID=''' + DM1.cdsQRY4.FieldByName('CIAID').AsString + ''' ';
   DM1.cdsQry3.DataRequest(sUPD);
   DM1.cdsQry3.Execute;

   ShowMessage('Orden de Envio Recibida');
End;

Function TFFRMBANK.BuscaOrden(xOE, xCIA: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'Select * from CXC306 '
      + 'WHERE OENUM=''' + DM1.cdsQRY4.FieldByName('OENUM').AsString + ''' and '
      + 'CIAID=''' + DM1.cdsQRY4.FieldByName('CIAID').AsString + ''' and '
      + 'OEESTADO=''R'' ';
   DM1.cdsQry3.ProviderName := 'dspTGE';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   Result := False;
   If DM1.cdsQry3.RecordCount > 0 Then
      Result := True;
End;

Procedure TFFRMBANK.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

End.

