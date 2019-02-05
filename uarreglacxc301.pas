unit uarreglacxc301;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  TFArreglaCXC301 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArreglaCXC301: TFArreglaCXC301;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFArreglaCXC301.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin
  sSQL:='SELECT * FROM CNT300 A WHERE '+
        ' A.CIAID=''04''  AND A.TDIARID=''09'' AND A.CNTANOMM=''200302'' AND A.CNTCOMPROB=''0000000344'' ';
  FiltraCds(DM1.cdsQry3,sSQL);
end;

procedure TFArreglaCXC301.BitBtn2Click(Sender: TObject);
var sSQL:string;
begin
  sSQL:='SELECT * FROM CXC301 WHERE CIAID=''CLG'' AND CIAID=''HAA'' ';
  FiltraCds(DM1.cdsMovCxC,sSQL);
  DM1.cdsMovCxC.EmptyDataSet;

  sSQL:='SELECT * FROM CXC302 WHERE CIAID=''CLG'' AND CIAID=''HAA'' ';
  FiltraCds(DM1.cdsDetCxC,sSQL);
  DM1.cdsDetCxC.EmptyDataSet;


  DM1.cdsQry3.First;
  while not DM1.cdsQry3.EOF do
  begin
    sSQL:=' SELECT * FROM CXC301 WHERE '+
          ' CIAID='+QuotedStr(DM1.cdsQry3.FieldByName('CIAID').AsString)+
          ' AND TDIARID='+QuotedStr(DM1.cdsQry3.FieldByName('TDIARID').AsString)+
          ' AND CCANOMES='+QuotedStr(DM1.cdsQry3.FieldByName('CNTANOMM').AsString)+
          ' AND CCNOREG='+QuotedStr(DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString);
    FiltraCds(DM1.cdsQry,sSQL);

    if DM1.cdsQry.RecordCount=0 then
    begin
      sSQL:=' SELECT SUBSTR(CUENTAID,1,1) X,CNT301.* FROM CNT301 WHERE '+
          ' CIAID='+QuotedStr(DM1.cdsQry3.FieldByName('CIAID').AsString)+
          ' AND TDIARID='+QuotedStr(DM1.cdsQry3.FieldByName('TDIARID').AsString)+
          ' AND CNTANOMM='+QuotedStr(DM1.cdsQry3.FieldByName('CNTANOMM').AsString)+
          ' AND CNTCOMPROB='+QuotedStr(DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString);
       FiltraCds(DM1.cdsQry4,sSQL);
       DM1.cdsQry4.Filter:='X=''1'' ';
       DM1.cdsQry4.Filtered:=True;

      //INSERTAR CABECERA DE CXC301 CDSMOVCXC
      DM1.cdsMovCxC.Insert;
      DM1.cdsMovCxC.FieldByName('CIAID').AsString       := DM1.cdsQry3.FieldByName('CIAID').AsString;
      DM1.cdsMovCxC.FieldByName('BANCOID').AsString     := '';
      DM1.cdsMovCxC.FieldByName('CCAAAA').AsString      := DM1.cdsQry3.FieldByName('CNTANO').AsString;
      DM1.cdsMovCxC.FieldByName('CCMM').AsString        := DM1.cdsQry3.FieldByName('CNTMM').AsString;
      DM1.cdsMovCxC.FieldByName('CCAASEM').AsString     := DM1.cdsQry3.FieldByName('CNTAASEM').AsString;
      DM1.cdsMovCxC.FieldByName('CCAASS').AsString      := DM1.cdsQry3.FieldByName('CNTAASS').AsString;
      DM1.cdsMovCxC.FieldByName('CCAATRI').AsString     := DM1.cdsQry3.FieldByName('CNTAATRI').AsString;
      DM1.cdsMovCxC.FieldByName('CCSEM').AsString       := DM1.cdsQry3.FieldByName('CNTSEM').AsString;
      DM1.cdsMovCxC.FieldByName('CCSS').AsString        := DM1.cdsQry3.FieldByName('CNTSS').AsString;
      DM1.cdsMovCxC.FieldByName('CCTRI').AsString       := DM1.cdsQry3.FieldByName('CNTTRI').AsString;
      DM1.cdsMovCxC.FieldByName('CCACEPTA').AsString    := '';
      DM1.cdsMovCxC.FieldByName('CCANOMES').AsString    := DM1.cdsQry3.FieldByName('CNTANOMM').AsString;
      DM1.cdsMovCxC.FieldByName('CCAVAL').AsString      := '';
      DM1.cdsMovCxC.FieldByName('CCBCOID').AsString     := '';
      DM1.cdsMovCxC.FieldByName('CCCANJE').AsString     := '';
      DM1.cdsMovCxC.FieldByName('CC_CONTA').AsString    := 'S';
      DM1.cdsMovCxC.FieldByName('CCDD').AsString        := DM1.cdsQry3.FieldByName('CNTDD').AsString;
      DM1.cdsMovCxC.FieldByName('CCESTADO').AsString    := 'P';
      DM1.cdsMovCxC.FieldByName('CCESTCJE').AsString    := '';
      DM1.cdsMovCxC.FieldByName('CCFCMPRB').AsDateTime  := DM1.cdsQry4.FieldByName('CNTFCOMP').AsDateTime;
      DM1.cdsMovCxC.FieldByName('CCFEMIS').AsDateTime   := DM1.cdsQry4.FieldByName('CNTFEMIS').AsDateTime;
      DM1.cdsMovCxC.FieldByName('CCFLAGPROT').AsString  := '';
      DM1.cdsMovCxC.FieldByName('CCFLAGTDOC').AsString  := '';
      DM1.cdsMovCxC.FieldByName('CCFLCRED').AsString    := '';
      DM1.cdsMovCxC.FieldByName('CCFLETE').AsFloat      := 0;
      DM1.cdsMovCxC.FieldByName('CCFPLABCO').AsString   := '';
      DM1.cdsMovCxC.FieldByName('CCFVCMTO').AsDateTime  := DM1.cdsQry4.FieldByName('CNTFVCMTO').AsDateTime;
      DM1.cdsMovCxC.FieldByName('CCLOTE').AsString      := DM1.cdsQry3.FieldByName('CNTLOTE').AsString;
      DM1.cdsMovCxC.FieldByName('CCNODOC').AsString     := DM1.cdsQry4.FieldByName('CNTNODOC').AsString;
      DM1.cdsMovCxC.FieldByName('CCNFACTURA').AsString  := '';
      DM1.cdsMovCxC.FieldByName('CCNLETBCO').AsString   := '';
      DM1.cdsMovCxC.FieldByName('CCISC').AsFloat        := 0;
      DM1.cdsMovCxC.FieldByName('CCNOREG').AsString     := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      DM1.cdsMovCxC.FieldByName('CCNPLABCO').AsString   := '';
      DM1.cdsMovCxC.FieldByName('CCNREFINA').AsString   := '';
      DM1.cdsMovCxC.FieldByName('CCNRENOV').AsInteger   := 0;
      DM1.cdsMovCxC.FieldByName('CCNRENOVA').AsInteger  := 0;
      DM1.cdsMovCxC.FieldByName('CCNSERFACTL').AsString := '';
      DM1.cdsMovCxC.FieldByName('CCSERIE').AsString     := DM1.cdsQry4.FieldByName('CNTSERIE').AsString;
      DM1.cdsMovCxC.FieldByName('CCTCAMAJ').AsFloat     := DM1.cdsQry3.FieldByName('CNTTCAMBIO').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCTCAMPR').AsFloat     := DM1.cdsQry3.FieldByName('CNTTCAMBIO').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCUSER').AsString      := '';
      DM1.cdsMovCxC.FieldByName('CLAUXID').AsString     := DM1.cdsQry4.FieldByName('CLAUXID').AsString;
      DM1.cdsMovCxC.FieldByName('CLIEID').AsString      := DM1.cdsQry4.FieldByName('AUXID').AsString;
      DM1.cdsMovCxC.FieldByName('COMPROMET').AsString   := 'NA';
      DM1.cdsMovCxC.FieldByName('CPTOANT').AsString     := '';
      DM1.cdsMovCxC.FieldByName('CTAANT').AsString      := '';
      DM1.cdsMovCxC.FieldByName('FGEN_DOC').AsString    := '';
      DM1.cdsMovCxC.FieldByName('DOCSIT').AsString      := '';
      DM1.cdsMovCxC.FieldByName('CTATOTAL').AsString    := DM1.cdsQry4.FieldByName('CUENTAID').AsString;
      DM1.cdsMovCxC.FieldByName('DOCID').AsString       := DM1.cdsQry4.FieldByName('DOCID').AsString;
      DM1.cdsMovCxC.FieldByName('FLAGVAR').AsString     := '.';
      DM1.cdsMovCxC.FieldByName('FLAGVAR2').AsString    := '.';
      DM1.cdsMovCxC.FieldByName('CCOENV').AsString      := '';
      DM1.cdsMovCxC.FieldByName('CCPEDIDO').AsString    := '';
      DM1.cdsMovCxC.FieldByName('LICOID').AsString      := '';
      DM1.cdsMovCxC.FieldByName('MOTDEVCHQ').AsString   := '';
      DM1.cdsMovCxC.FieldByName('NODOCSIT').AsString    := '';
      DM1.cdsMovCxC.FieldByName('OEFNUMFOR').AsString   := '';
      DM1.cdsMovCxC.FieldByName('SITID').AsString       := '';
      DM1.cdsMovCxC.FieldByName('SITUACION').AsString   := '';
      DM1.cdsMovCxC.FieldByName('TCANJEID').AsString    := '';
      DM1.cdsMovCxC.FieldByName('TDIARID').AsString     := DM1.cdsQry3.FieldByName('TDIARID').AsString;
      DM1.cdsMovCxC.FieldByName('TMONID').AsString      := DM1.cdsQry3.FieldByName('TMONID').AsString;
      DM1.cdsMovCxC.FieldByName('TVTAID').AsString      := '01';
      DM1.cdsMovCxC.FieldByName('ZVTAID').AsString      := '01001';
      DM1.cdsMovCxC.FieldByName('UBICACION').AsString   := '';
      DM1.cdsMovCxC.FieldByName('UBIID').AsString       := '';
      DM1.cdsMovCxC.FieldByName('USERANUL').AsString    := '';
      DM1.cdsMovCxC.FieldByName('CCMTOORI').AsFloat     := DM1.cdsQry4.FieldByName('CNTMTOORI').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat     := 0;
      DM1.cdsMovCxC.FieldByName('CCSALORI').AsFloat     := DM1.cdsQry4.FieldByName('CNTMTOORI').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCMTOEXT').AsFloat     := DM1.cdsQry4.FieldByName('CNTMTOEXT').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCPAGEXT').AsFloat     := 0;
      DM1.cdsMovCxC.FieldByName('CCSALEXT').AsFloat     := DM1.cdsQry4.FieldByName('CNTMTOEXT').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCMTOLOC').AsFloat     := DM1.cdsQry4.FieldByName('CNTMTOLOC').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCPAGLOC').AsFloat     := 0;
      DM1.cdsMovCxC.FieldByName('CCSALLOC').AsFloat     := DM1.cdsQry4.FieldByName('CNTMTOLOC').AsFloat;
      DM1.cdsMovCxC.FieldByName('CCNOGRAV').AsFloat     := 0;
      DM1.cdsMovCxC.FieldByName('CCFCANCEL').Clear;
      DM1.cdsMovCxC.FieldByName('CCCMPRB').Clear;
      DM1.cdsMovCxC.FieldByName('CCDCTO').Clear;
      DM1.cdsMovCxC.FieldByName('CCFCANJE').Clear;
      DM1.cdsMovCxC.FieldByName('CCFEMISANT').Clear;
      DM1.cdsMovCxC.FieldByName('CCFRECEP').Clear;
      DM1.cdsMovCxC.FieldByName('CCFREG').Clear;
      DM1.cdsMovCxC.FieldByName('CCFSITUA').Clear;
      DM1.cdsMovCxC.FieldByName('CCFVALOR').Clear;
      DM1.cdsMovCxC.FieldByName('CCFVCMTOANT').Clear;
      DM1.cdsMovCxC.FieldByName('CCFVENLREAL').Clear;
      DM1.cdsMovCxC.FieldByName('CCGASFIN').Clear;
      DM1.cdsMovCxC.FieldByName('CCHREG').Clear;
      DM1.cdsMovCxC.FieldByName('CCMTOORIANT').Clear;
      DM1.cdsMovCxC.FieldByName('CCSERVIC').Clear;
      DM1.cdsMovCxC.FieldByName('CCTCAMPA').Clear;
      DM1.cdsMovCxC.FieldByName('CCTCAMPRANT').Clear;
      DM1.cdsMovCxC.FieldByName('CCNVECPRT').Clear;
      DM1.cdsMovCxC.FieldByName('DOCPLAZO').Clear;
      DM1.cdsMovCxC.FieldByName('FECANUL').Clear;
      DM1.cdsMovCxC.FieldByName('HORANUL').Clear;
      DM1.cdsMovCxC.FieldByName('INTERES').Clear;

      sSQL:=' SELECT * FROM FAC305 WHERE '+
            ' CIAID=''02'' AND DOCID='+QuotedStr(DM1.cdsQry4.FieldByName('DOCID').AsString)+
            ' AND FACSERIE='+QuotedStr(DM1.cdsQry4.FieldByName('CNTSERIE').AsString)+
            ' AND NFAC='+QuotedStr(DM1.cdsQry4.FieldByName('CNTNODOC').AsString)+
            ' AND CLAUXID='+QuotedStr(DM1.cdsQry4.FieldByName('CLAUXID').AsString)+
            ' AND CLIEID='+QuotedStr(DM1.cdsQry4.FieldByName('AUXID').AsString);
      FiltraCds(DM1.cdsQry,sSQL);
      if DM1.cdsQry.RecordCount>0 then
      begin
        DM1.cdsMovCxC.FieldByName('VEID').AsString := DM1.cdsQry.FieldByName('VEID').AsString;
        DM1.cdsMovCxC.FieldByName('CLIERUC').AsString := DM1.cdsQry.FieldByName('CLIERUC').AsString;
        DM1.cdsMovCxC.FieldByName('CLIEDES').AsString := DM1.cdsQry.FieldByName('CLIEDES').AsString;
        DM1.cdsMovCxC.FieldByName('CCOMERID').AsString:= DM1.cdsQry.FieldByName('FPAGOID').AsString;
        DM1.cdsMovCxC.FieldByName('CCFLAGVTA').AsString  := 'S';
      end
      else
      begin
        sSQL:=' SELECT * FROM TGE204 WHERE '+
              ' CIAID='+QuotedStr(DM1.cdsQry4.FieldByName('CIAID').AsString)+
              ' AND CLAUXID='+QuotedStr(DM1.cdsQry4.FieldByName('CLAUXID').AsString)+
              ' AND CLIEID='+QuotedStr(DM1.cdsQry4.FieldByName('AUXID').AsString);
        FiltraCds(DM1.cdsQry,sSQL);
        if DM1.cdsQry.RecordCount>0 then
        begin
          DM1.cdsMovCxC.FieldByName('VEID').AsString    := DM1.cdsQry.FieldByName('VEID').AsString;
          DM1.cdsMovCxC.FieldByName('CLIERUC').AsString := DM1.cdsQry.FieldByName('CLIERUC').AsString;
          DM1.cdsMovCxC.FieldByName('CLIEDES').AsString := DM1.cdsQry.FieldByName('CLIEDES').AsString;
        end
        else
        begin
          DM1.cdsMovCxC.FieldByName('VEID').AsString    := '';
          DM1.cdsMovCxC.FieldByName('CLIERUC').AsString := '';
          DM1.cdsMovCxC.FieldByName('CLIEDES').AsString := '';
        end;
        DM1.cdsMovCxC.FieldByName('CCFLAGVTA').AsString  := 'N';
        DM1.cdsMovCxC.FieldByName('CCOMERID').AsString:= '';
      end;
      sSQL:=' SELECT * FROM CXC208 WHERE DOCID='+QuotedStr(DM1.cdsQry4.FieldByName('DOCID').AsString)+
            ' AND TMONID='+QuotedStr(DM1.cdsQry4.FieldByName('TMONID').AsString)+
            ' AND CUENTAID='+QuotedStr(DM1.cdsQry4.FieldByName('CUENTAID').AsString);
      FiltraCds(DM1.cdsQry,sSQL);
      if DM1.cdsQry.RecordCount>0 then
      begin
        DM1.cdsMovCxC.FieldByName('CPTOID').AsString  := DM1.cdsQry.FieldByName('CPTOCAB').AsString;
        DM1.cdsMovCxC.FieldByName('CCPTOTOT').AsString:= DM1.cdsQry.FieldByName('CPTOCAB').AsString;
      end
      else
      begin
        DM1.cdsMovCxC.FieldByName('CPTOID').AsString  := '';
        DM1.cdsMovCxC.FieldByName('CCPTOTOT').AsString:= '';
      end;

      DM1.cdsQry4.Filter:='X=''4'' ';
      DM1.cdsQry4.Filtered:=True;
      DM1.cdsMovCxC.FieldByName('CCIGV').AsFloat    := DM1.cdsQry4.FieldByName('CNTMTOORI').AsFloat;

      DM1.cdsQry4.Filter:='X=''7'' ';
      DM1.cdsQry4.Filtered:=True;
      DM1.cdsMovCxC.FieldByName('CCGRAVAD').AsFloat := DM1.cdsQry4.FieldByName('CNTMTOORI').AsFloat;
      DM1.cdsPost(DM1.cdsMovCxC);
      DM1.cdsMovCxC.Post;

      sSQL:=' SELECT * FROM CXC301 WHERE '+
            ' CIAID='+QuotedStr(DM1.cdsQry3.FieldByName('CIAID').AsString)+
            ' AND TDIARID='+QuotedStr(DM1.cdsQry3.FieldByName('TDIARID').AsString)+
            ' AND CCANOMES='+QuotedStr(DM1.cdsQry3.FieldByName('CNTANOMM').AsString)+
            ' AND CCNOREG='+QuotedStr(DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString);
      DM1.cdsMovCxC.DataRequest(sSQL);
      DM1.AplicaDatos(DM1.cdsMovCxC,'MOVCXC');

      //INSERTAR DETALLE DE CXC302 CDSDETCXC
      DM1.cdsQry4.Filter:='';
      DM1.cdsQry4.Filtered:=False;

      DM1.cdsQry4.First;
      while not DM1.cdsQry4.EOF do
      begin
        DM1.cdsDetCxC.Insert;
        DM1.cdsDetCxC.FieldByName('CIAID').AsString     := DM1.cdsQry4.FieldByName('CIAID').AsString;
        DM1.cdsDetCxC.FieldByName('CCANOMES').AsString  := DM1.cdsQry4.FieldByName('CNTANOMM').AsString;
        DM1.cdsDetCxC.FieldByName('TDIARID').AsString   := DM1.cdsQry4.FieldByName('TDIARID').AsString;
        DM1.cdsDetCxC.FieldByName('CCLOTE').AsString    := DM1.cdsQry4.FieldByName('CNTLOTE').AsString;
        DM1.cdsDetCxC.FieldByName('CCNOREG').AsString   := DM1.cdsQry4.FieldByName('CNTCOMPROB').AsString;
        DM1.cdsDetCxC.FieldByName('CUENTAID').AsString  := DM1.cdsQry4.FieldByName('CUENTAID').AsString;
        DM1.cdsDetCxC.FieldByName('CLAUXID').AsString   := DM1.cdsMovCxC.FieldByName('CLAUXID').AsString;
        DM1.cdsDetCxC.FieldByName('CLIEID').AsString    := DM1.cdsMovCxC.FieldByName('CLIEID').AsString;
        DM1.cdsDetCxC.FieldByName('DOCID').AsString     := DM1.cdsQry4.FieldByName('DOCID').AsString;
        DM1.cdsDetCxC.FieldByName('CCSERIE').AsString   := DM1.cdsQry4.FieldByName('CNTSERIE').AsString;
        DM1.cdsDetCxC.FieldByName('CCNODOC').AsString   := DM1.cdsQry4.FieldByName('CNTNODOC').AsString;
        DM1.cdsDetCxC.FieldByName('CCGLOSA').AsString   := DM1.cdsQry4.FieldByName('CNTGLOSA').AsString;
        DM1.cdsDetCxC.FieldByName('CCDH').AsString      := DM1.cdsQry4.FieldByName('CNTDH').AsString;
        DM1.cdsDetCxC.FieldByName('CCOSID').AsString    := DM1.cdsQry4.FieldByName('CCOSID').AsString;
        DM1.cdsDetCxC.FieldByName('TMONID').AsString    := DM1.cdsQry4.FieldByName('TMONID').AsString;
        DM1.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat   := DM1.cdsQry4.FieldByName('CNTTCAMBIO').AsFloat;
        DM1.cdsDetCxC.FieldByName('CCMTOORI').AsFloat   := DM1.cdsQry4.FieldByName('CNTMTOORI').AsFloat;
        DM1.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat   := DM1.cdsQry4.FieldByName('CNTMTOLOC').AsFloat;
        DM1.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat   := DM1.cdsQry4.FieldByName('CNTMTOEXT').AsFloat;
        DM1.cdsDetCxC.FieldByName('CCFEMIS').AsDateTime := DM1.cdsQry4.FieldByName('CNTFEMIS').AsDateTime;
        DM1.cdsDetCxC.FieldByName('CCFVCMTO').AsDateTime:= DM1.cdsQry4.FieldByName('CNTFVCMTO').AsDateTime;
        DM1.cdsDetCxC.FieldByName('CCFCOMP').AsDateTime := DM1.cdsQry4.FieldByName('CNTFCOMP').AsDateTime;
        DM1.cdsDetCxC.FieldByName('CCESTADO').AsString  := DM1.cdsQry4.FieldByName('CNTESTADO').AsString;
        DM1.cdsDetCxC.FieldByName('CCAAAA').AsString    := DM1.cdsQry4.FieldByName('CNTANO').AsString;
        DM1.cdsDetCxC.FieldByName('CCMM').AsString      := DM1.cdsQry4.FieldByName('CNTMM').AsString;
        DM1.cdsDetCxC.FieldByName('CCDD').AsString      := DM1.cdsQry4.FieldByName('CNTDD').AsString;
        DM1.cdsDetCxC.FieldByName('CCTRI').AsString     := DM1.cdsQry4.FieldByName('CNTTRI').AsString;
        DM1.cdsDetCxC.FieldByName('CCSEM').AsString     := DM1.cdsQry4.FieldByName('CNTSEM').AsString;
        DM1.cdsDetCxC.FieldByName('CCSS').AsString      := DM1.cdsQry4.FieldByName('CNTSS').AsString;
        DM1.cdsDetCxC.FieldByName('CCAATRI').AsString   := DM1.cdsQry4.FieldByName('CNTAATRI').AsString;
        DM1.cdsDetCxC.FieldByName('CCAASEM').AsString   := DM1.cdsQry4.FieldByName('CNTAASEM').AsString;
        DM1.cdsDetCxC.FieldByName('CCAASS').AsString    := DM1.cdsQry4.FieldByName('CNTAASS').AsString;
        DM1.cdsDetCxC.FieldByName('FLAGVAR').AsString   := DM1.cdsQry4.FieldByName('FLAGVAR').AsString;
        DM1.cdsDetCxC.FieldByName('CCCMPRB').AsString   := DM1.cdsQry4.FieldByName('CNTCOMPROB').AsString;
        DM1.cdsDetCxC.FieldByName('CCUSER').Clear;
        DM1.cdsDetCxC.FieldByName('CCFREG').Clear;
        DM1.cdsDetCxC.FieldByName('CCHREG').Clear;
        DM1.cdsDetCxC.FieldByName('CCTCAMPA').Clear;
        DM1.cdsDetCxC.FieldByName('CCFLCDR').Clear;
        DM1.cdsDetCxC.FieldByName('TCANJEID').Clear;
        DM1.cdsDetCxC.FieldByName('CCCANJE').Clear;
        DM1.cdsDetCxC.FieldByName('CCFCANJE').Clear;
        DM1.cdsDetCxC.FieldByName('CCFVALOR').Clear;
        DM1.cdsDetCxC.FieldByName('PORIGV').Clear;
        DM1.cdsDetCxC.FieldByName('TINTERES').Clear;
        DM1.cdsDetCxC.FieldByName('PARPRESID').Clear;
        DM1.cdsDetCxC.FieldByName('TIPPRESID').Clear;
        DM1.cdsDetCxC.FieldByName('TIPCTA').Clear;
        DM1.cdsDetCxC.FieldByName('FCONTAB').Clear;
        DM1.cdsDetCxC.FieldByName('FLAGCONTA').Clear;
        DM1.cdsDetCxC.FieldByName('ITEM').Clear;
        DM1.cdsDetCxC.FieldByName('SITID').Clear;                          
        DM1.cdsDetCxC.FieldByName('UBIID').Clear;
        DM1.cdsDetCxC.FieldByName('ORDEN').Clear;
        DM1.cdsDetCxC.FieldByName('TCAMBIOC').Clear;
        DM1.cdsDetCxC.FieldByName('NROASIENTO').Clear;
        DM1.cdsDetCxC.FieldByName('CCREG').AsInteger:=DM1.cdsQry4.FieldByName('CNTREG').AsInteger;
        sSQL:=' SELECT * FROM CXC102 WHERE '+
              ' CUENTAID='+QuotedStr(DM1.cdsQry4.FieldByName('CUENTAID').AsString)+
              ' AND CPTOCAB='+QuotedStr(DM1.cdsMovCxC.FieldByName('CCPTOTOT').AsString);
        FiltraCds(DM1.cdsQry,sSQL);

        DM1.cdsDetCxC.FieldByName('TIPDET').AsString :=DM1.cdsQry.FieldByName('TIPDET').AsString;
        DM1.cdsDetCxC.FieldByName('TREGID').AsString :=DM1.cdsQry.FieldByName('TREGID').AsString;
        DM1.cdsDetCxC.FieldByName('CLIERUC').AsString:=DM1.cdsMovCxC.FieldByName('CLIERUC').AsString;
        DM1.cdsDetCxC.FieldByName('CPTOID').AsString :=DM1.cdsQry.FieldByName('CPTOID').AsString;
        DM1.cdsPost(DM1.cdsDetCxC);
        DM1.cdsDetCxC.Post;
        sSQL:=' SELECT * FROM CXC302 WHERE '+
              ' CIAID='+QuotedStr(DM1.cdsQry3.FieldByName('CIAID').AsString)+
              ' AND TDIARID='+QuotedStr(DM1.cdsQry3.FieldByName('TDIARID').AsString)+
              ' AND CCANOMES='+QuotedStr(DM1.cdsQry3.FieldByName('CNTANOMM').AsString)+
              ' AND CCNOREG='+QuotedStr(DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString);
        DM1.cdsDetCxC.DataRequest(sSQL);
        DM1.AplicaDatos(DM1.cdsDetCxC,'DETCXC');
        DM1.cdsQry4.Next;
      end;
    end;
    DM1.cdsQry3.Next;
  end;
end;

end.

