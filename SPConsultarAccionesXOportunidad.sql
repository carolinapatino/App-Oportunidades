CREATE PROC consultarAccionesxOportunidad (@OportunidadId INT)
 as 
 begin 
  SELECT A.AccionId, A.FechaEjecucion, A.AccionAnterior, A.DatoEspecifico, A.Descripcion, A.Oportunidad, A.AsignadaA, Ac.NombreActividad
  FROM Accion A, Actividad Ac
  WHERE A.Oportunidad = @OportunidadId and  A.TipoActividad = Ac.ActividadId
  ORDER BY A.FechaEjecucion DESC
 end

