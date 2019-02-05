Unit CXC241;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   CXC241
// Formulario           :   FImportarRVChess
// Fecha de Creación    :   17/02/2012
// Autor                :   Abelardo Sulca Palomino
// Objetivo             :   Ventana que permite importar el registro de Ventas
//                          de los hoteles que usan el sistema CHSS

// Actualizaciones:
// HPC_201204_CXC 28/08/2012  Permitir la importación de las Notas de Débito
// HPC_201205_CXC  31/10/2012  Por el cambio del Tipo de Documento de Indentidad realizado
//                             en el maestro de Clientes.
// HPC_201301_CXC  15/04/2013  Se identifica el tipo de documento de identidad de acuerdo
//                             a si es un Ruc o Dni válido.
// HPC_201306_CXC  15/05/2013  Se crea la función fg_CambiaTCdeNC que obtiene el tc
//                             del documento de referencia.
// HPC_201405_CXC  15/10/2014  Importación de registro de ventas desde PLE Sunat.
// HPC_201601_CXC  05/07/2016  DAF_2016000578 Ajustes en importación de RV HOTELES código de clientes 
// HPC_201701_CXC  05/07/2016  DAF_2016000578 Ajustes en importación de RV HOTELES código de clientes
// HPC_201801_CXC  26/03/2018 Cambios en Búsqueda en Maestro de Clientes
//

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StrContainer, StdCtrls, wwdblook, Buttons, ComCtrls, ExtCtrls;

Type
   TFImportarRVChess = Class(TForm)
      edtRutaArchivo: TEdit;
      odlgSeleccionarArchivo: TOpenDialog;
      btnBuscarArchivo: TButton;
      Label1: TLabel;
      dblcCompania: TwwDBLookupCombo;
      edtCompania: TEdit;
      Label2: TLabel;
      dblcTipoDiario: TwwDBLookupCombo;
      edtTipoDiario: TEdit;
      Label3: TLabel;
      edtPeriodo: TEdit;
      Label4: TLabel;
      edtLote: TEdit;
      edtLogResultado: TMemo;
      btnGrabarRegVentas: TButton;
      Label5: TLabel;
      btnNuevo: TBitBtn;
      prgb_Progreso: TProgressBar;
    btnProcesar: TButton;
    rgOrigenArch: TRadioGroup;
    BitBtn1: TBitBtn;
      Procedure btnBuscarArchivoClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure dblcCompaniaExit(Sender: TObject);
      Procedure dblcTipoDiarioExit(Sender: TObject);
      Procedure btnGrabarRegVentasClick(Sender: TObject);
      Procedure btnNuevoClick(Sender: TObject);
      Procedure edtPeriodoExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    procedure btnProcesarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
   Private
    { Private declarations }
      Procedure fg_AsignaArreglo(wgLineaTexto, wgDelimitador: String; Var wgArregloCampos: Array Of String);
      Procedure fg_AsignaArregloPLE(wgLineaTexto, wgDelimitador: String; Var wgArregloCampos: Array Of String); // HPC_201405_CXC
      Procedure fg_InsertaRegistroVentas(Var wgArregloCampos: Array Of String; wgNumeroLinea: Integer);
      Procedure fg_InsertaRegistroVentasPLE(Var wgArregloCampos: Array Of String; wgNumeroLinea: Integer);   // HPC_201405_CXC
      Procedure fg_ProcesaArchivo(wgNombreArchivo: String; wgAccion: String);
      Procedure fg_ProcesaArchivoPLE(wgNombreArchivo: String; wgAccion: String);     // HPC_201405_CXC
      Function fg_ValidaFormato(wgLinea: Integer; Var wgArregloCampos: Array Of String; Var wgLogValidacion: String): Boolean;
      Function fg_ValidaFormatoPLE(wgLinea: Integer; Var wgArregloCampos: Array Of String; Var wgLogValidacion: String): Boolean; // HPC_201405_CXC
      Function fg_ValidaParametros: Boolean;
      Procedure fg_Asignalookup;
      Procedure fg_EliminarRegistroVentas(wgCompania, wgPeriodo, wgTipoDiario, wgLote: String);
      Procedure fg_LimpiarVentana;
      Procedure fg_HabilitaCampos(wgBoolean: Boolean);
      Procedure fg_CompletaDatosCliente(Var wgArregloCampos: Array Of String);
      Procedure fg_CompletaDatosClientePLE(Var wgArregloCampos: Array Of String);    // HPC_201405_CXC
      Procedure fg_InsertaClienteNuevo(Var wgArregloCampos: Array Of String);
      Procedure fg_InsertaClienteNuevoPLE(Var wgArregloCampos: Array Of String);     // HPC_201405_CXC
      Procedure fg_CocinaChezz(Var wgArregloCampos: Array Of String);
      Procedure fg_ValidaNumDocIdentidad(Var wgArregloCampos: Array Of String);
      //INICIO HPC_201306_CXC
      Procedure fg_CambiaTCdeNC(Var wgArregloCampos: Array Of String);
      //FIN HPC_201306_CXC

   Public
    { Public declarations }
   End;

Var
   FImportarRVChess: TFImportarRVChess;
   xsDelimitador: String;
   xsDelimitadorPLE: String;       //HPC_201405_CXC
   xsLoteRegistroVentas: String;
   xsTipoDiario: String;
   xsDocAnuladoText: String;
Implementation
Uses CxCDM, CxCUtil;
{$R *.dfm}

Procedure TFImportarRVChess.btnBuscarArchivoClick(Sender: TObject);
Var

   xsArchivo: String;
Begin
   If fg_ValidaParametros = False Then
   Begin
      Exit;
   End;

   If Not odlgSeleccionarArchivo.Execute Then Exit;

   xsArchivo := odlgSeleccionarArchivo.FileName;
   edtRutaArchivo.Text := xsArchivo;

   if rgOrigenArch.ItemIndex = 0 then
      fg_ProcesaArchivo(xsArchivo, 'VALIDAR')
   else
      fg_ProcesaArchivoPLE(xsArchivo, 'VALIDAR');

End;

Procedure TFImportarRVChess.fg_AsignaArreglo(wgLineaTexto, wgDelimitador: String; Var wgArregloCampos: Array Of String);
Var
   xsCadenaTexto: String;
   xnIndice, xnPosicion: Integer;
Begin

   xsCadenaTexto := wgLineaTexto;

   xsCadenaTexto := StringReplace(xsCadenaTexto, '''', '', [rfreplaceall]);
   xsCadenaTexto := StringReplace(xsCadenaTexto, QuotedStr('"'), '', [rfreplaceall]);
   xsCadenaTexto := StringReplace(xsCadenaTexto, '"', '', [rfreplaceall]);

   xnIndice := 0;
   //Obtiene
   Repeat
      xnPosicion := Pos(wgDelimitador, xsCadenaTexto);
      If xnPosicion > 0 Then
      Begin
         //artificio para enviar el nuevo campo al final

         If (xnIndice = 8) And (Length(wgArregloCampos[23]) = 0) Then
         Begin
            xnIndice := 7;
            wgArregloCampos[23] := Copy(xsCadenaTexto, 0, xnPosicion - 1);
            xsCadenaTexto := Trim(Copy(xsCadenaTexto, xnPosicion + 1, Length(xsCadenaTexto)));
         End
         Else
         Begin

            wgArregloCampos[xnIndice] := Copy(xsCadenaTexto, 0, xnPosicion - 1);
            xsCadenaTexto := Trim(Copy(xsCadenaTexto, xnPosicion + 1, Length(xsCadenaTexto)));

         // Inicio HPC_201601_CXC
         // No cambia Código de Cliente así sea alfanumérico
            {if xnIndice = 4 then
            begin
               if copy(wgArregloCampos[4],1,1) = 'E' then
                  wgArregloCampos[4] := '33333333';
               if not IsNumeric(wgArregloCampos[4]) then
                  wgArregloCampos[4] := '33333333';
            end;}
         // Final HPC_201601_CXC
         End;

      End
      Else
      Begin
         wgArregloCampos[xnIndice] := Trim(xsCadenaTexto);
         xsCadenaTexto := '';
      End;
      xnIndice := xnIndice + 1;
   Until Length(xsCadenaTexto) <= 0;

End;
// Inicio HPC_201405_CXC
Procedure TFImportarRVChess.fg_AsignaArregloPLE(wgLineaTexto, wgDelimitador: String; Var wgArregloCampos: Array Of String);
Var
   xsCadenaTexto: String;
   xnIndice, xnPosicion: Integer;
Begin

   xsCadenaTexto := wgLineaTexto;

   xsCadenaTexto := StringReplace(xsCadenaTexto, '''', '', [rfreplaceall]);
   xsCadenaTexto := StringReplace(xsCadenaTexto, QuotedStr('"'), '', [rfreplaceall]);
   xsCadenaTexto := StringReplace(xsCadenaTexto, '"', '', [rfreplaceall]);

   xnIndice := 0;
   //Obtiene
   Repeat
      xnPosicion := Pos(wgDelimitador, xsCadenaTexto);
      If xnPosicion > 0 Then
      Begin
         //artificio para enviar el nuevo campo al final

         If (xnIndice = 8) And (Length(wgArregloCampos[28]) = 0) Then
         Begin
            xnIndice := 7;
            wgArregloCampos[28] := Copy(xsCadenaTexto, 0, xnPosicion - 1);
            xsCadenaTexto := Trim(Copy(xsCadenaTexto, xnPosicion + 1, Length(xsCadenaTexto)));
         End
         Else
         Begin

            wgArregloCampos[xnIndice] := Copy(xsCadenaTexto, 0, xnPosicion - 1);
            xsCadenaTexto := Trim(Copy(xsCadenaTexto, xnPosicion + 1, Length(xsCadenaTexto)));

         End;

      End
      Else
      Begin
         wgArregloCampos[xnIndice] := Trim(xsCadenaTexto);
         xsCadenaTexto := '';
      End;
      xnIndice := xnIndice + 1;
   Until Length(xsCadenaTexto) <= 0;

End;
// Fin HPC_201405_CXC

Procedure TFImportarRVChess.fg_ProcesaArchivo(wgNombreArchivo: String; wgAccion: String);
Var

   xsArregloCampos: Array[1..24] Of String;

   xsLineaTexto: String;
   xsLogValidacion: String;
   xnLinea: Integer;
   xbResultado: Boolean;
   xslArchivoCVS: TstringList;
   xnI: Integer;
   xdFechaProceso: TDate;
Begin

   xslArchivoCVS := TstringList.Create;
   xslArchivoCVS.LoadFromFile(wgNombreArchivo);

   prgb_Progreso.Max := xslArchivoCVS.Count - 1;
   prgb_Progreso.Min := 0;
   prgb_Progreso.Position := 0;
   edtLogResultado.Text := '';

   //Valida si existe periodo operativo abierto
   DateSeparator := '/';
   ShortDateFormat := 'yyyy/mm/dd';
   xdFechaProceso := StrToDate(copy(edtPeriodo.Text, 1, 4) + '/' + copy(edtPeriodo.Text, 5, 2) + '/' + '01');
   ShortDateFormat := 'dd/mm/yyyy';

   If DMCXC.VerificaCierre(dblcCompania.text, xdFechaProceso) = False Then
   Begin
      edtLogResultado.Text := 'El Periodo Operativo ' + QuotedStr(edtPeriodo.Text) + #13 + 'No permite el registro';
      Exit;
   End;

   For xnLinea := 0 To xslArchivoCVS.Count - 1 Do
   Begin
      //limpia arreglo
      For xnI := 0 To 24 Do
      Begin
         xsArregloCampos[xnI] := '';
      End;

      xsLineaTexto := xslArchivoCVS.Strings[xnLinea];
      fg_AsignaArreglo(xsLineaTexto, xsDelimitador, xsArregloCampos);

      //Inserta los clientes que no existen en el maestro de clientes
      If wgAccion = 'GRABAR' Then
      Begin
         fg_InsertaClienteNuevo(xsArregloCampos);
      End;

      If fg_ValidaFormato(xnlinea, xsArregloCampos, xsLogValidacion) = False Then
      Begin
         xbResultado := False;
         edtLogResultado.Text := xsLogValidacion;
         Showmessage('El Archivo no superó la validación de formato' + #13 + 'Verifique el Log');
         Exit;
      End
      Else
      Begin
         edtLogResultado.Text := 'Total registros Validados: ' + IntToStr(xnLinea + 1) + ' Registros';
         xbResultado := True;
      End;
      If wgAccion = 'GRABAR' Then
      Begin
         fg_InsertaRegistroVentas(xsArregloCampos, xnLinea + 1);
         edtLogResultado.Text := 'Total registros Transferidos: ' + IntToStr(xnLinea + 1) + ' Registros';
      End;
      prgb_Progreso.Position := prgb_Progreso.Position + 1;
   End;
   xslArchivoCVS.Free;
   If (xbResultado = True) And (wgAccion = 'VALIDAR') Then
   Begin
      fg_HabilitaCampos(False);
   End;
   If (wgAccion = 'GRABAR') And (xbResultado = True) Then
   Begin
      ShowMessage('Actualización exitosa');
      btnNuevoClick(btnNuevo);
      Exit;
   End;

End;
// Inicio HPC_201405_CXC
Procedure TFImportarRVChess.fg_ProcesaArchivoPLE(wgNombreArchivo: String; wgAccion: String);
Var

   xsArregloCampos: Array[1..29] Of String;
   xsLineaTexto: String;
   xsLogValidacion: String;
   xnLinea: Integer;
   xbResultado: Boolean;
   xslArchivoCVS: TstringList;
   xnI: Integer;
   xdFechaProceso: TDate;
Begin

   xslArchivoCVS := TstringList.Create;
   xslArchivoCVS.LoadFromFile(wgNombreArchivo);

   prgb_Progreso.Max := xslArchivoCVS.Count - 1;
   prgb_Progreso.Min := 0;
   prgb_Progreso.Position := 0;
   edtLogResultado.Text := '';

   //Valida si existe periodo operativo abierto
   DateSeparator := '/';
   ShortDateFormat := 'yyyy/mm/dd';
   xdFechaProceso := StrToDate(copy(edtPeriodo.Text, 1, 4) + '/' + copy(edtPeriodo.Text, 5, 2) + '/' + '01');
   ShortDateFormat := 'dd/mm/yyyy';

   If DMCXC.VerificaCierre(dblcCompania.text, xdFechaProceso) = False Then
   Begin
      edtLogResultado.Text := 'El Periodo Operativo ' + QuotedStr(edtPeriodo.Text) + #13 + 'No permite el registro';
      Exit;
   End;

   For xnLinea := 0 To xslArchivoCVS.Count - 1 Do
   Begin
      //limpia arreglo
      For xnI := 0 To 29 Do
      Begin
         xsArregloCampos[xnI] := '';
      End;

      xsLineaTexto := xslArchivoCVS.Strings[xnLinea];
      fg_AsignaArregloPLE(xsLineaTexto, xsDelimitadorPLE, xsArregloCampos);

      //Inserta los clientes que no existen en el maestro de clientes
      If wgAccion = 'GRABAR' Then
      Begin
         fg_InsertaClienteNuevoPLE(xsArregloCampos);
      End;

      If fg_ValidaFormatoPLE(xnlinea, xsArregloCampos, xsLogValidacion) = False Then
      Begin
         xbResultado := False;
         edtLogResultado.Text := xsLogValidacion;
         Showmessage('El Archivo no superó la validación de formato' + #13 + 'Verifique el Log');
         Exit;
      End
      Else
      Begin
         edtLogResultado.Text := 'Total registros Validados: ' + IntToStr(xnLinea + 1) + ' Registros';
         xbResultado := True;
      End;
      If wgAccion = 'GRABAR' Then
      Begin
         fg_InsertaRegistroVentasPLE(xsArregloCampos, xnLinea + 1);
         edtLogResultado.Text := 'Total registros Transferidos: ' + IntToStr(xnLinea + 1) + ' Registros';
      End;
      prgb_Progreso.Position := prgb_Progreso.Position + 1;
   End;
   xslArchivoCVS.Free;
   If (xbResultado = True) And (wgAccion = 'VALIDAR') Then
   Begin
      fg_HabilitaCampos(False);
   End;
   If (wgAccion = 'GRABAR') And (xbResultado = True) Then
   Begin
      ShowMessage('Actualización exitosa');
      btnNuevoClick(btnNuevo);
      Exit;
   End;

End;
// Fin HPC_201405_CXC
Procedure TFImportarRVChess.fg_InsertaRegistroVentas(Var wgArregloCampos: Array Of String; wgNumeroLinea: Integer);
Var
   xsSql: String;
   xsWhere: String;
   xsCompania: String;
   xsAnioMes: String;
   xsTipoDiario: String;
   xsLote: String;
   xsNumeroRegistro: String;
   xdFechaComprobante: TDate;
   xsTipoAuxiliar: String;
   xsCliente: String;
   xsClienteRuc: String;
   xsTipoDocumento: String;
   xsSerie: String;
   xsNumeroDoc: String;
   xsTipoMoneda: String;
   xnTipoCambio: Double;
   xsEstado: String;
   xsContabilizado: String;
   xnBaseImponible: Double;
   xnImporteNoGravado: Double;
   xnIgv: Double;
   xnOtrosTributos: Double;
   xnExportacion: Double;
   xnExonerado: Double;
   xnTotalOri: Double;
   xnTotalLoc: Double;
   xnTotalExt: Double;
   xsRazonSocial: String;
   xsTCanjeId, xsCanje: String;
   xsFechaCanje: String;
//por notas de credito
   xsPeriodoFactura: String;
   xsSerieFactura: String;
   xsNumeroFactura: String;
   xsNumeroRegistroFactura: String;
   xsTDocFactura: String;
   xsTipoDocFacturaNC: String;
   xnFactor: Integer;
// Inicio HPC_201601_CXC
// variables para cálculo de Número de Canje
   xc1, xc2, xc3: String; 
// Fin HPC_201601_CXC
Begin
   //Completando los campos
   xsCompania := dblcCompania.Text;
   xsAnioMes := edtPeriodo.Text;
   xsTipoDiario := dblcTipoDiario.Text;
   xsLote := edtLote.Text;
   xsNumeroRegistro := StringOfChar('0', 10 - Length(IntToStr(wgNumeroLinea))) + IntToStr(wgNumeroLinea);

   DateSeparator := '/';
   ShortDateFormat := 'yyyy/mm/dd';
   xdFechaComprobante := StrToDate(wgArregloCampos[3]);

   If Length(Trim(wgArregloCampos[21])) > 0 Then
   Begin
      xsTipoAuxiliar := wgArregloCampos[21];
      xsCliente := wgArregloCampos[22];
   End
   Else
   Begin
      xsTipoAuxiliar := 'C';
      xsCliente := '33333333';

   End;
   xsClienteRuc := Trim(wgArregloCampos[4]);
   xsWhere := 'TDOC_SUNAT = ' + QuotedStr(wgArregloCampos[0]) + ' AND DOCMOD = ' + QuotedStr('CXC');
   xsTipoDocumento := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xsWhere, 'DOCID');

   xsSerie := Trim(wgArregloCampos[1]);
   xsNumeroDoc := Trim(wgArregloCampos[2]);

   If Length(Trim(wgArregloCampos[16])) > 0 Then
   Begin
      If Abs(StrToFloat(wgArregloCampos[16])) > 0 Then
      Begin
         xsTipoMoneda := 'D';
      End
      Else
      Begin
         xsTipoMoneda := 'N';
      End;
   End;

   If Length(wgArregloCampos[11]) > 0 Then
   Begin
      xnTipoCambio := StrToFloat(wgArregloCampos[11]);
   End
   Else
   Begin
      xnTipoCambio := 0;
   End;
   //verificando si el documento está anulado
   If (Pos(xsDocAnuladoText, wgArregloCampos[5]) > 0) Or (StrToFloat(wgArregloCampos[10]) = 0) Then //si el total es cero
   Begin
      xsEstado := 'A';
      xsClienteRuc := '';
      xnTipoCambio := 0;
   End
   Else
   Begin
      xsEstado := 'P';
   End;
   xsContabilizado := 'S';

   //Base imponible
   If Length(Trim(wgArregloCampos[6])) > 0 Then
   Begin
      If xsTipoMoneda = 'D' Then
         xnBaseImponible := StrToFloat(wgArregloCampos[12]) //valores en la moneda origen
      Else
         xnBaseImponible := StrToFloat(wgArregloCampos[6]);
   End
   Else
   Begin
      xnBaseImponible := 0;
   End;

   xnImporteNoGravado := 0; //todo se va a exonerados

   //IGV - SOLES
   If Length(Trim(wgArregloCampos[8])) > 0 Then
   Begin
      If xsTipoMoneda = 'D' Then
         xnIgv := StrToFloat(wgArregloCampos[14]) //valores en moneda origen
      Else
         xnIgv := StrToFloat(wgArregloCampos[8]);
   End
   Else
   Begin
      xnIgv := 0;
   End;
   //10. SERVICIOS - SOLES
   If Length(Trim(wgArregloCampos[9])) > 0 Then
   Begin
      If xsTipoMoneda = 'D' Then
         xnOtrosTributos := StrToFloat(wgArregloCampos[15]) //valores en moneda origen
      Else
         xnOtrosTributos := StrToFloat(wgArregloCampos[9]);
   End
   Else
   Begin
      xnOtrosTributos := 0;
   End;

   If (Trim(wgArregloCampos[23]) = '01') And (Length(Trim(wgArregloCampos[7])) > 0) Then
   Begin
      xnExonerado := 0;
      xnImporteNoGravado := 0;
      If xsTipoMoneda = 'D' Then
         xnExportacion := StrToFloat(wgArregloCampos[13]) //valores en moneda origen
      Else
         xnExportacion := StrToFloat(wgArregloCampos[7]);
   End
   Else
      If (Trim(wgArregloCampos[23]) = '02') And (Length(Trim(wgArregloCampos[7])) > 0) Then
      Begin
         xnExonerado := 0;
         xnExportacion := 0;
         If xsTipoMoneda = 'D' Then
            xnImporteNoGravado := StrToFloat(wgArregloCampos[13]) //valores en moneda origen
         Else
            xnImporteNoGravado := StrToFloat(wgArregloCampos[7]);
      End
      Else
         If Trim(wgArregloCampos[23]) = '03' Then
         Begin
            xnExportacion := 0;
            xnImporteNoGravado := 0;
            If xsTipoMoneda = 'D' Then
               xnExonerado := StrToFloat(wgArregloCampos[13]) //valores en moneda origen
            Else
               xnExonerado := StrToFloat(wgArregloCampos[7]);
         End
         Else
            If (Length(Trim(wgArregloCampos[7])) > 0) Then
            Begin
               xnExonerado := 0;
               xnImporteNoGravado := 0;
               If xsTipoMoneda = 'D' Then
                  xnExportacion := StrToFloat(wgArregloCampos[13]) //valores en moneda origen
               Else
                  xnExportacion := StrToFloat(wgArregloCampos[7]);
            End
            Else
            Begin
               xnImporteNoGravado := 0;
               xnExportacion := 0;
               xnExonerado := 0;
            End;

   //11. TOTAL VENTA
   If (xsTipoDocumento = '27') Or (xsTipoDocumento = '26') Then
   Begin
     xsWhere := 'FECHA = TO_DATE(' + QuotedStr(wgArregloCampos[17]) + ',' + QuotedStr('YYYY/MM/DD') + ') ';
     xnTipoCambio := StrToFloat(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xsWhere, 'TCAMVBV'));
     If xsTipoMoneda = 'N' Then
     Begin
        xnTotalOri := StrToFloat(wgArregloCampos[10]);
        xnTotalLoc := StrToFloat(wgArregloCampos[10]);
        If xnTipoCambio > 0 Then
        Begin
           xnTotalExt := FRound(StrToFloat(wgArregloCampos[10]) / xnTipoCambio, 15, 4);
        End
        Else
        Begin
           xnTotalExt := 0;
        End;
     End
     Else
     Begin
        xnTotalOri := StrToFloat(wgArregloCampos[16]);

        xnTotalLoc := FRound(StrToFloat(wgArregloCampos[16]) * xnTipoCambio, 15, 4);
        xnTotalExt := StrToFloat(wgArregloCampos[16]);
     End;
   end
   else
   begin
     If xsTipoMoneda = 'N' Then
     Begin
        xnTotalOri := StrToFloat(wgArregloCampos[10]);
        xnTotalLoc := StrToFloat(wgArregloCampos[10]);
        If xnTipoCambio > 0 Then
        Begin
           xnTotalExt := FRound(StrToFloat(wgArregloCampos[10]) / xnTipoCambio, 15, 4);
        End
        Else
        Begin
           xnTotalExt := 0;
        End;
     End
     Else
     Begin
        xnTotalOri := StrToFloat(wgArregloCampos[16]);

        xnTotalLoc := FRound(StrToFloat(wgArregloCampos[16]) * xnTipoCambio, 15, 4);
        xnTotalExt := StrToFloat(wgArregloCampos[16]);
     End;
   End;
   xsRazonSocial := Trim(wgArregloCampos[5]);
   //Si es Nota de crédito se debe grabar los datos correspondiente

   If (xsTipoDocumento = '27') Or (xsTipoDocumento = '26') Then
   Begin

      If xsTipoDocumento = '27' Then
      Begin
         xnFactor := -1; // si es NC
         xsTCanjeId := 'NC';
      End
      Else
      Begin
         xnFactor := 1; //si es ND
         xsTCanjeId := 'RF';
      End;

      //Si es nota de crédito, entonces multiplicamos por -1
      xnBaseImponible := (xnFactor) * xnBaseImponible;
      xnImporteNoGravado := (xnFactor) * xnImporteNoGravado;
      xnIgv := (xnFactor) * xnIgv;
      xnOtrosTributos := (xnFactor) * xnOtrosTributos;
      xnExportacion := (xnFactor) * xnExportacion;
      xnExonerado := (xnFactor) * xnExonerado;
      xnTotalOri := (xnFactor) * xnTotalOri;
      xnTotalLoc := (xnFactor) * xnTotalLoc;
      xnTotalExt := (xnFactor) * xnTotalExt;

   // Inicio HPC_201601_CXC
   // El nro de Canje se determina sin el Año+Mes
   // y se debe tomar el número máximo de los archivos CXC301, CXC304 y CXC307
   //   xsWhere := ' CIAID = ' + QuotedStr(xsCompania) + ' AND SUBSTR(CCANOMES,1,4) =  SUBSTR(' + QuotedStr(xsAnioMes) + ',1,4) AND DOCID = ' + Quotedstr(xsTipoDocumento);
   //   xsCanje := DMCXC.BuscaQry('dspTGE', 'CXC301', 'LPAD( NVL(MAX(TO_NUMBER(SUBSTR(CCCANJE,1,6)))+1,1),6,' + QuotedStr('0') + ') AS NUMCANJE', xsWhere, 'NUMCANJE');

      xsWhere := 'CIAID='+quotedstr(dblcCompania.Text)
               + ' and TCANJEID=' + '''' + 'NC' + '''';
      xc1 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC304', 'CCCANJE', xsWhere), 6);
      xc2 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC301', 'CCCANJE', xsWhere), 6);
      xc3 := StrZero(DMCXC.BuscaUltTGE('dspTGE', 'CXC307', 'CANJE', xsWhere), 6);
      If xc1 > xc2 Then
         xsCanje := xc1
      Else
         xsCanje := xc2;

      If xsCanje < xc3 Then
         xsCanje := xc3;
   // Fin HPC_201601_CXC

//    xsFechaCanje := 'TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('YYYY/MM/DD') + ')';
      xsFechaCanje :='TO_DATE(' + QuotedStr(wgArregloCampos[17]) + ',' + QuotedStr('YYYY/MM/DD') + ')';
      //buscamos en la cxc301 si el documento de referencia de la NC ya está insertada

      If Trim(wgArregloCampos[18]) = '01' Then xsTipoDocFacturaNC := '24';
      If Trim(wgArregloCampos[18]) = '03' Then xsTipoDocFacturaNC := '25';

      xsWhere := ' CIAID = ' + QuotedStr(xsCompania) + ' AND DOCID = ' + QuotedStr(xsTipoDocFacturaNC) +
         ' AND CCSERIE = ' + QuotedStr(Trim(wgArregloCampos[19])) + ' AND CCNODOC =' + Quotedstr(Trim(wgArregloCampos[20]));
      If Length(DMCXC.BuscaQry('dspTGE', 'CXC301', ' CCANOMES, CCNOREG, CLIEID, DOCID, CCSERIE, CCNODOC', xsWhere, 'CCANOMES')) > 0 Then
      Begin
         //si el doc existe entonces insertamos en la tabla CXC304
         xsPeriodoFactura := DMCXC.cdsQry.FieldByName('CCANOMES').AsString;
         xsSerieFactura := DMCXC.cdsQry.FieldByName('CCSERIE').AsString;
         xsNumeroFactura := DMCXC.cdsQry.FieldByName('CCNODOC').AsString;
         xsNumeroRegistroFactura := DMCXC.cdsQry.FieldByName('CCNOREG').AsString;
         xsTDocFactura := DMCXC.cdsQry.FieldByName('DOCID').AsString;

         xsSql := ' INSERT INTO CXC304 (CIAID, TDIARID, TCANJEID ,' +
            'CCCANJE ,CLIEID, DOCID,CCANOMM, CCNOREG,' +
            ' CCSERIE, CCNODOC) ' +
            ' VALUES (' + QuotedStr(xsCompania) + ',' + QuotedStr(xsTipoDiario) + ',' + QuotedStr(xsTCanjeId) + ' ,' +
            QuotedStr(xsCanje) + ',' + QuotedStr(xsCliente) + ',' + QuotedStr(xsTDocFactura) + ',' + QuotedStr(xsPeriodoFactura) + ', ' + QuotedStr(xsNumeroRegistroFactura) + ',' +
            QuotedStr(xsSerieFactura) + ',' + QuotedStr(xsNumeroFactura) + ')';

         DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
      End;
   End
   Else
   Begin
      xsTCanjeId := '';
      xsCanje := '';
      xsFechaCanje := ' NULL ';
   End;

// Inicio HPC_201801_CXC
// reordenamiento de sangría
   xsSql := 'INSERT INTO CXC301(CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID,CLIERUC, '
      + '                       DOCID,CCSERIE,CCNODOC,CCFRECEP,CCFEMIS,CCFVCMTO, '
      + '                       TMONID,CCTCAMPR,CCTCAMPA,CCESTADO,CC_CONTA, CCGRAVAD, '
      + '                       CCNOGRAV,CCFLETE,CCGASFIN,CCSERVIC,CCDCTO,CCIGV,CCISC,CCMTOORI,CCMTOLOC, '
      + '                       CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,'
      + '                       TCANJEID,CCCANJE,CCFCANJE, CLIEDES, CCUSER, CXC_IMP_EXO,CCEXPORT) '
      + '    VALUES(' + QuotedStr(xsCompania) + ','
      +                 QuotedStr(xsAnioMes) + ','
      +                 QuotedStr(xsTipoDiario) + ','
      +                 QuotedStr(xsLote) + ','
      +                 QuotedStr(xsNumeroRegistro) + ','
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('YYYY/MM/DD') + ') ,'
      +                 QuotedStr(xsTipoAuxiliar) + ','
      +                 QuotedStr(xsCliente) + ','
      +                 QuotedStr(xsClienteRuc) + ', '
      +                 QuotedStr(xsTipoDocumento) + ','
      +                 QuotedStr(xsSerie) + ','
      +                 QuotedStr(xsNumeroDoc) + ','
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('YYYY/MM/DD') + '), '
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('YYYY/MM/DD') + '), '
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('YYYY/MM/DD') + '), '
      +                 QuotedStr(xsTipoMoneda) + ','
      +                 FloatToStr(xnTipoCambio) + ','
      +                 FloatToStr(xnTipoCambio) + ','
      +                 QuotedStr(xsEstado) + ','
      +                 QuotedStr(xsContabilizado) + ','
      +                 FloatToStr(xnBaseImponible) + ', '
      +                 FloatToStr(xnImporteNoGravado) + ',0,0,'
      +                 FloatToStr(xnOtrosTributos) + ',0,'
      +                 FloatToStr(xnIgv) + ',0,'
      +                 FloatToStr(xnTotalOri) + ','
      +                 FloatToStr(xnTotalLoc) + ', '
      +                 FloatToStr(xnTotalExt) + ','
      +                 FloatToStr(xnTotalOri) + ','
      +                 FloatToStr(xnTotalLoc) + ','
      +                 FloatToStr(xnTotalExt) + ',0,0,0,'
      +                 QuotedStr(xsTCanjeId) + ',' + QuotedStr(xsCanje) + ',' + xsFechaCanje + ','
      +                 QuotedStr(xsRazonSocial) + ', USER,'
      +                 FloatToStr(xnExonerado) + ',' + FloatToStr(xnExportacion) + ') ';
// Fin HPC_201801_CXC
   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      ShowMessage('error');
   End;

End;
// Inicio HPC_201405_CXC
Procedure TFImportarRVChess.fg_InsertaRegistroVentasPLE(Var wgArregloCampos: Array Of String; wgNumeroLinea: Integer);
Var
   xsSql: String;
   xsWhere: String;
   xsCompania: String;
   xsAnioMes: String;
   xsTipoDiario: String;
   xsLote: String;
   xsNumeroRegistro: String;
   xdFechaComprobante: TDate;
   xsTipoAuxiliar: String;
   xsCliente: String;
   xsClienteRuc: String;
   xsTipoDocumento: String;
   xsSerie: String;
   xsNumeroDoc: String;
   xsTipoMoneda: String;
   xnTipoCambio: Double;
   xsEstado: String;
   xsContabilizado: String;
   xnBaseImponible: Double;
   xnImporteNoGravado: Double;
   xnIgv: Double;
   xnOtrosTributos: Double;
   xnExportacion: Double;
   xnExonerado: Double;
   xnTotalOri: Double;
   xnTotalLoc: Double;
   xnTotalExt: Double;
   xsRazonSocial: String;
   xsTCanjeId, xsCanje: String;
   xsFechaCanje: String;
//por notas de credito
   xsPeriodoFactura: String;
   xsSerieFactura: String;
   xsNumeroFactura: String;
   xsNumeroRegistroFactura: String;
   xsTDocFactura: String;
   xsTipoDocFacturaNC: String;
   xnFactor: Integer;
Begin
   //Completando los campos
   xsCompania := dblcCompania.Text;
   xsAnioMes := edtPeriodo.Text;
   xsTipoDiario := dblcTipoDiario.Text;
   xsLote := edtLote.Text;
   xsNumeroRegistro := StringOfChar('0', 10 - Length(IntToStr(wgNumeroLinea))) + IntToStr(wgNumeroLinea);

   DateSeparator := '/';
   ShortDateFormat := 'dd/mm/yyyy';
   xdFechaComprobante := StrToDate(wgArregloCampos[3]);

   xsWhere := ' CLIEDNI = ' + QuotedStr(Trim(wgArregloCampos[9]));
   xsTipoAuxiliar := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLAUXID'); //NOMBRE CLIENTE
   xsCliente := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEID'); //CÓDIGO CLIENTE
   // si existe el cliente no insertamos nada
   If Length(Trim(xsCliente)) = 0 Then
   Begin
      xsTipoAuxiliar := 'C';
      xsCliente := '33333333';
   End;

   xsClienteRuc := Trim(wgArregloCampos[9]);
   xsWhere := 'TDOC_SUNAT = ' + QuotedStr(wgArregloCampos[5]) + ' AND DOCMOD = ' + QuotedStr('CXC');
   xsTipoDocumento := DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xsWhere, 'DOCID');

   xsSerie := Trim(wgArregloCampos[6]);
   xsNumeroDoc := Trim(wgArregloCampos[7]);

   xsTipoMoneda := 'N';

   If Length(wgArregloCampos[21]) > 0 Then
   Begin
      xnTipoCambio := StrToFloat(wgArregloCampos[21]);
   End
   Else
   Begin
      xnTipoCambio := 0;
   End;
   //verificando si el documento está anulado
   If (Pos(xsDocAnuladoText, wgArregloCampos[5]) > 0) Or (StrToFloat(wgArregloCampos[20]) = 0) Then //si el total es cero
   Begin
      xsEstado := 'A';
      xsClienteRuc := '';
      xnTipoCambio := 0;
   End
   Else
   Begin
      xsEstado := 'P';
   End;
   xsContabilizado := 'S';

   //Base imponible
   If Length(Trim(wgArregloCampos[12])) > 0 Then
   Begin
      xnBaseImponible := StrToFloat(wgArregloCampos[12]); //valores en la moneda origen
   End
   Else
   Begin
      xnBaseImponible := 0;
   End;

   xnImporteNoGravado := 0; //todo se va a exonerados

   //IGV - SOLES
   If Length(Trim(wgArregloCampos[16])) > 0 Then
   Begin
      xnIgv := StrToFloat(wgArregloCampos[16]);
   End
   Else
   Begin
      xnIgv := 0;
   End;
   //10. SERVICIOS - SOLES
   If Length(Trim(wgArregloCampos[19])) > 0 Then
   Begin
      xnOtrosTributos := StrToFloat(wgArregloCampos[19]);
   End
   Else
   Begin
      xnOtrosTributos := 0;
   End;

   If (Trim(wgArregloCampos[23]) = '01') And (Length(Trim(wgArregloCampos[13])) > 0) Then
   Begin
      xnExonerado := 0;
      xnImporteNoGravado := 0;
      xnExportacion := StrToFloat(wgArregloCampos[13]);
   End
   Else
      If (Trim(wgArregloCampos[23]) = '02') And (Length(Trim(wgArregloCampos[13])) > 0) Then
      Begin
         xnExonerado := 0;
         xnExportacion := 0;
         xnImporteNoGravado := StrToFloat(wgArregloCampos[13]);
      End
      Else
         If Trim(wgArregloCampos[23]) = '03' Then
         Begin
            xnExportacion := 0;
            xnImporteNoGravado := 0;
            xnExonerado := StrToFloat(wgArregloCampos[13]);
         End
         Else
            If (Length(Trim(wgArregloCampos[13])) > 0) Then
            Begin
               xnExonerado := 0;
               xnImporteNoGravado := 0;
               xnExportacion := StrToFloat(wgArregloCampos[13]);
            End
            Else
            Begin
               xnImporteNoGravado := 0;
               xnExportacion := 0;
               xnExonerado := 0;
            End;

   //11. TOTAL VENTA


   xnTotalOri := StrToFloat(wgArregloCampos[20]);
   xnTotalLoc := StrToFloat(wgArregloCampos[20]);
   If xnTipoCambio > 0 Then
   Begin
      xnTotalExt := FRound(StrToFloat(wgArregloCampos[20]) / xnTipoCambio, 15, 4);
   End
   Else
   Begin
      xnTotalExt := 0;
   End;

   xsRazonSocial := Trim(wgArregloCampos[10]);
   //Si es Nota de crédito se debe grabar los datos correspondiente

   If (xsTipoDocumento = '27') Or (xsTipoDocumento = '26') Then
   Begin

      If xsTipoDocumento = '27' Then
      Begin
         xnFactor := -1; // si es NC
         xsTCanjeId := 'NC';
      End
      Else
      Begin
         xnFactor := 1; //si es ND
         xsTCanjeId := 'RF';
      End;

      //Si es nota de crédito, entonces multiplicamos por -1
      xnBaseImponible := (xnFactor) * xnBaseImponible;
      xnImporteNoGravado := (xnFactor) * xnImporteNoGravado;
      xnIgv := (xnFactor) * xnIgv;
      xnOtrosTributos := (xnFactor) * xnOtrosTributos;
      xnExportacion := (xnFactor) * xnExportacion;
      xnExonerado := (xnFactor) * xnExonerado;
      xnTotalOri := (xnFactor) * xnTotalOri;
      xnTotalLoc := (xnFactor) * xnTotalLoc;
      xnTotalExt := (xnFactor) * xnTotalExt;

      xsWhere := ' CIAID = ' + QuotedStr(xsCompania) + ' AND SUBSTR(CCANOMES,1,4) =  SUBSTR(' + QuotedStr(xsAnioMes) + ',1,4) AND DOCID = ' + Quotedstr(xsTipoDocumento);
      xsCanje := DMCXC.BuscaQry('dspTGE', 'CXC301', 'LPAD( NVL(MAX(TO_NUMBER(SUBSTR(CCCANJE,1,6)))+1,1),6,' + QuotedStr('0') + ') AS NUMCANJE', xsWhere, 'NUMCANJE');
      xsFechaCanje := 'TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('DD/MM/YYYY') + ')';
      //buscamos en la cxc301 si el documento de referencia de la NC ya está insertada

      If Trim(wgArregloCampos[23]) = '01' Then xsTipoDocFacturaNC := '24';
      If Trim(wgArregloCampos[23]) = '03' Then xsTipoDocFacturaNC := '25';

      xsWhere := ' CIAID = ' + QuotedStr(xsCompania) + ' AND DOCID = ' + QuotedStr(xsTipoDocFacturaNC) +
         ' AND CCSERIE = ' + QuotedStr(Trim(wgArregloCampos[24])) + ' AND CCNODOC =' + Quotedstr(Trim(wgArregloCampos[25]));
      If Length(DMCXC.BuscaQry('dspTGE', 'CXC301', ' CCANOMES, CCNOREG, CLIEID, DOCID, CCSERIE, CCNODOC', xsWhere, 'CCANOMES')) > 0 Then
      Begin
         //si el doc existe entonces insertamos en la tabla CXC304
         xsPeriodoFactura := DMCXC.cdsQry.FieldByName('CCANOMES').AsString;
         xsSerieFactura := DMCXC.cdsQry.FieldByName('CCSERIE').AsString;
         xsNumeroFactura := DMCXC.cdsQry.FieldByName('CCNODOC').AsString;
         xsNumeroRegistroFactura := DMCXC.cdsQry.FieldByName('CCNOREG').AsString;
         xsTDocFactura := DMCXC.cdsQry.FieldByName('DOCID').AsString;

         xsSql := ' INSERT INTO CXC304 (CIAID, TDIARID, TCANJEID ,' +
            'CCCANJE ,CLIEID, DOCID,CCANOMM, CCNOREG,' +
            ' CCSERIE, CCNODOC) ' +
            ' VALUES (' + QuotedStr(xsCompania) + ',' + QuotedStr(xsTipoDiario) + ',' + QuotedStr(xsTCanjeId) + ' ,' +
            QuotedStr(xsCanje) + ',' + QuotedStr(xsCliente) + ',' + QuotedStr(xsTDocFactura) + ',' + QuotedStr(xsPeriodoFactura) + ', ' + QuotedStr(xsNumeroRegistroFactura) + ',' +
            QuotedStr(xsSerieFactura) + ',' + QuotedStr(xsNumeroFactura) + ')';

         DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
      End;
   End
   Else
   Begin
      xsTCanjeId := '';
      xsCanje := '';
      xsFechaCanje := ' NULL ';
   End;

// Inicio HPC_201801_CXC
// reordenamiento de sangría
   xsSql := 'Insert into CXC301(CIAID,CCANOMES,TDIARID,CCLOTE,CCNOREG,CCFCMPRB,CLAUXID,CLIEID,CLIERUC, '
      + '                       DOCID,CCSERIE,CCNODOC,CCFRECEP,CCFEMIS,CCFVCMTO, '
      + '                       TMONID,CCTCAMPR,CCTCAMPA,CCESTADO,CC_CONTA, CCGRAVAD, '
      + '                       CCNOGRAV,CCFLETE,CCGASFIN,CCSERVIC,CCDCTO,CCIGV,CCISC,CCMTOORI,CCMTOLOC, '
      + '                       CCMTOEXT,CCPAGORI,CCPAGLOC,CCPAGEXT,CCSALORI,CCSALLOC,CCSALEXT,'
      + '                       CLIEDES, CCUSER, '
      + '                       CXC_IMP_EXO,CCEXPORT) '
      + '    Values(' + QuotedStr(xsCompania) + ',' + QuotedStr(xsAnioMes) + ',' + QuotedStr(xsTipoDiario) + ','
      +                 QuotedStr(xsLote) + ',' + QuotedStr(xsNumeroRegistro) + ', '
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('DD/MM/YYYY') + ') ,'
      +                 QuotedStr(xsTipoAuxiliar) + ',' + QuotedStr(xsCliente) + ',' + QuotedStr(xsClienteRuc) + ', '
      +                 QuotedStr(xsTipoDocumento) + ',' + QuotedStr(xsSerie) + ',' + QuotedStr(xsNumeroDoc) + ','
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('DD/MM/YYYY') + '), '
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('DD/MM/YYYY') + '), '
      + '               TO_DATE(' + QuotedStr(DateToStr(xdFechaComprobante)) + ',' + QuotedStr('DD/MM/YYYY') + '), '
      +                 QuotedStr(xsTipoMoneda) + ',' + FloatToStr(xnTipoCambio) + ',' + FloatToStr(xnTipoCambio) + ','
      +                 QuotedStr(xsEstado) + ',' + QuotedStr(xsContabilizado) + ',' + FloatToStr(xnBaseImponible) + ', '
      +                 FloatToStr(xnImporteNoGravado) + ',0,0,' + FloatToStr(xnOtrosTributos) + ',0,'
      +                 FloatToStr(xnIgv) + ',0,' + FloatToStr(xnTotalOri) + ',' + FloatToStr(xnTotalLoc) + ', '
      +                 FloatToStr(xnTotalExt) + ',' + FloatToStr(xnTotalOri) + ',' + FloatToStr(xnTotalLoc) + ','
      +                 FloatToStr(xnTotalExt) + ',0,0,0,' + QuotedStr(xsTCanjeId) + ','
      +                 QuotedStr(xsCanje) + ',' + xsFechaCanje + ','
      +                 QuotedStr(xsRazonSocial) + ', USER,'
      +                 FloatToStr(xnExonerado) + ','
      +                 FloatToStr(xnExportacion) + ') ';
// Fin HPC_201801_CXC

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      ShowMessage('error');
   End;

End;
// Fin HPC_201405_CXC
Function TFImportarRVChess.fg_ValidaFormato(wgLinea: Integer; Var wgArregloCampos: Array Of String; Var wgLogValidacion: String): Boolean;
Var
   xnNumero: Double;
   xsEstadoDoc: String;
   xdFecha: TDate;
   xsSql: String;
Begin
   Result := True;
   If Length(wgLogValidacion) > 100 Then
   Begin
      wgLogValidacion := wgLogValidacion + #13 + #13 + #13;
      wgLogValidacion := wgLogValidacion + 'POR FAVOR VERIFICAR SI EL FORMATO DE LOS DATOS CONTENIDOS' + #13 +
         ' EN EL ARCHIVO SON LOS CORRECTOS';
      Result := False;
      Exit;
   End;
   //verificando si el documento está anulado
   If Pos(xsDocAnuladoText, wgArregloCampos[5]) > 0 Then
   Begin
      xsEstadoDoc := 'ANULADO';
   End
   Else
   Begin
      xsEstadoDoc := 'REGISTRADO';
   End;
   //11. TOTAL VENTA - SOLES
   If Length(Trim(wgArregloCampos[10])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[10]);
         If xnNumero = 0 Then
         Begin
            xsEstadoDoc := 'ANULADO';
         End
         Else
         Begin
            xsEstadoDoc := 'REGISTRADO';
         End;
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Total Venta es incorrecto' + #13;
         Result := False;
      End;
   End;
   //1. TIPO DE DOCUMENTO
   xsSql := 'TDOC_SUNAT = ' + QuotedStr(wgArregloCampos[0]) + ' AND DOCMOD = ' + QuotedStr('CXC');
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xsSql, 'DOCID')) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor de Tipo de Documento desconocido' + #13;
      Result := False;
   End;
   //2. SERIE DEL DOCUMENTO
   If Length(Trim(wgArregloCampos[1])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Serie no puede ser nulo' + #13;
      Result := False;
   End;
// Inicio HPC_201801_CXC
// Al ser la serie alfanumérica, ya no se puede validar como numérica
{
   Try
      xnNumero := StrToFloat(wgArregloCampos[1]);
   Except
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Serie Incorrecto' + #13;
      Result := False;
   End;
}
// Fin HPC_201801_CXC
   //3. NUMERO DE DOCUMENTO
   If Length(Trim(wgArregloCampos[2])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del Número de documento no puede ser nulo' + #13;
      Result := False;
   End;
   Try
      xnNumero := StrToFloat(wgArregloCampos[2]);
   Except
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Serie Incorrecto' + #13;
      Result := False;
   End;
   //4. FECHA DE EMISION
   If Length(Trim(wgArregloCampos[3])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Fecha no puede ser nulo' + #13;
      Result := False;
   End;
   Try
      DateSeparator := '/';
      ShortDateFormat := 'yyyy/mm/dd';
      xdFecha := StrToDate(wgArregloCampos[3]);
   Except
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Fecha Incorrecto' + #13;
      Result := False;
   End;
   If edtPeriodo.Text <> Copy(wgArregloCampos[3], 1, 4) + Copy(wgArregloCampos[3], 6, 2) Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Fecha del documento no corresponde al Perido a procesar' + #13;
      Result := False;
   End;

   //5. NUMERO DE RUC / DNI
   If (Length(Trim(wgArregloCampos[4])) = 0) And (xsEstadoDoc = 'REGISTRADO') And ((wgArregloCampos[0] = '01') Or (wgArregloCampos[0] = '08')) Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ruc/Dni incorrecto' + #13;
      Result := False;
   End;
   If (Length(Trim(wgArregloCampos[4])) = 0) And (xsEstadoDoc = 'REGISTRADO') And (wgArregloCampos[0] = '07') And (wgArregloCampos[18] = '01') Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ruc/Dni incorrecto' + #13;
      Result := False;
   End;
   //6. RAZON SOCIAL O APELLIDOS Y NOMBRES ( NOMBRE COMPLETO )
   If (xsEstadoDoc = 'REGISTRADO') And ((wgArregloCampos[0] = '01') Or (wgArregloCampos[0] = '07') Or (wgArregloCampos[0] = '08') Or (wgArregloCampos[0] = '03')) Then
   Begin
      fg_CompletaDatosCliente(wgArregloCampos);
   End;
   If (Length(Trim(wgArregloCampos[5])) = 0) And (xsEstadoDoc = 'REGISTRADO') And ((wgArregloCampos[0] = '01') Or (wgArregloCampos[0] = '07') Or (wgArregloCampos[0] = '08')) Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Razon Social no puede ser nulo' + #13;
      Result := False;
   End;
   //7. VENTAS GRAVADAS - SOLES
   If Length(Trim(wgArregloCampos[6])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[6]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas Gravadas es incorrecto' + #13;
         Result := False;
      End;
   End;
   //8. VENTAS EXONERADAS - SOLES
   If Length(Trim(wgArregloCampos[7])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[7]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas exoneradas es incorrecto' + #13;
         Result := False;
      End;
   End;
   //9. IGV - SOLES
   If Length(Trim(wgArregloCampos[8])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[8]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo IGV es incorrecto' + #13;
         Result := False;
      End;
   End;
   //10. SERVICIOS - SOLES
   If Length(Trim(wgArregloCampos[9])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[9]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Servicio es incorrecto' + #13;
         Result := False;
      End;
   End;
   //11. TOTAL VENTA - SOLES

   //12. TIPO DE CAMBIO
   If (xsEstadoDoc = 'REGISTRADO') Then
   Begin
      xsSql := 'TMONID = ' + QuotedStr(DMCXC.wTMonExt) +
         ' AND TO_CHAR(FECHA,' + QuotedStr('YYYY/MM/DD') + ') = ' + QuotedStr(wgArregloCampos[3]);
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xsSql, 'TMonId')) > 0 Then
      Begin
         wgArregloCampos[11] := DMCXC.cdsQry.FieldByName('TCAMVOV').AsString;
      End;

      Try
         xnNumero := StrToFloat(wgArregloCampos[11]);
         //si es un valor imposible
         If (xnNumero < 2) Or (xnNumero > 4) Then
         Begin
            xsSql := 'TMONID = ' + QuotedStr(DMCXC.wTMonExt) +
               ' AND TO_CHAR(FECHA,' + QuotedStr('YYYY/MM/DD') + ') = ' + QuotedStr(wgArregloCampos[3]);
            If Length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xsSql, 'TMonId')) > 0 Then
            Begin
               wgArregloCampos[11] := DMCXC.cdsQry.FieldByName('TCAMVOV').AsString;
            End;
         End;
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Tipo de Cambio es incorrecto' + #13;
         Result := False;
      End;
      //INICIO HPC_201306_CXC
      //obtiene tipo de cambio de doc de referencia
      fg_CambiaTCdeNC(wgArregloCampos);
      //FIN HPC_201306_CXC
   End;

   //13. VENTAS GRAVADAS - DOLARES (con la misma estructura que las ventas gravadas en soles)
   If Length(Trim(wgArregloCampos[12])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[12]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas Gravadas $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //14. VENTAS EXONERADAS - DOLARES (con la misma estructura que las ventas exoneradas en soles)
   If Length(Trim(wgArregloCampos[13])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[13]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas Exoneradas $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //15. IGV - DOLARES (con la misma estructura que IGV en soles)
   If Length(Trim(wgArregloCampos[14])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[14]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo IGV $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //16. SERVICIOS - DOLARES (con la misma estructura que Servicios en soles)
   If Length(Trim(wgArregloCampos[15])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[15]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Servicios $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //17. TOTAL VENTA - DOLARES (con la misma estructura que Total Venta en soles)
   If Length(Trim(wgArregloCampos[16])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[16]);
         //actualizamos el tipo de cambio de acuerdo a los valores
         If (xnNumero > 0) And (Length(wgArregloCampos[11]) = 0) Then
            wgArregloCampos[11] := FloatToStr(FRound(StrToFloat(wgArregloCampos[10]) / StrToFloat(wgArregloCampos[16]), 15, 4));

      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Total Venta $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //18. FECHA DE EMISION DEL DOCUMENTO DE REFERENCIA      
   If Length(Trim(wgArregloCampos[17])) > 0 Then
   Begin
      Try
         DateSeparator := '/';
         ShortDateFormat := 'yyyy/mm/dd';
         xdFecha := StrToDate(wgArregloCampos[17]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']La fecha de Emisión del Doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
   //19. TIPO DE DOCUMENTO DEL DOCUMENTO DE REFERENCIA    
   If Length(Trim(wgArregloCampos[18])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[18]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']El Tipo de Doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
   //20. NÚMERO DE SERIE DEL DOCUMENTO DE REFERENCIA      
// Inicio HPC_201801_CXC
// Al ser la serie alfanumérica, ya no se puede validar como numérica
{
   If Length(Trim(wgArregloCampos[19])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[19]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']El Número de Serie del doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
}
// Fin HPC_201801_CXC
   //21. NUMERO DE DOCUMENTO DE REFERENCIA                
   If Length(Trim(wgArregloCampos[20])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[20]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']El Número de Serie del doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
   //21. indicador de 01-Export, 02-Inafecto, 03-Exonerado                
   If Length(Trim(wgArregloCampos[23])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Indicador export/Inafecto/Exon Incorrecto' + #13;
      Result := False;
   End;

   If Result <> False Then
   Begin
      Result := True;
      Exit;
   End;
End;
// Inicio HPC_201405_CXC
Function TFImportarRVChess.fg_ValidaFormatoPLE(wgLinea: Integer; Var wgArregloCampos: Array Of String; Var wgLogValidacion: String): Boolean;
Var
   xnNumero: Double;
   xsEstadoDoc: String;
   xdFechaPLE: TDatetime;
   xsSql: String;
   xxfecha: String;
Begin

   Result := True;
   If Length(wgLogValidacion) > 100 Then
   Begin
      wgLogValidacion := wgLogValidacion + #13 + #13 + #13;
      wgLogValidacion := wgLogValidacion + 'POR FAVOR VERIFICAR SI EL FORMATO DE LOS DATOS CONTENIDOS' + #13 +
         ' EN EL ARCHIVO SON LOS CORRECTOS';
      Result := False;
      Exit;
   End;
   //verificando si el documento está anulado
   If Pos(xsDocAnuladoText, wgArregloCampos[5]) > 0 Then
   Begin
      xsEstadoDoc := 'ANULADO';
   End
   Else
   Begin
      xsEstadoDoc := 'REGISTRADO';
   End;
   //11. TOTAL VENTA - SOLES
   If Length(Trim(wgArregloCampos[20])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[20]);
         If xnNumero = 0 Then
         Begin
            xsEstadoDoc := 'ANULADO';
         End
         Else
         Begin
            xsEstadoDoc := 'REGISTRADO';
         End;
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Total Venta es incorrecto' + #13;
         Result := False;
      End;
   End;
   //1. TIPO DE DOCUMENTO
   xsSql := 'TDOC_SUNAT = ' + QuotedStr(wgArregloCampos[5]) + ' AND DOCMOD = ' + QuotedStr('CXC');
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE110', '*', xsSql, 'DOCID')) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor de Tipo de Documento desconocido' + #13;
      Result := False;
   End;
   //2. SERIE DEL DOCUMENTO
   If Length(Trim(wgArregloCampos[6])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Serie no puede ser nulo' + #13;
      Result := False;
   End;
   Try
      xnNumero := StrToFloat(wgArregloCampos[1]);
   Except
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Serie Incorrecto' + #13;
      Result := False;
   End;
   //3. NUMERO DE DOCUMENTO
   If Length(Trim(wgArregloCampos[7])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del Número de documento no puede ser nulo' + #13;
      Result := False;
   End;
   Try
      xnNumero := StrToFloat(wgArregloCampos[7]);
   Except
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Serie Incorrecto' + #13;
      Result := False;
   End;
   //4. FECHA DE EMISION
   If Length(Trim(wgArregloCampos[3])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Fecha no puede ser nulo' + #13;
      Result := False;
   End;
   Try
      DateSeparator := '/';
      ShortDateFormat := 'dd/mm/yyyy';
      xxFecha := wgArregloCampos[3];

   Except
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Fecha Incorrecto' + #13;
      Result := False;
   End;
   If edtPeriodo.Text <> Copy(wgArregloCampos[3], 7, 4) + Copy(wgArregloCampos[3], 4, 2) Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Fecha del documento no corresponde al Perido a procesar' + #13;
      Result := False;
   End;

   //5. NUMERO DE RUC / DNI
   If (Length(Trim(wgArregloCampos[9])) = 0) And (xsEstadoDoc = 'REGISTRADO') And ((wgArregloCampos[5] = '01') Or (wgArregloCampos[5] = '08')) Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ruc/Dni incorrecto' + #13;
      Result := False;
   End;
   If (Length(Trim(wgArregloCampos[9])) = 0) And (xsEstadoDoc = 'REGISTRADO') And (wgArregloCampos[5] = '07') And (wgArregloCampos[5] = '01') Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ruc/Dni incorrecto' + #13;
      Result := False;
   End;
   //6. RAZON SOCIAL O APELLIDOS Y NOMBRES ( NOMBRE COMPLETO )
   If (xsEstadoDoc = 'REGISTRADO') And ((wgArregloCampos[5] = '01') Or (wgArregloCampos[5] = '07') Or (wgArregloCampos[5] = '08') Or (wgArregloCampos[5] = '03')) Then
   Begin
      fg_CompletaDatosClientePLE(wgArregloCampos);
   End;
   If (Length(Trim(wgArregloCampos[10])) = 0) And (xsEstadoDoc = 'REGISTRADO') And ((wgArregloCampos[5] = '01') Or (wgArregloCampos[5] = '07') Or (wgArregloCampos[5] = '08')) Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Razon Social no puede ser nulo' + #13;
      Result := False;
   End;
   //7. VENTAS GRAVADAS - SOLES
   If Length(Trim(wgArregloCampos[12])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[12]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas Gravadas es incorrecto' + #13;
         Result := False;
      End;
   End;
   //8. VENTAS EXONERADAS - SOLES
   If Length(Trim(wgArregloCampos[13])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[13]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas exoneradas es incorrecto' + #13;
         Result := False;
      End;
   End;
   //9. IGV - SOLES
   If Length(Trim(wgArregloCampos[16])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[16]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo IGV es incorrecto' + #13;
         Result := False;
      End;
   End;
   //10. SERVICIOS - SOLES
   If Length(Trim(wgArregloCampos[14])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[14]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Servicio es incorrecto' + #13;
         Result := False;
      End;
   End;
   //11. TOTAL VENTA - SOLES

   //12. TIPO DE CAMBIO
   If (xsEstadoDoc = 'REGISTRADO') Then
   Begin
      xsSql := 'TMONID = ' + QuotedStr(DMCXC.wTMonExt) +
         ' AND TO_CHAR(FECHA,' + QuotedStr('YYYY/MM/DD') + ') = ' + QuotedStr(wgArregloCampos[21]);
      If Length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xsSql, 'TMonId')) > 0 Then
      Begin
         wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('TCAMVOV').AsString;
      End;

      Try
         xnNumero := StrToFloat(wgArregloCampos[21]);
         //si es un valor imposible
         If (xnNumero < 2) Or (xnNumero > 4) Then
         Begin
            xsSql := 'TMONID = ' + QuotedStr(DMCXC.wTMonExt) +
               ' AND TO_CHAR(FECHA,' + QuotedStr('YYYY/MM/DD') + ') = ' + QuotedStr(wgArregloCampos[3]);
            If Length(DMCXC.BuscaQry('dspTGE', 'TGE107', '*', xsSql, 'TMonId')) > 0 Then
            Begin
               wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('TCAMVOV').AsString;
            End;
         End;
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Tipo de Cambio es incorrecto' + #13;
         Result := False;
      End;
      //INICIO HPC_201306_CXC
      //obtiene tipo de cambio de doc de referencia
      fg_CambiaTCdeNC(wgArregloCampos);
      //FIN HPC_201306_CXC
   End;

   //13. VENTAS GRAVADAS - DOLARES (con la misma estructura que las ventas gravadas en soles)
   If Length(Trim(wgArregloCampos[12])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[12]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas Gravadas $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //14. VENTAS EXONERADAS - DOLARES (con la misma estructura que las ventas exoneradas en soles)
   If Length(Trim(wgArregloCampos[13])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[13]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Ventas Exoneradas $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //15. IGV - DOLARES (con la misma estructura que IGV en soles)
   If Length(Trim(wgArregloCampos[14])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[14]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo IGV $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //16. SERVICIOS - DOLARES (con la misma estructura que Servicios en soles)
   If Length(Trim(wgArregloCampos[15])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[15]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Servicios $ es incorrecto' + #13;
         Result := False;
      End;
   End;
   //17. TOTAL VENTA - DOLARES (con la misma estructura que Total Venta en soles)
   If Length(Trim(wgArregloCampos[16])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[16]);
         //actualizamos el tipo de cambio de acuerdo a los valores
         If (xnNumero > 0) And (Length(wgArregloCampos[11]) = 0) Then
            wgArregloCampos[11] := FloatToStr(FRound(StrToFloat(wgArregloCampos[10]) / StrToFloat(wgArregloCampos[16]), 15, 4));

      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Valor del campo Total Venta $ es incorrecto' + #13;
         Result := False;
      End;
   End;
  { //18. FECHA DE EMISION DEL DOCUMENTO DE REFERENCIA      
   If Length(Trim(wgArregloCampos[22])) > 0 Then
   Begin
      Try
         DateSeparator := '/';
         ShortDateFormat := 'dd/mm/yyyy';
         xxFecha := wgArregloCampos[22];
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']La fecha de Emisión del Doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
   //19. TIPO DE DOCUMENTO DEL DOCUMENTO DE REFERENCIA    
   If Length(Trim(wgArregloCampos[23])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[23]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']El Tipo de Doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
   //20. NÚMERO DE SERIE DEL DOCUMENTO DE REFERENCIA      
   If Length(Trim(wgArregloCampos[24])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[24]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']El Número de Serie del doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;
   //21. NUMERO DE DOCUMENTO DE REFERENCIA                
   If Length(Trim(wgArregloCampos[25])) > 0 Then
   Begin
      Try
         xnNumero := StrToFloat(wgArregloCampos[25]);
      Except
         wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']El Número de Serie del doc de Referencia es incorrecto' + #13;
         Result := False;
      End;
   End;  }
   //21. indicador de 01-Export, 02-Inafecto, 03-Exonerado                
   If Length(Trim(wgArregloCampos[27])) = 0 Then
   Begin
      wgLogValidacion := wgLogValidacion + '[Línea: ' + IntToStr(wgLinea + 1) + ']Indicador export/Inafecto/Exon Incorrecto' + #13;
      Result := False;
   End;

   If Result <> False Then
   Begin
      Result := True;
      Exit;
   End;
End;
// Fin HPC_201405_CXC
Procedure TFImportarRVChess.fg_Asignalookup;
Begin
   dblcCompania.Selected.Clear;
   dblcCompania.Selected.Add('CIAID'#9'8'#9'ID'#9'F');
   dblcCompania.Selected.Add('CIADES'#9'30'#9'Compañía'#9'F');
   dblcCompania.LookupTable := DMCXC.cdsCIA;
   dblcCompania.LookupField := 'CIAID';
   DMCXC.FiltraTabla(DMCXC.cdsCia, 'TGE101', 'CIAID');

   dblcTipoDiario.Selected.Clear;
   dblcTipoDiario.LookupTable := DMCXC.cdsTDiario;
   dblcTipoDiario.LookupField := 'TDIARID';
End;

Procedure TFImportarRVChess.FormCreate(Sender: TObject);
Begin
   xsDelimitador := ';';
   xsDelimitadorPLE :='|';
   xsLoteRegistroVentas := 'RVHT';
   xsTipoDiario := '09';
   xsDocAnuladoText := '**A N U L A D A**';
End;

Procedure TFImportarRVChess.FormShow(Sender: TObject);
Begin
   fg_Asignalookup;
   fg_LimpiarVentana;
// Inicio HPC_201601_CXC
// Se deshabilitan controles para que usuario no elija opciones en desuso
   rgOrigenArch.Enabled := False;
   btnProcesar.Enabled := False;
// Fin HPC_201601_CXC
End;

Procedure TFImportarRVChess.dblcCompaniaExit(Sender: TObject);
Begin
   edtCompania.Text := DMCXC.DisplayDescrip('TGE101', 'CIADES', 'CiaID', dblcCompania.Text);
   If length(edtCompania.Text) = 0 Then
   Begin
      ShowMessage('Falta Código de Compañía');
      dblcCompania.SetFocus;
      Exit;
   End;
   edtLote.Text := xsLoteRegistroVentas;
   dblcTipoDiario.Text := xsTipoDiario;
End;

Procedure TFImportarRVChess.dblcTipoDiarioExit(Sender: TObject);
Begin
   edtTipoDiario.Text := DMCXC.DisplayDescrip('TGE104', 'TDiarDES', 'TDiarID', dblcTipoDiario.Text);
   If length(edtTipoDiario.Text) = 0 Then
   Begin
      ShowMessage('Falta Tipo de Diario');
      dblcTipoDiario.SetFocus;
      Exit;
   End;
End;

Function TFImportarRVChess.fg_ValidaParametros: Boolean;
Var
   xdFecha: TDate;
Begin
   If Length(dblcCompania.Text) = 0 Then
   Begin
      ShowMessage('Ingrese la Compañía');
      Result := False;
      dblcCompania.SetFocus;
      Exit;
   End;
   If Length(dblcTipoDiario.Text) = 0 Then
   Begin
      ShowMessage('Ingrese el Tipo de Diario');
      Result := False;
      dblcTipoDiario.SetFocus;
      Exit;
   End;
   If Length(edtPeriodo.Text) = 0 Then
   Begin
      ShowMessage('Ingrese el periodo a Procesar en el formato YYYYMM ejm: 201201');
      Result := False;
      edtPeriodo.SetFocus;
      Exit;
   End;
   If Length(edtLote.Text) = 0 Then
   Begin
      ShowMessage('Ingrese el Lote');
      Result := False;
      edtLote.SetFocus;
      Exit;
   End;
   Try
      DateSeparator := '/';
      ShortDateFormat := 'yyyy/mm/dd';
      xdFecha := StrToDate(copy(edtPeriodo.Text, 1, 4) + '/' + copy(edtPeriodo.Text, 5, 2) + '/' + '01');
   Except
      ShowMessage('Periodo no válido' + #13 + 'el formato válido es YYYYMM ejm: 201201');
      edtPeriodo.SetFocus;
      Result := False;
      Exit;
   End;

   Result := True;
End;

Procedure TFImportarRVChess.btnGrabarRegVentasClick(Sender: TObject);
Var
   xsMensaje: String;
   xsSql: String;
   xnExisteRegistros: Integer;
Begin

   xsSql := ' DELETE TGE204 WHERE  CLIEID LIKE ' + QuotedStr('%C33333333%');
   DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);

   xsSql := ' CXC301.CIAID = ' + QuotedStr(dblcCompania.Text) +
      ' AND CXC301.CCANOMES = ' + QuotedStr(edtPeriodo.Text) +
      ' AND CXC301.TDIARID = ' + QuotedStr(dblcTipoDiario.Text);
   xnExisteRegistros := StrToInt(DMCXC.BuscaQry('dspTGE', 'CXC301', ' COUNT(CXC301.CIAID) REGISTROS ', xsSql, 'REGISTROS'));
   If xnExisteRegistros > 0 Then
   Begin
      xsMensaje := 'El periodo a procesar ya tiene ' + IntToStr(xnExisteRegistros) + ' documentos registrados' + #13 +
         'Se eliminará y se insertará los documentos ' + #13 + 'del archivo seleccionado' + #13 +
         '¿Desea continuar?';
   End
   Else
   Begin
      xsMensaje := 'Se actualizará el registro de ventas con los documentos ' + #13 +
         'contenidos en el archivo seleccionado' + #13 +
         '¿Desea continuar?';
   End;
   If MessageDlg(xsMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      edtLogResultado.Text := '';
      fg_EliminarRegistroVentas(dblcCompania.Text, edtPeriodo.Text, dblcTipoDiario.Text, edtLote.Text);
      fg_ProcesaArchivo(edtRutaArchivo.Text, 'GRABAR');
   End;
End;

Procedure TFImportarRVChess.fg_EliminarRegistroVentas(wgCompania, wgPeriodo, wgTipoDiario, wgLote: String);
Var
   xsSql: String;
Begin
   xsSql := ' DELETE CXC304 ' +
      ' WHERE EXISTS (SELECT 1 FROM CXC301 ' +
      ' WHERE CXC304.CIAID = CXC301.CIAID ' +
      ' AND CXC304.TDIARID = CXC301.TDIARID ' +
      ' AND CXC304.TCANJEID = CXC301.TCANJEID ' +
      ' AND CXC304.CCCANJE = CXC301.CCCANJE ' +
      ' AND CXC304.CIAID = ' + QuotedStr(dblcCompania.Text) +
      ' AND CXC301.TDIARID = ' + QuotedStr(dblcTipoDiario.Text) +
      ' AND CXC301.CCANOMES = ' + QuotedStr(edtPeriodo.Text) + ') ';

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Raise exception.Create('No se pudo eliminar el Registro de Ventas');
   End;

   xsSql := ' DELETE CXC301 WHERE CXC301.CIAID = ' + QuotedStr(dblcCompania.Text) +
      ' AND CXC301.CCANOMES = ' + QuotedStr(edtPeriodo.Text) +
      ' AND CXC301.TDIARID = ' + QuotedStr(dblcTipoDiario.Text) +
      ' AND (CXC301.CCLOTE = ' + QuotedStr(edtLote.Text) + ' OR CXC301.CCLOTE Like ' + QuotedStr('IH%') + ')';

   Try
      DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);
   Except
      Raise exception.Create('No se pudo eliminar el Registro de Ventas');
   End;

End;

Procedure TFImportarRVChess.fg_LimpiarVentana;
Begin
   dblcCompania.Text := '';
   edtCompania.Text := '';
   dblcTipoDiario.Text := '';
   edtTipoDiario.Text := '';
   edtPeriodo.Text := '';
   edtLote.Text := '';
   edtRutaArchivo.Text := '';
   edtLogResultado.Text := '';
   btnGrabarRegVentas.Enabled := False;
   prgb_Progreso.Position := 0;
End;

Procedure TFImportarRVChess.fg_HabilitaCampos(wgBoolean: Boolean);
Begin
   dblcCompania.Enabled := wgBoolean;
   dblcTipoDiario.Enabled := wgBoolean;
   edtPeriodo.Enabled := wgBoolean;
   btnBuscarArchivo.Enabled := wgBoolean;

   edtRutaArchivo.Enabled := wgBoolean;
   If wgBoolean = True Then
   Begin
      btnGrabarRegVentas.Enabled := False;
   End
   Else
   Begin
      btnGrabarRegVentas.Enabled := True;
   End;

End;

Procedure TFImportarRVChess.btnNuevoClick(Sender: TObject);
Begin
   fg_LimpiarVentana;
   fg_HabilitaCampos(True);
End;

Procedure TFImportarRVChess.fg_CompletaDatosCliente(Var wgArregloCampos: Array Of String);
Var
   xsWhere: String;
   xsRazonSocial: String;

   xsClienteGenerico: String;

Begin

   fg_ValidaNumDocIdentidad(wgArregloCampos); // solo para boletas
   xsClienteGenerico := '33333333';

   If Trim(wgArregloCampos[4]) = xsClienteGenerico Then
   Begin
      xsWhere := ' CLIEID = ' + QuotedStr(xsClienteGenerico) + ' AND CLAUXID = ' + QuotedStr('C');
      xsRazonSocial := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES'); //NOMBRE CLIENTE
      wgArregloCampos[5] := xsRazonSocial;
      wgArregloCampos[4] := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
      wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('CLAUXID').AsString; //TIPOAUXILIAR
      wgArregloCampos[22] := DMCXC.cdsQry.FieldByName('CLIEID').AsString; //TIPOAUXILIAR
   End;
   xsWhere := ' CLIERUC = ' + QuotedStr(Trim(wgArregloCampos[4]));
   xsRazonSocial := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES'); //NOMBRE CLIENTE
   If Length(Trim(xsRazonSocial)) > 0 Then
   Begin
      If Length(Trim(wgArregloCampos[5])) = 0 Then
      Begin
         wgArregloCampos[5] := xsRazonSocial;
      End;
      wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('CLAUXID').AsString; //TIPOAUXILIAR
      wgArregloCampos[22] := DMCXC.cdsQry.FieldByName('CLIEID').AsString; //TIPOAUXILIAR
   End;

End;
// Inicio HPC_201405_CXC
Procedure TFImportarRVChess.fg_CompletaDatosClientePLE(Var wgArregloCampos: Array Of String);
Var
   xsWhere: String;
   xsRazonSocial: String;

   xsClienteGenerico: String;

Begin

   fg_ValidaNumDocIdentidad(wgArregloCampos); // solo para boletas
   xsClienteGenerico := '33333333';

   If Trim(wgArregloCampos[10]) = xsClienteGenerico Then
   Begin
      xsWhere := ' CLIEID = ' + QuotedStr(xsClienteGenerico) + ' AND CLAUXID = ' + QuotedStr('C');
      xsRazonSocial := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES'); //NOMBRE CLIENTE
      wgArregloCampos[11] := xsRazonSocial;
      wgArregloCampos[10] := DMCXC.cdsQry.FieldByName('CLIERUC').AsString;
   //   wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('CLAUXID').AsString; //TIPOAUXILIAR
   //   wgArregloCampos[22] := DMCXC.cdsQry.FieldByName('CLIEID').AsString; //TIPOAUXILIAR
   End;
   xsWhere := ' CLIERUC = ' + QuotedStr(Trim(wgArregloCampos[10]));
   xsRazonSocial := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES'); //NOMBRE CLIENTE
   If Length(Trim(xsRazonSocial)) > 0 Then
   Begin
      If Length(Trim(wgArregloCampos[11])) = 0 Then
      Begin
         wgArregloCampos[11] := xsRazonSocial;
      End;
   //   wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('CLAUXID').AsString; //TIPOAUXILIAR
   //   wgArregloCampos[22] := DMCXC.cdsQry.FieldByName('CLIEID').AsString; //TIPOAUXILIAR
   End;

End;
// Fin HPC_201405_CXC
Procedure TFImportarRVChess.edtPeriodoExit(Sender: TObject);
Var
   xdFecha: TDate;
Begin
   If Length(Trim(edtPeriodo.Text)) = 0 Then
   Begin
      ShowMessage('Ingrese Periodo');
      Exit;
   End;
   Try
      DateSeparator := '/';
      ShortDateFormat := 'yyyy/mm/dd';
      xdFecha := StrToDate(copy(edtPeriodo.Text, 1, 4) + '/' + copy(edtPeriodo.Text, 5, 2) + '/' + '01');
   Except
      ShowMessage('Periodo no válido' + #13 + 'el formato válido es YYYYMM ejm: 201201');
      edtPeriodo.SetFocus;
      Exit;
   End;

End;

Procedure TFImportarRVChess.fg_InsertaClienteNuevo(Var wgArregloCampos: Array Of String);
Var
   xsSql: String;
   xsClieid, xsClieRuc, xsCLauxid: String;
   xsCiaid, xsClieDes, xsActivo, xsDocSunat: String;
   xsWhere: String;
   xsRazonSocial: String;

   xsTipoDocumento: String;
   xnNumero: Double;

Begin
   xsWhere := ' CLIERUC = ' + QuotedStr(Trim(wgArregloCampos[4]));
   xsRazonSocial := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES'); //NOMBRE CLIENTE
   // si existe el cliente no insertamos nada
   If Length(Trim(xsRazonSocial)) > 0 Then
   Begin
      Exit;
   End;

   //Si el cliente es Otros no insertamos nada
   If Trim(wgArregloCampos[4]) = '33333333' Then
   Begin
      Exit;
   End;

   xsClieRuc := Trim(wgArregloCampos[4]);
   xsCLauxid := 'C';
   xsCiaid := dblcCompania.Text;
   xsClieDes := Trim(wgArregloCampos[5]);
   xsActivo := 'S';
   If xsClieDes = '' Then
   Begin
      Exit;
   End;
   //si es factura y no es RUC entonces debe ser pasaporte

   xsTipoDocumento := Trim(wgArregloCampos[0]);
   If (Trim(wgArregloCampos[23]) = '01') Then
   Begin
      Try
      // Inicio HPC_201601_CXC
      // no se convertirá en Número
      // xnNumero := StrToFloat(xsClieRuc);
      // Final HPC_201601_CXC
      Except
         xsDocSunat := '07';
      End;
   End;
//Inicio HPC_201601_CXC
// Ajustes para la definición del documento ident.Cliente
//   If (Length(xsClieRuc) = 11) And (xsDocSunat = '') Then
//
//   Begin
//      xsDocSunat := '06';
//   End
//   Else
//      If Length(xsClieRuc) = 8 Then
//      Begin
//         xsDocSunat := '01';
//      End;
//
//   If StrToFloat(wgArregloCampos[7]) > 0 Then
//   Begin
//      xsDocSunat := '07';
//   End;
//   xsClieid := Copy('C' + xsClieRuc, 1, 15);
   If (Length(xsClieRuc) = 11) And (xsDocSunat = '') and (IsNumeric(xsClieRuc)) Then
   Begin
      xsDocSunat := '06';
   End
   Else
      If (Length(xsClieRuc) = 8) and (IsNumeric(xsClieRuc)) Then
      Begin
         xsDocSunat := '01';
      End;
   If xsDocSunat='' then
      xsDocSunat := '07';

   if IsNumeric(xsClieRuc) then
      xsClieid := Copy('C' + xsClieRuc, 1, 15)
   else
      xsClieid := xsClieRuc;
   If length(Trim(xsClieid))=0 Then  xsClieid:='33333333';
//Final HPC_201601_CXC
   xsWhere := ' CLIEID = ' + QuotedStr(xsClieid);
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES')) = 0 Then
   Begin
      xsSql := ' INSERT INTO TGE204 (CLIEID,CLIERUC,CLAUXID,CIAID,CLIEDES,ACTIVO,TDOC_ID_SUNAT, CLIEDNI ) ' +
         ' VALUES (' + QuotedStr(xsClieid) + ',' + QuotedStr(xsClieRuc) + ',' + QuotedStr(xsCLauxid) + ',' + QuotedStr(xsCiaid) + ',' + QuotedStr(xsClieDes) + ',' + QuotedStr(xsActivo) + ',' + QuotedStr(xsDocSunat) + ',' + QuotedStr(xsClieRuc) + ')';

      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);

         DMCXC.cdsClie.Close;
         DMCXC.cdsClie.DataRequest('SELECT * FROM TGE204 WHERE CLIEID=' + QuotedStr(xsClieid));
         DMCXC.cdsClie.Open;
         DMCXC.GrabaAuxConta(DMCXC.cdsClie);

      Except
         Raise exception.Create('Error al crear un nuevo cliente');
      End;
   End;
End;
// Inicio HPC_201405_CXC
Procedure TFImportarRVChess.fg_InsertaClienteNuevoPLE(Var wgArregloCampos: Array Of String);
Var
   xsSql: String;
   xsClieid, xsClieRuc, xsCLauxid: String;
   xsCiaid, xsClieDes, xsActivo, xsDocSunat: String;
   xsWhere: String;
   xsRazonSocial: String;

   xsTipoDocumento: String;
   xnNumero: Double;

Begin
   xsWhere := ' CLIEDNI = ' + QuotedStr(Trim(wgArregloCampos[9]));
   xsRazonSocial := DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES'); //NOMBRE CLIENTE
   // si existe el cliente no insertamos nada
   If Length(Trim(xsRazonSocial)) > 0 Then
   Begin
      Exit;
   End;

   //Si el cliente es Otros no insertamos nada
   If Trim(wgArregloCampos[11]) = '33333333' Then
   Begin
      Exit;
   End;

   xsClieRuc := Trim(wgArregloCampos[11]);
   xsCLauxid := 'C';
   xsCiaid := dblcCompania.Text;
   xsClieDes := Trim(wgArregloCampos[12]);
   xsActivo := 'S';
   If xsClieDes = '' Then
   Begin
      Exit;
   End;
   //si es factura y no es RUC entonces debe ser pasaporte

   xsTipoDocumento := Trim(wgArregloCampos[6]);
   If (Trim(wgArregloCampos[23]) = '01') Then
   Begin
      Try
         xnNumero := StrToFloat(xsClieRuc);
      Except
         xsDocSunat := '07';
      End;
   End;

   If (Length(xsClieRuc) = 11) And (xsDocSunat = '') Then
   Begin
      xsDocSunat := '06';
   End
   Else
      If Length(xsClieRuc) = 8 Then
      Begin
         xsDocSunat := '01';
      End;
   If StrToFloat(wgArregloCampos[7]) > 0 Then
   Begin
      xsDocSunat := '07';
   End;

   xsClieid := Copy('C' + xsClieRuc, 1, 15);
   xsWhere := ' CLIEID = ' + QuotedStr(xsClieid);
   If Length(DMCXC.BuscaQry('dspTGE', 'TGE204', '*', xsWhere, 'CLIEDES')) = 0 Then
   Begin
      xsSql := ' INSERT INTO TGE204 (CLIEID,CLIERUC,CLAUXID,CIAID,CLIEDES,ACTIVO,TDOC_ID_SUNAT, CLIEDNI ) ' +
         ' VALUES (' + QuotedStr(xsClieid) + ',' + QuotedStr(xsClieRuc) + ',' + QuotedStr(xsCLauxid) + ',' + QuotedStr(xsCiaid) + ',' + QuotedStr(xsClieDes) + ',' + QuotedStr(xsActivo) + ',' + QuotedStr(xsDocSunat) + ',' + QuotedStr(xsClieRuc) + ')';

      Try
         DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);

         DMCXC.cdsClie.Close;
         DMCXC.cdsClie.DataRequest('SELECT * FROM TGE204 WHERE CLIEID=' + QuotedStr(xsClieid));
         DMCXC.cdsClie.Open;
         DMCXC.GrabaAuxConta(DMCXC.cdsClie);

      Except
         Raise exception.Create('Error al crear un nuevo cliente');
      End;
   End;
End;
// Fin HPC_201405_CXC
Procedure TFImportarRVChess.fg_CocinaChezz(Var wgArregloCampos: Array Of String);
Var
   xsAuxiliar: String;
Begin
   xsAuxiliar := '';
   If Length(Trim(wgArregloCampos[16])) > 0 Then
   Begin
      If Abs(StrToFloat(wgArregloCampos[16])) > Abs(StrToFloat(wgArregloCampos[10])) Then
      Begin
         xsAuxiliar := wgArregloCampos[10];
         wgArregloCampos[10] := wgArregloCampos[16];
         wgArregloCampos[16] := xsAuxiliar;

         xsAuxiliar := wgArregloCampos[9];
         wgArregloCampos[9] := wgArregloCampos[15];
         wgArregloCampos[15] := xsAuxiliar;

         xsAuxiliar := wgArregloCampos[8];
         wgArregloCampos[8] := wgArregloCampos[14];
         wgArregloCampos[14] := xsAuxiliar;

         xsAuxiliar := wgArregloCampos[7];
         wgArregloCampos[7] := wgArregloCampos[13];
         wgArregloCampos[13] := xsAuxiliar;

         xsAuxiliar := wgArregloCampos[6];
         wgArregloCampos[6] := wgArregloCampos[12];
         wgArregloCampos[12] := xsAuxiliar;

      End;
   End;
End;

Procedure TFImportarRVChess.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      If Self.ActiveControl Is TMemo Then Exit;
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFImportarRVChess.fg_ValidaNumDocIdentidad(Var wgArregloCampos: Array Of String);
Var
   xsNumDocIdentidad: String;
   xnNumero: Double;
Begin
   xsNumDocIdentidad := Trim(wgArregloCampos[4]);
   if copy(xsNumDocIdentidad,1,1) = 'E' then
      xsNumDocIdentidad := '33333333';
   if not IsNumeric(xsNumDocIdentidad) then
      xsNumDocIdentidad := '33333333';

   //si es boleta y el documento de identidad no es DNI entonces lo enviamos a Otros
   If wgArregloCampos[0] <> '03' Then
   Begin
      Exit;
   End;
   If Length(xsNumDocIdentidad) <> 8 Then //Dni es de longitud 8
   Begin
      wgArregloCampos[4] := ''; //ruc/dni
      wgArregloCampos[21] := 'C'; //TIPOAUXILIAR
      wgArregloCampos[22] := '33333333'; //TIPOAUXILIAR
   End;

   Try
      xnNumero := StrToFloat(xsNumDocIdentidad);
   Except
      wgArregloCampos[4] := ''; //ruc/dni
      wgArregloCampos[21] := 'C'; //TIPOAUXILIAR
      wgArregloCampos[22] := '33333333'; //TIPOAUXILIAR

   End;

End;
//INICIO HPC_201306_CXC

Procedure TFImportarRVChess.fg_CambiaTCdeNC(Var wgArregloCampos: Array Of String);
Var
   xsTipoDocFacturaNC: String;
   xsWhere: String;
   xsCompania: String;
Begin
   xsCompania := dblcCompania.Text;
   If Trim(wgArregloCampos[5]) = '01' Then xsTipoDocFacturaNC := '24';
   If Trim(wgArregloCampos[5]) = '03' Then xsTipoDocFacturaNC := '25';

   xsWhere := ' CIAID = ' + QuotedStr(xsCompania) + ' AND DOCID = ' + QuotedStr(xsTipoDocFacturaNC) +
      ' AND CCSERIE = ' + QuotedStr(Trim(wgArregloCampos[6])) + ' AND CCNODOC =' + Quotedstr(Trim(wgArregloCampos[7]));

   If Length(DMCXC.BuscaQry('dspTGE', 'CXC301', ' CCANOMES, CCNOREG, CLIEID, DOCID, CCSERIE, CCNODOC, CCTCAMPR', xsWhere, 'CCANOMES')) > 0 Then
   Begin
      wgArregloCampos[21] := DMCXC.cdsQry.FieldByName('CCTCAMPR').AsString;
   End;
End;
//FIN HPC_201306_CXC
// Inicio HPC_201405_CXC
procedure TFImportarRVChess.btnProcesarClick(Sender: TObject);
Var
   xsMensaje: String;
   xsSql: String;
   xnExisteRegistros: Integer;
Begin

   xsSql := ' DELETE TGE204 WHERE  CLIEID LIKE ' + QuotedStr('%C33333333%');
   DMCXC.DCOM1.AppServer.EjecutaSQL(xsSql);

   xsSql := ' CXC301.CIAID = ' + QuotedStr(dblcCompania.Text) +
      ' AND CXC301.CCANOMES = ' + QuotedStr(edtPeriodo.Text) +
      ' AND CXC301.TDIARID = ' + QuotedStr(dblcTipoDiario.Text);
   xnExisteRegistros := StrToInt(DMCXC.BuscaQry('dspTGE', 'CXC301', ' COUNT(CXC301.CIAID) REGISTROS ', xsSql, 'REGISTROS'));
   If xnExisteRegistros > 0 Then
   Begin
      xsMensaje := 'El periodo a procesar ya tiene ' + IntToStr(xnExisteRegistros) + ' documentos registrados' + #13 +
         'Se eliminará y se insertará los documentos ' + #13 + 'del archivo seleccionado' + #13 +
         '¿Desea continuar?';
   End
   Else
   Begin
      xsMensaje := 'Se actualizará el registro de ventas con los documentos ' + #13 +
         'contenidos en el archivo seleccionado' + #13 +
         '¿Desea continuar?';
   End;
   If MessageDlg(xsMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      edtLogResultado.Text := '';
      fg_EliminarRegistroVentas(dblcCompania.Text, edtPeriodo.Text, dblcTipoDiario.Text, edtLote.Text);
      fg_ProcesaArchivoPLE(edtRutaArchivo.Text, 'GRABAR');
   End;
end;
// Fin HPC_201405_CXC
procedure TFImportarRVChess.BitBtn1Click(Sender: TObject);
Var
   xsArregloCampos: Array[1..24] Of String;
   xsLineaTexto: String;
begin
   xsLineaTexto := '"01";"00023";"104655";"2016/12/01";"160495588";"CARVAJAL BAHAMONDE, MARION ORIETT";0;281.18000000000001;"01";0;28.109999999999999;309.29000000000002;3.4129999999999998;.00;.00;.00;.00;.00;"";"";"";""';
   fg_AsignaArreglo(xsLineaTexto, xsDelimitador, xsArregloCampos);
   sHOWmESSAGE(xsArregloCampos[23]);
end;

End.

