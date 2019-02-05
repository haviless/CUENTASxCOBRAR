Unit CxC221;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Mask, wwdbedit, StdCtrls, wwdblook, ExtCtrls, wwdbdatetimepicker, Grids,
   Wwdbigrd, Wwdbgrid, Buttons, db, ComCtrls, Variants, oaVariables;

Type
   TFPNLBCO = Class(TForm)
      pnlHEADER: TPanel;
      grbCIA: TGroupBox;
      Label11: TLabel;
      dblcCIA: TwwDBLookupCombo;
      dbeCIA: TwwDBEdit;
      grbBCO: TGroupBox;
      Label1: TLabel;
      dblcBCO: TwwDBLookupCombo;
      dbeBCO: TwwDBEdit;
      Label3: TLabel;
      dblcCCB: TwwDBLookupCombo;
      dbeMON: TwwDBEdit;
      Label4: TLabel;
      Panel4: TPanel;
      Z2bbtnCerrar: TBitBtn;
      Z2bbtnGraba: TBitBtn;
      Label2: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Bevel1: TBevel;
      dbeNPLA: TwwDBEdit;
      dblcCCBG: TwwDBLookupCombo;
      dbeFECHA: TwwDBDateTimePicker;
      grbIntereses: TGroupBox;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      dbeIntMOR: TwwDBEdit;
      dbeIntCOM: TwwDBEdit;
      dbeIntREN: TwwDBEdit;
      grbComisiones: TGroupBox;
      Label10: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      dbeComCOB: TwwDBEdit;
      dbeComPRO: TwwDBEdit;
      dbeComTFO: TwwDBEdit;
      grbOtros: TGroupBox;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      dbeOtINTR: TwwDBEdit;
      dbeOtGAS: TwwDBEdit;
      dbeOtOTR: TwwDBEdit;
      Z2bbtnAceptar: TBitBtn;
      Z2bbtNUEVO: TBitBtn;
      Label17: TLabel;
      wwDBEdit1: TwwDBEdit;
      Label18: TLabel;
      wwDBEdit2: TwwDBEdit;
      bbtnBusca: TBitBtn;
      bbtnAcepta: TBitBtn;
      pnlDetalle: TPanel;
      Panel3: TPanel;
      dblcTOP: TwwDBLookupCombo;
      dbgFDetPlan: TwwDBGrid;
      bbtnDPLN: TwwIButton;
      bbtnSuma: TBitBtn;
      Label19: TLabel;
      pnlAvi: TPanel;
      aBusca: TAnimate;
      lblTOTAL: TLabel;
      bbtnNumera: TBitBtn;
      bbtnSelecciona: TBitBtn;
      bbtnCalc: TBitBtn;
      Label20: TLabel;
      dblcGrupo: TwwDBLookupCombo;
      dbeTipoOpera: TwwDBEdit;
      Procedure dblcCIAChange(Sender: TObject);
      Procedure NotInList(Sender: TObject;
         LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure dblcBCOChange(Sender: TObject);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure Z2bbtnCerrarClick(Sender: TObject);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure bbtnDPLNClick(Sender: TObject);
      Procedure dbgFDetPlanDblClick(Sender: TObject);
      Procedure Z2bbtnGrabaClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure Z2bbtNUEVOClick(Sender: TObject);
      Procedure bbtnBuscaClick(Sender: TObject);
      Procedure dbgFDetPlanCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure bbtnAceptaClick(Sender: TObject);
      Procedure dbgFDetPlanFieldChanged(Sender: TObject; Field: TField);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcTOPExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnSumaClick(Sender: TObject);
      Procedure bbtnNumeraClick(Sender: TObject);
      Procedure bbtnSeleccionaClick(Sender: TObject);
      Procedure dblcCCBExit(Sender: TObject);
      Procedure bbtnCalcClick(Sender: TObject);
      Procedure dbeFECHAExit(Sender: TObject);
      Procedure NotInList1(Sender: TObject; LookupTable: TDataSet;
         NewValue: String; Var Accept: Boolean);
      Procedure dblcGrupoExit(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dblcCIAExit(Sender: TObject);
      Procedure dblcBCOExit(Sender: TObject);
      Procedure dblcCCBGExit(Sender: TObject);
      Procedure dbgFDetPlanKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
   Private
    { Private declarations }
      Procedure RenuevaLetra(sSit: String);
      Procedure RenuevaLetraAntigua(sSit: String);
      Procedure dcCIA;
      Procedure dcBCO;
      Procedure LimpiaGrid(xxActiva: String);
      Function CalculaNumero(sCND: String): String;
      Procedure NotaDebitoLetraPorProtestada(xCia: String; xFec: TDateTime; xClauxid, xClieid, xTMonId, xZona: String; xTMtoProt, xTcambio, xLetImporte: double);
      Procedure CargaDataSource;
{    Procedure GeneraRegistroCxC301(xFecComp:TDateTime; xTMes, xTAno, xCia, xxCuenta, xxCpto, xxSerie, xxClax, xxClie, xxNoReg,
                                   xxTDiar, xxTDoc, xxTMonid:string; xxTCamb, xxGravad, xxIgv, xxIsc, xxFlete,
                                   xMontoOri, xMontoNac, xMontoExt, xxSalMo, xxSalMn, xxSalMe:double;
                                   xxDD, xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM, xxTvtaId : string);}
//    procedure GeneraDetalle(xTipDet: String; xMonto,xTC: Double; xCpto, xcta, xglosa,xTMonid,xNoDoc: string);

   Public
    { Public declarations }
      sCCB, sCIA, sBCO, sCTA, sCPTO, sCTAG, sCTAB, sUBI: String;
   End;

Var
   FPNLBCO: TFPNLBCO;
   xxTCambio: double;
   bRenovaAntigua: Boolean;
   sMon: String;
   dFechaPlanilla: TDateTime;
   sTipoOpera: String;
   xTipOpeEquivSit: String;
Implementation

//uses CxCDM, CxC001;
Uses CxCDM, oaCC2000, CxC222;

{$R *.DFM}

Procedure TFPNLBCO.dblcCIAChange(Sender: TObject);
Begin
   sCIA := dblcCIA.Text;
   dbeCIA.Text := DMCXC.cdsCia.FieldByName('CIADES').AsString;
End;

Procedure TFPNLBCO.NotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFPNLBCO.dblcBCOChange(Sender: TObject);
Begin
{
  sBCO := dblcBCO.Text;
  dbeBCO.Text := DMCXC.BuscaQry2('dspTGE','TGE105','BANCONOM','BANCOID='+QuotedStr(sBCO),'BANCONOM');
  sUBI := DMCXC.DisplayDescrip('CXC105','UBICAID','BANCOID',sBCO );
}
End;

Procedure TFPNLBCO.dcCIA;
Begin
   DMCXC.cdsCIA.First;
   sCIA := trim(DMCXC.cdsCIA.FieldByName('CIAID').AsString);
   dblcCIA.Text := sCIA;
   DMCXC.cdsPLNBCO.FieldByName('CIAID').AsString := sCIA;
//  dblcCIA.Enabled := DMCXC.cdsCIA.RecordCount > 1;
End;

Procedure TFPNLBCO.dcBCO;
Begin
   DMCXC.cdsBANCO.First;
   sBCO := trim(DMCXC.cdsBANCO.FieldByName('BANCOID').AsString);
   dblcBCO.Text := sBCO;
   DMCXC.cdsPLNBCO.FieldByName('BANCOID').AsString := sBCO;
   dblcBCO.Enabled := DMCXC.cdsBANCO.RecordCount > 1;
End;

Procedure TFPNLBCO.Z2bbtnCancelClick(Sender: TObject);
Begin
//
End;

Procedure TFPNLBCO.Z2bbtnCerrarClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFPNLBCO.Z2bbtnAceptarClick(Sender: TObject);
Var
   xWhere, nmpl, xSQL: String;
Begin
   If xxTCambio <= 0 Then
   Begin
      xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
         + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.Date) + ''' )';
      xxTCambio := 0;
      If length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
         xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
      Else
      Begin
         dbeFECHA.SetFocus;
         Raise Exception.Create(' Error :  Fecha No tiene Tipo de Cambio ');
      End;
   End;

   xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.Date) + ''' )';
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) <= 0 Then
   Begin
      Raise Exception.Create(' Error :  La Fecha de Operación NO tiene Tipo de Cambio  ');
   End;

   If DMCXC.wModo = 'A' Then
   Begin
//     DMCXC.cds
   //BUSCAR PLANILLA
      nmpl := 'SELECT PLBCID FROM CXC308 WHERE PLBCID=''' + dbeNPLA.Text + '''AND ' +
         'CIAID=''' + sCIA + ''' AND BANCOID=''' + sBCO + ''' AND CCBCOID=''' + sCTA + '''';

      DMCXC.cdsQRY.Close;
      DMCXC.cdsQRY.DataRequest(nmpl);
      DMCXC.cdsQRY.Open;

      If DMCXC.cdsQRY.RecordCount > 0 Then
      Begin
         Application.MessageBox('El número de Planilla, ya existe verifique',
            Pchar(Caption), MB_OK + MB_ICONWARNING);
         If dbeNPLA.Enabled Then
            dbeNPLA.SetFocus;
         Exit; // salir del procedimiento
      End;
   End;

   bbtnDPLN.Enabled := True;
   dbgFDetPlan.Enabled := True;

///////////////////

   xSQL := 'Select * from CXC301 '
      + 'Where CIAID=' + quotedstr(dblcCia.Text)
      + '  and ' + xDocLetras
      + '  and SITID=' + quotedstr(xTipOpeEquivSit)
      + '  and UBIID=' + quotedstr(sUBI)
      + '  and CCESTADO=' + quotedstr('P');
   Filtracds(DMCXC.cdsLetras, xSQL);

///////////////////
   LimpiaGrid('S');
End;

Procedure TFPNLBCO.LimpiaGrid(xxActiva: String);
Begin

//  dbgFDetPlan.DataSource := NIL;
   DMCXC.cdsDPLNBCO.DisableControls;

   If dbgFDetPlan.Selected.Count > 9 Then
      While dbgFDetPlan.Selected.Count > 9 Do
         dbgFDetPlan.Selected.Delete(9);

   If DMCXC.cdsPLNBCO.FieldByName('PLBCINTMORA').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCINTMORA'#9'10'#9'Interes~Moratorio'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCINTCOMP').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCINTCOMP'#9'10'#9'Interes~Compensatorio'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCINTRENO').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCINTRENO'#9'10'#9'Interes~Renovación'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCCOBRANZA').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCCOBRANZA'#9'10'#9'Comisiones~Cobranza'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCPROTESTO').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCPROTESTO'#9'10'#9'Comisiones~Protesto'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCTFONDO').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCTFONDO'#9'10'#9'Comisiones~T/Fondo'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCINTERESES').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCINTERESES'#9'10'#9'Otros~Intereses'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCGASTOS').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCGASTOS'#9'10'#9'Otros~Gastos'#9'F');
   If DMCXC.cdsPLNBCO.FieldByName('PLBCOTROS').AsFloat > 0 Then
      dbgFDetPlan.Selected.Add('DPLBCOTROS'#9'10'#9'Otros~Otros'#9'F');

   dbgFDetPlan.Selected.Add('SITUACION'#9'3'#9'SIT.'#9'T');
   dbgFDetPlan.Selected.Add('SITDES'#9'15'#9'Situación'#9'T');
   dbgFDetPlan.Selected.Add('CLIEID'#9'10'#9'Cliente'#9'T');
   dbgFDetPlan.Selected.Add('CLIEDES'#9'40'#9'Nombre'#9'T');
   dbgFDetPlan.Selected.Add('LETRA'#9'12'#9'Letra'#9'T');
   dbgFDetPlan.Selected.Add('LETFVCMTO'#9'10'#9'F.Vcmto'#9'T');
   dbgFDetPlan.Selected.Add('LETIMPORTE'#9'12'#9'Saldo'#9'T');
   dbgFDetPlan.Selected.Add('TCAMBR'#9'12'#9'T. Cambio~Renov.'#9'F');
   dbgFDetPlan.Selected.Add('IMPOR'#9'12'#9'Importe~Renov.'#9'F');
   dbgFDetPlan.Selected.Add('FECEMIR'#9'12'#9'F.Emisión~Renov.'#9'F');
   dbgFDetPlan.Selected.Add('FEVCTOR'#9'12'#9'F.Vmto~Renov.'#9'F');
   dbgFDetPlan.Selected.Add('FLAGPROT'#9'4'#9'Prot.'#9'F');
   dbgFDetPlan.Selected.Add('MTOPROT'#9'12'#9'Monto Protesto~(Inc.IGV)'#9'F');

   If xxActiva = 'S' Then
  //   dbgFDetPlan.DataSource := DMCXC.dsDPLNBCO;
      DMCXC.cdsDPLNBCO.EnableControls;
   dbgFDetPlan.RedrawGrid;

End;

Procedure TFPNLBCO.bbtnDPLNClick(Sender: TObject);
Begin
{  if NOT ((cdsDPLNBCO.FieldByName('CCNODOC').AsString<>'') OR
     (cdsDPLNBCO.FieldByName('DPLBCNBCOLETR').AsString<>'') OR
     (cdsDPLNBCO.FieldByName('CCFVCMTO').AsDateTime<>0) OR
     (cdsDPLNBCO.FieldByName('DPLBCINGRESOS').AsFloat<>0)) AND (cdsDPLNBCO.recordCount>0) then
  begin
    exit;
  end;
}
 // --- hacer visible el formulario de ingreso de datos.
   DMCXC.cdsDPLNBCO.Append;
   DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString := DMCXC.cdsPLNBCO.FieldByName('CIAID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('PLBCID').AsString := DMCXC.cdsPLNBCO.FieldByName('PLBCID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('BANCOID').AsString := DMCXC.cdsPLNBCO.FieldByName('BANCOID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('CCBCOID').AsString := DMCXC.cdsPLNBCO.FieldByName('CCBCOID').AsString;
   DMCXC.cdsDPLNBCO.FieldByName('DPLBCID').AsString := StrZero(IntToStr(DMCXC.cdsDPLNBCO.RecordCount + 1), 2);
   DMCXC.cdsDPLNBCO.FieldByName('TOPID').AsString := dblcGrupo.Text;
   FDPNLBCO.ShowModal;
End;

Procedure TFPNLBCO.dbgFDetPlanDblClick(Sender: TObject);
Begin
   //
   If DMCXC.cdsPLNBCO.RecordCount > 0 Then Exit;
   FDPNLBCO.ShowModal;
End;

Procedure TFPNLBCO.Z2bbtnGrabaClick(Sender: TObject);
Var
   xSQL: String;
Begin
   DMCXC.cdsDPLNBCO.DisableControls;
   pnlAvi.Visible := True;
   aBusca.Active := True;
   pnlAvi.Caption := '   Guardando...';
   pnlAvi.refresh;

   DMCXC.cdsPLNBCO.Edit;
   DMCXC.cdsPLNBCO.FieldByName('TOPID').AsString := dblcGrupo.Text;
   DMCXC.cdsPLNBCO.FieldByName('SITID').AsString := xTipOpeEquivSit;
   DMCXC.cdsPLNBCO.FieldByName('USUARIO').AsString := DMCXC.wUsuario;
   DMCXC.cdsPLNBCO.FieldByName('FREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsPLNBCO.FieldByName('HREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsPLNBCO.DataRequest('select * from CXC308 '
      + 'where CIAID=' + QuotedStr(dblcCIA.text)
      + '  and BANCOID=' + QuotedStr(dblcBCO.text)
      + '  and PLBCID=' + QuotedStr(dbeNPLA.text));
   DMCXC.AplicaDatos(DMCXC.cdsPLNBCO, 'PLNBCO');
   ShowMessage(InttoStr(DMCXC.cdsDPLNBCO.ApplyUpdates(0)));

// Actualización desde Detalle de Planilla (CXC309) hacia archivo de Letras(CXC301)

   DMCXC.cdsDPLNBCO.DisableControls;
   DMCXC.cdsDPLNBCO.First;
   While Not DMCXC.cdsDPLNBCO.BOF Do
   Begin
      DMCXC.cdsDPLNBCO.Edit;
      xSQL := 'update CXC301 '
         + 'set BANCOID=' + QuotedStr(dblcBCO.text) + ', '
         + '    CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', '
         + '    CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepTimeServi + ', '
         + '    CCNLETBCO=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CCNLETBCO').AsString) + ', '
         + '    CCESTADO=' + QuotedStr('P')
         + 'where CIAID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString)
         + '  and CLAUXID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CLAUXID').AsString)
         + '  and CLIEID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString)
         + '  and DOCID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString)
         + '  and CCNODOC=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CCNODOC').AsString);
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
      Except
      End;
      DMCXC.cdsDPLNBCO.Next;
   End;
   DMCXC.cdsDPLNBCO.EnableControls;

   aBusca.Active := False;
   pnlAvi.Visible := False;
   DMCXC.cdsDPLNBCO.EnableControls;
End;

Procedure TFPNLBCO.FormShow(Sender: TObject);
Var
   sTMonid, sSQL, xWhere: String;
Begin
   DMCXC.cdsDPLNBCO.Close;
   DMCXC.cdsDPLNBCO.MasterSource := Nil;
   DMCXC.cdsDPLNBCO.MasterFields := '';
   DMCXC.cdsDPLNBCO.Filter := '';
   DMCXC.cdsDPLNBCO.Filtered := False;
   DMCXC.cdsDPLNBCO.IndexFieldNames := 'DPLBCID';
   If DMCXC.wModo = 'A' Then
   Begin
      dcCIA;
      dcBCO;
      dbeTipoOpera.Text := '';
      LimpiaGrid('S');
      dbeFECHA.Enabled := True;
      dblcCIA.SetFocus;

      dblcGrupo.Enabled := True;
      sSQL := 'SELECT * FROM CXC309 '
         + 'WHERE 1<>1 ';
      DMCXC.cdsDPLNBCO.DataRequest(sSQL);
      DMCXC.cdsDPLNBCO.Open;
   End
   Else
   Begin
      dblcBCO.Text := DMCXC.cdsPLNBCO.FieldByName('BANCOID').AsString;
      dblcBCOExit(Sender);
//      dbeBCO.Text :=  DMCXC.DisplayDescrip('TGE105','BANCONOM','BANCOID',dblcBCO.text );

      sTMonid := DMCXC.BuscaQry2('dspTGE', 'CXC401', 'TMONID', 'BANCOID=' + QuotedStr(dblcBCO.text) + ' AND CCBCOID=' + QuotedStr(dblcCCB.text), 'TMONID');
      sMon := sTMonid;
      dbeMON.Text := DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', sTmonid);

      dblcGrupo.Text := DMCXC.cdsPLNBCO.FieldByName('TOPID').AsString;
      xTipOpeEquivSit := DMCXC.cdsPLNBCO.FieldByName('SITID').AsString;
      sTipoOpera := DMCXC.cdsPLNBCO.FieldByName('TOPID').AsString;
      dblcGrupo.Enabled := False;
      dblcGrupo.Text := DMCXC.cdsPLNBCO.FieldByName('TOPID').AsString;
      dblcGrupoExit(Nil);

      dFechaPlanilla := DMCXC.cdsPLNBCO.FieldByName('PLBCFECHA').AsDateTime;
      dbeFECHA.Enabled := False;
//  ProcInsertOn( Mantc, 'USER','FREG','HREG' );
      sSQL := 'SELECT * FROM CXC309 '
         + 'WHERE CIAID=' + QuotedStr(DMCXC.cdsPLNBCO.FieldByName('CIAID').AsString)
         + '  AND PLBCID=' + QuotedStr(DMCXC.cdsPLNBCO.FieldByName('PLBCID').AsString)
         + '  AND BANCOID=' + QuotedStr(DMCXC.cdsPLNBCO.FieldByName('BANCOID').AsString)
         + '  AND CCBCOID=' + QuotedStr(DMCXC.cdsPLNBCO.FieldByName('CCBCOID').AsString);
      DMCXC.cdsDPLNBCO.DataRequest(sSQL);
      DMCXC.cdsDPLNBCO.Open;
      Z2bbtnAceptar.Click;
   End;
//  LimpiaGrid( 'S' );
End;

Procedure TFPNLBCO.Z2bbtNUEVOClick(Sender: TObject);
Begin
   bbtnDPLN.Enabled := False;
   dbgFDetPlan.Enabled := False;
   dblcCIA.Enabled := True;
   dblcBCO.Enabled := True;
   dblcCCB.Enabled := True;
   DMCXC.cdsPLNBCO.Insert;
   dcCIA;
   dcBCO;
   LimpiaGrid('S');
   dblcCCB.SetFocus;
End;

Procedure TFPNLBCO.bbtnBuscaClick(Sender: TObject);
Var
   nmpl, xWhere: String;
   i: Integer;
   xxLetra, xxLetBc: String;
   xxFVcmt: TDate;
   xxMonto: Double;
   sL, sLB, sF, sM: String;
Begin
   If DMCXC.verificacierre(dblccia.text, dbefecha.date) Then
   Begin
      dbefecha.setfocus;
      Raise exception.create(' periodo cerrado ');
   End;

   pnlAvi.Visible := True;
   pnlAvi.Caption := '  Buscando...';
   pnlAvi.refresh;
   aBusca.Active := True;

   DMCXC.cdsDPLNBCO.DisableControls;
   DMCXC.cdsDPLNBCO.First;

   While Not DMCXC.cdsDPLNBCO.EOF Do
   Begin
      If (DMCXC.cdsDPLNBCO.FieldByName('ESTADO').AsString <> 'P') And
         (DMCXC.cdsDPLNBCO.FieldByName('OK').AsString = 'S') Then
      Begin
         xxLetra := DMCXC.cdsDPLNBCO.FieldByName('CCNODOC').AsString;
         xxLetBc := DMCXC.cdsDPLNBCO.FieldByName('DPLBCNBCOLETR').AsString;
         xxFVcmt := DMCXC.cdsDPLNBCO.FieldByName('CCFVCMTO').AsDateTime;
         xxMonto := FRound(DMCXC.cdsDPLNBCO.FieldByName('DPLBCINGRESOS').AsFloat, 15, 2);

         If (xxLetra <> '') Then
            sL := ' AND CCNODOC=' + QuotedStr(xxLetra)
         Else
            sL := '';

         If (xxLetBc <> '') Then
            sLB := ' AND CCNLETBCO=' + QuotedStr(xxLetBc)
         Else
            sLB := '';

         If (xxFVcmt > 0) Then
            sF := ' AND CCFVCMTO=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, xxFVcmt) + '''' + ')'
         Else
            sF := '';

         If (xxMonto > 0) Then
            sM := ' AND CCMTOORI=' + FloattoStrF(xxMonto, ffFixed, 15, 2)
         Else
            sM := '';

         nmpl := sL + sLB + sF + sM;
         If Length(nmpl) > 5 Then
         Begin
            nmpl := 'select CLAUXID,CLIEID,TMONID,CCNODOC,CCFVCMTO,CCSALORI,DOCID,UBIID,SITID,'
               + '        CCMTOORI,CCTCAMAJ,CCTCAMPR,TVTAID,CLIEDES,CCNLETBCO '
               + 'from CXC301 '
               + 'where CIAID=' + QuotedStr(dblcCIA.text)
               + '  and DOCID=' + QuotedStr(DMCXC.wsLET)
               + '  and CCESTADO=' + QuotedStr('P')
               + '  and TMONID=' + QuotedStr(sMon)
               + '  and UBIID=''' + sUBI + ''' ' + nmpl;
            DMCXC.cdsQRY.Close;
            DMCXC.cdsQRY.DataRequest(nmpl);
            DMCXC.cdsQRY.Open;
            If DMCXC.cdsQRY.RecordCount > 0 Then
            Begin
               DMCXC.cdsDPLNBCO.Edit;
               DMCXC.cdsDPLNBCO.FieldByName('TVTAID').AsString := DMCXC.cdsQRY.FieldByName('TVTAID').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('CCNLETBCO').AsString := DMCXC.cdsQRY.FieldByName('CCNLETBCO').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('CLIEDES').AsString := DMCXC.cdsQRY.FieldByName('CLIEDES').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString := DMCXC.cdsQRY.FieldByName('CLIEID').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('CLAUXID').AsString := DMCXC.cdsQRY.FieldByName('CLAUXID').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString := DMCXC.cdsQRY.FieldByName('TMONID').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString := DMCXC.cdsQRY.FieldByName('CCNODOC').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('LETFVCMTO').asDatetime := DMCXC.cdsQRY.FieldByName('CCFVCMTO').asDatetime;
               DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat := DMCXC.cdsQRY.FieldByName('CCSALORI').AsFloat;
               DMCXC.cdsDPLNBCO.FieldByName('LETMTOORI').AsFloat := DMCXC.cdsQRY.FieldByName('CCMTOORI').AsFloat;
               DMCXC.cdsDPLNBCO.FieldByName('CCTCAMPR').AsFloat := DMCXC.cdsQRY.FieldByName('CCTCAMAJ').AsFloat;
               DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString := DMCXC.cdsQRY.FieldByName('DOCID').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('UBICACION').AsString := DMCXC.cdsQRY.FieldByName('UBIID').AsString;
               DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString := DMCXC.cdsQRY.FieldByName('SITID').AsString;
               xWhere := 'SITUAID=''' + DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString + '''';
               DMCXC.cdsDPLNBCO.FieldByName('SITDES').AsString := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUADES', xWhere, 'SITUADES');
            End
            Else
            Begin
               DMCXC.cdsDPLNBCO.Edit;
               DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString := '';
               DMCXC.cdsDPLNBCO.FieldByName('CLIEDES').AsString := '';
               DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString := '';
               DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString := '';
               DMCXC.cdsDPLNBCO.FieldByName('LETFVCMTO').Value := Null;
               DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat := 0;
               DMCXC.cdsDPLNBCO.FieldByName('LETMTOORI').AsFloat := 0;
               DMCXC.cdsDPLNBCO.FieldByName('CCTCAMPR').AsFloat := 0;
               DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString := '';
               DMCXC.cdsDPLNBCO.FieldByName('UBICACION').AsString := '';
               DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString := '';
               xWhere := 'SITUAID=''' + DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString + '''';
               DMCXC.cdsDPLNBCO.FieldByName('SITDES').AsString := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITUADES', xWhere, 'SITUADES');
            End;
         End;
      End;
      DMCXC.cdsDPLNBCO.Next;
   End;
   DMCXC.cdsDPLNBCO.EnableControls;
   aBusca.Active := False;
   pnlAvi.Visible := False;
End;

Procedure TFPNLBCO.dbgFDetPlanCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If (Field.FieldName = 'LETRA') Or (Field.FieldName = 'LETFVCMTO') Or
      (Field.FieldName = 'LETIMPORTE') Or (Field.FieldName = 'CLIEID') Or (Field.FieldName = 'CLIEDES') Or
      (Field.FieldName = 'SITUACION') Or (Field.FieldName = 'SITDES') Then
   Begin
      If (Not Highlight) Then
      Begin
         AFont.Color := clBlue;
      End
      Else
      Begin
         If (Field.FieldName = 'TCAMBR') Or (Field.FieldName = 'FEVCTOR') Or
            (Field.FieldName = 'IMPOR') Or (Field.FieldName = 'FECEMIR') Then
         Begin
            AFont.Color := clRed;
         End
         Else
         Begin
            If (Not Highlight) Then
            Begin
               AFont.Color := clHighlightText;
            End;
         End;
      End;
   End;

End;

Procedure TFPNLBCO.bbtnAceptaClick(Sender: TObject);
Var
   sUBICA, sSITUA, sMONEDA, sZONA, sRenova,
      sCIA, sTDO, sCND, sTOP: String;
   sFlagConta, sFlagInt: String;
   sSitActMaes, sSitMaes, sLetraRenovada, xWhere, sSQL: String;
   bProt: boolean;
   a, m, d: word;
   sa, sm, sCPTO, sCTA: String;
   xMonLoc, xMonExt: double;
Begin
   If (DMCXC.cdsDPLNBCO.Modified) Or (DMCXC.cdsDPLNBCO.ChangeCount > 0) Or (DMCXC.cdsPLNBCO.Modified) Or (DMCXC.cdsPLNBCO.ChangeCount > 0) Then
      Raise exception.Create(' Debe Grabar primero ');

   sCIA := dblcCia.Text;
   DMCXC.cdsDPLNBCO.DisableControls;
   pnlAvi.Visible := True;
   aBusca.Active := True;
   pnlAvi.Caption := '   Verificando...';

   DMCXC.cdsDPLNBCO.First;
   While Not DMCXC.cdsDPLNBCO.Eof Do
   Begin
      If (DMCXC.cdsDPLNBCO.FieldByName('ESTADO').AsString <> 'P') And
         (DMCXC.cdsDPLNBCO.FieldByName('OK').AsString = 'S') Then
      Begin
         sTDO := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
         sCND := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
         sTOP := DMCXC.cdsDPLNBCO.FieldByName('TOPID').AsString;

         xWhere := 'BANCOID=''' + dblcBCO.Text + ''' and TOPID=''' + sTOP + '''';
         sSITUA := DMCXC.BuscaQry('dspTGE', 'CXC107', 'TOPEQUSIT,FLAGRENOVA', xWhere, 'TOPEQUSIT');
         sRenova := DMCXC.cdsQry.FieldByName('FLAGRENOVA').AsString;

         If sTOP = '' Then
         Begin
            pnlAvi.Visible := False;
            DMCXC.cdsDPLNBCO.EnableControls;
            Raise Exception.Create('La Letra ' + Trim(sCND) + ' No tiene Operación Bancaria');
         End;
         xWhere := 'SITUAID=' + QuotedStr(sSITUA);
         bProt := (DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITCLIEID,SITUAFLAG,SITCONTA,FLAGPROTESTO', xWhere, 'FLAGPROTESTO') = 'S');
         If bProt Then
         Begin
            If (DMCXC.cdsDPLNBCO.FieldByName('FLAGPROT').AsString = 'S') And (DMCXC.cdsDPLNBCO.FieldByName('MTOPROT').AsFloat <= 0) Then
            Begin
               pnlAvi.Visible := False;
               DMCXC.cdsDPLNBCO.EnableControls;
               Raise Exception.Create('La Letra ' + Trim(sCND) + ' se va a Protestar, Ingrese datos necesarios');
            End;

            If (DMCXC.cdsDPLNBCO.FieldByName('FLAGPROT').AsString = 'S') And (DMCXC.VerificaCierre(dblcCia.text, DMCXC.DateS)) Then
            Begin
               pnlAvi.Visible := False;
               DMCXC.cdsDPLNBCO.EnableControls;
               Raise Exception.Create(' Se va a crear una nota de debito: PERIODO CERRADO ');
            End;
         End;

         If sRenova = 'S' Then
         Begin
            sLetraRenovada := CalculaNumero(sCND);
            If Length(DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC', 'CIAID=' + QuotedStr(DMCXC.cdsPLNBCO.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DMCXC.wsLet) + ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(sLetraRenovada), 'CCNODOC')) = 0 Then
            Begin
               If (DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsString = '') Or
                  (DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString = '') Or
                  (DMCXC.cdsDPLNBCO.FieldByName('FECEMIR').AsString = '') Or
                  (DMCXC.cdsDPLNBCO.FieldByName('FEVCTOR').AsString = '') Then
               Begin
                  pnlAvi.Visible := False;
                  DMCXC.cdsDPLNBCO.EnableControls;
                  Raise Exception.Create('La Letra ' + Trim(sCND) + ' se va a Renovar, Ingrese datos necesarios');
               End;

               If (DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsFloat <= 0) Then
               Begin
                  pnlAvi.Visible := False;
                  DMCXC.cdsDPLNBCO.EnableControls;
                  Raise Exception.Create('Error en Letra ' + Trim(sCND) + ': El importe debe ser mayor que cero');
               End;

               If (DMCXC.cdsDPLNBCO.FieldByName('FEVCTOR').AsDateTime < DMCXC.cdsDPLNBCO.FieldByName('FECEMIR').AsDateTime) Then
               Begin
                  pnlAvi.Visible := False;
                  DMCXC.cdsDPLNBCO.EnableControls;
                  Raise Exception.Create('Error en Letra ' + Trim(sCND) + ': La fecha de vencimiento debe ser mayo que la de emisión');
               End;
            End;
         End;

         xWhere := 'BANCOID=' + '''' + dblcBCO.Text + '''';
         sUBICA := DMCXC.BuscaQry('dspTGE', 'CXC105', '*', xWhere, 'UBICAID');

         If Not DMCXC.CambioSituacion(DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString, sSITUA) Then
         Begin
            pnlAvi.Visible := False;
            DMCXC.cdsDPLNBCO.EnableControls;
            Raise Exception.Create('Letra ' + Trim(sCND) + ' NO Corresponde la Nueva Situación ');
         End;
      End;
      DMCXC.cdsDPLNBCO.Next;
   End;

   pnlAvi.Caption := '   Generando...';
   xWhere := 'BANCOID=' + '''' + dblcBCO.Text + '''';
   sUBICA := DMCXC.BuscaQry('dspTGE', 'CXC105', 'UBICAID', xWhere, 'UBICAID');

   xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.date) + ''' )';

//	 Filtracds( DMCXC.cdsDetCanje, 'SELECT * FROM CXC305 WHERE CIAID=''01'' AND CIAID=''02''' );
   DMCXC.cdsDetCanje.Filter := '';
   DMCXC.cdsDetCanje.IndexFieldNames := '';
   DMCXC.cdsDetCanje.Close;
   DMCXC.cdsDetCanje.DataRequest('SELECT * FROM CXC305 WHERE CIAID=''XYZW''');
   DMCXC.cdsDetCanje.Open;
   DMCXC.cdsDetCanje.EmptyDataSet;

   DMCXC.cdsDPLNBCO.First;
   While Not DMCXC.cdsDPLNBCO.Eof Do
   Begin
      If (DMCXC.cdsDPLNBCO.FieldByName('ESTADO').AsString <> 'P') And
         (DMCXC.cdsDPLNBCO.FieldByName('OK').AsString = 'S') Then
      Begin
         sTDO := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
         sCND := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
         sTOP := DMCXC.cdsDPLNBCO.FieldByName('TOPID').AsString;
         sMONEDA := DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;

         sZona := DMCXC.cdsDPLNBCO.FieldByName('TVTAID').AsString;
         If sZona = '' Then
            sZONA := DMCXC.BuscaQry('dspTGE', 'CXC301', 'TVTAID', 'CCNODOC=' + QuotedStr(sCND) + ' AND DOCID=' + QuotedStr(sTDO), 'TVTAID');

  // NUEVA SITUACION DE LA LETRA
         xWhere := 'BANCOID=''' + dblcBCO.Text + ''' and TOPID=''' + sTOP + '''';
         sSITUA := DMCXC.BuscaQry('dspTGE', 'CXC107', 'TOPEQUSIT,FLAGRENOVA', xWhere, 'TOPEQUSIT');
         sRenova := DMCXC.cdsQry.FieldByName('FLAGRENOVA').AsString;

      // FLAG DE CONTABILIZADO Y FLAG INTERNO DE LA NUEVA SITUACION DE LA LETRA
         xWhere := 'SITUAID=' + QuotedStr(sSITUA);
         sFlagConta := DMCXC.BuscaQry('dspTGE', 'CXC104', 'SITCLIEID,SITUAFLAG,SITCONTA,FLAGPROTESTO', xWhere, 'SITCONTA');
         sFlagInt := DMCXC.cdsQry.FieldByName('SITUAFLAG').AsString;
         bProt := (DMCXC.cdsQry.FieldByName('FLAGPROTESTO').AsString = 'S');
         sSitMaes := DMCXC.cdsQry.FieldByName('SITCLIEID').AsString;

      // SI SE PROTESTA CAMBIAR DE SITUACION EN EL CLIENTE
         If bProt Then
         Begin
            If Length(Trim(sSitMaes)) > 0 Then
            Begin
               sSitActMaes := DMCXC.BuscaQry('dspTGE', 'TGE204', 'CIAID,CLIEID,SITCLIEID',
                  'CIAID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString)
                  + ' AND CLIEID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString)
                  , 'SITCLIEID');
               If DMCXC.BuscaQry('dspTGE', 'CXC111', 'SITVARIAUT', 'SITCLIEID=' + QuotedStr(sSitActMaes), 'SITVARIAUT') = 'S' Then
               Begin
                  sSQL := ' UPDATE TGE204 SET SITCLIEID=' + QuotedStr(sSitMaes) + ' WHERE CIAID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString) +
                     ' AND CLIEID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
                  Try
                     DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
                  Except
                  End;
               End;
            End;

            If DMCXC.cdsDPLNBCO.FieldByName('FLAGPROT').AsString = 'S' Then
            Begin
               NotaDebitoLetraPorProtestada(DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString,
                  DMCXC.DateS,
                  DMCXC.cdsDPLNBCO.FieldByName('CLAUXID').AsString,
                  DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString,
                  DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString,
                  DMCXC.cdsDPLNBCO.FieldByName('TVTAID').AsString,
                  DMCXC.cdsDPLNBCO.FieldByName('MTOPROT').AsFloat, xxTCambio,
                  DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat);
            End;
         End;

      // RENUEVA LA LETRA
         If sRenova = 'S' Then
         Begin
            sLetraRenovada := CalculaNumero(sCND);
            If Length(DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNODOC', 'CIAID=' + QuotedStr(DMCXC.cdsPLNBCO.FieldByName('CIAID').AsString) + ' AND DOCID=' + QuotedStr(DMCXC.wsLet) + ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(sLetraRenovada), 'CCNODOC')) = 0 Then
            Begin
               RenuevaLetraAntigua(sSITUA);
            End
            Else
            Begin
               RenuevaLetra(sSITUA);
            End;
         End
         Else
         Begin
           // PONE LA LETRA EN EL HISTORIAL
            DMCXC.SetHyst(sCIA, sTDO, sCND);
            xWhere := 'SELECT * FROM CXC301 '
               + 'where CIAID=' + QuotedStr(sCIA)
               + '  AND DOCID=' + QuotedStr(sTDO)
               + '  AND CCSERIE=' + QuotedStr('000')
               + '  AND CCNODOC=' + QuotedStr(sCND)
               + '  AND CLIEID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
            DMCXC.cdsQry7.Close;
            DMCXC.cdsQry7.DataRequest(xWhere);
            DMCXC.cdsQry7.Open;
            xWhere := 'SELECT * FROM CXC205 WHERE CIAID=' + QuotedStr(sCIA)
               + ' AND SITUAID=' + QuotedStr(sSitua)
               + ' AND UBICAID=' + QuotedStr(sUBICA)
               + ' AND TMONID=' + QuotedStr(sMONEDA)
               + ' AND ZONA=' + QuotedStr(sZona) + ' AND TIPCTA<>''D'' ORDER BY ORDEN';
            sCPTO := '';
            sCTA := '';
            DMCXC.cdsPlantilla.close;
            DMCXC.cdsPlantilla.DataRequest(xWhere);
            DMCXC.cdsPlantilla.Open;
            DMCXC.cdsPlantilla.Filter := 'TIPDEST=''D''';
            DMCXC.cdsPlantilla.Filtered := True;
            If DMCXC.cdsPlantilla.RecordCount > 0 Then
            Begin
               sCPTO := DMCXC.cdsQry7.FieldByName('CCPTOTOT').AsString;
               sCTA := DMCXC.cdsPlantilla.FieldByName('CUENTAID').AsString;
            End
            Else
            Begin
               sCPTO := DMCXC.cdsQry7.FieldByName('CCPTOTOT').AsString;
               sCTA := DMCXC.cdsQry7.FieldByName('CTATOTAL').AsString;
            End;
            DMCXC.cdsPlantilla.Filter := '';
            DMCXC.cdsPlantilla.Filtered := False;

         // ACTUALIZA LA LETRA
            DMCXC.UpdLET(sCIA, sTDO, sCND, sUBICA, sSITUA, sCPTO, sCTA, sCPTO, DMCXC.cdsQry7.FieldByName('CTATOTAL').AsString,
               '', '', dbeFecha.Date, bProt, dbeNPLA.text, dbeFECHA.Date, 0);
            DMCXC.UpdContPlantilla(sCIA, sTDO, sCND, sUBICA, sSITUA, sMONEDA, sZONA, dbeFecha.Date);

            If (sFlagInt = 'C2') Or (sFlagInt = 'C1') Then
            Begin
               sSQL := ' UPDATE CXC301 SET ' +
                  ' CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepTimeServi + ', ' +
                  ' CCPAGORI=CCMTOORI, ' +
                  ' CCPAGLOC=CCMTOLOC, ' +
                  ' CCPAGEXT=CCMTOEXT, ' +
                  ' CCFCANCEL=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.Date) + ''' ), ' +
   //                  ' CCNPLABCO='+QuotedStr(dbeNPLA.text)+', '+
   //                  ' CCFPLABCO='+DMCXC.wRepFuncDate+''''+ FORMATDATETIME(DMCXC.wFormatFecha,dbeFECHA.Date)+''' ), '+
               ' BANCOID=' + QuotedStr(dblcBCO.text) + ', ' +
                  ' CCSALORI=0, ' +
                  ' CCSALLOC=0, ' +
                  ' CCSALEXT=0, ' +
                  ' CCESTADO=''C'' ' +
                  ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) + ' AND CCNODOC=' + QuotedStr(sCND);

               Try
                  DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
               Except
               End;

             // INSERTA EL PAGO DE LA PLANILLA DE BANCOS

               DMCXC.cdsDetCanje.Insert;
               DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := dblcCIA.text;
               DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString;
               DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
               DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
               DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := '000';
               DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
               DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := DMCXC.BuscaQry('dspTGE', 'CXC301', 'CCNOREG', 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND DOCID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString) + ' AND CCNODOC=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString), 'CCNOREG');
               DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := 'PL';

               If DMCXC.BuscaFecha('TGE114', 'Fecha', dbeFECHA.Date) Then
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
                  DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
                  DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
                  DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
                  DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
                  DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
                  DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
                  DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
                  DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
                  DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
               End;

               DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime := dbeFECHA.Date;

               DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.DisplayDescrip('TGE110', 'DOCID', 'DOC_FREG', 'S');
               DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := '000';
               DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := dbeNPLA.text;

               DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;
               DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.wUsuario;
               DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DMCXC.DateS;
               DMCXC.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := DMCXC.TimeS;
               DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := xxTCambio;

               If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat, 15, 2);
                  DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat / xxTCambio, 15, 2);
               End
               Else
               Begin
                  If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
                  Begin
                     DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat, 15, 2);
                     DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat * xxTCambio, 15, 2);
                     DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat, 15, 2);
                  End;
               End;
               DMCXC.cdsDetCanje.Post;
               DecodeDate(dbeFECHA.date, a, m, d);
               sa := StrZero(IntToStr(a), 4);
               sm := StrZero(IntToStr(m), 2);
               If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  xMonLoc := DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat;
                  xMonExt := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat / xxTCambio, 15, 2);
               End
               Else
               Begin
                  xMonLoc := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat * xxTCambio, 15, 2);
                  xMonExt := DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat;
               End;
               DMCXC.SaldosAuxiliarCLG(dblcCIA.text, sa + sm,
                  DMCXC.DisplayDescrip('TGE204', 'CLAUXID', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString), DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString,
                  '-', xMonLoc, xMonExt, DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString);
            End;
         End;
         DMCXC.cdsDPLNBCO.Edit;
         DMCXC.cdsDPLNBCO.FieldByName('UBIID').AsString := sUBICA;
         DMCXC.cdsDPLNBCO.FieldByName('SITID').AsString := sSITUA;
         DMCXC.cdsDPLNBCO.FieldByName('ESTADO').AsString := 'P';
         DMCXC.cdsDPLNBCO.FieldByName('PLBCFECHA').AsDateTime := dbeFECHA.Date;
      End;
      DMCXC.cdsDPLNBCO.Next;
   End;

   DMCXC.cdsPLNBCO.Edit;
   DMCXC.cdsPLNBCO.FieldByName('USUARIO').AsString := DMCXC.wUsuario;
   DMCXC.cdsPLNBCO.FieldByName('FREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsPLNBCO.FieldByName('HREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsPLNBCO.DataRequest('SELECT * FROM CXC308 WHERE CIAID=' + QuotedStr(dblcCIA.text) +
      ' AND BANCOID=' + QuotedStr(dblcBCO.text) + ' AND PLBCID=' + QuotedStr(dbeNPLA.text));
   DMCXC.AplicaDatos(DMCXC.cdsPLNBCO, 'PLNBCO');
   DMCXC.cdsDetCanje.DataRequest('SELECT * FROM CXC305 WHERE DOCID=' + QuotedStr(DMCXC.wsLet) + ' AND TCANJEID=''PL'' ');
   DMCXC.AplicaDatos(DMCXC.cdsDetCanje, 'DetCanje');

   DMCXC.cdsDPLNBCO.ApplyUpdates(0);
   aBusca.Active := False;
   pnlAvi.Visible := False;
   DMCXC.cdsDPLNBCO.EnableControls;
   ShowMessage('Planilla Aceptada');
End;

Procedure TFPNLBCO.dbgFDetPlanFieldChanged(Sender: TObject; Field: TField);
Begin
   If (Field.FieldName = 'OK') And (DMCXC.cdsDPLNBCO.FieldByName('ESTADO').Asstring = 'P') Then
   Begin
      dbgFDetPlan.OnFieldChanged := Nil;
      If DMCXC.cdsDPLNBCO.FieldByName('OK').Asstring = 'S' Then
         DMCXC.cdsDPLNBCO.FieldByName('OK').Asstring := 'N'
      Else
      Begin
         DMCXC.cdsDPLNBCO.FieldByName('OK').Asstring := 'S';
      End;
      dbgFDetPlan.OnFieldChanged := dbgFDetPlanFieldChanged;
   End;
End;

Procedure TFPNLBCO.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   If DMCXC.cdsPLNBCO.State In [dsinsert, dsedit] Then
      DMCXC.cdsPLNBCO.CancelUpdates;
   If DMCXC.cdsDPLNBCO.State In [dsinsert, dsedit] Then
      DMCXC.cdsDPLNBCO.CancelUpdates;

   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   FVariables.w_CC_Registro := False;
   Action := cafree;
End;

Procedure TFPNLBCO.dblcTOPExit(Sender: TObject);
Var
   xWhere: String;
Begin
   xWhere := 'BANCOID=''' + dblcBCO.Text + ''' and TOPID=''' + dblcTOP.Text + '''';
//   xWhere:='TOPID='+''''+dblcTOP.Text+'''';
   DMCXC.cdsDPLNBCO.FieldByName('TOPDES').AsString := DMCXC.BuscaQry('dspTGE', 'CXC107', '*', xWhere, 'TOPDES');
   DMCXC.cdsDPLNBCO.FieldByName('FLAGPROT').AsString := DMCXC.cdsQry.FieldByName('FLAGPROT').AsString;
End;

Procedure TFPNLBCO.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If FPNLBCO.activecontrol Is twwdbgrid Then
      Exit;
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFPNLBCO.bbtnSumaClick(Sender: TObject);
Var
   xTotal, xReno: Double;

Begin
   xTotal := OperClientDataSet(DMCXC.cdsDPLNBCO, 'SUM(' + 'LETIMPORTE' + ')', 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND PLBCID=' + QuotedStr(dbeNPLA.text) + ' AND BANCOID=' + QuotedStr(dblcBCO.text) + ' AND IMPOR=0 ');
   xReno := OperClientDataSet(DMCXC.cdsDPLNBCO, 'SUM(' + 'IMPOR' + ')', 'CIAID=' + QuotedStr(dblcCIA.text) + ' AND PLBCID=' + QuotedStr(dbeNPLA.text) + ' AND BANCOID=' + QuotedStr(dblcBCO.text));
   dbgFDetPlan.ColumnByName('LETIMPORTE').FooterValue := floattostrf(xTotal + xReno, ffNumber, 10, 2);
//   dbgFDetPlan.ColumnByName('IMPOR').FooterValue:=floattostrf(xReno, ffNumber, 10, 2);
//   lblTotal.caption:=
End;

Procedure TFPNLBCO.RenuevaLetra(sSit: String);
Var
   xTAutoNum, xxNoReg, sSQL: String;
   sSitOld: String;
   fTCambio, fSaldo: double;
   wItem, wPos, wDia, wMes, wAno: word;
   sMes, sAno: String;
   sCIA, sTDO, sCND: String;
   nNoReg: integer;
   sCTA, sTDiario: String;
   bProt: boolean;
   a, m, d: word;
   sa, sm: String;
   xMonLoc, xMonExt: double;
Begin
   DecodeDate(Now, wAno, wMes, wDia);
   sAno := StrZero(IntToStr(wAno), 4);
   sMes := StrZero(IntToStr(wMes), 2);
   fSaldo := 0;
   wItem := 0;

//   DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;

   sSitOld := DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString;

   sCIA := DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString;
   sTDO := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   sCND := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
   wPos := Pos('-', sCND);
   If wPos = 0 Then
   Begin
      wPos := length(sCND);
      wItem := 1;
   End
   Else
   Begin
      wItem := StrToInt(Copy(sCND, wPos + 1, 2));
      wItem := wItem + 1;
   End;

   fTCambio := DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsFloat;
   fSaldo := DMCXC.cdsDPLNBCO.FieldByName('LETMTOORI').AsFloat - DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat;
   ;

   If Not DMCXC.CambioSituacion(sSitOld, sSit) Then
   Begin
      Raise Exception.Create('La Letra no se puede Renovar');
   End;
   sSQL := ' SELECT * FROM CXC301 WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) +
      ' AND CCSERIE=''000'' AND CCNODOC=' + QuotedStr(sCND);
   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.DataRequest(sSQL);
   DMCXC.cdsReporte.Open;

   sSQL := ' SELECT * FROM CXC205 WHERE CIAID=' + QuotedStr(sCIA) + ' AND SITUAID=' + QuotedStr(sSIT) +
      ' AND UBICAID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('UBICACION').AsString) +
      ' AND TMONID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString) +
      ' AND ZONA=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('TVTAID').AsString) + ' AND TIPCTA<>''D'' ORDER BY ORDEN';
   DMCXC.cdsPlantilla.Close;
   DMCXC.cdsPlantilla.DataRequest(sSQL);
   DMCXC.cdsPlantilla.Open;
   DMCXC.cdsPlantilla.Filter := 'TIPDEST=''D''';
   DMCXC.cdsPlantilla.Filtered := True;
   If DMCXC.cdsPlantilla.RecordCount > 0 Then
   Begin
      sCTA := DMCXC.cdsPlantilla.FieldByName('CUENTAID').AsString;
   End
   Else
   Begin
      sCTA := DMCXC.cdsReporte.FieldByName('CTATOTAL').AsString;
   End;

   DMCXC.cdsPlantilla.Filter := '';
   DMCXC.cdsPlantilla.Filtered := False;

   DMCXC.UpdLET(sCIA, sTDO, sCND, '', sSit, '', sCTA, DMCXC.cdsReporte.FieldByName('CTATOTAL').AsString, '', '', '', DMCXC.DateS, False, dbeNPLA.text, dbeFECHA.date, 0);

   DMCXC.UpdContPlantillaRenova(sCIA, sTDO, sCND, DMCXC.cdsDPLNBCO.FieldByName('UBICACION').AsString, sSIT,
      DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString, DMCXC.cdsDPLNBCO.FieldByName('TVTAID').AsString, dbeFecha.date);
   DMCXC.SetHyst(sCIA, sTDO, sCND);

   sSQL := ' UPDATE CXC301 SET ' +
      ' CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepTimeServi + ', ' +
      ' CCPAGORI=CCMTOORI, ' +
      ' CCPAGLOC=CCMTOLOC, ' +
      ' CCPAGEXT=CCMTOEXT, ' +
      ' CCSALORI=0, ' +
      ' CCSALLOC=0, ' +
      ' CCSALEXT=0, ' +
      ' CCESTADO=''C'', ' +
      ' CCFCANCEL=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.Date) + ''' )' +
      ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) + ' AND CCNODOC=' + QuotedStr(sCND);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;

   // INSERTA EL PAGO DE LA PLANILLA DE BANCOS
{   Filtracds( DMCXC.cdsDetCanje, 'Select * from CXC305 Where CIAID=''NADA''' );
   DMCXC.cdsDetCanje.EmptyDataSet;}

   DMCXC.cdsDetCanje.Insert;

   DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
   DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := '';
   DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := 'PL';

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dbeFECHA.Date) Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime := DMCXC.DateS;

   DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.DisplayDescrip('TGE110', 'DOCID', 'DOC_FREG', 'S');
   DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := dbeNPLA.text;

   DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := xxTCambio;

   If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      //DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat:= FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString),15,2);
      //DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat:= FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString),15,2);
      //DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat:= FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString)/DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsFloat,15,2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsString), 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsString), 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsString) / xxTCambio, 15, 2);
   End
   Else
      If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      Begin
      //DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat:= FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString),15,2);
      //DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat:= FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString)*DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsFloat,15,2);
      //DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat:= FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString),15,2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsString), 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsString) * xxTCambio, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsString), 15, 2);
      End;

   DMCXC.cdsDetCanje.Post;

   // INSERTA EL PAGO DE LA LETRA RENOVADA
   DMCXC.cdsDetCanje.Insert;

   DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
   DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := '';
   DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := 'LE';

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dbeFECHA.Date) Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime := DMCXC.DateS;

   DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := CalculaNumero(sCND); //copy(sCND,1,wPos)+'-'+StrZero(IntToStr(wItem),2);
    //MAL                                               //

   DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := xxTCambio;

   If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(fSaldo, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(fSaldo, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(fSaldo / xxTCambio, 15, 2);
   End
   Else
      If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      Begin
         DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(fsaldo, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(fSaldo * xxTCambio, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(fsaldo, 15, 2);
      End;

   DMCXC.cdsDetCanje.Post;
//    DMCXC.AplicaDatos( DMCXC.cdsDetCanje, 'DetCanje' );

   DMCXC.SetHyst(sCIA, sTDO, CalculaNumero(sCND));

   //ACTUALIZA LA NUEVA LETRA
   sSQL := ' UPDATE CXC301 ' +
      ' SET BANCOID=' + QuotedStr(dblcBCO.text) + ', ' +
      ' CCUSER=' + QuotedStr(DMCXC.wUsuario) + ', CCFREG=' + DMCXC.wRepFecServi + ', CCHREG=' + DMCXC.wRepTimeServi + ', ' +
      ' SITID=' + QuotedStr(DMCXC.BuscaQry('dspTGE', 'CXC104', 'RENSITANT', 'SITUAID=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString), 'RENSITANT')) + ', ' +
      ' UBIID=' + QuotedStr(dblcBCO.text) + ', ' +
      ' CCNLETBCO=' + QuotedStr(DMCXC.cdsDPLNBCO.FieldByName('CCNLETBCO').AsString) + ', ' +
      ' CCESTADO=' + QuotedStr('P') +
      ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) + ' AND CCNODOC=' + QuotedStr(CalculaNumero(sCND));

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;

   //ACTUALIZA LA NUEVA LETRA
   sSQL := ' UPDATE CXC307 ' +
      ' SET CJESTADO=' + QuotedStr('P') +
      ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND CJLETINI=' + QuotedStr(CalculaNumero(sCND));
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;

   DecodeDate(dbeFECHA.date, a, m, d);
   sa := StrZero(IntToStr(a), 4);
   sm := StrZero(IntToStr(m), 2);
   If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      xMonLoc := DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat;
      xMonExt := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat / xxTCambio, 15, 2);
   End
   Else
   Begin
      xMonLoc := FRound(DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat * xxTCambio, 15, 2);
      xMonExt := DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat;
   End;

   DMCXC.SaldosAuxiliarCLG(dblcCIA.text, sa + sm,
      DMCXC.DisplayDescrip('TGE204', 'CLAUXID', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString), DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString,
      '-', xMonLoc, xMonExt, DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString);
End;

Procedure TFPNLBCO.bbtnNumeraClick(Sender: TObject);
Begin
   DMCXC.cdsDPLNBCO.DisableControls;
   DMCXC.cdsDPLNBCO.First;
   While Not DMCXC.cdsDPLNBCO.BOF Do
   Begin
      DMCXC.cdsDPLNBCO.Edit;
      DMCXC.cdsDPLNBCO.FieldByName('DPLBCID').AsString := StrZero(IntToStr(DMCXC.cdsDPLNBCO.Recno), 2);
      DMCXC.cdsDPLNBCO.Post;
      DMCXC.cdsDPLNBCO.Next;
   End;
   DMCXC.cdsDPLNBCO.EnableControls;
End;

Procedure TFPNLBCO.bbtnSeleccionaClick(Sender: TObject);
Begin
   DMCXC.cdsDPLNBCO.disableControls;
   DMCXC.cdsDPLNBCO.First;
   While Not DMCXC.cdsDPLNBCO.EOF Do
   Begin
      DMCXC.cdsDPLNBCO.Edit;
      DMCXC.cdsDPLNBCO.FieldByName('OK').AsString := 'S';
      DMCXC.cdsDPLNBCO.Post;
      DMCXC.cdsDPLNBCO.Next
   End;
   DMCXC.cdsDPLNBCO.EnableControls;
End;

Procedure TFPNLBCO.bbtnCalcClick(Sender: TObject);
Begin
   If DirectoryExists('C:\WINNT\SYSTEM32') Then
      WinExec('C:\WINNT\SYSTEM32\calc.exe', 1) // Executa Aplicación
   Else
      WinExec('C:\windows\calc.exe', 1); // Executa Aplicación
End;

Procedure TFPNLBCO.dbeFECHAExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If DMCXC.VerificaCierre(dblcCia.text, dbeFECHA.Date) Then
   Begin
      dbeFECHA.SetFocus;
      Raise Exception.Create(' El Periodo ha sido Cerrado, No se permite registrar con esta Fecha ');
   End;

   xWhere := 'TMonId=''' + DMCXC.wTMonExt + ''' and '
      + 'Fecha=' + DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.Date) + ''' )';
   xxTCambio := 0;
   If length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xWhere, 'TMonId')) > 0 Then
      xxTCambio := DMCXC.cdsQry.FieldByName('TCAM' + DMCXC.WVRN_TIPOCAMBIO).Value
   Else
   Begin
      dbeFECHA.SetFocus;
      Raise Exception.Create(' Esta Fecha NO tiene Tipo de Cambio ');
   End;
End;

Function TFPNLBCO.CalculaNumero(sCND: String): String;
Var
   wItem, wPos: integer;
Begin
   wPos := Pos('-', sCND);
   If wPos = 0 Then
   Begin
      wPos := length(sCND);
      wItem := 1;
      result := copy(sCND, 1, wPos) + '-' + StrZero(IntToStr(wItem), 2);
   End
   Else
   Begin
      wItem := StrToInt(Copy(sCND, wPos + 1, 2));
      wItem := wItem + 1;
      result := copy(sCND, 1, wPos) + StrZero(IntToStr(wItem), 2);
   End;
End;

Procedure TFPNLBCO.RenuevaLetraAntigua(sSit: String);
Var
   xTAutoNum, xxNoReg, sSQL: String;
   sSitOld: String;
   fTCambio, fSaldo: real;
   wItem, wPos, wDia, wMes, wAno: word;
   sMes, sAno: String;
   sCIA, sTDO, sCND: String;
   nNoReg: integer;
   cpto, cta, sTDiario: String;
   bProt: boolean;
Begin
   DecodeDate(Now, wAno, wMes, wDia);
   sAno := StrZero(IntToStr(wAno), 4);
   sMes := StrZero(IntToStr(wMes), 2);
   fSaldo := 0;
   wItem := 0;

//   DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;

   sSitOld := DMCXC.cdsDPLNBCO.FieldByName('SITUACION').AsString;
   sCIA := DMCXC.cdsDPLNBCO.FieldByName('CIAID').AsString;
   sTDO := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   sCND := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
   wPos := Pos('-', sCND);
   If wPos = 0 Then
   Begin
      wPos := length(sCND);
      wItem := 1;
   End
   Else
   Begin
      wItem := StrToInt(Copy(sCND, wPos + 1, 2));
      wItem := wItem + 1;
   End;

   fTCambio := DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsFloat;
   fSaldo := DMCXC.cdsDPLNBCO.FieldByName('LETIMPORTE').AsFloat - DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsFloat;
   ;

   If Not DMCXC.CambioSituacion(sSitOld, sSit) Then
   Begin
      Raise Exception.Create('La Letra no se puede Renovar');
   End;

   DMCXC.UpdLET(sCIA, sTDO, sCND, '', sSit, '', '', '', '', '', '', DMCXC.DateS, False, '', 0, 0);

//   UpdContPlantillaRenova(sCIA,sTDO, sCND, sUBICA, sSITUA, sMONEDA, sZONA, dbeFecha.date);

   DMCXC.SetHyst(sCIA, sTDO, sCND);

{   sSQL:=' UPDATE CXC301 SET '+
         ' CCMTOORI='+DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString+','+
         ' CCMTOLOC='+DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString+'*'+FloatToStr(fTCambio)+','+
         ' CCMTOEXT='+DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString+','+
         ' CCPAGORI='+DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString+','+
         ' CCPAGLOC='+DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString+'*'+FloatToStr(fTCambio)+','+
         ' CCPAGEXT='+DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString+','+
         ' CCSALORI=0, '+
         ' CCSALLOC=0, '+
         ' CCSALEXT=0, '+
         ' CCESTADO=''C'' '+
         ' WHERE CIAID='+QuotedStr(sCIA)+' AND DOCID='+QuotedStr(sTDO)+' AND CCNODOC='+QuotedStr(sCND);
 }
   sSQL := ' UPDATE CXC301 SET ' +
      ' CCPAGORI=CCMTOORI, ' +
      ' CCPAGLOC=CCMTOLOC, ' +
      ' CCPAGEXT=CCMTOEXT, ' +
      ' CCSALORI=0, ' +
      ' CCSALLOC=0, ' +
      ' CCSALEXT=0, ' +
      ' CCESTADO=''C'' ' +
      ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) + ' AND CCNODOC=' + QuotedStr(sCND);
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;

   // INSERTA EL PAGO DE LA PLANILLA DE BANCOS
   Filtracds(DMCXC.cdsDetCanje, 'Select * from CXC305 Where CIAID=''NADA''');
   DMCXC.cdsDetCanje.EmptyDataSet;

   DMCXC.cdsDetCanje.Insert;

   DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
   DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := '';
   DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := 'PL';

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dbeFECHA.Date) Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime := DMCXC.DateS;

   DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.DisplayDescrip('TGE110', 'DOCID', 'DOC_FREG', 'S');
   DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := dbeNPLA.text;

   DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := fTCambio;

   If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString), 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString), 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString) / DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsFloat, 15, 2);
   End
   Else
      If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      Begin
         DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString), 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString) * DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsFloat, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(StrTofloat(DMCXC.cdsDPLNBCO.FieldByName('IMPOR').AsString), 15, 2);
      End;

   DMCXC.cdsDetCanje.Post;

   // INSERTA EL PAGO DE LA LETRA RENOVADA
   DMCXC.cdsDetCanje.Insert;

   DMCXC.cdsDetCanje.FieldByName('CIAID').AsString := dblcCIA.text;
   DMCXC.cdsDetCanje.FieldByName('CLIEID').AsString := DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CLIERUC').AsString := DMCXC.DisplayDescrip('TGE204', 'CLIERUC', 'CLIEID', DMCXC.cdsDPLNBCO.FieldByName('CLIEID').AsString);
   DMCXC.cdsDetCanje.FieldByName('DOCID').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC').AsString := DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCNOREG').AsString := '';
   DMCXC.cdsDetCanje.FieldByName('TCANJEID').AsString := 'LE';

   If DMCXC.BuscaFecha('TGE114', 'Fecha', dbeFECHA.Date) Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCAAAA').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      DMCXC.cdsDetCanje.FieldByName('DCCMM').AsString := DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCDD').AsString := DMCXC.cdsQry2.FieldByName('FECDIA').AsString; // día
      DMCXC.cdsDetCanje.FieldByName('DCCTRI').AsString := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString; // trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCSEM').AsString := DMCXC.cdsQry2.FieldByName('FECSEM').AsString; // semestre
      DMCXC.cdsDetCanje.FieldByName('DCCSS').AsString := DMCXC.cdsQry2.FieldByName('FECSS').AsString; // semana
      DMCXC.cdsDetCanje.FieldByName('DCCANOMM').AsString := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString; // mes
      DMCXC.cdsDetCanje.FieldByName('DCCAATRI').AsString := DMCXC.cdsQry2.FieldByName('FECAATRI').AsString; // año+trimestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASEM').AsString := DMCXC.cdsQry2.FieldByName('FECAASEM').AsString; // año+semestre
      DMCXC.cdsDetCanje.FieldByName('DCCAASS').AsString := DMCXC.cdsQry2.FieldByName('FECAASS').AsString; // año+semana
   End;

   DMCXC.cdsDetCanje.FieldByName('CCFCANJE').AsDateTime := DMCXC.DateS;

   DMCXC.cdsDetCanje.FieldByName('DOCID2').AsString := DMCXC.cdsDPLNBCO.FieldByName('DOCID').AsString;
   DMCXC.cdsDetCanje.FieldByName('CCSERIE2').AsString := '000';
   DMCXC.cdsDetCanje.FieldByName('CCNODOC2').AsString := copy(sCND, 1, wPos) + '-' + StrZero(IntToStr(wItem), 2);

   DMCXC.cdsDetCanje.FieldByName('TMONID').AsString := DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString;
   DMCXC.cdsDetCanje.FieldByName('DCCUSER').AsString := DMCXC.wUsuario;
   DMCXC.cdsDetCanje.FieldByName('DCCFREG').AsDateTime := DMCXC.DateS;
   DMCXC.cdsDetCanje.FieldByName('DCCHREG').AsDateTime := DMCXC.TimeS;
   DMCXC.cdsDetCanje.FieldByName('DCCTCAMB').AsFloat := fTCambio;

   If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
   Begin
      DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(fSaldo, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(fSaldo, 15, 2);
      DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(fSaldo / fTCambio, 15, 2);
   End
   Else
      If DMCXC.cdsDPLNBCO.FieldByName('TMONID').AsString = DMCXC.wTMonExt Then
      Begin
         DMCXC.cdsDetCanje.FieldByName('DCCMTOORI').AsFloat := FRound(fsaldo, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOLOC').AsFloat := FRound(fSaldo * ftcambio, 15, 2);
         DMCXC.cdsDetCanje.FieldByName('DCCMTOEXT').AsFloat := FRound(fsaldo, 15, 2);
      End;

   DMCXC.cdsDetCanje.Post;
   DMCXC.AplicaDatos(DMCXC.cdsDetCanje, 'DetCanje');
   //INSERTA LA NUEVA LETRA

   sTDiario := DMCXC.BuscaQry('dspTGE', 'TGE110', 'TDIARID', 'DOCMOD=''CXC'' AND DOCID=' + QuotedStr(sTDO), 'TDIARID');
   xTAutoNum := DMCXC.DisplayDescrip('TGE104', 'AutoNum', 'TDiarID', sTDiario);
   xxNoReg := DMCXC.UltimoRegistro(xTAutoNum, sCIA, sTDiario, sAno, sMes);
   xxNoReg := Strzero(xxNoReg, 10);
   nNoReg := strtoint(xxNoReg);
   DMCXC.BuscaFecha('TGE114', 'Fecha', DMCXC.cdsDPLNBCO.FieldByName('FECEMIR').AsDateTime);

   sSQL := ' INSERT INTO CXC301 (CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID, ' +
      ' CLIERUC,DOCID,CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,TMONID,CCTCAMPR,CCTCAMAJ,CCESTADO,CCOMERID, ' +
      ' CCMTOORI,CCMTOLOC,CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,CCAAAA, ' +
      ' CCMM,CCDD,CCTRI,CCSEM,CCSS,CCAATRI,CCAASEM,CCAASS,BANCOID,FLAGVAR,CCUSER,CCFREG,CCHREG,UBIID,SITID, ' +
      ' CLIEDES,TVTAID,ZVTAID,CCNLETBCO,CCNRENOV,CCNRENOVA,CCPTOTOT,CTATOTAL,CCFSITUA) ' +
      ' SELECT CIAID,' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString) + ',' +
      'TDIARID,CCLOTE,' +
      QuotedStr(xxNoReg) + ',' + DMCXC.wRepFecServi + ',' +
      'CLAUXID,CLIEID,CLIERUC,DOCID,CCSERIE,' +
      QuotedStr(copy(sCND, 1, wPos) + '-' + StrZero(IntToStr(wItem), 2)) + ',' +
      DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, DMCXC.cdsDPLNBCO.FieldByName('FECEMIR').AsDateTime) + '''' + '),' +
      DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, DMCXC.cdsDPLNBCO.FieldByName('FEVCTOR').AsDateTime) + '''' + '),' +
      'TMONID,' +
      DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsString + ',' + DMCXC.cdsDPLNBCO.FieldByName('TCAMBR').AsString + ',' + QuotedStr('P') + ',' +
      'CCOMERID,' +
      FloatToStr(fSaldo) + ',' + FloatToStr(fsaldo * fTCambio) + ',' + FloatToStr(fSaldo) + ',' +
      '0,0,0,' +
      FloatToStr(fSaldo) + ',' + FloatToStr(fsaldo * fTCambio) + ',' + FloatToStr(fSaldo) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECANO').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECMES').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECDIA').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECTRIM').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECSEM').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECSS').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECAATRI').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECAASEM').AsString) + ',' +
      QuotedStr(DMCXC.cdsQry2.FieldByName('FECAASS').AsString) + ',' +
      'BANCOID,' +
      QuotedStr('.') + ',' +
      QuotedStr(DMCXC.wUsuario) + ',' +
      DMCXC.wRepFecServi + ',' +
      DMCXC.wRepTimeServi + ',' +
      'UBIID,' +
      QuotedStr(sSitOld) + ',' +
      'CLIEDES,TVTAID,ZVTAID,CCNLETBCO,1 CCNRENOV,' + DMCXC.wReplacCeros + '(CCNRENOVA,0)+1,CCPTOTOT,CTATOTAL, ' +
      DMCXC.wRepFuncDate + '''' + FORMATDATETIME(DMCXC.wFormatFecha, dbeFECHA.date) + '''' + ') ' +
      ' FROM CXC301 ' +
      ' WHERE CIAID=' + QuotedStr(sCIA) + ' AND DOCID=' + QuotedStr(sTDO) + ' AND CCNODOC=' + QuotedStr(sCND);

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(sSQL);
   Except
   End;
   xxNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, sCIA, sTDiario, sAno, sMes, nNoReg);
End;

Procedure TFPNLBCO.NotaDebitoLetraPorProtestada(xCia: String;
   xFec: TDateTime; xClauxid, xClieid, xTMonId, xZona: String; xTMtoProt, xTcambio, xLetImporte: double);
Var
   sSQL, sSerie: String;
   xTDiar, xTAutoNum: String;
   xDD, xTri, xSem, xSS, xAAMM, xAA, xMM: String;
   xCtaTot, xCPtoTot: String;
   xNoReg, xTAno, xTMes: String;
   wA, wM, wD: word;
   xGravad, xIGV, xMontoNac, xMontoExt: double;

   Procedure GeneraRegistroCxC301(xFecComp: TDateTime; xTMes, xTAno,
      xCia, xxCuenta, xxCpto, xxSerie, xxClax, xxClie, xxNoReg, xxTDiar,
      xxTDoc, xxTMonid: String; xxTCamb, xxGravad, xxIgv, xxIsc, xxFlete,
      xMontoOri, xMontoNac, xMontoExt, xxSalMo, xxSalMn, xxSalMe: double; xxDD,
      xxTri, xxSem, xxSS, xxAAMM, xxAA, xxMM, xxTvtaId: String);
   Var
      xxNdoc, xCliedes, xxRuc, xSQL, xAnoMes, xVeid, xZVtaid: String;
//

      Procedure GeneraDetalle(xTipDet: String; xMonto, xTC: Double; xCpto, xcta, xglosa, xTMonid, xNoDoc: String);
      Var
         xString, xWhere: String;
         sGlosa: String;
      Begin
         DMCXC.cdsDetCxC.Insert;
         DMCXC.cdsDetCxC.FieldByName('TIPDET').AsString := xTipDet;
         DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat := FRound(xMonto, 15, 2);
         DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat := FRound(xTC, 7, 3);
         DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := xTMonId;

         If DMCXC.cdsDetCxC.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
            If DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat > 0 Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat / DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            End;
         End
         Else
         Begin
            DMCXC.cdsDetCxC.FieldByName('CCMTOLOC').AsFloat := FRound(DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat * DMCXC.cdsDetCxC.FieldByName('CCTCAMPR').AsFloat, 15, 2);
            DMCXC.cdsDetCxC.FieldByName('CCMTOEXT').AsFloat := DMCXC.cdsDetCxC.FieldByName('CCMTOORI').AsFloat;
         End;

         xWhere := 'TIPDET=' + QuotedStr(xTipDet) + ' AND CPTOCAB=' + QuotedStr(xCpto);
         xString := xWhere;

   //CLG: 26/02/2002
         If xTipDet <> 'TO' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC102', '*', xWhere, 'TREGID');
            sGlosa := DMCXC.cdsQry.FieldByName('TREGDES').AsString;
         End
         Else
         Begin
            DMCXC.cdsDetCxC.FieldByName('TREGID').AsString := DMCXC.BuscaQry('dspTGE', 'CXC208', 'CPTODES,TREGID,CUENTAID,CPTOCAB,CCDH', xWhere, 'TREGID');
            sGlosa := DMCXC.cdsQry.FieldByName('CPTODES').AsString;
         End;

         DMCXC.cdsDetCxC.FieldByName('CCDH').AsString := DMCXC.cdsQry.FieldByName('CCDH').AsString;

         DMCXC.cdsDetCxC.FieldByName('TMONID').AsString := xTMonId;
   //** 02/03/2001 - pjsv
         If xTipDet = 'MG' Then
         Begin
            If xCpto = '' Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
               DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
               DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
            End
            Else
            Begin
               DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
               DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
               xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
                  ' AND CIAID=' + QuotedStr(dblcCia.text);
               DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sGlosa + ' L: ' + xNoDoc + ' Importe ' +
                  DMCXC.DisplayDescrip('TGE103', 'TMONABR', 'TMONID', xTMonId) + ' ' + FloatToStrF(xLetImporte, ffNumber, 15, 2);
            End;
         End;
         If xTipDet = 'MN' Then
         Begin
            If xCpto <> '' Then
            Begin
               DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
               DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
               DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := xGlosa;
            End
            Else
            Begin
               DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
               DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
       //** 05/03/2001 - PJSV - se cambia por el campo cta. xque con el campo
       // conceptoid no hay una relacion
//       xWhere := 'CUENTAID='+''''+DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString+'''';
               DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sGlosa;
            End;
         End;
         If xTipDet = 'FL' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
     //** 05/03/2001 - PJSV - se cambia por el campo cta. xque con el campo
     // conceptoid no hay una relacion
            xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
               ' AND CIAID=' + QuotedStr(dblcCia.text);
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
         End;
         If xTipDet = 'GF' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
     //** 05/03/2001 - PJSV - se cambia por el campo cta. xque con el campo
     // conceptoid no hay una relacion
            xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
               ' AND CIAID=' + QuotedStr(dblcCia.text);
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
         End;
         If xTipDet = 'SV' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
     //** 05/03/2001 - PJSV - se cambia por el campo cta. xque con el campo
     // conceptoid no hay una relacion
            xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
               ' AND CIAID=' + QuotedStr(dblcCia.text);
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
         End;
         If xTipDet = 'DC' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
     //** 05/03/2001 - PJSV - se cambia por el campo cta. xque con el campo
     // conceptoid no hay una relacion
            xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
               ' AND CIAID=' + QuotedStr(dblcCia.text);
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := DMCXC.BuscaQry('dspTGE', 'TGE202', 'CTADES', xWhere, 'CTADES');
         End;
         If xTipDet = 'I1' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sGlosa;
         End;
         If xTipDet = 'IS' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := DMCXC.cdsQry.FieldByName('CPTOID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := DMCXC.cdsQry.FieldByName('CUENTAID').AsString;
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sGlosa;
         End;
         If xTipDet = 'TO' Then
         Begin
            DMCXC.cdsDetCxC.FieldByName('CPTOID').AsString := xcpto;
            DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString := xcta;
            xWhere := 'CUENTAID=' + QuotedStr(DMCXC.cdsDetCxC.FieldByName('CUENTAID').AsString) +
               ' AND CIAID=' + QuotedStr(dblcCia.text);
            DMCXC.cdsDetCxC.FieldByName('CCGLOSA').AsString := sGlosa;
         End;
         DMCXC.cdsDetCxC.FieldByName('CIAID').AsString := xCia;
         DMCXC.cdsDetCxC.FieldByName('TDIARID').AsString := xxTDiar;
         DMCXC.cdsDetCxC.FieldByName('CCNOREG').AsString := xxNoReg;
         DMCXC.cdsDetCxC.FieldByName('CCAAAA').AsString := xTAno;
         DMCXC.cdsDetCxC.FieldByName('CCANOMES').AsString := xTAno + xTMes;
         DMCXC.cdsDetCxC.FieldByName('CLAUXID').AsString := xxClax;
         DMCXC.cdsDetCxC.FieldByName('CLIEID').AsString := xxClie;
         DMCXC.cdsDetCxC.FieldByName('CLIERUC').AsString := xxRuc;
         DMCXC.cdsDetCxC.FieldByName('DOCID').AsString := DMCXC.wsNDe;
         DMCXC.cdsDetCxC.FieldByName('CCSERIE').AsString := xxSerie;
         DMCXC.cdsDetCxC.FieldByName('CCNODOC').AsString := xxNdoc;
         DMCXC.cdsDetCxC.FieldByName('CCFEMIS').AsDatetime := xFecComp;
         DMCXC.cdsDetCxC.FieldByName('CCFVCMTO').AsDatetime := xFecComp;
         DMCXC.cdsDetCxC.FieldByName('CCFCOMP').AsDatetime := xFecComp;
         DMCXC.cdsDetCxC.FieldByName('CCESTADO').Value := 'P'; // Activo
         DMCXC.cdsDetCxC.FieldByName('CCMM').AsString := xTMes;
         DMCXC.cdsDetCxC.FieldByName('CCDD').AsString := xxDD;
         DMCXC.cdsDetCxC.FieldByName('CCTRI').AsString := xxTri;
         DMCXC.cdsDetCxC.FieldByName('CCSEM').AsString := xxSem;
         DMCXC.cdsDetCxC.FieldByName('CCSS').AsString := xxSS;
         DMCXC.cdsDetCxC.FieldByName('CCAATRI').AsString := xTAno + xxTri;
         DMCXC.cdsDetCxC.FieldByName('CCAASEM').AsString := xTAno + xxSem;
         DMCXC.cdsDetCxC.FieldByName('CCAASS').AsString := xTAno + xxSS;
         DMCXC.cdsDetCxC.FieldByName('CCUSER').AsString := DMCXC.wUsuario;
         DMCXC.cdsDetCxC.FieldByName('CCFREG').AsDateTime := DMCXC.DateS;
         DMCXC.cdsDetCxC.FieldByName('CCHREG').AsDateTime := DMCXC.TimeS;

         DMCXC.cdsDetCxC.Post;
      End;

//
   Begin

      xAnoMes := xTAno + xTMes;

      xSQL := 'CIAID=' + QuotedStr(xCia) + ' AND CLAUXID=' + Quotedstr(xxClax) + ' ' +
         'AND CLIEID=' + Quotedstr(xxClie);
      DMCXC.BuscaQry2('dspUltTGE', 'TGE204', 'VEID,CLIERUC,CLIEDES,ZONVTAID', xSQL, 'VEID');
      xVeid := DMCXC.cdsQry6.fieldbyname('VEID').AsString;
      xxRuc := DMCXC.cdsQry6.fieldbyname('CLIERUC').AsString;
      xCliedes := DMCXC.cdsQry6.fieldbyname('CLIEDES').AsString;
      xZVtaid := DMCXC.cdsQry6.fieldbyname('ZONVTAID').AsString;

      xxNdoc := StrZero(DMCXC.BuscaUltNumero(xCia, DMCXC.wsNDe, xxSerie), 7);

      xSQL := 'INSERT INTO CXC301 (CIAID, CCANOMES, TDIARID, CCNOREG, ' +
         'CCFCMPRB, CLAUXID, CLIEID, CLIERUC, DOCID, CCSERIE, ' +
         'CCNODOC, CCFEMIS, CCFVCMTO, TMONID, FLAGVAR, CCTCAMPR, CCTCAMAJ, ' +
         'CCESTADO, CC_CONTA, VEID, CCGRAVAD, TVTAID, ' +
         'CCPEDIDO, CCIGV, CCISC, CCFLETE, CCMTOORI, CCMTOLOC, CCMTOEXT, ' +
         'CCSALORI, CCSALLOC, CCSALEXT, ' +
         'CCAASEM, CCAAAA, CCMM, CCDD, CCTRI, CCSEM, CCSS, ' +
         'CCAATRI, CCAASS, CCUSER, CCFREG, CCHREG, CLIEDES, ' +
         'CCFLAGVTA, UBIID,CCPTOTOT,CTATOTAL,CPTOID,ZVTAID,COMPROMET) ' +
         'VALUES (' +
         Quotedstr(xCia) + ', ' + Quotedstr(xAnoMes) + ', ' + Quotedstr(xxTDiar) + ', ' + Quotedstr(xxNoReg) + ', ' +
         Quotedstr(DateToStr(xFecComp)) + ', ' + Quotedstr(xxClax) + ', ' + Quotedstr(xxClie) + ', ' + Quotedstr(xxRUC) + ', ' +
         Quotedstr(xxTDoc) + ', ' + Quotedstr(xxSerie) + ', ' + Quotedstr(xxNDoc) + ', ' + Quotedstr(DateToStr(xFecComp)) + ', ' +
         Quotedstr(DateToStr(xFecComp)) + ', ' + Quotedstr(xxTMonid) + ', ' + Quotedstr('.') + ', ' +
         FloatToStr(xxTCamb) + ', ' + FloatToStr(xxTCamb) + ', ' + Quotedstr('P') + ', ' + Quotedstr('N') + ', ' +
         Quotedstr(xVeid) + ', ' + FloatToStr(xxGravad) + ', ' + Quotedstr(xxTvtaId) + ', ' + Quotedstr('') + ', ' +
         FloatToStr(xxIgv) + ', ' + FloatToStr(xxIsc) + ', ' + FloatToStr(xxFlete) + ', ' + FloatToStr(xMontoOri) + ', ' + FloatToStr(xMontoNac) + ', ' + FloatToStr(xMontoExt) + ', ' +
         FloatToStr(xxSalMo) + ', ' + FloatToStr(xxSalMn) + ', ' + FloatToStr(xxSalMe) + ', ' +
         Quotedstr(xTAno + xxSem) + ', ' + Quotedstr(xTAno) + ', ' + Quotedstr(xTMes) + ', ' + Quotedstr(xxDD) + ', ' +
         Quotedstr(xxTri) + ', ' + Quotedstr(xxSem) + ', ' + Quotedstr(xxSS) + ', ' + Quotedstr(xTAno + xxTri) + ', ' +
         Quotedstr(xTAno + xxSS) + ', ' + Quotedstr(DMCXC.wUsuario) + ', ' +
         Quotedstr(FormatDateTime(DMCXC.wFormatFecha, date)) + ', ' +
         DMCXC.wRepTimeServi + ', ' +
         Quotedstr(xClieDes) + ', ' + Quotedstr('N') + ', ' + Quotedstr(DMCXC.wsOfi) + ',' + QuotedStr(xxCpto) + ',' + QuotedStr(xxCuenta) +
         ',' + QuotedStr(xxCpto) + ',' + QuotedStr(xZVtaid) + ',' + QuotedStr('NA') +
         ')';
      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xSQL);
         DMCXC.SaldosAuxiliarCLG(xCia, xAnoMes, xxClax, xxClie,
            '+', xMontoNac, xMontoExt, xxTMonid);

      Except
      End;

      Filtracds(DMCXC.cdsDetCxC, 'Select * from CXC302 Where '
         + 'CIAID=' + QuotedStr('XX') + ' AND '
         + 'DOCID=' + QuotedStr('XX') + ' AND '
         + 'CCSERIE=' + QuotedStr('XX') + ' AND '
         + 'CCNODOC=' + QuotedStr('XX'));

      If xxGravad > 0 Then
         GeneraDetalle('MG', xxGravad, xxTCamb, xxCpto, '', '', xxTMonid, DMCXC.cdsDPLNBCO.FieldByName('LETRA').AsString);
      If xxIGV > 0 Then
         GeneraDetalle('I1', xxIGV, xxTCamb, xxCpto, '', '', xxTMonid, '');
      If xMontoOri > 0 Then
      Begin
         xSQL := 'CPTOCAB=' + quotedstr(xxCpto) + ' AND CIAID=' + QuotedStr(xCia);
         GeneraDetalle('TO', xMontoOri, xxTCamb, xxCpto,
            DMCXC.BuscaQry('dspTGE', 'CXC208', '*', xSQL, 'CUENTAID'), xxCpto, xxTMonid, '');
      End;
      DMCXC.cdsDetCxC.DataRequest('Select * from CXC302 Where '
         + 'CIAID=' + '''' + xCia + '''' + ' and '
         + 'DOCID=' + '''' + DMCXC.wsNDe + '''' + ' and '
         + 'CCSERIE=' + '''' + xxSerie + '''' + ' and '
         + 'CCNODOC=' + '''' + xxNDoc + '''');

      DMCXC.AplicaDatos(DMCXC.cdsDetCxC, 'DetCxC');
   End;

Begin
   DecodeDate(DMCXC.DateS, wa, wm, wd);
   xTAno := StrZero(IntToStr(wA), 4);
   xTMes := StrZero(IntToStr(wM), 2);

   sSQL := ' SELECT MAX(SERIEID) SERIEID FROM CXC103 WHERE CIAID=' + QuotedStr(xCia) + ' AND DOCID=' + QuotedStr(DMCXC.wsNDe);
   DMCXC.cdsQry.Close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.Open;

   sSerie := DMCXC.cdsQry.FieldByName('SERIEID').AsString;
   xTDiar := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'TDIARID', 'DOCID=' + QuotedStr(DMCXC.wsNDe), 'TDIARID');
   xTAutoNum := DMCXC.BuscaQry2('dspTGE', 'TGE104', 'AUTONUM', 'TDIARID=' + quotedstr(xTDiar), 'AUTONUM');

   If DMCXC.BuscaFecha('TGE114', 'FECHA', xFec) Then
   Begin
      xDD := DMCXC.cdsQry2.FieldByName('FECDIA').AsString;
      xTri := DMCXC.cdsQry2.FieldByName('FECTRIM').AsString;
      xSem := DMCXC.cdsQry2.FieldByName('FECSEM').AsString;
      xSS := DMCXC.cdsQry2.FieldByName('FECSS').AsString;
      xAAMM := DMCXC.cdsQry2.FieldByName('FECANO').AsString + DMCXC.cdsQry2.FieldByName('FECMES').AsString;
      xAA := DMCXC.cdsQry2.FieldByName('FECANO').AsString;
      xMM := DMCXC.cdsQry2.FieldByName('FECMES').AsString;
   End;

   sSQL := ' CIAID=' + Quotedstr(xCia) + ' ' +
      ' AND DOCID=' + Quotedstr(DMCXC.wsNDe) +
      ' AND TMONID=' + Quotedstr(xTMonid) +
      ' AND TVTAID=' + Quotedstr(xZona) +
      ' AND CPTOLPRO=' + QuotedStr('S');

   xCPtoTot := DMCXC.BuscaQry2('dspUltTGE', 'CXC208', 'CIAID, CPTOCAB, CUENTAID', sSQL, 'CPTOCAB');
   xCtaTot := DMCXC.cdsQry6.fieldbyname('CUENTAID').AsString;

   xNoReg := DMCXC.UltimoRegistro(xTAutoNum, xCia, xTDiar, xTAno, xTMes);
   xNoReg := DMCXC.GrabaUltimoRegistro(xTAutoNum, xCia, xTDiar, xTAno, xTMes, StrToInt(xNoReg));
   xNoReg := StrZero(xNoReg, 10);

   xGravad := FRound(xTMtoProt / (DMCXC.wdIGV + 1), 15, 2);
   xIGV := FRound(xTMtoProt - xGravad, 15, 2);

   If xTMonId = DMCXC.wTMonLoc Then
   Begin
      xMontoNac := xTMtoProt;
      xMontoExt := FRound(xTMtoProt / xTCambio, 15, 2)
   End
   Else
   Begin
      xMontoNac := FRound(xTMtoProt * xTCambio, 15, 2);
      xMontoExt := xTMtoProt;
   End;

   GeneraRegistroCxC301(DMCXC.DateS, xTMes, xTAno, xCia,
      xCtaTot, xCptoTot, sSerie, xClauxId, xClieId, xNoreg,
      xTDiar, DMCXC.wsNde, xTMonid, xTCambio, xGravad, xIGV, 0, 0,
      xTMtoProt, xMontoNac, xMontoExt, xTMtoProt, xMontoNac, xMontoExt,
      xDD, xTri, xSem, xSS, xAAMM, xAA, xMM, xZona);

End;

Procedure TFPNLBCO.NotInList1(Sender: TObject; LookupTable: TDataSet;
   NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookUpField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFPNLBCO.dblcGrupoExit(Sender: TObject);
Begin
   If DMCXC.cdsTOPERBCO.IndexFieldNames <> 'TOPID' Then
      DMCXC.cdsTOPERBCO.IndexFieldNames := 'TOPID';
   DMCXC.cdsTOPERBCO.SetKey;
   DMCXC.cdsTOPERBCO.FieldByName('TOPID').AsString := dblcGrupo.Text;
   If Not DMCXC.cdsTOPERBCO.GotoKey Then
   Begin
      ShowMessage('Tipo de Operación No encontrada');
      dblcGrupo.SetFocus;
      exit;
   End;
   dbeTipoOpera.Text := DMCXC.cdsTOPERBCO.FieldByName('TOPDES').AsString;
   xTipOpeEquivSit := DMCXC.cdsTOPERBCO.FieldByName('TOPEQUSIT').AsString;
End;

Procedure TFPNLBCO.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
   Application.CreateForm(TFDPNLBCO, FDPNLBCO);
End;

Procedure TFPNLBCO.CargaDataSource;
Begin
   dblcCIA.DataSource := DMCXC.dsPLNBCO;
   dblcBCO.DataSource := DMCXC.dsPLNBCO;
   dblcCCB.DataSource := DMCXC.dsPLNBCO;
   dbeNPLA.DataSource := DMCXC.dsPLNBCO;
   dblcCCBG.DataSource := DMCXC.dsPLNBCO;
   dbeFECHA.DataSource := DMCXC.dsPLNBCO;
   dbeIntMOR.DataSource := DMCXC.dsPLNBCO;
   dbeIntCOM.DataSource := DMCXC.dsPLNBCO;
   dbeIntREN.DataSource := DMCXC.dsPLNBCO;
   dbeComCOB.DataSource := DMCXC.dsPLNBCO;
   dbeComPRO.DataSource := DMCXC.dsPLNBCO;
   dbeComTFO.DataSource := DMCXC.dsPLNBCO;
   dbeOtINTR.DataSource := DMCXC.dsPLNBCO;
   dbeOtGAS.DataSource := DMCXC.dsPLNBCO;
   dbeOtOTR.DataSource := DMCXC.dsPLNBCO;
   wwDBEdit1.DataSource := DMCXC.dsPLNBCO;
   wwDBEdit2.DataSource := DMCXC.dsPLNBCO;
//  dblcGrupo.DataSource := DMCXC.dsPLNBCO;
   dbgFDetPlan.DataSource := DMCXC.dsDPLNBCO;
   dblcCIA.LookupTable := DMCXC.cdsCia;
   dblcBCO.LookupTable := DMCXC.cdsBanco;
   dblcCCB.LookupTable := DMCXC.cdsBCOCCB;
   dblcCCBG.LookupTable := DMCXC.cdsBCOCCBG;
//  dblcGrupo.LookupTable := DMCXC.cdsGrupo;
   dblcGrupo.LookupTable := DMCXC.cdsTOPERBCO;
   dblcTOP.LookupTable := DMCXC.cdsTOPERBCO;

End;

Procedure TFPNLBCO.dblcCIAExit(Sender: TObject);
Begin
   If DMCXC.cdsCia.IndexFieldNames <> 'CIAID' Then
      DMCXC.cdsCia.IndexFieldNames := 'CIAID';
   DMCXC.cdsCia.Setkey;
   DMCXC.cdsCia.FieldByName('CIAID').AsString := dblcCIA.Text;
   If Not DMCXC.cdsCia.GotoKey Then
   Begin
      ShowMessage('Compañía No existe');
      dblcCIA.SetFocus;
      exit;
   End;
   dbeCIA.Text := DMCXC.cdsCia.FieldByName('CIADES').AsString;
End;

Procedure TFPNLBCO.dblcBCOExit(Sender: TObject);
Var
   xSQL: String;
Begin
   If DMCXC.cdsBanco.IndexFieldNames <> 'BANCOID' Then
      DMCXC.cdsBanco.IndexFieldNames := 'BANCOID';
   DMCXC.cdsBanco.Setkey;
   DMCXC.cdsBanco.FieldByName('BANCOID').AsString := dblcBCO.Text;
   If Not DMCXC.cdsBanco.GotoKey Then
   Begin
      ShowMessage('Banco No existe');
      dblcBCO.SetFocus;
      exit;
   End;
   dbeBCO.Text := DMCXC.cdsBanco.FieldByName('BANCONOM').AsString;

// Abre Cuentas Corrientes del Banco Elegido
   xSQL := 'Select * from TGE106 '
      + 'where CIAID=' + quotedstr(dblcCIA.Text) + ' and BANCOID=' + quotedstr(dblcBCO.Text);
   DMCXC.cdsBCOCCB.Close;
   DMCXC.cdsBCOCCB.Filter := '';
   DMCXC.cdsBCOCCB.Filtered := False;
   DMCXC.cdsBCOCCB.MasterSource := Nil;
   DMCXC.cdsBCOCCB.IndexFieldNames := 'CCBCOID';
   DMCXC.cdsBCOCCB.DataRequest(xSQL);
   DMCXC.cdsBCOCCB.Open;
   If DMCXC.cdsBCOCCB.RecordCount < 1 Then
   Begin
      ShowMessage('No existen Cuentas Corrientes definidas para este Banco');
      dblcBCO.SetFocus;
      exit;
   End;

   sBCO := dblcBCO.Text;
   sUBI := DMCXC.DisplayDescrip('CXC105', 'UBICAID', 'BANCOID', sBCO);

   dblcCCB.SetFocus;

// Cuentas Corrientes del Banco para Gastos
   DMCXC.cdsBCOCCBG.Close;
   DMCXC.cdsBCOCCBG.Filter := '';
   DMCXC.cdsBCOCCBG.Filtered := False;
   DMCXC.cdsBCOCCBG.MasterSource := Nil;
   DMCXC.cdsBCOCCBG.IndexFieldNames := 'CCBCOID';
   DMCXC.cdsBCOCCBG.DataRequest(xSQL);
   DMCXC.cdsBCOCCBG.Open;

// Tipos de Operación del Banco
   xSQL := 'select * from CXC107 '
      + 'where BANCOID=' + quotedstr(dblcBCO.Text);
   DMCXC.cdsTOPERBCO.Close;
   DMCXC.cdsTOPERBCO.DataRequest(xSQL);
   DMCXC.cdsTOPERBCO.Open;
   DMCXC.cdsTOPERBCO.IndexFieldNames := 'TOPID';
   dblcGrupo.Selected.Clear;
   dblcGrupo.Selected.Add('TOPID'#9'6'#9'T.Oper'#9'F');
   dblcGrupo.Selected.Add('TOPDES'#9'15'#9'Descripción'#9'F');
   dblcGrupo.Selected.Add('TOPEQUSIT'#9'10'#9'Situación'#9'F');
End;

Procedure TFPNLBCO.dblcCCBExit(Sender: TObject);
Var
   xWhere: String;
Begin
   If DMCXC.cdsBCOCCB.IndexFieldNames <> 'CCBCOID' Then
      DMCXC.cdsBCOCCB.IndexFieldNames := 'CCBCOID';
   DMCXC.cdsBCOCCB.Setkey;
   DMCXC.cdsBCOCCB.FieldByName('CCBCOID').AsString := dblcCCB.Text;
   If Not DMCXC.cdsBCOCCB.GotoKey Then
   Begin
      ShowMessage('Cuenta Corriente No existe');
      dblcCCB.SetFocus;
      exit;
   End;
   dbeMON.Text := DMCXC.cdsBCOCCB.FieldByName('TMONID').AsString;
End;

Procedure TFPNLBCO.dblcCCBGExit(Sender: TObject);
Begin
   If DMCXC.cdsBCOCCBG.IndexFieldNames <> 'CCBCOID' Then
      DMCXC.cdsBCOCCBG.IndexFieldNames := 'CCBCOID';
   DMCXC.cdsBCOCCBG.Setkey;
   DMCXC.cdsBCOCCBG.FieldByName('CCBCOID').AsString := dblcCCBG.Text;
   If Not DMCXC.cdsBCOCCBG.GotoKey Then
   Begin
      ShowMessage('Cuenta Corriente para Gastos No existe');
      dblcCCBG.SetFocus;
      exit;
   End;
End;

Procedure TFPNLBCO.dbgFDetPlanKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Var
   xc: Integer;
   xReg: String;
Begin
   DMCXC.cdsDPLNBCO.Delete;
   DMCXC.cdsDPLNBCO.DisableControls;
   xc := 0;
   DMCXC.cdsDPLNBCO.First;
   While Not DMCXC.cdsDPLNBCO.Eof Do
   Begin
      DMCXC.cdsDPLNBCO.Edit;
      xc := xc + 1;
      DMCXC.cdsDPLNBCO.FieldByName('DPLBCID').AsString := StrZero(IntToStr(xc), 2);
      DMCXC.cdsDPLNBCO.Next;
   End;
   DMCXC.cdsDPLNBCO.EnableControls;
End;

End.

