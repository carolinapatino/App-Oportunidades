ALTER PROC [dbo].[consultarAccionesxOportunidad] (@OportunidadId INT)
 as 
 begin 
  SELECT A.AccionId, A.FechaEjecucion, A.AccionAnterior, A.DatoEspecifico, A.Descripcion, A.Oportunidad, A.AsignadaA, Ac.NombreActividad, A.PersonaContacto
  
  FROM Accion A
	INNER JOIN Actividad Ac ON A.TipoActividad = Ac.ActividadId
  WHERE A.Oportunidad = @OportunidadId

  ORDER BY A.AccionId DESC

 end