CREATE PROC ReporteAccionesXCliente (@CodigoCliente VARCHAR(10), @Fecha DATE)
 as 
 begin 
  SELECT A.AccionId, A.FechaEjecucion, A.AccionAnterior, A.DatoEspecifico, A.Descripcion, A.Oportunidad, A.AsignadaA, Ac.NombreActividad, O.NombreCliente
  FROM Accion A, Actividad Ac, OportunidadDeVenta O
  WHERE A.Oportunidad = O.OportunidadId and  A.TipoActividad = Ac.ActividadId AND O.CodigoCliente = @CodigoCliente AND A.FechaEjecucion >= @Fecha
  ORDER BY A.AccionId DESC
 end

