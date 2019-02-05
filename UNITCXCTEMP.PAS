unit UnitCXCTEMP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid,DB;

type
  TForm21 = class(TForm)
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    wwDBGrid4: TwwDBGrid;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
   Function  AsientoCuadra: Boolean;
   Procedure FiltraCanje( xModo : String );  //QUITAR
   Function  ExisteMovCxC(xxCia,xxClieid,xxDocid,xxCCSerie,xxCCNoDoc:String):Boolean;
   Function  VerificaTotal:Boolean;
   procedure ActualizaPagadoMovCxP;
   Procedure GrabaDetCanje1;
   Procedure InsertaRegistrosdeAbonos;
   Procedure GrabaRegCxP305;
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses CxCDM, CxC001;

{$R *.DFM}

procedure TForm21.BitBtn1Click(Sender: TObject);
var sWhere,sSQL:string;
    XCLIEID,XCIA,XCANJE,XCLIEDES,XSECTOR,XZONA:STRING;
    XTMES,XTANO,XFECSTR:STRING;
    I,INUMLETORI:INTEGER;
    xNoDoc,xSitAnt,sImp,xSitNext,sUBI,sSIT,XWHERE:STRING;
    xTotME,xTotMN:double;
    bSigue:Boolean;
    xRegAct:TBookMark;
begin
   for i:=0 to FPrincipal.GLetras.FMant.dbgFiltro.SelectedList.Count-1 do
   begin
      Errorcount:=0;
      DM1.DCOM1.AppServer.SOLStartTransaction;

      bsigue:=True;
      DM1.cdsCCanje.GotoBookmark(FPrincipal.GLetras.FMant.dbgFiltro.SelectedList.Items[i]);

   // ACTIVATE
      XCIA:= DM1.cdsCCanje.fieldbyname('CiaId').AsString;
      XCANJE:=DM1.cdsCCanje.fieldbyname('Canje').AsString;
      XCLIEID:=DM1.cdsCCanje.fieldbyname('CLIEID').AsString;
      FiltraCanje(DM1.wModo);
      XCLIEDES:= DisplayDescrip('TGE204','CLIEDES','CLIEID',XClieID);
      xSector:=DM1.cdsQry2.FieldByname('TVTAID').AsString;
      xZona:=DM1.cdsQry2.FieldByname('ZONVTAID').AsString;
      iNumLetOri := dm1.cdsCCanje.fieldbyname('CJNUMLET').AsInteger;
      xTMes := copy(dm1.cdsCCanje.fieldbyname('CJAAMM').AsString,5,2);
      xTAno :=copy(dm1.cdsCCanje.fieldbyname('CJAAMM').AsString,1,4);
   // ACTIVATE

     //CLICK OK
      DM1.cdsTDoc.Filtered:=false;
      xFecStr := DateToStr(DM1.cdsCCanje.FieldByName('CJFCANJE').AsDateTime);
      xTAno := Copy(xFecStr,7,4);
      xTMes := Copy(xFecStr,4,2);

      DM1.cdsMovCxC2.Filtered:=False;
      DM1.cdsCanjes.First;
      while not DM1.cdsCanjes.Eof do
      begin
        DM1.cdsCanjes.Edit;
        if ExisteMovCxC( DM1.cdsCanjes.fieldbyname('CIAID').AsString,DM1.cdsCanjes.fieldbyname('CLIEID').AsString,
                       DM1.cdsCanjes.fieldbyname('DOCID').AsString,DM1.cdsCanjes.fieldbyname('CCSERIE').AsString,DM1.cdsCanjes.fieldbyname('CCNODOC').AsString) then
        begin
           DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat:=DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat+DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat;
           DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat:=DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat+DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat;
           If DM1.cdsCCanje.FieldByName('TMONID').AsString=DM1.wTMonLoc then
           begin
              DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat := FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat,15,2);
              DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat := DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat;
              DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat := FRound(DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat/DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2);
              DM1.xFlagCal := False;
              DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat := FRound(DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat/DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2);
           end
           else
           begin
              DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat := FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat,15,2);
              DM1.cdsCanjes.fieldbyname('CCSalExt').AsFloat := DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat;
              DM1.cdsCanjes.fieldbyname('CCSalLoc').AsFloat := FRound(DM1.cdsCanjes.fieldbyname('CCSalOri').AsFloat*DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2);
              DM1.xFlagCal := False;
              DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat := FRound(DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat*DM1.cdsCCanje.fieldbyname('CJTCambio').AsFloat,15,2);
           end;
        end;
        DM1.cdsPost( DM1.cdsCanjes );
        DM1.cdsCanjes.Next;
      end;
      DM1.cdsCanjes.EnableControls;
      DM1.cdsMovCxC2.Filtered:=True;

      DM1.cdsCanjes.First;
      while not DM1.cdsCanjes.EOF do
      begin
         DM1.cdsCanjesClone.Setkey;
         DM1.cdsCanjesClone.FieldByName('CIAID').AsString:=   DM1.cdsCanjes.FieldByName('CIAID').AsString;
         DM1.cdsCanjesClone.FieldByName('CLIEID').AsString:= DM1.cdsCanjes.FieldByName('CLIEID').AsString;
         DM1.cdsCanjesClone.FieldByName('DOCID').AsString:= DM1.cdsCanjes.FieldByName('DOCID').AsString;
         DM1.cdsCanjesClone.FieldByName('CCSERIE').AsString:= DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
         DM1.cdsCanjesClone.FieldByName('CCNODOC').AsString:= DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
         if DM1.cdsCanjesClone.Gotokey then
         begin
            DM1.cdsCanjesClone.Edit;
            DM1.cdsCanjesClone.FieldByName('CCSALLOC').AsFloat:=DM1.cdsCanjes.FieldByName('CCSALLOC').AsFloat;
            DM1.cdsCanjesClone.FieldByName('CCSALEXT').AsFloat:=DM1.cdsCanjes.FieldByName('CCSALEXT').AsFloat;
            DM1.cdsCanjesClone.FieldByName('CCSALORI').AsFloat:=DM1.cdsCanjes.FieldByName('CCSALORI').AsFloat;
            DM1.cdsCanjesClone.FieldByName('CCMTOLOC').AsFloat:=DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
            DM1.cdsCanjesClone.FieldByName('CCMTOEXT').AsFloat:=DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
            DM1.cdsCanjesClone.Post;
         end;
         DM1.cdsCanjes.Next;
      end;
      DM1.cdsCanjes.EnableControls;
   // CLICK OK

   // ACEPTA CANJE
     if DM1.cdsCanjes.RecordCount=0 then
        bSigue:=False;
        //Raise exception.Create(' Error :  Falta registrar Documentos a Canjear');
     if DM1.cdsLetras.RecordCount=0 then
        bSigue:=False;
        //Raise Exception.Create(' Error :  Falta registrar Letras');
     if not VerificaTotal then
        bSigue:=False;
        //Raise Exception.Create('Total Documentos a Canjear y Total Letras NO Cuadran');

     if bsigue then
     begin
       xWhere:= 'UBICAFLAG=''O''';  // UBICACION OFICINA
       sUBI  := BuscaQry('dspTGE','CXC105','UBICAID',xWhere,'UBICAID');

       xWhere:= 'SITUAFLAG=''3''';   // SITUACION LETRA EN CARTERA
       sSIT  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

       xWhere:= 'SITUAFLAG=''5''';   // SITUACION LETRA ACEPTADA
       xSitNext  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

       xWhere:= 'SITUAFLAG=''1''';  //SITUACION PREPARADA EN VENTAS
       sImp  := BuscaQry('dspTGE','CXC104','*',xWhere,'SITUAID');

       // VALIDA CADA UNA DE LAS LETRAS PARA VERIFICAR CAMBIO DE SITUACION
       xRegAct := DM1.cdsLetras.GetBookmark;

       DM1.cdsLetras.First;
       //COMIENZA A ACEPTAR LAS LETRAS
       xTotMN := 0;
       xTotME := 0;

       DM1.cdsLetras.First;
       While not DM1.cdsLetras.eof do
       begin
          SetHyst(XCIA, '05', DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
          DM1.cdsLetras.Edit;
          DM1.cdsLetras.fieldbyname('SITID').AsString      := sSIT;
          DM1.cdsLetras.fieldbyname('UBIID').AsString      := sUBI;
          DM1.cdsLetras.fieldbyname('CCFSITUA').AsDatetime := Date;
          DM1.cdsLetras.fieldbyname('CCESTADO').Value    := 'P';
          DM1.cdsLetras.fieldbyname('CCUSER').Value      := DM1.wUsuario;
          DM1.cdsLetras.fieldbyname('CCFREG').AsDatetime := date;
          DM1.cdsLetras.fieldbyname('CCHREG').Value      := Time;
          xTotMN := xTotMN + DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat;
          xTotME := xTotME + DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
          DM1.cdsLetras.Post;
          DM1.cdsLetras.Next;
       end;
       DM1.AplicaDatos( DM1.cdsLetras, 'Letras'  );

       //DE LA SITUACION '03' (ACEPTADO) SE PASA AUTOMATICAMENTE A LA SITUACION 10 (CARTERA)
       DM1.cdsLetras.First;
       While not DM1.cdsLetras.eof do
       begin
          SetHyst('01','05', DM1.cdsLetras.fieldbyname('CCNoDoc').AsString);
          UpdLET ('01',
                  DM1.cdsLetras.fieldbyname('DOCID').AsString,
                  DM1.cdsLetras.fieldbyname('CCNoDoc').AsString,
                  DM1.cdsLetras.fieldbyname('UBIID').AsString,
                  xSitNext,
                  '', '', '','', Date,False,'',0,0);
          //
          UpdCont('01', '05',
                  DM1.cdsLetras.fieldbyname('CCNoDoc').AsString,
                  DM1.cdsLetras.fieldbyname('UBIID').AsString,
                  xSitNext,
                  DM1.cdsLetras.fieldbyname('TMONID').AsString,
                  DM1.cdsLetras.fieldbyname('TVTAID').AsString,
                  DM1.cdsLetras.fieldbyname('CCFEMIS').AsDateTime );

          DM1.cdsLetras.Next;
       end;

       DM1.cdsCCanje.Edit;
       DM1.cdsCCanje.fieldbyname('CJEstado').AsString:='P';
       DM1.cdsCCanje.Post;
       DM1.cdsCCanje.DataRequest( 'Select * from CXC307 WHERE CANJE='+QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString));
       DM1.AplicaDatos( DM1.cdsCCanje, 'CCanje'  );

       ActualizaPagadoMovCxP;

       GrabaDetCanje1;

       Filtracds( DM1.cdsMovCxC,  'Select * from CXC301 Where '
                    +'CIAID='  +''''+'01'+''''+' and '
                    +'DOCID='  +''''+DM1.cdsCCanje.fieldbyname('NDDoc').AsString   +''''+' and '
                    +'CCSERIE='+''''+DM1.cdsCCanje.fieldbyname('NDSerie').AsString +''''+' and '
                    +'CCNODOC='+''''+DM1.cdsCCanje.fieldbyname('NDNumero').AsString+'''' );

       DM1.cdsMovCxC.Edit;

       if DM1.cdsMovCxC.FieldByName('TMONID').AsString=DM1.wTMonLoc then
       begin
         DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat;
       end
       else
       begin
         DM1.cdsMovCxC.FieldByName('CCPAGORI').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoEXT').AsFloat;
       end;


       DM1.cdsMovCxC.FieldByName('CCPagLoc').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoLoc').AsFloat;
       DM1.cdsMovCxC.FieldByName('CCPagExt').AsFloat:= DM1.cdsMovCxC.FieldByName('CCMtoExt').AsFloat;
       DM1.cdsMovCxC.FieldByName('CCSalLoc').AsFloat:= 0;
       DM1.cdsMovCxC.FieldByName('CCSalExt').AsFloat:= 0;
    //CLG : 04/02/2002
       DM1.cdsMovCxC.FieldByName('CCSALORI').AsFloat:= 0;

       DM1.cdsMovCxC.FieldByName('CCESTADO').AsString:= 'C';
       DM1.AplicaDatos( DM1.cdsMovCxC, 'MovCxC' );

       DM1.SaldosAuxiliarCLG( DM1.cdsLetras.fieldbyname('CiaId').AsString,DM1.cdsLetras.fieldbyname('CCAnoMes').AsString,
                           DM1.cdsLetras.fieldbyname('ClAuxId').AsString,DM1.cdsLetras.fieldbyname('ClieId').AsString,
                           '=', xTotMN, xTotME, DM1.cdsCCanje.fieldbyname('TMonid').AsString );

       DM1.cdsQry.Close;

       DM1.ControlTran( 8, nil, '' );  //COMMIT
     //ACEPTA CANJE
    end;
  end;
end;

function TForm21.ExisteMovCxC(xxCia,xxClieid,xxDocid,xxCCSerie,xxCCNoDoc:String):Boolean;
begin
   DM1.cdsMovCxC2.Setkey;
   DM1.cdsMovCxC2.fieldbyname('CIAID').AsString    := xxCia;
   DM1.cdsMovCxC2.fieldbyname('CLIEID').AsString  := xxClieid;
   DM1.cdsMovCxC2.fieldbyname('DOCID').AsString := xxDocid;
   DM1.cdsMovCxC2.fieldbyname('CCSERIE').AsString  := xxCCSerie;
   DM1.cdsMovCxC2.fieldbyname('CCNODOC').AsString  := xxCCNODOC;
   if DM1.cdsMovCxC2.GotoKey then
      Result:=True
   else
      Result:=False;
end;

procedure TForm21.FiltraCanje(xModo: String);
var sSQL:string;
begin
   Filtracds( DM1.cdsMovCxC2,'Select ''ABREVIATURA'' DOCABR, CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+'01'+''''+' and '
                         + 'CLIEID='    +''''+DM1.cdsCCanje.FieldByName('CLIEID').AsString+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );


   DM1.cdsMovCxC2.DisableControls;

   if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
     DM1.cdsTDoc.IndexFieldNames:='DOCID';

   DM1.cdsMovCxC2.First;
   DM1.cdsTDoc.Filtered:=True;
   while not DM1.cdsMovCxC2.EOF do
   begin
     DM1.cdsTDoc.Setkey;
     DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsMovCxc2.FieldByName('DOCID').AsString;
     DM1.cdsMovCxC2.Edit;
     if DM1.cdsTDoc.Gotokey then
       DM1.cdsMovCxc2.FieldByName('DOCABR').AsString:=DM1.cdsTDoc.FieldByName('DOCABR').AsString
     else
       DM1.cdsMovCxc2.FieldByName('DOCABR').AsString:='N.A.';
     DM1.cdsMovCxC2.Post;
     DM1.cdsMovCxC2.Next;
   end;
   DM1.cdsMovCxC2.Filtered:= False;
   DM1.cdsMovCxC2.Filter  := '';
   DM1.cdsMovCxC2.Filter  := 'FlagVar<>'+''''+'XX'+''''+' and (CCSALLOC>0 or TCANJEID=''NC'')and '
                           + 'CCCANJE<>'  +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''';

   DM1.cdsMovCxC2.Filtered:= True;

   DM1.cdsMovCxC2.EnableControls;

   Filtracds( DM1.cdsMovCxC2Clone,'Select CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+'01'+''''+' and '
                         + 'CLIEID='    +''''+DM1.cdsCCanje.FieldByName('CLIEID').AsString+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );

   DM1.cdsMovCxC2Clone.Filtered:= False;
   DM1.cdsMovCxC2Clone.Filter  := '';
   DM1.cdsMovCxC2Clone.Filter  := 'FlagVar<>'+''''+'XX'+''''+' and (CCSALLOC>0 or TCANJEID=''NC'')and '
                           + 'CCCANJE<>'  +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''';

   DM1.cdsMovCxC2Clone.Filtered:= True;

   Filtracds( DM1.cdsCanjes, 'Select ''ABREVIATURA'' DOCABR, CXC304.* from CXC304 Where '
                        + 'CIAID='   +''''+'01'+''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''' );

   Filtracds( DM1.cdsCanjesClone, 'Select CXC304.* from CXC304 Where '
                        + 'CIAID='   +''''+'01' +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''' );


   DM1.cdsCanjes.DisableControls;

   if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
     DM1.cdsTDoc.IndexFieldNames:='DOCID';

   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.EOF do
   begin
     DM1.cdsTDoc.Setkey;
     DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsCanjes.FieldByName('DOCID').AsString;
     DM1.cdsCanjes.Edit;
     if DM1.cdsTDoc.Gotokey then
       DM1.cdsCanjes.FieldByName('DOCABR').AsString:=DM1.cdsTDoc.FieldByName('DOCABR').AsString
     else
       DM1.cdsCanjes.FieldByName('DOCABR').AsString:='N.A.';
     DM1.cdsCanjes.Post;
     DM1.cdsCanjes.Next;
   end;
   DM1.cdsCanjes.EnableControls;

   Filtracds( DM1.cdsDetCanje, 'Select * from CXC305 Where '
                        + 'CIAID='   +''''+'01' +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''' );

   Filtracds( DM1.cdsLetras, 'Select * from CXC301 Where '
                        + 'CIAID='   +''''+'01' +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''' );

   if (DM1.SRV_D = 'DB2NT') or (DM1.SRV_D = 'DB2400') then
   begin
   sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, C.CLIEDIR || '' - '' || COALESCE(Z.ZVTADES,'''')||'' - ''||COALESCE(Z1.TVTADES,'''') CLIEDIRINC,C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
         ' Z1.TVTADES FROM CXC301 L '+
         ' LEFT JOIN TGE204 C ON C.CIAID=L.CIAID AND C.CLAUXID=L.CLAUXID AND C.CLIEID=L.CLIEID '+
         ' LEFT JOIN TGE103 M ON M.TMONID=L.TMONID '+
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=C.ZONVTAID '+
         ' LEFT JOIN FAC105 Z1 ON Z1.TVTAID=Z.ZVTAID '+
         ' WHERE L.CIAID='+QuotedStr('01')+
         ' and L.TCANJEID='+QuotedStr('LC')+
         ' and L.CCCANJE='+QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString);
   end;
   if DM1.SRV_D='ORACLE' then
   begin
   sSQL:=' SELECT C.CLIEDES CLIENDES, L.CCFVALOR, L.CCFVCMTO, L.CCMTOORI, '+
         ' C.CLIEDIR || '' - '' || NVL(Z.ZVTADES,'''')||'' - ''||NVL(Z1.TVTADES,'''') CLIEDIRINC, '+
         ' C.CLIEDIR CLIEDIRJCP, L.CCNODOC,L.CLIEID, '+
         ' C.CLIERUC, C.CLIETELF, M.TMONDES,M.TMONABR,C.ZONVTAID, Z.ZVTADES,Z.ZVTAID, '+
         ' Z1.TVTADES FROM CXC301 L, TGE204 C, TGE103 M, FAC106 Z, FAC105 Z1 '+
         ' WHERE L.CIAID='+QuotedStr('01')+
         ' and L.TCANJEID='+QuotedStr('LC')+
         ' and L.CCCANJE='+QuotedStr(DM1.cdsCCanje.FieldByName('CANJE').AsString)+
         ' and L.CLIEID=C.CLIEID(+) '+
         ' and L.TMONID=M.TMONID(+) '+
         ' and C.ZONVTAID=Z.ZVTAID(+) '+
         ' and Z.ZVTAID=Z1.TVTAID(+) ';
   end;
   DM1.cdsQry4.Close;
   DM1.cdsQry4.Datarequest(sSQL);
   DM1.cdsQry4.Open;

   if xModo<>'A' then begin
      Filtracds( DM1.cdsDetCxC, 'Select * from CXC302 Where '
                        + 'CIAID='   +''''+'01' +''''+' and '
                        + 'TCANJEID='+''''+'LC'         +''''+' and '
                        + 'CCCANJE=' +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''' );
      DM1.cdsDetCxC.First;
   end;
   if DM1.cdsCCanje.fieldbyname('NDebito').AsString='S' then
   begin
      Filtracds( DM1.cdsMovCxC,  'Select * from CXC301 Where '
                   +'CIAID='  +''''+'01'                  +''''+' AND '
                   +'DOCID='  +''''+DM1.cdsCCanje.fieldbyname('NDDoc').AsString   +''''+' AND '
                   +'CCSERIE='+''''+DM1.cdsCCanje.fieldbyname('NDSerie').AsString +''''+' AND '
                   +'CCNODOC='+''''+DM1.cdsCCanje.fieldbyname('NDNumero').AsString+'''' );
      Filtracds( DM1.cdsDetCxC2, 'Select * from CXC302 Where '
                        + 'CIAID='   +''''+'01' +''''+' and '
                        + 'TCANJEID='+''''+'ND'         +''''+' and '
                        + 'CCCANJE=' +''''+DM1.cdsCCanje.FieldByName('CANJE').AsString+'''' );

   end;
end;

function TForm21.VerificaTotal: Boolean;
Var
   xTPagLoc, xTPagExt, xTLetOri, xTLetLoc, xTLetExt, xDifLoc, xDifExt : Double;
   xRegAct : TBookMark;
   xSigno:string;
begin
   Result := False;
   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsTDoc.Filtered:=False;
   xRegAct  := DM1.cdsCanjes.GetBookmark;
   xTPagLoc := 0; xTPagExt := 0;
   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.Eof do Begin
      DM1.cdsCanjes.Edit;
      DM1.cdsMovCxC2.Setkey;
      DM1.cdsMovCxC2.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CLIEID').AsString   := DM1.cdsCanjes.fieldbyname('CLIEID').AsString;
      DM1.cdsMovCxC2.fieldbyname('DOCID').AsString    := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCSERIE').AsString  := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNODOC').AsString  := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;

      if DM1.cdsMovCxC2.GotoKey then begin
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
            If FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').Asfloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').Asfloat,15,2)
               > FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoLoc').Asfloat,15,2) then begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            end;
            end
         else begin
            If FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').Asfloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').Asfloat,15,2)
               > FRound(DM1.cdsMovCxC2.fieldbyname('CCMtoExt').Asfloat,15,2) Then begin
               Raise exception.Create('Error : Monto pagado excede a Monto Total de Documento');
            End;
         end;
      end;
      if DM1.cdsTDoc.IndexFieldNames<>'DOCID' then
        DM1.cdsTDoc.IndexFieldNames:='DOCID';
      DM1.cdsTDoc.Setkey;
      DM1.cdsTDoc.FieldByName('DOCID').AsString:=DM1.cdsCanjes.fieldbyname('DOCID').AsString;
      xSigno:='+';
      if DM1.cdsTDoc.Gotokey then
      begin
        if DM1.cdsTDoc.FieldByName('DOCRESTA').AsString='S' then
          xSigno:='-';
      end;
      if xSigno='+' then
      begin
        xTPagLoc := xTPagLoc + FRound(DM1.cdsCanjes.fieldbyname('CCMtoLoc').Asfloat,15,2);
        xTPagExt := xTPagExt + FRound(DM1.cdsCanjes.fieldbyname('CCMtoExt').Asfloat,15,2);
      end
      else
      begin
        xTPagLoc := xTPagLoc - FRound(DM1.cdsCanjes.fieldbyname('CCMtoLoc').Asfloat,15,2);
        xTPagExt := xTPagExt - FRound(DM1.cdsCanjes.fieldbyname('CCMtoExt').Asfloat,15,2);
      end;

      DM1.cdsCanjes.Next;
   end;
   DM1.cdsTDoc.Filtered:=False;
   DM1.cdsCanjes.GotoBookmark(xRegAct);
   DM1.cdsCanjes.FreeBookmark(xRegAct);
   DM1.cdsCanjes.EnableControls;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2.EnableControls;

   // Totales de Letras por Pagar
   DM1.cdsLetras.DisableControls;
   xRegAct  := DM1.cdsLetras.GetBookmark;
   xTLetOri := 0; xTLetLoc := 0; xTLetExt := 0;
   DM1.cdsLetras.First ;
   While not DM1.cdsLetras.Eof do Begin
      xTLetOri := xTLetOri + FRound(DM1.cdsLetras.fieldbyname('CCMtoOri').Asfloat,15,2);
      xTLetLoc := xTLetLoc + FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').Asfloat,15,2);
      xTLetExt := xTLetExt + FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').Asfloat,15,2);
      DM1.cdsLetras.Next;
   end;

   If DM1.cdsLetras.fieldbyname('TMonID').AsString=DM1.wTMonLoc then begin
      If FRound(xTLetLoc,15,2)=FRound(xTPagLoc,15,2) then
         Result := True;
      end
   Else begin
      If DM1.cdsLetras.fieldbyname('TMonID').AsString=DM1.wTMonExt then begin
         If FRound(xTLetExt,15,2)=FRound(xTPagExt,15,2) then
            Result := True
      end;
   end;

   xDifLoc:=0; xDifExt:=0;

   If Result then begin
      If xTLetLoc<>xTPagLoc then begin
         xDifLoc := FRound( xTPagLoc-xTLetLoc, 5, 2);
      end;
      If xTLetExt<>xTPagExt then begin
         xDifExt := FRound( xTPagExt-xTLetExt, 5, 2);
      end;
   end;

   DM1.cdsLetras.Last;
   DM1.cdsLetras.Edit;
   DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').Asfloat + xDifLoc,15,2);
   DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').Asfloat + xDifExt,15,2);
   DM1.cdsLetras.GotoBookmark(xRegAct);
   DM1.cdsLetras.FreeBookmark(xRegAct);
   DM1.cdsLetras.EnableControls;
end;

procedure TForm21.ActualizaPagadoMovCxP;
var xIndexAnt:string;
begin
   xIndexAnt:=DM1.cdsMovCxC2.IndexFieldNames;

   DM1.cdsMovCxC2.DisableControls;
   DM1.cdsMovCxC2.IndexFieldNames:='CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DM1.cdsMovCxC2.Filtered:=False;
   DM1.cdsMovCxC2Clone.IndexFieldNames:='CIAID;CLIEID;DOCID;CCSERIE;CCNODOC';
   DM1.cdsMovCxC2Clone.Filtered:=False;
   DM1.cdsCanjes.DisableControls;

   DM1.cdsCanjes.First;
   While not DM1.cdsCanjes.Eof do
   Begin
      DM1.cdsMovCxC2.Setkey;
{      DM1.cdsMovCxC2.fieldbyname('CiaID').AsString    := DM1.cdsCanjes.fieldbyname('CiaID').AsString;
      DM1.cdsMovCxC2.fieldbyname('TDiarID').AsString  := DM1.cdsCanjes.fieldbyname('TDiarID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCAnoMes').AsString := DM1.cdsCanjes.fieldbyname('CCAnoMM').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNoReg').AsString  := DM1.cdsCanjes.fieldbyname('CCNoReg').AsString;}
      DM1.cdsMovCxC2.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CLIEID').AsString    := DM1.cdsCanjes.fieldbyname('CLIEID').AsString;
      DM1.cdsMovCxC2.fieldbyname('DOCID').AsString  := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCSERIE').AsString := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
      DM1.cdsMovCxC2.fieldbyname('CCNODOC').AsString := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;

      if DM1.cdsMovCxC2.GotoKey then
      begin
         DM1.cdsMovCxC2.edit;
         If DM1.cdsMovCxC2.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
         begin
            DM1.cdsMovCxC2.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
            If DM1.cdsMovCxC2.fieldbyname('CCSalLoc').AsFloat<=0 then
               DM1.cdsMovCxC2.fieldbyname('CCEstado').Asstring:='C';
         end
         else
         begin
            DM1.cdsMovCxC2.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
            DM1.cdsMovCxC2.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2.fieldbyname('CCPagExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
            If DM1.cdsMovCxC2.fieldbyname('CCSalExt').AsFloat<=0 then
               DM1.cdsMovCxC2.fieldbyname('CCEstado').Value:='C';
         end;
         DM1.cdsMovCxC2.fieldbyname('CCSALORI').AsFloat:=DM1.cdsMovCxC2.fieldbyname('CCMTOORI').AsFloat-DM1.cdsMovCxC2.fieldbyname('CCPAGORI').AsFloat;

         DM1.cdsMovCxC2.fieldbyname('CCTCamPa').AsFloat:=FRound(DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
         DM1.cdsMovCxC2.fieldbyname('FLAGVAR').AsString:='.';
         DM1.cdsPost( DM1.cdsMovCxC2 );
         DM1.cdsMovCxC2.Post;

         DM1.cdsMovCxC2Clone.Setkey;
         DM1.cdsMovCxC2Clone.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('CLIEID').AsString    := DM1.cdsCanjes.fieldbyname('CLIEID').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('DOCID').AsString  := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('CCSERIE').AsString := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
         DM1.cdsMovCxC2Clone.fieldbyname('CCNODOC').AsString := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;

         if DM1.cdsMovCxC2Clone.GotoKey then
         begin
            DM1.cdsMovCxC2Clone.edit;
            If DM1.cdsMovCxC2Clone.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
            begin
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
              If DM1.cdsMovCxC2Clone.fieldbyname('CCSalLoc').AsFloat<=0 then
                DM1.cdsMovCxC2Clone.fieldbyname('CCEstado').Asstring:='C';
            end
            else
            begin
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagori').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat+DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat,15,2);
              DM1.cdsMovCxC2Clone.fieldbyname('CCPagLoc').AsFloat:=FRound(DM1.cdsMovCxC2Clone.fieldbyname('CCPagExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
              If DM1.cdsMovCxC2Clone.fieldbyname('CCSalExt').AsFloat<=0 then
                DM1.cdsMovCxC2Clone.fieldbyname('CCEstado').Value:='C';
            end;
            DM1.cdsMovCxC2Clone.fieldbyname('CCSALORI').AsFloat:=DM1.cdsMovCxC2Clone.fieldbyname('CCMTOORI').AsFloat-DM1.cdsMovCxC2Clone.fieldbyname('CCPAGORI').AsFloat;

            DM1.cdsMovCxC2Clone.fieldbyname('CCTCamPa').AsFloat:=FRound(DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
            DM1.cdsMovCxC2Clone.fieldbyname('FLAGVAR').AsString:='.';
            DM1.cdsPost( DM1.cdsMovCxC2Clone );
            DM1.cdsMovCxC2Clone.Post;
          end;
      end;
      DM1.cdsCanjes.Next;
   end;
   DM1.cdsMovCxC2Clone.Filtered:=True;
   DM1.cdsMovCxC2.Filtered:=True;
   DM1.cdsMovCxC2Clone.DataRequest('Select CXC301.* from CXC301 Where '
                         + 'CIAID='     +''''+'01'+''''+' and '
                         + 'CLIEID='    +''''+DM1.cdsCCanje.FieldByName('CLIEID').AsString+''''+' and '
                         + 'CCESTADO='  +''''+'P'+'''' );
   DM1.AplicaDatos( DM1.cdsMovCxC2Clone,'MovCxC2' );
   DM1.cdsMovCxC2.IndexFieldNames:=xIndexAnt;
   DM1.cdsMovCxC2Clone.IndexFieldNames:=xIndexAnt;
   DM1.cdsMovCxC2.First;
   DM1.cdsMovCxC2.EnableControls;
   DM1.cdsCanjes.EnableControls;
end;

procedure TForm21.GrabaDetCanje1;
var
   xSalLoc,xSalExt,xSaldoC,xSaldoL : Double;
   sFiltroOriginal,sFiltroAbonosDi,sFiltroAbonosIg,sFiltroAbonosIg1,sSQL:string;

begin
   sFiltroAbonosDi:='';
   sFiltroAbonosIg:='';
   sFiltroOriginal:='';
   sFiltroOriginal:=DM1.cdsCanjes.Filter;

   sSQL:='SELECT DOCID FROM TGE110 WHERE DOCMOD=''CXC'' AND DOCRESTA=''S'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sSQL);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   while not DM1.cdsQry.EOF do
   begin
     if DM1.cdsQry.RecordCount=1 then
     begin
       sFiltroAbonosIg:='(DOCID='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
       sFiltroAbonosIg1:='(DOCID2='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
       sFiltroAbonosDi:='(DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
     end
     else
       if DM1.cdsQry.RecordCount=DM1.cdsQry.RecNo then
       begin
         sFiltroAbonosIg:=sFiltroAbonosIg+' (DOCID='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') ';
         sFiltroAbonosIg1:=sFiltroAbonosIg1+' (DOCID2='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+')';
         sFiltroAbonosDi:=sFiltroAbonosDi+' (DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') ';
       end
       else
       begin
         sFiltroAbonosIg:=sFiltroAbonosIg+' (DOCID='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') OR ';
         sFiltroAbonosIg1:=sFiltroAbonosIg1+' (DOCID2='+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') OR ';
         sFiltroAbonosDi:=sFiltroAbonosDi+' (DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+') AND ';
       end;
     DM1.cdsQry.Next;
   end;

   if sFiltroOriginal<>'' then
     DM1.cdsCanjes.Filter:=sFiltroOriginal+' AND '+sFiltroAbonosIg
   else
     DM1.cdsCanjes.Filter:=sFiltroAbonosIg;
   DM1.cdsCanjes.Filtered:=True;

   DM1.cdsCanjes.First;
   while not DM1.cdsCanjes.EOF do
   begin
     InsertaRegistrosdeAbonos;
     DM1.cdsCanjes.Next;
   end;


   if sFiltroOriginal<>'' then
     DM1.cdsCanjes.Filter:=sFiltroOriginal+' AND '+sFiltroAbonosDi
   else
     DM1.cdsCanjes.Filter:=sFiltroAbonosDi;
   DM1.cdsCanjes.Filtered:=True;

   DM1.cdsDetCanje.EmptyDataSet;

   DM1.cdsLetras.First;
   DM1.cdsCanjes.DisableControls;
   DM1.cdsCanjes.First;

// Inicio de los Documentos a Canjear SIN NOTAS DE ABONO
   while not DM1.cdsCanjes.Eof do
   begin
      if DM1.cdsCanjes.fieldbyname('TMonID').AsString=DM1.wTMonLoc Then
         xSaldoC := DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat
      else
      begin
         xSaldoC := DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat;
      end;
   // xSaldoC es el Saldo del Cargo
      xSalLoc := DM1.cdsCanjes.fieldbyname('CCMtoLoc').AsFloat;
      xSalExt := DM1.cdsCanjes.fieldbyname('CCMtoExt').AsFloat;
      while xSaldoC > 0 do
      begin
         while (not DM1.cdsLetras.Eof) and (xSaldoC>0) do
         begin
            if DM1.cdsCanjes.fieldbyname('TMonID').AsString=DM1.wTMonLoc Then
               xSaldoL := DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat
            else begin
               xSaldoL := DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat;
            end;
         // xSaldoL es el Saldo de la Letra

            DM1.cdsDetCanje.Insert;
            if xSaldoL<=xSaldoC then
            begin
               // Grabar en cxp305 en monto = a la letra
               GrabaRegCxP305;
               If DM1.cdsDetCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat/DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
                  xSalLoc := FRound(xSalLoc-DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  xSalExt := FRound(xSalExt-DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  xSaldoC := xSalLoc;
               end
               else
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat*DM1.cdsCanjes.fieldbyname('CCTCamCje').AsFloat,15,2);
                  xSalExt := FRound(xSalExt-DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat,15,2);
                  xSalLoc := FRound(xSalLoc-DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat,15,2);
                  xSaldoC := xSalExt;
               end;
               DM1.cdsPost( DM1.cdsDetCanje );

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.fieldbyname('CCMtoLoc').Value := 0;
               DM1.cdsLetras.Delete;
            end
            else
            begin



               // Grabar en cxp305 en monto = xSalLoc
               GrabaRegCxP305;
               If DM1.cdsDetCanje.fieldbyname('TMonID').AsString=DM1.wTMonLoc then
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(xSalLoc,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(xSalLoc,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(xSalLoc/DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
               end
               else
               begin
                  DM1.cdsDetCanje.fieldbyname('DCCMtoORI').AsFloat := FRound(xSalExt,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoExt').AsFloat := FRound(xSalExt,15,2);
                  DM1.cdsDetCanje.fieldbyname('DCCMtoLoc').AsFloat := FRound(xSalExt*DM1.cdsCanjes.fieldbyname('CCTCamDoc').AsFloat,15,2);
               end;
               DM1.cdsPost( DM1.cdsDetCanje );

               DM1.cdsLetras.Edit;
               DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoLoc').AsFloat-xSalLoc,15,2);
               DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat := FRound(DM1.cdsLetras.fieldbyname('CCMtoExt').AsFloat-xSalExt,15,2);
               DM1.cdsPost( DM1.cdsLetras );
               xSalLoc := 0;
               xSalExt := 0;
               xSaldoC := 0;
            end;
         end;
      end;
      DM1.cdsCanjes.Next;
   end;

   // CREA EL ABONO DE LA NOTA DE CREDITO CON LA FACTURA
   DM1.cdsDetCanje.Filter:=sFiltroAbonosIg1;
   DM1.cdsDetCanje.Filtered:=True;

   DM1.cdsDetCanje.First;
   while not DM1.cdsDetCanje.EOf do
   begin
      sSQL:='INSERT INTO CXC305(CIAID,CLIEID,CLIERUC,DOCID,CCSERIE,CCNODOC,CCNOREG,TCANJEID,CCCANJE,CCFCANJE,DOCID2,CCSERIE2,CCNODOC2,TMONID,'+
            ' DCCMTOORI,DCCMTOLOC,DCCMTOEXT,DCCUSER,DCCFREG,DCCHREG,DCCAAAA,DCCMM,DCCDD,DCCTRI,DCCSEM,DCCSS,DCCANOMM,DCCAATRI,DCCAASEM,DCCAASS) '+
            ' VALUES('+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CIAID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CLIEID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CLIERUC').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DOCID2').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCSERIE2').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCNODOC2').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCNOREG').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('TCANJEID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCCANJE').AsString)+','+
            DM1.wRepFuncDate+QuotedStr(FormatDateTime(DM1.wFormatFecha,DM1.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime))+'),'+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DOCID').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCSERIE').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('CCNODOC').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('TMONID').AsString)+','+
            FloatToStr(DM1.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat)+','+
            FloatToStr(DM1.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat)+','+
            FloatToStr(DM1.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCUSER').AsString)+','+
            DM1.wRepFuncDate+QuotedStr(FormatDateTime(DM1.wFormatFecha,DM1.cdsDetCanje.FieldByName('DCCFREG').AsDateTime))+'),'+
            QuotedStr(FormatDateTime(DM1.wFormatTime,DM1.cdsDetCanje.FieldByName('DCCHREG').AsDateTime))+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAAAA').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCMM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCDD').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCTRI').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCSEM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCSS').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCANOMM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAATRI').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAASEM').AsString)+','+
            QuotedStr(DM1.cdsDetCanje.FieldByName('DCCAASS').AsString)+')';
      try
        DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
      except
      end;
      DM1.cdsDetCanje.Next;
   end;

   DM1.cdsDetCanje.Filter:='';
   DM1.cdsDetCanje.Filtered:=False;

   DM1.cdsCanjes.Filter:=sFiltroOriginal;
   DM1.cdsLetras.CancelUpdates;
   DM1.cdsDetCanje.First;
   DM1.cdsLetras.EnableControls;
   DM1.cdsCanjes.EnableControls;

   DM1.AplicaDatos( DM1.cdsDetCanje,'DetCanje' );
end;

procedure TForm21.InsertaRegistrosdeAbonos;
begin
  DM1.cdsLetras.Insert;
  DM1.cdsLetras.FieldByName('CIAID').AsString   := DM1.cdsCanjes.FieldByName('CIAID').AsString;
  DM1.cdsLetras.FieldByName('CLIEID').AsString  := DM1.cdsCanjes.FieldByName('CLIEID').AsString;
  DM1.cdsLetras.FieldByName('CLIERUC').AsString := DM1.cdsCanjes.FieldByName('CLIERUC').AsString;
  DM1.cdsLetras.FieldByName('CCSERIE').AsString := DM1.cdsCanjes.FieldByName('CCSERIE').AsString;
  DM1.cdsLetras.FieldByName('TMONID').AsString  := DM1.cdsCanjes.FieldByName('TMONID').AsString;
  DM1.cdsLetras.FieldByName('CCNODOC').AsString := DM1.cdsCanjes.FieldByName('CCNODOC').AsString;
  DM1.cdsLetras.FieldByName('DOCID').AsString   := DM1.cdsCanjes.FieldByName('DOCID').AsString;
  DM1.cdsLetras.FieldByName('CCNOREG').AsString := DM1.cdsCanjes.FieldByName('CCNOREG').AsString;
  DM1.cdsLetras.FieldByName('CCMTOORI').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOORI').AsFloat;
  DM1.cdsLetras.FieldByName('CCMTOLOC').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOLOC').AsFloat;
  DM1.cdsLetras.FieldByName('CCMTOEXT').AsFloat := DM1.cdsCanjes.FieldByName('CCMTOEXT').AsFloat;
  DM1.cdsLetras.Post;
end;

procedure TForm21.GrabaRegCxP305;
begin
   DM1.cdsDetCanje.fieldbyname('CIAID').AsString    := DM1.cdsCanjes.fieldbyname('CIAID').AsString;
   DM1.cdsDetCanje.fieldbyname('CLIEID').AsString   := DM1.cdsCanjes.fieldbyname('CLIEID').AsString;
   DM1.cdsDetCanje.fieldbyname('CLIERUC').AsString  := DM1.cdsCanjes.fieldbyname('CLIERUC').AsString;
   DM1.cdsDetCanje.fieldbyname('DOCID').AsString    := DM1.cdsCanjes.fieldbyname('DOCID').AsString;
   DM1.cdsDetCanje.fieldbyname('CCSERIE').AsString  := DM1.cdsCanjes.fieldbyname('CCSERIE').AsString;
   DM1.cdsDetCanje.fieldbyname('CCNODOC').AsString  := DM1.cdsCanjes.fieldbyname('CCNODOC').AsString;
   DM1.cdsDetCanje.fieldbyname('CCNOREG').AsString  := DM1.cdsLetras.fieldbyname('CCNOREG').AsString;
   DM1.cdsDetCanje.fieldbyname('TCANJEID').AsString := DM1.cdsCanjes.fieldbyname('TCANJEID').AsString;
   DM1.cdsDetCanje.fieldbyname('CCCANJE').Value  := DM1.cdsCanjes.fieldbyname('CCCANJE').AsString;
   DM1.cdsDetCanje.fieldbyname('CCFCANJE').Value := DM1.cdsCanjes.fieldbyname('CCFCANJE').Value;
   DM1.cdsDetCanje.fieldbyname('DOCID2').AsString   := DM1.cdsLetras.fieldbyname('DOCID').AsString;
   DM1.cdsDetCanje.fieldbyname('CCSERIE2').AsString := DM1.cdsLetras.fieldbyname('CCSERIE').AsString;
   DM1.cdsDetCanje.fieldbyname('CCNODOC2').AsString := DM1.cdsLetras.fieldbyname('CCNODOC').AsString;
   DM1.cdsDetCanje.fieldbyname('TMONID').AsString   := DM1.cdsCanjes.fieldbyname('TMONID').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCUSER').AsString  := DM1.cdsCanjes.fieldbyname('CCUSER').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCFREG').value  := DM1.cdsCanjes.fieldbyname('CCFREG').Value;
   DM1.cdsDetCanje.fieldbyname('DCCHREG').Value  := DM1.cdsCanjes.fieldbyname('CCHREG').Value;
   DM1.cdsDetCanje.fieldbyname('DCCAAAA').AsString  := DM1.cdsCanjes.fieldbyname('CCAAAA').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCMM').AsString    := DM1.cdsCanjes.fieldbyname('CCMM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCDD').AsString    := DM1.cdsCanjes.fieldbyname('CCDD').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCTRI').AsString   := DM1.cdsCanjes.fieldbyname('CCTRI').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCSEM').AsString   := DM1.cdsCanjes.fieldbyname('CCSEM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCSS').AsString    := DM1.cdsCanjes.fieldbyname('CCSS').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCANOMM').AsString := DM1.cdsCanjes.fieldbyname('CCANOMM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCAATRI').AsString := DM1.cdsCanjes.fieldbyname('CCAATRI').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCAASEM').AsString := DM1.cdsCanjes.fieldbyname('CCAASEM').AsString;
   DM1.cdsDetCanje.fieldbyname('DCCAASS').AsString  := DM1.cdsCanjes.fieldbyname('CCAASS').AsString;
end;

Function TForm21.AsientoCuadra:Boolean;
var
   xTotDebe, xTotHaber : Real;
begin
   Result    := False;
   xTotDebe  := 0;
   xTotHaber := 0;
{   if cdsGProv.FieldByName('TMONID').value=DM1.wTMonLoc then
      xCampo:= 'DCPMOLOC'
   else
      xCampo:= 'DCPMOEXT';}
   While not DM1.cdsDetCxC.Eof do begin
      If DM1.cdsDetCxC.FieldByName('CCDH').Value='D' then
         xTotDebe  := xTotDebe  + FRound(DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value,15,2)
      else begin
         xTotHaber := xTotHaber + FRound(DM1.cdsDetCxC.FieldByName('CCMtoLoc').Value,15,2);
      end;
      DM1.cdsDetCxC.Next;
   end;

   DM1.cdsDetCxC.First          ;
   DM1.cdsDetCxC.EnableControls ;

   If FRound(xTotDebe,15,2)=FRound(xTotHaber,15,2) then
      Result := True;
 end;

procedure TForm21.BitBtn2Click(Sender: TObject);
begin
   DM1.Dcom1.AppServer.SolRollBack;
end;

end.
