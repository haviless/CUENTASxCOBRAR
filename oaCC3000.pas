Unit oaCC3000;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   oaCC2000
// Formulario           :   FRegistros
// Fecha de Creación    :
// Autor                :   Equipo de Desarrollo
// Objetivo             :   Ventana que implementa las funcionalidades de las ventanas
//                          del punto de menú Informes

// Actualizaciones      :
// HPC_201204_CXC 28/08/2012  Implementación del control de versiones
// HPC_201403_CXC 10/07/2014  Actualiza versión a 20140716083000
// HPC_201601_CXC 10/08/2016  Abre Tipos de Diario sólo para Registro de Ventas

//
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwclient, Mant, DB, DBClient, ExtCtrls, StdCtrls, Buttons, Wwdbigrd;

Type
   TFInformes = Class(TForm)
      lblVersion: TLabel;
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure FiltraTabla(xxCds: TwwClientDataSet; xxArchivo, xxCampo: String; xxWhere: String = '');
      Procedure CtaCteEdita(Sender: TObject; MantFields: TFields);
      Procedure cSQLCtaCte;
      Procedure ChequeCreate(Sender: TObject);
      Procedure PGridShow(Sender: TObject);
      Procedure MueveMouse(xObjeto: TObject; Shift: TShiftState; X, Y: Integer);
   End;

Procedure CCRegistroDeVentas; stdcall;
Procedure CCRegistroDeLetras; stdcall;
Procedure CCCuentaCorriente; stdcall; // CXC216.PAS  FEstCxCli   Cuenta Corriente de Clientes
Procedure CCMovimientosxEstadoDoc; stdcall;
Procedure CCClientesConSaldos; stdcall;
Procedure CCMovimientoxCliente; stdcall;
Procedure CCChequesDiferidos; stdcall;
Procedure CCTransferenciaAlDaot; stdcall;
Procedure CCConsistenciaVentas; stdcall;
Procedure CCVerificaVersion; stdcall;
  //INICIO SAR666
Procedure CCPleRegVentas; stdcall;
  //FIN SAR666
Exports
   CCRegistroDeVentas,
   CCRegistroDeLetras,
   CCCuentaCorriente,
   CCMovimientosxEstadoDoc,
   CCClientesConSaldos,
   CCMovimientoxCliente,
   CCChequesDiferidos,
   CCTransferenciaAlDaot,
   CCVerificaVersion,
  //INICIO SAR666
   CCPleRegVentas,
  //FIN SAR666
   CCConsistenciaVentas;

Var
   FInformes: TFInformes;
   GCtaCte,
      GCheques: TMant;
   sCIA: String;
Implementation

{$R *.dfm}
//INICIO SAR666
//uses CXCDM, CXC301, CXC302, CXC216, CXC305, CXC304, CXC403, CXC311, CXC505, CXC324;
Uses CXCDM, CXC301, CXC302, CXC216, CXC305, CXC304, CXC403, CXC311, CXC505, CXC324, CXC325;
//FIN SAR666
// CXC216.PAS  FEstCxCli   Cuenta Corriente de Clientes

Procedure CCRegistroDeVentas;
Var
   xsql: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
// Inicio HPC_201601_CXC
// Abre Tipos de Diario sólo para Registro de Ventas
//   FInformes.FiltraTabla(DMCXC.cdsTDiario, 'TGE104', 'TDiarId');
//   xSQL := 'Select * FROM TGE104 WHERE REGISTRO = ' + quotedstr('V');
   xSQL := 'Select TDIARID, TDIARDES, TDIARABR from TGE104 where REGISTRO=''V'' ';
   DMCXC.cdsTDiario.Close;
   DMCXC.cdsTDiario.DataRequest(xSQL);
   DMCXC.cdsTDiario.open;
// Fin HPC_201601_CXC

   FRVentas := TFRVentas.Create(Application);
   FRVentas.ActiveMdiChild;
//   FVariables.ConfiguraForma( Screen.ActiveForm );
End;

Procedure CCRegistroDeLetras;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
   FRLetras := TFRLetras.Create(Application);
   FRLetras.ActiveMdiChild;
//   FVariables.ConfiguraForma( Screen.ActiveForm );
End;

Procedure CCCuentaCorriente;
Var
   xSQL: String;
   wAno, wMes, wDia: word;
   xMesAnt, xMesAct, xAnoAct: String;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
// apertura Tabla de Tipos de Documento
   xSQL := 'select * from TGE110 where DOCMOD=''CXC'' ';
   DMCXC.cdsTDoc.Close;
   DMCXC.cdsTDoc.IndexFieldNames := 'DOCID';
   DMCXC.cdsTDoc.Filter := '';
   DMCXC.cdsTDoc.DataRequest(xSQL);
   DMCXC.cdsTDoc.Open;

   Decodedate(DMCXC.dateS, wAno, wMes, wDia);
   xMesAct := strzero(inttostr(wMes), 2);
   If xMesAct = '01' Then
      xMesAnt := '00'
   Else
      xMesAnt := strzero(inttostr(wMes - 1), 2);
   xAnoAct := inttostr(wAno);

   xSQL := 'SELECT * FROM (Select A.CIAID, A.CLAUXID, A.GRUPOID, '
      + 'A.CLIEID, A.CLIEDES, A.CLIEDIR, A.CLIECZIP, D.ZIPDES, A.CLIETELF, '
      + 'A.CLIEFAX, A.CLIEEMAI, A.VEID, E.VENOMBRES, '
      + 'A.CONDPID, F.CONDPDES, A.TIPPERID, A.CLIEDNI, A.CLIERUC, A.CLIECREMAX, '
      + 'A.ZONVTAID, H.ZVTADES, A.SITCLIEID, I.SITCLIEDES, A.TVTAID, G.TVTADES SECTOR , J.CLIECOMEN '
      + ' from TGE204 A';

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := xSQL + ' left outer join TGE122 D on (D.ZIPID=A.CLIECZIP) '
         + ' left outer join TGE218 J on (A.CIAID=J.CIAID AND J.CLAUXID=A.CLAUXID AND J.CLIEID=A.CLIEID ) '
         + ' left outer join CXC203 E on (E.CIAID=A.CIAID and E.VEID=A.VEID)'
         + ' left outer join TGE166 F on (F.CIAID=A.CIAID and F.CONDPID=A.CONDPID)'
         + ' left outer join FAC105 G on (G.TVTAID=A.TVTAID)'
         + ' left outer join FAC106 H on (H.TVTAID=A.TVTAID and H.ZVTAID=A.ZONVTAID)'
         + ' left outer join CXC111 I on (I.SITCLIEID=A.SITCLIEID))SOLVISTA ';
   End;

   If (DMCXC.SRV_D = 'ORACLE') Then
   Begin
      xSQL := xSQL + ' ,TGE122 D ,CXC203 E ,TGE166 F ,FAC105 G,FAC106 H ,CXC111 I, TGE218 J '
         + ' WHERE (A.CLIECZIP=D.ZIPID(+) AND A.CIUDID=D.CIUDID(+) AND A.DPTOID=D.DPTOID(+)) '
         + ' AND (A.CIAID=J.CIAID(+) AND A.CLAUXID=J.CLAUXID(+) AND A.CLIEID=J.CLIEID(+)) '
         + ' AND  (A.CIAID=E.CIAID(+) and A.VEID=E.VEID(+) )'
         + ' AND (A.CIAID=F.CIAID(+) AND A.CONDPID=F.CONDPID(+))'
         + ' AND (A.TVTAID=G.TVTAID(+))'
         + ' AND (A.ZONVTAID=H.ZVTAID(+) AND A.TVTAID=H.TVTAID(+))'
         + ' AND (A.SITCLIEID=I.SITCLIEID(+)) ';
      If DMCXC.cFilterCiaUser <> '' Then
         xSQL := xSQL + ' and A.' + DMCXC.cFilterCiaUser;

      xSQL := xSQL
         + ' ) SOLVISTA ';

   End;

   Try
      GCtaCte := TMant.Create(Application);
      GCtaCte.Admin := DMCXC.wAdmin;
      GCtaCte.Titulo := 'Cuenta Corriente de Clientes';
      GCtaCte.OnCreateMant := Nil; //ToolSegCreate;
      GCtaCte.dcOMc := DMCXC.DCOM1;
      GCtaCte.UsuarioSQL.Add(xSQL);
      GCtaCte.User := DMCXC.wUsuario;
      GCtaCte.ClientDataset := DMCXC.cdsCxC;
      GCtaCte.TableName := 'VWCXCCTACTECLIE';
      GCtaCte.OnEdit := FInformes.CtaCteEdita;
      GCtaCte.SectionName := 'Cta.Cte.';
      GCtaCte.FileNameIni := '\SOLCXC.INI';
      GCtaCte.NoVisible.Clear;
      GCtaCte.NoVisible.Add('SECTOR');
      GCtaCte.Module := 'CXC';
      GCtaCte.Execute;

   Finally
     {FEstCxCli.dbeSaldoAnt.datasource:=NIL;
     FEstCxCli.dbeCargos.datasource:=NIL;
     FEstCxCli.dbeAbonos.datasource:=NIL;
     FEstCxCli.dbeSaldoAct.datasource:=NIL;
     FEstCxCli.dbeDisponible.datasource:=NIL;
     FEstCxCli.wwDBEdit1.datasource:=NIL;
     FEstCxCli.wwDBEdit2.datasource:=NIL;
     FEstCxCli.wwDBEdit3.datasource:=NIL;
     FEstCxCli.wwDBEdit4.datasource:=NIL;
   GCtaCte.Free;
     FEstCxCli.Free;}
   End;
End;

Procedure CCMovimientosxEstadoDoc;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
   FRDocu := TFRDocu.Create(Application);
   FRDocu.ActiveMdiChild;
//   FVariables.ConfiguraForma( Screen.ActiveForm );
End;

Procedure CCClientesConSaldos;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
   FCRCliSaldos := TFCRCliSaldos.Create(Application);
   FCRCliSaldos.ActiveMdiChild;
//   FVariables.ConfiguraForma( Screen.ActiveForm );
End;

Procedure CCMovimientoxCliente;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
   FCRepMovClie := TFCRepMovClie.Create(Application);
   FCRepMovClie.ActiveMdiChild;
//   FVariables.ConfiguraForma( Screen.ActiveForm );
End;

Procedure CCChequesDiferidos;
Var
   GCheques: TMant;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
   FChedif := TFChedif.Create(Application);

   GCheques := TMant.Create(Application);
   GCheques.Admin := DMCXC.wAdmin;
   GCheques.OnCreateMant := FInformes.ChequeCreate;
   GCheques.OnInsert := Nil;
   GCheques.OnEdit := Nil;
   GCheques.OnDelete := Nil;
   GCheques.OnShow := FInformes.PGridShow;
   GCheques.DComC := DMCXC.DCOM1;
   GCheques.ClientDataSet := DMCXC.cdsMovCxC;
   GCheques.TableName := 'CAJA305';
   GCheques.Filter := '';

   If DMCXC.cFilterCiaUser <> '' Then
   Begin
      If GCheques.Filter <> '' Then
         GCheques.Filter := GCheques.Filter + ' and ' + DMCXC.cFilterCiaUser
      Else
         GCheques.Filter := DMCXC.cFilterCiaUser;
   End;

   GCheques.Titulo := 'Cheques';
   GCheques.User := DMCXC.wUsuario;
   GCheques.Module := DMCXC.wModulo;

   GCheques.SectionName := 'CXCCheques';
   GCheques.FileNameIni := '\SOLCXC.INI';

   GCheques.Execute;
   //GCheques.Free;
   //FChedif.Free;
End;

Procedure CCTransferenciaAlDaot;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
   FVariables.w_Num_Formas :=FVariables.w_Num_Formas+1;
}
   FTransfDAOT := TFTransfdaot.Create(Application);
   FTransfDAOT.ActiveMdiChild;
//   FVariables.ConfiguraForma( Screen.ActiveForm );
End;
{ TFInformes }

Procedure CCConsistenciaVentas;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
{   if FVariables.w_Num_Formas>FVariables.w_Max_Formas then
   begin
      ShowMessage('No puede Invocar a más de '+Trim(IntToStr(FVariables.w_Max_Formas))+' opciones al mismo tiempo' );
      Exit;
   end;
}
   Try
      FConsistencia := TFConsistencia.Create(Application);
      FConsistencia.ShowModal;
   Finally
      FConsistencia.Free;
   End;
End;

Procedure TFInformes.ChequeCreate(Sender: TObject);
Var
   pl, pg: TPanel;
Begin
   pg := FCheDif.pnlDetalle;
   pl := TMant(Sender).FMant.pnlBtns;

   pl.Height := pg.Height + 5;
   pg.Align := alClient;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;

   TMant(Sender).FMant.pnlBtns.Visible := True;
End;

Procedure TFInformes.cSQLCtaCte;
Var
   sDisp, sClie, sAnt, sLet, sNCre, sChe, sCarAbo, sTotal: String;
   sXSQL, xWhere: String;
   sMoneda: String;
   mm, dd: word;

   iYEAR, iMONTH: Word;
   sCIA, sFechaEmision, sSAANT, sSACUM, sMES, sSQL, sMESA, sMesN, sGroupBy: String;
   dTCambio: double;
Begin
   // Tipo de Cambio
   If (DMCXC.SRV_D = 'DB2400') Or (DMCXC.SRV_D = 'DB2NT') Then
      sSQL := ' SELECT FECHA, ' + DMCXC.wReplacCeros + '(TCAM' + DMCXC.wVRN_TipoCambio + ',0) CAMBIO FROM TGE107 ' +
         ' WHERE TMONID=' + QuotedStr(DMCXC.wTMonExt) +
         ' and FECHA>=' + DMCXC.wRepFuncDate + quotedstr(FORMATDATETIME(DMCXC.wFormatFecha, DMCXC.DateS - 30)) + ')' +
         ' AND FECHA<=' + DMCXC.wRepFuncDate + quotedstr(FORMATDATETIME(DMCXC.wFormatFecha, DMCXC.DateS)) + ')' +
         ' ORDER BY FECHA DESC '
   Else
    //** 24/10/2002 - PJSV
      sSQL := ' SELECT ' + DMCXC.wReplacCeros + '(TCAM' + DMCXC.wVRN_TipoCambio + ',0) CAMBIO FROM TGE107 ' +
         ' WHERE TMONID=' + QuotedStr(DMCXC.wTMonExt) +
         ' and FECHA>=' + DMCXC.wRepFuncDate + quotedstr(FORMATDATETIME(DMCXC.wFormatFecha, DMCXC.DateS - 30)) + ')' +
         ' AND FECHA<=' + DMCXC.wRepFuncDate + quotedstr(FORMATDATETIME(DMCXC.wFormatFecha, DMCXC.DateS)) + ')' +
         ' ORDER BY FECHA DESC ';
    //**
   DMCXC.cdsSQL.close;
   DMCXC.cdsSQL.DataRequest(sSQL);
   DMCXC.cdsSQL.Open;
   dTCambio := DMCXC.cdsSQL.FieldByName('CAMBIO').AsFloat;

   DecodeDate(DMCXC.dateS, iYear, mm, dd);
   sMES := StrZero(IntToStr(mm), 2);
   sMESN := StrZero(IntToStr(mm + 1), 2);
   sMESA := StrZero(IntToStr(mm - 1), 2);

// determina códigos de documentos
   sChe := '';
   sAnt := '';
   sLet := '';
   sNCre := '';
   If DMCXC.cdsTDoc.Locate('DOC_FREG', 'H', []) Then sChe := DMCXC.cdsTDoc.FieldByName('DOCID').AsString; // Cheques
   If DMCXC.cdsTDoc.Locate('DOC_FREG', 'A', []) Then sAnt := DMCXC.cdsTDoc.FieldByName('DOCID').AsString; // Anticipos
   If DMCXC.cdsTDoc.Locate('DOC_FREG', 'L', []) Then sLet := DMCXC.cdsTDoc.FieldByName('DOCID').AsString; // Letras
   If DMCXC.cdsTDoc.Locate('DOC_FREG', 'N', []) Then sNCre := DMCXC.cdsTDoc.FieldByName('DOCID').AsString; // Notas de Crédito

   xWhere := 'CIAID=' + quotedstr(GCtaCte.FMant.cds2.FieldByName('CIAID').AsString)
      + ' and ANO=' + quotedstr(inttostr(iYear))
      + ' and CLAUXID=' + quotedstr(GCtaCte.FMant.cds2.FieldByName('CLAUXID').AsString)
      + ' and AUXID=' + quotedstr(GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString);

   If sMes <> '12' Then
      sFechaEmision := '01' + '/' + sMesN + '/' + IntToStr(iYEAR)
   Else
      sFechaEmision := '01' + '/' + '01' + '/' + IntToStr(iYEAR + 1);

   sGroupBy := ' group by CLI.CLIECREMAX, SAL.CLAUXID, SAL.AUXID,CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES, ' +
      ' SAL.SALDSMN' + sMESA + ',SAL.SALDSME' + sMESA + ',SAL.DEBESMN' + sMES + ',SAL.DEBESME' + sMES
      + ',SAL.HABESMN' + sMES + ',SAL.HABESME' + sMES + ' ';

   sSACUM := DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + sMES + ',0.00) AS SALACUMMN, '
      + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00) AS SALACUMME';

   sTotal := DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + sMES + ',0.00) AS SALTOTALMN, '
      + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
      + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00) AS SALTOTALME ';

   If (DMCXC.SRV_D = 'DB2400') Or (DMCXC.SRV_D = 'DB2NT') Then
   Begin
      sDisp := DMCXC.wReplacCeros + '(CLI.CLIECREMAX,0)-(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
         + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00)) - (' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
         + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + sMES + ',0.00))/' + FloatToStr(dTCambio) + ' DISPONIBLE';
   End
   Else
   Begin
      sDisp := DMCXC.wReplacCeros + '(CLI.CLIECREMAX,0)-(' + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00)'
         + '  - ' + DMCXC.wReplacCeros + '(HABESME' + sMES + ',0.00)) - ROUND((' + DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00)+ ' + DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00)'
         + '  - ' + DMCXC.wReplacCeros + '(HABESMN' + sMES + ',0.00))/' + FloatToStr(dTCambio) + ',2) DISPONIBLE';
   End;

   sCarAbo := DMCXC.wReplacCeros + '(SAL.DEBESMN' + sMES + ',0.00) AS CARGOSMN, ' + DMCXC.wReplacCeros + '(SAL.HABESMN' + sMES + ',0.00) AS ABONOSMN, '
      + DMCXC.wReplacCeros + '(SAL.DEBESME' + sMES + ',0.00) AS CARGOSME, ' + DMCXC.wReplacCeros + '(SAL.HABESME' + sMES + ',0.00) AS ABONOSME ';

   sSAANT := DMCXC.wReplacCeros + '(SAL.SALDSMN' + sMESA + ',0.00) AS SALANTMN, '
      + DMCXC.wReplacCeros + '(SAL.SALDSME' + sMESA + ',0.00) AS SALANTME';
   If (DMCXC.SRV_D = 'DB2400') Or (DMCXC.SRV_D = 'DB2NT') Then
      sSQL := ' SELECT SAL.CLAUXID, SAL.AUXID, ' + DMCXC.wReplacCeros + '(CLI.CLIECREMAX,0) CLIECREMAX,'
         + sDisp + ',' // DISPONIBLE
         + sSACUM + ',' // SALACUMMN y SALACUMME
         + sSAANT + ',' // SALANTMN y SALANTME
         + sCarAbo + ',' // CARGOSMN, CARGOSME, ABONOSMN y ABONOSME
         + sTotal + ',' // SALTOTALMN y SALTOTALME
         + ' CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.LETSALLOC  else 0.00 end) LETNORLOC, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.LETSALEXT  else 0.00 end) LETNOREXT, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.CHESALLOC  else 0.00 end) CHENORLOC, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.CHESALEXT  else 0.00 end) CHENOREXT, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.ANTSALLOC  else 0.00 end) ANTNORLOC, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.ANTSALEXT  else 0.00 end) ANTNOREXT, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.NCRESALLOC else 0.00 end) NCRENORLOC,'
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.NCRESALEXT else 0.00 end) NCRENOREXT '
         + ' from TGE401 SAL '
         + ' left join TGE204 CLI ON CLI.CIAID=' + quotedstr(DMCXC.cdsCxC.FieldByName('CIAID').AsString)
         + ' AND CLI.CLAUXID=SAL.CLAUXID AND CLI.CLIEID=SAL.AUXID '
         + ' left join (select CLIEID,TMONID TMONID, '
         + ' sum(case when DOCID=' + QuotedStr(sLet) + '  then CCSALLOC else 0 end) LETSALLOC, '
         + ' sum(case when DOCID=' + QuotedStr(sLet) + '  then CCSALEXT else 0 end) LETSALEXT, '
         + ' sum(case when DOCID=' + QuotedStr(sNcre) + ' then CCSALLOC else 0 end) NCRESALLOC,'
         + ' sum(case when DOCID=' + QuotedStr(sNCre) + ' then CCSALEXT else 0 end) NCRESALEXT,'
         + ' sum(case when DOCID=' + QuotedStr(sChe) + '  then CCSALLOC else 0 end) CHESALLOC, '
         + ' sum(case when DOCID=' + QuotedStr(sChe) + '  then CCSALEXT else 0 end) CHESALEXT, '
         + ' sum(case when DOCID=' + QuotedStr(sAnt) + '  then CCSALLOC else 0 end) ANTSALLOC, '
         + ' sum(case when DOCID=' + QuotedStr(sAnt) + '  then CCSALEXT else 0 end) ANTSALEXT  '
         + ' FROM CXC301 CXC '
         + ' WHERE CXC.CCFEMIS<DATE(' + QuotedStr(sFechaEmision) + ') AND CXC.CCESTADO=' + QuotedStr('P')
         + ' AND CXC.DOCID IN (' + QuotedStr(sLet) + ',' + QuotedStr(sAnt) + ',' + QuotedStr(sNcre) + ',' + QuotedStr(sChe) + ')'
         + ' GROUP BY CLIEID,TMONID) DOCS ON DOCS.CLIEID=SAL.AUXID '
         + ' WHERE SAL.CIAID=''' + GCtaCte.FMant.cds2.FieldByName('CIAID').AsString
         + ''' AND SAL.ANO=' + QuotedStr(IntToStr(iYEAR)) + ' AND SAL.CLAUXID='
         + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLAUXID').AsString)
         + ' AND SAL.AUXID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString)
   Else
    //** 24/10/2002 - PJSV
      sSQL := ' SELECT SAL.CLAUXID, SAL.AUXID, ' + DMCXC.wReplacCeros + '(CLI.CLIECREMAX,0) CLIECREMAX,'
         + sDisp + ',' // DISPONIBLE
         + sSACUM + ',' // SALACUMMN y SALACUMME
         + sSAANT + ',' // SALANTMN y SALANTME
         + sCarAbo + ',' // CARGOSMN, CARGOSME, ABONOSMN y ABONOSME
         + sTotal + ',' // SALTOTALMN y SALTOTALME
         + ' CLI.CLAUXID, CLI.CLIEID, CLI.CLIEDES, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.LETSALLOC  else 0.00 end) LETNORLOC, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.LETSALEXT  else 0.00 end) LETNOREXT, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.CHESALLOC  else 0.00 end) CHENORLOC, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.CHESALEXT  else 0.00 end) CHENOREXT, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.ANTSALLOC  else 0.00 end) ANTNORLOC, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.ANTSALEXT  else 0.00 end) ANTNOREXT, '
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' then DOCS.NCRESALLOC else 0.00 end) NCRENORLOC,'
         + ' sum(case when DOCS.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' then DOCS.NCRESALEXT else 0.00 end) NCRENOREXT '
         + ' from TGE401 SAL,TGE204 CLI,'
         + ' (select CLIEID,TMONID TMONID, '
         + ' sum(case when DOCID=' + QuotedStr(sLet) + '  then CCSALLOC else 0 end) LETSALLOC, '
         + ' sum(case when DOCID=' + QuotedStr(sLet) + '  then CCSALEXT else 0 end) LETSALEXT, '
         + ' sum(case when DOCID=' + QuotedStr(sNcre) + ' then CCSALLOC else 0 end) NCRESALLOC,'
         + ' sum(case when DOCID=' + QuotedStr(sNCre) + ' then CCSALEXT else 0 end) NCRESALEXT,'
         + ' sum(case when DOCID=' + QuotedStr(sChe) + '  then CCSALLOC else 0 end) CHESALLOC, '
         + ' sum(case when DOCID=' + QuotedStr(sChe) + '  then CCSALEXT else 0 end) CHESALEXT, '
         + ' sum(case when DOCID=' + QuotedStr(sAnt) + '  then CCSALLOC else 0 end) ANTSALLOC, '
         + ' sum(case when DOCID=' + QuotedStr(sAnt) + '  then CCSALEXT else 0 end) ANTSALEXT  '
         + ' FROM CXC301 CXC '
         + ' WHERE CXC.CCFEMIS<TO_DATE(' + QuotedStr(sFechaEmision) + ') AND CXC.CCESTADO=' + QuotedStr('P')
         + ' AND CXC.DOCID IN (' + QuotedStr(sLet) + ',' + QuotedStr(sAnt) + ',' + QuotedStr(sNcre) + ',' + QuotedStr(sChe) + ')'
         + ' GROUP BY CLIEID,TMONID) DOCS'
         + ' WHERE SAL.CIAID=' + quotedstr(GCtaCte.FMant.cds2.FieldByName('CIAID').AsString)
         + ' AND SAL.ANO=' + QuotedStr(IntToStr(iYEAR)) + ' AND SAL.CLAUXID='
         + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLAUXID').AsString)
         + ' AND SAL.AUXID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString)
         + ' AND CLI.CIAID(+)=' + quotedstr(GCtaCte.FMant.cds2.FieldByName('CIAID').AsString)
         + ' AND CLI.CLAUXID(+)=SAL.CLAUXID AND CLI.CLIEID(+)=SAL.AUXID '
         + ' AND DOCS.CLIEID(+)=SAL.AUXID';
    //**
   sMoneda := 'ME';

   sSQL := sSQL + sGroupBy;
   DMCXC.cdsQry1.Close;
   DMCXC.cdsQry1.DataRequest(sSQL);
   DMCXC.cdsQry1.Open;
End;

Procedure TFInformes.CtaCteEdita(Sender: TObject; MantFields: TFields);
Var
   dd, mm, aa: word;
   mmant, sSQL, xCalc: String;
Begin
   //sSQL  := 'CIAID='+quotedstr('01')+' and CLIEID='+quotedstr(GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString);
   //xCalc := BuscaQry('dspTGE','TGE204','VINCID',sSQL,'VINCID');
    //** 30/10/2002 - pjsv , POR DECISION DE JORGE
   //if xCalc<>'A' then
   //   CCCliente(self);

   DMCXC.cdsCxC.Filtered := False;
   DMCXC.cdsCxC.Data := GCtaCte.FMant.cds2.Data;
   DMCXC.cdsCxC.Filter := 'CIAID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CIAID').AsString)
      + ' AND CLAUXID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLAUXID').AsString)
      + ' AND CLIEID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString);
   DMCXC.cdsCxC.Filtered := True;

   Screen.Cursor := crHourGlass;

   DecodeDate(DMCXC.dateS, aa, mm, dd);

   sCIA := GCtaCte.FMant.cds2.FieldByName('CIAID').AsString;

   sSQL := ' SELECT SALDTMN' + StrZero(IntToStr(mm - 1), 2) + ' SALLOC,SALDTME' + StrZero(IntToStr(mm - 1), 2) + ' SALEXT from TGE401 '
      + ' WHERE CIAID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CIAID').AsString)
      + ' AND ANO=' + QuotedStr(IntToStr(aa)) + ' AND CLAUXID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLAUXID').AsString)
      + ' AND AUXID=' + QuotedStr(GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString);
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(sSQL);
   DMCXC.cdsQry2.Open;

   cSQLCtaCte;

   Try
   // CXC216.PAS  FEstCxCli   Cuenta Corriente de Clientes
      FEstCxCli := TFEstCxCli.create(Application);
      FEstCxCli.ClAux := GCtaCte.FMant.cds2.FieldByName('CLAUXID').AsString;
      FEstCxCli.Cliente := GCtaCte.FMant.cds2.FieldByName('CLIEID').AsString;
      FEstCxCli.ClienteDes := GCtaCte.FMant.cds2.FieldByName('CLIEDES').AsString;
      FEstCxCli.CiaID := GCtaCte.FMant.cds2.FieldByName('CIAID').AsString;
      FEstCxCli.Moneda := DMCXC.wTMonExt;

      FEstCxCli.Activar := False;
      FEstCxCli.MonLoc := False;
      FEstCxCli.Internal := True;

      FEstCxCli.SaldoIni := DMCXC.cdsQry2.FieldByName('SALLOC').AsFloat;
      FEstCxCli.SaldoIniL := DMCXC.cdsQry2.FieldByName('SALLOC').AsFloat;
      FEstCxCli.SaldoIniE := DMCXC.cdsQry2.FieldByName('SALEXT').AsFloat;
      FEstCxCli.Anio := aa;
      FEstCxCli.Mes := mm;
      ShowWindow(FEstCxCli.Handle, SW_HIDE);

      FEstCxCli.ShowModal;
   Finally

   End;
   Screen.Cursor := crDefault;
End;

Procedure TFInformes.FiltraTabla(xxCds: TwwClientDataSet; xxArchivo,
   xxCampo, xxWhere: String);
Var
   xFiltro: String;
   xSQL2: String;
Begin
   DMCXC.cdsAcceso.Filtered := False;
   DMCXC.cdsAcceso.Filter := '';
   DMCXC.cdsAcceso.Filter := 'NTabla=' + '''' + xxArchivo + '''';
   DMCXC.cdsAcceso.Filtered := True;

   xFiltro := '';
   DMCXC.cdsAcceso.First;
   While Not DMCXC.cdsAcceso.Eof Do
   Begin
      If Length(xFiltro) = 0 Then
         xFiltro := xxCampo + '=' + '''' + DMCXC.cdsAcceso.FieldByName('CODIGO').AsString + ''''
      Else
         xFiltro := xFiltro + ' or ' + xxCampo + '=' + '''' + DMCXC.cdsAcceso.FieldByName('CODIGO').AsString + '''';
      DMCXC.cdsAcceso.Next;
   End;
   If Length(xFiltro) = 0 Then
      xSQL2 := 'Select * from ' + xxArchivo;

   If Length(xFiltro) > 0 Then
   Begin
      xSQL2 := 'Select * from ' + xxArchivo + ' Where ' + xFiltro;
   End;

   If (Length(xxWhere) > 0) And (Length(xFiltro) > 0) Then
      xSQL2 := xSQL2 + ' AND ' + xxwhere;

   If (Length(xxWhere) > 0) And (Length(xFiltro) = 0) Then
      xSQL2 := xSQL2 + ' WHERE ' + xxwhere;

   xxCds.Close;
   xxCds.DataRequest(xSQL2);
   xxCds.Open;
End;

Procedure TFInformes.MueveMouse(xObjeto: TObject; Shift: TShiftState; X,
   Y: Integer);
Var
   xComponente: String;
   xForma: TForm;
Begin
   If wTool <> '' Then
   Begin
      xComponente := wTool
   End
   Else
   Begin
      xForma := Screen.ActiveForm;
      xComponente := xForma.Name;
   End;

   If xObjeto Is TForm Then
   Else
   Begin

      xComponente := xComponente + '.' + TControl(xObjeto).Name;

      If wTool <> '' Then
         DMCXC.wObjetoForma := wTool
      Else
         DMCXC.wObjetoForma := xForma.Name;

      DMCXC.wObjetoNombr := TControl(xObjeto).Name;
      If Copy(DMCXC.wObjetoNombr, 2, 1) = '2' Then
         DMCXC.wObjetoDescr := DMCXC.wObjetoDesPr + ' - ' + TControl(xObjeto).Hint
      Else
      Begin
         DMCXC.wObjetoDescr := TControl(xObjeto).Hint;
      End;
   End;
End;

Procedure TFInformes.PGridShow(Sender: TObject);
Var
   i: Integer;
   MGrid: TMant;
Begin
   MGrid := TMant(Sender);
   For i := 0 To MGrid.FMant.ComponentCount - 1 Do
   Begin
      If MGrid.FMant.Components[i].ClassName = 'TPanel' Then
         TPanel(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para botones
      If MGrid.FMant.Components[i].ClassName = 'TButton' Then
         TButton(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para bitbuttons
      If MGrid.FMant.Components[i].ClassName = 'TBitBtn' Then
         TBitBtn(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para speedbuttons
      If MGrid.FMant.Components[i].ClassName = 'TSpeedButton' Then
         TSpeedButton(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // Boton de Grid
      If MGrid.FMant.Components[i].ClassName = 'TwwIButton' Then
         TwwIButton(MGrid.FMant.components[i]).OnMouseMove := MueveMouse;
       // para la forma
      MGrid.FMant.onMouseMove := MueveMouse;
   End;
   DMCXC.AccesosUsuariosR(DMCXC.wModulo, DMCXC.wUsuario, '2', MGrid.FMant);
End;
//INICIO SAR666

Procedure CCPleRegVentas;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   Try
      frmPleRegVentas := TfrmPleRegVentas.Create(Application);
      frmPleRegVentas.ShowModal;
   Finally
      frmPleRegVentas.Free;
   End;
End;
//FIN SAR666
//INICIO HPC_201204_CXC

Procedure CCVerificaVersion;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   FInformes := TFInformes.Create(Application);
   If DMCXC.fg_VerificaVersion(FInformes.lblVersion.Caption) = False Then
   Begin
      ShowMessage('Su Sistema no está actualizado.' + #13 + 'Comuníquese con Soporte Técnico');
      Application.Terminate;
      Exit;
   End;
End;
//FIN HPC_201204_CXC
End.

