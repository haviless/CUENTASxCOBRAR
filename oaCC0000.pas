Unit oaCC0000;
// INICIO USO DE ESTANDARES : 01/08/2011
// UNIDAD                   : oaCC0000
// FORMULARIO               : FCCIni
// FECHA DE CREACION        :
// AUTOR                    : EQUIPO DE DESARROLLO
// OBJETIVO                 : Contiene los métodos que se invocan al ingresar al módulo
//

// Actualizaciones:

// HPC_201204_CXC 28/08/2012  Implementación del control de versiones
// HPC_201307_CXC 20/08/2013  Rutina que copia propiedades de DCOM1 del módulo a módulo de Mantenimiento de Clientes
// HPC_201403_CXC 10/07/2014  Actualiza versión a 20140716083000
// HPC_201801_CXC   26/03/2018 Cambios en Búsqueda en Maestro de Clientes
//

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, mant, DB, DBClient, wwclient, oaVariables, StdCtrls;

Type
   TFCCIni = Class(TForm)
      wwClientDataSet1: TwwClientDataSet;
      lblVersion: TLabel;
   Private
    { Private declarations }
   Public
    { Public declarations }
      MantHelp: TMant;
   End;

Procedure CCDataModulo; stdcall;
Procedure CCMantenimientoAccesos; stdcall;
Procedure CCOpcionAccesos; stdcall;
Procedure CCOpcionAccesosShow; stdcall;
Procedure CCMantenimientoAyudaMant; stdcall;
Procedure CCVerificaVersion; stdcall;
// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
//Procedure CCDataModuloClie; stdcall; // HPC_201307_CXC
// Fin HPC_201801_CXC

Exports
   CCDataModulo,
   CCMantenimientoAccesos,
   CCOpcionAccesos,
   CCOpcionAccesosShow,
   CCVerificaVersion,
// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
   CCMantenimientoAyudaMant;
//   CCDataModuloClie; // HPC_201307_CXC
// Fin HPC_201801_CXC

Var
   FCCIni: TFCCIni;

Implementation

{$R *.dfm}

// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
//Uses CXCDM, CLIEDM;
Uses CXCDM;
// Fin HPC_201801_CXC

Procedure CCDataModulo;
Begin
   Application.Initialize;
   Try
      If (DMCXC = Nil) Or (DMCXC.sClose = '1') Then
      Begin
         FVariables := TFVariables.Create(Application);
         DMCXC := TDMCXC.Create(Application);
         If DMCXC.sClose = '1' Then
         Begin
            DMCXC.Free;
            DMCXC := Nil;
         End;
      End;
   Finally
   End;
End;

Procedure CCMantenimientoAccesos;
Begin
{  try
     if ( DMCXC.wAdmin='G' ) or ( DMCXC.wAdmin='P' ) then
     begin
        if FMantAcceso=Nil then
        begin
           FMantAcceso:=TFMantAcceso.Create( nil );
           FMantAcceso.wDCOM1       :=DMCXC.DCOM1;
           FMantAcceso.wcdsAcceso   :=DMCXC.cdsAcceso;
           FMantAcceso.wcdsGrupos   :=DMCXC.cdsGrupos;
           FMantAcceso.wcdsMGrupo   :=DMCXC.cdsMGrupo;
           FMantAcceso.wcdsUsuarios :=DMCXC.cdsUsuarios;
           FMantAcceso.wcdsResultSet:=DMCXC.cdsResultSet;
           FMantAcceso.wcdsUser     :=DMCXC.cdsUser;
           FMantAcceso.sModulo      :=DMCXC.wModulo;
           FMantAcceso.sSRV_D       :=DMCXC.SRV_D;
        end
        else begin
           Exit;
        end;

        With FMantAcceso Do
        Try
           ShowModal;
        Finally
           DMCXC.wGrupoTmp:=FMantAcceso.sGrupoTmp;
           Free;
           FMantAcceso:=Nil;
        End;
     end
     else
     begin
        ShowMessage( 'Password NO es Administrador' );
     end;
  except
  end;}
End;

Procedure CCOpcionAccesos;
Begin
{   IF FMantOpcion <> nil then Exit;

   FMantOpcion:=TFMantOpcion.Create( nil );
   FMantOpcion.wcdsAcceso   :=DMCXC.cdsAcceso;
   FMantOpcion.wcdsGrupos   :=DMCXC.cdsGrupos;
   FMantOpcion.wcdsMGrupo   :=DMCXC.cdsMGrupo;
   FMantOpcion.wcdsUsuarios :=DMCXC.cdsUsuarios;
   FMantOpcion.wcdsResultSet:=DMCXC.cdsResultSet;
   FMantOpcion.wDCOM1       :=DMCXC.DCOM1;
   FMantOpcion.sGrupoTmp    :=DMCXC.wGrupoTmp;
   FMantOpcion.sObjetoNombr:=FVariables.w_Var_sObjetoNombr;
   FMantOpcion.sObjetoDescr:=FVariables.w_Var_sObjetoDescr;
   FMantOpcion.sObjetoForma:=FVariables.w_Var_sObjetoForma;
   FMantOpcion.sModulo      :=DMCXC.wModulo;}
End;

Procedure CCOpcionAccesosShow;
Begin
{   Try
      If Length(DMCXC.wGrupoTmp)>0 then begin
         FMantOpcion.ShowModal;
      end;
   Finally
      FMantOpcion.Free;
   End;

   FMantOpcion:=nil;}
End;

Procedure CCMantenimientoAyudaMant;
Begin
{   FVariables.cdsTempVar :=TwwClientDataSet( DMCXC.FindComponent( FVariables.dblcTempVar.LookupTable.Name ) );
   FCCIni:=TFCCIni.Create( NIL );
   FCCIni.MantHelp:=TMant.Create( Application );
   FCCIni.MantHelp.ClientDataSet:= FVariables.cdsTempVar;
   FCCIni.MantHelp.Module       := DMCXC.wModulo;
   FCCIni.MantHelp.Tipo         := 'HELP';
   FCCIni.MantHelp.Admin        := 'N';
   FCCIni.MantHelp.DComC        := DMCXC.DCOM1;
   FCCIni.MantHelp.User         := DMCXC.wUsuario;
   FCCIni.MantHelp.Execute;}
End;
//INICIO HPC_201204_CXC

Procedure CCVerificaVersion;
Begin
   If DMCXC = Nil Then exit;
   If Not DMCXC.DCOM1.Connected Then Exit;
   FCCIni := TFCCIni.Create(Application);
   If DMCXC.fg_VerificaVersion(FCCIni.lblVersion.Caption) = False Then
   Begin
      ShowMessage('Su Sistema no está actualizado.' + #13 + 'Comuníquese con Soporte Técnico');
      Application.Terminate;
      Exit;
   End;
End;
//FIN HPC_201204_CXC

// Inicio HPC_201801_CXC
// cambio de búsqueda para Maestro de Clientes
{
Procedure CCDataModuloClie; Stdcall;
Begin
   Application.Initialize;
   Try
      If (DMMClientes = Nil) Then
      Begin
         DMMClientes := TDMMClientes.Create(Application);
         DMMClientes.DCOM1 := DMCXC.DCOM1;
         DMMClientes.wUsuario := DMCXC.wUsuario;
         DMMClientes.wAdmin := DMCXC.wAdmin;
         DMMClientes.wGrupo := DMCXC.wGrupo;
         DMMClientes.wModulo := DMCXC.wModulo;
         DMMClientes.DataModuleCreate1;
      End;
   Finally
   //
   End;
End;
}
// Fin HPC_201801_CXC

End.

