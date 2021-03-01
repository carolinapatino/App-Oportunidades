ALTER PROCEDURE [dbo].[ReabrirOportunidad] (@proximaAccion NVARCHAR(500), @OportunidadId INT)
as 
begin 
	UPDATE OportunidadDeVenta SET Estatus = 1 WHERE OportunidadId = @OportunidadId;

  INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto], [RegistradaPor]) 
  SELECT
     FechaEjecucion,
	 FechaMaximaEjecucion,
     AccionAnterior,
     EsCierre,
     TipoActividad,
     DatoEspecifico,
     Descripcion,
     Oportunidad,
     AsignadaA, 
	 PersonaContacto,
	 RegistradaPor
    FROM  OPENJSON(@proximaAccion)
    WITH (
    FechaEjecucion DATE '$.fechaEjecucion',
	FechaMaximaEjecucion DATE '$.fechaEjecucion',
    AccionAnterior INT '$.accionAnterior',
    EsCierre BIT  '$.esCierre',  
    TipoActividad INT  '$.tipoActividad',
    DatoEspecifico VARCHAR(45) '$.datoEspecifico',
    Descripcion VARCHAR (280)  '$.descripcion',
    Oportunidad INT  '$.oportunidad',
    AsignadaA INT '$.asignadaA',
	PersonaContacto VARCHAR(100) '$.personaContacto',
	RegistradaPor INT '$.registradaPor'
    ) AS jsonValues

	Declare @ProximaAccionId INT 
	SET @ProximaAccionId = (Select SCOPE_IDENTITY())
	exec CrearRecordatorio @ProximaAccionId

	exec ConsultarOportunidadXID @OportunidadId
 end