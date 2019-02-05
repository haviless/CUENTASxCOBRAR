unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ppCache, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppBands, Buttons;

type
  TFDocVence1 = class(TForm)
    Button1: TButton;
    ppReporte: TppReport;
    ppDesigner1: TppDesigner;
    ppdbReporte: TppDBPipeline;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalculaTotales;
  public
    { Public declarations }
  end;

var
  FDocVence1: TFDocVence1;

implementation

uses CxCDM;

{$R *.DFM}

procedure TFDocVence1.CalculaTotales;
var
  xLocLim,xLocPro,xLocOtr,xExtLim,xExtPro,xExtOtr:Real;
begin

  xLocLim:=OperClientDataSet( DM1.cdsReporte,'SUM('+'LOCLIM'+')','');
  xLocPro:=OperClientDataSet( DM1.cdsReporte,'SUM('+'LOCPRO'+')','');
  xLocOtr:=OperClientDataSet( DM1.cdsReporte,'SUM('+'LOCOTR'+')','');
  xExtLim:=OperClientDataSet( DM1.cdsReporte,'SUM('+'EXTLIM'+')','');
  xExtPro:=OperClientDataSet( DM1.cdsReporte,'SUM('+'EXTPRO'+')','');
  xExtOtr:=OperClientDataSet( DM1.cdsReporte,'SUM('+'EXTOTR'+')','');

  DM1.cdsReporte.First;
  while NOT DM1.cdsReporte.EOF do
  begin
    DM1.cdsReporte.Edit;
    if xLocLim<> 0 then
      DM1.cdsReporte.FieldByName('PORLOCLIM').AsFloat:=FRound(DM1.cdsReporte.FieldByName('LOCLIM').AsFloat/xLocLim*100,15,3)
    else
      DM1.cdsReporte.FieldByName('PORLOCLIM').AsFloat:=0;

    if xLocPro<> 0 then
      DM1.cdsReporte.FieldByName('PORLOCPRO').AsFloat:=FRound(DM1.cdsReporte.FieldByName('LOCPRO').AsFloat/xLocPro*100,15,3)
    else
      DM1.cdsReporte.FieldByName('PORLOCPRO').AsFloat:=0;

    if xLocOtr<>0 then
      DM1.cdsReporte.FieldByName('PORLOCOTR').AsFloat:=FRound(DM1.cdsReporte.FieldByName('LOCOTR').AsFloat/xLocOtr*100,15,3)
    else
      DM1.cdsReporte.FieldByName('PORLOCOTR').AsFloat:=0;

    if xExtLim<>0 then
      DM1.cdsReporte.FieldByName('POREXTLIM').AsFloat:=FRound(DM1.cdsReporte.FieldByName('EXTLIM').AsFloat/xExtLim*100,15,3)
    else
      DM1.cdsReporte.FieldByName('POREXTLIM').AsFloat:=0;

    if xExtPro<>0 then
      DM1.cdsReporte.FieldByName('POREXTPRO').AsFloat:=FRound(DM1.cdsReporte.FieldByName('EXTPRO').AsFloat/xExtPro*100,15,3)
    else
      DM1.cdsReporte.FieldByName('POREXTPRO').AsFloat:=0;

    if xExtOtr<>0 then
      DM1.cdsReporte.FieldByName('POREXTOTR').AsFloat:=FRound(DM1.cdsReporte.FieldByName('EXTOTR').AsFloat/xExtOtr*100,15,3)
    else
      DM1.cdsReporte.FieldByName('POREXTOTR').AsFloat:=0;

    DM1.cdsReporte.FieldByName('TOTLOC').AsFloat:=DM1.cdsReporte.FieldByName('LOCLIM').AsFloat+DM1.cdsReporte.FieldByName('LOCPRO').AsFloat;
    DM1.cdsReporte.FieldByName('TOTPORLOC').AsFloat:=FRound(DM1.cdsReporte.FieldByName('TOTLOC').AsFloat/(xLocLim+xLocPro)*100,15,3);

    DM1.cdsReporte.FieldByName('TOTEXT').AsFloat:=DM1.cdsReporte.FieldByName('EXTLIM').AsFloat+DM1.cdsReporte.FieldByName('EXTPRO').AsFloat;
    DM1.cdsReporte.FieldByName('TOTPOREXT').AsFloat:=FRound(DM1.cdsReporte.FieldByName('TOTEXT').AsFloat/(xExtLim+xExtPro)*100,15,3);

    DM1.cdsReporte.Post;
    DM1.cdsReporte.Next;
  end;


end;

procedure TFDocVence1.BitBtn1Click(Sender: TObject);
var sSQL:string;
begin
  sSQL:=
  ' SELECT DOCDES,PROT,DOCID,CIAID,SUM(LOCLIM) LOCLIM,0.00 PORLOCLIM, SUM(LOCPRO) LOCPRO,0.000 PORLOCPRO, '+
  ' SUM(LOCOTR) LOCOTR, 0.000 PORLOCOTR, SUM(EXTLIM) EXTLIM, 0.000 POREXTLIM, SUM(EXTPRO) EXTPRO, 0.000 POREXTPRO, '+
  ' SUM(EXTOTR) EXTOTR, 0.000 POREXTOTR, '+
  ' 0.00 TOTLOC,0.00 TOTPORLOC, '+
  ' 0.00 TOTLOCOTR,0.00 TOTPORLOCOTR, '+
  ' 0.00 TOTEXT,0.00 TOTPOREXT, '+
  ' 0.00 TOTEXTOTR,0.00 TOTPOREXTOTR '+
  ' FROM ( '+
  ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, DOCID,CIAID,TVTAID, '+
  ' CASE WHEN TVTAID='+QuotedStr('01')+' THEN SUM(CCSALLOC) ELSE 0 END LOCLIM, '+
  ' CASE WHEN TVTAID='+QuotedStr('02')+' THEN SUM(CCSALLOC) ELSE 0 END LOCPRO, '+
  ' CASE WHEN TVTAID='+QuotedStr('03')+' THEN SUM(CCSALLOC) ELSE 0 END LOCOTR, '+
  ' CASE WHEN TVTAID='+QuotedStr('01')+' THEN SUM(CCSALEXT) ELSE 0 END EXTLIM, '+
  ' CASE WHEN TVTAID='+QuotedStr('02')+' THEN SUM(CCSALEXT) ELSE 0 END EXTPRO, '+
  ' CASE WHEN TVTAID='+QuotedStr('03')+' THEN SUM(CCSALEXT) ELSE 0 END EXTOTR  '+
  ' FROM CXC301 '+                                                                                                                        //19 cheque
  ' WHERE DATE(DAYS(CCFVCMTO)+5) < CURRENT DATE AND COALESCE(CCSALORI,0)>0 AND COALESCE(CCFLAGPROT,''NULO'')<>''S'' AND DOCID<>'+QuotedStr('19')+
  ' GROUP BY DOCID,CIAID,TVTAID '+
  ' UNION '+
  ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''S'' PROT, DOCID,CIAID,TVTAID, '+
  ' CASE WHEN TVTAID='+QuotedStr('01')+' THEN SUM(CCSALLOC) ELSE 0 END LOCLIM, '+
  ' CASE WHEN TVTAID='+QuotedStr('02')+' THEN SUM(CCSALLOC) ELSE 0 END LOCPRO, '+
  ' CASE WHEN TVTAID='+QuotedStr('03')+' THEN SUM(CCSALLOC) ELSE 0 END LOCOTR, '+
  ' CASE WHEN TVTAID='+QuotedStr('01')+' THEN SUM(CCSALEXT) ELSE 0 END EXTLIM, '+
  ' CASE WHEN TVTAID='+QuotedStr('02')+' THEN SUM(CCSALEXT) ELSE 0 END EXTPRO, '+
  ' CASE WHEN TVTAID='+QuotedStr('03')+' THEN SUM(CCSALEXT) ELSE 0 END EXTOTR  '+
  ' FROM CXC301 '+                                                                                                     //05 letra
  ' WHERE DATE(DAYS(CCFVCMTO)+5) < CURRENT DATE AND COALESCE(CCSALORI,0)>0 AND COALESCE(CCFLAGPROT,''NULO'')=''S'' AND DOCID='+QuotedStr('05')+
  ' GROUP BY DOCID,CIAID,TVTAID '+
  ' UNION '+
  ' SELECT ''DESCRIPCION DEL DOCUMENTO'' DOCDES, ''N'' PROT, DOCID,CIAID,TVTAID, '+
  ' CASE WHEN TVTAID='+QuotedStr('01')+' THEN SUM(CCSALLOC) ELSE 0 END LOCLIM, '+
  ' CASE WHEN TVTAID='+QuotedStr('02')+' THEN SUM(CCSALLOC) ELSE 0 END LOCPRO, '+
  ' CASE WHEN TVTAID='+QuotedStr('03')+' THEN SUM(CCSALLOC) ELSE 0 END LOCOTR, '+
  ' CASE WHEN TVTAID='+QuotedStr('01')+' THEN SUM(CCSALEXT) ELSE 0 END EXTLIM, '+
  ' CASE WHEN TVTAID='+QuotedStr('02')+' THEN SUM(CCSALEXT) ELSE 0 END EXTPRO, '+
  ' CASE WHEN TVTAID='+QuotedStr('03')+' THEN SUM(CCSALEXT) ELSE 0 END EXTOTR '+
  ' FROM CXC301 '+                                                                                                                   //19 CHEQUE
  ' WHERE DATE(DAYS(CCFVCMTO)+5) < CURRENT DATE AND COALESCE(CCSALORI,0)>0 AND COALESCE(TCANJEID,''NULO'')=''DE'' AND DOCID='+QuotedStr('19')+
  ' GROUP BY DOCID,CIAID,TVTAID )X' +
  ' GROUP BY DOCDES,PROT,DOCID,CIAID ';


  DM1.cdsReporte.close;
  DM1.cdsReporte.DataRequest(sSQL);
  DM1.cdsReporte.Open;
  DM1.cdsReporte.IndexFieldNames:='DOCID;CIAID;PROT';
  DM1.cdsReporte.First;
  DM1.cdsTDoc.Open;
  if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
    DM1.cdsTDoc.IndexFieldNames:='DOCID';
  while NOT DM1.cdsReporte.EOF do
  begin
    DM1.cdsTDoc.Setkey;
    DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsReporte.FieldByName('DOCID').AsString;
    DM1.cdsReporte.Edit;
    if DM1.cdsTDoc.Gotokey then
    begin
      DM1.cdsReporte.FieldByName('DOCDES').AsString:=DM1.cdsTDoc.FieldByName('DOCDES').AsString;
      if DM1.cdsReporte.FieldByName('PROT').AsString = 'S' then
        DM1.cdsReporte.FieldByName('DOCDES').AsString:=DM1.cdsReporte.FieldByName('DOCDES').AsString+' PROTESTADAS';
    end
    else
    begin
      DM1.cdsReporte.FieldByName('DOCDES').AsString:='N.A.';
    end;
    DM1.cdsReporte.Post;
    DM1.cdsReporte.Next;
  end;
  CalculaTotales;

  ppdbReporte.DataSource:=DM1.dsReporte;
  ppReporte.template.FileName := ExtractFilePath( application.ExeName ) + wRutaRpt +'\CarteraVencida.rtm';
  ppReporte.template.LoadFromFile;
  ppDesigner1.Show;
end;

end.

