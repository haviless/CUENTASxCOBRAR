unit PRUEBA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,wwClient;

type
  TFPrueba = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrueba: TFPrueba;

implementation

Uses CXCDM;
{$R *.DFM}

procedure TFPrueba.Button1Click(Sender: TObject);
{var snumero,sSQL:string;
    conta:integer;
begin
 sSQL:='SELECT * FROM CXC301 WHERE DOCID='+QuotedStr('11')+ ' ORDER BY CCNOREG ';
 DM1.cdsMovCXC.Close;
 DM1.cdsMovCXC.DataRequest(sSQL);
 DM1.cdsMovCXC.Open;
 DM1.cdsMovCXC.First;
 sNumero:='1';
 conta:=1;
 While not  DM1.cdsMovCXC.EOF  do
 begin
   DM1.cdsMovCXC.Edit;
   DM1.cdsMovCXC.FieldByName('CCCANJE').AsString:=StrZero(sNumero,6);
   sNumero:=IntToStr(StrToInt(sNumero)+1);
   conta:=conta+1;

   DM1.cdsMovCXC.Post;
   if (conta mod 100)= 0 then
    DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );
   DM1.cdsMovCXC.Next;
 end;
    DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

 ShowMessage('Termino');}
var
   cdsClone:TwwClientDataSet;
   xTMN,xTME,xTOri:real;
   sFormaPago,sBanco,sNumeroCheque:string;
   sFPagCh,sClieRuc,sZona,sClieDes,sAno,sMes:string;
   sSQL,xxNoReg:string;
   nNoReg:integer;
   wAno,wMes,wDia  : Word ;
   xTAutoNum : String;
   sLet,sTDiarioAnt,sCartera,sChEnCob,sOficina,sTDocCh,sTDiario:string;
begin
  sOficina:=DM1.BuscaQry2('dspTGE','CXC105','UBICAID','UBICAFLAG=''O''','UBICAID');
  sCartera:=DM1.BuscaQry2('dspTGE','CXC104','SITUAID','SITUAFLAG=''5''','SITUAID');
  sFPagCh:=DM1.BuscaQry2('dspTGE','TGE112','FPAGOID','FCHQ=''1''','FPAGOID');
  sTDocCh:=DM1.BuscaQry2('dspTGE','TGE110','DOCID,TDIARID','DOCMOD=''CXC'' AND DOCTIPREG=''CH''','DOCID');
  sTDiario:=DM1.cdsQry6.FieldByName('TDIARID').AsString;
  sTDiarioAnt:=DM1.BuscaQry2('dspTGE','TGE110','DOCID,TDIARID','DOCMOD=''CXC'' AND DOC_FREG=''A''','TDIARID');
  sLet:=DM1.BuscaQry2('dspTGE','TGE110','DOCID','DOCMOD=''CXC'' AND DOC_FREG=''L''','DOCID');
  sChEnCob:=DM1.BuscaQry2('dspTGE','CXC114','SITUAID','SITUAFLAG='+QuotedStr('PCO'),'SITUAID');

   sSQL:='SELECT * FROM CXC320 WHERE '+
   ' (LICOID=''000001'' OR '+
   ' LICOID=''000003'' OR '+
   ' LICOID=''000013'' OR '+
   ' LICOID=''000016'' OR '+
   ' LICOID=''000018'' ) AND FPAGOID=''02''';


   DM1.cdsDetPagoLiq.Close;
   DM1.cdsDetPagoLiq.DataRequest(sSQL);
   DM1.cdsDetPagoLiq.Open;

    xTMN:=0; xTME:=0; xTOri:=0;
    cdsClone := TwwClientDataSet.create(nil) ;
    cdsClone.CloneCursor(DM1.cdsDetPagoLiq,False,True);
    cdsClone.Filter:='FPAGOID='+QuotedStr(sFPagCh);
    cdsClone.Filtered:=True;
    cdsClone.IndexFieldNames:='BANCOID;LICONOCHQ';
    cdsClone.First;
    while not cdsClone.EOF do
    begin
      xTMN:=0; xTME:=0; xTOri:=0;
      sBanco:=cdsClone.FieldByName('BANCOID').AsString;
      sNumeroCheque:=cdsClone.FieldByName('LICONOCHQ').AsString;

      while (cdsClone.FieldByName('BANCOID').AsString=sBanco) AND
            (cdsClone.FieldByName('LICONOCHQ').AsString=sNumeroCheque) AND (not cdsClone.EOF) do
      begin
        xTMN :=xTMN +cdsClone.FieldByName('LICOMTOABOLOC').AsFloat;
        xTME :=xTME +cdsClone.FieldByName('LICOMTOABOEXT').AsFloat;
        xTOri:=xTOri+cdsClone.FieldByName('LICOMTOABOORI').AsFloat;

        cdsClone.Next;
      end;
      IF NOT cdsClone.EOF then         cdsClone.Prior;
      //INSERTAR CHEQUE
     DecodeDate(cdsClone.FieldByName('FECEMICHQ').AsDateTime,wAno,wMes,wDia);
     sAno:=StrZero(IntToStr(wAno),4);
     sMes:=StrZero(IntToStr(wMes),2);

     sClieRuc:=DM1.BuscaQry2('dspTGE','TGE204','ZONVTAID,CLIERUC,CLIEDES','CLIEID='+QuotedStr(cdsClone.FieldByName('CLIEID').AsString),'CLIERUC');
     sZona:=DM1.cdsQry6.FieldByName('ZONVTAID').AsString;
     sClieDes:=DM1.cdsQry6.FieldByName('CLIEDES').AsString;

     xTAutoNum:= DisplayDescrip('TGE104','AutoNum','TDiarID',sTDiario);
     xxNoReg  := DM1.UltimoRegistro(xTAutoNum,cdsClone.FieldByName('CIAID').AsString,sTDiario,sAno,sMes );
     xxNoReg  := Strzero( xxNoReg,10);
     nNoReg  :=  strtoint(xxNoReg);

     BuscaFecha('TGE114','Fecha',cdsClone.FieldByName('FECEMICHQ').AsDateTime);

     sSQL:=' INSERT INTO CXC301 (CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, '+
           ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,TMONID,CCTCAMPR,CCESTADO, '+
           ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, '+
           ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG,UBIID,SITID, '+
           ' CLIEDES,TVTAID,ZVTAID) VALUES('+
           QuotedStr(cdsClone.FieldByName('CIAID').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAno').AsString+DM1.cdsQry2.FieldByName('FecMes').AsString)+','+      // AÑOMES
           QuotedStr(sTDiario)+','+QuotedStr('000')+','+QuotedStr(xxNoReg)+','+DM1.wRepFecServi+','+
           QuotedStr(cdsClone.FieldByName('CLAUXID').AsString)+','+
           QuotedStr(cdsClone.FieldByName('CLIEID').AsString)+','+
           QuotedStr(sClieRuc)+','+QuotedStr(sTDocCh)+','+QuotedStr('000')+','+
           QuotedStr(cdsClone.FieldByName('LICONOCHQ').AsString)+','+
           QuotedStr(cdsClone.FieldByName('FECEMICHQ').AsString)+','+
           QuotedStr(cdsClone.FieldByName('TMONIDPAGO').AsString)+','+
           cdsClone.FieldByName('LICOTCAMBL').AsString+','+QuotedStr('P')+','+
           FloatToStr(xTOri)+','+
           FloatToStr(xTMN)+','+
           FloatToStr(xTME)+',0,0,0,'+
           FloatToStr(xTOri)+','+
           FloatToStr(xTMN)+','+
           FloatToStr(xTME)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAno').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecMes').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecDia').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecTrim').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecSem').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecSS').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAATri').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAASem').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAASS').AsString)+','+
           QuotedStr(cdsClone.FieldByName('BANCOID').AsString)+','+QuotedStr('M')+','+
//           QuotedStr(DM1.wUsuario)+','+DM1.wRepFecServi+','+QuotedStr(sOficina)+','+QuotedStr(sCartera)+','+
           QuotedStr(cdsClone.FieldByName('LICOUSER').AsString)+','+DM1.wRepFecServi+','+QuotedStr(sOficina)+','+QuotedStr(sChEnCob)+','+
           QuotedStr(sClieDes)+','+QuotedStr(cdsClone.FieldByName('TVTAID').AsString)+','+QuotedStr(sZona)+')';
     try
       DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
     except
     end;
     xxNoReg  := DM1.GrabaUltimoRegistro(xTAutoNum,cdsClone.FieldByName('CIAID').AsString,sTDiario,sAno,sMes, nNoReg );
     cdsClone.Next;
    end;
    cdsClone.Free;

end;

procedure TFPrueba.Button2Click(Sender: TObject);
var mrRespuesta:word;
begin
          mrRespuesta:=MessageDlg('El Documento ha sido asignado al cobrador '+#13+
                       'Desea Liberar Documento?',
                    mtConfirmation, [mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore, mbAll, mbNoToAll, mbYesToAll, mbHelp], 0);

   showmessage(IntToStr(mrRespuesta));

end;

end.
