Unit Cxc314;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, Buttons, Math, ppCtrls, ppBands, ppVar, ppPrnabl,
   ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe;

Type
   TFToolLiqCob = Class(TForm)
      pnGLT: TPanel;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      Z2bbtnContab: TBitBtn;
      ppdbpPreview: TppDBPipeline;
      ppField61: TppField;
      ppField62: TppField;
      ppField63: TppField;
      ppField64: TppField;
      ppField65: TppField;
      ppField66: TppField;
      ppField67: TppField;
      ppField68: TppField;
      ppField69: TppField;
      ppField70: TppField;
      ppField71: TppField;
      ppField72: TppField;
      ppField73: TppField;
      ppField74: TppField;
      ppField75: TppField;
      ppField76: TppField;
      ppField77: TppField;
      ppField78: TppField;
      ppField79: TppField;
      ppField80: TppField;
      ppField81: TppField;
      ppField82: TppField;
      ppField83: TppField;
      ppField84: TppField;
      ppField85: TppField;
      ppField86: TppField;
      ppField87: TppField;
      ppField88: TppField;
      ppField89: TppField;
      ppField90: TppField;
      ppField91: TppField;
      ppField92: TppField;
      ppField93: TppField;
      ppField94: TppField;
      ppField95: TppField;
      ppField96: TppField;
      ppField97: TppField;
      ppField98: TppField;
      ppField99: TppField;
      ppField100: TppField;
      ppField101: TppField;
      ppField102: TppField;
      ppField103: TppField;
      ppField104: TppField;
      ppField105: TppField;
      ppField106: TppField;
      ppField107: TppField;
      ppField108: TppField;
      ppField109: TppField;
      ppField110: TppField;
      ppField111: TppField;
      ppField112: TppField;
      ppField113: TppField;
      ppField114: TppField;
      ppField115: TppField;
      ppField116: TppField;
      ppField117: TppField;
      ppField118: TppField;
      ppField119: TppField;
      pprPreview: TppReport;
      ppHeaderBand5: TppHeaderBand;
      lblCiaDes: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppLabel30: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppLabel6: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel10: TppLabel;
      lblTD: TppLabel;
      lblDiario: TppLabel;
      lblPeriodo: TppLabel;
      lblNoCompro: TppLabel;
      ppLabel4: TppLabel;
      lblProveedor: TppLabel;
      ppLabel21: TppLabel;
      lblmoneda: TppLabel;
      ppLabel9: TppLabel;
      lblTipoCamb: TppLabel;
      ppLabel5: TppLabel;
      plblglosa: TppLabel;
      ppLabel22: TppLabel;
      ppLabel1: TppLabel;
      ppLabel14: TppLabel;
      ppLabel16: TppLabel;
      ppLabel7: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel8: TppLabel;
      ppLabel12: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      lblauxiliar: TppLabel;
      ppDBText4: TppDBText;
      ppLabel11: TppLabel;
      ppDBText5: TppDBText;
      ppLabel15: TppLabel;
      pplblMesDia: TppLabel;
      ppDBText6: TppDBText;
      ppLabel13: TppLabel;
      ppLblEstado: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      pptDesc: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppLabel34: TppLabel;
      Z2bbtnPreview: TBitBtn;
      Z2sbConsultaAbono: TSpeedButton;
      Button1: TButton;
      lblContador: TLabel;
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure ppDetailBand5BeforePrint(Sender: TObject);
      Procedure Z2bbtnPreviewClick(Sender: TObject);
      Procedure Z2bbtnContabClick(Sender: TObject);
      Procedure Z2sbConsultaAbonoClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
   Private
    { Private declarations }
      Procedure LlenaDetCxC;
   Public
    { Public declarations }
   End;

Var
   FToolLiqCob: TFToolLiqCob;

Implementation

Uses CxCDM, CxC001, Cxc317;

{$R *.DFM}

Procedure TFToolLiqCob.BitBtn1Click(Sender: TObject);
Var
   sLiquidacion, sCia, sSQL, sCob, sCobDes, sWhere, sNumLiq: String;
   dFecha: TDateTime;
Begin
 //VERIFICA QUE EXISTA COBRADOR DE CONSOLIDACION
   sCia := DM1.cdsCLiqCob1.FieldByName('CIAID').AsString;
   sLiquidacion := DM1.cdsCLiqCob1.FieldByName('LICOID').AsString;
   dFecha := DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime;
   sWhere := 'CIAID=' + QuotedStr(sCIA) + ' AND COCONS=' + QuotedStr('S');
   sCob := BuscaQry('dspTGE', 'CXC206', 'COID,CONOMBRES', sWhere, 'COID');
   sCobDes := DM1.cdsQry.FieldByName('CONOMBRES').AsString;
   If sCob = '' Then
      Raise Exception.Create('No se puede Crear Consolidado porque no existe Cobrador');

{ sSQL:=' UPDATE CXC318 SET LICOMTOABOLOC=0, LICOMTOORI=0, LICOMTOABOEXT=0, LICOMTOLOC=0, LICOMTOEXT=0 '+
       ' WHERE CIAID='+QuotedStr(sCia)+
       ' AND COID='+QuotedStr(sCob)+' AND CCFEMIS='+DM1.wRepFuncDate+''''+ FORMATDATETIME(DM1.wFormatFecha,dFecha)+''' )'+
       ' AND LICOESTADO='+QuotedStr('P')+' AND LICOUSER='+QuotedStr(DM1.wUsuario);
   try
     DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
   except
   end;}

   sSQL := ' SELECT LICOID FROM CXC318 WHERE CIAID=' + QuotedStr(sCia) +
      ' AND COID=' + QuotedStr(sCob) + ' AND CCFEMIS=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dFecha) + ''' )' +
      ' AND LICOESTADO=' + QuotedStr('P') + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      sNumLiq := DM1.cdsQry.FieldByName('LICOID').AsString;
//   sNumLiqNew:='';
   //ACTUALIZA LA CABECERA DE LA LIQUIDACION DE COBRANZA
      sSQL := ' UPDATE CXC318 ' + //new
         ' SET LICOMTOABOLOC=LICOMTOABOLOC+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOABOLOC').AsFloat) + ',' +
         '     LICOMTOORI=LICOMTOORI+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOORI').AsFloat) + ',' +
         '     LICOMTOABOEXT=LICOMTOABOEXT+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOABOEXT').AsFloat) + ',' +
         '     LICOMTOLOC=LICOMTOLOC+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOLOC').AsFloat) + ',' +
         '     LICOMTOEXT=LICOMTOEXT+' + FloatToStr(DM1.cdsCLiqCob1.FieldByName('LICOMTOEXT').AsFloat) + ',' +
         ' LICOHREG=CURRENT TIME, LICOFREG=CURRENT DATE ' +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND LICOID=' + QuotedStr(sNumLiq) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   //INSERT DETALLE DE LA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC319 ' +
         ' (CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
         ' LICOELABO,LICOAPROB,FECPAGO,LICOMM,LICODD,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOTRI, ' +
         ' LICOSEM,LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CCFEMIS, ' +
         ' CLAUXID,CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,FPAGOID,LICOSALEXT,FPAGONODOC, ' +
         ' BANCOID,FLAGVAR,TMONIDPAGO,CLIEDES) ' +
         ' SELECT ' + QuotedStr(sCIA) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, ' + QuotedStr(sCob) + ' COID, LIQ.TMONID, LIQ.LICOTCAMB, LIQ.LICOMTOABOLOC, LIQ.LICOMTOORI, ' +
         ' LIQ.LICOMTOABOEXT,LIQ.LICOMTOLOC,LIQ.LICOMTOEXT,LIQ.LICOELABO,LIQ.LICOAPROB,LIQ.FECPAGO, ' +
         ' FEC.FECMES LICOMM, FEC.FECDIA LICODD,LIQ.LICOESTADO,' + QuotedStr(DM1.wUsuario) + ' LICOUSER, ' + DM1.wRepFecServi + ' LICOFREG,' + DM1.wRepTimeServi + ' LICOHREG, ' +
         ' FEC.FECANO LICOANO,FEC.FECTRIM LICOTRI, FEC.FECSEM LICOSEM,FEC.FECSS LICOSS,FEC.FECANO||FEC.FECMES LICOANOMM, FEC.FECAATRI LICOAATRI,LIQ.DOCID,FEC.FECAASEM LICOAASEM,LIQ.CCNODOC,FEC.FECAASS LICOAASS, ' +
         ' LIQ.TDIARID,LIQ.CLIEID,LIQ.CCSERIE,' + DM1.wRepFecServi + ' CCFEMIS,LIQ.CLAUXID,' + QuotedStr(sCobDes) + ' CONOMBRES,LIQ.TVTAID,LIQ.CCNORGE, ' +
         ' LIQ.LICOTCAMBL,LIQ.LICOSALORI,LIQ.LICOSALLOC,LIQ.FPAGOID,LIQ.LICOSALEXT,LIQ.FPAGONODOC,LIQ.BANCOID, ' +
         ' LIQ.FLAGVAR,LIQ.TMONIDPAGO,LIQ.CLIEDES ' +
         ' FROM CXC319 LIQ ' +
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=' + DM1.wRepFecServi +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND LICOID=' + QuotedStr(sLiquidacion) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);

      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   //INSERTA DETALLE DE LA FORMA DE PAGO
      sSQL := ' INSERT INTO CXC320 ' +
         ' (CIAID,LICOID,DOCID,CLAUXID,CCSERIE,CLIEID,CLIERUC,CCNODOC,FPAGOID, ' +
         ' FPAGODES,LICOTCAMB,LICOMTOORI,LICOMTOLOC,LICOMTOEXT,BANCOID,BANCODES,LICONOCHQ, ' +
         ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM, ' +
         ' LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM,LICOAATRI,LICOAASEM,LICOAASS, ' +
         ' FLAGVAR,TMONID,LICOTCAMBL,FECPAGO,TMONIDPAGO,LICOMTOABOORI,LICOMTOABOLOC, ' +
         ' LICOMTOABOEXT,CCNOREG,COID,TVTAID,FECEMICHQ,LICOMTOANTORI,LICOMTOANTLOC,LICOMTOANTEXT,CCBCOID) ' +
         ' SELECT ' + QuotedStr(sCia) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, PAG.DOCID, PAG.CLAUXID, PAG.CCSERIE, PAG.CLIEID, PAG.CLIERUC, PAG.CCNODOC, ' +
         ' PAG.FPAGOID, PAG.FPAGODES, PAG.LICOTCAMB, PAG.LICOMTOORI, PAG.LICOMTOLOC, PAG.LICOMTOEXT, PAG.BANCOID, ' +
         ' PAG.BANCODES, PAG.LICONOCHQ, PAG.LICOELABO, PAG.LICOAPROB, PAG.LICOESTADO, PAG.LICOUSER, PAG.LICOFREG, ' +
         ' PAG.LICOHREG, PAG.LICOANO, PAG.LICOMM, PAG.LICODD, PAG.LICOTRI, PAG.LICOSEM, PAG.LICOSS, PAG.LICOANOMM, ' +
         ' PAG.LICOAATRI, PAG.LICOAASEM, PAG.LICOAASS, PAG.FLAGVAR, PAG.TMONID, PAG.LICOTCAMBL, PAG.FECPAGO, ' +
         ' PAG.TMONIDPAGO, PAG.LICOMTOABOORI, PAG.LICOMTOABOLOC, PAG.LICOMTOABOEXT, PAG.CCNOREG, ' + QuotedStr(sCob) + ' COID, ' +
         ' PAG.TVTAID, PAG.FECEMICHQ, PAG.LICOMTOANTORI, PAG.LICOMTOANTLOC, PAG.LICOMTOANTEXT,PAG.CCBCOID ' +
         ' FROM CXC320 PAG ' +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND LICOID=' + QuotedStr(sLiquidacion) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   End
   Else
   Begin

   // FALTA CAPTURAR EL NUMERO DE LA LIQUIDACION A INSERTAR
      sSQL := ' SELECT MAX(LICOID) NUMERO FROM CXC318 ' +
         ' WHERE CIAID=' + QuotedStr(sCia);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If (DM1.cdsQry.FieldByName('NUMERO').IsNull) Or (DM1.cdsQry.FieldByName('NUMERO').AsString = '') Then
         sNumLiq := '000001'
      Else
         sNumLiq := StrZero(IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUMERO').AsString) + 1), 6);

   // INSERT LA CABECERA DE LA NUEVA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC318 ' +
         ' (CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT,LICOELABO, ' +
         ' LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM,LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM, ' +
         ' LICOAATRI,LICOAASEM,LICOAASS,CCFEMIS,CLAUXID,CCONOMBRES,TVTAID) ' +
         ' SELECT ' + QuotedStr(sCia) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, ' + QuotedStr(sCob) + ' COID, LIQ.TMONID, LIQ.LICOTCAMB, LIQ.LICOMTOABOLOC, LIQ.LICOMTOORI, ' +
         ' LIQ.LICOMTOABOEXT, LIQ.LICOMTOLOC, LIQ.LICOMTOEXT, LIQ.LICOELABO, LIQ.LICOAPROB, ''P'' LICOESTADO, ' +
         QuotedStr(DM1.wUsuario) + ' LICOUSER, ' + DM1.wRepFecServi + ' LICOFREG, ' + DM1.wRepTimeServi + ' LICOHREG, FEC.FECANO LICOANO, FEC.FECMES LICOMM, FEC.FECDIA LICODD, FEC.FECTRIM LICOTRI, ' +
         ' FEC.FECSEM LICOSEM, FEC.FECSS LICOSS, FEC.FECANO||FEC.FECMES LICOANOMM, FEC.FECAATRI LICOAATRI, FEC.FECAASEM LICOAASEM, FEC.FECAASS LICOAASS, LIQ.CCFEMIS, ' +
         ' LIQ.CLAUXID, ' + QuotedStr(sCobDes) + ', LIQ.TVTAID ' +
         ' FROM CXC318 LIQ ' +
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=' + DM1.wRepFecServi +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND LICOID=' + QuotedStr(sLiquidacion) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   //INSERT DETALLE DE LA LIQUIDACION DE COBRANZA
      sSQL := ' INSERT INTO CXC319 ' +
         ' (CIAID,LICOID,COID,TMONID,LICOTCAMB,LICOMTOABOLOC,LICOMTOORI,LICOMTOABOEXT,LICOMTOLOC,LICOMTOEXT, ' +
         ' LICOELABO,LICOAPROB,FECPAGO,LICOMM,LICODD,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOTRI, ' +
         ' LICOSEM,LICOSS,LICOANOMM,LICOAATRI,DOCID,LICOAASEM,CCNODOC,LICOAASS,TDIARID,CLIEID,CCSERIE,CCFEMIS, ' +
         ' CLAUXID,CONOMBRES,TVTAID,CCNORGE,LICOTCAMBL,LICOSALORI,LICOSALLOC,FPAGOID,LICOSALEXT,FPAGONODOC, ' +
         ' BANCOID,FLAGVAR,TMONIDPAGO,CLIEDES) ' +
         ' SELECT ' + QuotedStr(sCia) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, ' + QuotedStr(sCob) + ' COID, LIQ.TMONID, LIQ.LICOTCAMB, LIQ.LICOMTOABOLOC, LIQ.LICOMTOORI, ' +
         ' LIQ.LICOMTOABOEXT,LIQ.LICOMTOLOC,LIQ.LICOMTOEXT,LIQ.LICOELABO,LIQ.LICOAPROB,LIQ.FECPAGO, ' +
         ' FEC.FECMES LICOMM, FEC.FECDIA LICODD,LIQ.LICOESTADO,' + QuotedStr(DM1.wUsuario) + ' LICOUSER, ' + DM1.wRepFecServi + ' LICOFREG,' + DM1.wRepTimeServi + ' LICOHREG, ' +
         ' FEC.FECANO LICOANO,FEC.FECTRIM LICOTRI, FEC.FECSEM LICOSEM,FEC.FECSS LICOSS,FEC.FECANO||FEC.FECMES LICOANOMM, FEC.FECAATRI LICOAATRI,LIQ.DOCID,FEC.FECAASEM LICOAASEM,LIQ.CCNODOC,FEC.FECAASS LICOAASS, ' +
         ' LIQ.TDIARID,LIQ.CLIEID,LIQ.CCSERIE,' + DM1.wRepFecServi + ' CCFEMIS,LIQ.CLAUXID,' + QuotedStr(sCobDes) + ' CONOMBRES,LIQ.TVTAID,LIQ.CCNORGE, ' +
         ' LIQ.LICOTCAMBL,LIQ.LICOSALORI,LIQ.LICOSALLOC,LIQ.FPAGOID,LIQ.LICOSALEXT,LIQ.FPAGONODOC,LIQ.BANCOID, ' +
         ' LIQ.FLAGVAR,LIQ.TMONIDPAGO,LIQ.CLIEDES ' +
         ' FROM CXC319 LIQ ' +
         ' LEFT JOIN TGE114 FEC ON FEC.FECHA=' + DM1.wRepFecServi +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND LICOID=' + QuotedStr(sLiquidacion) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

   //INSERTA DETALLE DE LA FORMA DE PAGO

      sSQL := ' INSERT INTO CXC320 ' +
         ' (CIAID,LICOID,DOCID,CLAUXID,CCSERIE,CLIEID,CLIERUC,CCNODOC,FPAGOID, ' +
         ' FPAGODES,LICOTCAMB,LICOMTOORI,LICOMTOLOC,LICOMTOEXT,BANCOID,BANCODES,LICONOCHQ, ' +
         ' LICOELABO,LICOAPROB,LICOESTADO,LICOUSER,LICOFREG,LICOHREG,LICOANO,LICOMM, ' +
         ' LICODD,LICOTRI,LICOSEM,LICOSS,LICOANOMM,LICOAATRI,LICOAASEM,LICOAASS, ' +
         ' FLAGVAR,TMONID,LICOTCAMBL,FECPAGO,TMONIDPAGO,LICOMTOABOORI,LICOMTOABOLOC, ' +
         ' LICOMTOABOEXT,CCNOREG,COID,TVTAID,FECEMICHQ,LICOMTOANTORI,LICOMTOANTLOC,LICOMTOANTEXT,CCBCOID) ' +
         ' SELECT ' + QuotedStr(sCia) + ' CIAID, ' + QuotedStr(sNumLiq) + ' LICOID, PAG.DOCID, PAG.CLAUXID, PAG.CCSERIE, PAG.CLIEID, PAG.CLIERUC, PAG.CCNODOC, ' +
         ' PAG.FPAGOID, PAG.FPAGODES, PAG.LICOTCAMB, PAG.LICOMTOORI, PAG.LICOMTOLOC, PAG.LICOMTOEXT, PAG.BANCOID, ' +
         ' PAG.BANCODES, PAG.LICONOCHQ, PAG.LICOELABO, PAG.LICOAPROB, PAG.LICOESTADO, PAG.LICOUSER, PAG.LICOFREG, ' +
         ' PAG.LICOHREG, PAG.LICOANO, PAG.LICOMM, PAG.LICODD, PAG.LICOTRI, PAG.LICOSEM, PAG.LICOSS, PAG.LICOANOMM, ' +
         ' PAG.LICOAATRI, PAG.LICOAASEM, PAG.LICOAASS, PAG.FLAGVAR, PAG.TMONID, PAG.LICOTCAMBL, PAG.FECPAGO, ' +
         ' PAG.TMONIDPAGO, PAG.LICOMTOABOORI, PAG.LICOMTOABOLOC, PAG.LICOMTOABOEXT, PAG.CCNOREG, ' + QuotedStr(sCob) + ' COID, ' +
         ' PAG.TVTAID, PAG.FECEMICHQ, PAG.LICOMTOANTORI, PAG.LICOMTOANTLOC, PAG.LICOMTOANTEXT,PAG.CCBCOID ' +
         ' FROM CXC320 PAG ' +
         ' WHERE CIAID=' + QuotedStr(sCia) + ' AND LICOID=' + QuotedStr(sLiquidacion) + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
   End;
   FPrincipal.GLiquidacion.RefreshFilter;
End;

Procedure TFToolLiqCob.BitBtn2Click(Sender: TObject);
Var
   sCia, sSQL, sCob, sCobDes, sWhere, sNumLiq: String;
   dFecha: TDateTime;
Begin
 //VERIFICA QUE EXISTA COBRADOR DE CONSOLIDACION
   sCia := DM1.cdsCLiqCob1.FieldByName('CIAID').AsString;
   dFecha := DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime;
   sWhere := 'CIAID=' + QuotedStr(sCIA) + ' AND COCONS=' + QuotedStr('S');
   sCob := BuscaQry('dspTGE', 'CXC206', 'COID,CONOMBRES', sWhere, 'COID');
   sCobDes := DM1.cdsQry.FieldByName('CONOMBRES').AsString;
   If sCob = '' Then
      Raise Exception.Create('No se puede Crear Consolidado porque no existe Cobrador');

   sSQL := ' SELECT LICOID FROM CXC318 WHERE CIAID=' + QuotedStr(sCia) +
      ' AND COID=' + QuotedStr(sCob) + ' AND CCFEMIS=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dFecha) + ''' )' +
      ' AND LICOESTADO=' + QuotedStr('P') + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      sSQL := ' UPDATE CXC318 SET LICOMTOABOLOC=0, LICOMTOORI=0, LICOMTOABOEXT=0, LICOMTOLOC=0, LICOMTOEXT=0 ' +
         ' WHERE CIAID=' + QuotedStr(sCia) +
         ' AND COID=' + QuotedStr(sCob) + ' AND CCFEMIS=' + DM1.wRepFuncDate + '''' + FORMATDATETIME(DM1.wFormatFecha, dFecha) + ''' )' +
         ' AND LICOESTADO=' + QuotedStr('P') + ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

      sSQL := ' DELETE FROM CXC319 ' +
         ' WHERE CIAID=' + QuotedStr(sCia) +
         ' AND COID=' + QuotedStr(sCob) + ' AND LICOID=' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString) +
         ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;

      sSQL := ' DELETE FROM CXC320 ' +
         ' WHERE CIAID=' + QuotedStr(sCia) +
         ' AND COID=' + QuotedStr(sCob) + ' AND LICOID=' + QuotedStr(DM1.cdsQry.FieldByName('LICOID').AsString) +
         ' AND LICOUSER=' + QuotedStr(DM1.wUsuario);
      Try
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      Except
      End;
      FPrincipal.GLiquidacion.RefreshFilter;
   End;
End;

Procedure TFToolLiqCob.ppDetailBand5BeforePrint(Sender: TObject);
Begin
   pplblMesDia.Caption := Dm1.CdsCxC.FieldByName('CNTFEMIS').AsString;
End;

Procedure TFToolLiqCob.Z2bbtnPreviewClick(Sender: TObject);
Var
   a, m, d: word;
   sm, sa, mes, ano, xWhere, mesdes, tmoneda, MONABR: String;
   sSQL, sCob, sTdiario, sNoReg, sNoRegCNT300, sNoRegCXC318, sNoRegCXC301: String;
Begin

   DecodeDate(DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime, a, m, d);
   sm := StrZero(IntToStr(m), 2);
   sa := StrZero(IntToStr(a), 4);
   sCob := DM1.BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=' + QuotedStr('S') + ' AND CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString), 'COID');
   sTDiario := DM1.BuscaQry2('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=''CXC'' AND DOC_FREG=''C''', 'TDIARID');

   If DM1.cdsCLiqCob1.FieldByName('COID').AsString <> sCob Then
   Begin
      ShowMessage('El registro no es Consolidado.');
      exit;
   End;

   If DM1.cdsCLiqCob1.FieldByName('LICOCAJA').AsString <> 'S' Then
   Begin
      ShowMessage('El registro no está aceptado en Caja.');
      exit;
   End;

   If DM1.cdsCLiqCob1.FieldByName('LICOCONTA').AsString <> 'S' Then
   Begin

      sSQL := ' SELECT MAX(INTEGER(CNTCOMPROB))+1 NUMERO FROM CNT300 ' +
         ' WHERE ' +
         ' CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) + ' AND ' +
         ' TDIARID=' + QuotedStr(sTDiario) + ' AND ' +
         ' CNTANOMM=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
         sNoRegCNT300 := '0000000001'
      Else
         sNoRegCNT300 := StrZero(DM1.cdsQry.FieldByName('NUMERO').AsString, 10);

      sSQL := ' SELECT MAX(INTEGER(CCNOREG))+1 NUMERO FROM CXC318 ' +
         ' WHERE CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) +
         ' AND LICOANOMM=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString) + ' AND CCNOREG<>''''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
         sNoRegCXC318 := '0000000001'
      Else
         sNoRegCXC318 := StrZero(DM1.cdsQry.FieldByName('NUMERO').AsString, 10);

      sSQL := ' SELECT MAX(INTEGER(CCNOREG))+1 NUMERO FROM CXC301 ' +
         ' WHERE CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) +
         ' AND TDIARID=' + QuotedSTr(sTDiario) +
         ' AND CCANOMES=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
         sNoRegCXC301 := '0000000001'
      Else
         sNoRegCXC301 := StrZero(DM1.cdsQry.FieldByName('NUMERO').AsString, 10);

      sNoReg := StrZero(IntToStr(Max(Max(StrToInt(sNoRegCNT300), StrToInt(sNoRegCXC318)), StrToInt(sNoRegCXC301))), 10);

      DM1.GeneraContab320(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString,
         sTDiario,
         DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString,
         sNoReg, Self, 'P', DM1.cdsCLiqCob1.FieldByName('LICOID').AsString, DM1.cdsCLiqCob1.FieldByName('COID').AsString);

      dm1.cdsCXC.Data := dm1.cdsMovCnt.data;

   End;

   If DM1.cdsCLiqCob1.FieldByName('LICOCONTA').AsString = 'S' Then
   Begin
      ssql := 'SELECT * FROM CNT301 '
         + 'WHERE CIAID=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) + ' AND '
         + 'CNTANOMM=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString) + ' AND '
         + 'TDIARID=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('TDIARID').AsString) + ' AND '
         + 'CNTCOMPROB=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('CCNOREG').AsString)
         + ' order by CNT301.CNTREG';
      dm1.cdsCxC.Close;
      dm1.cdsCxC.DataRequest(sSQL);
      dm1.cdsCxC.Open;
   End;

   ppdbpPreview.DataSource := dm1.dsCxC;

   pprPreview.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CxCVoucher.rtm';
   pprPreview.template.LoadFromFile;

   If DM1.cdsCLiqCob1.FieldByName('LICOCONTA').AsString <> 'S' Then
      pplblestado.caption := 'Previo'
   Else
      pplblestado.caption := 'Contabilizado';

   lblProveedor.Caption := 'FALTA DEFINIR';
   sSQL := 'SELECT CNTGLOSA FROM CNT310 WHERE CIAID=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) + ' AND '
      + 'CNTANOMM=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString) + ' AND '
      + 'TDIARID=' + quotedstr(sTdiario) + ' AND '
      + 'CNTCOMPROB=' + quotedstr(sNoReg);
   dm1.cdsQry5.close;
   dm1.cdsQry5.ProviderName := 'dspTGE';
   dm1.cdsQry5.DataRequest(ssql);
   dm1.cdsQry5.Open;

   lblTipoCamb.Caption := FloatToStrF(DM1.cdsCLiqCob1.FieldByName('LICOTCAMB').AsFloat, ffNumber, 10, 3);

      //lblPeriodo.Caption  := meAnoMM.text ;  reemplazado por
   mes := copy(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString, 5, 2);
   ano := copy(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString, 1, 4);

   xWhere := 'MESIDR=''' + mes + '''';
   mesdes := DM1.BuscaQry2('dspTGE', 'TGE181', 'MESDESL', XWHERE, 'MESDESL');
   lblPeriodo.Caption := mesdes + ' ' + ano;
   lblNoCompro.Caption := sNoReg;
   tMoneda := DM1.BuscaQry2('dspTGE', 'TGE103', 'TMON_LOC', 'TMONID=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('TMONID').AsString), 'TMON_LOC');
   MONABR := DM1.BuscaQry2('dspTGE', 'TGE103', 'TMONABR', 'TMONID=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('TMONID').AsString), 'TMONABR');
   ppLabel15.Caption := MONABR + FloatToStrF(DM1.cdsCLiqCob1.FieldByName('LICOMTOORI').AsFloat, ffNumber, 15, 2);
      {Dm1.CdsDetCxC.first;
      while not Dm1.CdsDetCxC.EOF do
      begin
         if Dm1.CdsDetCxC.FieldByName('TIPDET').Asstring = 'TO' then
         begin
            ppLabel15.Caption  := MONABR+FloatToStrF(DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat,ffNumber,15,2);
            break;
         end;
         Dm1.CdsDetCxC.next;
      end;}
   If TMoneda = 'L' Then
   Begin
      ppLabel12.Visible := false;
         //ppDBText1.Visible:= false;
      ppLabel7.Visible := false;
         //ppDBText2.Visible:= false;
   End;

   lblCiades.Caption := BuscaQry('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString), 'CIADES');
   lblauxiliar.Caption := DM1.cdsCLiqCob1.FieldByName('LICOUSER').AsString;
   lblDiario.Caption := BuscaQry('dspTGE', 'TGE104', 'TDIARDES', 'TDIARID=' + QuotedStr(sTDiario), 'TDIARDES');
   lblTD.Caption := sTDiario;
   lblTipoCamb.Caption := FloatToStrF(DM1.cdsCLiqCob1.FieldByName('LICOTCAMB').AsFloat, ffNumber, 10, 3);
   lblNoCompro.Caption := sNoReg;
   lblProveedor.Caption := DM1.cdsCLiqCob1.FieldByName('LICOUSER').AsString;
   lblmoneda.caption := DM1.BuscaQry2('dspTGE', 'TGE103', 'TMONDES', 'TMONID=' + quotedstr(DM1.cdsCLiqCob1.FieldByName('TMONID').AsString), 'TMONDES');
   pLblglosa.caption := 'CONSOLIDADO N° ' + DM1.cdsCLiqCob1.FieldByName('LICOID').AsString + ' DEL ' + DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsString;

   dm1.cdsCxC.IndexFieldNames := 'CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := Nil;
   dm1.cdsCxC.IndexFieldNames := '';
End;

Procedure TFToolLiqCob.Z2bbtnContabClick(Sender: TObject);
Var
   a, m, d: word;
   sm, sa, mes, ano, xWhere, mesdes, tmoneda, MONABR: String;
   sSQL, sCob, sTdiario, sNoReg, sNoRegCNT300, sNoRegCXC318, sNoRegCXC301: String;
Begin
   DecodeDate(DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsDateTime, a, m, d);
   sm := StrZero(IntToStr(m), 2);
   sa := StrZero(IntToStr(a), 4);
   sCob := DM1.BuscaQry2('dspTGE', 'CXC206', 'COID', 'COCONS=' + QuotedStr('S') + ' AND CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString), 'COID');
   sTDiario := DM1.BuscaQry2('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=''CXC'' AND DOC_FREG=''C''', 'TDIARID');

   If dm1.MesCerrado(sm, sa, DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) Then
   Begin
      ShowMessage(' Mes cerrado, no se puede contabilizar');
      exit;
   End;

   If DM1.cdsCLiqCob1.FieldByName('LICOCONTA').AsString = 'S' Then
   Begin
      ShowMessage('Ya se encuentra contabilizado');
      exit;
   End;

   If DM1.cdsCLiqCob1.FieldByName('COID').AsString <> sCob Then
   Begin
      ShowMessage('El registro no es Consolidado.');
      exit;
   End;

   If DM1.cdsCLiqCob1.FieldByName('LICOCAJA').AsString <> 'S' Then
   Begin
      ShowMessage('El registro no está aceptado en Caja.');
      exit;
   End;

   If MessageDlg('Contabilizar Documento' + chr(13) + chr(13) +
      '   ¿ Esta Seguro ?    ',
      mtConfirmation, [mbYes, mbNo], 0) In [mrNo, mrCancel] Then Exit;

   sSQL := ' SELECT MAX(INTEGER(CNTCOMPROB))+1 NUMERO FROM CNT300 ' +
      ' WHERE CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) +
      ' AND TDIARID=' + QuotedStr(sTDiario) + ' AND CNTANOMM=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
      sNoRegCNT300 := '0000000001'
   Else
      sNoRegCNT300 := StrZero(DM1.cdsQry.FieldByName('NUMERO').AsString, 10);

   sSQL := ' SELECT MAX(INTEGER(CCNOREG))+1 NUMERO FROM CXC318 ' +
      ' WHERE CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) +
      ' AND LICOANOMM=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString) + ' AND CCNOREG<>''''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
      sNoRegCXC318 := '0000000001'
   Else
      sNoRegCXC318 := StrZero(DM1.cdsQry.FieldByName('NUMERO').AsString, 10);

   sSQL := ' SELECT MAX(INTEGER(CCNOREG))+1 NUMERO FROM CXC301 ' +
      ' WHERE CIAID=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) +
      ' AND TDIARID=' + QuotedStr(sTDiario) +
      ' AND CCANOMES=' + QuotedStr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
      sNoRegCXC301 := '0000000001'
   Else
      sNoRegCXC301 := StrZero(DM1.cdsQry.FieldByName('NUMERO').AsString, 10);

   sNoReg := StrZero(IntToStr(Max(Max(StrToInt(sNoRegCNT300), StrToInt(sNoRegCXC318)), StrToInt(sNoRegCXC301))), 10);

   DM1.GeneraContab320(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString,
      sTDiario,
      DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString,
      sNoReg, Self, 'C', DM1.cdsCLiqCob1.FieldByName('LICOID').AsString, DM1.cdsCLiqCob1.FieldByName('COID').AsString);

   DM1.cdsCLiqCob1.Edit;
   DM1.cdsCLiqCob1.FieldByName('TDIARID').AsString := sTDiario;
   DM1.cdsCLiqCob1.FieldByName('CCFCOMP').AsDateTime := DateS;
   DM1.cdsCLiqCob1.FieldByName('CCNOREG').AsString := sNoReg;
   DM1.cdsCLiqCob1.FieldByName('LICOCONTA').AsString := 'S';
   DM1.cdsCLiqCob1.Post;
   DM1.AplicaDatos(DM1.cdsCLiqCob1, 'CLiqCob1');

  {    dm1.cdsCXC.Data:=dm1.cdsMovCnt.data;

      ppdbpPreview.DataSource := dm1.dsCxC;

      pprPreview.TEMPLATE.FileName:=ExtractFilePath( application.ExeName ) + wRutaRpt+'\CxCVoucher.rtm' ;
      pprPreview.template.LoadFromFile ;

      pplblestado.caption:='Previo';
      lblProveedor.Caption:='FALTA DEFINIR';
      sSQL:='SELECT CNTGLOSA FROM CNT310 WHERE CIAID='+quotedstr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString) +' AND '
           +  'CNTANOMM='+quotedstr(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString) +' AND '
           +  'TDIARID='+quotedstr(sTdiario) +' AND '
           +  'CNTCOMPROB='+quotedstr(sNoReg);
      dm1.cdsQry5.close;
      dm1.cdsQry5.ProviderName := 'dspTGE';
      dm1.cdsQry5.DataRequest(ssql);
      dm1.cdsQry5.Open;

      lblTipoCamb.Caption := FloatToStrF(DM1.cdsCLiqCob1.FieldByName('LICOTCAMB').AsFloat,ffNumber,10,3);

      mes:=copy(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString,5,2);
      ano:=copy(DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString,1,4);

      xWhere := 'MESIDR='''+mes+'''';
      mesdes := DM1.BuscaQry2('dspTGE','TGE181','MESDESL',XWHERE,'MESDESL');
      lblPeriodo.Caption  :=mesdes+' '+ano;
      lblNoCompro.Caption := sNoReg;
      pplblestado.caption :='Previo';
      tMoneda := DM1.BuscaQry2('dspTGE','TGE103','TMON_LOC','TMONID='+quotedstr(DM1.cdsCLiqCob1.FieldByName('TMONID').AsString),'TMON_LOC');
      MONABR:= DM1.BuscaQry2('dspTGE','TGE103','TMONABR','TMONID='+quotedstr(DM1.cdsCLiqCob1.FieldByName('TMONID').AsString),'TMONABR');
      ppLabel15.Caption:=MONABR+FloatToStrF(DM1.cdsCLiqCob1.FieldByName('LICOMTOORI').AsFloat,ffNumber,15,2);
      If TMoneda = 'L' then
      begin
         ppLabel12.Visible := false;
         //ppDBText1.Visible:= false;
         ppLabel7.Visible:= false;
         //ppDBText2.Visible:= false;
      end;

   lblCiades.Caption   := BuscaQry('dspTGE','TGE101','CIADES','CIAID='+QuotedStr(DM1.cdsCLiqCob1.FieldByName('CIAID').AsString),'CIADES');
   lblauxiliar.Caption := DM1.cdsCLiqCob1.FieldByName('LICOUSER').AsString;
   lblDiario.Caption   := BuscaQry('dspTGE','TGE104','TDIARDES','TDIARID='+QuotedStr(sTDiario),'TDIARDES');
   lblTD.Caption       := sTDiario;
   lblTipoCamb.Caption := FloatToStrF(DM1.cdsCLiqCob1.FieldByName('LICOTCAMB').AsFloat,ffNumber,10,3);
   lblNoCompro.Caption := sNoReg;
   lblProveedor.Caption:= DM1.cdsCLiqCob1.FieldByName('LICOUSER').AsString;
   lblmoneda.caption   := DM1.BuscaQry2('dspTGE','TGE103','TMONDES','TMONID='+quotedstr(DM1.cdsCLiqCob1.FieldByName('TMONID').AsString),'TMONDES');
   pLblglosa.caption   := 'CONSOLIDADO N° '+DM1.cdsCLiqCob1.FieldByName('LICOID').AsString+' DEL '+DM1.cdsCLiqCob1.FieldByName('CCFEMIS').AsString;

   dm1.cdsCxC.IndexFieldNames:='CNTREG';

   pprPreview.Print;
   pprPreview.Stop;
   ppdbpPreview.DataSource := nil ;
   dm1.cdsCxC.IndexFieldNames:='';}
   ShowMessage('Registro Contabilizado' + chr(13) + chr(13) +
      'Periodo         : ' + DM1.cdsCLiqCob1.FieldByName('LICOANOMM').AsString + chr(13) +
      'Comprobante: ' + sNoReg);

End;

Procedure TFToolLiqCob.Z2sbConsultaAbonoClick(Sender: TObject);
Begin
   Try
      DM1.cdsFPago.Filter := 'FPAGOCXC=''S'' AND FEFE <>''1'' ';
      DM1.cdsFPago.Filtered := True;

      FConsultaPago := TFConsultaPago.Create(Self);
      FConsultaPago.ShowModal;

   Finally
      FConsultaPago.Free;
      DM1.cdsFPago.Filter := '';
      DM1.cdsFPago.Filtered := False;
   End;
End;

Procedure TFToolLiqCob.Button1Click(Sender: TObject);
Var
   sSQL: String;
Begin
   Filtracds(DM1.cdsDetCxC, 'Select * from CXC302 Where '
      + 'CIAID=' + '''' + 'CLG' + '''' + ' and '
      + 'CLIEID=' + '''' + 'CLG' + '''' + ' and '
      + 'DOCID=' + '''' + 'CLG' + '''' + ' and '
      + 'CCSERIE=' + '''' + 'CLG' + '''' + ' and '
      + 'CCNODOC=' + '''' + 'CLG' + '''');

   Filtracds(DM1.cdsDetPagoLiq, 'Select * from CXC320 Where '
      + 'CIAID=' + '''' + '01' + '''' + ' and '
      + 'COID<>' + '''' + 'CON' + '''' + ' and '
      + 'CCNODOC>=' + '''' + '0033152918' + '''' + ' and '
      + 'DOCID=' + '''' + '24' + '''');

   DM1.cdsDetPagoLiq.First;

   While Not DM1.cdsDetPagoLiq.EOF Do
   Begin
      Application.ProcessMessages;
      lblContador.caption := IntToStr(DM1.cdsDetPagoLiq.Recno) + ' de ' + IntToStr(DM1.cdsDetPagoLiq.RecordCount);

     // INSERTA EL REGISTRO DEL ANTICIPO EN EL HABER
      DM1.cdsDetCxC.Insert;
      LlenaDetCxC;
      BuscaQry('dspTGE', 'CXC208', 'CIAID,CPTOCAB,CPTODES,CPTOABR,CUENTAID,TREGID,TIPDET,CCDH', 'CIAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DM1.wsAnt) +
         ' AND TMONID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString) +
         ' AND TVTAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString), 'CPTOCAB');
      DM1.cdsDetCxC.Edit;
      DM1.cdsDetCxC.FieldByName('TREGID').AsString := DM1.cdsQry.FieldByName('TREGID').AsString;
      DM1.cdsDetCxC.FieldByName('TIPDET').AsString := DM1.cdsQry.FieldByName('TIPDET').AsString;
      DM1.cdsDetCxC.FieldByName('CCDH').AsString := DM1.cdsQry.FieldByName('CCDH').AsString;
      DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString;
      DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString;
      DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString;
      DM1.cdsDetCxC.FieldByName('CPTOID').AsString := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
      DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CUENTAID').AsString;
      DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
      DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat;
      DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat;
      DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat;
      DM1.cdsDetCxC.Post;
     // INSERTA EL REGISTRO DEL ANTICIPO EN EL DEBE

      DM1.cdsDetCxC.Insert;
      LlenaDetCxC;
      DM1.cdsDetCxC.Edit;
      If (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = dm1.wsFeFe) Or (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DM1.wsFChe) Then
      Begin
         BuscaQry('dspTGE', 'TGE105', 'REMESAID', 'BCOTIPCTA=''C''', 'REMESAID');
         DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('REMESAID').AsString;
         DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
         DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
      End;

      If (DM1.cdsDetPagoLiq.FieldByName('FPAGOID').AsString = DM1.wsFNDep) Then
      Begin
         BuscaQry('dspTGE', 'TGE106', 'CTAREMES', 'CIAID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString) + ' AND BANCOID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('BANCOID').AsString) +
            ' AND CCBCOID=' + QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CCBCOID').AsString), 'CTAREMES');
         DM1.cdsDetCxC.FieldByName('CUENTAID').AsString := DM1.cdsQry.FieldByName('CTAREMES').AsString;
         DM1.cdsDetCxC.FieldByName('CPTOID').AsString := BuscaQry('dspTGE', 'CXC201', 'CPTOID,CPTODES,CUENTAID', 'CUENTAID=' + QuotedStr(DM1.cdsDetCxC.FieldByName('CUENTAID').AsString), 'CPTOID');
         DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString := DM1.cdsQry.FieldByName('CPTODES').AsString;
      End;

      DM1.cdsDetCxC.FieldByName('DOCID').AsString := DM1.cdsDetPagoLiq.FieldByName('DOCID').AsString;
      DM1.cdsDetCxC.FieldByName('CCSERIE').AsString := DM1.cdsDetPagoLiq.FieldByName('CCSERIE').AsString;
      DM1.cdsDetCxC.FieldByName('CCNODOC').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNODOC').AsString;
      DM1.cdsDetCxC.FieldByName('CCDH').AsString := 'D';
      DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOORI').AsFloat;
      DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOLOC').AsFloat;
      DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOMTOEXT').AsFloat;
      DM1.cdsDetCxC.FieldByName('TIPDET').AsString := 'MN';
      DM1.cdsDetCxC.FieldByName('TREGID').AsString := BuscaQry('dspTGE', 'TGE128', 'TREGID,TIPDET', 'TIPDET=''MN''', 'TREGID');

      DM1.cdsDetCxC.Post;
      DM1.AplicaDatos(DM1.cdsDetCxC, 'DetCxC');

      DM1.cdsDetPagoLiq.Next;
   End;
End;

Procedure TFToolLiqCob.LlenaDetCxC;
Begin
   DM1.cdsDetCxC.Edit;
   DM1.cdsDetCxC.FieldByName('CIAID').AsString := DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString;
   DM1.cdsDetCxC.FieldByName('TDIARID').AsString := BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=' + QuotedStr(DM1.wModulo) + ' AND DOCID=' + QuotedStr(DM1.wsAnt), 'TDIARID');
   DM1.cdsDetCxC.FieldByName('CCNOREG').AsString := DM1.cdsDetPagoLiq.FieldByName('CCNOREG').AsString;
   DM1.cdsDetCxC.FieldByName('CLAUXID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString;
   DM1.cdsDetCxC.FieldByName('CLIEID').AsString := DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString;
   DM1.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCTCAMPA').AsFloat := DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsFloat;
   DM1.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := DM1.cdsDetPagoLiq.FieldByName('CCFEMIS').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := DM1.cdsDetPagoLiq.FieldByName('CCFEMIS').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCESTADO').AsString := 'P'; // Pendiente
   DM1.cdsDetCxC.FieldByName('CCUSER').AsString := DM1.cdsDetPagoLiq.FieldByName('LICOUSER').AsString;
   DM1.cdsDetCxC.FieldByName('CCFREG').Value := DM1.cdsDetPagoLiq.FieldByName('LICOFREG').AsDateTime;
   DM1.cdsDetCxC.FieldByName('CCHREG').Value := DM1.cdsDetPagoLiq.FieldByName('LICOHREG').AsDateTime;
   DM1.cdsDetCxC.FieldByName('TMONID').AsString := DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString;

   If BuscaFecha('TGE114', 'Fecha', DM1.cdsDetPagoLiq.FieldByName('CCFEMIS').AsDateTime) Then
   Begin
      DM1.cdsDetCxC.FieldByName('CCAAAA').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString;
      DM1.cdsDetCxC.FieldByName('CCMM').AsString := DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsDetCxC.FieldByName('CCDD').AsString := DM1.cdsQry2.FieldByName('FECDIA').AsString;
      DM1.cdsDetCxC.FieldByName('CCTRI').AsString := DM1.cdsQry2.FieldByName('FECTRIM').AsString;
      DM1.cdsDetCxC.FieldByName('CCSS').AsString := DM1.cdsQry2.FieldByName('FECSS').AsString;
      DM1.cdsDetCxC.FieldByName('CCSEM').AsString := DM1.cdsQry2.FieldByName('FECSEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCANOMES').AsString := DM1.cdsQry2.FieldByName('FECANO').AsString + DM1.cdsQry2.FieldByName('FECMES').AsString;
      DM1.cdsDetCxC.FieldByName('CCAATRI').AsString := DM1.cdsQry2.FieldByName('FECAATRI').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASEM').AsString := DM1.cdsQry2.FieldByName('FECAASEM').AsString;
      DM1.cdsDetCxC.FieldByName('CCAASS').AsString := DM1.cdsQry2.FieldByName('FECAASS').AsString;
   End;
End;

End.

