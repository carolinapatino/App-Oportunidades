ALTER PROCEDURE [dbo].[ReabrirOportunidadDiferida] (@proximaAccion NVARCHAR(500), @OportunidadId INT)
as 
begin 
	Declare @AccionAnterior INT 
	SET @AccionAnterior = (SELECT TOP 1 AccionId FROM Accion WHERE Oportunidad = @OportunidadId ORDER BY AccionId DESC)

	SET @proximaAccion =  JSON_Modify (@proximaAccion, '$.accionAnterior', @AccionAnterior);
	
	UPDATE OportunidadDeVenta SET Estatus = 1 WHERE OportunidadId = @OportunidadId;

  INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[Descripcion],[Oportunidad],[AsignadaA]) 
  SELECT
     FechaEjecucion,
	 FechaMaximaEjecucion,
     AccionAnterior,
     EsCierre,
     TipoActividad,
     Descripcion,
     Oportunidad,
     AsignadaA
    FROM  OPENJSON(@proximaAccion)
    WITH (
    FechaEjecucion DATE '$.fechaEjecucion',
	FechaMaximaEjecucion DATE '$.fechaEjecucion',
    AccionAnterior INT '$.accionAnterior',
    EsCierre BIT  '$.esCierre',  
    TipoActividad INT  '$.tipoActividad',
    Descripcion VARCHAR (280)  '$.descripcion',
    Oportunidad INT  '$.oportunidad',
    AsignadaA INT '$.asignadaA'
    ) AS jsonValues

	Declare @ProximaAccionId INT 
	SET @ProximaAccionId = (Select SCOPE_IDENTITY())
	exec CrearRecordatorio @ProximaAccionId

	exec ConsultarOportunidad @OportunidadId
 end