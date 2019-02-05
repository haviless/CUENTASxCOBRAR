unit Unitprueba;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses CxCDM;

{$R *.DFM}

procedure TForm3.Button1Click(Sender: TObject);
var xxNoReg,sLetra,sLet,sSQL :string;
    sTDiarioAnt:string;
    xTAutoNum,sWhere: String ;
    sClieDes,sClieRuc,sMes,sAno:string;
    wDia,wMes,wAno:word;
    nNoReg:integer;
    sZona:string;
    sChEnCob,sTDiario,sTDocCh,sFPagCh,sCartera,soficina:string;
    xWhere,sNumeroAnt:string;
begin
  DM1.cdsDetPagoLiq.Close;
//  DM1.cdsDetPagoLiq.DataRequest('SELECT * FROM CXC320 WHERE CIAID=''01'' AND CCNODOC=''0020298'' AND COID<>''CON'' ');
  DM1.cdsDetPagoLiq.DataRequest('SELECT * FROM CXC320 WHERE CIAID=''01'' '+
' WHERE (LICOID=''000001'' OR '+
' LICOID=''000018'' ) AND FPAGOID=''02'' ');
  DM1.cdsDetPagoLiq.Open;

  sOficina:=DM1.BuscaQry2('dspTGE','CXC105','UBICAID','UBICAFLAG=''O''','UBICAID');
  sCartera:=DM1.BuscaQry2('dspTGE','CXC104','SITUAID','SITUAFLAG=''5''','SITUAID');
  sFPagCh:=DM1.BuscaQry2('dspTGE','TGE112','FPAGOID','FCHQ=''1''','FPAGOID');
  sTDocCh:=DM1.BuscaQry2('dspTGE','TGE110','DOCID,TDIARID','DOCMOD=''CXC'' AND DOCTIPREG=''CH''','DOCID');
  sTDiario:='61';
  sLet:=DM1.BuscaQry2('dspTGE','TGE110','DOCID','DOCMOD=''CXC'' AND DOC_FREG=''L''','DOCID');
  sChEnCob:=DM1.BuscaQry2('dspTGE','CXC114','SITUAID','SITUAFLAG='+QuotedStr('PCO'),'SITUAID');

  DM1.cdsDetPagoLiq.DisableControls;
  DM1.cdsDetPagoLiq.First;
   if DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsFloat>0 then
   begin
     //SE GENERA ANTICIPO EN CXC301
     DecodeDate(DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime,wAno,wMes,wDia);
     sAno:=StrZero(IntToStr(wAno),4);
     sMes:=StrZero(IntToStr(wMes),2);

     sClieRuc:=DM1.BuscaQry2('dspTGE','TGE204','ZONVTAID,CLIERUC,CLIEDES','CLIEID='+QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString),'CLIERUC');
     sZona:=DM1.cdsQry6.FieldByName('ZONVTAID').AsString;
     sClieDes:=DM1.cdsQry6.FieldByName('CLIEDES').AsString;

     xTAutoNum:= DisplayDescrip('TGE104','AutoNum','TDiarID',sTDiario);
     xxNoReg  := DM1.UltimoRegistro(xTAutoNum,DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString,sTDiarioAnt,sAno,sMes );
     xxNoReg  := Strzero( xxNoReg,10);
     nNoReg  :=  strtoint(xxNoReg);

        //determina último número de registro incrementado en 1
        xWhere:=' CIAID='+QuotedStr('01')+
                ' AND DOCID='+QuotedStr(DM1.wsAnt)+
                ' AND CCSERIE='+QuotedStr('000');
        sNumeroAnt:=StrZero(DM1.BuscaUltTGE('dspTGE','CXC301','CCNODOC',xWhere),10);

     BuscaFecha('TGE114','Fecha',DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsDateTime);

     sSQL:=' INSERT INTO CXC301 (CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, '+
           ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,TMONID,CCTCAMPR,CCESTADO, '+
           ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, '+
           ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG, '+
           ' CLIEDES,TVTAID,ZVTAID) VALUES('+
           QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAno').AsString+DM1.cdsQry2.FieldByName('FecMes').AsString)+','+      // AÑOMES
           QuotedStr(sTDiarioAnt)+','+QuotedStr('000')+','+QuotedStr(xxNoReg)+','+DM1.wRepFecServi+','+
           QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLAUXID').AsString)+','+
           QuotedStr(DM1.cdsDetPagoLiq.FieldByName('CLIEID').AsString)+','+
           QuotedStr(sClieRuc)+','+QuotedStr(DM1.wsAnt)+','+QuotedStr('000')+','+
           QuotedStr(sNumeroAnt)+','+
           QuotedStr(DM1.cdsDetPagoLiq.FieldByName('FECPAGO').AsString)+','+
           QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TMONIDPAGO').AsString)+','+
           DM1.cdsDetPagoLiq.FieldByName('LICOTCAMBL').AsString+','+QuotedStr('P')+','+
           DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsString+','+
           DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsString+','+
           DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsString+',0,0,0,'+
           DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTORI').AsString+','+
           DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTLOC').AsString+','+
           DM1.cdsDetPagoLiq.FieldByName('LICOMTOANTEXT').AsString+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAno').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecMes').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecDia').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecTrim').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecSem').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecSS').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAATri').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAASem').AsString)+','+
           QuotedStr(DM1.cdsQry2.FieldByName('FecAASS').AsString)+','+
           QuotedStr(DM1.cdsDetPagoLiq.FieldByName('BANCOID').AsString)+','+QuotedStr('.')+','+
           QuotedStr(DM1.wUsuario)+','+DM1.wRepFecServi+','+
           QuotedStr(sClieDes)+','+QuotedStr(DM1.cdsDetPagoLiq.FieldByName('TVTAID').AsString)+','+QuotedStr(sZona)+')';
     try
       DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
     except
     end;

     xxNoReg  := DM1.GrabaUltimoRegistro(xTAutoNum,DM1.cdsDetPagoLiq.FieldByName('CIAID').AsString,sTDiarioAnt,sAno,sMes, nNoReg );
   end;

   ShowMessage(' Cobranza Aceptada ');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if DM1.VerificaCierre('01',wwDBDateTimePicker1.Date) then
     ShowMessage('si')
  else
     ShowMessage('no');

end;

end.
