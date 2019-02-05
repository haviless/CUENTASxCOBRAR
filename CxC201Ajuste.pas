unit CxC201Ajuste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ComCtrls, wwriched;

type
  TFAjusteRedondeo = class(TForm)
    SpeedButton1: TSpeedButton;
    dbgDet: TwwDBGrid;
    lblTotDebe: TLabel;
    lblTotHaber: TLabel;
    lblDifer: TLabel;
    dbgCab: TwwDBGrid;
    btnGraba: TButton;
    btnProcesaRedGral: TBitBtn;
    memo1: TwwDBRichEdit;
    btnListaDifer: TBitBtn;
    Edit1: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnGrabaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SumaDetalle;
    procedure btnProcesaRedGralClick(Sender: TObject);
    procedure btnListaDiferClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FAjusteRedondeo: TFAjusteRedondeo;
   xSQL : String;

implementation

uses CxCDM;

{$R *.dfm}

procedure TFAjusteRedondeo.SpeedButton1Click(Sender: TObject);
begin
   dbgCab.datasource:=nil;
   xSQL := 'Select CCGRAVAD, CCNOGRAV, CCSERVIC, CCDCTO, CCIGV, CCMTOORI, CCMTOLOC, CCMTOEXT, CXC_IMP_EXO, '
          +'       CCPAGORI, CCPAGLOC, CCPAGEXT, CCSALORI, CCSALLOC, CCSALEXT '
          +'  from CXC301 '
          +' where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
          +'   and DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
          +'   and CCSERIE = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)
          +'   and CCNODOC = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString);
   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.DataRequest(xSQL);
   DMCXC.cdsQry3.Open;
   dbgCab.datasource:=DMCXC.dsQry3;

   dbgDet.datasource:=nil;
   xSQL := 'Select CIAID, DOCID, CCSERIE, CCNODOC, CCDH, TMONID, CCMTOORI, CCMTOLOC, CCMTOEXT, CCREG, TIPDET '
          +'  from CXC302 '
          +' where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
          +'   and DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
          +'   and CCSERIE = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)
          +'   and CCNODOC = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString);
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(xSQL);
   DMCXC.cdsQry2.Open;
   dbgDet.datasource:=DMCXC.dsQry2;

   Edit1.Text := DMCXC.cdsMovCxC.fieldbyname('CCANOMES').AsString;

   SumaDetalle;
end;

procedure TFAjusteRedondeo.btnGrabaClick(Sender: TObject);
var
   xSQL : String;
begin
   DMCXC.DCOM1.AppServer.IniciaTransaccion;
   xSQL := 'Update CXC301 '
          +'   set CCGRAVAD='+floattostr(DMCXC.cdsQry3.FieldbyName('CCGRAVAD').AsFloat)+','
          +'       CCNOGRAV='+floattostr(DMCXC.cdsQry3.FieldbyName('CCNOGRAV').AsFloat)+','
          +'       CCSERVIC='+floattostr(DMCXC.cdsQry3.FieldbyName('CCSERVIC').AsFloat)+','
          +'       CCDCTO  ='+floattostr(DMCXC.cdsQry3.FieldbyName('CCDCTO').AsFloat)+','
          +'       CCIGV   ='+floattostr(DMCXC.cdsQry3.FieldbyName('CCIGV').AsFloat)+','
          +'       CXC_IMP_EXO   ='+floattostr(DMCXC.cdsQry3.FieldbyName('CXC_IMP_EXO').AsFloat)+','
          +'       CCMTOORI='+floattostr(DMCXC.cdsQry3.FieldbyName('CCMTOORI').AsFloat)+','
          +'       CCMTOLOC='+floattostr(DMCXC.cdsQry3.FieldbyName('CCMTOLOC').AsFloat)+','
          +'       CCMTOEXT='+floattostr(DMCXC.cdsQry3.FieldbyName('CCMTOEXT').AsFloat)+','
          +'       CCPAGORI='+floattostr(DMCXC.cdsQry3.FieldbyName('CCPAGORI').AsFloat)+','
          +'       CCPAGLOC='+floattostr(DMCXC.cdsQry3.FieldbyName('CCPAGLOC').AsFloat)+','
          +'       CCPAGEXT='+floattostr(DMCXC.cdsQry3.FieldbyName('CCPAGEXT').AsFloat)+','
          +'       CCSALORI='+floattostr(DMCXC.cdsQry3.FieldbyName('CCSALORI').AsFloat)+','
          +'       CCSALLOC='+floattostr(DMCXC.cdsQry3.FieldbyName('CCSALLOC').AsFloat)+','
          +'       CCSALEXT='+floattostr(DMCXC.cdsQry3.FieldbyName('CCSALEXT').AsFloat)+' '
          +' where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
          +'   and DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
          +'   and CCSERIE = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)
          +'   and CCNODOC = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString);
   try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se pudo actualizar Cabecera');
      exit;
   end;

   DMCXC.cdsQry2.First;
   While not DMCXC.cdsQry2.EOF do
   begin
      xSQL := 'Update CXC302 '
             +'   set CCMTOORI='+floattostr(DMCXC.cdsQry2.FieldbyName('CCMTOORI').AsFloat)+','
             +'       CCMTOLOC='+floattostr(DMCXC.cdsQry2.FieldbyName('CCMTOLOC').AsFloat)+','
             +'       CCMTOEXT='+floattostr(DMCXC.cdsQry2.FieldbyName('CCMTOEXT').AsFloat)+' '
             +' where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
             +'   and DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
             +'   and CCSERIE = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)
             +'   and CCNODOC = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString)
             +'   and CCREG='+inttostr(DMCXC.cdsQry2.fieldbyname('CCREG').AsInteger);
      try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      except
         DMCXC.DCOM1.AppServer.RetornaTransaccion;
         ShowMessage('No se pudo actualizar Detalle');
         exit;
      end;
      DMCXC.cdsQry2.Next;
   End;

   DMCXC.DCOM1.AppServer.GrabaTransaccion;
   SumaDetalle;
   ShowMessage('Ok 2');

end;

procedure TFAjusteRedondeo.FormShow(Sender: TObject);
begin
   SpeedButton1Click(Sender);
end;

procedure TFAjusteRedondeo.SumaDetalle;
begin
   xSQL := 'Select sum(case when CCDH=''D'' then (case when TMONID=''N'' then CCMTOLOC else CCMTOEXT end) else 0.00 end) TOTDEBE,'
          +'       sum(case when CCDH=''H'' then (case when TMONID=''N'' then CCMTOLOC else CCMTOEXT end) else 0.00 end) TOTHABER '
          +'  from CXC302 '
          +' where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
          +'   and DOCID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('DOCID').AsString)
          +'   and CCSERIE = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCSERIE').AsString)
          +'   and CCNODOC = ' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CCNODOC').AsString);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(xSQL);
   DMCXC.cdsQry.Open;
   lblTotDebe.Caption := floattostr(DMCXC.cdsQry.FieldByName('TOTDEBE').AsFloat);
   lblTotHaber.Caption := floattostr(DMCXC.cdsQry.FieldByName('TOTHABER').AsFloat);
   lblDifer.Caption := floattostr(DMCXC.cdsQry.FieldByName('TOTDEBE').AsFloat - DMCXC.cdsQry.FieldByName('TOTHABER').AsFloat);
end;

procedure TFAjusteRedondeo.btnProcesaRedGralClick(Sender: TObject);
begin
   xSQL := 'Update CXC302 '
          +'   Set CCMTOORI=round(CCMTOORI,2), '
          +'       CCMTOLOC=round(CCMTOLOC,2), '
          +'       CCMTOEXT=round(CCMTOEXT,2)  '
          +'where CCANOMES=''201408'' '
          +'  and TDIARID=''09'' ';
   try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se pudo actualizar Cabecera');
      exit;
   end;

   xSQL := 'Update CXC301 '
          +'   set CCGRAVAD=round(CCGRAVAD,2), '
          +'       CCNOGRAV=round(CCNOGRAV,2), '
          +'       CCFLETE=round(CCFLETE,2), '
          +'       CCSERVIC=round(CCSERVIC,2), '
          +'       CCDCTO=round(CCDCTO,2), '
          +'       CCIGV=round(CCIGV,2), '
          +'       CCISC=round(CCISC,2), '
          +'       CXC_IMP_EXO=round(CXC_IMP_EXO,2), '
          +'       CCMTOORI=round(CCMTOORI,2), '
          +'       CCMTOLOC=round(CCMTOLOC,2), '
          +'       CCMTOEXT=round(CCMTOEXT,2), '
          +'       CCPAGORI=round(CCPAGORI,2), '
          +'       CCPAGLOC=round(CCPAGLOC,2), '
          +'       CCPAGEXT=round(CCPAGEXT,2), '
          +'       CCSALORI=round(CCSALORI,2), '
          +'       CCSALLOC=round(CCSALLOC,2), '
          +'       CCSALEXT=round(CCSALEXT,2) '
          +'where CCANOMES=''201408'' '
          +'  and TDIARID=''09'' ';
   try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      DMCXC.DCOM1.AppServer.RetornaTransaccion;
      ShowMessage('No se pudo actualizar Detalle');
      exit;
   end;
   ShowMessage('listo');
end;

procedure TFAjusteRedondeo.btnListaDiferClick(Sender: TObject);
var
   xLinea : String;
begin
   xSQL := 'select CIAID, TDIARID, CCNOREG, sum(MONTO301) MONTO301, sum(DEBE_CXC) DEBE302, sum(HABER_CXC) HABER302 '
         + '  from (select CIAID, TDIARID, CCNOREG, CCMTOLOC MONTO301, 0.00 DEBE_CXC, 0.00 HABER_CXC '
         + '          from CXC301 '
         + '         where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
         + '           and TDIARID=''09'' '
         + '           and CCANOMES='+quotedstr(Edit1.Text)+' and CCESTADO not in (''A'',''I'') '
         + '        union all '
         + '        select CIAID, TDIARID, CCNOREG, 0.00 MONTO301, '
         + '               sum(case when CCDH=''D'' then CCMTOLOC else 0.00 end) DEBE_CXC, '
         + '               sum(case when CCDH=''H'' then CCMTOLOC else 0.00 end) HABER_CXC '
         + '          from CXC302 '
         + '         where CIAID=' + Quotedstr(DMCXC.cdsMovCxC.fieldbyname('CIAID').AsString)
         + '           and TDIARID=''09'' and CCANOMES='+quotedstr(Edit1.Text)+' and CCESTADO not in (''A'',''I'') '
         + '         group by CIAID, TDIARID, CCNOREG  '
         + '       ) '
         + ' group by CIAID, TDIARID, CCNOREG '
         + ' having sum(MONTO301)<>sum(DEBE_CXC) or sum(MONTO301)<>sum(HABER_CXC) or sum(DEBE_CXC)<>sum(HABER_CXC) '
         + ' order by CIAID, TDIARID, CCNOREG ';
	DMCXC.cdsQry.Close;
	DMCXC.cdsQry.DataRequest(xSQL);
	DMCXC.cdsQry.Open;

   DMCXC.cdsQry.First;
   memo1.Lines.Clear;
   while not DMCXC.cdsQry.EOF do
   begin
      xLinea := DMCXC.cdsQry.FieldByName('CIAID').AsString+'|'
               +DMCXC.cdsQry.FieldByName('TDIARID').AsString+'|'
               +DMCXC.cdsQry.FieldByName('CCNOREG').AsString+'|';
      memo1.Lines.Add(xLinea);
      DMCXC.cdsQry.Next;
   end;
end;

end.
